; ------------------------------------------------
; OCL_asm452e78bde1128fde_codegen.ll
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
  %9 = shl nsw i32 %6, 6, !spirv.Decorations !417
  %localThreadId5 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %localThreadId5, 4
  %11 = and i32 %10, 4064
  %12 = add nuw nsw i32 %9, %11, !spirv.Decorations !417
  %13 = or i32 %12, 8
  %14 = or i32 %12, 16
  %15 = or i32 %12, 24
  %16 = shl nsw i32 %5, 7, !spirv.Decorations !417
  %17 = shl nuw nsw i32 %localThreadId5, 6
  %18 = and i32 %17, 64
  %19 = or i32 %16, %18
  %20 = shl i32 %4, 2
  %21 = add i32 %20, -1
  %22 = icmp sgt i32 %3, 0
  br i1 %22, label %.lr.ph, label %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge, !stats.blockFrequency.digits !419, !stats.blockFrequency.scale !420

.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge: ; preds = %.preheader1.preheader
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit, !stats.blockFrequency.digits !421, !stats.blockFrequency.scale !422

.lr.ph:                                           ; preds = %.preheader1.preheader
  %23 = mul nsw i32 %12, %3
  %24 = ptrtoint i8 addrspace(1)* %0 to i64
  %25 = sext i32 %23 to i64
  %26 = shl nsw i64 %25, 1
  %27 = add i64 %26, %24
  %28 = shl nsw i32 %4, 1, !spirv.Decorations !417
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
  br label %46, !stats.blockFrequency.digits !423, !stats.blockFrequency.scale !424

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
  %64 = add nuw nsw i32 %63, 32, !spirv.Decorations !425
  %65 = icmp slt i32 %64, %3
  br i1 %65, label %66, label %..preheader.preheader_crit_edge, !stats.blockFrequency.digits !427, !stats.blockFrequency.scale !428

..preheader.preheader_crit_edge:                  ; preds = %46
  br label %.preheader.preheader, !stats.blockFrequency.digits !427, !stats.blockFrequency.scale !429

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
  br label %.preheader.preheader, !stats.blockFrequency.digits !427, !stats.blockFrequency.scale !429

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
  br i1 %65, label %.preheader.preheader._crit_edge, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit, !stats.blockFrequency.digits !427, !stats.blockFrequency.scale !428

.preheader.preheader._crit_edge:                  ; preds = %.preheader.preheader
  br label %46, !stats.blockFrequency.digits !430, !stats.blockFrequency.scale !428

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit: ; preds = %.preheader.preheader
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
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit, !stats.blockFrequency.digits !423, !stats.blockFrequency.scale !424

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit: ; preds = %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge
  %.sroa.088.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %366, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.693.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %367, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.10.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %368, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.14.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %369, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.18.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %370, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.22.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %371, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.26.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %372, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.30.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %373, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.34.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %374, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.38.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %375, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.42.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %376, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.46.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %377, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.50.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %378, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.54.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %379, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.58.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %380, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %.sroa.62.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit_crit_edge ], [ %381, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit.loopexit ]
  %382 = ptrtoint i8 addrspace(1)* %2 to i64
  %383 = zext i32 %19 to i64
  %384 = shl nuw nsw i64 %383, 2
  %385 = add i64 %384, %382
  %386 = mul nsw i32 %12, %4, !spirv.Decorations !417
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
  %441 = mul nsw i32 %13, %4, !spirv.Decorations !417
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
  %496 = mul nsw i32 %14, %4, !spirv.Decorations !417
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
  %551 = mul nsw i32 %15, %4, !spirv.Decorations !417
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
  ret void, !stats.blockFrequency.digits !419, !stats.blockFrequency.scale !420
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
!IGCMetadata = !{!25}
!opencl.ocl.version = !{!414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414}
!opencl.spir.version = !{!414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414}
!llvm.ident = !{!415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415}
!llvm.module.flags = !{!416}

!0 = !{i32 2, i32 2}
!1 = !{i32 4, i32 100000}
!2 = !{i16 6, i16 14}
!3 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ4mainENKUlvE_clEvENKUlRN4sycl3_V17handlerEE_clES3_EUlNS1_7nd_itemILi2EEEE_, !4}
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
!25 = !{!"ModuleMD", !26, !27, !129, !247, !278, !295, !315, !325, !327, !328, !343, !344, !345, !346, !350, !351, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !370, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !196, !388, !391, !392, !394, !396, !399, !400, !401, !403, !404, !405, !410, !411, !412, !413}
!26 = !{!"isPrecise", i1 false}
!27 = !{!"compOpt", !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!28 = !{!"DenormsAreZero", i1 false}
!29 = !{!"BFTFDenormsAreZero", i1 false}
!30 = !{!"CorrectlyRoundedDivSqrt", i1 false}
!31 = !{!"OptDisable", i1 false}
!32 = !{!"MadEnable", i1 true}
!33 = !{!"NoSignedZeros", i1 false}
!34 = !{!"NoNaNs", i1 false}
!35 = !{!"FloatDenormMode16", !"FLOAT_DENORM_RETAIN"}
!36 = !{!"FloatDenormMode32", !"FLOAT_DENORM_RETAIN"}
!37 = !{!"FloatDenormMode64", !"FLOAT_DENORM_RETAIN"}
!38 = !{!"FloatDenormModeBFTF", !"FLOAT_DENORM_RETAIN"}
!39 = !{!"FloatRoundingMode", i32 0}
!40 = !{!"FloatCvtIntRoundingMode", i32 3}
!41 = !{!"LoadCacheDefault", i32 4}
!42 = !{!"StoreCacheDefault", i32 2}
!43 = !{!"VISAPreSchedRPThreshold", i32 0}
!44 = !{!"VISAPreSchedCtrl", i32 0}
!45 = !{!"SetLoopUnrollThreshold", i32 0}
!46 = !{!"UnsafeMathOptimizations", i1 false}
!47 = !{!"disableCustomUnsafeOpts", i1 false}
!48 = !{!"disableReducePow", i1 false}
!49 = !{!"disableSqrtOpt", i1 false}
!50 = !{!"FiniteMathOnly", i1 false}
!51 = !{!"FastRelaxedMath", i1 false}
!52 = !{!"DashGSpecified", i1 false}
!53 = !{!"FastCompilation", i1 false}
!54 = !{!"UseScratchSpacePrivateMemory", i1 true}
!55 = !{!"RelaxedBuiltins", i1 false}
!56 = !{!"SubgroupIndependentForwardProgressRequired", i1 true}
!57 = !{!"GreaterThan2GBBufferRequired", i1 true}
!58 = !{!"GreaterThan4GBBufferRequired", i1 true}
!59 = !{!"DisableA64WA", i1 false}
!60 = !{!"ForceEnableA64WA", i1 false}
!61 = !{!"PushConstantsEnable", i1 true}
!62 = !{!"HasPositivePointerOffset", i1 false}
!63 = !{!"HasBufferOffsetArg", i1 true}
!64 = !{!"BufferOffsetArgOptional", i1 true}
!65 = !{!"replaceGlobalOffsetsByZero", i1 false}
!66 = !{!"forcePixelShaderSIMDMode", i32 0}
!67 = !{!"forceTotalGRFNum", i32 0}
!68 = !{!"pixelShaderDoNotAbortOnSpill", i1 false}
!69 = !{!"UniformWGS", i1 false}
!70 = !{!"disableVertexComponentPacking", i1 false}
!71 = !{!"disablePartialVertexComponentPacking", i1 false}
!72 = !{!"PreferBindlessImages", i1 true}
!73 = !{!"UseBindlessMode", i1 true}
!74 = !{!"UseLegacyBindlessMode", i1 false}
!75 = !{!"disableMathRefactoring", i1 false}
!76 = !{!"atomicBranch", i1 false}
!77 = !{!"spillCompression", i1 false}
!78 = !{!"DisableEarlyOut", i1 false}
!79 = !{!"ForceInt32DivRemEmu", i1 false}
!80 = !{!"ForceInt32DivRemEmuSP", i1 false}
!81 = !{!"DisableFastestSingleCSSIMD", i1 false}
!82 = !{!"DisableFastestLinearScan", i1 false}
!83 = !{!"UseStatelessforPrivateMemory", i1 false}
!84 = !{!"EnableTakeGlobalAddress", i1 false}
!85 = !{!"IsLibraryCompilation", i1 false}
!86 = !{!"LibraryCompileSIMDSize", i32 0}
!87 = !{!"FastVISACompile", i1 false}
!88 = !{!"MatchSinCosPi", i1 false}
!89 = !{!"ExcludeIRFromZEBinary", i1 false}
!90 = !{!"EmitZeBinVISASections", i1 false}
!91 = !{!"FP64GenEmulationEnabled", i1 false}
!92 = !{!"FP64GenConvEmulationEnabled", i1 false}
!93 = !{!"allowDisableRematforCS", i1 false}
!94 = !{!"DisableIncSpillCostAllAddrTaken", i1 false}
!95 = !{!"DisableCPSOmaskWA", i1 false}
!96 = !{!"DisableFastestGopt", i1 false}
!97 = !{!"WaForceHalfPromotionComputeShader", i1 false}
!98 = !{!"WaForceHalfPromotionPixelVertexShader", i1 false}
!99 = !{!"DisableConstantCoalescing", i1 false}
!100 = !{!"EnableUndefAlphaOutputAsRed", i1 true}
!101 = !{!"WaEnableALTModeVisaWA", i1 false}
!102 = !{!"EnableLdStCombineforLoad", i1 false}
!103 = !{!"EnableLdStCombinewithDummyLoad", i1 false}
!104 = !{!"ForceUniformBuffer", i1 false}
!105 = !{!"ForceUniformSurfaceSampler", i1 false}
!106 = !{!"EnableIndependentSharedMemoryFenceFunctionality", i1 false}
!107 = !{!"NewSpillCostFunction", i1 false}
!108 = !{!"EnableVRT", i1 false}
!109 = !{!"ForceLargeGRFNum4RQ", i1 false}
!110 = !{!"DisableEUFusion", i1 false}
!111 = !{!"DisableFDivToFMulInvOpt", i1 false}
!112 = !{!"initializePhiSampleSourceWA", i1 false}
!113 = !{!"WaDisableSubspanUseNoMaskForCB", i1 false}
!114 = !{!"DisableLoosenSimd32Occu", i1 false}
!115 = !{!"FastestS1Options", i32 0}
!116 = !{!"DisableFastestForWaveIntrinsicsCS", i1 false}
!117 = !{!"ForceLinearWalkOnLinearUAV", i1 false}
!118 = !{!"DisableLscSamplerRouting", i1 false}
!119 = !{!"UseBarrierControlFlowOptimization", i1 false}
!120 = !{!"EnableDynamicRQManagement", i1 false}
!121 = !{!"WaDisablePayloadCoalescing", i1 false}
!122 = !{!"Quad8InputThreshold", i32 0}
!123 = !{!"UseResourceLoopUnrollNested", i1 false}
!124 = !{!"DisableLoopUnroll", i1 false}
!125 = !{!"ForcePushConstantMode", i32 0}
!126 = !{!"UseInstructionHoistingOptimization", i1 false}
!127 = !{!"DisableResourceLoopDestLifeTimeStart", i1 false}
!128 = !{!"UseLinearScanRA", i1 false}
!129 = !{!"FuncMD", !130, !131}
!130 = !{!"FuncMDMap[0]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ4mainENKUlvE_clEvENKUlRN4sycl3_V17handlerEE_clES3_EUlNS1_7nd_itemILi2EEEE_}
!131 = !{!"FuncMDValue[0]", !132, !133, !137, !138, !139, !161, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !212, !218, !224, !230, !236, !242, !243}
!132 = !{!"localOffsets"}
!133 = !{!"workGroupWalkOrder", !134, !135, !136}
!134 = !{!"dim0", i32 0}
!135 = !{!"dim1", i32 1}
!136 = !{!"dim2", i32 2}
!137 = !{!"funcArgs"}
!138 = !{!"functionType", !"KernelFunction"}
!139 = !{!"rtInfo", !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !157, !158, !159, !160}
!140 = !{!"callableShaderType", !"NumberOfCallableShaderTypes"}
!141 = !{!"isContinuation", i1 false}
!142 = !{!"hasTraceRayPayload", i1 false}
!143 = !{!"hasHitAttributes", i1 false}
!144 = !{!"hasCallableData", i1 false}
!145 = !{!"ShaderStackSize", i32 0}
!146 = !{!"ShaderHash", i64 0}
!147 = !{!"ShaderName", !""}
!148 = !{!"ParentName", !""}
!149 = !{!"SlotNum", i1* null}
!150 = !{!"NOSSize", i32 0}
!151 = !{!"globalRootSignatureSize", i32 0}
!152 = !{!"Entries"}
!153 = !{!"SpillUnions"}
!154 = !{!"CustomHitAttrSizeInBytes", i32 0}
!155 = !{!"Types", !156}
!156 = !{!"FullFrameTys"}
!157 = !{!"Aliases"}
!158 = !{!"numSyncRTStacks", i32 0}
!159 = !{!"NumCoherenceHintBits", i32 0}
!160 = !{!"OriginatingShaderName", !""}
!161 = !{!"resAllocMD", !162, !163, !164, !165, !187}
!162 = !{!"uavsNumType", i32 0}
!163 = !{!"srvsNumType", i32 0}
!164 = !{!"samplersNumType", i32 0}
!165 = !{!"argAllocMDList", !166, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186}
!166 = !{!"argAllocMDListVec[0]", !167, !168, !169}
!167 = !{!"type", i32 0}
!168 = !{!"extensionType", i32 -1}
!169 = !{!"indexType", i32 -1}
!170 = !{!"argAllocMDListVec[1]", !167, !168, !169}
!171 = !{!"argAllocMDListVec[2]", !167, !168, !169}
!172 = !{!"argAllocMDListVec[3]", !167, !168, !169}
!173 = !{!"argAllocMDListVec[4]", !167, !168, !169}
!174 = !{!"argAllocMDListVec[5]", !167, !168, !169}
!175 = !{!"argAllocMDListVec[6]", !167, !168, !169}
!176 = !{!"argAllocMDListVec[7]", !167, !168, !169}
!177 = !{!"argAllocMDListVec[8]", !167, !168, !169}
!178 = !{!"argAllocMDListVec[9]", !167, !168, !169}
!179 = !{!"argAllocMDListVec[10]", !167, !168, !169}
!180 = !{!"argAllocMDListVec[11]", !167, !168, !169}
!181 = !{!"argAllocMDListVec[12]", !167, !168, !169}
!182 = !{!"argAllocMDListVec[13]", !167, !168, !169}
!183 = !{!"argAllocMDListVec[14]", !167, !168, !169}
!184 = !{!"argAllocMDListVec[15]", !167, !168, !169}
!185 = !{!"argAllocMDListVec[16]", !167, !168, !169}
!186 = !{!"argAllocMDListVec[17]", !167, !168, !169}
!187 = !{!"inlineSamplersMD"}
!188 = !{!"maxByteOffsets"}
!189 = !{!"IsInitializer", i1 false}
!190 = !{!"IsFinalizer", i1 false}
!191 = !{!"CompiledSubGroupsNumber", i32 0}
!192 = !{!"hasInlineVmeSamplers", i1 false}
!193 = !{!"localSize", i32 0}
!194 = !{!"localIDPresent", i1 false}
!195 = !{!"groupIDPresent", i1 false}
!196 = !{!"privateMemoryPerWI", i32 0}
!197 = !{!"prevFPOffset", i32 0}
!198 = !{!"globalIDPresent", i1 false}
!199 = !{!"hasSyncRTCalls", i1 false}
!200 = !{!"hasPrintfCalls", i1 false}
!201 = !{!"hasIndirectCalls", i1 false}
!202 = !{!"hasNonKernelArgLoad", i1 false}
!203 = !{!"hasNonKernelArgStore", i1 false}
!204 = !{!"hasNonKernelArgAtomic", i1 false}
!205 = !{!"UserAnnotations"}
!206 = !{!"m_OpenCLArgAddressSpaces", !207, !208, !209, !210, !211}
!207 = !{!"m_OpenCLArgAddressSpacesVec[0]", i32 1}
!208 = !{!"m_OpenCLArgAddressSpacesVec[1]", i32 1}
!209 = !{!"m_OpenCLArgAddressSpacesVec[2]", i32 1}
!210 = !{!"m_OpenCLArgAddressSpacesVec[3]", i32 0}
!211 = !{!"m_OpenCLArgAddressSpacesVec[4]", i32 0}
!212 = !{!"m_OpenCLArgAccessQualifiers", !213, !214, !215, !216, !217}
!213 = !{!"m_OpenCLArgAccessQualifiersVec[0]", !"none"}
!214 = !{!"m_OpenCLArgAccessQualifiersVec[1]", !"none"}
!215 = !{!"m_OpenCLArgAccessQualifiersVec[2]", !"none"}
!216 = !{!"m_OpenCLArgAccessQualifiersVec[3]", !"none"}
!217 = !{!"m_OpenCLArgAccessQualifiersVec[4]", !"none"}
!218 = !{!"m_OpenCLArgTypes", !219, !220, !221, !222, !223}
!219 = !{!"m_OpenCLArgTypesVec[0]", !"char*"}
!220 = !{!"m_OpenCLArgTypesVec[1]", !"char*"}
!221 = !{!"m_OpenCLArgTypesVec[2]", !"char*"}
!222 = !{!"m_OpenCLArgTypesVec[3]", !"int"}
!223 = !{!"m_OpenCLArgTypesVec[4]", !"int"}
!224 = !{!"m_OpenCLArgBaseTypes", !225, !226, !227, !228, !229}
!225 = !{!"m_OpenCLArgBaseTypesVec[0]", !"char*"}
!226 = !{!"m_OpenCLArgBaseTypesVec[1]", !"char*"}
!227 = !{!"m_OpenCLArgBaseTypesVec[2]", !"char*"}
!228 = !{!"m_OpenCLArgBaseTypesVec[3]", !"int"}
!229 = !{!"m_OpenCLArgBaseTypesVec[4]", !"int"}
!230 = !{!"m_OpenCLArgTypeQualifiers", !231, !232, !233, !234, !235}
!231 = !{!"m_OpenCLArgTypeQualifiersVec[0]", !""}
!232 = !{!"m_OpenCLArgTypeQualifiersVec[1]", !""}
!233 = !{!"m_OpenCLArgTypeQualifiersVec[2]", !""}
!234 = !{!"m_OpenCLArgTypeQualifiersVec[3]", !""}
!235 = !{!"m_OpenCLArgTypeQualifiersVec[4]", !""}
!236 = !{!"m_OpenCLArgNames", !237, !238, !239, !240, !241}
!237 = !{!"m_OpenCLArgNamesVec[0]", !""}
!238 = !{!"m_OpenCLArgNamesVec[1]", !""}
!239 = !{!"m_OpenCLArgNamesVec[2]", !""}
!240 = !{!"m_OpenCLArgNamesVec[3]", !""}
!241 = !{!"m_OpenCLArgNamesVec[4]", !""}
!242 = !{!"m_OpenCLArgScalarAsPointers"}
!243 = !{!"m_OptsToDisablePerFunc", !244, !245, !246}
!244 = !{!"m_OptsToDisablePerFuncSet[0]", !"IGC-AddressArithmeticSinking"}
!245 = !{!"m_OptsToDisablePerFuncSet[1]", !"IGC-AllowSimd32Slicing"}
!246 = !{!"m_OptsToDisablePerFuncSet[2]", !"IGC-SinkLoadOpt"}
!247 = !{!"pushInfo", !248, !249, !250, !254, !255, !256, !257, !258, !259, !260, !261, !274, !275, !276, !277}
!248 = !{!"pushableAddresses"}
!249 = !{!"bindlessPushInfo"}
!250 = !{!"dynamicBufferInfo", !251, !252, !253}
!251 = !{!"firstIndex", i32 0}
!252 = !{!"numOffsets", i32 0}
!253 = !{!"forceDisabled", i1 false}
!254 = !{!"MaxNumberOfPushedBuffers", i32 0}
!255 = !{!"inlineConstantBufferSlot", i32 -1}
!256 = !{!"inlineConstantBufferOffset", i32 -1}
!257 = !{!"inlineConstantBufferGRFOffset", i32 -1}
!258 = !{!"constants"}
!259 = !{!"inputs"}
!260 = !{!"constantReg"}
!261 = !{!"simplePushInfoArr", !262, !271, !272, !273}
!262 = !{!"simplePushInfoArrVec[0]", !263, !264, !265, !266, !267, !268, !269, !270}
!263 = !{!"cbIdx", i32 0}
!264 = !{!"pushableAddressGrfOffset", i32 -1}
!265 = !{!"pushableOffsetGrfOffset", i32 -1}
!266 = !{!"offset", i32 0}
!267 = !{!"size", i32 0}
!268 = !{!"isStateless", i1 false}
!269 = !{!"isBindless", i1 false}
!270 = !{!"simplePushLoads"}
!271 = !{!"simplePushInfoArrVec[1]", !263, !264, !265, !266, !267, !268, !269, !270}
!272 = !{!"simplePushInfoArrVec[2]", !263, !264, !265, !266, !267, !268, !269, !270}
!273 = !{!"simplePushInfoArrVec[3]", !263, !264, !265, !266, !267, !268, !269, !270}
!274 = !{!"simplePushBufferUsed", i32 0}
!275 = !{!"pushAnalysisWIInfos"}
!276 = !{!"inlineRTGlobalPtrOffset", i32 0}
!277 = !{!"rtSyncSurfPtrOffset", i32 0}
!278 = !{!"psInfo", !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!279 = !{!"BlendStateDisabledMask", i8 0}
!280 = !{!"SkipSrc0Alpha", i1 false}
!281 = !{!"DualSourceBlendingDisabled", i1 false}
!282 = !{!"ForceEnableSimd32", i1 false}
!283 = !{!"DisableSimd32WithDiscard", i1 false}
!284 = !{!"outputDepth", i1 false}
!285 = !{!"outputStencil", i1 false}
!286 = !{!"outputMask", i1 false}
!287 = !{!"blendToFillEnabled", i1 false}
!288 = !{!"forceEarlyZ", i1 false}
!289 = !{!"hasVersionedLoop", i1 false}
!290 = !{!"forceSingleSourceRTWAfterDualSourceRTW", i1 false}
!291 = !{!"NumSamples", i8 0}
!292 = !{!"blendOptimizationMode"}
!293 = !{!"colorOutputMask"}
!294 = !{!"WaDisableVRS", i1 false}
!295 = !{!"csInfo", !296, !297, !298, !299, !67, !43, !44, !45, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !77, !311, !312, !313, !314}
!296 = !{!"maxWorkGroupSize", i32 0}
!297 = !{!"waveSize", i32 0}
!298 = !{!"ComputeShaderSecondCompile"}
!299 = !{!"forcedSIMDSize", i8 0}
!300 = !{!"forceSpillCompression", i1 false}
!301 = !{!"allowLowerSimd", i1 false}
!302 = !{!"disableSimd32Slicing", i1 false}
!303 = !{!"disableSplitOnSpill", i1 false}
!304 = !{!"enableNewSpillCostFunction", i1 false}
!305 = !{!"forceVISAPreSched", i1 false}
!306 = !{!"disableLocalIdOrderOptimizations", i1 false}
!307 = !{!"disableDispatchAlongY", i1 false}
!308 = !{!"neededThreadIdLayout", i1* null}
!309 = !{!"forceTileYWalk", i1 false}
!310 = !{!"atomicBranch", i32 0}
!311 = !{!"disableEarlyOut", i1 false}
!312 = !{!"walkOrderEnabled", i1 false}
!313 = !{!"walkOrderOverride", i32 0}
!314 = !{!"ResForHfPacking"}
!315 = !{!"msInfo", !316, !317, !318, !319, !320, !321, !322, !323, !324}
!316 = !{!"PrimitiveTopology", i32 3}
!317 = !{!"MaxNumOfPrimitives", i32 0}
!318 = !{!"MaxNumOfVertices", i32 0}
!319 = !{!"MaxNumOfPerPrimitiveOutputs", i32 0}
!320 = !{!"MaxNumOfPerVertexOutputs", i32 0}
!321 = !{!"WorkGroupSize", i32 0}
!322 = !{!"WorkGroupMemorySizeInBytes", i32 0}
!323 = !{!"IndexFormat", i32 6}
!324 = !{!"SubgroupSize", i32 0}
!325 = !{!"taskInfo", !326, !321, !322, !324}
!326 = !{!"MaxNumOfOutputs", i32 0}
!327 = !{!"NBarrierCnt", i32 0}
!328 = !{!"rtInfo", !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !158}
!329 = !{!"RayQueryAllocSizeInBytes", i32 0}
!330 = !{!"NumContinuations", i32 0}
!331 = !{!"RTAsyncStackAddrspace", i32 -1}
!332 = !{!"RTAsyncStackSurfaceStateOffset", i1* null}
!333 = !{!"SWHotZoneAddrspace", i32 -1}
!334 = !{!"SWHotZoneSurfaceStateOffset", i1* null}
!335 = !{!"SWStackAddrspace", i32 -1}
!336 = !{!"SWStackSurfaceStateOffset", i1* null}
!337 = !{!"RTSyncStackAddrspace", i32 -1}
!338 = !{!"RTSyncStackSurfaceStateOffset", i1* null}
!339 = !{!"doSyncDispatchRays", i1 false}
!340 = !{!"MemStyle", !"Xe"}
!341 = !{!"GlobalDataStyle", !"Xe"}
!342 = !{!"uberTileDimensions", i1* null}
!343 = !{!"CurUniqueIndirectIdx", i32 0}
!344 = !{!"inlineDynTextures"}
!345 = !{!"inlineResInfoData"}
!346 = !{!"immConstant", !347, !348, !349}
!347 = !{!"data"}
!348 = !{!"sizes"}
!349 = !{!"zeroIdxs"}
!350 = !{!"stringConstants"}
!351 = !{!"inlineBuffers", !352, !356, !357}
!352 = !{!"inlineBuffersVec[0]", !353, !354, !355}
!353 = !{!"alignment", i32 0}
!354 = !{!"allocSize", i64 0}
!355 = !{!"Buffer"}
!356 = !{!"inlineBuffersVec[1]", !353, !354, !355}
!357 = !{!"inlineBuffersVec[2]", !353, !354, !355}
!358 = !{!"GlobalPointerProgramBinaryInfos"}
!359 = !{!"ConstantPointerProgramBinaryInfos"}
!360 = !{!"GlobalBufferAddressRelocInfo"}
!361 = !{!"ConstantBufferAddressRelocInfo"}
!362 = !{!"forceLscCacheList"}
!363 = !{!"SrvMap"}
!364 = !{!"RasterizerOrderedByteAddressBuffer"}
!365 = !{!"RasterizerOrderedViews"}
!366 = !{!"MinNOSPushConstantSize", i32 0}
!367 = !{!"inlineProgramScopeOffsets"}
!368 = !{!"shaderData", !369}
!369 = !{!"numReplicas", i32 0}
!370 = !{!"URBInfo", !371, !372, !373}
!371 = !{!"has64BVertexHeaderInput", i1 false}
!372 = !{!"has64BVertexHeaderOutput", i1 false}
!373 = !{!"hasVertexHeader", i1 true}
!374 = !{!"UseBindlessImage", i1 true}
!375 = !{!"UseBindlessImageWithSamplerTracking", i1 false}
!376 = !{!"enableRangeReduce", i1 false}
!377 = !{!"allowMatchMadOptimizationforVS", i1 false}
!378 = !{!"disableMatchMadOptimizationForCS", i1 false}
!379 = !{!"disableMemOptforNegativeOffsetLoads", i1 false}
!380 = !{!"enableThreeWayLoadSpiltOpt", i1 false}
!381 = !{!"statefulResourcesNotAliased", i1 false}
!382 = !{!"disableMixMode", i1 false}
!383 = !{!"genericAccessesResolved", i1 false}
!384 = !{!"disableSeparateSpillPvtScratchSpace", i1 false}
!385 = !{!"enableSeparateSpillPvtScratchSpace", i1 false}
!386 = !{!"disableSeparateScratchWA", i1 false}
!387 = !{!"enableRemoveUnusedTGMFence", i1 false}
!388 = !{!"PrivateMemoryPerFG", !389, !390}
!389 = !{!"PrivateMemoryPerFGMap[0]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ4mainENKUlvE_clEvENKUlRN4sycl3_V17handlerEE_clES3_EUlNS1_7nd_itemILi2EEEE_}
!390 = !{!"PrivateMemoryPerFGValue[0]", i32 0}
!391 = !{!"m_OptsToDisable"}
!392 = !{!"capabilities", !393}
!393 = !{!"globalVariableDecorationsINTEL", i1 false}
!394 = !{!"extensions", !395}
!395 = !{!"spvINTELBindlessImages", i1 false}
!396 = !{!"m_ShaderResourceViewMcsMask", !397, !398}
!397 = !{!"m_ShaderResourceViewMcsMaskVec[0]", i64 0}
!398 = !{!"m_ShaderResourceViewMcsMaskVec[1]", i64 0}
!399 = !{!"computedDepthMode", i32 0}
!400 = !{!"isHDCFastClearShader", i1 false}
!401 = !{!"argRegisterReservations", !402}
!402 = !{!"argRegisterReservationsVec[0]", i32 0}
!403 = !{!"SIMD16_SpillThreshold", i8 0}
!404 = !{!"SIMD32_SpillThreshold", i8 0}
!405 = !{!"m_CacheControlOption", !406, !407, !408, !409}
!406 = !{!"LscLoadCacheControlOverride", i8 0}
!407 = !{!"LscStoreCacheControlOverride", i8 0}
!408 = !{!"TgmLoadCacheControlOverride", i8 0}
!409 = !{!"TgmStoreCacheControlOverride", i8 0}
!410 = !{!"ModuleUsesBindless", i1 false}
!411 = !{!"predicationMap"}
!412 = !{!"lifeTimeStartMap"}
!413 = !{!"HitGroups"}
!414 = !{i32 2, i32 0}
!415 = !{!"clang version 15.0.7"}
!416 = !{i32 1, !"wchar_size", i32 4}
!417 = !{!418}
!418 = !{i32 4469}
!419 = !{!"5764607523034234880"}
!420 = !{!"-59"}
!421 = !{!"17568327689247192015"}
!422 = !{!"-62"}
!423 = !{!"14274266247513343513"}
!424 = !{!"-61"}
!425 = !{!418, !426}
!426 = !{i32 4470}
!427 = !{!"14617397647693952731"}
!428 = !{!"-56"}
!429 = !{!"-57"}
!430 = !{!"14171326827459160746"}
