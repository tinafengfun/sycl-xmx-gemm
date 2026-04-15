; ------------------------------------------------
; OCL_asm452e78bde1128fde_afterUnification.ll
; ------------------------------------------------
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "spir64-unknown-unknown"

%"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved" = type { <8 x float> }
%"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved" = type { <8 x i16> }
%"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved" = type { <8 x i32> }
%"class.sycl::_V1::ext::oneapi::bfloat16" = type { i16 }

@0 = internal unnamed_addr addrspace(2) constant [23 x i8] c"Pointer: %p, Type: %s\0A\00"

; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZZ4mainENKUlvE_clEvENKUlRN4sycl3_V17handlerEE_clES3_EUlNS1_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
  %6 = extractelement <3 x i32> %localSize, i32 0
  %7 = extractelement <3 x i32> %localSize, i32 1
  %8 = extractelement <3 x i32> %localSize, i32 2
  %9 = extractelement <8 x i32> %r0, i32 0
  %10 = extractelement <8 x i32> %r0, i32 1
  %11 = extractelement <8 x i32> %r0, i32 2
  %12 = extractelement <8 x i32> %r0, i32 3
  %13 = extractelement <8 x i32> %r0, i32 4
  %14 = extractelement <8 x i32> %r0, i32 5
  %15 = extractelement <8 x i32> %r0, i32 6
  %16 = extractelement <8 x i32> %r0, i32 7
  %17 = alloca [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], align 8, !spirv.Decorations !411
  %18 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], align 8, !spirv.Decorations !411
  %19 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], align 8, !spirv.Decorations !411
  %20 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], align 8, !spirv.Decorations !411
  %21 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], align 8, !spirv.Decorations !411
  %22 = bitcast <8 x i32> %r0 to <32 x i8>
  %23 = extractelement <32 x i8> %22, i32 0
  %24 = extractelement <32 x i8> %22, i32 1
  %25 = extractelement <32 x i8> %22, i32 2
  %26 = extractelement <32 x i8> %22, i32 3
  %27 = extractelement <32 x i8> %22, i32 4
  %28 = extractelement <32 x i8> %22, i32 5
  %29 = extractelement <32 x i8> %22, i32 6
  %30 = extractelement <32 x i8> %22, i32 7
  %31 = extractelement <32 x i8> %22, i32 8
  %32 = extractelement <32 x i8> %22, i32 9
  %33 = extractelement <32 x i8> %22, i32 10
  %34 = extractelement <32 x i8> %22, i32 11
  %35 = extractelement <32 x i8> %22, i32 12
  %36 = extractelement <32 x i8> %22, i32 13
  %37 = extractelement <32 x i8> %22, i32 14
  %38 = extractelement <32 x i8> %22, i32 15
  %39 = extractelement <32 x i8> %22, i32 16
  %40 = extractelement <32 x i8> %22, i32 17
  %41 = extractelement <32 x i8> %22, i32 18
  %42 = extractelement <32 x i8> %22, i32 19
  %43 = extractelement <32 x i8> %22, i32 20
  %44 = extractelement <32 x i8> %22, i32 21
  %45 = extractelement <32 x i8> %22, i32 22
  %46 = extractelement <32 x i8> %22, i32 23
  %47 = extractelement <32 x i8> %22, i32 24
  %48 = extractelement <32 x i8> %22, i32 25
  %49 = extractelement <32 x i8> %22, i32 26
  %50 = extractelement <32 x i8> %22, i32 27
  %51 = extractelement <32 x i8> %22, i32 28
  %52 = extractelement <32 x i8> %22, i32 29
  %53 = extractelement <32 x i8> %22, i32 30
  %54 = extractelement <32 x i8> %22, i32 31
  %localThreadId5 = zext i8 %31 to i32
  %55 = icmp sgt i32 %15, -1
  call void @llvm.assume(i1 %55)
  %56 = icmp sgt i32 %10, -1
  call void @llvm.assume(i1 %56)
  %57 = shl nsw i32 %15, 6, !spirv.Decorations !413
  %58 = shl nuw nsw i32 %localThreadId5, 4
  %59 = and i32 %58, 4064
  %60 = add nuw nsw i32 %57, %59, !spirv.Decorations !413
  %61 = shl nsw i32 %10, 7, !spirv.Decorations !413
  %62 = shl nuw nsw i32 %localThreadId5, 6
  %63 = and i32 %62, 64
  %64 = or i32 %61, %63
  %65 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %65)
  %66 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 0, i64 0
  br label %67

67:                                               ; preds = %67, %5
  %68 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* [ %66, %5 ], [ %69, %67 ]
  %69 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* %68, i64 1
  %70 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 1, i64 0, i64 0
  %71 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* %69, %70
  br i1 %71, label %.preheader1, label %67

.preheader1:                                      ; preds = %67
  br label %72

72:                                               ; preds = %97, %.preheader1
  %73 = phi i32 [ %98, %97 ], [ 0, %.preheader1 ]
  %74 = icmp ult i32 %73, 4
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = zext i32 %73 to i64
  br label %94

77:                                               ; preds = %72
  %78 = mul nsw i32 %60, %3, !spirv.Decorations !413
  %79 = sext i32 %78 to i64
  %80 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %81 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %80, i64 %79
  %82 = shl nsw i32 %4, 1, !spirv.Decorations !413
  %83 = sext i32 %82 to i64
  %84 = shl nuw i32 %64, 1
  %85 = zext i32 %84 to i64
  %86 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %87 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %86, i64 %85
  %88 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18, i64 0, i64 0
  %89 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 0, i64 0
  %90 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20, i64 0, i64 0
  %91 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 0, i64 0
  %92 = shl nsw i32 %4, 1, !spirv.Decorations !413
  %93 = sext i32 %92 to i64
  br label %103

94:                                               ; preds = %99, %75
  %95 = phi i32 [ %102, %99 ], [ 0, %75 ]
  %96 = icmp ult i32 %95, 4
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = add nuw nsw i32 %73, 1, !spirv.Decorations !415
  br label %72

99:                                               ; preds = %94
  %100 = zext i32 %95 to i64
  %101 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 %76, i64 %100, i32 0
  store <8 x float> zeroinitializer, <8 x float>* %101, align 8
  %102 = add nuw nsw i32 %95, 1, !spirv.Decorations !415
  br label %94

103:                                              ; preds = %252, %77
  %104 = phi i32 [ %111, %252 ], [ 0, %77 ]
  %105 = icmp slt i32 %104, %3
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = zext i32 %64 to i64
  %108 = bitcast i8 addrspace(1)* %2 to float addrspace(1)*
  %109 = getelementptr float, float addrspace(1)* %108, i64 %107
  br label %277

110:                                              ; preds = %103
  %111 = add nuw nsw i32 %104, 32, !spirv.Decorations !415
  %112 = icmp slt i32 %111, %3
  br i1 %112, label %113, label %138

113:                                              ; preds = %110
  %114 = zext i32 %111 to i64
  %115 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %81, i64 %114
  %116 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %115 to i8 addrspace(1)*
  %117 = addrspacecast i8 addrspace(1)* %116 to i8 addrspace(4)*
  %118 = ptrtoint i8 addrspace(4)* %117 to i64
  %119 = and i64 %118, -64
  %120 = shl i32 %3, 1
  %121 = add i32 %120, -1
  %122 = trunc i64 %118 to i32
  %123 = lshr i32 %122, 1
  %124 = and i32 %123, 31
  call void @llvm.genx.GenISA.LSC2DBlockPrefetch.isVoid(i64 %119, i32 %121, i32 7, i32 %121, i32 %124, i32 0, i32 16, i32 32, i32 8, i32 1, i1 false, i1 false, i32 4)
  %125 = lshr exact i32 %111, 1
  %126 = zext i32 %125 to i64
  %127 = mul nsw i64 %126, %83, !spirv.Decorations !413
  %128 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %87, i64 %127
  %129 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %128 to i8 addrspace(1)*
  %130 = addrspacecast i8 addrspace(1)* %129 to i8 addrspace(4)*
  %131 = ptrtoint i8 addrspace(4)* %130 to i64
  %132 = and i64 %131, -64
  %133 = shl i32 %4, 2
  %134 = add i32 %133, -1
  %135 = trunc i64 %131 to i32
  %136 = lshr i32 %135, 1
  %137 = and i32 %136, 31
  call void @llvm.genx.GenISA.LSC2DBlockPrefetch.isVoid(i64 %132, i32 %134, i32 7, i32 %134, i32 %137, i32 0, i32 16, i32 32, i32 8, i32 1, i1 false, i1 false, i32 4)
  br label %138

138:                                              ; preds = %113, %110
  %139 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %139)
  br label %140

140:                                              ; preds = %140, %138
  %141 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* [ %88, %138 ], [ %142, %140 ]
  %142 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* %141, i64 1
  %143 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18, i64 1, i64 0
  %144 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* %142, %143
  br i1 %144, label %145, label %140

145:                                              ; preds = %140
  %146 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %146)
  br label %147

147:                                              ; preds = %147, %145
  %148 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* [ %89, %145 ], [ %149, %147 ]
  %149 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* %148, i64 1
  %150 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 1, i64 0
  %151 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* %149, %150
  br i1 %151, label %152, label %147

152:                                              ; preds = %147
  %153 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %153)
  br label %154

154:                                              ; preds = %154, %152
  %155 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* [ %90, %152 ], [ %156, %154 ]
  %156 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* %155, i64 1
  %157 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20, i64 1, i64 0
  %158 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* %156, %157
  br i1 %158, label %159, label %154

159:                                              ; preds = %154
  %160 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %160)
  br label %161

161:                                              ; preds = %161, %159
  %162 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* [ %91, %159 ], [ %163, %161 ]
  %163 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* %162, i64 1
  %164 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 1, i64 0
  %165 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* %163, %164
  br i1 %165, label %166, label %161

166:                                              ; preds = %161
  %167 = zext i32 %104 to i64
  %168 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %169 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %168, i64 %167
  br label %170

170:                                              ; preds = %184, %166
  %171 = phi i32 [ %212, %184 ], [ 0, %166 ]
  %172 = icmp ult i32 %171, 4
  br i1 %172, label %184, label %173

173:                                              ; preds = %170
  %174 = lshr exact i32 %104, 1
  %175 = zext i32 %174 to i64
  %176 = mul nsw i64 %175, %93, !spirv.Decorations !413
  %177 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %178 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %177, i64 %176
  %179 = or i32 %174, 8
  %180 = zext i32 %179 to i64
  %181 = mul nsw i64 %180, %93, !spirv.Decorations !413
  %182 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %183 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %182, i64 %181
  br label %213

184:                                              ; preds = %170
  %185 = zext i32 %171 to i64
  %186 = shl nuw nsw i32 %171, 3, !spirv.Decorations !415
  %187 = or i32 %60, %186
  %188 = mul nsw i32 %187, %3, !spirv.Decorations !413
  %189 = sext i32 %188 to i64
  %190 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %169, i64 %189
  %191 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %190 to i8 addrspace(1)*
  %.ascast.i = addrspacecast i8 addrspace(1)* %191 to i8 addrspace(4)*
  %192 = ptrtoint i8 addrspace(4)* %.ascast.i to i64
  %193 = and i64 %192, -64
  %194 = trunc i64 %192 to i32
  %195 = lshr i32 %194, 1
  %196 = and i32 %195, 31
  %197 = shl i32 %3, 1
  %198 = add i32 %197, -1
  %199 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %193, i32 %198, i32 7, i32 %198, i32 %196, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %200 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18, i64 0, i64 %185, i32 0
  store <8 x i16> %199, <8 x i16>* %200, align 8
  %201 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %190, i64 16
  %202 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %201 to i8 addrspace(1)*
  %.ascast.i87 = addrspacecast i8 addrspace(1)* %202 to i8 addrspace(4)*
  %203 = ptrtoint i8 addrspace(4)* %.ascast.i87 to i64
  %204 = and i64 %203, -64
  %205 = trunc i64 %203 to i32
  %206 = lshr i32 %205, 1
  %207 = and i32 %206, 31
  %208 = shl i32 %3, 1
  %209 = add i32 %208, -1
  %210 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %204, i32 %209, i32 7, i32 %209, i32 %207, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %211 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 0, i64 %185, i32 0
  store <8 x i16> %210, <8 x i16>* %211, align 8
  %212 = add nuw nsw i32 %171, 1, !spirv.Decorations !415
  br label %170

213:                                              ; preds = %216, %173
  %214 = phi i32 [ %244, %216 ], [ 0, %173 ]
  %215 = icmp ult i32 %214, 4
  br i1 %215, label %216, label %.preheader

.preheader:                                       ; preds = %213
  br label %245

216:                                              ; preds = %213
  %217 = zext i32 %214 to i64
  %218 = shl i32 %214, 5
  %219 = shl nuw i32 %64, 1
  %220 = or i32 %218, %219
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %178, i64 %221
  %223 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %222 to i8 addrspace(1)*
  %.ascast.i88 = addrspacecast i8 addrspace(1)* %223 to i8 addrspace(4)*
  %224 = ptrtoint i8 addrspace(4)* %.ascast.i88 to i64
  %225 = and i64 %224, -64
  %226 = trunc i64 %224 to i32
  %227 = lshr i32 %226, 2
  %228 = and i32 %227, 15
  %229 = shl i32 %4, 2
  %230 = add i32 %229, -1
  %231 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %225, i32 %230, i32 7, i32 %230, i32 %228, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %232 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20, i64 0, i64 %217, i32 0
  store <8 x i32> %231, <8 x i32>* %232, align 8
  %233 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %183, i64 %221
  %234 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %233 to i8 addrspace(1)*
  %.ascast.i89 = addrspacecast i8 addrspace(1)* %234 to i8 addrspace(4)*
  %235 = ptrtoint i8 addrspace(4)* %.ascast.i89 to i64
  %236 = and i64 %235, -64
  %237 = trunc i64 %235 to i32
  %238 = lshr i32 %237, 2
  %239 = and i32 %238, 15
  %240 = shl i32 %4, 2
  %241 = add i32 %240, -1
  %242 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %236, i32 %241, i32 7, i32 %241, i32 %239, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %243 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 0, i64 %217, i32 0
  store <8 x i32> %242, <8 x i32>* %243, align 8
  %244 = add nuw nsw i32 %214, 1, !spirv.Decorations !415
  br label %213

245:                                              ; preds = %260, %.preheader
  %246 = phi i32 [ %261, %260 ], [ 0, %.preheader ]
  %247 = icmp ult i32 %246, 4
  br i1 %247, label %248, label %252

248:                                              ; preds = %245
  %249 = zext i32 %246 to i64
  %250 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18, i64 0, i64 %249, i32 0
  %251 = load <8 x i16>, <8 x i16>* %250, align 8
  br label %257

252:                                              ; preds = %245
  %253 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21 to i8*
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %253)
  %254 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20 to i8*
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %254)
  %255 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %255)
  %256 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %256)
  br label %103

257:                                              ; preds = %262, %248
  %258 = phi i32 [ %276, %262 ], [ 0, %248 ]
  %259 = icmp ult i32 %258, 4
  br i1 %259, label %262, label %260

260:                                              ; preds = %257
  %261 = add nuw nsw i32 %246, 1, !spirv.Decorations !415
  br label %245

262:                                              ; preds = %257
  %263 = zext i32 %258 to i64
  %264 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20, i64 0, i64 %263, i32 0
  %265 = load <8 x i32>, <8 x i32>* %264, align 8
  %266 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 %249, i64 %263
  %267 = getelementptr %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* %266, i64 0, i32 0
  %268 = load <8 x float>, <8 x float>* %267, align 8
  %269 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %268, <8 x i16> %251, <8 x i32> %265, i32 11, i32 11, i32 8, i32 8, i1 false)
  %270 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 0, i64 %249, i32 0
  %271 = load <8 x i16>, <8 x i16>* %270, align 8
  %272 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 0, i64 %263, i32 0
  %273 = load <8 x i32>, <8 x i32>* %272, align 8
  %274 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %269, <8 x i16> %271, <8 x i32> %273, i32 11, i32 11, i32 8, i32 8, i1 false)
  %275 = getelementptr %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* %266, i64 0, i32 0
  store <8 x float> %274, <8 x float>* %275, align 8
  %276 = add nuw nsw i32 %258, 1, !spirv.Decorations !415
  br label %257

277:                                              ; preds = %290, %106
  %278 = phi i32 [ %291, %290 ], [ 0, %106 ]
  %279 = icmp ult i32 %278, 4
  br i1 %279, label %280, label %326

280:                                              ; preds = %277
  %281 = zext i32 %278 to i64
  %282 = shl nuw nsw i32 %278, 3, !spirv.Decorations !415
  %283 = or i32 %60, %282
  %284 = mul nsw i32 %283, %4, !spirv.Decorations !413
  %285 = sext i32 %284 to i64
  %286 = getelementptr float, float addrspace(1)* %109, i64 %285
  br label %287

287:                                              ; preds = %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit, %280
  %288 = phi i32 [ %325, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit ], [ 0, %280 ]
  %289 = icmp ult i32 %288, 4
  br i1 %289, label %292, label %290

290:                                              ; preds = %287
  %291 = add nuw nsw i32 %278, 1, !spirv.Decorations !415
  br label %277

292:                                              ; preds = %287
  %293 = zext i32 %288 to i64
  %294 = shl nuw nsw i32 %288, 4, !spirv.Decorations !415
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds float, float addrspace(1)* %286, i64 %295
  %297 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 %281, i64 %293, i32 0
  %298 = bitcast <8 x float>* %297 to <8 x i32>*
  %299 = load <8 x i32>, <8 x i32>* %298, align 8
  %300 = bitcast float addrspace(1)* %296 to i8 addrspace(1)*
  %.ascast.i90 = addrspacecast i8 addrspace(1)* %300 to i8 addrspace(4)*
  %301 = mul i32 %7, %6
  %302 = mul i32 %301, %8
  %303 = and i32 %302, 15
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %317, label %305

305:                                              ; preds = %292
  %localIdZ13 = zext i16 %localIdZ to i32
  %306 = mul i32 %7, %localIdZ13
  %localIdY15 = zext i16 %localIdY to i32
  %307 = add i32 %306, %localIdY15
  %308 = mul i32 %307, %6
  %localIdX17 = zext i16 %localIdX to i32
  %309 = add i32 %308, %localIdX17
  %310 = lshr i32 %309, 4
  %311 = mul i32 %7, %6
  %312 = mul i32 %311, %8
  %313 = add i32 %312, 15
  %314 = lshr i32 %313, 4
  %315 = add nsw i32 %314, -1
  %316 = icmp ult i32 %310, %315
  br i1 %316, label %317, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit

317:                                              ; preds = %305, %292
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.255.exit: ; preds = %305, %317
  %318 = ptrtoint i8 addrspace(4)* %.ascast.i90 to i64
  %319 = and i64 %318, -64
  %320 = shl i32 %4, 2
  %321 = add i32 %320, -1
  %322 = trunc i64 %318 to i32
  %323 = lshr i32 %322, 2
  %324 = and i32 %323, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %319, i32 %321, i32 7, i32 %321, i32 %324, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %299)
  %325 = add nuw nsw i32 %288, 1, !spirv.Decorations !415
  br label %287

326:                                              ; preds = %277
  %327 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %327)
  ret void
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
!opencl.ocl.version = !{!408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408}
!opencl.spir.version = !{!408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408, !408}
!llvm.ident = !{!409, !409, !409, !409, !409, !409, !409, !409, !409, !409, !409, !409, !409, !409, !409, !409, !409, !409, !409, !409, !409, !409}
!llvm.module.flags = !{!410}

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
!24 = !{!"ModuleMD", !25, !26, !128, !243, !274, !291, !311, !321, !323, !324, !339, !340, !341, !342, !346, !347, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !366, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !195, !384, !385, !386, !388, !390, !393, !394, !395, !397, !398, !399, !404, !405, !406, !407}
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
!242 = !{!"m_OptsToDisablePerFunc"}
!243 = !{!"pushInfo", !244, !245, !246, !250, !251, !252, !253, !254, !255, !256, !257, !270, !271, !272, !273}
!244 = !{!"pushableAddresses"}
!245 = !{!"bindlessPushInfo"}
!246 = !{!"dynamicBufferInfo", !247, !248, !249}
!247 = !{!"firstIndex", i32 0}
!248 = !{!"numOffsets", i32 0}
!249 = !{!"forceDisabled", i1 false}
!250 = !{!"MaxNumberOfPushedBuffers", i32 0}
!251 = !{!"inlineConstantBufferSlot", i32 -1}
!252 = !{!"inlineConstantBufferOffset", i32 -1}
!253 = !{!"inlineConstantBufferGRFOffset", i32 -1}
!254 = !{!"constants"}
!255 = !{!"inputs"}
!256 = !{!"constantReg"}
!257 = !{!"simplePushInfoArr", !258, !267, !268, !269}
!258 = !{!"simplePushInfoArrVec[0]", !259, !260, !261, !262, !263, !264, !265, !266}
!259 = !{!"cbIdx", i32 0}
!260 = !{!"pushableAddressGrfOffset", i32 -1}
!261 = !{!"pushableOffsetGrfOffset", i32 -1}
!262 = !{!"offset", i32 0}
!263 = !{!"size", i32 0}
!264 = !{!"isStateless", i1 false}
!265 = !{!"isBindless", i1 false}
!266 = !{!"simplePushLoads"}
!267 = !{!"simplePushInfoArrVec[1]", !259, !260, !261, !262, !263, !264, !265, !266}
!268 = !{!"simplePushInfoArrVec[2]", !259, !260, !261, !262, !263, !264, !265, !266}
!269 = !{!"simplePushInfoArrVec[3]", !259, !260, !261, !262, !263, !264, !265, !266}
!270 = !{!"simplePushBufferUsed", i32 0}
!271 = !{!"pushAnalysisWIInfos"}
!272 = !{!"inlineRTGlobalPtrOffset", i32 0}
!273 = !{!"rtSyncSurfPtrOffset", i32 0}
!274 = !{!"psInfo", !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290}
!275 = !{!"BlendStateDisabledMask", i8 0}
!276 = !{!"SkipSrc0Alpha", i1 false}
!277 = !{!"DualSourceBlendingDisabled", i1 false}
!278 = !{!"ForceEnableSimd32", i1 false}
!279 = !{!"DisableSimd32WithDiscard", i1 false}
!280 = !{!"outputDepth", i1 false}
!281 = !{!"outputStencil", i1 false}
!282 = !{!"outputMask", i1 false}
!283 = !{!"blendToFillEnabled", i1 false}
!284 = !{!"forceEarlyZ", i1 false}
!285 = !{!"hasVersionedLoop", i1 false}
!286 = !{!"forceSingleSourceRTWAfterDualSourceRTW", i1 false}
!287 = !{!"NumSamples", i8 0}
!288 = !{!"blendOptimizationMode"}
!289 = !{!"colorOutputMask"}
!290 = !{!"WaDisableVRS", i1 false}
!291 = !{!"csInfo", !292, !293, !294, !295, !66, !42, !43, !44, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !76, !307, !308, !309, !310}
!292 = !{!"maxWorkGroupSize", i32 0}
!293 = !{!"waveSize", i32 0}
!294 = !{!"ComputeShaderSecondCompile"}
!295 = !{!"forcedSIMDSize", i8 0}
!296 = !{!"forceSpillCompression", i1 false}
!297 = !{!"allowLowerSimd", i1 false}
!298 = !{!"disableSimd32Slicing", i1 false}
!299 = !{!"disableSplitOnSpill", i1 false}
!300 = !{!"enableNewSpillCostFunction", i1 false}
!301 = !{!"forceVISAPreSched", i1 false}
!302 = !{!"disableLocalIdOrderOptimizations", i1 false}
!303 = !{!"disableDispatchAlongY", i1 false}
!304 = !{!"neededThreadIdLayout", i1* null}
!305 = !{!"forceTileYWalk", i1 false}
!306 = !{!"atomicBranch", i32 0}
!307 = !{!"disableEarlyOut", i1 false}
!308 = !{!"walkOrderEnabled", i1 false}
!309 = !{!"walkOrderOverride", i32 0}
!310 = !{!"ResForHfPacking"}
!311 = !{!"msInfo", !312, !313, !314, !315, !316, !317, !318, !319, !320}
!312 = !{!"PrimitiveTopology", i32 3}
!313 = !{!"MaxNumOfPrimitives", i32 0}
!314 = !{!"MaxNumOfVertices", i32 0}
!315 = !{!"MaxNumOfPerPrimitiveOutputs", i32 0}
!316 = !{!"MaxNumOfPerVertexOutputs", i32 0}
!317 = !{!"WorkGroupSize", i32 0}
!318 = !{!"WorkGroupMemorySizeInBytes", i32 0}
!319 = !{!"IndexFormat", i32 6}
!320 = !{!"SubgroupSize", i32 0}
!321 = !{!"taskInfo", !322, !317, !318, !320}
!322 = !{!"MaxNumOfOutputs", i32 0}
!323 = !{!"NBarrierCnt", i32 0}
!324 = !{!"rtInfo", !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !157}
!325 = !{!"RayQueryAllocSizeInBytes", i32 0}
!326 = !{!"NumContinuations", i32 0}
!327 = !{!"RTAsyncStackAddrspace", i32 -1}
!328 = !{!"RTAsyncStackSurfaceStateOffset", i1* null}
!329 = !{!"SWHotZoneAddrspace", i32 -1}
!330 = !{!"SWHotZoneSurfaceStateOffset", i1* null}
!331 = !{!"SWStackAddrspace", i32 -1}
!332 = !{!"SWStackSurfaceStateOffset", i1* null}
!333 = !{!"RTSyncStackAddrspace", i32 -1}
!334 = !{!"RTSyncStackSurfaceStateOffset", i1* null}
!335 = !{!"doSyncDispatchRays", i1 false}
!336 = !{!"MemStyle", !"Xe"}
!337 = !{!"GlobalDataStyle", !"Xe"}
!338 = !{!"uberTileDimensions", i1* null}
!339 = !{!"CurUniqueIndirectIdx", i32 0}
!340 = !{!"inlineDynTextures"}
!341 = !{!"inlineResInfoData"}
!342 = !{!"immConstant", !343, !344, !345}
!343 = !{!"data"}
!344 = !{!"sizes"}
!345 = !{!"zeroIdxs"}
!346 = !{!"stringConstants"}
!347 = !{!"inlineBuffers", !348, !352, !353}
!348 = !{!"inlineBuffersVec[0]", !349, !350, !351}
!349 = !{!"alignment", i32 0}
!350 = !{!"allocSize", i64 0}
!351 = !{!"Buffer"}
!352 = !{!"inlineBuffersVec[1]", !349, !350, !351}
!353 = !{!"inlineBuffersVec[2]", !349, !350, !351}
!354 = !{!"GlobalPointerProgramBinaryInfos"}
!355 = !{!"ConstantPointerProgramBinaryInfos"}
!356 = !{!"GlobalBufferAddressRelocInfo"}
!357 = !{!"ConstantBufferAddressRelocInfo"}
!358 = !{!"forceLscCacheList"}
!359 = !{!"SrvMap"}
!360 = !{!"RasterizerOrderedByteAddressBuffer"}
!361 = !{!"RasterizerOrderedViews"}
!362 = !{!"MinNOSPushConstantSize", i32 0}
!363 = !{!"inlineProgramScopeOffsets"}
!364 = !{!"shaderData", !365}
!365 = !{!"numReplicas", i32 0}
!366 = !{!"URBInfo", !367, !368, !369}
!367 = !{!"has64BVertexHeaderInput", i1 false}
!368 = !{!"has64BVertexHeaderOutput", i1 false}
!369 = !{!"hasVertexHeader", i1 true}
!370 = !{!"UseBindlessImage", i1 true}
!371 = !{!"UseBindlessImageWithSamplerTracking", i1 false}
!372 = !{!"enableRangeReduce", i1 false}
!373 = !{!"allowMatchMadOptimizationforVS", i1 false}
!374 = !{!"disableMatchMadOptimizationForCS", i1 false}
!375 = !{!"disableMemOptforNegativeOffsetLoads", i1 false}
!376 = !{!"enableThreeWayLoadSpiltOpt", i1 false}
!377 = !{!"statefulResourcesNotAliased", i1 false}
!378 = !{!"disableMixMode", i1 false}
!379 = !{!"genericAccessesResolved", i1 false}
!380 = !{!"disableSeparateSpillPvtScratchSpace", i1 false}
!381 = !{!"enableSeparateSpillPvtScratchSpace", i1 false}
!382 = !{!"disableSeparateScratchWA", i1 false}
!383 = !{!"enableRemoveUnusedTGMFence", i1 false}
!384 = !{!"PrivateMemoryPerFG"}
!385 = !{!"m_OptsToDisable"}
!386 = !{!"capabilities", !387}
!387 = !{!"globalVariableDecorationsINTEL", i1 false}
!388 = !{!"extensions", !389}
!389 = !{!"spvINTELBindlessImages", i1 false}
!390 = !{!"m_ShaderResourceViewMcsMask", !391, !392}
!391 = !{!"m_ShaderResourceViewMcsMaskVec[0]", i64 0}
!392 = !{!"m_ShaderResourceViewMcsMaskVec[1]", i64 0}
!393 = !{!"computedDepthMode", i32 0}
!394 = !{!"isHDCFastClearShader", i1 false}
!395 = !{!"argRegisterReservations", !396}
!396 = !{!"argRegisterReservationsVec[0]", i32 0}
!397 = !{!"SIMD16_SpillThreshold", i8 0}
!398 = !{!"SIMD32_SpillThreshold", i8 0}
!399 = !{!"m_CacheControlOption", !400, !401, !402, !403}
!400 = !{!"LscLoadCacheControlOverride", i8 0}
!401 = !{!"LscStoreCacheControlOverride", i8 0}
!402 = !{!"TgmLoadCacheControlOverride", i8 0}
!403 = !{!"TgmStoreCacheControlOverride", i8 0}
!404 = !{!"ModuleUsesBindless", i1 false}
!405 = !{!"predicationMap"}
!406 = !{!"lifeTimeStartMap"}
!407 = !{!"HitGroups"}
!408 = !{i32 2, i32 0}
!409 = !{!"clang version 15.0.7"}
!410 = !{i32 1, !"wchar_size", i32 4}
!411 = !{!412}
!412 = !{i32 44, i32 8}
!413 = !{!414}
!414 = !{i32 4469}
!415 = !{!414, !416}
!416 = !{i32 4470}
