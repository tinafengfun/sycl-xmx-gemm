// ==========================================================================
// BF16 GEMM v20 — Pipeline restructuring experiments
// Goal: Overlap load_block2d with DPAS to reduce SBID stalls
//
// Experiments:
//   v20a: Double-buffered A/B tiles (load next k while computing current)
//   v20b: Interleaved load-compute (load batch1 while computing batch0)
//   v20c: No prefetch baseline (remove prefetch to measure its effect)
//   v20d: Separated A/B load phases (load all A, then all B, then compute)
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

// ==========================================================================
// Baseline (v13b, identical to bench_bf16_80t.cpp kernel)
// ==========================================================================
template<int MT_M, int MT_N, int KSTEP = 32>
double bench_baseline(sycl::queue& q, int M, int N, int K,
                       int warmup, int iters, const char* tag) {
    constexpr int OUT_M = MT_M * TM;
    constexpr int OUT_N = MT_N * TN;
    if ((K % KSTEP) != 0 || (M % OUT_M) != 0 || (N % OUT_N) != 0) {
        printf("  %-55s skipped\n", tag); return 1e9;
    }
    printf("  %-55s running\n", tag); fflush(stdout);
    size_t szA = (size_t)M*K, szBv = (size_t)(K/VNNI)*(N*VNNI), szC = (size_t)M*N;
    auto *dA = sycl::malloc_device<bf16>(szA, q);
    auto *dBv = sycl::malloc_device<bf16>(szBv, q);
    auto *dC = sycl::malloc_device<float>(szC, q);
    q.fill(dA, bf16(1.0f), szA); q.fill(dBv, bf16(1.0f), szBv); q.wait();

    int wg_m = M/OUT_M, wg_n = N/OUT_N;
    auto launch = [&]() -> sycl::event {
        return q.submit([&](sycl::handler& h) {
            h.parallel_for(
                sycl::nd_range<2>(sycl::range<2>(wg_m*SG_SZ, wg_n), sycl::range<2>(SG_SZ,1)),
                [=](sycl::nd_item<2> item) [[sycl::reqd_sub_group_size(SG_SZ)]] {
                    sycl::sub_group sg = item.get_sub_group();
                    int gm = item.get_group(0), gn = item.get_group(1);
                    auto pA = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dA);
                    auto pBv = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dBv);
                    auto pC = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dC);

                    matrix::joint_matrix<sycl::sub_group,float,matrix::use::accumulator,TM,TN> sub_c[MT_M][MT_N];
                    for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++) matrix::joint_matrix_fill(sg,sub_c[i][j],0.0f);

                    for(int k=0;k<K;k+=KSTEP) {
                        // Prefetch next k-block
                        int kpf = k + KSTEP;
                        if(kpf < K) {
                            matrix::joint_matrix_prefetch<8,32>(sg,dA+(gm*OUT_M)*K+kpf,K,matrix::layout::row_major,
                                sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                            matrix::joint_matrix_prefetch<8,32>(sg,dBv+(size_t)(kpf/2)*(N*2)+(size_t)(gn*OUT_N)*2,N*2,matrix::layout::row_major,
                                sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                        }

                        constexpr int KSUB = TK; // 16
                        // Load and compute in 2 sub-steps
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::a,TM,TK,matrix::layout::row_major> sub_a0[MT_M],sub_a1[MT_M];
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::b,TK,TN,matrix::layout::ext_intel_packed> sub_b0[MT_N],sub_b1[MT_N];

                        for(int i=0;i<MT_M;i++){matrix::joint_matrix_load(sg,sub_a0[i],pA+(gm*OUT_M+i*TM)*K+k,K);
                                                  matrix::joint_matrix_load(sg,sub_a1[i],pA+(gm*OUT_M+i*TM)*K+(k+KSUB),K);}
                        for(int j=0;j<MT_N;j++){int n0=gn*OUT_N+j*TN;
                                                  matrix::joint_matrix_load(sg,sub_b0[j],pBv+(size_t)(k/2)*(N*2)+(size_t)n0*2,N*2);
                                                  matrix::joint_matrix_load(sg,sub_b1[j],pBv+(size_t)((k+KSUB)/2)*(N*2)+(size_t)n0*2,N*2);}
                        for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++){
                            matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a0[i],sub_b0[j],sub_c[i][j]);
                            matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a1[i],sub_b1[j],sub_c[i][j]);
                        }
                    }
                    for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++)
                        matrix::joint_matrix_store(sg,sub_c[i][j],pC+(gm*OUT_M+i*TM)*N+gn*OUT_N+j*TN,N,matrix::layout::row_major);
                });
        });
    };

    double flops = 2.0*(double)M*N*K;
    for(int i=0;i<warmup;i++) launch(); q.wait();
    double best_ms = 1e9;
    for(int i=0;i<iters;i++){
        auto ev = launch(); ev.wait();
        auto t0 = ev.template get_profiling_info<sycl::info::event_profiling::command_start>();
        auto t1 = ev.template get_profiling_info<sycl::info::event_profiling::command_end>();
        double ms = (t1-t0)*1e-6;
        if(ms < best_ms) best_ms = ms;
    }
    printf("  %-55s best=%8.3f ms  TF=%7.2f\n", tag, best_ms, flops/(best_ms*1e-3)/1e12);
    sycl::free(dA,q); sycl::free(dBv,q); sycl::free(dC,q);
    return best_ms;
}

// ==========================================================================
// v20a: No-prefetch baseline — measure prefetch contribution
// ==========================================================================
template<int MT_M, int MT_N>
double bench_no_prefetch(sycl::queue& q, int M, int N, int K,
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
                        // NO prefetch — pure load-compute
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::a,TM,TK,matrix::layout::row_major> sub_a0[MT_M],sub_a1[MT_M];
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::b,TK,TN,matrix::layout::ext_intel_packed> sub_b0[MT_N],sub_b1[MT_N];
                        for(int i=0;i<MT_M;i++){matrix::joint_matrix_load(sg,sub_a0[i],pA+(gm*OUT_M+i*TM)*K+k,K);
                                                  matrix::joint_matrix_load(sg,sub_a1[i],pA+(gm*OUT_M+i*TM)*K+(k+TK),K);}
                        for(int j=0;j<MT_N;j++){int n0=gn*OUT_N+j*TN;
                                                  matrix::joint_matrix_load(sg,sub_b0[j],pBv+(size_t)(k/2)*(N*2)+(size_t)n0*2,N*2);
                                                  matrix::joint_matrix_load(sg,sub_b1[j],pBv+(size_t)((k+TK)/2)*(N*2)+(size_t)n0*2,N*2);}
                        for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++){
                            matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a0[i],sub_b0[j],sub_c[i][j]);
                            matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a1[i],sub_b1[j],sub_c[i][j]);
                        }
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

// ==========================================================================
// v20b: Interleaved load-compute within k-step
// Strategy: Load sub-step 0, compute sub-step 0, load sub-step 1, compute sub-step 1
// Instead of loading ALL then computing ALL, interleave to allow hardware
// to pipeline load_batch1 behind compute_batch0
// ==========================================================================
template<int MT_M, int MT_N>
double bench_interleaved(sycl::queue& q, int M, int N, int K,
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
                        // Interleaved: load sub-step0, compute sub-step0, then load sub-step1, compute sub-step1
                        // Sub-step 0
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::a,TM,TK,matrix::layout::row_major> sub_a0[MT_M];
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::b,TK,TN,matrix::layout::ext_intel_packed> sub_b0[MT_N];
                        for(int i=0;i<MT_M;i++) matrix::joint_matrix_load(sg,sub_a0[i],pA+(gm*OUT_M+i*TM)*K+k,K);
                        for(int j=0;j<MT_N;j++){int n0=gn*OUT_N+j*TN;
                                                  matrix::joint_matrix_load(sg,sub_b0[j],pBv+(size_t)(k/2)*(N*2)+(size_t)n0*2,N*2);}
                        for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++)
                            matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a0[i],sub_b0[j],sub_c[i][j]);

                        // Sub-step 1
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::a,TM,TK,matrix::layout::row_major> sub_a1[MT_M];
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::b,TK,TN,matrix::layout::ext_intel_packed> sub_b1[MT_N];
                        for(int i=0;i<MT_M;i++) matrix::joint_matrix_load(sg,sub_a1[i],pA+(gm*OUT_M+i*TM)*K+(k+TK),K);
                        for(int j=0;j<MT_N;j++){int n0=gn*OUT_N+j*TN;
                                                  matrix::joint_matrix_load(sg,sub_b1[j],pBv+(size_t)((k+TK)/2)*(N*2)+(size_t)n0*2,N*2);}
                        for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++)
                            matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a1[i],sub_b1[j],sub_c[i][j]);
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

// ==========================================================================
// v20c: Finer-grained interleaving — per-tile load-compute pairs
// Strategy: For each tile (i,j), load A[i] and B[j], then immediately compute.
// This creates more independent load-compute chains for the hardware to pipeline.
// ==========================================================================
template<int MT_M, int MT_N>
double bench_fine_interleave(sycl::queue& q, int M, int N, int K,
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
                        // Load ALL A tiles for both sub-steps first (batch A loads)
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::a,TM,TK,matrix::layout::row_major>
                            sub_a0[MT_M], sub_a1[MT_M];
                        for(int i=0;i<MT_M;i++){
                            matrix::joint_matrix_load(sg,sub_a0[i],pA+(gm*OUT_M+i*TM)*K+k,K);
                            matrix::joint_matrix_load(sg,sub_a1[i],pA+(gm*OUT_M+i*TM)*K+(k+TK),K);
                        }
                        // For each (i,j): load B[j] then immediately compute with A[i] and B[j]
                        // This interleaves B loads with DPAS operations
                        for(int j=0;j<MT_N;j++){
                            int n0=gn*OUT_N+j*TN;
                            matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::b,TK,TN,matrix::layout::ext_intel_packed>
                                sub_b0j, sub_b1j;
                            matrix::joint_matrix_load(sg,sub_b0j,pBv+(size_t)(k/2)*(N*2)+(size_t)n0*2,N*2);
                            matrix::joint_matrix_load(sg,sub_b1j,pBv+(size_t)((k+TK)/2)*(N*2)+(size_t)n0*2,N*2);
                            // Compute all M tiles for this B[j]
                            for(int i=0;i<MT_M;i++){
                                matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a0[i],sub_b0j,sub_c[i][j]);
                                matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a1[i],sub_b1j,sub_c[i][j]);
                            }
                        }
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

// ==========================================================================
// v20d: Load A first, then interleave B-load with compute
// Strategy: A tiles are loaded once (they're reused across N), B loads
// are interleaved with DPAS to reduce concurrent SEND pressure.
// ==========================================================================
template<int MT_M, int MT_N>
double bench_load_A_first(sycl::queue& q, int M, int N, int K,
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
                        // Phase 1: Load ALL A tiles (both sub-steps) — A is reused across N
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::a,TM,TK,matrix::layout::row_major>
                            sub_a0[MT_M], sub_a1[MT_M];
                        for(int i=0;i<MT_M;i++){
                            matrix::joint_matrix_load(sg,sub_a0[i],pA+(gm*OUT_M+i*TM)*K+k,K);
                            matrix::joint_matrix_load(sg,sub_a1[i],pA+(gm*OUT_M+i*TM)*K+(k+TK),K);
                        }

                        // Phase 2: For each B column, load B then compute all A×B
                        // This reduces concurrent SENDs (only 1 B load + 16 DPAS at a time)
                        for(int j=0;j<MT_N;j++){
                            int n0=gn*OUT_N+j*TN;
                            matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::b,TK,TN,matrix::layout::ext_intel_packed>
                                sub_b0, sub_b1;
                            matrix::joint_matrix_load(sg,sub_b0,pBv+(size_t)(k/2)*(N*2)+(size_t)n0*2,N*2);
                            matrix::joint_matrix_load(sg,sub_b1,pBv+(size_t)((k+TK)/2)*(N*2)+(size_t)n0*2,N*2);
                            for(int i=0;i<MT_M;i++){
                                matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a0[i],sub_b0,sub_c[i][j]);
                                matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a1[i],sub_b1,sub_c[i][j]);
                            }
                        }
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

// ==========================================================================
// Main
// ==========================================================================
int main(int argc, char* argv[]) {
    int warmup = 10, iters = 50;
    if (argc > 1) warmup = atoi(argv[1]);
    if (argc > 2) iters = atoi(argv[2]);

    sycl::queue q(sycl::gpu_selector_v,
                  {sycl::property::queue::enable_profiling{},
                   sycl::property::queue::in_order{}});
    printf("=== BF16 GEMM v20 — Pipeline restructuring ===\n");
    printf("Device: %s\n\n", q.get_device().get_info<sycl::info::device::name>().c_str());

    printf("=== N=2048 (sweet spot, M=8192, K=4096) ===\n");
    bench_baseline<4,4>(q, 8192, 2048, 4096, warmup, iters, "v13b_baseline_prefetch");
    bench_no_prefetch<4,4>(q, 8192, 2048, 4096, warmup, iters, "v20a_no_prefetch");
    bench_interleaved<4,4>(q, 8192, 2048, 4096, warmup, iters, "v20b_interleaved");
    bench_fine_interleave<4,4>(q, 8192, 2048, 4096, warmup, iters, "v20c_fine_interleave");
    bench_load_A_first<4,4>(q, 8192, 2048, 4096, warmup, iters, "v20d_load_A_first");

    printf("\n=== N=4096 (M=8192, K=4096) ===\n");
    bench_baseline<4,4>(q, 8192, 4096, 4096, warmup, iters, "v13b_baseline_prefetch");
    bench_no_prefetch<4,4>(q, 8192, 4096, 4096, warmup, iters, "v20a_no_prefetch");
    bench_interleaved<4,4>(q, 8192, 4096, 4096, warmup, iters, "v20b_interleaved");
    bench_fine_interleave<4,4>(q, 8192, 4096, 4096, warmup, iters, "v20c_fine_interleave");
    bench_load_A_first<4,4>(q, 8192, 4096, 4096, warmup, iters, "v20d_load_A_first");

    printf("\n=== N=8192 (M=8192, K=4096) ===\n");
    bench_baseline<4,4>(q, 8192, 8192, 4096, warmup, iters, "v13b_baseline_prefetch");
    bench_no_prefetch<4,4>(q, 8192, 8192, 4096, warmup, iters, "v20a_no_prefetch");
    bench_interleaved<4,4>(q, 8192, 8192, 4096, warmup, iters, "v20b_interleaved");
    bench_fine_interleave<4,4>(q, 8192, 8192, 4096, warmup, iters, "v20c_fine_interleave");
    bench_load_A_first<4,4>(q, 8192, 8192, 4096, warmup, iters, "v20d_load_A_first");

    printf("\n=== Done ===\n");
    return 0;
}
