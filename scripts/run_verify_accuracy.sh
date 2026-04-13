#!/bin/bash
# ==========================================================================
# Run accuracy verification (vs CPU reference, random seed=42)
# ==========================================================================

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

export ONEAPI_DEVICE_SELECTOR=level_zero:gpu
export IGC_ExtraOCLOptions="-cl-intel-256-GRF-per-thread"
export SYCL_PROGRAM_COMPILE_OPTIONS="-ze-opt-large-register-file -gline-tables-only"
export IGC_VISAOptions="-perfmodel"
export IGC_VectorAliasBBThreshold=10000

BINARY="${ROOT_DIR}/build/verify_accuracy"

if [ ! -f "${BINARY}" ]; then
    echo "Binary not found (${BINARY}). Run ./scripts/build.sh vacc first."
    exit 1
fi

echo "=== Running accuracy verification (seed=42, CPU float32 reference) ==="
echo "  GPU env: 256 GRF, -perfmodel, Threshold=10000"
echo ""

exec "${BINARY}"
