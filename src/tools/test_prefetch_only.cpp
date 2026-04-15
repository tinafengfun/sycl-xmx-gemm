// ==========================================================================
// 最小 prefetch 测试 — 只含 joint_matrix_prefetch，不含任何 compute
//
// 如果 prefetch 生效：ISA 中应有 LSC prefetch / load_block2d 到 null
// 如果 prefetch 是 NOP：ISA 中只有地址计算指令，没有任何 load
// ==========================================================================

#include <sycl/sycl.hpp>
#include <sycl/ext/oneapi/bfloat16.hpp>
#include <sycl/ext/oneapi/matrix/matrix.hpp>
#include <cstdio>
#include <cstdint>

namespace matrix = sycl::ext::oneapi::experimental::matrix;
using bf16 = sycl::ext::oneapi::bfloat16;

int main() {
    sycl::queue q(sycl::gpu_selector_v);
    printf("Minimal prefetch test: %s\n",
           q.get_device().get_info<sycl::info::device::name>().c_str());

    // 1024 bf16 elements — small buffer
    constexpr int N = 1024;
    auto *buf = sycl::malloc_device<bf16>(N, q);
    q.fill(buf, bf16(0.0f), N).wait();

    // Kernel: 每个 SG 做 4 次 prefetch，不做任何计算
    q.submit([&](sycl::handler& h) {
        h.parallel_for(
            sycl::nd_range<1>(64, 16),
            [=](sycl::nd_item<1> item) [[sycl::reqd_sub_group_size(16)]] {
                sycl::sub_group sg = item.get_sub_group();
                // 4 prefetch calls with different offsets
                matrix::joint_matrix_prefetch<8,32>(
                    sg, buf + 0, 32,
                    matrix::layout::row_major,
                    sycl::ext::oneapi::experimental::properties{
                        sycl::ext::oneapi::experimental::prefetch_hint_L1});
                matrix::joint_matrix_prefetch<8,32>(
                    sg, buf + 64, 32,
                    matrix::layout::row_major,
                    sycl::ext::oneapi::experimental::properties{
                        sycl::ext::oneapi::experimental::prefetch_hint_L1});
                matrix::joint_matrix_prefetch<8,32>(
                    sg, buf + 128, 32,
                    matrix::layout::row_major,
                    sycl::ext::oneapi::experimental::properties{
                        sycl::ext::oneapi::experimental::prefetch_hint_L2});
                matrix::joint_matrix_prefetch<8,32>(
                    sg, buf + 256, 32,
                    matrix::layout::row_major,
                    sycl::ext::oneapi::experimental::properties{
                        sycl::ext::oneapi::experimental::prefetch_hint_L2});
            });
    }).wait();

    sycl::free(buf, q);
    printf("Done. Check ISA dump for prefetch instructions.\n");
    return 0;
}
