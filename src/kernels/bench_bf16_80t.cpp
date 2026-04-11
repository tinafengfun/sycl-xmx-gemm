// ==========================================================================
// BF16 GEMM v13b — Verify split-N with wall-clock + single sub-GEMM
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
    printf("  %-55s best=%8.3f ms  TF=%7.2f  u=%.1f%%\n",
           tag, best_ms, flops/(best_ms*1e-3)/1e12, flops/(best_ms*1e-3)/96e12*100);
    sycl::free(dA,q); sycl::free(dBv,q); sycl::free(dC,q);
    return best_ms;
}

// Split-N with per-chunk B, wall-clock AND event timing
template<int MT_M, int MT_N>
void bench_split_verify(sycl::queue& q, int M, int N, int K,
                         int N_chunk, int warmup, int iters, const char* tag) {
    constexpr int OUT_M = MT_M * TM;
    constexpr int OUT_N = MT_N * TN;
    if (N % N_chunk != 0 || N_chunk % OUT_N != 0) {
        printf("  %-55s skipped\n", tag); return;
    }
    printf("  %-55s running\n", tag); fflush(stdout);

    int n_chunks = N / N_chunk;
    size_t szA = (size_t)M * K;
    auto* dA = sycl::malloc_device<bf16>(szA, q);
    q.fill(dA, bf16(1.0f), szA);

    std::vector<bf16*> dBv_chunks(n_chunks);
    std::vector<float*> dC_chunks(n_chunks);
    for (int c = 0; c < n_chunks; c++) {
        size_t szBv = (size_t)(K/VNNI) * (N_chunk*VNNI);
        size_t szC = (size_t)M * N_chunk;
        dBv_chunks[c] = sycl::malloc_device<bf16>(szBv, q);
        dC_chunks[c] = sycl::malloc_device<float>(szC, q);
        q.fill(dBv_chunks[c], bf16(1.0f), szBv);
    }
    q.wait();

    int wg_m = M / OUT_M, wg_n = N_chunk / OUT_N;

    // Pre-extract raw pointers to avoid capturing vector in kernel
    std::vector<bf16*> dBv_ptrs(n_chunks);
    std::vector<float*> dC_ptrs(n_chunks);
    for (int c = 0; c < n_chunks; c++) {
        dBv_ptrs[c] = dBv_chunks[c];
        dC_ptrs[c] = dC_chunks[c];
    }

    auto launch_chunk = [&](int c) -> sycl::event {
        bf16* dBv_c = dBv_ptrs[c];
        float* dC_c = dC_ptrs[c];
        return q.submit([&](sycl::handler& h) {
            h.parallel_for(
                sycl::nd_range<2>(sycl::range<2>(wg_m*SG_SZ,wg_n), sycl::range<2>(SG_SZ,1)),
                [=](sycl::nd_item<2> item) [[sycl::reqd_sub_group_size(SG_SZ)]] {
                    sycl::sub_group sg = item.get_sub_group();
                    int gm=item.get_group(0), gn=item.get_group(1);
                    auto pA = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dA);
                    auto pBv = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dBv_c);
                    auto pC = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dC_c);
                    matrix::joint_matrix<sycl::sub_group,float,matrix::use::accumulator,TM,TN> sub_c[MT_M][MT_N];
                    for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++) matrix::joint_matrix_fill(sg,sub_c[i][j],0.0f);
                    for(int k=0;k<K;k+=32) {
                        int kpf=k+32;
                        if(kpf<K) {
                            matrix::joint_matrix_prefetch<8,32>(sg,dA+(gm*OUT_M)*K+kpf,K,matrix::layout::row_major,sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                            matrix::joint_matrix_prefetch<8,32>(sg,dBv_c+(size_t)(kpf/2)*(N_chunk*2)+(size_t)(gn*OUT_N)*2,N_chunk*2,matrix::layout::row_major,sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                        }
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::a,TM,TK,matrix::layout::row_major> sub_a0[MT_M],sub_a1[MT_M];
                        matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::b,TK,TN,matrix::layout::ext_intel_packed> sub_b0[MT_N],sub_b1[MT_N];
                        for(int i=0;i<MT_M;i++){matrix::joint_matrix_load(sg,sub_a0[i],pA+(gm*OUT_M+i*TM)*K+k,K);matrix::joint_matrix_load(sg,sub_a1[i],pA+(gm*OUT_M+i*TM)*K+(k+TK),K);}
                        for(int j=0;j<MT_N;j++){int n0=gn*OUT_N+j*TN;matrix::joint_matrix_load(sg,sub_b0[j],pBv+(size_t)(k/2)*(N_chunk*2)+(size_t)n0*2,N_chunk*2);matrix::joint_matrix_load(sg,sub_b1[j],pBv+(size_t)((k+TK)/2)*(N_chunk*2)+(size_t)n0*2,N_chunk*2);}
                        for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++){matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a0[i],sub_b0[j],sub_c[i][j]);matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a1[i],sub_b1[j],sub_c[i][j]);}
                    }
                    for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++) matrix::joint_matrix_store(sg,sub_c[i][j],pC+(gm*OUT_M+i*TM)*N_chunk+gn*OUT_N+j*TN,N_chunk,matrix::layout::row_major);
                });
        });
    };

    double flops = 2.0*(double)M*N*K;

    for (int i = 0; i < warmup; i++) {
        for (int c = 0; c < n_chunks; c++) launch_chunk(c);
        q.wait();
    }

    double best_wall = 1e9, best_event_sum = 1e9;
    for (int i = 0; i < iters; i++) {
        auto wall_start = std::chrono::high_resolution_clock::now();
        std::vector<sycl::event> events;
        for (int c = 0; c < n_chunks; c++) {
            events.push_back(launch_chunk(c));
        }
        q.wait();
        auto wall_end = std::chrono::high_resolution_clock::now();
        double wall_ms = std::chrono::duration<double,std::milli>(wall_end-wall_start).count();

        double event_sum = 0;
        for (auto& ev : events) {
            auto t0 = ev.template get_profiling_info<sycl::info::event_profiling::command_start>();
            auto t1 = ev.template get_profiling_info<sycl::info::event_profiling::command_end>();
            event_sum += (t1-t0)*1e-6;
        }

        if (wall_ms < best_wall) best_wall = wall_ms;
        if (event_sum < best_event_sum) best_event_sum = event_sum;
    }

    printf("  %-55s wall=%8.3f ms TF_w=%7.2f | ev_sum=%8.3f ms TF_e=%7.2f\n",
           tag, best_wall, flops/(best_wall*1e-3)/1e12,
           best_event_sum, flops/(best_event_sum*1e-3)/1e12);

    sycl::free(dA, q);
    for (int c = 0; c < n_chunks; c++) {
        sycl::free(dBv_chunks[c], q);
        sycl::free(dC_chunks[c], q);
    }
}

int main(int argc, char* argv[]) {
    int warmup = 10, iters = 50;
    if (argc > 1) warmup = atoi(argv[1]);
    if (argc > 2) iters = atoi(argv[2]);

    sycl::queue q(sycl::gpu_selector_v,
                  {sycl::property::queue::enable_profiling{},
                   sycl::property::queue::in_order{}});
    printf("=== BF16 GEMM v13b — Verify split-N ===\n");
    printf("Device: %s\n\n", q.get_device().get_info<sycl::info::device::name>().c_str());

    // Single sub-GEMM at various N sizes to establish ground truth
    printf("=== Single kernel ground truth (M=8192, K=4096) ===\n");
    bench<4,4>(q, 8192, 4096, 4096, warmup, iters, "single_N=4096");
    bench<4,4>(q, 8192, 2048, 4096, warmup, iters, "single_N=2048");
    bench<4,4>(q, 8192, 1024, 4096, warmup, iters, "single_N=1024");
    bench<4,4>(q, 8192, 8192, 4096, warmup, iters, "single_N=8192");

    // Split-N verification
    printf("\n=== Split-N 8192x8192x4096 (wall + event timing) ===\n");
    bench_split_verify<4,4>(q, 8192, 8192, 4096, 4096, warmup, iters, "split_N=4096_2c");
    bench_split_verify<4,4>(q, 8192, 8192, 4096, 2048, warmup, iters, "split_N=2048_4c");

    printf("\n=== Done ===\n");
    return 0;
}
