// ==========================================================================
// v21 experiments: SG=8, K-parallel, group_load SLM
//
// Small correctness verification before benchmarking.
// Tests all three approaches against CPU float32 reference (seed=42).
// ==========================================================================

#include <sycl/sycl.hpp>
#include <sycl/ext/oneapi/bfloat16.hpp>
#include <sycl/ext/oneapi/matrix/matrix.hpp>
#include <cstdio>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <cmath>
#include <vector>
#include <random>
#include <algorithm>
#include <numeric>

namespace matrix = sycl::ext::oneapi::experimental::matrix;
using bf16 = sycl::ext::oneapi::bfloat16;

static constexpr int TM = 8, TN = 16, TK = 16, VNNI = 2;

void vnni_pack(const bf16* B, bf16* Bv, int K, int N) {
    for (int k = 0; k < K/VNNI; k++)
        for (int n = 0; n < N; n++) {
            Bv[k*N*VNNI + n*VNNI + 0] = B[(2*k+0)*N + n];
            Bv[k*N*VNNI + n*VNNI + 1] = B[(2*k+1)*N + n];
        }
}

void ref_gemm_bf16(const bf16* hA, const bf16* hB, float* C, int M, int N, int K) {
    memset(C, 0, (size_t)M*N*sizeof(float));
    for (int m = 0; m < M; m++)
        for (int k = 0; k < K; k++) {
            float a_val = float(hA[m*K+k]);
            for (int n = 0; n < N; n++)
                C[m*N+n] += a_val * float(hB[k*N+n]);
        }
}

struct ErrStats {
    double max_rel_err, mean_rel_err, max_abs_err;
    int errs_1pct;
};

ErrStats compare(const float* ref, const float* got, int total) {
    ErrStats s = {};
    double sum_rel = 0;
    for (int i = 0; i < total; i++) {
        double r = ref[i], g = got[i];
        double abserr = std::fabs(g - r);
        s.max_abs_err = std::max(s.max_abs_err, abserr);
        double rel = (std::fabs(r) > 0.01) ? abserr / std::fabs(r) : abserr;
        s.max_rel_err = std::max(s.max_rel_err, rel);
        sum_rel += rel;
        if (rel > 0.01) s.errs_1pct++;
    }
    s.mean_rel_err = sum_rel / total;
    return s;
}

void print_stats(const char* label, const ErrStats& s) {
    printf("  %-45s max_rel=%.4f%%  mean=%.4f%%  errs>1%%=%d  %s\n",
           label, s.max_rel_err*100, s.mean_rel_err*100, s.errs_1pct,
           s.errs_1pct == 0 ? "PASS" : "FAIL");
}

// ==========================================================================
// Experiment A: SG=8 with joint_matrix (BF16)
// Does reqd_sub_group_size(8) work with joint_matrix on Xe2?
// With SG=8: each thread holds 2x more accumulator elements → 2x occupancy
// ==========================================================================
template<int MT_M, int MT_N, int SG_SZ>
bool test_sg8(sycl::queue& q, const bf16* hA, const bf16* hB,
              float* hC_gpu, int M, int N, int K) {
    constexpr int OUT_M = MT_M * TM;
    constexpr int OUT_N = MT_N * TN;

    if ((K%32)!=0||(M%OUT_M)!=0||(N%OUT_N)!=0) {
        printf("  SG=%d: size mismatch, skip\n", SG_SZ);
        return false;
    }

    std::vector<bf16> hBv((size_t)(K/VNNI)*(N*VNNI));
    vnni_pack(hB, hBv.data(), K, N);

    bf16 *dA = sycl::malloc_device<bf16>((size_t)M*K, q);
    bf16 *dBv = sycl::malloc_device<bf16>((size_t)(K/VNNI)*(N*VNNI), q);
    float *dC = sycl::malloc_device<float>((size_t)M*N, q);
    q.memcpy(dA, hA, (size_t)M*K*sizeof(bf16));
    q.memcpy(dBv, hBv.data(), (size_t)(K/VNNI)*(N*VNNI)*sizeof(bf16));
    q.memset(dC, 0, (size_t)M*N*sizeof(float));
    q.wait();

    int wg_m = M/OUT_M, wg_n = N/OUT_N;

    try {
        q.submit([&](sycl::handler& h) {
            h.parallel_for(
                sycl::nd_range<2>(
                    sycl::range<2>(wg_m * SG_SZ, wg_n),
                    sycl::range<2>(SG_SZ, 1)),
                [=](sycl::nd_item<2> item) [[sycl::reqd_sub_group_size(SG_SZ)]] {
                    sycl::sub_group sg = item.get_sub_group();
                    int gm = item.get_group(0), gn = item.get_group(1);
                    int out_m = gm * OUT_M;
                    int out_n = gn * OUT_N;

                    auto pA = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dA);
                    auto pBv = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dBv);
                    auto pC = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dC);

                    matrix::joint_matrix<sycl::sub_group,float,matrix::use::accumulator,TM,TN> sub_c[MT_M][MT_N];
                    for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++) matrix::joint_matrix_fill(sg,sub_c[i][j],0.0f);

                    for(int k=0;k<K;k+=32) {
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::a,TM,TK,matrix::layout::row_major> sub_a0[MT_M],sub_a1[MT_M];
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::b,TK,TN,matrix::layout::ext_intel_packed> sub_b0[MT_N],sub_b1[MT_N];
                        for(int i=0;i<MT_M;i++){matrix::joint_matrix_load(sg,sub_a0[i],pA+(out_m+i*TM)*K+k,K);matrix::joint_matrix_load(sg,sub_a1[i],pA+(out_m+i*TM)*K+(k+TK),K);}
                        for(int j=0;j<MT_N;j++){int n0=out_n+j*TN;matrix::joint_matrix_load(sg,sub_b0[j],pBv+(size_t)(k/2)*(N*2)+(size_t)n0*2,N*2);matrix::joint_matrix_load(sg,sub_b1[j],pBv+(size_t)((k+TK)/2)*(N*2)+(size_t)n0*2,N*2);}
                        for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++){matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a0[i],sub_b0[j],sub_c[i][j]);matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a1[i],sub_b1[j],sub_c[i][j]);}
                    }
                    for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++)
                        matrix::joint_matrix_store(sg,sub_c[i][j],pC+(out_m+i*TM)*N+out_n+j*TN,N,matrix::layout::row_major);
                });
        }).wait();
    } catch (sycl::exception& e) {
        printf("  SG=%d: EXCEPTION: %s\n", SG_SZ, e.what());
        sycl::free(dA, q); sycl::free(dBv, q); sycl::free(dC, q);
        return false;
    }

    q.memcpy(hC_gpu, dC, (size_t)M*N*sizeof(float)).wait();
    sycl::free(dA, q); sycl::free(dBv, q); sycl::free(dC, q);
    return true;
}

// ==========================================================================
// Experiment B: K-parallel decomposition
// Split K into chunks, compute partial C for each chunk, reduce on CPU
// ==========================================================================
void test_kparallel(sycl::queue& q, const bf16* hA, const bf16* hB,
                     float* hC_gpu, int M, int N, int K, int K_chunk) {
    constexpr int MT_M = 4, MT_N = 4;
    constexpr int SG_SZ = 16, N_SG_M = 2, N_SG_N = 2;
    constexpr int SG_OUT_M = MT_M * TM, SG_OUT_N = MT_N * TN;
    constexpr int WG_OUT_M = N_SG_M * SG_OUT_M, WG_OUT_N = N_SG_N * SG_OUT_N;
    constexpr int N_SG_TOTAL = N_SG_M * N_SG_N;

    if ((K_chunk%32)!=0||(M%WG_OUT_M)!=0||(N%WG_OUT_N)!=0) {
        printf("  K-parallel: size mismatch, skip\n");
        return;
    }

    int n_chunks = K / K_chunk;
    std::vector<float> partial_C((size_t)n_chunks * M * N, 0.0f);

    bf16 *dA = sycl::malloc_device<bf16>((size_t)M*K, q);
    float *dPartial = sycl::malloc_device<float>((size_t)M*N, q);
    q.memcpy(dA, hA, (size_t)M*K*sizeof(bf16));
    q.wait();

    for (int c = 0; c < n_chunks; c++) {
        int k_start = c * K_chunk;

        // VNNI-pack this K chunk of B
        std::vector<bf16> hBv_chunk((size_t)(K_chunk/VNNI)*(N*VNNI));
        vnni_pack(hB + k_start*N, hBv_chunk.data(), K_chunk, N);

        bf16 *dBv = sycl::malloc_device<bf16>((size_t)(K_chunk/VNNI)*(N*VNNI), q);
        q.memcpy(dBv, hBv_chunk.data(), (size_t)(K_chunk/VNNI)*(N*VNNI)*sizeof(bf16));
        q.memset(dPartial, 0, (size_t)M*N*sizeof(float));
        q.wait();

        int wg_m = M/WG_OUT_M, wg_n = N/WG_OUT_N;

        q.submit([&](sycl::handler& h) {
            h.parallel_for(
                sycl::nd_range<2>(
                    sycl::range<2>(wg_m * N_SG_TOTAL * SG_SZ, wg_n),
                    sycl::range<2>(N_SG_TOTAL * SG_SZ, 1)),
                [=](sycl::nd_item<2> item) [[sycl::reqd_sub_group_size(SG_SZ)]] {
                    sycl::sub_group sg = item.get_sub_group();
                    int sg_id = sg.get_group_id()[0];
                    int sg_m = sg_id / N_SG_N;
                    int sg_n = sg_id % N_SG_N;
                    int gm = item.get_group(0), gn = item.get_group(1);
                    int out_m = gm * WG_OUT_M + sg_m * SG_OUT_M;
                    int out_n = gn * WG_OUT_N + sg_n * SG_OUT_N;

                    auto pA = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dA);
                    auto pBv = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dBv);
                    auto pC = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dPartial);

                    matrix::joint_matrix<sycl::sub_group,float,matrix::use::accumulator,TM,TN> sub_c[MT_M][MT_N];
                    for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++) matrix::joint_matrix_fill(sg,sub_c[i][j],0.0f);

                    for(int k=0;k<K_chunk;k+=32) {
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::a,TM,TK,matrix::layout::row_major> sub_a0[MT_M],sub_a1[MT_M];
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::b,TK,TN,matrix::layout::ext_intel_packed> sub_b0[MT_N],sub_b1[MT_N];
                        for(int i=0;i<MT_M;i++){matrix::joint_matrix_load(sg,sub_a0[i],pA+(out_m+i*TM)*K+k_start+k,K);matrix::joint_matrix_load(sg,sub_a1[i],pA+(out_m+i*TM)*K+k_start+k+TK,K);}
                        for(int j=0;j<MT_N;j++){int n0=out_n+j*TN;matrix::joint_matrix_load(sg,sub_b0[j],pBv+(size_t)(k/2)*(N*2)+(size_t)n0*2,N*2);matrix::joint_matrix_load(sg,sub_b1[j],pBv+(size_t)((k+TK)/2)*(N*2)+(size_t)n0*2,N*2);}
                        for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++){matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a0[i],sub_b0[j],sub_c[i][j]);matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a1[i],sub_b1[j],sub_c[i][j]);}
                    }
                    for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++)
                        matrix::joint_matrix_store(sg,sub_c[i][j],pC+(out_m+i*TM)*N+out_n+j*TN,N,matrix::layout::row_major);
                });
        }).wait();

        q.memcpy(partial_C.data() + (size_t)c*M*N, dPartial, (size_t)M*N*sizeof(float)).wait();
        sycl::free(dBv, q);
    }

    // Reduce partial results on CPU
    memset(hC_gpu, 0, (size_t)M*N*sizeof(float));
    for (int c = 0; c < n_chunks; c++)
        for (int i = 0; i < M*N; i++)
            hC_gpu[i] += partial_C[(size_t)c*M*N + i];

    sycl::free(dA, q); sycl::free(dPartial, q);
}

// ==========================================================================
// Experiment C: SLM with async_work_group_copy (bulk transfer)
// ==========================================================================
template<int MT_M, int MT_N, int N_SG_M, int N_SG_N, int KCache2, int SG_SZ>
bool test_slm_async(sycl::queue& q, const bf16* hA, const bf16* hB,
                     float* hC_gpu, int M, int N, int K) {
    constexpr int SG_OUT_M = MT_M * TM, SG_OUT_N = MT_N * TN;
    constexpr int WG_OUT_M = N_SG_M * SG_OUT_M, WG_OUT_N = N_SG_N * SG_OUT_N;
    constexpr int N_SG_TOTAL = N_SG_M * N_SG_N;

    if ((K%KCache2)!=0||(M%WG_OUT_M)!=0||(N%WG_OUT_N)!=0) return false;

    std::vector<bf16> hBv((size_t)(K/VNNI)*(N*VNNI));
    vnni_pack(hB, hBv.data(), K, N);

    bf16 *dA = sycl::malloc_device<bf16>((size_t)M*K, q);
    bf16 *dBv = sycl::malloc_device<bf16>((size_t)(K/VNNI)*(N*VNNI), q);
    float *dC = sycl::malloc_device<float>((size_t)M*N, q);
    q.memcpy(dA, hA, (size_t)M*K*sizeof(bf16));
    q.memcpy(dBv, hBv.data(), (size_t)(K/VNNI)*(N*VNNI)*sizeof(bf16));
    q.memset(dC, 0, (size_t)M*N*sizeof(float));
    q.wait();

    int wg_m = M/WG_OUT_M, wg_n = N/WG_OUT_N;

    try {
        q.submit([&](sycl::handler& h) {
            sycl::local_accessor<bf16, 1> slm_A(sycl::range<1>((size_t)WG_OUT_M * KCache2), h);
            sycl::local_accessor<bf16, 1> slm_B(sycl::range<1>((size_t)(KCache2/VNNI) * (WG_OUT_N * VNNI)), h);

            h.parallel_for(
                sycl::nd_range<2>(
                    sycl::range<2>(wg_m * N_SG_TOTAL * SG_SZ, wg_n),
                    sycl::range<2>(N_SG_TOTAL * SG_SZ, 1)),
                [=](sycl::nd_item<2> item) [[sycl::reqd_sub_group_size(SG_SZ)]] {
                    sycl::sub_group sg = item.get_sub_group();
                    int sg_id = sg.get_group_id()[0];
                    int sg_m = sg_id / N_SG_N;
                    int sg_n = sg_id % N_SG_N;
                    int gm = item.get_group(0), gn = item.get_group(1);
                    int base_m = gm * WG_OUT_M;
                    int base_n = gn * WG_OUT_N;
                    int wi_id = item.get_local_id(0);
                    int total_wi = N_SG_TOTAL * SG_SZ;

                    matrix::joint_matrix<sycl::sub_group,float,matrix::use::accumulator,TM,TN> sub_c[MT_M][MT_N];
                    for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++)
                        matrix::joint_matrix_fill(sg,sub_c[i][j],0.0f);

                    for(int k2=0; k2<K; k2+=KCache2) {
                        // Cooperative copy A → SLM (row-major, stride K → stride KCache2)
                        int slm_a_total = WG_OUT_M * KCache2;
                        for(int i=wi_id; i<slm_a_total; i+=total_wi) {
                            int row = i / KCache2;
                            int col = i % KCache2;
                            slm_A[i] = dA[(base_m + row) * K + k2 + col];
                        }
                        // Cooperative copy B → SLM (strided, VNNI-packed)
                        int slm_b_cols = WG_OUT_N * VNNI;
                        int slm_b_rows = KCache2 / VNNI;
                        for(int ki=wi_id; ki<slm_b_rows; ki+=total_wi) {
                            for(int off=0; off<slm_b_cols; off++) {
                                slm_B[ki*slm_b_cols+off] = dBv[(size_t)(k2/VNNI+ki)*(N*VNNI)+(size_t)base_n*VNNI+off];
                            }
                        }

                        item.barrier(sycl::access::fence_space::local_space);

                        auto pA_slm = slm_A.get_multi_ptr<sycl::access::decorated::no>();
                        auto pB_slm = slm_B.get_multi_ptr<sycl::access::decorated::no>();
                        int m0 = sg_m * SG_OUT_M;
                        int n0 = sg_n * SG_OUT_N;

                        for(int k1=0; k1<KCache2; k1+=32) {
                            matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::a,TM,TK,matrix::layout::row_major> sub_a0[MT_M],sub_a1[MT_M];
                            matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::b,TK,TN,matrix::layout::ext_intel_packed> sub_b0[MT_N],sub_b1[MT_N];
                            for(int i=0;i<MT_M;i++){
                                matrix::joint_matrix_load(sg,sub_a0[i],pA_slm+(m0+i*TM)*KCache2+k1,KCache2);
                                matrix::joint_matrix_load(sg,sub_a1[i],pA_slm+(m0+i*TM)*KCache2+k1+TK,KCache2);
                            }
                            for(int j=0;j<MT_N;j++){
                                int nj=n0+j*TN;
                                matrix::joint_matrix_load(sg,sub_b0[j],pB_slm+(k1/VNNI)*(WG_OUT_N*VNNI)+nj*VNNI,WG_OUT_N*VNNI);
                                matrix::joint_matrix_load(sg,sub_b1[j],pB_slm+((k1+TK)/VNNI)*(WG_OUT_N*VNNI)+nj*VNNI,WG_OUT_N*VNNI);
                            }
                            for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++){
                                matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a0[i],sub_b0[j],sub_c[i][j]);
                                matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a1[i],sub_b1[j],sub_c[i][j]);
                            }
                        }
                        item.barrier(sycl::access::fence_space::local_space);
                    }

                    auto pC = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dC);
                    int out_m = base_m + sg_m * SG_OUT_M;
                    int out_n = base_n + sg_n * SG_OUT_N;
                    for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++)
                        matrix::joint_matrix_store(sg,sub_c[i][j],pC+(out_m+i*TM)*N+out_n+j*TN,N,matrix::layout::row_major);
                });
        }).wait();
    } catch (sycl::exception& e) {
        printf("  SLM async: EXCEPTION: %s\n", e.what());
        sycl::free(dA, q); sycl::free(dBv, q); sycl::free(dC, q);
        return false;
    }

    q.memcpy(hC_gpu, dC, (size_t)M*N*sizeof(float)).wait();
    sycl::free(dA, q); sycl::free(dBv, q); sycl::free(dC, q);
    return true;
}

int main() {
    sycl::queue q(sycl::gpu_selector_v,
                  {sycl::property::queue::enable_profiling{},
                   sycl::property::queue::in_order{}});
    printf("=== v21 Experiments: SG=8, K-parallel, SLM async ===\n");
    printf("Device: %s\n\n", q.get_device().get_info<sycl::info::device::name>().c_str());

    constexpr int SEED = 42;
    constexpr int MT_M = 4, MT_N = 4;

    int M = 512, N = 512, K = 512;

    std::mt19937 rng(SEED);
    std::uniform_real_distribution<float> dist(-1.f, 1.f);
    std::vector<bf16> hA((size_t)M*K), hB((size_t)K*N);
    for (size_t i = 0; i < (size_t)M*K; i++) hA[i] = bf16(dist(rng));
    for (size_t i = 0; i < (size_t)K*N; i++) hB[i] = bf16(dist(rng));

    std::vector<float> ref_C((size_t)M*N);
    ref_gemm_bf16(hA.data(), hB.data(), ref_C.data(), M, N, K);

    printf("=== Experiment A: SG=8 ===\n");
    // SG=16 baseline
    {
        std::vector<float> gpu_C((size_t)M*N);
        bool ok = test_sg8<MT_M, MT_N, 16>(q, hA.data(), hB.data(), gpu_C.data(), M, N, K);
        if (ok) {
            auto stats = compare(ref_C.data(), gpu_C.data(), M*N);
            print_stats("SG=16 baseline (4x4 tiles)", stats);
        }
    }
    // SG=8
    {
        std::vector<float> gpu_C((size_t)M*N);
        bool ok = test_sg8<MT_M, MT_N, 8>(q, hA.data(), hB.data(), gpu_C.data(), M, N, K);
        if (ok) {
            auto stats = compare(ref_C.data(), gpu_C.data(), M*N);
            print_stats("SG=8 test (4x4 tiles)", stats);
        } else {
            printf("  SG=8: compile or runtime failed\n");
        }
    }
    // SG=8 with smaller tiles (2x4)
    {
        std::vector<float> gpu_C((size_t)M*N);
        bool ok = test_sg8<2, 4, 8>(q, hA.data(), hB.data(), gpu_C.data(), M, N, K);
        if (ok) {
            auto stats = compare(ref_C.data(), gpu_C.data(), M*N);
            print_stats("SG=8 test (2x4 tiles)", stats);
        }
    }

    printf("\n=== Experiment B: K-parallel ===\n");
    {
        std::vector<float> gpu_C((size_t)M*N);
        test_kparallel(q, hA.data(), hB.data(), gpu_C.data(), M, N, K, K/2);
        auto stats = compare(ref_C.data(), gpu_C.data(), M*N);
        print_stats("K-parallel 2 chunks", stats);
    }
    {
        std::vector<float> gpu_C((size_t)M*N);
        test_kparallel(q, hA.data(), hB.data(), gpu_C.data(), M, N, K, K/4);
        auto stats = compare(ref_C.data(), gpu_C.data(), M*N);
        print_stats("K-parallel 4 chunks", stats);
    }

    printf("\n=== Experiment C: SLM with async memcpy ===\n");
    {
        std::vector<float> gpu_C((size_t)M*N);
        bool ok = test_slm_async<MT_M, MT_N, 2, 2, 32, 16>(q, hA.data(), hB.data(), gpu_C.data(), M, N, K);
        if (ok) {
            auto stats = compare(ref_C.data(), gpu_C.data(), M*N);
            print_stats("SLM async 4SG KC32", stats);
        }
    }

    printf("\n=== Done ===\n");
    return 0;
}
