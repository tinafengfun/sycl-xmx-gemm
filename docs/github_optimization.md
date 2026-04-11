基于对 `intel/xetla` 源代码和 Intel BMG（Battlemage，Arc B 系列）架构的深度分析，以下是一份完整的技术优化手册。

---

# 在 Intel BMG 平台打满 BF16 GEMM 到 90+ TFLOPs 的完整优化指南

## 一、BMG 硬件础与峰值理论分析

BMG（Arc B580 代表型号）的 BF16 峰值算力来自 **XMX（Xe Matrix Extensions）引擎**。理解限制在哪，才知道怎么突破。

| 硬件参数 | BMG B580 | 说明 |
|---|---|---|
| Xe-core 数量 | ~20 Xe-cores | 每 Xe-core 含 8 个 XMX 单元 |
| XMX 单指令 | DPAS（深度乘积累加） | 支持 BF16→FP32 累加 |
| BF16 峰值 | ~96 TFLOPs | 仅限 XMX 路径，FP32 路径约 12 TFLOPs |
| HBM/GDDR6 带宽 | ~512 GB/s | GDDR6X |

**关键前提：90+ TFLOPs 必须且只能走 XMX/DPAS 路径，ALU 路径根本到不了这个数量级。**

---

## 二、核心优化技术栈（分层）

### 层1：XMX/DPAS 指令级优化

这是最底层的关键，其他一切都是为了让 DPAS 持续满负载运。

#### 1.1 DPAS 的正确使用姿势

DPAS（Dot Product Accumulate Systolic）是 BMG BF16 算力的唯一来源。从 `mma_xe.hpp` 可以看到：

```cpp name=include/subgroup/tile/impl/mma_xe.hpp url=https://github.com/intel/xetla/blob/7a1acbde4ff608141500e142324923257605862a/include/subgroup/tile/impl/mma_xe.hpp#L80-L83
static_assert((block_size_k == 32 / sizeof(dtype_a)),
    "DPAS depth only support the value of 32 / sizeof(dtype_a). ");
// BF16 的 block_size_k 必须 = 32/2 = 16
```

**对 BF16：DPAS Depth=16，每次处理 16 个 K 元素。** 要打满需要：
- 保证每个 XMX 发出的 DPAS 指令之间**无数据依赖气泡**
- 使用 `doubleGRF`（512B GRF 模式，BMG 支持）来存放更多 A/B tile，减少 spill

#### 1.2 double-GRF 模式（关键编译开关）

从 XeTLA 代码中直接看到生产级编译选项：

```cpp name=tests/integration/gemm/bf16_stream_k/main.cpp url=https://github.com/intel/xetla/blob/7a1acbde4ff608141500e142324923257605862a/tests/integration/gemm/bf16_stream_k/main.cpp#L300-L303
setenv("SYCL_PROGRAM_COMPILE_OPTIONS",
    " -vc-codegen -doubleGRF -vc-disable-indvars-opt "
    " -Xfinalizer '-printregusage -enableBCR -DPASTokenReduction '",
    1);
```

| 编译选项 | 作用 |
|---|---|
| `-doubleGRF` | 每个 thread 使用 256 个 GRF（512 bytes），而非默认 128，可存放更大的 tile，减少 load/store 频率 |
| `-DPASTokenReduction` | 减少 DPAS token 依赖的等待周期，关键！可显著提升 XMX 占用率 |
| `-enableBCR` | 用 Bank Conflict Reduction，减少 SLM 访问冲突 |
| `-vc-disable-indvars-opt` | 关闭某些可能破坏内循环的感应变量优化 |
| `-printregusage` | 调试用，打印 GRF 寄存器使用量，用于判断是否溢出 |

### 层2：Tile 分块策略（Workgroup/Subgroup 级）

这是**性能调优的核心旋钮**，直接决定 XMX 利用率和 cache 命中率。

#### 2.1 推荐 Tile 配置（来自 XeTLA 生产代码）

```cpp name=tests/integration/gemm/bf16_stream_k/main.cpp url=https://github.com/intel/xetla/blob/7a1acbde4ff608141500e142324923257605862a/tests/integration/gemm/bf16_stream_k/main.cpp#L77-L88
// Workgroup tile: 256x256
static constexpr size_t wg_m = 256;
static constexpr size_t wg_n = 256;
// Subgroup tile: 32x64
static constexpr size_t sg_m = 32;
static constexpr size_t sg_n = 64;
static constexpr size_t sg_k = 32;  // K-step per iteration
```

**分块选择原则：**

```
WG Tile (wg_m × wg_n):
  - 越大越好（更高 arithmetic intensity），但受 GRF 容量限
  - 推荐: 256×256，极端情况用 256×512

SG Tile (sg_m × sg_n):
  - sg_m 必须是 DPAS mma_m（8的倍数）的整数倍
  - sg_n 推荐 64 或 128（匹配 block_2d 消息宽度）
  - sg_k（K步长）= 32（BF16 下的黄金值：2×DPAS_depth×sizeof(BF16)=32字节）

每个 WG 的 SG 数量 = (wg_m/sg_m) × (wg_n/sg_n) = 8×4 = 32 subgroups
```

#### 2.2 VNNI 布局（B 矩阵内存格式）

B 矩阵必须转换为 **VNNI 格式**（Vertical N-strided Non-Interleaved），让 BF16 数据在寄存器里正好匹配 DPAS 输入格式：

```cpp name=include/group/gemm/impl/default_xmx_xe.hpp url=https://github.com/intel/xetla/blob/7a1acbde4ff608141500e142324923257605862a/include/group/gemm/impl/default_xmx_xe.hpp#L128-L130
static constexpr reg_layout reg_layout_b
    = sizeof(dtype_b) < sizeof(uint32_t) ? reg_layout::vnni_tiled
                                         : reg_layout::tiled;
// BF16(2字节) < uint32_t(4字节)，所以 B 强制使用 vnni_tiled 布局
```

VNNI 转换（`vnni_transform`）在每次循环中调用，将数据重排为 4字节对齐的 BF16 pairs，让每条 DPAS 指令可以同时处理 2 个 BF16 元素。

### 层3：预取流水线（Memory Latency Hiding）

BMG GDDR6X 延迟约 400-600 ns，不预取的话 XMX 将大量空转等数据。

#### 3.1 多级 Software Pipelining

从核心执行循环可以看到标准的三阶段流水：

```cpp name=include/group/gemm/impl/default_xmx_xe.hpp url=https://github.com/intel/xetla/blob/7a1acbde4ff608141500e142324923257605862a/include/group/gemm/impl/default_xmx_xe.hpp#L297-L352
// 阶段1：预热 prefetch（在主循环前预发送 stages 轮）
for (uint32_t i = 0; i < stages; i++) {
    tile_prefetch<cache_hint::cached, cache_hint::cached>(matA_prefetch_payload);
    tile_prefetch<cache_hint::cached, cache_hint::cached>(matB_prefetch_payload);
    // 推进 prefetch 指针
}

// 主循环：load + prefetch_next + compute 三路并行
for (uint32_t i = 0; i < inner_loop_count; i++) {
    tile_load(matB, matB_payload);          // 加载当前块
    tile_load(matA, matA_payload);
    tile_prefetch(matA_prefetch_payload);   // 预取下一块 (stages 步超前)
    tile_prefetch(matB_prefetch_payload);
    SW_BARRIER();  // 指令调度屏障，让编译器正确排列 load/compute 顺序
    // ... 更新 tdesc ...
    SW_BARRIER();
    vnni_transform(matB_acc, matB);         // VNNI 格式转换
    tile_mma::mma(matAcc, matAcc, matB_acc, matA_acc);  // DPAS 计算
    SW_BARRIER();
}
```

**关键参数调优：**

```
prefetch_distance (stages): 推荐 3-4
  - 太小：预取来不及，XMX 等数据
  - 太大：占用过多 GRF/cache，反而降低性能

periodic_sync_interval: 推荐 4-8
  - 控制 WG 内 SG 之间同步频率
  - 值越大，同步开销越小，但 L2 cache 压力越大
```

#### 3.2 Block 2D Load（2D 块加载消息）

BMG 原生支持 `block_2d` 消息，一次加载 2D 矩形块，比逐行 load 效率高 4-8×：

```cpp name=include/group/gemm/impl/default_xmx_xe.hpp url=https://github.com/intel/xetla/blob/7a1acbde4ff608141500e142324923257605862a/include/group/gemm/impl/default_xmx_xe.hpp#L121-L123
using matA_payload_t = subgroup::mem_payload_t<mem_desc_a_t,
    matA_tile_desc_t,
    is_local_a ? msg_type::scatter : msg_type::block_2d, arch_tag>;
// 全局内存用 block_2d，SLM 用 scatter
```

**Block 2D 要求对齐：**
- 起始地址 64-byte 对齐
- 行宽（leading dimension）是 64-byte 的整数倍
- 对于 BF16：leading_dim 必须是 32 的倍数

### 层4：Work Group 调度与 Wave 效率

#### 4.1 Stream-K 调度策略（解决 Wave Quantization 问题）

这是 BMG 上最重要的**系统级优化**，尤其对非方形矩阵或中等大小的 M/N 维度。

**问题：** 普通 data-parallel GEMM，若 GEMM tile 数量不是 XE-core 数的整数倍，最后一波（wave��GPU 利用率骤降。

**Stream-K 解决方案：**

```cpp name=tests/integration/gemm/bf16_stream_k/main.cpp url=https://github.com/intel/xetla/blob/7a1acbde4ff608141500e142324923257605862a/tests/integration/gemm/bf16_stream_k/main.cpp#L289-L298
using dispatch_stream_k = gpu::xetla::kernel::dispatch_policy_stream_k<gpu_arch::Xe>;
using gemm_op_t = xetla::kernel::gemm_universal_t<dispatch_stream_k, gemm_config, epilogue_t>;

// 设置 Stream-K 参数，按实际可用 XE-core 数分配工作
dispatch_stream_k stream_k(matrix_m, matrix_k, matrix_n, wg_tile_m,
    gemm_config::k_stride, wg_tile_n, sg_tile_m, sg_tile_n,
    avail_xecores);  // 关键：指定可用 XE-core 数
```

Stream-K 将 K 维度切片并分配给所有 XE-core，保证每个 core 的工作量均衡，避免最后一波的空转损失（可以从 25% GPU 利用率提升到 95%+）。

#### 4.2 Group Swizzle（L2 缓存局部性优化）

```cpp name=tests/integration/gemm/bf16/kernel_func.hpp url=https://github.com/intel/xetla/blob/7a1acbde4ff608141500e142324923257605862a/tests/integration/gemm/bf16/kernel_func.hpp#L37-L40
using group_swizzle = gpu::xetla::kernel::group_swizzle_default<gpu_arch::Xe>;
using dispatch_policy = dispatch_policy_kslicing<group_swizzle,
    global_kslicing, local_kslicing>;
```

通过调整 WG 的执行顺序（z 字形/swizzle 模式），让相邻 WG 共享 A 或 B 的 L2 缓存数据，大幅降低 GDDR 带宽压力。

### 层5：Named Barrier 与同步优化

```cpp name=include/group/gemm/impl/default_xmx_xe.hpp url=https://github.com/intel/xetla/blob/7a1acbde4ff608141500e142324923257605862a/include/group/gemm/impl/default_xmx_xe.hpp#L150-L156
static constexpr bool enable_periodic_sync = (sync_freq != 0);
static constexpr uint32_t barrier_count_x = wg_size_y > 1 ? wg_size_x : 0;
static constexpr uint32_t barrier_count_y = wg_size_x > 1 ? wg_size_y : 0;
// Named Barrier 按行/列分组，避免全 WG 同步的开销
```

用 **Named Barrier（行/列分离同步）** 代替全 WG Barrier，减少不必要的等待。

---

## 三、端到端优化 Checklist

```
┌─────────────────────────────────────────────────────────────┐
│  目标：BF16 GEMM > 90 TFLOPs on Intel BMG                  │
├─────────────────────────────────────────────────────────────┤
│ □ 1. 必须用 XMX/DPAS 路径（SYCL + XeTLA 或 oneDNN）         │
│ □ 2. 编译开关：-doubleGRF + -DPASTokenReduction             │
│ □ 3. BF16 数据，FP32 accumulator（DPAS 硬件要求）           │
│ □ 4. B 矩阵 VNNI 格式转换（vnni_transform）                 │
│ □ 5. WG tile ≥ 256×256，SG tile = 32×64                    │
│ □ 6. sg_k = 32（BF16 DPAS 最优 K-step）                    │
│ □ 7. prefetch_distance = 3-4，periodic_sync = 4-8          │
│ □ 8. Block 2D Load，leading_dim 对齐到 64 bytes             │
│ □ 9. Stream-K 调度（尤其 M/N 较小或非整数倍 wave 时）        │
│ □ 10. Group Swizzle 优化 L2 局部性                          │
│ □ 11. M/N/K 尽量选 256 的整数倍（消除 tail 处理开销）        │
│ □ 12. 矩阵尺寸 ≥ 2048×2048×2048 才能打满（小矩阵受启动开销限制）│
└─────────────────────────────────────────────────────────────┘
```

---

## 四、推荐工具链与路径

| 路径 | 优点 | 适合场景 |
|---|---|---|
| **Intel XeTLA** ([intel/xetla](https://github.com/intel/xetla)) | 直接操作 XMX 硬件，性能最高 | 自定义 kernel，追求极致性能 |
| **oneDNN (DNNL)** | 有调好的 GEMM primitive | 框架集成，工程优先 |
| **SYCL + joint_matrix** | 标准 API | 可移植性优先 |
| **Intel Extension for PyTorch** | 高层 API | PyTorch 生态 |

对于追求 90+ TFLOPs 的场景，**XeTLA 是唯一能精确控制所有硬件参数的路径**。

---

## 五、性能瓶颈诊断

如果还是打不满，按顺序检查：

1. **用 Intel VTune / GPU Hotspot 确认 XMX Active Time** → 应 > 85%
2. **检查 GRF Spill** → `-printregusage` 输出的 GRF 数应 ≤ 256（doubleGRF 模式）
3. **检查 L2 Hit Rate** → 应 > 70%，否则调整 swizzle 策略
4. **检查 Wave 效率** → `矩阵tile数 / XE-core数` 不是整数时，必须用 Stream-K
5. **检查内存对齐** → Block 2D 的起始地址和 pitch 必须是 64-byte 对齐n
