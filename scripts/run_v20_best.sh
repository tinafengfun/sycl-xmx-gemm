#!/bin/bash
# ==========================================================================
# Run Stage 5 multi-SG best configs benchmark (89+ TFLOPS)
# ==========================================================================
# Usage:
#   ./scripts/run_v20_best.sh           # Full benchmark (100/500)
#   ./scripts/run_v20_best.sh quick     # Quick test (10/50)
# ==========================================================================

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

export ONEAPI_DEVICE_SELECTOR=level_zero:gpu
export IGC_ExtraOCLOptions="-cl-intel-256-GRF-per-thread"
export SYCL_PROGRAM_COMPILE_OPTIONS="-ze-opt-large-register-file -gline-tables-only"
export IGC_VISAOptions="-perfmodel"
export IGC_VectorAliasBBThreshold=10000

BINARY="${ROOT_DIR}/build/gemm_v20_best"

if [ ! -f "${BINARY}" ]; then
    echo "Binary not found (${BINARY}). Run ./scripts/build.sh v20best first."
    exit 1
fi

WARMUP=100
ITERS=500

if [ "${1:-}" = "quick" ]; then
    WARMUP=10
    ITERS=50
fi

echo "=== Running Stage 5 multi-SG best configs benchmark ==="
echo "  Warmup: ${WARMUP}, Iterations: ${ITERS}"
echo "  GPU env: 256 GRF, -perfmodel, Threshold=10000"
echo ""

exec "${BINARY}" ${WARMUP} ${ITERS}
