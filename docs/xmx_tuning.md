Tuning Techniques for Performance
In order to get optimal performance on Intel® XMX, the GEMM kernel has to be written in a way that keeps feeding Intel® XMX with data it needs to perform the maximum multiply and adds operations/cycle. Some of these tuning techniques are the following:

Sub-group partitioning: One sub-group can perform multiple DPAS operations. The different combinations that are supported are documented in Combinations and Restrictions on Intel GPUs. In order to optimally utilize the registers available to the matrix engine, a combination of 32x64x16 should be used. This can be achieved via either issuing 16 joint_matrix_mad operations by one sub-group that reuse 4 A matrices, 4 B matrices, and 16 C matrices or directly use joint_matrix shape combination of 32x64x16.

Work group partitioning: The loop blocking for cache locality should be made on the three`` i``,``j``, and k dimensions. Blocking on the first two dimensions is included in the global range of the kernel. The k-level cache blocking is done within the kernel body. e.g. by choosing block factors of 256x256x32, global range results in:

range<2> global{M / 256, N / 256 * SG_SIZE};
Then, by choosing one sub - group to perform 32x64x32 elements, local range results in:

range<2> local{256 / 64, 256 / 32 * SG_SIZE};
Large register file per thread gives the best results for the GEMM kernel. This can be explicitly specified in the compilation command as follows:

icpx -fsycl -fsycl-targets=spir64_gen -Xsycl-target-backend "-device pvc -options -ze-opt-large-register-file" joint-matrix.cpp
Prefetch: the usage of the API joint_matrix_prefetch delivers about 30 of additional performance on PVC hardware. An example of usage can be found in Matrix/joint_matrix_bf16_fill_k_cache_prefetch.cpp.

Pre and Post Processing
Using joint_matrix_apply generates efficient vectorized code on the GPU with no extra trips to the memory as the data used for the GEMM reside in the same GPU registers used for the element-wise operation:

void gemm_gelu_kernel (bfloat16 *memA,
       bfloat16 *memB, float *memC) {
 ...
 q.parallel_for(nd_range<2>(G, L),
                [=](nd_item<2> item) {
 ...
   for (int k = 0; k < K; k += tK) {
     ...
     joint_matrix_mad(sg, tC, tA, tB, tC);
   }
   joint_matrix_apply(sg, tC, [=](T &x) {
     gelu(x);
   });
   joint_matrix_store(sg, tC, pC + offset,
                      layout::row_major);
 }).wait();
}
Some algorithms require the application to know the coordinates of each element as it operates on them. A new form of the joint_matrix_apply function in the sycl::ext::intel::matrix namespace allows the application to perform an operation on each element of the matrix while providing the matrix coordinates of each element to the callback function:

joint_matrix_apply(sg, A, [=](T &val, size_t row, size_t  col) {
 sum_local_rows[row] += val;
});
