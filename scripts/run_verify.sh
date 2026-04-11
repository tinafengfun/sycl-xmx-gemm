#!/bin/bash
# ==========================================================================
# Run correctness verification
# ==========================================================================

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

export ONEAPI_DEVICE_SELECTOR=level_zero:gpu
export IGC_ExtraOCLOptions="-cl-intel-256-GRF-per-thread"
export SYCL_PROGRAM_COMPILE_OPTIONS="-ze-opt-large-register-file -gline-tables-only"
export IGC_VectorAliasBBThreshold=100000000000

BINARY="${ROOT_DIR}/build/verify_correctness"

if [ ! -f "${BINARY}" ]; then
    echo "Binary not found. Run ./scripts/build.sh first."
    exit 1
fi

echo "=== Running correctness verification ==="
exec "${BINARY}"
