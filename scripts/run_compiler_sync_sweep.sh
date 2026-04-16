#!/bin/bash
# ==========================================================================
# Compiler sync/scheduling option sweep — 尝试突破 sync.allwr 序列化瓶颈
#
# 基于 profiling 发现 32.6% stall 中 21.5% 是 DPAS 累加器跨迭代依赖停顿
# sync.allwr 是 SYCL joint_matrix 语义强制的全局 barrier
# IGC 有 SWSB token 和 CodeScheduling 选项可能优化这一点
#
# 测试策略：
#   A: baseline (当前最优配置)
#   B: 增加 SWSB token 数量
#   C: 启用 split barrier
#   D: sink barrier wait (拉开 barrier 距离)
#   E: SWSB 依赖缩减
#   F: CodeScheduling 更激进配置
#   G: 组合最有希望的选项
# ==========================================================================
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUILD="${SCRIPT_DIR}/../src/build_pfexp/v1_baseline"

M=${1:-8192}
N=${2:-2048}
K=${3:-4096}
W=${4:-20}
I=${5:-10}

source /opt/intel/oneapi/compiler/latest/env/vars.sh 2>/dev/null

# 公共配置
export ONEAPI_DEVICE_SELECTOR=level_zero:gpu
export IGC_ExtraOCLOptions="-cl-intel-256-GRF-per-thread"
export SYCL_PROGRAM_COMPILE_OPTIONS="-ze-opt-large-register-file -gline-tables-only"
export IGC_VISAOptions="-perfmodel"
export IGC_VectorAliasBBThreshold=10000

run_test() {
    local tag="$1"
    shift
    # 额外的 IGC 选项通过环境变量传递
    echo "--- $tag ---"
    echo "    IGC_VISAOptions=$IGC_VISAOptions"
    "$BUILD" $M $N $K $W $I 2>&1 | grep "^V1:"
}

echo "=========================================="
echo "Compiler sync/scheduling option sweep"
echo "M=${M} N=${N} K=${K} warmup=${W} iters=${I}"
echo "=========================================="
echo ""

# A: Baseline — 当前最优
run_test "A_baseline"

# B: 增加 SWSB token 数量（默认可能不够覆盖所有在途操作）
#    更多 token = 更多在途操作可以同时追踪 = 减少 SBID stall
export IGC_VISAOptions="-perfmodel -SWSBTokenNum 32"
run_test "B_SWSBTokenNum32"

export IGC_VISAOptions="-perfmodel -SWSBTokenNum 64"
run_test "B_SWSBTokenNum64"

# C: Split barrier（将 sync.allwr 拆成 signal + wait）
#    让编译器有机会在 signal 和 wait 之间插入其他指令
export IGC_VISAOptions="-perfmodel -splitbarrierid1"
run_test "C_SplitBarrier"

# D: Sink barrier wait（把 barrier.wait 尽可能往后移，拉开距离）
export IGC_VISAOptions="-perfmodel -sinkBarrierWait"
run_test "D_SinkBarrierWait"

# E: SWSB 依赖缩减（用更细粒度的依赖追踪替代全局 barrier）
export IGC_VISAOptions="-perfmodel -SWSBDepReduction"
run_test "E_SWSBDepReduction"

# F: 用 AR→AW 替换（把 Accumulator Read 依赖转为更松的 AW）
export IGC_VISAOptions="-perfmodel -SWSBReplaceARWithAW"
run_test "F_SWSBReplaceARWithAW"

# G: CodeScheduling — 更激进的指令调度
export IGC_CodeSchedulingConfig="1"
run_test "G_CodeScheduling1"
unset IGC_CodeSchedulingConfig

# H: 组合：SplitBarrier + SinkWait + 更大 TokenNum
export IGC_VISAOptions="-perfmodel -splitbarrierid1 -sinkBarrierWait -SWSBTokenNum 32"
run_test "H_SplitBarrier+Sink+SWSB32"

# I: 组合：DepReduction + ReplaceARWithAW
export IGC_VISAOptions="-perfmodel -SWSBDepReduction -SWSBReplaceARWithAW"
run_test "I_DepReduction+ReplaceAR"

# J: 全部启用
export IGC_VISAOptions="-perfmodel -splitbarrierid1 -sinkBarrierWait -SWSBDepReduction -SWSBReplaceARWithAW -SWSBTokenNum 32"
run_test "J_AllCombined"

# K: 额外 — SWSBStitch（缝合模式）
export IGC_VISAOptions="-perfmodel -SWSBStitch"
run_test "K_SWSBStitch"

# 恢复基线
export IGC_VISAOptions="-perfmodel"

echo ""
echo "=========================================="
echo "Sweep complete. Compare TF values above."
echo "=========================================="
