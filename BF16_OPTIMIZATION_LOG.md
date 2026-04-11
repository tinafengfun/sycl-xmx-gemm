# BF16 XMX Optimization Log

This file tracks BF16 optimization attempts for `gemm_sycl.cpp` on Intel BMG.

## Benchmark Protocol

- Command: `./gemm_sycl 8192 8192 4096 500 bf16_only`
- Statistics: first 50 iterations are warmup, next 450 iterations are reported
- Metric used for comparisons: `GFLOPS_best` (with `avg` kept as stability reference)
- Environment: run inside Docker (`lsv-container_2026_3`) with oneAPI env loaded

## Results (Chronological)

| Step | Kernel | GFLOPS_best | GFLOPS_avg | Delta vs previous | Delta vs `bf16_mt8x2` |
|---|---|---:|---:|---:|---:|
| 0 | `bf16_mt8x2` | 46576.1 | 46462.2 | - | - |
| 1 | `bf16_mt8x2_k32` | 60205.6 | 58584.1 | +29.3% | +29.3% |
| 2 | `bf16_mt8x2_k32_vnni` | 65822.2 | 65530.6 | +9.3% | +41.3% |
| 3 | `bf16_mt8x2_k32_vnni_pf` | 70699.3 | 70537.5 | +7.4% | +51.8% |
| 4 | `bf16_mt4x4_k32_vnni_pf` | 72907.9 | 72218.6 | +3.1% | +56.5% |
| 5 | `bf16_mt4x4_k32_vnni_pf_l2` | 73006.6 | 72267.2 | +0.1% | +56.7% |

## Negative / Control Attempts

| Kernel | GFLOPS_best | Note |
|---|---:|---|
| `bf16_mt8x2_k64` | 43901.3 | Regression, register pressure and spill warning |
| `bf16_mt8x2_k32_vnni_lr` | ~53041.5 | Regression, reduced live-range version slower |
| `bf16_mt6x2_k32_vnni` | skipped | Requires `M % 48 == 0`, `8192` does not satisfy |
| `compile.sh full` flags | 70696.4 (`bf16_mt8x2_k32_vnni_pf`) | No gain vs basic compile for current best path |
| `bf16_mt4x4_k32_vnni_pf_16x32` | 27660.5 | Severe regression; prefetch shape not suitable |
| `bf16_mt4x4_k32_vnni_pf_d2` | 70786.4 | Lower best than 4x4 base and worse stability (avg drop) |
| `bf16_tm32_mt1x4_k32_vnni_pf_l2` | compile fail | Unsupported `joint_matrix_store` rows=32 on this path |
| `bf16_tm16_mt2x4_k32_vnni_pf_l2` | 41095.2 | Regression |
| `bf16_tm16_mt2x4_k32_vnni_pf_l1` | 41104.8 | Regression |
| `bf16_mt4x4_k32_vnni_pf_l2_d2` | 70521.9 | Regression and poorer stability |
| `bf16_mt4x4_k32_vnni_pf_l2_b` | 71698.5 | Regression vs L2(A+B) |
| `bf16_mt4x4_k32_vnni_pf_l1_b` | 71607.2 | Regression vs L2(A+B) |
| `bf16_mt4x4_k32_vnni_pf_l2_a` | 68137.6 | Regression (A-only prefetch) |

## V2 Optimization Sweep (gemm_80t_v1 ~ v13b)

Separate benchmark files (`gemm_80t_v*.cpp`) exploring approaches beyond the
`gemm_sycl.cpp` baseline.  All tests on same hardware (Intel Arc Pro B60),
same Docker environment, same env vars (`IGC_ExtraOCLOptions=-cl-intel-256-GRF-per-thread`,
`SYCL_PROGRAM_COMPILE_OPTIONS=-ze-opt-large-register-file`).

### Key Results

| Ver | Approach | Size | TFLOPS | Util | Note |
|-----|----------|------|-------:|-----:|------|
| v1 | Baseline port from gemm_sycl.cpp | 8192³×4096 | 72.83 | 75.9% | Starting point |
| v2 | 16×16 DPAS atom, multi-SG WG | 8192³×4096 | 17.36 | 18.1% | DPAS atom too large, register spill |
| v3 | Multi-SG 128×256 (buggy index) | 8192³×4096 | **81.78** | 85.2% | ⚠️ WRONG indexing, fake perf |
| v4 | Multi-SG + correctness check | 512³ | FAIL | — | Revealed 100% error with random data |
| v5 | Multi-SG fixed indexing (1D local) | 8192³×4096 | 64.42 | 67.1% | Correct but slower than single-SG |
| v6 | Multi-SG fixed (2D local + sg_id) | 8192³×4096 | 64.42 | 67.1% | Same as v5, 2D doesn't help |
| v7 | Single-SG 4×4 explicit unroll + pfL1 | 4096³×4096 | **81.17** | 84.6% | First legitimate 80+ TFLOPS! |
| v7 | Same kernel | 8192³×4096 | 72.96 | 76.0% | N=8192 cache bottleneck |
| v8 | Size sweep, 4×4 pfL1 | 8192×4096×4096 | **81.25** | 84.6% | Small N → 80+ TFLOPS confirmed |
| v8 | Size sweep, 4×4 pfL1 | 8192³×4096 | 73.12 | 76.1% | Large N wall confirmed |
| v9 | Tile shape / prefetch / K-step tuning | 8192³×4096 | 73.08 | 76.1% | All tuning capped at ~73T for N=8192 |
| v9 | 8×2 tiles | 8192³×4096 | 70.88 | 73.8% | Worse than 4×4 |
| v9 | 2×8 tiles | 8192³×4096 | 26.06 | 27.1% | Catastrophic register spill |
| v9 | k-step=64 | 8192³×4096 | 51.74 | 53.9% | Register spill at larger K-step |
| v10 | ND-range dim swap / local swap | 8192³×4096 | 65.30 | 68.0% | Standard layout is best |
| v11 | in_order vs OoO queue | 8192³×4096 | 72.92 | 76.0% | No difference |
| v11 | 128 GRF (no large register file) | 8192³×4096 | 2.09 | 2.2% | Catastrophic, 256 GRF essential |
| v12 | Split-N (shared B stride=8192) | 8192³×4096 | 74.86 | 78.0% | Modest gain, B stride still large |
| v13 | Split-N per-chunk B buffers (stride=N_chunk) | 8192³×4096 | **80.57** | 84.0% | 2 chunks, wall-clock verified |
| v13 | Split-N per-chunk B, N_chunk=2048 | 8192³×4096 | **84.58** | 88.1% | 4 chunks, wall-clock verified |
| v13b | Single kernel N=2048 | 8192×2048×4096 | **84.98** | 88.5% | Highest single-kernel result |

### Comparison with V1 Baseline

| Metric | V1 Baseline (gemm_sycl.cpp) | V2 Best Single-Kernel | V2 Split-N |
|--------|---------------------------:|----------------------:|-----------:|
| Peak TFLOPS | 73.0 | 84.98 | 84.58 |
| 8192³×4096 | 72.83 | 73.14 | **84.58** |
| 4096³×4096 | ~72 | **81.25** | — |
| Utilization | 76% | 88.5% | 88.1% |

### Key Technical Insights

1. **N dimension is the bottleneck**: Performance scales inversely with N size due to B-matrix
   L2 cache behavior. Small N (≤4096) → 80+ TFLOPS, large N (8192) → 73 TFLOPS.
2. **Split-N with per-chunk VNNI packing** overcomes the N bottleneck by giving each
   sub-GEMM its own B buffer with cache-friendly stride.
3. **Multi-SG work-groups** hurt performance (64T) vs single-SG (73T) when correctly indexed.
4. **256 GRF mode is essential** — 128 GRF causes catastrophic register spilling (2 TFLOPS).
5. **`-ffast-math` hurts** — reduces performance by ~8 TFLOPS.
6. **8×16 DPAS atom is optimal** — 16×16 causes register spill, 32×64 native generates scalar code.
7. **L1 seed prefetch** of next k-block gives +7 TFLOPS gain.
8. **Prefetch distance**: k+32 is optimal; further distances degrade performance.

## FP16 Results (Same Kernel Pattern)

FP16 benchmark using identical 4×4 + VNNI + pfL1 + split-N pattern. Results within ±0.6 TFLOPS of BF16.

| Size | FP16 TFLOPS | BF16 TFLOPS | Delta |
|------|------------:|------------:|------:|
| 8192×2048×4096 | 84.92 | 84.98 | -0.07 |
| 4096×4096×4096 | 81.62 | 81.25 | +0.37 |
| 8192×4096×4096 | 81.16 | 81.03 | +0.13 |
| 8192×8192×4096 | 73.02 | 73.14 | -0.12 |
| Split-N=2048 (4c) | **85.17** | 84.58 | +0.59 |
| Split-N=4096 (2c) | 80.71 | 80.65 | +0.06 |

**Conclusion**: Optimizations are data-type agnostic on Xe2 XMX. FP16 slightly edges BF16 at split-N=2048.

## Current Best

- **FP16 peak**: `85.17 TFLOPS` at 8192×8192×4096 split-N=2048, 4 chunks
- **BF16 peak**: `84.98 TFLOPS` at 8192×2048×4096 (v13b, 4×4 tiles + pfL1)
- **8192³×4096 best**: `84.58 TFLOPS` via split-N=2048, 4 chunks (v13b, wall-clock verified)
- **Reliable 80+ TFLOPS**: split-N=4096, 2 chunks → 80.65 TFLOPS at 8192³×4096
- Best BF16 kernel source: `src/kernels/bench_bf16_80t.cpp`
- Best FP16 kernel source: `src/kernels/bench_fp16_80t.cpp`

## Update Rule (for every new optimization)

For each new attempt, append one row with:

1. kernel name
2. best/avg GFLOPS
3. delta vs previous effective step
4. whether it is promoted, control-only, or discarded
