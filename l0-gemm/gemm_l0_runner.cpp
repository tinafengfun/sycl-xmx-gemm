// Level Zero GEMM Runner
// Loads SPIR-V BF16 GEMM kernel, dispatches, benchmarks
//
// Build:
//   g++ -std=c++17 -O2 -o gemm_l0_runner gemm_l0_runner.cpp -lze_loader -lm
//
// Usage:
//   ./gemm_l0_runner kernel.spv M N K [wg_x wg_y] [warmup iters]

#define ZET_ENABLE_METRICS 1
#include <level_zero/ze_api.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <algorithm>
#include <cmath>
#include <vector>
#include <fstream>
#include <chrono>

#define CHECK_ZE(call) do { \
    ze_result_t r = (call); \
    if (r != ZE_RESULT_SUCCESS) { \
        fprintf(stderr, "L0 error %d at %s:%d: %s\n", r, __FILE__, __LINE__, #call); \
        exit(1); \
    } \
} while(0)

static uint16_t float_to_bf16(float f) {
    uint32_t u;
    memcpy(&u, &f, sizeof(u));
    return (uint16_t)(u >> 16);
}

static float bf16_to_float(uint16_t h) {
    uint32_t u = (uint32_t)h << 16;
    float f;
    memcpy(&f, &u, sizeof(f));
    return f;
}

static void read_file(const char* path, std::vector<uint8_t>& buf) {
    std::ifstream f(path, std::ios::binary | std::ios::ate);
    if (!f) { fprintf(stderr, "Cannot open %s\n", path); exit(1); }
    size_t sz = f.tellg();
    f.seekg(0);
    buf.resize(sz);
    f.read((char*)buf.data(), sz);
}

// CPU reference GEMM: C = alpha * A * B + beta * C
void ref_gemm_bf16(float alpha, const uint16_t* A, int lda,
                   const uint16_t* B, int ldb,
                   float beta, float* C, int ldc,
                   int M, int N, int K) {
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            float sum = 0.0f;
            for (int p = 0; p < K; p++) {
                sum += bf16_to_float(A[i * lda + p]) * bf16_to_float(B[p * ldb + j]);
            }
            C[i * ldc + j] = alpha * sum + beta * C[i * ldc + j];
        }
    }
}

int main(int argc, char** argv) {
    if (argc < 5) {
        fprintf(stderr, "Usage: %s <kernel.spv> M N K [kernel_name] [warmup iters]\n", argv[0]);
        fprintf(stderr, "  kernel_name defaults to 'gemm_1x1'\n");
        return 1;
    }
    const char* spv_path = argv[1];
    int M = atoi(argv[2]);
    int N = atoi(argv[3]);
    int K = atoi(argv[4]);
    const char* kern_name = argc > 5 ? argv[5] : "gemm_1x1";
    int warmup = argc > 6 ? atoi(argv[6]) : 10;
    int iters  = argc > 7 ? atoi(argv[7]) : 50;

    printf("=== Level Zero BF16 GEMM ===\n");
    printf("M=%d N=%d K=%d  kernel=%s  warmup=%d iters=%d\n", M, N, K, kern_name, warmup, iters);

    // Init Level Zero
    CHECK_ZE(zeInit(0));

    uint32_t driverCount = 0;
    CHECK_ZE(zeDriverGet(&driverCount, nullptr));
    std::vector<ze_driver_handle_t> drivers(driverCount);
    CHECK_ZE(zeDriverGet(&driverCount, drivers.data()));
    ze_driver_handle_t driver = drivers[0];

    uint32_t deviceCount = 0;
    CHECK_ZE(zeDeviceGet(driver, &deviceCount, nullptr));
    std::vector<ze_device_handle_t> devices(deviceCount);
    CHECK_ZE(zeDeviceGet(driver, &deviceCount, devices.data()));
    ze_device_handle_t device = devices[0];

    ze_device_properties_t devProps = {ZE_STRUCTURE_TYPE_DEVICE_PROPERTIES};
    CHECK_ZE(zeDeviceGetProperties(device, &devProps));
    printf("Device: %s\n", devProps.name);

    ze_context_desc_t ctxDesc = {ZE_STRUCTURE_TYPE_CONTEXT_DESC, nullptr, 0};
    ze_context_handle_t context;
    CHECK_ZE(zeContextCreate(driver, &ctxDesc, &context));

    // Create command queue and list
    ze_command_queue_desc_t cqDesc = {};
    cqDesc.stype = ZE_STRUCTURE_TYPE_COMMAND_QUEUE_DESC;
    cqDesc.ordinal = 0;
    cqDesc.index = 0;
    cqDesc.mode = ZE_COMMAND_QUEUE_MODE_DEFAULT;
    cqDesc.priority = ZE_COMMAND_QUEUE_PRIORITY_NORMAL;
    ze_command_queue_handle_t cmdQueue;
    CHECK_ZE(zeCommandQueueCreate(context, device, &cqDesc, &cmdQueue));

    ze_command_list_desc_t clDesc = {};
    clDesc.stype = ZE_STRUCTURE_TYPE_COMMAND_LIST_DESC;
    clDesc.commandQueueGroupOrdinal = 0;
    ze_command_list_handle_t cmdList;
    CHECK_ZE(zeCommandListCreate(context, device, &clDesc, &cmdList));

    // Load native binary or SPIR-V
    std::vector<uint8_t> moduleBin;
    read_file(spv_path, moduleBin);
    printf("Module: %s (%zu bytes)\n", spv_path, moduleBin.size());

    // Detect format: native binary (.bin) vs SPIR-V (.spv)
    bool isNative = strstr(spv_path, ".bin") != nullptr;

    ze_module_desc_t modDesc = {};
    modDesc.stype = ZE_STRUCTURE_TYPE_MODULE_DESC;
    modDesc.format = isNative ? ZE_MODULE_FORMAT_NATIVE : ZE_MODULE_FORMAT_IL_SPIRV;
    modDesc.inputSize = moduleBin.size();
    modDesc.pInputModule = moduleBin.data();
    modDesc.pBuildFlags = "";
    ze_module_handle_t module;
    ze_result_t modResult = zeModuleCreate(context, device, &modDesc, &module, nullptr);
    if (modResult != ZE_RESULT_SUCCESS) {
        fprintf(stderr, "Module create failed: %d\n", modResult);
        return 1;
    }

    ze_kernel_desc_t kernDesc = {};
    kernDesc.stype = ZE_STRUCTURE_TYPE_KERNEL_DESC;
    kernDesc.pKernelName = kern_name;
    ze_kernel_handle_t kernel;
    CHECK_ZE(zeKernelCreate(module, &kernDesc, &kernel));

    // Set WG size based on kernel type
    uint32_t wg_x, wg_y, wg_z;
    if (strcmp(kern_name, "gemm_4x4") == 0) {
        wg_x = 64; wg_y = 1; wg_z = 1;  // 4 SGs per WG
    } else {
        wg_x = 16; wg_y = 1; wg_z = 1;  // 1 SG per WG
    }
    CHECK_ZE(zeKernelSetGroupSize(kernel, wg_x, wg_y, wg_z));
    printf("WG size: %u x %u x %u\n", wg_x, wg_y, wg_z);

    // Allocate matrices
    // A: M×K BF16 row-major
    // B: VNNI-packed BF16: (K/2) × (N*2)
    // C: M×N FP32 row-major
    size_t szA = (size_t)M * K * sizeof(uint16_t);
    size_t szBv = (size_t)(K/2) * (N*2) * sizeof(uint16_t);
    size_t szC = (size_t)M * N * sizeof(float);

    ze_device_mem_alloc_desc_t devMemDesc = {ZE_STRUCTURE_TYPE_DEVICE_MEM_ALLOC_DESC};
    ze_host_mem_alloc_desc_t hostMemDesc = {ZE_STRUCTURE_TYPE_HOST_MEM_ALLOC_DESC};

    void *dA, *dBv, *dC;
    CHECK_ZE(zeMemAllocShared(context, &devMemDesc, &hostMemDesc, szA, 64, device, &dA));
    CHECK_ZE(zeMemAllocShared(context, &devMemDesc, &hostMemDesc, szBv, 64, device, &dBv));
    CHECK_ZE(zeMemAllocShared(context, &devMemDesc, &hostMemDesc, szC, 64, device, &dC));

    // Initialize A and B with test data, C with zeros
    srand(42);
    // A: M×K BF16 row-major
    std::vector<uint16_t> hA_vec(M * K);
    std::vector<uint16_t> hB_vec(K * N);
    for (int i = 0; i < M * K; i++) hA_vec[i] = float_to_bf16(1.0f + (rand() % 100) / 1000.0f);
    for (int i = 0; i < K * N; i++) hB_vec[i] = float_to_bf16(1.0f + (rand() % 100) / 1000.0f);

    // Copy A to device
    memcpy(dA, hA_vec.data(), szA);

    // VNNI-pack B: (K/2) × (N*2) from K×N row-major
    uint16_t* hBv = (uint16_t*)dBv;
    const int VNNI = 2;
    for (int k = 0; k < K; k += VNNI)
        for (int n = 0; n < N; n++)
            for (int v = 0; v < VNNI; v++)
                hBv[(k/VNNI) * (N*VNNI) + n*VNNI + v] = hB_vec[(k+v) * N + n];

    // Zero C
    memset(dC, 0, szC);

    // Set kernel arguments
    uint32_t M_u = (uint32_t)M, N_u = (uint32_t)N, K_u = (uint32_t)K;
    CHECK_ZE(zeKernelSetArgumentValue(kernel, 0, sizeof(void*), &dA));
    CHECK_ZE(zeKernelSetArgumentValue(kernel, 1, sizeof(void*), &dBv));
    CHECK_ZE(zeKernelSetArgumentValue(kernel, 2, sizeof(void*), &dC));
    CHECK_ZE(zeKernelSetArgumentValue(kernel, 3, sizeof(uint32_t), &M_u));
    CHECK_ZE(zeKernelSetArgumentValue(kernel, 4, sizeof(uint32_t), &N_u));
    CHECK_ZE(zeKernelSetArgumentValue(kernel, 5, sizeof(uint32_t), &K_u));

    // Compute dispatch dimensions
    int tile_m = (strcmp(kern_name, "gemm_4x4") == 0) ? 64 : 8;
    int tile_n = (strcmp(kern_name, "gemm_4x4") == 0) ? 128 : 8;
    uint32_t nWG_x = M / tile_m;
    uint32_t nWG_y = N / tile_n;
    printf("Dispatch: %u x %u WGs, tile=%dx%d\n", nWG_x, nWG_y, tile_m, tile_n);

    if (M % tile_m != 0 || N % tile_n != 0) {
        fprintf(stderr, "ERROR: M=%d not divisible by %d or N=%d not divisible by %d\n",
                M, tile_m, N, tile_n);
        return 1;
    }

    ze_group_count_t dispatch = {nWG_x, nWG_y, 1};

    // Launch helper
    auto launch = [&]() -> void {
        CHECK_ZE(zeCommandListAppendLaunchKernel(cmdList, kernel, &dispatch, nullptr, 0, nullptr));
    };

    // Warmup
    for (int i = 0; i < warmup; i++) {
        launch();
        CHECK_ZE(zeCommandListAppendBarrier(cmdList, nullptr, 0, nullptr));
    }
    CHECK_ZE(zeCommandListClose(cmdList));
    CHECK_ZE(zeCommandQueueExecuteCommandLists(cmdQueue, 1, &cmdList, nullptr));
    CHECK_ZE(zeCommandQueueSynchronize(cmdQueue, UINT64_MAX));
    CHECK_ZE(zeCommandListReset(cmdList));

    // Timed runs
    double flops = 2.0 * (double)M * N * K;
    double best_ms = 1e9, total_ms = 0;

    for (int i = 0; i < iters; i++) {
        launch();
        CHECK_ZE(zeCommandListAppendBarrier(cmdList, nullptr, 0, nullptr));
        CHECK_ZE(zeCommandListClose(cmdList));

        auto t0 = std::chrono::high_resolution_clock::now();
        CHECK_ZE(zeCommandQueueExecuteCommandLists(cmdQueue, 1, &cmdList, nullptr));
        CHECK_ZE(zeCommandQueueSynchronize(cmdQueue, UINT64_MAX));
        auto t1 = std::chrono::high_resolution_clock::now();
        double ms = std::chrono::duration<double, std::milli>(t1 - t0).count();
        total_ms += ms;
        if (ms < best_ms) best_ms = ms;
        CHECK_ZE(zeCommandListReset(cmdList));
    }
    double avg_ms = total_ms / iters;
    printf("\n=== Results ===\n");
    printf("best=%8.3f ms  avg=%8.3f ms\n", best_ms, avg_ms);
    printf("TF_best=%7.2f  TF_avg=%7.2f\n", flops/(best_ms*1e-3)/1e12, flops/(avg_ms*1e-3)/1e12);

    // Verify correctness (small problem only)
    float* gpuC = (float*)dC;
    if (M <= 256 && N <= 256 && K <= 256) {
        printf("\n--- Correctness check ---\n");
        float* refC = new float[M * N];
        memset(refC, 0, M * N * sizeof(float));
        ref_gemm_bf16(1.0f, hA_vec.data(), K, hB_vec.data(), N, 0.0f, refC, N, M, N, K);

        int errors = 0;
        float max_err = 0;
        for (int i = 0; i < M * N; i++) {
            float diff = fabsf(gpuC[i] - refC[i]);
            float rel = fabsf(refC[i]) > 1e-6f ? diff / fabsf(refC[i]) : diff;
            if (rel > 0.05f) errors++;
            if (diff > max_err) max_err = diff;
        }
        printf("Max absolute error: %e\n", max_err);
        printf("Errors (rel > 5%%): %d / %d\n", errors, M * N);
        if (errors == 0) printf("PASS\n");
        else {
            printf("FAIL\n");
            printf("Sample: gpu[0..3] = %.4f %.4f %.4f %.4f\n", gpuC[0], gpuC[1], gpuC[2], gpuC[3]);
            printf("        ref[0..3] = %.4f %.4f %.4f %.4f\n", refC[0], refC[1], refC[2], refC[3]);
        }
        delete[] refC;
    } else {
        printf("\n(Skipping correctness check for large problem; sample output: %.4f %.4f %.4f %.4f)\n",
               gpuC[0], gpuC[1], gpuC[2], gpuC[3]);
    }

    // Cleanup
    zeMemFree(context, dA);
    zeMemFree(context, dBv);
    zeMemFree(context, dC);
    zeCommandListDestroy(cmdList);
    zeCommandQueueDestroy(cmdQueue);
    zeKernelDestroy(kernel);
    zeModuleDestroy(module);
    zeContextDestroy(context);
    return 0;
}
