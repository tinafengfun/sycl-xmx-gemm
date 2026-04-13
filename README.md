# SYCL XMX GEMM — Intel BMG GPU Optimization

A step-by-step demonstration of optimizing GEMM on **Intel Arc Pro B60** (Xe2 / Battlemage) using SYCL and XMX matrix acceleration, driven by AI-assisted optimization with Claude Code.

## Optimization History

| Stage | Branch / PR | Technique | BF16 TFLOPS | XMX Util |
|-------|------------|-----------|------------:|---------:|
| 1 | `main` | Naive GEMM (one thread/output) | ~0.2 | — |
| 2 | PR #1 | XMX `joint_matrix` single-tile | ~7.1 | — |
| 3 | PR #2 | Multi-tile register blocking (2×2, 4×2) | ~34.7 | — |
| 4 | PR #4 | BF16 VNNI + 4×4 blocking + prefetch + split-N | 84.98 | 88.5% |
| **5** | **PR #5 (this branch)** | **Multi-SG work-groups + compiler tuning** | **89.77** | **90.7%** |

### Stage 5 Key Results (BF16 on Intel Arc Pro B60)

Confirmed on 2026-04-13 with oneAPI 2025.3.2, driver 1.14.36300+8:

| Problem Size | Config | Best TFLOPS | Avg TFLOPS | Utilization |
|-------------|--------|----------:|----------:|:-----------:|
| 8192 × 2048 × 4096 | 4 SGs 2×2 + pf | **89.77** | 88.65 | 90.7% |
| 8192 × 4096 × 4096 | 8 SGs 4×2 + pf | **87.60** | 86.17 | 88.5% |
| 4096 × 4096 × 4096 | 8 SGs 4×2 + pf | **87.62** | 86.27 | 88.5% |
| 8192 × 8192 × 4096 | 8 SGs 4×2 + pf | **80.03** | 78.36 | 80.8% |
| 8192 × 8192 × 8192 | 8 SGs 4×2 + pf | **79.87** | — | 80.7% |

### Multi-SG Performance Breakdown (100 warmup, 500 iterations)

| Config | 8192×2048 | 8192×4096 | 8192×8192 | 4096³ |
|--------|-----------|-----------|-----------|-------|
| 1 SG (baseline) | 85.90T | 80.87T | 73.31T | 81.31T |
| 4 SGs (2×2) | **89.77T** | 87.57T | 79.64T | 86.80T |
| 8 SGs (4×2) | 89.63T | **87.60T** | **80.03T** | **87.62T** |

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
| XMX BF16 Peak | ~99 TFLOPS |
| Interface | PCIe Gen 5 x8 |
| Display | 3× DP 2.1, 1× HDMI 2.1 |

## Quick Start

> **Note**: To reproduce the Stage 5 peak results (89+ TFLOPS), check out the `feat/bf16-80t-xmx-gemm` branch:
> ```bash
> git checkout feat/bf16-80t-xmx-gemm
> ```
> The `main` branch contains Stage 1-3 code. Stages 4-5 optimized kernels live on the feature branch.

```bash
# 1. Build all targets
./scripts/build.sh

# 2. Run Stage 4 benchmark (single-SG, 100 warmup + 500 iters)
./scripts/run_bench.sh           # BF16 (default)
./scripts/run_bench.sh fp16      # FP16
./scripts/run_bench.sh quick     # Quick test (10+50)

# 3. Run Stage 5 multi-SG benchmark (best configs, 100/500)
./scripts/run_v20_best.sh

# 4. Run correctness verification
./scripts/run_verify.sh

# 5. Run accuracy verification (vs CPU reference, seed=42)
./scripts/run_verify_accuracy.sh
```

### Manual Build

```bash
# Stage 4 (BF16 80T+ single-SG benchmark)
icpx -fsycl -O3 -std=c++17 -fsycl-unnamed-lambda \
     -mllvm -inline-threshold=10000 \
     src/kernels/bench_bf16_80t.cpp -o bench_bf16_80t

# Stage 5 (multi-SG best configs benchmark)
icpx -fsycl -O3 -std=c++17 -fsycl-unnamed-lambda \
     -mllvm -inline-threshold=10000 \
     src/kernels/gemm_v20_best.cpp -o gemm_v20_best

# Stage 5 (accuracy verification)
icpx -fsycl -O3 -std=c++17 -fsycl-unnamed-lambda \
     -mllvm -inline-threshold=10000 \
     src/tools/verify_accuracy.cpp -o verify_accuracy
```

### Run with GPU Configuration

```bash
# Best config for Stage 5 (89.77 TFLOPS)
export ONEAPI_DEVICE_SELECTOR=level_zero:gpu
export IGC_ExtraOCLOptions="-cl-intel-256-GRF-per-thread"
export SYCL_PROGRAM_COMPILE_OPTIONS="-ze-opt-large-register-file -gline-tables-only"
export IGC_VISAOptions="-perfmodel"
export IGC_VectorAliasBBThreshold=10000

# Stage 5 multi-SG benchmark
./build/gemm_v20_best 100 500

# Stage 4 single-SG benchmark
./build/bench_bf16_80t 100 500

# Accuracy verification
./build/verify_accuracy
```

> **Critical**: The 256 GRF mode (`-cl-intel-256-GRF-per-thread`) is **required**. Without it, register spilling reduces performance from 80+ TFLOPS to ~2 TFLOPS.

### Run in Docker

```bash
# Build and run inside the oneAPI Docker container
docker exec <container> bash -c "\
  cd /path/to/sycl-xmx-gemm && \
  bash scripts/build.sh && \
  bash scripts/run_v20_best.sh"

# Or with manual env vars:
docker exec <container> bash -c "\
  cd /path/to/sycl-xmx-gemm && \
  export ONEAPI_DEVICE_SELECTOR=level_zero:gpu && \
  export IGC_ExtraOCLOptions='-cl-intel-256-GRF-per-thread' && \
  export SYCL_PROGRAM_COMPILE_OPTIONS='-ze-opt-large-register-file -gline-tables-only' && \
  export IGC_VISAOptions='-perfmodel' && \
  export IGC_VectorAliasBBThreshold=10000 && \
  ./build/gemm_v20_best 10 50"
```

### Dump Kernel ISA

```bash
# Add IGC dump flags to generate .asm files in current directory
export IGC_ExtraOCLOptions="-cl-intel-256-GRF-per-thread -dumpvisa -dumpschedule"
export IGC_ShaderDumpEnable=1
export IGC_DumpToCurrentDir=1
# Run benchmark → OCL_asm*_simd16_entry_*.asm will appear
```

### GPU Power Configuration (Optional)

```bash
# Lock GPU frequency for reproducible benchmarks
xpu-smi config -d 0 -t 0 --frequencyrange 2400,2400
```

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
│   │   ├── bench_fp16_80t.cpp         # Stage 4: FP16 benchmark (80+ TFLOPS)
│   │   ├── gemm_v20_pipeline.cpp      # Stage 5: Pipeline restructuring experiments
│   │   ├── gemm_v20_tiles.cpp         # Stage 5: Tile size sweep
│   │   ├── gemm_v20_prefetch.cpp      # Stage 5: Prefetch distance sweep
│   │   ├── gemm_v20_multisg.cpp       # Stage 5: Multi-SG initial experiments
│   │   ├── gemm_v20_multisg2.cpp      # Stage 5: Multi-SG layout sweep (4×4 per SG)
│   │   └── gemm_v20_best.cpp          # Stage 5: Best configs full benchmark
│   └── tools/
│       ├── verify_correctness.cpp      # Correctness verification (single + split-N)
│       ├── verify_accuracy.cpp         # Accuracy verification (vs CPU reference, seed=42)
│       └── query_matrix.cpp           # Query device XMX capabilities
│
├── scripts/
│   ├── build.sh                       # Build all targets
│   ├── run_bench.sh                   # Run Stage 4 benchmark
│   ├── run_v20_best.sh                # Run Stage 5 best configs benchmark
│   ├── run_verify.sh                  # Run correctness tests
│   ├── run_verify_accuracy.sh         # Run accuracy verification
│   ├── run_env_sweep.sh               # Sweep IGC env var configurations
│   └── run_env_sweep_v2.sh            # Compiler config comparison sweep
│
├── docs/
│   ├── xmx_tuning.md                 # Intel XMX tuning reference
│   ├── github_optimization.md         # Optimization strategies from GitHub
│   └── xmx_deepen.md                  # Deep dive into XMX internals
│
├── reports/
│   └── isa_dump_85t/                  # ISA dump and analysis for 85T kernel
│
└── skills/
    └── intel-gpu-optimizer/           # Reusable optimization knowledge
        ├── SKILL.md                   # Overview & decision tree
        ├── 01_optimization_techniques.md
        ├── 02_code_templates.md
        ├── 03_benchmarking.md
        └── 04_xmx_matrix.md
```

## Stage 5: Multi-SG 89+ TFLOPS — Optimization Journey

### Optimization Steps and Impact (Stage 4 → 5)

| # | Optimization | Impact | Note |
|---|-------------|--------|------|
| 1 | **Compiler config tuning** (`-perfmodel`, `Threshold=10000`) | +1.0T | `IGC_VISAOptions="-perfmodel"` +0.17T, `VectorAliasBBThreshold=10000` +0.5T |
| 2 | **Multi-SG 4 SGs (2×2)** with prefetch | **+4.0T** | Key optimization: more concurrent threads, better EU utilization |
| 3 | **Multi-SG 8 SGs (4×2)** with prefetch | **+3.7T** | Better for large N, more consistent across sizes |
| 4 | **Prefetch + multi-SG synergy** | +4T | Prefetch hurts single-SG (-2T) but helps multi-SG (+4T) |

### Key Technical Findings

1. **Multi-SG with 4×4 tiles per SG is the breakthrough** — Each SG independently computes 4×4 register tiles (32×64 output block). Multiple SGs increase concurrent threads without register spilling — each SG still gets full 256 GRF allocation.

2. **Balanced 2×2 layout is optimal for 4 SGs** — The 2×2 grid layout outperforms pure-M (4×1) or pure-N (1×4) arrangements because it balances M and N dimension work per work-group.

3. **Prefetch interacts with multi-SG** — For single-SG, prefetch hurts performance (-2T). For multi-SG, prefetch is essential (+4T). More threads competing for memory bandwidth makes software prefetch valuable.

4. **4-8 SGs is the sweet spot** — 16+ SGs shows diminishing returns, overhead exceeds benefit. The optimal range is 4 SGs (2×2) to 8 SGs (4×2) depending on problem size.

5. **Compiler flags matter** — `IGC_VISAOptions="-perfmodel"` adds ~0.17T, `IGC_VectorAliasBBThreshold=10000` (vs default 100B) adds ~0.5T. Using the wrong `VectorAliasBBThreshold` (100B vs 10K) makes a measurable difference.

### Multi-SG Architecture

```
Work-group (WG) layout for 4 SGs 2×2:

  ┌─────────────────────────────────────────┐
  │  SG0 (2×4 tiles)  │  SG1 (2×4 tiles)  │
  │  32×64 output     │  32×64 output      │
  ├───────────────────┼────────────────────┤
  │  SG2 (2×4 tiles)  │  SG3 (2×4 tiles)  │
  │  32×64 output     │  32×64 output      │
  └─────────────────────────────────────────┘
  ←── 64 output cols ──→←── 64 output cols ──→
  Total WG output: 64 rows × 128 cols

- No SLM sharing — SGs are completely independent
- sg_id determines which output block each SG computes
- Each SG gets full 256 GRF allocation (no register spilling)
```

### Optimization Attempts Summary (Stage 5)

| Approach | Result | Why |
|----------|--------|-----|
| **4 SGs 2×2 with prefetch** | **+4T (89.77T)** | More concurrent threads, better EU utilization |
| **8 SGs 4×2 with prefetch** | **+3.7T (89.63T)** | Same benefit, better for large N |
| Compiler config (`-perfmodel`, `Threshold=10000`) | +1T | Better instruction scheduling |
| Software pipelining (double-buffer) | -13T | Compiler already schedules well |
| Interleaved load-compute | -17T | Reduces ILP opportunity |
| No prefetch (single SG) | -2T | Prefetch helps single SG slightly |
| Tile sizes other than 4×4 | -22 to -50T | 4×4 is optimal for register usage |
| Multi-SG with small tiles | -30T | Register starvation |
| 16+ SGs | -2T vs 4 SGs | Thread management overhead |
| Prefetch distance sweep (k+32 to k+512) | All worse for single-SG | Hardware prefetch sufficient |
| Multi-stage prefetch (2-3 distances) | Worse | Over-prefetching |

### Remaining Gap to oneDNN (~95T)

- Current: 89.77T vs oneDNN: ~95T → gap of ~5T
- Possible avenues: SLM sharing of A tiles between SGs, K-parallel decomposition, ISA-level instruction scheduling

## Stage 4: BF16 80+ TFLOPS — Single-SG Optimization

### Optimization Steps and Impact

| # | Optimization | Impact |
|---|-------------|--------|
| 1 | **VNNI B-matrix packing** (`ext_intel_packed`) | +41% vs naive XMX |
| 2 | **K-step unroll** (k=32, 2-step explicit) | +29% baseline |
| 3 | **4×4 register blocking** (MT_M=4, MT_N=4) | +3.1% over 8×2 |
| 4 | **L1 seed prefetch** (8×32 tiles, next k-block) | +7 TFLOPS |
| 5 | **256 GRF mode** (large register file) | Essential (128 GRF → 2 TFLOPS) |
| 6 | **Split-N with per-chunk B packing** | +11 TFLOPS for large N |

### Stage 4 Key Results

| Problem Size | Method | TFLOPS | Utilization |
|-------------|--------|-------:|:-----------:|
| 8192 × 2048 × 4096 | Single kernel | **84.98** | 88.5% |
| 4096 × 4096 × 4096 | Single kernel | **81.05** | 81.9% |
| 8192 × 4096 × 4096 | Single kernel | **81.05** | 81.9% |
| 8192 × 8192 × 4096 | Split-N (4×2048) | **84.91** | 85.8% |

### Key Technical Findings (Stage 4)

1. **8×16 DPAS atom is optimal** — The device reports 32×64×16 support, but the compiler generates scalar fallback code. 8×16 atoms composed into 4×4 = 16 tiles achieves 32×64 coverage via 16 separate DPAS instructions.

2. **N dimension is the performance bottleneck** — B-matrix L2 cache behavior determines utilization. When N ≤ 4096, B rows fit well in cache → 80+ TFLOPS. At N = 8192, wider B rows cause cache thrashing → 73 TFLOPS.

3. **Split-N overcomes the N bottleneck** — Splitting N=8192 into chunks of 2048-4096, each with its own VNNI-packed B buffer (stride = N_chunk), recovers the 80+ TFLOPS rate.

4. **`-ffast-math` hurts** — Counter-intuitively reduces performance by ~8 TFLOPS on this workload.

### Negative Results (Stage 4)

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

## Correctness Verification

### Functional Correctness (tolerance: 1% relative error)

All kernels verified against CPU reference with random BF16 data:

```
Test 1: 512×512×512 single kernel            PASS (max_rel_err=0.18%)
Test 2: 1024×1024×1024 single kernel          PASS (max_rel_err=0.27%)
Test 3: 1024×2048×512 single kernel           PASS (max_rel_err=0.20%)
Test 4: 1024×1024×1024 split-N=512 (2 chunks) PASS (max_rel_err=0.36%)
Test 5: 1024×2048×512 split-N=1024 (2 chunks) PASS (max_rel_err=0.12%)
Test 6: 1024×1024×1024 split-N=256 (4 chunks) PASS (max_rel_err=0.20%)
```

### Accuracy Verification (seed=42, CPU float32 reference)

All multi-SG kernel variants verified against CPU float32 reference with BF16 inputs. BF16 has 7-bit mantissa → expected per-op rounding ~2⁻⁸ ≈ 0.39%. Accumulated over K steps, typical max error ≈ √K × 0.39%.

**All 24 tests PASS** (3 kernels × 8 sizes). All kernels produce identical results. Zero errors exceeding 1%.

| Problem Size | Max Rel Error | Mean Rel Error | Max Abs Error | Errs >1% |
|-------------|:------------:|:-------------:|:------------:|:--------:|
| 512³ | 0.022% | 0.004% | 0.00048 | 0 |
| 1024³ | 0.045% | 0.006% | 0.00098 | 0 |
| 1024×2048×512 | 0.031% | 0.004% | 0.00049 | 0 |
| 2048³ | 0.090% | 0.008% | 0.00098 | 0 |
| 2048×1024×4096 | 0.213% | 0.017% | 0.00391 | 0 |
| 4096³ | 0.221% | 0.012% | 0.00195 | 0 |
| 8192×2048×4096 | 0.230% | 0.012% | 0.00195 | 0 |
| 8192×4096×4096 | 0.403% | 0.017% | 0.00391 | 0 |

## ISA Analysis (85 TFLOPS Kernel)

The baseline kernel (4×4 tiles, k-step=32, single-SG) was JIT-compiled with 256 GRF and disassembled.

### Kernel Configuration
- **Platform**: XE2 (BMG-G21)
- **Thread config**: numGRF=256, numAcc=8, numSWSB=32
- **Instruction count**: 828
- **DPAS atom**: `dpas.8x8` (BF16, SIMD16)
- **singlePipeAtOneDistNum**: 15 (pipeline bubbles)
- **Bank conflicts**: 0

### Pipeline Structure (Per K-Step = 32)

```
┌─ Loop header: k += 32, check k < K ─────────────────────────────┐
│                                                                   │
│  ┌─ Prefetch phase ──────────────────────────────────────────┐   │
│  │  2× load_block2d.d16 → null (L1 prefetch, A+B next k)    │   │
│  │  tokens: $4, $5                                           │   │
│  └────────────────────────────────────────────────────────────┘   │
│                                                                   │
│  ┌─ Address computation ─────────────────────────────────────┐   │
│  │  ~60 ALU instructions (block2d descriptor setup)          │   │
│  └────────────────────────────────────────────────────────────┘   │
│                                                                   │
│  ┌─ Data load batch 1 ───────────────────────────────────────┐   │
│  │  10× load_block2d (4 A d32 + 5 B d16 + 1 A d32)          │   │
│  │  tokens: $6,$7,$8,$9,$10,$11,$12,$13,$14,$15              │   │
│  └────────────────────────────────────────────────────────────┘   │
│                                                                   │
│  ┌─ sync.allwr #1 ($3,$7,$8,$11,$12,$13,$14,$15) ───────────┐   │
│  │  16× dpas.8x8 (first k-sub-step: k and k+16)             │   │
│  └────────────────────────────────────────────────────────────┘   │
│                                                                   │
│  ┌─ Data load batch 2 ───────────────────────────────────────┐   │
│  │  5× load_block2d (3 A d32 + 2 B d16)                     │   │
│  │  tokens: $17,$18,$19,$20,$21                               │   │
│  └────────────────────────────────────────────────────────────┘   │
│                                                                   │
│  ┌─ sync.allwr #2 ($3,$10,$16,$17,$18,$19,$20,$21) ─────────┐   │
│  │  16× dpas.8x8 (second k-sub-step: k+16 and k+32)         │   │
│  └────────────────────────────────────────────────────────────┘   │
│                                                                   │
└─ Branch back to loop ────────────────────────────────────────────┘
```

### Load Breakdown

| Type | Count | Data Width | Purpose |
|------|------:|:----------:|---------|
| Prefetch (null dst) | 2 | d16 | L1 hint for next k-block A+B |
| A-matrix load | 8 | d32 | 4 rows × 2 K sub-steps |
| B-matrix load | 8 | d16 | 4 cols × 2 K sub-steps (VNNI packed) |
| C-matrix store | 16 | d32 | 4×4 accumulator tiles |
| **Total SENDs/iter** | **18 loads + 0 stores** | | (stores in epilogue only) |

### Performance Bottleneck Analysis (from PTI-GPU profiling)

| Stall Type | % Cycles | Cause |
|-----------|--------:|-------|
| SBID | 9–13.5% | 18 concurrent load_block2d consuming scoreboard entries |
| INSTFETCH | 5–7% | 828 instructions exceeds ICache capacity |
| ALUWR | 4–5% | DPAS write-back latency (inherent) |
| SENDWR | 2–4% | SEND dispatch wait |
| XVE Active | ~62% | Only 62% of cycles doing useful work |

## References

- [SYCL Matrix Extension Spec](https://github.com/intel/llvm/blob/sycl/sycl/doc/extensions/experimental/sycl_ext_matrix/sycl_ext_oneapi_matrix.asciidoc)
- [Intel XMX Tuning Guide](docs/xmx_tuning.md)
- [Detailed Optimization Log](BF16_OPTIMIZATION_LOG.md)

## License

MIT
