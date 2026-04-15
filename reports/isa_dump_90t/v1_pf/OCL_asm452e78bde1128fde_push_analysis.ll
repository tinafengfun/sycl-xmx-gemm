; ------------------------------------------------
; OCL_asm452e78bde1128fde_push_analysis.ll
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
  %17 = mul nsw i32 %12, %3
  %18 = sext i32 %17 to i64
  %19 = ptrtoint i8 addrspace(1)* %0 to i64
  %20 = shl nsw i64 %18, 1
  %21 = add i64 %20, %19
  %22 = shl nsw i32 %4, 1, !spirv.Decorations !416
  %23 = ashr i32 %22, 31
  %24 = shl nuw i32 %16, 1
  %25 = zext i32 %24 to i64
  %26 = ptrtoint i8 addrspace(1)* %1 to i64
  %27 = shl nuw nsw i64 %25, 1
  %28 = add i64 %27, %26
  %29 = icmp sgt i32 %3, 0
  br i1 %29, label %.lr.ph, label %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge

.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge: ; preds = %.preheader1.preheader
  %.pre = shl i32 %4, 2
  %.pre154 = add i32 %.pre, -1
  %.pre156 = or i32 %12, 8
  %.pre158 = or i32 %12, 16
  %.pre160 = or i32 %12, 24
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit

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

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit: ; preds = %.preheader.preheader
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
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit: ; preds = %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge
  %.pre-phi161 = phi i32 [ %.pre160, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %40, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.pre-phi159 = phi i32 [ %.pre158, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %37, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.pre-phi157 = phi i32 [ %.pre156, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %34, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.pre-phi155 = phi i32 [ %.pre154, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %33, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.088.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %46, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.693.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %47, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.10.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %48, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.14.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %49, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.18.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %50, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.22.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %51, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.26.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %52, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.30.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %53, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.34.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %54, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.38.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %55, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.42.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %56, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.46.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %57, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.50.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %58, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.54.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %59, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.58.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %60, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.62.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %61, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %62 = zext i32 %16 to i64
  %63 = ptrtoint i8 addrspace(1)* %2 to i64
  %64 = shl nuw nsw i64 %62, 2
  %65 = add i64 %64, %63
  %66 = mul nsw i32 %12, %4, !spirv.Decorations !416
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
  %121 = mul nsw i32 %.pre-phi157, %4, !spirv.Decorations !416
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
  %176 = mul nsw i32 %.pre-phi159, %4, !spirv.Decorations !416
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
  %231 = mul nsw i32 %.pre-phi161, %4, !spirv.Decorations !416
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
  %304 = add nuw nsw i32 %303, 32, !spirv.Decorations !418
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
  br i1 %305, label %.preheader.preheader._crit_edge, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit

.preheader.preheader._crit_edge:                  ; preds = %.preheader.preheader
  br label %286
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
