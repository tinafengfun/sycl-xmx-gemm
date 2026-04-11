#!/bin/bash
# ==========================================================================
# Run GEMM benchmark with optimal GPU configuration
# ==========================================================================
# Usage:
#   ./scripts/run_bench.sh                 # BF16 benchmark (default)
#   ./scripts/run_bench.sh fp16            # FP16 benchmark
#   ./scripts/run_bench.sh quick           # Quick BF16 test (fewer iterations)
#   ./scripts/run_bench.sh fp16 quick      # Quick FP16 test
# ==========================================================================

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

export ONEAPI_DEVICE_SELECTOR=level_zero:gpu
export IGC_ExtraOCLOptions="-cl-intel-256-GRF-per-thread"
export SYCL_PROGRAM_COMPILE_OPTIONS="-ze-opt-large-register-file -gline-tables-only"
export IGC_VectorAliasBBThreshold=100000000000

PRECISION="bf16"
WARMUP=100
ITERS=500

# Parse precision argument
if [ "${1:-}" = "fp16" ]; then
    PRECISION="fp16"
    shift
fi

if [ "${1:-}" = "quick" ]; then
    WARMUP=10
    ITERS=50
    shift || true
fi

if [ "$PRECISION" = "fp16" ]; then
    BINARY="${ROOT_DIR}/build/bench_fp16_80t"
    LABEL="FP16"
else
    BINARY="${ROOT_DIR}/build/bench_bf16_80t"
    LABEL="BF16"
fi

if [ ! -f "${BINARY}" ]; then
    echo "Binary not found (${BINARY}). Run ./scripts/build.sh first."
    exit 1
fi

echo "=== Running ${LABEL} GEMM benchmark ==="
echo "  Warmup: ${WARMUP}, Iterations: ${ITERS}"
echo "  GPU env: 256 GRF, large register file, L1 prefetch"
echo ""

exec "${BINARY}" ${WARMUP} ${ITERS} "$@"
