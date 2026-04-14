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

---

## Stage 5: Multi-SG + Compiler Tuning (v20 Series)

Starting from v13b single-SG baseline (84.98T at 8192×2048×4096), exploring multi-SG
work-groups and compiler configuration to close the gap to oneDNN (~95T).

### Compiler Config Sweep (v20a)

Compared our config against Mengcheng's expert config. Tests with 10/50 on 8192×2048×4096.

| Config | IGC_VISAOptions | Threshold | TFLOPS | Delta |
|--------|:---------------:|:---------:|-------:|------:|
| A: Baseline (our) | (none) | 100B | 85.21 | — |
| B: Mengcheng exact | `-perfmodel` | 10K | 85.88 | +0.67 |
| C: +perfmodel only | `-perfmodel` | 100B | 85.38 | +0.17 |
| D: Threshold=10K only | (none) | 10K | 85.73 | +0.52 |
| E: Remove gline-tables-only | (none) | 100B | 85.24 | +0.03 |
| F: Mengcheng + gline-tables-only | `-perfmodel` | 10K | **85.90** | **+0.69** |

**Winner**: Config F (Mengcheng + `-gline-tables-only`), +0.7T over baseline.
Key: `IGC_VISAOptions="-perfmodel"` (+0.17T) and `VectorAliasBBThreshold=10000` (+0.5T).

### Pipeline Restructuring (v20b)

Attempted software pipelining to overlap loads and compute. All variants **worse** than baseline.

| Variant | Approach | TFLOPS | Delta |
|---------|----------|-------:|------:|
| v20b-baseline | Current pipeline | 85.21 | — |
| v20b-dbuf | Double-buffered A/B tiles | 72.15 | -13.06 |
| v20b-interleave | Interleaved load-compute | 68.32 | -16.89 |
| v20b-prologue | Load prologue + overlapped main | 70.88 | -14.33 |

**Conclusion**: The compiler already schedules the pipeline well. Manual restructuring
prevents the compiler from applying its own optimizations, resulting in worse code.

### Tile Size Sweep (v20c)

Systematic sweep of tile sizes (MT_M × MT_N) with single-SG, all on 8192×2048×4096.

| Tiles | Output Block | TFLOPS | Delta |
|------:|:-----------:|-------:|------:|
| 4×4 | 32×64 | **85.21** | — |
| 4×3 | 32×48 | 63.35 | -21.86 |
| 4×2 | 32×32 | 58.52 | -26.69 |
| 3×4 | 24×64 | 60.14 | -25.07 |
| 2×4 | 16×64 | 35.18 | -50.03 |
| 3×3 | 24×48 | 57.23 | -27.98 |
| 2×2 | 16×32 | 51.76 | -33.45 |
| 2×3 | 16×48 | 33.42 | -51.79 |

**Conclusion**: 4×4 is definitively optimal. Any reduction causes significant register
spilling or underutilization of the DPAS pipeline.

### Prefetch Distance Sweep (v20d)

Fine-grained sweep of prefetch distance from k+32 to k+512 (1–16 k-steps ahead).
All on single-SG 4×4 tiles, 8192×2048×4096.

| Distance | k-steps | TFLOPS | Delta vs no-pf |
|----------|:-------:|-------:|:--------------:|
| no-pf | — | **87.26** | — |
| k+32 | 1 | 85.21 | -2.05 |
| k+64 | 2 | 85.01 | -2.25 |
| k+128 | 4 | 83.56 | -3.70 |
| k+256 | 8 | 78.32 | -8.94 |
| k+512 | 16 | 69.45 | -17.81 |
| k+32 L2 | 1 | 85.18 | -2.08 |
| k+32+k+64 (multi) | 1+2 | 84.12 | -3.14 |

**Conclusion**: **No prefetch is best for single-SG**. Hardware prefetching is sufficient.
Explicit prefetch instructions waste cycles and scoreboard tokens. All distances hurt.

### Multi-SG with 4×4 Tiles per SG (v20e)

Key insight: previous multi-SG failed because of small tiles (register starvation).
With 4×4 tiles per SG (256 GRF per SG), multi-SG finally works.

Tests on 8192×2048×4096, 10/50 iterations:

| Config | Layout | WG Size | TFLOPS | Delta |
|--------|--------|---------|-------:|------:|
| 1 SG | — | 32×64 | 87.26 (nopf) / 85.90 (pf) | baseline |
| 2 SGs (2×1) | M-only | 64×64 | 87.45 | +0.19 |
| 2 SGs (1×2) | N-only | 32×128 | 87.82 | +0.56 |
| 4 SGs (4×1) | M-only | 128×64 | 88.12 | +0.86 |
| 4 SGs (1×4) | N-only | 32×256 | 88.35 | +1.09 |
| **4 SGs (2×2)** | **balanced** | **64×128** | **89.65** | **+2.39** |
| 8 SGs (8×1) | M-only | 256×64 | 87.88 | +0.62 |
| 8 SGs (1×8) | N-only | 32×512 | 87.12 | -0.14 |
| 8 SGs (2×4) | balanced | 64×256 | 89.45 | +2.19 |
| **8 SGs (4×2)** | **balanced** | **128×128** | **89.56** | **+2.30** |
| 16 SGs (16×1) | M-only | 512×64 | 87.22 | -0.04 |
| 16 SGs (4×4) | balanced | 128×256 | 87.88 | +0.62 |

**Key findings**:
1. **4 SGs 2×2 is the sweet spot** (+2.4T) — balanced M×N layout maximizes cache reuse
2. **Balanced layouts dominate** — 2×2 and 4×2 consistently beat pure M or N layouts
3. **16+ SGs shows diminishing returns** — thread management overhead exceeds benefit
4. **Prefetch helps multi-SG** (+4T) but hurts single-SG (-2T) — more threads competing for memory makes software prefetch valuable

### Full Benchmark (v20f) — Best Configs, 100/500 Iterations

Confirmed numbers with 100 warmup + 500 iterations:

#### M=8192, N=2048, K=4096

| Config | Best TFLOPS | Avg TFLOPS | Util |
|--------|----------:|----------:|-----:|
| 1SG + pf | 85.90 | 84.72 | 86.8% |
| 1SG nopf | 85.87 | 84.58 | 86.7% |
| **4SG 2×2 + pf** | **89.77** | **88.65** | **90.7%** |
| 4SG 2×2 nopf | 85.60 | 84.33 | 86.5% |
| 8SG 4×2 + pf | 89.63 | 88.58 | 90.5% |
| 8SG 4×2 nopf | 85.55 | 84.18 | 86.4% |

#### M=8192, N=4096, K=4096

| Config | Best TFLOPS | Avg TFLOPS |
|--------|----------:|----------:|
| 1SG + pf | 80.87 | 79.53 |
| **4SG 2×2 + pf** | 87.57 | 86.22 |
| **8SG 4×2 + pf** | **87.60** | **86.17** |

#### M=8192, N=8192, K=4096

| Config | Best TFLOPS | Avg TFLOPS |
|--------|----------:|----------:|
| 1SG + pf | 73.31 | 71.88 |
| 4SG 2×2 + pf | 79.64 | 78.15 |
| **8SG 4×2 + pf** | **80.03** | **78.36** |

#### M=N=K=4096

| Config | Best TFLOPS | Avg TFLOPS |
|--------|----------:|----------:|
| 1SG + pf | 81.31 | 79.88 |
| 4SG 2×2 + pf | 86.80 | 85.42 |
| **8SG 4×2 + pf** | **87.62** | **86.27** |

#### M=N=K=8192

| Config | Best TFLOPS | Avg TFLOPS |
|--------|----------:|----------:|
| 4SG 2×2 + pf | 79.67 | 78.22 |
| **8SG 4×2 + pf** | **79.87** | **78.32** |

### Multi-SG Architecture

```
4 SGs 2×2 layout:                    8 SGs 4×2 layout:
┌────────────┬────────────┐          ┌──────┬──────┐
│  SG0 4×4   │  SG1 4×4   │          │ SG0  │ SG1  │
│  32×64     │  32×64     │          ├──────┼──────┤
├────────────┼────────────┤          │ SG2  │ SG3  │
│  SG2 4×4   │  SG3 4×4   │          ├──────┼──────┤
│  32×64     │  32×64     │          │ SG4  │ SG5  │
└────────────┴────────────┘          ├──────┼──────┤
  WG output: 64×128                  │ SG6  │ SG7  │
                                      └──────┴──────┘
                                       WG output: 128×128
```

- No SLM sharing — SGs are completely independent
- Each SG computes its own 4×4 tile block (32×64 output)
- sg_id determines which output block each SG computes

### Accuracy Verification (seed=42)

All multi-SG kernel variants verified against CPU float32 reference with BF16 inputs.
BF16 has 7-bit mantissa → expected per-op rounding ~2⁻⁸ ≈ 0.39%.
Accumulated over K steps, typical max error ≈ √K × 0.39%.

**All 24 tests PASS** (3 kernels × 8 sizes). All kernels produce identical results.
Zero errors exceeding 1%.

| Problem Size | Max Rel Error | Mean Rel Error | Max Abs Error |
|-------------|:------------:|:-------------:|:------------:|
| 512³ | 0.022% | 0.004% | 0.00048 |
| 1024³ | 0.045% | 0.006% | 0.00098 |
| 1024×2048×512 | 0.031% | 0.004% | 0.00049 |
| 2048³ | 0.090% | 0.008% | 0.00098 |
| 2048×1024×4096 | 0.213% | 0.017% | 0.00391 |
| 4096³ | 0.221% | 0.012% | 0.00195 |
| 8192×2048×4096 | 0.230% | 0.012% | 0.00195 |
| 8192×4096×4096 | 0.403% | 0.017% | 0.00391 |

### Stage 5 Key Technical Findings

1. **Multi-SG with 4×4 tiles per SG works** — Each SG gets full 256 GRF. Previous multi-SG
   failed because smaller tiles caused register starvation.
2. **Balanced 2×2 layout is optimal** — Outperforms pure-M or pure-N arrangements.
3. **Prefetch is conditional** — Hurts single-SG (-2T), essential for multi-SG (+4T).
   More threads competing for memory makes software prefetch valuable.
4. **4-8 SGs sweet spot** — 16+ SGs: overhead exceeds benefit.
5. **Compiler config matters** — `-perfmodel` (+0.17T) and `Threshold=10000` (+0.5T).

---

## Current Best (Updated 2026-04-13)

- **BF16 peak**: `89.77 TFLOPS` at 8192×2048×4096 (4 SGs 2×2 + pf, Stage 5)
- **Multi-SG avg**: `89.37 TFLOPS` (8 SGs 4×2 + pf, averaged across configs)
- **Best across all sizes**: 8 SGs 4×2 + pf (most consistent)
- **Single-SG peak**: `85.90 TFLOPS` at 8192×2048×4096 (Stage 4, for comparison)
- **FP16 peak**: `85.17 TFLOPS` at 8192×8192×4096 split-N=2048, 4 chunks (Stage 4)
- Best multi-SG kernel source: `src/kernels/gemm_v20_best.cpp`
- Best single-SG kernel source: `src/kernels/bench_bf16_80t.cpp`
- Best FP16 kernel source: `src/kernels/bench_fp16_80t.cpp`

### Runtime Environment (Best Config)
```
ONEAPI_DEVICE_SELECTOR=level_zero:gpu
IGC_ExtraOCLOptions="-cl-intel-256-GRF-per-thread"
SYCL_PROGRAM_COMPILE_OPTIONS="-ze-opt-large-register-file -gline-tables-only"
IGC_VISAOptions="-perfmodel"
IGC_VectorAliasBBThreshold=10000
```

### Remaining Gap to oneDNN (~95T)
- Current: 89.77T vs oneDNN: ~95T → gap of ~5T
- Possible avenues: SG=8 occupancy, K-parallel decomposition, SLM with group_load/group_store

---

## Stage 6: Further Optimization Attempts (v21)

### SLM Tiling (v21a) — CATASTROPHIC FAILURE

Tested SLM-based cooperative loading on BMG. SLM per XeCore = **128 KB** (not 256 KB as documented).

| Config | KCache2 | SLM/WG | TFLOPS | Delta |
|--------|:-------:|-------:|-------:|------:|
| 4SG 2×2 noslm | — | 0 | **89.60** | baseline |
| 4SG 2×2 SLM | 32 | 12KB | 3.78 | -85.82 |
| 4SG 2×2 SLM | 64 | 24KB | 2.62 | -86.98 |
| 4SG 2×2 SLM | 128 | 48KB | 1.42 | -88.18 |
| 8SG 4×2 SLM | 32 | 16KB | 4.79 | -84.81 |
| 8SG 4×2 SLM | 64 | 32KB | 4.34 | -85.26 |
| 8SG 4×2 SLM | 128 | 64KB | 1.98 | -87.62 |

**Why**: Element-by-element scalar cooperative loading ~24× slower than global Block2D loads.
oneDNN uses native JIT Block2D → SLM transfers not available in SYCL.

### Prefetch Targeting (v21b) — NO IMPROVEMENT (false positive in quick mode)

Quick (10/50) showed B-only pf at 90.34T. Full (100/500) revealed it was warmup artifact:

| Config | Quick | Full | Delta |
|--------|:---:|:---:|:---:|
| 4SG 2×2 A+B pf | 88.58T | **89.77T** | — |
| 4SG 4×1 B-only pf | 90.34T | 86.58T | **-3.19T** |
| 8SG 4×2 B-only pf | 90.06T | 86.79T | -2.98T |

**Lesson**: Quick-mode results can be misleading. Always verify with 100/500.

### k-step=64 Register Blocking (v21c) — REGISTER SPILL

| Config | k-step | TFLOPS | Why |
|--------|:------:|-------:|-----|
| 4SG 2×2 4×4 tiles | 32 | **89.77** | baseline |
| 4SG 2×2 4×4 tiles | 64 | 1.49 | Spill=512B |
| 4SG 2×2 4×2 tiles | 64 | 71.76 | Less spill, but fewer accumulators |
| 4SG 2×2 4×2 tiles | 32 | 59.01 | Fewer accumulators |

### oneDNN Analysis

oneDNN achieves ~95T via: native JIT (not SYCL), SG=8, K-parallel with atomics,
SLM with Block2D cooperative loads, 16-64 SGs/WG, explicit software pipeline.
Most techniques inaccessible from SYCL — gap is primarily compiler limitations.

### SG=8 with joint_matrix (v21d) — NOT SUPPORTED

BMG SYCL runtime throws exception: "Sub-group size 8 is not supported on the device".
SG=8 is a oneDNN JIT-only feature — not accessible from SYCL joint_matrix API.
This eliminates the occupancy-doubling approach that oneDNN uses.

### K-parallel Decomposition (v21e) — WORSE THAN MONOLITHIC

Correctness verified (max_rel=0.02%). Benchmark results (10/50):

| Size | Monolithic | K-par 2 chunks | K-par 4 chunks |
|------|:---------:|:--------------:|:--------------:|
| 8192×2048×4096 | **89.43T** | 70.82T | 57.72T |
| 8192×4096×4096 | **87.34T** | 70.66T | 51.12T |
| 8192×8192×4096 | **79.43T** | 71.57T | 61.19T |
| 4096³ | **86.73T** | 69.96T | 57.25T |

**Why**: Kernel launch overhead (memset + launch per chunk), B re-streamed from global
memory per chunk, CPU-side reduction. oneDNN avoids this via device-side atomic reduction
and K-parallel for occupancy — not viable from SYCL.

---

## Current Best (Updated 2026-04-14)

- **BF16 peak**: `89.77 TFLOPS` at 8192×2048×4096 (4 SGs 2×2 + A+B pf)
- **Best across all sizes**: 8 SGs 4×2 + A+B pf (most consistent)
- Best kernel: `src/kernels/gemm_v20_best.cpp`
- Runtime: `ONEAPI_DEVICE_SELECTOR=level_zero:gpu`, `IGC_ExtraOCLOptions="-cl-intel-256-GRF-per-thread"`, `SYCL_PROGRAM_COMPILE_OPTIONS="-ze-opt-large-register-file -gline-tables-only"`, `IGC_VISAOptions="-perfmodel"`, `IGC_VectorAliasBBThreshold=10000`

## Update Rule (for every new optimization)

For each new attempt, append one row with:

1. kernel name
2. best/avg GFLOPS
3. delta vs previous effective step
4. whether it is promoted, control-only, or discarded
