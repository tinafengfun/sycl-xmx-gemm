// ==========================================================================
// BF16 GEMM v21 best — B-only prefetch configs, full benchmark
//
// Best from v21 sweep:
//   4SG 4×1 + B-only pf = 90.34T
//   8SG 4×2 + B-only pf = 90.06T
//   4SG 2×2 + B-only pf = 89.60T
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

namespace matrix = sycl::ext::oneapi::experimental::matrix;
using bf16 = sycl::ext::oneapi::bfloat16;

static constexpr int TM = 8, TN = 16, TK = 16, SG_SZ = 16, VNNI = 2;

template<int MT_M, int MT_N, int N_SG_M, int N_SG_N, int PF_MODE = 0>
double bench(sycl::queue& q, int M, int N, int K,
              int warmup, int iters, const char* tag) {
    constexpr int SG_OUT_M = MT_M * TM;
    constexpr int SG_OUT_N = MT_N * TN;
    constexpr int WG_OUT_M = N_SG_M * SG_OUT_M;
    constexpr int WG_OUT_N = N_SG_N * SG_OUT_N;
    constexpr int N_SG_TOTAL = N_SG_M * N_SG_N;

    if ((K%32)!=0||(M%WG_OUT_M)!=0||(N%WG_OUT_N)!=0) {
        printf("  %-55s skipped\n", tag);
        return 1e9;
    }
    printf("  %-55s running\n", tag); fflush(stdout);

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
                    int gm = item.get_group(0), gn = item.get_group(1);
                    int out_m = gm * WG_OUT_M + sg_m * SG_OUT_M;
                    int out_n = gn * WG_OUT_N + sg_n * SG_OUT_N;

                    auto pA = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dA);
                    auto pBv = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dBv);
                    auto pC = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dC);

                    matrix::joint_matrix<sycl::sub_group,float,matrix::use::accumulator,TM,TN> sub_c[MT_M][MT_N];
                    for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++) matrix::joint_matrix_fill(sg,sub_c[i][j],0.0f);

                    for(int k=0;k<K;k+=32) {
                        // Prefetch next k-block (selective by PF_MODE)
                        if constexpr (PF_MODE != 3) {
                            int kpf=k+32;
                            if(kpf<K) {
                                if constexpr (PF_MODE == 0 || PF_MODE == 1) {
                                    matrix::joint_matrix_prefetch<8,32>(sg,dA+(out_m)*K+kpf,K,matrix::layout::row_major,sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                                }
                                if constexpr (PF_MODE == 0 || PF_MODE == 2) {
                                    matrix::joint_matrix_prefetch<8,32>(sg,dBv+(size_t)(kpf/2)*(N*2)+(size_t)(out_n)*2,N*2,matrix::layout::row_major,sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                                }
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
    double best_ms=1e9, total_ms=0;
    for(int i=0;i<iters;i++){
        auto ev=launch(); ev.wait();
        auto t0=ev.template get_profiling_info<sycl::info::event_profiling::command_start>();
        auto t1=ev.template get_profiling_info<sycl::info::event_profiling::command_end>();
        double ms=(t1-t0)*1e-6;
        total_ms+=ms;
        if(ms<best_ms) best_ms=ms;
    }
    double avg_ms=total_ms/iters;
    printf("  %-55s best=%8.3f ms  avg=%8.3f ms  TF_best=%7.2f  TF_avg=%7.2f\n",
           tag, best_ms, avg_ms, flops/(best_ms*1e-3)/1e12, flops/(avg_ms*1e-3)/1e12);
    sycl::free(dA,q); sycl::free(dBv,q); sycl::free(dC,q);
    return best_ms;
}

int main(int argc, char* argv[]) {
    int warmup = 100, iters = 500;
    if (argc > 1) warmup = atoi(argv[1]);
    if (argc > 2) iters = atoi(argv[2]);

    sycl::queue q(sycl::gpu_selector_v,
                  {sycl::property::queue::enable_profiling{},
                   sycl::property::queue::in_order{}});
    printf("=== BF16 GEMM v21 best — B-only prefetch full benchmark ===\n");
    printf("Device: %s\n\n", q.get_device().get_info<sycl::info::device::name>().c_str());

    // === M=8192, N=2048, K=4096 ===
    printf("=== M=8192, N=2048, K=4096 ===\n");
    // Previous best (A+B prefetch)
    bench<4,4, 2,2, 0>(q,8192,2048,4096,warmup,iters,"4SG_2x2_pf_AB_prev_best");
    // B-only prefetch variants
    bench<4,4, 4,1, 2>(q,8192,2048,4096,warmup,iters,"4SG_4x1_pf_B");
    bench<4,4, 2,2, 2>(q,8192,2048,4096,warmup,iters,"4SG_2x2_pf_B");
    bench<4,4, 4,2, 2>(q,8192,2048,4096,warmup,iters,"8SG_4x2_pf_B");

    // === M=8192, N=4096, K=4096 ===
    printf("\n=== M=8192, N=4096, K=4096 ===\n");
    bench<4,4, 2,2, 0>(q,8192,4096,4096,warmup,iters,"4SG_2x2_pf_AB_prev");
    bench<4,4, 4,1, 2>(q,8192,4096,4096,warmup,iters,"4SG_4x1_pf_B");
    bench<4,4, 4,2, 2>(q,8192,4096,4096,warmup,iters,"8SG_4x2_pf_B");

    // === M=8192, N=8192, K=4096 ===
    printf("\n=== M=8192, N=8192, K=4096 ===\n");
    bench<4,4, 4,2, 0>(q,8192,8192,4096,warmup,iters,"8SG_4x2_pf_AB_prev");
    bench<4,4, 4,2, 2>(q,8192,8192,4096,warmup,iters,"8SG_4x2_pf_B");

    // === M=N=K=4096 ===
    printf("\n=== M=N=K=4096 ===\n");
    bench<4,4, 2,2, 0>(q,4096,4096,4096,warmup,iters,"4SG_2x2_pf_AB_prev");
    bench<4,4, 4,1, 2>(q,4096,4096,4096,warmup,iters,"4SG_4x1_pf_B");
    bench<4,4, 4,2, 2>(q,4096,4096,4096,warmup,iters,"8SG_4x2_pf_B");

    // === M=N=K=8192 ===
    printf("\n=== M=N=K=8192 ===\n");
    bench<4,4, 4,2, 0>(q,8192,8192,8192,warmup,iters,"8SG_4x2_pf_AB_prev");
    bench<4,4, 4,2, 2>(q,8192,8192,8192,warmup,iters,"8SG_4x2_pf_B");

    printf("\n=== Done ===\n");
    return 0;
}
