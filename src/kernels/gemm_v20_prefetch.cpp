// ==========================================================================
// BF16 GEMM v20d — Prefetch distance sweep
//
// Goal: Find the optimal prefetch distance by measuring how far ahead
// we need to prefetch for the data to be ready when computation needs it.
//
// Hypothesis: Prefetch k+32 gives no benefit because the compute for
// k starts too soon after the prefetch is issued. The load latency
// for load_block2d is ~200-400 cycles, and 32 DPAS instructions only
// take ~100-150 cycles. So we need to prefetch at least k+64 or k+96
// ahead to actually hide the latency.
//
// Experiments:
//   1. No prefetch (baseline)
//   2. Prefetch k+32  (1 k-step ahead — current)
//   3. Prefetch k+64  (2 k-steps ahead)
//   4. Prefetch k+96  (3 k-steps ahead)
//   5. Prefetch k+128 (4 k-steps ahead)
//   6. Prefetch k+256 (8 k-steps ahead)
//   7. Multi-stage: prefetch k+32 AND k+64 simultaneously
//   8. Multi-stage: prefetch k+32 AND k+64 AND k+96
//
// Also test with L2 prefetch hint instead of L1
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
#include <chrono>

namespace matrix = sycl::ext::oneapi::experimental::matrix;
using bf16 = sycl::ext::oneapi::bfloat16;

static constexpr int TM = 8, TN = 16, TK = 16, SG_SZ = 16, VNNI = 2;

// Generic prefetch distance benchmark
// KSTEP_PF: how many k-steps ahead to prefetch (in units of 32)
template<int MT_M, int MT_N, int KSTEP_PF, bool USE_L2 = false>
double bench_pf_dist(sycl::queue& q, int M, int N, int K,
                      int warmup, int iters, const char* tag) {
    constexpr int OUT_M = MT_M * TM;
    constexpr int OUT_N = MT_N * TN;
    if ((K%32)!=0||(M%OUT_M)!=0||(N%OUT_N)!=0) {
        printf("  %-55s skipped\n", tag); return 1e9;
    }
    // Need K > KSTEP_PF*32 for prefetch to have effect
    if (K <= KSTEP_PF * 32) {
        printf("  %-55s skipped (K too small)\n", tag); return 1e9;
    }
    printf("  %-55s running\n", tag); fflush(stdout);
    size_t szA=(size_t)M*K, szBv=(size_t)(K/VNNI)*(N*VNNI), szC=(size_t)M*N;
    auto *dA=sycl::malloc_device<bf16>(szA,q);
    auto *dBv=sycl::malloc_device<bf16>(szBv,q);
    auto *dC=sycl::malloc_device<float>(szC,q);
    q.fill(dA, bf16(1.0f), szA); q.fill(dBv, bf16(1.0f), szBv); q.wait();
    int wg_m=M/OUT_M, wg_n=N/OUT_N;

    auto launch=[&]() -> sycl::event {
        return q.submit([&](sycl::handler& h) {
            h.parallel_for(
                sycl::nd_range<2>(sycl::range<2>(wg_m*SG_SZ,wg_n), sycl::range<2>(SG_SZ,1)),
                [=](sycl::nd_item<2> item) [[sycl::reqd_sub_group_size(SG_SZ)]] {
                    sycl::sub_group sg = item.get_sub_group();
                    int gm=item.get_group(0), gn=item.get_group(1);
                    auto pA = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dA);
                    auto pBv = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dBv);
                    auto pC = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dC);

                    matrix::joint_matrix<sycl::sub_group,float,matrix::use::accumulator,TM,TN> sub_c[MT_M][MT_N];
                    for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++) matrix::joint_matrix_fill(sg,sub_c[i][j],0.0f);

                    for(int k=0;k<K;k+=32) {
                        // Prefetch at distance KSTEP_PF * 32
                        int kpf = k + KSTEP_PF * 32;
                        if(kpf < K) {
                            if constexpr (USE_L2) {
                                matrix::joint_matrix_prefetch<8,32>(sg,dA+(gm*OUT_M)*K+kpf,K,
                                    matrix::layout::row_major,
                                    sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L2});
                                matrix::joint_matrix_prefetch<8,32>(sg,dBv+(size_t)(kpf/2)*(N*2)+(size_t)(gn*OUT_N)*2,N*2,
                                    matrix::layout::row_major,
                                    sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L2});
                            } else {
                                matrix::joint_matrix_prefetch<8,32>(sg,dA+(gm*OUT_M)*K+kpf,K,
                                    matrix::layout::row_major,
                                    sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                                matrix::joint_matrix_prefetch<8,32>(sg,dBv+(size_t)(kpf/2)*(N*2)+(size_t)(gn*OUT_N)*2,N*2,
                                    matrix::layout::row_major,
                                    sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                            }
                        }

                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::a,TM,TK,matrix::layout::row_major> sub_a0[MT_M],sub_a1[MT_M];
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::b,TK,TN,matrix::layout::ext_intel_packed> sub_b0[MT_N],sub_b1[MT_N];
                        for(int i=0;i<MT_M;i++){matrix::joint_matrix_load(sg,sub_a0[i],pA+(gm*OUT_M+i*TM)*K+k,K);matrix::joint_matrix_load(sg,sub_a1[i],pA+(gm*OUT_M+i*TM)*K+(k+TK),K);}
                        for(int j=0;j<MT_N;j++){int n0=gn*OUT_N+j*TN;matrix::joint_matrix_load(sg,sub_b0[j],pBv+(size_t)(k/2)*(N*2)+(size_t)n0*2,N*2);matrix::joint_matrix_load(sg,sub_b1[j],pBv+(size_t)((k+TK)/2)*(N*2)+(size_t)n0*2,N*2);}
                        for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++){matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a0[i],sub_b0[j],sub_c[i][j]);matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a1[i],sub_b1[j],sub_c[i][j]);}
                    }
                    for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++)
                        matrix::joint_matrix_store(sg,sub_c[i][j],pC+(gm*OUT_M+i*TM)*N+gn*OUT_N+j*TN,N,matrix::layout::row_major);
                });
        });
    };

    double flops=2.0*(double)M*N*K;
    for(int i=0;i<warmup;i++) launch(); q.wait();
    double best_ms=1e9;
    for(int i=0;i<iters;i++){
        auto ev=launch(); ev.wait();
        auto t0=ev.template get_profiling_info<sycl::info::event_profiling::command_start>();
        auto t1=ev.template get_profiling_info<sycl::info::event_profiling::command_end>();
        double ms=(t1-t0)*1e-6;
        if(ms<best_ms) best_ms=ms;
    }
    printf("  %-55s best=%8.3f ms  TF=%7.2f\n", tag, best_ms, flops/(best_ms*1e-3)/1e12);
    sycl::free(dA,q); sycl::free(dBv,q); sycl::free(dC,q);
    return best_ms;
}

// Multi-stage prefetch: issue prefetches at multiple distances simultaneously
template<int MT_M, int MT_N, int PF1, int PF2, int PF3 = 0>
double bench_pf_multi(sycl::queue& q, int M, int N, int K,
                       int warmup, int iters, const char* tag) {
    constexpr int OUT_M = MT_M * TM;
    constexpr int OUT_N = MT_N * TN;
    if ((K%32)!=0||(M%OUT_M)!=0||(N%OUT_N)!=0) {
        printf("  %-55s skipped\n", tag); return 1e9;
    }
    printf("  %-55s running\n", tag); fflush(stdout);
    size_t szA=(size_t)M*K, szBv=(size_t)(K/VNNI)*(N*VNNI), szC=(size_t)M*N;
    auto *dA=sycl::malloc_device<bf16>(szA,q);
    auto *dBv=sycl::malloc_device<bf16>(szBv,q);
    auto *dC=sycl::malloc_device<float>(szC,q);
    q.fill(dA, bf16(1.0f), szA); q.fill(dBv, bf16(1.0f), szBv); q.wait();
    int wg_m=M/OUT_M, wg_n=N/OUT_N;

    auto launch=[&]() -> sycl::event {
        return q.submit([&](sycl::handler& h) {
            h.parallel_for(
                sycl::nd_range<2>(sycl::range<2>(wg_m*SG_SZ,wg_n), sycl::range<2>(SG_SZ,1)),
                [=](sycl::nd_item<2> item) [[sycl::reqd_sub_group_size(SG_SZ)]] {
                    sycl::sub_group sg = item.get_sub_group();
                    int gm=item.get_group(0), gn=item.get_group(1);
                    auto pA = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dA);
                    auto pBv = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dBv);
                    auto pC = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dC);

                    matrix::joint_matrix<sycl::sub_group,float,matrix::use::accumulator,TM,TN> sub_c[MT_M][MT_N];
                    for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++) matrix::joint_matrix_fill(sg,sub_c[i][j],0.0f);

                    for(int k=0;k<K;k+=32) {
                        // Stage 1: prefetch at PF1 * 32 ahead
                        int kpf1 = k + PF1 * 32;
                        if(kpf1 < K) {
                            matrix::joint_matrix_prefetch<8,32>(sg,dA+(gm*OUT_M)*K+kpf1,K,matrix::layout::row_major,
                                sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                            matrix::joint_matrix_prefetch<8,32>(sg,dBv+(size_t)(kpf1/2)*(N*2)+(size_t)(gn*OUT_N)*2,N*2,matrix::layout::row_major,
                                sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                        }
                        // Stage 2: prefetch at PF2 * 32 ahead
                        int kpf2 = k + PF2 * 32;
                        if(kpf2 < K) {
                            matrix::joint_matrix_prefetch<8,32>(sg,dA+(gm*OUT_M)*K+kpf2,K,matrix::layout::row_major,
                                sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                            matrix::joint_matrix_prefetch<8,32>(sg,dBv+(size_t)(kpf2/2)*(N*2)+(size_t)(gn*OUT_N)*2,N*2,matrix::layout::row_major,
                                sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                        }
                        // Stage 3 (optional): prefetch at PF3 * 32 ahead
                        if constexpr (PF3 > 0) {
                            int kpf3 = k + PF3 * 32;
                            if(kpf3 < K) {
                                matrix::joint_matrix_prefetch<8,32>(sg,dA+(gm*OUT_M)*K+kpf3,K,matrix::layout::row_major,
                                    sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                                matrix::joint_matrix_prefetch<8,32>(sg,dBv+(size_t)(kpf3/2)*(N*2)+(size_t)(gn*OUT_N)*2,N*2,matrix::layout::row_major,
                                    sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                            }
                        }

                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::a,TM,TK,matrix::layout::row_major> sub_a0[MT_M],sub_a1[MT_M];
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::b,TK,TN,matrix::layout::ext_intel_packed> sub_b0[MT_N],sub_b1[MT_N];
                        for(int i=0;i<MT_M;i++){matrix::joint_matrix_load(sg,sub_a0[i],pA+(gm*OUT_M+i*TM)*K+k,K);matrix::joint_matrix_load(sg,sub_a1[i],pA+(gm*OUT_M+i*TM)*K+(k+TK),K);}
                        for(int j=0;j<MT_N;j++){int n0=gn*OUT_N+j*TN;matrix::joint_matrix_load(sg,sub_b0[j],pBv+(size_t)(k/2)*(N*2)+(size_t)n0*2,N*2);matrix::joint_matrix_load(sg,sub_b1[j],pBv+(size_t)((k+TK)/2)*(N*2)+(size_t)n0*2,N*2);}
                        for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++){matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a0[i],sub_b0[j],sub_c[i][j]);matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a1[i],sub_b1[j],sub_c[i][j]);}
                    }
                    for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++)
                        matrix::joint_matrix_store(sg,sub_c[i][j],pC+(gm*OUT_M+i*TM)*N+gn*OUT_N+j*TN,N,matrix::layout::row_major);
                });
        });
    };

    double flops=2.0*(double)M*N*K;
    for(int i=0;i<warmup;i++) launch(); q.wait();
    double best_ms=1e9;
    for(int i=0;i<iters;i++){
        auto ev=launch(); ev.wait();
        auto t0=ev.template get_profiling_info<sycl::info::event_profiling::command_start>();
        auto t1=ev.template get_profiling_info<sycl::info::event_profiling::command_end>();
        double ms=(t1-t0)*1e-6;
        if(ms<best_ms) best_ms=ms;
    }
    printf("  %-55s best=%8.3f ms  TF=%7.2f\n", tag, best_ms, flops/(best_ms*1e-3)/1e12);
    sycl::free(dA,q); sycl::free(dBv,q); sycl::free(dC,q);
    return best_ms;
}

int main(int argc, char* argv[]) {
    int warmup = 10, iters = 50;
    if (argc > 1) warmup = atoi(argv[1]);
    if (argc > 2) iters = atoi(argv[2]);

    sycl::queue q(sycl::gpu_selector_v,
                  {sycl::property::queue::enable_profiling{},
                   sycl::property::queue::in_order{}});
    printf("=== BF16 GEMM v20d — Prefetch distance sweep ===\n");
    printf("Device: %s\n", q.get_device().get_info<sycl::info::device::name>().c_str());
    printf("4x4 tiles, k-step=32, 256 GRF, SG=16\n\n");

    // Use large K to allow far-ahead prefetch
    // K=4096 gives 128 k-steps, so we can prefetch up to k+128*32 = k+4096
    int M=8192, N=2048, K=4096;

    printf("=== Single prefetch distance sweep (L1 hint) ===\n");
    printf("Format: prefetch k+N*32 bytes ahead\n\n");

    // No prefetch baseline
    bench_pf_dist<4,4, 0>(q,M,N,K,warmup,iters,"pf_none_noprefetch");
    // Prefetch distances: 1..16 k-steps ahead (32..512 bytes in K)
    bench_pf_dist<4,4, 1>(q,M,N,K,warmup,iters,"pf_k+32_1step");
    bench_pf_dist<4,4, 2>(q,M,N,K,warmup,iters,"pf_k+64_2step");
    bench_pf_dist<4,4, 3>(q,M,N,K,warmup,iters,"pf_k+96_3step");
    bench_pf_dist<4,4, 4>(q,M,N,K,warmup,iters,"pf_k+128_4step");
    bench_pf_dist<4,4, 6>(q,M,N,K,warmup,iters,"pf_k+192_6step");
    bench_pf_dist<4,4, 8>(q,M,N,K,warmup,iters,"pf_k+256_8step");
    bench_pf_dist<4,4,12>(q,M,N,K,warmup,iters,"pf_k+384_12step");
    bench_pf_dist<4,4,16>(q,M,N,K,warmup,iters,"pf_k+512_16step");

    printf("\n=== L2 prefetch comparison ===\n");
    bench_pf_dist<4,4, 0, true>(q,M,N,K,warmup,iters,"pf_none_L2");
    bench_pf_dist<4,4, 1, true>(q,M,N,K,warmup,iters,"pf_k+32_L2");
    bench_pf_dist<4,4, 2, true>(q,M,N,K,warmup,iters,"pf_k+64_L2");
    bench_pf_dist<4,4, 4, true>(q,M,N,K,warmup,iters,"pf_k+128_L2");
    bench_pf_dist<4,4, 8, true>(q,M,N,K,warmup,iters,"pf_k+256_L2");

    printf("\n=== Multi-stage prefetch ===\n");
    bench_pf_multi<4,4, 1, 2>(q,M,N,K,warmup,iters,"pf2_k+32+k+64");
    bench_pf_multi<4,4, 1, 3>(q,M,N,K,warmup,iters,"pf2_k+32+k+96");
    bench_pf_multi<4,4, 2, 4>(q,M,N,K,warmup,iters,"pf2_k+64+k+128");
    bench_pf_multi<4,4, 1, 2, 3>(q,M,N,K,warmup,iters,"pf3_k+32+k+64+k+96");
    bench_pf_multi<4,4, 2, 4, 6>(q,M,N,K,warmup,iters,"pf3_k+64+k+128+k+192");

    printf("\n=== K=8192 (more iterations, more overlap potential) ===\n");
    K = 8192;
    bench_pf_dist<4,4, 0>(q,M,N,K,warmup,iters,"K8k_pf_none");
    bench_pf_dist<4,4, 1>(q,M,N,K,warmup,iters,"K8k_pf_k+32");
    bench_pf_dist<4,4, 2>(q,M,N,K,warmup,iters,"K8k_pf_k+64");
    bench_pf_dist<4,4, 4>(q,M,N,K,warmup,iters,"K8k_pf_k+128");
    bench_pf_dist<4,4, 8>(q,M,N,K,warmup,iters,"K8k_pf_k+256");

    printf("\n=== Done ===\n");
    return 0;
}
