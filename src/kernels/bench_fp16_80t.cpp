// ==========================================================================
// FP16 GEMM — Same proven pattern as BF16 80T+ kernel
// ==========================================================================
// Adapts the 4×4 blocking + VNNI + prefetch + split-N pattern to FP16
// to see if the optimization journey translates.
// ==========================================================================

#include <sycl/sycl.hpp>
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
using half = sycl::half;

static constexpr int TM = 8, TN = 16, TK = 16, SG_SZ = 16, VNNI = 2;

// VNNI-pack: B[K][N] → Bv[K/2][N*2]
void vnni_pack(const half* B, half* Bv, int K, int N) {
    for (int k = 0; k < K/VNNI; k++)
        for (int n = 0; n < N; n++) {
            Bv[k*N*VNNI + n*VNNI + 0] = B[(2*k+0)*N + n];
            Bv[k*N*VNNI + n*VNNI + 1] = B[(2*k+1)*N + n];
        }
}

template<int MT_M, int MT_N>
double bench(sycl::queue& q, int M, int N, int K,
              int warmup, int iters, const char* tag) {
    constexpr int OUT_M = MT_M * TM;
    constexpr int OUT_N = MT_N * TN;
    if ((K%32)!=0||(M%OUT_M)!=0||(N%OUT_N)!=0) {
        printf("  %-55s skipped\n", tag); return 1e9;
    }
    printf("  %-55s running\n", tag); fflush(stdout);

    size_t szA=(size_t)M*K, szBv=(size_t)(K/VNNI)*(N*VNNI), szC=(size_t)M*N;
    auto *dA=sycl::malloc_device<half>(szA,q);
    auto *dBv=sycl::malloc_device<half>(szBv,q);
    auto *dC=sycl::malloc_device<float>(szC,q);
    q.fill(dA, half(1.0f), szA); q.fill(dBv, half(1.0f), szBv); q.wait();

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
                        int kpf=k+32;
                        if(kpf<K) {
                            matrix::joint_matrix_prefetch<8,32>(sg,dA+(gm*OUT_M)*K+kpf,K,matrix::layout::row_major,sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                            matrix::joint_matrix_prefetch<8,32>(sg,dBv+(size_t)(kpf/2)*(N*2)+(size_t)(gn*OUT_N)*2,N*2,matrix::layout::row_major,sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                        }
                        matrix::joint_matrix<sycl::sub_group,half,matrix::use::a,TM,TK,matrix::layout::row_major> sub_a0[MT_M],sub_a1[MT_M];
                        matrix::joint_matrix<sycl::sub_group,half,matrix::use::b,TK,TN,matrix::layout::ext_intel_packed> sub_b0[MT_N],sub_b1[MT_N];
                        for(int i=0;i<MT_M;i++){matrix::joint_matrix_load(sg,sub_a0[i],pA+(gm*OUT_M+i*TM)*K+k,K);matrix::joint_matrix_load(sg,sub_a1[i],pA+(gm*OUT_M+i*TM)*K+(k+TK),K);}
                        for(int j=0;j<MT_N;j++){int n0=gn*OUT_N+j*TN;matrix::joint_matrix_load(sg,sub_b0[j],pBv+(size_t)(k/2)*(N*2)+(size_t)n0*2,N*2);matrix::joint_matrix_load(sg,sub_b1[j],pBv+(size_t)((k+TK)/2)*(N*2)+(size_t)n0*2,N*2);}
                        for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++){matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a0[i],sub_b0[j],sub_c[i][j]);matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a1[i],sub_b1[j],sub_c[i][j]);}
                    }
                    for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++) matrix::joint_matrix_store(sg,sub_c[i][j],pC+(gm*OUT_M+i*TM)*N+gn*OUT_N+j*TN,N,matrix::layout::row_major);
                });
        });
    };
    double flops=2.0*(double)M*N*K;
    for(int i=0;i<warmup;i++) launch(); q.wait();
    double best_ms=1e9, max_perf=0, sum_perf=0;
    for(int i=0;i<iters;i++){
        auto ev=launch(); ev.wait();
        auto t0=ev.template get_profiling_info<sycl::info::event_profiling::command_start>();
        auto t1=ev.template get_profiling_info<sycl::info::event_profiling::command_end>();
        double ms=(t1-t0)*1e-6;
        double perf=flops/(ms*1e-3)/1e9;
        if(ms<best_ms) best_ms=ms;
        if(perf>max_perf) max_perf=perf;
        sum_perf+=perf;
    }
    printf("  %-55s best=%8.3f ms  TF=%7.2f  avg=%7.2f  u=%.1f%%\n",
           tag, best_ms, max_perf/1000.0, (sum_perf/iters)/1000.0, max_perf/96000.0*100);
    sycl::free(dA,q); sycl::free(dBv,q); sycl::free(dC,q);
    return best_ms;
}

// Split-N with per-chunk FP16 VNNI-packed B buffers
template<int MT_M, int MT_N>
double bench_split_n(sycl::queue& q, int M, int N, int K,
                      int N_chunk, int warmup, int iters, const char* tag) {
    constexpr int OUT_M = MT_M*TM, OUT_N = MT_N*TN;
    if (N%N_chunk!=0 || N_chunk%OUT_N!=0) {
        printf("  %-55s skipped\n", tag); return 1e9;
    }
    printf("  %-55s running\n", tag); fflush(stdout);
    int n_chunks = N/N_chunk;
    size_t szA=(size_t)M*K;
    auto *dA=sycl::malloc_device<half>(szA,q);
    q.fill(dA, half(1.0f), szA);
    std::vector<half*> dBv(n_chunks);
    std::vector<float*> dC(n_chunks);
    for(int c=0;c<n_chunks;c++){
        size_t szBv=(size_t)(K/VNNI)*(N_chunk*VNNI);
        size_t szC=(size_t)M*N_chunk;
        dBv[c]=sycl::malloc_device<half>(szBv,q);
        dC[c]=sycl::malloc_device<float>(szC,q);
        q.fill(dBv[c], half(1.0f), szBv);
    }
    q.wait();
    int wg_m=M/OUT_M, wg_n=N_chunk/OUT_N;
    auto launch_all=[&]()->double{
        std::vector<sycl::event> evts;
        for(int c=0;c<n_chunks;c++){
            half* dBc=dBv[c]; float* dCc=dC[c];
            evts.push_back(q.submit([&](sycl::handler& h){
                h.parallel_for(
                    sycl::nd_range<2>(sycl::range<2>(wg_m*SG_SZ,wg_n),sycl::range<2>(SG_SZ,1)),
                    [=](sycl::nd_item<2> item) [[sycl::reqd_sub_group_size(SG_SZ)]] {
                        sycl::sub_group sg=item.get_sub_group();
                        int gm=item.get_group(0),gn=item.get_group(1);
                        auto pA=sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dA);
                        auto pBv=sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dBc);
                        auto pC=sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dCc);
                        matrix::joint_matrix<sycl::sub_group,float,matrix::use::accumulator,TM,TN> sc[MT_M][MT_N];
                        for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++) matrix::joint_matrix_fill(sg,sc[i][j],0.0f);
                        for(int k=0;k<K;k+=32){
                            int kpf=k+32;
                            if(kpf<K){
                                matrix::joint_matrix_prefetch<8,32>(sg,dA+(gm*OUT_M)*K+kpf,K,matrix::layout::row_major,sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                                matrix::joint_matrix_prefetch<8,32>(sg,dBc+(size_t)(kpf/2)*(N_chunk*2)+(size_t)(gn*OUT_N)*2,N_chunk*2,matrix::layout::row_major,sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                            }
                            matrix::joint_matrix<sycl::sub_group,half,matrix::use::a,TM,TK,matrix::layout::row_major> sa0[MT_M],sa1[MT_M];
                            matrix::joint_matrix<sycl::sub_group,half,matrix::use::b,TK,TN,matrix::layout::ext_intel_packed> sb0[MT_N],sb1[MT_N];
                            for(int i=0;i<MT_M;i++){matrix::joint_matrix_load(sg,sa0[i],pA+(gm*OUT_M+i*TM)*K+k,K);matrix::joint_matrix_load(sg,sa1[i],pA+(gm*OUT_M+i*TM)*K+(k+TK),K);}
                            for(int j=0;j<MT_N;j++){int n0=gn*OUT_N+j*TN;matrix::joint_matrix_load(sg,sb0[j],pBv+(size_t)(k/2)*(N_chunk*2)+(size_t)n0*2,N_chunk*2);matrix::joint_matrix_load(sg,sb1[j],pBv+(size_t)((k+TK)/2)*(N_chunk*2)+(size_t)n0*2,N_chunk*2);}
                            for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++){matrix::joint_matrix_mad(sg,sc[i][j],sa0[i],sb0[j],sc[i][j]);matrix::joint_matrix_mad(sg,sc[i][j],sa1[i],sb1[j],sc[i][j]);}
                        }
                        for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++) matrix::joint_matrix_store(sg,sc[i][j],pC+(gm*OUT_M+i*TM)*N_chunk+gn*OUT_N+j*TN,N_chunk,matrix::layout::row_major);
                    });
            }));
        }
        double total=0;
        for(auto& e:evts){e.wait();auto t0=e.template get_profiling_info<sycl::info::event_profiling::command_start>();auto t1=e.template get_profiling_info<sycl::info::event_profiling::command_end>();total+=(t1-t0)*1e-6;}
        return total;
    };
    double flops=2.0*(double)M*N*K;
    for(int i=0;i<warmup;i++) launch_all();
    double best=1e9;
    for(int i=0;i<iters;i++){double ms=launch_all();if(ms<best)best=ms;}
    printf("  %-55s best=%8.3f ms  TF=%7.2f  u=%.1f%%  (%d chunks)\n",
           tag, best, flops/(best*1e-3)/1e12, flops/(best*1e-3)/96e12*100, n_chunks);
    sycl::free(dA,q);
    for(int c=0;c<n_chunks;c++){sycl::free(dBv[c],q);sycl::free(dC[c],q);}
    return best;
}

int main(int argc, char* argv[]) {
    int warmup = 10, iters = 50;
    if (argc > 1) warmup = atoi(argv[1]);
    if (argc > 2) iters = atoi(argv[2]);

    sycl::queue q(sycl::gpu_selector_v,
                  {sycl::property::queue::enable_profiling{},
                   sycl::property::queue::in_order{}});
    printf("=== FP16 GEMM Benchmark (same pattern as BF16 80T+) ===\n");
    printf("Device: %s\n\n", q.get_device().get_info<sycl::info::device::name>().c_str());

    printf("=== FP16 Single Kernel — Size Sweep ===\n");
    bench<4,4>(q, 2048, 2048, 2048, warmup, iters, "FP16 2048x2048x2048");
    bench<4,4>(q, 3072, 3072, 3072, warmup, iters, "FP16 3072x3072x3072");
    bench<4,4>(q, 4096, 4096, 4096, warmup, iters, "FP16 4096x4096x4096");
    bench<4,4>(q, 5120, 5120, 4096, warmup, iters, "FP16 5120x5120x4096");
    bench<4,4>(q, 8192, 4096, 4096, warmup, iters, "FP16 8192x4096x4096");
    bench<4,4>(q, 8192, 2048, 4096, warmup, iters, "FP16 8192x2048x4096");
    bench<4,4>(q, 8192, 8192, 4096, warmup, iters, "FP16 8192x8192x4096");
    bench<4,4>(q, 8192, 8192, 2048, warmup, iters, "FP16 8192x8192x2048");
    bench<4,4>(q, 8192, 8192, 1024, warmup, iters, "FP16 8192x8192x1024");
    bench<4,4>(q, 16384, 4096, 4096, warmup, iters, "FP16 16384x4096x4096");

    printf("\n=== FP16 Split-N (8192x8192x4096) ===\n");
    bench_split_n<4,4>(q, 8192, 8192, 4096, 4096, warmup, iters, "FP16 split_N=4096_2c");
    bench_split_n<4,4>(q, 8192, 8192, 4096, 2048, warmup, iters, "FP16 split_N=2048_4c");
    bench_split_n<4,4>(q, 8192, 8192, 4096, 1024, warmup, iters, "FP16 split_N=1024_8c");

    printf("\n=== BF16 vs FP16 comparison (4x4 + pfL1) ===\n");
    // Quick BF16 comparison at same sizes
    // (BF16 results from v13b: 81.03T at 8192x4096x4096, 73.14T at 8192x8192x4096)
    printf("  BF16 reference (from previous run):\n");
    printf("  %-55s TF=%7.2f  u=%.1f%%\n", "BF16 8192x4096x4096 (ref)", 81.03, 84.4);
    printf("  %-55s TF=%7.2f  u=%.1f%%\n", "BF16 8192x8192x4096 (ref)", 73.14, 76.2);
    printf("  %-55s TF=%7.2f  u=%.1f%%\n", "BF16 4096x4096x4096 (ref)", 81.25, 84.6);
    printf("  %-55s TF=%7.2f  u=%.1f%%\n", "BF16 split_N=2048_4c (ref)", 84.58, 88.1);

    printf("\n=== Done ===\n");
    return 0;
}
