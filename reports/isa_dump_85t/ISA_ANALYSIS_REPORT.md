# ISA Analysis Report: 85 TFLOPS BF16 GEMM Kernel

**Date**: 2026-04-13
**Hardware**: Intel Arc Pro B60 (BMG-G21, Xe2), 20 Xe Cores, 2400 MHz
**Software**: oneAPI 2025.3.2, driver 1.14.36300+8, IGC git-hash `2c5a85ae`
**Kernel**: Single-SG, 4×4 register blocking, k-step=32, L1 prefetch
**Source**: `gemm_baseline_source.cpp` (snapshot of `src/kernels/bench_bf16_80t.cpp` baseline kernel)
**Performance**: 84.88 TFLOPS @ 8192×2048×4096 (85.7% of 99T theoretical peak)

---

## 1. Kernel Metadata

```
.kernel _ZTSZZZ4mainENKUlvE_clEvENKUlRN4sycl3_V17handlerEE_clES3_EUlNS1_7nd_itemILi2EEEE_
.platform XE2
.thread_config numGRF=256, numAcc=8, numSWSB=32
.instCount 828
.RA type LOCAL_FIRST_FIT_BC_RA
```

- **828 instructions**, 1451 lines total (including declarations)
- **256 GRF** (large register file mode — essential, 128 GRF → 2 TFLOPS)
- **8 accumulators**, **32 SWSB entries**

## 2. Instruction Mix

| Category | Count | Notes |
|----------|------:|-------|
| `dpas.8x8` | 32 | BF16 matrix multiply-accumulate (2 sub-steps × 16) |
| `load_block2d` | 18 | 2D block loads (2 prefetch + 16 data) |
| `store_block2d` | 16 | 2D block stores (epilogue only) |
| `sync.allwr` | 2 | Write-barrier synchronization |
| ALU (mov/add/shl/mul/etc) | ~750 | Address computation and data movement |
| `send.gtwy` (EOT) | 1 | End of thread |

## 3. Register Allocation

### Accumulator Tiles (16 × 512 bytes = 256 GRF)

| Register | Size | Purpose |
|----------|------|---------|
| r110–r125 | 512B (16 GRF) | tC[0][0] — accumulator tile (0,0) |
| r118–r133 | 512B (16 GRF) | tC[1][0] — accumulator tile (1,0) |
| r126–r141 | 512B (16 GRF) | tC[2][0] — accumulator tile (2,0) |
| r134–r149 | 512B (16 GRF) | tC[0][1] — accumulator tile (0,1) |
| r142–r157 | 512B (16 GRF) | tC[1][1] — accumulator tile (1,1) |
| r150–r165 | 512B (16 GRF) | tC[2][1] — accumulator tile (2,1) |
| r158–r173 | 512B (16 GRF) | tC[3][0] — accumulator tile (3,0) |
| r166–r181 | 512B (16 GRF) | tC[3][1] — accumulator tile (3,1) |
| r174–r189 | 512B (16 GRF) | tC[0][2] — accumulator tile (0,2) |
| r182–r197 | 512B (16 GRF) | tC[1][2] — accumulator tile (1,2) |
| r190–r205 | 512B (16 GRF) | tC[2][2] — accumulator tile (2,2) |
| r198–r213 | 512B (16 GRF) | tC[3][2] — accumulator tile (3,2) |
| r206–r221 | 512B (16 GRF) | tC[0][3] — accumulator tile (0,3) |
| r214–r229 | 512B (16 GRF) | tC[1][3] — accumulator tile (1,3) |
| r222–r237 | 512B (16 GRF) | tC[2][3] — accumulator tile (2,3) |
| r230–r245 | 512B (16 GRF) | tC[3][3] — accumulator tile (3,3) |

### A-matrix Tiles (8 × 512 bytes d32)

| Register | Token | Sub-step |
|----------|-------|----------|
| r23 (d32, 8 GRF) | $6 | k-step 0 |
| r75 (d32, 8 GRF) | $7 | k-step 0 |
| r43 (d32, 8 GRF) | $12 | k-step 0 |
| r59 (d32, 8 GRF) | $14 | k-step 0 |
| r83 (d32, 8 GRF) | $10 | k-step 1 |
| r35 (d32, 8 GRF) | $16 | k-step 1 |
| r51 (d32, 8 GRF) | $17 | k-step 1 |
| r67 (d32, 8 GRF) | $18 | k-step 1 |

### B-matrix Tiles (8 × 256 bytes d16, VNNI packed)

| Register | Token | Sub-step |
|----------|-------|----------|
| r19 (d16, 4 GRF) | $8 | k-step 0 |
| r31 (d16, 4 GRF) | $9 | k-step 0 |
| r99 (d16, 4 GRF) | $11 | k-step 0 |
| r95 (d16, 4 GRF) | $13 | k-step 0 |
| r15 (d16, 4 GRF) | $15 | k-step 0 |
| r11 (d16, 4 GRF) | $19 | k-step 1 |
| r103 (d16, 4 GRF) | $20 | k-step 1 |
| r91 (d16, 4 GRF) | $21 | k-step 1 |

> Note: A-tiles share GRF space (renamed by hardware). B-tiles at d16 (4 GRF each) are smaller due to VNNI packing.

## 4. Pipeline Structure

```
Main Loop (k += 32, labels _0_013 → _0_012)
│
├─ [L900-903]   Loop header: k += 32, cmp k < K, branch exit
│
├─ [L904-941]   PREFETCH PHASE (~38 ALU inst)
│   ├── Compute block2d descriptors for next k-block A and B
│   ├── load_block2d.d16 → null [r5:1]  {$4}  ← prefetch A (L1)
│   └── load_block2d.d16 → null [r8:1]  {$5}  ← prefetch B (L1)
│
├─ [L943-1062]  ADDRESS COMPUTATION (~120 ALU inst)
│   └── Compute block2d descriptors for all 16 data loads
│
├─ [L1063-1133] DATA LOAD BATCH 1 (10 loads)
│   ├── load_block2d.d32 → r23  {$6}    A[0] sub-step 0
│   ├── load_block2d.d32 → r75  {$7}    A[1] sub-step 0
│   ├── load_block2d.d16 → r19  {$8}    B[0] sub-step 0
│   ├── load_block2d.d16 → r31  {$9}    B[1] sub-step 0
│   ├── load_block2d.d32 → r83  {$10}   A[2] sub-step 1
│   ├── load_block2d.d16 → r99  {$11}   B[2] sub-step 0
│   ├── load_block2d.d32 → r43  {$12}   A[3] sub-step 0
│   ├── load_block2d.d16 → r95  {$13}   B[3] sub-step 0
│   ├── load_block2d.d32 → r59  {$14}   A[4] sub-step 0
│   ├── load_block2d.d16 → r15  {$15}   B[4] sub-step 0
│   └── load_block2d.d32 → r35  {$16}   A[5] sub-step 1
│
├─ [L1173]      sync.allwr ($3,$7,$8,$11,$12,$13,$14,$15)
│
├─ [L1174-1189] DPAS BATCH 1 — 16 dpas.8x8 (sub-step 0)
│   ├── dpas r110 = r110 + r23 × r19   tC[0][0] += A[0]*B[0]  {$6.dst}
│   ├── dpas r134 = r134 + r75 × r19   tC[0][1] += A[1]*B[0]
│   ├── dpas r174 = r174 + r23 × r99   tC[0][2] += A[0]*B[2]
│   ├── dpas r198 = r198 + r75 × r99   tC[0][3] += A[1]*B[2]
│   ├── dpas r118 = r118 + r43 × r19   tC[1][0] += A[3]*B[0]
│   ├── dpas r182 = r182 + r43 × r99   tC[1][2] += A[3]*B[2]
│   ├── dpas r142 = r142 + r23 × r95   tC[1][1] += A[0]*B[3]
│   ├── dpas r150 = r150 + r43 × r95   tC[1][1] += A[3]*B[3]
│   ├── dpas r166 = r166 + r75 × r95   tC[3][1] += A[1]*B[3]
│   ├── dpas r126 = r126 + r59 × r19   tC[2][0] += A[4]*B[0]
│   ├── dpas r158 = r158 + r59 × r95   tC[3][0] += A[4]*B[3]
│   ├── dpas r190 = r190 + r59 × r99   tC[2][2] += A[4]*B[2]
│   ├── dpas r206 = r206 + r23 × r15   tC[0][3] += A[0]*B[4]
│   ├── dpas r214 = r214 + r43 × r15   tC[1][3] += A[3]*B[4]
│   ├── dpas r222 = r222 + r59 × r15   tC[2][3] += A[4]*B[4]
│   └── dpas r230 = r230 + r75 × r15   tC[3][3] += A[1]*B[4]  {$3}
│
├─ [L1168-1172] DATA LOAD BATCH 2 (5 loads, interleaved)
│   ├── load_block2d.d32 → r51  {$17}   A[6] sub-step 1
│   ├── load_block2d.d32 → r67  {$18}   A[7] sub-step 1
│   ├── load_block2d.d16 → r11  {$19}   B[5] sub-step 1
│   ├── load_block2d.d16 → r103 {$20}   B[6] sub-step 1
│   └── load_block2d.d16 → r91  {$21}   B[7] sub-step 1
│
├─ [L1190]      sync.allwr ($3,$10,$16,$17,$18,$19,$20,$21)
│
├─ [L1191-1206] DPAS BATCH 2 — 16 dpas.8x8 (sub-step 1)
│   ├── dpas r110 = r110 + r35 × r31   tC[0][0] += A[5]*B[1]  {$9.dst}
│   ├── dpas r134 = r134 + r83 × r31   tC[0][1] += A[2]*B[1]
│   ├── dpas r118 = r118 + r51 × r31   tC[1][0] += A[6]*B[1]
│   ├── dpas r126 = r126 + r67 × r31   tC[2][0] += A[7]*B[1]
│   ├── dpas r142 = r142 + r35 × r11   tC[1][1] += A[5]*B[5]
│   ├── dpas r150 = r150 + r51 × r11   tC[1][1] += A[6]*B[5]
│   ├── dpas r158 = r158 + r67 × r11   tC[3][0] += A[7]*B[5]
│   ├── dpas r166 = r166 + r83 × r11   tC[3][1] += A[2]*B[5]
│   ├── dpas r206 = r206 + r35 × r103  tC[0][3] += A[5]*B[6]
│   ├── dpas r214 = r214 + r51 × r103  tC[1][3] += A[6]*B[6]
│   ├── dpas r222 = r222 + r67 × r103  tC[2][3] += A[7]*B[6]
│   ├── dpas r230 = r230 + r83 × r103  tC[3][3] += A[2]*B[6]
│   ├── dpas r174 = r174 + r35 × r91   tC[0][2] += A[5]*B[7]
│   ├── dpas r182 = r182 + r51 × r91   tC[1][2] += A[6]*B[7]
│   ├── dpas r190 = r190 + r67 × r91   tC[2][2] += A[7]*B[7]
│   └── dpas r198 = r198 + r83 × r91   tC[0][3] += A[2]*B[7]  {$3}
│
└─ [L1207]      jmpi _0_012 (loop back)
```

## 5. Scoreboard Token Map

```
Token  Type               Phase           sync.allwr
─────  ─────────────────  ──────────────  ──────────
$3     pipeline carry     both batches    #1, #2
$4     prefetch A (null)  prefetch        —
$5     prefetch B (null)  prefetch        —
$6     load A[0] d32      batch 1         → $6.dst (dpas direct dep)
$7     load A[1] d32      batch 1         #1
$8     load B[0] d16      batch 1         #1
$9     load B[1] d16      batch 1         → $9.dst (dpas direct dep)
$10    load A[2] d32      batch 1         #2
$11    load B[2] d16      batch 1         #1
$12    load A[3] d32      batch 1         #1
$13    load B[3] d16      batch 1         #1
$14    load A[4] d32      batch 1         #1
$15    load B[4] d16      batch 1         #1
$16    load A[5] d32      batch 1         #2
$17    load A[6] d32      batch 2         #2
$18    load A[7] d32      batch 2         #2
$19    load B[5] d16      batch 2         #2
$20    load B[6] d16      batch 2         #2
$21    load B[7] d16      batch 2         #2
```

- **19 unique tokens** used out of 32 SWSB entries
- **tokenReuseCount: 0** — no token recycling within loop body
- Tokens $6 and $9 use `.dst` dependency on dpas (compiler bypasses barrier for earliest consumer)

## 6. Compiler Scheduling Statistics

```
singlePipeAtOneDistNum: 15    // pipeline bubbles
allAtOneDistNum: 4            // all-issue distances
syncInstCount: 2              // sync.allwr barriers
tokenReuseCount: 0            // no token reuse
BankConflicts: 0              // no bank conflicts
ByteRMWs: 0                   // no read-modify-write
numALUInst: 750               // total ALU instructions
```

## 7. Performance Bottleneck Analysis

From PTI-GPU `unitrace` profiling (VectorEngineStalls):

| Stall Type | % Cycles | Root Cause | Optimization Potential |
|-----------|--------:|-----------|----------------------|
| **SBID** | 9–13.5% | 18 concurrent load_block2d consuming scoreboard entries; multi-thread contention on shared SBID pool (32 entries / 8 threads per XVE) | Reduce concurrent SENDs or reduce thread count |
| **INSTFETCH** | 5–7% | 828 instructions exceeds ICache capacity (~512 inst per cache) | Reduce instruction count (simpler tiling) |
| **ALUWR** | 4–5% | DPAS write-back latency (inherent to 8×8 atom) | Use larger DPAS atom if hardware supports |
| **SENDWR** | 2–4% | SEND dispatch contention | Reduce SEND count |
| PIPESTALL | 2–3% | Pipe resource contention | — |
| **XVE Active** | **~62%** | Only 62% of cycles doing useful XMX work | — |

**Theoretical max if all stalls eliminated**: 85 / 0.62 ≈ 137 TFLOPS (capped at 99T hardware peak)

**Remaining gap**: 99T peak - 85T achieved = 14T (14.2% of peak)

## 8. Block2D Load Descriptors

```
Prefetch A:  shape=1x32x8  (1 plane, 32 bytes wide, 8 rows)   → 256 bytes
Prefetch B:  shape=1x32x8  (same)                              → 256 bytes
A-matrix:    shape=1x16x8  (1 plane, 16 bytes wide, 8 rows)   → 128 bytes × 2 = d32
B-matrix:    shape=1x16x8  (1 plane, 16 bytes wide, 8 rows)   → d16 (VNNI packed)
C-store:     shape=1x16x8  (d32, float output)                 → 128 bytes × 2
```

## 9. Files

| File | Description |
|------|-------------|
| `gemm_baseline_source.cpp` | Source code snapshot used to generate this ISA dump |
| `*_simd16_entry_0001.asm` | Main kernel ISA (Xe2 assembly) — the primary analysis target |
| `*_simd16_entry_0001.isaasm` | Binary ISA encoding |
| `*_simd16_entry_0001.visaasm` | VISA intermediate representation |
| `*_simd16_entry_0001.visa.ll` | VISA LLVM IR |
| `*_options.txt` | IGC compilation options |
| `*_internal_options.txt` | IGC internal options |
| `*_cmd.txt` | Original compilation command |
| `*.zeinfo` | Kernel metadata (Zebin format) |

## 10. Reproducing the ISA Dump

```bash
# 1. Build the baseline kernel
cd sycl-xmx-gemm
bash scripts/build.sh

# 2. Run with ISA dump enabled
export ONEAPI_DEVICE_SELECTOR=level_zero:gpu
export IGC_ExtraOCLOptions="-cl-intel-256-GRF-per-thread -dumpvisa -dumpschedule"
export IGC_ShaderDumpEnable=1
export IGC_DumpToCurrentDir=1
export SYCL_PROGRAM_COMPILE_OPTIONS="-ze-opt-large-register-file -gline-tables-only"
export IGC_VectorAliasBBThreshold=100000000000

./build/bench_bf16_80t 10 50
# ASM files will appear as OCL_asm*_simd16_entry_*.asm in current directory
```
