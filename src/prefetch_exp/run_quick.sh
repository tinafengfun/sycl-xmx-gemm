#!/bin/bash
# 快速筛选所有 prefetch 变体 — 默认 5 warmup / 3 iters
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUILD_DIR="${SCRIPT_DIR}/../build_pfexp"

M=${1:-8192}
N=${2:-2048}
K=${3:-4096}
W=${4:-5}
I=${5:-3}

source /opt/intel/oneapi/compiler/latest/env/vars.sh 2>/dev/null

export ONEAPI_DEVICE_SELECTOR=level_zero:gpu
export IGC_ExtraOCLOptions="-cl-intel-256-GRF-per-thread"
export SYCL_PROGRAM_COMPILE_OPTIONS="-ze-opt-large-register-file -gline-tables-only"
export IGC_VISAOptions="-perfmodel"
export IGC_VectorAliasBBThreshold=10000

echo "=========================================="
echo "Prefetch experiment quick scan"
echo "M=${M} N=${N} K=${K} warmup=${W} iters=${I}"
echo "=========================================="
echo ""

for bin in v1_baseline v2_nopf v4_b_only v5_b_l2 v6_b_k64 v7_b_dual v8_b_l2_k64; do
    exe="${BUILD_DIR}/${bin}"
    if [ -x "$exe" ]; then
        echo "--- ${bin} ---"
        "${exe}" ${M} ${N} ${K} ${W} ${I} 2>&1
        echo ""
    else
        echo "--- ${bin} NOT FOUND, skip ---"
    fi
done

echo "=========================================="
echo "Done. Compare TF values above."
echo "=========================================="
