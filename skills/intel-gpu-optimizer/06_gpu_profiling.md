# Intel GPU Kernel Profiling — Methodology & Analysis Guide

## Profiling Workflow

### Step 1: Identify Hot Kernels

```bash
source /opt/intel/oneapi/setvars.sh
export ONEAPI_DEVICE_SELECTOR=level_zero:gpu
export IGC_ExtraOCLOptions="-cl-intel-256-GRF-per-thread"
export SYCL_PROGRAM_COMPILE_OPTIONS="-ze-opt-large-register-file -gline-tables-only"

cd /path/to/pti-gpu/samples/ze_hot_kernels/build
./ze_hot_kernels <your_app> [args]
```

**Output**: Per-kernel call count, total time, average time, SIMD width. Identifies which kernels dominate runtime.

### Step 2: Collect Hardware Metrics

```bash
cd /path/to/pti-gpu/tools/unitrace/build

# Per-kernel metric query (recommended for GEMM profiling)
./unitrace -q -g VectorEngineProfile -o output.csv <your_app> [args]

# Alternative metric groups:
#   ComputeBasic       — EU active/stall, L3 cache, memory BW
#   VectorEngineProfile — Same + XMX instruction counts (BF16/FP16/INT8)
#   VectorEngineStalls — Detailed stall breakdown (ALUWR, SENDWR, etc.)
#   MemoryProfile      — Focused memory bandwidth analysis
#   DeviceCacheProfile — Detailed cache behavior
```

**Output**: CSV file with per-kernel-instance metrics at `<output>.metrics.<pid>.csv`.

### Step 3: Analyze Metrics

Key metrics for compute-bound XMX kernels:

| Metric | What It Tells You | Ideal Value |
|--------|-------------------|-------------|
| `XVE_ACTIVE[%]` | % time at least one pipe is active | >90% for compute-bound |
| `XVE_STALL[%]` | % time threads loaded but all pipes stalled | <10% |
| `XVE Idle` | `100% - ACTIVE - STALL` | <5% |
| `XVE_THREADS_OCCUPANCY_ALL[%]` | Thread slot utilization | >90% |
| `XVE_MULTIPLE_PIPE_ACTIVE[%]` | Instruction-level parallelism | >50% is good |
| `XVE_INST_EXECUTED_XMX_BF16` | BF16 XMX instruction count | Should dominate |
| `XVE_INST_EXECUTED_SEND_ALL` | Memory load/store instructions | Lower ratio = better |
| `L3_HIT / (L3_HIT + L3_MISS)` | L3 cache hit rate | >85% is good |
| `L3_BUSY[%]` | Cache utilization | High is OK |
| `GPU_MEMORY_BYTE_READ_RATE` | DRAM read bandwidth | Compare to peak |
| `GPU_MEMORY_BYTE_WRITE_RATE` | DRAM write bandwidth | Compare to peak |

### Step 4: Interpret Results

#### Pattern: High XVE_ACTIVE, High XMX, Low Memory BW
**Compute-bound**. Kernel is well-optimized. To improve: reduce instruction count or increase XMX throughput.

#### Pattern: Low XVE_ACTIVE (~60%), High Occupancy, Low Memory BW
**Pipeline underutilization**. The GPU has threads loaded but pipes are idle. Causes:
- Instruction scheduling gaps between loads and compute
- Register dependency chains preventing parallel execution
- Compiler not generating enough ILP

**Fix**: Software pipelining, double buffering, different unroll patterns.

#### Pattern: Low XVE_ACTIVE, High Memory BW
**Memory-bound**. DRAM bandwidth saturated.

**Fix**: Increase arithmetic intensity (more DPAS per load), improve cache reuse.

#### Pattern: High XVE_STALL
**Stall-bound**. Threads are waiting on something.

**Fix**: Use `VectorEngineStalls` metric group to identify stall type:
- `XVE_STALL_SENDWR`: Waiting for memory writes — reduce stores or overlap with compute
- `XVE_STALL_ALUWR`: Waiting for ALU result — break dependency chains
- `XVE_STALL_SBID`: Scoreboard token contention — reduce simultaneous sends
- `XVE_STALL_INSTFETCH`: Instruction cache miss — kernel too large

## Real Example: BF16 GEMM on Intel Arc Pro B60

### Profiled Kernel (8192×4096×4096, single kernel)

```
XVE Active:      61.2%    ← BOTTLENECK: 39% idle
Thread Occupancy: 98.4%    ← Good
Multi-pipe:       16.9%    ← Low ILP
XMX BF16:        536M (84.6% of issued)  ← Correct
SEND:             40M      ← Load instructions
L3 Hit Rate:      90.2%    ← Good
Memory BW:        128 GB/s (28% of 456)  ← NOT bandwidth-bound
```

**Diagnosis**: Pipeline underutilization. 39% idle despite full occupancy. The 40M SEND instructions between 536M XMX instructions create pipeline bubbles. Low multi-pipe (16.9%) confirms compiler isn't scheduling enough ILP.

**Action Plan**:
1. Software pipelining — overlap loads and compute
2. Increase prefetch distance
3. Try different unroll patterns to reduce SEND/XMX ratio
4. ISA dump to check compiler scheduling (last resort)

## Useful Metric Groups Reference

### VectorEngineProfile (recommended for XMX kernels)
Contains: XMX_BF16/FP16/INT8 instruction counts, pipe utilization, L3 cache, memory BW, thread occupancy.

### VectorEngineStalls (for stall analysis)
Contains: Per-stall-reason breakdown (ALUWR, SENDWR, BARRIER, CONTROL, INSTFETCH, PIPESTALL, SBID, OTHER).

### ComputeBasic (lightweight)
Contains: EU active/stall/idle, L3 cache, instruction counts (ALU0/1/2, SEND). No XMX-specific counters.

### MemoryProfile (for memory-bound kernels)
Contains: DRAM read/write bandwidth, L3 cache details, TLB misses.

## unitrace CLI Reference

```bash
# Device timing only
./unitrace -d <app>

# Device timing with kernel details
./unitrace -d -v <app>

# Per-kernel metric query (low overhead)
./unitrace -q -g <metric_group> -o output.csv <app>

# Metric sampling (time-based, higher overhead)
./unitrace -k -g <metric_group> -i 50 -o output.csv <app>

# List available metrics
./unitrace --metric-list

# List available devices
./unitrace --device-list

# Include only specific kernels
./unitrace -q -g ComputeBasic --include-kernels "bench" <app>

# Chrome trace output (for timeline visualization)
./unitrace -d --chrome-kernel-logging -o trace.json <app>
```

## Python Analysis Script Template

```python
import csv

with open('metrics.csv') as f:
    # Skip header lines until "Kernel,..." line
    lines = f.readlines()
    header_idx = next(i for i, l in enumerate(lines) if l.startswith('Kernel,'))
    reader = csv.reader(lines[header_idx:])
    header = next(reader)
    cols = {h: i for i, h in enumerate(header)}

    for row in reader:
        if not row[0].strip() or 'fill' in row[0].lower():
            continue
        gpu_time = float(row[cols['GpuTime[ns]']]) / 1e6
        xve_active = float(row[cols['XVE_ACTIVE[%]']])
        xmx_bf16 = int(row[cols['XVE_INST_EXECUTED_XMX_BF16[events]']])
        l3_hit = int(row[cols['L3_HIT[events]']])
        l3_miss = int(row[cols['L3_MISS[events]']])
        mem_read_rate = float(row[cols['GPU_MEMORY_BYTE_READ_RATE[GBpS]']])
        # ... add more metrics as needed
        print(f"Time={gpu_time:.2f}ms  Active={xve_active:.1f}%  "
              f"L3={l3_hit/(l3_hit+l3_miss)*100:.1f}%  BW={mem_read_rate:.0f}GB/s")
```
