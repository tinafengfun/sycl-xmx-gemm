; ------------------------------------------------
; OCL_asm7b1f6d582d6091ee_push_analysis.ll
; ------------------------------------------------
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "spir64-unknown-unknown"

; Function Attrs: convergent nounwind null_pointer_is_valid
define spir_kernel void @_ZTSZZZ16bench_v1_with_pfRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
.preheader1.preheader:
  %5 = extractelement <8 x i32> %r0, i32 1
  %6 = extractelement <8 x i32> %r0, i32 6
  %7 = bitcast <8 x i32> %r0 to <32 x i8>
  %8 = extractelement <32 x i8> %7, i32 8
  %localThreadId5 = zext i8 %8 to i32
  %9 = shl nsw i32 %6, 6, !spirv.Decorations !427
  %10 = shl nuw nsw i32 %localThreadId5, 4
  %11 = and i32 %10, 4064
  %12 = add nuw nsw i32 %9, %11, !spirv.Decorations !427
  %13 = shl nsw i32 %5, 7, !spirv.Decorations !427
  %14 = shl nuw nsw i32 %localThreadId5, 6
  %15 = and i32 %14, 64
  %16 = or i32 %13, %15
  %17 = mul nsw i32 %12, %3
  %18 = sext i32 %17 to i64
  %19 = ptrtoint i8 addrspace(1)* %0 to i64
  %20 = shl nsw i64 %18, 1
  %21 = add i64 %20, %19
  %22 = shl nsw i32 %4, 1, !spirv.Decorations !427
  %23 = ashr i32 %22, 31
  %24 = shl nuw i32 %16, 1
  %25 = zext i32 %24 to i64
  %26 = ptrtoint i8 addrspace(1)* %1 to i64
  %27 = shl nuw nsw i64 %25, 1
  %28 = add i64 %27, %26
  %29 = icmp sgt i32 %3, 0
  br i1 %29, label %.lr.ph, label %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge

.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge: ; preds = %.preheader1.preheader
  %.pre = shl i32 %4, 2
  %.pre154 = add i32 %.pre, -1
  %.pre156 = or i32 %12, 8
  %.pre158 = or i32 %12, 16
  %.pre160 = or i32 %12, 24
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit

.lr.ph:                                           ; preds = %.preheader1.preheader
  %30 = shl i32 %3, 1
  %31 = add i32 %30, -1
  %32 = shl i32 %4, 2
  %33 = add i32 %32, -1
  %34 = or i32 %12, 8
  %35 = mul nsw i32 %34, %3
  %36 = sext i32 %35 to i64
  %37 = or i32 %12, 16
  %38 = mul nsw i32 %37, %3
  %39 = sext i32 %38 to i64
  %40 = or i32 %12, 24
  %41 = mul nsw i32 %40, %3
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %36, 1
  %44 = shl nsw i64 %39, 1
  %45 = shl nsw i64 %42, 1
  br label %286

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit: ; preds = %.preheader.preheader
  %46 = bitcast <8 x float> %591 to <8 x i32>
  %47 = bitcast <8 x float> %593 to <8 x i32>
  %48 = bitcast <8 x float> %595 to <8 x i32>
  %49 = bitcast <8 x float> %597 to <8 x i32>
  %50 = bitcast <8 x float> %599 to <8 x i32>
  %51 = bitcast <8 x float> %601 to <8 x i32>
  %52 = bitcast <8 x float> %603 to <8 x i32>
  %53 = bitcast <8 x float> %605 to <8 x i32>
  %54 = bitcast <8 x float> %607 to <8 x i32>
  %55 = bitcast <8 x float> %609 to <8 x i32>
  %56 = bitcast <8 x float> %611 to <8 x i32>
  %57 = bitcast <8 x float> %613 to <8 x i32>
  %58 = bitcast <8 x float> %615 to <8 x i32>
  %59 = bitcast <8 x float> %617 to <8 x i32>
  %60 = bitcast <8 x float> %619 to <8 x i32>
  %61 = bitcast <8 x float> %621 to <8 x i32>
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit: ; preds = %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge
  %.pre-phi161 = phi i32 [ %.pre160, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %40, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.pre-phi159 = phi i32 [ %.pre158, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %37, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.pre-phi157 = phi i32 [ %.pre156, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %34, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.pre-phi155 = phi i32 [ %.pre154, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %33, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.088.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %46, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.693.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %47, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.10.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %48, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.14.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %49, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.18.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %50, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.22.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %51, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.26.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %52, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.30.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %53, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.34.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %54, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.38.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %55, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.42.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %56, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.46.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %57, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.50.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %58, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.54.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %59, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.58.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %60, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.62.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %61, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %62 = zext i32 %16 to i64
  %63 = ptrtoint i8 addrspace(1)* %2 to i64
  %64 = shl nuw nsw i64 %62, 2
  %65 = add i64 %64, %63
  %66 = mul nsw i32 %12, %4, !spirv.Decorations !427
  %67 = sext i32 %66 to i64
  %68 = shl nsw i64 %67, 2
  %69 = add i64 %65, %68
  %70 = inttoptr i64 %69 to i8 addrspace(1)*
  %.ascast.i90 = addrspacecast i8 addrspace(1)* %70 to i8 addrspace(4)*
  %71 = ptrtoint i8 addrspace(4)* %.ascast.i90 to i64
  %72 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90)
  %73 = extractvalue { i32, i32 } %72, 0
  %74 = extractvalue { i32, i32 } %72, 1
  %75 = and i32 %73, -64
  %76 = insertelement <2 x i32> undef, i32 %75, i32 0
  %77 = insertelement <2 x i32> %76, i32 %74, i32 1
  %78 = bitcast <2 x i32> %77 to i64
  %79 = trunc i64 %71 to i32
  %80 = lshr i32 %79, 2
  %81 = and i32 %80, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %78, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %81, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.088.0)
  %82 = add i64 %69, 64
  %83 = inttoptr i64 %82 to i8 addrspace(1)*
  %.ascast.i90.1 = addrspacecast i8 addrspace(1)* %83 to i8 addrspace(4)*
  %84 = ptrtoint i8 addrspace(4)* %.ascast.i90.1 to i64
  %85 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.1)
  %86 = extractvalue { i32, i32 } %85, 0
  %87 = extractvalue { i32, i32 } %85, 1
  %88 = and i32 %86, -64
  %89 = insertelement <2 x i32> undef, i32 %88, i32 0
  %90 = insertelement <2 x i32> %89, i32 %87, i32 1
  %91 = bitcast <2 x i32> %90 to i64
  %92 = trunc i64 %84 to i32
  %93 = lshr i32 %92, 2
  %94 = and i32 %93, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %91, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %94, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.693.0)
  %95 = add i64 %69, 128
  %96 = inttoptr i64 %95 to i8 addrspace(1)*
  %.ascast.i90.2 = addrspacecast i8 addrspace(1)* %96 to i8 addrspace(4)*
  %97 = ptrtoint i8 addrspace(4)* %.ascast.i90.2 to i64
  %98 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.2)
  %99 = extractvalue { i32, i32 } %98, 0
  %100 = extractvalue { i32, i32 } %98, 1
  %101 = and i32 %99, -64
  %102 = insertelement <2 x i32> undef, i32 %101, i32 0
  %103 = insertelement <2 x i32> %102, i32 %100, i32 1
  %104 = bitcast <2 x i32> %103 to i64
  %105 = trunc i64 %97 to i32
  %106 = lshr i32 %105, 2
  %107 = and i32 %106, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %104, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %107, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.10.0)
  %108 = add i64 %69, 192
  %109 = inttoptr i64 %108 to i8 addrspace(1)*
  %.ascast.i90.3 = addrspacecast i8 addrspace(1)* %109 to i8 addrspace(4)*
  %110 = ptrtoint i8 addrspace(4)* %.ascast.i90.3 to i64
  %111 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.3)
  %112 = extractvalue { i32, i32 } %111, 0
  %113 = extractvalue { i32, i32 } %111, 1
  %114 = and i32 %112, -64
  %115 = insertelement <2 x i32> undef, i32 %114, i32 0
  %116 = insertelement <2 x i32> %115, i32 %113, i32 1
  %117 = bitcast <2 x i32> %116 to i64
  %118 = trunc i64 %110 to i32
  %119 = lshr i32 %118, 2
  %120 = and i32 %119, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %117, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %120, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.14.0)
  %121 = mul nsw i32 %.pre-phi157, %4, !spirv.Decorations !427
  %122 = sext i32 %121 to i64
  %123 = shl nsw i64 %122, 2
  %124 = add i64 %65, %123
  %125 = inttoptr i64 %124 to i8 addrspace(1)*
  %.ascast.i90.136 = addrspacecast i8 addrspace(1)* %125 to i8 addrspace(4)*
  %126 = ptrtoint i8 addrspace(4)* %.ascast.i90.136 to i64
  %127 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.136)
  %128 = extractvalue { i32, i32 } %127, 0
  %129 = extractvalue { i32, i32 } %127, 1
  %130 = and i32 %128, -64
  %131 = insertelement <2 x i32> undef, i32 %130, i32 0
  %132 = insertelement <2 x i32> %131, i32 %129, i32 1
  %133 = bitcast <2 x i32> %132 to i64
  %134 = trunc i64 %126 to i32
  %135 = lshr i32 %134, 2
  %136 = and i32 %135, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %133, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %136, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.18.0)
  %137 = add i64 %124, 64
  %138 = inttoptr i64 %137 to i8 addrspace(1)*
  %.ascast.i90.1.1 = addrspacecast i8 addrspace(1)* %138 to i8 addrspace(4)*
  %139 = ptrtoint i8 addrspace(4)* %.ascast.i90.1.1 to i64
  %140 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.1.1)
  %141 = extractvalue { i32, i32 } %140, 0
  %142 = extractvalue { i32, i32 } %140, 1
  %143 = and i32 %141, -64
  %144 = insertelement <2 x i32> undef, i32 %143, i32 0
  %145 = insertelement <2 x i32> %144, i32 %142, i32 1
  %146 = bitcast <2 x i32> %145 to i64
  %147 = trunc i64 %139 to i32
  %148 = lshr i32 %147, 2
  %149 = and i32 %148, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %146, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %149, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.22.0)
  %150 = add i64 %124, 128
  %151 = inttoptr i64 %150 to i8 addrspace(1)*
  %.ascast.i90.2.1 = addrspacecast i8 addrspace(1)* %151 to i8 addrspace(4)*
  %152 = ptrtoint i8 addrspace(4)* %.ascast.i90.2.1 to i64
  %153 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.2.1)
  %154 = extractvalue { i32, i32 } %153, 0
  %155 = extractvalue { i32, i32 } %153, 1
  %156 = and i32 %154, -64
  %157 = insertelement <2 x i32> undef, i32 %156, i32 0
  %158 = insertelement <2 x i32> %157, i32 %155, i32 1
  %159 = bitcast <2 x i32> %158 to i64
  %160 = trunc i64 %152 to i32
  %161 = lshr i32 %160, 2
  %162 = and i32 %161, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %159, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %162, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.26.0)
  %163 = add i64 %124, 192
  %164 = inttoptr i64 %163 to i8 addrspace(1)*
  %.ascast.i90.3.1 = addrspacecast i8 addrspace(1)* %164 to i8 addrspace(4)*
  %165 = ptrtoint i8 addrspace(4)* %.ascast.i90.3.1 to i64
  %166 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.3.1)
  %167 = extractvalue { i32, i32 } %166, 0
  %168 = extractvalue { i32, i32 } %166, 1
  %169 = and i32 %167, -64
  %170 = insertelement <2 x i32> undef, i32 %169, i32 0
  %171 = insertelement <2 x i32> %170, i32 %168, i32 1
  %172 = bitcast <2 x i32> %171 to i64
  %173 = trunc i64 %165 to i32
  %174 = lshr i32 %173, 2
  %175 = and i32 %174, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %172, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %175, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.30.0)
  %176 = mul nsw i32 %.pre-phi159, %4, !spirv.Decorations !427
  %177 = sext i32 %176 to i64
  %178 = shl nsw i64 %177, 2
  %179 = add i64 %65, %178
  %180 = inttoptr i64 %179 to i8 addrspace(1)*
  %.ascast.i90.237 = addrspacecast i8 addrspace(1)* %180 to i8 addrspace(4)*
  %181 = ptrtoint i8 addrspace(4)* %.ascast.i90.237 to i64
  %182 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.237)
  %183 = extractvalue { i32, i32 } %182, 0
  %184 = extractvalue { i32, i32 } %182, 1
  %185 = and i32 %183, -64
  %186 = insertelement <2 x i32> undef, i32 %185, i32 0
  %187 = insertelement <2 x i32> %186, i32 %184, i32 1
  %188 = bitcast <2 x i32> %187 to i64
  %189 = trunc i64 %181 to i32
  %190 = lshr i32 %189, 2
  %191 = and i32 %190, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %188, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %191, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.34.0)
  %192 = add i64 %179, 64
  %193 = inttoptr i64 %192 to i8 addrspace(1)*
  %.ascast.i90.1.2 = addrspacecast i8 addrspace(1)* %193 to i8 addrspace(4)*
  %194 = ptrtoint i8 addrspace(4)* %.ascast.i90.1.2 to i64
  %195 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.1.2)
  %196 = extractvalue { i32, i32 } %195, 0
  %197 = extractvalue { i32, i32 } %195, 1
  %198 = and i32 %196, -64
  %199 = insertelement <2 x i32> undef, i32 %198, i32 0
  %200 = insertelement <2 x i32> %199, i32 %197, i32 1
  %201 = bitcast <2 x i32> %200 to i64
  %202 = trunc i64 %194 to i32
  %203 = lshr i32 %202, 2
  %204 = and i32 %203, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %201, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %204, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.38.0)
  %205 = add i64 %179, 128
  %206 = inttoptr i64 %205 to i8 addrspace(1)*
  %.ascast.i90.2.2 = addrspacecast i8 addrspace(1)* %206 to i8 addrspace(4)*
  %207 = ptrtoint i8 addrspace(4)* %.ascast.i90.2.2 to i64
  %208 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.2.2)
  %209 = extractvalue { i32, i32 } %208, 0
  %210 = extractvalue { i32, i32 } %208, 1
  %211 = and i32 %209, -64
  %212 = insertelement <2 x i32> undef, i32 %211, i32 0
  %213 = insertelement <2 x i32> %212, i32 %210, i32 1
  %214 = bitcast <2 x i32> %213 to i64
  %215 = trunc i64 %207 to i32
  %216 = lshr i32 %215, 2
  %217 = and i32 %216, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %214, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %217, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.42.0)
  %218 = add i64 %179, 192
  %219 = inttoptr i64 %218 to i8 addrspace(1)*
  %.ascast.i90.3.2 = addrspacecast i8 addrspace(1)* %219 to i8 addrspace(4)*
  %220 = ptrtoint i8 addrspace(4)* %.ascast.i90.3.2 to i64
  %221 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.3.2)
  %222 = extractvalue { i32, i32 } %221, 0
  %223 = extractvalue { i32, i32 } %221, 1
  %224 = and i32 %222, -64
  %225 = insertelement <2 x i32> undef, i32 %224, i32 0
  %226 = insertelement <2 x i32> %225, i32 %223, i32 1
  %227 = bitcast <2 x i32> %226 to i64
  %228 = trunc i64 %220 to i32
  %229 = lshr i32 %228, 2
  %230 = and i32 %229, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %227, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %230, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.46.0)
  %231 = mul nsw i32 %.pre-phi161, %4, !spirv.Decorations !427
  %232 = sext i32 %231 to i64
  %233 = shl nsw i64 %232, 2
  %234 = add i64 %65, %233
  %235 = inttoptr i64 %234 to i8 addrspace(1)*
  %.ascast.i90.338 = addrspacecast i8 addrspace(1)* %235 to i8 addrspace(4)*
  %236 = ptrtoint i8 addrspace(4)* %.ascast.i90.338 to i64
  %237 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.338)
  %238 = extractvalue { i32, i32 } %237, 0
  %239 = extractvalue { i32, i32 } %237, 1
  %240 = and i32 %238, -64
  %241 = insertelement <2 x i32> undef, i32 %240, i32 0
  %242 = insertelement <2 x i32> %241, i32 %239, i32 1
  %243 = bitcast <2 x i32> %242 to i64
  %244 = trunc i64 %236 to i32
  %245 = lshr i32 %244, 2
  %246 = and i32 %245, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %243, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %246, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.50.0)
  %247 = add i64 %234, 64
  %248 = inttoptr i64 %247 to i8 addrspace(1)*
  %.ascast.i90.1.3 = addrspacecast i8 addrspace(1)* %248 to i8 addrspace(4)*
  %249 = ptrtoint i8 addrspace(4)* %.ascast.i90.1.3 to i64
  %250 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.1.3)
  %251 = extractvalue { i32, i32 } %250, 0
  %252 = extractvalue { i32, i32 } %250, 1
  %253 = and i32 %251, -64
  %254 = insertelement <2 x i32> undef, i32 %253, i32 0
  %255 = insertelement <2 x i32> %254, i32 %252, i32 1
  %256 = bitcast <2 x i32> %255 to i64
  %257 = trunc i64 %249 to i32
  %258 = lshr i32 %257, 2
  %259 = and i32 %258, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %256, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %259, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.54.0)
  %260 = add i64 %234, 128
  %261 = inttoptr i64 %260 to i8 addrspace(1)*
  %.ascast.i90.2.3 = addrspacecast i8 addrspace(1)* %261 to i8 addrspace(4)*
  %262 = ptrtoint i8 addrspace(4)* %.ascast.i90.2.3 to i64
  %263 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.2.3)
  %264 = extractvalue { i32, i32 } %263, 0
  %265 = extractvalue { i32, i32 } %263, 1
  %266 = and i32 %264, -64
  %267 = insertelement <2 x i32> undef, i32 %266, i32 0
  %268 = insertelement <2 x i32> %267, i32 %265, i32 1
  %269 = bitcast <2 x i32> %268 to i64
  %270 = trunc i64 %262 to i32
  %271 = lshr i32 %270, 2
  %272 = and i32 %271, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %269, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %272, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.58.0)
  %273 = add i64 %234, 192
  %274 = inttoptr i64 %273 to i8 addrspace(1)*
  %.ascast.i90.3.3 = addrspacecast i8 addrspace(1)* %274 to i8 addrspace(4)*
  %275 = ptrtoint i8 addrspace(4)* %.ascast.i90.3.3 to i64
  %276 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.3.3)
  %277 = extractvalue { i32, i32 } %276, 0
  %278 = extractvalue { i32, i32 } %276, 1
  %279 = and i32 %277, -64
  %280 = insertelement <2 x i32> undef, i32 %279, i32 0
  %281 = insertelement <2 x i32> %280, i32 %278, i32 1
  %282 = bitcast <2 x i32> %281 to i64
  %283 = trunc i64 %275 to i32
  %284 = lshr i32 %283, 2
  %285 = and i32 %284, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %282, i32 %.pre-phi155, i32 7, i32 %.pre-phi155, i32 %285, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.62.0)
  ret void

286:                                              ; preds = %.preheader.preheader._crit_edge, %.lr.ph
  %287 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %591, %.preheader.preheader._crit_edge ]
  %288 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %593, %.preheader.preheader._crit_edge ]
  %289 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %595, %.preheader.preheader._crit_edge ]
  %290 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %597, %.preheader.preheader._crit_edge ]
  %291 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %599, %.preheader.preheader._crit_edge ]
  %292 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %601, %.preheader.preheader._crit_edge ]
  %293 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %603, %.preheader.preheader._crit_edge ]
  %294 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %605, %.preheader.preheader._crit_edge ]
  %295 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %607, %.preheader.preheader._crit_edge ]
  %296 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %609, %.preheader.preheader._crit_edge ]
  %297 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %611, %.preheader.preheader._crit_edge ]
  %298 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %613, %.preheader.preheader._crit_edge ]
  %299 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %615, %.preheader.preheader._crit_edge ]
  %300 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %617, %.preheader.preheader._crit_edge ]
  %301 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %619, %.preheader.preheader._crit_edge ]
  %302 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %621, %.preheader.preheader._crit_edge ]
  %303 = phi i32 [ 0, %.lr.ph ], [ %304, %.preheader.preheader._crit_edge ]
  %304 = add nuw nsw i32 %303, 32, !spirv.Decorations !429
  %305 = icmp slt i32 %304, %3
  br i1 %305, label %306, label %..preheader.preheader_crit_edge

..preheader.preheader_crit_edge:                  ; preds = %286
  br label %.preheader.preheader

306:                                              ; preds = %286
  %307 = shl nuw i32 %304, 1
  %308 = zext i32 %307 to i64
  %309 = add i64 %21, %308
  %310 = inttoptr i64 %309 to i8 addrspace(1)*
  %311 = addrspacecast i8 addrspace(1)* %310 to i8 addrspace(4)*
  %312 = ptrtoint i8 addrspace(4)* %311 to i64
  %313 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %311)
  %314 = extractvalue { i32, i32 } %313, 0
  %315 = extractvalue { i32, i32 } %313, 1
  %316 = and i32 %314, -64
  %317 = insertelement <2 x i32> undef, i32 %316, i32 0
  %318 = insertelement <2 x i32> %317, i32 %315, i32 1
  %319 = bitcast <2 x i32> %318 to i64
  %320 = trunc i64 %312 to i32
  %321 = lshr i32 %320, 1
  %322 = and i32 %321, 31
  call void @llvm.genx.GenISA.LSC2DBlockPrefetch.isVoid(i64 %319, i32 %31, i32 7, i32 %31, i32 %322, i32 0, i32 16, i32 32, i32 8, i32 1, i1 false, i1 false, i32 4)
  %323 = lshr exact i32 %304, 1
  %324 = call { i32, i32 } @llvm.genx.GenISA.mul.pair(i32 %323, i32 0, i32 %22, i32 %23)
  %325 = extractvalue { i32, i32 } %324, 0
  %326 = extractvalue { i32, i32 } %324, 1
  %327 = insertelement <2 x i32> undef, i32 %325, i32 0
  %328 = insertelement <2 x i32> %327, i32 %326, i32 1
  %329 = bitcast <2 x i32> %328 to i64
  %330 = shl nsw i64 %329, 1
  %331 = add i64 %28, %330
  %332 = inttoptr i64 %331 to i8 addrspace(1)*
  %333 = addrspacecast i8 addrspace(1)* %332 to i8 addrspace(4)*
  %334 = ptrtoint i8 addrspace(4)* %333 to i64
  %335 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %333)
  %336 = extractvalue { i32, i32 } %335, 0
  %337 = extractvalue { i32, i32 } %335, 1
  %338 = and i32 %336, -64
  %339 = insertelement <2 x i32> undef, i32 %338, i32 0
  %340 = insertelement <2 x i32> %339, i32 %337, i32 1
  %341 = bitcast <2 x i32> %340 to i64
  %342 = trunc i64 %334 to i32
  %343 = lshr i32 %342, 1
  %344 = and i32 %343, 31
  call void @llvm.genx.GenISA.LSC2DBlockPrefetch.isVoid(i64 %341, i32 %33, i32 7, i32 %33, i32 %344, i32 0, i32 16, i32 32, i32 8, i32 1, i1 false, i1 false, i32 4)
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %..preheader.preheader_crit_edge, %306
  %345 = shl nuw i32 %303, 1
  %346 = zext i32 %345 to i64
  %347 = add i64 %19, %346
  %348 = add i64 %347, %20
  %349 = inttoptr i64 %348 to i8 addrspace(1)*
  %.ascast.i = addrspacecast i8 addrspace(1)* %349 to i8 addrspace(4)*
  %350 = ptrtoint i8 addrspace(4)* %.ascast.i to i64
  %351 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i)
  %352 = extractvalue { i32, i32 } %351, 0
  %353 = extractvalue { i32, i32 } %351, 1
  %354 = and i32 %352, -64
  %355 = insertelement <2 x i32> undef, i32 %354, i32 0
  %356 = insertelement <2 x i32> %355, i32 %353, i32 1
  %357 = bitcast <2 x i32> %356 to i64
  %358 = trunc i64 %350 to i32
  %359 = lshr i32 %358, 1
  %360 = and i32 %359, 31
  %361 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %357, i32 %31, i32 7, i32 %31, i32 %360, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %362 = add i64 %348, 32
  %363 = inttoptr i64 %362 to i8 addrspace(1)*
  %.ascast.i87 = addrspacecast i8 addrspace(1)* %363 to i8 addrspace(4)*
  %364 = ptrtoint i8 addrspace(4)* %.ascast.i87 to i64
  %365 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87)
  %366 = extractvalue { i32, i32 } %365, 0
  %367 = extractvalue { i32, i32 } %365, 1
  %368 = and i32 %366, -64
  %369 = insertelement <2 x i32> undef, i32 %368, i32 0
  %370 = insertelement <2 x i32> %369, i32 %367, i32 1
  %371 = bitcast <2 x i32> %370 to i64
  %372 = trunc i64 %364 to i32
  %373 = lshr i32 %372, 1
  %374 = and i32 %373, 31
  %375 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %371, i32 %31, i32 7, i32 %31, i32 %374, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %376 = add i64 %347, %43
  %377 = inttoptr i64 %376 to i8 addrspace(1)*
  %.ascast.i.1 = addrspacecast i8 addrspace(1)* %377 to i8 addrspace(4)*
  %378 = ptrtoint i8 addrspace(4)* %.ascast.i.1 to i64
  %379 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.1)
  %380 = extractvalue { i32, i32 } %379, 0
  %381 = extractvalue { i32, i32 } %379, 1
  %382 = and i32 %380, -64
  %383 = insertelement <2 x i32> undef, i32 %382, i32 0
  %384 = insertelement <2 x i32> %383, i32 %381, i32 1
  %385 = bitcast <2 x i32> %384 to i64
  %386 = trunc i64 %378 to i32
  %387 = lshr i32 %386, 1
  %388 = and i32 %387, 31
  %389 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %385, i32 %31, i32 7, i32 %31, i32 %388, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %390 = add i64 %376, 32
  %391 = inttoptr i64 %390 to i8 addrspace(1)*
  %.ascast.i87.1 = addrspacecast i8 addrspace(1)* %391 to i8 addrspace(4)*
  %392 = ptrtoint i8 addrspace(4)* %.ascast.i87.1 to i64
  %393 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.1)
  %394 = extractvalue { i32, i32 } %393, 0
  %395 = extractvalue { i32, i32 } %393, 1
  %396 = and i32 %394, -64
  %397 = insertelement <2 x i32> undef, i32 %396, i32 0
  %398 = insertelement <2 x i32> %397, i32 %395, i32 1
  %399 = bitcast <2 x i32> %398 to i64
  %400 = trunc i64 %392 to i32
  %401 = lshr i32 %400, 1
  %402 = and i32 %401, 31
  %403 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %399, i32 %31, i32 7, i32 %31, i32 %402, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %404 = add i64 %347, %44
  %405 = inttoptr i64 %404 to i8 addrspace(1)*
  %.ascast.i.2 = addrspacecast i8 addrspace(1)* %405 to i8 addrspace(4)*
  %406 = ptrtoint i8 addrspace(4)* %.ascast.i.2 to i64
  %407 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.2)
  %408 = extractvalue { i32, i32 } %407, 0
  %409 = extractvalue { i32, i32 } %407, 1
  %410 = and i32 %408, -64
  %411 = insertelement <2 x i32> undef, i32 %410, i32 0
  %412 = insertelement <2 x i32> %411, i32 %409, i32 1
  %413 = bitcast <2 x i32> %412 to i64
  %414 = trunc i64 %406 to i32
  %415 = lshr i32 %414, 1
  %416 = and i32 %415, 31
  %417 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %413, i32 %31, i32 7, i32 %31, i32 %416, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %418 = add i64 %404, 32
  %419 = inttoptr i64 %418 to i8 addrspace(1)*
  %.ascast.i87.2 = addrspacecast i8 addrspace(1)* %419 to i8 addrspace(4)*
  %420 = ptrtoint i8 addrspace(4)* %.ascast.i87.2 to i64
  %421 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.2)
  %422 = extractvalue { i32, i32 } %421, 0
  %423 = extractvalue { i32, i32 } %421, 1
  %424 = and i32 %422, -64
  %425 = insertelement <2 x i32> undef, i32 %424, i32 0
  %426 = insertelement <2 x i32> %425, i32 %423, i32 1
  %427 = bitcast <2 x i32> %426 to i64
  %428 = trunc i64 %420 to i32
  %429 = lshr i32 %428, 1
  %430 = and i32 %429, 31
  %431 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %427, i32 %31, i32 7, i32 %31, i32 %430, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %432 = add i64 %347, %45
  %433 = inttoptr i64 %432 to i8 addrspace(1)*
  %.ascast.i.3 = addrspacecast i8 addrspace(1)* %433 to i8 addrspace(4)*
  %434 = ptrtoint i8 addrspace(4)* %.ascast.i.3 to i64
  %435 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.3)
  %436 = extractvalue { i32, i32 } %435, 0
  %437 = extractvalue { i32, i32 } %435, 1
  %438 = and i32 %436, -64
  %439 = insertelement <2 x i32> undef, i32 %438, i32 0
  %440 = insertelement <2 x i32> %439, i32 %437, i32 1
  %441 = bitcast <2 x i32> %440 to i64
  %442 = trunc i64 %434 to i32
  %443 = lshr i32 %442, 1
  %444 = and i32 %443, 31
  %445 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %441, i32 %31, i32 7, i32 %31, i32 %444, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %446 = add i64 %432, 32
  %447 = inttoptr i64 %446 to i8 addrspace(1)*
  %.ascast.i87.3 = addrspacecast i8 addrspace(1)* %447 to i8 addrspace(4)*
  %448 = ptrtoint i8 addrspace(4)* %.ascast.i87.3 to i64
  %449 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.3)
  %450 = extractvalue { i32, i32 } %449, 0
  %451 = extractvalue { i32, i32 } %449, 1
  %452 = and i32 %450, -64
  %453 = insertelement <2 x i32> undef, i32 %452, i32 0
  %454 = insertelement <2 x i32> %453, i32 %451, i32 1
  %455 = bitcast <2 x i32> %454 to i64
  %456 = trunc i64 %448 to i32
  %457 = lshr i32 %456, 1
  %458 = and i32 %457, 31
  %459 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %455, i32 %31, i32 7, i32 %31, i32 %458, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %460 = lshr exact i32 %303, 1
  %461 = call { i32, i32 } @llvm.genx.GenISA.mul.pair(i32 %460, i32 0, i32 %22, i32 %23)
  %462 = extractvalue { i32, i32 } %461, 0
  %463 = extractvalue { i32, i32 } %461, 1
  %464 = insertelement <2 x i32> undef, i32 %462, i32 0
  %465 = insertelement <2 x i32> %464, i32 %463, i32 1
  %466 = bitcast <2 x i32> %465 to i64
  %467 = shl nsw i64 %466, 1
  %468 = add i64 %467, %26
  %469 = or i32 %460, 8
  %470 = call { i32, i32 } @llvm.genx.GenISA.mul.pair(i32 %469, i32 0, i32 %22, i32 %23)
  %471 = extractvalue { i32, i32 } %470, 0
  %472 = extractvalue { i32, i32 } %470, 1
  %473 = insertelement <2 x i32> undef, i32 %471, i32 0
  %474 = insertelement <2 x i32> %473, i32 %472, i32 1
  %475 = bitcast <2 x i32> %474 to i64
  %476 = shl nsw i64 %475, 1
  %477 = add i64 %476, %26
  %478 = add i64 %468, %27
  %479 = inttoptr i64 %478 to i8 addrspace(1)*
  %.ascast.i88 = addrspacecast i8 addrspace(1)* %479 to i8 addrspace(4)*
  %480 = ptrtoint i8 addrspace(4)* %.ascast.i88 to i64
  %481 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88)
  %482 = extractvalue { i32, i32 } %481, 0
  %483 = extractvalue { i32, i32 } %481, 1
  %484 = and i32 %482, -64
  %485 = insertelement <2 x i32> undef, i32 %484, i32 0
  %486 = insertelement <2 x i32> %485, i32 %483, i32 1
  %487 = bitcast <2 x i32> %486 to i64
  %488 = trunc i64 %480 to i32
  %489 = lshr i32 %488, 2
  %490 = and i32 %489, 15
  %491 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %487, i32 %33, i32 7, i32 %33, i32 %490, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %492 = add i64 %477, %27
  %493 = inttoptr i64 %492 to i8 addrspace(1)*
  %.ascast.i89 = addrspacecast i8 addrspace(1)* %493 to i8 addrspace(4)*
  %494 = ptrtoint i8 addrspace(4)* %.ascast.i89 to i64
  %495 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89)
  %496 = extractvalue { i32, i32 } %495, 0
  %497 = extractvalue { i32, i32 } %495, 1
  %498 = and i32 %496, -64
  %499 = insertelement <2 x i32> undef, i32 %498, i32 0
  %500 = insertelement <2 x i32> %499, i32 %497, i32 1
  %501 = bitcast <2 x i32> %500 to i64
  %502 = trunc i64 %494 to i32
  %503 = lshr i32 %502, 2
  %504 = and i32 %503, 15
  %505 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %501, i32 %33, i32 7, i32 %33, i32 %504, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %506 = add i64 %478, 64
  %507 = inttoptr i64 %506 to i8 addrspace(1)*
  %.ascast.i88.1 = addrspacecast i8 addrspace(1)* %507 to i8 addrspace(4)*
  %508 = ptrtoint i8 addrspace(4)* %.ascast.i88.1 to i64
  %509 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.1)
  %510 = extractvalue { i32, i32 } %509, 0
  %511 = extractvalue { i32, i32 } %509, 1
  %512 = and i32 %510, -64
  %513 = insertelement <2 x i32> undef, i32 %512, i32 0
  %514 = insertelement <2 x i32> %513, i32 %511, i32 1
  %515 = bitcast <2 x i32> %514 to i64
  %516 = trunc i64 %508 to i32
  %517 = lshr i32 %516, 2
  %518 = and i32 %517, 15
  %519 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %515, i32 %33, i32 7, i32 %33, i32 %518, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %520 = add i64 %492, 64
  %521 = inttoptr i64 %520 to i8 addrspace(1)*
  %.ascast.i89.1 = addrspacecast i8 addrspace(1)* %521 to i8 addrspace(4)*
  %522 = ptrtoint i8 addrspace(4)* %.ascast.i89.1 to i64
  %523 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.1)
  %524 = extractvalue { i32, i32 } %523, 0
  %525 = extractvalue { i32, i32 } %523, 1
  %526 = and i32 %524, -64
  %527 = insertelement <2 x i32> undef, i32 %526, i32 0
  %528 = insertelement <2 x i32> %527, i32 %525, i32 1
  %529 = bitcast <2 x i32> %528 to i64
  %530 = trunc i64 %522 to i32
  %531 = lshr i32 %530, 2
  %532 = and i32 %531, 15
  %533 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %529, i32 %33, i32 7, i32 %33, i32 %532, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %534 = add i64 %478, 128
  %535 = inttoptr i64 %534 to i8 addrspace(1)*
  %.ascast.i88.2 = addrspacecast i8 addrspace(1)* %535 to i8 addrspace(4)*
  %536 = ptrtoint i8 addrspace(4)* %.ascast.i88.2 to i64
  %537 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.2)
  %538 = extractvalue { i32, i32 } %537, 0
  %539 = extractvalue { i32, i32 } %537, 1
  %540 = and i32 %538, -64
  %541 = insertelement <2 x i32> undef, i32 %540, i32 0
  %542 = insertelement <2 x i32> %541, i32 %539, i32 1
  %543 = bitcast <2 x i32> %542 to i64
  %544 = trunc i64 %536 to i32
  %545 = lshr i32 %544, 2
  %546 = and i32 %545, 15
  %547 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %543, i32 %33, i32 7, i32 %33, i32 %546, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %548 = add i64 %492, 128
  %549 = inttoptr i64 %548 to i8 addrspace(1)*
  %.ascast.i89.2 = addrspacecast i8 addrspace(1)* %549 to i8 addrspace(4)*
  %550 = ptrtoint i8 addrspace(4)* %.ascast.i89.2 to i64
  %551 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.2)
  %552 = extractvalue { i32, i32 } %551, 0
  %553 = extractvalue { i32, i32 } %551, 1
  %554 = and i32 %552, -64
  %555 = insertelement <2 x i32> undef, i32 %554, i32 0
  %556 = insertelement <2 x i32> %555, i32 %553, i32 1
  %557 = bitcast <2 x i32> %556 to i64
  %558 = trunc i64 %550 to i32
  %559 = lshr i32 %558, 2
  %560 = and i32 %559, 15
  %561 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %557, i32 %33, i32 7, i32 %33, i32 %560, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %562 = add i64 %478, 192
  %563 = inttoptr i64 %562 to i8 addrspace(1)*
  %.ascast.i88.3 = addrspacecast i8 addrspace(1)* %563 to i8 addrspace(4)*
  %564 = ptrtoint i8 addrspace(4)* %.ascast.i88.3 to i64
  %565 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.3)
  %566 = extractvalue { i32, i32 } %565, 0
  %567 = extractvalue { i32, i32 } %565, 1
  %568 = and i32 %566, -64
  %569 = insertelement <2 x i32> undef, i32 %568, i32 0
  %570 = insertelement <2 x i32> %569, i32 %567, i32 1
  %571 = bitcast <2 x i32> %570 to i64
  %572 = trunc i64 %564 to i32
  %573 = lshr i32 %572, 2
  %574 = and i32 %573, 15
  %575 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %571, i32 %33, i32 7, i32 %33, i32 %574, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %576 = add i64 %492, 192
  %577 = inttoptr i64 %576 to i8 addrspace(1)*
  %.ascast.i89.3 = addrspacecast i8 addrspace(1)* %577 to i8 addrspace(4)*
  %578 = ptrtoint i8 addrspace(4)* %.ascast.i89.3 to i64
  %579 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.3)
  %580 = extractvalue { i32, i32 } %579, 0
  %581 = extractvalue { i32, i32 } %579, 1
  %582 = and i32 %580, -64
  %583 = insertelement <2 x i32> undef, i32 %582, i32 0
  %584 = insertelement <2 x i32> %583, i32 %581, i32 1
  %585 = bitcast <2 x i32> %584 to i64
  %586 = trunc i64 %578 to i32
  %587 = lshr i32 %586, 2
  %588 = and i32 %587, 15
  %589 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %585, i32 %33, i32 7, i32 %33, i32 %588, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %590 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %287, <8 x i16> %361, <8 x i32> %491, i32 11, i32 11, i32 8, i32 8, i1 false)
  %591 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %590, <8 x i16> %375, <8 x i32> %505, i32 11, i32 11, i32 8, i32 8, i1 false)
  %592 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %288, <8 x i16> %361, <8 x i32> %519, i32 11, i32 11, i32 8, i32 8, i1 false)
  %593 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %592, <8 x i16> %375, <8 x i32> %533, i32 11, i32 11, i32 8, i32 8, i1 false)
  %594 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %289, <8 x i16> %361, <8 x i32> %547, i32 11, i32 11, i32 8, i32 8, i1 false)
  %595 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %594, <8 x i16> %375, <8 x i32> %561, i32 11, i32 11, i32 8, i32 8, i1 false)
  %596 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %290, <8 x i16> %361, <8 x i32> %575, i32 11, i32 11, i32 8, i32 8, i1 false)
  %597 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %596, <8 x i16> %375, <8 x i32> %589, i32 11, i32 11, i32 8, i32 8, i1 false)
  %598 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %291, <8 x i16> %389, <8 x i32> %491, i32 11, i32 11, i32 8, i32 8, i1 false)
  %599 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %598, <8 x i16> %403, <8 x i32> %505, i32 11, i32 11, i32 8, i32 8, i1 false)
  %600 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %292, <8 x i16> %389, <8 x i32> %519, i32 11, i32 11, i32 8, i32 8, i1 false)
  %601 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %600, <8 x i16> %403, <8 x i32> %533, i32 11, i32 11, i32 8, i32 8, i1 false)
  %602 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %293, <8 x i16> %389, <8 x i32> %547, i32 11, i32 11, i32 8, i32 8, i1 false)
  %603 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %602, <8 x i16> %403, <8 x i32> %561, i32 11, i32 11, i32 8, i32 8, i1 false)
  %604 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %294, <8 x i16> %389, <8 x i32> %575, i32 11, i32 11, i32 8, i32 8, i1 false)
  %605 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %604, <8 x i16> %403, <8 x i32> %589, i32 11, i32 11, i32 8, i32 8, i1 false)
  %606 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %295, <8 x i16> %417, <8 x i32> %491, i32 11, i32 11, i32 8, i32 8, i1 false)
  %607 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %606, <8 x i16> %431, <8 x i32> %505, i32 11, i32 11, i32 8, i32 8, i1 false)
  %608 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %296, <8 x i16> %417, <8 x i32> %519, i32 11, i32 11, i32 8, i32 8, i1 false)
  %609 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %608, <8 x i16> %431, <8 x i32> %533, i32 11, i32 11, i32 8, i32 8, i1 false)
  %610 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %297, <8 x i16> %417, <8 x i32> %547, i32 11, i32 11, i32 8, i32 8, i1 false)
  %611 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %610, <8 x i16> %431, <8 x i32> %561, i32 11, i32 11, i32 8, i32 8, i1 false)
  %612 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %298, <8 x i16> %417, <8 x i32> %575, i32 11, i32 11, i32 8, i32 8, i1 false)
  %613 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %612, <8 x i16> %431, <8 x i32> %589, i32 11, i32 11, i32 8, i32 8, i1 false)
  %614 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %299, <8 x i16> %445, <8 x i32> %491, i32 11, i32 11, i32 8, i32 8, i1 false)
  %615 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %614, <8 x i16> %459, <8 x i32> %505, i32 11, i32 11, i32 8, i32 8, i1 false)
  %616 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %300, <8 x i16> %445, <8 x i32> %519, i32 11, i32 11, i32 8, i32 8, i1 false)
  %617 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %616, <8 x i16> %459, <8 x i32> %533, i32 11, i32 11, i32 8, i32 8, i1 false)
  %618 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %301, <8 x i16> %445, <8 x i32> %547, i32 11, i32 11, i32 8, i32 8, i1 false)
  %619 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %618, <8 x i16> %459, <8 x i32> %561, i32 11, i32 11, i32 8, i32 8, i1 false)
  %620 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %302, <8 x i16> %445, <8 x i32> %575, i32 11, i32 11, i32 8, i32 8, i1 false)
  %621 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %620, <8 x i16> %459, <8 x i32> %589, i32 11, i32 11, i32 8, i32 8, i1 false)
  br i1 %305, label %.preheader.preheader._crit_edge, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit

.preheader.preheader._crit_edge:                  ; preds = %.preheader.preheader
  br label %286
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: convergent nounwind null_pointer_is_valid
define spir_kernel void @_ZTSZZZ19bench_v2_clean_nopfRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
.preheader1.preheader:
  %5 = extractelement <8 x i32> %r0, i32 1
  %6 = extractelement <8 x i32> %r0, i32 6
  %7 = bitcast <8 x i32> %r0 to <32 x i8>
  %8 = extractelement <32 x i8> %7, i32 8
  %localThreadId5 = zext i8 %8 to i32
  %9 = shl nsw i32 %6, 6, !spirv.Decorations !427
  %10 = shl nuw nsw i32 %localThreadId5, 4
  %11 = and i32 %10, 4064
  %12 = add nuw nsw i32 %9, %11, !spirv.Decorations !427
  %13 = shl nsw i32 %5, 7, !spirv.Decorations !427
  %14 = shl nuw nsw i32 %localThreadId5, 6
  %15 = and i32 %14, 64
  %16 = or i32 %13, %15
  %17 = shl nsw i32 %4, 1, !spirv.Decorations !427
  %18 = ashr i32 %17, 31
  %19 = icmp sgt i32 %3, 0
  br i1 %19, label %.lr.ph, label %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge

.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge: ; preds = %.preheader1.preheader
  %.pre = shl i32 %4, 2
  %.pre148 = add i32 %.pre, -1
  %.pre150 = or i32 %12, 8
  %.pre152 = or i32 %12, 16
  %.pre154 = or i32 %12, 24
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit

.lr.ph:                                           ; preds = %.preheader1.preheader
  %20 = shl i32 %3, 1
  %21 = add i32 %20, -1
  %22 = shl nuw i32 %16, 1
  %23 = shl i32 %4, 2
  %24 = add i32 %23, -1
  %25 = mul nsw i32 %12, %3, !spirv.Decorations !427
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

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit: ; preds = %.preheader.preheader
  %44 = bitcast <8 x float> %547 to <8 x i32>
  %45 = bitcast <8 x float> %549 to <8 x i32>
  %46 = bitcast <8 x float> %551 to <8 x i32>
  %47 = bitcast <8 x float> %553 to <8 x i32>
  %48 = bitcast <8 x float> %555 to <8 x i32>
  %49 = bitcast <8 x float> %557 to <8 x i32>
  %50 = bitcast <8 x float> %559 to <8 x i32>
  %51 = bitcast <8 x float> %561 to <8 x i32>
  %52 = bitcast <8 x float> %563 to <8 x i32>
  %53 = bitcast <8 x float> %565 to <8 x i32>
  %54 = bitcast <8 x float> %567 to <8 x i32>
  %55 = bitcast <8 x float> %569 to <8 x i32>
  %56 = bitcast <8 x float> %571 to <8 x i32>
  %57 = bitcast <8 x float> %573 to <8 x i32>
  %58 = bitcast <8 x float> %575 to <8 x i32>
  %59 = bitcast <8 x float> %577 to <8 x i32>
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit: ; preds = %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge
  %.pre-phi155 = phi i32 [ %.pre154, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %33, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.pre-phi153 = phi i32 [ %.pre152, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %30, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.pre-phi151 = phi i32 [ %.pre150, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %27, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.pre-phi149 = phi i32 [ %.pre148, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %24, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.082.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %44, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.687.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %45, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.10.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %46, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.14.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %47, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.18.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %48, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.22.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %49, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.26.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %50, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.30.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %51, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.34.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %52, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.38.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %53, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.42.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %54, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.46.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %55, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.50.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %56, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.54.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %57, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.58.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %58, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.62.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %59, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %60 = zext i32 %16 to i64
  %61 = ptrtoint i8 addrspace(1)* %2 to i64
  %62 = shl nuw nsw i64 %60, 2
  %63 = add i64 %62, %61
  %64 = mul nsw i32 %12, %4, !spirv.Decorations !427
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
  %119 = mul nsw i32 %.pre-phi151, %4, !spirv.Decorations !427
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
  %174 = mul nsw i32 %.pre-phi153, %4, !spirv.Decorations !427
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
  %229 = mul nsw i32 %.pre-phi155, %4, !spirv.Decorations !427
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
  %284 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %547, %.preheader.preheader..preheader.preheader_crit_edge ]
  %285 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %549, %.preheader.preheader..preheader.preheader_crit_edge ]
  %286 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %551, %.preheader.preheader..preheader.preheader_crit_edge ]
  %287 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %553, %.preheader.preheader..preheader.preheader_crit_edge ]
  %288 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %555, %.preheader.preheader..preheader.preheader_crit_edge ]
  %289 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %557, %.preheader.preheader..preheader.preheader_crit_edge ]
  %290 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %559, %.preheader.preheader..preheader.preheader_crit_edge ]
  %291 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %561, %.preheader.preheader..preheader.preheader_crit_edge ]
  %292 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %563, %.preheader.preheader..preheader.preheader_crit_edge ]
  %293 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %565, %.preheader.preheader..preheader.preheader_crit_edge ]
  %294 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %567, %.preheader.preheader..preheader.preheader_crit_edge ]
  %295 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %569, %.preheader.preheader..preheader.preheader_crit_edge ]
  %296 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %571, %.preheader.preheader..preheader.preheader_crit_edge ]
  %297 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %573, %.preheader.preheader..preheader.preheader_crit_edge ]
  %298 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %575, %.preheader.preheader..preheader.preheader_crit_edge ]
  %299 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %577, %.preheader.preheader..preheader.preheader_crit_edge ]
  %300 = phi i32 [ 0, %.lr.ph ], [ %578, %.preheader.preheader..preheader.preheader_crit_edge ]
  %301 = shl nuw i32 %300, 1
  %302 = zext i32 %301 to i64
  %303 = add i64 %37, %302
  %304 = add i64 %303, %38
  %305 = inttoptr i64 %304 to i8 addrspace(1)*
  %.ascast.i = addrspacecast i8 addrspace(1)* %305 to i8 addrspace(4)*
  %306 = ptrtoint i8 addrspace(4)* %.ascast.i to i64
  %307 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i)
  %308 = extractvalue { i32, i32 } %307, 0
  %309 = extractvalue { i32, i32 } %307, 1
  %310 = and i32 %308, -64
  %311 = insertelement <2 x i32> undef, i32 %310, i32 0
  %312 = insertelement <2 x i32> %311, i32 %309, i32 1
  %313 = bitcast <2 x i32> %312 to i64
  %314 = trunc i64 %306 to i32
  %315 = lshr i32 %314, 1
  %316 = and i32 %315, 31
  %317 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %313, i32 %21, i32 7, i32 %21, i32 %316, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %318 = add i64 %304, 32
  %319 = inttoptr i64 %318 to i8 addrspace(1)*
  %.ascast.i86 = addrspacecast i8 addrspace(1)* %319 to i8 addrspace(4)*
  %320 = ptrtoint i8 addrspace(4)* %.ascast.i86 to i64
  %321 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86)
  %322 = extractvalue { i32, i32 } %321, 0
  %323 = extractvalue { i32, i32 } %321, 1
  %324 = and i32 %322, -64
  %325 = insertelement <2 x i32> undef, i32 %324, i32 0
  %326 = insertelement <2 x i32> %325, i32 %323, i32 1
  %327 = bitcast <2 x i32> %326 to i64
  %328 = trunc i64 %320 to i32
  %329 = lshr i32 %328, 1
  %330 = and i32 %329, 31
  %331 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %327, i32 %21, i32 7, i32 %21, i32 %330, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %332 = add i64 %303, %39
  %333 = inttoptr i64 %332 to i8 addrspace(1)*
  %.ascast.i.1 = addrspacecast i8 addrspace(1)* %333 to i8 addrspace(4)*
  %334 = ptrtoint i8 addrspace(4)* %.ascast.i.1 to i64
  %335 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.1)
  %336 = extractvalue { i32, i32 } %335, 0
  %337 = extractvalue { i32, i32 } %335, 1
  %338 = and i32 %336, -64
  %339 = insertelement <2 x i32> undef, i32 %338, i32 0
  %340 = insertelement <2 x i32> %339, i32 %337, i32 1
  %341 = bitcast <2 x i32> %340 to i64
  %342 = trunc i64 %334 to i32
  %343 = lshr i32 %342, 1
  %344 = and i32 %343, 31
  %345 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %341, i32 %21, i32 7, i32 %21, i32 %344, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %346 = add i64 %332, 32
  %347 = inttoptr i64 %346 to i8 addrspace(1)*
  %.ascast.i86.1 = addrspacecast i8 addrspace(1)* %347 to i8 addrspace(4)*
  %348 = ptrtoint i8 addrspace(4)* %.ascast.i86.1 to i64
  %349 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86.1)
  %350 = extractvalue { i32, i32 } %349, 0
  %351 = extractvalue { i32, i32 } %349, 1
  %352 = and i32 %350, -64
  %353 = insertelement <2 x i32> undef, i32 %352, i32 0
  %354 = insertelement <2 x i32> %353, i32 %351, i32 1
  %355 = bitcast <2 x i32> %354 to i64
  %356 = trunc i64 %348 to i32
  %357 = lshr i32 %356, 1
  %358 = and i32 %357, 31
  %359 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %355, i32 %21, i32 7, i32 %21, i32 %358, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %360 = add i64 %303, %40
  %361 = inttoptr i64 %360 to i8 addrspace(1)*
  %.ascast.i.2 = addrspacecast i8 addrspace(1)* %361 to i8 addrspace(4)*
  %362 = ptrtoint i8 addrspace(4)* %.ascast.i.2 to i64
  %363 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.2)
  %364 = extractvalue { i32, i32 } %363, 0
  %365 = extractvalue { i32, i32 } %363, 1
  %366 = and i32 %364, -64
  %367 = insertelement <2 x i32> undef, i32 %366, i32 0
  %368 = insertelement <2 x i32> %367, i32 %365, i32 1
  %369 = bitcast <2 x i32> %368 to i64
  %370 = trunc i64 %362 to i32
  %371 = lshr i32 %370, 1
  %372 = and i32 %371, 31
  %373 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %369, i32 %21, i32 7, i32 %21, i32 %372, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %374 = add i64 %360, 32
  %375 = inttoptr i64 %374 to i8 addrspace(1)*
  %.ascast.i86.2 = addrspacecast i8 addrspace(1)* %375 to i8 addrspace(4)*
  %376 = ptrtoint i8 addrspace(4)* %.ascast.i86.2 to i64
  %377 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86.2)
  %378 = extractvalue { i32, i32 } %377, 0
  %379 = extractvalue { i32, i32 } %377, 1
  %380 = and i32 %378, -64
  %381 = insertelement <2 x i32> undef, i32 %380, i32 0
  %382 = insertelement <2 x i32> %381, i32 %379, i32 1
  %383 = bitcast <2 x i32> %382 to i64
  %384 = trunc i64 %376 to i32
  %385 = lshr i32 %384, 1
  %386 = and i32 %385, 31
  %387 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %383, i32 %21, i32 7, i32 %21, i32 %386, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %388 = add i64 %303, %41
  %389 = inttoptr i64 %388 to i8 addrspace(1)*
  %.ascast.i.3 = addrspacecast i8 addrspace(1)* %389 to i8 addrspace(4)*
  %390 = ptrtoint i8 addrspace(4)* %.ascast.i.3 to i64
  %391 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.3)
  %392 = extractvalue { i32, i32 } %391, 0
  %393 = extractvalue { i32, i32 } %391, 1
  %394 = and i32 %392, -64
  %395 = insertelement <2 x i32> undef, i32 %394, i32 0
  %396 = insertelement <2 x i32> %395, i32 %393, i32 1
  %397 = bitcast <2 x i32> %396 to i64
  %398 = trunc i64 %390 to i32
  %399 = lshr i32 %398, 1
  %400 = and i32 %399, 31
  %401 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %397, i32 %21, i32 7, i32 %21, i32 %400, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %402 = add i64 %388, 32
  %403 = inttoptr i64 %402 to i8 addrspace(1)*
  %.ascast.i86.3 = addrspacecast i8 addrspace(1)* %403 to i8 addrspace(4)*
  %404 = ptrtoint i8 addrspace(4)* %.ascast.i86.3 to i64
  %405 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86.3)
  %406 = extractvalue { i32, i32 } %405, 0
  %407 = extractvalue { i32, i32 } %405, 1
  %408 = and i32 %406, -64
  %409 = insertelement <2 x i32> undef, i32 %408, i32 0
  %410 = insertelement <2 x i32> %409, i32 %407, i32 1
  %411 = bitcast <2 x i32> %410 to i64
  %412 = trunc i64 %404 to i32
  %413 = lshr i32 %412, 1
  %414 = and i32 %413, 31
  %415 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %411, i32 %21, i32 7, i32 %21, i32 %414, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %416 = lshr exact i32 %300, 1
  %417 = call { i32, i32 } @llvm.genx.GenISA.mul.pair(i32 %416, i32 0, i32 %17, i32 %18)
  %418 = extractvalue { i32, i32 } %417, 0
  %419 = extractvalue { i32, i32 } %417, 1
  %420 = insertelement <2 x i32> undef, i32 %418, i32 0
  %421 = insertelement <2 x i32> %420, i32 %419, i32 1
  %422 = bitcast <2 x i32> %421 to i64
  %423 = shl nsw i64 %422, 1
  %424 = add i64 %423, %42
  %425 = or i32 %416, 8
  %426 = call { i32, i32 } @llvm.genx.GenISA.mul.pair(i32 %425, i32 0, i32 %17, i32 %18)
  %427 = extractvalue { i32, i32 } %426, 0
  %428 = extractvalue { i32, i32 } %426, 1
  %429 = insertelement <2 x i32> undef, i32 %427, i32 0
  %430 = insertelement <2 x i32> %429, i32 %428, i32 1
  %431 = bitcast <2 x i32> %430 to i64
  %432 = shl nsw i64 %431, 1
  %433 = add i64 %432, %42
  %434 = add i64 %424, %43
  %435 = inttoptr i64 %434 to i8 addrspace(1)*
  %.ascast.i87 = addrspacecast i8 addrspace(1)* %435 to i8 addrspace(4)*
  %436 = ptrtoint i8 addrspace(4)* %.ascast.i87 to i64
  %437 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87)
  %438 = extractvalue { i32, i32 } %437, 0
  %439 = extractvalue { i32, i32 } %437, 1
  %440 = and i32 %438, -64
  %441 = insertelement <2 x i32> undef, i32 %440, i32 0
  %442 = insertelement <2 x i32> %441, i32 %439, i32 1
  %443 = bitcast <2 x i32> %442 to i64
  %444 = trunc i64 %436 to i32
  %445 = lshr i32 %444, 2
  %446 = and i32 %445, 15
  %447 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %443, i32 %24, i32 7, i32 %24, i32 %446, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %448 = add i64 %433, %43
  %449 = inttoptr i64 %448 to i8 addrspace(1)*
  %.ascast.i88 = addrspacecast i8 addrspace(1)* %449 to i8 addrspace(4)*
  %450 = ptrtoint i8 addrspace(4)* %.ascast.i88 to i64
  %451 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88)
  %452 = extractvalue { i32, i32 } %451, 0
  %453 = extractvalue { i32, i32 } %451, 1
  %454 = and i32 %452, -64
  %455 = insertelement <2 x i32> undef, i32 %454, i32 0
  %456 = insertelement <2 x i32> %455, i32 %453, i32 1
  %457 = bitcast <2 x i32> %456 to i64
  %458 = trunc i64 %450 to i32
  %459 = lshr i32 %458, 2
  %460 = and i32 %459, 15
  %461 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %457, i32 %24, i32 7, i32 %24, i32 %460, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %462 = add i64 %434, 64
  %463 = inttoptr i64 %462 to i8 addrspace(1)*
  %.ascast.i87.1 = addrspacecast i8 addrspace(1)* %463 to i8 addrspace(4)*
  %464 = ptrtoint i8 addrspace(4)* %.ascast.i87.1 to i64
  %465 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.1)
  %466 = extractvalue { i32, i32 } %465, 0
  %467 = extractvalue { i32, i32 } %465, 1
  %468 = and i32 %466, -64
  %469 = insertelement <2 x i32> undef, i32 %468, i32 0
  %470 = insertelement <2 x i32> %469, i32 %467, i32 1
  %471 = bitcast <2 x i32> %470 to i64
  %472 = trunc i64 %464 to i32
  %473 = lshr i32 %472, 2
  %474 = and i32 %473, 15
  %475 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %471, i32 %24, i32 7, i32 %24, i32 %474, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %476 = add i64 %448, 64
  %477 = inttoptr i64 %476 to i8 addrspace(1)*
  %.ascast.i88.1 = addrspacecast i8 addrspace(1)* %477 to i8 addrspace(4)*
  %478 = ptrtoint i8 addrspace(4)* %.ascast.i88.1 to i64
  %479 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.1)
  %480 = extractvalue { i32, i32 } %479, 0
  %481 = extractvalue { i32, i32 } %479, 1
  %482 = and i32 %480, -64
  %483 = insertelement <2 x i32> undef, i32 %482, i32 0
  %484 = insertelement <2 x i32> %483, i32 %481, i32 1
  %485 = bitcast <2 x i32> %484 to i64
  %486 = trunc i64 %478 to i32
  %487 = lshr i32 %486, 2
  %488 = and i32 %487, 15
  %489 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %485, i32 %24, i32 7, i32 %24, i32 %488, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %490 = add i64 %434, 128
  %491 = inttoptr i64 %490 to i8 addrspace(1)*
  %.ascast.i87.2 = addrspacecast i8 addrspace(1)* %491 to i8 addrspace(4)*
  %492 = ptrtoint i8 addrspace(4)* %.ascast.i87.2 to i64
  %493 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.2)
  %494 = extractvalue { i32, i32 } %493, 0
  %495 = extractvalue { i32, i32 } %493, 1
  %496 = and i32 %494, -64
  %497 = insertelement <2 x i32> undef, i32 %496, i32 0
  %498 = insertelement <2 x i32> %497, i32 %495, i32 1
  %499 = bitcast <2 x i32> %498 to i64
  %500 = trunc i64 %492 to i32
  %501 = lshr i32 %500, 2
  %502 = and i32 %501, 15
  %503 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %499, i32 %24, i32 7, i32 %24, i32 %502, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %504 = add i64 %448, 128
  %505 = inttoptr i64 %504 to i8 addrspace(1)*
  %.ascast.i88.2 = addrspacecast i8 addrspace(1)* %505 to i8 addrspace(4)*
  %506 = ptrtoint i8 addrspace(4)* %.ascast.i88.2 to i64
  %507 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.2)
  %508 = extractvalue { i32, i32 } %507, 0
  %509 = extractvalue { i32, i32 } %507, 1
  %510 = and i32 %508, -64
  %511 = insertelement <2 x i32> undef, i32 %510, i32 0
  %512 = insertelement <2 x i32> %511, i32 %509, i32 1
  %513 = bitcast <2 x i32> %512 to i64
  %514 = trunc i64 %506 to i32
  %515 = lshr i32 %514, 2
  %516 = and i32 %515, 15
  %517 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %513, i32 %24, i32 7, i32 %24, i32 %516, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %518 = add i64 %434, 192
  %519 = inttoptr i64 %518 to i8 addrspace(1)*
  %.ascast.i87.3 = addrspacecast i8 addrspace(1)* %519 to i8 addrspace(4)*
  %520 = ptrtoint i8 addrspace(4)* %.ascast.i87.3 to i64
  %521 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.3)
  %522 = extractvalue { i32, i32 } %521, 0
  %523 = extractvalue { i32, i32 } %521, 1
  %524 = and i32 %522, -64
  %525 = insertelement <2 x i32> undef, i32 %524, i32 0
  %526 = insertelement <2 x i32> %525, i32 %523, i32 1
  %527 = bitcast <2 x i32> %526 to i64
  %528 = trunc i64 %520 to i32
  %529 = lshr i32 %528, 2
  %530 = and i32 %529, 15
  %531 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %527, i32 %24, i32 7, i32 %24, i32 %530, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %532 = add i64 %448, 192
  %533 = inttoptr i64 %532 to i8 addrspace(1)*
  %.ascast.i88.3 = addrspacecast i8 addrspace(1)* %533 to i8 addrspace(4)*
  %534 = ptrtoint i8 addrspace(4)* %.ascast.i88.3 to i64
  %535 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.3)
  %536 = extractvalue { i32, i32 } %535, 0
  %537 = extractvalue { i32, i32 } %535, 1
  %538 = and i32 %536, -64
  %539 = insertelement <2 x i32> undef, i32 %538, i32 0
  %540 = insertelement <2 x i32> %539, i32 %537, i32 1
  %541 = bitcast <2 x i32> %540 to i64
  %542 = trunc i64 %534 to i32
  %543 = lshr i32 %542, 2
  %544 = and i32 %543, 15
  %545 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %541, i32 %24, i32 7, i32 %24, i32 %544, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %546 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %284, <8 x i16> %317, <8 x i32> %447, i32 11, i32 11, i32 8, i32 8, i1 false)
  %547 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %546, <8 x i16> %331, <8 x i32> %461, i32 11, i32 11, i32 8, i32 8, i1 false)
  %548 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %285, <8 x i16> %317, <8 x i32> %475, i32 11, i32 11, i32 8, i32 8, i1 false)
  %549 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %548, <8 x i16> %331, <8 x i32> %489, i32 11, i32 11, i32 8, i32 8, i1 false)
  %550 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %286, <8 x i16> %317, <8 x i32> %503, i32 11, i32 11, i32 8, i32 8, i1 false)
  %551 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %550, <8 x i16> %331, <8 x i32> %517, i32 11, i32 11, i32 8, i32 8, i1 false)
  %552 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %287, <8 x i16> %317, <8 x i32> %531, i32 11, i32 11, i32 8, i32 8, i1 false)
  %553 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %552, <8 x i16> %331, <8 x i32> %545, i32 11, i32 11, i32 8, i32 8, i1 false)
  %554 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %288, <8 x i16> %345, <8 x i32> %447, i32 11, i32 11, i32 8, i32 8, i1 false)
  %555 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %554, <8 x i16> %359, <8 x i32> %461, i32 11, i32 11, i32 8, i32 8, i1 false)
  %556 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %289, <8 x i16> %345, <8 x i32> %475, i32 11, i32 11, i32 8, i32 8, i1 false)
  %557 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %556, <8 x i16> %359, <8 x i32> %489, i32 11, i32 11, i32 8, i32 8, i1 false)
  %558 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %290, <8 x i16> %345, <8 x i32> %503, i32 11, i32 11, i32 8, i32 8, i1 false)
  %559 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %558, <8 x i16> %359, <8 x i32> %517, i32 11, i32 11, i32 8, i32 8, i1 false)
  %560 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %291, <8 x i16> %345, <8 x i32> %531, i32 11, i32 11, i32 8, i32 8, i1 false)
  %561 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %560, <8 x i16> %359, <8 x i32> %545, i32 11, i32 11, i32 8, i32 8, i1 false)
  %562 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %292, <8 x i16> %373, <8 x i32> %447, i32 11, i32 11, i32 8, i32 8, i1 false)
  %563 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %562, <8 x i16> %387, <8 x i32> %461, i32 11, i32 11, i32 8, i32 8, i1 false)
  %564 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %293, <8 x i16> %373, <8 x i32> %475, i32 11, i32 11, i32 8, i32 8, i1 false)
  %565 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %564, <8 x i16> %387, <8 x i32> %489, i32 11, i32 11, i32 8, i32 8, i1 false)
  %566 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %294, <8 x i16> %373, <8 x i32> %503, i32 11, i32 11, i32 8, i32 8, i1 false)
  %567 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %566, <8 x i16> %387, <8 x i32> %517, i32 11, i32 11, i32 8, i32 8, i1 false)
  %568 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %295, <8 x i16> %373, <8 x i32> %531, i32 11, i32 11, i32 8, i32 8, i1 false)
  %569 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %568, <8 x i16> %387, <8 x i32> %545, i32 11, i32 11, i32 8, i32 8, i1 false)
  %570 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %296, <8 x i16> %401, <8 x i32> %447, i32 11, i32 11, i32 8, i32 8, i1 false)
  %571 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %570, <8 x i16> %415, <8 x i32> %461, i32 11, i32 11, i32 8, i32 8, i1 false)
  %572 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %297, <8 x i16> %401, <8 x i32> %475, i32 11, i32 11, i32 8, i32 8, i1 false)
  %573 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %572, <8 x i16> %415, <8 x i32> %489, i32 11, i32 11, i32 8, i32 8, i1 false)
  %574 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %298, <8 x i16> %401, <8 x i32> %503, i32 11, i32 11, i32 8, i32 8, i1 false)
  %575 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %574, <8 x i16> %415, <8 x i32> %517, i32 11, i32 11, i32 8, i32 8, i1 false)
  %576 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %299, <8 x i16> %401, <8 x i32> %531, i32 11, i32 11, i32 8, i32 8, i1 false)
  %577 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %576, <8 x i16> %415, <8 x i32> %545, i32 11, i32 11, i32 8, i32 8, i1 false)
  %578 = add nuw nsw i32 %300, 32, !spirv.Decorations !429
  %579 = icmp slt i32 %578, %3
  br i1 %579, label %.preheader.preheader..preheader.preheader_crit_edge, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit

.preheader.preheader..preheader.preheader_crit_edge: ; preds = %.preheader.preheader
  br label %.preheader.preheader
}

; Function Attrs: convergent nounwind null_pointer_is_valid
define spir_kernel void @_ZTSZZZ16bench_v3_if_onlyRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
.preheader1.preheader:
  %5 = call i16 @llvm.genx.GenISA.simdLaneId()
  %6 = zext i16 %5 to i32
  %7 = extractelement <8 x i32> %r0, i32 1
  %8 = extractelement <8 x i32> %r0, i32 6
  %9 = bitcast <8 x i32> %r0 to <32 x i8>
  %10 = extractelement <32 x i8> %9, i32 8
  %localThreadId5 = zext i8 %10 to i32
  %11 = shl nsw i32 %8, 6, !spirv.Decorations !427
  %12 = shl nuw nsw i32 %localThreadId5, 4
  %13 = and i32 %12, 4064
  %14 = add nuw nsw i32 %11, %13, !spirv.Decorations !427
  %15 = shl nsw i32 %7, 7, !spirv.Decorations !427
  %16 = shl nuw nsw i32 %localThreadId5, 6
  %17 = and i32 %16, 64
  %18 = or i32 %15, %17
  %19 = shl nsw i32 %4, 1, !spirv.Decorations !427
  %20 = ashr i32 %19, 31
  %21 = icmp sgt i32 %3, 0
  br i1 %21, label %.lr.ph, label %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge

.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge: ; preds = %.preheader1.preheader
  %.pre = shl i32 %4, 2
  %.pre155 = add i32 %.pre, -1
  %.pre157 = or i32 %14, 8
  %.pre159 = or i32 %14, 16
  %.pre161 = or i32 %14, 24
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit

.lr.ph:                                           ; preds = %.preheader1.preheader
  %22 = shl i32 %3, 1
  %23 = add i32 %22, -1
  %24 = shl nuw i32 %18, 1
  %25 = shl i32 %4, 2
  %26 = add i32 %25, -1
  %27 = mul nsw i32 %14, %3
  %28 = sext i32 %27 to i64
  %29 = or i32 %14, 8
  %30 = mul nsw i32 %29, %3
  %31 = sext i32 %30 to i64
  %32 = or i32 %14, 16
  %33 = mul nsw i32 %32, %3
  %34 = sext i32 %33 to i64
  %35 = or i32 %14, 24
  %36 = mul nsw i32 %35, %3
  %37 = sext i32 %36 to i64
  %38 = zext i32 %24 to i64
  %39 = shl nuw nsw i32 %6, 2
  %40 = inttoptr i32 %39 to i32*
  %41 = inttoptr i32 %39 to i8*
  %42 = ptrtoint i8 addrspace(1)* %0 to i64
  %43 = shl nsw i64 %28, 1
  %44 = shl nsw i64 %31, 1
  %45 = shl nsw i64 %34, 1
  %46 = shl nsw i64 %37, 1
  %47 = ptrtoint i8 addrspace(1)* %1 to i64
  %48 = shl nuw nsw i64 %38, 1
  br label %289

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit: ; preds = %.preheader.preheader
  %49 = bitcast <8 x float> %556 to <8 x i32>
  %50 = bitcast <8 x float> %558 to <8 x i32>
  %51 = bitcast <8 x float> %560 to <8 x i32>
  %52 = bitcast <8 x float> %562 to <8 x i32>
  %53 = bitcast <8 x float> %564 to <8 x i32>
  %54 = bitcast <8 x float> %566 to <8 x i32>
  %55 = bitcast <8 x float> %568 to <8 x i32>
  %56 = bitcast <8 x float> %570 to <8 x i32>
  %57 = bitcast <8 x float> %572 to <8 x i32>
  %58 = bitcast <8 x float> %574 to <8 x i32>
  %59 = bitcast <8 x float> %576 to <8 x i32>
  %60 = bitcast <8 x float> %578 to <8 x i32>
  %61 = bitcast <8 x float> %580 to <8 x i32>
  %62 = bitcast <8 x float> %582 to <8 x i32>
  %63 = bitcast <8 x float> %584 to <8 x i32>
  %64 = bitcast <8 x float> %586 to <8 x i32>
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit: ; preds = %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge
  %.pre-phi162 = phi i32 [ %.pre161, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %35, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.pre-phi160 = phi i32 [ %.pre159, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %32, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.pre-phi158 = phi i32 [ %.pre157, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %29, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.pre-phi156 = phi i32 [ %.pre155, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %26, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.089.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %49, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.694.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %50, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.10.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %51, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.14.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %52, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.18.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %53, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.22.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %54, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.26.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %55, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.30.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %56, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.34.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %57, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.38.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %58, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.42.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %59, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.46.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %60, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.50.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %61, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.54.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %62, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.58.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %63, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.62.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %64, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %65 = zext i32 %18 to i64
  %66 = ptrtoint i8 addrspace(1)* %2 to i64
  %67 = shl nuw nsw i64 %65, 2
  %68 = add i64 %67, %66
  %69 = mul nsw i32 %14, %4, !spirv.Decorations !427
  %70 = sext i32 %69 to i64
  %71 = shl nsw i64 %70, 2
  %72 = add i64 %68, %71
  %73 = inttoptr i64 %72 to i8 addrspace(1)*
  %.ascast.i89 = addrspacecast i8 addrspace(1)* %73 to i8 addrspace(4)*
  %74 = ptrtoint i8 addrspace(4)* %.ascast.i89 to i64
  %75 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89)
  %76 = extractvalue { i32, i32 } %75, 0
  %77 = extractvalue { i32, i32 } %75, 1
  %78 = and i32 %76, -64
  %79 = insertelement <2 x i32> undef, i32 %78, i32 0
  %80 = insertelement <2 x i32> %79, i32 %77, i32 1
  %81 = bitcast <2 x i32> %80 to i64
  %82 = trunc i64 %74 to i32
  %83 = lshr i32 %82, 2
  %84 = and i32 %83, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %81, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %84, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.089.0)
  %85 = add i64 %72, 64
  %86 = inttoptr i64 %85 to i8 addrspace(1)*
  %.ascast.i89.1 = addrspacecast i8 addrspace(1)* %86 to i8 addrspace(4)*
  %87 = ptrtoint i8 addrspace(4)* %.ascast.i89.1 to i64
  %88 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.1)
  %89 = extractvalue { i32, i32 } %88, 0
  %90 = extractvalue { i32, i32 } %88, 1
  %91 = and i32 %89, -64
  %92 = insertelement <2 x i32> undef, i32 %91, i32 0
  %93 = insertelement <2 x i32> %92, i32 %90, i32 1
  %94 = bitcast <2 x i32> %93 to i64
  %95 = trunc i64 %87 to i32
  %96 = lshr i32 %95, 2
  %97 = and i32 %96, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %94, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %97, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.694.0)
  %98 = add i64 %72, 128
  %99 = inttoptr i64 %98 to i8 addrspace(1)*
  %.ascast.i89.2 = addrspacecast i8 addrspace(1)* %99 to i8 addrspace(4)*
  %100 = ptrtoint i8 addrspace(4)* %.ascast.i89.2 to i64
  %101 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.2)
  %102 = extractvalue { i32, i32 } %101, 0
  %103 = extractvalue { i32, i32 } %101, 1
  %104 = and i32 %102, -64
  %105 = insertelement <2 x i32> undef, i32 %104, i32 0
  %106 = insertelement <2 x i32> %105, i32 %103, i32 1
  %107 = bitcast <2 x i32> %106 to i64
  %108 = trunc i64 %100 to i32
  %109 = lshr i32 %108, 2
  %110 = and i32 %109, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %107, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %110, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.10.0)
  %111 = add i64 %72, 192
  %112 = inttoptr i64 %111 to i8 addrspace(1)*
  %.ascast.i89.3 = addrspacecast i8 addrspace(1)* %112 to i8 addrspace(4)*
  %113 = ptrtoint i8 addrspace(4)* %.ascast.i89.3 to i64
  %114 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.3)
  %115 = extractvalue { i32, i32 } %114, 0
  %116 = extractvalue { i32, i32 } %114, 1
  %117 = and i32 %115, -64
  %118 = insertelement <2 x i32> undef, i32 %117, i32 0
  %119 = insertelement <2 x i32> %118, i32 %116, i32 1
  %120 = bitcast <2 x i32> %119 to i64
  %121 = trunc i64 %113 to i32
  %122 = lshr i32 %121, 2
  %123 = and i32 %122, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %120, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %123, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.14.0)
  %124 = mul nsw i32 %.pre-phi158, %4, !spirv.Decorations !427
  %125 = sext i32 %124 to i64
  %126 = shl nsw i64 %125, 2
  %127 = add i64 %68, %126
  %128 = inttoptr i64 %127 to i8 addrspace(1)*
  %.ascast.i89.135 = addrspacecast i8 addrspace(1)* %128 to i8 addrspace(4)*
  %129 = ptrtoint i8 addrspace(4)* %.ascast.i89.135 to i64
  %130 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.135)
  %131 = extractvalue { i32, i32 } %130, 0
  %132 = extractvalue { i32, i32 } %130, 1
  %133 = and i32 %131, -64
  %134 = insertelement <2 x i32> undef, i32 %133, i32 0
  %135 = insertelement <2 x i32> %134, i32 %132, i32 1
  %136 = bitcast <2 x i32> %135 to i64
  %137 = trunc i64 %129 to i32
  %138 = lshr i32 %137, 2
  %139 = and i32 %138, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %136, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %139, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.18.0)
  %140 = add i64 %127, 64
  %141 = inttoptr i64 %140 to i8 addrspace(1)*
  %.ascast.i89.1.1 = addrspacecast i8 addrspace(1)* %141 to i8 addrspace(4)*
  %142 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.1 to i64
  %143 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.1.1)
  %144 = extractvalue { i32, i32 } %143, 0
  %145 = extractvalue { i32, i32 } %143, 1
  %146 = and i32 %144, -64
  %147 = insertelement <2 x i32> undef, i32 %146, i32 0
  %148 = insertelement <2 x i32> %147, i32 %145, i32 1
  %149 = bitcast <2 x i32> %148 to i64
  %150 = trunc i64 %142 to i32
  %151 = lshr i32 %150, 2
  %152 = and i32 %151, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %149, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %152, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.22.0)
  %153 = add i64 %127, 128
  %154 = inttoptr i64 %153 to i8 addrspace(1)*
  %.ascast.i89.2.1 = addrspacecast i8 addrspace(1)* %154 to i8 addrspace(4)*
  %155 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.1 to i64
  %156 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.2.1)
  %157 = extractvalue { i32, i32 } %156, 0
  %158 = extractvalue { i32, i32 } %156, 1
  %159 = and i32 %157, -64
  %160 = insertelement <2 x i32> undef, i32 %159, i32 0
  %161 = insertelement <2 x i32> %160, i32 %158, i32 1
  %162 = bitcast <2 x i32> %161 to i64
  %163 = trunc i64 %155 to i32
  %164 = lshr i32 %163, 2
  %165 = and i32 %164, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %162, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %165, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.26.0)
  %166 = add i64 %127, 192
  %167 = inttoptr i64 %166 to i8 addrspace(1)*
  %.ascast.i89.3.1 = addrspacecast i8 addrspace(1)* %167 to i8 addrspace(4)*
  %168 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.1 to i64
  %169 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.3.1)
  %170 = extractvalue { i32, i32 } %169, 0
  %171 = extractvalue { i32, i32 } %169, 1
  %172 = and i32 %170, -64
  %173 = insertelement <2 x i32> undef, i32 %172, i32 0
  %174 = insertelement <2 x i32> %173, i32 %171, i32 1
  %175 = bitcast <2 x i32> %174 to i64
  %176 = trunc i64 %168 to i32
  %177 = lshr i32 %176, 2
  %178 = and i32 %177, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %175, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %178, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.30.0)
  %179 = mul nsw i32 %.pre-phi160, %4, !spirv.Decorations !427
  %180 = sext i32 %179 to i64
  %181 = shl nsw i64 %180, 2
  %182 = add i64 %68, %181
  %183 = inttoptr i64 %182 to i8 addrspace(1)*
  %.ascast.i89.236 = addrspacecast i8 addrspace(1)* %183 to i8 addrspace(4)*
  %184 = ptrtoint i8 addrspace(4)* %.ascast.i89.236 to i64
  %185 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.236)
  %186 = extractvalue { i32, i32 } %185, 0
  %187 = extractvalue { i32, i32 } %185, 1
  %188 = and i32 %186, -64
  %189 = insertelement <2 x i32> undef, i32 %188, i32 0
  %190 = insertelement <2 x i32> %189, i32 %187, i32 1
  %191 = bitcast <2 x i32> %190 to i64
  %192 = trunc i64 %184 to i32
  %193 = lshr i32 %192, 2
  %194 = and i32 %193, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %191, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %194, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.34.0)
  %195 = add i64 %182, 64
  %196 = inttoptr i64 %195 to i8 addrspace(1)*
  %.ascast.i89.1.2 = addrspacecast i8 addrspace(1)* %196 to i8 addrspace(4)*
  %197 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.2 to i64
  %198 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.1.2)
  %199 = extractvalue { i32, i32 } %198, 0
  %200 = extractvalue { i32, i32 } %198, 1
  %201 = and i32 %199, -64
  %202 = insertelement <2 x i32> undef, i32 %201, i32 0
  %203 = insertelement <2 x i32> %202, i32 %200, i32 1
  %204 = bitcast <2 x i32> %203 to i64
  %205 = trunc i64 %197 to i32
  %206 = lshr i32 %205, 2
  %207 = and i32 %206, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %204, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %207, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.38.0)
  %208 = add i64 %182, 128
  %209 = inttoptr i64 %208 to i8 addrspace(1)*
  %.ascast.i89.2.2 = addrspacecast i8 addrspace(1)* %209 to i8 addrspace(4)*
  %210 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.2 to i64
  %211 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.2.2)
  %212 = extractvalue { i32, i32 } %211, 0
  %213 = extractvalue { i32, i32 } %211, 1
  %214 = and i32 %212, -64
  %215 = insertelement <2 x i32> undef, i32 %214, i32 0
  %216 = insertelement <2 x i32> %215, i32 %213, i32 1
  %217 = bitcast <2 x i32> %216 to i64
  %218 = trunc i64 %210 to i32
  %219 = lshr i32 %218, 2
  %220 = and i32 %219, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %217, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %220, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.42.0)
  %221 = add i64 %182, 192
  %222 = inttoptr i64 %221 to i8 addrspace(1)*
  %.ascast.i89.3.2 = addrspacecast i8 addrspace(1)* %222 to i8 addrspace(4)*
  %223 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.2 to i64
  %224 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.3.2)
  %225 = extractvalue { i32, i32 } %224, 0
  %226 = extractvalue { i32, i32 } %224, 1
  %227 = and i32 %225, -64
  %228 = insertelement <2 x i32> undef, i32 %227, i32 0
  %229 = insertelement <2 x i32> %228, i32 %226, i32 1
  %230 = bitcast <2 x i32> %229 to i64
  %231 = trunc i64 %223 to i32
  %232 = lshr i32 %231, 2
  %233 = and i32 %232, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %230, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %233, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.46.0)
  %234 = mul nsw i32 %.pre-phi162, %4, !spirv.Decorations !427
  %235 = sext i32 %234 to i64
  %236 = shl nsw i64 %235, 2
  %237 = add i64 %68, %236
  %238 = inttoptr i64 %237 to i8 addrspace(1)*
  %.ascast.i89.337 = addrspacecast i8 addrspace(1)* %238 to i8 addrspace(4)*
  %239 = ptrtoint i8 addrspace(4)* %.ascast.i89.337 to i64
  %240 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.337)
  %241 = extractvalue { i32, i32 } %240, 0
  %242 = extractvalue { i32, i32 } %240, 1
  %243 = and i32 %241, -64
  %244 = insertelement <2 x i32> undef, i32 %243, i32 0
  %245 = insertelement <2 x i32> %244, i32 %242, i32 1
  %246 = bitcast <2 x i32> %245 to i64
  %247 = trunc i64 %239 to i32
  %248 = lshr i32 %247, 2
  %249 = and i32 %248, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %246, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %249, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.50.0)
  %250 = add i64 %237, 64
  %251 = inttoptr i64 %250 to i8 addrspace(1)*
  %.ascast.i89.1.3 = addrspacecast i8 addrspace(1)* %251 to i8 addrspace(4)*
  %252 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.3 to i64
  %253 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.1.3)
  %254 = extractvalue { i32, i32 } %253, 0
  %255 = extractvalue { i32, i32 } %253, 1
  %256 = and i32 %254, -64
  %257 = insertelement <2 x i32> undef, i32 %256, i32 0
  %258 = insertelement <2 x i32> %257, i32 %255, i32 1
  %259 = bitcast <2 x i32> %258 to i64
  %260 = trunc i64 %252 to i32
  %261 = lshr i32 %260, 2
  %262 = and i32 %261, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %259, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %262, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.54.0)
  %263 = add i64 %237, 128
  %264 = inttoptr i64 %263 to i8 addrspace(1)*
  %.ascast.i89.2.3 = addrspacecast i8 addrspace(1)* %264 to i8 addrspace(4)*
  %265 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.3 to i64
  %266 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.2.3)
  %267 = extractvalue { i32, i32 } %266, 0
  %268 = extractvalue { i32, i32 } %266, 1
  %269 = and i32 %267, -64
  %270 = insertelement <2 x i32> undef, i32 %269, i32 0
  %271 = insertelement <2 x i32> %270, i32 %268, i32 1
  %272 = bitcast <2 x i32> %271 to i64
  %273 = trunc i64 %265 to i32
  %274 = lshr i32 %273, 2
  %275 = and i32 %274, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %272, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %275, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.58.0)
  %276 = add i64 %237, 192
  %277 = inttoptr i64 %276 to i8 addrspace(1)*
  %.ascast.i89.3.3 = addrspacecast i8 addrspace(1)* %277 to i8 addrspace(4)*
  %278 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.3 to i64
  %279 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.3.3)
  %280 = extractvalue { i32, i32 } %279, 0
  %281 = extractvalue { i32, i32 } %279, 1
  %282 = and i32 %280, -64
  %283 = insertelement <2 x i32> undef, i32 %282, i32 0
  %284 = insertelement <2 x i32> %283, i32 %281, i32 1
  %285 = bitcast <2 x i32> %284 to i64
  %286 = trunc i64 %278 to i32
  %287 = lshr i32 %286, 2
  %288 = and i32 %287, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %285, i32 %.pre-phi156, i32 7, i32 %.pre-phi156, i32 %288, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.62.0)
  ret void

289:                                              ; preds = %.preheader.preheader._crit_edge, %.lr.ph
  %290 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %556, %.preheader.preheader._crit_edge ]
  %291 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %558, %.preheader.preheader._crit_edge ]
  %292 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %560, %.preheader.preheader._crit_edge ]
  %293 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %562, %.preheader.preheader._crit_edge ]
  %294 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %564, %.preheader.preheader._crit_edge ]
  %295 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %566, %.preheader.preheader._crit_edge ]
  %296 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %568, %.preheader.preheader._crit_edge ]
  %297 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %570, %.preheader.preheader._crit_edge ]
  %298 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %572, %.preheader.preheader._crit_edge ]
  %299 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %574, %.preheader.preheader._crit_edge ]
  %300 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %576, %.preheader.preheader._crit_edge ]
  %301 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %578, %.preheader.preheader._crit_edge ]
  %302 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %580, %.preheader.preheader._crit_edge ]
  %303 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %582, %.preheader.preheader._crit_edge ]
  %304 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %584, %.preheader.preheader._crit_edge ]
  %305 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %586, %.preheader.preheader._crit_edge ]
  %306 = phi i32 [ 0, %.lr.ph ], [ %307, %.preheader.preheader._crit_edge ]
  %307 = add nuw nsw i32 %306, 32, !spirv.Decorations !429
  %308 = icmp slt i32 %307, %3
  br i1 %308, label %309, label %..preheader.preheader_crit_edge

..preheader.preheader_crit_edge:                  ; preds = %289
  br label %.preheader.preheader

309:                                              ; preds = %289
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %41)
  store volatile i32 %307, i32* %40, align 4
  %.0..0..0..0..0..0..0. = load volatile i32, i32* %40, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41)
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %..preheader.preheader_crit_edge, %309
  %310 = shl nuw i32 %306, 1
  %311 = zext i32 %310 to i64
  %312 = add i64 %42, %311
  %313 = add i64 %312, %43
  %314 = inttoptr i64 %313 to i8 addrspace(1)*
  %.ascast.i = addrspacecast i8 addrspace(1)* %314 to i8 addrspace(4)*
  %315 = ptrtoint i8 addrspace(4)* %.ascast.i to i64
  %316 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i)
  %317 = extractvalue { i32, i32 } %316, 0
  %318 = extractvalue { i32, i32 } %316, 1
  %319 = and i32 %317, -64
  %320 = insertelement <2 x i32> undef, i32 %319, i32 0
  %321 = insertelement <2 x i32> %320, i32 %318, i32 1
  %322 = bitcast <2 x i32> %321 to i64
  %323 = trunc i64 %315 to i32
  %324 = lshr i32 %323, 1
  %325 = and i32 %324, 31
  %326 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %322, i32 %23, i32 7, i32 %23, i32 %325, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %327 = add i64 %313, 32
  %328 = inttoptr i64 %327 to i8 addrspace(1)*
  %.ascast.i86 = addrspacecast i8 addrspace(1)* %328 to i8 addrspace(4)*
  %329 = ptrtoint i8 addrspace(4)* %.ascast.i86 to i64
  %330 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86)
  %331 = extractvalue { i32, i32 } %330, 0
  %332 = extractvalue { i32, i32 } %330, 1
  %333 = and i32 %331, -64
  %334 = insertelement <2 x i32> undef, i32 %333, i32 0
  %335 = insertelement <2 x i32> %334, i32 %332, i32 1
  %336 = bitcast <2 x i32> %335 to i64
  %337 = trunc i64 %329 to i32
  %338 = lshr i32 %337, 1
  %339 = and i32 %338, 31
  %340 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %336, i32 %23, i32 7, i32 %23, i32 %339, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %341 = add i64 %312, %44
  %342 = inttoptr i64 %341 to i8 addrspace(1)*
  %.ascast.i.1 = addrspacecast i8 addrspace(1)* %342 to i8 addrspace(4)*
  %343 = ptrtoint i8 addrspace(4)* %.ascast.i.1 to i64
  %344 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.1)
  %345 = extractvalue { i32, i32 } %344, 0
  %346 = extractvalue { i32, i32 } %344, 1
  %347 = and i32 %345, -64
  %348 = insertelement <2 x i32> undef, i32 %347, i32 0
  %349 = insertelement <2 x i32> %348, i32 %346, i32 1
  %350 = bitcast <2 x i32> %349 to i64
  %351 = trunc i64 %343 to i32
  %352 = lshr i32 %351, 1
  %353 = and i32 %352, 31
  %354 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %350, i32 %23, i32 7, i32 %23, i32 %353, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %355 = add i64 %341, 32
  %356 = inttoptr i64 %355 to i8 addrspace(1)*
  %.ascast.i86.1 = addrspacecast i8 addrspace(1)* %356 to i8 addrspace(4)*
  %357 = ptrtoint i8 addrspace(4)* %.ascast.i86.1 to i64
  %358 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86.1)
  %359 = extractvalue { i32, i32 } %358, 0
  %360 = extractvalue { i32, i32 } %358, 1
  %361 = and i32 %359, -64
  %362 = insertelement <2 x i32> undef, i32 %361, i32 0
  %363 = insertelement <2 x i32> %362, i32 %360, i32 1
  %364 = bitcast <2 x i32> %363 to i64
  %365 = trunc i64 %357 to i32
  %366 = lshr i32 %365, 1
  %367 = and i32 %366, 31
  %368 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %364, i32 %23, i32 7, i32 %23, i32 %367, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %369 = add i64 %312, %45
  %370 = inttoptr i64 %369 to i8 addrspace(1)*
  %.ascast.i.2 = addrspacecast i8 addrspace(1)* %370 to i8 addrspace(4)*
  %371 = ptrtoint i8 addrspace(4)* %.ascast.i.2 to i64
  %372 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.2)
  %373 = extractvalue { i32, i32 } %372, 0
  %374 = extractvalue { i32, i32 } %372, 1
  %375 = and i32 %373, -64
  %376 = insertelement <2 x i32> undef, i32 %375, i32 0
  %377 = insertelement <2 x i32> %376, i32 %374, i32 1
  %378 = bitcast <2 x i32> %377 to i64
  %379 = trunc i64 %371 to i32
  %380 = lshr i32 %379, 1
  %381 = and i32 %380, 31
  %382 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %378, i32 %23, i32 7, i32 %23, i32 %381, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %383 = add i64 %369, 32
  %384 = inttoptr i64 %383 to i8 addrspace(1)*
  %.ascast.i86.2 = addrspacecast i8 addrspace(1)* %384 to i8 addrspace(4)*
  %385 = ptrtoint i8 addrspace(4)* %.ascast.i86.2 to i64
  %386 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86.2)
  %387 = extractvalue { i32, i32 } %386, 0
  %388 = extractvalue { i32, i32 } %386, 1
  %389 = and i32 %387, -64
  %390 = insertelement <2 x i32> undef, i32 %389, i32 0
  %391 = insertelement <2 x i32> %390, i32 %388, i32 1
  %392 = bitcast <2 x i32> %391 to i64
  %393 = trunc i64 %385 to i32
  %394 = lshr i32 %393, 1
  %395 = and i32 %394, 31
  %396 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %392, i32 %23, i32 7, i32 %23, i32 %395, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %397 = add i64 %312, %46
  %398 = inttoptr i64 %397 to i8 addrspace(1)*
  %.ascast.i.3 = addrspacecast i8 addrspace(1)* %398 to i8 addrspace(4)*
  %399 = ptrtoint i8 addrspace(4)* %.ascast.i.3 to i64
  %400 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.3)
  %401 = extractvalue { i32, i32 } %400, 0
  %402 = extractvalue { i32, i32 } %400, 1
  %403 = and i32 %401, -64
  %404 = insertelement <2 x i32> undef, i32 %403, i32 0
  %405 = insertelement <2 x i32> %404, i32 %402, i32 1
  %406 = bitcast <2 x i32> %405 to i64
  %407 = trunc i64 %399 to i32
  %408 = lshr i32 %407, 1
  %409 = and i32 %408, 31
  %410 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %406, i32 %23, i32 7, i32 %23, i32 %409, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %411 = add i64 %397, 32
  %412 = inttoptr i64 %411 to i8 addrspace(1)*
  %.ascast.i86.3 = addrspacecast i8 addrspace(1)* %412 to i8 addrspace(4)*
  %413 = ptrtoint i8 addrspace(4)* %.ascast.i86.3 to i64
  %414 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86.3)
  %415 = extractvalue { i32, i32 } %414, 0
  %416 = extractvalue { i32, i32 } %414, 1
  %417 = and i32 %415, -64
  %418 = insertelement <2 x i32> undef, i32 %417, i32 0
  %419 = insertelement <2 x i32> %418, i32 %416, i32 1
  %420 = bitcast <2 x i32> %419 to i64
  %421 = trunc i64 %413 to i32
  %422 = lshr i32 %421, 1
  %423 = and i32 %422, 31
  %424 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %420, i32 %23, i32 7, i32 %23, i32 %423, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %425 = lshr exact i32 %306, 1
  %426 = call { i32, i32 } @llvm.genx.GenISA.mul.pair(i32 %425, i32 0, i32 %19, i32 %20)
  %427 = extractvalue { i32, i32 } %426, 0
  %428 = extractvalue { i32, i32 } %426, 1
  %429 = insertelement <2 x i32> undef, i32 %427, i32 0
  %430 = insertelement <2 x i32> %429, i32 %428, i32 1
  %431 = bitcast <2 x i32> %430 to i64
  %432 = shl nsw i64 %431, 1
  %433 = add i64 %432, %47
  %434 = or i32 %425, 8
  %435 = call { i32, i32 } @llvm.genx.GenISA.mul.pair(i32 %434, i32 0, i32 %19, i32 %20)
  %436 = extractvalue { i32, i32 } %435, 0
  %437 = extractvalue { i32, i32 } %435, 1
  %438 = insertelement <2 x i32> undef, i32 %436, i32 0
  %439 = insertelement <2 x i32> %438, i32 %437, i32 1
  %440 = bitcast <2 x i32> %439 to i64
  %441 = shl nsw i64 %440, 1
  %442 = add i64 %441, %47
  %443 = add i64 %433, %48
  %444 = inttoptr i64 %443 to i8 addrspace(1)*
  %.ascast.i87 = addrspacecast i8 addrspace(1)* %444 to i8 addrspace(4)*
  %445 = ptrtoint i8 addrspace(4)* %.ascast.i87 to i64
  %446 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87)
  %447 = extractvalue { i32, i32 } %446, 0
  %448 = extractvalue { i32, i32 } %446, 1
  %449 = and i32 %447, -64
  %450 = insertelement <2 x i32> undef, i32 %449, i32 0
  %451 = insertelement <2 x i32> %450, i32 %448, i32 1
  %452 = bitcast <2 x i32> %451 to i64
  %453 = trunc i64 %445 to i32
  %454 = lshr i32 %453, 2
  %455 = and i32 %454, 15
  %456 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %452, i32 %26, i32 7, i32 %26, i32 %455, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %457 = add i64 %442, %48
  %458 = inttoptr i64 %457 to i8 addrspace(1)*
  %.ascast.i88 = addrspacecast i8 addrspace(1)* %458 to i8 addrspace(4)*
  %459 = ptrtoint i8 addrspace(4)* %.ascast.i88 to i64
  %460 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88)
  %461 = extractvalue { i32, i32 } %460, 0
  %462 = extractvalue { i32, i32 } %460, 1
  %463 = and i32 %461, -64
  %464 = insertelement <2 x i32> undef, i32 %463, i32 0
  %465 = insertelement <2 x i32> %464, i32 %462, i32 1
  %466 = bitcast <2 x i32> %465 to i64
  %467 = trunc i64 %459 to i32
  %468 = lshr i32 %467, 2
  %469 = and i32 %468, 15
  %470 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %466, i32 %26, i32 7, i32 %26, i32 %469, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %471 = add i64 %443, 64
  %472 = inttoptr i64 %471 to i8 addrspace(1)*
  %.ascast.i87.1 = addrspacecast i8 addrspace(1)* %472 to i8 addrspace(4)*
  %473 = ptrtoint i8 addrspace(4)* %.ascast.i87.1 to i64
  %474 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.1)
  %475 = extractvalue { i32, i32 } %474, 0
  %476 = extractvalue { i32, i32 } %474, 1
  %477 = and i32 %475, -64
  %478 = insertelement <2 x i32> undef, i32 %477, i32 0
  %479 = insertelement <2 x i32> %478, i32 %476, i32 1
  %480 = bitcast <2 x i32> %479 to i64
  %481 = trunc i64 %473 to i32
  %482 = lshr i32 %481, 2
  %483 = and i32 %482, 15
  %484 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %480, i32 %26, i32 7, i32 %26, i32 %483, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %485 = add i64 %457, 64
  %486 = inttoptr i64 %485 to i8 addrspace(1)*
  %.ascast.i88.1 = addrspacecast i8 addrspace(1)* %486 to i8 addrspace(4)*
  %487 = ptrtoint i8 addrspace(4)* %.ascast.i88.1 to i64
  %488 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.1)
  %489 = extractvalue { i32, i32 } %488, 0
  %490 = extractvalue { i32, i32 } %488, 1
  %491 = and i32 %489, -64
  %492 = insertelement <2 x i32> undef, i32 %491, i32 0
  %493 = insertelement <2 x i32> %492, i32 %490, i32 1
  %494 = bitcast <2 x i32> %493 to i64
  %495 = trunc i64 %487 to i32
  %496 = lshr i32 %495, 2
  %497 = and i32 %496, 15
  %498 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %494, i32 %26, i32 7, i32 %26, i32 %497, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %499 = add i64 %443, 128
  %500 = inttoptr i64 %499 to i8 addrspace(1)*
  %.ascast.i87.2 = addrspacecast i8 addrspace(1)* %500 to i8 addrspace(4)*
  %501 = ptrtoint i8 addrspace(4)* %.ascast.i87.2 to i64
  %502 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.2)
  %503 = extractvalue { i32, i32 } %502, 0
  %504 = extractvalue { i32, i32 } %502, 1
  %505 = and i32 %503, -64
  %506 = insertelement <2 x i32> undef, i32 %505, i32 0
  %507 = insertelement <2 x i32> %506, i32 %504, i32 1
  %508 = bitcast <2 x i32> %507 to i64
  %509 = trunc i64 %501 to i32
  %510 = lshr i32 %509, 2
  %511 = and i32 %510, 15
  %512 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %508, i32 %26, i32 7, i32 %26, i32 %511, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %513 = add i64 %457, 128
  %514 = inttoptr i64 %513 to i8 addrspace(1)*
  %.ascast.i88.2 = addrspacecast i8 addrspace(1)* %514 to i8 addrspace(4)*
  %515 = ptrtoint i8 addrspace(4)* %.ascast.i88.2 to i64
  %516 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.2)
  %517 = extractvalue { i32, i32 } %516, 0
  %518 = extractvalue { i32, i32 } %516, 1
  %519 = and i32 %517, -64
  %520 = insertelement <2 x i32> undef, i32 %519, i32 0
  %521 = insertelement <2 x i32> %520, i32 %518, i32 1
  %522 = bitcast <2 x i32> %521 to i64
  %523 = trunc i64 %515 to i32
  %524 = lshr i32 %523, 2
  %525 = and i32 %524, 15
  %526 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %522, i32 %26, i32 7, i32 %26, i32 %525, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %527 = add i64 %443, 192
  %528 = inttoptr i64 %527 to i8 addrspace(1)*
  %.ascast.i87.3 = addrspacecast i8 addrspace(1)* %528 to i8 addrspace(4)*
  %529 = ptrtoint i8 addrspace(4)* %.ascast.i87.3 to i64
  %530 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.3)
  %531 = extractvalue { i32, i32 } %530, 0
  %532 = extractvalue { i32, i32 } %530, 1
  %533 = and i32 %531, -64
  %534 = insertelement <2 x i32> undef, i32 %533, i32 0
  %535 = insertelement <2 x i32> %534, i32 %532, i32 1
  %536 = bitcast <2 x i32> %535 to i64
  %537 = trunc i64 %529 to i32
  %538 = lshr i32 %537, 2
  %539 = and i32 %538, 15
  %540 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %536, i32 %26, i32 7, i32 %26, i32 %539, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %541 = add i64 %457, 192
  %542 = inttoptr i64 %541 to i8 addrspace(1)*
  %.ascast.i88.3 = addrspacecast i8 addrspace(1)* %542 to i8 addrspace(4)*
  %543 = ptrtoint i8 addrspace(4)* %.ascast.i88.3 to i64
  %544 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.3)
  %545 = extractvalue { i32, i32 } %544, 0
  %546 = extractvalue { i32, i32 } %544, 1
  %547 = and i32 %545, -64
  %548 = insertelement <2 x i32> undef, i32 %547, i32 0
  %549 = insertelement <2 x i32> %548, i32 %546, i32 1
  %550 = bitcast <2 x i32> %549 to i64
  %551 = trunc i64 %543 to i32
  %552 = lshr i32 %551, 2
  %553 = and i32 %552, 15
  %554 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %550, i32 %26, i32 7, i32 %26, i32 %553, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %555 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %290, <8 x i16> %326, <8 x i32> %456, i32 11, i32 11, i32 8, i32 8, i1 false)
  %556 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %555, <8 x i16> %340, <8 x i32> %470, i32 11, i32 11, i32 8, i32 8, i1 false)
  %557 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %291, <8 x i16> %326, <8 x i32> %484, i32 11, i32 11, i32 8, i32 8, i1 false)
  %558 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %557, <8 x i16> %340, <8 x i32> %498, i32 11, i32 11, i32 8, i32 8, i1 false)
  %559 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %292, <8 x i16> %326, <8 x i32> %512, i32 11, i32 11, i32 8, i32 8, i1 false)
  %560 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %559, <8 x i16> %340, <8 x i32> %526, i32 11, i32 11, i32 8, i32 8, i1 false)
  %561 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %293, <8 x i16> %326, <8 x i32> %540, i32 11, i32 11, i32 8, i32 8, i1 false)
  %562 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %561, <8 x i16> %340, <8 x i32> %554, i32 11, i32 11, i32 8, i32 8, i1 false)
  %563 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %294, <8 x i16> %354, <8 x i32> %456, i32 11, i32 11, i32 8, i32 8, i1 false)
  %564 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %563, <8 x i16> %368, <8 x i32> %470, i32 11, i32 11, i32 8, i32 8, i1 false)
  %565 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %295, <8 x i16> %354, <8 x i32> %484, i32 11, i32 11, i32 8, i32 8, i1 false)
  %566 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %565, <8 x i16> %368, <8 x i32> %498, i32 11, i32 11, i32 8, i32 8, i1 false)
  %567 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %296, <8 x i16> %354, <8 x i32> %512, i32 11, i32 11, i32 8, i32 8, i1 false)
  %568 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %567, <8 x i16> %368, <8 x i32> %526, i32 11, i32 11, i32 8, i32 8, i1 false)
  %569 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %297, <8 x i16> %354, <8 x i32> %540, i32 11, i32 11, i32 8, i32 8, i1 false)
  %570 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %569, <8 x i16> %368, <8 x i32> %554, i32 11, i32 11, i32 8, i32 8, i1 false)
  %571 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %298, <8 x i16> %382, <8 x i32> %456, i32 11, i32 11, i32 8, i32 8, i1 false)
  %572 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %571, <8 x i16> %396, <8 x i32> %470, i32 11, i32 11, i32 8, i32 8, i1 false)
  %573 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %299, <8 x i16> %382, <8 x i32> %484, i32 11, i32 11, i32 8, i32 8, i1 false)
  %574 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %573, <8 x i16> %396, <8 x i32> %498, i32 11, i32 11, i32 8, i32 8, i1 false)
  %575 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %300, <8 x i16> %382, <8 x i32> %512, i32 11, i32 11, i32 8, i32 8, i1 false)
  %576 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %575, <8 x i16> %396, <8 x i32> %526, i32 11, i32 11, i32 8, i32 8, i1 false)
  %577 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %301, <8 x i16> %382, <8 x i32> %540, i32 11, i32 11, i32 8, i32 8, i1 false)
  %578 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %577, <8 x i16> %396, <8 x i32> %554, i32 11, i32 11, i32 8, i32 8, i1 false)
  %579 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %302, <8 x i16> %410, <8 x i32> %456, i32 11, i32 11, i32 8, i32 8, i1 false)
  %580 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %579, <8 x i16> %424, <8 x i32> %470, i32 11, i32 11, i32 8, i32 8, i1 false)
  %581 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %303, <8 x i16> %410, <8 x i32> %484, i32 11, i32 11, i32 8, i32 8, i1 false)
  %582 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %581, <8 x i16> %424, <8 x i32> %498, i32 11, i32 11, i32 8, i32 8, i1 false)
  %583 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %304, <8 x i16> %410, <8 x i32> %512, i32 11, i32 11, i32 8, i32 8, i1 false)
  %584 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %583, <8 x i16> %424, <8 x i32> %526, i32 11, i32 11, i32 8, i32 8, i1 false)
  %585 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %305, <8 x i16> %410, <8 x i32> %540, i32 11, i32 11, i32 8, i32 8, i1 false)
  %586 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %585, <8 x i16> %424, <8 x i32> %554, i32 11, i32 11, i32 8, i32 8, i1 false)
  br i1 %308, label %.preheader.preheader._crit_edge, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit

.preheader.preheader._crit_edge:                  ; preds = %.preheader.preheader
  br label %289
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

; Function Desc: 
; Output: 
; Function Attrs: nounwind readnone willreturn
declare i16 @llvm.genx.GenISA.simdLaneId() #7

; Function Desc: 
; Output: 
; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.genx.GenISA.simdSize() #7

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
!igc.functions = !{!3, !24, !25}
!IGCMetadata = !{!26}
!opencl.ocl.version = !{!424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424}
!opencl.spir.version = !{!424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424}
!llvm.ident = !{!425, !425, !425, !425, !425, !425, !425, !425, !425, !425, !425, !425, !425, !425, !425, !425, !425, !425, !425, !425, !425, !425}
!llvm.module.flags = !{!426}

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
!26 = !{!"ModuleMD", !27, !28, !130, !253, !284, !301, !321, !331, !333, !334, !349, !350, !351, !352, !356, !357, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !376, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !197, !394, !401, !402, !404, !406, !409, !410, !411, !413, !414, !415, !420, !421, !422, !423}
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
!251 = !{!"FuncMDValue[2]", !133, !134, !138, !139, !140, !162, !189, !190, !191, !192, !193, !194, !195, !196, !252, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !213, !219, !225, !231, !237, !243, !244}
!252 = !{!"privateMemoryPerWI", i32 4}
!253 = !{!"pushInfo", !254, !255, !256, !260, !261, !262, !263, !264, !265, !266, !267, !280, !281, !282, !283}
!254 = !{!"pushableAddresses"}
!255 = !{!"bindlessPushInfo"}
!256 = !{!"dynamicBufferInfo", !257, !258, !259}
!257 = !{!"firstIndex", i32 0}
!258 = !{!"numOffsets", i32 0}
!259 = !{!"forceDisabled", i1 false}
!260 = !{!"MaxNumberOfPushedBuffers", i32 0}
!261 = !{!"inlineConstantBufferSlot", i32 -1}
!262 = !{!"inlineConstantBufferOffset", i32 -1}
!263 = !{!"inlineConstantBufferGRFOffset", i32 -1}
!264 = !{!"constants"}
!265 = !{!"inputs"}
!266 = !{!"constantReg"}
!267 = !{!"simplePushInfoArr", !268, !277, !278, !279}
!268 = !{!"simplePushInfoArrVec[0]", !269, !270, !271, !272, !273, !274, !275, !276}
!269 = !{!"cbIdx", i32 0}
!270 = !{!"pushableAddressGrfOffset", i32 -1}
!271 = !{!"pushableOffsetGrfOffset", i32 -1}
!272 = !{!"offset", i32 0}
!273 = !{!"size", i32 0}
!274 = !{!"isStateless", i1 false}
!275 = !{!"isBindless", i1 false}
!276 = !{!"simplePushLoads"}
!277 = !{!"simplePushInfoArrVec[1]", !269, !270, !271, !272, !273, !274, !275, !276}
!278 = !{!"simplePushInfoArrVec[2]", !269, !270, !271, !272, !273, !274, !275, !276}
!279 = !{!"simplePushInfoArrVec[3]", !269, !270, !271, !272, !273, !274, !275, !276}
!280 = !{!"simplePushBufferUsed", i32 0}
!281 = !{!"pushAnalysisWIInfos"}
!282 = !{!"inlineRTGlobalPtrOffset", i32 0}
!283 = !{!"rtSyncSurfPtrOffset", i32 0}
!284 = !{!"psInfo", !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300}
!285 = !{!"BlendStateDisabledMask", i8 0}
!286 = !{!"SkipSrc0Alpha", i1 false}
!287 = !{!"DualSourceBlendingDisabled", i1 false}
!288 = !{!"ForceEnableSimd32", i1 false}
!289 = !{!"DisableSimd32WithDiscard", i1 false}
!290 = !{!"outputDepth", i1 false}
!291 = !{!"outputStencil", i1 false}
!292 = !{!"outputMask", i1 false}
!293 = !{!"blendToFillEnabled", i1 false}
!294 = !{!"forceEarlyZ", i1 false}
!295 = !{!"hasVersionedLoop", i1 false}
!296 = !{!"forceSingleSourceRTWAfterDualSourceRTW", i1 false}
!297 = !{!"NumSamples", i8 0}
!298 = !{!"blendOptimizationMode"}
!299 = !{!"colorOutputMask"}
!300 = !{!"WaDisableVRS", i1 false}
!301 = !{!"csInfo", !302, !303, !304, !305, !68, !44, !45, !46, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !78, !317, !318, !319, !320}
!302 = !{!"maxWorkGroupSize", i32 0}
!303 = !{!"waveSize", i32 0}
!304 = !{!"ComputeShaderSecondCompile"}
!305 = !{!"forcedSIMDSize", i8 0}
!306 = !{!"forceSpillCompression", i1 false}
!307 = !{!"allowLowerSimd", i1 false}
!308 = !{!"disableSimd32Slicing", i1 false}
!309 = !{!"disableSplitOnSpill", i1 false}
!310 = !{!"enableNewSpillCostFunction", i1 false}
!311 = !{!"forceVISAPreSched", i1 false}
!312 = !{!"disableLocalIdOrderOptimizations", i1 false}
!313 = !{!"disableDispatchAlongY", i1 false}
!314 = !{!"neededThreadIdLayout", i1* null}
!315 = !{!"forceTileYWalk", i1 false}
!316 = !{!"atomicBranch", i32 0}
!317 = !{!"disableEarlyOut", i1 false}
!318 = !{!"walkOrderEnabled", i1 false}
!319 = !{!"walkOrderOverride", i32 0}
!320 = !{!"ResForHfPacking"}
!321 = !{!"msInfo", !322, !323, !324, !325, !326, !327, !328, !329, !330}
!322 = !{!"PrimitiveTopology", i32 3}
!323 = !{!"MaxNumOfPrimitives", i32 0}
!324 = !{!"MaxNumOfVertices", i32 0}
!325 = !{!"MaxNumOfPerPrimitiveOutputs", i32 0}
!326 = !{!"MaxNumOfPerVertexOutputs", i32 0}
!327 = !{!"WorkGroupSize", i32 0}
!328 = !{!"WorkGroupMemorySizeInBytes", i32 0}
!329 = !{!"IndexFormat", i32 6}
!330 = !{!"SubgroupSize", i32 0}
!331 = !{!"taskInfo", !332, !327, !328, !330}
!332 = !{!"MaxNumOfOutputs", i32 0}
!333 = !{!"NBarrierCnt", i32 0}
!334 = !{!"rtInfo", !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !159}
!335 = !{!"RayQueryAllocSizeInBytes", i32 0}
!336 = !{!"NumContinuations", i32 0}
!337 = !{!"RTAsyncStackAddrspace", i32 -1}
!338 = !{!"RTAsyncStackSurfaceStateOffset", i1* null}
!339 = !{!"SWHotZoneAddrspace", i32 -1}
!340 = !{!"SWHotZoneSurfaceStateOffset", i1* null}
!341 = !{!"SWStackAddrspace", i32 -1}
!342 = !{!"SWStackSurfaceStateOffset", i1* null}
!343 = !{!"RTSyncStackAddrspace", i32 -1}
!344 = !{!"RTSyncStackSurfaceStateOffset", i1* null}
!345 = !{!"doSyncDispatchRays", i1 false}
!346 = !{!"MemStyle", !"Xe"}
!347 = !{!"GlobalDataStyle", !"Xe"}
!348 = !{!"uberTileDimensions", i1* null}
!349 = !{!"CurUniqueIndirectIdx", i32 0}
!350 = !{!"inlineDynTextures"}
!351 = !{!"inlineResInfoData"}
!352 = !{!"immConstant", !353, !354, !355}
!353 = !{!"data"}
!354 = !{!"sizes"}
!355 = !{!"zeroIdxs"}
!356 = !{!"stringConstants"}
!357 = !{!"inlineBuffers", !358, !362, !363}
!358 = !{!"inlineBuffersVec[0]", !359, !360, !361}
!359 = !{!"alignment", i32 0}
!360 = !{!"allocSize", i64 0}
!361 = !{!"Buffer"}
!362 = !{!"inlineBuffersVec[1]", !359, !360, !361}
!363 = !{!"inlineBuffersVec[2]", !359, !360, !361}
!364 = !{!"GlobalPointerProgramBinaryInfos"}
!365 = !{!"ConstantPointerProgramBinaryInfos"}
!366 = !{!"GlobalBufferAddressRelocInfo"}
!367 = !{!"ConstantBufferAddressRelocInfo"}
!368 = !{!"forceLscCacheList"}
!369 = !{!"SrvMap"}
!370 = !{!"RasterizerOrderedByteAddressBuffer"}
!371 = !{!"RasterizerOrderedViews"}
!372 = !{!"MinNOSPushConstantSize", i32 0}
!373 = !{!"inlineProgramScopeOffsets"}
!374 = !{!"shaderData", !375}
!375 = !{!"numReplicas", i32 0}
!376 = !{!"URBInfo", !377, !378, !379}
!377 = !{!"has64BVertexHeaderInput", i1 false}
!378 = !{!"has64BVertexHeaderOutput", i1 false}
!379 = !{!"hasVertexHeader", i1 true}
!380 = !{!"UseBindlessImage", i1 true}
!381 = !{!"UseBindlessImageWithSamplerTracking", i1 false}
!382 = !{!"enableRangeReduce", i1 false}
!383 = !{!"allowMatchMadOptimizationforVS", i1 false}
!384 = !{!"disableMatchMadOptimizationForCS", i1 false}
!385 = !{!"disableMemOptforNegativeOffsetLoads", i1 false}
!386 = !{!"enableThreeWayLoadSpiltOpt", i1 false}
!387 = !{!"statefulResourcesNotAliased", i1 false}
!388 = !{!"disableMixMode", i1 false}
!389 = !{!"genericAccessesResolved", i1 false}
!390 = !{!"disableSeparateSpillPvtScratchSpace", i1 false}
!391 = !{!"enableSeparateSpillPvtScratchSpace", i1 false}
!392 = !{!"disableSeparateScratchWA", i1 false}
!393 = !{!"enableRemoveUnusedTGMFence", i1 false}
!394 = !{!"PrivateMemoryPerFG", !395, !396, !397, !398, !399, !400}
!395 = !{!"PrivateMemoryPerFGMap[0]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ16bench_v1_with_pfRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_}
!396 = !{!"PrivateMemoryPerFGValue[0]", i32 0}
!397 = !{!"PrivateMemoryPerFGMap[1]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ19bench_v2_clean_nopfRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_}
!398 = !{!"PrivateMemoryPerFGValue[1]", i32 0}
!399 = !{!"PrivateMemoryPerFGMap[2]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ16bench_v3_if_onlyRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_}
!400 = !{!"PrivateMemoryPerFGValue[2]", i32 4}
!401 = !{!"m_OptsToDisable"}
!402 = !{!"capabilities", !403}
!403 = !{!"globalVariableDecorationsINTEL", i1 false}
!404 = !{!"extensions", !405}
!405 = !{!"spvINTELBindlessImages", i1 false}
!406 = !{!"m_ShaderResourceViewMcsMask", !407, !408}
!407 = !{!"m_ShaderResourceViewMcsMaskVec[0]", i64 0}
!408 = !{!"m_ShaderResourceViewMcsMaskVec[1]", i64 0}
!409 = !{!"computedDepthMode", i32 0}
!410 = !{!"isHDCFastClearShader", i1 false}
!411 = !{!"argRegisterReservations", !412}
!412 = !{!"argRegisterReservationsVec[0]", i32 0}
!413 = !{!"SIMD16_SpillThreshold", i8 0}
!414 = !{!"SIMD32_SpillThreshold", i8 0}
!415 = !{!"m_CacheControlOption", !416, !417, !418, !419}
!416 = !{!"LscLoadCacheControlOverride", i8 0}
!417 = !{!"LscStoreCacheControlOverride", i8 0}
!418 = !{!"TgmLoadCacheControlOverride", i8 0}
!419 = !{!"TgmStoreCacheControlOverride", i8 0}
!420 = !{!"ModuleUsesBindless", i1 false}
!421 = !{!"predicationMap"}
!422 = !{!"lifeTimeStartMap"}
!423 = !{!"HitGroups"}
!424 = !{i32 2, i32 0}
!425 = !{!"clang version 15.0.7"}
!426 = !{i32 1, !"wchar_size", i32 4}
!427 = !{!428}
!428 = !{i32 4469}
!429 = !{!428, !430}
!430 = !{i32 4470}
