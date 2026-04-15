; ------------------------------------------------
; OCL_asm7b1f6d582d6091ee_codegen.ll
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
  %9 = shl nsw i32 %6, 6, !spirv.Decorations !430
  %localThreadId5 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %localThreadId5, 4
  %11 = and i32 %10, 4064
  %12 = add nuw nsw i32 %9, %11, !spirv.Decorations !430
  %13 = or i32 %12, 8
  %14 = or i32 %12, 16
  %15 = or i32 %12, 24
  %16 = shl nsw i32 %5, 7, !spirv.Decorations !430
  %17 = shl nuw nsw i32 %localThreadId5, 6
  %18 = and i32 %17, 64
  %19 = or i32 %16, %18
  %20 = shl i32 %4, 2
  %21 = add i32 %20, -1
  %22 = icmp sgt i32 %3, 0
  br i1 %22, label %.lr.ph, label %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge, !stats.blockFrequency.digits !432, !stats.blockFrequency.scale !433

.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge: ; preds = %.preheader1.preheader
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit, !stats.blockFrequency.digits !434, !stats.blockFrequency.scale !435

.lr.ph:                                           ; preds = %.preheader1.preheader
  %23 = mul nsw i32 %12, %3
  %24 = ptrtoint i8 addrspace(1)* %0 to i64
  %25 = sext i32 %23 to i64
  %26 = shl nsw i64 %25, 1
  %27 = add i64 %26, %24
  %28 = shl nsw i32 %4, 1, !spirv.Decorations !430
  %29 = ashr i32 %28, 31
  %30 = shl nuw i32 %19, 1
  %31 = ptrtoint i8 addrspace(1)* %1 to i64
  %32 = zext i32 %30 to i64
  %33 = shl nuw nsw i64 %32, 1
  %34 = add i64 %33, %31
  %35 = shl i32 %3, 1
  %36 = add i32 %35, -1
  %37 = mul nsw i32 %13, %3
  %38 = mul nsw i32 %14, %3
  %39 = mul nsw i32 %15, %3
  %40 = sext i32 %37 to i64
  %41 = shl nsw i64 %40, 1
  %42 = sext i32 %38 to i64
  %43 = shl nsw i64 %42, 1
  %44 = sext i32 %39 to i64
  %45 = shl nsw i64 %44, 1
  br label %46, !stats.blockFrequency.digits !436, !stats.blockFrequency.scale !437

46:                                               ; preds = %.preheader.preheader._crit_edge, %.lr.ph
  %47 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %335, %.preheader.preheader._crit_edge ]
  %48 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %337, %.preheader.preheader._crit_edge ]
  %49 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %339, %.preheader.preheader._crit_edge ]
  %50 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %341, %.preheader.preheader._crit_edge ]
  %51 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %343, %.preheader.preheader._crit_edge ]
  %52 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %345, %.preheader.preheader._crit_edge ]
  %53 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %347, %.preheader.preheader._crit_edge ]
  %54 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %349, %.preheader.preheader._crit_edge ]
  %55 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %351, %.preheader.preheader._crit_edge ]
  %56 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %353, %.preheader.preheader._crit_edge ]
  %57 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %355, %.preheader.preheader._crit_edge ]
  %58 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %357, %.preheader.preheader._crit_edge ]
  %59 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %359, %.preheader.preheader._crit_edge ]
  %60 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %361, %.preheader.preheader._crit_edge ]
  %61 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %363, %.preheader.preheader._crit_edge ]
  %62 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %365, %.preheader.preheader._crit_edge ]
  %63 = phi i32 [ 0, %.lr.ph ], [ %64, %.preheader.preheader._crit_edge ]
  %64 = add nuw nsw i32 %63, 32, !spirv.Decorations !438
  %65 = icmp slt i32 %64, %3
  br i1 %65, label %66, label %..preheader.preheader_crit_edge, !stats.blockFrequency.digits !440, !stats.blockFrequency.scale !441

..preheader.preheader_crit_edge:                  ; preds = %46
  br label %.preheader.preheader, !stats.blockFrequency.digits !440, !stats.blockFrequency.scale !442

66:                                               ; preds = %46
  %67 = shl nuw i32 %64, 1
  %68 = zext i32 %67 to i64
  %69 = add i64 %27, %68
  %70 = inttoptr i64 %69 to i8 addrspace(1)*
  %71 = addrspacecast i8 addrspace(1)* %70 to i8 addrspace(4)*
  %72 = ptrtoint i8 addrspace(4)* %71 to i64
  %73 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %71)
  %74 = extractvalue { i32, i32 } %73, 0
  %75 = extractvalue { i32, i32 } %73, 1
  %76 = and i32 %74, -64
  %77 = insertelement <2 x i32> undef, i32 %76, i32 0
  %78 = insertelement <2 x i32> %77, i32 %75, i32 1
  %79 = bitcast <2 x i32> %78 to i64
  %80 = trunc i64 %72 to i32
  %81 = lshr i32 %80, 1
  %82 = and i32 %81, 31
  call void @llvm.genx.GenISA.LSC2DBlockPrefetch.isVoid(i64 %79, i32 %36, i32 7, i32 %36, i32 %82, i32 0, i32 16, i32 32, i32 8, i32 1, i1 false, i1 false, i32 4)
  %83 = lshr exact i32 %64, 1
  %84 = call { i32, i32 } @llvm.genx.GenISA.mul.pair(i32 %83, i32 0, i32 %28, i32 %29)
  %85 = extractvalue { i32, i32 } %84, 0
  %86 = extractvalue { i32, i32 } %84, 1
  %87 = insertelement <2 x i32> undef, i32 %85, i32 0
  %88 = insertelement <2 x i32> %87, i32 %86, i32 1
  %89 = bitcast <2 x i32> %88 to i64
  %90 = shl nsw i64 %89, 1
  %91 = add i64 %34, %90
  %92 = inttoptr i64 %91 to i8 addrspace(1)*
  %93 = addrspacecast i8 addrspace(1)* %92 to i8 addrspace(4)*
  %94 = ptrtoint i8 addrspace(4)* %93 to i64
  %95 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %93)
  %96 = extractvalue { i32, i32 } %95, 0
  %97 = extractvalue { i32, i32 } %95, 1
  %98 = and i32 %96, -64
  %99 = insertelement <2 x i32> undef, i32 %98, i32 0
  %100 = insertelement <2 x i32> %99, i32 %97, i32 1
  %101 = bitcast <2 x i32> %100 to i64
  %102 = trunc i64 %94 to i32
  %103 = lshr i32 %102, 1
  %104 = and i32 %103, 31
  call void @llvm.genx.GenISA.LSC2DBlockPrefetch.isVoid(i64 %101, i32 %21, i32 7, i32 %21, i32 %104, i32 0, i32 16, i32 32, i32 8, i32 1, i1 false, i1 false, i32 4)
  br label %.preheader.preheader, !stats.blockFrequency.digits !440, !stats.blockFrequency.scale !442

.preheader.preheader:                             ; preds = %..preheader.preheader_crit_edge, %66
  %105 = shl nuw i32 %63, 1
  %106 = zext i32 %105 to i64
  %107 = add i64 %24, %106
  %108 = add i64 %107, %26
  %109 = inttoptr i64 %108 to i8 addrspace(1)*
  %.ascast.i = addrspacecast i8 addrspace(1)* %109 to i8 addrspace(4)*
  %110 = ptrtoint i8 addrspace(4)* %.ascast.i to i64
  %111 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i)
  %112 = extractvalue { i32, i32 } %111, 0
  %113 = extractvalue { i32, i32 } %111, 1
  %114 = and i32 %112, -64
  %115 = insertelement <2 x i32> undef, i32 %114, i32 0
  %116 = insertelement <2 x i32> %115, i32 %113, i32 1
  %117 = bitcast <2 x i32> %116 to i64
  %118 = trunc i64 %110 to i32
  %119 = lshr i32 %118, 1
  %120 = and i32 %119, 31
  %121 = add i64 %108, 32
  %122 = inttoptr i64 %121 to i8 addrspace(1)*
  %.ascast.i87 = addrspacecast i8 addrspace(1)* %122 to i8 addrspace(4)*
  %123 = ptrtoint i8 addrspace(4)* %.ascast.i87 to i64
  %124 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87)
  %125 = extractvalue { i32, i32 } %124, 0
  %126 = extractvalue { i32, i32 } %124, 1
  %127 = and i32 %125, -64
  %128 = insertelement <2 x i32> undef, i32 %127, i32 0
  %129 = insertelement <2 x i32> %128, i32 %126, i32 1
  %130 = bitcast <2 x i32> %129 to i64
  %131 = trunc i64 %123 to i32
  %132 = lshr i32 %131, 1
  %133 = and i32 %132, 31
  %134 = add i64 %107, %41
  %135 = inttoptr i64 %134 to i8 addrspace(1)*
  %.ascast.i.1 = addrspacecast i8 addrspace(1)* %135 to i8 addrspace(4)*
  %136 = ptrtoint i8 addrspace(4)* %.ascast.i.1 to i64
  %137 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.1)
  %138 = extractvalue { i32, i32 } %137, 0
  %139 = extractvalue { i32, i32 } %137, 1
  %140 = and i32 %138, -64
  %141 = insertelement <2 x i32> undef, i32 %140, i32 0
  %142 = insertelement <2 x i32> %141, i32 %139, i32 1
  %143 = bitcast <2 x i32> %142 to i64
  %144 = trunc i64 %136 to i32
  %145 = lshr i32 %144, 1
  %146 = and i32 %145, 31
  %147 = add i64 %134, 32
  %148 = inttoptr i64 %147 to i8 addrspace(1)*
  %.ascast.i87.1 = addrspacecast i8 addrspace(1)* %148 to i8 addrspace(4)*
  %149 = ptrtoint i8 addrspace(4)* %.ascast.i87.1 to i64
  %150 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.1)
  %151 = extractvalue { i32, i32 } %150, 0
  %152 = extractvalue { i32, i32 } %150, 1
  %153 = and i32 %151, -64
  %154 = insertelement <2 x i32> undef, i32 %153, i32 0
  %155 = insertelement <2 x i32> %154, i32 %152, i32 1
  %156 = bitcast <2 x i32> %155 to i64
  %157 = trunc i64 %149 to i32
  %158 = lshr i32 %157, 1
  %159 = and i32 %158, 31
  %160 = add i64 %107, %43
  %161 = inttoptr i64 %160 to i8 addrspace(1)*
  %.ascast.i.2 = addrspacecast i8 addrspace(1)* %161 to i8 addrspace(4)*
  %162 = ptrtoint i8 addrspace(4)* %.ascast.i.2 to i64
  %163 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.2)
  %164 = extractvalue { i32, i32 } %163, 0
  %165 = extractvalue { i32, i32 } %163, 1
  %166 = and i32 %164, -64
  %167 = insertelement <2 x i32> undef, i32 %166, i32 0
  %168 = insertelement <2 x i32> %167, i32 %165, i32 1
  %169 = bitcast <2 x i32> %168 to i64
  %170 = trunc i64 %162 to i32
  %171 = lshr i32 %170, 1
  %172 = and i32 %171, 31
  %173 = add i64 %160, 32
  %174 = inttoptr i64 %173 to i8 addrspace(1)*
  %.ascast.i87.2 = addrspacecast i8 addrspace(1)* %174 to i8 addrspace(4)*
  %175 = ptrtoint i8 addrspace(4)* %.ascast.i87.2 to i64
  %176 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.2)
  %177 = extractvalue { i32, i32 } %176, 0
  %178 = extractvalue { i32, i32 } %176, 1
  %179 = and i32 %177, -64
  %180 = insertelement <2 x i32> undef, i32 %179, i32 0
  %181 = insertelement <2 x i32> %180, i32 %178, i32 1
  %182 = bitcast <2 x i32> %181 to i64
  %183 = trunc i64 %175 to i32
  %184 = lshr i32 %183, 1
  %185 = and i32 %184, 31
  %186 = add i64 %107, %45
  %187 = inttoptr i64 %186 to i8 addrspace(1)*
  %.ascast.i.3 = addrspacecast i8 addrspace(1)* %187 to i8 addrspace(4)*
  %188 = ptrtoint i8 addrspace(4)* %.ascast.i.3 to i64
  %189 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.3)
  %190 = extractvalue { i32, i32 } %189, 0
  %191 = extractvalue { i32, i32 } %189, 1
  %192 = and i32 %190, -64
  %193 = insertelement <2 x i32> undef, i32 %192, i32 0
  %194 = insertelement <2 x i32> %193, i32 %191, i32 1
  %195 = bitcast <2 x i32> %194 to i64
  %196 = trunc i64 %188 to i32
  %197 = lshr i32 %196, 1
  %198 = and i32 %197, 31
  %199 = add i64 %186, 32
  %200 = inttoptr i64 %199 to i8 addrspace(1)*
  %.ascast.i87.3 = addrspacecast i8 addrspace(1)* %200 to i8 addrspace(4)*
  %201 = ptrtoint i8 addrspace(4)* %.ascast.i87.3 to i64
  %202 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.3)
  %203 = extractvalue { i32, i32 } %202, 0
  %204 = extractvalue { i32, i32 } %202, 1
  %205 = and i32 %203, -64
  %206 = insertelement <2 x i32> undef, i32 %205, i32 0
  %207 = insertelement <2 x i32> %206, i32 %204, i32 1
  %208 = bitcast <2 x i32> %207 to i64
  %209 = trunc i64 %201 to i32
  %210 = lshr i32 %209, 1
  %211 = and i32 %210, 31
  %212 = lshr exact i32 %63, 1
  %213 = call { i32, i32 } @llvm.genx.GenISA.mul.pair(i32 %212, i32 0, i32 %28, i32 %29)
  %214 = extractvalue { i32, i32 } %213, 0
  %215 = extractvalue { i32, i32 } %213, 1
  %216 = insertelement <2 x i32> undef, i32 %214, i32 0
  %217 = insertelement <2 x i32> %216, i32 %215, i32 1
  %218 = bitcast <2 x i32> %217 to i64
  %219 = shl nsw i64 %218, 1
  %220 = add i64 %219, %31
  %221 = or i32 %212, 8
  %222 = call { i32, i32 } @llvm.genx.GenISA.mul.pair(i32 %221, i32 0, i32 %28, i32 %29)
  %223 = extractvalue { i32, i32 } %222, 0
  %224 = extractvalue { i32, i32 } %222, 1
  %225 = insertelement <2 x i32> undef, i32 %223, i32 0
  %226 = insertelement <2 x i32> %225, i32 %224, i32 1
  %227 = bitcast <2 x i32> %226 to i64
  %228 = shl nsw i64 %227, 1
  %229 = add i64 %228, %31
  %230 = add i64 %220, %33
  %231 = inttoptr i64 %230 to i8 addrspace(1)*
  %.ascast.i88 = addrspacecast i8 addrspace(1)* %231 to i8 addrspace(4)*
  %232 = ptrtoint i8 addrspace(4)* %.ascast.i88 to i64
  %233 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88)
  %234 = extractvalue { i32, i32 } %233, 0
  %235 = extractvalue { i32, i32 } %233, 1
  %236 = and i32 %234, -64
  %237 = insertelement <2 x i32> undef, i32 %236, i32 0
  %238 = insertelement <2 x i32> %237, i32 %235, i32 1
  %239 = bitcast <2 x i32> %238 to i64
  %240 = trunc i64 %232 to i32
  %241 = lshr i32 %240, 2
  %242 = and i32 %241, 15
  %243 = add i64 %229, %33
  %244 = inttoptr i64 %243 to i8 addrspace(1)*
  %.ascast.i89 = addrspacecast i8 addrspace(1)* %244 to i8 addrspace(4)*
  %245 = ptrtoint i8 addrspace(4)* %.ascast.i89 to i64
  %246 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89)
  %247 = extractvalue { i32, i32 } %246, 0
  %248 = extractvalue { i32, i32 } %246, 1
  %249 = and i32 %247, -64
  %250 = insertelement <2 x i32> undef, i32 %249, i32 0
  %251 = insertelement <2 x i32> %250, i32 %248, i32 1
  %252 = bitcast <2 x i32> %251 to i64
  %253 = trunc i64 %245 to i32
  %254 = lshr i32 %253, 2
  %255 = and i32 %254, 15
  %256 = add i64 %230, 64
  %257 = inttoptr i64 %256 to i8 addrspace(1)*
  %.ascast.i88.1 = addrspacecast i8 addrspace(1)* %257 to i8 addrspace(4)*
  %258 = ptrtoint i8 addrspace(4)* %.ascast.i88.1 to i64
  %259 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.1)
  %260 = extractvalue { i32, i32 } %259, 0
  %261 = extractvalue { i32, i32 } %259, 1
  %262 = and i32 %260, -64
  %263 = insertelement <2 x i32> undef, i32 %262, i32 0
  %264 = insertelement <2 x i32> %263, i32 %261, i32 1
  %265 = bitcast <2 x i32> %264 to i64
  %266 = trunc i64 %258 to i32
  %267 = lshr i32 %266, 2
  %268 = and i32 %267, 15
  %269 = add i64 %243, 64
  %270 = inttoptr i64 %269 to i8 addrspace(1)*
  %.ascast.i89.1 = addrspacecast i8 addrspace(1)* %270 to i8 addrspace(4)*
  %271 = ptrtoint i8 addrspace(4)* %.ascast.i89.1 to i64
  %272 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.1)
  %273 = extractvalue { i32, i32 } %272, 0
  %274 = extractvalue { i32, i32 } %272, 1
  %275 = and i32 %273, -64
  %276 = insertelement <2 x i32> undef, i32 %275, i32 0
  %277 = insertelement <2 x i32> %276, i32 %274, i32 1
  %278 = bitcast <2 x i32> %277 to i64
  %279 = trunc i64 %271 to i32
  %280 = lshr i32 %279, 2
  %281 = and i32 %280, 15
  %282 = add i64 %230, 128
  %283 = inttoptr i64 %282 to i8 addrspace(1)*
  %.ascast.i88.2 = addrspacecast i8 addrspace(1)* %283 to i8 addrspace(4)*
  %284 = ptrtoint i8 addrspace(4)* %.ascast.i88.2 to i64
  %285 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.2)
  %286 = extractvalue { i32, i32 } %285, 0
  %287 = extractvalue { i32, i32 } %285, 1
  %288 = and i32 %286, -64
  %289 = insertelement <2 x i32> undef, i32 %288, i32 0
  %290 = insertelement <2 x i32> %289, i32 %287, i32 1
  %291 = bitcast <2 x i32> %290 to i64
  %292 = trunc i64 %284 to i32
  %293 = lshr i32 %292, 2
  %294 = and i32 %293, 15
  %295 = add i64 %243, 128
  %296 = inttoptr i64 %295 to i8 addrspace(1)*
  %.ascast.i89.2 = addrspacecast i8 addrspace(1)* %296 to i8 addrspace(4)*
  %297 = ptrtoint i8 addrspace(4)* %.ascast.i89.2 to i64
  %298 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.2)
  %299 = extractvalue { i32, i32 } %298, 0
  %300 = extractvalue { i32, i32 } %298, 1
  %301 = and i32 %299, -64
  %302 = insertelement <2 x i32> undef, i32 %301, i32 0
  %303 = insertelement <2 x i32> %302, i32 %300, i32 1
  %304 = bitcast <2 x i32> %303 to i64
  %305 = trunc i64 %297 to i32
  %306 = lshr i32 %305, 2
  %307 = and i32 %306, 15
  %308 = add i64 %230, 192
  %309 = inttoptr i64 %308 to i8 addrspace(1)*
  %.ascast.i88.3 = addrspacecast i8 addrspace(1)* %309 to i8 addrspace(4)*
  %310 = ptrtoint i8 addrspace(4)* %.ascast.i88.3 to i64
  %311 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.3)
  %312 = extractvalue { i32, i32 } %311, 0
  %313 = extractvalue { i32, i32 } %311, 1
  %314 = and i32 %312, -64
  %315 = insertelement <2 x i32> undef, i32 %314, i32 0
  %316 = insertelement <2 x i32> %315, i32 %313, i32 1
  %317 = bitcast <2 x i32> %316 to i64
  %318 = trunc i64 %310 to i32
  %319 = lshr i32 %318, 2
  %320 = and i32 %319, 15
  %321 = add i64 %243, 192
  %322 = inttoptr i64 %321 to i8 addrspace(1)*
  %.ascast.i89.3 = addrspacecast i8 addrspace(1)* %322 to i8 addrspace(4)*
  %323 = ptrtoint i8 addrspace(4)* %.ascast.i89.3 to i64
  %324 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.3)
  %325 = extractvalue { i32, i32 } %324, 0
  %326 = extractvalue { i32, i32 } %324, 1
  %327 = and i32 %325, -64
  %328 = insertelement <2 x i32> undef, i32 %327, i32 0
  %329 = insertelement <2 x i32> %328, i32 %326, i32 1
  %330 = bitcast <2 x i32> %329 to i64
  %331 = trunc i64 %323 to i32
  %332 = lshr i32 %331, 2
  %333 = and i32 %332, 15
  %sched_206 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %117, i32 %36, i32 7, i32 %36, i32 %120, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_198 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %239, i32 %21, i32 7, i32 %21, i32 %242, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_205 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %130, i32 %36, i32 7, i32 %36, i32 %133, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_197 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %252, i32 %21, i32 7, i32 %21, i32 %255, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_196 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %265, i32 %21, i32 7, i32 %21, i32 %268, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_195 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %278, i32 %21, i32 7, i32 %21, i32 %281, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_194 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %291, i32 %21, i32 7, i32 %21, i32 %294, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_193 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %304, i32 %21, i32 7, i32 %21, i32 %307, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_192 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %317, i32 %21, i32 7, i32 %21, i32 %320, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_ = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %330, i32 %21, i32 7, i32 %21, i32 %333, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_204 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %143, i32 %36, i32 7, i32 %36, i32 %146, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_203 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %156, i32 %36, i32 7, i32 %36, i32 %159, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_202 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %169, i32 %36, i32 7, i32 %36, i32 %172, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_201 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %182, i32 %36, i32 7, i32 %36, i32 %185, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_200 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %195, i32 %36, i32 7, i32 %36, i32 %198, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_199 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %208, i32 %36, i32 7, i32 %36, i32 %211, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %334 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %47, <8 x i16> %sched_206, <8 x i32> %sched_198, i32 11, i32 11, i32 8, i32 8, i1 false)
  %335 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %334, <8 x i16> %sched_205, <8 x i32> %sched_197, i32 11, i32 11, i32 8, i32 8, i1 false)
  %336 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %48, <8 x i16> %sched_206, <8 x i32> %sched_196, i32 11, i32 11, i32 8, i32 8, i1 false)
  %337 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %336, <8 x i16> %sched_205, <8 x i32> %sched_195, i32 11, i32 11, i32 8, i32 8, i1 false)
  %338 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %49, <8 x i16> %sched_206, <8 x i32> %sched_194, i32 11, i32 11, i32 8, i32 8, i1 false)
  %339 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %338, <8 x i16> %sched_205, <8 x i32> %sched_193, i32 11, i32 11, i32 8, i32 8, i1 false)
  %340 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %50, <8 x i16> %sched_206, <8 x i32> %sched_192, i32 11, i32 11, i32 8, i32 8, i1 false)
  %341 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %340, <8 x i16> %sched_205, <8 x i32> %sched_, i32 11, i32 11, i32 8, i32 8, i1 false)
  %342 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %51, <8 x i16> %sched_204, <8 x i32> %sched_198, i32 11, i32 11, i32 8, i32 8, i1 false)
  %343 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %342, <8 x i16> %sched_203, <8 x i32> %sched_197, i32 11, i32 11, i32 8, i32 8, i1 false)
  %344 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %52, <8 x i16> %sched_204, <8 x i32> %sched_196, i32 11, i32 11, i32 8, i32 8, i1 false)
  %345 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %344, <8 x i16> %sched_203, <8 x i32> %sched_195, i32 11, i32 11, i32 8, i32 8, i1 false)
  %346 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %53, <8 x i16> %sched_204, <8 x i32> %sched_194, i32 11, i32 11, i32 8, i32 8, i1 false)
  %347 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %346, <8 x i16> %sched_203, <8 x i32> %sched_193, i32 11, i32 11, i32 8, i32 8, i1 false)
  %348 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %54, <8 x i16> %sched_204, <8 x i32> %sched_192, i32 11, i32 11, i32 8, i32 8, i1 false)
  %349 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %348, <8 x i16> %sched_203, <8 x i32> %sched_, i32 11, i32 11, i32 8, i32 8, i1 false)
  %350 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %55, <8 x i16> %sched_202, <8 x i32> %sched_198, i32 11, i32 11, i32 8, i32 8, i1 false)
  %351 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %350, <8 x i16> %sched_201, <8 x i32> %sched_197, i32 11, i32 11, i32 8, i32 8, i1 false)
  %352 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %56, <8 x i16> %sched_202, <8 x i32> %sched_196, i32 11, i32 11, i32 8, i32 8, i1 false)
  %353 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %352, <8 x i16> %sched_201, <8 x i32> %sched_195, i32 11, i32 11, i32 8, i32 8, i1 false)
  %354 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %57, <8 x i16> %sched_202, <8 x i32> %sched_194, i32 11, i32 11, i32 8, i32 8, i1 false)
  %355 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %354, <8 x i16> %sched_201, <8 x i32> %sched_193, i32 11, i32 11, i32 8, i32 8, i1 false)
  %356 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %58, <8 x i16> %sched_202, <8 x i32> %sched_192, i32 11, i32 11, i32 8, i32 8, i1 false)
  %357 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %356, <8 x i16> %sched_201, <8 x i32> %sched_, i32 11, i32 11, i32 8, i32 8, i1 false)
  %358 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %59, <8 x i16> %sched_200, <8 x i32> %sched_198, i32 11, i32 11, i32 8, i32 8, i1 false)
  %359 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %358, <8 x i16> %sched_199, <8 x i32> %sched_197, i32 11, i32 11, i32 8, i32 8, i1 false)
  %360 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %60, <8 x i16> %sched_200, <8 x i32> %sched_196, i32 11, i32 11, i32 8, i32 8, i1 false)
  %361 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %360, <8 x i16> %sched_199, <8 x i32> %sched_195, i32 11, i32 11, i32 8, i32 8, i1 false)
  %362 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %61, <8 x i16> %sched_200, <8 x i32> %sched_194, i32 11, i32 11, i32 8, i32 8, i1 false)
  %363 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %362, <8 x i16> %sched_199, <8 x i32> %sched_193, i32 11, i32 11, i32 8, i32 8, i1 false)
  %364 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %62, <8 x i16> %sched_200, <8 x i32> %sched_192, i32 11, i32 11, i32 8, i32 8, i1 false)
  %365 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %364, <8 x i16> %sched_199, <8 x i32> %sched_, i32 11, i32 11, i32 8, i32 8, i1 false)
  br i1 %65, label %.preheader.preheader._crit_edge, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit, !stats.blockFrequency.digits !440, !stats.blockFrequency.scale !441

.preheader.preheader._crit_edge:                  ; preds = %.preheader.preheader
  br label %46, !stats.blockFrequency.digits !443, !stats.blockFrequency.scale !441

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit: ; preds = %.preheader.preheader
  %.lcssa221 = phi <8 x float> [ %335, %.preheader.preheader ]
  %.lcssa220 = phi <8 x float> [ %337, %.preheader.preheader ]
  %.lcssa219 = phi <8 x float> [ %339, %.preheader.preheader ]
  %.lcssa218 = phi <8 x float> [ %341, %.preheader.preheader ]
  %.lcssa217 = phi <8 x float> [ %343, %.preheader.preheader ]
  %.lcssa216 = phi <8 x float> [ %345, %.preheader.preheader ]
  %.lcssa215 = phi <8 x float> [ %347, %.preheader.preheader ]
  %.lcssa214 = phi <8 x float> [ %349, %.preheader.preheader ]
  %.lcssa213 = phi <8 x float> [ %351, %.preheader.preheader ]
  %.lcssa212 = phi <8 x float> [ %353, %.preheader.preheader ]
  %.lcssa211 = phi <8 x float> [ %355, %.preheader.preheader ]
  %.lcssa210 = phi <8 x float> [ %357, %.preheader.preheader ]
  %.lcssa209 = phi <8 x float> [ %359, %.preheader.preheader ]
  %.lcssa208 = phi <8 x float> [ %361, %.preheader.preheader ]
  %.lcssa207 = phi <8 x float> [ %363, %.preheader.preheader ]
  %.lcssa = phi <8 x float> [ %365, %.preheader.preheader ]
  %366 = bitcast <8 x float> %.lcssa221 to <8 x i32>
  %367 = bitcast <8 x float> %.lcssa220 to <8 x i32>
  %368 = bitcast <8 x float> %.lcssa219 to <8 x i32>
  %369 = bitcast <8 x float> %.lcssa218 to <8 x i32>
  %370 = bitcast <8 x float> %.lcssa217 to <8 x i32>
  %371 = bitcast <8 x float> %.lcssa216 to <8 x i32>
  %372 = bitcast <8 x float> %.lcssa215 to <8 x i32>
  %373 = bitcast <8 x float> %.lcssa214 to <8 x i32>
  %374 = bitcast <8 x float> %.lcssa213 to <8 x i32>
  %375 = bitcast <8 x float> %.lcssa212 to <8 x i32>
  %376 = bitcast <8 x float> %.lcssa211 to <8 x i32>
  %377 = bitcast <8 x float> %.lcssa210 to <8 x i32>
  %378 = bitcast <8 x float> %.lcssa209 to <8 x i32>
  %379 = bitcast <8 x float> %.lcssa208 to <8 x i32>
  %380 = bitcast <8 x float> %.lcssa207 to <8 x i32>
  %381 = bitcast <8 x float> %.lcssa to <8 x i32>
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit, !stats.blockFrequency.digits !436, !stats.blockFrequency.scale !437

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit: ; preds = %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge
  %.sroa.088.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %366, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.693.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %367, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.10.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %368, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.14.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %369, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.18.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %370, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.22.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %371, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.26.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %372, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.30.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %373, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.34.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %374, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.38.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %375, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.42.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %376, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.46.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %377, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.50.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %378, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.54.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %379, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.58.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %380, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.62.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %381, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %382 = ptrtoint i8 addrspace(1)* %2 to i64
  %383 = zext i32 %19 to i64
  %384 = shl nuw nsw i64 %383, 2
  %385 = add i64 %384, %382
  %386 = mul nsw i32 %12, %4, !spirv.Decorations !430
  %387 = sext i32 %386 to i64
  %388 = shl nsw i64 %387, 2
  %389 = add i64 %385, %388
  %390 = inttoptr i64 %389 to i8 addrspace(1)*
  %.ascast.i90 = addrspacecast i8 addrspace(1)* %390 to i8 addrspace(4)*
  %391 = ptrtoint i8 addrspace(4)* %.ascast.i90 to i64
  %392 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90)
  %393 = extractvalue { i32, i32 } %392, 0
  %394 = extractvalue { i32, i32 } %392, 1
  %395 = and i32 %393, -64
  %396 = insertelement <2 x i32> undef, i32 %395, i32 0
  %397 = insertelement <2 x i32> %396, i32 %394, i32 1
  %398 = bitcast <2 x i32> %397 to i64
  %399 = trunc i64 %391 to i32
  %400 = lshr i32 %399, 2
  %401 = and i32 %400, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %398, i32 %21, i32 7, i32 %21, i32 %401, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.088.0)
  %402 = add i64 %389, 64
  %403 = inttoptr i64 %402 to i8 addrspace(1)*
  %.ascast.i90.1 = addrspacecast i8 addrspace(1)* %403 to i8 addrspace(4)*
  %404 = ptrtoint i8 addrspace(4)* %.ascast.i90.1 to i64
  %405 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.1)
  %406 = extractvalue { i32, i32 } %405, 0
  %407 = extractvalue { i32, i32 } %405, 1
  %408 = and i32 %406, -64
  %409 = insertelement <2 x i32> undef, i32 %408, i32 0
  %410 = insertelement <2 x i32> %409, i32 %407, i32 1
  %411 = bitcast <2 x i32> %410 to i64
  %412 = trunc i64 %404 to i32
  %413 = lshr i32 %412, 2
  %414 = and i32 %413, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %411, i32 %21, i32 7, i32 %21, i32 %414, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.693.0)
  %415 = add i64 %389, 128
  %416 = inttoptr i64 %415 to i8 addrspace(1)*
  %.ascast.i90.2 = addrspacecast i8 addrspace(1)* %416 to i8 addrspace(4)*
  %417 = ptrtoint i8 addrspace(4)* %.ascast.i90.2 to i64
  %418 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.2)
  %419 = extractvalue { i32, i32 } %418, 0
  %420 = extractvalue { i32, i32 } %418, 1
  %421 = and i32 %419, -64
  %422 = insertelement <2 x i32> undef, i32 %421, i32 0
  %423 = insertelement <2 x i32> %422, i32 %420, i32 1
  %424 = bitcast <2 x i32> %423 to i64
  %425 = trunc i64 %417 to i32
  %426 = lshr i32 %425, 2
  %427 = and i32 %426, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %424, i32 %21, i32 7, i32 %21, i32 %427, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.10.0)
  %428 = add i64 %389, 192
  %429 = inttoptr i64 %428 to i8 addrspace(1)*
  %.ascast.i90.3 = addrspacecast i8 addrspace(1)* %429 to i8 addrspace(4)*
  %430 = ptrtoint i8 addrspace(4)* %.ascast.i90.3 to i64
  %431 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.3)
  %432 = extractvalue { i32, i32 } %431, 0
  %433 = extractvalue { i32, i32 } %431, 1
  %434 = and i32 %432, -64
  %435 = insertelement <2 x i32> undef, i32 %434, i32 0
  %436 = insertelement <2 x i32> %435, i32 %433, i32 1
  %437 = bitcast <2 x i32> %436 to i64
  %438 = trunc i64 %430 to i32
  %439 = lshr i32 %438, 2
  %440 = and i32 %439, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %437, i32 %21, i32 7, i32 %21, i32 %440, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.14.0)
  %441 = mul nsw i32 %13, %4, !spirv.Decorations !430
  %442 = sext i32 %441 to i64
  %443 = shl nsw i64 %442, 2
  %444 = add i64 %385, %443
  %445 = inttoptr i64 %444 to i8 addrspace(1)*
  %.ascast.i90.136 = addrspacecast i8 addrspace(1)* %445 to i8 addrspace(4)*
  %446 = ptrtoint i8 addrspace(4)* %.ascast.i90.136 to i64
  %447 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.136)
  %448 = extractvalue { i32, i32 } %447, 0
  %449 = extractvalue { i32, i32 } %447, 1
  %450 = and i32 %448, -64
  %451 = insertelement <2 x i32> undef, i32 %450, i32 0
  %452 = insertelement <2 x i32> %451, i32 %449, i32 1
  %453 = bitcast <2 x i32> %452 to i64
  %454 = trunc i64 %446 to i32
  %455 = lshr i32 %454, 2
  %456 = and i32 %455, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %453, i32 %21, i32 7, i32 %21, i32 %456, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.18.0)
  %457 = add i64 %444, 64
  %458 = inttoptr i64 %457 to i8 addrspace(1)*
  %.ascast.i90.1.1 = addrspacecast i8 addrspace(1)* %458 to i8 addrspace(4)*
  %459 = ptrtoint i8 addrspace(4)* %.ascast.i90.1.1 to i64
  %460 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.1.1)
  %461 = extractvalue { i32, i32 } %460, 0
  %462 = extractvalue { i32, i32 } %460, 1
  %463 = and i32 %461, -64
  %464 = insertelement <2 x i32> undef, i32 %463, i32 0
  %465 = insertelement <2 x i32> %464, i32 %462, i32 1
  %466 = bitcast <2 x i32> %465 to i64
  %467 = trunc i64 %459 to i32
  %468 = lshr i32 %467, 2
  %469 = and i32 %468, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %466, i32 %21, i32 7, i32 %21, i32 %469, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.22.0)
  %470 = add i64 %444, 128
  %471 = inttoptr i64 %470 to i8 addrspace(1)*
  %.ascast.i90.2.1 = addrspacecast i8 addrspace(1)* %471 to i8 addrspace(4)*
  %472 = ptrtoint i8 addrspace(4)* %.ascast.i90.2.1 to i64
  %473 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.2.1)
  %474 = extractvalue { i32, i32 } %473, 0
  %475 = extractvalue { i32, i32 } %473, 1
  %476 = and i32 %474, -64
  %477 = insertelement <2 x i32> undef, i32 %476, i32 0
  %478 = insertelement <2 x i32> %477, i32 %475, i32 1
  %479 = bitcast <2 x i32> %478 to i64
  %480 = trunc i64 %472 to i32
  %481 = lshr i32 %480, 2
  %482 = and i32 %481, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %479, i32 %21, i32 7, i32 %21, i32 %482, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.26.0)
  %483 = add i64 %444, 192
  %484 = inttoptr i64 %483 to i8 addrspace(1)*
  %.ascast.i90.3.1 = addrspacecast i8 addrspace(1)* %484 to i8 addrspace(4)*
  %485 = ptrtoint i8 addrspace(4)* %.ascast.i90.3.1 to i64
  %486 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.3.1)
  %487 = extractvalue { i32, i32 } %486, 0
  %488 = extractvalue { i32, i32 } %486, 1
  %489 = and i32 %487, -64
  %490 = insertelement <2 x i32> undef, i32 %489, i32 0
  %491 = insertelement <2 x i32> %490, i32 %488, i32 1
  %492 = bitcast <2 x i32> %491 to i64
  %493 = trunc i64 %485 to i32
  %494 = lshr i32 %493, 2
  %495 = and i32 %494, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %492, i32 %21, i32 7, i32 %21, i32 %495, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.30.0)
  %496 = mul nsw i32 %14, %4, !spirv.Decorations !430
  %497 = sext i32 %496 to i64
  %498 = shl nsw i64 %497, 2
  %499 = add i64 %385, %498
  %500 = inttoptr i64 %499 to i8 addrspace(1)*
  %.ascast.i90.237 = addrspacecast i8 addrspace(1)* %500 to i8 addrspace(4)*
  %501 = ptrtoint i8 addrspace(4)* %.ascast.i90.237 to i64
  %502 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.237)
  %503 = extractvalue { i32, i32 } %502, 0
  %504 = extractvalue { i32, i32 } %502, 1
  %505 = and i32 %503, -64
  %506 = insertelement <2 x i32> undef, i32 %505, i32 0
  %507 = insertelement <2 x i32> %506, i32 %504, i32 1
  %508 = bitcast <2 x i32> %507 to i64
  %509 = trunc i64 %501 to i32
  %510 = lshr i32 %509, 2
  %511 = and i32 %510, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %508, i32 %21, i32 7, i32 %21, i32 %511, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.34.0)
  %512 = add i64 %499, 64
  %513 = inttoptr i64 %512 to i8 addrspace(1)*
  %.ascast.i90.1.2 = addrspacecast i8 addrspace(1)* %513 to i8 addrspace(4)*
  %514 = ptrtoint i8 addrspace(4)* %.ascast.i90.1.2 to i64
  %515 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.1.2)
  %516 = extractvalue { i32, i32 } %515, 0
  %517 = extractvalue { i32, i32 } %515, 1
  %518 = and i32 %516, -64
  %519 = insertelement <2 x i32> undef, i32 %518, i32 0
  %520 = insertelement <2 x i32> %519, i32 %517, i32 1
  %521 = bitcast <2 x i32> %520 to i64
  %522 = trunc i64 %514 to i32
  %523 = lshr i32 %522, 2
  %524 = and i32 %523, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %521, i32 %21, i32 7, i32 %21, i32 %524, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.38.0)
  %525 = add i64 %499, 128
  %526 = inttoptr i64 %525 to i8 addrspace(1)*
  %.ascast.i90.2.2 = addrspacecast i8 addrspace(1)* %526 to i8 addrspace(4)*
  %527 = ptrtoint i8 addrspace(4)* %.ascast.i90.2.2 to i64
  %528 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.2.2)
  %529 = extractvalue { i32, i32 } %528, 0
  %530 = extractvalue { i32, i32 } %528, 1
  %531 = and i32 %529, -64
  %532 = insertelement <2 x i32> undef, i32 %531, i32 0
  %533 = insertelement <2 x i32> %532, i32 %530, i32 1
  %534 = bitcast <2 x i32> %533 to i64
  %535 = trunc i64 %527 to i32
  %536 = lshr i32 %535, 2
  %537 = and i32 %536, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %534, i32 %21, i32 7, i32 %21, i32 %537, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.42.0)
  %538 = add i64 %499, 192
  %539 = inttoptr i64 %538 to i8 addrspace(1)*
  %.ascast.i90.3.2 = addrspacecast i8 addrspace(1)* %539 to i8 addrspace(4)*
  %540 = ptrtoint i8 addrspace(4)* %.ascast.i90.3.2 to i64
  %541 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.3.2)
  %542 = extractvalue { i32, i32 } %541, 0
  %543 = extractvalue { i32, i32 } %541, 1
  %544 = and i32 %542, -64
  %545 = insertelement <2 x i32> undef, i32 %544, i32 0
  %546 = insertelement <2 x i32> %545, i32 %543, i32 1
  %547 = bitcast <2 x i32> %546 to i64
  %548 = trunc i64 %540 to i32
  %549 = lshr i32 %548, 2
  %550 = and i32 %549, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %547, i32 %21, i32 7, i32 %21, i32 %550, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.46.0)
  %551 = mul nsw i32 %15, %4, !spirv.Decorations !430
  %552 = sext i32 %551 to i64
  %553 = shl nsw i64 %552, 2
  %554 = add i64 %385, %553
  %555 = inttoptr i64 %554 to i8 addrspace(1)*
  %.ascast.i90.338 = addrspacecast i8 addrspace(1)* %555 to i8 addrspace(4)*
  %556 = ptrtoint i8 addrspace(4)* %.ascast.i90.338 to i64
  %557 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.338)
  %558 = extractvalue { i32, i32 } %557, 0
  %559 = extractvalue { i32, i32 } %557, 1
  %560 = and i32 %558, -64
  %561 = insertelement <2 x i32> undef, i32 %560, i32 0
  %562 = insertelement <2 x i32> %561, i32 %559, i32 1
  %563 = bitcast <2 x i32> %562 to i64
  %564 = trunc i64 %556 to i32
  %565 = lshr i32 %564, 2
  %566 = and i32 %565, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %563, i32 %21, i32 7, i32 %21, i32 %566, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.50.0)
  %567 = add i64 %554, 64
  %568 = inttoptr i64 %567 to i8 addrspace(1)*
  %.ascast.i90.1.3 = addrspacecast i8 addrspace(1)* %568 to i8 addrspace(4)*
  %569 = ptrtoint i8 addrspace(4)* %.ascast.i90.1.3 to i64
  %570 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.1.3)
  %571 = extractvalue { i32, i32 } %570, 0
  %572 = extractvalue { i32, i32 } %570, 1
  %573 = and i32 %571, -64
  %574 = insertelement <2 x i32> undef, i32 %573, i32 0
  %575 = insertelement <2 x i32> %574, i32 %572, i32 1
  %576 = bitcast <2 x i32> %575 to i64
  %577 = trunc i64 %569 to i32
  %578 = lshr i32 %577, 2
  %579 = and i32 %578, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %576, i32 %21, i32 7, i32 %21, i32 %579, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.54.0)
  %580 = add i64 %554, 128
  %581 = inttoptr i64 %580 to i8 addrspace(1)*
  %.ascast.i90.2.3 = addrspacecast i8 addrspace(1)* %581 to i8 addrspace(4)*
  %582 = ptrtoint i8 addrspace(4)* %.ascast.i90.2.3 to i64
  %583 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.2.3)
  %584 = extractvalue { i32, i32 } %583, 0
  %585 = extractvalue { i32, i32 } %583, 1
  %586 = and i32 %584, -64
  %587 = insertelement <2 x i32> undef, i32 %586, i32 0
  %588 = insertelement <2 x i32> %587, i32 %585, i32 1
  %589 = bitcast <2 x i32> %588 to i64
  %590 = trunc i64 %582 to i32
  %591 = lshr i32 %590, 2
  %592 = and i32 %591, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %589, i32 %21, i32 7, i32 %21, i32 %592, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.58.0)
  %593 = add i64 %554, 192
  %594 = inttoptr i64 %593 to i8 addrspace(1)*
  %.ascast.i90.3.3 = addrspacecast i8 addrspace(1)* %594 to i8 addrspace(4)*
  %595 = ptrtoint i8 addrspace(4)* %.ascast.i90.3.3 to i64
  %596 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i90.3.3)
  %597 = extractvalue { i32, i32 } %596, 0
  %598 = extractvalue { i32, i32 } %596, 1
  %599 = and i32 %597, -64
  %600 = insertelement <2 x i32> undef, i32 %599, i32 0
  %601 = insertelement <2 x i32> %600, i32 %598, i32 1
  %602 = bitcast <2 x i32> %601 to i64
  %603 = trunc i64 %595 to i32
  %604 = lshr i32 %603, 2
  %605 = and i32 %604, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %602, i32 %21, i32 7, i32 %21, i32 %605, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.62.0)
  ret void, !stats.blockFrequency.digits !432, !stats.blockFrequency.scale !433
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
  %9 = shl nsw i32 %6, 6, !spirv.Decorations !430
  %localThreadId5 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %localThreadId5, 4
  %11 = and i32 %10, 4064
  %12 = add nuw nsw i32 %9, %11, !spirv.Decorations !430
  %13 = or i32 %12, 8
  %14 = or i32 %12, 16
  %15 = or i32 %12, 24
  %16 = shl nsw i32 %5, 7, !spirv.Decorations !430
  %17 = shl nuw nsw i32 %localThreadId5, 6
  %18 = and i32 %17, 64
  %19 = or i32 %16, %18
  %20 = shl i32 %4, 2
  %21 = add i32 %20, -1
  %22 = icmp sgt i32 %3, 0
  br i1 %22, label %.lr.ph, label %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge, !stats.blockFrequency.digits !432, !stats.blockFrequency.scale !433

.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge: ; preds = %.preheader1.preheader
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit, !stats.blockFrequency.digits !434, !stats.blockFrequency.scale !435

.lr.ph:                                           ; preds = %.preheader1.preheader
  %23 = shl nsw i32 %4, 1, !spirv.Decorations !430
  %24 = ashr i32 %23, 31
  %25 = shl i32 %3, 1
  %26 = add i32 %25, -1
  %27 = shl nuw i32 %19, 1
  %28 = mul nsw i32 %12, %3, !spirv.Decorations !430
  %29 = mul nsw i32 %13, %3
  %30 = mul nsw i32 %14, %3
  %31 = mul nsw i32 %15, %3
  %32 = sext i32 %28 to i64
  %33 = shl nsw i64 %32, 1
  %34 = sext i32 %29 to i64
  %35 = shl nsw i64 %34, 1
  %36 = sext i32 %30 to i64
  %37 = shl nsw i64 %36, 1
  %38 = sext i32 %31 to i64
  %39 = shl nsw i64 %38, 1
  %40 = zext i32 %27 to i64
  %41 = shl nuw nsw i64 %40, 1
  br label %.preheader.preheader, !stats.blockFrequency.digits !436, !stats.blockFrequency.scale !437

.preheader.preheader:                             ; preds = %.preheader.preheader..preheader.preheader_crit_edge, %.lr.ph
  %42 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %289, %.preheader.preheader..preheader.preheader_crit_edge ]
  %43 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %291, %.preheader.preheader..preheader.preheader_crit_edge ]
  %44 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %293, %.preheader.preheader..preheader.preheader_crit_edge ]
  %45 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %295, %.preheader.preheader..preheader.preheader_crit_edge ]
  %46 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %297, %.preheader.preheader..preheader.preheader_crit_edge ]
  %47 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %299, %.preheader.preheader..preheader.preheader_crit_edge ]
  %48 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %301, %.preheader.preheader..preheader.preheader_crit_edge ]
  %49 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %303, %.preheader.preheader..preheader.preheader_crit_edge ]
  %50 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %305, %.preheader.preheader..preheader.preheader_crit_edge ]
  %51 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %307, %.preheader.preheader..preheader.preheader_crit_edge ]
  %52 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %309, %.preheader.preheader..preheader.preheader_crit_edge ]
  %53 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %311, %.preheader.preheader..preheader.preheader_crit_edge ]
  %54 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %313, %.preheader.preheader..preheader.preheader_crit_edge ]
  %55 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %315, %.preheader.preheader..preheader.preheader_crit_edge ]
  %56 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %317, %.preheader.preheader..preheader.preheader_crit_edge ]
  %57 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %319, %.preheader.preheader..preheader.preheader_crit_edge ]
  %58 = phi i32 [ 0, %.lr.ph ], [ %320, %.preheader.preheader..preheader.preheader_crit_edge ]
  %59 = shl nuw i32 %58, 1
  %60 = zext i32 %59 to i64
  %sink_201 = ptrtoint i8 addrspace(1)* %0 to i64
  %61 = add i64 %sink_201, %60
  %62 = add i64 %61, %33
  %63 = inttoptr i64 %62 to i8 addrspace(1)*
  %.ascast.i = addrspacecast i8 addrspace(1)* %63 to i8 addrspace(4)*
  %64 = ptrtoint i8 addrspace(4)* %.ascast.i to i64
  %65 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i)
  %66 = extractvalue { i32, i32 } %65, 0
  %67 = extractvalue { i32, i32 } %65, 1
  %68 = and i32 %66, -64
  %69 = insertelement <2 x i32> undef, i32 %68, i32 0
  %70 = insertelement <2 x i32> %69, i32 %67, i32 1
  %71 = bitcast <2 x i32> %70 to i64
  %72 = trunc i64 %64 to i32
  %73 = lshr i32 %72, 1
  %74 = and i32 %73, 31
  %75 = add i64 %62, 32
  %76 = inttoptr i64 %75 to i8 addrspace(1)*
  %.ascast.i86 = addrspacecast i8 addrspace(1)* %76 to i8 addrspace(4)*
  %77 = ptrtoint i8 addrspace(4)* %.ascast.i86 to i64
  %78 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86)
  %79 = extractvalue { i32, i32 } %78, 0
  %80 = extractvalue { i32, i32 } %78, 1
  %81 = and i32 %79, -64
  %82 = insertelement <2 x i32> undef, i32 %81, i32 0
  %83 = insertelement <2 x i32> %82, i32 %80, i32 1
  %84 = bitcast <2 x i32> %83 to i64
  %85 = trunc i64 %77 to i32
  %86 = lshr i32 %85, 1
  %87 = and i32 %86, 31
  %88 = add i64 %61, %35
  %89 = inttoptr i64 %88 to i8 addrspace(1)*
  %.ascast.i.1 = addrspacecast i8 addrspace(1)* %89 to i8 addrspace(4)*
  %90 = ptrtoint i8 addrspace(4)* %.ascast.i.1 to i64
  %91 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.1)
  %92 = extractvalue { i32, i32 } %91, 0
  %93 = extractvalue { i32, i32 } %91, 1
  %94 = and i32 %92, -64
  %95 = insertelement <2 x i32> undef, i32 %94, i32 0
  %96 = insertelement <2 x i32> %95, i32 %93, i32 1
  %97 = bitcast <2 x i32> %96 to i64
  %98 = trunc i64 %90 to i32
  %99 = lshr i32 %98, 1
  %100 = and i32 %99, 31
  %101 = add i64 %88, 32
  %102 = inttoptr i64 %101 to i8 addrspace(1)*
  %.ascast.i86.1 = addrspacecast i8 addrspace(1)* %102 to i8 addrspace(4)*
  %103 = ptrtoint i8 addrspace(4)* %.ascast.i86.1 to i64
  %104 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86.1)
  %105 = extractvalue { i32, i32 } %104, 0
  %106 = extractvalue { i32, i32 } %104, 1
  %107 = and i32 %105, -64
  %108 = insertelement <2 x i32> undef, i32 %107, i32 0
  %109 = insertelement <2 x i32> %108, i32 %106, i32 1
  %110 = bitcast <2 x i32> %109 to i64
  %111 = trunc i64 %103 to i32
  %112 = lshr i32 %111, 1
  %113 = and i32 %112, 31
  %114 = add i64 %61, %37
  %115 = inttoptr i64 %114 to i8 addrspace(1)*
  %.ascast.i.2 = addrspacecast i8 addrspace(1)* %115 to i8 addrspace(4)*
  %116 = ptrtoint i8 addrspace(4)* %.ascast.i.2 to i64
  %117 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.2)
  %118 = extractvalue { i32, i32 } %117, 0
  %119 = extractvalue { i32, i32 } %117, 1
  %120 = and i32 %118, -64
  %121 = insertelement <2 x i32> undef, i32 %120, i32 0
  %122 = insertelement <2 x i32> %121, i32 %119, i32 1
  %123 = bitcast <2 x i32> %122 to i64
  %124 = trunc i64 %116 to i32
  %125 = lshr i32 %124, 1
  %126 = and i32 %125, 31
  %127 = add i64 %114, 32
  %128 = inttoptr i64 %127 to i8 addrspace(1)*
  %.ascast.i86.2 = addrspacecast i8 addrspace(1)* %128 to i8 addrspace(4)*
  %129 = ptrtoint i8 addrspace(4)* %.ascast.i86.2 to i64
  %130 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86.2)
  %131 = extractvalue { i32, i32 } %130, 0
  %132 = extractvalue { i32, i32 } %130, 1
  %133 = and i32 %131, -64
  %134 = insertelement <2 x i32> undef, i32 %133, i32 0
  %135 = insertelement <2 x i32> %134, i32 %132, i32 1
  %136 = bitcast <2 x i32> %135 to i64
  %137 = trunc i64 %129 to i32
  %138 = lshr i32 %137, 1
  %139 = and i32 %138, 31
  %140 = add i64 %61, %39
  %141 = inttoptr i64 %140 to i8 addrspace(1)*
  %.ascast.i.3 = addrspacecast i8 addrspace(1)* %141 to i8 addrspace(4)*
  %142 = ptrtoint i8 addrspace(4)* %.ascast.i.3 to i64
  %143 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.3)
  %144 = extractvalue { i32, i32 } %143, 0
  %145 = extractvalue { i32, i32 } %143, 1
  %146 = and i32 %144, -64
  %147 = insertelement <2 x i32> undef, i32 %146, i32 0
  %148 = insertelement <2 x i32> %147, i32 %145, i32 1
  %149 = bitcast <2 x i32> %148 to i64
  %150 = trunc i64 %142 to i32
  %151 = lshr i32 %150, 1
  %152 = and i32 %151, 31
  %153 = add i64 %140, 32
  %154 = inttoptr i64 %153 to i8 addrspace(1)*
  %.ascast.i86.3 = addrspacecast i8 addrspace(1)* %154 to i8 addrspace(4)*
  %155 = ptrtoint i8 addrspace(4)* %.ascast.i86.3 to i64
  %156 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86.3)
  %157 = extractvalue { i32, i32 } %156, 0
  %158 = extractvalue { i32, i32 } %156, 1
  %159 = and i32 %157, -64
  %160 = insertelement <2 x i32> undef, i32 %159, i32 0
  %161 = insertelement <2 x i32> %160, i32 %158, i32 1
  %162 = bitcast <2 x i32> %161 to i64
  %163 = trunc i64 %155 to i32
  %164 = lshr i32 %163, 1
  %165 = and i32 %164, 31
  %166 = lshr exact i32 %58, 1
  %167 = call { i32, i32 } @llvm.genx.GenISA.mul.pair(i32 %166, i32 0, i32 %23, i32 %24)
  %168 = extractvalue { i32, i32 } %167, 0
  %169 = extractvalue { i32, i32 } %167, 1
  %170 = insertelement <2 x i32> undef, i32 %168, i32 0
  %171 = insertelement <2 x i32> %170, i32 %169, i32 1
  %172 = bitcast <2 x i32> %171 to i64
  %173 = shl nsw i64 %172, 1
  %sink_ = ptrtoint i8 addrspace(1)* %1 to i64
  %174 = add i64 %173, %sink_
  %175 = or i32 %166, 8
  %176 = call { i32, i32 } @llvm.genx.GenISA.mul.pair(i32 %175, i32 0, i32 %23, i32 %24)
  %177 = extractvalue { i32, i32 } %176, 0
  %178 = extractvalue { i32, i32 } %176, 1
  %179 = insertelement <2 x i32> undef, i32 %177, i32 0
  %180 = insertelement <2 x i32> %179, i32 %178, i32 1
  %181 = bitcast <2 x i32> %180 to i64
  %182 = shl nsw i64 %181, 1
  %183 = add i64 %182, %sink_
  %184 = add i64 %174, %41
  %185 = inttoptr i64 %184 to i8 addrspace(1)*
  %.ascast.i87 = addrspacecast i8 addrspace(1)* %185 to i8 addrspace(4)*
  %186 = ptrtoint i8 addrspace(4)* %.ascast.i87 to i64
  %187 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87)
  %188 = extractvalue { i32, i32 } %187, 0
  %189 = extractvalue { i32, i32 } %187, 1
  %190 = and i32 %188, -64
  %191 = insertelement <2 x i32> undef, i32 %190, i32 0
  %192 = insertelement <2 x i32> %191, i32 %189, i32 1
  %193 = bitcast <2 x i32> %192 to i64
  %194 = trunc i64 %186 to i32
  %195 = lshr i32 %194, 2
  %196 = and i32 %195, 15
  %197 = add i64 %183, %41
  %198 = inttoptr i64 %197 to i8 addrspace(1)*
  %.ascast.i88 = addrspacecast i8 addrspace(1)* %198 to i8 addrspace(4)*
  %199 = ptrtoint i8 addrspace(4)* %.ascast.i88 to i64
  %200 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88)
  %201 = extractvalue { i32, i32 } %200, 0
  %202 = extractvalue { i32, i32 } %200, 1
  %203 = and i32 %201, -64
  %204 = insertelement <2 x i32> undef, i32 %203, i32 0
  %205 = insertelement <2 x i32> %204, i32 %202, i32 1
  %206 = bitcast <2 x i32> %205 to i64
  %207 = trunc i64 %199 to i32
  %208 = lshr i32 %207, 2
  %209 = and i32 %208, 15
  %210 = add i64 %184, 64
  %211 = inttoptr i64 %210 to i8 addrspace(1)*
  %.ascast.i87.1 = addrspacecast i8 addrspace(1)* %211 to i8 addrspace(4)*
  %212 = ptrtoint i8 addrspace(4)* %.ascast.i87.1 to i64
  %213 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.1)
  %214 = extractvalue { i32, i32 } %213, 0
  %215 = extractvalue { i32, i32 } %213, 1
  %216 = and i32 %214, -64
  %217 = insertelement <2 x i32> undef, i32 %216, i32 0
  %218 = insertelement <2 x i32> %217, i32 %215, i32 1
  %219 = bitcast <2 x i32> %218 to i64
  %220 = trunc i64 %212 to i32
  %221 = lshr i32 %220, 2
  %222 = and i32 %221, 15
  %223 = add i64 %197, 64
  %224 = inttoptr i64 %223 to i8 addrspace(1)*
  %.ascast.i88.1 = addrspacecast i8 addrspace(1)* %224 to i8 addrspace(4)*
  %225 = ptrtoint i8 addrspace(4)* %.ascast.i88.1 to i64
  %226 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.1)
  %227 = extractvalue { i32, i32 } %226, 0
  %228 = extractvalue { i32, i32 } %226, 1
  %229 = and i32 %227, -64
  %230 = insertelement <2 x i32> undef, i32 %229, i32 0
  %231 = insertelement <2 x i32> %230, i32 %228, i32 1
  %232 = bitcast <2 x i32> %231 to i64
  %233 = trunc i64 %225 to i32
  %234 = lshr i32 %233, 2
  %235 = and i32 %234, 15
  %236 = add i64 %184, 128
  %237 = inttoptr i64 %236 to i8 addrspace(1)*
  %.ascast.i87.2 = addrspacecast i8 addrspace(1)* %237 to i8 addrspace(4)*
  %238 = ptrtoint i8 addrspace(4)* %.ascast.i87.2 to i64
  %239 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.2)
  %240 = extractvalue { i32, i32 } %239, 0
  %241 = extractvalue { i32, i32 } %239, 1
  %242 = and i32 %240, -64
  %243 = insertelement <2 x i32> undef, i32 %242, i32 0
  %244 = insertelement <2 x i32> %243, i32 %241, i32 1
  %245 = bitcast <2 x i32> %244 to i64
  %246 = trunc i64 %238 to i32
  %247 = lshr i32 %246, 2
  %248 = and i32 %247, 15
  %249 = add i64 %197, 128
  %250 = inttoptr i64 %249 to i8 addrspace(1)*
  %.ascast.i88.2 = addrspacecast i8 addrspace(1)* %250 to i8 addrspace(4)*
  %251 = ptrtoint i8 addrspace(4)* %.ascast.i88.2 to i64
  %252 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.2)
  %253 = extractvalue { i32, i32 } %252, 0
  %254 = extractvalue { i32, i32 } %252, 1
  %255 = and i32 %253, -64
  %256 = insertelement <2 x i32> undef, i32 %255, i32 0
  %257 = insertelement <2 x i32> %256, i32 %254, i32 1
  %258 = bitcast <2 x i32> %257 to i64
  %259 = trunc i64 %251 to i32
  %260 = lshr i32 %259, 2
  %261 = and i32 %260, 15
  %262 = add i64 %184, 192
  %263 = inttoptr i64 %262 to i8 addrspace(1)*
  %.ascast.i87.3 = addrspacecast i8 addrspace(1)* %263 to i8 addrspace(4)*
  %264 = ptrtoint i8 addrspace(4)* %.ascast.i87.3 to i64
  %265 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.3)
  %266 = extractvalue { i32, i32 } %265, 0
  %267 = extractvalue { i32, i32 } %265, 1
  %268 = and i32 %266, -64
  %269 = insertelement <2 x i32> undef, i32 %268, i32 0
  %270 = insertelement <2 x i32> %269, i32 %267, i32 1
  %271 = bitcast <2 x i32> %270 to i64
  %272 = trunc i64 %264 to i32
  %273 = lshr i32 %272, 2
  %274 = and i32 %273, 15
  %275 = add i64 %197, 192
  %276 = inttoptr i64 %275 to i8 addrspace(1)*
  %.ascast.i88.3 = addrspacecast i8 addrspace(1)* %276 to i8 addrspace(4)*
  %277 = ptrtoint i8 addrspace(4)* %.ascast.i88.3 to i64
  %278 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.3)
  %279 = extractvalue { i32, i32 } %278, 0
  %280 = extractvalue { i32, i32 } %278, 1
  %281 = and i32 %279, -64
  %282 = insertelement <2 x i32> undef, i32 %281, i32 0
  %283 = insertelement <2 x i32> %282, i32 %280, i32 1
  %284 = bitcast <2 x i32> %283 to i64
  %285 = trunc i64 %277 to i32
  %286 = lshr i32 %285, 2
  %287 = and i32 %286, 15
  %sched_200 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %71, i32 %26, i32 7, i32 %26, i32 %74, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_192 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %193, i32 %21, i32 7, i32 %21, i32 %196, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_199 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %84, i32 %26, i32 7, i32 %26, i32 %87, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_191 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %206, i32 %21, i32 7, i32 %21, i32 %209, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_190 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %219, i32 %21, i32 7, i32 %21, i32 %222, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_189 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %232, i32 %21, i32 7, i32 %21, i32 %235, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_188 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %245, i32 %21, i32 7, i32 %21, i32 %248, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_187 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %258, i32 %21, i32 7, i32 %21, i32 %261, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_186 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %271, i32 %21, i32 7, i32 %21, i32 %274, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_ = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %284, i32 %21, i32 7, i32 %21, i32 %287, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_198 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %97, i32 %26, i32 7, i32 %26, i32 %100, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_197 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %110, i32 %26, i32 7, i32 %26, i32 %113, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_196 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %123, i32 %26, i32 7, i32 %26, i32 %126, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_195 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %136, i32 %26, i32 7, i32 %26, i32 %139, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_194 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %149, i32 %26, i32 7, i32 %26, i32 %152, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_193 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %162, i32 %26, i32 7, i32 %26, i32 %165, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %288 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %42, <8 x i16> %sched_200, <8 x i32> %sched_192, i32 11, i32 11, i32 8, i32 8, i1 false)
  %289 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %288, <8 x i16> %sched_199, <8 x i32> %sched_191, i32 11, i32 11, i32 8, i32 8, i1 false)
  %290 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %43, <8 x i16> %sched_200, <8 x i32> %sched_190, i32 11, i32 11, i32 8, i32 8, i1 false)
  %291 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %290, <8 x i16> %sched_199, <8 x i32> %sched_189, i32 11, i32 11, i32 8, i32 8, i1 false)
  %292 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %44, <8 x i16> %sched_200, <8 x i32> %sched_188, i32 11, i32 11, i32 8, i32 8, i1 false)
  %293 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %292, <8 x i16> %sched_199, <8 x i32> %sched_187, i32 11, i32 11, i32 8, i32 8, i1 false)
  %294 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %45, <8 x i16> %sched_200, <8 x i32> %sched_186, i32 11, i32 11, i32 8, i32 8, i1 false)
  %295 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %294, <8 x i16> %sched_199, <8 x i32> %sched_, i32 11, i32 11, i32 8, i32 8, i1 false)
  %296 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %46, <8 x i16> %sched_198, <8 x i32> %sched_192, i32 11, i32 11, i32 8, i32 8, i1 false)
  %297 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %296, <8 x i16> %sched_197, <8 x i32> %sched_191, i32 11, i32 11, i32 8, i32 8, i1 false)
  %298 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %47, <8 x i16> %sched_198, <8 x i32> %sched_190, i32 11, i32 11, i32 8, i32 8, i1 false)
  %299 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %298, <8 x i16> %sched_197, <8 x i32> %sched_189, i32 11, i32 11, i32 8, i32 8, i1 false)
  %300 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %48, <8 x i16> %sched_198, <8 x i32> %sched_188, i32 11, i32 11, i32 8, i32 8, i1 false)
  %301 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %300, <8 x i16> %sched_197, <8 x i32> %sched_187, i32 11, i32 11, i32 8, i32 8, i1 false)
  %302 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %49, <8 x i16> %sched_198, <8 x i32> %sched_186, i32 11, i32 11, i32 8, i32 8, i1 false)
  %303 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %302, <8 x i16> %sched_197, <8 x i32> %sched_, i32 11, i32 11, i32 8, i32 8, i1 false)
  %304 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %50, <8 x i16> %sched_196, <8 x i32> %sched_192, i32 11, i32 11, i32 8, i32 8, i1 false)
  %305 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %304, <8 x i16> %sched_195, <8 x i32> %sched_191, i32 11, i32 11, i32 8, i32 8, i1 false)
  %306 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %51, <8 x i16> %sched_196, <8 x i32> %sched_190, i32 11, i32 11, i32 8, i32 8, i1 false)
  %307 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %306, <8 x i16> %sched_195, <8 x i32> %sched_189, i32 11, i32 11, i32 8, i32 8, i1 false)
  %308 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %52, <8 x i16> %sched_196, <8 x i32> %sched_188, i32 11, i32 11, i32 8, i32 8, i1 false)
  %309 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %308, <8 x i16> %sched_195, <8 x i32> %sched_187, i32 11, i32 11, i32 8, i32 8, i1 false)
  %310 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %53, <8 x i16> %sched_196, <8 x i32> %sched_186, i32 11, i32 11, i32 8, i32 8, i1 false)
  %311 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %310, <8 x i16> %sched_195, <8 x i32> %sched_, i32 11, i32 11, i32 8, i32 8, i1 false)
  %312 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %54, <8 x i16> %sched_194, <8 x i32> %sched_192, i32 11, i32 11, i32 8, i32 8, i1 false)
  %313 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %312, <8 x i16> %sched_193, <8 x i32> %sched_191, i32 11, i32 11, i32 8, i32 8, i1 false)
  %314 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %55, <8 x i16> %sched_194, <8 x i32> %sched_190, i32 11, i32 11, i32 8, i32 8, i1 false)
  %315 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %314, <8 x i16> %sched_193, <8 x i32> %sched_189, i32 11, i32 11, i32 8, i32 8, i1 false)
  %316 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %56, <8 x i16> %sched_194, <8 x i32> %sched_188, i32 11, i32 11, i32 8, i32 8, i1 false)
  %317 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %316, <8 x i16> %sched_193, <8 x i32> %sched_187, i32 11, i32 11, i32 8, i32 8, i1 false)
  %318 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %57, <8 x i16> %sched_194, <8 x i32> %sched_186, i32 11, i32 11, i32 8, i32 8, i1 false)
  %319 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %318, <8 x i16> %sched_193, <8 x i32> %sched_, i32 11, i32 11, i32 8, i32 8, i1 false)
  %320 = add nuw nsw i32 %58, 32, !spirv.Decorations !438
  %321 = icmp slt i32 %320, %3
  br i1 %321, label %.preheader.preheader..preheader.preheader_crit_edge, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit, !stats.blockFrequency.digits !440, !stats.blockFrequency.scale !441

.preheader.preheader..preheader.preheader_crit_edge: ; preds = %.preheader.preheader
  br label %.preheader.preheader, !stats.blockFrequency.digits !443, !stats.blockFrequency.scale !441

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit: ; preds = %.preheader.preheader
  %.lcssa216 = phi <8 x float> [ %289, %.preheader.preheader ]
  %.lcssa215 = phi <8 x float> [ %291, %.preheader.preheader ]
  %.lcssa214 = phi <8 x float> [ %293, %.preheader.preheader ]
  %.lcssa213 = phi <8 x float> [ %295, %.preheader.preheader ]
  %.lcssa212 = phi <8 x float> [ %297, %.preheader.preheader ]
  %.lcssa211 = phi <8 x float> [ %299, %.preheader.preheader ]
  %.lcssa210 = phi <8 x float> [ %301, %.preheader.preheader ]
  %.lcssa209 = phi <8 x float> [ %303, %.preheader.preheader ]
  %.lcssa208 = phi <8 x float> [ %305, %.preheader.preheader ]
  %.lcssa207 = phi <8 x float> [ %307, %.preheader.preheader ]
  %.lcssa206 = phi <8 x float> [ %309, %.preheader.preheader ]
  %.lcssa205 = phi <8 x float> [ %311, %.preheader.preheader ]
  %.lcssa204 = phi <8 x float> [ %313, %.preheader.preheader ]
  %.lcssa203 = phi <8 x float> [ %315, %.preheader.preheader ]
  %.lcssa202 = phi <8 x float> [ %317, %.preheader.preheader ]
  %.lcssa = phi <8 x float> [ %319, %.preheader.preheader ]
  %322 = bitcast <8 x float> %.lcssa216 to <8 x i32>
  %323 = bitcast <8 x float> %.lcssa215 to <8 x i32>
  %324 = bitcast <8 x float> %.lcssa214 to <8 x i32>
  %325 = bitcast <8 x float> %.lcssa213 to <8 x i32>
  %326 = bitcast <8 x float> %.lcssa212 to <8 x i32>
  %327 = bitcast <8 x float> %.lcssa211 to <8 x i32>
  %328 = bitcast <8 x float> %.lcssa210 to <8 x i32>
  %329 = bitcast <8 x float> %.lcssa209 to <8 x i32>
  %330 = bitcast <8 x float> %.lcssa208 to <8 x i32>
  %331 = bitcast <8 x float> %.lcssa207 to <8 x i32>
  %332 = bitcast <8 x float> %.lcssa206 to <8 x i32>
  %333 = bitcast <8 x float> %.lcssa205 to <8 x i32>
  %334 = bitcast <8 x float> %.lcssa204 to <8 x i32>
  %335 = bitcast <8 x float> %.lcssa203 to <8 x i32>
  %336 = bitcast <8 x float> %.lcssa202 to <8 x i32>
  %337 = bitcast <8 x float> %.lcssa to <8 x i32>
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit, !stats.blockFrequency.digits !436, !stats.blockFrequency.scale !437

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit: ; preds = %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge
  %.sroa.082.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %322, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.687.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %323, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.10.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %324, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.14.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %325, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.18.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %326, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.22.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %327, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.26.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %328, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.30.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %329, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.34.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %330, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.38.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %331, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.42.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %332, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.46.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %333, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.50.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %334, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.54.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %335, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.58.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %336, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.62.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %337, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %338 = ptrtoint i8 addrspace(1)* %2 to i64
  %339 = zext i32 %19 to i64
  %340 = shl nuw nsw i64 %339, 2
  %341 = add i64 %340, %338
  %342 = mul nsw i32 %12, %4, !spirv.Decorations !430
  %343 = sext i32 %342 to i64
  %344 = shl nsw i64 %343, 2
  %345 = add i64 %341, %344
  %346 = inttoptr i64 %345 to i8 addrspace(1)*
  %.ascast.i89 = addrspacecast i8 addrspace(1)* %346 to i8 addrspace(4)*
  %347 = ptrtoint i8 addrspace(4)* %.ascast.i89 to i64
  %348 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89)
  %349 = extractvalue { i32, i32 } %348, 0
  %350 = extractvalue { i32, i32 } %348, 1
  %351 = and i32 %349, -64
  %352 = insertelement <2 x i32> undef, i32 %351, i32 0
  %353 = insertelement <2 x i32> %352, i32 %350, i32 1
  %354 = bitcast <2 x i32> %353 to i64
  %355 = trunc i64 %347 to i32
  %356 = lshr i32 %355, 2
  %357 = and i32 %356, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %354, i32 %21, i32 7, i32 %21, i32 %357, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.082.0)
  %358 = add i64 %345, 64
  %359 = inttoptr i64 %358 to i8 addrspace(1)*
  %.ascast.i89.1 = addrspacecast i8 addrspace(1)* %359 to i8 addrspace(4)*
  %360 = ptrtoint i8 addrspace(4)* %.ascast.i89.1 to i64
  %361 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.1)
  %362 = extractvalue { i32, i32 } %361, 0
  %363 = extractvalue { i32, i32 } %361, 1
  %364 = and i32 %362, -64
  %365 = insertelement <2 x i32> undef, i32 %364, i32 0
  %366 = insertelement <2 x i32> %365, i32 %363, i32 1
  %367 = bitcast <2 x i32> %366 to i64
  %368 = trunc i64 %360 to i32
  %369 = lshr i32 %368, 2
  %370 = and i32 %369, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %367, i32 %21, i32 7, i32 %21, i32 %370, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.687.0)
  %371 = add i64 %345, 128
  %372 = inttoptr i64 %371 to i8 addrspace(1)*
  %.ascast.i89.2 = addrspacecast i8 addrspace(1)* %372 to i8 addrspace(4)*
  %373 = ptrtoint i8 addrspace(4)* %.ascast.i89.2 to i64
  %374 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.2)
  %375 = extractvalue { i32, i32 } %374, 0
  %376 = extractvalue { i32, i32 } %374, 1
  %377 = and i32 %375, -64
  %378 = insertelement <2 x i32> undef, i32 %377, i32 0
  %379 = insertelement <2 x i32> %378, i32 %376, i32 1
  %380 = bitcast <2 x i32> %379 to i64
  %381 = trunc i64 %373 to i32
  %382 = lshr i32 %381, 2
  %383 = and i32 %382, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %380, i32 %21, i32 7, i32 %21, i32 %383, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.10.0)
  %384 = add i64 %345, 192
  %385 = inttoptr i64 %384 to i8 addrspace(1)*
  %.ascast.i89.3 = addrspacecast i8 addrspace(1)* %385 to i8 addrspace(4)*
  %386 = ptrtoint i8 addrspace(4)* %.ascast.i89.3 to i64
  %387 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.3)
  %388 = extractvalue { i32, i32 } %387, 0
  %389 = extractvalue { i32, i32 } %387, 1
  %390 = and i32 %388, -64
  %391 = insertelement <2 x i32> undef, i32 %390, i32 0
  %392 = insertelement <2 x i32> %391, i32 %389, i32 1
  %393 = bitcast <2 x i32> %392 to i64
  %394 = trunc i64 %386 to i32
  %395 = lshr i32 %394, 2
  %396 = and i32 %395, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %393, i32 %21, i32 7, i32 %21, i32 %396, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.14.0)
  %397 = mul nsw i32 %13, %4, !spirv.Decorations !430
  %398 = sext i32 %397 to i64
  %399 = shl nsw i64 %398, 2
  %400 = add i64 %341, %399
  %401 = inttoptr i64 %400 to i8 addrspace(1)*
  %.ascast.i89.130 = addrspacecast i8 addrspace(1)* %401 to i8 addrspace(4)*
  %402 = ptrtoint i8 addrspace(4)* %.ascast.i89.130 to i64
  %403 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.130)
  %404 = extractvalue { i32, i32 } %403, 0
  %405 = extractvalue { i32, i32 } %403, 1
  %406 = and i32 %404, -64
  %407 = insertelement <2 x i32> undef, i32 %406, i32 0
  %408 = insertelement <2 x i32> %407, i32 %405, i32 1
  %409 = bitcast <2 x i32> %408 to i64
  %410 = trunc i64 %402 to i32
  %411 = lshr i32 %410, 2
  %412 = and i32 %411, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %409, i32 %21, i32 7, i32 %21, i32 %412, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.18.0)
  %413 = add i64 %400, 64
  %414 = inttoptr i64 %413 to i8 addrspace(1)*
  %.ascast.i89.1.1 = addrspacecast i8 addrspace(1)* %414 to i8 addrspace(4)*
  %415 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.1 to i64
  %416 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.1.1)
  %417 = extractvalue { i32, i32 } %416, 0
  %418 = extractvalue { i32, i32 } %416, 1
  %419 = and i32 %417, -64
  %420 = insertelement <2 x i32> undef, i32 %419, i32 0
  %421 = insertelement <2 x i32> %420, i32 %418, i32 1
  %422 = bitcast <2 x i32> %421 to i64
  %423 = trunc i64 %415 to i32
  %424 = lshr i32 %423, 2
  %425 = and i32 %424, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %422, i32 %21, i32 7, i32 %21, i32 %425, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.22.0)
  %426 = add i64 %400, 128
  %427 = inttoptr i64 %426 to i8 addrspace(1)*
  %.ascast.i89.2.1 = addrspacecast i8 addrspace(1)* %427 to i8 addrspace(4)*
  %428 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.1 to i64
  %429 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.2.1)
  %430 = extractvalue { i32, i32 } %429, 0
  %431 = extractvalue { i32, i32 } %429, 1
  %432 = and i32 %430, -64
  %433 = insertelement <2 x i32> undef, i32 %432, i32 0
  %434 = insertelement <2 x i32> %433, i32 %431, i32 1
  %435 = bitcast <2 x i32> %434 to i64
  %436 = trunc i64 %428 to i32
  %437 = lshr i32 %436, 2
  %438 = and i32 %437, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %435, i32 %21, i32 7, i32 %21, i32 %438, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.26.0)
  %439 = add i64 %400, 192
  %440 = inttoptr i64 %439 to i8 addrspace(1)*
  %.ascast.i89.3.1 = addrspacecast i8 addrspace(1)* %440 to i8 addrspace(4)*
  %441 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.1 to i64
  %442 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.3.1)
  %443 = extractvalue { i32, i32 } %442, 0
  %444 = extractvalue { i32, i32 } %442, 1
  %445 = and i32 %443, -64
  %446 = insertelement <2 x i32> undef, i32 %445, i32 0
  %447 = insertelement <2 x i32> %446, i32 %444, i32 1
  %448 = bitcast <2 x i32> %447 to i64
  %449 = trunc i64 %441 to i32
  %450 = lshr i32 %449, 2
  %451 = and i32 %450, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %448, i32 %21, i32 7, i32 %21, i32 %451, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.30.0)
  %452 = mul nsw i32 %14, %4, !spirv.Decorations !430
  %453 = sext i32 %452 to i64
  %454 = shl nsw i64 %453, 2
  %455 = add i64 %341, %454
  %456 = inttoptr i64 %455 to i8 addrspace(1)*
  %.ascast.i89.231 = addrspacecast i8 addrspace(1)* %456 to i8 addrspace(4)*
  %457 = ptrtoint i8 addrspace(4)* %.ascast.i89.231 to i64
  %458 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.231)
  %459 = extractvalue { i32, i32 } %458, 0
  %460 = extractvalue { i32, i32 } %458, 1
  %461 = and i32 %459, -64
  %462 = insertelement <2 x i32> undef, i32 %461, i32 0
  %463 = insertelement <2 x i32> %462, i32 %460, i32 1
  %464 = bitcast <2 x i32> %463 to i64
  %465 = trunc i64 %457 to i32
  %466 = lshr i32 %465, 2
  %467 = and i32 %466, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %464, i32 %21, i32 7, i32 %21, i32 %467, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.34.0)
  %468 = add i64 %455, 64
  %469 = inttoptr i64 %468 to i8 addrspace(1)*
  %.ascast.i89.1.2 = addrspacecast i8 addrspace(1)* %469 to i8 addrspace(4)*
  %470 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.2 to i64
  %471 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.1.2)
  %472 = extractvalue { i32, i32 } %471, 0
  %473 = extractvalue { i32, i32 } %471, 1
  %474 = and i32 %472, -64
  %475 = insertelement <2 x i32> undef, i32 %474, i32 0
  %476 = insertelement <2 x i32> %475, i32 %473, i32 1
  %477 = bitcast <2 x i32> %476 to i64
  %478 = trunc i64 %470 to i32
  %479 = lshr i32 %478, 2
  %480 = and i32 %479, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %477, i32 %21, i32 7, i32 %21, i32 %480, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.38.0)
  %481 = add i64 %455, 128
  %482 = inttoptr i64 %481 to i8 addrspace(1)*
  %.ascast.i89.2.2 = addrspacecast i8 addrspace(1)* %482 to i8 addrspace(4)*
  %483 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.2 to i64
  %484 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.2.2)
  %485 = extractvalue { i32, i32 } %484, 0
  %486 = extractvalue { i32, i32 } %484, 1
  %487 = and i32 %485, -64
  %488 = insertelement <2 x i32> undef, i32 %487, i32 0
  %489 = insertelement <2 x i32> %488, i32 %486, i32 1
  %490 = bitcast <2 x i32> %489 to i64
  %491 = trunc i64 %483 to i32
  %492 = lshr i32 %491, 2
  %493 = and i32 %492, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %490, i32 %21, i32 7, i32 %21, i32 %493, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.42.0)
  %494 = add i64 %455, 192
  %495 = inttoptr i64 %494 to i8 addrspace(1)*
  %.ascast.i89.3.2 = addrspacecast i8 addrspace(1)* %495 to i8 addrspace(4)*
  %496 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.2 to i64
  %497 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.3.2)
  %498 = extractvalue { i32, i32 } %497, 0
  %499 = extractvalue { i32, i32 } %497, 1
  %500 = and i32 %498, -64
  %501 = insertelement <2 x i32> undef, i32 %500, i32 0
  %502 = insertelement <2 x i32> %501, i32 %499, i32 1
  %503 = bitcast <2 x i32> %502 to i64
  %504 = trunc i64 %496 to i32
  %505 = lshr i32 %504, 2
  %506 = and i32 %505, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %503, i32 %21, i32 7, i32 %21, i32 %506, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.46.0)
  %507 = mul nsw i32 %15, %4, !spirv.Decorations !430
  %508 = sext i32 %507 to i64
  %509 = shl nsw i64 %508, 2
  %510 = add i64 %341, %509
  %511 = inttoptr i64 %510 to i8 addrspace(1)*
  %.ascast.i89.332 = addrspacecast i8 addrspace(1)* %511 to i8 addrspace(4)*
  %512 = ptrtoint i8 addrspace(4)* %.ascast.i89.332 to i64
  %513 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.332)
  %514 = extractvalue { i32, i32 } %513, 0
  %515 = extractvalue { i32, i32 } %513, 1
  %516 = and i32 %514, -64
  %517 = insertelement <2 x i32> undef, i32 %516, i32 0
  %518 = insertelement <2 x i32> %517, i32 %515, i32 1
  %519 = bitcast <2 x i32> %518 to i64
  %520 = trunc i64 %512 to i32
  %521 = lshr i32 %520, 2
  %522 = and i32 %521, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %519, i32 %21, i32 7, i32 %21, i32 %522, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.50.0)
  %523 = add i64 %510, 64
  %524 = inttoptr i64 %523 to i8 addrspace(1)*
  %.ascast.i89.1.3 = addrspacecast i8 addrspace(1)* %524 to i8 addrspace(4)*
  %525 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.3 to i64
  %526 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.1.3)
  %527 = extractvalue { i32, i32 } %526, 0
  %528 = extractvalue { i32, i32 } %526, 1
  %529 = and i32 %527, -64
  %530 = insertelement <2 x i32> undef, i32 %529, i32 0
  %531 = insertelement <2 x i32> %530, i32 %528, i32 1
  %532 = bitcast <2 x i32> %531 to i64
  %533 = trunc i64 %525 to i32
  %534 = lshr i32 %533, 2
  %535 = and i32 %534, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %532, i32 %21, i32 7, i32 %21, i32 %535, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.54.0)
  %536 = add i64 %510, 128
  %537 = inttoptr i64 %536 to i8 addrspace(1)*
  %.ascast.i89.2.3 = addrspacecast i8 addrspace(1)* %537 to i8 addrspace(4)*
  %538 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.3 to i64
  %539 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.2.3)
  %540 = extractvalue { i32, i32 } %539, 0
  %541 = extractvalue { i32, i32 } %539, 1
  %542 = and i32 %540, -64
  %543 = insertelement <2 x i32> undef, i32 %542, i32 0
  %544 = insertelement <2 x i32> %543, i32 %541, i32 1
  %545 = bitcast <2 x i32> %544 to i64
  %546 = trunc i64 %538 to i32
  %547 = lshr i32 %546, 2
  %548 = and i32 %547, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %545, i32 %21, i32 7, i32 %21, i32 %548, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.58.0)
  %549 = add i64 %510, 192
  %550 = inttoptr i64 %549 to i8 addrspace(1)*
  %.ascast.i89.3.3 = addrspacecast i8 addrspace(1)* %550 to i8 addrspace(4)*
  %551 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.3 to i64
  %552 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.3.3)
  %553 = extractvalue { i32, i32 } %552, 0
  %554 = extractvalue { i32, i32 } %552, 1
  %555 = and i32 %553, -64
  %556 = insertelement <2 x i32> undef, i32 %555, i32 0
  %557 = insertelement <2 x i32> %556, i32 %554, i32 1
  %558 = bitcast <2 x i32> %557 to i64
  %559 = trunc i64 %551 to i32
  %560 = lshr i32 %559, 2
  %561 = and i32 %560, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %558, i32 %21, i32 7, i32 %21, i32 %561, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.62.0)
  ret void, !stats.blockFrequency.digits !432, !stats.blockFrequency.scale !433
}

; Function Attrs: convergent nounwind null_pointer_is_valid
define spir_kernel void @_ZTSZZZ16bench_v3_if_onlyRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
.preheader1.preheader:
  %5 = extractelement <8 x i32> %r0, i32 1
  %6 = extractelement <8 x i32> %r0, i32 6
  %7 = bitcast <8 x i32> %r0 to <32 x i8>
  %8 = extractelement <32 x i8> %7, i32 8
  %9 = shl nsw i32 %6, 6, !spirv.Decorations !430
  %localThreadId5 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %localThreadId5, 4
  %11 = and i32 %10, 4064
  %12 = add nuw nsw i32 %9, %11, !spirv.Decorations !430
  %13 = or i32 %12, 8
  %14 = or i32 %12, 16
  %15 = or i32 %12, 24
  %16 = shl nsw i32 %5, 7, !spirv.Decorations !430
  %17 = shl nuw nsw i32 %localThreadId5, 6
  %18 = and i32 %17, 64
  %19 = or i32 %16, %18
  %20 = shl i32 %4, 2
  %21 = add i32 %20, -1
  %22 = icmp sgt i32 %3, 0
  br i1 %22, label %.lr.ph, label %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge, !stats.blockFrequency.digits !432, !stats.blockFrequency.scale !433

.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge: ; preds = %.preheader1.preheader
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit, !stats.blockFrequency.digits !434, !stats.blockFrequency.scale !435

.lr.ph:                                           ; preds = %.preheader1.preheader
  %23 = call i16 @llvm.genx.GenISA.simdLaneId()
  %24 = shl nsw i32 %4, 1, !spirv.Decorations !430
  %25 = ashr i32 %24, 31
  %26 = shl i32 %3, 1
  %27 = add i32 %26, -1
  %28 = shl nuw i32 %19, 1
  %29 = mul nsw i32 %12, %3
  %30 = mul nsw i32 %13, %3
  %31 = mul nsw i32 %14, %3
  %32 = mul nsw i32 %15, %3
  %33 = zext i16 %23 to i32
  %34 = shl nuw nsw i32 %33, 2
  %35 = sext i32 %29 to i64
  %36 = shl nsw i64 %35, 1
  %37 = sext i32 %30 to i64
  %38 = shl nsw i64 %37, 1
  %39 = sext i32 %31 to i64
  %40 = shl nsw i64 %39, 1
  %41 = sext i32 %32 to i64
  %42 = shl nsw i64 %41, 1
  %43 = zext i32 %28 to i64
  %44 = shl nuw nsw i64 %43, 1
  br label %45, !stats.blockFrequency.digits !436, !stats.blockFrequency.scale !437

45:                                               ; preds = %.preheader.preheader._crit_edge, %.lr.ph
  %46 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %312, %.preheader.preheader._crit_edge ]
  %47 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %314, %.preheader.preheader._crit_edge ]
  %48 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %316, %.preheader.preheader._crit_edge ]
  %49 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %318, %.preheader.preheader._crit_edge ]
  %50 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %320, %.preheader.preheader._crit_edge ]
  %51 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %322, %.preheader.preheader._crit_edge ]
  %52 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %324, %.preheader.preheader._crit_edge ]
  %53 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %326, %.preheader.preheader._crit_edge ]
  %54 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %328, %.preheader.preheader._crit_edge ]
  %55 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %330, %.preheader.preheader._crit_edge ]
  %56 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %332, %.preheader.preheader._crit_edge ]
  %57 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %334, %.preheader.preheader._crit_edge ]
  %58 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %336, %.preheader.preheader._crit_edge ]
  %59 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %338, %.preheader.preheader._crit_edge ]
  %60 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %340, %.preheader.preheader._crit_edge ]
  %61 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %342, %.preheader.preheader._crit_edge ]
  %62 = phi i32 [ 0, %.lr.ph ], [ %63, %.preheader.preheader._crit_edge ]
  %63 = add nuw nsw i32 %62, 32, !spirv.Decorations !438
  %64 = icmp slt i32 %63, %3
  br i1 %64, label %65, label %..preheader.preheader_crit_edge, !stats.blockFrequency.digits !440, !stats.blockFrequency.scale !441

..preheader.preheader_crit_edge:                  ; preds = %45
  br label %.preheader.preheader, !stats.blockFrequency.digits !440, !stats.blockFrequency.scale !442

65:                                               ; preds = %45
  %sink_198 = inttoptr i32 %34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %sink_198)
  %sink_199 = inttoptr i32 %34 to i32*
  store volatile i32 %63, i32* %sink_199, align 4
  %.0..0..0..0..0..0..0. = load volatile i32, i32* %sink_199, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %sink_198)
  br label %.preheader.preheader, !stats.blockFrequency.digits !440, !stats.blockFrequency.scale !442

.preheader.preheader:                             ; preds = %..preheader.preheader_crit_edge, %65
  %66 = shl nuw i32 %62, 1
  %67 = zext i32 %66 to i64
  %sink_197 = ptrtoint i8 addrspace(1)* %0 to i64
  %68 = add i64 %sink_197, %67
  %69 = add i64 %68, %36
  %70 = inttoptr i64 %69 to i8 addrspace(1)*
  %.ascast.i = addrspacecast i8 addrspace(1)* %70 to i8 addrspace(4)*
  %71 = ptrtoint i8 addrspace(4)* %.ascast.i to i64
  %72 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i)
  %73 = extractvalue { i32, i32 } %72, 0
  %74 = extractvalue { i32, i32 } %72, 1
  %75 = and i32 %73, -64
  %76 = insertelement <2 x i32> undef, i32 %75, i32 0
  %77 = insertelement <2 x i32> %76, i32 %74, i32 1
  %78 = bitcast <2 x i32> %77 to i64
  %79 = trunc i64 %71 to i32
  %80 = lshr i32 %79, 1
  %81 = and i32 %80, 31
  %82 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %78, i32 %27, i32 7, i32 %27, i32 %81, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %83 = add i64 %69, 32
  %84 = inttoptr i64 %83 to i8 addrspace(1)*
  %.ascast.i86 = addrspacecast i8 addrspace(1)* %84 to i8 addrspace(4)*
  %85 = ptrtoint i8 addrspace(4)* %.ascast.i86 to i64
  %86 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86)
  %87 = extractvalue { i32, i32 } %86, 0
  %88 = extractvalue { i32, i32 } %86, 1
  %89 = and i32 %87, -64
  %90 = insertelement <2 x i32> undef, i32 %89, i32 0
  %91 = insertelement <2 x i32> %90, i32 %88, i32 1
  %92 = bitcast <2 x i32> %91 to i64
  %93 = trunc i64 %85 to i32
  %94 = lshr i32 %93, 1
  %95 = and i32 %94, 31
  %96 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %92, i32 %27, i32 7, i32 %27, i32 %95, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %97 = add i64 %68, %38
  %98 = inttoptr i64 %97 to i8 addrspace(1)*
  %.ascast.i.1 = addrspacecast i8 addrspace(1)* %98 to i8 addrspace(4)*
  %99 = ptrtoint i8 addrspace(4)* %.ascast.i.1 to i64
  %100 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.1)
  %101 = extractvalue { i32, i32 } %100, 0
  %102 = extractvalue { i32, i32 } %100, 1
  %103 = and i32 %101, -64
  %104 = insertelement <2 x i32> undef, i32 %103, i32 0
  %105 = insertelement <2 x i32> %104, i32 %102, i32 1
  %106 = bitcast <2 x i32> %105 to i64
  %107 = trunc i64 %99 to i32
  %108 = lshr i32 %107, 1
  %109 = and i32 %108, 31
  %110 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %106, i32 %27, i32 7, i32 %27, i32 %109, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %111 = add i64 %97, 32
  %112 = inttoptr i64 %111 to i8 addrspace(1)*
  %.ascast.i86.1 = addrspacecast i8 addrspace(1)* %112 to i8 addrspace(4)*
  %113 = ptrtoint i8 addrspace(4)* %.ascast.i86.1 to i64
  %114 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86.1)
  %115 = extractvalue { i32, i32 } %114, 0
  %116 = extractvalue { i32, i32 } %114, 1
  %117 = and i32 %115, -64
  %118 = insertelement <2 x i32> undef, i32 %117, i32 0
  %119 = insertelement <2 x i32> %118, i32 %116, i32 1
  %120 = bitcast <2 x i32> %119 to i64
  %121 = trunc i64 %113 to i32
  %122 = lshr i32 %121, 1
  %123 = and i32 %122, 31
  %124 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %120, i32 %27, i32 7, i32 %27, i32 %123, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %125 = add i64 %68, %40
  %126 = inttoptr i64 %125 to i8 addrspace(1)*
  %.ascast.i.2 = addrspacecast i8 addrspace(1)* %126 to i8 addrspace(4)*
  %127 = ptrtoint i8 addrspace(4)* %.ascast.i.2 to i64
  %128 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.2)
  %129 = extractvalue { i32, i32 } %128, 0
  %130 = extractvalue { i32, i32 } %128, 1
  %131 = and i32 %129, -64
  %132 = insertelement <2 x i32> undef, i32 %131, i32 0
  %133 = insertelement <2 x i32> %132, i32 %130, i32 1
  %134 = bitcast <2 x i32> %133 to i64
  %135 = trunc i64 %127 to i32
  %136 = lshr i32 %135, 1
  %137 = and i32 %136, 31
  %138 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %134, i32 %27, i32 7, i32 %27, i32 %137, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %139 = add i64 %125, 32
  %140 = inttoptr i64 %139 to i8 addrspace(1)*
  %.ascast.i86.2 = addrspacecast i8 addrspace(1)* %140 to i8 addrspace(4)*
  %141 = ptrtoint i8 addrspace(4)* %.ascast.i86.2 to i64
  %142 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86.2)
  %143 = extractvalue { i32, i32 } %142, 0
  %144 = extractvalue { i32, i32 } %142, 1
  %145 = and i32 %143, -64
  %146 = insertelement <2 x i32> undef, i32 %145, i32 0
  %147 = insertelement <2 x i32> %146, i32 %144, i32 1
  %148 = bitcast <2 x i32> %147 to i64
  %149 = trunc i64 %141 to i32
  %150 = lshr i32 %149, 1
  %151 = and i32 %150, 31
  %152 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %148, i32 %27, i32 7, i32 %27, i32 %151, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %153 = add i64 %68, %42
  %154 = inttoptr i64 %153 to i8 addrspace(1)*
  %.ascast.i.3 = addrspacecast i8 addrspace(1)* %154 to i8 addrspace(4)*
  %155 = ptrtoint i8 addrspace(4)* %.ascast.i.3 to i64
  %156 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.3)
  %157 = extractvalue { i32, i32 } %156, 0
  %158 = extractvalue { i32, i32 } %156, 1
  %159 = and i32 %157, -64
  %160 = insertelement <2 x i32> undef, i32 %159, i32 0
  %161 = insertelement <2 x i32> %160, i32 %158, i32 1
  %162 = bitcast <2 x i32> %161 to i64
  %163 = trunc i64 %155 to i32
  %164 = lshr i32 %163, 1
  %165 = and i32 %164, 31
  %166 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %162, i32 %27, i32 7, i32 %27, i32 %165, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %167 = add i64 %153, 32
  %168 = inttoptr i64 %167 to i8 addrspace(1)*
  %.ascast.i86.3 = addrspacecast i8 addrspace(1)* %168 to i8 addrspace(4)*
  %169 = ptrtoint i8 addrspace(4)* %.ascast.i86.3 to i64
  %170 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86.3)
  %171 = extractvalue { i32, i32 } %170, 0
  %172 = extractvalue { i32, i32 } %170, 1
  %173 = and i32 %171, -64
  %174 = insertelement <2 x i32> undef, i32 %173, i32 0
  %175 = insertelement <2 x i32> %174, i32 %172, i32 1
  %176 = bitcast <2 x i32> %175 to i64
  %177 = trunc i64 %169 to i32
  %178 = lshr i32 %177, 1
  %179 = and i32 %178, 31
  %180 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %176, i32 %27, i32 7, i32 %27, i32 %179, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %181 = lshr exact i32 %62, 1
  %182 = call { i32, i32 } @llvm.genx.GenISA.mul.pair(i32 %181, i32 0, i32 %24, i32 %25)
  %183 = extractvalue { i32, i32 } %182, 0
  %184 = extractvalue { i32, i32 } %182, 1
  %185 = insertelement <2 x i32> undef, i32 %183, i32 0
  %186 = insertelement <2 x i32> %185, i32 %184, i32 1
  %187 = bitcast <2 x i32> %186 to i64
  %188 = shl nsw i64 %187, 1
  %sink_ = ptrtoint i8 addrspace(1)* %1 to i64
  %189 = add i64 %188, %sink_
  %190 = or i32 %181, 8
  %191 = call { i32, i32 } @llvm.genx.GenISA.mul.pair(i32 %190, i32 0, i32 %24, i32 %25)
  %192 = extractvalue { i32, i32 } %191, 0
  %193 = extractvalue { i32, i32 } %191, 1
  %194 = insertelement <2 x i32> undef, i32 %192, i32 0
  %195 = insertelement <2 x i32> %194, i32 %193, i32 1
  %196 = bitcast <2 x i32> %195 to i64
  %197 = shl nsw i64 %196, 1
  %198 = add i64 %197, %sink_
  %199 = add i64 %189, %44
  %200 = inttoptr i64 %199 to i8 addrspace(1)*
  %.ascast.i87 = addrspacecast i8 addrspace(1)* %200 to i8 addrspace(4)*
  %201 = ptrtoint i8 addrspace(4)* %.ascast.i87 to i64
  %202 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87)
  %203 = extractvalue { i32, i32 } %202, 0
  %204 = extractvalue { i32, i32 } %202, 1
  %205 = and i32 %203, -64
  %206 = insertelement <2 x i32> undef, i32 %205, i32 0
  %207 = insertelement <2 x i32> %206, i32 %204, i32 1
  %208 = bitcast <2 x i32> %207 to i64
  %209 = trunc i64 %201 to i32
  %210 = lshr i32 %209, 2
  %211 = and i32 %210, 15
  %212 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %208, i32 %21, i32 7, i32 %21, i32 %211, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %213 = add i64 %198, %44
  %214 = inttoptr i64 %213 to i8 addrspace(1)*
  %.ascast.i88 = addrspacecast i8 addrspace(1)* %214 to i8 addrspace(4)*
  %215 = ptrtoint i8 addrspace(4)* %.ascast.i88 to i64
  %216 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88)
  %217 = extractvalue { i32, i32 } %216, 0
  %218 = extractvalue { i32, i32 } %216, 1
  %219 = and i32 %217, -64
  %220 = insertelement <2 x i32> undef, i32 %219, i32 0
  %221 = insertelement <2 x i32> %220, i32 %218, i32 1
  %222 = bitcast <2 x i32> %221 to i64
  %223 = trunc i64 %215 to i32
  %224 = lshr i32 %223, 2
  %225 = and i32 %224, 15
  %226 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %222, i32 %21, i32 7, i32 %21, i32 %225, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %227 = add i64 %199, 64
  %228 = inttoptr i64 %227 to i8 addrspace(1)*
  %.ascast.i87.1 = addrspacecast i8 addrspace(1)* %228 to i8 addrspace(4)*
  %229 = ptrtoint i8 addrspace(4)* %.ascast.i87.1 to i64
  %230 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.1)
  %231 = extractvalue { i32, i32 } %230, 0
  %232 = extractvalue { i32, i32 } %230, 1
  %233 = and i32 %231, -64
  %234 = insertelement <2 x i32> undef, i32 %233, i32 0
  %235 = insertelement <2 x i32> %234, i32 %232, i32 1
  %236 = bitcast <2 x i32> %235 to i64
  %237 = trunc i64 %229 to i32
  %238 = lshr i32 %237, 2
  %239 = and i32 %238, 15
  %240 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %236, i32 %21, i32 7, i32 %21, i32 %239, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %241 = add i64 %213, 64
  %242 = inttoptr i64 %241 to i8 addrspace(1)*
  %.ascast.i88.1 = addrspacecast i8 addrspace(1)* %242 to i8 addrspace(4)*
  %243 = ptrtoint i8 addrspace(4)* %.ascast.i88.1 to i64
  %244 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.1)
  %245 = extractvalue { i32, i32 } %244, 0
  %246 = extractvalue { i32, i32 } %244, 1
  %247 = and i32 %245, -64
  %248 = insertelement <2 x i32> undef, i32 %247, i32 0
  %249 = insertelement <2 x i32> %248, i32 %246, i32 1
  %250 = bitcast <2 x i32> %249 to i64
  %251 = trunc i64 %243 to i32
  %252 = lshr i32 %251, 2
  %253 = and i32 %252, 15
  %254 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %250, i32 %21, i32 7, i32 %21, i32 %253, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %255 = add i64 %199, 128
  %256 = inttoptr i64 %255 to i8 addrspace(1)*
  %.ascast.i87.2 = addrspacecast i8 addrspace(1)* %256 to i8 addrspace(4)*
  %257 = ptrtoint i8 addrspace(4)* %.ascast.i87.2 to i64
  %258 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.2)
  %259 = extractvalue { i32, i32 } %258, 0
  %260 = extractvalue { i32, i32 } %258, 1
  %261 = and i32 %259, -64
  %262 = insertelement <2 x i32> undef, i32 %261, i32 0
  %263 = insertelement <2 x i32> %262, i32 %260, i32 1
  %264 = bitcast <2 x i32> %263 to i64
  %265 = trunc i64 %257 to i32
  %266 = lshr i32 %265, 2
  %267 = and i32 %266, 15
  %268 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %264, i32 %21, i32 7, i32 %21, i32 %267, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %269 = add i64 %213, 128
  %270 = inttoptr i64 %269 to i8 addrspace(1)*
  %.ascast.i88.2 = addrspacecast i8 addrspace(1)* %270 to i8 addrspace(4)*
  %271 = ptrtoint i8 addrspace(4)* %.ascast.i88.2 to i64
  %272 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.2)
  %273 = extractvalue { i32, i32 } %272, 0
  %274 = extractvalue { i32, i32 } %272, 1
  %275 = and i32 %273, -64
  %276 = insertelement <2 x i32> undef, i32 %275, i32 0
  %277 = insertelement <2 x i32> %276, i32 %274, i32 1
  %278 = bitcast <2 x i32> %277 to i64
  %279 = trunc i64 %271 to i32
  %280 = lshr i32 %279, 2
  %281 = and i32 %280, 15
  %282 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %278, i32 %21, i32 7, i32 %21, i32 %281, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %283 = add i64 %199, 192
  %284 = inttoptr i64 %283 to i8 addrspace(1)*
  %.ascast.i87.3 = addrspacecast i8 addrspace(1)* %284 to i8 addrspace(4)*
  %285 = ptrtoint i8 addrspace(4)* %.ascast.i87.3 to i64
  %286 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.3)
  %287 = extractvalue { i32, i32 } %286, 0
  %288 = extractvalue { i32, i32 } %286, 1
  %289 = and i32 %287, -64
  %290 = insertelement <2 x i32> undef, i32 %289, i32 0
  %291 = insertelement <2 x i32> %290, i32 %288, i32 1
  %292 = bitcast <2 x i32> %291 to i64
  %293 = trunc i64 %285 to i32
  %294 = lshr i32 %293, 2
  %295 = and i32 %294, 15
  %296 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %292, i32 %21, i32 7, i32 %21, i32 %295, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %297 = add i64 %213, 192
  %298 = inttoptr i64 %297 to i8 addrspace(1)*
  %.ascast.i88.3 = addrspacecast i8 addrspace(1)* %298 to i8 addrspace(4)*
  %299 = ptrtoint i8 addrspace(4)* %.ascast.i88.3 to i64
  %300 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.3)
  %301 = extractvalue { i32, i32 } %300, 0
  %302 = extractvalue { i32, i32 } %300, 1
  %303 = and i32 %301, -64
  %304 = insertelement <2 x i32> undef, i32 %303, i32 0
  %305 = insertelement <2 x i32> %304, i32 %302, i32 1
  %306 = bitcast <2 x i32> %305 to i64
  %307 = trunc i64 %299 to i32
  %308 = lshr i32 %307, 2
  %309 = and i32 %308, 15
  %310 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %306, i32 %21, i32 7, i32 %21, i32 %309, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %311 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %46, <8 x i16> %82, <8 x i32> %212, i32 11, i32 11, i32 8, i32 8, i1 false)
  %312 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %311, <8 x i16> %96, <8 x i32> %226, i32 11, i32 11, i32 8, i32 8, i1 false)
  %313 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %47, <8 x i16> %82, <8 x i32> %240, i32 11, i32 11, i32 8, i32 8, i1 false)
  %314 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %313, <8 x i16> %96, <8 x i32> %254, i32 11, i32 11, i32 8, i32 8, i1 false)
  %315 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %48, <8 x i16> %82, <8 x i32> %268, i32 11, i32 11, i32 8, i32 8, i1 false)
  %316 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %315, <8 x i16> %96, <8 x i32> %282, i32 11, i32 11, i32 8, i32 8, i1 false)
  %317 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %49, <8 x i16> %82, <8 x i32> %296, i32 11, i32 11, i32 8, i32 8, i1 false)
  %318 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %317, <8 x i16> %96, <8 x i32> %310, i32 11, i32 11, i32 8, i32 8, i1 false)
  %319 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %50, <8 x i16> %110, <8 x i32> %212, i32 11, i32 11, i32 8, i32 8, i1 false)
  %320 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %319, <8 x i16> %124, <8 x i32> %226, i32 11, i32 11, i32 8, i32 8, i1 false)
  %321 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %51, <8 x i16> %110, <8 x i32> %240, i32 11, i32 11, i32 8, i32 8, i1 false)
  %322 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %321, <8 x i16> %124, <8 x i32> %254, i32 11, i32 11, i32 8, i32 8, i1 false)
  %323 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %52, <8 x i16> %110, <8 x i32> %268, i32 11, i32 11, i32 8, i32 8, i1 false)
  %324 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %323, <8 x i16> %124, <8 x i32> %282, i32 11, i32 11, i32 8, i32 8, i1 false)
  %325 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %53, <8 x i16> %110, <8 x i32> %296, i32 11, i32 11, i32 8, i32 8, i1 false)
  %326 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %325, <8 x i16> %124, <8 x i32> %310, i32 11, i32 11, i32 8, i32 8, i1 false)
  %327 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %54, <8 x i16> %138, <8 x i32> %212, i32 11, i32 11, i32 8, i32 8, i1 false)
  %328 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %327, <8 x i16> %152, <8 x i32> %226, i32 11, i32 11, i32 8, i32 8, i1 false)
  %329 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %55, <8 x i16> %138, <8 x i32> %240, i32 11, i32 11, i32 8, i32 8, i1 false)
  %330 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %329, <8 x i16> %152, <8 x i32> %254, i32 11, i32 11, i32 8, i32 8, i1 false)
  %331 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %56, <8 x i16> %138, <8 x i32> %268, i32 11, i32 11, i32 8, i32 8, i1 false)
  %332 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %331, <8 x i16> %152, <8 x i32> %282, i32 11, i32 11, i32 8, i32 8, i1 false)
  %333 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %57, <8 x i16> %138, <8 x i32> %296, i32 11, i32 11, i32 8, i32 8, i1 false)
  %334 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %333, <8 x i16> %152, <8 x i32> %310, i32 11, i32 11, i32 8, i32 8, i1 false)
  %335 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %58, <8 x i16> %166, <8 x i32> %212, i32 11, i32 11, i32 8, i32 8, i1 false)
  %336 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %335, <8 x i16> %180, <8 x i32> %226, i32 11, i32 11, i32 8, i32 8, i1 false)
  %337 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %59, <8 x i16> %166, <8 x i32> %240, i32 11, i32 11, i32 8, i32 8, i1 false)
  %338 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %337, <8 x i16> %180, <8 x i32> %254, i32 11, i32 11, i32 8, i32 8, i1 false)
  %339 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %60, <8 x i16> %166, <8 x i32> %268, i32 11, i32 11, i32 8, i32 8, i1 false)
  %340 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %339, <8 x i16> %180, <8 x i32> %282, i32 11, i32 11, i32 8, i32 8, i1 false)
  %341 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %61, <8 x i16> %166, <8 x i32> %296, i32 11, i32 11, i32 8, i32 8, i1 false)
  %342 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %341, <8 x i16> %180, <8 x i32> %310, i32 11, i32 11, i32 8, i32 8, i1 false)
  br i1 %64, label %.preheader.preheader._crit_edge, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit, !stats.blockFrequency.digits !440, !stats.blockFrequency.scale !441

.preheader.preheader._crit_edge:                  ; preds = %.preheader.preheader
  br label %45, !stats.blockFrequency.digits !443, !stats.blockFrequency.scale !441

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit: ; preds = %.preheader.preheader
  %.lcssa214 = phi <8 x float> [ %312, %.preheader.preheader ]
  %.lcssa213 = phi <8 x float> [ %314, %.preheader.preheader ]
  %.lcssa212 = phi <8 x float> [ %316, %.preheader.preheader ]
  %.lcssa211 = phi <8 x float> [ %318, %.preheader.preheader ]
  %.lcssa210 = phi <8 x float> [ %320, %.preheader.preheader ]
  %.lcssa209 = phi <8 x float> [ %322, %.preheader.preheader ]
  %.lcssa208 = phi <8 x float> [ %324, %.preheader.preheader ]
  %.lcssa207 = phi <8 x float> [ %326, %.preheader.preheader ]
  %.lcssa206 = phi <8 x float> [ %328, %.preheader.preheader ]
  %.lcssa205 = phi <8 x float> [ %330, %.preheader.preheader ]
  %.lcssa204 = phi <8 x float> [ %332, %.preheader.preheader ]
  %.lcssa203 = phi <8 x float> [ %334, %.preheader.preheader ]
  %.lcssa202 = phi <8 x float> [ %336, %.preheader.preheader ]
  %.lcssa201 = phi <8 x float> [ %338, %.preheader.preheader ]
  %.lcssa200 = phi <8 x float> [ %340, %.preheader.preheader ]
  %.lcssa = phi <8 x float> [ %342, %.preheader.preheader ]
  %343 = bitcast <8 x float> %.lcssa214 to <8 x i32>
  %344 = bitcast <8 x float> %.lcssa213 to <8 x i32>
  %345 = bitcast <8 x float> %.lcssa212 to <8 x i32>
  %346 = bitcast <8 x float> %.lcssa211 to <8 x i32>
  %347 = bitcast <8 x float> %.lcssa210 to <8 x i32>
  %348 = bitcast <8 x float> %.lcssa209 to <8 x i32>
  %349 = bitcast <8 x float> %.lcssa208 to <8 x i32>
  %350 = bitcast <8 x float> %.lcssa207 to <8 x i32>
  %351 = bitcast <8 x float> %.lcssa206 to <8 x i32>
  %352 = bitcast <8 x float> %.lcssa205 to <8 x i32>
  %353 = bitcast <8 x float> %.lcssa204 to <8 x i32>
  %354 = bitcast <8 x float> %.lcssa203 to <8 x i32>
  %355 = bitcast <8 x float> %.lcssa202 to <8 x i32>
  %356 = bitcast <8 x float> %.lcssa201 to <8 x i32>
  %357 = bitcast <8 x float> %.lcssa200 to <8 x i32>
  %358 = bitcast <8 x float> %.lcssa to <8 x i32>
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit, !stats.blockFrequency.digits !436, !stats.blockFrequency.scale !437

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit: ; preds = %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge
  %.sroa.089.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %343, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.694.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %344, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.10.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %345, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.14.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %346, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.18.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %347, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.22.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %348, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.26.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %349, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.30.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %350, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.34.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %351, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.38.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %352, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.42.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %353, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.46.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %354, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.50.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %355, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.54.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %356, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.58.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %357, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %.sroa.62.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit_crit_edge ], [ %358, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit.loopexit ]
  %359 = ptrtoint i8 addrspace(1)* %2 to i64
  %360 = zext i32 %19 to i64
  %361 = shl nuw nsw i64 %360, 2
  %362 = add i64 %361, %359
  %363 = mul nsw i32 %12, %4, !spirv.Decorations !430
  %364 = sext i32 %363 to i64
  %365 = shl nsw i64 %364, 2
  %366 = add i64 %362, %365
  %367 = inttoptr i64 %366 to i8 addrspace(1)*
  %.ascast.i89 = addrspacecast i8 addrspace(1)* %367 to i8 addrspace(4)*
  %368 = ptrtoint i8 addrspace(4)* %.ascast.i89 to i64
  %369 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89)
  %370 = extractvalue { i32, i32 } %369, 0
  %371 = extractvalue { i32, i32 } %369, 1
  %372 = and i32 %370, -64
  %373 = insertelement <2 x i32> undef, i32 %372, i32 0
  %374 = insertelement <2 x i32> %373, i32 %371, i32 1
  %375 = bitcast <2 x i32> %374 to i64
  %376 = trunc i64 %368 to i32
  %377 = lshr i32 %376, 2
  %378 = and i32 %377, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %375, i32 %21, i32 7, i32 %21, i32 %378, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.089.0)
  %379 = add i64 %366, 64
  %380 = inttoptr i64 %379 to i8 addrspace(1)*
  %.ascast.i89.1 = addrspacecast i8 addrspace(1)* %380 to i8 addrspace(4)*
  %381 = ptrtoint i8 addrspace(4)* %.ascast.i89.1 to i64
  %382 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.1)
  %383 = extractvalue { i32, i32 } %382, 0
  %384 = extractvalue { i32, i32 } %382, 1
  %385 = and i32 %383, -64
  %386 = insertelement <2 x i32> undef, i32 %385, i32 0
  %387 = insertelement <2 x i32> %386, i32 %384, i32 1
  %388 = bitcast <2 x i32> %387 to i64
  %389 = trunc i64 %381 to i32
  %390 = lshr i32 %389, 2
  %391 = and i32 %390, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %388, i32 %21, i32 7, i32 %21, i32 %391, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.694.0)
  %392 = add i64 %366, 128
  %393 = inttoptr i64 %392 to i8 addrspace(1)*
  %.ascast.i89.2 = addrspacecast i8 addrspace(1)* %393 to i8 addrspace(4)*
  %394 = ptrtoint i8 addrspace(4)* %.ascast.i89.2 to i64
  %395 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.2)
  %396 = extractvalue { i32, i32 } %395, 0
  %397 = extractvalue { i32, i32 } %395, 1
  %398 = and i32 %396, -64
  %399 = insertelement <2 x i32> undef, i32 %398, i32 0
  %400 = insertelement <2 x i32> %399, i32 %397, i32 1
  %401 = bitcast <2 x i32> %400 to i64
  %402 = trunc i64 %394 to i32
  %403 = lshr i32 %402, 2
  %404 = and i32 %403, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %401, i32 %21, i32 7, i32 %21, i32 %404, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.10.0)
  %405 = add i64 %366, 192
  %406 = inttoptr i64 %405 to i8 addrspace(1)*
  %.ascast.i89.3 = addrspacecast i8 addrspace(1)* %406 to i8 addrspace(4)*
  %407 = ptrtoint i8 addrspace(4)* %.ascast.i89.3 to i64
  %408 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.3)
  %409 = extractvalue { i32, i32 } %408, 0
  %410 = extractvalue { i32, i32 } %408, 1
  %411 = and i32 %409, -64
  %412 = insertelement <2 x i32> undef, i32 %411, i32 0
  %413 = insertelement <2 x i32> %412, i32 %410, i32 1
  %414 = bitcast <2 x i32> %413 to i64
  %415 = trunc i64 %407 to i32
  %416 = lshr i32 %415, 2
  %417 = and i32 %416, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %414, i32 %21, i32 7, i32 %21, i32 %417, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.14.0)
  %418 = mul nsw i32 %13, %4, !spirv.Decorations !430
  %419 = sext i32 %418 to i64
  %420 = shl nsw i64 %419, 2
  %421 = add i64 %362, %420
  %422 = inttoptr i64 %421 to i8 addrspace(1)*
  %.ascast.i89.135 = addrspacecast i8 addrspace(1)* %422 to i8 addrspace(4)*
  %423 = ptrtoint i8 addrspace(4)* %.ascast.i89.135 to i64
  %424 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.135)
  %425 = extractvalue { i32, i32 } %424, 0
  %426 = extractvalue { i32, i32 } %424, 1
  %427 = and i32 %425, -64
  %428 = insertelement <2 x i32> undef, i32 %427, i32 0
  %429 = insertelement <2 x i32> %428, i32 %426, i32 1
  %430 = bitcast <2 x i32> %429 to i64
  %431 = trunc i64 %423 to i32
  %432 = lshr i32 %431, 2
  %433 = and i32 %432, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %430, i32 %21, i32 7, i32 %21, i32 %433, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.18.0)
  %434 = add i64 %421, 64
  %435 = inttoptr i64 %434 to i8 addrspace(1)*
  %.ascast.i89.1.1 = addrspacecast i8 addrspace(1)* %435 to i8 addrspace(4)*
  %436 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.1 to i64
  %437 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.1.1)
  %438 = extractvalue { i32, i32 } %437, 0
  %439 = extractvalue { i32, i32 } %437, 1
  %440 = and i32 %438, -64
  %441 = insertelement <2 x i32> undef, i32 %440, i32 0
  %442 = insertelement <2 x i32> %441, i32 %439, i32 1
  %443 = bitcast <2 x i32> %442 to i64
  %444 = trunc i64 %436 to i32
  %445 = lshr i32 %444, 2
  %446 = and i32 %445, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %443, i32 %21, i32 7, i32 %21, i32 %446, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.22.0)
  %447 = add i64 %421, 128
  %448 = inttoptr i64 %447 to i8 addrspace(1)*
  %.ascast.i89.2.1 = addrspacecast i8 addrspace(1)* %448 to i8 addrspace(4)*
  %449 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.1 to i64
  %450 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.2.1)
  %451 = extractvalue { i32, i32 } %450, 0
  %452 = extractvalue { i32, i32 } %450, 1
  %453 = and i32 %451, -64
  %454 = insertelement <2 x i32> undef, i32 %453, i32 0
  %455 = insertelement <2 x i32> %454, i32 %452, i32 1
  %456 = bitcast <2 x i32> %455 to i64
  %457 = trunc i64 %449 to i32
  %458 = lshr i32 %457, 2
  %459 = and i32 %458, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %456, i32 %21, i32 7, i32 %21, i32 %459, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.26.0)
  %460 = add i64 %421, 192
  %461 = inttoptr i64 %460 to i8 addrspace(1)*
  %.ascast.i89.3.1 = addrspacecast i8 addrspace(1)* %461 to i8 addrspace(4)*
  %462 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.1 to i64
  %463 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.3.1)
  %464 = extractvalue { i32, i32 } %463, 0
  %465 = extractvalue { i32, i32 } %463, 1
  %466 = and i32 %464, -64
  %467 = insertelement <2 x i32> undef, i32 %466, i32 0
  %468 = insertelement <2 x i32> %467, i32 %465, i32 1
  %469 = bitcast <2 x i32> %468 to i64
  %470 = trunc i64 %462 to i32
  %471 = lshr i32 %470, 2
  %472 = and i32 %471, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %469, i32 %21, i32 7, i32 %21, i32 %472, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.30.0)
  %473 = mul nsw i32 %14, %4, !spirv.Decorations !430
  %474 = sext i32 %473 to i64
  %475 = shl nsw i64 %474, 2
  %476 = add i64 %362, %475
  %477 = inttoptr i64 %476 to i8 addrspace(1)*
  %.ascast.i89.236 = addrspacecast i8 addrspace(1)* %477 to i8 addrspace(4)*
  %478 = ptrtoint i8 addrspace(4)* %.ascast.i89.236 to i64
  %479 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.236)
  %480 = extractvalue { i32, i32 } %479, 0
  %481 = extractvalue { i32, i32 } %479, 1
  %482 = and i32 %480, -64
  %483 = insertelement <2 x i32> undef, i32 %482, i32 0
  %484 = insertelement <2 x i32> %483, i32 %481, i32 1
  %485 = bitcast <2 x i32> %484 to i64
  %486 = trunc i64 %478 to i32
  %487 = lshr i32 %486, 2
  %488 = and i32 %487, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %485, i32 %21, i32 7, i32 %21, i32 %488, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.34.0)
  %489 = add i64 %476, 64
  %490 = inttoptr i64 %489 to i8 addrspace(1)*
  %.ascast.i89.1.2 = addrspacecast i8 addrspace(1)* %490 to i8 addrspace(4)*
  %491 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.2 to i64
  %492 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.1.2)
  %493 = extractvalue { i32, i32 } %492, 0
  %494 = extractvalue { i32, i32 } %492, 1
  %495 = and i32 %493, -64
  %496 = insertelement <2 x i32> undef, i32 %495, i32 0
  %497 = insertelement <2 x i32> %496, i32 %494, i32 1
  %498 = bitcast <2 x i32> %497 to i64
  %499 = trunc i64 %491 to i32
  %500 = lshr i32 %499, 2
  %501 = and i32 %500, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %498, i32 %21, i32 7, i32 %21, i32 %501, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.38.0)
  %502 = add i64 %476, 128
  %503 = inttoptr i64 %502 to i8 addrspace(1)*
  %.ascast.i89.2.2 = addrspacecast i8 addrspace(1)* %503 to i8 addrspace(4)*
  %504 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.2 to i64
  %505 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.2.2)
  %506 = extractvalue { i32, i32 } %505, 0
  %507 = extractvalue { i32, i32 } %505, 1
  %508 = and i32 %506, -64
  %509 = insertelement <2 x i32> undef, i32 %508, i32 0
  %510 = insertelement <2 x i32> %509, i32 %507, i32 1
  %511 = bitcast <2 x i32> %510 to i64
  %512 = trunc i64 %504 to i32
  %513 = lshr i32 %512, 2
  %514 = and i32 %513, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %511, i32 %21, i32 7, i32 %21, i32 %514, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.42.0)
  %515 = add i64 %476, 192
  %516 = inttoptr i64 %515 to i8 addrspace(1)*
  %.ascast.i89.3.2 = addrspacecast i8 addrspace(1)* %516 to i8 addrspace(4)*
  %517 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.2 to i64
  %518 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.3.2)
  %519 = extractvalue { i32, i32 } %518, 0
  %520 = extractvalue { i32, i32 } %518, 1
  %521 = and i32 %519, -64
  %522 = insertelement <2 x i32> undef, i32 %521, i32 0
  %523 = insertelement <2 x i32> %522, i32 %520, i32 1
  %524 = bitcast <2 x i32> %523 to i64
  %525 = trunc i64 %517 to i32
  %526 = lshr i32 %525, 2
  %527 = and i32 %526, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %524, i32 %21, i32 7, i32 %21, i32 %527, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.46.0)
  %528 = mul nsw i32 %15, %4, !spirv.Decorations !430
  %529 = sext i32 %528 to i64
  %530 = shl nsw i64 %529, 2
  %531 = add i64 %362, %530
  %532 = inttoptr i64 %531 to i8 addrspace(1)*
  %.ascast.i89.337 = addrspacecast i8 addrspace(1)* %532 to i8 addrspace(4)*
  %533 = ptrtoint i8 addrspace(4)* %.ascast.i89.337 to i64
  %534 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.337)
  %535 = extractvalue { i32, i32 } %534, 0
  %536 = extractvalue { i32, i32 } %534, 1
  %537 = and i32 %535, -64
  %538 = insertelement <2 x i32> undef, i32 %537, i32 0
  %539 = insertelement <2 x i32> %538, i32 %536, i32 1
  %540 = bitcast <2 x i32> %539 to i64
  %541 = trunc i64 %533 to i32
  %542 = lshr i32 %541, 2
  %543 = and i32 %542, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %540, i32 %21, i32 7, i32 %21, i32 %543, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.50.0)
  %544 = add i64 %531, 64
  %545 = inttoptr i64 %544 to i8 addrspace(1)*
  %.ascast.i89.1.3 = addrspacecast i8 addrspace(1)* %545 to i8 addrspace(4)*
  %546 = ptrtoint i8 addrspace(4)* %.ascast.i89.1.3 to i64
  %547 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.1.3)
  %548 = extractvalue { i32, i32 } %547, 0
  %549 = extractvalue { i32, i32 } %547, 1
  %550 = and i32 %548, -64
  %551 = insertelement <2 x i32> undef, i32 %550, i32 0
  %552 = insertelement <2 x i32> %551, i32 %549, i32 1
  %553 = bitcast <2 x i32> %552 to i64
  %554 = trunc i64 %546 to i32
  %555 = lshr i32 %554, 2
  %556 = and i32 %555, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %553, i32 %21, i32 7, i32 %21, i32 %556, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.54.0)
  %557 = add i64 %531, 128
  %558 = inttoptr i64 %557 to i8 addrspace(1)*
  %.ascast.i89.2.3 = addrspacecast i8 addrspace(1)* %558 to i8 addrspace(4)*
  %559 = ptrtoint i8 addrspace(4)* %.ascast.i89.2.3 to i64
  %560 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.2.3)
  %561 = extractvalue { i32, i32 } %560, 0
  %562 = extractvalue { i32, i32 } %560, 1
  %563 = and i32 %561, -64
  %564 = insertelement <2 x i32> undef, i32 %563, i32 0
  %565 = insertelement <2 x i32> %564, i32 %562, i32 1
  %566 = bitcast <2 x i32> %565 to i64
  %567 = trunc i64 %559 to i32
  %568 = lshr i32 %567, 2
  %569 = and i32 %568, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %566, i32 %21, i32 7, i32 %21, i32 %569, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.58.0)
  %570 = add i64 %531, 192
  %571 = inttoptr i64 %570 to i8 addrspace(1)*
  %.ascast.i89.3.3 = addrspacecast i8 addrspace(1)* %571 to i8 addrspace(4)*
  %572 = ptrtoint i8 addrspace(4)* %.ascast.i89.3.3 to i64
  %573 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i89.3.3)
  %574 = extractvalue { i32, i32 } %573, 0
  %575 = extractvalue { i32, i32 } %573, 1
  %576 = and i32 %574, -64
  %577 = insertelement <2 x i32> undef, i32 %576, i32 0
  %578 = insertelement <2 x i32> %577, i32 %575, i32 1
  %579 = bitcast <2 x i32> %578 to i64
  %580 = trunc i64 %572 to i32
  %581 = lshr i32 %580, 2
  %582 = and i32 %581, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %579, i32 %21, i32 7, i32 %21, i32 %582, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %.sroa.62.0)
  ret void, !stats.blockFrequency.digits !432, !stats.blockFrequency.scale !433
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
!igc.functions = !{!3, !25, !26}
!IGCMetadata = !{!29}
!opencl.ocl.version = !{!427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427}
!opencl.spir.version = !{!427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427, !427}
!llvm.ident = !{!428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428}
!llvm.module.flags = !{!429}

!0 = !{i32 2, i32 2}
!1 = !{i32 4, i32 100000}
!2 = !{i16 6, i16 14}
!3 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ16bench_v1_with_pfRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_, !4}
!4 = !{!5, !6, !23, !24}
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
!24 = !{!"max_reg_pressure", i32 226}
!25 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ19bench_v2_clean_nopfRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_, !4}
!26 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ16bench_v3_if_onlyRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_, !27}
!27 = !{!5, !6, !23, !28}
!28 = !{!"max_reg_pressure", i32 227}
!29 = !{!"ModuleMD", !30, !31, !133, !256, !287, !304, !324, !334, !336, !337, !352, !353, !354, !355, !359, !360, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !379, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !200, !397, !404, !405, !407, !409, !412, !413, !414, !416, !417, !418, !423, !424, !425, !426}
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
!133 = !{!"FuncMD", !134, !135, !251, !252, !253, !254}
!134 = !{!"FuncMDMap[0]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ16bench_v1_with_pfRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_}
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
!251 = !{!"FuncMDMap[1]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ19bench_v2_clean_nopfRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_}
!252 = !{!"FuncMDValue[1]", !136, !137, !141, !142, !143, !165, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !216, !222, !228, !234, !240, !246, !247}
!253 = !{!"FuncMDMap[2]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ16bench_v3_if_onlyRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_}
!254 = !{!"FuncMDValue[2]", !136, !137, !141, !142, !143, !165, !192, !193, !194, !195, !196, !197, !198, !199, !255, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !216, !222, !228, !234, !240, !246, !247}
!255 = !{!"privateMemoryPerWI", i32 4}
!256 = !{!"pushInfo", !257, !258, !259, !263, !264, !265, !266, !267, !268, !269, !270, !283, !284, !285, !286}
!257 = !{!"pushableAddresses"}
!258 = !{!"bindlessPushInfo"}
!259 = !{!"dynamicBufferInfo", !260, !261, !262}
!260 = !{!"firstIndex", i32 0}
!261 = !{!"numOffsets", i32 0}
!262 = !{!"forceDisabled", i1 false}
!263 = !{!"MaxNumberOfPushedBuffers", i32 0}
!264 = !{!"inlineConstantBufferSlot", i32 -1}
!265 = !{!"inlineConstantBufferOffset", i32 -1}
!266 = !{!"inlineConstantBufferGRFOffset", i32 -1}
!267 = !{!"constants"}
!268 = !{!"inputs"}
!269 = !{!"constantReg"}
!270 = !{!"simplePushInfoArr", !271, !280, !281, !282}
!271 = !{!"simplePushInfoArrVec[0]", !272, !273, !274, !275, !276, !277, !278, !279}
!272 = !{!"cbIdx", i32 0}
!273 = !{!"pushableAddressGrfOffset", i32 -1}
!274 = !{!"pushableOffsetGrfOffset", i32 -1}
!275 = !{!"offset", i32 0}
!276 = !{!"size", i32 0}
!277 = !{!"isStateless", i1 false}
!278 = !{!"isBindless", i1 false}
!279 = !{!"simplePushLoads"}
!280 = !{!"simplePushInfoArrVec[1]", !272, !273, !274, !275, !276, !277, !278, !279}
!281 = !{!"simplePushInfoArrVec[2]", !272, !273, !274, !275, !276, !277, !278, !279}
!282 = !{!"simplePushInfoArrVec[3]", !272, !273, !274, !275, !276, !277, !278, !279}
!283 = !{!"simplePushBufferUsed", i32 0}
!284 = !{!"pushAnalysisWIInfos"}
!285 = !{!"inlineRTGlobalPtrOffset", i32 0}
!286 = !{!"rtSyncSurfPtrOffset", i32 0}
!287 = !{!"psInfo", !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303}
!288 = !{!"BlendStateDisabledMask", i8 0}
!289 = !{!"SkipSrc0Alpha", i1 false}
!290 = !{!"DualSourceBlendingDisabled", i1 false}
!291 = !{!"ForceEnableSimd32", i1 false}
!292 = !{!"DisableSimd32WithDiscard", i1 false}
!293 = !{!"outputDepth", i1 false}
!294 = !{!"outputStencil", i1 false}
!295 = !{!"outputMask", i1 false}
!296 = !{!"blendToFillEnabled", i1 false}
!297 = !{!"forceEarlyZ", i1 false}
!298 = !{!"hasVersionedLoop", i1 false}
!299 = !{!"forceSingleSourceRTWAfterDualSourceRTW", i1 false}
!300 = !{!"NumSamples", i8 0}
!301 = !{!"blendOptimizationMode"}
!302 = !{!"colorOutputMask"}
!303 = !{!"WaDisableVRS", i1 false}
!304 = !{!"csInfo", !305, !306, !307, !308, !71, !47, !48, !49, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !81, !320, !321, !322, !323}
!305 = !{!"maxWorkGroupSize", i32 0}
!306 = !{!"waveSize", i32 0}
!307 = !{!"ComputeShaderSecondCompile"}
!308 = !{!"forcedSIMDSize", i8 0}
!309 = !{!"forceSpillCompression", i1 false}
!310 = !{!"allowLowerSimd", i1 false}
!311 = !{!"disableSimd32Slicing", i1 false}
!312 = !{!"disableSplitOnSpill", i1 false}
!313 = !{!"enableNewSpillCostFunction", i1 false}
!314 = !{!"forceVISAPreSched", i1 false}
!315 = !{!"disableLocalIdOrderOptimizations", i1 false}
!316 = !{!"disableDispatchAlongY", i1 false}
!317 = !{!"neededThreadIdLayout", i1* null}
!318 = !{!"forceTileYWalk", i1 false}
!319 = !{!"atomicBranch", i32 0}
!320 = !{!"disableEarlyOut", i1 false}
!321 = !{!"walkOrderEnabled", i1 false}
!322 = !{!"walkOrderOverride", i32 0}
!323 = !{!"ResForHfPacking"}
!324 = !{!"msInfo", !325, !326, !327, !328, !329, !330, !331, !332, !333}
!325 = !{!"PrimitiveTopology", i32 3}
!326 = !{!"MaxNumOfPrimitives", i32 0}
!327 = !{!"MaxNumOfVertices", i32 0}
!328 = !{!"MaxNumOfPerPrimitiveOutputs", i32 0}
!329 = !{!"MaxNumOfPerVertexOutputs", i32 0}
!330 = !{!"WorkGroupSize", i32 0}
!331 = !{!"WorkGroupMemorySizeInBytes", i32 0}
!332 = !{!"IndexFormat", i32 6}
!333 = !{!"SubgroupSize", i32 0}
!334 = !{!"taskInfo", !335, !330, !331, !333}
!335 = !{!"MaxNumOfOutputs", i32 0}
!336 = !{!"NBarrierCnt", i32 0}
!337 = !{!"rtInfo", !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !162}
!338 = !{!"RayQueryAllocSizeInBytes", i32 0}
!339 = !{!"NumContinuations", i32 0}
!340 = !{!"RTAsyncStackAddrspace", i32 -1}
!341 = !{!"RTAsyncStackSurfaceStateOffset", i1* null}
!342 = !{!"SWHotZoneAddrspace", i32 -1}
!343 = !{!"SWHotZoneSurfaceStateOffset", i1* null}
!344 = !{!"SWStackAddrspace", i32 -1}
!345 = !{!"SWStackSurfaceStateOffset", i1* null}
!346 = !{!"RTSyncStackAddrspace", i32 -1}
!347 = !{!"RTSyncStackSurfaceStateOffset", i1* null}
!348 = !{!"doSyncDispatchRays", i1 false}
!349 = !{!"MemStyle", !"Xe"}
!350 = !{!"GlobalDataStyle", !"Xe"}
!351 = !{!"uberTileDimensions", i1* null}
!352 = !{!"CurUniqueIndirectIdx", i32 0}
!353 = !{!"inlineDynTextures"}
!354 = !{!"inlineResInfoData"}
!355 = !{!"immConstant", !356, !357, !358}
!356 = !{!"data"}
!357 = !{!"sizes"}
!358 = !{!"zeroIdxs"}
!359 = !{!"stringConstants"}
!360 = !{!"inlineBuffers", !361, !365, !366}
!361 = !{!"inlineBuffersVec[0]", !362, !363, !364}
!362 = !{!"alignment", i32 0}
!363 = !{!"allocSize", i64 0}
!364 = !{!"Buffer"}
!365 = !{!"inlineBuffersVec[1]", !362, !363, !364}
!366 = !{!"inlineBuffersVec[2]", !362, !363, !364}
!367 = !{!"GlobalPointerProgramBinaryInfos"}
!368 = !{!"ConstantPointerProgramBinaryInfos"}
!369 = !{!"GlobalBufferAddressRelocInfo"}
!370 = !{!"ConstantBufferAddressRelocInfo"}
!371 = !{!"forceLscCacheList"}
!372 = !{!"SrvMap"}
!373 = !{!"RasterizerOrderedByteAddressBuffer"}
!374 = !{!"RasterizerOrderedViews"}
!375 = !{!"MinNOSPushConstantSize", i32 0}
!376 = !{!"inlineProgramScopeOffsets"}
!377 = !{!"shaderData", !378}
!378 = !{!"numReplicas", i32 0}
!379 = !{!"URBInfo", !380, !381, !382}
!380 = !{!"has64BVertexHeaderInput", i1 false}
!381 = !{!"has64BVertexHeaderOutput", i1 false}
!382 = !{!"hasVertexHeader", i1 true}
!383 = !{!"UseBindlessImage", i1 true}
!384 = !{!"UseBindlessImageWithSamplerTracking", i1 false}
!385 = !{!"enableRangeReduce", i1 false}
!386 = !{!"allowMatchMadOptimizationforVS", i1 false}
!387 = !{!"disableMatchMadOptimizationForCS", i1 false}
!388 = !{!"disableMemOptforNegativeOffsetLoads", i1 false}
!389 = !{!"enableThreeWayLoadSpiltOpt", i1 false}
!390 = !{!"statefulResourcesNotAliased", i1 false}
!391 = !{!"disableMixMode", i1 false}
!392 = !{!"genericAccessesResolved", i1 false}
!393 = !{!"disableSeparateSpillPvtScratchSpace", i1 false}
!394 = !{!"enableSeparateSpillPvtScratchSpace", i1 false}
!395 = !{!"disableSeparateScratchWA", i1 false}
!396 = !{!"enableRemoveUnusedTGMFence", i1 false}
!397 = !{!"PrivateMemoryPerFG", !398, !399, !400, !401, !402, !403}
!398 = !{!"PrivateMemoryPerFGMap[0]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ16bench_v1_with_pfRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_}
!399 = !{!"PrivateMemoryPerFGValue[0]", i32 0}
!400 = !{!"PrivateMemoryPerFGMap[1]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ19bench_v2_clean_nopfRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_}
!401 = !{!"PrivateMemoryPerFGValue[1]", i32 0}
!402 = !{!"PrivateMemoryPerFGMap[2]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ16bench_v3_if_onlyRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_}
!403 = !{!"PrivateMemoryPerFGValue[2]", i32 4}
!404 = !{!"m_OptsToDisable"}
!405 = !{!"capabilities", !406}
!406 = !{!"globalVariableDecorationsINTEL", i1 false}
!407 = !{!"extensions", !408}
!408 = !{!"spvINTELBindlessImages", i1 false}
!409 = !{!"m_ShaderResourceViewMcsMask", !410, !411}
!410 = !{!"m_ShaderResourceViewMcsMaskVec[0]", i64 0}
!411 = !{!"m_ShaderResourceViewMcsMaskVec[1]", i64 0}
!412 = !{!"computedDepthMode", i32 0}
!413 = !{!"isHDCFastClearShader", i1 false}
!414 = !{!"argRegisterReservations", !415}
!415 = !{!"argRegisterReservationsVec[0]", i32 0}
!416 = !{!"SIMD16_SpillThreshold", i8 0}
!417 = !{!"SIMD32_SpillThreshold", i8 0}
!418 = !{!"m_CacheControlOption", !419, !420, !421, !422}
!419 = !{!"LscLoadCacheControlOverride", i8 0}
!420 = !{!"LscStoreCacheControlOverride", i8 0}
!421 = !{!"TgmLoadCacheControlOverride", i8 0}
!422 = !{!"TgmStoreCacheControlOverride", i8 0}
!423 = !{!"ModuleUsesBindless", i1 false}
!424 = !{!"predicationMap"}
!425 = !{!"lifeTimeStartMap"}
!426 = !{!"HitGroups"}
!427 = !{i32 2, i32 0}
!428 = !{!"clang version 15.0.7"}
!429 = !{i32 1, !"wchar_size", i32 4}
!430 = !{!431}
!431 = !{i32 4469}
!432 = !{!"5764607523034234880"}
!433 = !{!"-59"}
!434 = !{!"17568327689247192015"}
!435 = !{!"-62"}
!436 = !{!"14274266247513343513"}
!437 = !{!"-61"}
!438 = !{!431, !439}
!439 = !{i32 4470}
!440 = !{!"14617397647693952731"}
!441 = !{!"-56"}
!442 = !{!"-57"}
!443 = !{!"14171326827459160746"}
