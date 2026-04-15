; ------------------------------------------------
; OCL_asm00de1ea9b83c878d_afterUnification.ll
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
@3 = internal unnamed_addr addrspace(2) constant [23 x i8] c"Pointer: %p, Type: %s\0A\00"
@4 = internal unnamed_addr addrspace(2) constant [23 x i8] c"Pointer: %p, Type: %s\0A\00"
@5 = internal unnamed_addr addrspace(2) constant [23 x i8] c"Pointer: %p, Type: %s\0A\00"

; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZZ5benchILi4ELi4ELi1ELi1ELb0EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
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
  %17 = alloca [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], align 8, !spirv.Decorations !426
  %18 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], align 8, !spirv.Decorations !426
  %19 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], align 8, !spirv.Decorations !426
  %20 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], align 8, !spirv.Decorations !426
  %21 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], align 8, !spirv.Decorations !426
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
  %56 = zext i32 %10 to i64
  %57 = icmp sgt i32 %10, -1
  call void @llvm.assume(i1 %57)
  %58 = add nuw i32 %15, %localThreadId5
  %59 = shl i32 %58, 5
  %60 = shl nsw i32 %10, 6, !spirv.Decorations !428
  %61 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %61)
  %62 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 0, i64 0
  br label %63

63:                                               ; preds = %63, %5
  %64 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* [ %62, %5 ], [ %65, %63 ]
  %65 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* %64, i64 1
  %66 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 1, i64 0, i64 0
  %67 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* %65, %66
  br i1 %67, label %.preheader1, label %63

.preheader1:                                      ; preds = %63
  br label %68

68:                                               ; preds = %94, %.preheader1
  %69 = phi i32 [ %95, %94 ], [ 0, %.preheader1 ]
  %70 = icmp ult i32 %69, 4
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = zext i32 %69 to i64
  br label %91

73:                                               ; preds = %68
  %74 = mul nsw i32 %59, %3, !spirv.Decorations !428
  %75 = sext i32 %74 to i64
  %76 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %77 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %76, i64 %75
  %78 = shl nsw i32 %4, 1, !spirv.Decorations !428
  %79 = sext i32 %78 to i64
  %80 = shl nuw nsw i64 %56, 7, !spirv.Decorations !430
  %81 = and i64 %80, 4294967168
  %82 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %83 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %82, i64 %81
  %84 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18, i64 0, i64 0
  %85 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 0, i64 0
  %86 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20, i64 0, i64 0
  %87 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 0, i64 0
  %88 = shl nsw i32 %4, 1, !spirv.Decorations !428
  %89 = sext i32 %88 to i64
  %90 = shl i32 %10, 7
  br label %100

91:                                               ; preds = %96, %71
  %92 = phi i32 [ %99, %96 ], [ 0, %71 ]
  %93 = icmp ult i32 %92, 4
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = add nuw nsw i32 %69, 1, !spirv.Decorations !430
  br label %68

96:                                               ; preds = %91
  %97 = zext i32 %92 to i64
  %98 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 %72, i64 %97, i32 0
  store <8 x float> zeroinitializer, <8 x float>* %98, align 8
  %99 = add nuw nsw i32 %92, 1, !spirv.Decorations !430
  br label %91

100:                                              ; preds = %248, %73
  %101 = phi i32 [ %108, %248 ], [ 0, %73 ]
  %102 = icmp slt i32 %101, %3
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = zext i32 %60 to i64
  %105 = bitcast i8 addrspace(1)* %2 to float addrspace(1)*
  %106 = getelementptr float, float addrspace(1)* %105, i64 %104
  br label %273

107:                                              ; preds = %100
  %108 = add nuw nsw i32 %101, 32, !spirv.Decorations !430
  %109 = icmp slt i32 %108, %3
  br i1 %109, label %110, label %135

110:                                              ; preds = %107
  %111 = zext i32 %108 to i64
  %112 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %77, i64 %111
  %113 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %112 to i8 addrspace(1)*
  %114 = addrspacecast i8 addrspace(1)* %113 to i8 addrspace(4)*
  %115 = ptrtoint i8 addrspace(4)* %114 to i64
  %116 = and i64 %115, -64
  %117 = shl i32 %3, 1
  %118 = add i32 %117, -1
  %119 = trunc i64 %115 to i32
  %120 = lshr i32 %119, 1
  %121 = and i32 %120, 31
  call void @llvm.genx.GenISA.LSC2DBlockPrefetch.isVoid(i64 %116, i32 %118, i32 7, i32 %118, i32 %121, i32 0, i32 16, i32 32, i32 8, i32 1, i1 false, i1 false, i32 4)
  %122 = lshr exact i32 %108, 1
  %123 = zext i32 %122 to i64
  %124 = mul nsw i64 %123, %79, !spirv.Decorations !428
  %125 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %83, i64 %124
  %126 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %125 to i8 addrspace(1)*
  %127 = addrspacecast i8 addrspace(1)* %126 to i8 addrspace(4)*
  %128 = ptrtoint i8 addrspace(4)* %127 to i64
  %129 = and i64 %128, -64
  %130 = shl i32 %4, 2
  %131 = add i32 %130, -1
  %132 = trunc i64 %128 to i32
  %133 = lshr i32 %132, 1
  %134 = and i32 %133, 31
  call void @llvm.genx.GenISA.LSC2DBlockPrefetch.isVoid(i64 %129, i32 %131, i32 7, i32 %131, i32 %134, i32 0, i32 16, i32 32, i32 8, i32 1, i1 false, i1 false, i32 4)
  br label %135

135:                                              ; preds = %110, %107
  %136 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %136)
  br label %137

137:                                              ; preds = %137, %135
  %138 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* [ %84, %135 ], [ %139, %137 ]
  %139 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* %138, i64 1
  %140 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18, i64 1, i64 0
  %141 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* %139, %140
  br i1 %141, label %142, label %137

142:                                              ; preds = %137
  %143 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %143)
  br label %144

144:                                              ; preds = %144, %142
  %145 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* [ %85, %142 ], [ %146, %144 ]
  %146 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* %145, i64 1
  %147 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 1, i64 0
  %148 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* %146, %147
  br i1 %148, label %149, label %144

149:                                              ; preds = %144
  %150 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %150)
  br label %151

151:                                              ; preds = %151, %149
  %152 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* [ %86, %149 ], [ %153, %151 ]
  %153 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* %152, i64 1
  %154 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20, i64 1, i64 0
  %155 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* %153, %154
  br i1 %155, label %156, label %151

156:                                              ; preds = %151
  %157 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %157)
  br label %158

158:                                              ; preds = %158, %156
  %159 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* [ %87, %156 ], [ %160, %158 ]
  %160 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* %159, i64 1
  %161 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 1, i64 0
  %162 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* %160, %161
  br i1 %162, label %163, label %158

163:                                              ; preds = %158
  %164 = zext i32 %101 to i64
  %165 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %166 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %165, i64 %164
  br label %167

167:                                              ; preds = %181, %163
  %168 = phi i32 [ %209, %181 ], [ 0, %163 ]
  %169 = icmp ult i32 %168, 4
  br i1 %169, label %181, label %170

170:                                              ; preds = %167
  %171 = lshr exact i32 %101, 1
  %172 = zext i32 %171 to i64
  %173 = mul nsw i64 %172, %89, !spirv.Decorations !428
  %174 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %175 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %174, i64 %173
  %176 = or i32 %171, 8
  %177 = zext i32 %176 to i64
  %178 = mul nsw i64 %177, %89, !spirv.Decorations !428
  %179 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %180 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %179, i64 %178
  br label %210

181:                                              ; preds = %167
  %182 = zext i32 %168 to i64
  %183 = shl nuw nsw i32 %168, 3, !spirv.Decorations !430
  %184 = or i32 %59, %183
  %185 = mul nsw i32 %184, %3, !spirv.Decorations !428
  %186 = sext i32 %185 to i64
  %187 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %166, i64 %186
  %188 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %187 to i8 addrspace(1)*
  %.ascast.i = addrspacecast i8 addrspace(1)* %188 to i8 addrspace(4)*
  %189 = ptrtoint i8 addrspace(4)* %.ascast.i to i64
  %190 = and i64 %189, -64
  %191 = trunc i64 %189 to i32
  %192 = lshr i32 %191, 1
  %193 = and i32 %192, 31
  %194 = shl i32 %3, 1
  %195 = add i32 %194, -1
  %196 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %190, i32 %195, i32 7, i32 %195, i32 %193, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %197 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18, i64 0, i64 %182, i32 0
  store <8 x i16> %196, <8 x i16>* %197, align 8
  %198 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %187, i64 16
  %199 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %198 to i8 addrspace(1)*
  %.ascast.i87 = addrspacecast i8 addrspace(1)* %199 to i8 addrspace(4)*
  %200 = ptrtoint i8 addrspace(4)* %.ascast.i87 to i64
  %201 = and i64 %200, -64
  %202 = trunc i64 %200 to i32
  %203 = lshr i32 %202, 1
  %204 = and i32 %203, 31
  %205 = shl i32 %3, 1
  %206 = add i32 %205, -1
  %207 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %201, i32 %206, i32 7, i32 %206, i32 %204, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %208 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 0, i64 %182, i32 0
  store <8 x i16> %207, <8 x i16>* %208, align 8
  %209 = add nuw nsw i32 %168, 1, !spirv.Decorations !430
  br label %167

210:                                              ; preds = %213, %170
  %211 = phi i32 [ %240, %213 ], [ 0, %170 ]
  %212 = icmp ult i32 %211, 4
  br i1 %212, label %213, label %.preheader

.preheader:                                       ; preds = %210
  br label %241

213:                                              ; preds = %210
  %214 = zext i32 %211 to i64
  %215 = shl nuw nsw i32 %211, 5, !spirv.Decorations !430
  %216 = or i32 %215, %90
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %175, i64 %217
  %219 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %218 to i8 addrspace(1)*
  %.ascast.i88 = addrspacecast i8 addrspace(1)* %219 to i8 addrspace(4)*
  %220 = ptrtoint i8 addrspace(4)* %.ascast.i88 to i64
  %221 = and i64 %220, -64
  %222 = trunc i64 %220 to i32
  %223 = lshr i32 %222, 2
  %224 = and i32 %223, 15
  %225 = shl i32 %4, 2
  %226 = add i32 %225, -1
  %227 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %221, i32 %226, i32 7, i32 %226, i32 %224, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %228 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20, i64 0, i64 %214, i32 0
  store <8 x i32> %227, <8 x i32>* %228, align 8
  %229 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %180, i64 %217
  %230 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %229 to i8 addrspace(1)*
  %.ascast.i89 = addrspacecast i8 addrspace(1)* %230 to i8 addrspace(4)*
  %231 = ptrtoint i8 addrspace(4)* %.ascast.i89 to i64
  %232 = and i64 %231, -64
  %233 = trunc i64 %231 to i32
  %234 = lshr i32 %233, 2
  %235 = and i32 %234, 15
  %236 = shl i32 %4, 2
  %237 = add i32 %236, -1
  %238 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %232, i32 %237, i32 7, i32 %237, i32 %235, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %239 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 0, i64 %214, i32 0
  store <8 x i32> %238, <8 x i32>* %239, align 8
  %240 = add nuw nsw i32 %211, 1, !spirv.Decorations !430
  br label %210

241:                                              ; preds = %256, %.preheader
  %242 = phi i32 [ %257, %256 ], [ 0, %.preheader ]
  %243 = icmp ult i32 %242, 4
  br i1 %243, label %244, label %248

244:                                              ; preds = %241
  %245 = zext i32 %242 to i64
  %246 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18, i64 0, i64 %245, i32 0
  %247 = load <8 x i16>, <8 x i16>* %246, align 8
  br label %253

248:                                              ; preds = %241
  %249 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21 to i8*
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %249)
  %250 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20 to i8*
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %250)
  %251 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %251)
  %252 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %252)
  br label %100

253:                                              ; preds = %258, %244
  %254 = phi i32 [ %272, %258 ], [ 0, %244 ]
  %255 = icmp ult i32 %254, 4
  br i1 %255, label %258, label %256

256:                                              ; preds = %253
  %257 = add nuw nsw i32 %242, 1, !spirv.Decorations !430
  br label %241

258:                                              ; preds = %253
  %259 = zext i32 %254 to i64
  %260 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20, i64 0, i64 %259, i32 0
  %261 = load <8 x i32>, <8 x i32>* %260, align 8
  %262 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 %245, i64 %259
  %263 = getelementptr %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* %262, i64 0, i32 0
  %264 = load <8 x float>, <8 x float>* %263, align 8
  %265 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %264, <8 x i16> %247, <8 x i32> %261, i32 11, i32 11, i32 8, i32 8, i1 false)
  %266 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 0, i64 %245, i32 0
  %267 = load <8 x i16>, <8 x i16>* %266, align 8
  %268 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 0, i64 %259, i32 0
  %269 = load <8 x i32>, <8 x i32>* %268, align 8
  %270 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %265, <8 x i16> %267, <8 x i32> %269, i32 11, i32 11, i32 8, i32 8, i1 false)
  %271 = getelementptr %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* %262, i64 0, i32 0
  store <8 x float> %270, <8 x float>* %271, align 8
  %272 = add nuw nsw i32 %254, 1, !spirv.Decorations !430
  br label %253

273:                                              ; preds = %286, %103
  %274 = phi i32 [ %287, %286 ], [ 0, %103 ]
  %275 = icmp ult i32 %274, 4
  br i1 %275, label %276, label %322

276:                                              ; preds = %273
  %277 = zext i32 %274 to i64
  %278 = shl nuw nsw i32 %274, 3, !spirv.Decorations !430
  %279 = or i32 %59, %278
  %280 = mul nsw i32 %279, %4, !spirv.Decorations !428
  %281 = sext i32 %280 to i64
  %282 = getelementptr float, float addrspace(1)* %106, i64 %281
  br label %283

283:                                              ; preds = %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit, %276
  %284 = phi i32 [ %321, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit ], [ 0, %276 ]
  %285 = icmp ult i32 %284, 4
  br i1 %285, label %288, label %286

286:                                              ; preds = %283
  %287 = add nuw nsw i32 %274, 1, !spirv.Decorations !430
  br label %273

288:                                              ; preds = %283
  %289 = zext i32 %284 to i64
  %290 = shl nuw nsw i32 %284, 4, !spirv.Decorations !430
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds float, float addrspace(1)* %282, i64 %291
  %293 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 %277, i64 %289, i32 0
  %294 = bitcast <8 x float>* %293 to <8 x i32>*
  %295 = load <8 x i32>, <8 x i32>* %294, align 8
  %296 = bitcast float addrspace(1)* %292 to i8 addrspace(1)*
  %.ascast.i90 = addrspacecast i8 addrspace(1)* %296 to i8 addrspace(4)*
  %297 = mul i32 %7, %6
  %298 = mul i32 %297, %8
  %299 = and i32 %298, 15
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %313, label %301

301:                                              ; preds = %288
  %localIdZ13 = zext i16 %localIdZ to i32
  %302 = mul i32 %7, %localIdZ13
  %localIdY15 = zext i16 %localIdY to i32
  %303 = add i32 %302, %localIdY15
  %304 = mul i32 %303, %6
  %localIdX17 = zext i16 %localIdX to i32
  %305 = add i32 %304, %localIdX17
  %306 = lshr i32 %305, 4
  %307 = mul i32 %7, %6
  %308 = mul i32 %307, %8
  %309 = add i32 %308, 15
  %310 = lshr i32 %309, 4
  %311 = add nsw i32 %310, -1
  %312 = icmp ult i32 %306, %311
  br i1 %312, label %313, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit

313:                                              ; preds = %301, %288
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit: ; preds = %301, %313
  %314 = ptrtoint i8 addrspace(4)* %.ascast.i90 to i64
  %315 = and i64 %314, -64
  %316 = shl i32 %4, 2
  %317 = add i32 %316, -1
  %318 = trunc i64 %314 to i32
  %319 = lshr i32 %318, 2
  %320 = and i32 %319, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %315, i32 %317, i32 7, i32 %317, i32 %320, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %295)
  %321 = add nuw nsw i32 %284, 1, !spirv.Decorations !430
  br label %283

322:                                              ; preds = %273
  %323 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %323)
  ret void
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZZ5benchILi4ELi4ELi1ELi1ELb1EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
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
  %17 = alloca [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], align 8, !spirv.Decorations !426
  %18 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], align 8, !spirv.Decorations !426
  %19 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], align 8, !spirv.Decorations !426
  %20 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], align 8, !spirv.Decorations !426
  %21 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], align 8, !spirv.Decorations !426
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
  %57 = add nuw i32 %15, %localThreadId5
  %58 = shl i32 %57, 5
  %59 = shl nsw i32 %10, 6, !spirv.Decorations !428
  %60 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %60)
  %61 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 0, i64 0
  br label %62

62:                                               ; preds = %62, %5
  %63 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* [ %61, %5 ], [ %64, %62 ]
  %64 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* %63, i64 1
  %65 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 1, i64 0, i64 0
  %66 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* %64, %65
  br i1 %66, label %.preheader1, label %62

.preheader1:                                      ; preds = %62
  br label %67

67:                                               ; preds = %83, %.preheader1
  %68 = phi i32 [ %84, %83 ], [ 0, %.preheader1 ]
  %69 = icmp ult i32 %68, 4
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = zext i32 %68 to i64
  br label %80

72:                                               ; preds = %67
  %73 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18, i64 0, i64 0
  %74 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 0, i64 0
  %75 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20, i64 0, i64 0
  %76 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 0, i64 0
  %77 = shl nsw i32 %4, 1, !spirv.Decorations !428
  %78 = sext i32 %77 to i64
  %79 = shl i32 %10, 7
  br label %89

80:                                               ; preds = %85, %70
  %81 = phi i32 [ %88, %85 ], [ 0, %70 ]
  %82 = icmp ult i32 %81, 4
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = add nuw nsw i32 %68, 1, !spirv.Decorations !430
  br label %67

85:                                               ; preds = %80
  %86 = zext i32 %81 to i64
  %87 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 %71, i64 %86, i32 0
  store <8 x float> zeroinitializer, <8 x float>* %87, align 8
  %88 = add nuw nsw i32 %81, 1, !spirv.Decorations !430
  br label %80

89:                                               ; preds = %209, %72
  %90 = phi i32 [ %214, %209 ], [ 0, %72 ]
  %91 = icmp slt i32 %90, %3
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = zext i32 %59 to i64
  %94 = bitcast i8 addrspace(1)* %2 to float addrspace(1)*
  %95 = getelementptr float, float addrspace(1)* %94, i64 %93
  br label %235

96:                                               ; preds = %89
  %97 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %97)
  br label %98

98:                                               ; preds = %98, %96
  %99 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* [ %73, %96 ], [ %100, %98 ]
  %100 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* %99, i64 1
  %101 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18, i64 1, i64 0
  %102 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* %100, %101
  br i1 %102, label %103, label %98

103:                                              ; preds = %98
  %104 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %104)
  br label %105

105:                                              ; preds = %105, %103
  %106 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* [ %74, %103 ], [ %107, %105 ]
  %107 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* %106, i64 1
  %108 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 1, i64 0
  %109 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"* %107, %108
  br i1 %109, label %110, label %105

110:                                              ; preds = %105
  %111 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %111)
  br label %112

112:                                              ; preds = %112, %110
  %113 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* [ %75, %110 ], [ %114, %112 ]
  %114 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* %113, i64 1
  %115 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20, i64 1, i64 0
  %116 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* %114, %115
  br i1 %116, label %117, label %112

117:                                              ; preds = %112
  %118 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %118)
  br label %119

119:                                              ; preds = %119, %117
  %120 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* [ %76, %117 ], [ %121, %119 ]
  %121 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* %120, i64 1
  %122 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 1, i64 0
  %123 = icmp eq %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"* %121, %122
  br i1 %123, label %124, label %119

124:                                              ; preds = %119
  %125 = zext i32 %90 to i64
  %126 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %127 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %126, i64 %125
  br label %128

128:                                              ; preds = %142, %124
  %129 = phi i32 [ %170, %142 ], [ 0, %124 ]
  %130 = icmp ult i32 %129, 4
  br i1 %130, label %142, label %131

131:                                              ; preds = %128
  %132 = lshr exact i32 %90, 1
  %133 = zext i32 %132 to i64
  %134 = mul nsw i64 %133, %78, !spirv.Decorations !428
  %135 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %136 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %135, i64 %134
  %137 = or i32 %132, 8
  %138 = zext i32 %137 to i64
  %139 = mul nsw i64 %138, %78, !spirv.Decorations !428
  %140 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %141 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %140, i64 %139
  br label %171

142:                                              ; preds = %128
  %143 = zext i32 %129 to i64
  %144 = shl nuw nsw i32 %129, 3, !spirv.Decorations !430
  %145 = or i32 %58, %144
  %146 = mul nsw i32 %145, %3, !spirv.Decorations !428
  %147 = sext i32 %146 to i64
  %148 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %127, i64 %147
  %149 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %148 to i8 addrspace(1)*
  %.ascast.i = addrspacecast i8 addrspace(1)* %149 to i8 addrspace(4)*
  %150 = ptrtoint i8 addrspace(4)* %.ascast.i to i64
  %151 = and i64 %150, -64
  %152 = trunc i64 %150 to i32
  %153 = lshr i32 %152, 1
  %154 = and i32 %153, 31
  %155 = shl i32 %3, 1
  %156 = add i32 %155, -1
  %157 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %151, i32 %156, i32 7, i32 %156, i32 %154, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %158 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18, i64 0, i64 %143, i32 0
  store <8 x i16> %157, <8 x i16>* %158, align 8
  %159 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %148, i64 16
  %160 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %159 to i8 addrspace(1)*
  %.ascast.i86 = addrspacecast i8 addrspace(1)* %160 to i8 addrspace(4)*
  %161 = ptrtoint i8 addrspace(4)* %.ascast.i86 to i64
  %162 = and i64 %161, -64
  %163 = trunc i64 %161 to i32
  %164 = lshr i32 %163, 1
  %165 = and i32 %164, 31
  %166 = shl i32 %3, 1
  %167 = add i32 %166, -1
  %168 = call <8 x i16> @llvm.genx.GenISA.LSC2DBlockRead.v8i16(i64 %162, i32 %167, i32 7, i32 %167, i32 %165, i32 0, i32 16, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %169 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 0, i64 %143, i32 0
  store <8 x i16> %168, <8 x i16>* %169, align 8
  %170 = add nuw nsw i32 %129, 1, !spirv.Decorations !430
  br label %128

171:                                              ; preds = %174, %131
  %172 = phi i32 [ %201, %174 ], [ 0, %131 ]
  %173 = icmp ult i32 %172, 4
  br i1 %173, label %174, label %.preheader

.preheader:                                       ; preds = %171
  br label %202

174:                                              ; preds = %171
  %175 = zext i32 %172 to i64
  %176 = shl nuw nsw i32 %172, 5, !spirv.Decorations !430
  %177 = or i32 %176, %79
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %136, i64 %178
  %180 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %179 to i8 addrspace(1)*
  %.ascast.i87 = addrspacecast i8 addrspace(1)* %180 to i8 addrspace(4)*
  %181 = ptrtoint i8 addrspace(4)* %.ascast.i87 to i64
  %182 = and i64 %181, -64
  %183 = trunc i64 %181 to i32
  %184 = lshr i32 %183, 2
  %185 = and i32 %184, 15
  %186 = shl i32 %4, 2
  %187 = add i32 %186, -1
  %188 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %182, i32 %187, i32 7, i32 %187, i32 %185, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %189 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20, i64 0, i64 %175, i32 0
  store <8 x i32> %188, <8 x i32>* %189, align 8
  %190 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %141, i64 %178
  %191 = bitcast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %190 to i8 addrspace(1)*
  %.ascast.i88 = addrspacecast i8 addrspace(1)* %191 to i8 addrspace(4)*
  %192 = ptrtoint i8 addrspace(4)* %.ascast.i88 to i64
  %193 = and i64 %192, -64
  %194 = trunc i64 %192 to i32
  %195 = lshr i32 %194, 2
  %196 = and i32 %195, 15
  %197 = shl i32 %4, 2
  %198 = add i32 %197, -1
  %199 = call <8 x i32> @llvm.genx.GenISA.LSC2DBlockRead.v8i32(i64 %193, i32 %198, i32 7, i32 %198, i32 %196, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0)
  %200 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 0, i64 %175, i32 0
  store <8 x i32> %199, <8 x i32>* %200, align 8
  %201 = add nuw nsw i32 %172, 1, !spirv.Decorations !430
  br label %171

202:                                              ; preds = %218, %.preheader
  %203 = phi i32 [ %219, %218 ], [ 0, %.preheader ]
  %204 = icmp ult i32 %203, 4
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = zext i32 %203 to i64
  %207 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18, i64 0, i64 %206, i32 0
  %208 = load <8 x i16>, <8 x i16>* %207, align 8
  br label %215

209:                                              ; preds = %202
  %210 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21 to i8*
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %210)
  %211 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20 to i8*
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %211)
  %212 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %212)
  %213 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %213)
  %214 = add nuw nsw i32 %90, 32, !spirv.Decorations !430
  br label %89

215:                                              ; preds = %220, %205
  %216 = phi i32 [ %234, %220 ], [ 0, %205 ]
  %217 = icmp ult i32 %216, 4
  br i1 %217, label %220, label %218

218:                                              ; preds = %215
  %219 = add nuw nsw i32 %203, 1, !spirv.Decorations !430
  br label %202

220:                                              ; preds = %215
  %221 = zext i32 %216 to i64
  %222 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20, i64 0, i64 %221, i32 0
  %223 = load <8 x i32>, <8 x i32>* %222, align 8
  %224 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 %206, i64 %221
  %225 = getelementptr %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* %224, i64 0, i32 0
  %226 = load <8 x float>, <8 x float>* %225, align 8
  %227 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %226, <8 x i16> %208, <8 x i32> %223, i32 11, i32 11, i32 8, i32 8, i1 false)
  %228 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 0, i64 %206, i32 0
  %229 = load <8 x i16>, <8 x i16>* %228, align 8
  %230 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 0, i64 %221, i32 0
  %231 = load <8 x i32>, <8 x i32>* %230, align 8
  %232 = call <8 x float> @llvm.genx.GenISA.sub.group.dpas.v8f32.v8f32.v8i16.v8i32(<8 x float> %227, <8 x i16> %229, <8 x i32> %231, i32 11, i32 11, i32 8, i32 8, i1 false)
  %233 = getelementptr %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"* %224, i64 0, i32 0
  store <8 x float> %232, <8 x float>* %233, align 8
  %234 = add nuw nsw i32 %216, 1, !spirv.Decorations !430
  br label %215

235:                                              ; preds = %248, %92
  %236 = phi i32 [ %249, %248 ], [ 0, %92 ]
  %237 = icmp ult i32 %236, 4
  br i1 %237, label %238, label %284

238:                                              ; preds = %235
  %239 = zext i32 %236 to i64
  %240 = shl nuw nsw i32 %236, 3, !spirv.Decorations !430
  %241 = or i32 %58, %240
  %242 = mul nsw i32 %241, %4, !spirv.Decorations !428
  %243 = sext i32 %242 to i64
  %244 = getelementptr float, float addrspace(1)* %95, i64 %243
  br label %245

245:                                              ; preds = %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit, %238
  %246 = phi i32 [ %283, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit ], [ 0, %238 ]
  %247 = icmp ult i32 %246, 4
  br i1 %247, label %250, label %248

248:                                              ; preds = %245
  %249 = add nuw nsw i32 %236, 1, !spirv.Decorations !430
  br label %235

250:                                              ; preds = %245
  %251 = zext i32 %246 to i64
  %252 = shl nuw nsw i32 %246, 4, !spirv.Decorations !430
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds float, float addrspace(1)* %244, i64 %253
  %255 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 %239, i64 %251, i32 0
  %256 = bitcast <8 x float>* %255 to <8 x i32>*
  %257 = load <8 x i32>, <8 x i32>* %256, align 8
  %258 = bitcast float addrspace(1)* %254 to i8 addrspace(1)*
  %.ascast.i89 = addrspacecast i8 addrspace(1)* %258 to i8 addrspace(4)*
  %259 = mul i32 %7, %6
  %260 = mul i32 %259, %8
  %261 = and i32 %260, 15
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %275, label %263

263:                                              ; preds = %250
  %localIdZ13 = zext i16 %localIdZ to i32
  %264 = mul i32 %7, %localIdZ13
  %localIdY15 = zext i16 %localIdY to i32
  %265 = add i32 %264, %localIdY15
  %266 = mul i32 %265, %6
  %localIdX17 = zext i16 %localIdX to i32
  %267 = add i32 %266, %localIdX17
  %268 = lshr i32 %267, 4
  %269 = mul i32 %7, %6
  %270 = mul i32 %269, %8
  %271 = add i32 %270, 15
  %272 = lshr i32 %271, 4
  %273 = add nsw i32 %272, -1
  %274 = icmp ult i32 %268, %273
  br i1 %274, label %275, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit

275:                                              ; preds = %263, %250
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit: ; preds = %263, %275
  %276 = ptrtoint i8 addrspace(4)* %.ascast.i89 to i64
  %277 = and i64 %276, -64
  %278 = shl i32 %4, 2
  %279 = add i32 %278, -1
  %280 = trunc i64 %276 to i32
  %281 = lshr i32 %280, 2
  %282 = and i32 %281, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %277, i32 %279, i32 7, i32 %279, i32 %282, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %257)
  %283 = add nuw nsw i32 %246, 1, !spirv.Decorations !430
  br label %245

284:                                              ; preds = %235
  %285 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %285)
  ret void
}

; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZZ5benchILi4ELi4ELi2ELi2ELb0EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
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
  %17 = alloca [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], align 8, !spirv.Decorations !426
  %18 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], align 8, !spirv.Decorations !426
  %19 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], align 8, !spirv.Decorations !426
  %20 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], align 8, !spirv.Decorations !426
  %21 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], align 8, !spirv.Decorations !426
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
  %57 = shl nsw i32 %15, 6, !spirv.Decorations !428
  %58 = shl nuw nsw i32 %localThreadId5, 4
  %59 = and i32 %58, 4064
  %60 = add nuw nsw i32 %57, %59, !spirv.Decorations !428
  %61 = shl nsw i32 %10, 7, !spirv.Decorations !428
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
  %78 = mul nsw i32 %60, %3, !spirv.Decorations !428
  %79 = sext i32 %78 to i64
  %80 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %81 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %80, i64 %79
  %82 = shl nsw i32 %4, 1, !spirv.Decorations !428
  %83 = sext i32 %82 to i64
  %84 = shl nuw i32 %64, 1
  %85 = zext i32 %84 to i64
  %86 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %87 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %86, i64 %85
  %88 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18, i64 0, i64 0
  %89 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 0, i64 0
  %90 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20, i64 0, i64 0
  %91 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 0, i64 0
  %92 = shl nsw i32 %4, 1, !spirv.Decorations !428
  %93 = sext i32 %92 to i64
  br label %103

94:                                               ; preds = %99, %75
  %95 = phi i32 [ %102, %99 ], [ 0, %75 ]
  %96 = icmp ult i32 %95, 4
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = add nuw nsw i32 %73, 1, !spirv.Decorations !430
  br label %72

99:                                               ; preds = %94
  %100 = zext i32 %95 to i64
  %101 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 %76, i64 %100, i32 0
  store <8 x float> zeroinitializer, <8 x float>* %101, align 8
  %102 = add nuw nsw i32 %95, 1, !spirv.Decorations !430
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
  %111 = add nuw nsw i32 %104, 32, !spirv.Decorations !430
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
  %127 = mul nsw i64 %126, %83, !spirv.Decorations !428
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
  %176 = mul nsw i64 %175, %93, !spirv.Decorations !428
  %177 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %178 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %177, i64 %176
  %179 = or i32 %174, 8
  %180 = zext i32 %179 to i64
  %181 = mul nsw i64 %180, %93, !spirv.Decorations !428
  %182 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %183 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %182, i64 %181
  br label %213

184:                                              ; preds = %170
  %185 = zext i32 %171 to i64
  %186 = shl nuw nsw i32 %171, 3, !spirv.Decorations !430
  %187 = or i32 %60, %186
  %188 = mul nsw i32 %187, %3, !spirv.Decorations !428
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
  %212 = add nuw nsw i32 %171, 1, !spirv.Decorations !430
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
  %244 = add nuw nsw i32 %214, 1, !spirv.Decorations !430
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
  %261 = add nuw nsw i32 %246, 1, !spirv.Decorations !430
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
  %276 = add nuw nsw i32 %258, 1, !spirv.Decorations !430
  br label %257

277:                                              ; preds = %290, %106
  %278 = phi i32 [ %291, %290 ], [ 0, %106 ]
  %279 = icmp ult i32 %278, 4
  br i1 %279, label %280, label %326

280:                                              ; preds = %277
  %281 = zext i32 %278 to i64
  %282 = shl nuw nsw i32 %278, 3, !spirv.Decorations !430
  %283 = or i32 %60, %282
  %284 = mul nsw i32 %283, %4, !spirv.Decorations !428
  %285 = sext i32 %284 to i64
  %286 = getelementptr float, float addrspace(1)* %109, i64 %285
  br label %287

287:                                              ; preds = %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit, %280
  %288 = phi i32 [ %325, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit ], [ 0, %280 ]
  %289 = icmp ult i32 %288, 4
  br i1 %289, label %292, label %290

290:                                              ; preds = %287
  %291 = add nuw nsw i32 %278, 1, !spirv.Decorations !430
  br label %277

292:                                              ; preds = %287
  %293 = zext i32 %288 to i64
  %294 = shl nuw nsw i32 %288, 4, !spirv.Decorations !430
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
  br i1 %316, label %317, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit

317:                                              ; preds = %305, %292
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit: ; preds = %305, %317
  %318 = ptrtoint i8 addrspace(4)* %.ascast.i90 to i64
  %319 = and i64 %318, -64
  %320 = shl i32 %4, 2
  %321 = add i32 %320, -1
  %322 = trunc i64 %318 to i32
  %323 = lshr i32 %322, 2
  %324 = and i32 %323, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %319, i32 %321, i32 7, i32 %321, i32 %324, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %299)
  %325 = add nuw nsw i32 %288, 1, !spirv.Decorations !430
  br label %287

326:                                              ; preds = %277
  %327 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %327)
  ret void
}

; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZZ5benchILi4ELi4ELi2ELi2ELb1EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
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
  %17 = alloca [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], align 8, !spirv.Decorations !426
  %18 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], align 8, !spirv.Decorations !426
  %19 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], align 8, !spirv.Decorations !426
  %20 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], align 8, !spirv.Decorations !426
  %21 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], align 8, !spirv.Decorations !426
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
  %57 = shl nsw i32 %15, 6, !spirv.Decorations !428
  %58 = shl nuw nsw i32 %localThreadId5, 4
  %59 = and i32 %58, 4064
  %60 = add nuw nsw i32 %57, %59, !spirv.Decorations !428
  %61 = shl nsw i32 %10, 7, !spirv.Decorations !428
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
  %82 = shl nsw i32 %4, 1, !spirv.Decorations !428
  %83 = sext i32 %82 to i64
  br label %93

84:                                               ; preds = %89, %75
  %85 = phi i32 [ %92, %89 ], [ 0, %75 ]
  %86 = icmp ult i32 %85, 4
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = add nuw nsw i32 %73, 1, !spirv.Decorations !430
  br label %72

89:                                               ; preds = %84
  %90 = zext i32 %85 to i64
  %91 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 %76, i64 %90, i32 0
  store <8 x float> zeroinitializer, <8 x float>* %91, align 8
  %92 = add nuw nsw i32 %85, 1, !spirv.Decorations !430
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
  %138 = mul nsw i64 %137, %83, !spirv.Decorations !428
  %139 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %140 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %139, i64 %138
  %141 = or i32 %136, 8
  %142 = zext i32 %141 to i64
  %143 = mul nsw i64 %142, %83, !spirv.Decorations !428
  %144 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %145 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %144, i64 %143
  br label %175

146:                                              ; preds = %132
  %147 = zext i32 %133 to i64
  %148 = shl nuw nsw i32 %133, 3, !spirv.Decorations !430
  %149 = or i32 %60, %148
  %150 = mul nsw i32 %149, %3, !spirv.Decorations !428
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
  %174 = add nuw nsw i32 %133, 1, !spirv.Decorations !430
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
  %206 = add nuw nsw i32 %176, 1, !spirv.Decorations !430
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
  %219 = add nuw nsw i32 %94, 32, !spirv.Decorations !430
  br label %93

220:                                              ; preds = %225, %210
  %221 = phi i32 [ %239, %225 ], [ 0, %210 ]
  %222 = icmp ult i32 %221, 4
  br i1 %222, label %225, label %223

223:                                              ; preds = %220
  %224 = add nuw nsw i32 %208, 1, !spirv.Decorations !430
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
  %239 = add nuw nsw i32 %221, 1, !spirv.Decorations !430
  br label %220

240:                                              ; preds = %253, %96
  %241 = phi i32 [ %254, %253 ], [ 0, %96 ]
  %242 = icmp ult i32 %241, 4
  br i1 %242, label %243, label %289

243:                                              ; preds = %240
  %244 = zext i32 %241 to i64
  %245 = shl nuw nsw i32 %241, 3, !spirv.Decorations !430
  %246 = or i32 %60, %245
  %247 = mul nsw i32 %246, %4, !spirv.Decorations !428
  %248 = sext i32 %247 to i64
  %249 = getelementptr float, float addrspace(1)* %99, i64 %248
  br label %250

250:                                              ; preds = %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit, %243
  %251 = phi i32 [ %288, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit ], [ 0, %243 ]
  %252 = icmp ult i32 %251, 4
  br i1 %252, label %255, label %253

253:                                              ; preds = %250
  %254 = add nuw nsw i32 %241, 1, !spirv.Decorations !430
  br label %240

255:                                              ; preds = %250
  %256 = zext i32 %251 to i64
  %257 = shl nuw nsw i32 %251, 4, !spirv.Decorations !430
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
  br i1 %279, label %280, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit

280:                                              ; preds = %268, %255
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit: ; preds = %268, %280
  %281 = ptrtoint i8 addrspace(4)* %.ascast.i89 to i64
  %282 = and i64 %281, -64
  %283 = shl i32 %4, 2
  %284 = add i32 %283, -1
  %285 = trunc i64 %281 to i32
  %286 = lshr i32 %285, 2
  %287 = and i32 %286, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %282, i32 %284, i32 7, i32 %284, i32 %287, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %262)
  %288 = add nuw nsw i32 %251, 1, !spirv.Decorations !430
  br label %250

289:                                              ; preds = %240
  %290 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %290)
  ret void
}

; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZZ5benchILi4ELi4ELi4ELi2ELb0EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
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
  %17 = alloca [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], align 8, !spirv.Decorations !426
  %18 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], align 8, !spirv.Decorations !426
  %19 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], align 8, !spirv.Decorations !426
  %20 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], align 8, !spirv.Decorations !426
  %21 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], align 8, !spirv.Decorations !426
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
  %57 = shl nsw i32 %15, 7, !spirv.Decorations !428
  %58 = shl nuw nsw i32 %localThreadId5, 4
  %59 = and i32 %58, 4064
  %60 = add nuw nsw i32 %57, %59, !spirv.Decorations !428
  %61 = shl nsw i32 %10, 7, !spirv.Decorations !428
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
  %78 = mul nsw i32 %60, %3, !spirv.Decorations !428
  %79 = sext i32 %78 to i64
  %80 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %81 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %80, i64 %79
  %82 = shl nsw i32 %4, 1, !spirv.Decorations !428
  %83 = sext i32 %82 to i64
  %84 = shl nuw i32 %64, 1
  %85 = zext i32 %84 to i64
  %86 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %87 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %86, i64 %85
  %88 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %18, i64 0, i64 0
  %89 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"]* %19, i64 0, i64 0
  %90 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %20, i64 0, i64 0
  %91 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"]* %21, i64 0, i64 0
  %92 = shl nsw i32 %4, 1, !spirv.Decorations !428
  %93 = sext i32 %92 to i64
  br label %103

94:                                               ; preds = %99, %75
  %95 = phi i32 [ %102, %99 ], [ 0, %75 ]
  %96 = icmp ult i32 %95, 4
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = add nuw nsw i32 %73, 1, !spirv.Decorations !430
  br label %72

99:                                               ; preds = %94
  %100 = zext i32 %95 to i64
  %101 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 %76, i64 %100, i32 0
  store <8 x float> zeroinitializer, <8 x float>* %101, align 8
  %102 = add nuw nsw i32 %95, 1, !spirv.Decorations !430
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
  %111 = add nuw nsw i32 %104, 32, !spirv.Decorations !430
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
  %127 = mul nsw i64 %126, %83, !spirv.Decorations !428
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
  %176 = mul nsw i64 %175, %93, !spirv.Decorations !428
  %177 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %178 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %177, i64 %176
  %179 = or i32 %174, 8
  %180 = zext i32 %179 to i64
  %181 = mul nsw i64 %180, %93, !spirv.Decorations !428
  %182 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %183 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %182, i64 %181
  br label %213

184:                                              ; preds = %170
  %185 = zext i32 %171 to i64
  %186 = shl nuw nsw i32 %171, 3, !spirv.Decorations !430
  %187 = or i32 %60, %186
  %188 = mul nsw i32 %187, %3, !spirv.Decorations !428
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
  %212 = add nuw nsw i32 %171, 1, !spirv.Decorations !430
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
  %244 = add nuw nsw i32 %214, 1, !spirv.Decorations !430
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
  %261 = add nuw nsw i32 %246, 1, !spirv.Decorations !430
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
  %276 = add nuw nsw i32 %258, 1, !spirv.Decorations !430
  br label %257

277:                                              ; preds = %290, %106
  %278 = phi i32 [ %291, %290 ], [ 0, %106 ]
  %279 = icmp ult i32 %278, 4
  br i1 %279, label %280, label %326

280:                                              ; preds = %277
  %281 = zext i32 %278 to i64
  %282 = shl nuw nsw i32 %278, 3, !spirv.Decorations !430
  %283 = or i32 %60, %282
  %284 = mul nsw i32 %283, %4, !spirv.Decorations !428
  %285 = sext i32 %284 to i64
  %286 = getelementptr float, float addrspace(1)* %109, i64 %285
  br label %287

287:                                              ; preds = %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit, %280
  %288 = phi i32 [ %325, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit ], [ 0, %280 ]
  %289 = icmp ult i32 %288, 4
  br i1 %289, label %292, label %290

290:                                              ; preds = %287
  %291 = add nuw nsw i32 %278, 1, !spirv.Decorations !430
  br label %277

292:                                              ; preds = %287
  %293 = zext i32 %288 to i64
  %294 = shl nuw nsw i32 %288, 4, !spirv.Decorations !430
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
  br i1 %316, label %317, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit

317:                                              ; preds = %305, %292
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit: ; preds = %305, %317
  %318 = ptrtoint i8 addrspace(4)* %.ascast.i90 to i64
  %319 = and i64 %318, -64
  %320 = shl i32 %4, 2
  %321 = add i32 %320, -1
  %322 = trunc i64 %318 to i32
  %323 = lshr i32 %322, 2
  %324 = and i32 %323, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %319, i32 %321, i32 7, i32 %321, i32 %324, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %299)
  %325 = add nuw nsw i32 %288, 1, !spirv.Decorations !430
  br label %287

326:                                              ; preds = %277
  %327 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %327)
  ret void
}

; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZZ5benchILi4ELi4ELi4ELi2ELb1EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %localSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i32 %bufferOffset, i32 %bufferOffset1, i32 %bufferOffset2, i32 %bindlessOffset, i32 %bindlessOffset3, i32 %bindlessOffset4) #0 {
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
  %17 = alloca [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], align 8, !spirv.Decorations !426
  %18 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], align 8, !spirv.Decorations !426
  %19 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1.resolved"], align 8, !spirv.Decorations !426
  %20 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], align 8, !spirv.Decorations !426
  %21 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2.resolved"], align 8, !spirv.Decorations !426
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
  %57 = shl nsw i32 %15, 7, !spirv.Decorations !428
  %58 = shl nuw nsw i32 %localThreadId5, 4
  %59 = and i32 %58, 4064
  %60 = add nuw nsw i32 %57, %59, !spirv.Decorations !428
  %61 = shl nsw i32 %10, 7, !spirv.Decorations !428
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
  %82 = shl nsw i32 %4, 1, !spirv.Decorations !428
  %83 = sext i32 %82 to i64
  br label %93

84:                                               ; preds = %89, %75
  %85 = phi i32 [ %92, %89 ], [ 0, %75 ]
  %86 = icmp ult i32 %85, 4
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = add nuw nsw i32 %73, 1, !spirv.Decorations !430
  br label %72

89:                                               ; preds = %84
  %90 = zext i32 %85 to i64
  %91 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17, i64 0, i64 %76, i64 %90, i32 0
  store <8 x float> zeroinitializer, <8 x float>* %91, align 8
  %92 = add nuw nsw i32 %85, 1, !spirv.Decorations !430
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
  %138 = mul nsw i64 %137, %83, !spirv.Decorations !428
  %139 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %140 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %139, i64 %138
  %141 = or i32 %136, 8
  %142 = zext i32 %141 to i64
  %143 = mul nsw i64 %142, %83, !spirv.Decorations !428
  %144 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %145 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %144, i64 %143
  br label %175

146:                                              ; preds = %132
  %147 = zext i32 %133 to i64
  %148 = shl nuw nsw i32 %133, 3, !spirv.Decorations !430
  %149 = or i32 %60, %148
  %150 = mul nsw i32 %149, %3, !spirv.Decorations !428
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
  %174 = add nuw nsw i32 %133, 1, !spirv.Decorations !430
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
  %206 = add nuw nsw i32 %176, 1, !spirv.Decorations !430
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
  %219 = add nuw nsw i32 %94, 32, !spirv.Decorations !430
  br label %93

220:                                              ; preds = %225, %210
  %221 = phi i32 [ %239, %225 ], [ 0, %210 ]
  %222 = icmp ult i32 %221, 4
  br i1 %222, label %225, label %223

223:                                              ; preds = %220
  %224 = add nuw nsw i32 %208, 1, !spirv.Decorations !430
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
  %239 = add nuw nsw i32 %221, 1, !spirv.Decorations !430
  br label %220

240:                                              ; preds = %253, %96
  %241 = phi i32 [ %254, %253 ], [ 0, %96 ]
  %242 = icmp ult i32 %241, 4
  br i1 %242, label %243, label %289

243:                                              ; preds = %240
  %244 = zext i32 %241 to i64
  %245 = shl nuw nsw i32 %241, 3, !spirv.Decorations !430
  %246 = or i32 %60, %245
  %247 = mul nsw i32 %246, %4, !spirv.Decorations !428
  %248 = sext i32 %247 to i64
  %249 = getelementptr float, float addrspace(1)* %99, i64 %248
  br label %250

250:                                              ; preds = %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit, %243
  %251 = phi i32 [ %288, %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit ], [ 0, %243 ]
  %252 = icmp ult i32 %251, 4
  br i1 %252, label %255, label %253

253:                                              ; preds = %250
  %254 = add nuw nsw i32 %241, 1, !spirv.Decorations !430
  br label %240

255:                                              ; preds = %250
  %256 = zext i32 %251 to i64
  %257 = shl nuw nsw i32 %251, 4, !spirv.Decorations !430
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
  br i1 %279, label %280, label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit

280:                                              ; preds = %268, %255
  br label %__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit

__builtin_spriv_OpJointMatrixStoreINTEL_Accumulator_RowMajor_SG16_8x16_i32_8_global_pi64_v8i8.288.exit: ; preds = %268, %280
  %281 = ptrtoint i8 addrspace(4)* %.ascast.i89 to i64
  %282 = and i64 %281, -64
  %283 = shl i32 %4, 2
  %284 = add i32 %283, -1
  %285 = trunc i64 %281 to i32
  %286 = lshr i32 %285, 2
  %287 = and i32 %286, 15
  call void @llvm.genx.GenISA.LSC2DBlockWrite.v8i32(i64 %282, i32 %284, i32 7, i32 %284, i32 %287, i32 0, i32 32, i32 16, i32 8, i32 1, i1 false, i1 false, i32 0, <8 x i32> %262)
  %288 = add nuw nsw i32 %251, 1, !spirv.Decorations !430
  br label %250

289:                                              ; preds = %240
  %290 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.resolved"]]* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %290)
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
!igc.functions = !{!3, !24, !25, !26, !27, !28}
!IGCMetadata = !{!29}
!opencl.ocl.version = !{!423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423}
!opencl.spir.version = !{!423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423, !423}
!llvm.ident = !{!424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424, !424}
!llvm.module.flags = !{!425}

!0 = !{i32 2, i32 2}
!1 = !{i32 4, i32 100000}
!2 = !{i16 6, i16 14}
!3 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi1ELi1ELb0EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_, !4}
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
!24 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi1ELi1ELb1EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_, !4}
!25 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi2ELi2ELb0EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_, !4}
!26 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi2ELi2ELb1EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_, !4}
!27 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi4ELi2ELb0EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_, !4}
!28 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi4ELi2ELb1EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_, !4}
!29 = !{!"ModuleMD", !30, !31, !133, !258, !289, !306, !326, !336, !338, !339, !354, !355, !356, !357, !361, !362, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !381, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !200, !399, !400, !401, !403, !405, !408, !409, !410, !412, !413, !414, !419, !420, !421, !422}
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
!133 = !{!"FuncMD", !134, !135, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257}
!134 = !{!"FuncMDMap[0]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi1ELi1ELb0EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_}
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
!247 = !{!"m_OptsToDisablePerFunc"}
!248 = !{!"FuncMDMap[1]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi1ELi1ELb1EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_}
!249 = !{!"FuncMDValue[1]", !136, !137, !141, !142, !143, !165, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !216, !222, !228, !234, !240, !246, !247}
!250 = !{!"FuncMDMap[2]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi2ELi2ELb0EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_}
!251 = !{!"FuncMDValue[2]", !136, !137, !141, !142, !143, !165, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !216, !222, !228, !234, !240, !246, !247}
!252 = !{!"FuncMDMap[3]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi2ELi2ELb1EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_}
!253 = !{!"FuncMDValue[3]", !136, !137, !141, !142, !143, !165, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !216, !222, !228, !234, !240, !246, !247}
!254 = !{!"FuncMDMap[4]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi4ELi2ELb0EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_}
!255 = !{!"FuncMDValue[4]", !136, !137, !141, !142, !143, !165, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !216, !222, !228, !234, !240, !246, !247}
!256 = !{!"FuncMDMap[5]", void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i32, <8 x i32>, <3 x i32>, <3 x i32>, i16, i16, i16, i8*, i32, i32, i32, i32, i32, i32)* @_ZTSZZZ5benchILi4ELi4ELi4ELi2ELb1EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_}
!257 = !{!"FuncMDValue[5]", !136, !137, !141, !142, !143, !165, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !216, !222, !228, !234, !240, !246, !247}
!258 = !{!"pushInfo", !259, !260, !261, !265, !266, !267, !268, !269, !270, !271, !272, !285, !286, !287, !288}
!259 = !{!"pushableAddresses"}
!260 = !{!"bindlessPushInfo"}
!261 = !{!"dynamicBufferInfo", !262, !263, !264}
!262 = !{!"firstIndex", i32 0}
!263 = !{!"numOffsets", i32 0}
!264 = !{!"forceDisabled", i1 false}
!265 = !{!"MaxNumberOfPushedBuffers", i32 0}
!266 = !{!"inlineConstantBufferSlot", i32 -1}
!267 = !{!"inlineConstantBufferOffset", i32 -1}
!268 = !{!"inlineConstantBufferGRFOffset", i32 -1}
!269 = !{!"constants"}
!270 = !{!"inputs"}
!271 = !{!"constantReg"}
!272 = !{!"simplePushInfoArr", !273, !282, !283, !284}
!273 = !{!"simplePushInfoArrVec[0]", !274, !275, !276, !277, !278, !279, !280, !281}
!274 = !{!"cbIdx", i32 0}
!275 = !{!"pushableAddressGrfOffset", i32 -1}
!276 = !{!"pushableOffsetGrfOffset", i32 -1}
!277 = !{!"offset", i32 0}
!278 = !{!"size", i32 0}
!279 = !{!"isStateless", i1 false}
!280 = !{!"isBindless", i1 false}
!281 = !{!"simplePushLoads"}
!282 = !{!"simplePushInfoArrVec[1]", !274, !275, !276, !277, !278, !279, !280, !281}
!283 = !{!"simplePushInfoArrVec[2]", !274, !275, !276, !277, !278, !279, !280, !281}
!284 = !{!"simplePushInfoArrVec[3]", !274, !275, !276, !277, !278, !279, !280, !281}
!285 = !{!"simplePushBufferUsed", i32 0}
!286 = !{!"pushAnalysisWIInfos"}
!287 = !{!"inlineRTGlobalPtrOffset", i32 0}
!288 = !{!"rtSyncSurfPtrOffset", i32 0}
!289 = !{!"psInfo", !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305}
!290 = !{!"BlendStateDisabledMask", i8 0}
!291 = !{!"SkipSrc0Alpha", i1 false}
!292 = !{!"DualSourceBlendingDisabled", i1 false}
!293 = !{!"ForceEnableSimd32", i1 false}
!294 = !{!"DisableSimd32WithDiscard", i1 false}
!295 = !{!"outputDepth", i1 false}
!296 = !{!"outputStencil", i1 false}
!297 = !{!"outputMask", i1 false}
!298 = !{!"blendToFillEnabled", i1 false}
!299 = !{!"forceEarlyZ", i1 false}
!300 = !{!"hasVersionedLoop", i1 false}
!301 = !{!"forceSingleSourceRTWAfterDualSourceRTW", i1 false}
!302 = !{!"NumSamples", i8 0}
!303 = !{!"blendOptimizationMode"}
!304 = !{!"colorOutputMask"}
!305 = !{!"WaDisableVRS", i1 false}
!306 = !{!"csInfo", !307, !308, !309, !310, !71, !47, !48, !49, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !81, !322, !323, !324, !325}
!307 = !{!"maxWorkGroupSize", i32 0}
!308 = !{!"waveSize", i32 0}
!309 = !{!"ComputeShaderSecondCompile"}
!310 = !{!"forcedSIMDSize", i8 0}
!311 = !{!"forceSpillCompression", i1 false}
!312 = !{!"allowLowerSimd", i1 false}
!313 = !{!"disableSimd32Slicing", i1 false}
!314 = !{!"disableSplitOnSpill", i1 false}
!315 = !{!"enableNewSpillCostFunction", i1 false}
!316 = !{!"forceVISAPreSched", i1 false}
!317 = !{!"disableLocalIdOrderOptimizations", i1 false}
!318 = !{!"disableDispatchAlongY", i1 false}
!319 = !{!"neededThreadIdLayout", i1* null}
!320 = !{!"forceTileYWalk", i1 false}
!321 = !{!"atomicBranch", i32 0}
!322 = !{!"disableEarlyOut", i1 false}
!323 = !{!"walkOrderEnabled", i1 false}
!324 = !{!"walkOrderOverride", i32 0}
!325 = !{!"ResForHfPacking"}
!326 = !{!"msInfo", !327, !328, !329, !330, !331, !332, !333, !334, !335}
!327 = !{!"PrimitiveTopology", i32 3}
!328 = !{!"MaxNumOfPrimitives", i32 0}
!329 = !{!"MaxNumOfVertices", i32 0}
!330 = !{!"MaxNumOfPerPrimitiveOutputs", i32 0}
!331 = !{!"MaxNumOfPerVertexOutputs", i32 0}
!332 = !{!"WorkGroupSize", i32 0}
!333 = !{!"WorkGroupMemorySizeInBytes", i32 0}
!334 = !{!"IndexFormat", i32 6}
!335 = !{!"SubgroupSize", i32 0}
!336 = !{!"taskInfo", !337, !332, !333, !335}
!337 = !{!"MaxNumOfOutputs", i32 0}
!338 = !{!"NBarrierCnt", i32 0}
!339 = !{!"rtInfo", !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !162}
!340 = !{!"RayQueryAllocSizeInBytes", i32 0}
!341 = !{!"NumContinuations", i32 0}
!342 = !{!"RTAsyncStackAddrspace", i32 -1}
!343 = !{!"RTAsyncStackSurfaceStateOffset", i1* null}
!344 = !{!"SWHotZoneAddrspace", i32 -1}
!345 = !{!"SWHotZoneSurfaceStateOffset", i1* null}
!346 = !{!"SWStackAddrspace", i32 -1}
!347 = !{!"SWStackSurfaceStateOffset", i1* null}
!348 = !{!"RTSyncStackAddrspace", i32 -1}
!349 = !{!"RTSyncStackSurfaceStateOffset", i1* null}
!350 = !{!"doSyncDispatchRays", i1 false}
!351 = !{!"MemStyle", !"Xe"}
!352 = !{!"GlobalDataStyle", !"Xe"}
!353 = !{!"uberTileDimensions", i1* null}
!354 = !{!"CurUniqueIndirectIdx", i32 0}
!355 = !{!"inlineDynTextures"}
!356 = !{!"inlineResInfoData"}
!357 = !{!"immConstant", !358, !359, !360}
!358 = !{!"data"}
!359 = !{!"sizes"}
!360 = !{!"zeroIdxs"}
!361 = !{!"stringConstants"}
!362 = !{!"inlineBuffers", !363, !367, !368}
!363 = !{!"inlineBuffersVec[0]", !364, !365, !366}
!364 = !{!"alignment", i32 0}
!365 = !{!"allocSize", i64 0}
!366 = !{!"Buffer"}
!367 = !{!"inlineBuffersVec[1]", !364, !365, !366}
!368 = !{!"inlineBuffersVec[2]", !364, !365, !366}
!369 = !{!"GlobalPointerProgramBinaryInfos"}
!370 = !{!"ConstantPointerProgramBinaryInfos"}
!371 = !{!"GlobalBufferAddressRelocInfo"}
!372 = !{!"ConstantBufferAddressRelocInfo"}
!373 = !{!"forceLscCacheList"}
!374 = !{!"SrvMap"}
!375 = !{!"RasterizerOrderedByteAddressBuffer"}
!376 = !{!"RasterizerOrderedViews"}
!377 = !{!"MinNOSPushConstantSize", i32 0}
!378 = !{!"inlineProgramScopeOffsets"}
!379 = !{!"shaderData", !380}
!380 = !{!"numReplicas", i32 0}
!381 = !{!"URBInfo", !382, !383, !384}
!382 = !{!"has64BVertexHeaderInput", i1 false}
!383 = !{!"has64BVertexHeaderOutput", i1 false}
!384 = !{!"hasVertexHeader", i1 true}
!385 = !{!"UseBindlessImage", i1 true}
!386 = !{!"UseBindlessImageWithSamplerTracking", i1 false}
!387 = !{!"enableRangeReduce", i1 false}
!388 = !{!"allowMatchMadOptimizationforVS", i1 false}
!389 = !{!"disableMatchMadOptimizationForCS", i1 false}
!390 = !{!"disableMemOptforNegativeOffsetLoads", i1 false}
!391 = !{!"enableThreeWayLoadSpiltOpt", i1 false}
!392 = !{!"statefulResourcesNotAliased", i1 false}
!393 = !{!"disableMixMode", i1 false}
!394 = !{!"genericAccessesResolved", i1 false}
!395 = !{!"disableSeparateSpillPvtScratchSpace", i1 false}
!396 = !{!"enableSeparateSpillPvtScratchSpace", i1 false}
!397 = !{!"disableSeparateScratchWA", i1 false}
!398 = !{!"enableRemoveUnusedTGMFence", i1 false}
!399 = !{!"PrivateMemoryPerFG"}
!400 = !{!"m_OptsToDisable"}
!401 = !{!"capabilities", !402}
!402 = !{!"globalVariableDecorationsINTEL", i1 false}
!403 = !{!"extensions", !404}
!404 = !{!"spvINTELBindlessImages", i1 false}
!405 = !{!"m_ShaderResourceViewMcsMask", !406, !407}
!406 = !{!"m_ShaderResourceViewMcsMaskVec[0]", i64 0}
!407 = !{!"m_ShaderResourceViewMcsMaskVec[1]", i64 0}
!408 = !{!"computedDepthMode", i32 0}
!409 = !{!"isHDCFastClearShader", i1 false}
!410 = !{!"argRegisterReservations", !411}
!411 = !{!"argRegisterReservationsVec[0]", i32 0}
!412 = !{!"SIMD16_SpillThreshold", i8 0}
!413 = !{!"SIMD32_SpillThreshold", i8 0}
!414 = !{!"m_CacheControlOption", !415, !416, !417, !418}
!415 = !{!"LscLoadCacheControlOverride", i8 0}
!416 = !{!"LscStoreCacheControlOverride", i8 0}
!417 = !{!"TgmLoadCacheControlOverride", i8 0}
!418 = !{!"TgmStoreCacheControlOverride", i8 0}
!419 = !{!"ModuleUsesBindless", i1 false}
!420 = !{!"predicationMap"}
!421 = !{!"lifeTimeStartMap"}
!422 = !{!"HitGroups"}
!423 = !{i32 2, i32 0}
!424 = !{!"clang version 15.0.7"}
!425 = !{i32 1, !"wchar_size", i32 4}
!426 = !{!427}
!427 = !{i32 44, i32 8}
!428 = !{!429}
!429 = !{i32 4469}
!430 = !{!429, !431}
!431 = !{i32 4470}
