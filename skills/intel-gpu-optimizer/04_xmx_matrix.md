# XMX Matrix Extensions & BF16 GEMM Optimization

Hardware-accelerated matrix operations via `joint_matrix` API on Intel Xe2.

---

## XMX Hardware Overview

| Specification | Value |
|---|---|
| **Architecture** | Xe2 (BMG / Battlemage) |
| **GPU** | Intel Arc Pro B60 |
| **Xe Cores** | 20 |
| **EU/XeCore** | 8 |
| **DPAS Atom (BF16)** | 8×16×16 (M×N×K) |
| **DPAS Atom (FP16)** | 8×16×16 (M×N×K) |
| **DPAS Atom (INT8)** | 8×16×32 (M×N×K) |
| **Sub-group Size** | 16 (SYCL), 8 (oneDNN JIT) |
| **BF16 Peak** | ~99 TFLOPS |
| **SLM/XeCore** | 128 KB |
| **GRF Mode** | 256 (required for BF16 GEMM) |

---

## Best Achieved Performance (89.77 TFLOPS, 90.7% utilization)

| Problem Size | Config | Best TFLOPS | Avg TFLOPS |
|-------------|--------|----------:|----------:|
| 8192×2048×4096 | 4SG 2×2 + pf | **89.77** | 88.65 |
| 8192×4096×4096 | 8SG 4×2 + pf | **87.60** | 86.17 |
| 4096×4096×4096 | 8SG 4×2 + pf | **87.62** | 86.27 |
| 8192×8192×4096 | 8SG 4×2 + pf | **80.03** | 78.36 |

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
export IGC_VISAOptions="-perfmodel"
export IGC_VectorAliasBBThreshold=10000
```

> **Warning**: Without `IGC_ExtraOCLOptions="-cl-intel-256-GRF-per-thread"`, BF16 GEMM drops from 80+ TFLOPS to ~2 TFLOPS due to catastrophic register spilling.

---

## BF16 GEMM — Best Kernel Pattern (Multi-SG)

### Architecture: 4 SGs (2×2) per Work-Group

```
┌────────────┬────────────┐
│  SG0 4×4   │  SG1 4×4   │
│  32×64     │  32×64     │
├────────────┼────────────┤
│  SG2 4×4   │  SG3 4×4   │
│  32×64     │  32×64     │
└────────────┴────────────┘
  WG output: 64×128
```

```cpp
#include <sycl/sycl.hpp>
#include <sycl/ext/oneapi/bfloat16.hpp>
#include <sycl/ext/oneapi/matrix/matrix.hpp>

namespace matrix = sycl::ext::oneapi::experimental::matrix;
using bf16 = sycl::ext::oneapi::bfloat16;

constexpr int TM = 8, TN = 16, TK = 16, SG_SZ = 16, VNNI = 2;
constexpr int MT_M = 4, MT_N = 4;          // tiles per SG
constexpr int N_SG_M = 2, N_SG_N = 2;      // 2×2 SG grid
constexpr int SG_OUT_M = MT_M * TM;         // 32
constexpr int SG_OUT_N = MT_N * TN;         // 64
constexpr int WG_OUT_M = N_SG_M * SG_OUT_M; // 64
constexpr int WG_OUT_N = N_SG_N * SG_OUT_N; // 128
constexpr int N_SG_TOTAL = N_SG_M * N_SG_N; // 4

void gemm_bf16_multisg(sycl::queue& q, bf16* dA, bf16* dBv, float* dC,
                        int M, int N, int K) {
    int wg_m = M / WG_OUT_M, wg_n = N / WG_OUT_N;

    q.submit([&](sycl::handler& h) {
        h.parallel_for(
            sycl::nd_range<2>(
                sycl::range<2>(wg_m * N_SG_TOTAL * SG_SZ, wg_n),
                sycl::range<2>(N_SG_TOTAL * SG_SZ, 1)),
            [=](sycl::nd_item<2> item) [[sycl::reqd_sub_group_size(SG_SZ)]] {
                sycl::sub_group sg = item.get_sub_group();
                int sg_id = sg.get_group_id()[0];
                int sg_m = sg_id / N_SG_N;
                int sg_n = sg_id % N_SG_N;
                int gm = item.get_group(0), gn = item.get_group(1);
                int out_m = gm * WG_OUT_M + sg_m * SG_OUT_M;
                int out_n = gn * WG_OUT_N + sg_n * SG_OUT_N;

                auto pA = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dA);
                auto pBv = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dBv);
                auto pC = sycl::address_space_cast<sycl::access::address_space::global_space,sycl::access::decorated::no>(dC);

                matrix::joint_matrix<sycl::sub_group,float,matrix::use::accumulator,TM,TN> sub_c[MT_M][MT_N];
                for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++) matrix::joint_matrix_fill(sg,sub_c[i][j],0.0f);

                for(int k=0;k<K;k+=32) {
                    // Prefetch A+B for next k-block
                    int kpf=k+32;
                    if(kpf<K) {
                        matrix::joint_matrix_prefetch<8,32>(sg,dA+(out_m)*K+kpf,K,matrix::layout::row_major,sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                        matrix::joint_matrix_prefetch<8,32>(sg,dBv+(size_t)(kpf/2)*(N*2)+(size_t)(out_n)*2,N*2,matrix::layout::row_major,sycl::ext::oneapi::experimental::properties{sycl::ext::oneapi::experimental::prefetch_hint_L1});
                    }
                    // Load 2 K sub-steps
                    matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::a,TM,TK,matrix::layout::row_major> sub_a0[MT_M],sub_a1[MT_M];
                    matrix::joint_matrix<sycl::sub_group,bf16,matrix::use::b,TK,TN,matrix::layout::ext_intel_packed> sub_b0[MT_N],sub_b1[MT_N];
                    for(int i=0;i<MT_M;i++){matrix::joint_matrix_load(sg,sub_a0[i],pA+(out_m+i*TM)*K+k,K);matrix::joint_matrix_load(sg,sub_a1[i],pA+(out_m+i*TM)*K+(k+TK),K);}
                    for(int j=0;j<MT_N;j++){int n0=out_n+j*TN;matrix::joint_matrix_load(sg,sub_b0[j],pBv+(size_t)(k/2)*(N*2)+(size_t)n0*2,N*2);matrix::joint_matrix_load(sg,sub_b1[j],pBv+(size_t)((k+TK)/2)*(N*2)+(size_t)n0*2,N*2);}
                    for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++){matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a0[i],sub_b0[j],sub_c[i][j]);matrix::joint_matrix_mad(sg,sub_c[i][j],sub_a1[i],sub_b1[j],sub_c[i][j]);}
                }
                for(int i=0;i<MT_M;i++) for(int j=0;j<MT_N;j++)
                    matrix::joint_matrix_store(sg,sub_c[i][j],pC+(out_m+i*TM)*N+out_n+j*TN,N,matrix::layout::row_major);
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

## Optimization Decision Tree

```
GEMM problem size?
├── N ≤ 4096?
│   ├── Multi-SG (4 SGs 2×2 + A+B prefetch)
│   └── Expected: 87-90 TFLOPS (88-91% utilization)
│
├── N > 4096?
│   ├── Multi-SG (8 SGs 4×2 + A+B prefetch)
│   └── Expected: 78-80 TFLOPS
│   │
│   └── Alternative: split-N into 2048-4096 chunks
│       └── Expected: 84-85 TFLOPS effective
│
└── Very small matrices (< 256)?
    └── XMX overhead dominates, use naive approach
```

---

## What Works (Verified on Arc Pro B60)

| Technique | Impact | Details |
|-----------|--------|---------|
| **Multi-SG (4-8 SGs/WG)** | **+4 TFLOPS** | Key Stage 5 optimization. Each SG keeps full 4×4 tiles in 256 GRF |
| VNNI B packing (`ext_intel_packed`) | +41% | Essential for DPAS efficiency |
| K-step=32 explicit 2-step unroll | +29% | `sub_a0`/`sub_a1` flat arrays |
| 4×4 register blocking | +3.1% | Best balance of compute vs registers |
| A+B prefetch (k+32) | +7T single, +4T multi-SG | L1 prefetch of next k-block |
| 256 GRF mode | Essential | 128 GRF → catastrophic spill (2T) |
| Split-N for large N | +11 TFLOPS | Per-chunk VNNI-packed B buffers |
| Compiler: `-perfmodel` | +0.17T | `IGC_VISAOptions="-perfmodel"` |
| Compiler: `Threshold=10000` | +0.5T | `IGC_VectorAliasBBThreshold=10000` |
| Balanced 2×2 SG layout | Best | Outperforms pure-M or pure-N layouts |

## What Doesn't Work (Verified on Arc Pro B60)

| Technique | Result | Why |
|-----------|--------|-----|
| **SLM tiling (scalar cooperative load)** | **1.4-4.8T** | Scalar element-by-element copy ~24× slower than Block2D |
| **k-step=64 (4×4 tiles)** | **1.5T** | Register spilling (Spill=512B) |
| **B-only prefetch** (full run) | **-3T** | Quick-mode showed +1T but full run reveals it hurts |
| **Software pipelining** (double-buffer) | -13T | Compiler already schedules pipeline well |
| **Interleaved load-compute** | -17T | Reduces ILP opportunity |
| Native 32×64 joint_matrix | 1.26T | Compiler generates scalar fallback |
| 16×16 DPAS atom | 1.02T | Register spilling |
| Tile sizes other than 4×4 | -22 to -50T | 4×4 is optimal for register usage |
| Multi-SG with small tiles (1×1, 2×2) | -30T | Register starvation per SG |
| 16+ SGs per WG | -2T vs 4 SGs | Thread management overhead |
| `-ffast-math` | -8T | Unknown compiler regression |
| Prefetch distance > k+32 (single-SG) | -2 to -18T | Cache pollution, HW prefetch sufficient |
| Multi-stage prefetch | -3T | Over-prefetching |

### Key Lessons Learned

1. **Always verify quick-mode results with full benchmarks** (100/500). B-only prefetch looked like +1T in 10/50 but was -3T in 100/500 — insufficient warmup.

2. **4×4 tiles is the only viable register blocking** for BF16 on Xe2 with 256 GRF. All other tile sizes cause spilling or underutilization.

3. **Multi-SG only works with full 4×4 tiles per SG**. Previous attempts with smaller tiles failed because each SG didn't get enough GRF.

4. **Prefetch behavior depends on SG count**. Prefetch hurts single-SG (-2T) but helps multi-SG (+4T). More threads competing for memory makes software prefetch valuable.

5. **SLM is not viable in SYCL for GEMM** on BMG. SYCL lacks Block2D → SLM primitives. Scalar copies are catastrophically slow.

6. **SYCL compiler vs oneDNN JIT gap** (~5T). oneDNN generates native ZEBIN with full control over register allocation, Block2D loads, and software pipeline. SYCL joint_matrix abstracts these away.

---

## XMX Checklist

- [ ] Use 8×16 DPAS atom (NOT 16×16 or 32×64 native)
- [ ] VNNI-pack B matrix with `ext_intel_packed` layout
- [ ] 4×4 register blocking (MT_M=4, MT_N=4)
- [ ] Multi-SG: 4 SGs (2×2) or 8 SGs (4×2) per work-group
- [ ] Declare all A/B joint_matrices as flat arrays before load
- [ ] Load ALL tiles before ANY compute
- [ ] A+B L1 prefetch of next k-block (k+32)
- [ ] 256 GRF mode via env vars (CRITICAL)
- [ ] Compiler flags: `-perfmodel`, `VectorAliasBBThreshold=10000`
- [ ] FP32 accumulator (not BF16)
- [ ] Sub-group size 16: `[[sycl::reqd_sub_group_size(16)]]`
- [ ] For N > 4096: use split-N or 8 SGs 4×2
- [ ] Verify quick-mode results with 100/500 full benchmark

---

## XMX Troubleshooting

| Symptom | Cause | Fix |
|---------|-------|-----|
| `no member named 'joint_matrix'` | Missing include | Add `#include <sycl/ext/oneapi/matrix/matrix.hpp>` |
| 1-2 TFLOPS (catastrophic) | Register spilling | Add `-cl-intel-256-GRF-per-thread` |
| ~26 TFLOPS | MT_N > 4 | Use MT_N=4 max |
| Scalar code generated | Native 32×64 shape | Use 8×16 atoms + register blocking |
| Correctness fails with random data | Multi-SG indexing bug | Use `sg.get_group_id()[0]` not `get_local_id` |
| Performance drops at N=8192 | B cache thrashing | Use split-N or 8 SGs 4×2 |
| Quick mode shows improvement but full run doesn't | Insufficient warmup | Always test with 100+ warmup |
| SLM kernel extremely slow | Scalar cooperative loading | SYCL lacks Block2D→SLM; avoid SLM |

---

## Remaining Gap to oneDNN (~95T)

| Parameter | Our SYCL | oneDNN JIT |
|-----------|----------|------------|
| Compilation | SYCL joint_matrix | Native ISA (ZEBIN) |
| Sub-group size | 16 | 8 (doubles occupancy) |
| SGs per WG | 4-8 | 16-64 |
| SLM | Not viable in SYCL | Block2D cooperative + triple buffer |
| K-loop | Single pass | K-parallel with atomics |
| Pipeline | Compiler decides | Explicit LoopSequencer |
| C-tile walk | Simple row-major | Hilbert/boustrophedon |

Potential avenues: SG=8 with joint_matrix, K-parallel decomposition, group_load/group_store for SLM.

### Exhausted Avenues (All Tested, All Failed)

| Avenue | Result | Why |
|--------|--------|-----|
| SG=8 with joint_matrix | **Not supported** | BMG SYCL runtime: "Sub-group size 8 is not supported on the device" |
| K-parallel decomposition | **-7 to -19 TFLOPS** | Kernel launch overhead + CPU reduction + B re-streaming. oneDNN uses device atomics |
| SLM cooperative load | **1.4-4.8T** | Scalar element-by-element ~24x slower than Block2D. SYCL lacks Block2D→SLM |
| SLM async memcpy | **Correct but slow** | Same scalar bottleneck; no SYCL bulk SLM transfer API |

**Conclusion**: The ~5T gap to oneDNN (89.77T vs ~95T) is primarily from SYCL compiler/runtime limitations:
- SG=8 not exposed in SYCL
- No Block2D→SLM cooperative load in SYCL
- No device-side K-parallel atomics in SYCL
- Compiler controls pipeline scheduling (manual restructuring hurts)
