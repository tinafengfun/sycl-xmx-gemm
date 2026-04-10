# SYCL XMX GEMM — Intel BMG GPU Optimization Guide

A step-by-step demonstration of optimizing GEMM (General Matrix Multiply) on Intel Arc Pro B60 (Xe2 / Battlemage) using SYCL and XMX matrix acceleration.

## Optimization History

| Stage | Branch / PR | Technique | FP16 GFLOPS | INT8 GOPS |
|-------|------------|-----------|-------------|-----------|
| 1 | `main` | Naive GEMM (one thread/output) | ~215 | ~512 |
| 2 | PR #1 | XMX `joint_matrix` single-tile | ~7,070 | ~12,500 |
| 3 | PR #2 | Multi-tile register blocking (2×2, 4×2) | ~34,700 | ~37,000 |

Each PR shows exactly what code was added to achieve the next level of performance.

## Hardware Target

| Spec | Value |
|------|-------|
| GPU | Intel Arc Pro B60 (BMG, Xe2) |
| EU Count | 160 |
| Sub-group Size | 16 |
| HBM Bandwidth | ~500 GB/s |
| XMX Tile (FP16) | 8×16×16 |
| XMX Tile (INT8) | 8×16×32 |

## Compile

```bash
# Basic (Stage 1 naive)
icpx -fsycl -fsycl-targets=spir64_gen \
  -Xs "-device bmg -options -cl-intel-enable-auto-large-GRF-mode" \
  -fsycl-unnamed-lambda -std=c++17 -O2 \
  gemm_sycl.cpp -o gemm_sycl

# Full optimization (Stage 2/3 with XMX)
icpx -fsycl -O3 -std=c++17 \
  -fsycl-targets=spir64_gen -fsycl-unnamed-lambda \
  -fno-fast-math -fma -no-ftz \
  -Xs "-device bmg \
       -options -cl-intel-enable-auto-large-GRF-mode \
       -options -cl-fp32-correctly-rounded-divide-sqrt" \
  --offload-compress \
  gemm_sycl.cpp -o gemm_sycl
```

## Usage

```bash
# Default: 8192×8192×4096, 10 iterations
./gemm_sycl

# Custom size
./gemm_sycl 4096 4096 4096 20

# Lock GPU frequency for stable results
xpu-smi config -d 0 -t 0 --frequencyrange 2400,2400
```

## Key Learnings

1. **Naive GEMM is memory-bound** — FP16/BF16 are actually slower than FP32 due to type conversion overhead with no XMX acceleration.
2. **XMX `joint_matrix` activates hardware matrix units** — 19x speedup over naive FP32.
3. **Multi-tile register blocking reuses loaded data** — Each sub-group computes multiple output tiles, sharing A/B across tiles. 4.9x over single-tile.
4. **Lock GPU frequency** for reproducible benchmarks — DVFS can cause 2x measurement variance.
