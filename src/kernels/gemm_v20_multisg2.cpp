// ==========================================================================
// BF16 GEMM v20e — Multi-SG sweep with 4x4 tiles per SG
//
// Key finding: multi-SG only works when each SG keeps full 4x4 tiles.
// This sweep tests various SG counts and layouts, all with 4x4 per SG.
//
// Layouts:
//   N_SG_M x N_SG_N SGs per work-group
//   Each SG handles MT_M=4, MT_N=4 tiles (OUT_M=32, OUT_N=64)
//   WG output: (N_SG_M*32) x (N_SG_N*64)
//
// Tests: 1x2, 1x4, 1x8, 2x1, 2x2, 4x1, 8x1, 2x4, 4x2, 1x16
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

// Multi-SG benchmark: each SG has MT_M×MT_N tiles, arranged in N_SG_M×N_SG_N grid
template<int MT_M, int MT_N, int N_SG_M, int N_SG_N, bool NO_PREFETCH = false>
double bench_multi_sg(sycl::queue& q, int M, int N, int K,
                       int warmup, int iters, const char* tag) {
    constexpr int SG_OUT_M = MT_M * TM;
    constexpr int SG_OUT_N = MT_N * TN;
    constexpr int WG_OUT_M = N_SG_M * SG_OUT_M;
    constexpr int WG_OUT_N = N_SG_N * SG_OUT_N;
    constexpr int N_SG_TOTAL = N_SG_M * N_SG_N;

    if ((K%32)!=0||(M%WG_OUT_M)!=0||(N%WG_OUT_N)!=0) {
        printf("  %-55s skipped (M%%%d=%d N%%%d=%d)\n", tag,
               WG_OUT_M, M%WG_OUT_M, WG_OUT_N, N%WG_OUT_N);
        return 1e9;
    }
    printf("  %-55s running (%d SGs, WG=%dx%d)\n", tag, N_SG_TOTAL, WG_OUT_M, WG_OUT_N); fflush(stdout);
    size_t szA=(size_t)M*K, szBv=(size_t)(K/VNNI)*(N*VNNI), szC=(size_t)M*N;
    auto *dA=sycl::malloc_device<bf16>(szA,q);
    auto *dBv=sycl::malloc_device<bf16>(szBv,q);
    auto *dC=sycl::malloc_device<float>(szC,q);
    q.fill(dA, bf16(1.0f), szA); q.fill(dBv, bf16(1.0f), szBv); q.wait();

    int wg_m = M/WG_OUT_M, wg_n = N/WG_OUT_N;

    auto launch=[&]() -> sycl::event {
        return q.submit([&](sycl::handler& h) {
            h.parallel_for(
                sycl::nd_range<2>(
                    sycl::range<2>(wg_m * N_SG_TOTAL * SG_SZ, wg_n),
                    sycl::range<2>(N_SG_TOTAL * SG_SZ, 1)),
                [=](sycl::nd_item<2> item) [[sycl::reqd_sub_group_size(SG_SZ)]] {
                    sycl::sub_group sg = item.get_sub_group();
                    int sg_id = sg.get_group_id()[0];
                    int sg_m = sg_id / N_SG_N;
                    int sg_n = sg_id % N_SG_N;

                    int gm = item.get_group(0);
                    int gn = item.get_group(1);

                    int out_m = gm * WG_OUT_M + sg_m * SG_OUT_M;
                    int out_n = gn * WG_OUT_N + sg_n * SG_OUT_N;

                    auto pA = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dA);
                    auto pBv = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dBv);
                    auto pC = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dC);

                    matrix::joint_matrix<sycl::sub_group,float,matrix::use::accumulator,TM,TN> sub_c[MT_M][MT_N];
                    for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++) matrix::joint_matrix_fill(sg,sub_c[i][j],0.0f);

                    for(int k=0;k<K;k+=32) {
                        if constexpr (!NO_PREFETCH) {
                            int kpf=k+32;
                            if(kpf<K) {
                                matrix::joint_matrix_prefetch<8,32>(sg,dA+(out_m)*K+kpf,K,matrix::layout::row_major,sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                                matrix::joint_matrix_prefetch<8,32>(sg,dBv+(size_t)(kpf/2)*(N*2)+(size_t)(out_n)*2,N*2,matrix::layout::row_major,sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                            }
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
    printf("=== BF16 GEMM v20e — Multi-SG 4x4 sweep ===\n");
    printf("Device: %s\n\n", q.get_device().get_info<sycl::info::device::name>().c_str());

    int M=8192, N=2048, K=4096;

    printf("=== Baseline (single SG) ===\n");
    // Single SG with prefetch
    bench_multi_sg<4,4, 1,1>(q,M,N,K,warmup,iters,"1SG_4x4_prefetch");
    // Single SG no prefetch
    bench_multi_sg<4,4, 1,1, true>(q,M,N,K,warmup,iters,"1SG_4x4_nopf");

    printf("\n=== 2 SGs ===\n");
    // 2 SGs along M: WG covers 64x64
    bench_multi_sg<4,4, 2,1>(q,M,N,K,warmup,iters,"2SG_M_4x4each_64x64");
    // 2 SGs along N: WG covers 32x128
    bench_multi_sg<4,4, 1,2>(q,M,N,K,warmup,iters,"2SG_N_4x4each_32x128");

    printf("\n=== 4 SGs ===\n");
    // 4 SGs along M: WG covers 128x64
    bench_multi_sg<4,4, 4,1>(q,M,N,K,warmup,iters,"4SG_M_4x4each_128x64");
    // 4 SGs along N: WG covers 32x256
    bench_multi_sg<4,4, 1,4>(q,M,N,K,warmup,iters,"4SG_N_4x4each_32x256");
    // 4 SGs 2x2: WG covers 64x128
    bench_multi_sg<4,4, 2,2>(q,M,N,K,warmup,iters,"4SG_2x2_4x4each_64x128");

    printf("\n=== 8 SGs ===\n");
    // 8 SGs along M: WG covers 256x64
    bench_multi_sg<4,4, 8,1>(q,M,N,K,warmup,iters,"8SG_M_4x4each_256x64");
    // 8 SGs along N: WG covers 32x512
    bench_multi_sg<4,4, 1,8>(q,M,N,K,warmup,iters,"8SG_N_4x4each_32x512");
    // 8 SGs 2x4: WG covers 64x256
    bench_multi_sg<4,4, 2,4>(q,M,N,K,warmup,iters,"8SG_2x4_4x4each_64x256");
    // 8 SGs 4x2: WG covers 128x128
    bench_multi_sg<4,4, 4,2>(q,M,N,K,warmup,iters,"8SG_4x2_4x4each_128x128");

    printf("\n=== 16 SGs ===\n");
    // 16 SGs along M: WG covers 512x64
    bench_multi_sg<4,4, 16,1>(q,M,N,K,warmup,iters,"16SG_M_4x4each_512x64");
    // 16 SGs along N: WG covers 32x1024
    bench_multi_sg<4,4, 1,16>(q,M,N,K,warmup,iters,"16SG_N_4x4each_32x1024");
    // 16 SGs 4x4: WG covers 128x256
    bench_multi_sg<4,4, 4,4>(q,M,N,K,warmup,iters,"16SG_4x4_4x4each_128x256");

    printf("\n=== No-prefetch variants (best configs from above) ===\n");
    bench_multi_sg<4,4, 1,4, true>(q,M,N,K,warmup,iters,"4SG_N_4x4each_nopf");
    bench_multi_sg<4,4, 2,1, true>(q,M,N,K,warmup,iters,"2SG_M_4x4each_nopf");
    bench_multi_sg<4,4, 2,2, true>(q,M,N,K,warmup,iters,"4SG_2x2_4x4each_nopf");

    printf("\n=== N=4096 ===\n");
    bench_multi_sg<4,4, 1,1>(q,8192,4096,4096,warmup,iters,"N4096_1SG_4x4");
    bench_multi_sg<4,4, 2,1>(q,8192,4096,4096,warmup,iters,"N4096_2SG_M_4x4");
    bench_multi_sg<4,4, 1,2>(q,8192,4096,4096,warmup,iters,"N4096_2SG_N_4x4");
    bench_multi_sg<4,4, 2,2>(q,8192,4096,4096,warmup,iters,"N4096_4SG_2x2_4x4");

    printf("\n=== Large problem sizes ===\n");
    M=8192; N=8192; K=4096;
    bench_multi_sg<4,4, 1,1>(q,M,N,K,warmup,iters,"N8k_1SG_4x4");
    bench_multi_sg<4,4, 2,1>(q,M,N,K,warmup,iters,"N8k_2SG_M_4x4");
    bench_multi_sg<4,4, 1,2>(q,M,N,K,warmup,iters,"N8k_2SG_N_4x4");
    bench_multi_sg<4,4, 2,2>(q,M,N,K,warmup,iters,"N8k_4SG_2x2_4x4");
    bench_multi_sg<4,4, 4,2>(q,M,N,K,warmup,iters,"N8k_8SG_4x2_4x4");

    printf("\n=== Done ===\n");
    return 0;
}
