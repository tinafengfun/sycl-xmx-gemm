; ------------------------------------------------
; OCL_asm7b1f6d582d6091ee_afterUnification.ll
; ------------------------------------------------
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "spir64-unknown-unknown"

%"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved" = type { <8 x float> }
%"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved" = type { <8 x i16> }
%"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved" = type { <8 x i32> }
%"class.sycl::_V1::ext::oneapi::bfloat16" = type { i16 }

@0 = internal unnamed_addr addrspace(2) constant [23 x i8] c"Pointer: %p, Type: %s\0A\00"
@1 = internal unnamed_addr addrspace(2) constant [23 x i8] c"Pointer: %p, Type: %s\0A\00"
@2 = internal unnamed_addr addrspace(2) constant [23 x i8] c"Pointer: %p, Type: %s\0A\00"

; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZZ16bench_v1_with_pfRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
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
  %17 = alloca [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], align 8, !spirv.Decorations !417
  %18 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], align 8, !spirv.Decorations !417
  %19 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], align 8, !spirv.Decorations !417
  %20 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], align 8, !spirv.Decorations !417
  %21 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], align 8, !spirv.Decorations !417
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
  %57 = shl nsw i32 %15, 6, !spirv.Decorations !419
  %58 = shl nuw nsw i32 %localThreadId5, 4
  %59 = and i32 %58, 4064
  %60 = add nuw nsw i32 %57, %59, !spirv.Decorations !419
  %61 = shl nsw i32 %10, 7, !spirv.Decorations !419
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
  %78 = mul nsw i32 %60, %3, !spirv.Decorations !419
  %79 = sext i32 %78 to i64
  %80 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %81 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %80, i64 %79
  %82 = shl nsw i32 %4, 1, !spirv.Decorations !419
  %83 = sext i32 %82 to i64
  %84 = shl nuw i32 %64, 1
  %85 = zext i32 %84 to i64
  %86 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %87 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %86, i64 %85
  %88 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18, i64 0, i64 0
  %89 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 0, i64 0
  %90 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20, i64 0, i64 0
  %91 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 0, i64 0
  %92 = shl nsw i32 %4, 1, !spirv.Decorations !419
  %93 = sext i32 %92 to i64
  br label %103

94:                                               ; preds = %99, %75
  %95 = phi i32 [ %102, %99 ], [ 0, %75 ]
  %96 = icmp ult i32 %95, 4
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = add nuw nsw i32 %73, 1, !spirv.Decorations !421
  br label %72

99:                                               ; preds = %94
  %100 = zext i32 %95 to i64
  %101 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 %76, i64 %100, i32 0
  store <8 x float> zeroinitializer, <8 x float>* %101, align 8
  %102 = add nuw nsw i32 %95, 1, !spirv.Decorations !421
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
  %111 = add nuw nsw i32 %104, 32, !spirv.Decorations !421
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
  %127 = mul nsw i64 %126, %83, !spirv.Decorations !419
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
  %176 = mul nsw i64 %175, %93, !spirv.Decorations !419
  %177 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %178 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %177, i64 %176
  %179 = or i32 %174, 8
  %180 = zext i32 %179 to i64
  %181 = mul nsw i64 %180, %93, !spirv.Decorations !419
  %182 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %183 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %182, i64 %181
  br label %213

184:                                              ; preds = %170
  %185 = zext i32 %171 to i64
  %186 = shl nuw nsw i32 %171, 3, !spirv.Decorations !421
  %187 = or i32 %60, %186
  %188 = mul nsw i32 %187, %3, !spirv.Decorations !419
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
  %212 = add nuw nsw i32 %171, 1, !spirv.Decorations !421
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
  %244 = add nuw nsw i32 %214, 1, !spirv.Decorations !421
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
  %261 = add nuw nsw i32 %246, 1, !spirv.Decorations !421
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
  %276 = add nuw nsw i32 %258, 1, !spirv.Decorations !421
  br label %257

277:                                              ; preds = %290, %106
  %278 = phi i32 [ %291, %290 ], [ 0, %106 ]
  %279 = icmp ult i32 %278, 4
  br i1 %279, label %280, label %326

280:                                              ; preds = %277
  %281 = zext i32 %278 to i64
  %282 = shl nuw nsw i32 %278, 3, !spirv.Decorations !421
  %283 = or i32 %60, %282
  %284 = mul nsw i32 %283, %4, !spirv.Decorations !419
  %285 = sext i32 %284 to i64
  %286 = getelementptr float, float addrspace(1)* %109, i64 %285
  br label %287

287:                                              ; preds = %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit, %280
  %288 = phi i32 [ %325, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit ], [ 0, %280 ]
  %289 = icmp ult i32 %288, 4
  br i1 %289, label %292, label %290

290:                                              ; preds = %287
  %291 = add nuw nsw i32 %278, 1, !spirv.Decorations !421
  br label %277

292:                                              ; preds = %287
  %293 = zext i32 %288 to i64
  %294 = shl nuw nsw i32 %288, 4, !spirv.Decorations !421
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
  br i1 %316, label %317, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit

317:                                              ; preds = %305, %292
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit: ; preds = %305, %317
  %318 = ptrtoint i8 addrspace(4)* %.ascast.i90 to i64
  %319 = and i64 %318, -64
  %320 = shl i32 %4, 2
  %321 = add i32 %320, -1
  %322 = trunc i64 %318 to i32
  %323 = lshr i32 %322, 2
  %324 = and i32 %323, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %319, i32 %321, i32 7, i32 %321, i32 %324, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %299)
  %325 = add nuw nsw i32 %288, 1, !spirv.Decorations !421
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

; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZZ19bench_v2_clean_nopfRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
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
  %17 = alloca [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], align 8, !spirv.Decorations !417
  %18 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], align 8, !spirv.Decorations !417
  %19 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], align 8, !spirv.Decorations !417
  %20 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], align 8, !spirv.Decorations !417
  %21 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], align 8, !spirv.Decorations !417
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
  %57 = shl nsw i32 %15, 6, !spirv.Decorations !419
  %58 = shl nuw nsw i32 %localThreadId5, 4
  %59 = and i32 %58, 4064
  %60 = add nuw nsw i32 %57, %59, !spirv.Decorations !419
  %61 = shl nsw i32 %10, 7, !spirv.Decorations !419
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

72:                                               ; preds = %87, %.preheader1
  %73 = phi i32 [ %88, %87 ], [ 0, %.preheader1 ]
  %74 = icmp ult i32 %73, 4
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = zext i32 %73 to i64
  br label %84

77:                                               ; preds = %72
  %78 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18, i64 0, i64 0
  %79 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 0, i64 0
  %80 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20, i64 0, i64 0
  %81 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 0, i64 0
  %82 = shl nsw i32 %4, 1, !spirv.Decorations !419
  %83 = sext i32 %82 to i64
  br label %93

84:                                               ; preds = %89, %75
  %85 = phi i32 [ %92, %89 ], [ 0, %75 ]
  %86 = icmp ult i32 %85, 4
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = add nuw nsw i32 %73, 1, !spirv.Decorations !421
  br label %72

89:                                               ; preds = %84
  %90 = zext i32 %85 to i64
  %91 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 %76, i64 %90, i32 0
  store <8 x float> zeroinitializer, <8 x float>* %91, align 8
  %92 = add nuw nsw i32 %85, 1, !spirv.Decorations !421
  br label %84

93:                                               ; preds = %214, %77
  %94 = phi i32 [ %219, %214 ], [ 0, %77 ]
  %95 = icmp slt i32 %94, %3
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = zext i32 %64 to i64
  %98 = bitcast i8 addrspace(1)* %2 to float addrspace(1)*
  %99 = getelementptr float, float addrspace(1)* %98, i64 %97
  br label %240

100:                                              ; preds = %93
  %101 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %101)
  br label %102

102:                                              ; preds = %102, %100
  %103 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* [ %78, %100 ], [ %104, %102 ]
  %104 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* %103, i64 1
  %105 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18, i64 1, i64 0
  %106 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* %104, %105
  br i1 %106, label %107, label %102

107:                                              ; preds = %102
  %108 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %108)
  br label %109

109:                                              ; preds = %109, %107
  %110 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* [ %79, %107 ], [ %111, %109 ]
  %111 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* %110, i64 1
  %112 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 1, i64 0
  %113 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* %111, %112
  br i1 %113, label %114, label %109

114:                                              ; preds = %109
  %115 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %115)
  br label %116

116:                                              ; preds = %116, %114
  %117 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* [ %80, %114 ], [ %118, %116 ]
  %118 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* %117, i64 1
  %119 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20, i64 1, i64 0
  %120 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* %118, %119
  br i1 %120, label %121, label %116

121:                                              ; preds = %116
  %122 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %122)
  br label %123

123:                                              ; preds = %123, %121
  %124 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* [ %81, %121 ], [ %125, %123 ]
  %125 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* %124, i64 1
  %126 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 1, i64 0
  %127 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* %125, %126
  br i1 %127, label %128, label %123

128:                                              ; preds = %123
  %129 = zext i32 %94 to i64
  %130 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %131 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %130, i64 %129
  br label %132

132:                                              ; preds = %146, %128
  %133 = phi i32 [ %174, %146 ], [ 0, %128 ]
  %134 = icmp ult i32 %133, 4
  br i1 %134, label %146, label %135

135:                                              ; preds = %132
  %136 = lshr exact i32 %94, 1
  %137 = zext i32 %136 to i64
  %138 = mul nsw i64 %137, %83, !spirv.Decorations !419
  %139 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %140 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %139, i64 %138
  %141 = or i32 %136, 8
  %142 = zext i32 %141 to i64
  %143 = mul nsw i64 %142, %83, !spirv.Decorations !419
  %144 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %145 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %144, i64 %143
  br label %175

146:                                              ; preds = %132
  %147 = zext i32 %133 to i64
  %148 = shl nuw nsw i32 %133, 3, !spirv.Decorations !421
  %149 = or i32 %60, %148
  %150 = mul nsw i32 %149, %3, !spirv.Decorations !419
  %151 = sext i32 %150 to i64
  %152 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %131, i64 %151
  %153 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %152 to i8 addrspace(1)*
  %.ascast.i = addrspacecast i8 addrspace(1)* %153 to i8 addrspace(4)*
  %154 = ptrtoint i8 addrspace(4)* %.ascast.i to i64
  %155 = and i64 %154, -64
  %156 = trunc i64 %154 to i32
  %157 = lshr i32 %156, 1
  %158 = and i32 %157, 31
  %159 = shl i32 %3, 1
  %160 = add i32 %159, -1
  %161 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %155, i32 %160, i32 7, i32 %160, i32 %158, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %162 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18, i64 0, i64 %147, i32 0
  store <8 x i16> %161, <8 x i16>* %162, align 8
  %163 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %152, i64 16
  %164 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %163 to i8 addrspace(1)*
  %.ascast.i86 = addrspacecast i8 addrspace(1)* %164 to i8 addrspace(4)*
  %165 = ptrtoint i8 addrspace(4)* %.ascast.i86 to i64
  %166 = and i64 %165, -64
  %167 = trunc i64 %165 to i32
  %168 = lshr i32 %167, 1
  %169 = and i32 %168, 31
  %170 = shl i32 %3, 1
  %171 = add i32 %170, -1
  %172 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %166, i32 %171, i32 7, i32 %171, i32 %169, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %173 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 0, i64 %147, i32 0
  store <8 x i16> %172, <8 x i16>* %173, align 8
  %174 = add nuw nsw i32 %133, 1, !spirv.Decorations !421
  br label %132

175:                                              ; preds = %178, %135
  %176 = phi i32 [ %206, %178 ], [ 0, %135 ]
  %177 = icmp ult i32 %176, 4
  br i1 %177, label %178, label %.preheader

.preheader:                                       ; preds = %175
  br label %207

178:                                              ; preds = %175
  %179 = zext i32 %176 to i64
  %180 = shl i32 %176, 5
  %181 = shl nuw i32 %64, 1
  %182 = or i32 %180, %181
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %140, i64 %183
  %185 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %184 to i8 addrspace(1)*
  %.ascast.i87 = addrspacecast i8 addrspace(1)* %185 to i8 addrspace(4)*
  %186 = ptrtoint i8 addrspace(4)* %.ascast.i87 to i64
  %187 = and i64 %186, -64
  %188 = trunc i64 %186 to i32
  %189 = lshr i32 %188, 2
  %190 = and i32 %189, 15
  %191 = shl i32 %4, 2
  %192 = add i32 %191, -1
  %193 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %187, i32 %192, i32 7, i32 %192, i32 %190, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %194 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20, i64 0, i64 %179, i32 0
  store <8 x i32> %193, <8 x i32>* %194, align 8
  %195 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %145, i64 %183
  %196 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %195 to i8 addrspace(1)*
  %.ascast.i88 = addrspacecast i8 addrspace(1)* %196 to i8 addrspace(4)*
  %197 = ptrtoint i8 addrspace(4)* %.ascast.i88 to i64
  %198 = and i64 %197, -64
  %199 = trunc i64 %197 to i32
  %200 = lshr i32 %199, 2
  %201 = and i32 %200, 15
  %202 = shl i32 %4, 2
  %203 = add i32 %202, -1
  %204 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %198, i32 %203, i32 7, i32 %203, i32 %201, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %205 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 0, i64 %179, i32 0
  store <8 x i32> %204, <8 x i32>* %205, align 8
  %206 = add nuw nsw i32 %176, 1, !spirv.Decorations !421
  br label %175

207:                                              ; preds = %223, %.preheader
  %208 = phi i32 [ %224, %223 ], [ 0, %.preheader ]
  %209 = icmp ult i32 %208, 4
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = zext i32 %208 to i64
  %212 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18, i64 0, i64 %211, i32 0
  %213 = load <8 x i16>, <8 x i16>* %212, align 8
  br label %220

214:                                              ; preds = %207
  %215 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21 to i8*
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %215)
  %216 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20 to i8*
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %216)
  %217 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %217)
  %218 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %218)
  %219 = add nuw nsw i32 %94, 32, !spirv.Decorations !421
  br label %93

220:                                              ; preds = %225, %210
  %221 = phi i32 [ %239, %225 ], [ 0, %210 ]
  %222 = icmp ult i32 %221, 4
  br i1 %222, label %225, label %223

223:                                              ; preds = %220
  %224 = add nuw nsw i32 %208, 1, !spirv.Decorations !421
  br label %207

225:                                              ; preds = %220
  %226 = zext i32 %221 to i64
  %227 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20, i64 0, i64 %226, i32 0
  %228 = load <8 x i32>, <8 x i32>* %227, align 8
  %229 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 %211, i64 %226
  %230 = getelementptr %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* %229, i64 0, i32 0
  %231 = load <8 x float>, <8 x float>* %230, align 8
  %232 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %231, <8 x i16> %213, <8 x i32> %228, i32 11, i32 11, i32 8, i32 8, i1 false)
  %233 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 0, i64 %211, i32 0
  %234 = load <8 x i16>, <8 x i16>* %233, align 8
  %235 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 0, i64 %226, i32 0
  %236 = load <8 x i32>, <8 x i32>* %235, align 8
  %237 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %232, <8 x i16> %234, <8 x i32> %236, i32 11, i32 11, i32 8, i32 8, i1 false)
  %238 = getelementptr %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* %229, i64 0, i32 0
  store <8 x float> %237, <8 x float>* %238, align 8
  %239 = add nuw nsw i32 %221, 1, !spirv.Decorations !421
  br label %220

240:                                              ; preds = %253, %96
  %241 = phi i32 [ %254, %253 ], [ 0, %96 ]
  %242 = icmp ult i32 %241, 4
  br i1 %242, label %243, label %289

243:                                              ; preds = %240
  %244 = zext i32 %241 to i64
  %245 = shl nuw nsw i32 %241, 3, !spirv.Decorations !421
  %246 = or i32 %60, %245
  %247 = mul nsw i32 %246, %4, !spirv.Decorations !419
  %248 = sext i32 %247 to i64
  %249 = getelementptr float, float addrspace(1)* %99, i64 %248
  br label %250

250:                                              ; preds = %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit, %243
  %251 = phi i32 [ %288, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit ], [ 0, %243 ]
  %252 = icmp ult i32 %251, 4
  br i1 %252, label %255, label %253

253:                                              ; preds = %250
  %254 = add nuw nsw i32 %241, 1, !spirv.Decorations !421
  br label %240

255:                                              ; preds = %250
  %256 = zext i32 %251 to i64
  %257 = shl nuw nsw i32 %251, 4, !spirv.Decorations !421
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds float, float addrspace(1)* %249, i64 %258
  %260 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 %244, i64 %256, i32 0
  %261 = bitcast <8 x float>* %260 to <8 x i32>*
  %262 = load <8 x i32>, <8 x i32>* %261, align 8
  %263 = bitcast float addrspace(1)* %259 to i8 addrspace(1)*
  %.ascast.i89 = addrspacecast i8 addrspace(1)* %263 to i8 addrspace(4)*
  %264 = mul i32 %7, %6
  %265 = mul i32 %264, %8
  %266 = and i32 %265, 15
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %280, label %268

268:                                              ; preds = %255
  %localIdZ13 = zext i16 %localIdZ to i32
  %269 = mul i32 %7, %localIdZ13
  %localIdY15 = zext i16 %localIdY to i32
  %270 = add i32 %269, %localIdY15
  %271 = mul i32 %270, %6
  %localIdX17 = zext i16 %localIdX to i32
  %272 = add i32 %271, %localIdX17
  %273 = lshr i32 %272, 4
  %274 = mul i32 %7, %6
  %275 = mul i32 %274, %8
  %276 = add i32 %275, 15
  %277 = lshr i32 %276, 4
  %278 = add nsw i32 %277, -1
  %279 = icmp ult i32 %273, %278
  br i1 %279, label %280, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit

280:                                              ; preds = %268, %255
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit: ; preds = %268, %280
  %281 = ptrtoint i8 addrspace(4)* %.ascast.i89 to i64
  %282 = and i64 %281, -64
  %283 = shl i32 %4, 2
  %284 = add i32 %283, -1
  %285 = trunc i64 %281 to i32
  %286 = lshr i32 %285, 2
  %287 = and i32 %286, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %282, i32 %284, i32 7, i32 %284, i32 %287, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %262)
  %288 = add nuw nsw i32 %251, 1, !spirv.Decorations !421
  br label %250

289:                                              ; preds = %240
  %290 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %290)
  ret void
}

; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZZ16bench_v3_if_onlyRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
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
  %17 = alloca [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], align 8, !spirv.Decorations !417
  %18 = alloca i32, align 4, !spirv.Decorations !423
  %19 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], align 8, !spirv.Decorations !417
  %20 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], align 8, !spirv.Decorations !417
  %21 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], align 8, !spirv.Decorations !417
  %22 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], align 8, !spirv.Decorations !417
  %23 = bitcast <8 x i32> %r0 to <32 x i8>
  %24 = extractelement <32 x i8> %23, i32 0
  %25 = extractelement <32 x i8> %23, i32 1
  %26 = extractelement <32 x i8> %23, i32 2
  %27 = extractelement <32 x i8> %23, i32 3
  %28 = extractelement <32 x i8> %23, i32 4
  %29 = extractelement <32 x i8> %23, i32 5
  %30 = extractelement <32 x i8> %23, i32 6
  %31 = extractelement <32 x i8> %23, i32 7
  %32 = extractelement <32 x i8> %23, i32 8
  %33 = extractelement <32 x i8> %23, i32 9
  %34 = extractelement <32 x i8> %23, i32 10
  %35 = extractelement <32 x i8> %23, i32 11
  %36 = extractelement <32 x i8> %23, i32 12
  %37 = extractelement <32 x i8> %23, i32 13
  %38 = extractelement <32 x i8> %23, i32 14
  %39 = extractelement <32 x i8> %23, i32 15
  %40 = extractelement <32 x i8> %23, i32 16
  %41 = extractelement <32 x i8> %23, i32 17
  %42 = extractelement <32 x i8> %23, i32 18
  %43 = extractelement <32 x i8> %23, i32 19
  %44 = extractelement <32 x i8> %23, i32 20
  %45 = extractelement <32 x i8> %23, i32 21
  %46 = extractelement <32 x i8> %23, i32 22
  %47 = extractelement <32 x i8> %23, i32 23
  %48 = extractelement <32 x i8> %23, i32 24
  %49 = extractelement <32 x i8> %23, i32 25
  %50 = extractelement <32 x i8> %23, i32 26
  %51 = extractelement <32 x i8> %23, i32 27
  %52 = extractelement <32 x i8> %23, i32 28
  %53 = extractelement <32 x i8> %23, i32 29
  %54 = extractelement <32 x i8> %23, i32 30
  %55 = extractelement <32 x i8> %23, i32 31
  %localThreadId5 = zext i8 %32 to i32
  %56 = icmp sgt i32 %15, -1
  call void @llvm.assume(i1 %56)
  %57 = icmp sgt i32 %10, -1
  call void @llvm.assume(i1 %57)
  %58 = shl nsw i32 %15, 6, !spirv.Decorations !419
  %59 = shl nuw nsw i32 %localThreadId5, 4
  %60 = and i32 %59, 4064
  %61 = add nuw nsw i32 %58, %60, !spirv.Decorations !419
  %62 = shl nsw i32 %10, 7, !spirv.Decorations !419
  %63 = shl nuw nsw i32 %localThreadId5, 6
  %64 = and i32 %63, 64
  %65 = or i32 %62, %64
  %66 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %66)
  %67 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 0, i64 0
  br label %68

68:                                               ; preds = %68, %5
  %69 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* [ %67, %5 ], [ %70, %68 ]
  %70 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* %69, i64 1
  %71 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 1, i64 0, i64 0
  %72 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* %70, %71
  br i1 %72, label %.preheader1, label %68

.preheader1:                                      ; preds = %68
  br label %73

73:                                               ; preds = %88, %.preheader1
  %74 = phi i32 [ %89, %88 ], [ 0, %.preheader1 ]
  %75 = icmp ult i32 %74, 4
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = zext i32 %74 to i64
  br label %85

78:                                               ; preds = %73
  %79 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 0, i64 0
  %80 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %20, i64 0, i64 0
  %81 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 0, i64 0
  %82 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %22, i64 0, i64 0
  %83 = shl nsw i32 %4, 1, !spirv.Decorations !419
  %84 = sext i32 %83 to i64
  br label %94

85:                                               ; preds = %90, %76
  %86 = phi i32 [ %93, %90 ], [ 0, %76 ]
  %87 = icmp ult i32 %86, 4
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = add nuw nsw i32 %74, 1, !spirv.Decorations !421
  br label %73

90:                                               ; preds = %85
  %91 = zext i32 %86 to i64
  %92 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 %77, i64 %91, i32 0
  store <8 x float> zeroinitializer, <8 x float>* %92, align 8
  %93 = add nuw nsw i32 %86, 1, !spirv.Decorations !421
  br label %85

94:                                               ; preds = %219, %78
  %95 = phi i32 [ %102, %219 ], [ 0, %78 ]
  %96 = icmp slt i32 %95, %3
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = zext i32 %65 to i64
  %99 = bitcast i8 addrspace(1)* %2 to float addrspace(1)*
  %100 = getelementptr float, float addrspace(1)* %99, i64 %98
  br label %244

101:                                              ; preds = %94
  %102 = add nuw nsw i32 %95, 32, !spirv.Decorations !421
  %103 = icmp slt i32 %102, %3
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  %.0.sroa_cast29 = bitcast i32* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %.0.sroa_cast29)
  store volatile i32 %102, i32* %18, align 4
  %.0..0. = load volatile i32, i32* %18, align 4
  %.0.sroa_cast30 = bitcast i32* %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %.0.sroa_cast30)
  br label %105

105:                                              ; preds = %104, %101
  %106 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %106)
  br label %107

107:                                              ; preds = %107, %105
  %108 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* [ %79, %105 ], [ %109, %107 ]
  %109 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* %108, i64 1
  %110 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 1, i64 0
  %111 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* %109, %110
  br i1 %111, label %112, label %107

112:                                              ; preds = %107
  %113 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %113)
  br label %114

114:                                              ; preds = %114, %112
  %115 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* [ %80, %112 ], [ %116, %114 ]
  %116 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* %115, i64 1
  %117 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %20, i64 1, i64 0
  %118 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* %116, %117
  br i1 %118, label %119, label %114

119:                                              ; preds = %114
  %120 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %120)
  br label %121

121:                                              ; preds = %121, %119
  %122 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* [ %81, %119 ], [ %123, %121 ]
  %123 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* %122, i64 1
  %124 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 1, i64 0
  %125 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* %123, %124
  br i1 %125, label %126, label %121

126:                                              ; preds = %121
  %127 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %127)
  br label %128

128:                                              ; preds = %128, %126
  %129 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* [ %82, %126 ], [ %130, %128 ]
  %130 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* %129, i64 1
  %131 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %22, i64 1, i64 0
  %132 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* %130, %131
  br i1 %132, label %133, label %128

133:                                              ; preds = %128
  %134 = zext i32 %95 to i64
  %135 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %136 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %135, i64 %134
  br label %137

137:                                              ; preds = %151, %133
  %138 = phi i32 [ %179, %151 ], [ 0, %133 ]
  %139 = icmp ult i32 %138, 4
  br i1 %139, label %151, label %140

140:                                              ; preds = %137
  %141 = lshr exact i32 %95, 1
  %142 = zext i32 %141 to i64
  %143 = mul nsw i64 %142, %84, !spirv.Decorations !419
  %144 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %145 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %144, i64 %143
  %146 = or i32 %141, 8
  %147 = zext i32 %146 to i64
  %148 = mul nsw i64 %147, %84, !spirv.Decorations !419
  %149 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %150 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %149, i64 %148
  br label %180

151:                                              ; preds = %137
  %152 = zext i32 %138 to i64
  %153 = shl nuw nsw i32 %138, 3, !spirv.Decorations !421
  %154 = or i32 %61, %153
  %155 = mul nsw i32 %154, %3, !spirv.Decorations !419
  %156 = sext i32 %155 to i64
  %157 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %136, i64 %156
  %158 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %157 to i8 addrspace(1)*
  %.ascast.i = addrspacecast i8 addrspace(1)* %158 to i8 addrspace(4)*
  %159 = ptrtoint i8 addrspace(4)* %.ascast.i to i64
  %160 = and i64 %159, -64
  %161 = trunc i64 %159 to i32
  %162 = lshr i32 %161, 1
  %163 = and i32 %162, 31
  %164 = shl i32 %3, 1
  %165 = add i32 %164, -1
  %166 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %160, i32 %165, i32 7, i32 %165, i32 %163, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %167 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 0, i64 %152, i32 0
  store <8 x i16> %166, <8 x i16>* %167, align 8
  %168 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %157, i64 16
  %169 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %168 to i8 addrspace(1)*
  %.ascast.i86 = addrspacecast i8 addrspace(1)* %169 to i8 addrspace(4)*
  %170 = ptrtoint i8 addrspace(4)* %.ascast.i86 to i64
  %171 = and i64 %170, -64
  %172 = trunc i64 %170 to i32
  %173 = lshr i32 %172, 1
  %174 = and i32 %173, 31
  %175 = shl i32 %3, 1
  %176 = add i32 %175, -1
  %177 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %171, i32 %176, i32 7, i32 %176, i32 %174, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %178 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %20, i64 0, i64 %152, i32 0
  store <8 x i16> %177, <8 x i16>* %178, align 8
  %179 = add nuw nsw i32 %138, 1, !spirv.Decorations !421
  br label %137

180:                                              ; preds = %183, %140
  %181 = phi i32 [ %211, %183 ], [ 0, %140 ]
  %182 = icmp ult i32 %181, 4
  br i1 %182, label %183, label %.preheader

.preheader:                                       ; preds = %180
  br label %212

183:                                              ; preds = %180
  %184 = zext i32 %181 to i64
  %185 = shl i32 %181, 5
  %186 = shl nuw i32 %65, 1
  %187 = or i32 %185, %186
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %145, i64 %188
  %190 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %189 to i8 addrspace(1)*
  %.ascast.i87 = addrspacecast i8 addrspace(1)* %190 to i8 addrspace(4)*
  %191 = ptrtoint i8 addrspace(4)* %.ascast.i87 to i64
  %192 = and i64 %191, -64
  %193 = trunc i64 %191 to i32
  %194 = lshr i32 %193, 2
  %195 = and i32 %194, 15
  %196 = shl i32 %4, 2
  %197 = add i32 %196, -1
  %198 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %192, i32 %197, i32 7, i32 %197, i32 %195, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %199 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 0, i64 %184, i32 0
  store <8 x i32> %198, <8 x i32>* %199, align 8
  %200 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %150, i64 %188
  %201 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %200 to i8 addrspace(1)*
  %.ascast.i88 = addrspacecast i8 addrspace(1)* %201 to i8 addrspace(4)*
  %202 = ptrtoint i8 addrspace(4)* %.ascast.i88 to i64
  %203 = and i64 %202, -64
  %204 = trunc i64 %202 to i32
  %205 = lshr i32 %204, 2
  %206 = and i32 %205, 15
  %207 = shl i32 %4, 2
  %208 = add i32 %207, -1
  %209 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %203, i32 %208, i32 7, i32 %208, i32 %206, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %210 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %22, i64 0, i64 %184, i32 0
  store <8 x i32> %209, <8 x i32>* %210, align 8
  %211 = add nuw nsw i32 %181, 1, !spirv.Decorations !421
  br label %180

212:                                              ; preds = %227, %.preheader
  %213 = phi i32 [ %228, %227 ], [ 0, %.preheader ]
  %214 = icmp ult i32 %213, 4
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = zext i32 %213 to i64
  %217 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 0, i64 %216, i32 0
  %218 = load <8 x i16>, <8 x i16>* %217, align 8
  br label %224

219:                                              ; preds = %212
  %220 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %22 to i8*
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %220)
  %221 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21 to i8*
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %221)
  %222 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %20 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %222)
  %223 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %223)
  br label %94

224:                                              ; preds = %229, %215
  %225 = phi i32 [ %243, %229 ], [ 0, %215 ]
  %226 = icmp ult i32 %225, 4
  br i1 %226, label %229, label %227

227:                                              ; preds = %224
  %228 = add nuw nsw i32 %213, 1, !spirv.Decorations !421
  br label %212

229:                                              ; preds = %224
  %230 = zext i32 %225 to i64
  %231 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 0, i64 %230, i32 0
  %232 = load <8 x i32>, <8 x i32>* %231, align 8
  %233 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 %216, i64 %230
  %234 = getelementptr %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* %233, i64 0, i32 0
  %235 = load <8 x float>, <8 x float>* %234, align 8
  %236 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %235, <8 x i16> %218, <8 x i32> %232, i32 11, i32 11, i32 8, i32 8, i1 false)
  %237 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %20, i64 0, i64 %216, i32 0
  %238 = load <8 x i16>, <8 x i16>* %237, align 8
  %239 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %22, i64 0, i64 %230, i32 0
  %240 = load <8 x i32>, <8 x i32>* %239, align 8
  %241 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %236, <8 x i16> %238, <8 x i32> %240, i32 11, i32 11, i32 8, i32 8, i1 false)
  %242 = getelementptr %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* %233, i64 0, i32 0
  store <8 x float> %241, <8 x float>* %242, align 8
  %243 = add nuw nsw i32 %225, 1, !spirv.Decorations !421
  br label %224

244:                                              ; preds = %257, %97
  %245 = phi i32 [ %258, %257 ], [ 0, %97 ]
  %246 = icmp ult i32 %245, 4
  br i1 %246, label %247, label %293

247:                                              ; preds = %244
  %248 = zext i32 %245 to i64
  %249 = shl nuw nsw i32 %245, 3, !spirv.Decorations !421
  %250 = or i32 %61, %249
  %251 = mul nsw i32 %250, %4, !spirv.Decorations !419
  %252 = sext i32 %251 to i64
  %253 = getelementptr float, float addrspace(1)* %100, i64 %252
  br label %254

254:                                              ; preds = %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit, %247
  %255 = phi i32 [ %292, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit ], [ 0, %247 ]
  %256 = icmp ult i32 %255, 4
  br i1 %256, label %259, label %257

257:                                              ; preds = %254
  %258 = add nuw nsw i32 %245, 1, !spirv.Decorations !421
  br label %244

259:                                              ; preds = %254
  %260 = zext i32 %255 to i64
  %261 = shl nuw nsw i32 %255, 4, !spirv.Decorations !421
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds float, float addrspace(1)* %253, i64 %262
  %264 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 %248, i64 %260, i32 0
  %265 = bitcast <8 x float>* %264 to <8 x i32>*
  %266 = load <8 x i32>, <8 x i32>* %265, align 8
  %267 = bitcast float addrspace(1)* %263 to i8 addrspace(1)*
  %.ascast.i89 = addrspacecast i8 addrspace(1)* %267 to i8 addrspace(4)*
  %268 = mul i32 %7, %6
  %269 = mul i32 %268, %8
  %270 = and i32 %269, 15
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %284, label %272

272:                                              ; preds = %259
  %localIdZ13 = zext i16 %localIdZ to i32
  %273 = mul i32 %7, %localIdZ13
  %localIdY15 = zext i16 %localIdY to i32
  %274 = add i32 %273, %localIdY15
  %275 = mul i32 %274, %6
  %localIdX17 = zext i16 %localIdX to i32
  %276 = add i32 %275, %localIdX17
  %277 = lshr i32 %276, 4
  %278 = mul i32 %7, %6
  %279 = mul i32 %278, %8
  %280 = add i32 %279, 15
  %281 = lshr i32 %280, 4
  %282 = add nsw i32 %281, -1
  %283 = icmp ult i32 %277, %282
  br i1 %283, label %284, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit

284:                                              ; preds = %272, %259
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.267.exit: ; preds = %272, %284
  %285 = ptrtoint i8 addrspace(4)* %.ascast.i89 to i64
  %286 = and i64 %285, -64
  %287 = shl i32 %4, 2
  %288 = add i32 %287, -1
  %289 = trunc i64 %285 to i32
  %290 = lshr i32 %289, 2
  %291 = and i32 %290, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %286, i32 %288, i32 7, i32 %288, i32 %291, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %266)
  %292 = add nuw nsw i32 %255, 1, !spirv.Decorations !421
  br label %254

293:                                              ; preds = %244
  %294 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %294)
  ret void
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
!opencl.ocl.version = !{!414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414}
!opencl.spir.version = !{!414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414, !414}
!llvm.ident = !{!415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415}
!llvm.module.flags = !{!416}

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
!26 = !{!"ModuleMD", !27, !28, !130, !249, !280, !297, !317, !327, !329, !330, !345, !346, !347, !348, !352, !353, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !372, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !197, !390, !391, !392, !394, !396, !399, !400, !401, !403, !404, !405, !410, !411, !412, !413}
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
!130 = !{!"FuncMD", !131, !132, !245, !246, !247, !248}
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
!244 = !{!"m_OptsToDisablePerFunc"}
!245 = !{!"FuncMDMap[1]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ19bench_v2_clean_nopfRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_}
!246 = !{!"FuncMDValue[1]", !133, !134, !138, !139, !140, !162, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !213, !219, !225, !231, !237, !243, !244}
!247 = !{!"FuncMDMap[2]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ16bench_v3_if_onlyRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS0_7handlerEE_clES7_EUlNS0_7nd_itemILi2EEEE_}
!248 = !{!"FuncMDValue[2]", !133, !134, !138, !139, !140, !162, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !213, !219, !225, !231, !237, !243, !244}
!249 = !{!"pushInfo", !250, !251, !252, !256, !257, !258, !259, !260, !261, !262, !263, !276, !277, !278, !279}
!250 = !{!"pushableAddresses"}
!251 = !{!"bindlessPushInfo"}
!252 = !{!"dynamicBufferInfo", !253, !254, !255}
!253 = !{!"firstIndex", i32 0}
!254 = !{!"numOffsets", i32 0}
!255 = !{!"forceDisabled", i1 false}
!256 = !{!"MaxNumberOfPushedBuffers", i32 0}
!257 = !{!"inlineConstantBufferSlot", i32 -1}
!258 = !{!"inlineConstantBufferOffset", i32 -1}
!259 = !{!"inlineConstantBufferGRFOffset", i32 -1}
!260 = !{!"constants"}
!261 = !{!"inputs"}
!262 = !{!"constantReg"}
!263 = !{!"simplePushInfoArr", !264, !273, !274, !275}
!264 = !{!"simplePushInfoArrVec[0]", !265, !266, !267, !268, !269, !270, !271, !272}
!265 = !{!"cbIdx", i32 0}
!266 = !{!"pushableAddressGrfOffset", i32 -1}
!267 = !{!"pushableOffsetGrfOffset", i32 -1}
!268 = !{!"offset", i32 0}
!269 = !{!"size", i32 0}
!270 = !{!"isStateless", i1 false}
!271 = !{!"isBindless", i1 false}
!272 = !{!"simplePushLoads"}
!273 = !{!"simplePushInfoArrVec[1]", !265, !266, !267, !268, !269, !270, !271, !272}
!274 = !{!"simplePushInfoArrVec[2]", !265, !266, !267, !268, !269, !270, !271, !272}
!275 = !{!"simplePushInfoArrVec[3]", !265, !266, !267, !268, !269, !270, !271, !272}
!276 = !{!"simplePushBufferUsed", i32 0}
!277 = !{!"pushAnalysisWIInfos"}
!278 = !{!"inlineRTGlobalPtrOffset", i32 0}
!279 = !{!"rtSyncSurfPtrOffset", i32 0}
!280 = !{!"psInfo", !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296}
!281 = !{!"BlendStateDisabledMask", i8 0}
!282 = !{!"SkipSrc0Alpha", i1 false}
!283 = !{!"DualSourceBlendingDisabled", i1 false}
!284 = !{!"ForceEnableSimd32", i1 false}
!285 = !{!"DisableSimd32WithDiscard", i1 false}
!286 = !{!"outputDepth", i1 false}
!287 = !{!"outputStencil", i1 false}
!288 = !{!"outputMask", i1 false}
!289 = !{!"blendToFillEnabled", i1 false}
!290 = !{!"forceEarlyZ", i1 false}
!291 = !{!"hasVersionedLoop", i1 false}
!292 = !{!"forceSingleSourceRTWAfterDualSourceRTW", i1 false}
!293 = !{!"NumSamples", i8 0}
!294 = !{!"blendOptimizationMode"}
!295 = !{!"colorOutputMask"}
!296 = !{!"WaDisableVRS", i1 false}
!297 = !{!"csInfo", !298, !299, !300, !301, !68, !44, !45, !46, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !78, !313, !314, !315, !316}
!298 = !{!"maxWorkGroupSize", i32 0}
!299 = !{!"waveSize", i32 0}
!300 = !{!"ComputeShaderSecondCompile"}
!301 = !{!"forcedSIMDSize", i8 0}
!302 = !{!"forceSpillCompression", i1 false}
!303 = !{!"allowLowerSimd", i1 false}
!304 = !{!"disableSimd32Slicing", i1 false}
!305 = !{!"disableSplitOnSpill", i1 false}
!306 = !{!"enableNewSpillCostFunction", i1 false}
!307 = !{!"forceVISAPreSched", i1 false}
!308 = !{!"disableLocalIdOrderOptimizations", i1 false}
!309 = !{!"disableDispatchAlongY", i1 false}
!310 = !{!"neededThreadIdLayout", i1* null}
!311 = !{!"forceTileYWalk", i1 false}
!312 = !{!"atomicBranch", i32 0}
!313 = !{!"disableEarlyOut", i1 false}
!314 = !{!"walkOrderEnabled", i1 false}
!315 = !{!"walkOrderOverride", i32 0}
!316 = !{!"ResForHfPacking"}
!317 = !{!"msInfo", !318, !319, !320, !321, !322, !323, !324, !325, !326}
!318 = !{!"PrimitiveTopology", i32 3}
!319 = !{!"MaxNumOfPrimitives", i32 0}
!320 = !{!"MaxNumOfVertices", i32 0}
!321 = !{!"MaxNumOfPerPrimitiveOutputs", i32 0}
!322 = !{!"MaxNumOfPerVertexOutputs", i32 0}
!323 = !{!"WorkGroupSize", i32 0}
!324 = !{!"WorkGroupMemorySizeInBytes", i32 0}
!325 = !{!"IndexFormat", i32 6}
!326 = !{!"SubgroupSize", i32 0}
!327 = !{!"taskInfo", !328, !323, !324, !326}
!328 = !{!"MaxNumOfOutputs", i32 0}
!329 = !{!"NBarrierCnt", i32 0}
!330 = !{!"rtInfo", !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !159}
!331 = !{!"RayQueryAllocSizeInBytes", i32 0}
!332 = !{!"NumContinuations", i32 0}
!333 = !{!"RTAsyncStackAddrspace", i32 -1}
!334 = !{!"RTAsyncStackSurfaceStateOffset", i1* null}
!335 = !{!"SWHotZoneAddrspace", i32 -1}
!336 = !{!"SWHotZoneSurfaceStateOffset", i1* null}
!337 = !{!"SWStackAddrspace", i32 -1}
!338 = !{!"SWStackSurfaceStateOffset", i1* null}
!339 = !{!"RTSyncStackAddrspace", i32 -1}
!340 = !{!"RTSyncStackSurfaceStateOffset", i1* null}
!341 = !{!"doSyncDispatchRays", i1 false}
!342 = !{!"MemStyle", !"Xe"}
!343 = !{!"GlobalDataStyle", !"Xe"}
!344 = !{!"uberTileDimensions", i1* null}
!345 = !{!"CurUniqueIndirectIdx", i32 0}
!346 = !{!"inlineDynTextures"}
!347 = !{!"inlineResInfoData"}
!348 = !{!"immConstant", !349, !350, !351}
!349 = !{!"data"}
!350 = !{!"sizes"}
!351 = !{!"zeroIdxs"}
!352 = !{!"stringConstants"}
!353 = !{!"inlineBuffers", !354, !358, !359}
!354 = !{!"inlineBuffersVec[0]", !355, !356, !357}
!355 = !{!"alignment", i32 0}
!356 = !{!"allocSize", i64 0}
!357 = !{!"Buffer"}
!358 = !{!"inlineBuffersVec[1]", !355, !356, !357}
!359 = !{!"inlineBuffersVec[2]", !355, !356, !357}
!360 = !{!"GlobalPointerProgramBinaryInfos"}
!361 = !{!"ConstantPointerProgramBinaryInfos"}
!362 = !{!"GlobalBufferAddressRelocInfo"}
!363 = !{!"ConstantBufferAddressRelocInfo"}
!364 = !{!"forceLscCacheList"}
!365 = !{!"SrvMap"}
!366 = !{!"RasterizerOrderedByteAddressBuffer"}
!367 = !{!"RasterizerOrderedViews"}
!368 = !{!"MinNOSPushConstantSize", i32 0}
!369 = !{!"inlineProgramScopeOffsets"}
!370 = !{!"shaderData", !371}
!371 = !{!"numReplicas", i32 0}
!372 = !{!"URBInfo", !373, !374, !375}
!373 = !{!"has64BVertexHeaderInput", i1 false}
!374 = !{!"has64BVertexHeaderOutput", i1 false}
!375 = !{!"hasVertexHeader", i1 true}
!376 = !{!"UseBindlessImage", i1 true}
!377 = !{!"UseBindlessImageWithSamplerTracking", i1 false}
!378 = !{!"enableRangeReduce", i1 false}
!379 = !{!"allowMatchMadOptimizationforVS", i1 false}
!380 = !{!"disableMatchMadOptimizationForCS", i1 false}
!381 = !{!"disableMemOptforNegativeOffsetLoads", i1 false}
!382 = !{!"enableThreeWayLoadSpiltOpt", i1 false}
!383 = !{!"statefulResourcesNotAliased", i1 false}
!384 = !{!"disableMixMode", i1 false}
!385 = !{!"genericAccessesResolved", i1 false}
!386 = !{!"disableSeparateSpillPvtScratchSpace", i1 false}
!387 = !{!"enableSeparateSpillPvtScratchSpace", i1 false}
!388 = !{!"disableSeparateScratchWA", i1 false}
!389 = !{!"enableRemoveUnusedTGMFence", i1 false}
!390 = !{!"PrivateMemoryPerFG"}
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
!418 = !{i32 44, i32 8}
!419 = !{!420}
!420 = !{i32 4469}
!421 = !{!420, !422}
!422 = !{i32 4470}
!423 = !{!424}
!424 = !{i32 44, i32 4}
