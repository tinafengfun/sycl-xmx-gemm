; ------------------------------------------------
; OCL_asmeace364ae9a9453a_push_analysis.ll
; ------------------------------------------------
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "spir64-unknown-unknown"

; Function Attrs: convergent nounwind null_pointer_is_valid
define spir_kernel void @_ZTSZZZ4mainENKUlvE_clEvENKUlRN4sycl3_V17handlerEE_clES3_EUlNS1_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
.preheader1.preheader:
  %5 = extractelement <8 x i32> %r0, i32 1
  %6 = extractelement <8 x i32> %r0, i32 6
  %7 = bitcast <8 x i32> %r0 to <32 x i8>
  %8 = extractelement <32 x i8> %7, i32 8
  %localThreadId5 = zext i8 %8 to i32
  %9 = shl nsw i32 %6, 6, !spirv.Decorations !416
  %10 = shl nuw nsw i32 %localThreadId5, 4
  %11 = and i32 %10, 4064
  %12 = add nuw nsw i32 %9, %11, !spirv.Decorations !416
  %13 = shl nsw i32 %5, 7, !spirv.Decorations !416
  %14 = shl nuw nsw i32 %localThreadId5, 6
  %15 = and i32 %14, 64
  %16 = or i32 %13, %15
  %17 = shl nsw i32 %4, 1, !spirv.Decorations !416
  %18 = ashr i32 %17, 31
  %19 = icmp sgt i32 %3, 0
  br i1 %19, label %.lr.ph, label %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge

.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge: ; preds = %.preheader1.preheader
  %.pre = shl i32 %4, 2
  %.pre148 = add i32 %.pre, -1
  %.pre150 = or i32 %12, 8
  %.pre152 = or i32 %12, 16
  %.pre154 = or i32 %12, 24
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit

.lr.ph:                                           ; preds = %.preheader1.preheader
  %20 = shl i32 %3, 1
  %21 = add i32 %20, -1
  %22 = shl nuw i32 %16, 1
  %23 = shl i32 %4, 2
  %24 = add i32 %23, -1
  %25 = mul nsw i32 %12, %3, !spirv.Decorations !416
  %26 = sext i32 %25 to i64
  %27 = or i32 %12, 8
  %28 = mul nsw i32 %27, %3
  %29 = sext i32 %28 to i64
  %30 = or i32 %12, 16
  %31 = mul nsw i32 %30, %3
  %32 = sext i32 %31 to i64
  %33 = or i32 %12, 24
  %34 = mul nsw i32 %33, %3
  %35 = sext i32 %34 to i64
  %36 = zext i32 %22 to i64
  %37 = ptrtoint i8 addrspace(1)* %0 to i64
  %38 = shl nsw i64 %26, 1
  %39 = shl nsw i64 %29, 1
  %40 = shl nsw i64 %32, 1
  %41 = shl nsw i64 %35, 1
  %42 = ptrtoint i8 addrspace(1)* %1 to i64
  %43 = shl nuw nsw i64 %36, 1
  br label %.preheader.preheader

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit: ; preds = %.preheader.preheader
  %44 = bitcast <8 x float> %548 to <8 x i32>
  %45 = bitcast <8 x float> %550 to <8 x i32>
  %46 = bitcast <8 x float> %552 to <8 x i32>
  %47 = bitcast <8 x float> %554 to <8 x i32>
  %48 = bitcast <8 x float> %556 to <8 x i32>
  %49 = bitcast <8 x float> %558 to <8 x i32>
  %50 = bitcast <8 x float> %560 to <8 x i32>
  %51 = bitcast <8 x float> %562 to <8 x i32>
  %52 = bitcast <8 x float> %564 to <8 x i32>
  %53 = bitcast <8 x float> %566 to <8 x i32>
  %54 = bitcast <8 x float> %568 to <8 x i32>
  %55 = bitcast <8 x float> %570 to <8 x i32>
  %56 = bitcast <8 x float> %572 to <8 x i32>
  %57 = bitcast <8 x float> %574 to <8 x i32>
  %58 = bitcast <8 x float> %576 to <8 x i32>
  %59 = bitcast <8 x float> %578 to <8 x i32>
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit: ; preds = %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge
  %.pre-phi155 = phi i32 [ %.pre154, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %33, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.pre-phi153 = phi i32 [ %.pre152, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %30, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.pre-phi151 = phi i32 [ %.pre150, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %27, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.pre-phi149 = phi i32 [ %.pre148, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %24, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.082.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %44, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.687.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %45, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.10.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %46, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.14.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %47, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.18.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %48, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.22.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %49, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.26.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %50, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.30.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %51, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.34.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %52, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.38.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %53, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.42.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %54, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.46.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %55, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.50.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %56, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.54.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %57, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.58.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %58, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.62.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %59, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %60 = zext i32 %16 to i64
  %61 = ptrtoint i8 addrspace(1)* %2 to i64
  %62 = shl nuw nsw i64 %60, 2
  %63 = add i64 %62, %61
  %64 = mul nsw i32 %12, %4, !spirv.Decorations !416
  %65 = sext i32 %64 to i64
  %66 = shl nsw i64 %65, 2
  %67 = add i64 %63, %66
  %68 = inttoptr i64 %67 to i8 addrspace(1)*
  %.ascast.i89 = addrspacecast i8 addrspace(1)* %68 to i8 addrspace(4)*
  %69 = ptrtoint i8 addrspace(4)* %.ascast.i89 to i64
  %70 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89)
  %71 = extractvalue { i32, i32 } %70, 0
  %72 = extractvalue { i32, i32 } %70, 1
  %73 = and i32 %71, -64
  %74 = insertelement <2 x i32> undef, i32 %73, i32 0
  %75 = insertelement <2 x i32> %74, i32 %72, i32 1
  %76 = bitcast <2 x i32> %75 to i64
  %77 = trunc i64 %69 to i32
  %78 = lshr i32 %77, 2
  %79 = and i32 %78, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %76, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %79, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.082.0)
  %80 = add i64 %67, 64
  %81 = inttoptr i64 %80 to i8 addrspace(1)*
  %.ascast.i89.1 = addrspacecast i8 addrspace(1)* %81 to i8 addrspace(4)*
  %82 = ptrtoint i8 addrspace(4)* %.ascast.i89.1 to i64
  %83 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.1)
  %84 = extractvalue { i32, i32 } %83, 0
  %85 = extractvalue { i32, i32 } %83, 1
  %86 = and i32 %84, -64
  %87 = insertelement <2 x i32> undef, i32 %86, i32 0
  %88 = insertelement <2 x i32> %87, i32 %85, i32 1
  %89 = bitcast <2 x i32> %88 to i64
  %90 = trunc i64 %82 to i32
  %91 = lshr i32 %90, 2
  %92 = and i32 %91, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %89, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %92, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.687.0)
  %93 = add i64 %67, 128
  %94 = inttoptr i64 %93 to i8 addrspace(1)*
  %.ascast.i89.2 = addrspacecast i8 addrspace(1)* %94 to i8 addrspace(4)*
  %95 = ptrtoint i8 addrspace(4)* %.ascast.i89.2 to i64
  %96 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.2)
  %97 = extractvalue { i32, i32 } %96, 0
  %98 = extractvalue { i32, i32 } %96, 1
  %99 = and i32 %97, -64
  %100 = insertelement <2 x i32> undef, i32 %99, i32 0
  %101 = insertelement <2 x i32> %100, i32 %98, i32 1
  %102 = bitcast <2 x i32> %101 to i64
  %103 = trunc i64 %95 to i32
  %104 = lshr i32 %103, 2
  %105 = and i32 %104, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %102, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %105, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.10.0)
  %106 = add i64 %67, 192
  %107 = inttoptr i64 %106 to i8 addrspace(1)*
  %.ascast.i89.3 = addrspacecast i8 addrspace(1)* %107 to i8 addrspace(4)*
  %108 = ptrtoint i8 addrspace(4)* %.ascast.i89.3 to i64
  %109 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.3)
  %110 = extractvalue { i32, i32 } %109, 0
  %111 = extractvalue { i32, i32 } %109, 1
  %112 = and i32 %110, -64
  %113 = insertelement <2 x i32> undef, i32 %112, i32 0
  %114 = insertelement <2 x i32> %113, i32 %111, i32 1
  %115 = bitcast <2 x i32> %114 to i64
  %116 = trunc i64 %108 to i32
  %117 = lshr i32 %116, 2
  %118 = and i32 %117, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %115, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %118, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.14.0)
  %119 = mul nsw i32 %.pre-phi151, %4, !spirv.Decorations !416
  %120 = sext i32 %119 to i64
  %121 = shl nsw i64 %120, 2
  %122 = add i64 %63, %121
  %123 = inttoptr i64 %122 to i8 addrspace(1)*
  %.ascast.i89.130 = addrspacecast i8 addrspace(1)* %123 to i8 addrspace(4)*
  %124 = ptrtoint i8 addrspace(4)* %.ascast.i89.130 to i64
  %125 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.130)
  %126 = extractvalue { i32, i32 } %125, 0
  %127 = extractvalue { i32, i32 } %125, 1
  %128 = and i32 %126, -64
  %129 = insertelement <2 x i32> undef, i32 %128, i32 0
  %130 = insertelement <2 x i32> %129, i32 %127, i32 1
  %131 = bitcast <2 x i32> %130 to i64
  %132 = trunc i64 %124 to i32
  %133 = lshr i32 %132, 2
  %134 = and i32 %133, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %131, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %134, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.18.0)
  %135 = add i64 %122, 64
  %136 = inttoptr i64 %135 to i8 addrspace(1)*
  %.ascast.i89.1.1 = addrspacecast i8 addrspace(1)* %136 to i8 addrspace(4)*
  %137 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.1 to i64
  %138 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.1.1)
  %139 = extractvalue { i32, i32 } %138, 0
  %140 = extractvalue { i32, i32 } %138, 1
  %141 = and i32 %139, -64
  %142 = insertelement <2 x i32> undef, i32 %141, i32 0
  %143 = insertelement <2 x i32> %142, i32 %140, i32 1
  %144 = bitcast <2 x i32> %143 to i64
  %145 = trunc i64 %137 to i32
  %146 = lshr i32 %145, 2
  %147 = and i32 %146, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %144, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %147, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.22.0)
  %148 = add i64 %122, 128
  %149 = inttoptr i64 %148 to i8 addrspace(1)*
  %.ascast.i89.2.1 = addrspacecast i8 addrspace(1)* %149 to i8 addrspace(4)*
  %150 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.1 to i64
  %151 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.2.1)
  %152 = extractvalue { i32, i32 } %151, 0
  %153 = extractvalue { i32, i32 } %151, 1
  %154 = and i32 %152, -64
  %155 = insertelement <2 x i32> undef, i32 %154, i32 0
  %156 = insertelement <2 x i32> %155, i32 %153, i32 1
  %157 = bitcast <2 x i32> %156 to i64
  %158 = trunc i64 %150 to i32
  %159 = lshr i32 %158, 2
  %160 = and i32 %159, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %157, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %160, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.26.0)
  %161 = add i64 %122, 192
  %162 = inttoptr i64 %161 to i8 addrspace(1)*
  %.ascast.i89.3.1 = addrspacecast i8 addrspace(1)* %162 to i8 addrspace(4)*
  %163 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.1 to i64
  %164 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.3.1)
  %165 = extractvalue { i32, i32 } %164, 0
  %166 = extractvalue { i32, i32 } %164, 1
  %167 = and i32 %165, -64
  %168 = insertelement <2 x i32> undef, i32 %167, i32 0
  %169 = insertelement <2 x i32> %168, i32 %166, i32 1
  %170 = bitcast <2 x i32> %169 to i64
  %171 = trunc i64 %163 to i32
  %172 = lshr i32 %171, 2
  %173 = and i32 %172, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %170, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %173, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.30.0)
  %174 = mul nsw i32 %.pre-phi153, %4, !spirv.Decorations !416
  %175 = sext i32 %174 to i64
  %176 = shl nsw i64 %175, 2
  %177 = add i64 %63, %176
  %178 = inttoptr i64 %177 to i8 addrspace(1)*
  %.ascast.i89.231 = addrspacecast i8 addrspace(1)* %178 to i8 addrspace(4)*
  %179 = ptrtoint i8 addrspace(4)* %.ascast.i89.231 to i64
  %180 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.231)
  %181 = extractvalue { i32, i32 } %180, 0
  %182 = extractvalue { i32, i32 } %180, 1
  %183 = and i32 %181, -64
  %184 = insertelement <2 x i32> undef, i32 %183, i32 0
  %185 = insertelement <2 x i32> %184, i32 %182, i32 1
  %186 = bitcast <2 x i32> %185 to i64
  %187 = trunc i64 %179 to i32
  %188 = lshr i32 %187, 2
  %189 = and i32 %188, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %186, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %189, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.34.0)
  %190 = add i64 %177, 64
  %191 = inttoptr i64 %190 to i8 addrspace(1)*
  %.ascast.i89.1.2 = addrspacecast i8 addrspace(1)* %191 to i8 addrspace(4)*
  %192 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.2 to i64
  %193 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.1.2)
  %194 = extractvalue { i32, i32 } %193, 0
  %195 = extractvalue { i32, i32 } %193, 1
  %196 = and i32 %194, -64
  %197 = insertelement <2 x i32> undef, i32 %196, i32 0
  %198 = insertelement <2 x i32> %197, i32 %195, i32 1
  %199 = bitcast <2 x i32> %198 to i64
  %200 = trunc i64 %192 to i32
  %201 = lshr i32 %200, 2
  %202 = and i32 %201, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %199, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %202, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.38.0)
  %203 = add i64 %177, 128
  %204 = inttoptr i64 %203 to i8 addrspace(1)*
  %.ascast.i89.2.2 = addrspacecast i8 addrspace(1)* %204 to i8 addrspace(4)*
  %205 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.2 to i64
  %206 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.2.2)
  %207 = extractvalue { i32, i32 } %206, 0
  %208 = extractvalue { i32, i32 } %206, 1
  %209 = and i32 %207, -64
  %210 = insertelement <2 x i32> undef, i32 %209, i32 0
  %211 = insertelement <2 x i32> %210, i32 %208, i32 1
  %212 = bitcast <2 x i32> %211 to i64
  %213 = trunc i64 %205 to i32
  %214 = lshr i32 %213, 2
  %215 = and i32 %214, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %212, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %215, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.42.0)
  %216 = add i64 %177, 192
  %217 = inttoptr i64 %216 to i8 addrspace(1)*
  %.ascast.i89.3.2 = addrspacecast i8 addrspace(1)* %217 to i8 addrspace(4)*
  %218 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.2 to i64
  %219 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.3.2)
  %220 = extractvalue { i32, i32 } %219, 0
  %221 = extractvalue { i32, i32 } %219, 1
  %222 = and i32 %220, -64
  %223 = insertelement <2 x i32> undef, i32 %222, i32 0
  %224 = insertelement <2 x i32> %223, i32 %221, i32 1
  %225 = bitcast <2 x i32> %224 to i64
  %226 = trunc i64 %218 to i32
  %227 = lshr i32 %226, 2
  %228 = and i32 %227, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %225, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %228, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.46.0)
  %229 = mul nsw i32 %.pre-phi155, %4, !spirv.Decorations !416
  %230 = sext i32 %229 to i64
  %231 = shl nsw i64 %230, 2
  %232 = add i64 %63, %231
  %233 = inttoptr i64 %232 to i8 addrspace(1)*
  %.ascast.i89.332 = addrspacecast i8 addrspace(1)* %233 to i8 addrspace(4)*
  %234 = ptrtoint i8 addrspace(4)* %.ascast.i89.332 to i64
  %235 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.332)
  %236 = extractvalue { i32, i32 } %235, 0
  %237 = extractvalue { i32, i32 } %235, 1
  %238 = and i32 %236, -64
  %239 = insertelement <2 x i32> undef, i32 %238, i32 0
  %240 = insertelement <2 x i32> %239, i32 %237, i32 1
  %241 = bitcast <2 x i32> %240 to i64
  %242 = trunc i64 %234 to i32
  %243 = lshr i32 %242, 2
  %244 = and i32 %243, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %241, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %244, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.50.0)
  %245 = add i64 %232, 64
  %246 = inttoptr i64 %245 to i8 addrspace(1)*
  %.ascast.i89.1.3 = addrspacecast i8 addrspace(1)* %246 to i8 addrspace(4)*
  %247 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.3 to i64
  %248 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.1.3)
  %249 = extractvalue { i32, i32 } %248, 0
  %250 = extractvalue { i32, i32 } %248, 1
  %251 = and i32 %249, -64
  %252 = insertelement <2 x i32> undef, i32 %251, i32 0
  %253 = insertelement <2 x i32> %252, i32 %250, i32 1
  %254 = bitcast <2 x i32> %253 to i64
  %255 = trunc i64 %247 to i32
  %256 = lshr i32 %255, 2
  %257 = and i32 %256, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %254, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %257, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.54.0)
  %258 = add i64 %232, 128
  %259 = inttoptr i64 %258 to i8 addrspace(1)*
  %.ascast.i89.2.3 = addrspacecast i8 addrspace(1)* %259 to i8 addrspace(4)*
  %260 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.3 to i64
  %261 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.2.3)
  %262 = extractvalue { i32, i32 } %261, 0
  %263 = extractvalue { i32, i32 } %261, 1
  %264 = and i32 %262, -64
  %265 = insertelement <2 x i32> undef, i32 %264, i32 0
  %266 = insertelement <2 x i32> %265, i32 %263, i32 1
  %267 = bitcast <2 x i32> %266 to i64
  %268 = trunc i64 %260 to i32
  %269 = lshr i32 %268, 2
  %270 = and i32 %269, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %267, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %270, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.58.0)
  %271 = add i64 %232, 192
  %272 = inttoptr i64 %271 to i8 addrspace(1)*
  %.ascast.i89.3.3 = addrspacecast i8 addrspace(1)* %272 to i8 addrspace(4)*
  %273 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.3 to i64
  %274 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.3.3)
  %275 = extractvalue { i32, i32 } %274, 0
  %276 = extractvalue { i32, i32 } %274, 1
  %277 = and i32 %275, -64
  %278 = insertelement <2 x i32> undef, i32 %277, i32 0
  %279 = insertelement <2 x i32> %278, i32 %276, i32 1
  %280 = bitcast <2 x i32> %279 to i64
  %281 = trunc i64 %273 to i32
  %282 = lshr i32 %281, 2
  %283 = and i32 %282, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %280, i32 %.pre-phi149, i32 7, i32 %.pre-phi149, i32 %283, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.62.0)
  ret void

.preheader.preheader:                             ; preds = %.preheader.preheader..preheader.preheader_crit_edge, %.lr.ph
  %284 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %548, %.preheader.preheader..preheader.preheader_crit_edge ]
  %285 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %550, %.preheader.preheader..preheader.preheader_crit_edge ]
  %286 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %552, %.preheader.preheader..preheader.preheader_crit_edge ]
  %287 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %554, %.preheader.preheader..preheader.preheader_crit_edge ]
  %288 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %556, %.preheader.preheader..preheader.preheader_crit_edge ]
  %289 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %558, %.preheader.preheader..preheader.preheader_crit_edge ]
  %290 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %560, %.preheader.preheader..preheader.preheader_crit_edge ]
  %291 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %562, %.preheader.preheader..preheader.preheader_crit_edge ]
  %292 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %564, %.preheader.preheader..preheader.preheader_crit_edge ]
  %293 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %566, %.preheader.preheader..preheader.preheader_crit_edge ]
  %294 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %568, %.preheader.preheader..preheader.preheader_crit_edge ]
  %295 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %570, %.preheader.preheader..preheader.preheader_crit_edge ]
  %296 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %572, %.preheader.preheader..preheader.preheader_crit_edge ]
  %297 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %574, %.preheader.preheader..preheader.preheader_crit_edge ]
  %298 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %576, %.preheader.preheader..preheader.preheader_crit_edge ]
  %299 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %578, %.preheader.preheader..preheader.preheader_crit_edge ]
  %300 = phi i32 [ 0, %.lr.ph ], [ %301, %.preheader.preheader..preheader.preheader_crit_edge ]
  %301 = add nuw nsw i32 %300, 32, !spirv.Decorations !418
  %302 = shl nuw i32 %300, 1
  %303 = zext i32 %302 to i64
  %304 = add i64 %37, %303
  %305 = add i64 %304, %38
  %306 = inttoptr i64 %305 to i8 addrspace(1)*
  %.ascast.i = addrspacecast i8 addrspace(1)* %306 to i8 addrspace(4)*
  %307 = ptrtoint i8 addrspace(4)* %.ascast.i to i64
  %308 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i)
  %309 = extractvalue { i32, i32 } %308, 0
  %310 = extractvalue { i32, i32 } %308, 1
  %311 = and i32 %309, -64
  %312 = insertelement <2 x i32> undef, i32 %311, i32 0
  %313 = insertelement <2 x i32> %312, i32 %310, i32 1
  %314 = bitcast <2 x i32> %313 to i64
  %315 = trunc i64 %307 to i32
  %316 = lshr i32 %315, 1
  %317 = and i32 %316, 31
  %318 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %314, i32 %21, i32 7, i32 %21, i32 %317, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %319 = add i64 %305, 32
  %320 = inttoptr i64 %319 to i8 addrspace(1)*
  %.ascast.i86 = addrspacecast i8 addrspace(1)* %320 to i8 addrspace(4)*
  %321 = ptrtoint i8 addrspace(4)* %.ascast.i86 to i64
  %322 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86)
  %323 = extractvalue { i32, i32 } %322, 0
  %324 = extractvalue { i32, i32 } %322, 1
  %325 = and i32 %323, -64
  %326 = insertelement <2 x i32> undef, i32 %325, i32 0
  %327 = insertelement <2 x i32> %326, i32 %324, i32 1
  %328 = bitcast <2 x i32> %327 to i64
  %329 = trunc i64 %321 to i32
  %330 = lshr i32 %329, 1
  %331 = and i32 %330, 31
  %332 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %328, i32 %21, i32 7, i32 %21, i32 %331, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %333 = add i64 %304, %39
  %334 = inttoptr i64 %333 to i8 addrspace(1)*
  %.ascast.i.1 = addrspacecast i8 addrspace(1)* %334 to i8 addrspace(4)*
  %335 = ptrtoint i8 addrspace(4)* %.ascast.i.1 to i64
  %336 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.1)
  %337 = extractvalue { i32, i32 } %336, 0
  %338 = extractvalue { i32, i32 } %336, 1
  %339 = and i32 %337, -64
  %340 = insertelement <2 x i32> undef, i32 %339, i32 0
  %341 = insertelement <2 x i32> %340, i32 %338, i32 1
  %342 = bitcast <2 x i32> %341 to i64
  %343 = trunc i64 %335 to i32
  %344 = lshr i32 %343, 1
  %345 = and i32 %344, 31
  %346 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %342, i32 %21, i32 7, i32 %21, i32 %345, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %347 = add i64 %333, 32
  %348 = inttoptr i64 %347 to i8 addrspace(1)*
  %.ascast.i86.1 = addrspacecast i8 addrspace(1)* %348 to i8 addrspace(4)*
  %349 = ptrtoint i8 addrspace(4)* %.ascast.i86.1 to i64
  %350 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86.1)
  %351 = extractvalue { i32, i32 } %350, 0
  %352 = extractvalue { i32, i32 } %350, 1
  %353 = and i32 %351, -64
  %354 = insertelement <2 x i32> undef, i32 %353, i32 0
  %355 = insertelement <2 x i32> %354, i32 %352, i32 1
  %356 = bitcast <2 x i32> %355 to i64
  %357 = trunc i64 %349 to i32
  %358 = lshr i32 %357, 1
  %359 = and i32 %358, 31
  %360 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %356, i32 %21, i32 7, i32 %21, i32 %359, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %361 = add i64 %304, %40
  %362 = inttoptr i64 %361 to i8 addrspace(1)*
  %.ascast.i.2 = addrspacecast i8 addrspace(1)* %362 to i8 addrspace(4)*
  %363 = ptrtoint i8 addrspace(4)* %.ascast.i.2 to i64
  %364 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.2)
  %365 = extractvalue { i32, i32 } %364, 0
  %366 = extractvalue { i32, i32 } %364, 1
  %367 = and i32 %365, -64
  %368 = insertelement <2 x i32> undef, i32 %367, i32 0
  %369 = insertelement <2 x i32> %368, i32 %366, i32 1
  %370 = bitcast <2 x i32> %369 to i64
  %371 = trunc i64 %363 to i32
  %372 = lshr i32 %371, 1
  %373 = and i32 %372, 31
  %374 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %370, i32 %21, i32 7, i32 %21, i32 %373, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %375 = add i64 %361, 32
  %376 = inttoptr i64 %375 to i8 addrspace(1)*
  %.ascast.i86.2 = addrspacecast i8 addrspace(1)* %376 to i8 addrspace(4)*
  %377 = ptrtoint i8 addrspace(4)* %.ascast.i86.2 to i64
  %378 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86.2)
  %379 = extractvalue { i32, i32 } %378, 0
  %380 = extractvalue { i32, i32 } %378, 1
  %381 = and i32 %379, -64
  %382 = insertelement <2 x i32> undef, i32 %381, i32 0
  %383 = insertelement <2 x i32> %382, i32 %380, i32 1
  %384 = bitcast <2 x i32> %383 to i64
  %385 = trunc i64 %377 to i32
  %386 = lshr i32 %385, 1
  %387 = and i32 %386, 31
  %388 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %384, i32 %21, i32 7, i32 %21, i32 %387, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %389 = add i64 %304, %41
  %390 = inttoptr i64 %389 to i8 addrspace(1)*
  %.ascast.i.3 = addrspacecast i8 addrspace(1)* %390 to i8 addrspace(4)*
  %391 = ptrtoint i8 addrspace(4)* %.ascast.i.3 to i64
  %392 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.3)
  %393 = extractvalue { i32, i32 } %392, 0
  %394 = extractvalue { i32, i32 } %392, 1
  %395 = and i32 %393, -64
  %396 = insertelement <2 x i32> undef, i32 %395, i32 0
  %397 = insertelement <2 x i32> %396, i32 %394, i32 1
  %398 = bitcast <2 x i32> %397 to i64
  %399 = trunc i64 %391 to i32
  %400 = lshr i32 %399, 1
  %401 = and i32 %400, 31
  %402 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %398, i32 %21, i32 7, i32 %21, i32 %401, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %403 = add i64 %389, 32
  %404 = inttoptr i64 %403 to i8 addrspace(1)*
  %.ascast.i86.3 = addrspacecast i8 addrspace(1)* %404 to i8 addrspace(4)*
  %405 = ptrtoint i8 addrspace(4)* %.ascast.i86.3 to i64
  %406 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86.3)
  %407 = extractvalue { i32, i32 } %406, 0
  %408 = extractvalue { i32, i32 } %406, 1
  %409 = and i32 %407, -64
  %410 = insertelement <2 x i32> undef, i32 %409, i32 0
  %411 = insertelement <2 x i32> %410, i32 %408, i32 1
  %412 = bitcast <2 x i32> %411 to i64
  %413 = trunc i64 %405 to i32
  %414 = lshr i32 %413, 1
  %415 = and i32 %414, 31
  %416 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %412, i32 %21, i32 7, i32 %21, i32 %415, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %417 = lshr exact i32 %300, 1
  %418 = call { i32, i32 } @llvm.genx.GenISA.mul.pair(i32 %417, i32 0, i32 %17, i32 %18)
  %419 = extractvalue { i32, i32 } %418, 0
  %420 = extractvalue { i32, i32 } %418, 1
  %421 = insertelement <2 x i32> undef, i32 %419, i32 0
  %422 = insertelement <2 x i32> %421, i32 %420, i32 1
  %423 = bitcast <2 x i32> %422 to i64
  %424 = shl nsw i64 %423, 1
  %425 = add i64 %424, %42
  %426 = or i32 %417, 8
  %427 = call { i32, i32 } @llvm.genx.GenISA.mul.pair(i32 %426, i32 0, i32 %17, i32 %18)
  %428 = extractvalue { i32, i32 } %427, 0
  %429 = extractvalue { i32, i32 } %427, 1
  %430 = insertelement <2 x i32> undef, i32 %428, i32 0
  %431 = insertelement <2 x i32> %430, i32 %429, i32 1
  %432 = bitcast <2 x i32> %431 to i64
  %433 = shl nsw i64 %432, 1
  %434 = add i64 %433, %42
  %435 = add i64 %425, %43
  %436 = inttoptr i64 %435 to i8 addrspace(1)*
  %.ascast.i87 = addrspacecast i8 addrspace(1)* %436 to i8 addrspace(4)*
  %437 = ptrtoint i8 addrspace(4)* %.ascast.i87 to i64
  %438 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87)
  %439 = extractvalue { i32, i32 } %438, 0
  %440 = extractvalue { i32, i32 } %438, 1
  %441 = and i32 %439, -64
  %442 = insertelement <2 x i32> undef, i32 %441, i32 0
  %443 = insertelement <2 x i32> %442, i32 %440, i32 1
  %444 = bitcast <2 x i32> %443 to i64
  %445 = trunc i64 %437 to i32
  %446 = lshr i32 %445, 2
  %447 = and i32 %446, 15
  %448 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %444, i32 %24, i32 7, i32 %24, i32 %447, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %449 = add i64 %434, %43
  %450 = inttoptr i64 %449 to i8 addrspace(1)*
  %.ascast.i88 = addrspacecast i8 addrspace(1)* %450 to i8 addrspace(4)*
  %451 = ptrtoint i8 addrspace(4)* %.ascast.i88 to i64
  %452 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88)
  %453 = extractvalue { i32, i32 } %452, 0
  %454 = extractvalue { i32, i32 } %452, 1
  %455 = and i32 %453, -64
  %456 = insertelement <2 x i32> undef, i32 %455, i32 0
  %457 = insertelement <2 x i32> %456, i32 %454, i32 1
  %458 = bitcast <2 x i32> %457 to i64
  %459 = trunc i64 %451 to i32
  %460 = lshr i32 %459, 2
  %461 = and i32 %460, 15
  %462 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %458, i32 %24, i32 7, i32 %24, i32 %461, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %463 = add i64 %435, 64
  %464 = inttoptr i64 %463 to i8 addrspace(1)*
  %.ascast.i87.1 = addrspacecast i8 addrspace(1)* %464 to i8 addrspace(4)*
  %465 = ptrtoint i8 addrspace(4)* %.ascast.i87.1 to i64
  %466 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.1)
  %467 = extractvalue { i32, i32 } %466, 0
  %468 = extractvalue { i32, i32 } %466, 1
  %469 = and i32 %467, -64
  %470 = insertelement <2 x i32> undef, i32 %469, i32 0
  %471 = insertelement <2 x i32> %470, i32 %468, i32 1
  %472 = bitcast <2 x i32> %471 to i64
  %473 = trunc i64 %465 to i32
  %474 = lshr i32 %473, 2
  %475 = and i32 %474, 15
  %476 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %472, i32 %24, i32 7, i32 %24, i32 %475, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %477 = add i64 %449, 64
  %478 = inttoptr i64 %477 to i8 addrspace(1)*
  %.ascast.i88.1 = addrspacecast i8 addrspace(1)* %478 to i8 addrspace(4)*
  %479 = ptrtoint i8 addrspace(4)* %.ascast.i88.1 to i64
  %480 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.1)
  %481 = extractvalue { i32, i32 } %480, 0
  %482 = extractvalue { i32, i32 } %480, 1
  %483 = and i32 %481, -64
  %484 = insertelement <2 x i32> undef, i32 %483, i32 0
  %485 = insertelement <2 x i32> %484, i32 %482, i32 1
  %486 = bitcast <2 x i32> %485 to i64
  %487 = trunc i64 %479 to i32
  %488 = lshr i32 %487, 2
  %489 = and i32 %488, 15
  %490 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %486, i32 %24, i32 7, i32 %24, i32 %489, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %491 = add i64 %435, 128
  %492 = inttoptr i64 %491 to i8 addrspace(1)*
  %.ascast.i87.2 = addrspacecast i8 addrspace(1)* %492 to i8 addrspace(4)*
  %493 = ptrtoint i8 addrspace(4)* %.ascast.i87.2 to i64
  %494 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.2)
  %495 = extractvalue { i32, i32 } %494, 0
  %496 = extractvalue { i32, i32 } %494, 1
  %497 = and i32 %495, -64
  %498 = insertelement <2 x i32> undef, i32 %497, i32 0
  %499 = insertelement <2 x i32> %498, i32 %496, i32 1
  %500 = bitcast <2 x i32> %499 to i64
  %501 = trunc i64 %493 to i32
  %502 = lshr i32 %501, 2
  %503 = and i32 %502, 15
  %504 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %500, i32 %24, i32 7, i32 %24, i32 %503, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %505 = add i64 %449, 128
  %506 = inttoptr i64 %505 to i8 addrspace(1)*
  %.ascast.i88.2 = addrspacecast i8 addrspace(1)* %506 to i8 addrspace(4)*
  %507 = ptrtoint i8 addrspace(4)* %.ascast.i88.2 to i64
  %508 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.2)
  %509 = extractvalue { i32, i32 } %508, 0
  %510 = extractvalue { i32, i32 } %508, 1
  %511 = and i32 %509, -64
  %512 = insertelement <2 x i32> undef, i32 %511, i32 0
  %513 = insertelement <2 x i32> %512, i32 %510, i32 1
  %514 = bitcast <2 x i32> %513 to i64
  %515 = trunc i64 %507 to i32
  %516 = lshr i32 %515, 2
  %517 = and i32 %516, 15
  %518 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %514, i32 %24, i32 7, i32 %24, i32 %517, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %519 = add i64 %435, 192
  %520 = inttoptr i64 %519 to i8 addrspace(1)*
  %.ascast.i87.3 = addrspacecast i8 addrspace(1)* %520 to i8 addrspace(4)*
  %521 = ptrtoint i8 addrspace(4)* %.ascast.i87.3 to i64
  %522 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.3)
  %523 = extractvalue { i32, i32 } %522, 0
  %524 = extractvalue { i32, i32 } %522, 1
  %525 = and i32 %523, -64
  %526 = insertelement <2 x i32> undef, i32 %525, i32 0
  %527 = insertelement <2 x i32> %526, i32 %524, i32 1
  %528 = bitcast <2 x i32> %527 to i64
  %529 = trunc i64 %521 to i32
  %530 = lshr i32 %529, 2
  %531 = and i32 %530, 15
  %532 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %528, i32 %24, i32 7, i32 %24, i32 %531, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %533 = add i64 %449, 192
  %534 = inttoptr i64 %533 to i8 addrspace(1)*
  %.ascast.i88.3 = addrspacecast i8 addrspace(1)* %534 to i8 addrspace(4)*
  %535 = ptrtoint i8 addrspace(4)* %.ascast.i88.3 to i64
  %536 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.3)
  %537 = extractvalue { i32, i32 } %536, 0
  %538 = extractvalue { i32, i32 } %536, 1
  %539 = and i32 %537, -64
  %540 = insertelement <2 x i32> undef, i32 %539, i32 0
  %541 = insertelement <2 x i32> %540, i32 %538, i32 1
  %542 = bitcast <2 x i32> %541 to i64
  %543 = trunc i64 %535 to i32
  %544 = lshr i32 %543, 2
  %545 = and i32 %544, 15
  %546 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %542, i32 %24, i32 7, i32 %24, i32 %545, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %547 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %284, <8 x i16> %318, <8 x i32> %448, i32 11, i32 11, i32 8, i32 8, i1 false)
  %548 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %547, <8 x i16> %332, <8 x i32> %462, i32 11, i32 11, i32 8, i32 8, i1 false)
  %549 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %285, <8 x i16> %318, <8 x i32> %476, i32 11, i32 11, i32 8, i32 8, i1 false)
  %550 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %549, <8 x i16> %332, <8 x i32> %490, i32 11, i32 11, i32 8, i32 8, i1 false)
  %551 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %286, <8 x i16> %318, <8 x i32> %504, i32 11, i32 11, i32 8, i32 8, i1 false)
  %552 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %551, <8 x i16> %332, <8 x i32> %518, i32 11, i32 11, i32 8, i32 8, i1 false)
  %553 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %287, <8 x i16> %318, <8 x i32> %532, i32 11, i32 11, i32 8, i32 8, i1 false)
  %554 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %553, <8 x i16> %332, <8 x i32> %546, i32 11, i32 11, i32 8, i32 8, i1 false)
  %555 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %288, <8 x i16> %346, <8 x i32> %448, i32 11, i32 11, i32 8, i32 8, i1 false)
  %556 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %555, <8 x i16> %360, <8 x i32> %462, i32 11, i32 11, i32 8, i32 8, i1 false)
  %557 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %289, <8 x i16> %346, <8 x i32> %476, i32 11, i32 11, i32 8, i32 8, i1 false)
  %558 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %557, <8 x i16> %360, <8 x i32> %490, i32 11, i32 11, i32 8, i32 8, i1 false)
  %559 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %290, <8 x i16> %346, <8 x i32> %504, i32 11, i32 11, i32 8, i32 8, i1 false)
  %560 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %559, <8 x i16> %360, <8 x i32> %518, i32 11, i32 11, i32 8, i32 8, i1 false)
  %561 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %291, <8 x i16> %346, <8 x i32> %532, i32 11, i32 11, i32 8, i32 8, i1 false)
  %562 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %561, <8 x i16> %360, <8 x i32> %546, i32 11, i32 11, i32 8, i32 8, i1 false)
  %563 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %292, <8 x i16> %374, <8 x i32> %448, i32 11, i32 11, i32 8, i32 8, i1 false)
  %564 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %563, <8 x i16> %388, <8 x i32> %462, i32 11, i32 11, i32 8, i32 8, i1 false)
  %565 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %293, <8 x i16> %374, <8 x i32> %476, i32 11, i32 11, i32 8, i32 8, i1 false)
  %566 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %565, <8 x i16> %388, <8 x i32> %490, i32 11, i32 11, i32 8, i32 8, i1 false)
  %567 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %294, <8 x i16> %374, <8 x i32> %504, i32 11, i32 11, i32 8, i32 8, i1 false)
  %568 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %567, <8 x i16> %388, <8 x i32> %518, i32 11, i32 11, i32 8, i32 8, i1 false)
  %569 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %295, <8 x i16> %374, <8 x i32> %532, i32 11, i32 11, i32 8, i32 8, i1 false)
  %570 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %569, <8 x i16> %388, <8 x i32> %546, i32 11, i32 11, i32 8, i32 8, i1 false)
  %571 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %296, <8 x i16> %402, <8 x i32> %448, i32 11, i32 11, i32 8, i32 8, i1 false)
  %572 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %571, <8 x i16> %416, <8 x i32> %462, i32 11, i32 11, i32 8, i32 8, i1 false)
  %573 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %297, <8 x i16> %402, <8 x i32> %476, i32 11, i32 11, i32 8, i32 8, i1 false)
  %574 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %573, <8 x i16> %416, <8 x i32> %490, i32 11, i32 11, i32 8, i32 8, i1 false)
  %575 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %298, <8 x i16> %402, <8 x i32> %504, i32 11, i32 11, i32 8, i32 8, i1 false)
  %576 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %575, <8 x i16> %416, <8 x i32> %518, i32 11, i32 11, i32 8, i32 8, i1 false)
  %577 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %299, <8 x i16> %402, <8 x i32> %532, i32 11, i32 11, i32 8, i32 8, i1 false)
  %578 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %577, <8 x i16> %416, <8 x i32> %546, i32 11, i32 11, i32 8, i32 8, i1 false)
  %579 = icmp slt i32 %301, %3
  br i1 %579, label %.preheader.preheader..preheader.preheader_crit_edge, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit

.preheader.preheader..preheader.preheader_crit_edge: ; preds = %.preheader.preheader
  br label %.preheader.preheader
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

; Function Desc: 
; Output: 
; Arg 0: 
; Function Attrs: nounwind readnone willreturn
declare { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)*) #7

; Function Desc: 
; Output: 
; Arg 0: 
; Arg 1: 
; Arg 2: 
; Arg 3: 
; Function Attrs: nounwind readnone willreturn
declare { i32, i32 } @llvm.genx.GenISA.mul.pair(i32, i32, i32, i32) #7

attributes #0 = { convergent nounwind null_pointer_is_valid "less-precise-fpmad"="true" }
attributes #1 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { convergent nounwind readnone willreturn }
attributes #4 = { convergent "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #5 = { convergent mustprogress nofree nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }

!spirv.MemoryModel = !{!0}
!spirv.Source = !{!1}
!spirv.Generator = !{!2}
!igc.functions = !{!3}
!IGCMetadata = !{!24}
!opencl.ocl.version = !{!413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413}
!opencl.spir.version = !{!413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413, !413}
!llvm.ident = !{!414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414}
!llvm.module.flags = !{!415}

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
!24 = !{!"ModuleMD", !25, !26, !128, !246, !277, !294, !314, !324, !326, !327, !342, !343, !344, !345, !349, !350, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !369, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !195, !387, !390, !391, !393, !395, !398, !399, !400, !402, !403, !404, !409, !410, !411, !412}
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
!387 = !{!"PrivateMemoryPerFG", !388, !389}
!388 = !{!"PrivateMemoryPerFGMap[0]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ4mainENKUlvE_clEvENKUlRN4sycl3_V17handlerEE_clES3_EUlNS1_7nd_itemILi2EEEE_}
!389 = !{!"PrivateMemoryPerFGValue[0]", i32 0}
!390 = !{!"m_OptsToDisable"}
!391 = !{!"capabilities", !392}
!392 = !{!"globalVariableDecorationsINTEL", i1 false}
!393 = !{!"extensions", !394}
!394 = !{!"spvINTELBindlessImages", i1 false}
!395 = !{!"m_ShaderResourceViewMcsMask", !396, !397}
!396 = !{!"m_ShaderResourceViewMcsMaskVec[0]", i64 0}
!397 = !{!"m_ShaderResourceViewMcsMaskVec[1]", i64 0}
!398 = !{!"computedDepthMode", i32 0}
!399 = !{!"isHDCFastClearShader", i1 false}
!400 = !{!"argRegisterReservations", !401}
!401 = !{!"argRegisterReservationsVec[0]", i32 0}
!402 = !{!"SIMD16_SpillThreshold", i8 0}
!403 = !{!"SIMD32_SpillThreshold", i8 0}
!404 = !{!"m_CacheControlOption", !405, !406, !407, !408}
!405 = !{!"LscLoadCacheControlOverride", i8 0}
!406 = !{!"LscStoreCacheControlOverride", i8 0}
!407 = !{!"TgmLoadCacheControlOverride", i8 0}
!408 = !{!"TgmStoreCacheControlOverride", i8 0}
!409 = !{!"ModuleUsesBindless", i1 false}
!410 = !{!"predicationMap"}
!411 = !{!"lifeTimeStartMap"}
!412 = !{!"HitGroups"}
!413 = !{i32 2, i32 0}
!414 = !{!"clang version 15.0.7"}
!415 = !{i32 1, !"wchar_size", i32 4}
!416 = !{!417}
!417 = !{i32 4469}
!418 = !{!417, !419}
!419 = !{i32 4470}
