// Query BMG supported joint_matrix shapes
#include <sycl/sycl.hpp>
#include <sycl/ext/oneapi/bfloat16.hpp>
#include <sycl/ext/oneapi/matrix/matrix.hpp>
#include <cstdio>

int main() {
    sycl::queue q(sycl::gpu_selector_v);
    auto dev = q.get_device();
    printf("Device: %s\n", dev.get_info<sycl::info::device::name>().c_str());

    auto combos = dev.get_info<
        sycl::ext::oneapi::experimental::info::device::matrix_combinations>();
    printf("\nSupported joint_matrix combinations:\n");
    for (auto& c : combos) {
        printf("  M=%3zu  N=%3zu  K=%3zu  nsize=%zu\n",
               (size_t)c.msize, (size_t)c.nsize, (size_t)c.ksize, (size_t)c.nsize);
    }
    printf("\nTotal: %zu combinations\n", combos.size());

    // Check for 32x64x16 specifically
    bool has_32x64 = false;
    for (auto& c : combos) {
        if (c.msize == 32 && c.nsize == 64 && c.ksize == 16) {
            has_32x64 = true;
            break;
        }
    }
    printf("\n32x64x16 accumulator (BF16): %s\n", has_32x64 ? "SUPPORTED" : "NOT FOUND");

    // Also check for specific shapes
    int shapes[][3] = {{8,16,16}, {8,32,16}, {16,16,16}, {16,32,16}, {32,16,16}, {32,32,16}, {32,64,16}, {1,64,16}};
    printf("\nDetailed shape check:\n");
    for (auto& s : shapes) {
        bool found = false;
        for (auto& c : combos) {
            if ((int)c.msize == s[0] && (int)c.nsize == s[1] && (int)c.ksize == s[2]) {
                found = true;
                break;
            }
        }
        printf("  %dx%dx%d: %s\n", s[0], s[1], s[2], found ? "YES" : "NO");
    }

    return 0;
}
