#!/bin/bash
# Test different IGC/env configurations for 8192x8192x4096
cd /sandbox
export ONEAPI_DEVICE_SELECTOR=level_zero:gpu

run_test() {
    local label="$1"
    shift
    echo "=== $label ==="
    env "$@" ./gemm_80t_v11 5 20 2>&1 | grep -E "(8192_in_order|4096_in_order)"
    echo ""
}

# Baseline (current best config)
run_test "baseline_256GRF" \
    IGC_ExtraOCLOptions='-cl-intel-256-GRF-per-thread' \
    SYCL_PROGRAM_COMPILE_OPTIONS='-ze-opt-large-register-file -gline-tables-only' \
    IGC_VectorAliasBBThreshold=100000000000

# Without VectorAliasBBThreshold
run_test "no_VectorAlias" \
    IGC_ExtraOCLOptions='-cl-intel-256-GRF-per-thread' \
    SYCL_PROGRAM_COMPILE_OPTIONS='-ze-opt-large-register-file -gline-tables-only'

# Without large GRF
run_test "128GRF_default" \
    SYCL_PROGRAM_COMPILE_OPTIONS='-gline-tables-only'

# 128 GRF + no extra options
run_test "128GRF_clean"

# Try with IGC flags for DPAS
run_test "256GRF_DPAS_sched" \
    IGC_ExtraOCLOptions='-cl-intel-256-GRF-per-thread' \
    SYCL_PROGRAM_COMPILE_OPTIONS='-ze-opt-large-register-file -gline-tables-only' \
    IGC_VectorAliasBBThreshold=100000000000 \
    IGC_EnableDPASInstructionScheduling=1

# Without -gline-tables-only (might affect optimization)
run_test "256GRF_no_debug" \
    IGC_ExtraOCLOptions='-cl-intel-256-GRF-per-thread' \
    SYCL_PROGRAM_COMPILE_OPTIONS='-ze-opt-large-register-file' \
    IGC_VectorAliasBBThreshold=100000000000

# Try disabling EU fusion
run_test "256GRF_no_EUfusion" \
    IGC_ExtraOCLOptions='-cl-intel-256-GRF-per-thread' \
    SYCL_PROGRAM_COMPILE_OPTIONS='-ze-opt-large-register-file -gline-tables-only' \
    IGC_VectorAliasBBThreshold=100000000000 \
    IGC_DisableEUFusion=1

echo "=== All done ==="
