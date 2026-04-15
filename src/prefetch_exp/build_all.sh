#!/bin/bash
# 编译所有 prefetch 实验变体 — 每个独立二进制，互不干扰
set -e
source /opt/intel/oneapi/compiler/latest/env/vars.sh 2>/dev/null

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUILD_DIR="${SCRIPT_DIR}/../build_pfexp"
mkdir -p "${BUILD_DIR}"

COMMON_FLAGS="-fsycl -O3 -std=c++17 -fsycl-unnamed-lambda -mllvm -inline-threshold=10000"

for dir in v1_baseline v2_nopf v4_b_only v5_b_l2 v6_b_k64 v7_b_dual v8_b_l2_k64; do
    src="${SCRIPT_DIR}/${dir}/test.cpp"
    out="${BUILD_DIR}/${dir}"
    if [ -f "$src" ]; then
        echo -n "Building ${dir}... "
        icpx ${COMMON_FLAGS} "$src" -o "$out"
        echo "OK → ${out}"
    fi
done

echo ""
echo "All built. Run: ./src/prefetch_exp/run_quick.sh"
