#!/bin/bash
# ==========================================================================
# Build script for SYCL XMX GEMM benchmarks
# ==========================================================================
# Usage:
#   ./scripts/build.sh              # Build all targets
#   ./scripts/build.sh bench        # Build benchmark only
#   ./scripts/build.sh verify       # Build verification only
#   ./scripts/build.sh clean        # Clean build artifacts
# ==========================================================================

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"
BUILD_DIR="${ROOT_DIR}/build"

COMMON_FLAGS="-fsycl -O3 -std=c++17 -fsycl-unnamed-lambda -mllvm -inline-threshold=10000"

mkdir -p "${BUILD_DIR}"

build_bench() {
    echo "=== Building BF16 GEMM benchmark ==="
    icpx ${COMMON_FLAGS} \
        "${ROOT_DIR}/src/kernels/bench_bf16_80t.cpp" \
        -o "${BUILD_DIR}/bench_bf16_80t"
    echo "  → ${BUILD_DIR}/bench_bf16_80t"
}

build_verify() {
    echo "=== Building correctness verification ==="
    icpx ${COMMON_FLAGS} \
        "${ROOT_DIR}/src/tools/verify_correctness.cpp" \
        -o "${BUILD_DIR}/verify_correctness"
    echo "  → ${BUILD_DIR}/verify_correctness"
}

build_query() {
    echo "=== Building matrix query tool ==="
    icpx ${COMMON_FLAGS} \
        "${ROOT_DIR}/src/tools/query_matrix.cpp" \
        -o "${BUILD_DIR}/query_matrix"
    echo "  → ${BUILD_DIR}/query_matrix"
}

build_bench_fp16() {
    echo "=== Building FP16 GEMM benchmark ==="
    icpx ${COMMON_FLAGS} \
        "${ROOT_DIR}/src/kernels/bench_fp16_80t.cpp" \
        -o "${BUILD_DIR}/bench_fp16_80t"
    echo "  → ${BUILD_DIR}/bench_fp16_80t"
}

case "${1:-all}" in
    bench)   build_bench ;;
    bench16) build_bench_fp16 ;;
    verify)  build_verify ;;
    query)   build_query ;;
    all)
        build_bench
        build_bench_fp16
        build_verify
        build_query
        echo ""
        echo "=== Build complete ==="
        echo "Run BF16 bench:   ./scripts/run_bench.sh"
        echo "Run FP16 bench:   ./scripts/run_bench.sh fp16"
        echo "Run verification: ./scripts/run_verify.sh"
        ;;
    clean)
        rm -rf "${BUILD_DIR}"
        echo "Cleaned build directory"
        ;;
    *)
        echo "Usage: $0 {all|bench|verify|query|clean}"
        exit 1
        ;;
esac
