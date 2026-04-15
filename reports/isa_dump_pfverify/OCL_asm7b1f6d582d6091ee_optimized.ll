; ------------------------------------------------
; OCL_asm7b1f6d582d6091ee_optimized.ll
; ------------------------------------------------
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "spir64-unknown-unknown"

%"class.sycl::_V1::ext::oneapi::bfloat16" = type { i16 }

; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZZ16bench_v1_with_pfRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
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
  %11 = shl nsw i32 %6, 6, !spirv.Decorations !420
  %12 = shl nuw nsw i32 %localThreadId5, 4
  %13 = and i32 %12, 4064
  %14 = add nuw nsw i32 %11, %13, !spirv.Decorations !420
  %15 = shl nsw i32 %5, 7, !spirv.Decorations !420
  %16 = shl nuw nsw i32 %localThreadId5, 6
  %17 = and i32 %16, 64
  %18 = or i32 %15, %17
  %19 = mul nsw i32 %14, %3
  %20 = sext i32 %19 to i64
  %21 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %22 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %21, i64 %20
  %23 = shl nsw i32 %4, 1, !spirv.Decorations !420
  %24 = sext i32 %23 to i64
  %25 = shl nuw i32 %18, 1
  %26 = zext i32 %25 to i64
  %27 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %28 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %27, i64 %26
  %29 = icmp sgt i32 %3, 0
  br i1 %29, label %.lr.ph, label %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge

.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge: ; preds = %.preheader1.preheader
  %.pre = shl i32 %4, 2
  %.pre154 = add i32 %.pre, -1
  %.pre156 = or i32 %14, 8
  %.pre158 = or i32 %14, 16
  %.pre160 = or i32 %14, 24
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit

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

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit: ; preds = %.preheader.preheader, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge
  %.pre-phi161 = phi i32 [ %.pre160, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %40, %.preheader.preheader ]
  %.pre-phi159 = phi i32 [ %.pre158, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %37, %.preheader.preheader ]
  %.pre-phi157 = phi i32 [ %.pre156, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %34, %.preheader.preheader ]
  %.pre-phi155 = phi i32 [ %.pre154, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %33, %.preheader.preheader ]
  %.sroa.088.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %353, %.preheader.preheader ]
  %.sroa.693.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %356, %.preheader.preheader ]
  %.sroa.10.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %359, %.preheader.preheader ]
  %.sroa.14.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %362, %.preheader.preheader ]
  %.sroa.18.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %365, %.preheader.preheader ]
  %.sroa.22.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %368, %.preheader.preheader ]
  %.sroa.26.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %371, %.preheader.preheader ]
  %.sroa.30.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %374, %.preheader.preheader ]
  %.sroa.34.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %377, %.preheader.preheader ]
  %.sroa.38.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %380, %.preheader.preheader ]
  %.sroa.42.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %383, %.preheader.preheader ]
  %.sroa.46.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %386, %.preheader.preheader ]
  %.sroa.50.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %389, %.preheader.preheader ]
  %.sroa.54.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %392, %.preheader.preheader ]
  %.sroa.58.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %395, %.preheader.preheader ]
  %.sroa.62.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %398, %.preheader.preheader ]
  %49 = zext i32 %18 to i64
  %50 = bitcast i8 addrspace(1)* %2 to float addrspace(1)*
  %51 = getelementptr float, float addrspace(1)* %50, i64 %49
  %52 = mul nsw i32 %14, %4, !spirv.Decorations !420
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
  %82 = mul nsw i32 %.pre-phi157, %4, !spirv.Decorations !420
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
  %112 = mul nsw i32 %.pre-phi159, %4, !spirv.Decorations !420
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
  %142 = mul nsw i32 %.pre-phi161, %4, !spirv.Decorations !420
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
  %190 = add nuw nsw i32 %189, 32, !spirv.Decorations !422
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
  %204 = mul nsw i64 %203, %24, !spirv.Decorations !420
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
  %281 = mul nsw i64 %280, %24, !spirv.Decorations !420
  %282 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %27, i64 %281
  %283 = or i32 %279, 8
  %284 = zext i32 %283 to i64
  %285 = mul nsw i64 %284, %24, !spirv.Decorations !420
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
  br i1 %191, label %172, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZZ19bench_v2_clean_nopfRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
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
  %11 = shl nsw i32 %6, 6, !spirv.Decorations !420
  %12 = shl nuw nsw i32 %localThreadId5, 4
  %13 = and i32 %12, 4064
  %14 = add nuw nsw i32 %11, %13, !spirv.Decorations !420
  %15 = shl nsw i32 %5, 7, !spirv.Decorations !420
  %16 = shl nuw nsw i32 %localThreadId5, 6
  %17 = and i32 %16, 64
  %18 = or i32 %15, %17
  %19 = shl nsw i32 %4, 1, !spirv.Decorations !420
  %20 = sext i32 %19 to i64
  %21 = icmp sgt i32 %3, 0
  br i1 %21, label %.lr.ph, label %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge

.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge: ; preds = %.preheader1.preheader
  %.pre = shl i32 %4, 2
  %.pre148 = add i32 %.pre, -1
  %.pre150 = or i32 %14, 8
  %.pre152 = or i32 %14, 16
  %.pre154 = or i32 %14, 24
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit

.lr.ph:                                           ; preds = %.preheader1.preheader
  %22 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %23 = shl i32 %3, 1
  %24 = add i32 %23, -1
  %25 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %26 = shl nuw i32 %18, 1
  %27 = shl i32 %4, 2
  %28 = add i32 %27, -1
  %29 = mul nsw i32 %14, %3, !spirv.Decorations !420
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

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit: ; preds = %.preheader.preheader, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge
  %.pre-phi155 = phi i32 [ %.pre154, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %37, %.preheader.preheader ]
  %.pre-phi153 = phi i32 [ %.pre152, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %34, %.preheader.preheader ]
  %.pre-phi151 = phi i32 [ %.pre150, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %31, %.preheader.preheader ]
  %.pre-phi149 = phi i32 [ %.pre148, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %28, %.preheader.preheader ]
  %.sroa.082.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %327, %.preheader.preheader ]
  %.sroa.687.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %330, %.preheader.preheader ]
  %.sroa.10.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %333, %.preheader.preheader ]
  %.sroa.14.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %336, %.preheader.preheader ]
  %.sroa.18.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %339, %.preheader.preheader ]
  %.sroa.22.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %342, %.preheader.preheader ]
  %.sroa.26.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %345, %.preheader.preheader ]
  %.sroa.30.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %348, %.preheader.preheader ]
  %.sroa.34.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %351, %.preheader.preheader ]
  %.sroa.38.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %354, %.preheader.preheader ]
  %.sroa.42.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %357, %.preheader.preheader ]
  %.sroa.46.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %360, %.preheader.preheader ]
  %.sroa.50.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %363, %.preheader.preheader ]
  %.sroa.54.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %366, %.preheader.preheader ]
  %.sroa.58.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %369, %.preheader.preheader ]
  %.sroa.62.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %372, %.preheader.preheader ]
  %47 = zext i32 %18 to i64
  %48 = bitcast i8 addrspace(1)* %2 to float addrspace(1)*
  %49 = getelementptr float, float addrspace(1)* %48, i64 %47
  %50 = mul nsw i32 %14, %4, !spirv.Decorations !420
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
  %80 = mul nsw i32 %.pre-phi151, %4, !spirv.Decorations !420
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
  %110 = mul nsw i32 %.pre-phi153, %4, !spirv.Decorations !420
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
  %140 = mul nsw i32 %.pre-phi155, %4, !spirv.Decorations !420
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
  %255 = mul nsw i64 %254, %20, !spirv.Decorations !420
  %256 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %25, i64 %255
  %257 = or i32 %253, 8
  %258 = zext i32 %257 to i64
  %259 = mul nsw i64 %258, %20, !spirv.Decorations !420
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
  %373 = add nuw nsw i32 %186, 32, !spirv.Decorations !422
  %374 = icmp slt i32 %373, %3
  br i1 %374, label %.preheader.preheader, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit
}

; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZZ16bench_v3_if_onlyRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
.preheader1.preheader:
  %5 = extractelement <8 x i32> %r0, i64 1
  %6 = extractelement <8 x i32> %r0, i64 6
  %7 = alloca i32, align 4, !spirv.Decorations !424
  %8 = bitcast <8 x i32> %r0 to <32 x i8>
  %9 = extractelement <32 x i8> %8, i64 8
  %localThreadId5 = zext i8 %9 to i32
  %10 = icmp sgt i32 %6, -1
  call void @llvm.assume(i1 %10)
  %11 = icmp sgt i32 %5, -1
  call void @llvm.assume(i1 %11)
  %12 = shl nsw i32 %6, 6, !spirv.Decorations !420
  %13 = shl nuw nsw i32 %localThreadId5, 4
  %14 = and i32 %13, 4064
  %15 = add nuw nsw i32 %12, %14, !spirv.Decorations !420
  %16 = shl nsw i32 %5, 7, !spirv.Decorations !420
  %17 = shl nuw nsw i32 %localThreadId5, 6
  %18 = and i32 %17, 64
  %19 = or i32 %16, %18
  %20 = shl nsw i32 %4, 1, !spirv.Decorations !420
  %21 = sext i32 %20 to i64
  %22 = icmp sgt i32 %3, 0
  br i1 %22, label %.lr.ph, label %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge

.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge: ; preds = %.preheader1.preheader
  %.pre = shl i32 %4, 2
  %.pre155 = add i32 %.pre, -1
  %.pre157 = or i32 %15, 8
  %.pre159 = or i32 %15, 16
  %.pre161 = or i32 %15, 24
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit

.lr.ph:                                           ; preds = %.preheader1.preheader
  %23 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %24 = shl i32 %3, 1
  %25 = add i32 %24, -1
  %26 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %27 = shl nuw i32 %19, 1
  %28 = shl i32 %4, 2
  %29 = add i32 %28, -1
  %30 = mul nsw i32 %15, %3
  %31 = sext i32 %30 to i64
  %32 = or i32 %15, 8
  %33 = mul nsw i32 %32, %3
  %34 = sext i32 %33 to i64
  %35 = or i32 %15, 16
  %36 = mul nsw i32 %35, %3
  %37 = sext i32 %36 to i64
  %38 = or i32 %15, 24
  %39 = mul nsw i32 %38, %3
  %40 = sext i32 %39 to i64
  %41 = zext i32 %27 to i64
  %42 = or i32 %27, 32
  %43 = zext i32 %42 to i64
  %44 = or i32 %27, 64
  %45 = zext i32 %44 to i64
  %46 = or i32 %27, 96
  %47 = zext i32 %46 to i64
  br label %171

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit: ; preds = %.preheader.preheader, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge
  %.pre-phi162 = phi i32 [ %.pre161, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %38, %.preheader.preheader ]
  %.pre-phi160 = phi i32 [ %.pre159, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %35, %.preheader.preheader ]
  %.pre-phi158 = phi i32 [ %.pre157, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %32, %.preheader.preheader ]
  %.pre-phi156 = phi i32 [ %.pre155, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %29, %.preheader.preheader ]
  %.sroa.089.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %332, %.preheader.preheader ]
  %.sroa.694.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %335, %.preheader.preheader ]
  %.sroa.10.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %338, %.preheader.preheader ]
  %.sroa.14.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %341, %.preheader.preheader ]
  %.sroa.18.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %344, %.preheader.preheader ]
  %.sroa.22.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %347, %.preheader.preheader ]
  %.sroa.26.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %350, %.preheader.preheader ]
  %.sroa.30.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %353, %.preheader.preheader ]
  %.sroa.34.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %356, %.preheader.preheader ]
  %.sroa.38.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %359, %.preheader.preheader ]
  %.sroa.42.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %362, %.preheader.preheader ]
  %.sroa.46.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %365, %.preheader.preheader ]
  %.sroa.50.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %368, %.preheader.preheader ]
  %.sroa.54.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %371, %.preheader.preheader ]
  %.sroa.58.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %374, %.preheader.preheader ]
  %.sroa.62.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %377, %.preheader.preheader ]
  %48 = zext i32 %19 to i64
  %49 = bitcast i8 addrspace(1)* %2 to float addrspace(1)*
  %50 = getelementptr float, float addrspace(1)* %49, i64 %48
  %51 = mul nsw i32 %15, %4, !spirv.Decorations !420
  %52 = sext i32 %51 to i64
  %53 = getelementptr float, float addrspace(1)* %50, i64 %52
  %54 = bitcast float addrspace(1)* %53 to i8 addrspace(1)*
  %.ascast.i89 = addrspacecast i8 addrspace(1)* %54 to i8 addrspace(4)*
  %55 = ptrtoint i8 addrspace(4)* %.ascast.i89 to i64
  %56 = and i64 %55, -64
  %57 = trunc i64 %55 to i32
  %58 = lshr i32 %57, 2
  %59 = and i32 %58, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %56, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %59, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.089.0)
  %60 = getelementptr inbounds float, float addrspace(1)* %53, i64 16
  %61 = bitcast float addrspace(1)* %60 to i8 addrspace(1)*
  %.ascast.i89.1 = addrspacecast i8 addrspace(1)* %61 to i8 addrspace(4)*
  %62 = ptrtoint i8 addrspace(4)* %.ascast.i89.1 to i64
  %63 = and i64 %62, -64
  %64 = trunc i64 %62 to i32
  %65 = lshr i32 %64, 2
  %66 = and i32 %65, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %63, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %66, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.694.0)
  %67 = getelementptr inbounds float, float addrspace(1)* %53, i64 32
  %68 = bitcast float addrspace(1)* %67 to i8 addrspace(1)*
  %.ascast.i89.2 = addrspacecast i8 addrspace(1)* %68 to i8 addrspace(4)*
  %69 = ptrtoint i8 addrspace(4)* %.ascast.i89.2 to i64
  %70 = and i64 %69, -64
  %71 = trunc i64 %69 to i32
  %72 = lshr i32 %71, 2
  %73 = and i32 %72, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %70, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %73, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.10.0)
  %74 = getelementptr inbounds float, float addrspace(1)* %53, i64 48
  %75 = bitcast float addrspace(1)* %74 to i8 addrspace(1)*
  %.ascast.i89.3 = addrspacecast i8 addrspace(1)* %75 to i8 addrspace(4)*
  %76 = ptrtoint i8 addrspace(4)* %.ascast.i89.3 to i64
  %77 = and i64 %76, -64
  %78 = trunc i64 %76 to i32
  %79 = lshr i32 %78, 2
  %80 = and i32 %79, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %77, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %80, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.14.0)
  %81 = mul nsw i32 %.pre-phi158, %4, !spirv.Decorations !420
  %82 = sext i32 %81 to i64
  %83 = getelementptr float, float addrspace(1)* %50, i64 %82
  %84 = bitcast float addrspace(1)* %83 to i8 addrspace(1)*
  %.ascast.i89.135 = addrspacecast i8 addrspace(1)* %84 to i8 addrspace(4)*
  %85 = ptrtoint i8 addrspace(4)* %.ascast.i89.135 to i64
  %86 = and i64 %85, -64
  %87 = trunc i64 %85 to i32
  %88 = lshr i32 %87, 2
  %89 = and i32 %88, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %86, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %89, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.18.0)
  %90 = getelementptr inbounds float, float addrspace(1)* %83, i64 16
  %91 = bitcast float addrspace(1)* %90 to i8 addrspace(1)*
  %.ascast.i89.1.1 = addrspacecast i8 addrspace(1)* %91 to i8 addrspace(4)*
  %92 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.1 to i64
  %93 = and i64 %92, -64
  %94 = trunc i64 %92 to i32
  %95 = lshr i32 %94, 2
  %96 = and i32 %95, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %93, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %96, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.22.0)
  %97 = getelementptr inbounds float, float addrspace(1)* %83, i64 32
  %98 = bitcast float addrspace(1)* %97 to i8 addrspace(1)*
  %.ascast.i89.2.1 = addrspacecast i8 addrspace(1)* %98 to i8 addrspace(4)*
  %99 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.1 to i64
  %100 = and i64 %99, -64
  %101 = trunc i64 %99 to i32
  %102 = lshr i32 %101, 2
  %103 = and i32 %102, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %100, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %103, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.26.0)
  %104 = getelementptr inbounds float, float addrspace(1)* %83, i64 48
  %105 = bitcast float addrspace(1)* %104 to i8 addrspace(1)*
  %.ascast.i89.3.1 = addrspacecast i8 addrspace(1)* %105 to i8 addrspace(4)*
  %106 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.1 to i64
  %107 = and i64 %106, -64
  %108 = trunc i64 %106 to i32
  %109 = lshr i32 %108, 2
  %110 = and i32 %109, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %107, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %110, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.30.0)
  %111 = mul nsw i32 %.pre-phi160, %4, !spirv.Decorations !420
  %112 = sext i32 %111 to i64
  %113 = getelementptr float, float addrspace(1)* %50, i64 %112
  %114 = bitcast float addrspace(1)* %113 to i8 addrspace(1)*
  %.ascast.i89.236 = addrspacecast i8 addrspace(1)* %114 to i8 addrspace(4)*
  %115 = ptrtoint i8 addrspace(4)* %.ascast.i89.236 to i64
  %116 = and i64 %115, -64
  %117 = trunc i64 %115 to i32
  %118 = lshr i32 %117, 2
  %119 = and i32 %118, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %116, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %119, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.34.0)
  %120 = getelementptr inbounds float, float addrspace(1)* %113, i64 16
  %121 = bitcast float addrspace(1)* %120 to i8 addrspace(1)*
  %.ascast.i89.1.2 = addrspacecast i8 addrspace(1)* %121 to i8 addrspace(4)*
  %122 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.2 to i64
  %123 = and i64 %122, -64
  %124 = trunc i64 %122 to i32
  %125 = lshr i32 %124, 2
  %126 = and i32 %125, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %123, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %126, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.38.0)
  %127 = getelementptr inbounds float, float addrspace(1)* %113, i64 32
  %128 = bitcast float addrspace(1)* %127 to i8 addrspace(1)*
  %.ascast.i89.2.2 = addrspacecast i8 addrspace(1)* %128 to i8 addrspace(4)*
  %129 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.2 to i64
  %130 = and i64 %129, -64
  %131 = trunc i64 %129 to i32
  %132 = lshr i32 %131, 2
  %133 = and i32 %132, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %130, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %133, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.42.0)
  %134 = getelementptr inbounds float, float addrspace(1)* %113, i64 48
  %135 = bitcast float addrspace(1)* %134 to i8 addrspace(1)*
  %.ascast.i89.3.2 = addrspacecast i8 addrspace(1)* %135 to i8 addrspace(4)*
  %136 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.2 to i64
  %137 = and i64 %136, -64
  %138 = trunc i64 %136 to i32
  %139 = lshr i32 %138, 2
  %140 = and i32 %139, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %137, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %140, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.46.0)
  %141 = mul nsw i32 %.pre-phi162, %4, !spirv.Decorations !420
  %142 = sext i32 %141 to i64
  %143 = getelementptr float, float addrspace(1)* %50, i64 %142
  %144 = bitcast float addrspace(1)* %143 to i8 addrspace(1)*
  %.ascast.i89.337 = addrspacecast i8 addrspace(1)* %144 to i8 addrspace(4)*
  %145 = ptrtoint i8 addrspace(4)* %.ascast.i89.337 to i64
  %146 = and i64 %145, -64
  %147 = trunc i64 %145 to i32
  %148 = lshr i32 %147, 2
  %149 = and i32 %148, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %146, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %149, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.50.0)
  %150 = getelementptr inbounds float, float addrspace(1)* %143, i64 16
  %151 = bitcast float addrspace(1)* %150 to i8 addrspace(1)*
  %.ascast.i89.1.3 = addrspacecast i8 addrspace(1)* %151 to i8 addrspace(4)*
  %152 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.3 to i64
  %153 = and i64 %152, -64
  %154 = trunc i64 %152 to i32
  %155 = lshr i32 %154, 2
  %156 = and i32 %155, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %153, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %156, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.54.0)
  %157 = getelementptr inbounds float, float addrspace(1)* %143, i64 32
  %158 = bitcast float addrspace(1)* %157 to i8 addrspace(1)*
  %.ascast.i89.2.3 = addrspacecast i8 addrspace(1)* %158 to i8 addrspace(4)*
  %159 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.3 to i64
  %160 = and i64 %159, -64
  %161 = trunc i64 %159 to i32
  %162 = lshr i32 %161, 2
  %163 = and i32 %162, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %160, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %163, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.58.0)
  %164 = getelementptr inbounds float, float addrspace(1)* %143, i64 48
  %165 = bitcast float addrspace(1)* %164 to i8 addrspace(1)*
  %.ascast.i89.3.3 = addrspacecast i8 addrspace(1)* %165 to i8 addrspace(4)*
  %166 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.3 to i64
  %167 = and i64 %166, -64
  %168 = trunc i64 %166 to i32
  %169 = lshr i32 %168, 2
  %170 = and i32 %169, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %167, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %170, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.62.0)
  ret void

171:                                              ; preds = %.lr.ph, %.preheader.preheader
  %172 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %331, %.preheader.preheader ]
  %173 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %334, %.preheader.preheader ]
  %174 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %337, %.preheader.preheader ]
  %175 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %340, %.preheader.preheader ]
  %176 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %343, %.preheader.preheader ]
  %177 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %346, %.preheader.preheader ]
  %178 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %349, %.preheader.preheader ]
  %179 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %352, %.preheader.preheader ]
  %180 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %355, %.preheader.preheader ]
  %181 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %358, %.preheader.preheader ]
  %182 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %361, %.preheader.preheader ]
  %183 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %364, %.preheader.preheader ]
  %184 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %367, %.preheader.preheader ]
  %185 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %370, %.preheader.preheader ]
  %186 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %373, %.preheader.preheader ]
  %187 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %376, %.preheader.preheader ]
  %188 = phi i32 [ 0, %.lr.ph ], [ %189, %.preheader.preheader ]
  %189 = add nuw nsw i32 %188, 32, !spirv.Decorations !422
  %190 = icmp slt i32 %189, %3
  br i1 %190, label %191, label %.preheader.preheader

191:                                              ; preds = %171
  %.0.sroa_cast164 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast164)
  store volatile i32 %189, i32* %7, align 4
  %.0..0..0..0..0..0. = load volatile i32, i32* %7, align 4
  %.0.sroa_cast165 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast165)
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %171, %191
  %192 = zext i32 %188 to i64
  %193 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %23, i64 %192
  %194 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %193, i64 %31
  %195 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %194 to i8 addrspace(1)*
  %.ascast.i = addrspacecast i8 addrspace(1)* %195 to i8 addrspace(4)*
  %196 = ptrtoint i8 addrspace(4)* %.ascast.i to i64
  %197 = and i64 %196, -64
  %198 = trunc i64 %196 to i32
  %199 = lshr i32 %198, 1
  %200 = and i32 %199, 31
  %201 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %197, i32 %25, i32 7, i32 %25, i32 %200, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %202 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %194, i64 16
  %203 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %202 to i8 addrspace(1)*
  %.ascast.i86 = addrspacecast i8 addrspace(1)* %203 to i8 addrspace(4)*
  %204 = ptrtoint i8 addrspace(4)* %.ascast.i86 to i64
  %205 = and i64 %204, -64
  %206 = trunc i64 %204 to i32
  %207 = lshr i32 %206, 1
  %208 = and i32 %207, 31
  %209 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %205, i32 %25, i32 7, i32 %25, i32 %208, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %210 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %193, i64 %34
  %211 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %210 to i8 addrspace(1)*
  %.ascast.i.1 = addrspacecast i8 addrspace(1)* %211 to i8 addrspace(4)*
  %212 = ptrtoint i8 addrspace(4)* %.ascast.i.1 to i64
  %213 = and i64 %212, -64
  %214 = trunc i64 %212 to i32
  %215 = lshr i32 %214, 1
  %216 = and i32 %215, 31
  %217 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %213, i32 %25, i32 7, i32 %25, i32 %216, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %218 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %210, i64 16
  %219 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %218 to i8 addrspace(1)*
  %.ascast.i86.1 = addrspacecast i8 addrspace(1)* %219 to i8 addrspace(4)*
  %220 = ptrtoint i8 addrspace(4)* %.ascast.i86.1 to i64
  %221 = and i64 %220, -64
  %222 = trunc i64 %220 to i32
  %223 = lshr i32 %222, 1
  %224 = and i32 %223, 31
  %225 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %221, i32 %25, i32 7, i32 %25, i32 %224, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %226 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %193, i64 %37
  %227 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %226 to i8 addrspace(1)*
  %.ascast.i.2 = addrspacecast i8 addrspace(1)* %227 to i8 addrspace(4)*
  %228 = ptrtoint i8 addrspace(4)* %.ascast.i.2 to i64
  %229 = and i64 %228, -64
  %230 = trunc i64 %228 to i32
  %231 = lshr i32 %230, 1
  %232 = and i32 %231, 31
  %233 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %229, i32 %25, i32 7, i32 %25, i32 %232, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %234 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %226, i64 16
  %235 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %234 to i8 addrspace(1)*
  %.ascast.i86.2 = addrspacecast i8 addrspace(1)* %235 to i8 addrspace(4)*
  %236 = ptrtoint i8 addrspace(4)* %.ascast.i86.2 to i64
  %237 = and i64 %236, -64
  %238 = trunc i64 %236 to i32
  %239 = lshr i32 %238, 1
  %240 = and i32 %239, 31
  %241 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %237, i32 %25, i32 7, i32 %25, i32 %240, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %242 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %193, i64 %40
  %243 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %242 to i8 addrspace(1)*
  %.ascast.i.3 = addrspacecast i8 addrspace(1)* %243 to i8 addrspace(4)*
  %244 = ptrtoint i8 addrspace(4)* %.ascast.i.3 to i64
  %245 = and i64 %244, -64
  %246 = trunc i64 %244 to i32
  %247 = lshr i32 %246, 1
  %248 = and i32 %247, 31
  %249 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %245, i32 %25, i32 7, i32 %25, i32 %248, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %250 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %242, i64 16
  %251 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %250 to i8 addrspace(1)*
  %.ascast.i86.3 = addrspacecast i8 addrspace(1)* %251 to i8 addrspace(4)*
  %252 = ptrtoint i8 addrspace(4)* %.ascast.i86.3 to i64
  %253 = and i64 %252, -64
  %254 = trunc i64 %252 to i32
  %255 = lshr i32 %254, 1
  %256 = and i32 %255, 31
  %257 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %253, i32 %25, i32 7, i32 %25, i32 %256, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %258 = lshr exact i32 %188, 1
  %259 = zext i32 %258 to i64
  %260 = mul nsw i64 %259, %21, !spirv.Decorations !420
  %261 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %26, i64 %260
  %262 = or i32 %258, 8
  %263 = zext i32 %262 to i64
  %264 = mul nsw i64 %263, %21, !spirv.Decorations !420
  %265 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %26, i64 %264
  %266 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %261, i64 %41
  %267 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %266 to i8 addrspace(1)*
  %.ascast.i87 = addrspacecast i8 addrspace(1)* %267 to i8 addrspace(4)*
  %268 = ptrtoint i8 addrspace(4)* %.ascast.i87 to i64
  %269 = and i64 %268, -64
  %270 = trunc i64 %268 to i32
  %271 = lshr i32 %270, 2
  %272 = and i32 %271, 15
  %273 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %269, i32 %29, i32 7, i32 %29, i32 %272, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %274 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %265, i64 %41
  %275 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %274 to i8 addrspace(1)*
  %.ascast.i88 = addrspacecast i8 addrspace(1)* %275 to i8 addrspace(4)*
  %276 = ptrtoint i8 addrspace(4)* %.ascast.i88 to i64
  %277 = and i64 %276, -64
  %278 = trunc i64 %276 to i32
  %279 = lshr i32 %278, 2
  %280 = and i32 %279, 15
  %281 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %277, i32 %29, i32 7, i32 %29, i32 %280, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %282 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %261, i64 %43
  %283 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %282 to i8 addrspace(1)*
  %.ascast.i87.1 = addrspacecast i8 addrspace(1)* %283 to i8 addrspace(4)*
  %284 = ptrtoint i8 addrspace(4)* %.ascast.i87.1 to i64
  %285 = and i64 %284, -64
  %286 = trunc i64 %284 to i32
  %287 = lshr i32 %286, 2
  %288 = and i32 %287, 15
  %289 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %285, i32 %29, i32 7, i32 %29, i32 %288, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %290 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %265, i64 %43
  %291 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %290 to i8 addrspace(1)*
  %.ascast.i88.1 = addrspacecast i8 addrspace(1)* %291 to i8 addrspace(4)*
  %292 = ptrtoint i8 addrspace(4)* %.ascast.i88.1 to i64
  %293 = and i64 %292, -64
  %294 = trunc i64 %292 to i32
  %295 = lshr i32 %294, 2
  %296 = and i32 %295, 15
  %297 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %293, i32 %29, i32 7, i32 %29, i32 %296, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %298 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %261, i64 %45
  %299 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %298 to i8 addrspace(1)*
  %.ascast.i87.2 = addrspacecast i8 addrspace(1)* %299 to i8 addrspace(4)*
  %300 = ptrtoint i8 addrspace(4)* %.ascast.i87.2 to i64
  %301 = and i64 %300, -64
  %302 = trunc i64 %300 to i32
  %303 = lshr i32 %302, 2
  %304 = and i32 %303, 15
  %305 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %301, i32 %29, i32 7, i32 %29, i32 %304, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %306 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %265, i64 %45
  %307 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %306 to i8 addrspace(1)*
  %.ascast.i88.2 = addrspacecast i8 addrspace(1)* %307 to i8 addrspace(4)*
  %308 = ptrtoint i8 addrspace(4)* %.ascast.i88.2 to i64
  %309 = and i64 %308, -64
  %310 = trunc i64 %308 to i32
  %311 = lshr i32 %310, 2
  %312 = and i32 %311, 15
  %313 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %309, i32 %29, i32 7, i32 %29, i32 %312, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %314 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %261, i64 %47
  %315 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %314 to i8 addrspace(1)*
  %.ascast.i87.3 = addrspacecast i8 addrspace(1)* %315 to i8 addrspace(4)*
  %316 = ptrtoint i8 addrspace(4)* %.ascast.i87.3 to i64
  %317 = and i64 %316, -64
  %318 = trunc i64 %316 to i32
  %319 = lshr i32 %318, 2
  %320 = and i32 %319, 15
  %321 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %317, i32 %29, i32 7, i32 %29, i32 %320, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %322 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %265, i64 %47
  %323 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %322 to i8 addrspace(1)*
  %.ascast.i88.3 = addrspacecast i8 addrspace(1)* %323 to i8 addrspace(4)*
  %324 = ptrtoint i8 addrspace(4)* %.ascast.i88.3 to i64
  %325 = and i64 %324, -64
  %326 = trunc i64 %324 to i32
  %327 = lshr i32 %326, 2
  %328 = and i32 %327, 15
  %329 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %325, i32 %29, i32 7, i32 %29, i32 %328, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %330 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %172, <8 x i16> %201, <8 x i32> %273, i32 11, i32 11, i32 8, i32 8, i1 false)
  %331 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %330, <8 x i16> %209, <8 x i32> %281, i32 11, i32 11, i32 8, i32 8, i1 false)
  %332 = bitcast <8 x float> %331 to <8 x i32>
  %333 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %173, <8 x i16> %201, <8 x i32> %289, i32 11, i32 11, i32 8, i32 8, i1 false)
  %334 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %333, <8 x i16> %209, <8 x i32> %297, i32 11, i32 11, i32 8, i32 8, i1 false)
  %335 = bitcast <8 x float> %334 to <8 x i32>
  %336 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %174, <8 x i16> %201, <8 x i32> %305, i32 11, i32 11, i32 8, i32 8, i1 false)
  %337 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %336, <8 x i16> %209, <8 x i32> %313, i32 11, i32 11, i32 8, i32 8, i1 false)
  %338 = bitcast <8 x float> %337 to <8 x i32>
  %339 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %175, <8 x i16> %201, <8 x i32> %321, i32 11, i32 11, i32 8, i32 8, i1 false)
  %340 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %339, <8 x i16> %209, <8 x i32> %329, i32 11, i32 11, i32 8, i32 8, i1 false)
  %341 = bitcast <8 x float> %340 to <8 x i32>
  %342 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %176, <8 x i16> %217, <8 x i32> %273, i32 11, i32 11, i32 8, i32 8, i1 false)
  %343 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %342, <8 x i16> %225, <8 x i32> %281, i32 11, i32 11, i32 8, i32 8, i1 false)
  %344 = bitcast <8 x float> %343 to <8 x i32>
  %345 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %177, <8 x i16> %217, <8 x i32> %289, i32 11, i32 11, i32 8, i32 8, i1 false)
  %346 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %345, <8 x i16> %225, <8 x i32> %297, i32 11, i32 11, i32 8, i32 8, i1 false)
  %347 = bitcast <8 x float> %346 to <8 x i32>
  %348 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %178, <8 x i16> %217, <8 x i32> %305, i32 11, i32 11, i32 8, i32 8, i1 false)
  %349 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %348, <8 x i16> %225, <8 x i32> %313, i32 11, i32 11, i32 8, i32 8, i1 false)
  %350 = bitcast <8 x float> %349 to <8 x i32>
  %351 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %179, <8 x i16> %217, <8 x i32> %321, i32 11, i32 11, i32 8, i32 8, i1 false)
  %352 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %351, <8 x i16> %225, <8 x i32> %329, i32 11, i32 11, i32 8, i32 8, i1 false)
  %353 = bitcast <8 x float> %352 to <8 x i32>
  %354 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %180, <8 x i16> %233, <8 x i32> %273, i32 11, i32 11, i32 8, i32 8, i1 false)
  %355 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %354, <8 x i16> %241, <8 x i32> %281, i32 11, i32 11, i32 8, i32 8, i1 false)
  %356 = bitcast <8 x float> %355 to <8 x i32>
  %357 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %181, <8 x i16> %233, <8 x i32> %289, i32 11, i32 11, i32 8, i32 8, i1 false)
  %358 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %357, <8 x i16> %241, <8 x i32> %297, i32 11, i32 11, i32 8, i32 8, i1 false)
  %359 = bitcast <8 x float> %358 to <8 x i32>
  %360 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %182, <8 x i16> %233, <8 x i32> %305, i32 11, i32 11, i32 8, i32 8, i1 false)
  %361 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %360, <8 x i16> %241, <8 x i32> %313, i32 11, i32 11, i32 8, i32 8, i1 false)
  %362 = bitcast <8 x float> %361 to <8 x i32>
  %363 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %183, <8 x i16> %233, <8 x i32> %321, i32 11, i32 11, i32 8, i32 8, i1 false)
  %364 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %363, <8 x i16> %241, <8 x i32> %329, i32 11, i32 11, i32 8, i32 8, i1 false)
  %365 = bitcast <8 x float> %364 to <8 x i32>
  %366 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %184, <8 x i16> %249, <8 x i32> %273, i32 11, i32 11, i32 8, i32 8, i1 false)
  %367 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %366, <8 x i16> %257, <8 x i32> %281, i32 11, i32 11, i32 8, i32 8, i1 false)
  %368 = bitcast <8 x float> %367 to <8 x i32>
  %369 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %185, <8 x i16> %249, <8 x i32> %289, i32 11, i32 11, i32 8, i32 8, i1 false)
  %370 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %369, <8 x i16> %257, <8 x i32> %297, i32 11, i32 11, i32 8, i32 8, i1 false)
  %371 = bitcast <8 x float> %370 to <8 x i32>
  %372 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %186, <8 x i16> %249, <8 x i32> %305, i32 11, i32 11, i32 8, i32 8, i1 false)
  %373 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %372, <8 x i16> %257, <8 x i32> %313, i32 11, i32 11, i32 8, i32 8, i1 false)
  %374 = bitcast <8 x float> %373 to <8 x i32>
  %375 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %187, <8 x i16> %249, <8 x i32> %321, i32 11, i32 11, i32 8, i32 8, i1 false)
  %376 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %375, <8 x i16> %257, <8 x i32> %329, i32 11, i32 11, i32 8, i32 8, i1 false)
  %377 = bitcast <8 x float> %376 to <8 x i32>
  br i1 %190, label %171, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit
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
!igc.functions = !{!3, !24, !25}
!IGCMetadata = !{!26}
!opencl.ocl.version = !{!417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417}
!opencl.spir.version = !{!417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417, !417}
!llvm.ident = !{!418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418}
!llvm.module.flags = !{!419}

!0 = !{i32 2, i32 2}
!1 = !{i32 4, i32 100000}
!2 = !{i16 6, i16 14}
!3 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ16bench_v1_with_pfRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_, !4}
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
!24 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ19bench_v2_clean_nopfRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_, !4}
!25 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ16bench_v3_if_onlyRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_, !4}
!26 = !{!"ModuleMD", !27, !28, !130, !252, !283, !300, !320, !330, !332, !333, !348, !349, !350, !351, !355, !356, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !375, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !197, !393, !394, !395, !397, !399, !402, !403, !404, !406, !407, !408, !413, !414, !415, !416}
!27 = !{!"isPrecise", i1 false}
!28 = !{!"compOpt", !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129}
!29 = !{!"DenormsAreZero", i1 false}
!30 = !{!"BFTFDenormsAreZero", i1 false}
!31 = !{!"CorrectlyRoundedDivSqrt", i1 false}
!32 = !{!"OptDisable", i1 false}
!33 = !{!"MadEnable", i1 true}
!34 = !{!"NoSignedZeros", i1 false}
!35 = !{!"NoNaNs", i1 false}
!36 = !{!"FloatDenormMode16", !"FLOAT_DENORM_RETAIN"}
!37 = !{!"FloatDenormMode32", !"FLOAT_DENORM_RETAIN"}
!38 = !{!"FloatDenormMode64", !"FLOAT_DENORM_RETAIN"}
!39 = !{!"FloatDenormModeBFTF", !"FLOAT_DENORM_RETAIN"}
!40 = !{!"FloatRoundingMode", i32 0}
!41 = !{!"FloatCvtIntRoundingMode", i32 3}
!42 = !{!"LoadCacheDefault", i32 4}
!43 = !{!"StoreCacheDefault", i32 2}
!44 = !{!"VISAPreSchedRPThreshold", i32 0}
!45 = !{!"VISAPreSchedCtrl", i32 0}
!46 = !{!"SetLoopUnrollThreshold", i32 0}
!47 = !{!"UnsafeMathOptimizations", i1 false}
!48 = !{!"disableCustomUnsafeOpts", i1 false}
!49 = !{!"disableReducePow", i1 false}
!50 = !{!"disableSqrtOpt", i1 false}
!51 = !{!"FiniteMathOnly", i1 false}
!52 = !{!"FastRelaxedMath", i1 false}
!53 = !{!"DashGSpecified", i1 false}
!54 = !{!"FastCompilation", i1 false}
!55 = !{!"UseScratchSpacePrivateMemory", i1 true}
!56 = !{!"RelaxedBuiltins", i1 false}
!57 = !{!"SubgroupIndependentForwardProgressRequired", i1 true}
!58 = !{!"GreaterThan2GBBufferRequired", i1 true}
!59 = !{!"GreaterThan4GBBufferRequired", i1 true}
!60 = !{!"DisableA64WA", i1 false}
!61 = !{!"ForceEnableA64WA", i1 false}
!62 = !{!"PushConstantsEnable", i1 true}
!63 = !{!"HasPositivePointerOffset", i1 false}
!64 = !{!"HasBufferOffsetArg", i1 true}
!65 = !{!"BufferOffsetArgOptional", i1 true}
!66 = !{!"replaceGlobalOffsetsByZero", i1 false}
!67 = !{!"forcePixelShaderSIMDMode", i32 0}
!68 = !{!"forceTotalGRFNum", i32 0}
!69 = !{!"pixelShaderDoNotAbortOnSpill", i1 false}
!70 = !{!"UniformWGS", i1 false}
!71 = !{!"disableVertexComponentPacking", i1 false}
!72 = !{!"disablePartialVertexComponentPacking", i1 false}
!73 = !{!"PreferBindlessImages", i1 true}
!74 = !{!"UseBindlessMode", i1 true}
!75 = !{!"UseLegacyBindlessMode", i1 false}
!76 = !{!"disableMathRefactoring", i1 false}
!77 = !{!"atomicBranch", i1 false}
!78 = !{!"spillCompression", i1 false}
!79 = !{!"DisableEarlyOut", i1 false}
!80 = !{!"ForceInt32DivRemEmu", i1 false}
!81 = !{!"ForceInt32DivRemEmuSP", i1 false}
!82 = !{!"DisableFastestSingleCSSIMD", i1 false}
!83 = !{!"DisableFastestLinearScan", i1 false}
!84 = !{!"UseStatelessforPrivateMemory", i1 false}
!85 = !{!"EnableTakeGlobalAddress", i1 false}
!86 = !{!"IsLibraryCompilation", i1 false}
!87 = !{!"LibraryCompileSIMDSize", i32 0}
!88 = !{!"FastVISACompile", i1 false}
!89 = !{!"MatchSinCosPi", i1 false}
!90 = !{!"ExcludeIRFromZEBinary", i1 false}
!91 = !{!"EmitZeBinVISASections", i1 false}
!92 = !{!"FP64GenEmulationEnabled", i1 false}
!93 = !{!"FP64GenConvEmulationEnabled", i1 false}
!94 = !{!"allowDisableRematforCS", i1 false}
!95 = !{!"DisableIncSpillCostAllAddrTaken", i1 false}
!96 = !{!"DisableCPSOmaskWA", i1 false}
!97 = !{!"DisableFastestGopt", i1 false}
!98 = !{!"WaForceHalfPromotionComputeShader", i1 false}
!99 = !{!"WaForceHalfPromotionPixelVertexShader", i1 false}
!100 = !{!"DisableConstantCoalescing", i1 false}
!101 = !{!"EnableUndefAlphaOutputAsRed", i1 true}
!102 = !{!"WaEnableALTModeVisaWA", i1 false}
!103 = !{!"EnableLdStCombineforLoad", i1 false}
!104 = !{!"EnableLdStCombinewithDummyLoad", i1 false}
!105 = !{!"ForceUniformBuffer", i1 false}
!106 = !{!"ForceUniformSurfaceSampler", i1 false}
!107 = !{!"EnableIndependentSharedMemoryFenceFunctionality", i1 false}
!108 = !{!"NewSpillCostFunction", i1 false}
!109 = !{!"EnableVRT", i1 false}
!110 = !{!"ForceLargeGRFNum4RQ", i1 false}
!111 = !{!"DisableEUFusion", i1 false}
!112 = !{!"DisableFDivToFMulInvOpt", i1 false}
!113 = !{!"initializePhiSampleSourceWA", i1 false}
!114 = !{!"WaDisableSubspanUseNoMaskForCB", i1 false}
!115 = !{!"DisableLoosenSimd32Occu", i1 false}
!116 = !{!"FastestS1Options", i32 0}
!117 = !{!"DisableFastestForWaveIntrinsicsCS", i1 false}
!118 = !{!"ForceLinearWalkOnLinearUAV", i1 false}
!119 = !{!"DisableLscSamplerRouting", i1 false}
!120 = !{!"UseBarrierControlFlowOptimization", i1 false}
!121 = !{!"EnableDynamicRQManagement", i1 false}
!122 = !{!"WaDisablePayloadCoalescing", i1 false}
!123 = !{!"Quad8InputThreshold", i32 0}
!124 = !{!"UseResourceLoopUnrollNested", i1 false}
!125 = !{!"DisableLoopUnroll", i1 false}
!126 = !{!"ForcePushConstantMode", i32 0}
!127 = !{!"UseInstructionHoistingOptimization", i1 false}
!128 = !{!"DisableResourceLoopDestLifeTimeStart", i1 false}
!129 = !{!"UseLinearScanRA", i1 false}
!130 = !{!"FuncMD", !131, !132, !248, !249, !250, !251}
!131 = !{!"FuncMDMap[0]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ16bench_v1_with_pfRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_}
!132 = !{!"FuncMDValue[0]", !133, !134, !138, !139, !140, !162, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !213, !219, !225, !231, !237, !243, !244}
!133 = !{!"localOffsets"}
!134 = !{!"workGroupWalkOrder", !135, !136, !137}
!135 = !{!"dim0", i32 0}
!136 = !{!"dim1", i32 1}
!137 = !{!"dim2", i32 2}
!138 = !{!"funcArgs"}
!139 = !{!"functionType", !"KernelFunction"}
!140 = !{!"rtInfo", !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !158, !159, !160, !161}
!141 = !{!"callableShaderType", !"NumberOfCallableShaderTypes"}
!142 = !{!"isContinuation", i1 false}
!143 = !{!"hasTraceRayPayload", i1 false}
!144 = !{!"hasHitAttributes", i1 false}
!145 = !{!"hasCallableData", i1 false}
!146 = !{!"ShaderStackSize", i32 0}
!147 = !{!"ShaderHash", i64 0}
!148 = !{!"ShaderName", !""}
!149 = !{!"ParentName", !""}
!150 = !{!"SlotNum", i1* null}
!151 = !{!"NOSSize", i32 0}
!152 = !{!"globalRootSignatureSize", i32 0}
!153 = !{!"Entries"}
!154 = !{!"SpillUnions"}
!155 = !{!"CustomHitAttrSizeInBytes", i32 0}
!156 = !{!"Types", !157}
!157 = !{!"FullFrameTys"}
!158 = !{!"Aliases"}
!159 = !{!"numSyncRTStacks", i32 0}
!160 = !{!"NumCoherenceHintBits", i32 0}
!161 = !{!"OriginatingShaderName", !""}
!162 = !{!"resAllocMD", !163, !164, !165, !166, !188}
!163 = !{!"uavsNumType", i32 0}
!164 = !{!"srvsNumType", i32 0}
!165 = !{!"samplersNumType", i32 0}
!166 = !{!"argAllocMDList", !167, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187}
!167 = !{!"argAllocMDListVec[0]", !168, !169, !170}
!168 = !{!"type", i32 0}
!169 = !{!"extensionType", i32 -1}
!170 = !{!"indexType", i32 -1}
!171 = !{!"argAllocMDListVec[1]", !168, !169, !170}
!172 = !{!"argAllocMDListVec[2]", !168, !169, !170}
!173 = !{!"argAllocMDListVec[3]", !168, !169, !170}
!174 = !{!"argAllocMDListVec[4]", !168, !169, !170}
!175 = !{!"argAllocMDListVec[5]", !168, !169, !170}
!176 = !{!"argAllocMDListVec[6]", !168, !169, !170}
!177 = !{!"argAllocMDListVec[7]", !168, !169, !170}
!178 = !{!"argAllocMDListVec[8]", !168, !169, !170}
!179 = !{!"argAllocMDListVec[9]", !168, !169, !170}
!180 = !{!"argAllocMDListVec[10]", !168, !169, !170}
!181 = !{!"argAllocMDListVec[11]", !168, !169, !170}
!182 = !{!"argAllocMDListVec[12]", !168, !169, !170}
!183 = !{!"argAllocMDListVec[13]", !168, !169, !170}
!184 = !{!"argAllocMDListVec[14]", !168, !169, !170}
!185 = !{!"argAllocMDListVec[15]", !168, !169, !170}
!186 = !{!"argAllocMDListVec[16]", !168, !169, !170}
!187 = !{!"argAllocMDListVec[17]", !168, !169, !170}
!188 = !{!"inlineSamplersMD"}
!189 = !{!"maxByteOffsets"}
!190 = !{!"IsInitializer", i1 false}
!191 = !{!"IsFinalizer", i1 false}
!192 = !{!"CompiledSubGroupsNumber", i32 0}
!193 = !{!"hasInlineVmeSamplers", i1 false}
!194 = !{!"localSize", i32 0}
!195 = !{!"localIDPresent", i1 false}
!196 = !{!"groupIDPresent", i1 false}
!197 = !{!"privateMemoryPerWI", i32 0}
!198 = !{!"prevFPOffset", i32 0}
!199 = !{!"globalIDPresent", i1 false}
!200 = !{!"hasSyncRTCalls", i1 false}
!201 = !{!"hasPrintfCalls", i1 false}
!202 = !{!"hasIndirectCalls", i1 false}
!203 = !{!"hasNonKernelArgLoad", i1 false}
!204 = !{!"hasNonKernelArgStore", i1 false}
!205 = !{!"hasNonKernelArgAtomic", i1 false}
!206 = !{!"UserAnnotations"}
!207 = !{!"m_OpenCLArgAddressSpaces", !208, !209, !210, !211, !212}
!208 = !{!"m_OpenCLArgAddressSpacesVec[0]", i32 1}
!209 = !{!"m_OpenCLArgAddressSpacesVec[1]", i32 1}
!210 = !{!"m_OpenCLArgAddressSpacesVec[2]", i32 1}
!211 = !{!"m_OpenCLArgAddressSpacesVec[3]", i32 0}
!212 = !{!"m_OpenCLArgAddressSpacesVec[4]", i32 0}
!213 = !{!"m_OpenCLArgAccessQualifiers", !214, !215, !216, !217, !218}
!214 = !{!"m_OpenCLArgAccessQualifiersVec[0]", !"none"}
!215 = !{!"m_OpenCLArgAccessQualifiersVec[1]", !"none"}
!216 = !{!"m_OpenCLArgAccessQualifiersVec[2]", !"none"}
!217 = !{!"m_OpenCLArgAccessQualifiersVec[3]", !"none"}
!218 = !{!"m_OpenCLArgAccessQualifiersVec[4]", !"none"}
!219 = !{!"m_OpenCLArgTypes", !220, !221, !222, !223, !224}
!220 = !{!"m_OpenCLArgTypesVec[0]", !"char*"}
!221 = !{!"m_OpenCLArgTypesVec[1]", !"char*"}
!222 = !{!"m_OpenCLArgTypesVec[2]", !"char*"}
!223 = !{!"m_OpenCLArgTypesVec[3]", !"int"}
!224 = !{!"m_OpenCLArgTypesVec[4]", !"int"}
!225 = !{!"m_OpenCLArgBaseTypes", !226, !227, !228, !229, !230}
!226 = !{!"m_OpenCLArgBaseTypesVec[0]", !"char*"}
!227 = !{!"m_OpenCLArgBaseTypesVec[1]", !"char*"}
!228 = !{!"m_OpenCLArgBaseTypesVec[2]", !"char*"}
!229 = !{!"m_OpenCLArgBaseTypesVec[3]", !"int"}
!230 = !{!"m_OpenCLArgBaseTypesVec[4]", !"int"}
!231 = !{!"m_OpenCLArgTypeQualifiers", !232, !233, !234, !235, !236}
!232 = !{!"m_OpenCLArgTypeQualifiersVec[0]", !""}
!233 = !{!"m_OpenCLArgTypeQualifiersVec[1]", !""}
!234 = !{!"m_OpenCLArgTypeQualifiersVec[2]", !""}
!235 = !{!"m_OpenCLArgTypeQualifiersVec[3]", !""}
!236 = !{!"m_OpenCLArgTypeQualifiersVec[4]", !""}
!237 = !{!"m_OpenCLArgNames", !238, !239, !240, !241, !242}
!238 = !{!"m_OpenCLArgNamesVec[0]", !""}
!239 = !{!"m_OpenCLArgNamesVec[1]", !""}
!240 = !{!"m_OpenCLArgNamesVec[2]", !""}
!241 = !{!"m_OpenCLArgNamesVec[3]", !""}
!242 = !{!"m_OpenCLArgNamesVec[4]", !""}
!243 = !{!"m_OpenCLArgScalarAsPointers"}
!244 = !{!"m_OptsToDisablePerFunc", !245, !246, !247}
!245 = !{!"m_OptsToDisablePerFuncSet[0]", !"IGC-AddressArithmeticSinking"}
!246 = !{!"m_OptsToDisablePerFuncSet[1]", !"IGC-AllowSimd32Slicing"}
!247 = !{!"m_OptsToDisablePerFuncSet[2]", !"IGC-SinkLoadOpt"}
!248 = !{!"FuncMDMap[1]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ19bench_v2_clean_nopfRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_}
!249 = !{!"FuncMDValue[1]", !133, !134, !138, !139, !140, !162, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !213, !219, !225, !231, !237, !243, !244}
!250 = !{!"FuncMDMap[2]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ16bench_v3_if_onlyRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_}
!251 = !{!"FuncMDValue[2]", !133, !134, !138, !139, !140, !162, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !213, !219, !225, !231, !237, !243, !244}
!252 = !{!"pushInfo", !253, !254, !255, !259, !260, !261, !262, !263, !264, !265, !266, !279, !280, !281, !282}
!253 = !{!"pushableAddresses"}
!254 = !{!"bindlessPushInfo"}
!255 = !{!"dynamicBufferInfo", !256, !257, !258}
!256 = !{!"firstIndex", i32 0}
!257 = !{!"numOffsets", i32 0}
!258 = !{!"forceDisabled", i1 false}
!259 = !{!"MaxNumberOfPushedBuffers", i32 0}
!260 = !{!"inlineConstantBufferSlot", i32 -1}
!261 = !{!"inlineConstantBufferOffset", i32 -1}
!262 = !{!"inlineConstantBufferGRFOffset", i32 -1}
!263 = !{!"constants"}
!264 = !{!"inputs"}
!265 = !{!"constantReg"}
!266 = !{!"simplePushInfoArr", !267, !276, !277, !278}
!267 = !{!"simplePushInfoArrVec[0]", !268, !269, !270, !271, !272, !273, !274, !275}
!268 = !{!"cbIdx", i32 0}
!269 = !{!"pushableAddressGrfOffset", i32 -1}
!270 = !{!"pushableOffsetGrfOffset", i32 -1}
!271 = !{!"offset", i32 0}
!272 = !{!"size", i32 0}
!273 = !{!"isStateless", i1 false}
!274 = !{!"isBindless", i1 false}
!275 = !{!"simplePushLoads"}
!276 = !{!"simplePushInfoArrVec[1]", !268, !269, !270, !271, !272, !273, !274, !275}
!277 = !{!"simplePushInfoArrVec[2]", !268, !269, !270, !271, !272, !273, !274, !275}
!278 = !{!"simplePushInfoArrVec[3]", !268, !269, !270, !271, !272, !273, !274, !275}
!279 = !{!"simplePushBufferUsed", i32 0}
!280 = !{!"pushAnalysisWIInfos"}
!281 = !{!"inlineRTGlobalPtrOffset", i32 0}
!282 = !{!"rtSyncSurfPtrOffset", i32 0}
!283 = !{!"psInfo", !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!284 = !{!"BlendStateDisabledMask", i8 0}
!285 = !{!"SkipSrc0Alpha", i1 false}
!286 = !{!"DualSourceBlendingDisabled", i1 false}
!287 = !{!"ForceEnableSimd32", i1 false}
!288 = !{!"DisableSimd32WithDiscard", i1 false}
!289 = !{!"outputDepth", i1 false}
!290 = !{!"outputStencil", i1 false}
!291 = !{!"outputMask", i1 false}
!292 = !{!"blendToFillEnabled", i1 false}
!293 = !{!"forceEarlyZ", i1 false}
!294 = !{!"hasVersionedLoop", i1 false}
!295 = !{!"forceSingleSourceRTWAfterDualSourceRTW", i1 false}
!296 = !{!"NumSamples", i8 0}
!297 = !{!"blendOptimizationMode"}
!298 = !{!"colorOutputMask"}
!299 = !{!"WaDisableVRS", i1 false}
!300 = !{!"csInfo", !301, !302, !303, !304, !68, !44, !45, !46, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !78, !316, !317, !318, !319}
!301 = !{!"maxWorkGroupSize", i32 0}
!302 = !{!"waveSize", i32 0}
!303 = !{!"ComputeShaderSecondCompile"}
!304 = !{!"forcedSIMDSize", i8 0}
!305 = !{!"forceSpillCompression", i1 false}
!306 = !{!"allowLowerSimd", i1 false}
!307 = !{!"disableSimd32Slicing", i1 false}
!308 = !{!"disableSplitOnSpill", i1 false}
!309 = !{!"enableNewSpillCostFunction", i1 false}
!310 = !{!"forceVISAPreSched", i1 false}
!311 = !{!"disableLocalIdOrderOptimizations", i1 false}
!312 = !{!"disableDispatchAlongY", i1 false}
!313 = !{!"neededThreadIdLayout", i1* null}
!314 = !{!"forceTileYWalk", i1 false}
!315 = !{!"atomicBranch", i32 0}
!316 = !{!"disableEarlyOut", i1 false}
!317 = !{!"walkOrderEnabled", i1 false}
!318 = !{!"walkOrderOverride", i32 0}
!319 = !{!"ResForHfPacking"}
!320 = !{!"msInfo", !321, !322, !323, !324, !325, !326, !327, !328, !329}
!321 = !{!"PrimitiveTopology", i32 3}
!322 = !{!"MaxNumOfPrimitives", i32 0}
!323 = !{!"MaxNumOfVertices", i32 0}
!324 = !{!"MaxNumOfPerPrimitiveOutputs", i32 0}
!325 = !{!"MaxNumOfPerVertexOutputs", i32 0}
!326 = !{!"WorkGroupSize", i32 0}
!327 = !{!"WorkGroupMemorySizeInBytes", i32 0}
!328 = !{!"IndexFormat", i32 6}
!329 = !{!"SubgroupSize", i32 0}
!330 = !{!"taskInfo", !331, !326, !327, !329}
!331 = !{!"MaxNumOfOutputs", i32 0}
!332 = !{!"NBarrierCnt", i32 0}
!333 = !{!"rtInfo", !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !159}
!334 = !{!"RayQueryAllocSizeInBytes", i32 0}
!335 = !{!"NumContinuations", i32 0}
!336 = !{!"RTAsyncStackAddrspace", i32 -1}
!337 = !{!"RTAsyncStackSurfaceStateOffset", i1* null}
!338 = !{!"SWHotZoneAddrspace", i32 -1}
!339 = !{!"SWHotZoneSurfaceStateOffset", i1* null}
!340 = !{!"SWStackAddrspace", i32 -1}
!341 = !{!"SWStackSurfaceStateOffset", i1* null}
!342 = !{!"RTSyncStackAddrspace", i32 -1}
!343 = !{!"RTSyncStackSurfaceStateOffset", i1* null}
!344 = !{!"doSyncDispatchRays", i1 false}
!345 = !{!"MemStyle", !"Xe"}
!346 = !{!"GlobalDataStyle", !"Xe"}
!347 = !{!"uberTileDimensions", i1* null}
!348 = !{!"CurUniqueIndirectIdx", i32 0}
!349 = !{!"inlineDynTextures"}
!350 = !{!"inlineResInfoData"}
!351 = !{!"immConstant", !352, !353, !354}
!352 = !{!"data"}
!353 = !{!"sizes"}
!354 = !{!"zeroIdxs"}
!355 = !{!"stringConstants"}
!356 = !{!"inlineBuffers", !357, !361, !362}
!357 = !{!"inlineBuffersVec[0]", !358, !359, !360}
!358 = !{!"alignment", i32 0}
!359 = !{!"allocSize", i64 0}
!360 = !{!"Buffer"}
!361 = !{!"inlineBuffersVec[1]", !358, !359, !360}
!362 = !{!"inlineBuffersVec[2]", !358, !359, !360}
!363 = !{!"GlobalPointerProgramBinaryInfos"}
!364 = !{!"ConstantPointerProgramBinaryInfos"}
!365 = !{!"GlobalBufferAddressRelocInfo"}
!366 = !{!"ConstantBufferAddressRelocInfo"}
!367 = !{!"forceLscCacheList"}
!368 = !{!"SrvMap"}
!369 = !{!"RasterizerOrderedByteAddressBuffer"}
!370 = !{!"RasterizerOrderedViews"}
!371 = !{!"MinNOSPushConstantSize", i32 0}
!372 = !{!"inlineProgramScopeOffsets"}
!373 = !{!"shaderData", !374}
!374 = !{!"numReplicas", i32 0}
!375 = !{!"URBInfo", !376, !377, !378}
!376 = !{!"has64BVertexHeaderInput", i1 false}
!377 = !{!"has64BVertexHeaderOutput", i1 false}
!378 = !{!"hasVertexHeader", i1 true}
!379 = !{!"UseBindlessImage", i1 true}
!380 = !{!"UseBindlessImageWithSamplerTracking", i1 false}
!381 = !{!"enableRangeReduce", i1 false}
!382 = !{!"allowMatchMadOptimizationforVS", i1 false}
!383 = !{!"disableMatchMadOptimizationForCS", i1 false}
!384 = !{!"disableMemOptforNegativeOffsetLoads", i1 false}
!385 = !{!"enableThreeWayLoadSpiltOpt", i1 false}
!386 = !{!"statefulResourcesNotAliased", i1 false}
!387 = !{!"disableMixMode", i1 false}
!388 = !{!"genericAccessesResolved", i1 false}
!389 = !{!"disableSeparateSpillPvtScratchSpace", i1 false}
!390 = !{!"enableSeparateSpillPvtScratchSpace", i1 false}
!391 = !{!"disableSeparateScratchWA", i1 false}
!392 = !{!"enableRemoveUnusedTGMFence", i1 false}
!393 = !{!"PrivateMemoryPerFG"}
!394 = !{!"m_OptsToDisable"}
!395 = !{!"capabilities", !396}
!396 = !{!"globalVariableDecorationsINTEL", i1 false}
!397 = !{!"extensions", !398}
!398 = !{!"spvINTELBindlessImages", i1 false}
!399 = !{!"m_ShaderResourceViewMcsMask", !400, !401}
!400 = !{!"m_ShaderResourceViewMcsMaskVec[0]", i64 0}
!401 = !{!"m_ShaderResourceViewMcsMaskVec[1]", i64 0}
!402 = !{!"computedDepthMode", i32 0}
!403 = !{!"isHDCFastClearShader", i1 false}
!404 = !{!"argRegisterReservations", !405}
!405 = !{!"argRegisterReservationsVec[0]", i32 0}
!406 = !{!"SIMD16_SpillThreshold", i8 0}
!407 = !{!"SIMD32_SpillThreshold", i8 0}
!408 = !{!"m_CacheControlOption", !409, !410, !411, !412}
!409 = !{!"LscLoadCacheControlOverride", i8 0}
!410 = !{!"LscStoreCacheControlOverride", i8 0}
!411 = !{!"TgmLoadCacheControlOverride", i8 0}
!412 = !{!"TgmStoreCacheControlOverride", i8 0}
!413 = !{!"ModuleUsesBindless", i1 false}
!414 = !{!"predicationMap"}
!415 = !{!"lifeTimeStartMap"}
!416 = !{!"HitGroups"}
!417 = !{i32 2, i32 0}
!418 = !{!"clang version 15.0.7"}
!419 = !{i32 1, !"wchar_size", i32 4}
!420 = !{!421}
!421 = !{i32 4469}
!422 = !{!421, !423}
!423 = !{i32 4470}
!424 = !{!425}
!425 = !{i32 44, i32 4}
