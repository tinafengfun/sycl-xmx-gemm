// ==========================================================================
// BF16 GEMM v21 — Hybrid fetch + register blocking variations
//
// Approach 1: SG fetch sharing via prefetch targeting
//   - A-only prefetch (benefits 1×N layouts where A is shared)
//   - B-only prefetch (benefits M×1 layouts where B is shared)
//   - A+B prefetch (current baseline)
//   - No prefetch
//
// Approach 3: Register blocking + k-step variations
//   - 4×4 tiles, k-step=64 (more compute per iteration, higher register pressure)
//   - 4×2 tiles, k-step=64 (less register pressure, less compute)
//   - 4×4 tiles, k-step=32 (baseline)
//
// PF_MODE: 0=A+B, 1=A-only, 2=B-only, 3=no-prefetch
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

// ==========================================================================
// Generalized benchmark: template on tiles, SG layout, k-step, prefetch mode
// ==========================================================================
template<int MT_M, int MT_N, int N_SG_M, int N_SG_N, int KSTEP = 32, int PF_MODE = 0>
double bench(sycl::queue& q, int M, int N, int K,
              int warmup, int iters, const char* tag) {
    constexpr int SG_OUT_M = MT_M * TM;
    constexpr int SG_OUT_N = MT_N * TN;
    constexpr int WG_OUT_M = N_SG_M * SG_OUT_M;
    constexpr int WG_OUT_N = N_SG_N * SG_OUT_N;
    constexpr int N_SG_TOTAL = N_SG_M * N_SG_N;
    constexpr int NSUB = KSTEP / TK;

    if ((K%KSTEP)!=0||(M%WG_OUT_M)!=0||(N%WG_OUT_N)!=0) {
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

                    for(int k=0;k<K;k+=KSTEP) {
                        // Prefetch next k-block
                        if constexpr (PF_MODE != 3) {
                            int kpf=k+KSTEP;
                            if(kpf<K) {
                                // Prefetch A
                                if constexpr (PF_MODE == 0 || PF_MODE == 1) {
                                    matrix::joint_matrix_prefetch<8,32>(sg,dA+(out_m)*K+kpf,K,matrix::layout::row_major,sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                                }
                                // Prefetch B
                                if constexpr (PF_MODE == 0 || PF_MODE == 2) {
                                    matrix::joint_matrix_prefetch<8,32>(sg,dBv+(size_t)(kpf/2)*(N*2)+(size_t)(out_n)*2,N*2,matrix::layout::row_major,sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                                }
                            }
                        }

                        // Load all K sub-steps
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::a,TM,TK,matrix::layout::row_major> sub_a[MT_M][NSUB];
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::b,TK,TN,matrix::layout::ext_intel_packed> sub_b[MT_N][NSUB];

                        for(int s=0;s<NSUB;s++) {
                            for(int i=0;i<MT_M;i++)
                                matrix::joint_matrix_load(sg,sub_a[i][s],pA+(out_m+i*TM)*K+k+s*TK,K);
                            for(int j=0;j<MT_N;j++){
                                int n0=out_n+j*TN;
                                matrix::joint_matrix_load(sg,sub_b[j][s],pBv+(size_t)((k+s*TK)/2)*(N*2)+(size_t)n0*2,N*2);
                            }
                        }

                        // Compute all K sub-steps
                        for(int s=0;s<NSUB;s++)
                            for(int i=0;i<MT_M;i++)
                                for(int j=0;j<MT_N;j++)
                                    matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a[i][s],sub_b[j][s],sub_c[i][j]);
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
    int warmup = 10, iters = 50;
    if (argc > 1) warmup = atoi(argv[1]);
    if (argc > 2) iters = atoi(argv[2]);

    sycl::queue q(sycl::gpu_selector_v,
                  {sycl::property::queue::enable_profiling{},
                   sycl::property::queue::in_order{}});
    printf("=== BF16 GEMM v21 — Hybrid fetch + register blocking ===\n");
    printf("Device: %s\n\n", q.get_device().get_info<sycl::info::device::name>().c_str());

    // ====================================================================
    // Part 1: Prefetch targeting for multi-SG (Approach 1)
    // Test A-only, B-only, A+B, no-prefetch for each SG layout
    // ====================================================================
    printf("=== Part 1: Prefetch targeting (8192×2048×4096) ===\n");

    // 4SG 2×2: balanced, some A and B sharing
    printf("\n--- 4SG 2×2 (balanced) ---\n");
    bench<4,4, 2,2, 32, 0>(q,8192,2048,4096,warmup,iters,"4SG_2x2_pf_AB");    // baseline
    bench<4,4, 2,2, 32, 1>(q,8192,2048,4096,warmup,iters,"4SG_2x2_pf_A_only");
    bench<4,4, 2,2, 32, 2>(q,8192,2048,4096,warmup,iters,"4SG_2x2_pf_B_only");
    bench<4,4, 2,2, 32, 3>(q,8192,2048,4096,warmup,iters,"4SG_2x2_no_pf");

    // 8SG 4×2: more M-side sharing
    printf("\n--- 8SG 4×2 (M-heavy) ---\n");
    bench<4,4, 4,2, 32, 0>(q,8192,2048,4096,warmup,iters,"8SG_4x2_pf_AB");    // baseline
    bench<4,4, 4,2, 32, 1>(q,8192,2048,4096,warmup,iters,"8SG_4x2_pf_A_only");
    bench<4,4, 4,2, 32, 2>(q,8192,2048,4096,warmup,iters,"8SG_4x2_pf_B_only");
    bench<4,4, 4,2, 32, 3>(q,8192,2048,4096,warmup,iters,"8SG_4x2_no_pf");

    // 1×4: max A sharing (all SGs same rows)
    printf("\n--- 4SG 1×4 (A shared via L1) ---\n");
    bench<4,4, 1,4, 32, 0>(q,8192,2048,4096,warmup,iters,"4SG_1x4_pf_AB");
    bench<4,4, 1,4, 32, 1>(q,8192,2048,4096,warmup,iters,"4SG_1x4_pf_A_only");
    bench<4,4, 1,4, 32, 3>(q,8192,2048,4096,warmup,iters,"4SG_1x4_no_pf");

    // 4×1: max B sharing (all SGs same columns)
    printf("\n--- 4SG 4×1 (B shared via L1) ---\n");
    bench<4,4, 4,1, 32, 0>(q,8192,2048,4096,warmup,iters,"4SG_4x1_pf_AB");
    bench<4,4, 4,1, 32, 2>(q,8192,2048,4096,warmup,iters,"4SG_4x1_pf_B_only");
    bench<4,4, 4,1, 32, 3>(q,8192,2048,4096,warmup,iters,"4SG_4x1_no_pf");

    // ====================================================================
    // Part 2: k-step=64 register blocking (Approach 3)
    // ====================================================================
    printf("\n=== Part 2: k-step=64 register blocking (8192×2048×4096) ===\n");

    // 4×4 tiles with k-step=64: 4 sub-steps, more compute per iteration
    printf("\n--- 4×4 tiles, k-step=64 ---\n");
    bench<4,4, 2,2, 64, 0>(q,8192,2048,4096,warmup,iters,"4SG_2x2_ks64_pf_AB");
    bench<4,4, 2,2, 64, 3>(q,8192,2048,4096,warmup,iters,"4SG_2x2_ks64_no_pf");
    bench<4,4, 4,2, 64, 0>(q,8192,2048,4096,warmup,iters,"8SG_4x2_ks64_pf_AB");
    bench<4,4, 4,2, 64, 3>(q,8192,2048,4096,warmup,iters,"8SG_4x2_ks64_no_pf");

    // 4×2 tiles with k-step=64: less register pressure on N
    // SG output = 32×32, 2×2 WG = 64×64
    printf("\n--- 4×2 tiles, k-step=64 ---\n");
    bench<4,2, 2,2, 64, 0>(q,8192,2048,4096,warmup,iters,"4SG_2x2_4x2t_ks64_pf");
    bench<4,2, 4,2, 64, 0>(q,8192,2048,4096,warmup,iters,"8SG_4x2_4x2t_ks64_pf");
    // baseline: 4×2 tiles with k-step=32
    bench<4,2, 2,2, 32, 0>(q,8192,2048,4096,warmup,iters,"4SG_2x2_4x2t_ks32_pf");
    bench<4,2, 4,2, 32, 0>(q,8192,2048,4096,warmup,iters,"8SG_4x2_4x2t_ks32_pf");

    // ====================================================================
    // Part 3: Cross-size validation for best configs
    // ====================================================================
    printf("\n=== Part 3: N=4096 cross-check ===\n");
    // k-step=64 with 4×4 tiles
    bench<4,4, 2,2, 64, 0>(q,8192,4096,4096,warmup,iters,"4SG_ks64_N4096");
    bench<4,4, 4,2, 64, 0>(q,8192,4096,4096,warmup,iters,"8SG_ks64_N4096");
    // k-step=32 baseline
    bench<4,4, 2,2, 32, 0>(q,8192,4096,4096,warmup,iters,"4SG_ks32_N4096_base");

    printf("\n=== Done ===\n");
    return 0;
}
