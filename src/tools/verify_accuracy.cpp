// ==========================================================================
// BF16 GEMM — Accuracy verification with random seed 42
//
// Compares our best multi-SG kernels against CPU reference (float32 BF16)
// Uses std::mt19937 seed=42 for reproducibility
//
// Tests:
//   1. Single-SG kernel (baseline)
//   2. Multi-SG 2×2 (best 4-SG config)
//   3. Multi-SG 4×2 (best 8-SG config)
//   4. Various problem sizes
//
// Reference: BF16 GEMM on CPU — A,B stored as bf16, compute in float32
//   C[i][j] = sum_k bf16(A[i][k]) * bf16(B[k][j])
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

// Reference: CPU GEMM in float32 with bf16 inputs
// C = A @ B, where A and B values are bf16 (rounded before multiply)
void ref_gemm_bf16(const bf16* hA, const bf16* hB, float* C, int M, int N, int K) {
    memset(C, 0, (size_t)M*N*sizeof(float));
    for (int m = 0; m < M; m++)
        for (int k = 0; k < K; k++) {
            float a_val = float(hA[m*K+k]);
            for (int n = 0; n < N; n++) {
                C[m*N+n] += a_val * float(hB[k*N+n]);
            }
        }
}

// ==========================================================================
// GPU kernel launcher — template on SG count and layout
// ==========================================================================
template<int MT_M, int MT_N, int N_SG_M, int N_SG_N>
void gpu_gemm_multisg(sycl::queue& q,
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
    int errs_1pct;   // >1% relative error
    int errs_0_1pct; // >0.1% relative error
    double max_abs_err;
    double ref_max;
    double ref_mean;
};

ErrStats compare(const float* ref, const float* got, int total) {
    ErrStats s = {};
    double sum_rel = 0;
    for (int i = 0; i < total; i++) {
        double r = ref[i], g = got[i];
        double abserr = std::fabs(g - r);
        s.max_abs_err = std::max(s.max_abs_err, abserr);
        s.ref_max = std::max(s.ref_max, std::fabs(r));
        s.ref_mean += std::fabs(r);

        double rel = (std::fabs(r) > 0.01) ? abserr / std::fabs(r) : abserr;
        s.max_rel_err = std::max(s.max_rel_err, rel);
        sum_rel += rel;
        if (rel > 0.01) s.errs_1pct++;
        if (rel > 0.001) s.errs_0_1pct++;
    }
    s.mean_rel_err = sum_rel / total;
    s.ref_mean /= total;
    s.count = total;
    return s;
}

void print_stats(const char* label, const ErrStats& s) {
    printf("  %-40s  max_rel=%.6f%%  mean_rel=%.6f%%  max_abs=%.6f  errs(>1%%)=%d  errs(>0.1%%)=%d  %s\n",
           label, s.max_rel_err*100, s.mean_rel_err*100, s.max_abs_err,
           s.errs_1pct, s.errs_0_1pct,
           s.errs_1pct == 0 ? "PASS" : "FAIL");
}

// ==========================================================================
// Main
// ==========================================================================
int main() {
    sycl::queue q(sycl::gpu_selector_v,
                  {sycl::property::queue::enable_profiling{},
                   sycl::property::queue::in_order{}});
    printf("=== BF16 GEMM Accuracy Verification (seed=42) ===\n");
    printf("Device: %s\n\n", q.get_device().get_info<sycl::info::device::name>().c_str());
    printf("Reference: CPU float32 GEMM with bf16 inputs\n");
    printf("BF16 mantissa = 7 bits → expected rounding error ~2^-8 ≈ 0.39%% per op\n");
    printf("Accumulated over K steps, typical max error ≈ sqrt(K)*0.39%%\n\n");

    constexpr int SEED = 42;
    constexpr int MT_M = 4, MT_N = 4;

    auto run_test = [&](int M, int N, int K) {
        printf("=== M=%d, N=%d, K=%d ===\n", M, N, K);

        // Generate random bf16 data with seed 42
        std::mt19937 rng(SEED);
        std::uniform_real_distribution<float> dist(-1.f, 1.f);

        std::vector<bf16> hA((size_t)M*K), hB((size_t)K*N);
        for (size_t i = 0; i < (size_t)M*K; i++) hA[i] = bf16(dist(rng));
        for (size_t i = 0; i < (size_t)K*N; i++) hB[i] = bf16(dist(rng));

        // CPU reference
        printf("  Computing CPU reference...\n"); fflush(stdout);
        std::vector<float> ref_C((size_t)M*N);
        ref_gemm_bf16(hA.data(), hB.data(), ref_C.data(), M, N, K);

        printf("  Ref stats: max=%.4f  mean_abs=%.4f\n",
               *std::max_element(ref_C.begin(), ref_C.end(),
                   [](float a, float b){ return std::fabs(a) < std::fabs(b); }) != 0.f ?
                   std::fabs(*std::max_element(ref_C.begin(), ref_C.end(),
                       [](float a, float b){ return std::fabs(a) < std::fabs(b); })) : 0.f,
               std::accumulate(ref_C.begin(), ref_C.end(), 0.0,
                   [](double s, float v){ return s + std::fabs(v); }) / ref_C.size());

        // GPU: single-SG
        {
            std::vector<float> gpu_C((size_t)M*N);
            gpu_gemm_multisg<MT_M,MT_N, 1,1>(q, hA.data(), hB.data(), gpu_C.data(), M, N, K);
            auto stats = compare(ref_C.data(), gpu_C.data(), M*N);
            print_stats("1SG_4x4_pf", stats);
        }

        // GPU: 4-SG 2×2
        {
            std::vector<float> gpu_C((size_t)M*N);
            gpu_gemm_multisg<MT_M,MT_N, 2,2>(q, hA.data(), hB.data(), gpu_C.data(), M, N, K);
            auto stats = compare(ref_C.data(), gpu_C.data(), M*N);
            print_stats("4SG_2x2_pf", stats);
        }

        // GPU: 8-SG 4×2
        {
            std::vector<float> gpu_C((size_t)M*N);
            gpu_gemm_multisg<MT_M,MT_N, 4,2>(q, hA.data(), hB.data(), gpu_C.data(), M, N, K);
            auto stats = compare(ref_C.data(), gpu_C.data(), M*N);
            print_stats("8SG_4x2_pf", stats);
        }

        printf("\n");
    };

    // Test various sizes
    run_test(512, 512, 512);
    run_test(1024, 1024, 1024);
    run_test(1024, 2048, 512);
    run_test(2048, 2048, 2048);
    run_test(2048, 1024, 4096);
    run_test(4096, 4096, 4096);
    run_test(8192, 2048, 4096);
    run_test(8192, 4096, 4096);

    printf("=== Done ===\n");
    return 0;
}
