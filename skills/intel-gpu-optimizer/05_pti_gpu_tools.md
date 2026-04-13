# Intel PTI-GPU Profiling Tools — Build & Install Guide

## Overview

Intel PTI-GPU (Profiling Tools Interfaces for GPU) provides lightweight, kernel-level profiling for Intel GPUs via Level Zero and OpenCL. It exposes hardware metrics like EU active/stall/idle, XMX instruction counts, cache hit rates, and memory bandwidth.

- **Repo**: https://github.com/intel/pti-gpu
- **License**: MIT
- **Supports**: Intel Gen9+ GPUs including Arc Pro B60 (BMG/Xe2)

## Prerequisites

### System Requirements
- Linux (kernel 5.15+)
- Intel GPU with Level Zero driver
- CMake 3.12+, GCC 12+, Python 3.6+

### Required Packages (Ubuntu/Debian)

```bash
# Level Zero loader and development headers
sudo apt install libze1 libze-dev

# Intel GPU Level Zero driver
sudo apt install libze-intel-gpu1

# Intel Graphics Compiler runtime
sudo apt install libigc2

# Metrics libraries (runtime only, no -dev needed)
sudo apt install intel-metrics-discovery intel-metrics-library

# Intel oneAPI Base Toolkit (for icpx and PTI SDK headers)
# Install from https://www.intel.com/content/www/us/en/developer/tools/oneapi/base-toolkit-download.html
```

### Kernel Driver Configuration

For **xe** driver (BMG and newer):
```bash
# Enable metric collection (requires root or set to 0)
echo 0 | sudo tee /proc/sys/dev/xe/observation_paranoid
```

For **i915** driver (older GPUs):
```bash
echo 0 | sudo tee /proc/sys/dev/i915/perf_stream_paranoid
```

### Environment Setup

```bash
# Source oneAPI (required for icpx compiler and PTI SDK)
source /opt/intel/oneapi/setvars.sh

# Verify Level Zero is working
export ONEAPI_DEVICE_SELECTOR=level_zero:gpu
```

## Clone & Build

```bash
git clone https://github.com/intel/pti-gpu.git
cd pti-gpu
```

### Build Pattern (per-sample)

Each tool builds independently:

```bash
cd samples/<tool_name>
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j$(nproc)
```

### Metric Tools — Header Fix

Metric-dependent tools (`ze_metric_info`, `ze_metric_query`, `ze_metric_streamer`) need `metrics_discovery_api.h`. If the `-dev` package is missing, copy the header from another tool's build:

```bash
# Build gpuinfo first (it auto-downloads the header)
cd tools/gpuinfo && mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release .. && make -j$(nproc)

# Copy header to metric samples
cp metrics_discovery_api.h ../../../samples/ze_metric_info/build/
cp metrics_discovery_api.h ../../../samples/ze_metric_query/build/
cp metrics_discovery_api.h ../../../samples/ze_metric_streamer/build/

# Now build metric tools with extra include flag
cd ../../../samples/ze_metric_info
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS="-I$(pwd)" ..
make -j$(nproc)
```

## Key Tools Quick Reference

| Tool | Path | Purpose | Build Difficulty |
|------|------|---------|-----------------|
| `ze_info` | `samples/ze_info/` | GPU device info | Easy |
| `ze_hot_kernels` | `samples/ze_hot_kernels/` | Kernel timing per invocation | Easy |
| `ze_metric_info` | `samples/ze_metric_info/` | List available HW metrics | Medium (header fix) |
| `ze_metric_query` | `samples/ze_metric_query/` | Per-kernel EU active/stall | Medium (header fix) |
| `ze_metric_streamer` | `samples/ze_metric_streamer/` | Continuous metric streaming | Medium (header fix) |
| `gpuinfo` | `tools/gpuinfo/` | GPU capabilities + metrics | Easy |
| `unitrace` | `tools/unitrace/` | Full profiling suite | Easy |
| `instcount` | `tools/instcount/` | Per-instruction execution counts | Hard (needs GT Pin) |

## Verification

```bash
# Check device is visible
./ze_info
# Should show: Device Name = Intel(R) Graphics [0xe211]

# List available metrics
./ze_metric_info

# Quick kernel timing test
./ze_hot_kernels <your_sycl_app>
```

## Troubleshooting

| Issue | Cause | Fix |
|-------|-------|-----|
| `Unable to find GPU devices` | Missing Level Zero driver | `apt install libze-intel-gpu1` |
| `Insufficient privileges for perf metrics` | `observation_paranoid=1` | `echo 0 \| sudo tee /proc/sys/dev/xe/observation_paranoid` |
| `metrics_discovery_api.h: No such file` | Missing dev headers | Copy from `tools/gpuinfo/build/` (see above) |
| `Assertion query_list_.size() == 0 failed` | ze_metric_query exit cleanup bug | Use `unitrace -q` instead |
| `libze_loader.so not found` | LD_LIBRARY_PATH issue | `export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH` |

## Docker Notes

When running inside Docker:
- Must pass through GPU device: `--device /dev/dri`
- Set `observation_paranoid=0` inside container
- oneAPI must be installed/sourced inside container
- `libigc2` version must match compute runtime version
