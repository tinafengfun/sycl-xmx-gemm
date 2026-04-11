// ==========================================================================
// BF16 GEMM — Correctness verification for split-N approach
// ==========================================================================
// Validates: single kernel (4×4 pfL1) + split-N with per-chunk B buffers
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

// Reference GEMM on CPU
void ref_gemm(const float* A, const float* B, float* C, int M, int N, int K) {
    memset(C, 0, M*N*sizeof(float));
    for (int m = 0; m < M; m++)
        for (int k = 0; k < K; k++)
            for (int n = 0; n < N; n++)
                C[m*N+n] += A[m*K+k] * B[k*N+n];
}

// GPU GEMM kernel (single, full N)
void gpu_gemm(sycl::queue& q, const bf16* hA, const bf16* hB,
              float* hC_ref, int M, int N, int K) {
    std::vector<bf16> hBv((size_t)(K/VNNI)*(N*VNNI));
    vnni_pack(hB, hBv.data(), K, N);

    bf16 *dA = sycl::malloc_device<bf16>(M*K, q);
    bf16 *dBv = sycl::malloc_device<bf16>((size_t)(K/VNNI)*(N*VNNI), q);
    float *dC = sycl::malloc_device<float>(M*N, q);
    q.memcpy(dA, hA, M*K*sizeof(bf16));
    q.memcpy(dBv, hBv.data(), (size_t)(K/VNNI)*(N*VNNI)*sizeof(bf16));
    q.memset(dC, 0, M*N*sizeof(float));
    q.wait();

    constexpr int MT_M=4, MT_N=4;
    constexpr int OUT_M = MT_M*TM, OUT_N = MT_N*TN;
    int wg_m = M/OUT_M, wg_n = N/OUT_N;

    q.submit([&](sycl::handler& h) {
        h.parallel_for(
            sycl::nd_range<2>(sycl::range<2>(wg_m*SG_SZ, wg_n), sycl::range<2>(SG_SZ,1)),
            [=](sycl::nd_item<2> item) [[sycl::reqd_sub_group_size(SG_SZ)]] {
                sycl::sub_group sg = item.get_sub_group();
                int gm=item.get_group(0), gn=item.get_group(1);
                auto pA = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dA);
                auto pBv = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dBv);
                auto pC = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dC);
                matrix::joint_matrix<sycl::sub_group,float,matrix::use::accumulator,TM,TN> sub_c[MT_M][MT_N];
                for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++) matrix::joint_matrix_fill(sg,sub_c[i][j],0.0f);
                for(int k=0;k<K;k+=32) {
                    int kpf=k+32;
                    if(kpf<K) {
                        matrix::joint_matrix_prefetch<8,32>(sg,dA+(gm*OUT_M)*K+kpf,K,matrix::layout::row_major,sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                        matrix::joint_matrix_prefetch<8,32>(sg,dBv+(size_t)(kpf/2)*(N*2)+(size_t)(gn*OUT_N)*2,N*2,matrix::layout::row_major,sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                    }
                    matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::a,TM,TK,matrix::layout::row_major> sub_a0[MT_M],sub_a1[MT_M];
                    matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::b,TK,TN,matrix::layout::ext_intel_packed> sub_b0[MT_N],sub_b1[MT_N];
                    for(int i=0;i<MT_M;i++){matrix::joint_matrix_load(sg,sub_a0[i],pA+(gm*OUT_M+i*TM)*K+k,K);matrix::joint_matrix_load(sg,sub_a1[i],pA+(gm*OUT_M+i*TM)*K+(k+TK),K);}
                    for(int j=0;j<MT_N;j++){int n0=gn*OUT_N+j*TN;matrix::joint_matrix_load(sg,sub_b0[j],pBv+(size_t)(k/2)*(N*2)+(size_t)n0*2,N*2);matrix::joint_matrix_load(sg,sub_b1[j],pBv+(size_t)((k+TK)/2)*(N*2)+(size_t)n0*2,N*2);}
                    for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++){matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a0[i],sub_b0[j],sub_c[i][j]);matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a1[i],sub_b1[j],sub_c[i][j]);}
                }
                for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++) matrix::joint_matrix_store(sg,sub_c[i][j],pC+(gm*OUT_M+i*TM)*N+gn*OUT_N+j*TN,N,matrix::layout::row_major);
            });
    }).wait();

    std::vector<float> hC_gpu(M*N);
    q.memcpy(hC_gpu.data(), dC, M*N*sizeof(float)).wait();
    sycl::free(dA,q); sycl::free(dBv,q); sycl::free(dC,q);

    // Compare
    int errs = 0;
    float maxRelErr = 0.f;
    for (int i = 0; i < M*N; i++) {
        float ref = hC_ref[i], got = hC_gpu[i];
        float rel = (std::fabs(ref) > 1e-3f) ? std::fabs(got-ref)/std::fabs(ref) : std::fabs(got-ref);
        maxRelErr = std::max(maxRelErr, rel);
        if (rel > 0.01f) ++errs;
    }
    printf("  single_kernel: max_rel_err=%.6f  errs=%d/%d  %s\n",
           maxRelErr*100, errs, M*N, errs==0 ? "PASS" : "FAIL");
}

// GPU GEMM split-N with per-chunk B buffers
void gpu_gemm_split_n(sycl::queue& q, const bf16* hA, const bf16* hB,
                       float* hC_ref, int M, int N, int K, int N_chunk) {
    constexpr int MT_M=4, MT_N=4;
    constexpr int OUT_M = MT_M*TM, OUT_N = MT_N*TN;
    int n_chunks = N / N_chunk;

    bf16 *dA = sycl::malloc_device<bf16>(M*K, q);
    q.memcpy(dA, hA, M*K*sizeof(bf16));

    float *dC_full = sycl::malloc_device<float>(M*N, q);
    q.memset(dC_full, 0, M*N*sizeof(float));

    for (int c = 0; c < n_chunks; c++) {
        int N_off = c * N_chunk;

        // Extract B sub-matrix for this chunk: B_chunk[k][n] = B[k][N_off + n]
        std::vector<bf16> hB_chunk((size_t)K * N_chunk);
        for (int k = 0; k < K; k++)
            for (int n = 0; n < N_chunk; n++)
                hB_chunk[k*N_chunk + n] = hB[k*N + N_off + n];

        // VNNI-pack the extracted sub-matrix
        std::vector<bf16> hBv_chunk((size_t)(K/VNNI)*(N_chunk*VNNI));
        vnni_pack(hB_chunk.data(), hBv_chunk.data(), K, N_chunk);

        size_t szBv = (size_t)(K/VNNI)*(N_chunk*VNNI);
        bf16 *dBv = sycl::malloc_device<bf16>(szBv, q);
        float *dC_chunk = sycl::malloc_device<float>(M*N_chunk, q);
        q.memcpy(dBv, hBv_chunk.data(), szBv*sizeof(bf16));
        q.memset(dC_chunk, 0, M*N_chunk*sizeof(float));
        q.wait();

        int wg_m = M/OUT_M, wg_n = N_chunk/OUT_N;

        q.submit([&](sycl::handler& h) {
            h.parallel_for(
                sycl::nd_range<2>(sycl::range<2>(wg_m*SG_SZ,wg_n), sycl::range<2>(SG_SZ,1)),
                [=](sycl::nd_item<2> item) [[sycl::reqd_sub_group_size(SG_SZ)]] {
                    sycl::sub_group sg = item.get_sub_group();
                    int gm=item.get_group(0), gn=item.get_group(1);
                    auto pA = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dA);
                    auto pBv = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dBv);
                    auto pC = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dC_chunk);
                    matrix::joint_matrix<sycl::sub_group,float,matrix::use::accumulator,TM,TN> sub_c[MT_M][MT_N];
                    for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++) matrix::joint_matrix_fill(sg,sub_c[i][j],0.0f);
                    for(int k=0;k<K;k+=32) {
                        int kpf=k+32;
                        if(kpf<K) {
                            matrix::joint_matrix_prefetch<8,32>(sg,dA+(gm*OUT_M)*K+kpf,K,matrix::layout::row_major,sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                            matrix::joint_matrix_prefetch<8,32>(sg,dBv+(size_t)(kpf/2)*(N_chunk*2)+(size_t)(gn*OUT_N)*2,N_chunk*2,matrix::layout::row_major,sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                        }
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::a,TM,TK,matrix::layout::row_major> sub_a0[MT_M],sub_a1[MT_M];
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::b,TK,TN,matrix::layout::ext_intel_packed> sub_b0[MT_N],sub_b1[MT_N];
                        for(int i=0;i<MT_M;i++){matrix::joint_matrix_load(sg,sub_a0[i],pA+(gm*OUT_M+i*TM)*K+k,K);matrix::joint_matrix_load(sg,sub_a1[i],pA+(gm*OUT_M+i*TM)*K+(k+TK),K);}
                        for(int j=0;j<MT_N;j++){int n0=gn*OUT_N+j*TN;matrix::joint_matrix_load(sg,sub_b0[j],pBv+(size_t)(k/2)*(N_chunk*2)+(size_t)n0*2,N_chunk*2);matrix::joint_matrix_load(sg,sub_b1[j],pBv+(size_t)((k+TK)/2)*(N_chunk*2)+(size_t)n0*2,N_chunk*2);}
                        for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++){matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a0[i],sub_b0[j],sub_c[i][j]);matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a1[i],sub_b1[j],sub_c[i][j]);}
                    }
                    for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++) matrix::joint_matrix_store(sg,sub_c[i][j],pC+(gm*OUT_M+i*TM)*N_chunk+gn*OUT_N+j*TN,N_chunk,matrix::layout::row_major);
                });
        }).wait();

        // Copy chunk result into full C matrix
        for (int m = 0; m < M; m++) {
            q.memcpy(dC_full + m*N + N_off, dC_chunk + m*N_chunk, N_chunk*sizeof(float));
        }
        q.wait();

        sycl::free(dBv, q);
        sycl::free(dC_chunk, q);
    }

    std::vector<float> hC_gpu(M*N);
    q.memcpy(hC_gpu.data(), dC_full, M*N*sizeof(float)).wait();
    sycl::free(dA, q);
    sycl::free(dC_full, q);

    // Compare
    int errs = 0;
    float maxRelErr = 0.f;
    for (int i = 0; i < M*N; i++) {
        float ref = hC_ref[i], got = hC_gpu[i];
        float rel = (std::fabs(ref) > 1e-3f) ? std::fabs(got-ref)/std::fabs(ref) : std::fabs(got-ref);
        maxRelErr = std::max(maxRelErr, rel);
        if (rel > 0.01f) ++errs;
    }
    printf("  split_N=%d (%d chunks): max_rel_err=%.6f  errs=%d/%d  %s\n",
           N_chunk, n_chunks, maxRelErr*100, errs, M*N, errs==0 ? "PASS" : "FAIL");
}

int main() {
    sycl::queue q(sycl::gpu_selector_v,
                  {sycl::property::queue::enable_profiling{},
                   sycl::property::queue::in_order{}});
    printf("=== BF16 GEMM Correctness Verification ===\n");
    printf("Device: %s\n\n", q.get_device().get_info<sycl::info::device::name>().c_str());

    std::mt19937 rng(42);
    std::uniform_real_distribution<float> dist(-1.f, 1.f);

    // ================================================================
    // Test 1: Small size (512×512×512) — single kernel
    // ================================================================
    {
        printf("=== Test 1: 512×512×512 single kernel ===\n");
        int M=512, N=512, K=512;
        std::vector<bf16> hA(M*K), hB(K*N);
        std::vector<float> fA(M*K), fB(K*N), fC_ref(M*N);
        for(int i=0;i<M*K;i++){hA[i]=bf16(dist(rng));fA[i]=float(hA[i]);}
        for(int i=0;i<K*N;i++){hB[i]=bf16(dist(rng));fB[i]=float(hB[i]);}
        ref_gemm(fA.data(), fB.data(), fC_ref.data(), M, N, K);
        gpu_gemm(q, hA.data(), hB.data(), fC_ref.data(), M, N, K);
    }

    // ================================================================
    // Test 2: Medium size (1024×1024×1024) — single kernel
    // ================================================================
    {
        printf("\n=== Test 2: 1024×1024×1024 single kernel ===\n");
        int M=1024, N=1024, K=1024;
        std::vector<bf16> hA(M*K), hB(K*N);
        std::vector<float> fA(M*K), fB(K*N), fC_ref(M*N);
        for(int i=0;i<M*K;i++){hA[i]=bf16(dist(rng));fA[i]=float(hA[i]);}
        for(int i=0;i<K*N;i++){hB[i]=bf16(dist(rng));fB[i]=float(hB[i]);}
        ref_gemm(fA.data(), fB.data(), fC_ref.data(), M, N, K);
        gpu_gemm(q, hA.data(), hB.data(), fC_ref.data(), M, N, K);
    }

    // ================================================================
    // Test 3: Non-square (1024×2048×512) — single kernel
    // ================================================================
    {
        printf("\n=== Test 3: 1024×2048×512 single kernel ===\n");
        int M=1024, N=2048, K=512;
        std::vector<bf16> hA(M*K), hB(K*N);
        std::vector<float> fA(M*K), fB(K*N), fC_ref(M*N);
        for(int i=0;i<M*K;i++){hA[i]=bf16(dist(rng));fA[i]=float(hA[i]);}
        for(int i=0;i<K*N;i++){hB[i]=bf16(dist(rng));fB[i]=float(hB[i]);}
        ref_gemm(fA.data(), fB.data(), fC_ref.data(), M, N, K);
        gpu_gemm(q, hA.data(), hB.data(), fC_ref.data(), M, N, K);
    }

    // ================================================================
    // Test 4: Split-N correctness (1024×1024×1024, N_chunk=512)
    // ================================================================
    {
        printf("\n=== Test 4: 1024×1024×1024 split-N=512 (2 chunks) ===\n");
        int M=1024, N=1024, K=1024;
        std::vector<bf16> hA(M*K), hB(K*N);
        std::vector<float> fA(M*K), fB(K*N), fC_ref(M*N);
        for(int i=0;i<M*K;i++){hA[i]=bf16(dist(rng));fA[i]=float(hA[i]);}
        for(int i=0;i<K*N;i++){hB[i]=bf16(dist(rng));fB[i]=float(hB[i]);}
        ref_gemm(fA.data(), fB.data(), fC_ref.data(), M, N, K);
        gpu_gemm_split_n(q, hA.data(), hB.data(), fC_ref.data(), M, N, K, 512);
    }

    // ================================================================
    // Test 5: Split-N correctness (1024×2048×512, N_chunk=1024)
    // ================================================================
    {
        printf("\n=== Test 5: 1024×2048×512 split-N=1024 (2 chunks) ===\n");
        int M=1024, N=2048, K=512;
        std::vector<bf16> hA(M*K), hB(K*N);
        std::vector<float> fA(M*K), fB(K*N), fC_ref(M*N);
        for(int i=0;i<M*K;i++){hA[i]=bf16(dist(rng));fA[i]=float(hA[i]);}
        for(int i=0;i<K*N;i++){hB[i]=bf16(dist(rng));fB[i]=float(hB[i]);}
        ref_gemm(fA.data(), fB.data(), fC_ref.data(), M, N, K);
        gpu_gemm_split_n(q, hA.data(), hB.data(), fC_ref.data(), M, N, K, 1024);
    }

    // ================================================================
    // Test 6: Split-N with 4 chunks (1024×1024×1024, N_chunk=256)
    // ================================================================
    {
        printf("\n=== Test 6: 1024×1024×1024 split-N=256 (4 chunks) ===\n");
        int M=1024, N=1024, K=1024;
        std::vector<bf16> hA(M*K), hB(K*N);
        std::vector<float> fA(M*K), fB(K*N), fC_ref(M*N);
        for(int i=0;i<M*K;i++){hA[i]=bf16(dist(rng));fA[i]=float(hA[i]);}
        for(int i=0;i<K*N;i++){hB[i]=bf16(dist(rng));fB[i]=float(hB[i]);}
        ref_gemm(fA.data(), fB.data(), fC_ref.data(), M, N, K);
        gpu_gemm_split_n(q, hA.data(), hB.data(), fC_ref.data(), M, N, K, 256);
    }

    // ================================================================
    // Test 7: Single kernel with all-1 data (matches benchmark)
    // ================================================================
    {
        printf("\n=== Test 7: 512×512×512 single kernel (all-1.0 data) ===\n");
        int M=512, N=512, K=512;
        std::vector<bf16> hA(M*K, bf16(1.0f)), hB(K*N, bf16(1.0f));
        std::vector<float> fA(M*K, 1.0f), fB(K*N, 1.0f), fC_ref(M*N);
        ref_gemm(fA.data(), fB.data(), fC_ref.data(), M, N, K);
        gpu_gemm(q, hA.data(), hB.data(), fC_ref.data(), M, N, K);
    }

    printf("\n=== All tests complete ===\n");
    return 0;
}
