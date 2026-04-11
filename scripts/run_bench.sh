#!/bin/bash
# ==========================================================================
# Run BF16 GEMM benchmark with optimal GPU configuration
# ==========================================================================
# Usage:
#   ./scripts/run_bench.sh                 # Full benchmark (8192x8192x4096)
#   ./scripts/run_bench.sh quick           # Quick test (fewer iterations)
#   ./scripts/run_bench.sh 4096 4096 4096  # Custom size
# ==========================================================================

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

export ONEAPI_DEVICE_SELECTOR=level_zero:gpu
export IGC_ExtraOCLOptions="-cl-intel-256-GRF-per-thread"
export SYCL_PROGRAM_COMPILE_OPTIONS="-ze-opt-large-register-file -gline-tables-only"
export IGC_VectorAliasBBThreshold=100000000000

BINARY="${ROOT_DIR}/build/bench_bf16_80t"

if [ ! -f "${BINARY}" ]; then
    echo "Binary not found. Run ./scripts/build.sh first."
    exit 1
fi

WARMUP=10
ITERS=50

case "${1:-default}" in
    quick)
        WARMUP=3
        ITERS=10
        shift || true
        ;;
    default)
        ;;
    *)
        # User provided custom args, pass through
        ;;
esac

echo "=== Running BF16 GEMM benchmark ==="
echo "  Warmup: ${WARMUP}, Iterations: ${ITERS}"
echo "  GPU env: 256 GRF, large register file, L1 prefetch"
echo ""

exec "${BINARY}" ${WARMUP} ${ITERS} "$@"
