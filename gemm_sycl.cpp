// ==========================================================================
// SYCL GEMM Benchmark — Intel BMG GPU (Xe2 / Battlemage)
// C = A * B, A[MxK], B[KxN], C[MxN], row-major
// ==========================================================================
//
// Optimization stages (see git history / PRs):
//   Stage 1: Naive GEMM — one thread per output element  (this file)
//   Stage 2: XMX single-tile joint_matrix                (PR #1)
//   Stage 3: Multi-tile register blocking                (PR #2)
//
// Compile (Intel DPC++):
//   icpx -fsycl -fsycl-targets=spir64_gen \
//     -Xs "-device bmg -options -cl-intel-enable-auto-large-GRF-mode" \
//     -fsycl-unnamed-lambda -std=c++17 -O2 \
//     gemm_sycl.cpp -o gemm_sycl
//
// Usage:
//   ./gemm_sycl [M] [N] [K] [iterations]
//   ./gemm_sycl                  # default: 8192 8192 4096 10
//
// Lock GPU frequency for stable results:
//   xpu-smi config -d 0 -t 0 --frequencyrange 2400,2400
// ==========================================================================

#include <sycl/sycl.hpp>
#include <sycl/ext/oneapi/bfloat16.hpp>
#include <cstdio>
#include <cstdint>
#include <vector>
#include <chrono>
#include <algorithm>
#include <numeric>

// ============================================================
// SYCLBenchmarkTimer — event profiling with chrono fallback
// ============================================================
class SYCLBenchmarkTimer {
public:
    SYCLBenchmarkTimer(sycl::queue& q) : q_(q) {
        try { use_events_ = q_.has_property<sycl::property::queue::enable_profiling>(); }
        catch (...) { use_events_ = false; }
    }
    void start() {
        if (use_events_) start_event_ = q_.ext_oneapi_submit_barrier();
        else { q_.wait(); start_tp_ = std::chrono::high_resolution_clock::now(); }
    }
    void stop() {
        if (use_events_) { stop_event_ = q_.ext_oneapi_submit_barrier(); stop_event_.wait(); }
        else { q_.wait(); stop_tp_ = std::chrono::high_resolution_clock::now(); }
    }
    float milliseconds() {
        if (use_events_) {
            auto s = start_event_.get_profiling_info<sycl::info::event_profiling::command_start>();
            auto e = stop_event_.get_profiling_info<sycl::info::event_profiling::command_end>();
            return (e - s) * 1e-6f;
        }
        return std::chrono::duration<float, std::milli>(stop_tp_ - start_tp_).count();
    }
private:
    sycl::queue& q_;
    bool use_events_;
    sycl::event start_event_, stop_event_;
    std::chrono::high_resolution_clock::time_point start_tp_, stop_tp_;
};

// ============================================================
// Benchmark runner: warmup + timed iterations
// ============================================================
void run_benchmark(const char* name,
                   sycl::queue& q, int warmup, int iters,
                   double flops, double bytes) {
    // Subclasses fill this in — see usage in bench_naive below
    // This function is a placeholder; actual timing is inline in each bench function
}

// ============================================================
// Stage 1: Naive GEMM
// One thread per output element, each thread loops over K.
// ============================================================
template<typename InT, typename AccT>
void bench_naive(sycl::queue& q, int M, int N, int K,
                 int warmup, int iters, const char* name) {
    printf("\n=== Naive GEMM %s  M=%d N=%d K=%d ===\n", name, M, N, K);
    fflush(stdout);

    size_t szA = (size_t)M * K, szB = (size_t)K * N, szC = (size_t)M * N;
    InT  *dA = sycl::malloc_device<InT>(szA, q);
    InT  *dB = sycl::malloc_device<InT>(szB, q);
    AccT *dC = sycl::malloc_device<AccT>(szC, q);

    q.fill(dA, InT(1), szA);
    q.fill(dB, InT(1), szB);
    q.wait();

    const int wg = 256;
    int total = M * N;
    int gsize = ((total + wg - 1) / wg) * wg;

    auto launch = [&]() {
        q.parallel_for(
            sycl::nd_range<1>(gsize, wg),
            [=](sycl::nd_item<1> item) {
                int idx = item.get_global_id(0);
                if (idx >= total) return;
                int m = idx / N;
                int n = idx % N;
                AccT sum = AccT(0);
                for (int k = 0; k < K; k++)
                    sum += static_cast<AccT>(dA[m * K + k])
                         * static_cast<AccT>(dB[k * N + n]);
                dC[idx] = sum;
            });
    };

    // Warmup
    for (int i = 0; i < warmup; i++) launch();
    q.wait();

    // Timed iterations
    double flops = 2.0 * (double)M * N * K;
    double bytes = (double)(szA + szB) * sizeof(InT) + (double)szC * sizeof(AccT);
    float best = 1e9f;
    for (int i = 0; i < iters; i++) {
        SYCLBenchmarkTimer t(q);
        t.start(); launch(); t.stop();
        float ms = t.milliseconds();
        if (ms < best) best = ms;
        printf("  iter %2d: %8.3f ms  GFLOPS=%8.1f\n", i, ms, flops / (ms * 1e-3) / 1e9);
    }
    printf("  %-12s best=%8.3f ms  GFLOPS=%8.1f  BW=%.1f GB/s  util=%.1f%%\n",
           name, best, flops / (best * 1e-3) / 1e9,
           bytes / (best * 1e-3) / 1e9,
           flops / (best * 1e-3) / 1e9 / 16000.0 * 100);

    sycl::free(dA, q); sycl::free(dB, q); sycl::free(dC, q);
}

// ============================================================
// Main
// ============================================================
int main(int argc, char* argv[]) {
    int M = 8192, N = 8192, K = 4096, iters = 10;
    if (argc > 1) M = atoi(argv[1]);
    if (argc > 2) N = atoi(argv[2]);
    if (argc > 3) K = atoi(argv[3]);
    if (argc > 4) iters = atoi(argv[4]);

    printf("=== SYCL GEMM Benchmark (Intel BMG) ===\n");

    sycl::queue q(sycl::gpu_selector_v,
                  sycl::property::queue::enable_profiling{});
    auto dev = q.get_device();
    printf("Device:        %s\n", dev.get_info<sycl::info::device::name>().c_str());
    printf("Compute units: %u\n", dev.get_info<sycl::info::device::max_compute_units>());
    printf("Global memory: %zu MB\n",
           (size_t)(dev.get_info<sycl::info::device::global_mem_size>() / (1024 * 1024)));

    // Stage 1: Naive GEMM — baseline
    bench_naive<float, float>(q, M, N, K, 1, iters, "fp32");
    bench_naive<sycl::half, float>(q, M, N, K, 1, iters, "fp16");
    bench_naive<sycl::ext::oneapi::bfloat16, float>(q, M, N, K, 1, iters, "bf16");
    bench_naive<int8_t, int32_t>(q, M, N, K, 1, iters, "int8");

    printf("\n=== Done ===\n");
    return 0;
}
