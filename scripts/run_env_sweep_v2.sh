#!/bin/bash
# ==========================================================================
# Compiler config sweep — Compare our config vs Mengcheng's expert config
# Tests IGC_VISAOptions="-perfmodel", VectorAliasBBThreshold values,
# and -gline-tables-only impact on BF16 GEMM performance.
# ==========================================================================
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"
BINARY="${ROOT_DIR}/build/bench_bf16_80t"

if [ ! -f "${BINARY}" ]; then
    echo "Binary not found (${BINARY}). Run ./scripts/build.sh first."
    exit 1
fi

export ONEAPI_DEVICE_SELECTOR=level_zero:gpu

WARMUP=10
ITERS=50

# Problem sizes to test
SIZES="8192 2048 4096"  # Sweet spot
SIZES2="8192 8192 4096"  # Large N

run_test() {
    local label="$1"
    shift
    echo ""
    echo "================================================================"
    echo "=== $label ==="
    echo "================================================================"
    env "$@" "${BINARY}" ${WARMUP} ${ITERS} 2>&1 | grep -E "(single_N=2048|single_N=4096|single_N=8192|TF=)" || true
    echo ""
}

echo "=== BF16 GEMM Compiler Config Sweep ==="
echo "Binary: ${BINARY}"
echo "Warmup: ${WARMUP}, Iters: ${ITERS}"
echo ""

# A: Baseline (our current config)
run_test "A: Baseline (our config)" \
    IGC_ExtraOCLOptions='-cl-intel-256-GRF-per-thread' \
    SYCL_PROGRAM_COMPILE_OPTIONS='-ze-opt-large-register-file -gline-tables-only' \
    IGC_VectorAliasBBThreshold=100000000000

# B: Mengcheng's exact config
run_test "B: Mengcheng exact config" \
    IGC_ExtraOCLOptions='-cl-intel-256-GRF-per-thread' \
    SYCL_PROGRAM_COMPILE_OPTIONS='-ze-opt-large-register-file' \
    IGC_VISAOptions='-perfmodel' \
    IGC_VectorAliasBBThreshold=10000

# C: Add -perfmodel only (our config + perfmodel)
run_test "C: Our config + perfmodel" \
    IGC_ExtraOCLOptions='-cl-intel-256-GRF-per-thread' \
    SYCL_PROGRAM_COMPILE_OPTIONS='-ze-opt-large-register-file -gline-tables-only' \
    IGC_VISAOptions='-perfmodel' \
    IGC_VectorAliasBBThreshold=100000000000

# D: VectorAliasBBThreshold=10000 only (our config + threshold)
run_test "D: Our config + Threshold=10000" \
    IGC_ExtraOCLOptions='-cl-intel-256-GRF-per-thread' \
    SYCL_PROGRAM_COMPILE_OPTIONS='-ze-opt-large-register-file -gline-tables-only' \
    IGC_VectorAliasBBThreshold=10000

# E: Remove -gline-tables-only
run_test "E: Our config - gline-tables-only" \
    IGC_ExtraOCLOptions='-cl-intel-256-GRF-per-thread' \
    SYCL_PROGRAM_COMPILE_OPTIONS='-ze-opt-large-register-file' \
    IGC_VectorAliasBBThreshold=100000000000

# F: Mengcheng + gline-tables-only (isolate perfmodel/threshold effect)
run_test "F: Mengcheng + gline-tables-only" \
    IGC_ExtraOCLOptions='-cl-intel-256-GRF-per-thread' \
    SYCL_PROGRAM_COMPILE_OPTIONS='-ze-opt-large-register-file -gline-tables-only' \
    IGC_VISAOptions='-perfmodel' \
    IGC_VectorAliasBBThreshold=10000

# G: No VectorAliasBBThreshold at all (default)
run_test "G: No Threshold (default)" \
    IGC_ExtraOCLOptions='-cl-intel-256-GRF-per-thread' \
    SYCL_PROGRAM_COMPILE_OPTIONS='-ze-opt-large-register-file' \
    IGC_VISAOptions='-perfmodel'

echo "=== Sweep complete ==="
