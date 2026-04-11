#include <sycl/sycl.hpp>
#include <sycl/ext/oneapi/bfloat16.hpp>
#include <sycl/ext/oneapi/matrix/matrix-unified.hpp>

#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <limits>
#include <vector>
#include <cstdint>

namespace matrix = sycl::ext::oneapi::experimental::matrix;
using bf16 = sycl::ext::oneapi::bfloat16;

static constexpr int TM_ATOM = 8;
static constexpr int TN_ATOM = 16;
static constexpr int TK = 16;
static constexpr int MT_M = 4;
static constexpr int MT_N = 4;
static constexpr int OUT_M = TM_ATOM * MT_M; // 32
static constexpr int OUT_N = TN_ATOM * MT_N; // 64
static constexpr int K_STEP = 32;
static constexpr int VNNI_FACTOR = 2;
static constexpr int PREF_DIST = 3;

struct PerfStats {
  double min_ms = std::numeric_limits<double>::max();
  double max_perf = 0.0;
  double min_perf = std::numeric_limits<double>::max();
  double sum_perf = 0.0;
  double sum_log_perf = 0.0;
  int n = 0;

  void add(double ms, double perf) {
    if (ms < min_ms) min_ms = ms;
    if (perf > max_perf) max_perf = perf;
    if (perf < min_perf) min_perf = perf;
    sum_perf += perf;
    sum_log_perf += std::log(std::max(perf, 1e-12));
    n++;
  }
};

static inline double event_ms(const sycl::event &e) {
  uint64_t t0 = e.get_profiling_info<sycl::info::event_profiling::command_start>();
  uint64_t t1 = e.get_profiling_info<sycl::info::event_profiling::command_end>();
  return (double)(t1 - t0) * 1e-6;
}

void vnni_transform_bf16(const bf16 *src, bf16 *dst, int K, int N) {
  for (int k = 0; k < K / VNNI_FACTOR; ++k) {
    for (int n = 0; n < N; ++n) {
      dst[k * (N * VNNI_FACTOR) + n * VNNI_FACTOR + 0] = src[(2 * k + 0) * N + n];
      dst[k * (N * VNNI_FACTOR) + n * VNNI_FACTOR + 1] = src[(2 * k + 1) * N + n];
    }
  }
}

int main(int argc, char **argv) {
  int M = 8192, N = 8192, K = 4096, warmup = 10, iters = 500;
  if (argc > 1) M = std::atoi(argv[1]);
  if (argc > 2) N = std::atoi(argv[2]);
  if (argc > 3) K = std::atoi(argv[3]);
  if (argc > 4) warmup = std::atoi(argv[4]);
  if (argc > 5) iters = std::atoi(argv[5]);

  if ((M % OUT_M) || (N % OUT_N) || (K % K_STEP)) {
    std::printf("Require M%%%d==0, N%%%d==0, K%%%d==0\n", OUT_M, OUT_N, K_STEP);
    return 1;
  }

  sycl::queue q{sycl::gpu_selector_v, sycl::property::queue::enable_profiling{}};
  auto dev = q.get_device();
  std::printf("Device: %s\n", dev.get_info<sycl::info::device::name>().c_str());
  std::printf("Problem: M=%d N=%d K=%d warmup=%d iters=%d\n", M, N, K, warmup, iters);

  size_t szA = (size_t)M * K;
  size_t szB = (size_t)K * N;
  size_t szBv = (size_t)(K / 2) * (N * 2);
  size_t szC = (size_t)M * N;

  std::vector<bf16> hA(szA, bf16(1.0f));
  std::vector<bf16> hB(szB, bf16(1.0f));
  std::vector<bf16> hBv(szBv);
  vnni_transform_bf16(hB.data(), hBv.data(), K, N);

  auto *dA = sycl::malloc_device<bf16>(szA, q);
  auto *dBv = sycl::malloc_device<bf16>(szBv, q);
  auto *dC = sycl::malloc_device<float>(szC, q);
  q.memcpy(dA, hA.data(), szA * sizeof(bf16));
  q.memcpy(dBv, hBv.data(), szBv * sizeof(bf16));
  q.wait();

  int wg_m = M / OUT_M;
  int wg_n = N / OUT_N;

  auto launch = [&]() {
    return q.submit([&](sycl::handler &h) {
      h.parallel_for(
          sycl::nd_range<2>(sycl::range<2>(wg_m * 16, wg_n), sycl::range<2>(16, 1)),
          [=](sycl::nd_item<2> item) [[sycl::reqd_sub_group_size(16)]] {
            sycl::sub_group sg = item.get_sub_group();
            int gm = item.get_group(0);
            int gn = item.get_group(1);

            auto pA = sycl::address_space_cast<sycl::access::address_space::global_space,
                                               sycl::access::decorated::no>(dA);
            auto pBv = sycl::address_space_cast<sycl::access::address_space::global_space,
                                                sycl::access::decorated::no>(dBv);
            auto pC = sycl::address_space_cast<sycl::access::address_space::global_space,
                                               sycl::access::decorated::no>(dC);

            matrix::joint_matrix<sycl::sub_group, float, matrix::use::accumulator, TM_ATOM, TN_ATOM>
                sub_c[MT_M][MT_N];
            for (int i = 0; i < MT_M; i++)
              for (int j = 0; j < MT_N; j++)
                matrix::joint_matrix_fill(sg, sub_c[i][j], 0.0f);

            #pragma unroll 2
            for (int k0 = 0; k0 < K; k0 += K_STEP) {
              int kpf = k0 + PREF_DIST * K_STEP;
              if (kpf < K) {
                matrix::joint_matrix_prefetch<8, 32>(
                    sg, dA + (gm * OUT_M) * K + kpf,
                    K, matrix::layout::row_major,
                    sycl::ext::oneapi::experimental::properties{
                        sycl::ext::oneapi::experimental::prefetch_hint_L2});
                matrix::joint_matrix_prefetch<8, 32>(
                    sg, dBv + (size_t)(kpf / 2) * (N * 2) + (size_t)(gn * OUT_N) * 2,
                    N * 2, matrix::layout::row_major,
                    sycl::ext::oneapi::experimental::properties{
                        sycl::ext::oneapi::experimental::prefetch_hint_L2});
              }

              matrix::joint_matrix<sycl::sub_group, bf16, matrix::use::a, TM_ATOM, TK,
                                   matrix::layout::row_major>
                  sub_a0[MT_M], sub_a1[MT_M];
              matrix::joint_matrix<sycl::sub_group, bf16, matrix::use::b, TK, TN_ATOM,
                                   matrix::layout::ext_intel_packed>
                  sub_b0[MT_N], sub_b1[MT_N];

              for (int i = 0; i < MT_M; i++) {
                matrix::joint_matrix_load(sg, sub_a0[i], pA + (gm * OUT_M + i * TM_ATOM) * K + k0, K);
                matrix::joint_matrix_load(sg, sub_a1[i], pA + (gm * OUT_M + i * TM_ATOM) * K + (k0 + TK), K);
              }
              for (int j = 0; j < MT_N; j++) {
                int n0 = gn * OUT_N + j * TN_ATOM;
                matrix::joint_matrix_load(sg, sub_b0[j],
                                          pBv + (size_t)(k0 / 2) * (N * 2) + (size_t)n0 * 2,
                                          N * 2);
                matrix::joint_matrix_load(sg, sub_b1[j],
                                          pBv + (size_t)((k0 + TK) / 2) * (N * 2) + (size_t)n0 * 2,
                                          N * 2);
              }

              for (int i = 0; i < MT_M; i++)
                for (int j = 0; j < MT_N; j++) {
                  matrix::joint_matrix_mad(sg, sub_c[i][j], sub_a0[i], sub_b0[j], sub_c[i][j]);
                  matrix::joint_matrix_mad(sg, sub_c[i][j], sub_a1[i], sub_b1[j], sub_c[i][j]);
                }
            }

            for (int i = 0; i < MT_M; i++)
              for (int j = 0; j < MT_N; j++)
                matrix::joint_matrix_store(sg, sub_c[i][j],
                                           pC + (gm * OUT_M + i * TM_ATOM) * N + gn * OUT_N + j * TN_ATOM,
                                           N, matrix::layout::row_major);
          });
    });
  };

  for (int i = 0; i < warmup; i++) {
    auto e = launch();
    e.wait();
  }

  double flops = 2.0 * (double)M * N * K;
  int stats_warmup = (iters > 50) ? 50 : 0;
  PerfStats stats;
  for (int i = 0; i < iters; i++) {
    auto e = launch();
    e.wait();
    double ms = event_ms(e);
    double gflops = flops / (ms * 1e-3) / 1e9;
    if (i >= stats_warmup) stats.add(ms, gflops);
  }

  std::vector<float> hC(256);
  q.memcpy(hC.data(), dC, hC.size() * sizeof(float)).wait();
  float expected = (float)K;
  float max_err = 0.0f;
  for (float v : hC) max_err = std::max(max_err, std::fabs(v - expected));

  double avg = stats.sum_perf / stats.n;
  double geo = std::exp(stats.sum_log_perf / stats.n);
  std::printf("RESULT best=%.1f avg=%.1f min=%.1f max=%.1f geo=%.1f GFLOPS samples=%d\n",
              stats.max_perf, avg, stats.min_perf, stats.max_perf, geo, stats.n);
  std::printf("CHECK max_abs_err(first256)=%.6f expected=%.1f\n", max_err, expected);
  std::printf("HIGH_TFLOPS_CHECK %s (threshold 70000 GFLOPS)\n",
              stats.max_perf >= 70000.0 ? "PASS" : "FAIL");

  sycl::free(dA, q);
  sycl::free(dBv, q);
  sycl::free(dC, q);
  return 0;
}
