; ------------------------------------------------
; OCL_asm00de1ea9b83c878d_optimized.ll
; ------------------------------------------------
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "spir64-unknown-unknown"

%"class.sycl::_V1::ext::oneapi::bfloat16" = type { i16 }

; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZZ5benchILi4ELi4ELi1ELi1ELb0EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
.preheader1.preheader:
  %5 = extractelement <8 x i32> %r0, i64 1
  %6 = extractelement <8 x i32> %r0, i64 6
  %7 = bitcast <8 x i32> %r0 to <32 x i8>
  %8 = extractelement <32 x i8> %7, i64 8
  %localThreadId5 = zext i8 %8 to i32
  %9 = icmp sgt i32 %6, -1
  call void @llvm.assume(i1 %9)
  %10 = zext i32 %5 to i64
  %11 = icmp sgt i32 %5, -1
  call void @llvm.assume(i1 %11)
  %12 = add nuw i32 %6, %localThreadId5
  %13 = shl i32 %12, 5
  %14 = shl nsw i32 %5, 6, !spirv.Decorations !429
  %15 = mul nsw i32 %13, %3
  %16 = sext i32 %15 to i64
  %17 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %18 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %17, i64 %16
  %19 = shl nsw i32 %4, 1, !spirv.Decorations !429
  %20 = sext i32 %19 to i64
  %21 = shl nuw nsw i64 %10, 7, !spirv.Decorations !431
  %22 = and i64 %21, 4294967168
  %23 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %24 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %23, i64 %22
  %25 = shl i32 %5, 7
  %26 = icmp sgt i32 %3, 0
  br i1 %26, label %.lr.ph, label %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge

.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge: ; preds = %.preheader1.preheader
  %.pre = shl i32 %4, 2
  %.pre154 = add i32 %.pre, -1
  %.pre156 = or i32 %13, 8
  %.pre158 = or i32 %13, 16
  %.pre160 = or i32 %13, 24
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit

.lr.ph:                                           ; preds = %.preheader1.preheader
  %27 = shl i32 %3, 1
  %28 = add i32 %27, -1
  %29 = shl i32 %4, 2
  %30 = add i32 %29, -1
  %31 = or i32 %13, 8
  %32 = mul nsw i32 %31, %3
  %33 = sext i32 %32 to i64
  %34 = or i32 %13, 16
  %35 = mul nsw i32 %34, %3
  %36 = sext i32 %35 to i64
  %37 = or i32 %13, 24
  %38 = mul nsw i32 %37, %3
  %39 = sext i32 %38 to i64
  %40 = zext i32 %25 to i64
  %41 = or i32 %25, 32
  %42 = zext i32 %41 to i64
  %43 = or i32 %25, 64
  %44 = zext i32 %43 to i64
  %45 = or i32 %25, 96
  %46 = zext i32 %45 to i64
  br label %170

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit: ; preds = %.preheader.preheader, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge
  %.pre-phi161 = phi i32 [ %.pre160, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %37, %.preheader.preheader ]
  %.pre-phi159 = phi i32 [ %.pre158, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %34, %.preheader.preheader ]
  %.pre-phi157 = phi i32 [ %.pre156, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %31, %.preheader.preheader ]
  %.pre-phi155 = phi i32 [ %.pre154, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %30, %.preheader.preheader ]
  %.sroa.088.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %351, %.preheader.preheader ]
  %.sroa.693.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %354, %.preheader.preheader ]
  %.sroa.10.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %357, %.preheader.preheader ]
  %.sroa.14.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %360, %.preheader.preheader ]
  %.sroa.18.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %363, %.preheader.preheader ]
  %.sroa.22.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %366, %.preheader.preheader ]
  %.sroa.26.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %369, %.preheader.preheader ]
  %.sroa.30.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %372, %.preheader.preheader ]
  %.sroa.34.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %375, %.preheader.preheader ]
  %.sroa.38.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %378, %.preheader.preheader ]
  %.sroa.42.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %381, %.preheader.preheader ]
  %.sroa.46.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %384, %.preheader.preheader ]
  %.sroa.50.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %387, %.preheader.preheader ]
  %.sroa.54.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %390, %.preheader.preheader ]
  %.sroa.58.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %393, %.preheader.preheader ]
  %.sroa.62.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %396, %.preheader.preheader ]
  %47 = zext i32 %14 to i64
  %48 = bitcast i8 addrspace(1)* %2 to float addrspace(1)*
  %49 = getelementptr float, float addrspace(1)* %48, i64 %47
  %50 = mul nsw i32 %13, %4, !spirv.Decorations !429
  %51 = sext i32 %50 to i64
  %52 = getelementptr float, float addrspace(1)* %49, i64 %51
  %53 = bitcast float addrspace(1)* %52 to i8 addrspace(1)*
  %.ascast.i90 = addrspacecast i8 addrspace(1)* %53 to i8 addrspace(4)*
  %54 = ptrtoint i8 addrspace(4)* %.ascast.i90 to i64
  %55 = and i64 %54, -64
  %56 = trunc i64 %54 to i32
  %57 = lshr i32 %56, 2
  %58 = and i32 %57, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %55, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %58, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.088.0)
  %59 = getelementptr inbounds float, float addrspace(1)* %52, i64 16
  %60 = bitcast float addrspace(1)* %59 to i8 addrspace(1)*
  %.ascast.i90.1 = addrspacecast i8 addrspace(1)* %60 to i8 addrspace(4)*
  %61 = ptrtoint i8 addrspace(4)* %.ascast.i90.1 to i64
  %62 = and i64 %61, -64
  %63 = trunc i64 %61 to i32
  %64 = lshr i32 %63, 2
  %65 = and i32 %64, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %62, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %65, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.693.0)
  %66 = getelementptr inbounds float, float addrspace(1)* %52, i64 32
  %67 = bitcast float addrspace(1)* %66 to i8 addrspace(1)*
  %.ascast.i90.2 = addrspacecast i8 addrspace(1)* %67 to i8 addrspace(4)*
  %68 = ptrtoint i8 addrspace(4)* %.ascast.i90.2 to i64
  %69 = and i64 %68, -64
  %70 = trunc i64 %68 to i32
  %71 = lshr i32 %70, 2
  %72 = and i32 %71, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %69, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %72, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.10.0)
  %73 = getelementptr inbounds float, float addrspace(1)* %52, i64 48
  %74 = bitcast float addrspace(1)* %73 to i8 addrspace(1)*
  %.ascast.i90.3 = addrspacecast i8 addrspace(1)* %74 to i8 addrspace(4)*
  %75 = ptrtoint i8 addrspace(4)* %.ascast.i90.3 to i64
  %76 = and i64 %75, -64
  %77 = trunc i64 %75 to i32
  %78 = lshr i32 %77, 2
  %79 = and i32 %78, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %76, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %79, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.14.0)
  %80 = mul nsw i32 %.pre-phi157, %4, !spirv.Decorations !429
  %81 = sext i32 %80 to i64
  %82 = getelementptr float, float addrspace(1)* %49, i64 %81
  %83 = bitcast float addrspace(1)* %82 to i8 addrspace(1)*
  %.ascast.i90.136 = addrspacecast i8 addrspace(1)* %83 to i8 addrspace(4)*
  %84 = ptrtoint i8 addrspace(4)* %.ascast.i90.136 to i64
  %85 = and i64 %84, -64
  %86 = trunc i64 %84 to i32
  %87 = lshr i32 %86, 2
  %88 = and i32 %87, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %85, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %88, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.18.0)
  %89 = getelementptr inbounds float, float addrspace(1)* %82, i64 16
  %90 = bitcast float addrspace(1)* %89 to i8 addrspace(1)*
  %.ascast.i90.1.1 = addrspacecast i8 addrspace(1)* %90 to i8 addrspace(4)*
  %91 = ptrtoint i8 addrspace(4)* %.ascast.i90.1.1 to i64
  %92 = and i64 %91, -64
  %93 = trunc i64 %91 to i32
  %94 = lshr i32 %93, 2
  %95 = and i32 %94, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %92, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %95, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.22.0)
  %96 = getelementptr inbounds float, float addrspace(1)* %82, i64 32
  %97 = bitcast float addrspace(1)* %96 to i8 addrspace(1)*
  %.ascast.i90.2.1 = addrspacecast i8 addrspace(1)* %97 to i8 addrspace(4)*
  %98 = ptrtoint i8 addrspace(4)* %.ascast.i90.2.1 to i64
  %99 = and i64 %98, -64
  %100 = trunc i64 %98 to i32
  %101 = lshr i32 %100, 2
  %102 = and i32 %101, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %99, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %102, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.26.0)
  %103 = getelementptr inbounds float, float addrspace(1)* %82, i64 48
  %104 = bitcast float addrspace(1)* %103 to i8 addrspace(1)*
  %.ascast.i90.3.1 = addrspacecast i8 addrspace(1)* %104 to i8 addrspace(4)*
  %105 = ptrtoint i8 addrspace(4)* %.ascast.i90.3.1 to i64
  %106 = and i64 %105, -64
  %107 = trunc i64 %105 to i32
  %108 = lshr i32 %107, 2
  %109 = and i32 %108, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %106, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %109, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.30.0)
  %110 = mul nsw i32 %.pre-phi159, %4, !spirv.Decorations !429
  %111 = sext i32 %110 to i64
  %112 = getelementptr float, float addrspace(1)* %49, i64 %111
  %113 = bitcast float addrspace(1)* %112 to i8 addrspace(1)*
  %.ascast.i90.237 = addrspacecast i8 addrspace(1)* %113 to i8 addrspace(4)*
  %114 = ptrtoint i8 addrspace(4)* %.ascast.i90.237 to i64
  %115 = and i64 %114, -64
  %116 = trunc i64 %114 to i32
  %117 = lshr i32 %116, 2
  %118 = and i32 %117, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %115, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %118, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.34.0)
  %119 = getelementptr inbounds float, float addrspace(1)* %112, i64 16
  %120 = bitcast float addrspace(1)* %119 to i8 addrspace(1)*
  %.ascast.i90.1.2 = addrspacecast i8 addrspace(1)* %120 to i8 addrspace(4)*
  %121 = ptrtoint i8 addrspace(4)* %.ascast.i90.1.2 to i64
  %122 = and i64 %121, -64
  %123 = trunc i64 %121 to i32
  %124 = lshr i32 %123, 2
  %125 = and i32 %124, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %122, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %125, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.38.0)
  %126 = getelementptr inbounds float, float addrspace(1)* %112, i64 32
  %127 = bitcast float addrspace(1)* %126 to i8 addrspace(1)*
  %.ascast.i90.2.2 = addrspacecast i8 addrspace(1)* %127 to i8 addrspace(4)*
  %128 = ptrtoint i8 addrspace(4)* %.ascast.i90.2.2 to i64
  %129 = and i64 %128, -64
  %130 = trunc i64 %128 to i32
  %131 = lshr i32 %130, 2
  %132 = and i32 %131, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %129, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %132, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.42.0)
  %133 = getelementptr inbounds float, float addrspace(1)* %112, i64 48
  %134 = bitcast float addrspace(1)* %133 to i8 addrspace(1)*
  %.ascast.i90.3.2 = addrspacecast i8 addrspace(1)* %134 to i8 addrspace(4)*
  %135 = ptrtoint i8 addrspace(4)* %.ascast.i90.3.2 to i64
  %136 = and i64 %135, -64
  %137 = trunc i64 %135 to i32
  %138 = lshr i32 %137, 2
  %139 = and i32 %138, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %136, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %139, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.46.0)
  %140 = mul nsw i32 %.pre-phi161, %4, !spirv.Decorations !429
  %141 = sext i32 %140 to i64
  %142 = getelementptr float, float addrspace(1)* %49, i64 %141
  %143 = bitcast float addrspace(1)* %142 to i8 addrspace(1)*
  %.ascast.i90.338 = addrspacecast i8 addrspace(1)* %143 to i8 addrspace(4)*
  %144 = ptrtoint i8 addrspace(4)* %.ascast.i90.338 to i64
  %145 = and i64 %144, -64
  %146 = trunc i64 %144 to i32
  %147 = lshr i32 %146, 2
  %148 = and i32 %147, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %145, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %148, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.50.0)
  %149 = getelementptr inbounds float, float addrspace(1)* %142, i64 16
  %150 = bitcast float addrspace(1)* %149 to i8 addrspace(1)*
  %.ascast.i90.1.3 = addrspacecast i8 addrspace(1)* %150 to i8 addrspace(4)*
  %151 = ptrtoint i8 addrspace(4)* %.ascast.i90.1.3 to i64
  %152 = and i64 %151, -64
  %153 = trunc i64 %151 to i32
  %154 = lshr i32 %153, 2
  %155 = and i32 %154, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %152, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %155, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.54.0)
  %156 = getelementptr inbounds float, float addrspace(1)* %142, i64 32
  %157 = bitcast float addrspace(1)* %156 to i8 addrspace(1)*
  %.ascast.i90.2.3 = addrspacecast i8 addrspace(1)* %157 to i8 addrspace(4)*
  %158 = ptrtoint i8 addrspace(4)* %.ascast.i90.2.3 to i64
  %159 = and i64 %158, -64
  %160 = trunc i64 %158 to i32
  %161 = lshr i32 %160, 2
  %162 = and i32 %161, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %159, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %162, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.58.0)
  %163 = getelementptr inbounds float, float addrspace(1)* %142, i64 48
  %164 = bitcast float addrspace(1)* %163 to i8 addrspace(1)*
  %.ascast.i90.3.3 = addrspacecast i8 addrspace(1)* %164 to i8 addrspace(4)*
  %165 = ptrtoint i8 addrspace(4)* %.ascast.i90.3.3 to i64
  %166 = and i64 %165, -64
  %167 = trunc i64 %165 to i32
  %168 = lshr i32 %167, 2
  %169 = and i32 %168, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %166, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %169, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.62.0)
  ret void

170:                                              ; preds = %.lr.ph, %.preheader.preheader
  %171 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %350, %.preheader.preheader ]
  %172 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %353, %.preheader.preheader ]
  %173 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %356, %.preheader.preheader ]
  %174 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %359, %.preheader.preheader ]
  %175 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %362, %.preheader.preheader ]
  %176 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %365, %.preheader.preheader ]
  %177 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %368, %.preheader.preheader ]
  %178 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %371, %.preheader.preheader ]
  %179 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %374, %.preheader.preheader ]
  %180 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %377, %.preheader.preheader ]
  %181 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %380, %.preheader.preheader ]
  %182 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %383, %.preheader.preheader ]
  %183 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %386, %.preheader.preheader ]
  %184 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %389, %.preheader.preheader ]
  %185 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %392, %.preheader.preheader ]
  %186 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %395, %.preheader.preheader ]
  %187 = phi i32 [ 0, %.lr.ph ], [ %188, %.preheader.preheader ]
  %188 = add nuw nsw i32 %187, 32, !spirv.Decorations !431
  %189 = icmp slt i32 %188, %3
  br i1 %189, label %190, label %.preheader.preheader

190:                                              ; preds = %170
  %191 = zext i32 %188 to i64
  %192 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %18, i64 %191
  %193 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %192 to i8 addrspace(1)*
  %194 = addrspacecast i8 addrspace(1)* %193 to i8 addrspace(4)*
  %195 = ptrtoint i8 addrspace(4)* %194 to i64
  %196 = and i64 %195, -64
  %197 = trunc i64 %195 to i32
  %198 = lshr i32 %197, 1
  %199 = and i32 %198, 31
  call void @llvm.genx.GenISA.LSC2DBlockPrefetch.isVoid(i64 %196, i32 %28, i32 7, i32 %28, i32 %199, i32 0, i32 16, i32 32, i32 8, i32 1, i1 false, i1 false, i32 4)
  %200 = lshr exact i32 %188, 1
  %201 = zext i32 %200 to i64
  %202 = mul nsw i64 %201, %20, !spirv.Decorations !429
  %203 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %24, i64 %202
  %204 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %203 to i8 addrspace(1)*
  %205 = addrspacecast i8 addrspace(1)* %204 to i8 addrspace(4)*
  %206 = ptrtoint i8 addrspace(4)* %205 to i64
  %207 = and i64 %206, -64
  %208 = trunc i64 %206 to i32
  %209 = lshr i32 %208, 1
  %210 = and i32 %209, 31
  call void @llvm.genx.GenISA.LSC2DBlockPrefetch.isVoid(i64 %207, i32 %30, i32 7, i32 %30, i32 %210, i32 0, i32 16, i32 32, i32 8, i32 1, i1 false, i1 false, i32 4)
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %170, %190
  %211 = zext i32 %187 to i64
  %212 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %17, i64 %211
  %213 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %212, i64 %16
  %214 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %213 to i8 addrspace(1)*
  %.ascast.i = addrspacecast i8 addrspace(1)* %214 to i8 addrspace(4)*
  %215 = ptrtoint i8 addrspace(4)* %.ascast.i to i64
  %216 = and i64 %215, -64
  %217 = trunc i64 %215 to i32
  %218 = lshr i32 %217, 1
  %219 = and i32 %218, 31
  %220 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %216, i32 %28, i32 7, i32 %28, i32 %219, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %221 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %213, i64 16
  %222 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %221 to i8 addrspace(1)*
  %.ascast.i87 = addrspacecast i8 addrspace(1)* %222 to i8 addrspace(4)*
  %223 = ptrtoint i8 addrspace(4)* %.ascast.i87 to i64
  %224 = and i64 %223, -64
  %225 = trunc i64 %223 to i32
  %226 = lshr i32 %225, 1
  %227 = and i32 %226, 31
  %228 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %224, i32 %28, i32 7, i32 %28, i32 %227, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %229 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %212, i64 %33
  %230 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %229 to i8 addrspace(1)*
  %.ascast.i.1 = addrspacecast i8 addrspace(1)* %230 to i8 addrspace(4)*
  %231 = ptrtoint i8 addrspace(4)* %.ascast.i.1 to i64
  %232 = and i64 %231, -64
  %233 = trunc i64 %231 to i32
  %234 = lshr i32 %233, 1
  %235 = and i32 %234, 31
  %236 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %232, i32 %28, i32 7, i32 %28, i32 %235, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %237 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %229, i64 16
  %238 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %237 to i8 addrspace(1)*
  %.ascast.i87.1 = addrspacecast i8 addrspace(1)* %238 to i8 addrspace(4)*
  %239 = ptrtoint i8 addrspace(4)* %.ascast.i87.1 to i64
  %240 = and i64 %239, -64
  %241 = trunc i64 %239 to i32
  %242 = lshr i32 %241, 1
  %243 = and i32 %242, 31
  %244 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %240, i32 %28, i32 7, i32 %28, i32 %243, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %245 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %212, i64 %36
  %246 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %245 to i8 addrspace(1)*
  %.ascast.i.2 = addrspacecast i8 addrspace(1)* %246 to i8 addrspace(4)*
  %247 = ptrtoint i8 addrspace(4)* %.ascast.i.2 to i64
  %248 = and i64 %247, -64
  %249 = trunc i64 %247 to i32
  %250 = lshr i32 %249, 1
  %251 = and i32 %250, 31
  %252 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %248, i32 %28, i32 7, i32 %28, i32 %251, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %253 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %245, i64 16
  %254 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %253 to i8 addrspace(1)*
  %.ascast.i87.2 = addrspacecast i8 addrspace(1)* %254 to i8 addrspace(4)*
  %255 = ptrtoint i8 addrspace(4)* %.ascast.i87.2 to i64
  %256 = and i64 %255, -64
  %257 = trunc i64 %255 to i32
  %258 = lshr i32 %257, 1
  %259 = and i32 %258, 31
  %260 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %256, i32 %28, i32 7, i32 %28, i32 %259, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %261 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %212, i64 %39
  %262 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %261 to i8 addrspace(1)*
  %.ascast.i.3 = addrspacecast i8 addrspace(1)* %262 to i8 addrspace(4)*
  %263 = ptrtoint i8 addrspace(4)* %.ascast.i.3 to i64
  %264 = and i64 %263, -64
  %265 = trunc i64 %263 to i32
  %266 = lshr i32 %265, 1
  %267 = and i32 %266, 31
  %268 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %264, i32 %28, i32 7, i32 %28, i32 %267, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %269 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %261, i64 16
  %270 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %269 to i8 addrspace(1)*
  %.ascast.i87.3 = addrspacecast i8 addrspace(1)* %270 to i8 addrspace(4)*
  %271 = ptrtoint i8 addrspace(4)* %.ascast.i87.3 to i64
  %272 = and i64 %271, -64
  %273 = trunc i64 %271 to i32
  %274 = lshr i32 %273, 1
  %275 = and i32 %274, 31
  %276 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %272, i32 %28, i32 7, i32 %28, i32 %275, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %277 = lshr exact i32 %187, 1
  %278 = zext i32 %277 to i64
  %279 = mul nsw i64 %278, %20, !spirv.Decorations !429
  %280 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %23, i64 %279
  %281 = or i32 %277, 8
  %282 = zext i32 %281 to i64
  %283 = mul nsw i64 %282, %20, !spirv.Decorations !429
  %284 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %23, i64 %283
  %285 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %280, i64 %40
  %286 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %285 to i8 addrspace(1)*
  %.ascast.i88 = addrspacecast i8 addrspace(1)* %286 to i8 addrspace(4)*
  %287 = ptrtoint i8 addrspace(4)* %.ascast.i88 to i64
  %288 = and i64 %287, -64
  %289 = trunc i64 %287 to i32
  %290 = lshr i32 %289, 2
  %291 = and i32 %290, 15
  %292 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %288, i32 %30, i32 7, i32 %30, i32 %291, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %293 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %284, i64 %40
  %294 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %293 to i8 addrspace(1)*
  %.ascast.i89 = addrspacecast i8 addrspace(1)* %294 to i8 addrspace(4)*
  %295 = ptrtoint i8 addrspace(4)* %.ascast.i89 to i64
  %296 = and i64 %295, -64
  %297 = trunc i64 %295 to i32
  %298 = lshr i32 %297, 2
  %299 = and i32 %298, 15
  %300 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %296, i32 %30, i32 7, i32 %30, i32 %299, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %301 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %280, i64 %42
  %302 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %301 to i8 addrspace(1)*
  %.ascast.i88.1 = addrspacecast i8 addrspace(1)* %302 to i8 addrspace(4)*
  %303 = ptrtoint i8 addrspace(4)* %.ascast.i88.1 to i64
  %304 = and i64 %303, -64
  %305 = trunc i64 %303 to i32
  %306 = lshr i32 %305, 2
  %307 = and i32 %306, 15
  %308 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %304, i32 %30, i32 7, i32 %30, i32 %307, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %309 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %284, i64 %42
  %310 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %309 to i8 addrspace(1)*
  %.ascast.i89.1 = addrspacecast i8 addrspace(1)* %310 to i8 addrspace(4)*
  %311 = ptrtoint i8 addrspace(4)* %.ascast.i89.1 to i64
  %312 = and i64 %311, -64
  %313 = trunc i64 %311 to i32
  %314 = lshr i32 %313, 2
  %315 = and i32 %314, 15
  %316 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %312, i32 %30, i32 7, i32 %30, i32 %315, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %317 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %280, i64 %44
  %318 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %317 to i8 addrspace(1)*
  %.ascast.i88.2 = addrspacecast i8 addrspace(1)* %318 to i8 addrspace(4)*
  %319 = ptrtoint i8 addrspace(4)* %.ascast.i88.2 to i64
  %320 = and i64 %319, -64
  %321 = trunc i64 %319 to i32
  %322 = lshr i32 %321, 2
  %323 = and i32 %322, 15
  %324 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %320, i32 %30, i32 7, i32 %30, i32 %323, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %325 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %284, i64 %44
  %326 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %325 to i8 addrspace(1)*
  %.ascast.i89.2 = addrspacecast i8 addrspace(1)* %326 to i8 addrspace(4)*
  %327 = ptrtoint i8 addrspace(4)* %.ascast.i89.2 to i64
  %328 = and i64 %327, -64
  %329 = trunc i64 %327 to i32
  %330 = lshr i32 %329, 2
  %331 = and i32 %330, 15
  %332 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %328, i32 %30, i32 7, i32 %30, i32 %331, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %333 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %280, i64 %46
  %334 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %333 to i8 addrspace(1)*
  %.ascast.i88.3 = addrspacecast i8 addrspace(1)* %334 to i8 addrspace(4)*
  %335 = ptrtoint i8 addrspace(4)* %.ascast.i88.3 to i64
  %336 = and i64 %335, -64
  %337 = trunc i64 %335 to i32
  %338 = lshr i32 %337, 2
  %339 = and i32 %338, 15
  %340 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %336, i32 %30, i32 7, i32 %30, i32 %339, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %341 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %284, i64 %46
  %342 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %341 to i8 addrspace(1)*
  %.ascast.i89.3 = addrspacecast i8 addrspace(1)* %342 to i8 addrspace(4)*
  %343 = ptrtoint i8 addrspace(4)* %.ascast.i89.3 to i64
  %344 = and i64 %343, -64
  %345 = trunc i64 %343 to i32
  %346 = lshr i32 %345, 2
  %347 = and i32 %346, 15
  %348 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %344, i32 %30, i32 7, i32 %30, i32 %347, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %349 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %171, <8 x i16> %220, <8 x i32> %292, i32 11, i32 11, i32 8, i32 8, i1 false)
  %350 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %349, <8 x i16> %228, <8 x i32> %300, i32 11, i32 11, i32 8, i32 8, i1 false)
  %351 = bitcast <8 x float> %350 to <8 x i32>
  %352 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %172, <8 x i16> %220, <8 x i32> %308, i32 11, i32 11, i32 8, i32 8, i1 false)
  %353 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %352, <8 x i16> %228, <8 x i32> %316, i32 11, i32 11, i32 8, i32 8, i1 false)
  %354 = bitcast <8 x float> %353 to <8 x i32>
  %355 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %173, <8 x i16> %220, <8 x i32> %324, i32 11, i32 11, i32 8, i32 8, i1 false)
  %356 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %355, <8 x i16> %228, <8 x i32> %332, i32 11, i32 11, i32 8, i32 8, i1 false)
  %357 = bitcast <8 x float> %356 to <8 x i32>
  %358 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %174, <8 x i16> %220, <8 x i32> %340, i32 11, i32 11, i32 8, i32 8, i1 false)
  %359 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %358, <8 x i16> %228, <8 x i32> %348, i32 11, i32 11, i32 8, i32 8, i1 false)
  %360 = bitcast <8 x float> %359 to <8 x i32>
  %361 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %175, <8 x i16> %236, <8 x i32> %292, i32 11, i32 11, i32 8, i32 8, i1 false)
  %362 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %361, <8 x i16> %244, <8 x i32> %300, i32 11, i32 11, i32 8, i32 8, i1 false)
  %363 = bitcast <8 x float> %362 to <8 x i32>
  %364 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %176, <8 x i16> %236, <8 x i32> %308, i32 11, i32 11, i32 8, i32 8, i1 false)
  %365 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %364, <8 x i16> %244, <8 x i32> %316, i32 11, i32 11, i32 8, i32 8, i1 false)
  %366 = bitcast <8 x float> %365 to <8 x i32>
  %367 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %177, <8 x i16> %236, <8 x i32> %324, i32 11, i32 11, i32 8, i32 8, i1 false)
  %368 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %367, <8 x i16> %244, <8 x i32> %332, i32 11, i32 11, i32 8, i32 8, i1 false)
  %369 = bitcast <8 x float> %368 to <8 x i32>
  %370 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %178, <8 x i16> %236, <8 x i32> %340, i32 11, i32 11, i32 8, i32 8, i1 false)
  %371 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %370, <8 x i16> %244, <8 x i32> %348, i32 11, i32 11, i32 8, i32 8, i1 false)
  %372 = bitcast <8 x float> %371 to <8 x i32>
  %373 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %179, <8 x i16> %252, <8 x i32> %292, i32 11, i32 11, i32 8, i32 8, i1 false)
  %374 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %373, <8 x i16> %260, <8 x i32> %300, i32 11, i32 11, i32 8, i32 8, i1 false)
  %375 = bitcast <8 x float> %374 to <8 x i32>
  %376 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %180, <8 x i16> %252, <8 x i32> %308, i32 11, i32 11, i32 8, i32 8, i1 false)
  %377 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %376, <8 x i16> %260, <8 x i32> %316, i32 11, i32 11, i32 8, i32 8, i1 false)
  %378 = bitcast <8 x float> %377 to <8 x i32>
  %379 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %181, <8 x i16> %252, <8 x i32> %324, i32 11, i32 11, i32 8, i32 8, i1 false)
  %380 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %379, <8 x i16> %260, <8 x i32> %332, i32 11, i32 11, i32 8, i32 8, i1 false)
  %381 = bitcast <8 x float> %380 to <8 x i32>
  %382 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %182, <8 x i16> %252, <8 x i32> %340, i32 11, i32 11, i32 8, i32 8, i1 false)
  %383 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %382, <8 x i16> %260, <8 x i32> %348, i32 11, i32 11, i32 8, i32 8, i1 false)
  %384 = bitcast <8 x float> %383 to <8 x i32>
  %385 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %183, <8 x i16> %268, <8 x i32> %292, i32 11, i32 11, i32 8, i32 8, i1 false)
  %386 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %385, <8 x i16> %276, <8 x i32> %300, i32 11, i32 11, i32 8, i32 8, i1 false)
  %387 = bitcast <8 x float> %386 to <8 x i32>
  %388 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %184, <8 x i16> %268, <8 x i32> %308, i32 11, i32 11, i32 8, i32 8, i1 false)
  %389 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %388, <8 x i16> %276, <8 x i32> %316, i32 11, i32 11, i32 8, i32 8, i1 false)
  %390 = bitcast <8 x float> %389 to <8 x i32>
  %391 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %185, <8 x i16> %268, <8 x i32> %324, i32 11, i32 11, i32 8, i32 8, i1 false)
  %392 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %391, <8 x i16> %276, <8 x i32> %332, i32 11, i32 11, i32 8, i32 8, i1 false)
  %393 = bitcast <8 x float> %392 to <8 x i32>
  %394 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %186, <8 x i16> %268, <8 x i32> %340, i32 11, i32 11, i32 8, i32 8, i1 false)
  %395 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %394, <8 x i16> %276, <8 x i32> %348, i32 11, i32 11, i32 8, i32 8, i1 false)
  %396 = bitcast <8 x float> %395 to <8 x i32>
  br i1 %189, label %170, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZZ5benchILi4ELi4ELi1ELi1ELb1EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
.preheader1.preheader:
  %5 = extractelement <8 x i32> %r0, i64 1
  %6 = extractelement <8 x i32> %r0, i64 6
  %7 = bitcast <8 x i32> %r0 to <32 x i8>
  %8 = extractelement <32 x i8> %7, i64 8
  %localThreadId5 = zext i8 %8 to i32
  %9 = icmp sgt i32 %6, -1
  call void @llvm.assume(i1 %9)
  %10 = icmp sgt i32 %5, -1
  call void @llvm.assume(i1 %10)
  %11 = add nuw i32 %6, %localThreadId5
  %12 = shl i32 %11, 5
  %13 = shl nsw i32 %5, 6, !spirv.Decorations !429
  %14 = shl nsw i32 %4, 1, !spirv.Decorations !429
  %15 = sext i32 %14 to i64
  %16 = shl i32 %5, 7
  %17 = icmp sgt i32 %3, 0
  br i1 %17, label %.lr.ph, label %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge

.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge: ; preds = %.preheader1.preheader
  %.pre = shl i32 %4, 2
  %.pre148 = add i32 %.pre, -1
  %.pre150 = or i32 %12, 8
  %.pre152 = or i32 %12, 16
  %.pre154 = or i32 %12, 24
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit

.lr.ph:                                           ; preds = %.preheader1.preheader
  %18 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %19 = shl i32 %3, 1
  %20 = add i32 %19, -1
  %21 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %22 = shl i32 %4, 2
  %23 = add i32 %22, -1
  %24 = mul nsw i32 %12, %3, !spirv.Decorations !429
  %25 = sext i32 %24 to i64
  %26 = or i32 %12, 8
  %27 = mul nsw i32 %26, %3
  %28 = sext i32 %27 to i64
  %29 = or i32 %12, 16
  %30 = mul nsw i32 %29, %3
  %31 = sext i32 %30 to i64
  %32 = or i32 %12, 24
  %33 = mul nsw i32 %32, %3
  %34 = sext i32 %33 to i64
  %35 = zext i32 %16 to i64
  %36 = or i32 %16, 32
  %37 = zext i32 %36 to i64
  %38 = or i32 %16, 64
  %39 = zext i32 %38 to i64
  %40 = or i32 %16, 96
  %41 = zext i32 %40 to i64
  br label %.preheader.preheader

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit: ; preds = %.preheader.preheader, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge
  %.pre-phi155 = phi i32 [ %.pre154, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %32, %.preheader.preheader ]
  %.pre-phi153 = phi i32 [ %.pre152, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %29, %.preheader.preheader ]
  %.pre-phi151 = phi i32 [ %.pre150, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %26, %.preheader.preheader ]
  %.pre-phi149 = phi i32 [ %.pre148, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %23, %.preheader.preheader ]
  %.sroa.082.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %322, %.preheader.preheader ]
  %.sroa.687.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %325, %.preheader.preheader ]
  %.sroa.10.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %328, %.preheader.preheader ]
  %.sroa.14.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %331, %.preheader.preheader ]
  %.sroa.18.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %334, %.preheader.preheader ]
  %.sroa.22.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %337, %.preheader.preheader ]
  %.sroa.26.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %340, %.preheader.preheader ]
  %.sroa.30.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %343, %.preheader.preheader ]
  %.sroa.34.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %346, %.preheader.preheader ]
  %.sroa.38.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %349, %.preheader.preheader ]
  %.sroa.42.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %352, %.preheader.preheader ]
  %.sroa.46.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %355, %.preheader.preheader ]
  %.sroa.50.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %358, %.preheader.preheader ]
  %.sroa.54.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %361, %.preheader.preheader ]
  %.sroa.58.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %364, %.preheader.preheader ]
  %.sroa.62.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %367, %.preheader.preheader ]
  %42 = zext i32 %13 to i64
  %43 = bitcast i8 addrspace(1)* %2 to float addrspace(1)*
  %44 = getelementptr float, float addrspace(1)* %43, i64 %42
  %45 = mul nsw i32 %12, %4, !spirv.Decorations !429
  %46 = sext i32 %45 to i64
  %47 = getelementptr float, float addrspace(1)* %44, i64 %46
  %48 = bitcast float addrspace(1)* %47 to i8 addrspace(1)*
  %.ascast.i89 = addrspacecast i8 addrspace(1)* %48 to i8 addrspace(4)*
  %49 = ptrtoint i8 addrspace(4)* %.ascast.i89 to i64
  %50 = and i64 %49, -64
  %51 = trunc i64 %49 to i32
  %52 = lshr i32 %51, 2
  %53 = and i32 %52, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %50, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %53, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.082.0)
  %54 = getelementptr inbounds float, float addrspace(1)* %47, i64 16
  %55 = bitcast float addrspace(1)* %54 to i8 addrspace(1)*
  %.ascast.i89.1 = addrspacecast i8 addrspace(1)* %55 to i8 addrspace(4)*
  %56 = ptrtoint i8 addrspace(4)* %.ascast.i89.1 to i64
  %57 = and i64 %56, -64
  %58 = trunc i64 %56 to i32
  %59 = lshr i32 %58, 2
  %60 = and i32 %59, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %57, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %60, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.687.0)
  %61 = getelementptr inbounds float, float addrspace(1)* %47, i64 32
  %62 = bitcast float addrspace(1)* %61 to i8 addrspace(1)*
  %.ascast.i89.2 = addrspacecast i8 addrspace(1)* %62 to i8 addrspace(4)*
  %63 = ptrtoint i8 addrspace(4)* %.ascast.i89.2 to i64
  %64 = and i64 %63, -64
  %65 = trunc i64 %63 to i32
  %66 = lshr i32 %65, 2
  %67 = and i32 %66, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %64, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %67, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.10.0)
  %68 = getelementptr inbounds float, float addrspace(1)* %47, i64 48
  %69 = bitcast float addrspace(1)* %68 to i8 addrspace(1)*
  %.ascast.i89.3 = addrspacecast i8 addrspace(1)* %69 to i8 addrspace(4)*
  %70 = ptrtoint i8 addrspace(4)* %.ascast.i89.3 to i64
  %71 = and i64 %70, -64
  %72 = trunc i64 %70 to i32
  %73 = lshr i32 %72, 2
  %74 = and i32 %73, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %71, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %74, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.14.0)
  %75 = mul nsw i32 %.pre-phi151, %4, !spirv.Decorations !429
  %76 = sext i32 %75 to i64
  %77 = getelementptr float, float addrspace(1)* %44, i64 %76
  %78 = bitcast float addrspace(1)* %77 to i8 addrspace(1)*
  %.ascast.i89.130 = addrspacecast i8 addrspace(1)* %78 to i8 addrspace(4)*
  %79 = ptrtoint i8 addrspace(4)* %.ascast.i89.130 to i64
  %80 = and i64 %79, -64
  %81 = trunc i64 %79 to i32
  %82 = lshr i32 %81, 2
  %83 = and i32 %82, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %80, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %83, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.18.0)
  %84 = getelementptr inbounds float, float addrspace(1)* %77, i64 16
  %85 = bitcast float addrspace(1)* %84 to i8 addrspace(1)*
  %.ascast.i89.1.1 = addrspacecast i8 addrspace(1)* %85 to i8 addrspace(4)*
  %86 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.1 to i64
  %87 = and i64 %86, -64
  %88 = trunc i64 %86 to i32
  %89 = lshr i32 %88, 2
  %90 = and i32 %89, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %87, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %90, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.22.0)
  %91 = getelementptr inbounds float, float addrspace(1)* %77, i64 32
  %92 = bitcast float addrspace(1)* %91 to i8 addrspace(1)*
  %.ascast.i89.2.1 = addrspacecast i8 addrspace(1)* %92 to i8 addrspace(4)*
  %93 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.1 to i64
  %94 = and i64 %93, -64
  %95 = trunc i64 %93 to i32
  %96 = lshr i32 %95, 2
  %97 = and i32 %96, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %94, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %97, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.26.0)
  %98 = getelementptr inbounds float, float addrspace(1)* %77, i64 48
  %99 = bitcast float addrspace(1)* %98 to i8 addrspace(1)*
  %.ascast.i89.3.1 = addrspacecast i8 addrspace(1)* %99 to i8 addrspace(4)*
  %100 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.1 to i64
  %101 = and i64 %100, -64
  %102 = trunc i64 %100 to i32
  %103 = lshr i32 %102, 2
  %104 = and i32 %103, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %101, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %104, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.30.0)
  %105 = mul nsw i32 %.pre-phi153, %4, !spirv.Decorations !429
  %106 = sext i32 %105 to i64
  %107 = getelementptr float, float addrspace(1)* %44, i64 %106
  %108 = bitcast float addrspace(1)* %107 to i8 addrspace(1)*
  %.ascast.i89.231 = addrspacecast i8 addrspace(1)* %108 to i8 addrspace(4)*
  %109 = ptrtoint i8 addrspace(4)* %.ascast.i89.231 to i64
  %110 = and i64 %109, -64
  %111 = trunc i64 %109 to i32
  %112 = lshr i32 %111, 2
  %113 = and i32 %112, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %110, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %113, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.34.0)
  %114 = getelementptr inbounds float, float addrspace(1)* %107, i64 16
  %115 = bitcast float addrspace(1)* %114 to i8 addrspace(1)*
  %.ascast.i89.1.2 = addrspacecast i8 addrspace(1)* %115 to i8 addrspace(4)*
  %116 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.2 to i64
  %117 = and i64 %116, -64
  %118 = trunc i64 %116 to i32
  %119 = lshr i32 %118, 2
  %120 = and i32 %119, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %117, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %120, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.38.0)
  %121 = getelementptr inbounds float, float addrspace(1)* %107, i64 32
  %122 = bitcast float addrspace(1)* %121 to i8 addrspace(1)*
  %.ascast.i89.2.2 = addrspacecast i8 addrspace(1)* %122 to i8 addrspace(4)*
  %123 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.2 to i64
  %124 = and i64 %123, -64
  %125 = trunc i64 %123 to i32
  %126 = lshr i32 %125, 2
  %127 = and i32 %126, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %124, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %127, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.42.0)
  %128 = getelementptr inbounds float, float addrspace(1)* %107, i64 48
  %129 = bitcast float addrspace(1)* %128 to i8 addrspace(1)*
  %.ascast.i89.3.2 = addrspacecast i8 addrspace(1)* %129 to i8 addrspace(4)*
  %130 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.2 to i64
  %131 = and i64 %130, -64
  %132 = trunc i64 %130 to i32
  %133 = lshr i32 %132, 2
  %134 = and i32 %133, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %131, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %134, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.46.0)
  %135 = mul nsw i32 %.pre-phi155, %4, !spirv.Decorations !429
  %136 = sext i32 %135 to i64
  %137 = getelementptr float, float addrspace(1)* %44, i64 %136
  %138 = bitcast float addrspace(1)* %137 to i8 addrspace(1)*
  %.ascast.i89.332 = addrspacecast i8 addrspace(1)* %138 to i8 addrspace(4)*
  %139 = ptrtoint i8 addrspace(4)* %.ascast.i89.332 to i64
  %140 = and i64 %139, -64
  %141 = trunc i64 %139 to i32
  %142 = lshr i32 %141, 2
  %143 = and i32 %142, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %140, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %143, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.50.0)
  %144 = getelementptr inbounds float, float addrspace(1)* %137, i64 16
  %145 = bitcast float addrspace(1)* %144 to i8 addrspace(1)*
  %.ascast.i89.1.3 = addrspacecast i8 addrspace(1)* %145 to i8 addrspace(4)*
  %146 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.3 to i64
  %147 = and i64 %146, -64
  %148 = trunc i64 %146 to i32
  %149 = lshr i32 %148, 2
  %150 = and i32 %149, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %147, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %150, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.54.0)
  %151 = getelementptr inbounds float, float addrspace(1)* %137, i64 32
  %152 = bitcast float addrspace(1)* %151 to i8 addrspace(1)*
  %.ascast.i89.2.3 = addrspacecast i8 addrspace(1)* %152 to i8 addrspace(4)*
  %153 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.3 to i64
  %154 = and i64 %153, -64
  %155 = trunc i64 %153 to i32
  %156 = lshr i32 %155, 2
  %157 = and i32 %156, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %154, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %157, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.58.0)
  %158 = getelementptr inbounds float, float addrspace(1)* %137, i64 48
  %159 = bitcast float addrspace(1)* %158 to i8 addrspace(1)*
  %.ascast.i89.3.3 = addrspacecast i8 addrspace(1)* %159 to i8 addrspace(4)*
  %160 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.3 to i64
  %161 = and i64 %160, -64
  %162 = trunc i64 %160 to i32
  %163 = lshr i32 %162, 2
  %164 = and i32 %163, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %161, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %164, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.62.0)
  ret void

.preheader.preheader:                             ; preds = %.lr.ph, %.preheader.preheader
  %165 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %321, %.preheader.preheader ]
  %166 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %324, %.preheader.preheader ]
  %167 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %327, %.preheader.preheader ]
  %168 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %330, %.preheader.preheader ]
  %169 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %333, %.preheader.preheader ]
  %170 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %336, %.preheader.preheader ]
  %171 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %339, %.preheader.preheader ]
  %172 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %342, %.preheader.preheader ]
  %173 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %345, %.preheader.preheader ]
  %174 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %348, %.preheader.preheader ]
  %175 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %351, %.preheader.preheader ]
  %176 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %354, %.preheader.preheader ]
  %177 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %357, %.preheader.preheader ]
  %178 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %360, %.preheader.preheader ]
  %179 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %363, %.preheader.preheader ]
  %180 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %366, %.preheader.preheader ]
  %181 = phi i32 [ 0, %.lr.ph ], [ %368, %.preheader.preheader ]
  %182 = zext i32 %181 to i64
  %183 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %18, i64 %182
  %184 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %183, i64 %25
  %185 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %184 to i8 addrspace(1)*
  %.ascast.i = addrspacecast i8 addrspace(1)* %185 to i8 addrspace(4)*
  %186 = ptrtoint i8 addrspace(4)* %.ascast.i to i64
  %187 = and i64 %186, -64
  %188 = trunc i64 %186 to i32
  %189 = lshr i32 %188, 1
  %190 = and i32 %189, 31
  %191 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %187, i32 %20, i32 7, i32 %20, i32 %190, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %192 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %184, i64 16
  %193 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %192 to i8 addrspace(1)*
  %.ascast.i86 = addrspacecast i8 addrspace(1)* %193 to i8 addrspace(4)*
  %194 = ptrtoint i8 addrspace(4)* %.ascast.i86 to i64
  %195 = and i64 %194, -64
  %196 = trunc i64 %194 to i32
  %197 = lshr i32 %196, 1
  %198 = and i32 %197, 31
  %199 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %195, i32 %20, i32 7, i32 %20, i32 %198, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %200 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %183, i64 %28
  %201 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %200 to i8 addrspace(1)*
  %.ascast.i.1 = addrspacecast i8 addrspace(1)* %201 to i8 addrspace(4)*
  %202 = ptrtoint i8 addrspace(4)* %.ascast.i.1 to i64
  %203 = and i64 %202, -64
  %204 = trunc i64 %202 to i32
  %205 = lshr i32 %204, 1
  %206 = and i32 %205, 31
  %207 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %203, i32 %20, i32 7, i32 %20, i32 %206, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %208 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %200, i64 16
  %209 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %208 to i8 addrspace(1)*
  %.ascast.i86.1 = addrspacecast i8 addrspace(1)* %209 to i8 addrspace(4)*
  %210 = ptrtoint i8 addrspace(4)* %.ascast.i86.1 to i64
  %211 = and i64 %210, -64
  %212 = trunc i64 %210 to i32
  %213 = lshr i32 %212, 1
  %214 = and i32 %213, 31
  %215 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %211, i32 %20, i32 7, i32 %20, i32 %214, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %216 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %183, i64 %31
  %217 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %216 to i8 addrspace(1)*
  %.ascast.i.2 = addrspacecast i8 addrspace(1)* %217 to i8 addrspace(4)*
  %218 = ptrtoint i8 addrspace(4)* %.ascast.i.2 to i64
  %219 = and i64 %218, -64
  %220 = trunc i64 %218 to i32
  %221 = lshr i32 %220, 1
  %222 = and i32 %221, 31
  %223 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %219, i32 %20, i32 7, i32 %20, i32 %222, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %224 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %216, i64 16
  %225 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %224 to i8 addrspace(1)*
  %.ascast.i86.2 = addrspacecast i8 addrspace(1)* %225 to i8 addrspace(4)*
  %226 = ptrtoint i8 addrspace(4)* %.ascast.i86.2 to i64
  %227 = and i64 %226, -64
  %228 = trunc i64 %226 to i32
  %229 = lshr i32 %228, 1
  %230 = and i32 %229, 31
  %231 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %227, i32 %20, i32 7, i32 %20, i32 %230, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %232 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %183, i64 %34
  %233 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %232 to i8 addrspace(1)*
  %.ascast.i.3 = addrspacecast i8 addrspace(1)* %233 to i8 addrspace(4)*
  %234 = ptrtoint i8 addrspace(4)* %.ascast.i.3 to i64
  %235 = and i64 %234, -64
  %236 = trunc i64 %234 to i32
  %237 = lshr i32 %236, 1
  %238 = and i32 %237, 31
  %239 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %235, i32 %20, i32 7, i32 %20, i32 %238, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %240 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %232, i64 16
  %241 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %240 to i8 addrspace(1)*
  %.ascast.i86.3 = addrspacecast i8 addrspace(1)* %241 to i8 addrspace(4)*
  %242 = ptrtoint i8 addrspace(4)* %.ascast.i86.3 to i64
  %243 = and i64 %242, -64
  %244 = trunc i64 %242 to i32
  %245 = lshr i32 %244, 1
  %246 = and i32 %245, 31
  %247 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %243, i32 %20, i32 7, i32 %20, i32 %246, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %248 = lshr exact i32 %181, 1
  %249 = zext i32 %248 to i64
  %250 = mul nsw i64 %249, %15, !spirv.Decorations !429
  %251 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %21, i64 %250
  %252 = or i32 %248, 8
  %253 = zext i32 %252 to i64
  %254 = mul nsw i64 %253, %15, !spirv.Decorations !429
  %255 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %21, i64 %254
  %256 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %251, i64 %35
  %257 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %256 to i8 addrspace(1)*
  %.ascast.i87 = addrspacecast i8 addrspace(1)* %257 to i8 addrspace(4)*
  %258 = ptrtoint i8 addrspace(4)* %.ascast.i87 to i64
  %259 = and i64 %258, -64
  %260 = trunc i64 %258 to i32
  %261 = lshr i32 %260, 2
  %262 = and i32 %261, 15
  %263 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %259, i32 %23, i32 7, i32 %23, i32 %262, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %264 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %255, i64 %35
  %265 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %264 to i8 addrspace(1)*
  %.ascast.i88 = addrspacecast i8 addrspace(1)* %265 to i8 addrspace(4)*
  %266 = ptrtoint i8 addrspace(4)* %.ascast.i88 to i64
  %267 = and i64 %266, -64
  %268 = trunc i64 %266 to i32
  %269 = lshr i32 %268, 2
  %270 = and i32 %269, 15
  %271 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %267, i32 %23, i32 7, i32 %23, i32 %270, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %272 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %251, i64 %37
  %273 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %272 to i8 addrspace(1)*
  %.ascast.i87.1 = addrspacecast i8 addrspace(1)* %273 to i8 addrspace(4)*
  %274 = ptrtoint i8 addrspace(4)* %.ascast.i87.1 to i64
  %275 = and i64 %274, -64
  %276 = trunc i64 %274 to i32
  %277 = lshr i32 %276, 2
  %278 = and i32 %277, 15
  %279 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %275, i32 %23, i32 7, i32 %23, i32 %278, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %280 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %255, i64 %37
  %281 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %280 to i8 addrspace(1)*
  %.ascast.i88.1 = addrspacecast i8 addrspace(1)* %281 to i8 addrspace(4)*
  %282 = ptrtoint i8 addrspace(4)* %.ascast.i88.1 to i64
  %283 = and i64 %282, -64
  %284 = trunc i64 %282 to i32
  %285 = lshr i32 %284, 2
  %286 = and i32 %285, 15
  %287 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %283, i32 %23, i32 7, i32 %23, i32 %286, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %288 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %251, i64 %39
  %289 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %288 to i8 addrspace(1)*
  %.ascast.i87.2 = addrspacecast i8 addrspace(1)* %289 to i8 addrspace(4)*
  %290 = ptrtoint i8 addrspace(4)* %.ascast.i87.2 to i64
  %291 = and i64 %290, -64
  %292 = trunc i64 %290 to i32
  %293 = lshr i32 %292, 2
  %294 = and i32 %293, 15
  %295 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %291, i32 %23, i32 7, i32 %23, i32 %294, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %296 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %255, i64 %39
  %297 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %296 to i8 addrspace(1)*
  %.ascast.i88.2 = addrspacecast i8 addrspace(1)* %297 to i8 addrspace(4)*
  %298 = ptrtoint i8 addrspace(4)* %.ascast.i88.2 to i64
  %299 = and i64 %298, -64
  %300 = trunc i64 %298 to i32
  %301 = lshr i32 %300, 2
  %302 = and i32 %301, 15
  %303 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %299, i32 %23, i32 7, i32 %23, i32 %302, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %304 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %251, i64 %41
  %305 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %304 to i8 addrspace(1)*
  %.ascast.i87.3 = addrspacecast i8 addrspace(1)* %305 to i8 addrspace(4)*
  %306 = ptrtoint i8 addrspace(4)* %.ascast.i87.3 to i64
  %307 = and i64 %306, -64
  %308 = trunc i64 %306 to i32
  %309 = lshr i32 %308, 2
  %310 = and i32 %309, 15
  %311 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %307, i32 %23, i32 7, i32 %23, i32 %310, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %312 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %255, i64 %41
  %313 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %312 to i8 addrspace(1)*
  %.ascast.i88.3 = addrspacecast i8 addrspace(1)* %313 to i8 addrspace(4)*
  %314 = ptrtoint i8 addrspace(4)* %.ascast.i88.3 to i64
  %315 = and i64 %314, -64
  %316 = trunc i64 %314 to i32
  %317 = lshr i32 %316, 2
  %318 = and i32 %317, 15
  %319 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %315, i32 %23, i32 7, i32 %23, i32 %318, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %320 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %165, <8 x i16> %191, <8 x i32> %263, i32 11, i32 11, i32 8, i32 8, i1 false)
  %321 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %320, <8 x i16> %199, <8 x i32> %271, i32 11, i32 11, i32 8, i32 8, i1 false)
  %322 = bitcast <8 x float> %321 to <8 x i32>
  %323 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %166, <8 x i16> %191, <8 x i32> %279, i32 11, i32 11, i32 8, i32 8, i1 false)
  %324 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %323, <8 x i16> %199, <8 x i32> %287, i32 11, i32 11, i32 8, i32 8, i1 false)
  %325 = bitcast <8 x float> %324 to <8 x i32>
  %326 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %167, <8 x i16> %191, <8 x i32> %295, i32 11, i32 11, i32 8, i32 8, i1 false)
  %327 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %326, <8 x i16> %199, <8 x i32> %303, i32 11, i32 11, i32 8, i32 8, i1 false)
  %328 = bitcast <8 x float> %327 to <8 x i32>
  %329 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %168, <8 x i16> %191, <8 x i32> %311, i32 11, i32 11, i32 8, i32 8, i1 false)
  %330 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %329, <8 x i16> %199, <8 x i32> %319, i32 11, i32 11, i32 8, i32 8, i1 false)
  %331 = bitcast <8 x float> %330 to <8 x i32>
  %332 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %169, <8 x i16> %207, <8 x i32> %263, i32 11, i32 11, i32 8, i32 8, i1 false)
  %333 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %332, <8 x i16> %215, <8 x i32> %271, i32 11, i32 11, i32 8, i32 8, i1 false)
  %334 = bitcast <8 x float> %333 to <8 x i32>
  %335 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %170, <8 x i16> %207, <8 x i32> %279, i32 11, i32 11, i32 8, i32 8, i1 false)
  %336 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %335, <8 x i16> %215, <8 x i32> %287, i32 11, i32 11, i32 8, i32 8, i1 false)
  %337 = bitcast <8 x float> %336 to <8 x i32>
  %338 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %171, <8 x i16> %207, <8 x i32> %295, i32 11, i32 11, i32 8, i32 8, i1 false)
  %339 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %338, <8 x i16> %215, <8 x i32> %303, i32 11, i32 11, i32 8, i32 8, i1 false)
  %340 = bitcast <8 x float> %339 to <8 x i32>
  %341 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %172, <8 x i16> %207, <8 x i32> %311, i32 11, i32 11, i32 8, i32 8, i1 false)
  %342 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %341, <8 x i16> %215, <8 x i32> %319, i32 11, i32 11, i32 8, i32 8, i1 false)
  %343 = bitcast <8 x float> %342 to <8 x i32>
  %344 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %173, <8 x i16> %223, <8 x i32> %263, i32 11, i32 11, i32 8, i32 8, i1 false)
  %345 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %344, <8 x i16> %231, <8 x i32> %271, i32 11, i32 11, i32 8, i32 8, i1 false)
  %346 = bitcast <8 x float> %345 to <8 x i32>
  %347 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %174, <8 x i16> %223, <8 x i32> %279, i32 11, i32 11, i32 8, i32 8, i1 false)
  %348 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %347, <8 x i16> %231, <8 x i32> %287, i32 11, i32 11, i32 8, i32 8, i1 false)
  %349 = bitcast <8 x float> %348 to <8 x i32>
  %350 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %175, <8 x i16> %223, <8 x i32> %295, i32 11, i32 11, i32 8, i32 8, i1 false)
  %351 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %350, <8 x i16> %231, <8 x i32> %303, i32 11, i32 11, i32 8, i32 8, i1 false)
  %352 = bitcast <8 x float> %351 to <8 x i32>
  %353 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %176, <8 x i16> %223, <8 x i32> %311, i32 11, i32 11, i32 8, i32 8, i1 false)
  %354 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %353, <8 x i16> %231, <8 x i32> %319, i32 11, i32 11, i32 8, i32 8, i1 false)
  %355 = bitcast <8 x float> %354 to <8 x i32>
  %356 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %177, <8 x i16> %239, <8 x i32> %263, i32 11, i32 11, i32 8, i32 8, i1 false)
  %357 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %356, <8 x i16> %247, <8 x i32> %271, i32 11, i32 11, i32 8, i32 8, i1 false)
  %358 = bitcast <8 x float> %357 to <8 x i32>
  %359 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %178, <8 x i16> %239, <8 x i32> %279, i32 11, i32 11, i32 8, i32 8, i1 false)
  %360 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %359, <8 x i16> %247, <8 x i32> %287, i32 11, i32 11, i32 8, i32 8, i1 false)
  %361 = bitcast <8 x float> %360 to <8 x i32>
  %362 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %179, <8 x i16> %239, <8 x i32> %295, i32 11, i32 11, i32 8, i32 8, i1 false)
  %363 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %362, <8 x i16> %247, <8 x i32> %303, i32 11, i32 11, i32 8, i32 8, i1 false)
  %364 = bitcast <8 x float> %363 to <8 x i32>
  %365 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %180, <8 x i16> %239, <8 x i32> %311, i32 11, i32 11, i32 8, i32 8, i1 false)
  %366 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %365, <8 x i16> %247, <8 x i32> %319, i32 11, i32 11, i32 8, i32 8, i1 false)
  %367 = bitcast <8 x float> %366 to <8 x i32>
  %368 = add nuw nsw i32 %181, 32, !spirv.Decorations !431
  %369 = icmp slt i32 %368, %3
  br i1 %369, label %.preheader.preheader, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit
}

; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZZ5benchILi4ELi4ELi2ELi2ELb0EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
.preheader1.preheader:
  %5 = extractelement <8 x i32> %r0, i64 1
  %6 = extractelement <8 x i32> %r0, i64 6
  %7 = bitcast <8 x i32> %r0 to <32 x i8>
  %8 = extractelement <32 x i8> %7, i64 8
  %localThreadId5 = zext i8 %8 to i32
  %9 = icmp sgt i32 %6, -1
  call void @llvm.assume(i1 %9)
  %10 = icmp sgt i32 %5, -1
  call void @llvm.assume(i1 %10)
  %11 = shl nsw i32 %6, 6, !spirv.Decorations !429
  %12 = shl nuw nsw i32 %localThreadId5, 4
  %13 = and i32 %12, 4064
  %14 = add nuw nsw i32 %11, %13, !spirv.Decorations !429
  %15 = shl nsw i32 %5, 7, !spirv.Decorations !429
  %16 = shl nuw nsw i32 %localThreadId5, 6
  %17 = and i32 %16, 64
  %18 = or i32 %15, %17
  %19 = mul nsw i32 %14, %3
  %20 = sext i32 %19 to i64
  %21 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %22 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %21, i64 %20
  %23 = shl nsw i32 %4, 1, !spirv.Decorations !429
  %24 = sext i32 %23 to i64
  %25 = shl nuw i32 %18, 1
  %26 = zext i32 %25 to i64
  %27 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %28 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %27, i64 %26
  %29 = icmp sgt i32 %3, 0
  br i1 %29, label %.lr.ph, label %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge

.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge: ; preds = %.preheader1.preheader
  %.pre = shl i32 %4, 2
  %.pre154 = add i32 %.pre, -1
  %.pre156 = or i32 %14, 8
  %.pre158 = or i32 %14, 16
  %.pre160 = or i32 %14, 24
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit

.lr.ph:                                           ; preds = %.preheader1.preheader
  %30 = shl i32 %3, 1
  %31 = add i32 %30, -1
  %32 = shl i32 %4, 2
  %33 = add i32 %32, -1
  %34 = or i32 %14, 8
  %35 = mul nsw i32 %34, %3
  %36 = sext i32 %35 to i64
  %37 = or i32 %14, 16
  %38 = mul nsw i32 %37, %3
  %39 = sext i32 %38 to i64
  %40 = or i32 %14, 24
  %41 = mul nsw i32 %40, %3
  %42 = sext i32 %41 to i64
  %43 = or i32 %25, 32
  %44 = zext i32 %43 to i64
  %45 = or i32 %25, 64
  %46 = zext i32 %45 to i64
  %47 = or i32 %25, 96
  %48 = zext i32 %47 to i64
  br label %172

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit: ; preds = %.preheader.preheader, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge
  %.pre-phi161 = phi i32 [ %.pre160, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %40, %.preheader.preheader ]
  %.pre-phi159 = phi i32 [ %.pre158, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %37, %.preheader.preheader ]
  %.pre-phi157 = phi i32 [ %.pre156, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %34, %.preheader.preheader ]
  %.pre-phi155 = phi i32 [ %.pre154, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %33, %.preheader.preheader ]
  %.sroa.088.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %353, %.preheader.preheader ]
  %.sroa.693.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %356, %.preheader.preheader ]
  %.sroa.10.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %359, %.preheader.preheader ]
  %.sroa.14.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %362, %.preheader.preheader ]
  %.sroa.18.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %365, %.preheader.preheader ]
  %.sroa.22.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %368, %.preheader.preheader ]
  %.sroa.26.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %371, %.preheader.preheader ]
  %.sroa.30.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %374, %.preheader.preheader ]
  %.sroa.34.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %377, %.preheader.preheader ]
  %.sroa.38.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %380, %.preheader.preheader ]
  %.sroa.42.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %383, %.preheader.preheader ]
  %.sroa.46.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %386, %.preheader.preheader ]
  %.sroa.50.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %389, %.preheader.preheader ]
  %.sroa.54.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %392, %.preheader.preheader ]
  %.sroa.58.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %395, %.preheader.preheader ]
  %.sroa.62.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %398, %.preheader.preheader ]
  %49 = zext i32 %18 to i64
  %50 = bitcast i8 addrspace(1)* %2 to float addrspace(1)*
  %51 = getelementptr float, float addrspace(1)* %50, i64 %49
  %52 = mul nsw i32 %14, %4, !spirv.Decorations !429
  %53 = sext i32 %52 to i64
  %54 = getelementptr float, float addrspace(1)* %51, i64 %53
  %55 = bitcast float addrspace(1)* %54 to i8 addrspace(1)*
  %.ascast.i90 = addrspacecast i8 addrspace(1)* %55 to i8 addrspace(4)*
  %56 = ptrtoint i8 addrspace(4)* %.ascast.i90 to i64
  %57 = and i64 %56, -64
  %58 = trunc i64 %56 to i32
  %59 = lshr i32 %58, 2
  %60 = and i32 %59, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %57, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %60, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.088.0)
  %61 = getelementptr inbounds float, float addrspace(1)* %54, i64 16
  %62 = bitcast float addrspace(1)* %61 to i8 addrspace(1)*
  %.ascast.i90.1 = addrspacecast i8 addrspace(1)* %62 to i8 addrspace(4)*
  %63 = ptrtoint i8 addrspace(4)* %.ascast.i90.1 to i64
  %64 = and i64 %63, -64
  %65 = trunc i64 %63 to i32
  %66 = lshr i32 %65, 2
  %67 = and i32 %66, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %64, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %67, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.693.0)
  %68 = getelementptr inbounds float, float addrspace(1)* %54, i64 32
  %69 = bitcast float addrspace(1)* %68 to i8 addrspace(1)*
  %.ascast.i90.2 = addrspacecast i8 addrspace(1)* %69 to i8 addrspace(4)*
  %70 = ptrtoint i8 addrspace(4)* %.ascast.i90.2 to i64
  %71 = and i64 %70, -64
  %72 = trunc i64 %70 to i32
  %73 = lshr i32 %72, 2
  %74 = and i32 %73, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %71, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %74, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.10.0)
  %75 = getelementptr inbounds float, float addrspace(1)* %54, i64 48
  %76 = bitcast float addrspace(1)* %75 to i8 addrspace(1)*
  %.ascast.i90.3 = addrspacecast i8 addrspace(1)* %76 to i8 addrspace(4)*
  %77 = ptrtoint i8 addrspace(4)* %.ascast.i90.3 to i64
  %78 = and i64 %77, -64
  %79 = trunc i64 %77 to i32
  %80 = lshr i32 %79, 2
  %81 = and i32 %80, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %78, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %81, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.14.0)
  %82 = mul nsw i32 %.pre-phi157, %4, !spirv.Decorations !429
  %83 = sext i32 %82 to i64
  %84 = getelementptr float, float addrspace(1)* %51, i64 %83
  %85 = bitcast float addrspace(1)* %84 to i8 addrspace(1)*
  %.ascast.i90.136 = addrspacecast i8 addrspace(1)* %85 to i8 addrspace(4)*
  %86 = ptrtoint i8 addrspace(4)* %.ascast.i90.136 to i64
  %87 = and i64 %86, -64
  %88 = trunc i64 %86 to i32
  %89 = lshr i32 %88, 2
  %90 = and i32 %89, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %87, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %90, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.18.0)
  %91 = getelementptr inbounds float, float addrspace(1)* %84, i64 16
  %92 = bitcast float addrspace(1)* %91 to i8 addrspace(1)*
  %.ascast.i90.1.1 = addrspacecast i8 addrspace(1)* %92 to i8 addrspace(4)*
  %93 = ptrtoint i8 addrspace(4)* %.ascast.i90.1.1 to i64
  %94 = and i64 %93, -64
  %95 = trunc i64 %93 to i32
  %96 = lshr i32 %95, 2
  %97 = and i32 %96, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %94, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %97, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.22.0)
  %98 = getelementptr inbounds float, float addrspace(1)* %84, i64 32
  %99 = bitcast float addrspace(1)* %98 to i8 addrspace(1)*
  %.ascast.i90.2.1 = addrspacecast i8 addrspace(1)* %99 to i8 addrspace(4)*
  %100 = ptrtoint i8 addrspace(4)* %.ascast.i90.2.1 to i64
  %101 = and i64 %100, -64
  %102 = trunc i64 %100 to i32
  %103 = lshr i32 %102, 2
  %104 = and i32 %103, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %101, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %104, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.26.0)
  %105 = getelementptr inbounds float, float addrspace(1)* %84, i64 48
  %106 = bitcast float addrspace(1)* %105 to i8 addrspace(1)*
  %.ascast.i90.3.1 = addrspacecast i8 addrspace(1)* %106 to i8 addrspace(4)*
  %107 = ptrtoint i8 addrspace(4)* %.ascast.i90.3.1 to i64
  %108 = and i64 %107, -64
  %109 = trunc i64 %107 to i32
  %110 = lshr i32 %109, 2
  %111 = and i32 %110, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %108, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %111, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.30.0)
  %112 = mul nsw i32 %.pre-phi159, %4, !spirv.Decorations !429
  %113 = sext i32 %112 to i64
  %114 = getelementptr float, float addrspace(1)* %51, i64 %113
  %115 = bitcast float addrspace(1)* %114 to i8 addrspace(1)*
  %.ascast.i90.237 = addrspacecast i8 addrspace(1)* %115 to i8 addrspace(4)*
  %116 = ptrtoint i8 addrspace(4)* %.ascast.i90.237 to i64
  %117 = and i64 %116, -64
  %118 = trunc i64 %116 to i32
  %119 = lshr i32 %118, 2
  %120 = and i32 %119, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %117, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %120, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.34.0)
  %121 = getelementptr inbounds float, float addrspace(1)* %114, i64 16
  %122 = bitcast float addrspace(1)* %121 to i8 addrspace(1)*
  %.ascast.i90.1.2 = addrspacecast i8 addrspace(1)* %122 to i8 addrspace(4)*
  %123 = ptrtoint i8 addrspace(4)* %.ascast.i90.1.2 to i64
  %124 = and i64 %123, -64
  %125 = trunc i64 %123 to i32
  %126 = lshr i32 %125, 2
  %127 = and i32 %126, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %124, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %127, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.38.0)
  %128 = getelementptr inbounds float, float addrspace(1)* %114, i64 32
  %129 = bitcast float addrspace(1)* %128 to i8 addrspace(1)*
  %.ascast.i90.2.2 = addrspacecast i8 addrspace(1)* %129 to i8 addrspace(4)*
  %130 = ptrtoint i8 addrspace(4)* %.ascast.i90.2.2 to i64
  %131 = and i64 %130, -64
  %132 = trunc i64 %130 to i32
  %133 = lshr i32 %132, 2
  %134 = and i32 %133, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %131, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %134, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.42.0)
  %135 = getelementptr inbounds float, float addrspace(1)* %114, i64 48
  %136 = bitcast float addrspace(1)* %135 to i8 addrspace(1)*
  %.ascast.i90.3.2 = addrspacecast i8 addrspace(1)* %136 to i8 addrspace(4)*
  %137 = ptrtoint i8 addrspace(4)* %.ascast.i90.3.2 to i64
  %138 = and i64 %137, -64
  %139 = trunc i64 %137 to i32
  %140 = lshr i32 %139, 2
  %141 = and i32 %140, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %138, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %141, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.46.0)
  %142 = mul nsw i32 %.pre-phi161, %4, !spirv.Decorations !429
  %143 = sext i32 %142 to i64
  %144 = getelementptr float, float addrspace(1)* %51, i64 %143
  %145 = bitcast float addrspace(1)* %144 to i8 addrspace(1)*
  %.ascast.i90.338 = addrspacecast i8 addrspace(1)* %145 to i8 addrspace(4)*
  %146 = ptrtoint i8 addrspace(4)* %.ascast.i90.338 to i64
  %147 = and i64 %146, -64
  %148 = trunc i64 %146 to i32
  %149 = lshr i32 %148, 2
  %150 = and i32 %149, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %147, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %150, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.50.0)
  %151 = getelementptr inbounds float, float addrspace(1)* %144, i64 16
  %152 = bitcast float addrspace(1)* %151 to i8 addrspace(1)*
  %.ascast.i90.1.3 = addrspacecast i8 addrspace(1)* %152 to i8 addrspace(4)*
  %153 = ptrtoint i8 addrspace(4)* %.ascast.i90.1.3 to i64
  %154 = and i64 %153, -64
  %155 = trunc i64 %153 to i32
  %156 = lshr i32 %155, 2
  %157 = and i32 %156, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %154, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %157, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.54.0)
  %158 = getelementptr inbounds float, float addrspace(1)* %144, i64 32
  %159 = bitcast float addrspace(1)* %158 to i8 addrspace(1)*
  %.ascast.i90.2.3 = addrspacecast i8 addrspace(1)* %159 to i8 addrspace(4)*
  %160 = ptrtoint i8 addrspace(4)* %.ascast.i90.2.3 to i64
  %161 = and i64 %160, -64
  %162 = trunc i64 %160 to i32
  %163 = lshr i32 %162, 2
  %164 = and i32 %163, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %161, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %164, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.58.0)
  %165 = getelementptr inbounds float, float addrspace(1)* %144, i64 48
  %166 = bitcast float addrspace(1)* %165 to i8 addrspace(1)*
  %.ascast.i90.3.3 = addrspacecast i8 addrspace(1)* %166 to i8 addrspace(4)*
  %167 = ptrtoint i8 addrspace(4)* %.ascast.i90.3.3 to i64
  %168 = and i64 %167, -64
  %169 = trunc i64 %167 to i32
  %170 = lshr i32 %169, 2
  %171 = and i32 %170, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %168, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %171, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.62.0)
  ret void

172:                                              ; preds = %.lr.ph, %.preheader.preheader
  %173 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %352, %.preheader.preheader ]
  %174 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %355, %.preheader.preheader ]
  %175 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %358, %.preheader.preheader ]
  %176 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %361, %.preheader.preheader ]
  %177 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %364, %.preheader.preheader ]
  %178 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %367, %.preheader.preheader ]
  %179 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %370, %.preheader.preheader ]
  %180 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %373, %.preheader.preheader ]
  %181 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %376, %.preheader.preheader ]
  %182 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %379, %.preheader.preheader ]
  %183 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %382, %.preheader.preheader ]
  %184 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %385, %.preheader.preheader ]
  %185 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %388, %.preheader.preheader ]
  %186 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %391, %.preheader.preheader ]
  %187 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %394, %.preheader.preheader ]
  %188 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %397, %.preheader.preheader ]
  %189 = phi i32 [ 0, %.lr.ph ], [ %190, %.preheader.preheader ]
  %190 = add nuw nsw i32 %189, 32, !spirv.Decorations !431
  %191 = icmp slt i32 %190, %3
  br i1 %191, label %192, label %.preheader.preheader

192:                                              ; preds = %172
  %193 = zext i32 %190 to i64
  %194 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %22, i64 %193
  %195 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %194 to i8 addrspace(1)*
  %196 = addrspacecast i8 addrspace(1)* %195 to i8 addrspace(4)*
  %197 = ptrtoint i8 addrspace(4)* %196 to i64
  %198 = and i64 %197, -64
  %199 = trunc i64 %197 to i32
  %200 = lshr i32 %199, 1
  %201 = and i32 %200, 31
  call void @llvm.genx.GenISA.LSC2DBlockPrefetch.isVoid(i64 %198, i32 %31, i32 7, i32 %31, i32 %201, i32 0, i32 16, i32 32, i32 8, i32 1, i1 false, i1 false, i32 4)
  %202 = lshr exact i32 %190, 1
  %203 = zext i32 %202 to i64
  %204 = mul nsw i64 %203, %24, !spirv.Decorations !429
  %205 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %28, i64 %204
  %206 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %205 to i8 addrspace(1)*
  %207 = addrspacecast i8 addrspace(1)* %206 to i8 addrspace(4)*
  %208 = ptrtoint i8 addrspace(4)* %207 to i64
  %209 = and i64 %208, -64
  %210 = trunc i64 %208 to i32
  %211 = lshr i32 %210, 1
  %212 = and i32 %211, 31
  call void @llvm.genx.GenISA.LSC2DBlockPrefetch.isVoid(i64 %209, i32 %33, i32 7, i32 %33, i32 %212, i32 0, i32 16, i32 32, i32 8, i32 1, i1 false, i1 false, i32 4)
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %172, %192
  %213 = zext i32 %189 to i64
  %214 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %21, i64 %213
  %215 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %214, i64 %20
  %216 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %215 to i8 addrspace(1)*
  %.ascast.i = addrspacecast i8 addrspace(1)* %216 to i8 addrspace(4)*
  %217 = ptrtoint i8 addrspace(4)* %.ascast.i to i64
  %218 = and i64 %217, -64
  %219 = trunc i64 %217 to i32
  %220 = lshr i32 %219, 1
  %221 = and i32 %220, 31
  %222 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %218, i32 %31, i32 7, i32 %31, i32 %221, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %223 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %215, i64 16
  %224 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %223 to i8 addrspace(1)*
  %.ascast.i87 = addrspacecast i8 addrspace(1)* %224 to i8 addrspace(4)*
  %225 = ptrtoint i8 addrspace(4)* %.ascast.i87 to i64
  %226 = and i64 %225, -64
  %227 = trunc i64 %225 to i32
  %228 = lshr i32 %227, 1
  %229 = and i32 %228, 31
  %230 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %226, i32 %31, i32 7, i32 %31, i32 %229, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %231 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %214, i64 %36
  %232 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %231 to i8 addrspace(1)*
  %.ascast.i.1 = addrspacecast i8 addrspace(1)* %232 to i8 addrspace(4)*
  %233 = ptrtoint i8 addrspace(4)* %.ascast.i.1 to i64
  %234 = and i64 %233, -64
  %235 = trunc i64 %233 to i32
  %236 = lshr i32 %235, 1
  %237 = and i32 %236, 31
  %238 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %234, i32 %31, i32 7, i32 %31, i32 %237, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %239 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %231, i64 16
  %240 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %239 to i8 addrspace(1)*
  %.ascast.i87.1 = addrspacecast i8 addrspace(1)* %240 to i8 addrspace(4)*
  %241 = ptrtoint i8 addrspace(4)* %.ascast.i87.1 to i64
  %242 = and i64 %241, -64
  %243 = trunc i64 %241 to i32
  %244 = lshr i32 %243, 1
  %245 = and i32 %244, 31
  %246 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %242, i32 %31, i32 7, i32 %31, i32 %245, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %247 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %214, i64 %39
  %248 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %247 to i8 addrspace(1)*
  %.ascast.i.2 = addrspacecast i8 addrspace(1)* %248 to i8 addrspace(4)*
  %249 = ptrtoint i8 addrspace(4)* %.ascast.i.2 to i64
  %250 = and i64 %249, -64
  %251 = trunc i64 %249 to i32
  %252 = lshr i32 %251, 1
  %253 = and i32 %252, 31
  %254 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %250, i32 %31, i32 7, i32 %31, i32 %253, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %255 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %247, i64 16
  %256 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %255 to i8 addrspace(1)*
  %.ascast.i87.2 = addrspacecast i8 addrspace(1)* %256 to i8 addrspace(4)*
  %257 = ptrtoint i8 addrspace(4)* %.ascast.i87.2 to i64
  %258 = and i64 %257, -64
  %259 = trunc i64 %257 to i32
  %260 = lshr i32 %259, 1
  %261 = and i32 %260, 31
  %262 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %258, i32 %31, i32 7, i32 %31, i32 %261, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %263 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %214, i64 %42
  %264 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %263 to i8 addrspace(1)*
  %.ascast.i.3 = addrspacecast i8 addrspace(1)* %264 to i8 addrspace(4)*
  %265 = ptrtoint i8 addrspace(4)* %.ascast.i.3 to i64
  %266 = and i64 %265, -64
  %267 = trunc i64 %265 to i32
  %268 = lshr i32 %267, 1
  %269 = and i32 %268, 31
  %270 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %266, i32 %31, i32 7, i32 %31, i32 %269, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %271 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %263, i64 16
  %272 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %271 to i8 addrspace(1)*
  %.ascast.i87.3 = addrspacecast i8 addrspace(1)* %272 to i8 addrspace(4)*
  %273 = ptrtoint i8 addrspace(4)* %.ascast.i87.3 to i64
  %274 = and i64 %273, -64
  %275 = trunc i64 %273 to i32
  %276 = lshr i32 %275, 1
  %277 = and i32 %276, 31
  %278 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %274, i32 %31, i32 7, i32 %31, i32 %277, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %279 = lshr exact i32 %189, 1
  %280 = zext i32 %279 to i64
  %281 = mul nsw i64 %280, %24, !spirv.Decorations !429
  %282 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %27, i64 %281
  %283 = or i32 %279, 8
  %284 = zext i32 %283 to i64
  %285 = mul nsw i64 %284, %24, !spirv.Decorations !429
  %286 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %27, i64 %285
  %287 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %282, i64 %26
  %288 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %287 to i8 addrspace(1)*
  %.ascast.i88 = addrspacecast i8 addrspace(1)* %288 to i8 addrspace(4)*
  %289 = ptrtoint i8 addrspace(4)* %.ascast.i88 to i64
  %290 = and i64 %289, -64
  %291 = trunc i64 %289 to i32
  %292 = lshr i32 %291, 2
  %293 = and i32 %292, 15
  %294 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %290, i32 %33, i32 7, i32 %33, i32 %293, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %295 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %286, i64 %26
  %296 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %295 to i8 addrspace(1)*
  %.ascast.i89 = addrspacecast i8 addrspace(1)* %296 to i8 addrspace(4)*
  %297 = ptrtoint i8 addrspace(4)* %.ascast.i89 to i64
  %298 = and i64 %297, -64
  %299 = trunc i64 %297 to i32
  %300 = lshr i32 %299, 2
  %301 = and i32 %300, 15
  %302 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %298, i32 %33, i32 7, i32 %33, i32 %301, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %303 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %282, i64 %44
  %304 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %303 to i8 addrspace(1)*
  %.ascast.i88.1 = addrspacecast i8 addrspace(1)* %304 to i8 addrspace(4)*
  %305 = ptrtoint i8 addrspace(4)* %.ascast.i88.1 to i64
  %306 = and i64 %305, -64
  %307 = trunc i64 %305 to i32
  %308 = lshr i32 %307, 2
  %309 = and i32 %308, 15
  %310 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %306, i32 %33, i32 7, i32 %33, i32 %309, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %311 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %286, i64 %44
  %312 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %311 to i8 addrspace(1)*
  %.ascast.i89.1 = addrspacecast i8 addrspace(1)* %312 to i8 addrspace(4)*
  %313 = ptrtoint i8 addrspace(4)* %.ascast.i89.1 to i64
  %314 = and i64 %313, -64
  %315 = trunc i64 %313 to i32
  %316 = lshr i32 %315, 2
  %317 = and i32 %316, 15
  %318 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %314, i32 %33, i32 7, i32 %33, i32 %317, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %319 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %282, i64 %46
  %320 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %319 to i8 addrspace(1)*
  %.ascast.i88.2 = addrspacecast i8 addrspace(1)* %320 to i8 addrspace(4)*
  %321 = ptrtoint i8 addrspace(4)* %.ascast.i88.2 to i64
  %322 = and i64 %321, -64
  %323 = trunc i64 %321 to i32
  %324 = lshr i32 %323, 2
  %325 = and i32 %324, 15
  %326 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %322, i32 %33, i32 7, i32 %33, i32 %325, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %327 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %286, i64 %46
  %328 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %327 to i8 addrspace(1)*
  %.ascast.i89.2 = addrspacecast i8 addrspace(1)* %328 to i8 addrspace(4)*
  %329 = ptrtoint i8 addrspace(4)* %.ascast.i89.2 to i64
  %330 = and i64 %329, -64
  %331 = trunc i64 %329 to i32
  %332 = lshr i32 %331, 2
  %333 = and i32 %332, 15
  %334 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %330, i32 %33, i32 7, i32 %33, i32 %333, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %335 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %282, i64 %48
  %336 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %335 to i8 addrspace(1)*
  %.ascast.i88.3 = addrspacecast i8 addrspace(1)* %336 to i8 addrspace(4)*
  %337 = ptrtoint i8 addrspace(4)* %.ascast.i88.3 to i64
  %338 = and i64 %337, -64
  %339 = trunc i64 %337 to i32
  %340 = lshr i32 %339, 2
  %341 = and i32 %340, 15
  %342 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %338, i32 %33, i32 7, i32 %33, i32 %341, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %343 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %286, i64 %48
  %344 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %343 to i8 addrspace(1)*
  %.ascast.i89.3 = addrspacecast i8 addrspace(1)* %344 to i8 addrspace(4)*
  %345 = ptrtoint i8 addrspace(4)* %.ascast.i89.3 to i64
  %346 = and i64 %345, -64
  %347 = trunc i64 %345 to i32
  %348 = lshr i32 %347, 2
  %349 = and i32 %348, 15
  %350 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %346, i32 %33, i32 7, i32 %33, i32 %349, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %351 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %173, <8 x i16> %222, <8 x i32> %294, i32 11, i32 11, i32 8, i32 8, i1 false)
  %352 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %351, <8 x i16> %230, <8 x i32> %302, i32 11, i32 11, i32 8, i32 8, i1 false)
  %353 = bitcast <8 x float> %352 to <8 x i32>
  %354 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %174, <8 x i16> %222, <8 x i32> %310, i32 11, i32 11, i32 8, i32 8, i1 false)
  %355 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %354, <8 x i16> %230, <8 x i32> %318, i32 11, i32 11, i32 8, i32 8, i1 false)
  %356 = bitcast <8 x float> %355 to <8 x i32>
  %357 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %175, <8 x i16> %222, <8 x i32> %326, i32 11, i32 11, i32 8, i32 8, i1 false)
  %358 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %357, <8 x i16> %230, <8 x i32> %334, i32 11, i32 11, i32 8, i32 8, i1 false)
  %359 = bitcast <8 x float> %358 to <8 x i32>
  %360 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %176, <8 x i16> %222, <8 x i32> %342, i32 11, i32 11, i32 8, i32 8, i1 false)
  %361 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %360, <8 x i16> %230, <8 x i32> %350, i32 11, i32 11, i32 8, i32 8, i1 false)
  %362 = bitcast <8 x float> %361 to <8 x i32>
  %363 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %177, <8 x i16> %238, <8 x i32> %294, i32 11, i32 11, i32 8, i32 8, i1 false)
  %364 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %363, <8 x i16> %246, <8 x i32> %302, i32 11, i32 11, i32 8, i32 8, i1 false)
  %365 = bitcast <8 x float> %364 to <8 x i32>
  %366 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %178, <8 x i16> %238, <8 x i32> %310, i32 11, i32 11, i32 8, i32 8, i1 false)
  %367 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %366, <8 x i16> %246, <8 x i32> %318, i32 11, i32 11, i32 8, i32 8, i1 false)
  %368 = bitcast <8 x float> %367 to <8 x i32>
  %369 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %179, <8 x i16> %238, <8 x i32> %326, i32 11, i32 11, i32 8, i32 8, i1 false)
  %370 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %369, <8 x i16> %246, <8 x i32> %334, i32 11, i32 11, i32 8, i32 8, i1 false)
  %371 = bitcast <8 x float> %370 to <8 x i32>
  %372 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %180, <8 x i16> %238, <8 x i32> %342, i32 11, i32 11, i32 8, i32 8, i1 false)
  %373 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %372, <8 x i16> %246, <8 x i32> %350, i32 11, i32 11, i32 8, i32 8, i1 false)
  %374 = bitcast <8 x float> %373 to <8 x i32>
  %375 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %181, <8 x i16> %254, <8 x i32> %294, i32 11, i32 11, i32 8, i32 8, i1 false)
  %376 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %375, <8 x i16> %262, <8 x i32> %302, i32 11, i32 11, i32 8, i32 8, i1 false)
  %377 = bitcast <8 x float> %376 to <8 x i32>
  %378 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %182, <8 x i16> %254, <8 x i32> %310, i32 11, i32 11, i32 8, i32 8, i1 false)
  %379 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %378, <8 x i16> %262, <8 x i32> %318, i32 11, i32 11, i32 8, i32 8, i1 false)
  %380 = bitcast <8 x float> %379 to <8 x i32>
  %381 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %183, <8 x i16> %254, <8 x i32> %326, i32 11, i32 11, i32 8, i32 8, i1 false)
  %382 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %381, <8 x i16> %262, <8 x i32> %334, i32 11, i32 11, i32 8, i32 8, i1 false)
  %383 = bitcast <8 x float> %382 to <8 x i32>
  %384 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %184, <8 x i16> %254, <8 x i32> %342, i32 11, i32 11, i32 8, i32 8, i1 false)
  %385 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %384, <8 x i16> %262, <8 x i32> %350, i32 11, i32 11, i32 8, i32 8, i1 false)
  %386 = bitcast <8 x float> %385 to <8 x i32>
  %387 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %185, <8 x i16> %270, <8 x i32> %294, i32 11, i32 11, i32 8, i32 8, i1 false)
  %388 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %387, <8 x i16> %278, <8 x i32> %302, i32 11, i32 11, i32 8, i32 8, i1 false)
  %389 = bitcast <8 x float> %388 to <8 x i32>
  %390 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %186, <8 x i16> %270, <8 x i32> %310, i32 11, i32 11, i32 8, i32 8, i1 false)
  %391 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %390, <8 x i16> %278, <8 x i32> %318, i32 11, i32 11, i32 8, i32 8, i1 false)
  %392 = bitcast <8 x float> %391 to <8 x i32>
  %393 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %187, <8 x i16> %270, <8 x i32> %326, i32 11, i32 11, i32 8, i32 8, i1 false)
  %394 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %393, <8 x i16> %278, <8 x i32> %334, i32 11, i32 11, i32 8, i32 8, i1 false)
  %395 = bitcast <8 x float> %394 to <8 x i32>
  %396 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %188, <8 x i16> %270, <8 x i32> %342, i32 11, i32 11, i32 8, i32 8, i1 false)
  %397 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %396, <8 x i16> %278, <8 x i32> %350, i32 11, i32 11, i32 8, i32 8, i1 false)
  %398 = bitcast <8 x float> %397 to <8 x i32>
  br i1 %191, label %172, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit
}

; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZZ5benchILi4ELi4ELi2ELi2ELb1EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
.preheader1.preheader:
  %5 = extractelement <8 x i32> %r0, i64 1
  %6 = extractelement <8 x i32> %r0, i64 6
  %7 = bitcast <8 x i32> %r0 to <32 x i8>
  %8 = extractelement <32 x i8> %7, i64 8
  %localThreadId5 = zext i8 %8 to i32
  %9 = icmp sgt i32 %6, -1
  call void @llvm.assume(i1 %9)
  %10 = icmp sgt i32 %5, -1
  call void @llvm.assume(i1 %10)
  %11 = shl nsw i32 %6, 6, !spirv.Decorations !429
  %12 = shl nuw nsw i32 %localThreadId5, 4
  %13 = and i32 %12, 4064
  %14 = add nuw nsw i32 %11, %13, !spirv.Decorations !429
  %15 = shl nsw i32 %5, 7, !spirv.Decorations !429
  %16 = shl nuw nsw i32 %localThreadId5, 6
  %17 = and i32 %16, 64
  %18 = or i32 %15, %17
  %19 = shl nsw i32 %4, 1, !spirv.Decorations !429
  %20 = sext i32 %19 to i64
  %21 = icmp sgt i32 %3, 0
  br i1 %21, label %.lr.ph, label %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge

.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge: ; preds = %.preheader1.preheader
  %.pre = shl i32 %4, 2
  %.pre148 = add i32 %.pre, -1
  %.pre150 = or i32 %14, 8
  %.pre152 = or i32 %14, 16
  %.pre154 = or i32 %14, 24
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit

.lr.ph:                                           ; preds = %.preheader1.preheader
  %22 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %23 = shl i32 %3, 1
  %24 = add i32 %23, -1
  %25 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %26 = shl nuw i32 %18, 1
  %27 = shl i32 %4, 2
  %28 = add i32 %27, -1
  %29 = mul nsw i32 %14, %3, !spirv.Decorations !429
  %30 = sext i32 %29 to i64
  %31 = or i32 %14, 8
  %32 = mul nsw i32 %31, %3
  %33 = sext i32 %32 to i64
  %34 = or i32 %14, 16
  %35 = mul nsw i32 %34, %3
  %36 = sext i32 %35 to i64
  %37 = or i32 %14, 24
  %38 = mul nsw i32 %37, %3
  %39 = sext i32 %38 to i64
  %40 = zext i32 %26 to i64
  %41 = or i32 %26, 32
  %42 = zext i32 %41 to i64
  %43 = or i32 %26, 64
  %44 = zext i32 %43 to i64
  %45 = or i32 %26, 96
  %46 = zext i32 %45 to i64
  br label %.preheader.preheader

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit: ; preds = %.preheader.preheader, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge
  %.pre-phi155 = phi i32 [ %.pre154, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %37, %.preheader.preheader ]
  %.pre-phi153 = phi i32 [ %.pre152, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %34, %.preheader.preheader ]
  %.pre-phi151 = phi i32 [ %.pre150, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %31, %.preheader.preheader ]
  %.pre-phi149 = phi i32 [ %.pre148, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %28, %.preheader.preheader ]
  %.sroa.082.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %327, %.preheader.preheader ]
  %.sroa.687.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %330, %.preheader.preheader ]
  %.sroa.10.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %333, %.preheader.preheader ]
  %.sroa.14.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %336, %.preheader.preheader ]
  %.sroa.18.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %339, %.preheader.preheader ]
  %.sroa.22.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %342, %.preheader.preheader ]
  %.sroa.26.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %345, %.preheader.preheader ]
  %.sroa.30.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %348, %.preheader.preheader ]
  %.sroa.34.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %351, %.preheader.preheader ]
  %.sroa.38.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %354, %.preheader.preheader ]
  %.sroa.42.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %357, %.preheader.preheader ]
  %.sroa.46.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %360, %.preheader.preheader ]
  %.sroa.50.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %363, %.preheader.preheader ]
  %.sroa.54.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %366, %.preheader.preheader ]
  %.sroa.58.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %369, %.preheader.preheader ]
  %.sroa.62.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %372, %.preheader.preheader ]
  %47 = zext i32 %18 to i64
  %48 = bitcast i8 addrspace(1)* %2 to float addrspace(1)*
  %49 = getelementptr float, float addrspace(1)* %48, i64 %47
  %50 = mul nsw i32 %14, %4, !spirv.Decorations !429
  %51 = sext i32 %50 to i64
  %52 = getelementptr float, float addrspace(1)* %49, i64 %51
  %53 = bitcast float addrspace(1)* %52 to i8 addrspace(1)*
  %.ascast.i89 = addrspacecast i8 addrspace(1)* %53 to i8 addrspace(4)*
  %54 = ptrtoint i8 addrspace(4)* %.ascast.i89 to i64
  %55 = and i64 %54, -64
  %56 = trunc i64 %54 to i32
  %57 = lshr i32 %56, 2
  %58 = and i32 %57, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %55, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %58, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.082.0)
  %59 = getelementptr inbounds float, float addrspace(1)* %52, i64 16
  %60 = bitcast float addrspace(1)* %59 to i8 addrspace(1)*
  %.ascast.i89.1 = addrspacecast i8 addrspace(1)* %60 to i8 addrspace(4)*
  %61 = ptrtoint i8 addrspace(4)* %.ascast.i89.1 to i64
  %62 = and i64 %61, -64
  %63 = trunc i64 %61 to i32
  %64 = lshr i32 %63, 2
  %65 = and i32 %64, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %62, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %65, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.687.0)
  %66 = getelementptr inbounds float, float addrspace(1)* %52, i64 32
  %67 = bitcast float addrspace(1)* %66 to i8 addrspace(1)*
  %.ascast.i89.2 = addrspacecast i8 addrspace(1)* %67 to i8 addrspace(4)*
  %68 = ptrtoint i8 addrspace(4)* %.ascast.i89.2 to i64
  %69 = and i64 %68, -64
  %70 = trunc i64 %68 to i32
  %71 = lshr i32 %70, 2
  %72 = and i32 %71, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %69, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %72, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.10.0)
  %73 = getelementptr inbounds float, float addrspace(1)* %52, i64 48
  %74 = bitcast float addrspace(1)* %73 to i8 addrspace(1)*
  %.ascast.i89.3 = addrspacecast i8 addrspace(1)* %74 to i8 addrspace(4)*
  %75 = ptrtoint i8 addrspace(4)* %.ascast.i89.3 to i64
  %76 = and i64 %75, -64
  %77 = trunc i64 %75 to i32
  %78 = lshr i32 %77, 2
  %79 = and i32 %78, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %76, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %79, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.14.0)
  %80 = mul nsw i32 %.pre-phi151, %4, !spirv.Decorations !429
  %81 = sext i32 %80 to i64
  %82 = getelementptr float, float addrspace(1)* %49, i64 %81
  %83 = bitcast float addrspace(1)* %82 to i8 addrspace(1)*
  %.ascast.i89.130 = addrspacecast i8 addrspace(1)* %83 to i8 addrspace(4)*
  %84 = ptrtoint i8 addrspace(4)* %.ascast.i89.130 to i64
  %85 = and i64 %84, -64
  %86 = trunc i64 %84 to i32
  %87 = lshr i32 %86, 2
  %88 = and i32 %87, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %85, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %88, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.18.0)
  %89 = getelementptr inbounds float, float addrspace(1)* %82, i64 16
  %90 = bitcast float addrspace(1)* %89 to i8 addrspace(1)*
  %.ascast.i89.1.1 = addrspacecast i8 addrspace(1)* %90 to i8 addrspace(4)*
  %91 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.1 to i64
  %92 = and i64 %91, -64
  %93 = trunc i64 %91 to i32
  %94 = lshr i32 %93, 2
  %95 = and i32 %94, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %92, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %95, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.22.0)
  %96 = getelementptr inbounds float, float addrspace(1)* %82, i64 32
  %97 = bitcast float addrspace(1)* %96 to i8 addrspace(1)*
  %.ascast.i89.2.1 = addrspacecast i8 addrspace(1)* %97 to i8 addrspace(4)*
  %98 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.1 to i64
  %99 = and i64 %98, -64
  %100 = trunc i64 %98 to i32
  %101 = lshr i32 %100, 2
  %102 = and i32 %101, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %99, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %102, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.26.0)
  %103 = getelementptr inbounds float, float addrspace(1)* %82, i64 48
  %104 = bitcast float addrspace(1)* %103 to i8 addrspace(1)*
  %.ascast.i89.3.1 = addrspacecast i8 addrspace(1)* %104 to i8 addrspace(4)*
  %105 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.1 to i64
  %106 = and i64 %105, -64
  %107 = trunc i64 %105 to i32
  %108 = lshr i32 %107, 2
  %109 = and i32 %108, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %106, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %109, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.30.0)
  %110 = mul nsw i32 %.pre-phi153, %4, !spirv.Decorations !429
  %111 = sext i32 %110 to i64
  %112 = getelementptr float, float addrspace(1)* %49, i64 %111
  %113 = bitcast float addrspace(1)* %112 to i8 addrspace(1)*
  %.ascast.i89.231 = addrspacecast i8 addrspace(1)* %113 to i8 addrspace(4)*
  %114 = ptrtoint i8 addrspace(4)* %.ascast.i89.231 to i64
  %115 = and i64 %114, -64
  %116 = trunc i64 %114 to i32
  %117 = lshr i32 %116, 2
  %118 = and i32 %117, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %115, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %118, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.34.0)
  %119 = getelementptr inbounds float, float addrspace(1)* %112, i64 16
  %120 = bitcast float addrspace(1)* %119 to i8 addrspace(1)*
  %.ascast.i89.1.2 = addrspacecast i8 addrspace(1)* %120 to i8 addrspace(4)*
  %121 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.2 to i64
  %122 = and i64 %121, -64
  %123 = trunc i64 %121 to i32
  %124 = lshr i32 %123, 2
  %125 = and i32 %124, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %122, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %125, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.38.0)
  %126 = getelementptr inbounds float, float addrspace(1)* %112, i64 32
  %127 = bitcast float addrspace(1)* %126 to i8 addrspace(1)*
  %.ascast.i89.2.2 = addrspacecast i8 addrspace(1)* %127 to i8 addrspace(4)*
  %128 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.2 to i64
  %129 = and i64 %128, -64
  %130 = trunc i64 %128 to i32
  %131 = lshr i32 %130, 2
  %132 = and i32 %131, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %129, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %132, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.42.0)
  %133 = getelementptr inbounds float, float addrspace(1)* %112, i64 48
  %134 = bitcast float addrspace(1)* %133 to i8 addrspace(1)*
  %.ascast.i89.3.2 = addrspacecast i8 addrspace(1)* %134 to i8 addrspace(4)*
  %135 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.2 to i64
  %136 = and i64 %135, -64
  %137 = trunc i64 %135 to i32
  %138 = lshr i32 %137, 2
  %139 = and i32 %138, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %136, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %139, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.46.0)
  %140 = mul nsw i32 %.pre-phi155, %4, !spirv.Decorations !429
  %141 = sext i32 %140 to i64
  %142 = getelementptr float, float addrspace(1)* %49, i64 %141
  %143 = bitcast float addrspace(1)* %142 to i8 addrspace(1)*
  %.ascast.i89.332 = addrspacecast i8 addrspace(1)* %143 to i8 addrspace(4)*
  %144 = ptrtoint i8 addrspace(4)* %.ascast.i89.332 to i64
  %145 = and i64 %144, -64
  %146 = trunc i64 %144 to i32
  %147 = lshr i32 %146, 2
  %148 = and i32 %147, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %145, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %148, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.50.0)
  %149 = getelementptr inbounds float, float addrspace(1)* %142, i64 16
  %150 = bitcast float addrspace(1)* %149 to i8 addrspace(1)*
  %.ascast.i89.1.3 = addrspacecast i8 addrspace(1)* %150 to i8 addrspace(4)*
  %151 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.3 to i64
  %152 = and i64 %151, -64
  %153 = trunc i64 %151 to i32
  %154 = lshr i32 %153, 2
  %155 = and i32 %154, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %152, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %155, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.54.0)
  %156 = getelementptr inbounds float, float addrspace(1)* %142, i64 32
  %157 = bitcast float addrspace(1)* %156 to i8 addrspace(1)*
  %.ascast.i89.2.3 = addrspacecast i8 addrspace(1)* %157 to i8 addrspace(4)*
  %158 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.3 to i64
  %159 = and i64 %158, -64
  %160 = trunc i64 %158 to i32
  %161 = lshr i32 %160, 2
  %162 = and i32 %161, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %159, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %162, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.58.0)
  %163 = getelementptr inbounds float, float addrspace(1)* %142, i64 48
  %164 = bitcast float addrspace(1)* %163 to i8 addrspace(1)*
  %.ascast.i89.3.3 = addrspacecast i8 addrspace(1)* %164 to i8 addrspace(4)*
  %165 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.3 to i64
  %166 = and i64 %165, -64
  %167 = trunc i64 %165 to i32
  %168 = lshr i32 %167, 2
  %169 = and i32 %168, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %166, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %169, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.62.0)
  ret void

.preheader.preheader:                             ; preds = %.lr.ph, %.preheader.preheader
  %170 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %326, %.preheader.preheader ]
  %171 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %329, %.preheader.preheader ]
  %172 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %332, %.preheader.preheader ]
  %173 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %335, %.preheader.preheader ]
  %174 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %338, %.preheader.preheader ]
  %175 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %341, %.preheader.preheader ]
  %176 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %344, %.preheader.preheader ]
  %177 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %347, %.preheader.preheader ]
  %178 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %350, %.preheader.preheader ]
  %179 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %353, %.preheader.preheader ]
  %180 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %356, %.preheader.preheader ]
  %181 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %359, %.preheader.preheader ]
  %182 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %362, %.preheader.preheader ]
  %183 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %365, %.preheader.preheader ]
  %184 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %368, %.preheader.preheader ]
  %185 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %371, %.preheader.preheader ]
  %186 = phi i32 [ 0, %.lr.ph ], [ %373, %.preheader.preheader ]
  %187 = zext i32 %186 to i64
  %188 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %22, i64 %187
  %189 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %188, i64 %30
  %190 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %189 to i8 addrspace(1)*
  %.ascast.i = addrspacecast i8 addrspace(1)* %190 to i8 addrspace(4)*
  %191 = ptrtoint i8 addrspace(4)* %.ascast.i to i64
  %192 = and i64 %191, -64
  %193 = trunc i64 %191 to i32
  %194 = lshr i32 %193, 1
  %195 = and i32 %194, 31
  %196 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %192, i32 %24, i32 7, i32 %24, i32 %195, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %197 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %189, i64 16
  %198 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %197 to i8 addrspace(1)*
  %.ascast.i86 = addrspacecast i8 addrspace(1)* %198 to i8 addrspace(4)*
  %199 = ptrtoint i8 addrspace(4)* %.ascast.i86 to i64
  %200 = and i64 %199, -64
  %201 = trunc i64 %199 to i32
  %202 = lshr i32 %201, 1
  %203 = and i32 %202, 31
  %204 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %200, i32 %24, i32 7, i32 %24, i32 %203, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %205 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %188, i64 %33
  %206 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %205 to i8 addrspace(1)*
  %.ascast.i.1 = addrspacecast i8 addrspace(1)* %206 to i8 addrspace(4)*
  %207 = ptrtoint i8 addrspace(4)* %.ascast.i.1 to i64
  %208 = and i64 %207, -64
  %209 = trunc i64 %207 to i32
  %210 = lshr i32 %209, 1
  %211 = and i32 %210, 31
  %212 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %208, i32 %24, i32 7, i32 %24, i32 %211, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %213 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %205, i64 16
  %214 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %213 to i8 addrspace(1)*
  %.ascast.i86.1 = addrspacecast i8 addrspace(1)* %214 to i8 addrspace(4)*
  %215 = ptrtoint i8 addrspace(4)* %.ascast.i86.1 to i64
  %216 = and i64 %215, -64
  %217 = trunc i64 %215 to i32
  %218 = lshr i32 %217, 1
  %219 = and i32 %218, 31
  %220 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %216, i32 %24, i32 7, i32 %24, i32 %219, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %221 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %188, i64 %36
  %222 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %221 to i8 addrspace(1)*
  %.ascast.i.2 = addrspacecast i8 addrspace(1)* %222 to i8 addrspace(4)*
  %223 = ptrtoint i8 addrspace(4)* %.ascast.i.2 to i64
  %224 = and i64 %223, -64
  %225 = trunc i64 %223 to i32
  %226 = lshr i32 %225, 1
  %227 = and i32 %226, 31
  %228 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %224, i32 %24, i32 7, i32 %24, i32 %227, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %229 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %221, i64 16
  %230 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %229 to i8 addrspace(1)*
  %.ascast.i86.2 = addrspacecast i8 addrspace(1)* %230 to i8 addrspace(4)*
  %231 = ptrtoint i8 addrspace(4)* %.ascast.i86.2 to i64
  %232 = and i64 %231, -64
  %233 = trunc i64 %231 to i32
  %234 = lshr i32 %233, 1
  %235 = and i32 %234, 31
  %236 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %232, i32 %24, i32 7, i32 %24, i32 %235, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %237 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %188, i64 %39
  %238 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %237 to i8 addrspace(1)*
  %.ascast.i.3 = addrspacecast i8 addrspace(1)* %238 to i8 addrspace(4)*
  %239 = ptrtoint i8 addrspace(4)* %.ascast.i.3 to i64
  %240 = and i64 %239, -64
  %241 = trunc i64 %239 to i32
  %242 = lshr i32 %241, 1
  %243 = and i32 %242, 31
  %244 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %240, i32 %24, i32 7, i32 %24, i32 %243, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %245 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %237, i64 16
  %246 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %245 to i8 addrspace(1)*
  %.ascast.i86.3 = addrspacecast i8 addrspace(1)* %246 to i8 addrspace(4)*
  %247 = ptrtoint i8 addrspace(4)* %.ascast.i86.3 to i64
  %248 = and i64 %247, -64
  %249 = trunc i64 %247 to i32
  %250 = lshr i32 %249, 1
  %251 = and i32 %250, 31
  %252 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %248, i32 %24, i32 7, i32 %24, i32 %251, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %253 = lshr exact i32 %186, 1
  %254 = zext i32 %253 to i64
  %255 = mul nsw i64 %254, %20, !spirv.Decorations !429
  %256 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %25, i64 %255
  %257 = or i32 %253, 8
  %258 = zext i32 %257 to i64
  %259 = mul nsw i64 %258, %20, !spirv.Decorations !429
  %260 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %25, i64 %259
  %261 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %256, i64 %40
  %262 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %261 to i8 addrspace(1)*
  %.ascast.i87 = addrspacecast i8 addrspace(1)* %262 to i8 addrspace(4)*
  %263 = ptrtoint i8 addrspace(4)* %.ascast.i87 to i64
  %264 = and i64 %263, -64
  %265 = trunc i64 %263 to i32
  %266 = lshr i32 %265, 2
  %267 = and i32 %266, 15
  %268 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %264, i32 %28, i32 7, i32 %28, i32 %267, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %269 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %260, i64 %40
  %270 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %269 to i8 addrspace(1)*
  %.ascast.i88 = addrspacecast i8 addrspace(1)* %270 to i8 addrspace(4)*
  %271 = ptrtoint i8 addrspace(4)* %.ascast.i88 to i64
  %272 = and i64 %271, -64
  %273 = trunc i64 %271 to i32
  %274 = lshr i32 %273, 2
  %275 = and i32 %274, 15
  %276 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %272, i32 %28, i32 7, i32 %28, i32 %275, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %277 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %256, i64 %42
  %278 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %277 to i8 addrspace(1)*
  %.ascast.i87.1 = addrspacecast i8 addrspace(1)* %278 to i8 addrspace(4)*
  %279 = ptrtoint i8 addrspace(4)* %.ascast.i87.1 to i64
  %280 = and i64 %279, -64
  %281 = trunc i64 %279 to i32
  %282 = lshr i32 %281, 2
  %283 = and i32 %282, 15
  %284 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %280, i32 %28, i32 7, i32 %28, i32 %283, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %285 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %260, i64 %42
  %286 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %285 to i8 addrspace(1)*
  %.ascast.i88.1 = addrspacecast i8 addrspace(1)* %286 to i8 addrspace(4)*
  %287 = ptrtoint i8 addrspace(4)* %.ascast.i88.1 to i64
  %288 = and i64 %287, -64
  %289 = trunc i64 %287 to i32
  %290 = lshr i32 %289, 2
  %291 = and i32 %290, 15
  %292 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %288, i32 %28, i32 7, i32 %28, i32 %291, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %293 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %256, i64 %44
  %294 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %293 to i8 addrspace(1)*
  %.ascast.i87.2 = addrspacecast i8 addrspace(1)* %294 to i8 addrspace(4)*
  %295 = ptrtoint i8 addrspace(4)* %.ascast.i87.2 to i64
  %296 = and i64 %295, -64
  %297 = trunc i64 %295 to i32
  %298 = lshr i32 %297, 2
  %299 = and i32 %298, 15
  %300 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %296, i32 %28, i32 7, i32 %28, i32 %299, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %301 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %260, i64 %44
  %302 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %301 to i8 addrspace(1)*
  %.ascast.i88.2 = addrspacecast i8 addrspace(1)* %302 to i8 addrspace(4)*
  %303 = ptrtoint i8 addrspace(4)* %.ascast.i88.2 to i64
  %304 = and i64 %303, -64
  %305 = trunc i64 %303 to i32
  %306 = lshr i32 %305, 2
  %307 = and i32 %306, 15
  %308 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %304, i32 %28, i32 7, i32 %28, i32 %307, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %309 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %256, i64 %46
  %310 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %309 to i8 addrspace(1)*
  %.ascast.i87.3 = addrspacecast i8 addrspace(1)* %310 to i8 addrspace(4)*
  %311 = ptrtoint i8 addrspace(4)* %.ascast.i87.3 to i64
  %312 = and i64 %311, -64
  %313 = trunc i64 %311 to i32
  %314 = lshr i32 %313, 2
  %315 = and i32 %314, 15
  %316 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %312, i32 %28, i32 7, i32 %28, i32 %315, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %317 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %260, i64 %46
  %318 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %317 to i8 addrspace(1)*
  %.ascast.i88.3 = addrspacecast i8 addrspace(1)* %318 to i8 addrspace(4)*
  %319 = ptrtoint i8 addrspace(4)* %.ascast.i88.3 to i64
  %320 = and i64 %319, -64
  %321 = trunc i64 %319 to i32
  %322 = lshr i32 %321, 2
  %323 = and i32 %322, 15
  %324 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %320, i32 %28, i32 7, i32 %28, i32 %323, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %325 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %170, <8 x i16> %196, <8 x i32> %268, i32 11, i32 11, i32 8, i32 8, i1 false)
  %326 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %325, <8 x i16> %204, <8 x i32> %276, i32 11, i32 11, i32 8, i32 8, i1 false)
  %327 = bitcast <8 x float> %326 to <8 x i32>
  %328 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %171, <8 x i16> %196, <8 x i32> %284, i32 11, i32 11, i32 8, i32 8, i1 false)
  %329 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %328, <8 x i16> %204, <8 x i32> %292, i32 11, i32 11, i32 8, i32 8, i1 false)
  %330 = bitcast <8 x float> %329 to <8 x i32>
  %331 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %172, <8 x i16> %196, <8 x i32> %300, i32 11, i32 11, i32 8, i32 8, i1 false)
  %332 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %331, <8 x i16> %204, <8 x i32> %308, i32 11, i32 11, i32 8, i32 8, i1 false)
  %333 = bitcast <8 x float> %332 to <8 x i32>
  %334 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %173, <8 x i16> %196, <8 x i32> %316, i32 11, i32 11, i32 8, i32 8, i1 false)
  %335 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %334, <8 x i16> %204, <8 x i32> %324, i32 11, i32 11, i32 8, i32 8, i1 false)
  %336 = bitcast <8 x float> %335 to <8 x i32>
  %337 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %174, <8 x i16> %212, <8 x i32> %268, i32 11, i32 11, i32 8, i32 8, i1 false)
  %338 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %337, <8 x i16> %220, <8 x i32> %276, i32 11, i32 11, i32 8, i32 8, i1 false)
  %339 = bitcast <8 x float> %338 to <8 x i32>
  %340 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %175, <8 x i16> %212, <8 x i32> %284, i32 11, i32 11, i32 8, i32 8, i1 false)
  %341 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %340, <8 x i16> %220, <8 x i32> %292, i32 11, i32 11, i32 8, i32 8, i1 false)
  %342 = bitcast <8 x float> %341 to <8 x i32>
  %343 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %176, <8 x i16> %212, <8 x i32> %300, i32 11, i32 11, i32 8, i32 8, i1 false)
  %344 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %343, <8 x i16> %220, <8 x i32> %308, i32 11, i32 11, i32 8, i32 8, i1 false)
  %345 = bitcast <8 x float> %344 to <8 x i32>
  %346 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %177, <8 x i16> %212, <8 x i32> %316, i32 11, i32 11, i32 8, i32 8, i1 false)
  %347 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %346, <8 x i16> %220, <8 x i32> %324, i32 11, i32 11, i32 8, i32 8, i1 false)
  %348 = bitcast <8 x float> %347 to <8 x i32>
  %349 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %178, <8 x i16> %228, <8 x i32> %268, i32 11, i32 11, i32 8, i32 8, i1 false)
  %350 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %349, <8 x i16> %236, <8 x i32> %276, i32 11, i32 11, i32 8, i32 8, i1 false)
  %351 = bitcast <8 x float> %350 to <8 x i32>
  %352 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %179, <8 x i16> %228, <8 x i32> %284, i32 11, i32 11, i32 8, i32 8, i1 false)
  %353 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %352, <8 x i16> %236, <8 x i32> %292, i32 11, i32 11, i32 8, i32 8, i1 false)
  %354 = bitcast <8 x float> %353 to <8 x i32>
  %355 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %180, <8 x i16> %228, <8 x i32> %300, i32 11, i32 11, i32 8, i32 8, i1 false)
  %356 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %355, <8 x i16> %236, <8 x i32> %308, i32 11, i32 11, i32 8, i32 8, i1 false)
  %357 = bitcast <8 x float> %356 to <8 x i32>
  %358 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %181, <8 x i16> %228, <8 x i32> %316, i32 11, i32 11, i32 8, i32 8, i1 false)
  %359 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %358, <8 x i16> %236, <8 x i32> %324, i32 11, i32 11, i32 8, i32 8, i1 false)
  %360 = bitcast <8 x float> %359 to <8 x i32>
  %361 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %182, <8 x i16> %244, <8 x i32> %268, i32 11, i32 11, i32 8, i32 8, i1 false)
  %362 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %361, <8 x i16> %252, <8 x i32> %276, i32 11, i32 11, i32 8, i32 8, i1 false)
  %363 = bitcast <8 x float> %362 to <8 x i32>
  %364 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %183, <8 x i16> %244, <8 x i32> %284, i32 11, i32 11, i32 8, i32 8, i1 false)
  %365 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %364, <8 x i16> %252, <8 x i32> %292, i32 11, i32 11, i32 8, i32 8, i1 false)
  %366 = bitcast <8 x float> %365 to <8 x i32>
  %367 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %184, <8 x i16> %244, <8 x i32> %300, i32 11, i32 11, i32 8, i32 8, i1 false)
  %368 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %367, <8 x i16> %252, <8 x i32> %308, i32 11, i32 11, i32 8, i32 8, i1 false)
  %369 = bitcast <8 x float> %368 to <8 x i32>
  %370 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %185, <8 x i16> %244, <8 x i32> %316, i32 11, i32 11, i32 8, i32 8, i1 false)
  %371 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %370, <8 x i16> %252, <8 x i32> %324, i32 11, i32 11, i32 8, i32 8, i1 false)
  %372 = bitcast <8 x float> %371 to <8 x i32>
  %373 = add nuw nsw i32 %186, 32, !spirv.Decorations !431
  %374 = icmp slt i32 %373, %3
  br i1 %374, label %.preheader.preheader, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit
}

; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZZ5benchILi4ELi4ELi4ELi2ELb0EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
.preheader1.preheader:
  %5 = extractelement <8 x i32> %r0, i64 1
  %6 = extractelement <8 x i32> %r0, i64 6
  %7 = bitcast <8 x i32> %r0 to <32 x i8>
  %8 = extractelement <32 x i8> %7, i64 8
  %localThreadId5 = zext i8 %8 to i32
  %9 = icmp sgt i32 %6, -1
  call void @llvm.assume(i1 %9)
  %10 = icmp sgt i32 %5, -1
  call void @llvm.assume(i1 %10)
  %11 = shl nsw i32 %6, 7, !spirv.Decorations !429
  %12 = shl nuw nsw i32 %localThreadId5, 4
  %13 = and i32 %12, 4064
  %14 = add nuw nsw i32 %11, %13, !spirv.Decorations !429
  %15 = shl nsw i32 %5, 7, !spirv.Decorations !429
  %16 = shl nuw nsw i32 %localThreadId5, 6
  %17 = and i32 %16, 64
  %18 = or i32 %15, %17
  %19 = mul nsw i32 %14, %3
  %20 = sext i32 %19 to i64
  %21 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %22 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %21, i64 %20
  %23 = shl nsw i32 %4, 1, !spirv.Decorations !429
  %24 = sext i32 %23 to i64
  %25 = shl nuw i32 %18, 1
  %26 = zext i32 %25 to i64
  %27 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %28 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %27, i64 %26
  %29 = icmp sgt i32 %3, 0
  br i1 %29, label %.lr.ph, label %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge

.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge: ; preds = %.preheader1.preheader
  %.pre = shl i32 %4, 2
  %.pre154 = add i32 %.pre, -1
  %.pre156 = or i32 %14, 8
  %.pre158 = or i32 %14, 16
  %.pre160 = or i32 %14, 24
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit

.lr.ph:                                           ; preds = %.preheader1.preheader
  %30 = shl i32 %3, 1
  %31 = add i32 %30, -1
  %32 = shl i32 %4, 2
  %33 = add i32 %32, -1
  %34 = or i32 %14, 8
  %35 = mul nsw i32 %34, %3
  %36 = sext i32 %35 to i64
  %37 = or i32 %14, 16
  %38 = mul nsw i32 %37, %3
  %39 = sext i32 %38 to i64
  %40 = or i32 %14, 24
  %41 = mul nsw i32 %40, %3
  %42 = sext i32 %41 to i64
  %43 = or i32 %25, 32
  %44 = zext i32 %43 to i64
  %45 = or i32 %25, 64
  %46 = zext i32 %45 to i64
  %47 = or i32 %25, 96
  %48 = zext i32 %47 to i64
  br label %172

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit: ; preds = %.preheader.preheader, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge
  %.pre-phi161 = phi i32 [ %.pre160, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %40, %.preheader.preheader ]
  %.pre-phi159 = phi i32 [ %.pre158, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %37, %.preheader.preheader ]
  %.pre-phi157 = phi i32 [ %.pre156, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %34, %.preheader.preheader ]
  %.pre-phi155 = phi i32 [ %.pre154, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %33, %.preheader.preheader ]
  %.sroa.088.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %353, %.preheader.preheader ]
  %.sroa.693.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %356, %.preheader.preheader ]
  %.sroa.10.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %359, %.preheader.preheader ]
  %.sroa.14.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %362, %.preheader.preheader ]
  %.sroa.18.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %365, %.preheader.preheader ]
  %.sroa.22.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %368, %.preheader.preheader ]
  %.sroa.26.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %371, %.preheader.preheader ]
  %.sroa.30.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %374, %.preheader.preheader ]
  %.sroa.34.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %377, %.preheader.preheader ]
  %.sroa.38.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %380, %.preheader.preheader ]
  %.sroa.42.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %383, %.preheader.preheader ]
  %.sroa.46.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %386, %.preheader.preheader ]
  %.sroa.50.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %389, %.preheader.preheader ]
  %.sroa.54.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %392, %.preheader.preheader ]
  %.sroa.58.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %395, %.preheader.preheader ]
  %.sroa.62.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %398, %.preheader.preheader ]
  %49 = zext i32 %18 to i64
  %50 = bitcast i8 addrspace(1)* %2 to float addrspace(1)*
  %51 = getelementptr float, float addrspace(1)* %50, i64 %49
  %52 = mul nsw i32 %14, %4, !spirv.Decorations !429
  %53 = sext i32 %52 to i64
  %54 = getelementptr float, float addrspace(1)* %51, i64 %53
  %55 = bitcast float addrspace(1)* %54 to i8 addrspace(1)*
  %.ascast.i90 = addrspacecast i8 addrspace(1)* %55 to i8 addrspace(4)*
  %56 = ptrtoint i8 addrspace(4)* %.ascast.i90 to i64
  %57 = and i64 %56, -64
  %58 = trunc i64 %56 to i32
  %59 = lshr i32 %58, 2
  %60 = and i32 %59, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %57, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %60, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.088.0)
  %61 = getelementptr inbounds float, float addrspace(1)* %54, i64 16
  %62 = bitcast float addrspace(1)* %61 to i8 addrspace(1)*
  %.ascast.i90.1 = addrspacecast i8 addrspace(1)* %62 to i8 addrspace(4)*
  %63 = ptrtoint i8 addrspace(4)* %.ascast.i90.1 to i64
  %64 = and i64 %63, -64
  %65 = trunc i64 %63 to i32
  %66 = lshr i32 %65, 2
  %67 = and i32 %66, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %64, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %67, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.693.0)
  %68 = getelementptr inbounds float, float addrspace(1)* %54, i64 32
  %69 = bitcast float addrspace(1)* %68 to i8 addrspace(1)*
  %.ascast.i90.2 = addrspacecast i8 addrspace(1)* %69 to i8 addrspace(4)*
  %70 = ptrtoint i8 addrspace(4)* %.ascast.i90.2 to i64
  %71 = and i64 %70, -64
  %72 = trunc i64 %70 to i32
  %73 = lshr i32 %72, 2
  %74 = and i32 %73, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %71, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %74, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.10.0)
  %75 = getelementptr inbounds float, float addrspace(1)* %54, i64 48
  %76 = bitcast float addrspace(1)* %75 to i8 addrspace(1)*
  %.ascast.i90.3 = addrspacecast i8 addrspace(1)* %76 to i8 addrspace(4)*
  %77 = ptrtoint i8 addrspace(4)* %.ascast.i90.3 to i64
  %78 = and i64 %77, -64
  %79 = trunc i64 %77 to i32
  %80 = lshr i32 %79, 2
  %81 = and i32 %80, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %78, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %81, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.14.0)
  %82 = mul nsw i32 %.pre-phi157, %4, !spirv.Decorations !429
  %83 = sext i32 %82 to i64
  %84 = getelementptr float, float addrspace(1)* %51, i64 %83
  %85 = bitcast float addrspace(1)* %84 to i8 addrspace(1)*
  %.ascast.i90.136 = addrspacecast i8 addrspace(1)* %85 to i8 addrspace(4)*
  %86 = ptrtoint i8 addrspace(4)* %.ascast.i90.136 to i64
  %87 = and i64 %86, -64
  %88 = trunc i64 %86 to i32
  %89 = lshr i32 %88, 2
  %90 = and i32 %89, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %87, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %90, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.18.0)
  %91 = getelementptr inbounds float, float addrspace(1)* %84, i64 16
  %92 = bitcast float addrspace(1)* %91 to i8 addrspace(1)*
  %.ascast.i90.1.1 = addrspacecast i8 addrspace(1)* %92 to i8 addrspace(4)*
  %93 = ptrtoint i8 addrspace(4)* %.ascast.i90.1.1 to i64
  %94 = and i64 %93, -64
  %95 = trunc i64 %93 to i32
  %96 = lshr i32 %95, 2
  %97 = and i32 %96, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %94, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %97, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.22.0)
  %98 = getelementptr inbounds float, float addrspace(1)* %84, i64 32
  %99 = bitcast float addrspace(1)* %98 to i8 addrspace(1)*
  %.ascast.i90.2.1 = addrspacecast i8 addrspace(1)* %99 to i8 addrspace(4)*
  %100 = ptrtoint i8 addrspace(4)* %.ascast.i90.2.1 to i64
  %101 = and i64 %100, -64
  %102 = trunc i64 %100 to i32
  %103 = lshr i32 %102, 2
  %104 = and i32 %103, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %101, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %104, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.26.0)
  %105 = getelementptr inbounds float, float addrspace(1)* %84, i64 48
  %106 = bitcast float addrspace(1)* %105 to i8 addrspace(1)*
  %.ascast.i90.3.1 = addrspacecast i8 addrspace(1)* %106 to i8 addrspace(4)*
  %107 = ptrtoint i8 addrspace(4)* %.ascast.i90.3.1 to i64
  %108 = and i64 %107, -64
  %109 = trunc i64 %107 to i32
  %110 = lshr i32 %109, 2
  %111 = and i32 %110, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %108, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %111, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.30.0)
  %112 = mul nsw i32 %.pre-phi159, %4, !spirv.Decorations !429
  %113 = sext i32 %112 to i64
  %114 = getelementptr float, float addrspace(1)* %51, i64 %113
  %115 = bitcast float addrspace(1)* %114 to i8 addrspace(1)*
  %.ascast.i90.237 = addrspacecast i8 addrspace(1)* %115 to i8 addrspace(4)*
  %116 = ptrtoint i8 addrspace(4)* %.ascast.i90.237 to i64
  %117 = and i64 %116, -64
  %118 = trunc i64 %116 to i32
  %119 = lshr i32 %118, 2
  %120 = and i32 %119, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %117, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %120, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.34.0)
  %121 = getelementptr inbounds float, float addrspace(1)* %114, i64 16
  %122 = bitcast float addrspace(1)* %121 to i8 addrspace(1)*
  %.ascast.i90.1.2 = addrspacecast i8 addrspace(1)* %122 to i8 addrspace(4)*
  %123 = ptrtoint i8 addrspace(4)* %.ascast.i90.1.2 to i64
  %124 = and i64 %123, -64
  %125 = trunc i64 %123 to i32
  %126 = lshr i32 %125, 2
  %127 = and i32 %126, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %124, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %127, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.38.0)
  %128 = getelementptr inbounds float, float addrspace(1)* %114, i64 32
  %129 = bitcast float addrspace(1)* %128 to i8 addrspace(1)*
  %.ascast.i90.2.2 = addrspacecast i8 addrspace(1)* %129 to i8 addrspace(4)*
  %130 = ptrtoint i8 addrspace(4)* %.ascast.i90.2.2 to i64
  %131 = and i64 %130, -64
  %132 = trunc i64 %130 to i32
  %133 = lshr i32 %132, 2
  %134 = and i32 %133, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %131, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %134, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.42.0)
  %135 = getelementptr inbounds float, float addrspace(1)* %114, i64 48
  %136 = bitcast float addrspace(1)* %135 to i8 addrspace(1)*
  %.ascast.i90.3.2 = addrspacecast i8 addrspace(1)* %136 to i8 addrspace(4)*
  %137 = ptrtoint i8 addrspace(4)* %.ascast.i90.3.2 to i64
  %138 = and i64 %137, -64
  %139 = trunc i64 %137 to i32
  %140 = lshr i32 %139, 2
  %141 = and i32 %140, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %138, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %141, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.46.0)
  %142 = mul nsw i32 %.pre-phi161, %4, !spirv.Decorations !429
  %143 = sext i32 %142 to i64
  %144 = getelementptr float, float addrspace(1)* %51, i64 %143
  %145 = bitcast float addrspace(1)* %144 to i8 addrspace(1)*
  %.ascast.i90.338 = addrspacecast i8 addrspace(1)* %145 to i8 addrspace(4)*
  %146 = ptrtoint i8 addrspace(4)* %.ascast.i90.338 to i64
  %147 = and i64 %146, -64
  %148 = trunc i64 %146 to i32
  %149 = lshr i32 %148, 2
  %150 = and i32 %149, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %147, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %150, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.50.0)
  %151 = getelementptr inbounds float, float addrspace(1)* %144, i64 16
  %152 = bitcast float addrspace(1)* %151 to i8 addrspace(1)*
  %.ascast.i90.1.3 = addrspacecast i8 addrspace(1)* %152 to i8 addrspace(4)*
  %153 = ptrtoint i8 addrspace(4)* %.ascast.i90.1.3 to i64
  %154 = and i64 %153, -64
  %155 = trunc i64 %153 to i32
  %156 = lshr i32 %155, 2
  %157 = and i32 %156, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %154, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %157, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.54.0)
  %158 = getelementptr inbounds float, float addrspace(1)* %144, i64 32
  %159 = bitcast float addrspace(1)* %158 to i8 addrspace(1)*
  %.ascast.i90.2.3 = addrspacecast i8 addrspace(1)* %159 to i8 addrspace(4)*
  %160 = ptrtoint i8 addrspace(4)* %.ascast.i90.2.3 to i64
  %161 = and i64 %160, -64
  %162 = trunc i64 %160 to i32
  %163 = lshr i32 %162, 2
  %164 = and i32 %163, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %161, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %164, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.58.0)
  %165 = getelementptr inbounds float, float addrspace(1)* %144, i64 48
  %166 = bitcast float addrspace(1)* %165 to i8 addrspace(1)*
  %.ascast.i90.3.3 = addrspacecast i8 addrspace(1)* %166 to i8 addrspace(4)*
  %167 = ptrtoint i8 addrspace(4)* %.ascast.i90.3.3 to i64
  %168 = and i64 %167, -64
  %169 = trunc i64 %167 to i32
  %170 = lshr i32 %169, 2
  %171 = and i32 %170, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %168, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %171, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.62.0)
  ret void

172:                                              ; preds = %.lr.ph, %.preheader.preheader
  %173 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %352, %.preheader.preheader ]
  %174 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %355, %.preheader.preheader ]
  %175 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %358, %.preheader.preheader ]
  %176 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %361, %.preheader.preheader ]
  %177 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %364, %.preheader.preheader ]
  %178 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %367, %.preheader.preheader ]
  %179 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %370, %.preheader.preheader ]
  %180 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %373, %.preheader.preheader ]
  %181 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %376, %.preheader.preheader ]
  %182 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %379, %.preheader.preheader ]
  %183 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %382, %.preheader.preheader ]
  %184 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %385, %.preheader.preheader ]
  %185 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %388, %.preheader.preheader ]
  %186 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %391, %.preheader.preheader ]
  %187 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %394, %.preheader.preheader ]
  %188 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %397, %.preheader.preheader ]
  %189 = phi i32 [ 0, %.lr.ph ], [ %190, %.preheader.preheader ]
  %190 = add nuw nsw i32 %189, 32, !spirv.Decorations !431
  %191 = icmp slt i32 %190, %3
  br i1 %191, label %192, label %.preheader.preheader

192:                                              ; preds = %172
  %193 = zext i32 %190 to i64
  %194 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %22, i64 %193
  %195 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %194 to i8 addrspace(1)*
  %196 = addrspacecast i8 addrspace(1)* %195 to i8 addrspace(4)*
  %197 = ptrtoint i8 addrspace(4)* %196 to i64
  %198 = and i64 %197, -64
  %199 = trunc i64 %197 to i32
  %200 = lshr i32 %199, 1
  %201 = and i32 %200, 31
  call void @llvm.genx.GenISA.LSC2DBlockPrefetch.isVoid(i64 %198, i32 %31, i32 7, i32 %31, i32 %201, i32 0, i32 16, i32 32, i32 8, i32 1, i1 false, i1 false, i32 4)
  %202 = lshr exact i32 %190, 1
  %203 = zext i32 %202 to i64
  %204 = mul nsw i64 %203, %24, !spirv.Decorations !429
  %205 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %28, i64 %204
  %206 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %205 to i8 addrspace(1)*
  %207 = addrspacecast i8 addrspace(1)* %206 to i8 addrspace(4)*
  %208 = ptrtoint i8 addrspace(4)* %207 to i64
  %209 = and i64 %208, -64
  %210 = trunc i64 %208 to i32
  %211 = lshr i32 %210, 1
  %212 = and i32 %211, 31
  call void @llvm.genx.GenISA.LSC2DBlockPrefetch.isVoid(i64 %209, i32 %33, i32 7, i32 %33, i32 %212, i32 0, i32 16, i32 32, i32 8, i32 1, i1 false, i1 false, i32 4)
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %172, %192
  %213 = zext i32 %189 to i64
  %214 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %21, i64 %213
  %215 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %214, i64 %20
  %216 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %215 to i8 addrspace(1)*
  %.ascast.i = addrspacecast i8 addrspace(1)* %216 to i8 addrspace(4)*
  %217 = ptrtoint i8 addrspace(4)* %.ascast.i to i64
  %218 = and i64 %217, -64
  %219 = trunc i64 %217 to i32
  %220 = lshr i32 %219, 1
  %221 = and i32 %220, 31
  %222 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %218, i32 %31, i32 7, i32 %31, i32 %221, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %223 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %215, i64 16
  %224 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %223 to i8 addrspace(1)*
  %.ascast.i87 = addrspacecast i8 addrspace(1)* %224 to i8 addrspace(4)*
  %225 = ptrtoint i8 addrspace(4)* %.ascast.i87 to i64
  %226 = and i64 %225, -64
  %227 = trunc i64 %225 to i32
  %228 = lshr i32 %227, 1
  %229 = and i32 %228, 31
  %230 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %226, i32 %31, i32 7, i32 %31, i32 %229, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %231 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %214, i64 %36
  %232 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %231 to i8 addrspace(1)*
  %.ascast.i.1 = addrspacecast i8 addrspace(1)* %232 to i8 addrspace(4)*
  %233 = ptrtoint i8 addrspace(4)* %.ascast.i.1 to i64
  %234 = and i64 %233, -64
  %235 = trunc i64 %233 to i32
  %236 = lshr i32 %235, 1
  %237 = and i32 %236, 31
  %238 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %234, i32 %31, i32 7, i32 %31, i32 %237, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %239 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %231, i64 16
  %240 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %239 to i8 addrspace(1)*
  %.ascast.i87.1 = addrspacecast i8 addrspace(1)* %240 to i8 addrspace(4)*
  %241 = ptrtoint i8 addrspace(4)* %.ascast.i87.1 to i64
  %242 = and i64 %241, -64
  %243 = trunc i64 %241 to i32
  %244 = lshr i32 %243, 1
  %245 = and i32 %244, 31
  %246 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %242, i32 %31, i32 7, i32 %31, i32 %245, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %247 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %214, i64 %39
  %248 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %247 to i8 addrspace(1)*
  %.ascast.i.2 = addrspacecast i8 addrspace(1)* %248 to i8 addrspace(4)*
  %249 = ptrtoint i8 addrspace(4)* %.ascast.i.2 to i64
  %250 = and i64 %249, -64
  %251 = trunc i64 %249 to i32
  %252 = lshr i32 %251, 1
  %253 = and i32 %252, 31
  %254 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %250, i32 %31, i32 7, i32 %31, i32 %253, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %255 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %247, i64 16
  %256 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %255 to i8 addrspace(1)*
  %.ascast.i87.2 = addrspacecast i8 addrspace(1)* %256 to i8 addrspace(4)*
  %257 = ptrtoint i8 addrspace(4)* %.ascast.i87.2 to i64
  %258 = and i64 %257, -64
  %259 = trunc i64 %257 to i32
  %260 = lshr i32 %259, 1
  %261 = and i32 %260, 31
  %262 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %258, i32 %31, i32 7, i32 %31, i32 %261, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %263 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %214, i64 %42
  %264 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %263 to i8 addrspace(1)*
  %.ascast.i.3 = addrspacecast i8 addrspace(1)* %264 to i8 addrspace(4)*
  %265 = ptrtoint i8 addrspace(4)* %.ascast.i.3 to i64
  %266 = and i64 %265, -64
  %267 = trunc i64 %265 to i32
  %268 = lshr i32 %267, 1
  %269 = and i32 %268, 31
  %270 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %266, i32 %31, i32 7, i32 %31, i32 %269, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %271 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %263, i64 16
  %272 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %271 to i8 addrspace(1)*
  %.ascast.i87.3 = addrspacecast i8 addrspace(1)* %272 to i8 addrspace(4)*
  %273 = ptrtoint i8 addrspace(4)* %.ascast.i87.3 to i64
  %274 = and i64 %273, -64
  %275 = trunc i64 %273 to i32
  %276 = lshr i32 %275, 1
  %277 = and i32 %276, 31
  %278 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %274, i32 %31, i32 7, i32 %31, i32 %277, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %279 = lshr exact i32 %189, 1
  %280 = zext i32 %279 to i64
  %281 = mul nsw i64 %280, %24, !spirv.Decorations !429
  %282 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %27, i64 %281
  %283 = or i32 %279, 8
  %284 = zext i32 %283 to i64
  %285 = mul nsw i64 %284, %24, !spirv.Decorations !429
  %286 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %27, i64 %285
  %287 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %282, i64 %26
  %288 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %287 to i8 addrspace(1)*
  %.ascast.i88 = addrspacecast i8 addrspace(1)* %288 to i8 addrspace(4)*
  %289 = ptrtoint i8 addrspace(4)* %.ascast.i88 to i64
  %290 = and i64 %289, -64
  %291 = trunc i64 %289 to i32
  %292 = lshr i32 %291, 2
  %293 = and i32 %292, 15
  %294 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %290, i32 %33, i32 7, i32 %33, i32 %293, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %295 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %286, i64 %26
  %296 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %295 to i8 addrspace(1)*
  %.ascast.i89 = addrspacecast i8 addrspace(1)* %296 to i8 addrspace(4)*
  %297 = ptrtoint i8 addrspace(4)* %.ascast.i89 to i64
  %298 = and i64 %297, -64
  %299 = trunc i64 %297 to i32
  %300 = lshr i32 %299, 2
  %301 = and i32 %300, 15
  %302 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %298, i32 %33, i32 7, i32 %33, i32 %301, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %303 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %282, i64 %44
  %304 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %303 to i8 addrspace(1)*
  %.ascast.i88.1 = addrspacecast i8 addrspace(1)* %304 to i8 addrspace(4)*
  %305 = ptrtoint i8 addrspace(4)* %.ascast.i88.1 to i64
  %306 = and i64 %305, -64
  %307 = trunc i64 %305 to i32
  %308 = lshr i32 %307, 2
  %309 = and i32 %308, 15
  %310 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %306, i32 %33, i32 7, i32 %33, i32 %309, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %311 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %286, i64 %44
  %312 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %311 to i8 addrspace(1)*
  %.ascast.i89.1 = addrspacecast i8 addrspace(1)* %312 to i8 addrspace(4)*
  %313 = ptrtoint i8 addrspace(4)* %.ascast.i89.1 to i64
  %314 = and i64 %313, -64
  %315 = trunc i64 %313 to i32
  %316 = lshr i32 %315, 2
  %317 = and i32 %316, 15
  %318 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %314, i32 %33, i32 7, i32 %33, i32 %317, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %319 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %282, i64 %46
  %320 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %319 to i8 addrspace(1)*
  %.ascast.i88.2 = addrspacecast i8 addrspace(1)* %320 to i8 addrspace(4)*
  %321 = ptrtoint i8 addrspace(4)* %.ascast.i88.2 to i64
  %322 = and i64 %321, -64
  %323 = trunc i64 %321 to i32
  %324 = lshr i32 %323, 2
  %325 = and i32 %324, 15
  %326 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %322, i32 %33, i32 7, i32 %33, i32 %325, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %327 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %286, i64 %46
  %328 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %327 to i8 addrspace(1)*
  %.ascast.i89.2 = addrspacecast i8 addrspace(1)* %328 to i8 addrspace(4)*
  %329 = ptrtoint i8 addrspace(4)* %.ascast.i89.2 to i64
  %330 = and i64 %329, -64
  %331 = trunc i64 %329 to i32
  %332 = lshr i32 %331, 2
  %333 = and i32 %332, 15
  %334 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %330, i32 %33, i32 7, i32 %33, i32 %333, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %335 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %282, i64 %48
  %336 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %335 to i8 addrspace(1)*
  %.ascast.i88.3 = addrspacecast i8 addrspace(1)* %336 to i8 addrspace(4)*
  %337 = ptrtoint i8 addrspace(4)* %.ascast.i88.3 to i64
  %338 = and i64 %337, -64
  %339 = trunc i64 %337 to i32
  %340 = lshr i32 %339, 2
  %341 = and i32 %340, 15
  %342 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %338, i32 %33, i32 7, i32 %33, i32 %341, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %343 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %286, i64 %48
  %344 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %343 to i8 addrspace(1)*
  %.ascast.i89.3 = addrspacecast i8 addrspace(1)* %344 to i8 addrspace(4)*
  %345 = ptrtoint i8 addrspace(4)* %.ascast.i89.3 to i64
  %346 = and i64 %345, -64
  %347 = trunc i64 %345 to i32
  %348 = lshr i32 %347, 2
  %349 = and i32 %348, 15
  %350 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %346, i32 %33, i32 7, i32 %33, i32 %349, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %351 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %173, <8 x i16> %222, <8 x i32> %294, i32 11, i32 11, i32 8, i32 8, i1 false)
  %352 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %351, <8 x i16> %230, <8 x i32> %302, i32 11, i32 11, i32 8, i32 8, i1 false)
  %353 = bitcast <8 x float> %352 to <8 x i32>
  %354 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %174, <8 x i16> %222, <8 x i32> %310, i32 11, i32 11, i32 8, i32 8, i1 false)
  %355 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %354, <8 x i16> %230, <8 x i32> %318, i32 11, i32 11, i32 8, i32 8, i1 false)
  %356 = bitcast <8 x float> %355 to <8 x i32>
  %357 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %175, <8 x i16> %222, <8 x i32> %326, i32 11, i32 11, i32 8, i32 8, i1 false)
  %358 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %357, <8 x i16> %230, <8 x i32> %334, i32 11, i32 11, i32 8, i32 8, i1 false)
  %359 = bitcast <8 x float> %358 to <8 x i32>
  %360 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %176, <8 x i16> %222, <8 x i32> %342, i32 11, i32 11, i32 8, i32 8, i1 false)
  %361 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %360, <8 x i16> %230, <8 x i32> %350, i32 11, i32 11, i32 8, i32 8, i1 false)
  %362 = bitcast <8 x float> %361 to <8 x i32>
  %363 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %177, <8 x i16> %238, <8 x i32> %294, i32 11, i32 11, i32 8, i32 8, i1 false)
  %364 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %363, <8 x i16> %246, <8 x i32> %302, i32 11, i32 11, i32 8, i32 8, i1 false)
  %365 = bitcast <8 x float> %364 to <8 x i32>
  %366 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %178, <8 x i16> %238, <8 x i32> %310, i32 11, i32 11, i32 8, i32 8, i1 false)
  %367 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %366, <8 x i16> %246, <8 x i32> %318, i32 11, i32 11, i32 8, i32 8, i1 false)
  %368 = bitcast <8 x float> %367 to <8 x i32>
  %369 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %179, <8 x i16> %238, <8 x i32> %326, i32 11, i32 11, i32 8, i32 8, i1 false)
  %370 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %369, <8 x i16> %246, <8 x i32> %334, i32 11, i32 11, i32 8, i32 8, i1 false)
  %371 = bitcast <8 x float> %370 to <8 x i32>
  %372 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %180, <8 x i16> %238, <8 x i32> %342, i32 11, i32 11, i32 8, i32 8, i1 false)
  %373 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %372, <8 x i16> %246, <8 x i32> %350, i32 11, i32 11, i32 8, i32 8, i1 false)
  %374 = bitcast <8 x float> %373 to <8 x i32>
  %375 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %181, <8 x i16> %254, <8 x i32> %294, i32 11, i32 11, i32 8, i32 8, i1 false)
  %376 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %375, <8 x i16> %262, <8 x i32> %302, i32 11, i32 11, i32 8, i32 8, i1 false)
  %377 = bitcast <8 x float> %376 to <8 x i32>
  %378 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %182, <8 x i16> %254, <8 x i32> %310, i32 11, i32 11, i32 8, i32 8, i1 false)
  %379 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %378, <8 x i16> %262, <8 x i32> %318, i32 11, i32 11, i32 8, i32 8, i1 false)
  %380 = bitcast <8 x float> %379 to <8 x i32>
  %381 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %183, <8 x i16> %254, <8 x i32> %326, i32 11, i32 11, i32 8, i32 8, i1 false)
  %382 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %381, <8 x i16> %262, <8 x i32> %334, i32 11, i32 11, i32 8, i32 8, i1 false)
  %383 = bitcast <8 x float> %382 to <8 x i32>
  %384 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %184, <8 x i16> %254, <8 x i32> %342, i32 11, i32 11, i32 8, i32 8, i1 false)
  %385 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %384, <8 x i16> %262, <8 x i32> %350, i32 11, i32 11, i32 8, i32 8, i1 false)
  %386 = bitcast <8 x float> %385 to <8 x i32>
  %387 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %185, <8 x i16> %270, <8 x i32> %294, i32 11, i32 11, i32 8, i32 8, i1 false)
  %388 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %387, <8 x i16> %278, <8 x i32> %302, i32 11, i32 11, i32 8, i32 8, i1 false)
  %389 = bitcast <8 x float> %388 to <8 x i32>
  %390 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %186, <8 x i16> %270, <8 x i32> %310, i32 11, i32 11, i32 8, i32 8, i1 false)
  %391 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %390, <8 x i16> %278, <8 x i32> %318, i32 11, i32 11, i32 8, i32 8, i1 false)
  %392 = bitcast <8 x float> %391 to <8 x i32>
  %393 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %187, <8 x i16> %270, <8 x i32> %326, i32 11, i32 11, i32 8, i32 8, i1 false)
  %394 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %393, <8 x i16> %278, <8 x i32> %334, i32 11, i32 11, i32 8, i32 8, i1 false)
  %395 = bitcast <8 x float> %394 to <8 x i32>
  %396 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %188, <8 x i16> %270, <8 x i32> %342, i32 11, i32 11, i32 8, i32 8, i1 false)
  %397 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %396, <8 x i16> %278, <8 x i32> %350, i32 11, i32 11, i32 8, i32 8, i1 false)
  %398 = bitcast <8 x float> %397 to <8 x i32>
  br i1 %191, label %172, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit
}

; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZZ5benchILi4ELi4ELi4ELi2ELb1EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
.preheader1.preheader:
  %5 = extractelement <8 x i32> %r0, i64 1
  %6 = extractelement <8 x i32> %r0, i64 6
  %7 = bitcast <8 x i32> %r0 to <32 x i8>
  %8 = extractelement <32 x i8> %7, i64 8
  %localThreadId5 = zext i8 %8 to i32
  %9 = icmp sgt i32 %6, -1
  call void @llvm.assume(i1 %9)
  %10 = icmp sgt i32 %5, -1
  call void @llvm.assume(i1 %10)
  %11 = shl nsw i32 %6, 7, !spirv.Decorations !429
  %12 = shl nuw nsw i32 %localThreadId5, 4
  %13 = and i32 %12, 4064
  %14 = add nuw nsw i32 %11, %13, !spirv.Decorations !429
  %15 = shl nsw i32 %5, 7, !spirv.Decorations !429
  %16 = shl nuw nsw i32 %localThreadId5, 6
  %17 = and i32 %16, 64
  %18 = or i32 %15, %17
  %19 = shl nsw i32 %4, 1, !spirv.Decorations !429
  %20 = sext i32 %19 to i64
  %21 = icmp sgt i32 %3, 0
  br i1 %21, label %.lr.ph, label %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge

.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge: ; preds = %.preheader1.preheader
  %.pre = shl i32 %4, 2
  %.pre148 = add i32 %.pre, -1
  %.pre150 = or i32 %14, 8
  %.pre152 = or i32 %14, 16
  %.pre154 = or i32 %14, 24
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit

.lr.ph:                                           ; preds = %.preheader1.preheader
  %22 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %23 = shl i32 %3, 1
  %24 = add i32 %23, -1
  %25 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %26 = shl nuw i32 %18, 1
  %27 = shl i32 %4, 2
  %28 = add i32 %27, -1
  %29 = mul nsw i32 %14, %3, !spirv.Decorations !429
  %30 = sext i32 %29 to i64
  %31 = or i32 %14, 8
  %32 = mul nsw i32 %31, %3
  %33 = sext i32 %32 to i64
  %34 = or i32 %14, 16
  %35 = mul nsw i32 %34, %3
  %36 = sext i32 %35 to i64
  %37 = or i32 %14, 24
  %38 = mul nsw i32 %37, %3
  %39 = sext i32 %38 to i64
  %40 = zext i32 %26 to i64
  %41 = or i32 %26, 32
  %42 = zext i32 %41 to i64
  %43 = or i32 %26, 64
  %44 = zext i32 %43 to i64
  %45 = or i32 %26, 96
  %46 = zext i32 %45 to i64
  br label %.preheader.preheader

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit: ; preds = %.preheader.preheader, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge
  %.pre-phi155 = phi i32 [ %.pre154, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %37, %.preheader.preheader ]
  %.pre-phi153 = phi i32 [ %.pre152, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %34, %.preheader.preheader ]
  %.pre-phi151 = phi i32 [ %.pre150, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %31, %.preheader.preheader ]
  %.pre-phi149 = phi i32 [ %.pre148, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %28, %.preheader.preheader ]
  %.sroa.082.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %327, %.preheader.preheader ]
  %.sroa.687.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %330, %.preheader.preheader ]
  %.sroa.10.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %333, %.preheader.preheader ]
  %.sroa.14.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %336, %.preheader.preheader ]
  %.sroa.18.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %339, %.preheader.preheader ]
  %.sroa.22.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %342, %.preheader.preheader ]
  %.sroa.26.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %345, %.preheader.preheader ]
  %.sroa.30.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %348, %.preheader.preheader ]
  %.sroa.34.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %351, %.preheader.preheader ]
  %.sroa.38.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %354, %.preheader.preheader ]
  %.sroa.42.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %357, %.preheader.preheader ]
  %.sroa.46.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %360, %.preheader.preheader ]
  %.sroa.50.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %363, %.preheader.preheader ]
  %.sroa.54.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %366, %.preheader.preheader ]
  %.sroa.58.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %369, %.preheader.preheader ]
  %.sroa.62.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit_crit_edge ], [ %372, %.preheader.preheader ]
  %47 = zext i32 %18 to i64
  %48 = bitcast i8 addrspace(1)* %2 to float addrspace(1)*
  %49 = getelementptr float, float addrspace(1)* %48, i64 %47
  %50 = mul nsw i32 %14, %4, !spirv.Decorations !429
  %51 = sext i32 %50 to i64
  %52 = getelementptr float, float addrspace(1)* %49, i64 %51
  %53 = bitcast float addrspace(1)* %52 to i8 addrspace(1)*
  %.ascast.i89 = addrspacecast i8 addrspace(1)* %53 to i8 addrspace(4)*
  %54 = ptrtoint i8 addrspace(4)* %.ascast.i89 to i64
  %55 = and i64 %54, -64
  %56 = trunc i64 %54 to i32
  %57 = lshr i32 %56, 2
  %58 = and i32 %57, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %55, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %58, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.082.0)
  %59 = getelementptr inbounds float, float addrspace(1)* %52, i64 16
  %60 = bitcast float addrspace(1)* %59 to i8 addrspace(1)*
  %.ascast.i89.1 = addrspacecast i8 addrspace(1)* %60 to i8 addrspace(4)*
  %61 = ptrtoint i8 addrspace(4)* %.ascast.i89.1 to i64
  %62 = and i64 %61, -64
  %63 = trunc i64 %61 to i32
  %64 = lshr i32 %63, 2
  %65 = and i32 %64, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %62, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %65, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.687.0)
  %66 = getelementptr inbounds float, float addrspace(1)* %52, i64 32
  %67 = bitcast float addrspace(1)* %66 to i8 addrspace(1)*
  %.ascast.i89.2 = addrspacecast i8 addrspace(1)* %67 to i8 addrspace(4)*
  %68 = ptrtoint i8 addrspace(4)* %.ascast.i89.2 to i64
  %69 = and i64 %68, -64
  %70 = trunc i64 %68 to i32
  %71 = lshr i32 %70, 2
  %72 = and i32 %71, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %69, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %72, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.10.0)
  %73 = getelementptr inbounds float, float addrspace(1)* %52, i64 48
  %74 = bitcast float addrspace(1)* %73 to i8 addrspace(1)*
  %.ascast.i89.3 = addrspacecast i8 addrspace(1)* %74 to i8 addrspace(4)*
  %75 = ptrtoint i8 addrspace(4)* %.ascast.i89.3 to i64
  %76 = and i64 %75, -64
  %77 = trunc i64 %75 to i32
  %78 = lshr i32 %77, 2
  %79 = and i32 %78, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %76, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %79, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.14.0)
  %80 = mul nsw i32 %.pre-phi151, %4, !spirv.Decorations !429
  %81 = sext i32 %80 to i64
  %82 = getelementptr float, float addrspace(1)* %49, i64 %81
  %83 = bitcast float addrspace(1)* %82 to i8 addrspace(1)*
  %.ascast.i89.130 = addrspacecast i8 addrspace(1)* %83 to i8 addrspace(4)*
  %84 = ptrtoint i8 addrspace(4)* %.ascast.i89.130 to i64
  %85 = and i64 %84, -64
  %86 = trunc i64 %84 to i32
  %87 = lshr i32 %86, 2
  %88 = and i32 %87, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %85, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %88, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.18.0)
  %89 = getelementptr inbounds float, float addrspace(1)* %82, i64 16
  %90 = bitcast float addrspace(1)* %89 to i8 addrspace(1)*
  %.ascast.i89.1.1 = addrspacecast i8 addrspace(1)* %90 to i8 addrspace(4)*
  %91 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.1 to i64
  %92 = and i64 %91, -64
  %93 = trunc i64 %91 to i32
  %94 = lshr i32 %93, 2
  %95 = and i32 %94, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %92, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %95, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.22.0)
  %96 = getelementptr inbounds float, float addrspace(1)* %82, i64 32
  %97 = bitcast float addrspace(1)* %96 to i8 addrspace(1)*
  %.ascast.i89.2.1 = addrspacecast i8 addrspace(1)* %97 to i8 addrspace(4)*
  %98 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.1 to i64
  %99 = and i64 %98, -64
  %100 = trunc i64 %98 to i32
  %101 = lshr i32 %100, 2
  %102 = and i32 %101, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %99, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %102, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.26.0)
  %103 = getelementptr inbounds float, float addrspace(1)* %82, i64 48
  %104 = bitcast float addrspace(1)* %103 to i8 addrspace(1)*
  %.ascast.i89.3.1 = addrspacecast i8 addrspace(1)* %104 to i8 addrspace(4)*
  %105 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.1 to i64
  %106 = and i64 %105, -64
  %107 = trunc i64 %105 to i32
  %108 = lshr i32 %107, 2
  %109 = and i32 %108, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %106, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %109, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.30.0)
  %110 = mul nsw i32 %.pre-phi153, %4, !spirv.Decorations !429
  %111 = sext i32 %110 to i64
  %112 = getelementptr float, float addrspace(1)* %49, i64 %111
  %113 = bitcast float addrspace(1)* %112 to i8 addrspace(1)*
  %.ascast.i89.231 = addrspacecast i8 addrspace(1)* %113 to i8 addrspace(4)*
  %114 = ptrtoint i8 addrspace(4)* %.ascast.i89.231 to i64
  %115 = and i64 %114, -64
  %116 = trunc i64 %114 to i32
  %117 = lshr i32 %116, 2
  %118 = and i32 %117, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %115, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %118, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.34.0)
  %119 = getelementptr inbounds float, float addrspace(1)* %112, i64 16
  %120 = bitcast float addrspace(1)* %119 to i8 addrspace(1)*
  %.ascast.i89.1.2 = addrspacecast i8 addrspace(1)* %120 to i8 addrspace(4)*
  %121 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.2 to i64
  %122 = and i64 %121, -64
  %123 = trunc i64 %121 to i32
  %124 = lshr i32 %123, 2
  %125 = and i32 %124, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %122, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %125, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.38.0)
  %126 = getelementptr inbounds float, float addrspace(1)* %112, i64 32
  %127 = bitcast float addrspace(1)* %126 to i8 addrspace(1)*
  %.ascast.i89.2.2 = addrspacecast i8 addrspace(1)* %127 to i8 addrspace(4)*
  %128 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.2 to i64
  %129 = and i64 %128, -64
  %130 = trunc i64 %128 to i32
  %131 = lshr i32 %130, 2
  %132 = and i32 %131, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %129, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %132, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.42.0)
  %133 = getelementptr inbounds float, float addrspace(1)* %112, i64 48
  %134 = bitcast float addrspace(1)* %133 to i8 addrspace(1)*
  %.ascast.i89.3.2 = addrspacecast i8 addrspace(1)* %134 to i8 addrspace(4)*
  %135 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.2 to i64
  %136 = and i64 %135, -64
  %137 = trunc i64 %135 to i32
  %138 = lshr i32 %137, 2
  %139 = and i32 %138, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %136, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %139, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.46.0)
  %140 = mul nsw i32 %.pre-phi155, %4, !spirv.Decorations !429
  %141 = sext i32 %140 to i64
  %142 = getelementptr float, float addrspace(1)* %49, i64 %141
  %143 = bitcast float addrspace(1)* %142 to i8 addrspace(1)*
  %.ascast.i89.332 = addrspacecast i8 addrspace(1)* %143 to i8 addrspace(4)*
  %144 = ptrtoint i8 addrspace(4)* %.ascast.i89.332 to i64
  %145 = and i64 %144, -64
  %146 = trunc i64 %144 to i32
  %147 = lshr i32 %146, 2
  %148 = and i32 %147, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %145, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %148, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.50.0)
  %149 = getelementptr inbounds float, float addrspace(1)* %142, i64 16
  %150 = bitcast float addrspace(1)* %149 to i8 addrspace(1)*
  %.ascast.i89.1.3 = addrspacecast i8 addrspace(1)* %150 to i8 addrspace(4)*
  %151 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.3 to i64
  %152 = and i64 %151, -64
  %153 = trunc i64 %151 to i32
  %154 = lshr i32 %153, 2
  %155 = and i32 %154, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %152, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %155, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.54.0)
  %156 = getelementptr inbounds float, float addrspace(1)* %142, i64 32
  %157 = bitcast float addrspace(1)* %156 to i8 addrspace(1)*
  %.ascast.i89.2.3 = addrspacecast i8 addrspace(1)* %157 to i8 addrspace(4)*
  %158 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.3 to i64
  %159 = and i64 %158, -64
  %160 = trunc i64 %158 to i32
  %161 = lshr i32 %160, 2
  %162 = and i32 %161, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %159, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %162, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.58.0)
  %163 = getelementptr inbounds float, float addrspace(1)* %142, i64 48
  %164 = bitcast float addrspace(1)* %163 to i8 addrspace(1)*
  %.ascast.i89.3.3 = addrspacecast i8 addrspace(1)* %164 to i8 addrspace(4)*
  %165 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.3 to i64
  %166 = and i64 %165, -64
  %167 = trunc i64 %165 to i32
  %168 = lshr i32 %167, 2
  %169 = and i32 %168, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %166, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %169, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.62.0)
  ret void

.preheader.preheader:                             ; preds = %.lr.ph, %.preheader.preheader
  %170 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %326, %.preheader.preheader ]
  %171 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %329, %.preheader.preheader ]
  %172 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %332, %.preheader.preheader ]
  %173 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %335, %.preheader.preheader ]
  %174 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %338, %.preheader.preheader ]
  %175 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %341, %.preheader.preheader ]
  %176 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %344, %.preheader.preheader ]
  %177 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %347, %.preheader.preheader ]
  %178 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %350, %.preheader.preheader ]
  %179 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %353, %.preheader.preheader ]
  %180 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %356, %.preheader.preheader ]
  %181 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %359, %.preheader.preheader ]
  %182 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %362, %.preheader.preheader ]
  %183 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %365, %.preheader.preheader ]
  %184 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %368, %.preheader.preheader ]
  %185 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %371, %.preheader.preheader ]
  %186 = phi i32 [ 0, %.lr.ph ], [ %373, %.preheader.preheader ]
  %187 = zext i32 %186 to i64
  %188 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %22, i64 %187
  %189 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %188, i64 %30
  %190 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %189 to i8 addrspace(1)*
  %.ascast.i = addrspacecast i8 addrspace(1)* %190 to i8 addrspace(4)*
  %191 = ptrtoint i8 addrspace(4)* %.ascast.i to i64
  %192 = and i64 %191, -64
  %193 = trunc i64 %191 to i32
  %194 = lshr i32 %193, 1
  %195 = and i32 %194, 31
  %196 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %192, i32 %24, i32 7, i32 %24, i32 %195, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %197 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %189, i64 16
  %198 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %197 to i8 addrspace(1)*
  %.ascast.i86 = addrspacecast i8 addrspace(1)* %198 to i8 addrspace(4)*
  %199 = ptrtoint i8 addrspace(4)* %.ascast.i86 to i64
  %200 = and i64 %199, -64
  %201 = trunc i64 %199 to i32
  %202 = lshr i32 %201, 1
  %203 = and i32 %202, 31
  %204 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %200, i32 %24, i32 7, i32 %24, i32 %203, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %205 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %188, i64 %33
  %206 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %205 to i8 addrspace(1)*
  %.ascast.i.1 = addrspacecast i8 addrspace(1)* %206 to i8 addrspace(4)*
  %207 = ptrtoint i8 addrspace(4)* %.ascast.i.1 to i64
  %208 = and i64 %207, -64
  %209 = trunc i64 %207 to i32
  %210 = lshr i32 %209, 1
  %211 = and i32 %210, 31
  %212 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %208, i32 %24, i32 7, i32 %24, i32 %211, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %213 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %205, i64 16
  %214 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %213 to i8 addrspace(1)*
  %.ascast.i86.1 = addrspacecast i8 addrspace(1)* %214 to i8 addrspace(4)*
  %215 = ptrtoint i8 addrspace(4)* %.ascast.i86.1 to i64
  %216 = and i64 %215, -64
  %217 = trunc i64 %215 to i32
  %218 = lshr i32 %217, 1
  %219 = and i32 %218, 31
  %220 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %216, i32 %24, i32 7, i32 %24, i32 %219, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %221 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %188, i64 %36
  %222 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %221 to i8 addrspace(1)*
  %.ascast.i.2 = addrspacecast i8 addrspace(1)* %222 to i8 addrspace(4)*
  %223 = ptrtoint i8 addrspace(4)* %.ascast.i.2 to i64
  %224 = and i64 %223, -64
  %225 = trunc i64 %223 to i32
  %226 = lshr i32 %225, 1
  %227 = and i32 %226, 31
  %228 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %224, i32 %24, i32 7, i32 %24, i32 %227, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %229 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %221, i64 16
  %230 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %229 to i8 addrspace(1)*
  %.ascast.i86.2 = addrspacecast i8 addrspace(1)* %230 to i8 addrspace(4)*
  %231 = ptrtoint i8 addrspace(4)* %.ascast.i86.2 to i64
  %232 = and i64 %231, -64
  %233 = trunc i64 %231 to i32
  %234 = lshr i32 %233, 1
  %235 = and i32 %234, 31
  %236 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %232, i32 %24, i32 7, i32 %24, i32 %235, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %237 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %188, i64 %39
  %238 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %237 to i8 addrspace(1)*
  %.ascast.i.3 = addrspacecast i8 addrspace(1)* %238 to i8 addrspace(4)*
  %239 = ptrtoint i8 addrspace(4)* %.ascast.i.3 to i64
  %240 = and i64 %239, -64
  %241 = trunc i64 %239 to i32
  %242 = lshr i32 %241, 1
  %243 = and i32 %242, 31
  %244 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %240, i32 %24, i32 7, i32 %24, i32 %243, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %245 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %237, i64 16
  %246 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %245 to i8 addrspace(1)*
  %.ascast.i86.3 = addrspacecast i8 addrspace(1)* %246 to i8 addrspace(4)*
  %247 = ptrtoint i8 addrspace(4)* %.ascast.i86.3 to i64
  %248 = and i64 %247, -64
  %249 = trunc i64 %247 to i32
  %250 = lshr i32 %249, 1
  %251 = and i32 %250, 31
  %252 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %248, i32 %24, i32 7, i32 %24, i32 %251, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %253 = lshr exact i32 %186, 1
  %254 = zext i32 %253 to i64
  %255 = mul nsw i64 %254, %20, !spirv.Decorations !429
  %256 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %25, i64 %255
  %257 = or i32 %253, 8
  %258 = zext i32 %257 to i64
  %259 = mul nsw i64 %258, %20, !spirv.Decorations !429
  %260 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %25, i64 %259
  %261 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %256, i64 %40
  %262 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %261 to i8 addrspace(1)*
  %.ascast.i87 = addrspacecast i8 addrspace(1)* %262 to i8 addrspace(4)*
  %263 = ptrtoint i8 addrspace(4)* %.ascast.i87 to i64
  %264 = and i64 %263, -64
  %265 = trunc i64 %263 to i32
  %266 = lshr i32 %265, 2
  %267 = and i32 %266, 15
  %268 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %264, i32 %28, i32 7, i32 %28, i32 %267, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %269 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %260, i64 %40
  %270 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %269 to i8 addrspace(1)*
  %.ascast.i88 = addrspacecast i8 addrspace(1)* %270 to i8 addrspace(4)*
  %271 = ptrtoint i8 addrspace(4)* %.ascast.i88 to i64
  %272 = and i64 %271, -64
  %273 = trunc i64 %271 to i32
  %274 = lshr i32 %273, 2
  %275 = and i32 %274, 15
  %276 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %272, i32 %28, i32 7, i32 %28, i32 %275, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %277 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %256, i64 %42
  %278 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %277 to i8 addrspace(1)*
  %.ascast.i87.1 = addrspacecast i8 addrspace(1)* %278 to i8 addrspace(4)*
  %279 = ptrtoint i8 addrspace(4)* %.ascast.i87.1 to i64
  %280 = and i64 %279, -64
  %281 = trunc i64 %279 to i32
  %282 = lshr i32 %281, 2
  %283 = and i32 %282, 15
  %284 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %280, i32 %28, i32 7, i32 %28, i32 %283, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %285 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %260, i64 %42
  %286 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %285 to i8 addrspace(1)*
  %.ascast.i88.1 = addrspacecast i8 addrspace(1)* %286 to i8 addrspace(4)*
  %287 = ptrtoint i8 addrspace(4)* %.ascast.i88.1 to i64
  %288 = and i64 %287, -64
  %289 = trunc i64 %287 to i32
  %290 = lshr i32 %289, 2
  %291 = and i32 %290, 15
  %292 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %288, i32 %28, i32 7, i32 %28, i32 %291, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %293 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %256, i64 %44
  %294 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %293 to i8 addrspace(1)*
  %.ascast.i87.2 = addrspacecast i8 addrspace(1)* %294 to i8 addrspace(4)*
  %295 = ptrtoint i8 addrspace(4)* %.ascast.i87.2 to i64
  %296 = and i64 %295, -64
  %297 = trunc i64 %295 to i32
  %298 = lshr i32 %297, 2
  %299 = and i32 %298, 15
  %300 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %296, i32 %28, i32 7, i32 %28, i32 %299, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %301 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %260, i64 %44
  %302 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %301 to i8 addrspace(1)*
  %.ascast.i88.2 = addrspacecast i8 addrspace(1)* %302 to i8 addrspace(4)*
  %303 = ptrtoint i8 addrspace(4)* %.ascast.i88.2 to i64
  %304 = and i64 %303, -64
  %305 = trunc i64 %303 to i32
  %306 = lshr i32 %305, 2
  %307 = and i32 %306, 15
  %308 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %304, i32 %28, i32 7, i32 %28, i32 %307, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %309 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %256, i64 %46
  %310 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %309 to i8 addrspace(1)*
  %.ascast.i87.3 = addrspacecast i8 addrspace(1)* %310 to i8 addrspace(4)*
  %311 = ptrtoint i8 addrspace(4)* %.ascast.i87.3 to i64
  %312 = and i64 %311, -64
  %313 = trunc i64 %311 to i32
  %314 = lshr i32 %313, 2
  %315 = and i32 %314, 15
  %316 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %312, i32 %28, i32 7, i32 %28, i32 %315, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %317 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %260, i64 %46
  %318 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %317 to i8 addrspace(1)*
  %.ascast.i88.3 = addrspacecast i8 addrspace(1)* %318 to i8 addrspace(4)*
  %319 = ptrtoint i8 addrspace(4)* %.ascast.i88.3 to i64
  %320 = and i64 %319, -64
  %321 = trunc i64 %319 to i32
  %322 = lshr i32 %321, 2
  %323 = and i32 %322, 15
  %324 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %320, i32 %28, i32 7, i32 %28, i32 %323, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %325 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %170, <8 x i16> %196, <8 x i32> %268, i32 11, i32 11, i32 8, i32 8, i1 false)
  %326 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %325, <8 x i16> %204, <8 x i32> %276, i32 11, i32 11, i32 8, i32 8, i1 false)
  %327 = bitcast <8 x float> %326 to <8 x i32>
  %328 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %171, <8 x i16> %196, <8 x i32> %284, i32 11, i32 11, i32 8, i32 8, i1 false)
  %329 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %328, <8 x i16> %204, <8 x i32> %292, i32 11, i32 11, i32 8, i32 8, i1 false)
  %330 = bitcast <8 x float> %329 to <8 x i32>
  %331 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %172, <8 x i16> %196, <8 x i32> %300, i32 11, i32 11, i32 8, i32 8, i1 false)
  %332 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %331, <8 x i16> %204, <8 x i32> %308, i32 11, i32 11, i32 8, i32 8, i1 false)
  %333 = bitcast <8 x float> %332 to <8 x i32>
  %334 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %173, <8 x i16> %196, <8 x i32> %316, i32 11, i32 11, i32 8, i32 8, i1 false)
  %335 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %334, <8 x i16> %204, <8 x i32> %324, i32 11, i32 11, i32 8, i32 8, i1 false)
  %336 = bitcast <8 x float> %335 to <8 x i32>
  %337 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %174, <8 x i16> %212, <8 x i32> %268, i32 11, i32 11, i32 8, i32 8, i1 false)
  %338 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %337, <8 x i16> %220, <8 x i32> %276, i32 11, i32 11, i32 8, i32 8, i1 false)
  %339 = bitcast <8 x float> %338 to <8 x i32>
  %340 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %175, <8 x i16> %212, <8 x i32> %284, i32 11, i32 11, i32 8, i32 8, i1 false)
  %341 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %340, <8 x i16> %220, <8 x i32> %292, i32 11, i32 11, i32 8, i32 8, i1 false)
  %342 = bitcast <8 x float> %341 to <8 x i32>
  %343 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %176, <8 x i16> %212, <8 x i32> %300, i32 11, i32 11, i32 8, i32 8, i1 false)
  %344 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %343, <8 x i16> %220, <8 x i32> %308, i32 11, i32 11, i32 8, i32 8, i1 false)
  %345 = bitcast <8 x float> %344 to <8 x i32>
  %346 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %177, <8 x i16> %212, <8 x i32> %316, i32 11, i32 11, i32 8, i32 8, i1 false)
  %347 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %346, <8 x i16> %220, <8 x i32> %324, i32 11, i32 11, i32 8, i32 8, i1 false)
  %348 = bitcast <8 x float> %347 to <8 x i32>
  %349 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %178, <8 x i16> %228, <8 x i32> %268, i32 11, i32 11, i32 8, i32 8, i1 false)
  %350 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %349, <8 x i16> %236, <8 x i32> %276, i32 11, i32 11, i32 8, i32 8, i1 false)
  %351 = bitcast <8 x float> %350 to <8 x i32>
  %352 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %179, <8 x i16> %228, <8 x i32> %284, i32 11, i32 11, i32 8, i32 8, i1 false)
  %353 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %352, <8 x i16> %236, <8 x i32> %292, i32 11, i32 11, i32 8, i32 8, i1 false)
  %354 = bitcast <8 x float> %353 to <8 x i32>
  %355 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %180, <8 x i16> %228, <8 x i32> %300, i32 11, i32 11, i32 8, i32 8, i1 false)
  %356 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %355, <8 x i16> %236, <8 x i32> %308, i32 11, i32 11, i32 8, i32 8, i1 false)
  %357 = bitcast <8 x float> %356 to <8 x i32>
  %358 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %181, <8 x i16> %228, <8 x i32> %316, i32 11, i32 11, i32 8, i32 8, i1 false)
  %359 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %358, <8 x i16> %236, <8 x i32> %324, i32 11, i32 11, i32 8, i32 8, i1 false)
  %360 = bitcast <8 x float> %359 to <8 x i32>
  %361 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %182, <8 x i16> %244, <8 x i32> %268, i32 11, i32 11, i32 8, i32 8, i1 false)
  %362 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %361, <8 x i16> %252, <8 x i32> %276, i32 11, i32 11, i32 8, i32 8, i1 false)
  %363 = bitcast <8 x float> %362 to <8 x i32>
  %364 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %183, <8 x i16> %244, <8 x i32> %284, i32 11, i32 11, i32 8, i32 8, i1 false)
  %365 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %364, <8 x i16> %252, <8 x i32> %292, i32 11, i32 11, i32 8, i32 8, i1 false)
  %366 = bitcast <8 x float> %365 to <8 x i32>
  %367 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %184, <8 x i16> %244, <8 x i32> %300, i32 11, i32 11, i32 8, i32 8, i1 false)
  %368 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %367, <8 x i16> %252, <8 x i32> %308, i32 11, i32 11, i32 8, i32 8, i1 false)
  %369 = bitcast <8 x float> %368 to <8 x i32>
  %370 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %185, <8 x i16> %244, <8 x i32> %316, i32 11, i32 11, i32 8, i32 8, i1 false)
  %371 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %370, <8 x i16> %252, <8 x i32> %324, i32 11, i32 11, i32 8, i32 8, i1 false)
  %372 = bitcast <8 x float> %371 to <8 x i32>
  %373 = add nuw nsw i32 %186, 32, !spirv.Decorations !431
  %374 = icmp slt i32 %373, %3
  br i1 %374, label %.preheader.preheader, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit
}

; Function Desc: 
; Output: 
; Arg 0: 
; Arg 1: 
; Arg 2: 
; Arg 3: 
; Arg 4: 
; Arg 5: 
; Arg 6: 
; Arg 7: 
; Function Attrs: convergent nounwind readnone willreturn
declare <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float>, <8 x i16>, <8 x i32>, i32, i32, i32, i32, i1) #3

; Function Attrs: convergent
declare spir_func i32 @__builtin_IB_get_simd_size() local_unnamed_addr #4

; Function Attrs: convergent
declare spir_func i8 addrspace(3)* @__builtin_IB_to_local(i8 addrspace(4)* noundef) local_unnamed_addr #4

; Function Attrs: convergent
declare spir_func i8* @__builtin_IB_to_private(i8 addrspace(4)* noundef) local_unnamed_addr #4

; Function Attrs: convergent
declare spir_func void @__builtin_IB_subgroup_block_read_flat_prefetch_u16_m8k32v1(i64 noundef, i32 noundef, i32 noundef, i32 noundef, <2 x i32> noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: convergent
declare spir_func <8 x i16> @__builtin_IB_subgroup_block_read_flat_cacheopts_u16_wi8_m8k16v1(i64 noundef, i32 noundef, i32 noundef, i32 noundef, <2 x i32> noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: convergent
declare spir_func <8 x i32> @__builtin_IB_subgroup_block_read_flat_cacheopts_u32_wi8_m8k16v1(i64 noundef, i32 noundef, i32 noundef, i32 noundef, <2 x i32> noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: convergent
declare spir_func void @__builtin_IB_subgroup_block_write_flat_cacheopts_u32_wi8_m8k16v1(i64 noundef, i32 noundef, i32 noundef, i32 noundef, <2 x i32> noundef, <8 x i32> noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: convergent mustprogress nofree nounwind readnone willreturn
declare spir_func i32 @__builtin_IB_get_local_size(i32 noundef) local_unnamed_addr #5

; Function Attrs: convergent mustprogress nofree nounwind readnone willreturn
declare spir_func i32 @__builtin_IB_get_local_id_z() local_unnamed_addr #5

; Function Attrs: convergent mustprogress nofree nounwind readnone willreturn
declare spir_func i32 @__builtin_IB_get_local_id_y() local_unnamed_addr #5

; Function Attrs: convergent mustprogress nofree nounwind readnone willreturn
declare spir_func i32 @__builtin_IB_get_local_id_x() local_unnamed_addr #5

; Function Attrs: convergent mustprogress nofree nounwind readnone willreturn
declare spir_func i32 @__builtin_IB_get_group_id(i32 noundef) local_unnamed_addr #5

; Function Attrs: convergent mustprogress nofree nounwind readnone willreturn
declare spir_func i32 @__builtin_IB_get_local_thread_id() local_unnamed_addr #5

declare i32 @printf(i8 addrspace(2)*, ...)

; Function Desc: 
; Output: 
; Arg 0: 
; Arg 1: 
; Arg 2: 
; Arg 3: 
; Arg 4: 
; Arg 5: 
; Arg 6: 
; Arg 7: 
; Arg 8: 
; Arg 9: 
; Arg 10: 
; Arg 11: 
; Arg 12: 
; Function Attrs: nounwind
declare void @llvm.genx.GenISA.LSC2DBlockPrefetch.isVoid(i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i1, i1, i32) #6

; Function Desc: 
; Output: 
; Arg 0: 
; Arg 1: 
; Arg 2: 
; Arg 3: 
; Arg 4: 
; Arg 5: 
; Arg 6: 
; Arg 7: 
; Arg 8: 
; Arg 9: 
; Arg 10: 
; Arg 11: 
; Arg 12: 
; Function Attrs: nounwind
declare <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i1, i1, i32) #6

; Function Desc: 
; Output: 
; Arg 0: 
; Arg 1: 
; Arg 2: 
; Arg 3: 
; Arg 4: 
; Arg 5: 
; Arg 6: 
; Arg 7: 
; Arg 8: 
; Arg 9: 
; Arg 10: 
; Arg 11: 
; Arg 12: 
; Function Attrs: nounwind
declare <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i1, i1, i32) #6

; Function Desc: 
; Output: 
; Arg 0: 
; Arg 1: 
; Arg 2: 
; Arg 3: 
; Arg 4: 
; Arg 5: 
; Arg 6: 
; Arg 7: 
; Arg 8: 
; Arg 9: 
; Arg 10: 
; Arg 11: 
; Arg 12: 
; Arg 13: 
; Function Attrs: nounwind
declare void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i1, i1, i32, <8 x i32>) #6

attributes #0 = { convergent nounwind "less-precise-fpmad"="true" }
attributes #1 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { convergent nounwind readnone willreturn }
attributes #4 = { convergent "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #5 = { convergent mustprogress nofree nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #6 = { nounwind }

!spirv.MemoryModel = !{!0}
!spirv.Source = !{!1}
!spirv.Generator = !{!2}
!igc.functions = !{!3, !24, !25, !26, !27, !28}
!IGCMetadata = !{!29}
!opencl.ocl.version = !{!426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426}
!opencl.spir.version = !{!426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426, !426}
!llvm.ident = !{!427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427}
!llvm.module.flags = !{!428}

!0 = !{i32 2, i32 2}
!1 = !{i32 4, i32 100000}
!2 = !{i16 6, i16 14}
!3 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi1ELi1ELb0EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_, !4}
!4 = !{!5, !6, !23}
!5 = !{!"function_type", i32 0}
!6 = !{!"implicit_arg_desc", !7, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !21, !22}
!7 = !{i32 0}
!8 = !{i32 2}
!9 = !{i32 6}
!10 = !{i32 8}
!11 = !{i32 9}
!12 = !{i32 10}
!13 = !{i32 13}
!14 = !{i32 15, !15}
!15 = !{!"explicit_arg_num", i32 0}
!16 = !{i32 15, !17}
!17 = !{!"explicit_arg_num", i32 1}
!18 = !{i32 15, !19}
!19 = !{!"explicit_arg_num", i32 2}
!20 = !{i32 59, !15}
!21 = !{i32 59, !17}
!22 = !{i32 59, !19}
!23 = !{!"sub_group_size", i32 16}
!24 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi1ELi1ELb1EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_, !4}
!25 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi2ELi2ELb0EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_, !4}
!26 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi2ELi2ELb1EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_, !4}
!27 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi4ELi2ELb0EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_, !4}
!28 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi4ELi2ELb1EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_, !4}
!29 = !{!"ModuleMD", !30, !31, !133, !261, !292, !309, !329, !339, !341, !342, !357, !358, !359, !360, !364, !365, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !384, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !200, !402, !403, !404, !406, !408, !411, !412, !413, !415, !416, !417, !422, !423, !424, !425}
!30 = !{!"isPrecise", i1 false}
!31 = !{!"compOpt", !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!32 = !{!"DenormsAreZero", i1 false}
!33 = !{!"BFTFDenormsAreZero", i1 false}
!34 = !{!"CorrectlyRoundedDivSqrt", i1 false}
!35 = !{!"OptDisable", i1 false}
!36 = !{!"MadEnable", i1 true}
!37 = !{!"NoSignedZeros", i1 false}
!38 = !{!"NoNaNs", i1 false}
!39 = !{!"FloatDenormMode16", !"FLOAT_DENORM_RETAIN"}
!40 = !{!"FloatDenormMode32", !"FLOAT_DENORM_RETAIN"}
!41 = !{!"FloatDenormMode64", !"FLOAT_DENORM_RETAIN"}
!42 = !{!"FloatDenormModeBFTF", !"FLOAT_DENORM_RETAIN"}
!43 = !{!"FloatRoundingMode", i32 0}
!44 = !{!"FloatCvtIntRoundingMode", i32 3}
!45 = !{!"LoadCacheDefault", i32 4}
!46 = !{!"StoreCacheDefault", i32 2}
!47 = !{!"VISAPreSchedRPThreshold", i32 0}
!48 = !{!"VISAPreSchedCtrl", i32 0}
!49 = !{!"SetLoopUnrollThreshold", i32 0}
!50 = !{!"UnsafeMathOptimizations", i1 false}
!51 = !{!"disableCustomUnsafeOpts", i1 false}
!52 = !{!"disableReducePow", i1 false}
!53 = !{!"disableSqrtOpt", i1 false}
!54 = !{!"FiniteMathOnly", i1 false}
!55 = !{!"FastRelaxedMath", i1 false}
!56 = !{!"DashGSpecified", i1 false}
!57 = !{!"FastCompilation", i1 false}
!58 = !{!"UseScratchSpacePrivateMemory", i1 true}
!59 = !{!"RelaxedBuiltins", i1 false}
!60 = !{!"SubgroupIndependentForwardProgressRequired", i1 true}
!61 = !{!"GreaterThan2GBBufferRequired", i1 true}
!62 = !{!"GreaterThan4GBBufferRequired", i1 true}
!63 = !{!"DisableA64WA", i1 false}
!64 = !{!"ForceEnableA64WA", i1 false}
!65 = !{!"PushConstantsEnable", i1 true}
!66 = !{!"HasPositivePointerOffset", i1 false}
!67 = !{!"HasBufferOffsetArg", i1 true}
!68 = !{!"BufferOffsetArgOptional", i1 true}
!69 = !{!"replaceGlobalOffsetsByZero", i1 false}
!70 = !{!"forcePixelShaderSIMDMode", i32 0}
!71 = !{!"forceTotalGRFNum", i32 0}
!72 = !{!"pixelShaderDoNotAbortOnSpill", i1 false}
!73 = !{!"UniformWGS", i1 false}
!74 = !{!"disableVertexComponentPacking", i1 false}
!75 = !{!"disablePartialVertexComponentPacking", i1 false}
!76 = !{!"PreferBindlessImages", i1 true}
!77 = !{!"UseBindlessMode", i1 true}
!78 = !{!"UseLegacyBindlessMode", i1 false}
!79 = !{!"disableMathRefactoring", i1 false}
!80 = !{!"atomicBranch", i1 false}
!81 = !{!"spillCompression", i1 false}
!82 = !{!"DisableEarlyOut", i1 false}
!83 = !{!"ForceInt32DivRemEmu", i1 false}
!84 = !{!"ForceInt32DivRemEmuSP", i1 false}
!85 = !{!"DisableFastestSingleCSSIMD", i1 false}
!86 = !{!"DisableFastestLinearScan", i1 false}
!87 = !{!"UseStatelessforPrivateMemory", i1 false}
!88 = !{!"EnableTakeGlobalAddress", i1 false}
!89 = !{!"IsLibraryCompilation", i1 false}
!90 = !{!"LibraryCompileSIMDSize", i32 0}
!91 = !{!"FastVISACompile", i1 false}
!92 = !{!"MatchSinCosPi", i1 false}
!93 = !{!"ExcludeIRFromZEBinary", i1 false}
!94 = !{!"EmitZeBinVISASections", i1 false}
!95 = !{!"FP64GenEmulationEnabled", i1 false}
!96 = !{!"FP64GenConvEmulationEnabled", i1 false}
!97 = !{!"allowDisableRematforCS", i1 false}
!98 = !{!"DisableIncSpillCostAllAddrTaken", i1 false}
!99 = !{!"DisableCPSOmaskWA", i1 false}
!100 = !{!"DisableFastestGopt", i1 false}
!101 = !{!"WaForceHalfPromotionComputeShader", i1 false}
!102 = !{!"WaForceHalfPromotionPixelVertexShader", i1 false}
!103 = !{!"DisableConstantCoalescing", i1 false}
!104 = !{!"EnableUndefAlphaOutputAsRed", i1 true}
!105 = !{!"WaEnableALTModeVisaWA", i1 false}
!106 = !{!"EnableLdStCombineforLoad", i1 false}
!107 = !{!"EnableLdStCombinewithDummyLoad", i1 false}
!108 = !{!"ForceUniformBuffer", i1 false}
!109 = !{!"ForceUniformSurfaceSampler", i1 false}
!110 = !{!"EnableIndependentSharedMemoryFenceFunctionality", i1 false}
!111 = !{!"NewSpillCostFunction", i1 false}
!112 = !{!"EnableVRT", i1 false}
!113 = !{!"ForceLargeGRFNum4RQ", i1 false}
!114 = !{!"DisableEUFusion", i1 false}
!115 = !{!"DisableFDivToFMulInvOpt", i1 false}
!116 = !{!"initializePhiSampleSourceWA", i1 false}
!117 = !{!"WaDisableSubspanUseNoMaskForCB", i1 false}
!118 = !{!"DisableLoosenSimd32Occu", i1 false}
!119 = !{!"FastestS1Options", i32 0}
!120 = !{!"DisableFastestForWaveIntrinsicsCS", i1 false}
!121 = !{!"ForceLinearWalkOnLinearUAV", i1 false}
!122 = !{!"DisableLscSamplerRouting", i1 false}
!123 = !{!"UseBarrierControlFlowOptimization", i1 false}
!124 = !{!"EnableDynamicRQManagement", i1 false}
!125 = !{!"WaDisablePayloadCoalescing", i1 false}
!126 = !{!"Quad8InputThreshold", i32 0}
!127 = !{!"UseResourceLoopUnrollNested", i1 false}
!128 = !{!"DisableLoopUnroll", i1 false}
!129 = !{!"ForcePushConstantMode", i32 0}
!130 = !{!"UseInstructionHoistingOptimization", i1 false}
!131 = !{!"DisableResourceLoopDestLifeTimeStart", i1 false}
!132 = !{!"UseLinearScanRA", i1 false}
!133 = !{!"FuncMD", !134, !135, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260}
!134 = !{!"FuncMDMap[0]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi1ELi1ELb0EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_}
!135 = !{!"FuncMDValue[0]", !136, !137, !141, !142, !143, !165, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !216, !222, !228, !234, !240, !246, !247}
!136 = !{!"localOffsets"}
!137 = !{!"workGroupWalkOrder", !138, !139, !140}
!138 = !{!"dim0", i32 0}
!139 = !{!"dim1", i32 1}
!140 = !{!"dim2", i32 2}
!141 = !{!"funcArgs"}
!142 = !{!"functionType", !"KernelFunction"}
!143 = !{!"rtInfo", !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !161, !162, !163, !164}
!144 = !{!"callableShaderType", !"NumberOfCallableShaderTypes"}
!145 = !{!"isContinuation", i1 false}
!146 = !{!"hasTraceRayPayload", i1 false}
!147 = !{!"hasHitAttributes", i1 false}
!148 = !{!"hasCallableData", i1 false}
!149 = !{!"ShaderStackSize", i32 0}
!150 = !{!"ShaderHash", i64 0}
!151 = !{!"ShaderName", !""}
!152 = !{!"ParentName", !""}
!153 = !{!"SlotNum", i1* null}
!154 = !{!"NOSSize", i32 0}
!155 = !{!"globalRootSignatureSize", i32 0}
!156 = !{!"Entries"}
!157 = !{!"SpillUnions"}
!158 = !{!"CustomHitAttrSizeInBytes", i32 0}
!159 = !{!"Types", !160}
!160 = !{!"FullFrameTys"}
!161 = !{!"Aliases"}
!162 = !{!"numSyncRTStacks", i32 0}
!163 = !{!"NumCoherenceHintBits", i32 0}
!164 = !{!"OriginatingShaderName", !""}
!165 = !{!"resAllocMD", !166, !167, !168, !169, !191}
!166 = !{!"uavsNumType", i32 0}
!167 = !{!"srvsNumType", i32 0}
!168 = !{!"samplersNumType", i32 0}
!169 = !{!"argAllocMDList", !170, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190}
!170 = !{!"argAllocMDListVec[0]", !171, !172, !173}
!171 = !{!"type", i32 0}
!172 = !{!"extensionType", i32 -1}
!173 = !{!"indexType", i32 -1}
!174 = !{!"argAllocMDListVec[1]", !171, !172, !173}
!175 = !{!"argAllocMDListVec[2]", !171, !172, !173}
!176 = !{!"argAllocMDListVec[3]", !171, !172, !173}
!177 = !{!"argAllocMDListVec[4]", !171, !172, !173}
!178 = !{!"argAllocMDListVec[5]", !171, !172, !173}
!179 = !{!"argAllocMDListVec[6]", !171, !172, !173}
!180 = !{!"argAllocMDListVec[7]", !171, !172, !173}
!181 = !{!"argAllocMDListVec[8]", !171, !172, !173}
!182 = !{!"argAllocMDListVec[9]", !171, !172, !173}
!183 = !{!"argAllocMDListVec[10]", !171, !172, !173}
!184 = !{!"argAllocMDListVec[11]", !171, !172, !173}
!185 = !{!"argAllocMDListVec[12]", !171, !172, !173}
!186 = !{!"argAllocMDListVec[13]", !171, !172, !173}
!187 = !{!"argAllocMDListVec[14]", !171, !172, !173}
!188 = !{!"argAllocMDListVec[15]", !171, !172, !173}
!189 = !{!"argAllocMDListVec[16]", !171, !172, !173}
!190 = !{!"argAllocMDListVec[17]", !171, !172, !173}
!191 = !{!"inlineSamplersMD"}
!192 = !{!"maxByteOffsets"}
!193 = !{!"IsInitializer", i1 false}
!194 = !{!"IsFinalizer", i1 false}
!195 = !{!"CompiledSubGroupsNumber", i32 0}
!196 = !{!"hasInlineVmeSamplers", i1 false}
!197 = !{!"localSize", i32 0}
!198 = !{!"localIDPresent", i1 false}
!199 = !{!"groupIDPresent", i1 false}
!200 = !{!"privateMemoryPerWI", i32 0}
!201 = !{!"prevFPOffset", i32 0}
!202 = !{!"globalIDPresent", i1 false}
!203 = !{!"hasSyncRTCalls", i1 false}
!204 = !{!"hasPrintfCalls", i1 false}
!205 = !{!"hasIndirectCalls", i1 false}
!206 = !{!"hasNonKernelArgLoad", i1 false}
!207 = !{!"hasNonKernelArgStore", i1 false}
!208 = !{!"hasNonKernelArgAtomic", i1 false}
!209 = !{!"UserAnnotations"}
!210 = !{!"m_OpenCLArgAddressSpaces", !211, !212, !213, !214, !215}
!211 = !{!"m_OpenCLArgAddressSpacesVec[0]", i32 1}
!212 = !{!"m_OpenCLArgAddressSpacesVec[1]", i32 1}
!213 = !{!"m_OpenCLArgAddressSpacesVec[2]", i32 1}
!214 = !{!"m_OpenCLArgAddressSpacesVec[3]", i32 0}
!215 = !{!"m_OpenCLArgAddressSpacesVec[4]", i32 0}
!216 = !{!"m_OpenCLArgAccessQualifiers", !217, !218, !219, !220, !221}
!217 = !{!"m_OpenCLArgAccessQualifiersVec[0]", !"none"}
!218 = !{!"m_OpenCLArgAccessQualifiersVec[1]", !"none"}
!219 = !{!"m_OpenCLArgAccessQualifiersVec[2]", !"none"}
!220 = !{!"m_OpenCLArgAccessQualifiersVec[3]", !"none"}
!221 = !{!"m_OpenCLArgAccessQualifiersVec[4]", !"none"}
!222 = !{!"m_OpenCLArgTypes", !223, !224, !225, !226, !227}
!223 = !{!"m_OpenCLArgTypesVec[0]", !"char*"}
!224 = !{!"m_OpenCLArgTypesVec[1]", !"char*"}
!225 = !{!"m_OpenCLArgTypesVec[2]", !"char*"}
!226 = !{!"m_OpenCLArgTypesVec[3]", !"int"}
!227 = !{!"m_OpenCLArgTypesVec[4]", !"int"}
!228 = !{!"m_OpenCLArgBaseTypes", !229, !230, !231, !232, !233}
!229 = !{!"m_OpenCLArgBaseTypesVec[0]", !"char*"}
!230 = !{!"m_OpenCLArgBaseTypesVec[1]", !"char*"}
!231 = !{!"m_OpenCLArgBaseTypesVec[2]", !"char*"}
!232 = !{!"m_OpenCLArgBaseTypesVec[3]", !"int"}
!233 = !{!"m_OpenCLArgBaseTypesVec[4]", !"int"}
!234 = !{!"m_OpenCLArgTypeQualifiers", !235, !236, !237, !238, !239}
!235 = !{!"m_OpenCLArgTypeQualifiersVec[0]", !""}
!236 = !{!"m_OpenCLArgTypeQualifiersVec[1]", !""}
!237 = !{!"m_OpenCLArgTypeQualifiersVec[2]", !""}
!238 = !{!"m_OpenCLArgTypeQualifiersVec[3]", !""}
!239 = !{!"m_OpenCLArgTypeQualifiersVec[4]", !""}
!240 = !{!"m_OpenCLArgNames", !241, !242, !243, !244, !245}
!241 = !{!"m_OpenCLArgNamesVec[0]", !""}
!242 = !{!"m_OpenCLArgNamesVec[1]", !""}
!243 = !{!"m_OpenCLArgNamesVec[2]", !""}
!244 = !{!"m_OpenCLArgNamesVec[3]", !""}
!245 = !{!"m_OpenCLArgNamesVec[4]", !""}
!246 = !{!"m_OpenCLArgScalarAsPointers"}
!247 = !{!"m_OptsToDisablePerFunc", !248, !249, !250}
!248 = !{!"m_OptsToDisablePerFuncSet[0]", !"IGC-AddressArithmeticSinking"}
!249 = !{!"m_OptsToDisablePerFuncSet[1]", !"IGC-AllowSimd32Slicing"}
!250 = !{!"m_OptsToDisablePerFuncSet[2]", !"IGC-SinkLoadOpt"}
!251 = !{!"FuncMDMap[1]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi1ELi1ELb1EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_}
!252 = !{!"FuncMDValue[1]", !136, !137, !141, !142, !143, !165, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !216, !222, !228, !234, !240, !246, !247}
!253 = !{!"FuncMDMap[2]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi2ELi2ELb0EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_}
!254 = !{!"FuncMDValue[2]", !136, !137, !141, !142, !143, !165, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !216, !222, !228, !234, !240, !246, !247}
!255 = !{!"FuncMDMap[3]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi2ELi2ELb1EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_}
!256 = !{!"FuncMDValue[3]", !136, !137, !141, !142, !143, !165, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !216, !222, !228, !234, !240, !246, !247}
!257 = !{!"FuncMDMap[4]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi4ELi2ELb0EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_}
!258 = !{!"FuncMDValue[4]", !136, !137, !141, !142, !143, !165, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !216, !222, !228, !234, !240, !246, !247}
!259 = !{!"FuncMDMap[5]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi4ELi2ELb1EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_}
!260 = !{!"FuncMDValue[5]", !136, !137, !141, !142, !143, !165, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !216, !222, !228, !234, !240, !246, !247}
!261 = !{!"pushInfo", !262, !263, !264, !268, !269, !270, !271, !272, !273, !274, !275, !288, !289, !290, !291}
!262 = !{!"pushableAddresses"}
!263 = !{!"bindlessPushInfo"}
!264 = !{!"dynamicBufferInfo", !265, !266, !267}
!265 = !{!"firstIndex", i32 0}
!266 = !{!"numOffsets", i32 0}
!267 = !{!"forceDisabled", i1 false}
!268 = !{!"MaxNumberOfPushedBuffers", i32 0}
!269 = !{!"inlineConstantBufferSlot", i32 -1}
!270 = !{!"inlineConstantBufferOffset", i32 -1}
!271 = !{!"inlineConstantBufferGRFOffset", i32 -1}
!272 = !{!"constants"}
!273 = !{!"inputs"}
!274 = !{!"constantReg"}
!275 = !{!"simplePushInfoArr", !276, !285, !286, !287}
!276 = !{!"simplePushInfoArrVec[0]", !277, !278, !279, !280, !281, !282, !283, !284}
!277 = !{!"cbIdx", i32 0}
!278 = !{!"pushableAddressGrfOffset", i32 -1}
!279 = !{!"pushableOffsetGrfOffset", i32 -1}
!280 = !{!"offset", i32 0}
!281 = !{!"size", i32 0}
!282 = !{!"isStateless", i1 false}
!283 = !{!"isBindless", i1 false}
!284 = !{!"simplePushLoads"}
!285 = !{!"simplePushInfoArrVec[1]", !277, !278, !279, !280, !281, !282, !283, !284}
!286 = !{!"simplePushInfoArrVec[2]", !277, !278, !279, !280, !281, !282, !283, !284}
!287 = !{!"simplePushInfoArrVec[3]", !277, !278, !279, !280, !281, !282, !283, !284}
!288 = !{!"simplePushBufferUsed", i32 0}
!289 = !{!"pushAnalysisWIInfos"}
!290 = !{!"inlineRTGlobalPtrOffset", i32 0}
!291 = !{!"rtSyncSurfPtrOffset", i32 0}
!292 = !{!"psInfo", !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308}
!293 = !{!"BlendStateDisabledMask", i8 0}
!294 = !{!"SkipSrc0Alpha", i1 false}
!295 = !{!"DualSourceBlendingDisabled", i1 false}
!296 = !{!"ForceEnableSimd32", i1 false}
!297 = !{!"DisableSimd32WithDiscard", i1 false}
!298 = !{!"outputDepth", i1 false}
!299 = !{!"outputStencil", i1 false}
!300 = !{!"outputMask", i1 false}
!301 = !{!"blendToFillEnabled", i1 false}
!302 = !{!"forceEarlyZ", i1 false}
!303 = !{!"hasVersionedLoop", i1 false}
!304 = !{!"forceSingleSourceRTWAfterDualSourceRTW", i1 false}
!305 = !{!"NumSamples", i8 0}
!306 = !{!"blendOptimizationMode"}
!307 = !{!"colorOutputMask"}
!308 = !{!"WaDisableVRS", i1 false}
!309 = !{!"csInfo", !310, !311, !312, !313, !71, !47, !48, !49, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !81, !325, !326, !327, !328}
!310 = !{!"maxWorkGroupSize", i32 0}
!311 = !{!"waveSize", i32 0}
!312 = !{!"ComputeShaderSecondCompile"}
!313 = !{!"forcedSIMDSize", i8 0}
!314 = !{!"forceSpillCompression", i1 false}
!315 = !{!"allowLowerSimd", i1 false}
!316 = !{!"disableSimd32Slicing", i1 false}
!317 = !{!"disableSplitOnSpill", i1 false}
!318 = !{!"enableNewSpillCostFunction", i1 false}
!319 = !{!"forceVISAPreSched", i1 false}
!320 = !{!"disableLocalIdOrderOptimizations", i1 false}
!321 = !{!"disableDispatchAlongY", i1 false}
!322 = !{!"neededThreadIdLayout", i1* null}
!323 = !{!"forceTileYWalk", i1 false}
!324 = !{!"atomicBranch", i32 0}
!325 = !{!"disableEarlyOut", i1 false}
!326 = !{!"walkOrderEnabled", i1 false}
!327 = !{!"walkOrderOverride", i32 0}
!328 = !{!"ResForHfPacking"}
!329 = !{!"msInfo", !330, !331, !332, !333, !334, !335, !336, !337, !338}
!330 = !{!"PrimitiveTopology", i32 3}
!331 = !{!"MaxNumOfPrimitives", i32 0}
!332 = !{!"MaxNumOfVertices", i32 0}
!333 = !{!"MaxNumOfPerPrimitiveOutputs", i32 0}
!334 = !{!"MaxNumOfPerVertexOutputs", i32 0}
!335 = !{!"WorkGroupSize", i32 0}
!336 = !{!"WorkGroupMemorySizeInBytes", i32 0}
!337 = !{!"IndexFormat", i32 6}
!338 = !{!"SubgroupSize", i32 0}
!339 = !{!"taskInfo", !340, !335, !336, !338}
!340 = !{!"MaxNumOfOutputs", i32 0}
!341 = !{!"NBarrierCnt", i32 0}
!342 = !{!"rtInfo", !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !162}
!343 = !{!"RayQueryAllocSizeInBytes", i32 0}
!344 = !{!"NumContinuations", i32 0}
!345 = !{!"RTAsyncStackAddrspace", i32 -1}
!346 = !{!"RTAsyncStackSurfaceStateOffset", i1* null}
!347 = !{!"SWHotZoneAddrspace", i32 -1}
!348 = !{!"SWHotZoneSurfaceStateOffset", i1* null}
!349 = !{!"SWStackAddrspace", i32 -1}
!350 = !{!"SWStackSurfaceStateOffset", i1* null}
!351 = !{!"RTSyncStackAddrspace", i32 -1}
!352 = !{!"RTSyncStackSurfaceStateOffset", i1* null}
!353 = !{!"doSyncDispatchRays", i1 false}
!354 = !{!"MemStyle", !"Xe"}
!355 = !{!"GlobalDataStyle", !"Xe"}
!356 = !{!"uberTileDimensions", i1* null}
!357 = !{!"CurUniqueIndirectIdx", i32 0}
!358 = !{!"inlineDynTextures"}
!359 = !{!"inlineResInfoData"}
!360 = !{!"immConstant", !361, !362, !363}
!361 = !{!"data"}
!362 = !{!"sizes"}
!363 = !{!"zeroIdxs"}
!364 = !{!"stringConstants"}
!365 = !{!"inlineBuffers", !366, !370, !371}
!366 = !{!"inlineBuffersVec[0]", !367, !368, !369}
!367 = !{!"alignment", i32 0}
!368 = !{!"allocSize", i64 0}
!369 = !{!"Buffer"}
!370 = !{!"inlineBuffersVec[1]", !367, !368, !369}
!371 = !{!"inlineBuffersVec[2]", !367, !368, !369}
!372 = !{!"GlobalPointerProgramBinaryInfos"}
!373 = !{!"ConstantPointerProgramBinaryInfos"}
!374 = !{!"GlobalBufferAddressRelocInfo"}
!375 = !{!"ConstantBufferAddressRelocInfo"}
!376 = !{!"forceLscCacheList"}
!377 = !{!"SrvMap"}
!378 = !{!"RasterizerOrderedByteAddressBuffer"}
!379 = !{!"RasterizerOrderedViews"}
!380 = !{!"MinNOSPushConstantSize", i32 0}
!381 = !{!"inlineProgramScopeOffsets"}
!382 = !{!"shaderData", !383}
!383 = !{!"numReplicas", i32 0}
!384 = !{!"URBInfo", !385, !386, !387}
!385 = !{!"has64BVertexHeaderInput", i1 false}
!386 = !{!"has64BVertexHeaderOutput", i1 false}
!387 = !{!"hasVertexHeader", i1 true}
!388 = !{!"UseBindlessImage", i1 true}
!389 = !{!"UseBindlessImageWithSamplerTracking", i1 false}
!390 = !{!"enableRangeReduce", i1 false}
!391 = !{!"allowMatchMadOptimizationforVS", i1 false}
!392 = !{!"disableMatchMadOptimizationForCS", i1 false}
!393 = !{!"disableMemOptforNegativeOffsetLoads", i1 false}
!394 = !{!"enableThreeWayLoadSpiltOpt", i1 false}
!395 = !{!"statefulResourcesNotAliased", i1 false}
!396 = !{!"disableMixMode", i1 false}
!397 = !{!"genericAccessesResolved", i1 false}
!398 = !{!"disableSeparateSpillPvtScratchSpace", i1 false}
!399 = !{!"enableSeparateSpillPvtScratchSpace", i1 false}
!400 = !{!"disableSeparateScratchWA", i1 false}
!401 = !{!"enableRemoveUnusedTGMFence", i1 false}
!402 = !{!"PrivateMemoryPerFG"}
!403 = !{!"m_OptsToDisable"}
!404 = !{!"capabilities", !405}
!405 = !{!"globalVariableDecorationsINTEL", i1 false}
!406 = !{!"extensions", !407}
!407 = !{!"spvINTELBindlessImages", i1 false}
!408 = !{!"m_ShaderResourceViewMcsMask", !409, !410}
!409 = !{!"m_ShaderResourceViewMcsMaskVec[0]", i64 0}
!410 = !{!"m_ShaderResourceViewMcsMaskVec[1]", i64 0}
!411 = !{!"computedDepthMode", i32 0}
!412 = !{!"isHDCFastClearShader", i1 false}
!413 = !{!"argRegisterReservations", !414}
!414 = !{!"argRegisterReservationsVec[0]", i32 0}
!415 = !{!"SIMD16_SpillThreshold", i8 0}
!416 = !{!"SIMD32_SpillThreshold", i8 0}
!417 = !{!"m_CacheControlOption", !418, !419, !420, !421}
!418 = !{!"LscLoadCacheControlOverride", i8 0}
!419 = !{!"LscStoreCacheControlOverride", i8 0}
!420 = !{!"TgmLoadCacheControlOverride", i8 0}
!421 = !{!"TgmStoreCacheControlOverride", i8 0}
!422 = !{!"ModuleUsesBindless", i1 false}
!423 = !{!"predicationMap"}
!424 = !{!"lifeTimeStartMap"}
!425 = !{!"HitGroups"}
!426 = !{i32 2, i32 0}
!427 = !{!"clang version 15.0.7"}
!428 = !{i32 1, !"wchar_size", i32 4}
!429 = !{!430}
!430 = !{i32 4469}
!431 = !{!430, !432}
!432 = !{i32 4470}
