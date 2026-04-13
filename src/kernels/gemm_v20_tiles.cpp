// ==========================================================================
// BF16 GEMM v20b — Tile size sweep
// Test MT_M × MT_N × k-step combinations to find optimal compute density
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

// Exact copy of bench_bf16_80t baseline for fair comparison
template<int MT_M, int MT_N>
double bench_baseline(sycl::queue& q, int M, int N, int K,
                       int warmup, int iters, const char* tag) {
    constexpr int OUT_M = MT_M * TM;
    constexpr int OUT_N = MT_N * TN;
    if ((K%32)!=0||(M%OUT_M)!=0||(N%OUT_N)!=0) {
        printf("  %-55s skipped (M%%=%d N%%=%d)\n", tag, M%OUT_M, N%OUT_N); return 1e9;
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
    printf("=== BF16 GEMM v20b — Tile size sweep ===\n");
    printf("Device: %s\n\n", q.get_device().get_info<sycl::info::device::name>().c_str());

    // Test with N=4096 (divisible by 16, 32, 48, 64 — works with all tile sizes)
    // OUT_N = MT_N * 16, so MT_N=3 → OUT_N=48, 4096%48=4096-85*48=4096-4080=16 ≠ 0
    // Actually 4096/48 = 85.33 — not divisible. Need N divisible by MT_N*16.
    // MT_N=4 → 64: works for 4096 and 8192
    // MT_N=2 → 32: works for 2048, 4096, 8192
    // MT_N=1 → 16: works for all
    // MT_N=3 → 48: 48 doesn't divide 2048 or 4096. Use N=4032 or N=1920
    // MT_M=3 → 24: 8192/24=341.33 — doesn't work. Use M=8208 or M=8184
    // MT_M=5 → 40: 8192/40=204.8 — doesn't work

    printf("=== Tile sweep N=2048 (M=8192, K=4096) ===\n");
    printf("  4x4: OUT_M=32 OUT_N=64  4x2: OUT_M=32 OUT_N=32\n");
    printf("  2x4: OUT_M=16 OUT_N=64  2x2: OUT_M=16 OUT_N=32\n\n");

    bench_baseline<4,4>(q,8192,2048,4096,warmup,iters,"4x4_baseline");   // OUT=32x64
    bench_baseline<4,2>(q,8192,2048,4096,warmup,iters,"4x2_baseline");   // OUT=32x32
    bench_baseline<2,4>(q,8192,2048,4096,warmup,iters,"2x4_baseline");   // OUT=16x64
    bench_baseline<2,2>(q,8192,2048,4096,warmup,iters,"2x2_baseline");   // OUT=16x32
    bench_baseline<8,1>(q,8192,2048,4096,warmup,iters,"8x1_baseline");   // OUT=64x16
    bench_baseline<1,8>(q,8192,2048,4096,warmup,iters,"1x8_baseline");   // OUT=8x128
    bench_baseline<4,1>(q,8192,2048,4096,warmup,iters,"4x1_baseline");   // OUT=32x16
    bench_baseline<1,4>(q,8192,2048,4096,warmup,iters,"1x4_baseline");   // OUT=8x64

    printf("\n=== Tile sweep N=4096 (M=8192, K=4096) ===\n");
    bench_baseline<4,4>(q,8192,4096,4096,warmup,iters,"4x4_baseline");
    bench_baseline<4,2>(q,8192,4096,4096,warmup,iters,"4x2_baseline");
    bench_baseline<2,4>(q,8192,4096,4096,warmup,iters,"2x4_baseline");

    printf("\n=== Done ===\n");
    return 0;
}
