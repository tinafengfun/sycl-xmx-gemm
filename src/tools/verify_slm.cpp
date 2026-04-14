// ==========================================================================
// SLM-based BF16 GEMM — Correctness verification
//
// Verifies that SLM tiling gives correct results by comparing against
// CPU float32 reference GEMM with bf16 inputs.
//
// Tests:
//   1. 4 SGs (2×2) with SLM, KCache2=32
//   2. 8 SGs (4×2) with SLM, KCache2=32
//   3. 4 SGs (2×2) with SLM, KCache2=64
//   4. 8 SGs (4×2) with SLM, KCache2=64
//   5. Non-SLM baseline (for comparison)
//
// If SLM joint_matrix_load doesn't compile, this will tell us immediately.
//
// Reference: CPU float32 GEMM with bf16 inputs, random seed=42
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

static constexpr int TM = 8, TN = 16, TK = 16, SG_SZ = 16, VNNI = 2;

// VNNI-pack B[K][N] → Bv[K/2][N*2]
void vnni_pack(const bf16* B, bf16* Bv, int K, int N) {
    for (int k = 0; k < K/VNNI; k++)
        for (int n = 0; n < N; n++) {
            Bv[k*N*VNNI + n*VNNI + 0] = B[(2*k+0)*N + n];
            Bv[k*N*VNNI + n*VNNI + 1] = B[(2*k+1)*N + n];
        }
}

// CPU reference: float32 GEMM with bf16 inputs
void ref_gemm_bf16(const bf16* hA, const bf16* hB, float* C, int M, int N, int K) {
    memset(C, 0, (size_t)M*N*sizeof(float));
    for (int m = 0; m < M; m++)
        for (int k = 0; k < K; k++) {
            float a_val = float(hA[m*K+k]);
            for (int n = 0; n < N; n++)
                C[m*N+n] += a_val * float(hB[k*N+n]);
        }
}

// ==========================================================================
// SLM-based multi-SG GPU kernel
//
// Architecture:
//   - WG cooperatively loads A[WG_M × KCache2] and B[KCache2 × WG_N] into SLM
//   - All SGs compute from SLM instead of global memory
//   - A tiles shared across SGs in same row, B tiles shared across same column
//   - Two barriers per KCache2 step (load + compute)
//
// SLM layout:
//   slm_A[WG_OUT_M * KCache2]           — row-major, stride = KCache2
//   slm_B[(KCache2/VNNI) * (WG_OUT_N * VNNI)]  — VNNI packed, stride = WG_OUT_N * VNNI
// ==========================================================================
template<int MT_M, int MT_N, int N_SG_M, int N_SG_N, int KCache2>
void gpu_gemm_slm(sycl::queue& q,
                   const bf16* hA, const bf16* hB,
                   float* hC_gpu, int M, int N, int K) {
    constexpr int SG_OUT_M = MT_M * TM;
    constexpr int SG_OUT_N = MT_N * TN;
    constexpr int WG_OUT_M = N_SG_M * SG_OUT_M;
    constexpr int WG_OUT_N = N_SG_N * SG_OUT_N;
    constexpr int N_SG_TOTAL = N_SG_M * N_SG_N;
    static_assert(KCache2 % 32 == 0, "KCache2 must be multiple of 32");

    if ((K % KCache2) != 0 || (M % WG_OUT_M) != 0 || (N % WG_OUT_N) != 0) {
        printf("  SLM skipped: M%%%d=%d N%%%d=%d K%%%d=%d\n",
               WG_OUT_M, M%WG_OUT_M, WG_OUT_N, N%WG_OUT_N, KCache2, K%KCache2);
        return;
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

    int wg_m = M / WG_OUT_M, wg_n = N / WG_OUT_N;

    q.submit([&](sycl::handler& h) {
        // SLM for A and B tiles
        // A: WG_OUT_M × KCache2 bf16 elements
        // B: (KCache2/VNNI) × (WG_OUT_N*VNNI) bf16 elements (VNNI packed)
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

                // Init accumulators
                matrix::joint_matrix<sycl::sub_group,float,matrix::use::accumulator,TM,TN> sub_c[MT_M][MT_N];
                for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++)
                    matrix::joint_matrix_fill(sg, sub_c[i][j], 0.0f);

                // K outer loop (step = KCache2)
                for(int k2=0; k2<K; k2+=KCache2) {

                    // === Cooperative load A into SLM ===
                    // slm_A[row * KCache2 + col] = dA[(base_m + row) * K + k2 + col]
                    int slm_a_total = WG_OUT_M * KCache2;
                    for(int i=wi_id; i<slm_a_total; i+=total_wi) {
                        int row = i / KCache2;
                        int col = i % KCache2;
                        slm_A[i] = dA[(base_m + row) * K + k2 + col];
                    }

                    // === Cooperative load B into SLM (VNNI packed) ===
                    // slm_B[ki * (WG_OUT_N*VNNI) + off] = dBv[(k2/VNNI+ki) * (N*VNNI) + base_n*VNNI + off]
                    int slm_b_rows = KCache2 / VNNI;
                    int slm_b_cols = WG_OUT_N * VNNI;
                    int slm_b_total = slm_b_rows * slm_b_cols;
                    for(int i=wi_id; i<slm_b_total; i+=total_wi) {
                        int ki = i / slm_b_cols;
                        int off = i % slm_b_cols;
                        slm_B[i] = dBv[(size_t)(k2/VNNI + ki) * (N*VNNI) + (size_t)base_n*VNNI + off];
                    }

                    // Barrier: ensure SLM is fully loaded before compute
                    item.barrier(sycl::access::fence_space::local_space);

                    // === Compute from SLM ===
                    auto pA_slm = slm_A.get_multi_ptr<sycl::access::decorated::no>();
                    auto pB_slm = slm_B.get_multi_ptr<sycl::access::decorated::no>();

                    int m0 = sg_m * SG_OUT_M;
                    int n0 = sg_n * SG_OUT_N;

                    for(int k1=0; k1<KCache2; k1+=32) {
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::a,TM,TK,matrix::layout::row_major> sub_a0[MT_M],sub_a1[MT_M];
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::b,TK,TN,matrix::layout::ext_intel_packed> sub_b0[MT_N],sub_b1[MT_N];

                        // Load A from SLM (stride = KCache2)
                        for(int i=0;i<MT_M;i++){
                            matrix::joint_matrix_load(sg,sub_a0[i],pA_slm+(m0+i*TM)*KCache2+k1,KCache2);
                            matrix::joint_matrix_load(sg,sub_a1[i],pA_slm+(m0+i*TM)*KCache2+k1+TK,KCache2);
                        }
                        // Load B from SLM (VNNI packed, stride = WG_OUT_N*VNNI)
                        for(int j=0;j<MT_N;j++){
                            int nj=n0+j*TN;
                            matrix::joint_matrix_load(sg,sub_b0[j],pB_slm+(k1/VNNI)*(WG_OUT_N*VNNI)+nj*VNNI,WG_OUT_N*VNNI);
                            matrix::joint_matrix_load(sg,sub_b1[j],pB_slm+((k1+TK)/VNNI)*(WG_OUT_N*VNNI)+nj*VNNI,WG_OUT_N*VNNI);
                        }
                        // DPAS
                        for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++){
                            matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a0[i],sub_b0[j],sub_c[i][j]);
                            matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a1[i],sub_b1[j],sub_c[i][j]);
                        }
                    }

                    // Barrier before next SLM load overwrites data
                    item.barrier(sycl::access::fence_space::local_space);
                }

                // Store C to global
                auto pC = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dC);
                int out_m = base_m + sg_m * SG_OUT_M;
                int out_n = base_n + sg_n * SG_OUT_N;
                for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++)
                    matrix::joint_matrix_store(sg,sub_c[i][j],pC+(out_m+i*TM)*N+out_n+j*TN,N,matrix::layout::row_major);
            });
    }).wait();

    q.memcpy(hC_gpu, dC, (size_t)M*N*sizeof(float)).wait();
    sycl::free(dA, q); sycl::free(dBv, q); sycl::free(dC, q);
}

// ==========================================================================
// Non-SLM baseline (same as verify_accuracy.cpp, for comparison)
// ==========================================================================
template<int MT_M, int MT_N, int N_SG_M, int N_SG_N>
void gpu_gemm_noslm(sycl::queue& q,
                     const bf16* hA, const bf16* hB,
                     float* hC_gpu, int M, int N, int K) {
    constexpr int SG_OUT_M = MT_M * TM;
    constexpr int SG_OUT_N = MT_N * TN;
    constexpr int WG_OUT_M = N_SG_M * SG_OUT_M;
    constexpr int WG_OUT_N = N_SG_N * SG_OUT_N;
    constexpr int N_SG_TOTAL = N_SG_M * N_SG_N;

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
                auto pC = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dC);

                matrix::joint_matrix<sycl::sub_group,float,matrix::use::accumulator,TM,TN> sub_c[MT_M][MT_N];
                for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++) matrix::joint_matrix_fill(sg,sub_c[i][j],0.0f);

                for(int k=0;k<K;k+=32) {
                    int kpf=k+32;
                    if(kpf<K) {
                        matrix::joint_matrix_prefetch<8,32>(sg,dA+(out_m)*K+kpf,K,matrix::layout::row_major,sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                        matrix::joint_matrix_prefetch<8,32>(sg,dBv+(size_t)(kpf/2)*(N*2)+(size_t)(out_n)*2,N*2,matrix::layout::row_major,sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                    }
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

    q.memcpy(hC_gpu, dC, (size_t)M*N*sizeof(float)).wait();
    sycl::free(dA, q); sycl::free(dBv, q); sycl::free(dC, q);
}

// ==========================================================================
// Compare and print stats
// ==========================================================================
struct ErrStats {
    double max_rel_err;
    double mean_rel_err;
    int count;
    int errs_1pct;
    int errs_0_1pct;
    double max_abs_err;
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
        if (rel > 0.001) s.errs_0_1pct++;
    }
    s.mean_rel_err = sum_rel / total;
    s.count = total;
    return s;
}

void print_stats(const char* label, const ErrStats& s) {
    printf("  %-45s max_rel=%.4f%%  mean_rel=%.4f%%  max_abs=%.6f  errs(>1%%)=%d  %s\n",
           label, s.max_rel_err*100, s.mean_rel_err*100, s.max_abs_err,
           s.errs_1pct, s.errs_1pct == 0 ? "PASS" : "FAIL");
}

// ==========================================================================
// Main
// ==========================================================================
int main() {
    sycl::queue q(sycl::gpu_selector_v,
                  {sycl::property::queue::enable_profiling{},
                   sycl::property::queue::in_order{}});
    printf("=== SLM BF16 GEMM Correctness Verification ===\n");
    printf("Device: %s\n\n", q.get_device().get_info<sycl::info::device::name>().c_str());
    printf("SLM per XeCore: %zu KB\n",
           q.get_device().get_info<sycl::info::device::local_mem_size>() / 1024);

    constexpr int SEED = 42;
    constexpr int MT_M = 4, MT_N = 4;

    auto run_test = [&](int M, int N, int K) {
        printf("\n=== M=%d, N=%d, K=%d ===\n", M, N, K);

        // Generate random bf16 data
        std::mt19937 rng(SEED);
        std::uniform_real_distribution<float> dist(-1.f, 1.f);
        std::vector<bf16> hA((size_t)M*K), hB((size_t)K*N);
        for (size_t i = 0; i < (size_t)M*K; i++) hA[i] = bf16(dist(rng));
        for (size_t i = 0; i < (size_t)K*N; i++) hB[i] = bf16(dist(rng));

        // CPU reference
        printf("  Computing CPU reference...\n"); fflush(stdout);
        std::vector<float> ref_C((size_t)M*N);
        ref_gemm_bf16(hA.data(), hB.data(), ref_C.data(), M, N, K);

        // Non-SLM baseline
        {
            std::vector<float> gpu_C((size_t)M*N);
            gpu_gemm_noslm<MT_M,MT_N, 2,2>(q, hA.data(), hB.data(), gpu_C.data(), M, N, K);
            auto stats = compare(ref_C.data(), gpu_C.data(), M*N);
            print_stats("4SG_2x2_noslm_pf (baseline)", stats);
        }

        // SLM: 4 SGs (2×2), KCache2=32
        {
            std::vector<float> gpu_C((size_t)M*N);
            gpu_gemm_slm<MT_M,MT_N, 2,2, 32>(q, hA.data(), hB.data(), gpu_C.data(), M, N, K);
            auto stats = compare(ref_C.data(), gpu_C.data(), M*N);
            print_stats("4SG_2x2_SLM_KC32", stats);
        }

        // SLM: 4 SGs (2×2), KCache2=64
        {
            std::vector<float> gpu_C((size_t)M*N);
            gpu_gemm_slm<MT_M,MT_N, 2,2, 64>(q, hA.data(), hB.data(), gpu_C.data(), M, N, K);
            auto stats = compare(ref_C.data(), gpu_C.data(), M*N);
            print_stats("4SG_2x2_SLM_KC64", stats);
        }

        // SLM: 8 SGs (4×2), KCache2=32
        {
            std::vector<float> gpu_C((size_t)M*N);
            gpu_gemm_slm<MT_M,MT_N, 4,2, 32>(q, hA.data(), hB.data(), gpu_C.data(), M, N, K);
            auto stats = compare(ref_C.data(), gpu_C.data(), M*N);
            print_stats("8SG_4x2_SLM_KC32", stats);
        }

        // SLM: 8 SGs (4×2), KCache2=64
        {
            std::vector<float> gpu_C((size_t)M*N);
            gpu_gemm_slm<MT_M,MT_N, 4,2, 64>(q, hA.data(), hB.data(), gpu_C.data(), M, N, K);
            auto stats = compare(ref_C.data(), gpu_C.data(), M*N);
            print_stats("8SG_4x2_SLM_KC64", stats);
        }
    };

    // Small sizes for quick verification
    run_test(512, 512, 512);
    run_test(1024, 1024, 1024);
    run_test(2048, 2048, 2048);

    printf("\n=== Done ===\n");
    return 0;
}
