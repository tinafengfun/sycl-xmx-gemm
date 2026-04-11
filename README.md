# SYCL XMX GEMM — Intel BMG GPU Optimization

A step-by-step demonstration of optimizing GEMM on **Intel Arc Pro B60** (Xe2 / Battlemage) using SYCL and XMX matrix acceleration, driven by AI-assisted optimization with Claude Code.

## Optimization History

| Stage | Branch / PR | Technique | BF16 TFLOPS | XMX Util |
|-------|------------|-----------|------------:|---------:|
| 1 | `main` | Naive GEMM (one thread/output) | ~0.2 | — |
| 2 | PR #1 | XMX `joint_matrix` single-tile | ~7.1 | — |
| 3 | PR #2 | Multi-tile register blocking (2×2, 4×2) | ~34.7 | — |
| **4** | **PR #4 (this branch)** | **BF16 VNNI + 4×4 blocking + prefetch + split-N** | **84.98** | **88.5%** |

### Stage 4 Key Results (BF16 on Intel Arc Pro B60)

| Problem Size | Method | TFLOPS | Utilization |
|-------------|--------|-------:|:-----------:|
| 8192 × 2048 × 4096 | Single kernel | **84.98** | 88.5% |
| 4096 × 4096 × 4096 | Single kernel | **81.25** | 84.6% |
| 8192 × 4096 × 4096 | Single kernel | **81.03** | 84.4% |
| 8192 × 8192 × 4096 | Split-N (4 chunks) | **84.58** | 88.1% |
| 8192 × 8192 × 4096 | Split-N (2 chunks) | **80.65** | 84.0% |
| 8192 × 8192 × 4096 | Single kernel | 73.14 | 76.2% |

## Hardware Target

| Spec | Value |
|------|-------|
| GPU | Intel Arc Pro B60 (BMG G21, Xe2) |
| Launch | Q2'25 |
| Xe Cores | 20 |
| EU Count | 160 |
| XMX Engines | 160 |
| Graphics Clock | 2400 MHz |
| Memory | 24 GB GDDR6 |
| Memory Bandwidth | 456 GB/s |
| TDP | 120W – 200W |
| Sub-group Size | 16 |
| XMX Tile (BF16) | 8×16×16 |
| XMX Tile (FP16) | 8×16×16 |
| XMX Tile (INT8) | 8×16×32 |
| XMX BF16 Peak | ~96 TFLOPS |
| Interface | PCIe Gen 5 x8 |
| Display | 3× DP 2.1, 1× HDMI 2.1 |

## Quick Start

> **Note**: To reproduce the Stage 4 peak results (80+ TFLOPS), check out the `feat/bf16-80t-xmx-gemm` branch:
> ```bash
> git checkout feat/bf16-80t-xmx-gemm
> ```
> The `main` branch contains Stage 1-3 code. Stage 4 optimized kernels live on the feature branch.

```bash
# 1. Build all targets
./scripts/build.sh

# 2. Run benchmark (8192×8192×4096, 100 warmup + 500 iters)
./scripts/run_bench.sh           # BF16 (default)
./scripts/run_bench.sh fp16      # FP16
./scripts/run_bench.sh quick     # Quick test (10+50)

# 3. Run correctness verification
./scripts/run_verify.sh
```

### Manual Build

```bash
# Stage 1-3 (original)
icpx -fsycl -fsycl-targets=spir64_gen \
  -Xs "-device bmg -options -cl-intel-enable-auto-large-GRF-mode" \
  -fsycl-unnamed-lambda -std=c++17 -O2 \
  gemm_sycl.cpp -o gemm_sycl

# Stage 4 (BF16 80T+ benchmark)
icpx -fsycl -O3 -std=c++17 -fsycl-unnamed-lambda \
     -mllvm -inline-threshold=10000 \
     src/kernels/bench_bf16_80t.cpp -o bench_bf16_80t

# Stage 4 (correctness verification)
icpx -fsycl -O3 -std=c++17 -fsycl-unnamed-lambda \
     -mllvm -inline-threshold=10000 \
     src/tools/verify_correctness.cpp -o verify_correctness
```

### Run with GPU Configuration

```bash
export ONEAPI_DEVICE_SELECTOR=level_zero:gpu
export IGC_ExtraOCLOptions="-cl-intel-256-GRF-per-thread"
export SYCL_PROGRAM_COMPILE_OPTIONS="-ze-opt-large-register-file -gline-tables-only"
export IGC_VectorAliasBBThreshold=100000000000

./bench_bf16_80t 100 500        # Full benchmark (100 warmup + 500 iters)
./verify_correctness             # Correctness check

# Original Stage 1-3
./gemm_sycl 8192 8192 4096 20   # FP16/INT8/BF16 multi-path
```

> **Critical**: The 256 GRF mode (`-cl-intel-256-GRF-per-thread`) is **required** for Stage 4. Without it, register spilling reduces performance from 80+ TFLOPS to 2 TFLOPS.

## Project Structure

```
├── README.md                          # This file
├── BF16_OPTIMIZATION_LOG.md           # Detailed optimization log (all stages)
├── compile.sh                         # Original Stage 1-3 compile script
├── gemm_sycl.cpp                      # Stage 1-3 GEMM source (FP16/INT8/BF16)
├── refer_bf16_tflops_check.cpp        # Reference BF16 checker
│
├── src/
│   ├── kernels/
│   │   ├── bench_bf16_80t.cpp         # Stage 4: BF16 benchmark (80+ TFLOPS)
│   │   └── bench_fp16_80t.cpp         # Stage 4: FP16 benchmark (80+ TFLOPS)
│   └── tools/
│       ├── verify_correctness.cpp      # Correctness verification (single + split-N)
│       └── query_matrix.cpp           # Query device XMX capabilities
│
├── scripts/
│   ├── build.sh                       # Build all targets
│   ├── run_bench.sh                   # Run benchmark with GPU config
│   ├── run_verify.sh                  # Run correctness tests
│   └── run_env_sweep.sh              # Sweep IGC env var configurations
│
├── docs/
│   ├── xmx_tuning.md                 # Intel XMX tuning reference
│   ├── github_optimization.md         # Optimization strategies from GitHub
│   └── xmx_deepen.md                  # Deep dive into XMX internals
│
└── skills/
    └── intel-gpu-optimizer/           # Reusable optimization knowledge
        ├── SKILL.md                   # Overview & decision tree
        ├── 01_optimization_techniques.md  # Memory, sub-groups, occupancy
        ├── 02_code_templates.md           # Kernel templates
        ├── 03_benchmarking.md             # Timing, FLOPS, compilation
        └── 04_xmx_matrix.md              # XMX BF16 optimization guide
```

## Stage 4: BF16 80+ TFLOPS — Optimization Journey

### Optimization Steps and Impact

| # | Optimization | Impact |
|---|-------------|--------|
| 1 | **VNNI B-matrix packing** (`ext_intel_packed`) | +41% vs naive XMX |
| 2 | **K-step unroll** (k=32, 2-step explicit) | +29% baseline |
| 3 | **4×4 register blocking** (MT_M=4, MT_N=4) | +3.1% over 8×2 |
| 4 | **L1 seed prefetch** (8×32 tiles, next k-block) | +7 TFLOPS |
| 5 | **256 GRF mode** (large register file) | Essential (128 GRF → 2 TFLOPS) |
| 6 | **Split-N with per-chunk B packing** | +11 TFLOPS for large N |

### Key Technical Findings

1. **8×16 DPAS atom is optimal** — The device reports 32×64×16 support, but the compiler generates scalar fallback code. 8×16 atoms composed into 4×4 = 16 tiles achieves 32×64 coverage via 16 separate DPAS instructions.

2. **N dimension is the performance bottleneck** — B-matrix L2 cache behavior determines utilization. When N ≤ 4096, B rows fit well in cache → 80+ TFLOPS. At N = 8192, wider B rows cause cache thrashing → 73 TFLOPS.

3. **Split-N overcomes the N bottleneck** — Splitting N=8192 into chunks of 2048-4096, each with its own VNNI-packed B buffer (stride = N_chunk), recovers the 80+ TFLOPS rate.

4. **`-ffast-math` hurts** — Counter-intuitively reduces performance by ~8 TFLOPS on this workload.

5. **Multi-SG work-groups don't help** — Correctly indexed multi-SG (16 sub-groups per WG) gives 64 TFLOPS, worse than single-SG's 73 TFLOPS. The false 81.78T result from earlier was due to an indexing bug.

### Negative Results (What Didn't Work)

| Attempt | Result | Reason |
|---------|--------|--------|
| Native 32×64 joint_matrix | 1.26 TFLOPS | Compiler generates scalar code |
| 16×16 DPAS atom (4×4 block) | 1.02 TFLOPS | Register spilling |
| Multi-SG work-groups (correct) | 64.4 TFLOPS | Scheduling overhead |
| 2×8 tiles (MT_M=2, MT_N=8) | 26.0 TFLOPS | Register spilling |
| K-step=64 | 51.7 TFLOPS | Register spilling |
| ND-range dimension swap | 65.3 TFLOPS | Worse scheduling |
| Prefetch distance > k+32 | 70.5 TFLOPS | Over-prefetching |
| `-ffast-math` flag | 64.9 TFLOPS | Unknown compiler regression |

## FP16 Results

FP16 performance matches BF16 within ±0.6 TFLOPS across all sizes — the optimizations are data-type agnostic on Xe2 XMX.

| Problem Size | FP16 TFLOPS | BF16 TFLOPS | Delta |
|-------------|------------:|------------:|------:|
| 8192 × 2048 × 4096 | **84.92** | 84.98 | -0.07 |
| 4096 × 4096 × 4096 | **81.62** | 81.25 | +0.37 |
| 8192 × 4096 × 4096 | 81.16 | 81.03 | +0.13 |
| 8192 × 8192 × 4096 | 73.02 | 73.14 | -0.12 |
| Split-N=2048 (4 chunks) | **85.17** | 84.58 | +0.59 |
| Split-N=4096 (2 chunks) | 80.71 | 80.65 | +0.06 |

FP16 slightly edges BF16 at the split-N=2048 sweet spot (85.17 vs 84.58 TFLOPS).

## Correctness Verification

All kernels verified against CPU reference with random BF16 data (tolerance: 1% relative error):

```
Test 1: 512×512×512 single kernel            PASS (max_rel_err=0.18%)
Test 2: 1024×1024×1024 single kernel          PASS (max_rel_err=0.27%)
Test 3: 1024×2048×512 single kernel           PASS (max_rel_err=0.20%)
Test 4: 1024×1024×1024 split-N=512 (2 chunks) PASS (max_rel_err=0.36%)
Test 5: 1024×2048×512 split-N=1024 (2 chunks) PASS (max_rel_err=0.12%)
Test 6: 1024×1024×1024 split-N=256 (4 chunks) PASS (max_rel_err=0.20%)
```

## References

- [SYCL Matrix Extension Spec](https://github.com/intel/llvm/blob/sycl/sycl/doc/extensions/experimental/sycl_ext_matrix/sycl_ext_oneapi_matrix.asciidoc)
- [Intel XMX Tuning Guide](docs/xmx_tuning.md)
- [Detailed Optimization Log](BF16_OPTIMIZATION_LOG.md)

## License

MIT
