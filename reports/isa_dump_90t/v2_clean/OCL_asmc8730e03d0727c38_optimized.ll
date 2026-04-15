; ------------------------------------------------
; OCL_asmc8730e03d0727c38_optimized.ll
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
  %19 = shl nsw i32 %4, 1, !spirv.Decorations !414
  %20 = sext i32 %19 to i64
  %21 = icmp sgt i32 %3, 0
  br i1 %21, label %.lr.ph, label %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge

.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge: ; preds = %.preheader1.preheader
  %.pre = shl i32 %4, 2
  %.pre148 = add i32 %.pre, -1
  %.pre150 = or i32 %14, 8
  %.pre152 = or i32 %14, 16
  %.pre154 = or i32 %14, 24
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit

.lr.ph:                                           ; preds = %.preheader1.preheader
  %22 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %23 = shl i32 %3, 1
  %24 = add i32 %23, -1
  %25 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %26 = shl nuw i32 %18, 1
  %27 = shl i32 %4, 2
  %28 = add i32 %27, -1
  %29 = mul nsw i32 %14, %3, !spirv.Decorations !414
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

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit: ; preds = %.preheader.preheader, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge
  %.pre-phi155 = phi i32 [ %.pre154, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge ], [ %37, %.preheader.preheader ]
  %.pre-phi153 = phi i32 [ %.pre152, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge ], [ %34, %.preheader.preheader ]
  %.pre-phi151 = phi i32 [ %.pre150, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge ], [ %31, %.preheader.preheader ]
  %.pre-phi149 = phi i32 [ %.pre148, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge ], [ %28, %.preheader.preheader ]
  %.sroa.082.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge ], [ %327, %.preheader.preheader ]
  %.sroa.687.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge ], [ %330, %.preheader.preheader ]
  %.sroa.10.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge ], [ %333, %.preheader.preheader ]
  %.sroa.14.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge ], [ %336, %.preheader.preheader ]
  %.sroa.18.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge ], [ %339, %.preheader.preheader ]
  %.sroa.22.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge ], [ %342, %.preheader.preheader ]
  %.sroa.26.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge ], [ %345, %.preheader.preheader ]
  %.sroa.30.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge ], [ %348, %.preheader.preheader ]
  %.sroa.34.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge ], [ %351, %.preheader.preheader ]
  %.sroa.38.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge ], [ %354, %.preheader.preheader ]
  %.sroa.42.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge ], [ %357, %.preheader.preheader ]
  %.sroa.46.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge ], [ %360, %.preheader.preheader ]
  %.sroa.50.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge ], [ %363, %.preheader.preheader ]
  %.sroa.54.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge ], [ %366, %.preheader.preheader ]
  %.sroa.58.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge ], [ %369, %.preheader.preheader ]
  %.sroa.62.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit_crit_edge ], [ %372, %.preheader.preheader ]
  %47 = zext i32 %18 to i64
  %48 = bitcast i8 addrspace(1)* %2 to float addrspace(1)*
  %49 = getelementptr float, float addrspace(1)* %48, i64 %47
  %50 = mul nsw i32 %14, %4, !spirv.Decorations !414
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
  %80 = mul nsw i32 %.pre-phi151, %4, !spirv.Decorations !414
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
  %110 = mul nsw i32 %.pre-phi153, %4, !spirv.Decorations !414
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
  %140 = mul nsw i32 %.pre-phi155, %4, !spirv.Decorations !414
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
  %255 = mul nsw i64 %254, %20, !spirv.Decorations !414
  %256 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %25, i64 %255
  %257 = or i32 %253, 8
  %258 = zext i32 %257 to i64
  %259 = mul nsw i64 %258, %20, !spirv.Decorations !414
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
  %373 = add nuw nsw i32 %186, 32, !spirv.Decorations !416
  %374 = icmp slt i32 %373, %3
  br i1 %374, label %.preheader.preheader, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.258.exit
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
