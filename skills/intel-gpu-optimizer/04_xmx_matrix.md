# XMX Matrix Extensions & BF16 GEMM Optimization

Hardware-accelerated matrix operations via `joint_matrix` API on Intel Xe2.

---

## XMX Hardware Overview

| Specification | Value |
|---|---|
| **Architecture** | Xe2 (BMG / Battlemage) |
| **DPAS Atom (BF16)** | 8×16×16 (M×N×K) |
| **DPAS Atom (FP16)** | 8×16×16 (M×N×K) |
| **DPAS Atom (INT8)** | 8×16×32 (M×N×K) |
| **Sub-group Required** | 16 lanes |
| **BF16 Peak (B60)** | ~96 TFLOPS |
| **Accumulator** | FP32 (recommended) |

---

## Required Compilation & Runtime Configuration

```bash
# Compile
icpx -fsycl -O3 -std=c++17 \
  -fsycl-unnamed-lambda \
  -mllvm -inline-threshold=10000 \
  kernel.cpp -o kernel

# Runtime environment (CRITICAL for BF16 GEMM)
export ONEAPI_DEVICE_SELECTOR=level_zero:gpu
export IGC_ExtraOCLOptions="-cl-intel-256-GRF-per-thread"
export SYCL_PROGRAM_COMPILE_OPTIONS="-ze-opt-large-register-file -gline-tables-only"
export IGC_VectorAliasBBThreshold=100000000000
```

> **Warning**: Without `IGC_ExtraOCLOptions="-cl-intel-256-GRF-per-thread"`, BF16 GEMM drops from 80+ TFLOPS to ~2 TFLOPS due to catastrophic register spilling.

---

## BF16 GEMM — Optimized Kernel Pattern

### Core Pattern: 4×4 Register Blocking + VNNI + Prefetch

```cpp
#include <sycl/sycl.hpp>
#include <sycl/ext/oneapi/bfloat16.hpp>
#include <sycl/ext/oneapi/matrix/matrix.hpp>

namespace matrix = sycl::ext::oneapi::experimental::matrix;
using bf16 = sycl::ext::oneapi::bfloat16;

constexpr int TM = 8, TN = 16, TK = 16, SG_SZ = 16, VNNI = 2;

void gemm_bf16(sycl::queue& q, bf16* dA, bf16* dBv, float* dC,
               int M, int N, int K) {
    constexpr int MT_M = 4, MT_N = 4;  // 4×4 = 16 tiles per sub-group
    constexpr int OUT_M = MT_M * TM;    // 32 rows per sub-group
    constexpr int OUT_N = MT_N * TN;    // 64 cols per sub-group
    int wg_m = M / OUT_M, wg_n = N / OUT_N;

    q.submit([&](sycl::handler& h) {
        h.parallel_for(
            sycl::nd_range<2>(sycl::range<2>(wg_m * SG_SZ, wg_n),
                              sycl::range<2>(SG_SZ, 1)),
            [=](sycl::nd_item<2> item) [[sycl::reqd_sub_group_size(SG_SZ)]] {
                sycl::sub_group sg = item.get_sub_group();
                int gm = item.get_group(0), gn = item.get_group(1);

                auto pA = sycl::address_space_cast<
                    sycl::access::address_space::global_space,
                    sycl::access::decorated::no>(dA);
                auto pBv = sycl::address_space_cast<
                    sycl::access::address_space::global_space,
                    sycl::access::decorated::no>(dBv);
                auto pC = sycl::address_space_cast<
                    sycl::access::address_space::global_space,
                    sycl::access::decorated::no>(dC);

                // Accumulators: 4×4 = 16 FP32 matrices
                matrix::joint_matrix<sycl::sub_group, float,
                    matrix::use::accumulator, TM, TN> sub_c[MT_M][MT_N];
                #pragma unroll
                for (int i = 0; i < MT_M; i++)
                    for (int j = 0; j < MT_N; j++)
                        matrix::joint_matrix_fill(sg, sub_c[i][j], 0.0f);

                // K-loop with explicit 2-step unroll
                for (int k = 0; k < K; k += 32) {
                    // L1 prefetch next k-block (optional, +7 TFLOPS)
                    int kpf = k + 32;
                    if (kpf < K) {
                        matrix::joint_matrix_prefetch<8, 32>(
                            sg, dA + (gm*OUT_M)*K + kpf, K,
                            matrix::layout::row_major,
                            sycl::ext::oneapi::experimental::properties{
                                sycl::ext::oneapi::experimental::prefetch_hint_L1});
                        matrix::joint_matrix_prefetch<8, 32>(
                            sg, dBv + (size_t)(kpf/2)*(N*2) + (size_t)(gn*OUT_N)*2,
                            N*2, matrix::layout::row_major,
                            sycl::ext::oneapi::experimental::properties{
                                sycl::ext::oneapi::experimental::prefetch_hint_L1});
                    }

                    // Declare ALL A/B matrices upfront (critical for compiler)
                    matrix::joint_matrix<sycl::sub_group, bf16,
                        matrix::use::a, TM, TK, matrix::layout::row_major>
                        sub_a0[MT_M], sub_a1[MT_M];
                    matrix::joint_matrix<sycl::sub_group, bf16,
                        matrix::use::b, TK, TN, matrix::layout::ext_intel_packed>
                        sub_b0[MT_N], sub_b1[MT_N];

                    // Load ALL tiles before compute
                    for (int i = 0; i < MT_M; i++) {
                        matrix::joint_matrix_load(sg, sub_a0[i],
                            pA + (gm*OUT_M+i*TM)*K + k, K);
                        matrix::joint_matrix_load(sg, sub_a1[i],
                            pA + (gm*OUT_M+i*TM)*K + (k+TK), K);
                    }
                    for (int j = 0; j < MT_N; j++) {
                        int n0 = gn*OUT_N + j*TN;
                        matrix::joint_matrix_load(sg, sub_b0[j],
                            pBv + (size_t)(k/2)*(N*2) + (size_t)n0*2, N*2);
                        matrix::joint_matrix_load(sg, sub_b1[j],
                            pBv + (size_t)((k+TK)/2)*(N*2) + (size_t)n0*2, N*2);
                    }

                    // Compute
                    for (int i = 0; i < MT_M; i++)
                        for (int j = 0; j < MT_N; j++) {
                            matrix::joint_matrix_mad(sg, sub_c[i][j],
                                sub_a0[i], sub_b0[j], sub_c[i][j]);
                            matrix::joint_matrix_mad(sg, sub_c[i][j],
                                sub_a1[i], sub_b1[j], sub_c[i][j]);
                        }
                }

                // Store results
                for (int i = 0; i < MT_M; i++)
                    for (int j = 0; j < MT_N; j++)
                        matrix::joint_matrix_store(sg, sub_c[i][j],
                            pC + (gm*OUT_M+i*TM)*N + gn*OUT_N+j*TN,
                            N, matrix::layout::row_major);
            });
    });
}
```

### VNNI B-Matrix Packing

B must be VNNI-packed before kernel launch: `B[K][N] → Bv[K/2][N*2]`

```cpp
void vnni_pack(const bf16* B, bf16* Bv, int K, int N) {
    for (int k = 0; k < K/2; k++)
        for (int n = 0; n < N; n++) {
            Bv[k*N*2 + n*2 + 0] = B[(2*k+0)*N + n];
            Bv[k*N*2 + n*2 + 1] = B[(2*k+1)*N + n];
        }
}
```

---

## BF16 Optimization Decision Tree

```
GEMM problem size?
├── N ≤ 4096?
│   └── YES → Single kernel, 4×4 blocking + L1 prefetch
│   └── Expected: 80-85 TFLOPS (84-88% utilization)
│
├── N > 4096?
│   └── Use split-N approach:
│       1. Split N into chunks of 2048-4096
│       2. VNNI-pack each B chunk separately (stride = N_chunk)
│       3. Run sub-GEMMs sequentially
│   └── Expected: 80-85 TFLOPS effective
│
└── Very small matrices (< 256)?
    └── Use naive GEMM (02_code_templates.md)
    └── XMX overhead dominates
```

---

## Performance Tuning Guide

### What Works (Verified on B60)

| Technique | Impact | Details |
|-----------|--------|---------|
| VNNI B packing (`ext_intel_packed`) | +41% | Essential for DPAS efficiency |
| K-step=32 explicit 2-step unroll | +29% | `sub_a0`/`sub_a1` flat arrays |
| 4×4 register blocking | +3.1% | Best balance of compute vs registers |
| L1 seed prefetch (8×32, k+32) | +7 TFLOPS | Prefetch next k-block only |
| 256 GRF mode | Essential | 128 GRF → catastrophic spill |
| Split-N for large N | +11 TFLOPS | Per-chunk VNNI-packed B buffers |

### What Doesn't Work (Verified on B60)

| Technique | Result | Why |
|-----------|--------|-----|
| Native 32×64 joint_matrix | 1.26 TFLOPS | Compiler scalar fallback |
| 16×16 DPAS atom | 1.02 TFLOPS | Register spilling (4×4 block) |
| Multi-SG work-groups | 64.4 TFLOPS | Scheduling overhead |
| MT_N > 4 (e.g., 2×8) | 26.0 TFLOPS | B register pressure |
| K-step > 32 | 51.7 TFLOPS | Register spilling |
| `-ffast-math` | -8 TFLOPS | Unknown compiler regression |
| Prefetch distance > k+32 | -2 TFLOPS | Cache pollution |
| ND-range dim swap | -7 TFLOPS | Worse scheduling |

### Critical Environment Variables

```bash
# REQUIRED: 256 GRF mode
IGC_ExtraOCLOptions="-cl-intel-256-GRF-per-thread"

# REQUIRED: Large register file in JIT
SYCL_PROGRAM_COMPILE_OPTIONS="-ze-opt-large-register-file"

# Optional: Helps with loop optimization
IGC_VectorAliasBBThreshold=100000000000
```

---

## XMX Checklist

- [ ] Use 8×16 DPAS atom (NOT 16×16 or 32×64 native)
- [ ] VNNI-pack B matrix with `ext_intel_packed` layout
- [ ] 4×4 register blocking (MT_M=4, MT_N=4)
- [ ] Declare all A/B joint_matrices as flat arrays before load
- [ ] Load ALL tiles before ANY compute (enables software pipelining)
- [ ] L1 seed prefetch of next k-block (optional but +7T)
- [ ] 256 GRF mode via env vars (CRITICAL)
- [ ] FP32 accumulator (not BF16)
- [ ] Sub-group size 16: `[[sycl::reqd_sub_group_size(16)]]`
- [ ] For N > 4096: use split-N with per-chunk VNNI packing

---

## XMX Troubleshooting

| Symptom | Cause | Fix |
|---------|-------|-----|
| `no member named 'joint_matrix'` | Missing include | Add `#include <sycl/ext/oneapi/matrix/matrix.hpp>` |
| 1-2 TFLOPS (catastrophic) | Register spilling | Add `-cl-intel-256-GRF-per-thread` |
| ~26 TFLOPS | MT_N > 4 | Use MT_N=4 max |
| Scalar code generated | Native 32×64 shape | Use 8×16 atoms + register blocking |
| Correctness fails with random data | Multi-SG indexing bug | Use `sg.get_group_id()[0]` not `get_local_id` |
| Performance drops at N=8192 | B cache thrashing | Use split-N with per-chunk B packing |

---

## XMX Applicability Audit (28-kernel study on B60)

**Result: 0/28 kernels benefit from XMX.** All matrix patterns are too small or GEMV.

| Why XMX Fails | Details |
|---|---|
| **Matrix too small** | Winograd transforms: fixed 3×3, 4×4, 6×6 templates. SE FC: max 384×64. All ≪ 256 threshold |
| **GEMV not GEMM** | SE FC layers are [1,C]×[C,K] → M=1 (vector). XMX needs M≥8 parallel outputs |
| **Winograd GEMM not in kernel** | Main compute is IM2GEMM + BLAS (oneMKL), not in these 28 kernels |
| **Small K dimension** | Even largest FC inner loop (K=384) gives only ~24 XMX tiles — overhead dominates |

**Only theoretical path**: Batch N independent SE GEMV → GEMM (M=N). Requires full kernel rewrite, only helps when N≥256, uncertain gain.
