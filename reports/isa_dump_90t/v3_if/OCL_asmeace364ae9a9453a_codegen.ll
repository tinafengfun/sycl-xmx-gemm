; ------------------------------------------------
; OCL_asmeace364ae9a9453a_codegen.ll
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
  br i1 %22, label %.lr.ph, label %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge, !stats.blockFrequency.digits !419, !stats.blockFrequency.scale !420

.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge: ; preds = %.preheader1.preheader
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit, !stats.blockFrequency.digits !421, !stats.blockFrequency.scale !422

.lr.ph:                                           ; preds = %.preheader1.preheader
  %23 = shl nsw i32 %4, 1, !spirv.Decorations !417
  %24 = ashr i32 %23, 31
  %25 = shl i32 %3, 1
  %26 = add i32 %25, -1
  %27 = shl nuw i32 %19, 1
  %28 = mul nsw i32 %12, %3, !spirv.Decorations !417
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
  br label %.preheader.preheader, !stats.blockFrequency.digits !423, !stats.blockFrequency.scale !424

.preheader.preheader:                             ; preds = %.preheader.preheader..preheader.preheader_crit_edge, %.lr.ph
  %42 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %290, %.preheader.preheader..preheader.preheader_crit_edge ]
  %43 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %292, %.preheader.preheader..preheader.preheader_crit_edge ]
  %44 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %294, %.preheader.preheader..preheader.preheader_crit_edge ]
  %45 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %296, %.preheader.preheader..preheader.preheader_crit_edge ]
  %46 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %298, %.preheader.preheader..preheader.preheader_crit_edge ]
  %47 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %300, %.preheader.preheader..preheader.preheader_crit_edge ]
  %48 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %302, %.preheader.preheader..preheader.preheader_crit_edge ]
  %49 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %304, %.preheader.preheader..preheader.preheader_crit_edge ]
  %50 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %306, %.preheader.preheader..preheader.preheader_crit_edge ]
  %51 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %308, %.preheader.preheader..preheader.preheader_crit_edge ]
  %52 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %310, %.preheader.preheader..preheader.preheader_crit_edge ]
  %53 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %312, %.preheader.preheader..preheader.preheader_crit_edge ]
  %54 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %314, %.preheader.preheader..preheader.preheader_crit_edge ]
  %55 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %316, %.preheader.preheader..preheader.preheader_crit_edge ]
  %56 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %318, %.preheader.preheader..preheader.preheader_crit_edge ]
  %57 = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %320, %.preheader.preheader..preheader.preheader_crit_edge ]
  %58 = phi i32 [ 0, %.lr.ph ], [ %59, %.preheader.preheader..preheader.preheader_crit_edge ]
  %59 = add nuw nsw i32 %58, 32, !spirv.Decorations !425
  %60 = shl nuw i32 %58, 1
  %61 = zext i32 %60 to i64
  %sink_201 = ptrtoint i8 addrspace(1)* %0 to i64
  %62 = add i64 %sink_201, %61
  %63 = add i64 %62, %33
  %64 = inttoptr i64 %63 to i8 addrspace(1)*
  %.ascast.i = addrspacecast i8 addrspace(1)* %64 to i8 addrspace(4)*
  %65 = ptrtoint i8 addrspace(4)* %.ascast.i to i64
  %66 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i)
  %67 = extractvalue { i32, i32 } %66, 0
  %68 = extractvalue { i32, i32 } %66, 1
  %69 = and i32 %67, -64
  %70 = insertelement <2 x i32> undef, i32 %69, i32 0
  %71 = insertelement <2 x i32> %70, i32 %68, i32 1
  %72 = bitcast <2 x i32> %71 to i64
  %73 = trunc i64 %65 to i32
  %74 = lshr i32 %73, 1
  %75 = and i32 %74, 31
  %76 = add i64 %63, 32
  %77 = inttoptr i64 %76 to i8 addrspace(1)*
  %.ascast.i86 = addrspacecast i8 addrspace(1)* %77 to i8 addrspace(4)*
  %78 = ptrtoint i8 addrspace(4)* %.ascast.i86 to i64
  %79 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86)
  %80 = extractvalue { i32, i32 } %79, 0
  %81 = extractvalue { i32, i32 } %79, 1
  %82 = and i32 %80, -64
  %83 = insertelement <2 x i32> undef, i32 %82, i32 0
  %84 = insertelement <2 x i32> %83, i32 %81, i32 1
  %85 = bitcast <2 x i32> %84 to i64
  %86 = trunc i64 %78 to i32
  %87 = lshr i32 %86, 1
  %88 = and i32 %87, 31
  %89 = add i64 %62, %35
  %90 = inttoptr i64 %89 to i8 addrspace(1)*
  %.ascast.i.1 = addrspacecast i8 addrspace(1)* %90 to i8 addrspace(4)*
  %91 = ptrtoint i8 addrspace(4)* %.ascast.i.1 to i64
  %92 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.1)
  %93 = extractvalue { i32, i32 } %92, 0
  %94 = extractvalue { i32, i32 } %92, 1
  %95 = and i32 %93, -64
  %96 = insertelement <2 x i32> undef, i32 %95, i32 0
  %97 = insertelement <2 x i32> %96, i32 %94, i32 1
  %98 = bitcast <2 x i32> %97 to i64
  %99 = trunc i64 %91 to i32
  %100 = lshr i32 %99, 1
  %101 = and i32 %100, 31
  %102 = add i64 %89, 32
  %103 = inttoptr i64 %102 to i8 addrspace(1)*
  %.ascast.i86.1 = addrspacecast i8 addrspace(1)* %103 to i8 addrspace(4)*
  %104 = ptrtoint i8 addrspace(4)* %.ascast.i86.1 to i64
  %105 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86.1)
  %106 = extractvalue { i32, i32 } %105, 0
  %107 = extractvalue { i32, i32 } %105, 1
  %108 = and i32 %106, -64
  %109 = insertelement <2 x i32> undef, i32 %108, i32 0
  %110 = insertelement <2 x i32> %109, i32 %107, i32 1
  %111 = bitcast <2 x i32> %110 to i64
  %112 = trunc i64 %104 to i32
  %113 = lshr i32 %112, 1
  %114 = and i32 %113, 31
  %115 = add i64 %62, %37
  %116 = inttoptr i64 %115 to i8 addrspace(1)*
  %.ascast.i.2 = addrspacecast i8 addrspace(1)* %116 to i8 addrspace(4)*
  %117 = ptrtoint i8 addrspace(4)* %.ascast.i.2 to i64
  %118 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.2)
  %119 = extractvalue { i32, i32 } %118, 0
  %120 = extractvalue { i32, i32 } %118, 1
  %121 = and i32 %119, -64
  %122 = insertelement <2 x i32> undef, i32 %121, i32 0
  %123 = insertelement <2 x i32> %122, i32 %120, i32 1
  %124 = bitcast <2 x i32> %123 to i64
  %125 = trunc i64 %117 to i32
  %126 = lshr i32 %125, 1
  %127 = and i32 %126, 31
  %128 = add i64 %115, 32
  %129 = inttoptr i64 %128 to i8 addrspace(1)*
  %.ascast.i86.2 = addrspacecast i8 addrspace(1)* %129 to i8 addrspace(4)*
  %130 = ptrtoint i8 addrspace(4)* %.ascast.i86.2 to i64
  %131 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86.2)
  %132 = extractvalue { i32, i32 } %131, 0
  %133 = extractvalue { i32, i32 } %131, 1
  %134 = and i32 %132, -64
  %135 = insertelement <2 x i32> undef, i32 %134, i32 0
  %136 = insertelement <2 x i32> %135, i32 %133, i32 1
  %137 = bitcast <2 x i32> %136 to i64
  %138 = trunc i64 %130 to i32
  %139 = lshr i32 %138, 1
  %140 = and i32 %139, 31
  %141 = add i64 %62, %39
  %142 = inttoptr i64 %141 to i8 addrspace(1)*
  %.ascast.i.3 = addrspacecast i8 addrspace(1)* %142 to i8 addrspace(4)*
  %143 = ptrtoint i8 addrspace(4)* %.ascast.i.3 to i64
  %144 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i.3)
  %145 = extractvalue { i32, i32 } %144, 0
  %146 = extractvalue { i32, i32 } %144, 1
  %147 = and i32 %145, -64
  %148 = insertelement <2 x i32> undef, i32 %147, i32 0
  %149 = insertelement <2 x i32> %148, i32 %146, i32 1
  %150 = bitcast <2 x i32> %149 to i64
  %151 = trunc i64 %143 to i32
  %152 = lshr i32 %151, 1
  %153 = and i32 %152, 31
  %154 = add i64 %141, 32
  %155 = inttoptr i64 %154 to i8 addrspace(1)*
  %.ascast.i86.3 = addrspacecast i8 addrspace(1)* %155 to i8 addrspace(4)*
  %156 = ptrtoint i8 addrspace(4)* %.ascast.i86.3 to i64
  %157 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i86.3)
  %158 = extractvalue { i32, i32 } %157, 0
  %159 = extractvalue { i32, i32 } %157, 1
  %160 = and i32 %158, -64
  %161 = insertelement <2 x i32> undef, i32 %160, i32 0
  %162 = insertelement <2 x i32> %161, i32 %159, i32 1
  %163 = bitcast <2 x i32> %162 to i64
  %164 = trunc i64 %156 to i32
  %165 = lshr i32 %164, 1
  %166 = and i32 %165, 31
  %167 = lshr exact i32 %58, 1
  %168 = call { i32, i32 } @llvm.genx.GenISA.mul.pair(i32 %167, i32 0, i32 %23, i32 %24)
  %169 = extractvalue { i32, i32 } %168, 0
  %170 = extractvalue { i32, i32 } %168, 1
  %171 = insertelement <2 x i32> undef, i32 %169, i32 0
  %172 = insertelement <2 x i32> %171, i32 %170, i32 1
  %173 = bitcast <2 x i32> %172 to i64
  %174 = shl nsw i64 %173, 1
  %sink_ = ptrtoint i8 addrspace(1)* %1 to i64
  %175 = add i64 %174, %sink_
  %176 = or i32 %167, 8
  %177 = call { i32, i32 } @llvm.genx.GenISA.mul.pair(i32 %176, i32 0, i32 %23, i32 %24)
  %178 = extractvalue { i32, i32 } %177, 0
  %179 = extractvalue { i32, i32 } %177, 1
  %180 = insertelement <2 x i32> undef, i32 %178, i32 0
  %181 = insertelement <2 x i32> %180, i32 %179, i32 1
  %182 = bitcast <2 x i32> %181 to i64
  %183 = shl nsw i64 %182, 1
  %184 = add i64 %183, %sink_
  %185 = add i64 %175, %41
  %186 = inttoptr i64 %185 to i8 addrspace(1)*
  %.ascast.i87 = addrspacecast i8 addrspace(1)* %186 to i8 addrspace(4)*
  %187 = ptrtoint i8 addrspace(4)* %.ascast.i87 to i64
  %188 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87)
  %189 = extractvalue { i32, i32 } %188, 0
  %190 = extractvalue { i32, i32 } %188, 1
  %191 = and i32 %189, -64
  %192 = insertelement <2 x i32> undef, i32 %191, i32 0
  %193 = insertelement <2 x i32> %192, i32 %190, i32 1
  %194 = bitcast <2 x i32> %193 to i64
  %195 = trunc i64 %187 to i32
  %196 = lshr i32 %195, 2
  %197 = and i32 %196, 15
  %198 = add i64 %184, %41
  %199 = inttoptr i64 %198 to i8 addrspace(1)*
  %.ascast.i88 = addrspacecast i8 addrspace(1)* %199 to i8 addrspace(4)*
  %200 = ptrtoint i8 addrspace(4)* %.ascast.i88 to i64
  %201 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88)
  %202 = extractvalue { i32, i32 } %201, 0
  %203 = extractvalue { i32, i32 } %201, 1
  %204 = and i32 %202, -64
  %205 = insertelement <2 x i32> undef, i32 %204, i32 0
  %206 = insertelement <2 x i32> %205, i32 %203, i32 1
  %207 = bitcast <2 x i32> %206 to i64
  %208 = trunc i64 %200 to i32
  %209 = lshr i32 %208, 2
  %210 = and i32 %209, 15
  %211 = add i64 %185, 64
  %212 = inttoptr i64 %211 to i8 addrspace(1)*
  %.ascast.i87.1 = addrspacecast i8 addrspace(1)* %212 to i8 addrspace(4)*
  %213 = ptrtoint i8 addrspace(4)* %.ascast.i87.1 to i64
  %214 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.1)
  %215 = extractvalue { i32, i32 } %214, 0
  %216 = extractvalue { i32, i32 } %214, 1
  %217 = and i32 %215, -64
  %218 = insertelement <2 x i32> undef, i32 %217, i32 0
  %219 = insertelement <2 x i32> %218, i32 %216, i32 1
  %220 = bitcast <2 x i32> %219 to i64
  %221 = trunc i64 %213 to i32
  %222 = lshr i32 %221, 2
  %223 = and i32 %222, 15
  %224 = add i64 %198, 64
  %225 = inttoptr i64 %224 to i8 addrspace(1)*
  %.ascast.i88.1 = addrspacecast i8 addrspace(1)* %225 to i8 addrspace(4)*
  %226 = ptrtoint i8 addrspace(4)* %.ascast.i88.1 to i64
  %227 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.1)
  %228 = extractvalue { i32, i32 } %227, 0
  %229 = extractvalue { i32, i32 } %227, 1
  %230 = and i32 %228, -64
  %231 = insertelement <2 x i32> undef, i32 %230, i32 0
  %232 = insertelement <2 x i32> %231, i32 %229, i32 1
  %233 = bitcast <2 x i32> %232 to i64
  %234 = trunc i64 %226 to i32
  %235 = lshr i32 %234, 2
  %236 = and i32 %235, 15
  %237 = add i64 %185, 128
  %238 = inttoptr i64 %237 to i8 addrspace(1)*
  %.ascast.i87.2 = addrspacecast i8 addrspace(1)* %238 to i8 addrspace(4)*
  %239 = ptrtoint i8 addrspace(4)* %.ascast.i87.2 to i64
  %240 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.2)
  %241 = extractvalue { i32, i32 } %240, 0
  %242 = extractvalue { i32, i32 } %240, 1
  %243 = and i32 %241, -64
  %244 = insertelement <2 x i32> undef, i32 %243, i32 0
  %245 = insertelement <2 x i32> %244, i32 %242, i32 1
  %246 = bitcast <2 x i32> %245 to i64
  %247 = trunc i64 %239 to i32
  %248 = lshr i32 %247, 2
  %249 = and i32 %248, 15
  %250 = add i64 %198, 128
  %251 = inttoptr i64 %250 to i8 addrspace(1)*
  %.ascast.i88.2 = addrspacecast i8 addrspace(1)* %251 to i8 addrspace(4)*
  %252 = ptrtoint i8 addrspace(4)* %.ascast.i88.2 to i64
  %253 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.2)
  %254 = extractvalue { i32, i32 } %253, 0
  %255 = extractvalue { i32, i32 } %253, 1
  %256 = and i32 %254, -64
  %257 = insertelement <2 x i32> undef, i32 %256, i32 0
  %258 = insertelement <2 x i32> %257, i32 %255, i32 1
  %259 = bitcast <2 x i32> %258 to i64
  %260 = trunc i64 %252 to i32
  %261 = lshr i32 %260, 2
  %262 = and i32 %261, 15
  %263 = add i64 %185, 192
  %264 = inttoptr i64 %263 to i8 addrspace(1)*
  %.ascast.i87.3 = addrspacecast i8 addrspace(1)* %264 to i8 addrspace(4)*
  %265 = ptrtoint i8 addrspace(4)* %.ascast.i87.3 to i64
  %266 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i87.3)
  %267 = extractvalue { i32, i32 } %266, 0
  %268 = extractvalue { i32, i32 } %266, 1
  %269 = and i32 %267, -64
  %270 = insertelement <2 x i32> undef, i32 %269, i32 0
  %271 = insertelement <2 x i32> %270, i32 %268, i32 1
  %272 = bitcast <2 x i32> %271 to i64
  %273 = trunc i64 %265 to i32
  %274 = lshr i32 %273, 2
  %275 = and i32 %274, 15
  %276 = add i64 %198, 192
  %277 = inttoptr i64 %276 to i8 addrspace(1)*
  %.ascast.i88.3 = addrspacecast i8 addrspace(1)* %277 to i8 addrspace(4)*
  %278 = ptrtoint i8 addrspace(4)* %.ascast.i88.3 to i64
  %279 = call { i32, i32 } @llvm.genx.GenISA.ptr.to.pair.p4i8(i8 addrspace(4)* %.ascast.i88.3)
  %280 = extractvalue { i32, i32 } %279, 0
  %281 = extractvalue { i32, i32 } %279, 1
  %282 = and i32 %280, -64
  %283 = insertelement <2 x i32> undef, i32 %282, i32 0
  %284 = insertelement <2 x i32> %283, i32 %281, i32 1
  %285 = bitcast <2 x i32> %284 to i64
  %286 = trunc i64 %278 to i32
  %287 = lshr i32 %286, 2
  %288 = and i32 %287, 15
  %sched_200 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %72, i32 %26, i32 7, i32 %26, i32 %75, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_192 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %194, i32 %21, i32 7, i32 %21, i32 %197, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_199 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %85, i32 %26, i32 7, i32 %26, i32 %88, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_191 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %207, i32 %21, i32 7, i32 %21, i32 %210, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_190 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %220, i32 %21, i32 7, i32 %21, i32 %223, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_189 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %233, i32 %21, i32 7, i32 %21, i32 %236, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_188 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %246, i32 %21, i32 7, i32 %21, i32 %249, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_187 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %259, i32 %21, i32 7, i32 %21, i32 %262, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_186 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %272, i32 %21, i32 7, i32 %21, i32 %275, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_ = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %285, i32 %21, i32 7, i32 %21, i32 %288, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_198 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %98, i32 %26, i32 7, i32 %26, i32 %101, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_197 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %111, i32 %26, i32 7, i32 %26, i32 %114, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_196 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %124, i32 %26, i32 7, i32 %26, i32 %127, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_195 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %137, i32 %26, i32 7, i32 %26, i32 %140, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_194 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %150, i32 %26, i32 7, i32 %26, i32 %153, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %sched_193 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %163, i32 %26, i32 7, i32 %26, i32 %166, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %289 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %42, <8 x i16> %sched_200, <8 x i32> %sched_192, i32 11, i32 11, i32 8, i32 8, i1 false)
  %290 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %289, <8 x i16> %sched_199, <8 x i32> %sched_191, i32 11, i32 11, i32 8, i32 8, i1 false)
  %291 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %43, <8 x i16> %sched_200, <8 x i32> %sched_190, i32 11, i32 11, i32 8, i32 8, i1 false)
  %292 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %291, <8 x i16> %sched_199, <8 x i32> %sched_189, i32 11, i32 11, i32 8, i32 8, i1 false)
  %293 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %44, <8 x i16> %sched_200, <8 x i32> %sched_188, i32 11, i32 11, i32 8, i32 8, i1 false)
  %294 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %293, <8 x i16> %sched_199, <8 x i32> %sched_187, i32 11, i32 11, i32 8, i32 8, i1 false)
  %295 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %45, <8 x i16> %sched_200, <8 x i32> %sched_186, i32 11, i32 11, i32 8, i32 8, i1 false)
  %296 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %295, <8 x i16> %sched_199, <8 x i32> %sched_, i32 11, i32 11, i32 8, i32 8, i1 false)
  %297 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %46, <8 x i16> %sched_198, <8 x i32> %sched_192, i32 11, i32 11, i32 8, i32 8, i1 false)
  %298 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %297, <8 x i16> %sched_197, <8 x i32> %sched_191, i32 11, i32 11, i32 8, i32 8, i1 false)
  %299 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %47, <8 x i16> %sched_198, <8 x i32> %sched_190, i32 11, i32 11, i32 8, i32 8, i1 false)
  %300 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %299, <8 x i16> %sched_197, <8 x i32> %sched_189, i32 11, i32 11, i32 8, i32 8, i1 false)
  %301 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %48, <8 x i16> %sched_198, <8 x i32> %sched_188, i32 11, i32 11, i32 8, i32 8, i1 false)
  %302 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %301, <8 x i16> %sched_197, <8 x i32> %sched_187, i32 11, i32 11, i32 8, i32 8, i1 false)
  %303 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %49, <8 x i16> %sched_198, <8 x i32> %sched_186, i32 11, i32 11, i32 8, i32 8, i1 false)
  %304 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %303, <8 x i16> %sched_197, <8 x i32> %sched_, i32 11, i32 11, i32 8, i32 8, i1 false)
  %305 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %50, <8 x i16> %sched_196, <8 x i32> %sched_192, i32 11, i32 11, i32 8, i32 8, i1 false)
  %306 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %305, <8 x i16> %sched_195, <8 x i32> %sched_191, i32 11, i32 11, i32 8, i32 8, i1 false)
  %307 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %51, <8 x i16> %sched_196, <8 x i32> %sched_190, i32 11, i32 11, i32 8, i32 8, i1 false)
  %308 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %307, <8 x i16> %sched_195, <8 x i32> %sched_189, i32 11, i32 11, i32 8, i32 8, i1 false)
  %309 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %52, <8 x i16> %sched_196, <8 x i32> %sched_188, i32 11, i32 11, i32 8, i32 8, i1 false)
  %310 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %309, <8 x i16> %sched_195, <8 x i32> %sched_187, i32 11, i32 11, i32 8, i32 8, i1 false)
  %311 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %53, <8 x i16> %sched_196, <8 x i32> %sched_186, i32 11, i32 11, i32 8, i32 8, i1 false)
  %312 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %311, <8 x i16> %sched_195, <8 x i32> %sched_, i32 11, i32 11, i32 8, i32 8, i1 false)
  %313 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %54, <8 x i16> %sched_194, <8 x i32> %sched_192, i32 11, i32 11, i32 8, i32 8, i1 false)
  %314 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %313, <8 x i16> %sched_193, <8 x i32> %sched_191, i32 11, i32 11, i32 8, i32 8, i1 false)
  %315 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %55, <8 x i16> %sched_194, <8 x i32> %sched_190, i32 11, i32 11, i32 8, i32 8, i1 false)
  %316 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %315, <8 x i16> %sched_193, <8 x i32> %sched_189, i32 11, i32 11, i32 8, i32 8, i1 false)
  %317 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %56, <8 x i16> %sched_194, <8 x i32> %sched_188, i32 11, i32 11, i32 8, i32 8, i1 false)
  %318 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %317, <8 x i16> %sched_193, <8 x i32> %sched_187, i32 11, i32 11, i32 8, i32 8, i1 false)
  %319 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %57, <8 x i16> %sched_194, <8 x i32> %sched_186, i32 11, i32 11, i32 8, i32 8, i1 false)
  %320 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %319, <8 x i16> %sched_193, <8 x i32> %sched_, i32 11, i32 11, i32 8, i32 8, i1 false)
  %321 = icmp slt i32 %59, %3
  br i1 %321, label %.preheader.preheader..preheader.preheader_crit_edge, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit, !stats.blockFrequency.digits !427, !stats.blockFrequency.scale !428

.preheader.preheader..preheader.preheader_crit_edge: ; preds = %.preheader.preheader
  br label %.preheader.preheader, !stats.blockFrequency.digits !429, !stats.blockFrequency.scale !428

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit: ; preds = %.preheader.preheader
  %.lcssa216 = phi <8 x float> [ %290, %.preheader.preheader ]
  %.lcssa215 = phi <8 x float> [ %292, %.preheader.preheader ]
  %.lcssa214 = phi <8 x float> [ %294, %.preheader.preheader ]
  %.lcssa213 = phi <8 x float> [ %296, %.preheader.preheader ]
  %.lcssa212 = phi <8 x float> [ %298, %.preheader.preheader ]
  %.lcssa211 = phi <8 x float> [ %300, %.preheader.preheader ]
  %.lcssa210 = phi <8 x float> [ %302, %.preheader.preheader ]
  %.lcssa209 = phi <8 x float> [ %304, %.preheader.preheader ]
  %.lcssa208 = phi <8 x float> [ %306, %.preheader.preheader ]
  %.lcssa207 = phi <8 x float> [ %308, %.preheader.preheader ]
  %.lcssa206 = phi <8 x float> [ %310, %.preheader.preheader ]
  %.lcssa205 = phi <8 x float> [ %312, %.preheader.preheader ]
  %.lcssa204 = phi <8 x float> [ %314, %.preheader.preheader ]
  %.lcssa203 = phi <8 x float> [ %316, %.preheader.preheader ]
  %.lcssa202 = phi <8 x float> [ %318, %.preheader.preheader ]
  %.lcssa = phi <8 x float> [ %320, %.preheader.preheader ]
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
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit, !stats.blockFrequency.digits !423, !stats.blockFrequency.scale !424

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit: ; preds = %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge
  %.sroa.082.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %322, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.687.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %323, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.10.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %324, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.14.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %325, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.18.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %326, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.22.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %327, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.26.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %328, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.30.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %329, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.34.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %330, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.38.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %331, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.42.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %332, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.46.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %333, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.50.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %334, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.54.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %335, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.58.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %336, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %.sroa.62.0 = phi <8 x i32> [ zeroinitializer, %.preheader1.preheader.__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit_crit_edge ], [ %337, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.252.exit.loopexit ]
  %338 = ptrtoint i8 addrspace(1)* %2 to i64
  %339 = zext i32 %19 to i64
  %340 = shl nuw nsw i64 %339, 2
  %341 = add i64 %340, %338
  %342 = mul nsw i32 %12, %4, !spirv.Decorations !417
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
  %397 = mul nsw i32 %13, %4, !spirv.Decorations !417
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
  %452 = mul nsw i32 %14, %4, !spirv.Decorations !417
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
  %507 = mul nsw i32 %15, %4, !spirv.Decorations !417
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
!429 = !{!"14171326827459160746"}
