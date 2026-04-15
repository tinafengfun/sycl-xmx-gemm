; ------------------------------------------------
; OCL_asm452e78bde1128fde_optimized.ll
; ------------------------------------------------
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "spir64-unknown-unknown"

%"class.sycl::_V1::ext::oneapi::bfloat16" = type { i16 }

; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZZ4mainENKUlvE_clEvENKUlRN4sycl3_V17handlerEE_clES3_EUlNS1_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
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
  %11 = shl nsw i32 %6, 6, !spirv.Decorations !414
  %12 = shl nuw nsw i32 %localThreadId5, 4
  %13 = and i32 %12, 4064
  %14 = add nuw nsw i32 %11, %13, !spirv.Decorations !414
  %15 = shl nsw i32 %5, 7, !spirv.Decorations !414
  %16 = shl nuw nsw i32 %localThreadId5, 6
  %17 = and i32 %16, 64
  %18 = or i32 %15, %17
  %19 = mul nsw i32 %14, %3
  %20 = sext i32 %19 to i64
  %21 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %22 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %21, i64 %20
  %23 = shl nsw i32 %4, 1, !spirv.Decorations !414
  %24 = sext i32 %23 to i64
  %25 = shl nuw i32 %18, 1
  %26 = zext i32 %25 to i64
  %27 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %28 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %27, i64 %26
  %29 = icmp sgt i32 %3, 0
  br i1 %29, label %.lr.ph, label %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge

.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge: ; preds = %.preheader1.preheader
  %.pre = shl i32 %4, 2
  %.pre154 = add i32 %.pre, -1
  %.pre156 = or i32 %14, 8
  %.pre158 = or i32 %14, 16
  %.pre160 = or i32 %14, 24
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit

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

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit: ; preds = %.preheader.preheader, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge
  %.pre-phi161 = phi i32 [ %.pre160, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %40, %.preheader.preheader ]
  %.pre-phi159 = phi i32 [ %.pre158, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %37, %.preheader.preheader ]
  %.pre-phi157 = phi i32 [ %.pre156, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %34, %.preheader.preheader ]
  %.pre-phi155 = phi i32 [ %.pre154, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %33, %.preheader.preheader ]
  %.sroa.088.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %353, %.preheader.preheader ]
  %.sroa.693.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %356, %.preheader.preheader ]
  %.sroa.10.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %359, %.preheader.preheader ]
  %.sroa.14.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %362, %.preheader.preheader ]
  %.sroa.18.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %365, %.preheader.preheader ]
  %.sroa.22.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %368, %.preheader.preheader ]
  %.sroa.26.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %371, %.preheader.preheader ]
  %.sroa.30.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %374, %.preheader.preheader ]
  %.sroa.34.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %377, %.preheader.preheader ]
  %.sroa.38.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %380, %.preheader.preheader ]
  %.sroa.42.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %383, %.preheader.preheader ]
  %.sroa.46.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %386, %.preheader.preheader ]
  %.sroa.50.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %389, %.preheader.preheader ]
  %.sroa.54.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %392, %.preheader.preheader ]
  %.sroa.58.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %395, %.preheader.preheader ]
  %.sroa.62.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %398, %.preheader.preheader ]
  %49 = zext i32 %18 to i64
  %50 = bitcast i8 addrspace(1)* %2 to float addrspace(1)*
  %51 = getelementptr float, float addrspace(1)* %50, i64 %49
  %52 = mul nsw i32 %14, %4, !spirv.Decorations !414
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
  %82 = mul nsw i32 %.pre-phi157, %4, !spirv.Decorations !414
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
  %112 = mul nsw i32 %.pre-phi159, %4, !spirv.Decorations !414
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
  %142 = mul nsw i32 %.pre-phi161, %4, !spirv.Decorations !414
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
  %190 = add nuw nsw i32 %189, 32, !spirv.Decorations !416
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
  %204 = mul nsw i64 %203, %24, !spirv.Decorations !414
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
  %281 = mul nsw i64 %280, %24, !spirv.Decorations !414
  %282 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %27, i64 %281
  %283 = or i32 %279, 8
  %284 = zext i32 %283 to i64
  %285 = mul nsw i64 %284, %24, !spirv.Decorations !414
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
  br i1 %191, label %172, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

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
!igc.functions = !{!3}
!IGCMetadata = !{!24}
!opencl.ocl.version = !{!411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411}
!opencl.spir.version = !{!411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411, !411}
!llvm.ident = !{!412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412}
!llvm.module.flags = !{!413}

!0 = !{i32 2, i32 2}
!1 = !{i32 4, i32 100000}
!2 = !{i16 6, i16 14}
!3 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ4mainENKUlvE_clEvENKUlRN4sycl3_V17handlerEE_clES3_EUlNS1_7nd_itemILi2EEEE_, !4}
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
!24 = !{!"ModuleMD", !25, !26, !128, !246, !277, !294, !314, !324, !326, !327, !342, !343, !344, !345, !349, !350, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !369, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !195, !387, !388, !389, !391, !393, !396, !397, !398, !400, !401, !402, !407, !408, !409, !410}
!25 = !{!"isPrecise", i1 false}
!26 = !{!"compOpt", !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127}
!27 = !{!"DenormsAreZero", i1 false}
!28 = !{!"BFTFDenormsAreZero", i1 false}
!29 = !{!"CorrectlyRoundedDivSqrt", i1 false}
!30 = !{!"OptDisable", i1 false}
!31 = !{!"MadEnable", i1 true}
!32 = !{!"NoSignedZeros", i1 false}
!33 = !{!"NoNaNs", i1 false}
!34 = !{!"FloatDenormMode16", !"FLOAT_DENORM_RETAIN"}
!35 = !{!"FloatDenormMode32", !"FLOAT_DENORM_RETAIN"}
!36 = !{!"FloatDenormMode64", !"FLOAT_DENORM_RETAIN"}
!37 = !{!"FloatDenormModeBFTF", !"FLOAT_DENORM_RETAIN"}
!38 = !{!"FloatRoundingMode", i32 0}
!39 = !{!"FloatCvtIntRoundingMode", i32 3}
!40 = !{!"LoadCacheDefault", i32 4}
!41 = !{!"StoreCacheDefault", i32 2}
!42 = !{!"VISAPreSchedRPThreshold", i32 0}
!43 = !{!"VISAPreSchedCtrl", i32 0}
!44 = !{!"SetLoopUnrollThreshold", i32 0}
!45 = !{!"UnsafeMathOptimizations", i1 false}
!46 = !{!"disableCustomUnsafeOpts", i1 false}
!47 = !{!"disableReducePow", i1 false}
!48 = !{!"disableSqrtOpt", i1 false}
!49 = !{!"FiniteMathOnly", i1 false}
!50 = !{!"FastRelaxedMath", i1 false}
!51 = !{!"DashGSpecified", i1 false}
!52 = !{!"FastCompilation", i1 false}
!53 = !{!"UseScratchSpacePrivateMemory", i1 true}
!54 = !{!"RelaxedBuiltins", i1 false}
!55 = !{!"SubgroupIndependentForwardProgressRequired", i1 true}
!56 = !{!"GreaterThan2GBBufferRequired", i1 true}
!57 = !{!"GreaterThan4GBBufferRequired", i1 true}
!58 = !{!"DisableA64WA", i1 false}
!59 = !{!"ForceEnableA64WA", i1 false}
!60 = !{!"PushConstantsEnable", i1 true}
!61 = !{!"HasPositivePointerOffset", i1 false}
!62 = !{!"HasBufferOffsetArg", i1 true}
!63 = !{!"BufferOffsetArgOptional", i1 true}
!64 = !{!"replaceGlobalOffsetsByZero", i1 false}
!65 = !{!"forcePixelShaderSIMDMode", i32 0}
!66 = !{!"forceTotalGRFNum", i32 0}
!67 = !{!"pixelShaderDoNotAbortOnSpill", i1 false}
!68 = !{!"UniformWGS", i1 false}
!69 = !{!"disableVertexComponentPacking", i1 false}
!70 = !{!"disablePartialVertexComponentPacking", i1 false}
!71 = !{!"PreferBindlessImages", i1 true}
!72 = !{!"UseBindlessMode", i1 true}
!73 = !{!"UseLegacyBindlessMode", i1 false}
!74 = !{!"disableMathRefactoring", i1 false}
!75 = !{!"atomicBranch", i1 false}
!76 = !{!"spillCompression", i1 false}
!77 = !{!"DisableEarlyOut", i1 false}
!78 = !{!"ForceInt32DivRemEmu", i1 false}
!79 = !{!"ForceInt32DivRemEmuSP", i1 false}
!80 = !{!"DisableFastestSingleCSSIMD", i1 false}
!81 = !{!"DisableFastestLinearScan", i1 false}
!82 = !{!"UseStatelessforPrivateMemory", i1 false}
!83 = !{!"EnableTakeGlobalAddress", i1 false}
!84 = !{!"IsLibraryCompilation", i1 false}
!85 = !{!"LibraryCompileSIMDSize", i32 0}
!86 = !{!"FastVISACompile", i1 false}
!87 = !{!"MatchSinCosPi", i1 false}
!88 = !{!"ExcludeIRFromZEBinary", i1 false}
!89 = !{!"EmitZeBinVISASections", i1 false}
!90 = !{!"FP64GenEmulationEnabled", i1 false}
!91 = !{!"FP64GenConvEmulationEnabled", i1 false}
!92 = !{!"allowDisableRematforCS", i1 false}
!93 = !{!"DisableIncSpillCostAllAddrTaken", i1 false}
!94 = !{!"DisableCPSOmaskWA", i1 false}
!95 = !{!"DisableFastestGopt", i1 false}
!96 = !{!"WaForceHalfPromotionComputeShader", i1 false}
!97 = !{!"WaForceHalfPromotionPixelVertexShader", i1 false}
!98 = !{!"DisableConstantCoalescing", i1 false}
!99 = !{!"EnableUndefAlphaOutputAsRed", i1 true}
!100 = !{!"WaEnableALTModeVisaWA", i1 false}
!101 = !{!"EnableLdStCombineforLoad", i1 false}
!102 = !{!"EnableLdStCombinewithDummyLoad", i1 false}
!103 = !{!"ForceUniformBuffer", i1 false}
!104 = !{!"ForceUniformSurfaceSampler", i1 false}
!105 = !{!"EnableIndependentSharedMemoryFenceFunctionality", i1 false}
!106 = !{!"NewSpillCostFunction", i1 false}
!107 = !{!"EnableVRT", i1 false}
!108 = !{!"ForceLargeGRFNum4RQ", i1 false}
!109 = !{!"DisableEUFusion", i1 false}
!110 = !{!"DisableFDivToFMulInvOpt", i1 false}
!111 = !{!"initializePhiSampleSourceWA", i1 false}
!112 = !{!"WaDisableSubspanUseNoMaskForCB", i1 false}
!113 = !{!"DisableLoosenSimd32Occu", i1 false}
!114 = !{!"FastestS1Options", i32 0}
!115 = !{!"DisableFastestForWaveIntrinsicsCS", i1 false}
!116 = !{!"ForceLinearWalkOnLinearUAV", i1 false}
!117 = !{!"DisableLscSamplerRouting", i1 false}
!118 = !{!"UseBarrierControlFlowOptimization", i1 false}
!119 = !{!"EnableDynamicRQManagement", i1 false}
!120 = !{!"WaDisablePayloadCoalescing", i1 false}
!121 = !{!"Quad8InputThreshold", i32 0}
!122 = !{!"UseResourceLoopUnrollNested", i1 false}
!123 = !{!"DisableLoopUnroll", i1 false}
!124 = !{!"ForcePushConstantMode", i32 0}
!125 = !{!"UseInstructionHoistingOptimization", i1 false}
!126 = !{!"DisableResourceLoopDestLifeTimeStart", i1 false}
!127 = !{!"UseLinearScanRA", i1 false}
!128 = !{!"FuncMD", !129, !130}
!129 = !{!"FuncMDMap[0]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ4mainENKUlvE_clEvENKUlRN4sycl3_V17handlerEE_clES3_EUlNS1_7nd_itemILi2EEEE_}
!130 = !{!"FuncMDValue[0]", !131, !132, !136, !137, !138, !160, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !211, !217, !223, !229, !235, !241, !242}
!131 = !{!"localOffsets"}
!132 = !{!"workGroupWalkOrder", !133, !134, !135}
!133 = !{!"dim0", i32 0}
!134 = !{!"dim1", i32 1}
!135 = !{!"dim2", i32 2}
!136 = !{!"funcArgs"}
!137 = !{!"functionType", !"KernelFunction"}
!138 = !{!"rtInfo", !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !156, !157, !158, !159}
!139 = !{!"callableShaderType", !"NumberOfCallableShaderTypes"}
!140 = !{!"isContinuation", i1 false}
!141 = !{!"hasTraceRayPayload", i1 false}
!142 = !{!"hasHitAttributes", i1 false}
!143 = !{!"hasCallableData", i1 false}
!144 = !{!"ShaderStackSize", i32 0}
!145 = !{!"ShaderHash", i64 0}
!146 = !{!"ShaderName", !""}
!147 = !{!"ParentName", !""}
!148 = !{!"SlotNum", i1* null}
!149 = !{!"NOSSize", i32 0}
!150 = !{!"globalRootSignatureSize", i32 0}
!151 = !{!"Entries"}
!152 = !{!"SpillUnions"}
!153 = !{!"CustomHitAttrSizeInBytes", i32 0}
!154 = !{!"Types", !155}
!155 = !{!"FullFrameTys"}
!156 = !{!"Aliases"}
!157 = !{!"numSyncRTStacks", i32 0}
!158 = !{!"NumCoherenceHintBits", i32 0}
!159 = !{!"OriginatingShaderName", !""}
!160 = !{!"resAllocMD", !161, !162, !163, !164, !186}
!161 = !{!"uavsNumType", i32 0}
!162 = !{!"srvsNumType", i32 0}
!163 = !{!"samplersNumType", i32 0}
!164 = !{!"argAllocMDList", !165, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185}
!165 = !{!"argAllocMDListVec[0]", !166, !167, !168}
!166 = !{!"type", i32 0}
!167 = !{!"extensionType", i32 -1}
!168 = !{!"indexType", i32 -1}
!169 = !{!"argAllocMDListVec[1]", !166, !167, !168}
!170 = !{!"argAllocMDListVec[2]", !166, !167, !168}
!171 = !{!"argAllocMDListVec[3]", !166, !167, !168}
!172 = !{!"argAllocMDListVec[4]", !166, !167, !168}
!173 = !{!"argAllocMDListVec[5]", !166, !167, !168}
!174 = !{!"argAllocMDListVec[6]", !166, !167, !168}
!175 = !{!"argAllocMDListVec[7]", !166, !167, !168}
!176 = !{!"argAllocMDListVec[8]", !166, !167, !168}
!177 = !{!"argAllocMDListVec[9]", !166, !167, !168}
!178 = !{!"argAllocMDListVec[10]", !166, !167, !168}
!179 = !{!"argAllocMDListVec[11]", !166, !167, !168}
!180 = !{!"argAllocMDListVec[12]", !166, !167, !168}
!181 = !{!"argAllocMDListVec[13]", !166, !167, !168}
!182 = !{!"argAllocMDListVec[14]", !166, !167, !168}
!183 = !{!"argAllocMDListVec[15]", !166, !167, !168}
!184 = !{!"argAllocMDListVec[16]", !166, !167, !168}
!185 = !{!"argAllocMDListVec[17]", !166, !167, !168}
!186 = !{!"inlineSamplersMD"}
!187 = !{!"maxByteOffsets"}
!188 = !{!"IsInitializer", i1 false}
!189 = !{!"IsFinalizer", i1 false}
!190 = !{!"CompiledSubGroupsNumber", i32 0}
!191 = !{!"hasInlineVmeSamplers", i1 false}
!192 = !{!"localSize", i32 0}
!193 = !{!"localIDPresent", i1 false}
!194 = !{!"groupIDPresent", i1 false}
!195 = !{!"privateMemoryPerWI", i32 0}
!196 = !{!"prevFPOffset", i32 0}
!197 = !{!"globalIDPresent", i1 false}
!198 = !{!"hasSyncRTCalls", i1 false}
!199 = !{!"hasPrintfCalls", i1 false}
!200 = !{!"hasIndirectCalls", i1 false}
!201 = !{!"hasNonKernelArgLoad", i1 false}
!202 = !{!"hasNonKernelArgStore", i1 false}
!203 = !{!"hasNonKernelArgAtomic", i1 false}
!204 = !{!"UserAnnotations"}
!205 = !{!"m_OpenCLArgAddressSpaces", !206, !207, !208, !209, !210}
!206 = !{!"m_OpenCLArgAddressSpacesVec[0]", i32 1}
!207 = !{!"m_OpenCLArgAddressSpacesVec[1]", i32 1}
!208 = !{!"m_OpenCLArgAddressSpacesVec[2]", i32 1}
!209 = !{!"m_OpenCLArgAddressSpacesVec[3]", i32 0}
!210 = !{!"m_OpenCLArgAddressSpacesVec[4]", i32 0}
!211 = !{!"m_OpenCLArgAccessQualifiers", !212, !213, !214, !215, !216}
!212 = !{!"m_OpenCLArgAccessQualifiersVec[0]", !"none"}
!213 = !{!"m_OpenCLArgAccessQualifiersVec[1]", !"none"}
!214 = !{!"m_OpenCLArgAccessQualifiersVec[2]", !"none"}
!215 = !{!"m_OpenCLArgAccessQualifiersVec[3]", !"none"}
!216 = !{!"m_OpenCLArgAccessQualifiersVec[4]", !"none"}
!217 = !{!"m_OpenCLArgTypes", !218, !219, !220, !221, !222}
!218 = !{!"m_OpenCLArgTypesVec[0]", !"char*"}
!219 = !{!"m_OpenCLArgTypesVec[1]", !"char*"}
!220 = !{!"m_OpenCLArgTypesVec[2]", !"char*"}
!221 = !{!"m_OpenCLArgTypesVec[3]", !"int"}
!222 = !{!"m_OpenCLArgTypesVec[4]", !"int"}
!223 = !{!"m_OpenCLArgBaseTypes", !224, !225, !226, !227, !228}
!224 = !{!"m_OpenCLArgBaseTypesVec[0]", !"char*"}
!225 = !{!"m_OpenCLArgBaseTypesVec[1]", !"char*"}
!226 = !{!"m_OpenCLArgBaseTypesVec[2]", !"char*"}
!227 = !{!"m_OpenCLArgBaseTypesVec[3]", !"int"}
!228 = !{!"m_OpenCLArgBaseTypesVec[4]", !"int"}
!229 = !{!"m_OpenCLArgTypeQualifiers", !230, !231, !232, !233, !234}
!230 = !{!"m_OpenCLArgTypeQualifiersVec[0]", !""}
!231 = !{!"m_OpenCLArgTypeQualifiersVec[1]", !""}
!232 = !{!"m_OpenCLArgTypeQualifiersVec[2]", !""}
!233 = !{!"m_OpenCLArgTypeQualifiersVec[3]", !""}
!234 = !{!"m_OpenCLArgTypeQualifiersVec[4]", !""}
!235 = !{!"m_OpenCLArgNames", !236, !237, !238, !239, !240}
!236 = !{!"m_OpenCLArgNamesVec[0]", !""}
!237 = !{!"m_OpenCLArgNamesVec[1]", !""}
!238 = !{!"m_OpenCLArgNamesVec[2]", !""}
!239 = !{!"m_OpenCLArgNamesVec[3]", !""}
!240 = !{!"m_OpenCLArgNamesVec[4]", !""}
!241 = !{!"m_OpenCLArgScalarAsPointers"}
!242 = !{!"m_OptsToDisablePerFunc", !243, !244, !245}
!243 = !{!"m_OptsToDisablePerFuncSet[0]", !"IGC-AddressArithmeticSinking"}
!244 = !{!"m_OptsToDisablePerFuncSet[1]", !"IGC-AllowSimd32Slicing"}
!245 = !{!"m_OptsToDisablePerFuncSet[2]", !"IGC-SinkLoadOpt"}
!246 = !{!"pushInfo", !247, !248, !249, !253, !254, !255, !256, !257, !258, !259, !260, !273, !274, !275, !276}
!247 = !{!"pushableAddresses"}
!248 = !{!"bindlessPushInfo"}
!249 = !{!"dynamicBufferInfo", !250, !251, !252}
!250 = !{!"firstIndex", i32 0}
!251 = !{!"numOffsets", i32 0}
!252 = !{!"forceDisabled", i1 false}
!253 = !{!"MaxNumberOfPushedBuffers", i32 0}
!254 = !{!"inlineConstantBufferSlot", i32 -1}
!255 = !{!"inlineConstantBufferOffset", i32 -1}
!256 = !{!"inlineConstantBufferGRFOffset", i32 -1}
!257 = !{!"constants"}
!258 = !{!"inputs"}
!259 = !{!"constantReg"}
!260 = !{!"simplePushInfoArr", !261, !270, !271, !272}
!261 = !{!"simplePushInfoArrVec[0]", !262, !263, !264, !265, !266, !267, !268, !269}
!262 = !{!"cbIdx", i32 0}
!263 = !{!"pushableAddressGrfOffset", i32 -1}
!264 = !{!"pushableOffsetGrfOffset", i32 -1}
!265 = !{!"offset", i32 0}
!266 = !{!"size", i32 0}
!267 = !{!"isStateless", i1 false}
!268 = !{!"isBindless", i1 false}
!269 = !{!"simplePushLoads"}
!270 = !{!"simplePushInfoArrVec[1]", !262, !263, !264, !265, !266, !267, !268, !269}
!271 = !{!"simplePushInfoArrVec[2]", !262, !263, !264, !265, !266, !267, !268, !269}
!272 = !{!"simplePushInfoArrVec[3]", !262, !263, !264, !265, !266, !267, !268, !269}
!273 = !{!"simplePushBufferUsed", i32 0}
!274 = !{!"pushAnalysisWIInfos"}
!275 = !{!"inlineRTGlobalPtrOffset", i32 0}
!276 = !{!"rtSyncSurfPtrOffset", i32 0}
!277 = !{!"psInfo", !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293}
!278 = !{!"BlendStateDisabledMask", i8 0}
!279 = !{!"SkipSrc0Alpha", i1 false}
!280 = !{!"DualSourceBlendingDisabled", i1 false}
!281 = !{!"ForceEnableSimd32", i1 false}
!282 = !{!"DisableSimd32WithDiscard", i1 false}
!283 = !{!"outputDepth", i1 false}
!284 = !{!"outputStencil", i1 false}
!285 = !{!"outputMask", i1 false}
!286 = !{!"blendToFillEnabled", i1 false}
!287 = !{!"forceEarlyZ", i1 false}
!288 = !{!"hasVersionedLoop", i1 false}
!289 = !{!"forceSingleSourceRTWAfterDualSourceRTW", i1 false}
!290 = !{!"NumSamples", i8 0}
!291 = !{!"blendOptimizationMode"}
!292 = !{!"colorOutputMask"}
!293 = !{!"WaDisableVRS", i1 false}
!294 = !{!"csInfo", !295, !296, !297, !298, !66, !42, !43, !44, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !76, !310, !311, !312, !313}
!295 = !{!"maxWorkGroupSize", i32 0}
!296 = !{!"waveSize", i32 0}
!297 = !{!"ComputeShaderSecondCompile"}
!298 = !{!"forcedSIMDSize", i8 0}
!299 = !{!"forceSpillCompression", i1 false}
!300 = !{!"allowLowerSimd", i1 false}
!301 = !{!"disableSimd32Slicing", i1 false}
!302 = !{!"disableSplitOnSpill", i1 false}
!303 = !{!"enableNewSpillCostFunction", i1 false}
!304 = !{!"forceVISAPreSched", i1 false}
!305 = !{!"disableLocalIdOrderOptimizations", i1 false}
!306 = !{!"disableDispatchAlongY", i1 false}
!307 = !{!"neededThreadIdLayout", i1* null}
!308 = !{!"forceTileYWalk", i1 false}
!309 = !{!"atomicBranch", i32 0}
!310 = !{!"disableEarlyOut", i1 false}
!311 = !{!"walkOrderEnabled", i1 false}
!312 = !{!"walkOrderOverride", i32 0}
!313 = !{!"ResForHfPacking"}
!314 = !{!"msInfo", !315, !316, !317, !318, !319, !320, !321, !322, !323}
!315 = !{!"PrimitiveTopology", i32 3}
!316 = !{!"MaxNumOfPrimitives", i32 0}
!317 = !{!"MaxNumOfVertices", i32 0}
!318 = !{!"MaxNumOfPerPrimitiveOutputs", i32 0}
!319 = !{!"MaxNumOfPerVertexOutputs", i32 0}
!320 = !{!"WorkGroupSize", i32 0}
!321 = !{!"WorkGroupMemorySizeInBytes", i32 0}
!322 = !{!"IndexFormat", i32 6}
!323 = !{!"SubgroupSize", i32 0}
!324 = !{!"taskInfo", !325, !320, !321, !323}
!325 = !{!"MaxNumOfOutputs", i32 0}
!326 = !{!"NBarrierCnt", i32 0}
!327 = !{!"rtInfo", !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !157}
!328 = !{!"RayQueryAllocSizeInBytes", i32 0}
!329 = !{!"NumContinuations", i32 0}
!330 = !{!"RTAsyncStackAddrspace", i32 -1}
!331 = !{!"RTAsyncStackSurfaceStateOffset", i1* null}
!332 = !{!"SWHotZoneAddrspace", i32 -1}
!333 = !{!"SWHotZoneSurfaceStateOffset", i1* null}
!334 = !{!"SWStackAddrspace", i32 -1}
!335 = !{!"SWStackSurfaceStateOffset", i1* null}
!336 = !{!"RTSyncStackAddrspace", i32 -1}
!337 = !{!"RTSyncStackSurfaceStateOffset", i1* null}
!338 = !{!"doSyncDispatchRays", i1 false}
!339 = !{!"MemStyle", !"Xe"}
!340 = !{!"GlobalDataStyle", !"Xe"}
!341 = !{!"uberTileDimensions", i1* null}
!342 = !{!"CurUniqueIndirectIdx", i32 0}
!343 = !{!"inlineDynTextures"}
!344 = !{!"inlineResInfoData"}
!345 = !{!"immConstant", !346, !347, !348}
!346 = !{!"data"}
!347 = !{!"sizes"}
!348 = !{!"zeroIdxs"}
!349 = !{!"stringConstants"}
!350 = !{!"inlineBuffers", !351, !355, !356}
!351 = !{!"inlineBuffersVec[0]", !352, !353, !354}
!352 = !{!"alignment", i32 0}
!353 = !{!"allocSize", i64 0}
!354 = !{!"Buffer"}
!355 = !{!"inlineBuffersVec[1]", !352, !353, !354}
!356 = !{!"inlineBuffersVec[2]", !352, !353, !354}
!357 = !{!"GlobalPointerProgramBinaryInfos"}
!358 = !{!"ConstantPointerProgramBinaryInfos"}
!359 = !{!"GlobalBufferAddressRelocInfo"}
!360 = !{!"ConstantBufferAddressRelocInfo"}
!361 = !{!"forceLscCacheList"}
!362 = !{!"SrvMap"}
!363 = !{!"RasterizerOrderedByteAddressBuffer"}
!364 = !{!"RasterizerOrderedViews"}
!365 = !{!"MinNOSPushConstantSize", i32 0}
!366 = !{!"inlineProgramScopeOffsets"}
!367 = !{!"shaderData", !368}
!368 = !{!"numReplicas", i32 0}
!369 = !{!"URBInfo", !370, !371, !372}
!370 = !{!"has64BVertexHeaderInput", i1 false}
!371 = !{!"has64BVertexHeaderOutput", i1 false}
!372 = !{!"hasVertexHeader", i1 true}
!373 = !{!"UseBindlessImage", i1 true}
!374 = !{!"UseBindlessImageWithSamplerTracking", i1 false}
!375 = !{!"enableRangeReduce", i1 false}
!376 = !{!"allowMatchMadOptimizationforVS", i1 false}
!377 = !{!"disableMatchMadOptimizationForCS", i1 false}
!378 = !{!"disableMemOptforNegativeOffsetLoads", i1 false}
!379 = !{!"enableThreeWayLoadSpiltOpt", i1 false}
!380 = !{!"statefulResourcesNotAliased", i1 false}
!381 = !{!"disableMixMode", i1 false}
!382 = !{!"genericAccessesResolved", i1 false}
!383 = !{!"disableSeparateSpillPvtScratchSpace", i1 false}
!384 = !{!"enableSeparateSpillPvtScratchSpace", i1 false}
!385 = !{!"disableSeparateScratchWA", i1 false}
!386 = !{!"enableRemoveUnusedTGMFence", i1 false}
!387 = !{!"PrivateMemoryPerFG"}
!388 = !{!"m_OptsToDisable"}
!389 = !{!"capabilities", !390}
!390 = !{!"globalVariableDecorationsINTEL", i1 false}
!391 = !{!"extensions", !392}
!392 = !{!"spvINTELBindlessImages", i1 false}
!393 = !{!"m_ShaderResourceViewMcsMask", !394, !395}
!394 = !{!"m_ShaderResourceViewMcsMaskVec[0]", i64 0}
!395 = !{!"m_ShaderResourceViewMcsMaskVec[1]", i64 0}
!396 = !{!"computedDepthMode", i32 0}
!397 = !{!"isHDCFastClearShader", i1 false}
!398 = !{!"argRegisterReservations", !399}
!399 = !{!"argRegisterReservationsVec[0]", i32 0}
!400 = !{!"SIMD16_SpillThreshold", i8 0}
!401 = !{!"SIMD32_SpillThreshold", i8 0}
!402 = !{!"m_CacheControlOption", !403, !404, !405, !406}
!403 = !{!"LscLoadCacheControlOverride", i8 0}
!404 = !{!"LscStoreCacheControlOverride", i8 0}
!405 = !{!"TgmLoadCacheControlOverride", i8 0}
!406 = !{!"TgmStoreCacheControlOverride", i8 0}
!407 = !{!"ModuleUsesBindless", i1 false}
!408 = !{!"predicationMap"}
!409 = !{!"lifeTimeStartMap"}
!410 = !{!"HitGroups"}
!411 = !{i32 2, i32 0}
!412 = !{!"clang version 15.0.7"}
!413 = !{i32 1, !"wchar_size", i32 4}
!414 = !{!415}
!415 = !{i32 4469}
!416 = !{!415, !417}
!417 = !{i32 4470}
