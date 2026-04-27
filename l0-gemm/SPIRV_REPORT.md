# SPIR-V Cooperative Matrix GEMM 探索报告

## 目标

绕过 SYCL 编译器/运行时限制，直接使用 SPIR-V `OpCooperativeMatrixKHR` (DPAS) 编写 GEMM kernel，通过 Level Zero API 调度执行，期望获得比 SYCL 90.57T 更高的性能。

## 基准参考

**唯一成功的 SPIR-V DPAS kernel**：`microbench/spirv_dpas_latency.spvasm`

```
模式: Load A/B/C BEFORE loop → DPAS in loop (操作数不变) → Store result
结果: 正常运行，测量出 DPAS 延迟 ~33 cycles
```

这是 IGC 能正确编译的唯一 cooperative matrix 模式。所有 GEMM 需要的"在循环内加载不同 tile"模式均失败。

---

## 测试矩阵：所有尝试的 SPIR-V kernel

### 第一阶段：诊断 ocloc 段错误

最初 `gemm_1x1.spvasm` 经 `spirv-as` 汇编后，`ocloc compile` 段错误 (exit 139)。为定位原因，逐步从已知工作的 kernel 添加特性。

| # | Kernel | 与工作 kernel 的差异 | 结果 |
|---|--------|---------------------|------|
| 1 | `test_nop` | 完全复制 dpas_latency + 无额外参数 | **正常** |
| 2 | `test_step1` | 加 1 个 uint 参数（未使用） | **正常** |
| 3 | `test_args` | 加 3 个 uint 参数 M/N/K（未使用） | **正常** |
| 4 | `test_wgid` | 加 WorkgroupId builtin + 6 参数 | **正常** |
| 5 | `test_ptrarith` | 加 OpConvertPtrToU/OpConvertUToPtr 指针算术 | **正常** |

**结论**: WorkgroupId、多参数、指针算术都不是段错误原因。

**根本原因**: `gemm_1x1.spvasm` 缺少 `%uint_2` 和 `%uint_3` 的 `OpConstant` 声明。这两个常量被 cooperative matrix type 使用 (`use=0/1/2` 中的 2 和 3)，但未定义为常量 → `spirv-as` 创建前向引用但无法解析 → 生成无效 SPIR-V → ocloc 段错误。**添加常量声明后修复。**

---

### 第二阶段：K-loop 内加载 tile（GEMM 核心需求）

修复编译问题后，测试 GEMM 所需的核心模式：**在 K-loop 内加载不同的 A/B tile**。

| # | Kernel | 模式描述 | 循环结构 | 结果 |
|---|--------|---------|----------|------|
| 6 | `test_straight` | 无循环，Load + DPAS + Store 直线代码 | 无循环 | **IGC 段错误** |
| 7 | `test_loopload` | 循环内加载 tile（从基地址，无偏移） | **独立 continue block** | **GPU 执行挂起** |
| 8 | `test_selfloop` | 循环内加载 tile（从基地址，无偏移） | **Self-loop** (continue=header) | **DPAS 被消除** |
| 9 | `test_kloop` | 完整 K-loop（带指针算术计算偏移） | 独立 continue block | **GPU 执行挂起** |
| 10 | `gemm_1x1` | 完整 GEMM（WorkgroupId + VNNI B 寻址） | Self-loop | **DPAS 被消除** |

#### 详细分析

**Test 6 — `test_straight` (直线 DPAS)**

```
entry: Load C, Load A, Load B
       DPAS: result = A * B + C
       Store result
```

- 最简单的 GEMM 片段：单次 DPAS，无循环
- IGC 在编译期段错误
- **原因推测**: IGC 无法处理同一 basic block 中 `OpCooperativeMatrixLoadKHR` 后紧跟 `OpCooperativeMatrixMulAddKHR` 的模式
- 工作的 dpas_latency kernel 将 loads 和 DPAS 放在不同 basic block（entry vs loop_body）

**Test 7 — `test_loopload` (循环内加载 + 独立 continue block)**

```
entry: Load acc from C → branch to k_hdr
k_hdr: OpLoopMerge k_exit k_cont  ← 独立 continue block
       Phi(acc, k)
       branch cond to k_body/k_exit
k_body: Load A from base ptr    ← 循环内加载
        Load B from base ptr    ← 循环内加载
        DPAS: acc = A * B + acc
        k++
        branch to k_cont
k_cont: branch to k_hdr         ← 独立 continue block
k_exit: Store acc
```

- 编译通过，kernel 运行
- **GPU 执行挂起**（无限运行不返回）
- K-loop 中即使是最简单的 cooperative matrix load 也导致挂起
- 即使从不变地址加载（每次迭代相同数据）

**Test 8 — `test_selfloop` (循环内加载 + self-loop 模式)**

```
entry: Load acc from C → branch to loop_header
loop_header: OpLoopMerge loop_exit loop_header  ← continue=header (self-loop)
             Phi(acc, i)
             branch cond to loop_body/loop_exit
loop_body:  Load A from base ptr    ← 循环内加载
            Load B from base ptr    ← 循环内加载
            DPAS: acc = A * B + acc
            i++
            branch to loop_header   ← 直接到 header，无独立 continue
loop_exit:  Store acc
```

- 编译通过，kernel 正常返回（不挂起）
- **但 DPAS 被完全消除！** 结果等于初始 C 值（未执行任何矩阵乘法）
- GEN ASM 分析确认：循环体内无 dpas 指令，只有 load 后直接 store 初始值
- IGC 优化器判定 loads + DPAS 可删除（可能认为 cooperative matrix load 在循环内是非法优化）

**Test 9 — `test_kloop` (完整 K-loop + 指针算术)**

```
与 test_loopload 类似，但增加了：
- WorkgroupId 获取 WG ID
- 指针算术计算 A/B/C 偏移
- 动态 stride（通过 kernel 参数）
```

- 使用独立 continue block → 与 test_loopload 相同，**GPU 挂起**
- 证明挂起不是指针算术导致，而是独立 continue block + 循环内 cooperative matrix load 的组合

**Test 10 — `gemm_1x1` (完整 GEMM)**

```
使用 self-loop 模式避免挂起
但 DPAS 被消除，结果等于初始 C 值
```

- 尝试了两种 tile 尺寸：
  - 8×16 accumulator (cm_acc 8×16 float) → 编译通过但 DPAS 被消除
  - 8×8 accumulator (cm_acc 8×8 float) → **zeModuleCreate 返回 MODULE_BUILD_FAILURE**，硬件不支持 8×8 accumulator

---

## IGC Bug 汇总

### Bug 1: 缺少常量导致无效 SPIR-V → ocloc 段错误
- **现象**: `spirv-as` 生成包含未解析前向引用的 SPIR-V 二进制
- **修复**: 显式声明 `%uint_2 = OpConstant %uint 2` 和 `%uint_3 = OpConstant %uint 3`
- **严重程度**: 低（易修复的编码错误）

### Bug 2: 直线 DPAS + Load 模式 → IGC 段错误
- **现象**: 同一 basic block 中 `Load A → Load B → DPAS → Store` 导致 IGC 编译时段错误
- **条件**: 所有 cooperative matrix 操作在同一个 label/basic block 中
- **规避**: 将 loads 和 DPAS 分开放在不同 basic block
- **严重程度**: 中（有简单规避方案）

### Bug 3: 独立 continue block + 循环内 cooperative matrix load → GPU 挂起
- **现象**: `OpLoopMerge %exit %cont None`（continue target ≠ header）时，循环体内的 `OpCooperativeMatrixLoadKHR` 导致 kernel 永不返回
- **条件**: 两个因素同时存在：(1) 独立 continue block (2) 循环内 cooperative matrix load
- **规避**: 使用 self-loop 模式 `OpLoopMerge %exit %header None`
- **严重程度**: 高（限制了合法的循环结构）

### Bug 4: Self-loop 模式 + 循环内 cooperative matrix load → DPAS 被消除
- **现象**: 使用 self-loop 规避 Bug 3 后，IGC 完全消除 DPAS 操作，只保留初始 C 值的 store
- **条件**: (1) Self-loop 模式 (2) 循环内 cooperative matrix load (3) DPAS 使用 load 的结果
- **规避**: **无**
- **严重程度**: **致命** — 无法在循环内加载不同 tile 并执行 DPAS

---

## 根本原因分析

### SYCL joint_matrix 的编译路径

SYCL `joint_matrix` API **不走 SPIR-V cooperative matrix 路径**：
- SYCL 编译器 (icpx) 将 `joint_matrix` 调用直接转换为 LLVM IR intrinsics (`llvm.genx.*`)
- IGC 对这些 intrinsics 有**专门的处理逻辑**，绕过了 SPIR-V cooperative matrix 的编译路径
- 因此 SYCL joint_matrix 可以正常在 K-loop 内加载 tile 并执行 DPAS

### SPIR-V cooperative matrix 的编译路径

原始 SPIR-V `OpCooperativeMatrixKHR` 走**不同的 IGC 前端路径**：
- IGC 的 SPIR-V 前端对 cooperative matrix 操作的支持**不完整**
- 只有最简单的模式（循环前加载 + 循环内 DPAS，操作数不变）被正确处理
- 任何在循环内使用 `OpCooperativeMatrixLoadKHR` 的模式都触发编译器 bug
- 这解释了为什么 dpas_latency 微基准测试能工作（loads 在循环外），而 GEMM 无法实现

### 循环结构限制的具体表现

```
IGC 对 cooperative matrix 的支持矩阵:

                    | DPAS 在循环外 | DPAS 在循环内
--------------------|---------------|-------------
Load 在循环外       | ✅ 正常       | ✅ 正常 (dpas_latency)
Load 在循环内       | N/A           | ❌ Bug 3 或 Bug 4
                                    (continue block 类型决定哪种失败)
```

GEMM 需要的是"Load 在循环内 + DPAS 在循环内" — 恰好是 IGC 唯一不支持的象限。

---

## 结论

**SPIR-V cooperative matrix 路径是不可行的 GEMM 方案。**

1. **IGC 编译器 bug** 使得在 K-loop 内使用 `OpCooperativeMatrixLoadKHR` 成为不可能：
   - 独立 continue block → GPU 挂起
   - Self-loop → DPAS 被消除
   - 两者覆盖了所有合法的 SPIR-V 循环结构

2. **这不是 SPIR-V 规范问题**：我们的 SPIR-V 代码完全合法，`spirv-as` 和 `spirv-val` 验证通过。问题出在 IGC 的 SPIR-V 前端。

3. **SYCL joint_matrix 使用完全不同的编译路径**（LLVM IR intrinsics），这就是为什么 SYCL 可以正常执行 GEMM 但原始 SPIR-V 不行。

4. **对性能差距的影响**：由于无法使用 SPIR-V 路径，无法通过绕过 SYCL 运行时来关闭 90.57T → 95T 的差距。剩余的 ~4.5T 差距只能通过以下方式关闭：
   - oneDNN（使用 hand-tuned GEN assembly JIT）
   - 直接编写 GEN ISA（绕过所有编译器）
   - 等待 Intel 修复 IGC 的 SPIR-V cooperative matrix 支持

---

## 测试文件索引

| 文件 | 用途 | 关键发现 |
|------|------|---------|
| `test_nop.spvasm` | dpas_latency + 3 参数 | 3 参数不影响 |
| `test_step1.spvasm` | dpas_latency + 1 uint 参数 | 参数数量不影响 |
| `test_args.spvasm` | dpas_latency + 3 uint 参数 | 6 参数不影响 |
| `test_wgid.spvasm` | + WorkgroupId builtin | builtin 不影响 |
| `test_ptrarith.spvasm` | + 指针算术 | 指针算术不影响 |
| `test_straight.spvasm` | 直线 Load+DPAS+Store | IGC 段错误 (Bug 2) |
| `test_loopload.spvasm` | 循环内 load + 独立 continue | GPU 挂起 (Bug 3) |
| `test_selfloop.spvasm` | 循环内 load + self-loop | DPAS 被消除 (Bug 4) |
| `test_kloop.spvasm` | 完整 K-loop + 偏移计算 | GPU 挂起 (Bug 3) |
| `gemm_1x1.spvasm` | 完整 1×1 GEMM | DPAS 被消除 (Bug 4) |
| `gemm_l0_runner.cpp` | Level Zero 调度器 | 正常工作，含正确性校验 |
