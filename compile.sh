#!/bin/bash
# Compile script for SYCL GEMM on Intel BMG GPU
set -e

source /opt/intel/oneapi/compiler/latest/env/vars.sh 2>/dev/null

MODE=${1:-basic}

if [ "$MODE" = "full" ]; then
    echo "Compiling with full XMX optimization flags..."
    icpx -fsycl -O3 -std=c++17 \
        -fsycl-targets=spir64_gen \
        -fsycl-unnamed-lambda \
        -fno-fast-math -fma -no-ftz \
        -Xs "-device bmg \
             -options -cl-intel-enable-auto-large-GRF-mode \
             -options -cl-fp32-correctly-rounded-divide-sqrt" \
        --offload-compress \
        gemm_sycl.cpp -o gemm_sycl
else
    echo "Compiling basic (naive GEMM)..."
    icpx -fsycl -fsycl-targets=spir64_gen \
        -Xs "-device bmg -options -cl-intel-enable-auto-large-GRF-mode" \
        -fsycl-unnamed-lambda -std=c++17 -O2 \
        gemm_sycl.cpp -o gemm_sycl
fi
echo "Build succeeded: ./gemm_sycl"
