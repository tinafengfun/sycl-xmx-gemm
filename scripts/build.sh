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

build_verify_acc() {
    echo "=== Building accuracy verification ==="
    icpx ${COMMON_FLAGS} \
        "${ROOT_DIR}/src/tools/verify_accuracy.cpp" \
        -o "${BUILD_DIR}/verify_accuracy"
    echo "  → ${BUILD_DIR}/verify_accuracy"
}

build_verify_slm() {
    echo "=== Building SLM verification ==="
    icpx ${COMMON_FLAGS} \
        "${ROOT_DIR}/src/tools/verify_slm.cpp" \
        -o "${BUILD_DIR}/verify_slm"
    echo "  → ${BUILD_DIR}/verify_slm"
}

build_verify_v21exp() {
    echo "=== Building v21 experiments verification ==="
    icpx ${COMMON_FLAGS} \
        "${ROOT_DIR}/src/tools/verify_v21_experiments.cpp" \
        -o "${BUILD_DIR}/verify_v21_experiments"
    echo "  → ${BUILD_DIR}/verify_v21_experiments"
}

build_bench_fp16() {
    echo "=== Building FP16 GEMM benchmark ==="
    icpx ${COMMON_FLAGS} \
        "${ROOT_DIR}/src/kernels/bench_fp16_80t.cpp" \
        -o "${BUILD_DIR}/bench_fp16_80t"
    echo "  → ${BUILD_DIR}/bench_fp16_80t"
}

build_v20() {
    echo "=== Building v20 pipeline experiments ==="
    icpx ${COMMON_FLAGS} \
        "${ROOT_DIR}/src/kernels/gemm_v20_pipeline.cpp" \
        -o "${BUILD_DIR}/gemm_v20_pipeline"
    echo "  → ${BUILD_DIR}/gemm_v20_pipeline"
}

build_v20_tiles() {
    echo "=== Building v20 tile sweep ==="
    icpx ${COMMON_FLAGS} \
        "${ROOT_DIR}/src/kernels/gemm_v20_tiles.cpp" \
        -o "${BUILD_DIR}/gemm_v20_tiles"
    echo "  → ${BUILD_DIR}/gemm_v20_tiles"
}

build_v20_pf() {
    echo "=== Building v20 prefetch sweep ==="
    icpx ${COMMON_FLAGS} \
        "${ROOT_DIR}/src/kernels/gemm_v20_prefetch.cpp" \
        -o "${BUILD_DIR}/gemm_v20_prefetch"
    echo "  → ${BUILD_DIR}/gemm_v20_prefetch"
}

build_v20_multisg() {
    echo "=== Building v20 multi-SG ==="
    icpx ${COMMON_FLAGS} \
        "${ROOT_DIR}/src/kernels/gemm_v20_multisg.cpp" \
        -o "${BUILD_DIR}/gemm_v20_multisg"
    echo "  → ${BUILD_DIR}/gemm_v20_multisg"
}

build_v20_multisg2() {
    echo "=== Building v20 multi-SG sweep ==="
    icpx ${COMMON_FLAGS} \
        "${ROOT_DIR}/src/kernels/gemm_v20_multisg2.cpp" \
        -o "${BUILD_DIR}/gemm_v20_multisg2"
    echo "  → ${BUILD_DIR}/gemm_v20_multisg2"
}

build_v20_best() {
    echo "=== Building v20 best configs ==="
    icpx ${COMMON_FLAGS} \
        "${ROOT_DIR}/src/kernels/gemm_v20_best.cpp" \
        -o "${BUILD_DIR}/gemm_v20_best"
    echo "  → ${BUILD_DIR}/gemm_v20_best"
}

build_v21_slm() {
    echo "=== Building v21 SLM benchmark ==="
    icpx ${COMMON_FLAGS} \
        "${ROOT_DIR}/src/kernels/gemm_v21_slm.cpp" \
        -o "${BUILD_DIR}/gemm_v21_slm"
    echo "  → ${BUILD_DIR}/gemm_v21_slm"
}

build_v21_hybrid() {
    echo "=== Building v21 hybrid benchmark ==="
    icpx ${COMMON_FLAGS} \
        "${ROOT_DIR}/src/kernels/gemm_v21_hybrid.cpp" \
        -o "${BUILD_DIR}/gemm_v21_hybrid"
    echo "  → ${BUILD_DIR}/gemm_v21_hybrid"
}

build_pfverify() {
    echo "=== Building prefetch verification ==="
    icpx ${COMMON_FLAGS} \
        "${ROOT_DIR}/src/kernels/bench_prefetch_verify.cpp" \
        -o "${BUILD_DIR}/bench_prefetch_verify"
    echo "  → ${BUILD_DIR}/bench_prefetch_verify"
}

build_kparallel() {
    echo "=== Building K-parallel benchmark ==="
    icpx ${COMMON_FLAGS} \
        "${ROOT_DIR}/src/kernels/bench_kparallel.cpp" \
        -o "${BUILD_DIR}/bench_kparallel"
    echo "  → ${BUILD_DIR}/bench_kparallel"
}

build_v21_best() {
    echo "=== Building v21 best configs ==="
    icpx ${COMMON_FLAGS} \
        "${ROOT_DIR}/src/kernels/gemm_v21_best.cpp" \
        -o "${BUILD_DIR}/gemm_v21_best"
    echo "  → ${BUILD_DIR}/gemm_v21_best"
}

case "${1:-all}" in
    bench)   build_bench ;;
    bench16) build_bench_fp16 ;;
    v20)     build_v20 ;;
    v20t)    build_v20_tiles ;;
    v20pf)   build_v20_pf ;;
    v20msg)  build_v20_multisg ;;
    v20ms2)  build_v20_multisg2 ;;
    v20best) build_v20_best ;;
    v21slm)  build_v21_slm ;;
    v21hyb)  build_v21_hybrid ;;
    v21best) build_v21_best ;;
    kpar)    build_kparallel ;;
    pfv)     build_pfverify ;;
    verify)  build_verify ;;
    vacc)    build_verify_acc ;;
    vslm)    build_verify_slm ;;
    v21exp)  build_verify_v21exp ;;
    query)   build_query ;;
    all)
        build_bench
        build_bench_fp16
        build_v20
        build_v20_tiles
        build_verify
        build_query
        echo ""
        echo "=== Build complete ==="
        echo "Run BF16 bench:   ./scripts/run_bench.sh"
        echo "Run FP16 bench:   ./scripts/run_bench.sh fp16"
        echo "Run v20 pipeline: IGC_ExtraOCLOptions='-cl-intel-256-GRF-per-thread' ./build/gemm_v20_pipeline 10 50"
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
