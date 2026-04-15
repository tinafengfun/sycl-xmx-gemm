; ------------------------------------------------
; OCL_asm00de1ea9b83c878d_beforeUnification.ll
; ------------------------------------------------
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024"
target triple = "spir64-unknown-unknown"

%"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix" = type { %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* }
%spirv.CooperativeMatrixKHR._float_3_8_16_2 = type opaque
%"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1" = type { %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* }
%spirv.CooperativeMatrixKHR._short_3_8_16_0 = type opaque
%"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2" = type { %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* }
%spirv.CooperativeMatrixKHR._short_3_16_16_1 = type opaque
%"class.sycl::_V1::ext::oneapi::bfloat16" = type { i16 }

; Function Attrs: nounwind
define spir_kernel void @_ZTSZZZ5benchILi4ELi4ELi1ELi1ELb0EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4) #0 !kernel_arg_addr_space !280 !kernel_arg_access_qual !281 !kernel_arg_type !282 !kernel_arg_type_qual !283 !kernel_arg_base_type !282 !kernel_arg_name !283 !spirv.ParameterDecorations !284 !intel_reqd_sub_group_size !289 {
  %6 = alloca [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], align 8, !spirv.Decorations !290
  %7 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], align 8, !spirv.Decorations !290
  %8 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], align 8, !spirv.Decorations !290
  %9 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], align 8, !spirv.Decorations !290
  %10 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], align 8, !spirv.Decorations !290
  %11 = addrspacecast i8 addrspace(1)* %0 to i8 addrspace(4)*
  %12 = addrspacecast i8 addrspace(1)* %1 to i8 addrspace(4)*
  %13 = addrspacecast i8 addrspace(1)* %2 to i8 addrspace(4)*
  %14 = call spir_func i32 @_Z25__spirv_BuiltInSubgroupIdv() #3
  %15 = call spir_func i64 @_Z26__spirv_BuiltInWorkgroupIdi(i32 1) #3
  %16 = icmp ult i64 %15, 2147483648
  call void @llvm.assume(i1 %16)
  %17 = trunc i64 %15 to i32
  %18 = call spir_func i64 @_Z26__spirv_BuiltInWorkgroupIdi(i32 0) #3
  %19 = icmp ult i64 %18, 2147483648
  call void @llvm.assume(i1 %19)
  %20 = trunc i64 %18 to i32
  %21 = add i32 %14, %17
  %22 = shl i32 %21, 5
  %23 = shl nsw i32 %20, 6, !spirv.Decorations !292
  %24 = call spir_func i8 addrspace(1)* @_Z41__spirv_GenericCastToPtrExplicit_ToGlobalPU3AS4ci(i8 addrspace(4)* %11, i32 5) #0
  %25 = call spir_func i8 addrspace(1)* @_Z41__spirv_GenericCastToPtrExplicit_ToGlobalPU3AS4ci(i8 addrspace(4)* %12, i32 5) #0
  %26 = call spir_func i8 addrspace(1)* @_Z41__spirv_GenericCastToPtrExplicit_ToGlobalPU3AS4ci(i8 addrspace(4)* %13, i32 5) #0
  %27 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %27)
  %28 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 0, i64 0
  %29 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 1
  br label %30

30:                                               ; preds = %30, %5
  %31 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* [ %28, %5 ], [ %32, %30 ]
  %32 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %31, i64 1
  %33 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %29 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"*
  %34 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %32 to i64
  %35 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %33 to i64
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %.preheader1, label %30

.preheader1:                                      ; preds = %30
  br label %37

37:                                               ; preds = %69, %.preheader1
  %38 = phi i32 [ %70, %69 ], [ 0, %.preheader1 ]
  %39 = icmp ult i32 %38, 4
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = sext i32 %38 to i64
  br label %66

42:                                               ; preds = %37
  %43 = mul nsw i32 %22, %3, !spirv.Decorations !292
  %44 = sext i32 %43 to i64
  %45 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %46 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %45, i64 %44
  %47 = sext i32 %3 to i64
  %48 = shl nsw i32 %4, 1, !spirv.Decorations !292
  %49 = sext i32 %48 to i64
  %50 = shl nuw nsw i64 %18, 7, !spirv.Decorations !294
  %51 = and i64 %50, 4294967168
  %52 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %53 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %52, i64 %51
  %54 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 0, i64 0
  %55 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 1
  %56 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 0, i64 0
  %57 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 1
  %58 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 0, i64 0
  %59 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 1
  %60 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 0, i64 0
  %61 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 1
  %62 = sext i32 %3 to i64
  %63 = shl nsw i32 %4, 1, !spirv.Decorations !292
  %64 = sext i32 %63 to i64
  %65 = shl i32 %20, 7
  br label %77

66:                                               ; preds = %71, %40
  %67 = phi i32 [ %76, %71 ], [ 0, %40 ]
  %68 = icmp ult i32 %67, 4
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = add nuw nsw i32 %38, 1, !spirv.Decorations !294
  br label %37

71:                                               ; preds = %66
  %72 = zext i32 %67 to i64
  %73 = call spir_func %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* @_Z26__spirv_CompositeConstructf(float 0.000000e+00) #0
  %74 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 %41, i64 %72
  %75 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %74 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %73, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %75, align 8
  %76 = add nuw nsw i32 %67, 1, !spirv.Decorations !294
  br label %66

77:                                               ; preds = %192, %42
  %78 = phi i32 [ %86, %192 ], [ 0, %42 ]
  %79 = icmp slt i32 %78, %3
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = sext i32 %23 to i64
  %82 = bitcast i8 addrspace(1)* %26 to float addrspace(1)*
  %83 = getelementptr float, float addrspace(1)* %82, i64 %81
  %84 = sext i32 %4 to i64
  br label %219

85:                                               ; preds = %77
  %86 = add nuw nsw i32 %78, 32, !spirv.Decorations !294
  %87 = icmp slt i32 %86, %3
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = sext i32 %86 to i64
  %90 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %46, i64 %89
  %91 = addrspacecast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %90 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(4)*
  call spir_func void @"_Z38__spirv_CooperativeMatrixPrefetchINTELPU3AS438class.sycl::_V1::ext::oneapi::bfloat16iiiil"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(4)* %91, i32 8, i32 32, i32 0, i32 0, i64 %47) #0
  %92 = lshr i32 %86, 1
  %93 = zext i32 %92 to i64
  %94 = mul nsw i64 %93, %49, !spirv.Decorations !292
  %95 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %53, i64 %94
  %96 = addrspacecast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %95 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(4)*
  call spir_func void @"_Z38__spirv_CooperativeMatrixPrefetchINTELPU3AS438class.sycl::_V1::ext::oneapi::bfloat16iiiil"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(4)* %96, i32 8, i32 32, i32 0, i32 0, i64 %49) #0
  br label %97

97:                                               ; preds = %88, %85
  %98 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %98)
  br label %99

99:                                               ; preds = %99, %97
  %100 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* [ %54, %97 ], [ %101, %99 ]
  %101 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %100, i64 1
  %102 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %55 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"*
  %103 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %101 to i64
  %104 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %102 to i64
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %99

106:                                              ; preds = %99
  %107 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %107)
  br label %108

108:                                              ; preds = %108, %106
  %109 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* [ %56, %106 ], [ %110, %108 ]
  %110 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %109, i64 1
  %111 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %57 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"*
  %112 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %110 to i64
  %113 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %111 to i64
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %108

115:                                              ; preds = %108
  %116 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %116)
  br label %117

117:                                              ; preds = %117, %115
  %118 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* [ %58, %115 ], [ %119, %117 ]
  %119 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %118, i64 1
  %120 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %59 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"*
  %121 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %119 to i64
  %122 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %120 to i64
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %117

124:                                              ; preds = %117
  %125 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %125)
  br label %126

126:                                              ; preds = %126, %124
  %127 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* [ %60, %124 ], [ %128, %126 ]
  %128 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %127, i64 1
  %129 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %61 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"*
  %130 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %128 to i64
  %131 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %129 to i64
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %126

133:                                              ; preds = %126
  %134 = sext i32 %78 to i64
  %135 = bitcast i8 addrspace(1)* %24 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %136 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %135, i64 %134
  br label %137

137:                                              ; preds = %151, %133
  %138 = phi i32 [ %165, %151 ], [ 0, %133 ]
  %139 = icmp ult i32 %138, 4
  br i1 %139, label %151, label %140

140:                                              ; preds = %137
  %141 = lshr i32 %78, 1
  %142 = zext i32 %141 to i64
  %143 = mul nsw i64 %142, %64, !spirv.Decorations !292
  %144 = bitcast i8 addrspace(1)* %25 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %145 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %144, i64 %143
  %146 = or i32 %141, 8
  %147 = zext i32 %146 to i64
  %148 = mul nsw i64 %147, %64, !spirv.Decorations !292
  %149 = bitcast i8 addrspace(1)* %25 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %150 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %149, i64 %148
  br label %166

151:                                              ; preds = %137
  %152 = zext i32 %138 to i64
  %153 = shl nuw nsw i32 %138, 3, !spirv.Decorations !294
  %154 = or i32 %22, %153
  %155 = mul nsw i32 %154, %3, !spirv.Decorations !292
  %156 = sext i32 %155 to i64
  %157 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %136, i64 %156
  %158 = call spir_func %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* @"_Z86__spirv_CooperativeMatrixLoadKHR_RPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %157, i32 0, i64 %62, i32 0) #0
  %159 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 0, i64 %152
  %160 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %159 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %158, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %160, align 8
  %161 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %157, i64 16
  %162 = call spir_func %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* @"_Z86__spirv_CooperativeMatrixLoadKHR_RPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %161, i32 0, i64 %62, i32 0) #0
  %163 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 0, i64 %152
  %164 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %163 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %162, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %164, align 8
  %165 = add nuw nsw i32 %138, 1, !spirv.Decorations !294
  br label %137

166:                                              ; preds = %169, %140
  %167 = phi i32 [ %182, %169 ], [ 0, %140 ]
  %168 = icmp ult i32 %167, 4
  br i1 %168, label %169, label %.preheader

.preheader:                                       ; preds = %166
  br label %183

169:                                              ; preds = %166
  %170 = zext i32 %167 to i64
  %171 = shl nuw nsw i32 %167, 5, !spirv.Decorations !294
  %172 = or i32 %171, %65
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %145, i64 %173
  %175 = call spir_func %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* @"_Z87__spirv_CooperativeMatrixLoadKHR_RPU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %174, i32 2, i64 %64, i32 0) #0
  %176 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 0, i64 %170
  %177 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %176 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %175, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %177, align 8
  %178 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %150, i64 %173
  %179 = call spir_func %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* @"_Z87__spirv_CooperativeMatrixLoadKHR_RPU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %178, i32 2, i64 %64, i32 0) #0
  %180 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 0, i64 %170
  %181 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %180 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %179, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %181, align 8
  %182 = add nuw nsw i32 %167, 1, !spirv.Decorations !294
  br label %166

183:                                              ; preds = %200, %.preheader
  %184 = phi i32 [ %201, %200 ], [ 0, %.preheader ]
  %185 = icmp ult i32 %184, 4
  br i1 %185, label %186, label %192

186:                                              ; preds = %183
  %187 = sext i32 %184 to i64
  %188 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 0, i64 %187
  %189 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %188 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  %190 = load %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %189, align 8
  %191 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 0, i64 %187
  br label %197

192:                                              ; preds = %183
  %193 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %193)
  %194 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %194)
  %195 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %195)
  %196 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %196)
  br label %77

197:                                              ; preds = %202, %186
  %198 = phi i32 [ %218, %202 ], [ 0, %186 ]
  %199 = icmp ult i32 %198, 4
  br i1 %199, label %202, label %200

200:                                              ; preds = %197
  %201 = add nuw nsw i32 %184, 1, !spirv.Decorations !294
  br label %183

202:                                              ; preds = %197
  %203 = zext i32 %198 to i64
  %204 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 0, i64 %203
  %205 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %204 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  %206 = load %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %205, align 8
  %207 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 %187, i64 %203
  %208 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %207 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  %209 = load %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)*, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %208, align 8
  %210 = call spir_func %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* @_Z34__spirv_CooperativeMatrixMulAddKHRPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS144__spirv_CooperativeMatrixKHR__float_3_8_16_2i(%spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %190, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %206, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %209, i32 64) #0
  %211 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %191 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  %212 = load %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %211, align 8
  %213 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 0, i64 %203
  %214 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %213 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  %215 = load %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %214, align 8
  %216 = call spir_func %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* @_Z34__spirv_CooperativeMatrixMulAddKHRPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS144__spirv_CooperativeMatrixKHR__float_3_8_16_2i(%spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %212, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %215, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %210, i32 64) #0
  %217 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %207 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %216, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %217, align 8
  %218 = add nuw nsw i32 %198, 1, !spirv.Decorations !294
  br label %197

219:                                              ; preds = %232, %80
  %220 = phi i32 [ %233, %232 ], [ 0, %80 ]
  %221 = icmp ult i32 %220, 4
  br i1 %221, label %222, label %243

222:                                              ; preds = %219
  %223 = sext i32 %220 to i64
  %224 = shl nuw nsw i32 %220, 3, !spirv.Decorations !294
  %225 = or i32 %22, %224
  %226 = mul nsw i32 %225, %4, !spirv.Decorations !292
  %227 = sext i32 %226 to i64
  %228 = getelementptr float, float addrspace(1)* %83, i64 %227
  br label %229

229:                                              ; preds = %234, %222
  %230 = phi i32 [ %242, %234 ], [ 0, %222 ]
  %231 = icmp ult i32 %230, 4
  br i1 %231, label %234, label %232

232:                                              ; preds = %229
  %233 = add nuw nsw i32 %220, 1, !spirv.Decorations !294
  br label %219

234:                                              ; preds = %229
  %235 = zext i32 %230 to i64
  %236 = shl nuw nsw i32 %230, 4, !spirv.Decorations !294
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds float, float addrspace(1)* %228, i64 %237
  %239 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 %223, i64 %235
  %240 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %239 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  %241 = load %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)*, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %240, align 8
  call spir_func void @_Z33__spirv_CooperativeMatrixStoreKHRPU3AS1fPU3AS144__spirv_CooperativeMatrixKHR__float_3_8_16_2ili(float addrspace(1)* %238, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %241, i32 0, i64 %84, i32 0) #0
  %242 = add nuw nsw i32 %230, 1, !spirv.Decorations !294
  br label %229

243:                                              ; preds = %219
  %244 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %244)
  ret void
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nounwind
declare spir_func i8 addrspace(1)* @_Z41__spirv_GenericCastToPtrExplicit_ToGlobalPU3AS4ci(i8 addrspace(4)*, i32) #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare spir_func %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* @_Z26__spirv_CompositeConstructf(float) #0

; Function Attrs: nounwind
declare spir_func void @"_Z38__spirv_CooperativeMatrixPrefetchINTELPU3AS438class.sycl::_V1::ext::oneapi::bfloat16iiiil"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(4)*, i32, i32, i32, i32, i64) #0

; Function Attrs: nounwind
declare spir_func %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* @"_Z86__spirv_CooperativeMatrixLoadKHR_RPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*, i32, i64, i32) #0

; Function Attrs: nounwind
declare spir_func %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* @"_Z87__spirv_CooperativeMatrixLoadKHR_RPU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*, i32, i64, i32) #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare spir_func %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* @_Z34__spirv_CooperativeMatrixMulAddKHRPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS144__spirv_CooperativeMatrixKHR__float_3_8_16_2i(%spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)*, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)*, i32) #0

; Function Attrs: nounwind
declare spir_func void @_Z33__spirv_CooperativeMatrixStoreKHRPU3AS1fPU3AS144__spirv_CooperativeMatrixKHR__float_3_8_16_2ili(float addrspace(1)*, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)*, i32, i64, i32) #0

; Function Attrs: nounwind
define spir_kernel void @_ZTSZZZ5benchILi4ELi4ELi1ELi1ELb1EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4) #0 !kernel_arg_addr_space !280 !kernel_arg_access_qual !281 !kernel_arg_type !282 !kernel_arg_type_qual !283 !kernel_arg_base_type !282 !kernel_arg_name !283 !spirv.ParameterDecorations !284 !intel_reqd_sub_group_size !289 {
  %6 = alloca [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], align 8, !spirv.Decorations !290
  %7 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], align 8, !spirv.Decorations !290
  %8 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], align 8, !spirv.Decorations !290
  %9 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], align 8, !spirv.Decorations !290
  %10 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], align 8, !spirv.Decorations !290
  %11 = addrspacecast i8 addrspace(1)* %0 to i8 addrspace(4)*
  %12 = addrspacecast i8 addrspace(1)* %1 to i8 addrspace(4)*
  %13 = addrspacecast i8 addrspace(1)* %2 to i8 addrspace(4)*
  %14 = call spir_func i32 @_Z25__spirv_BuiltInSubgroupIdv() #3
  %15 = call spir_func i64 @_Z26__spirv_BuiltInWorkgroupIdi(i32 1) #3
  %16 = icmp ult i64 %15, 2147483648
  call void @llvm.assume(i1 %16)
  %17 = trunc i64 %15 to i32
  %18 = call spir_func i64 @_Z26__spirv_BuiltInWorkgroupIdi(i32 0) #3
  %19 = icmp ult i64 %18, 2147483648
  call void @llvm.assume(i1 %19)
  %20 = trunc i64 %18 to i32
  %21 = add i32 %14, %17
  %22 = shl i32 %21, 5
  %23 = shl nsw i32 %20, 6, !spirv.Decorations !292
  %24 = call spir_func i8 addrspace(1)* @_Z41__spirv_GenericCastToPtrExplicit_ToGlobalPU3AS4ci(i8 addrspace(4)* %11, i32 5) #0
  %25 = call spir_func i8 addrspace(1)* @_Z41__spirv_GenericCastToPtrExplicit_ToGlobalPU3AS4ci(i8 addrspace(4)* %12, i32 5) #0
  %26 = call spir_func i8 addrspace(1)* @_Z41__spirv_GenericCastToPtrExplicit_ToGlobalPU3AS4ci(i8 addrspace(4)* %13, i32 5) #0
  %27 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %27)
  %28 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 0, i64 0
  %29 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 1
  br label %30

30:                                               ; preds = %30, %5
  %31 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* [ %28, %5 ], [ %32, %30 ]
  %32 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %31, i64 1
  %33 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %29 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"*
  %34 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %32 to i64
  %35 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %33 to i64
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %.preheader1, label %30

.preheader1:                                      ; preds = %30
  br label %37

37:                                               ; preds = %58, %.preheader1
  %38 = phi i32 [ %59, %58 ], [ 0, %.preheader1 ]
  %39 = icmp ult i32 %38, 4
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = sext i32 %38 to i64
  br label %55

42:                                               ; preds = %37
  %43 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 0, i64 0
  %44 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 1
  %45 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 0, i64 0
  %46 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 1
  %47 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 0, i64 0
  %48 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 1
  %49 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 0, i64 0
  %50 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 1
  %51 = sext i32 %3 to i64
  %52 = shl nsw i32 %4, 1, !spirv.Decorations !292
  %53 = sext i32 %52 to i64
  %54 = shl i32 %20, 7
  br label %66

55:                                               ; preds = %60, %40
  %56 = phi i32 [ %65, %60 ], [ 0, %40 ]
  %57 = icmp ult i32 %56, 4
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = add nuw nsw i32 %38, 1, !spirv.Decorations !294
  br label %37

60:                                               ; preds = %55
  %61 = zext i32 %56 to i64
  %62 = call spir_func %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* @_Z26__spirv_CompositeConstructf(float 0.000000e+00) #0
  %63 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 %41, i64 %61
  %64 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %63 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %62, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %64, align 8
  %65 = add nuw nsw i32 %56, 1, !spirv.Decorations !294
  br label %55

66:                                               ; preds = %169, %42
  %67 = phi i32 [ %174, %169 ], [ 0, %42 ]
  %68 = icmp slt i32 %67, %3
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = sext i32 %23 to i64
  %71 = bitcast i8 addrspace(1)* %26 to float addrspace(1)*
  %72 = getelementptr float, float addrspace(1)* %71, i64 %70
  %73 = sext i32 %4 to i64
  br label %197

74:                                               ; preds = %66
  %75 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %75)
  br label %76

76:                                               ; preds = %76, %74
  %77 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* [ %43, %74 ], [ %78, %76 ]
  %78 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %77, i64 1
  %79 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %44 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"*
  %80 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %78 to i64
  %81 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %79 to i64
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %76

83:                                               ; preds = %76
  %84 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %84)
  br label %85

85:                                               ; preds = %85, %83
  %86 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* [ %45, %83 ], [ %87, %85 ]
  %87 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %86, i64 1
  %88 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %46 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"*
  %89 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %87 to i64
  %90 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %88 to i64
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %85

92:                                               ; preds = %85
  %93 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %93)
  br label %94

94:                                               ; preds = %94, %92
  %95 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* [ %47, %92 ], [ %96, %94 ]
  %96 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %95, i64 1
  %97 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %48 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"*
  %98 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %96 to i64
  %99 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %97 to i64
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %94

101:                                              ; preds = %94
  %102 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %102)
  br label %103

103:                                              ; preds = %103, %101
  %104 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* [ %49, %101 ], [ %105, %103 ]
  %105 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %104, i64 1
  %106 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %50 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"*
  %107 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %105 to i64
  %108 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %106 to i64
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %103

110:                                              ; preds = %103
  %111 = sext i32 %67 to i64
  %112 = bitcast i8 addrspace(1)* %24 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %113 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %112, i64 %111
  br label %114

114:                                              ; preds = %128, %110
  %115 = phi i32 [ %142, %128 ], [ 0, %110 ]
  %116 = icmp ult i32 %115, 4
  br i1 %116, label %128, label %117

117:                                              ; preds = %114
  %118 = lshr i32 %67, 1
  %119 = zext i32 %118 to i64
  %120 = mul nsw i64 %119, %53, !spirv.Decorations !292
  %121 = bitcast i8 addrspace(1)* %25 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %122 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %121, i64 %120
  %123 = or i32 %118, 8
  %124 = zext i32 %123 to i64
  %125 = mul nsw i64 %124, %53, !spirv.Decorations !292
  %126 = bitcast i8 addrspace(1)* %25 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %127 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %126, i64 %125
  br label %143

128:                                              ; preds = %114
  %129 = zext i32 %115 to i64
  %130 = shl nuw nsw i32 %115, 3, !spirv.Decorations !294
  %131 = or i32 %22, %130
  %132 = mul nsw i32 %131, %3, !spirv.Decorations !292
  %133 = sext i32 %132 to i64
  %134 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %113, i64 %133
  %135 = call spir_func %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* @"_Z86__spirv_CooperativeMatrixLoadKHR_RPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %134, i32 0, i64 %51, i32 0) #0
  %136 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 0, i64 %129
  %137 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %136 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %135, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %137, align 8
  %138 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %134, i64 16
  %139 = call spir_func %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* @"_Z86__spirv_CooperativeMatrixLoadKHR_RPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %138, i32 0, i64 %51, i32 0) #0
  %140 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 0, i64 %129
  %141 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %140 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %139, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %141, align 8
  %142 = add nuw nsw i32 %115, 1, !spirv.Decorations !294
  br label %114

143:                                              ; preds = %146, %117
  %144 = phi i32 [ %159, %146 ], [ 0, %117 ]
  %145 = icmp ult i32 %144, 4
  br i1 %145, label %146, label %.preheader

.preheader:                                       ; preds = %143
  br label %160

146:                                              ; preds = %143
  %147 = zext i32 %144 to i64
  %148 = shl nuw nsw i32 %144, 5, !spirv.Decorations !294
  %149 = or i32 %148, %54
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %122, i64 %150
  %152 = call spir_func %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* @"_Z87__spirv_CooperativeMatrixLoadKHR_RPU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %151, i32 2, i64 %53, i32 0) #0
  %153 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 0, i64 %147
  %154 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %153 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %152, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %154, align 8
  %155 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %127, i64 %150
  %156 = call spir_func %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* @"_Z87__spirv_CooperativeMatrixLoadKHR_RPU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %155, i32 2, i64 %53, i32 0) #0
  %157 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 0, i64 %147
  %158 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %157 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %156, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %158, align 8
  %159 = add nuw nsw i32 %144, 1, !spirv.Decorations !294
  br label %143

160:                                              ; preds = %178, %.preheader
  %161 = phi i32 [ %179, %178 ], [ 0, %.preheader ]
  %162 = icmp ult i32 %161, 4
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = sext i32 %161 to i64
  %165 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 0, i64 %164
  %166 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %165 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  %167 = load %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %166, align 8
  %168 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 0, i64 %164
  br label %175

169:                                              ; preds = %160
  %170 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %170)
  %171 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %171)
  %172 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %172)
  %173 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %173)
  %174 = add nuw nsw i32 %67, 32, !spirv.Decorations !294
  br label %66

175:                                              ; preds = %180, %163
  %176 = phi i32 [ %196, %180 ], [ 0, %163 ]
  %177 = icmp ult i32 %176, 4
  br i1 %177, label %180, label %178

178:                                              ; preds = %175
  %179 = add nuw nsw i32 %161, 1, !spirv.Decorations !294
  br label %160

180:                                              ; preds = %175
  %181 = zext i32 %176 to i64
  %182 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 0, i64 %181
  %183 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %182 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  %184 = load %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %183, align 8
  %185 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 %164, i64 %181
  %186 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %185 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  %187 = load %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)*, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %186, align 8
  %188 = call spir_func %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* @_Z34__spirv_CooperativeMatrixMulAddKHRPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS144__spirv_CooperativeMatrixKHR__float_3_8_16_2i(%spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %167, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %184, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %187, i32 64) #0
  %189 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %168 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  %190 = load %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %189, align 8
  %191 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 0, i64 %181
  %192 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %191 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  %193 = load %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %192, align 8
  %194 = call spir_func %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* @_Z34__spirv_CooperativeMatrixMulAddKHRPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS144__spirv_CooperativeMatrixKHR__float_3_8_16_2i(%spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %190, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %193, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %188, i32 64) #0
  %195 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %185 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %194, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %195, align 8
  %196 = add nuw nsw i32 %176, 1, !spirv.Decorations !294
  br label %175

197:                                              ; preds = %210, %69
  %198 = phi i32 [ %211, %210 ], [ 0, %69 ]
  %199 = icmp ult i32 %198, 4
  br i1 %199, label %200, label %221

200:                                              ; preds = %197
  %201 = sext i32 %198 to i64
  %202 = shl nuw nsw i32 %198, 3, !spirv.Decorations !294
  %203 = or i32 %22, %202
  %204 = mul nsw i32 %203, %4, !spirv.Decorations !292
  %205 = sext i32 %204 to i64
  %206 = getelementptr float, float addrspace(1)* %72, i64 %205
  br label %207

207:                                              ; preds = %212, %200
  %208 = phi i32 [ %220, %212 ], [ 0, %200 ]
  %209 = icmp ult i32 %208, 4
  br i1 %209, label %212, label %210

210:                                              ; preds = %207
  %211 = add nuw nsw i32 %198, 1, !spirv.Decorations !294
  br label %197

212:                                              ; preds = %207
  %213 = zext i32 %208 to i64
  %214 = shl nuw nsw i32 %208, 4, !spirv.Decorations !294
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds float, float addrspace(1)* %206, i64 %215
  %217 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 %201, i64 %213
  %218 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %217 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  %219 = load %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)*, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %218, align 8
  call spir_func void @_Z33__spirv_CooperativeMatrixStoreKHRPU3AS1fPU3AS144__spirv_CooperativeMatrixKHR__float_3_8_16_2ili(float addrspace(1)* %216, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %219, i32 0, i64 %73, i32 0) #0
  %220 = add nuw nsw i32 %208, 1, !spirv.Decorations !294
  br label %207

221:                                              ; preds = %197
  %222 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %222)
  ret void
}

; Function Attrs: nounwind
define spir_kernel void @_ZTSZZZ5benchILi4ELi4ELi2ELi2ELb0EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4) #0 !kernel_arg_addr_space !280 !kernel_arg_access_qual !281 !kernel_arg_type !282 !kernel_arg_type_qual !283 !kernel_arg_base_type !282 !kernel_arg_name !283 !spirv.ParameterDecorations !284 !intel_reqd_sub_group_size !289 {
  %6 = alloca [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], align 8, !spirv.Decorations !290
  %7 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], align 8, !spirv.Decorations !290
  %8 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], align 8, !spirv.Decorations !290
  %9 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], align 8, !spirv.Decorations !290
  %10 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], align 8, !spirv.Decorations !290
  %11 = addrspacecast i8 addrspace(1)* %0 to i8 addrspace(4)*
  %12 = addrspacecast i8 addrspace(1)* %1 to i8 addrspace(4)*
  %13 = addrspacecast i8 addrspace(1)* %2 to i8 addrspace(4)*
  %14 = call spir_func i32 @_Z25__spirv_BuiltInSubgroupIdv() #3
  %15 = sdiv i32 %14, 2
  %16 = mul i32 %15, 2
  %17 = sub i32 %14, %16
  %18 = call spir_func i64 @_Z26__spirv_BuiltInWorkgroupIdi(i32 1) #3
  %19 = icmp ult i64 %18, 2147483648
  call void @llvm.assume(i1 %19)
  %20 = trunc i64 %18 to i32
  %21 = call spir_func i64 @_Z26__spirv_BuiltInWorkgroupIdi(i32 0) #3
  %22 = icmp ult i64 %21, 2147483648
  call void @llvm.assume(i1 %22)
  %23 = trunc i64 %21 to i32
  %24 = shl nsw i32 %20, 6, !spirv.Decorations !292
  %25 = shl nsw i32 %15, 5, !spirv.Decorations !292
  %26 = add nsw i32 %24, %25, !spirv.Decorations !292
  %27 = shl nsw i32 %23, 7, !spirv.Decorations !292
  %28 = shl nsw i32 %17, 6, !spirv.Decorations !292
  %29 = add nsw i32 %27, %28, !spirv.Decorations !292
  %30 = call spir_func i8 addrspace(1)* @_Z41__spirv_GenericCastToPtrExplicit_ToGlobalPU3AS4ci(i8 addrspace(4)* %11, i32 5) #0
  %31 = call spir_func i8 addrspace(1)* @_Z41__spirv_GenericCastToPtrExplicit_ToGlobalPU3AS4ci(i8 addrspace(4)* %12, i32 5) #0
  %32 = call spir_func i8 addrspace(1)* @_Z41__spirv_GenericCastToPtrExplicit_ToGlobalPU3AS4ci(i8 addrspace(4)* %13, i32 5) #0
  %33 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %33)
  %34 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 0, i64 0
  %35 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 1
  br label %36

36:                                               ; preds = %36, %5
  %37 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* [ %34, %5 ], [ %38, %36 ]
  %38 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %37, i64 1
  %39 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %35 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"*
  %40 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %38 to i64
  %41 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %39 to i64
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %.preheader1, label %36

.preheader1:                                      ; preds = %36
  br label %43

43:                                               ; preds = %74, %.preheader1
  %44 = phi i32 [ %75, %74 ], [ 0, %.preheader1 ]
  %45 = icmp ult i32 %44, 4
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = sext i32 %44 to i64
  br label %71

48:                                               ; preds = %43
  %49 = mul nsw i32 %26, %3, !spirv.Decorations !292
  %50 = sext i32 %49 to i64
  %51 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %52 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %51, i64 %50
  %53 = sext i32 %3 to i64
  %54 = shl nsw i32 %4, 1, !spirv.Decorations !292
  %55 = sext i32 %54 to i64
  %56 = sext i32 %29 to i64
  %57 = shl nsw i64 %56, 1, !spirv.Decorations !292
  %58 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %59 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %58, i64 %57
  %60 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 0, i64 0
  %61 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 1
  %62 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 0, i64 0
  %63 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 1
  %64 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 0, i64 0
  %65 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 1
  %66 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 0, i64 0
  %67 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 1
  %68 = sext i32 %3 to i64
  %69 = shl nsw i32 %4, 1, !spirv.Decorations !292
  %70 = sext i32 %69 to i64
  br label %82

71:                                               ; preds = %76, %46
  %72 = phi i32 [ %81, %76 ], [ 0, %46 ]
  %73 = icmp ult i32 %72, 4
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = add nuw nsw i32 %44, 1, !spirv.Decorations !294
  br label %43

76:                                               ; preds = %71
  %77 = zext i32 %72 to i64
  %78 = call spir_func %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* @_Z26__spirv_CompositeConstructf(float 0.000000e+00) #0
  %79 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 %47, i64 %77
  %80 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %79 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %78, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %80, align 8
  %81 = add nuw nsw i32 %72, 1, !spirv.Decorations !294
  br label %71

82:                                               ; preds = %198, %48
  %83 = phi i32 [ %91, %198 ], [ 0, %48 ]
  %84 = icmp slt i32 %83, %3
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = sext i32 %29 to i64
  %87 = bitcast i8 addrspace(1)* %32 to float addrspace(1)*
  %88 = getelementptr float, float addrspace(1)* %87, i64 %86
  %89 = sext i32 %4 to i64
  br label %225

90:                                               ; preds = %82
  %91 = add nuw nsw i32 %83, 32, !spirv.Decorations !294
  %92 = icmp slt i32 %91, %3
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = sext i32 %91 to i64
  %95 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %52, i64 %94
  %96 = addrspacecast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %95 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(4)*
  call spir_func void @"_Z38__spirv_CooperativeMatrixPrefetchINTELPU3AS438class.sycl::_V1::ext::oneapi::bfloat16iiiil"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(4)* %96, i32 8, i32 32, i32 0, i32 0, i64 %53) #0
  %97 = lshr i32 %91, 1
  %98 = zext i32 %97 to i64
  %99 = mul nsw i64 %98, %55, !spirv.Decorations !292
  %100 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %59, i64 %99
  %101 = addrspacecast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %100 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(4)*
  call spir_func void @"_Z38__spirv_CooperativeMatrixPrefetchINTELPU3AS438class.sycl::_V1::ext::oneapi::bfloat16iiiil"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(4)* %101, i32 8, i32 32, i32 0, i32 0, i64 %55) #0
  br label %102

102:                                              ; preds = %93, %90
  %103 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %103)
  br label %104

104:                                              ; preds = %104, %102
  %105 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* [ %60, %102 ], [ %106, %104 ]
  %106 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %105, i64 1
  %107 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %61 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"*
  %108 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %106 to i64
  %109 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %107 to i64
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %104

111:                                              ; preds = %104
  %112 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %112)
  br label %113

113:                                              ; preds = %113, %111
  %114 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* [ %62, %111 ], [ %115, %113 ]
  %115 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %114, i64 1
  %116 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %63 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"*
  %117 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %115 to i64
  %118 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %116 to i64
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %113

120:                                              ; preds = %113
  %121 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %121)
  br label %122

122:                                              ; preds = %122, %120
  %123 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* [ %64, %120 ], [ %124, %122 ]
  %124 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %123, i64 1
  %125 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %65 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"*
  %126 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %124 to i64
  %127 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %125 to i64
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %122

129:                                              ; preds = %122
  %130 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %130)
  br label %131

131:                                              ; preds = %131, %129
  %132 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* [ %66, %129 ], [ %133, %131 ]
  %133 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %132, i64 1
  %134 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %67 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"*
  %135 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %133 to i64
  %136 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %134 to i64
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %131

138:                                              ; preds = %131
  %139 = sext i32 %83 to i64
  %140 = bitcast i8 addrspace(1)* %30 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %141 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %140, i64 %139
  br label %142

142:                                              ; preds = %156, %138
  %143 = phi i32 [ %170, %156 ], [ 0, %138 ]
  %144 = icmp ult i32 %143, 4
  br i1 %144, label %156, label %145

145:                                              ; preds = %142
  %146 = lshr i32 %83, 1
  %147 = zext i32 %146 to i64
  %148 = mul nsw i64 %147, %70, !spirv.Decorations !292
  %149 = bitcast i8 addrspace(1)* %31 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %150 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %149, i64 %148
  %151 = or i32 %146, 8
  %152 = zext i32 %151 to i64
  %153 = mul nsw i64 %152, %70, !spirv.Decorations !292
  %154 = bitcast i8 addrspace(1)* %31 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %155 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %154, i64 %153
  br label %171

156:                                              ; preds = %142
  %157 = zext i32 %143 to i64
  %158 = shl nuw nsw i32 %143, 3, !spirv.Decorations !294
  %159 = or i32 %26, %158
  %160 = mul nsw i32 %159, %3, !spirv.Decorations !292
  %161 = sext i32 %160 to i64
  %162 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %141, i64 %161
  %163 = call spir_func %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* @"_Z86__spirv_CooperativeMatrixLoadKHR_RPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %162, i32 0, i64 %68, i32 0) #0
  %164 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 0, i64 %157
  %165 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %164 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %163, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %165, align 8
  %166 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %162, i64 16
  %167 = call spir_func %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* @"_Z86__spirv_CooperativeMatrixLoadKHR_RPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %166, i32 0, i64 %68, i32 0) #0
  %168 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 0, i64 %157
  %169 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %168 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %167, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %169, align 8
  %170 = add nuw nsw i32 %143, 1, !spirv.Decorations !294
  br label %142

171:                                              ; preds = %174, %145
  %172 = phi i32 [ %188, %174 ], [ 0, %145 ]
  %173 = icmp ult i32 %172, 4
  br i1 %173, label %174, label %.preheader

.preheader:                                       ; preds = %171
  br label %189

174:                                              ; preds = %171
  %175 = shl nuw nsw i32 %172, 4, !spirv.Decorations !294
  %176 = or i32 %29, %175
  %177 = zext i32 %172 to i64
  %178 = sext i32 %176 to i64
  %179 = shl nsw i64 %178, 1, !spirv.Decorations !292
  %180 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %150, i64 %179
  %181 = call spir_func %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* @"_Z87__spirv_CooperativeMatrixLoadKHR_RPU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %180, i32 2, i64 %70, i32 0) #0
  %182 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 0, i64 %177
  %183 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %182 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %181, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %183, align 8
  %184 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %155, i64 %179
  %185 = call spir_func %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* @"_Z87__spirv_CooperativeMatrixLoadKHR_RPU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %184, i32 2, i64 %70, i32 0) #0
  %186 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 0, i64 %177
  %187 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %186 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %185, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %187, align 8
  %188 = add nuw nsw i32 %172, 1, !spirv.Decorations !294
  br label %171

189:                                              ; preds = %206, %.preheader
  %190 = phi i32 [ %207, %206 ], [ 0, %.preheader ]
  %191 = icmp ult i32 %190, 4
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = sext i32 %190 to i64
  %194 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 0, i64 %193
  %195 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %194 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  %196 = load %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %195, align 8
  %197 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 0, i64 %193
  br label %203

198:                                              ; preds = %189
  %199 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %199)
  %200 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %200)
  %201 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %201)
  %202 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %202)
  br label %82

203:                                              ; preds = %208, %192
  %204 = phi i32 [ %224, %208 ], [ 0, %192 ]
  %205 = icmp ult i32 %204, 4
  br i1 %205, label %208, label %206

206:                                              ; preds = %203
  %207 = add nuw nsw i32 %190, 1, !spirv.Decorations !294
  br label %189

208:                                              ; preds = %203
  %209 = zext i32 %204 to i64
  %210 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 0, i64 %209
  %211 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %210 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  %212 = load %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %211, align 8
  %213 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 %193, i64 %209
  %214 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %213 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  %215 = load %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)*, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %214, align 8
  %216 = call spir_func %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* @_Z34__spirv_CooperativeMatrixMulAddKHRPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS144__spirv_CooperativeMatrixKHR__float_3_8_16_2i(%spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %196, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %212, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %215, i32 64) #0
  %217 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %197 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  %218 = load %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %217, align 8
  %219 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 0, i64 %209
  %220 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %219 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  %221 = load %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %220, align 8
  %222 = call spir_func %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* @_Z34__spirv_CooperativeMatrixMulAddKHRPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS144__spirv_CooperativeMatrixKHR__float_3_8_16_2i(%spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %218, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %221, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %216, i32 64) #0
  %223 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %213 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %222, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %223, align 8
  %224 = add nuw nsw i32 %204, 1, !spirv.Decorations !294
  br label %203

225:                                              ; preds = %238, %85
  %226 = phi i32 [ %239, %238 ], [ 0, %85 ]
  %227 = icmp ult i32 %226, 4
  br i1 %227, label %228, label %249

228:                                              ; preds = %225
  %229 = sext i32 %226 to i64
  %230 = shl nuw nsw i32 %226, 3, !spirv.Decorations !294
  %231 = or i32 %26, %230
  %232 = mul nsw i32 %231, %4, !spirv.Decorations !292
  %233 = sext i32 %232 to i64
  %234 = getelementptr float, float addrspace(1)* %88, i64 %233
  br label %235

235:                                              ; preds = %240, %228
  %236 = phi i32 [ %248, %240 ], [ 0, %228 ]
  %237 = icmp ult i32 %236, 4
  br i1 %237, label %240, label %238

238:                                              ; preds = %235
  %239 = add nuw nsw i32 %226, 1, !spirv.Decorations !294
  br label %225

240:                                              ; preds = %235
  %241 = zext i32 %236 to i64
  %242 = shl nuw nsw i32 %236, 4, !spirv.Decorations !294
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds float, float addrspace(1)* %234, i64 %243
  %245 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 %229, i64 %241
  %246 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %245 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  %247 = load %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)*, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %246, align 8
  call spir_func void @_Z33__spirv_CooperativeMatrixStoreKHRPU3AS1fPU3AS144__spirv_CooperativeMatrixKHR__float_3_8_16_2ili(float addrspace(1)* %244, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %247, i32 0, i64 %89, i32 0) #0
  %248 = add nuw nsw i32 %236, 1, !spirv.Decorations !294
  br label %235

249:                                              ; preds = %225
  %250 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %250)
  ret void
}

; Function Attrs: nounwind
define spir_kernel void @_ZTSZZZ5benchILi4ELi4ELi2ELi2ELb1EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4) #0 !kernel_arg_addr_space !280 !kernel_arg_access_qual !281 !kernel_arg_type !282 !kernel_arg_type_qual !283 !kernel_arg_base_type !282 !kernel_arg_name !283 !spirv.ParameterDecorations !284 !intel_reqd_sub_group_size !289 {
  %6 = alloca [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], align 8, !spirv.Decorations !290
  %7 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], align 8, !spirv.Decorations !290
  %8 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], align 8, !spirv.Decorations !290
  %9 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], align 8, !spirv.Decorations !290
  %10 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], align 8, !spirv.Decorations !290
  %11 = addrspacecast i8 addrspace(1)* %0 to i8 addrspace(4)*
  %12 = addrspacecast i8 addrspace(1)* %1 to i8 addrspace(4)*
  %13 = addrspacecast i8 addrspace(1)* %2 to i8 addrspace(4)*
  %14 = call spir_func i32 @_Z25__spirv_BuiltInSubgroupIdv() #3
  %15 = sdiv i32 %14, 2
  %16 = mul i32 %15, 2
  %17 = sub i32 %14, %16
  %18 = call spir_func i64 @_Z26__spirv_BuiltInWorkgroupIdi(i32 1) #3
  %19 = icmp ult i64 %18, 2147483648
  call void @llvm.assume(i1 %19)
  %20 = trunc i64 %18 to i32
  %21 = call spir_func i64 @_Z26__spirv_BuiltInWorkgroupIdi(i32 0) #3
  %22 = icmp ult i64 %21, 2147483648
  call void @llvm.assume(i1 %22)
  %23 = trunc i64 %21 to i32
  %24 = shl nsw i32 %20, 6, !spirv.Decorations !292
  %25 = shl nsw i32 %15, 5, !spirv.Decorations !292
  %26 = add nsw i32 %24, %25, !spirv.Decorations !292
  %27 = shl nsw i32 %23, 7, !spirv.Decorations !292
  %28 = shl nsw i32 %17, 6, !spirv.Decorations !292
  %29 = add nsw i32 %27, %28, !spirv.Decorations !292
  %30 = call spir_func i8 addrspace(1)* @_Z41__spirv_GenericCastToPtrExplicit_ToGlobalPU3AS4ci(i8 addrspace(4)* %11, i32 5) #0
  %31 = call spir_func i8 addrspace(1)* @_Z41__spirv_GenericCastToPtrExplicit_ToGlobalPU3AS4ci(i8 addrspace(4)* %12, i32 5) #0
  %32 = call spir_func i8 addrspace(1)* @_Z41__spirv_GenericCastToPtrExplicit_ToGlobalPU3AS4ci(i8 addrspace(4)* %13, i32 5) #0
  %33 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %33)
  %34 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 0, i64 0
  %35 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 1
  br label %36

36:                                               ; preds = %36, %5
  %37 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* [ %34, %5 ], [ %38, %36 ]
  %38 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %37, i64 1
  %39 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %35 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"*
  %40 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %38 to i64
  %41 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %39 to i64
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %.preheader1, label %36

.preheader1:                                      ; preds = %36
  br label %43

43:                                               ; preds = %63, %.preheader1
  %44 = phi i32 [ %64, %63 ], [ 0, %.preheader1 ]
  %45 = icmp ult i32 %44, 4
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = sext i32 %44 to i64
  br label %60

48:                                               ; preds = %43
  %49 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 0, i64 0
  %50 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 1
  %51 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 0, i64 0
  %52 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 1
  %53 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 0, i64 0
  %54 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 1
  %55 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 0, i64 0
  %56 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 1
  %57 = sext i32 %3 to i64
  %58 = shl nsw i32 %4, 1, !spirv.Decorations !292
  %59 = sext i32 %58 to i64
  br label %71

60:                                               ; preds = %65, %46
  %61 = phi i32 [ %70, %65 ], [ 0, %46 ]
  %62 = icmp ult i32 %61, 4
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = add nuw nsw i32 %44, 1, !spirv.Decorations !294
  br label %43

65:                                               ; preds = %60
  %66 = zext i32 %61 to i64
  %67 = call spir_func %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* @_Z26__spirv_CompositeConstructf(float 0.000000e+00) #0
  %68 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 %47, i64 %66
  %69 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %68 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %67, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %69, align 8
  %70 = add nuw nsw i32 %61, 1, !spirv.Decorations !294
  br label %60

71:                                               ; preds = %175, %48
  %72 = phi i32 [ %180, %175 ], [ 0, %48 ]
  %73 = icmp slt i32 %72, %3
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = sext i32 %29 to i64
  %76 = bitcast i8 addrspace(1)* %32 to float addrspace(1)*
  %77 = getelementptr float, float addrspace(1)* %76, i64 %75
  %78 = sext i32 %4 to i64
  br label %203

79:                                               ; preds = %71
  %80 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %80)
  br label %81

81:                                               ; preds = %81, %79
  %82 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* [ %49, %79 ], [ %83, %81 ]
  %83 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %82, i64 1
  %84 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %50 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"*
  %85 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %83 to i64
  %86 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %84 to i64
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %81

88:                                               ; preds = %81
  %89 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %89)
  br label %90

90:                                               ; preds = %90, %88
  %91 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* [ %51, %88 ], [ %92, %90 ]
  %92 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %91, i64 1
  %93 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %52 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"*
  %94 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %92 to i64
  %95 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %93 to i64
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %90

97:                                               ; preds = %90
  %98 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %98)
  br label %99

99:                                               ; preds = %99, %97
  %100 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* [ %53, %97 ], [ %101, %99 ]
  %101 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %100, i64 1
  %102 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %54 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"*
  %103 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %101 to i64
  %104 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %102 to i64
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %99

106:                                              ; preds = %99
  %107 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %107)
  br label %108

108:                                              ; preds = %108, %106
  %109 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* [ %55, %106 ], [ %110, %108 ]
  %110 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %109, i64 1
  %111 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %56 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"*
  %112 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %110 to i64
  %113 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %111 to i64
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %108

115:                                              ; preds = %108
  %116 = sext i32 %72 to i64
  %117 = bitcast i8 addrspace(1)* %30 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %118 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %117, i64 %116
  br label %119

119:                                              ; preds = %133, %115
  %120 = phi i32 [ %147, %133 ], [ 0, %115 ]
  %121 = icmp ult i32 %120, 4
  br i1 %121, label %133, label %122

122:                                              ; preds = %119
  %123 = lshr i32 %72, 1
  %124 = zext i32 %123 to i64
  %125 = mul nsw i64 %124, %59, !spirv.Decorations !292
  %126 = bitcast i8 addrspace(1)* %31 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %127 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %126, i64 %125
  %128 = or i32 %123, 8
  %129 = zext i32 %128 to i64
  %130 = mul nsw i64 %129, %59, !spirv.Decorations !292
  %131 = bitcast i8 addrspace(1)* %31 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %132 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %131, i64 %130
  br label %148

133:                                              ; preds = %119
  %134 = zext i32 %120 to i64
  %135 = shl nuw nsw i32 %120, 3, !spirv.Decorations !294
  %136 = or i32 %26, %135
  %137 = mul nsw i32 %136, %3, !spirv.Decorations !292
  %138 = sext i32 %137 to i64
  %139 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %118, i64 %138
  %140 = call spir_func %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* @"_Z86__spirv_CooperativeMatrixLoadKHR_RPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %139, i32 0, i64 %57, i32 0) #0
  %141 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 0, i64 %134
  %142 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %141 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %140, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %142, align 8
  %143 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %139, i64 16
  %144 = call spir_func %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* @"_Z86__spirv_CooperativeMatrixLoadKHR_RPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %143, i32 0, i64 %57, i32 0) #0
  %145 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 0, i64 %134
  %146 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %145 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %144, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %146, align 8
  %147 = add nuw nsw i32 %120, 1, !spirv.Decorations !294
  br label %119

148:                                              ; preds = %151, %122
  %149 = phi i32 [ %165, %151 ], [ 0, %122 ]
  %150 = icmp ult i32 %149, 4
  br i1 %150, label %151, label %.preheader

.preheader:                                       ; preds = %148
  br label %166

151:                                              ; preds = %148
  %152 = shl nuw nsw i32 %149, 4, !spirv.Decorations !294
  %153 = or i32 %29, %152
  %154 = zext i32 %149 to i64
  %155 = sext i32 %153 to i64
  %156 = shl nsw i64 %155, 1, !spirv.Decorations !292
  %157 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %127, i64 %156
  %158 = call spir_func %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* @"_Z87__spirv_CooperativeMatrixLoadKHR_RPU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %157, i32 2, i64 %59, i32 0) #0
  %159 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 0, i64 %154
  %160 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %159 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %158, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %160, align 8
  %161 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %132, i64 %156
  %162 = call spir_func %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* @"_Z87__spirv_CooperativeMatrixLoadKHR_RPU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %161, i32 2, i64 %59, i32 0) #0
  %163 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 0, i64 %154
  %164 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %163 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %162, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %164, align 8
  %165 = add nuw nsw i32 %149, 1, !spirv.Decorations !294
  br label %148

166:                                              ; preds = %184, %.preheader
  %167 = phi i32 [ %185, %184 ], [ 0, %.preheader ]
  %168 = icmp ult i32 %167, 4
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = sext i32 %167 to i64
  %171 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 0, i64 %170
  %172 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %171 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  %173 = load %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %172, align 8
  %174 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 0, i64 %170
  br label %181

175:                                              ; preds = %166
  %176 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %176)
  %177 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %177)
  %178 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %178)
  %179 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %179)
  %180 = add nuw nsw i32 %72, 32, !spirv.Decorations !294
  br label %71

181:                                              ; preds = %186, %169
  %182 = phi i32 [ %202, %186 ], [ 0, %169 ]
  %183 = icmp ult i32 %182, 4
  br i1 %183, label %186, label %184

184:                                              ; preds = %181
  %185 = add nuw nsw i32 %167, 1, !spirv.Decorations !294
  br label %166

186:                                              ; preds = %181
  %187 = zext i32 %182 to i64
  %188 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 0, i64 %187
  %189 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %188 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  %190 = load %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %189, align 8
  %191 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 %170, i64 %187
  %192 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %191 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  %193 = load %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)*, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %192, align 8
  %194 = call spir_func %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* @_Z34__spirv_CooperativeMatrixMulAddKHRPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS144__spirv_CooperativeMatrixKHR__float_3_8_16_2i(%spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %173, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %190, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %193, i32 64) #0
  %195 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %174 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  %196 = load %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %195, align 8
  %197 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 0, i64 %187
  %198 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %197 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  %199 = load %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %198, align 8
  %200 = call spir_func %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* @_Z34__spirv_CooperativeMatrixMulAddKHRPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS144__spirv_CooperativeMatrixKHR__float_3_8_16_2i(%spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %196, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %199, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %194, i32 64) #0
  %201 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %191 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %200, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %201, align 8
  %202 = add nuw nsw i32 %182, 1, !spirv.Decorations !294
  br label %181

203:                                              ; preds = %216, %74
  %204 = phi i32 [ %217, %216 ], [ 0, %74 ]
  %205 = icmp ult i32 %204, 4
  br i1 %205, label %206, label %227

206:                                              ; preds = %203
  %207 = sext i32 %204 to i64
  %208 = shl nuw nsw i32 %204, 3, !spirv.Decorations !294
  %209 = or i32 %26, %208
  %210 = mul nsw i32 %209, %4, !spirv.Decorations !292
  %211 = sext i32 %210 to i64
  %212 = getelementptr float, float addrspace(1)* %77, i64 %211
  br label %213

213:                                              ; preds = %218, %206
  %214 = phi i32 [ %226, %218 ], [ 0, %206 ]
  %215 = icmp ult i32 %214, 4
  br i1 %215, label %218, label %216

216:                                              ; preds = %213
  %217 = add nuw nsw i32 %204, 1, !spirv.Decorations !294
  br label %203

218:                                              ; preds = %213
  %219 = zext i32 %214 to i64
  %220 = shl nuw nsw i32 %214, 4, !spirv.Decorations !294
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds float, float addrspace(1)* %212, i64 %221
  %223 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 %207, i64 %219
  %224 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %223 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  %225 = load %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)*, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %224, align 8
  call spir_func void @_Z33__spirv_CooperativeMatrixStoreKHRPU3AS1fPU3AS144__spirv_CooperativeMatrixKHR__float_3_8_16_2ili(float addrspace(1)* %222, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %225, i32 0, i64 %78, i32 0) #0
  %226 = add nuw nsw i32 %214, 1, !spirv.Decorations !294
  br label %213

227:                                              ; preds = %203
  %228 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %228)
  ret void
}

; Function Attrs: nounwind
define spir_kernel void @_ZTSZZZ5benchILi4ELi4ELi4ELi2ELb0EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4) #0 !kernel_arg_addr_space !280 !kernel_arg_access_qual !281 !kernel_arg_type !282 !kernel_arg_type_qual !283 !kernel_arg_base_type !282 !kernel_arg_name !283 !spirv.ParameterDecorations !284 !intel_reqd_sub_group_size !289 {
  %6 = alloca [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], align 8, !spirv.Decorations !290
  %7 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], align 8, !spirv.Decorations !290
  %8 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], align 8, !spirv.Decorations !290
  %9 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], align 8, !spirv.Decorations !290
  %10 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], align 8, !spirv.Decorations !290
  %11 = addrspacecast i8 addrspace(1)* %0 to i8 addrspace(4)*
  %12 = addrspacecast i8 addrspace(1)* %1 to i8 addrspace(4)*
  %13 = addrspacecast i8 addrspace(1)* %2 to i8 addrspace(4)*
  %14 = call spir_func i32 @_Z25__spirv_BuiltInSubgroupIdv() #3
  %15 = sdiv i32 %14, 2
  %16 = mul i32 %15, 2
  %17 = sub i32 %14, %16
  %18 = call spir_func i64 @_Z26__spirv_BuiltInWorkgroupIdi(i32 1) #3
  %19 = icmp ult i64 %18, 2147483648
  call void @llvm.assume(i1 %19)
  %20 = trunc i64 %18 to i32
  %21 = call spir_func i64 @_Z26__spirv_BuiltInWorkgroupIdi(i32 0) #3
  %22 = icmp ult i64 %21, 2147483648
  call void @llvm.assume(i1 %22)
  %23 = trunc i64 %21 to i32
  %24 = shl nsw i32 %20, 7, !spirv.Decorations !292
  %25 = shl nsw i32 %15, 5, !spirv.Decorations !292
  %26 = add nsw i32 %24, %25, !spirv.Decorations !292
  %27 = shl nsw i32 %23, 7, !spirv.Decorations !292
  %28 = shl nsw i32 %17, 6, !spirv.Decorations !292
  %29 = add nsw i32 %27, %28, !spirv.Decorations !292
  %30 = call spir_func i8 addrspace(1)* @_Z41__spirv_GenericCastToPtrExplicit_ToGlobalPU3AS4ci(i8 addrspace(4)* %11, i32 5) #0
  %31 = call spir_func i8 addrspace(1)* @_Z41__spirv_GenericCastToPtrExplicit_ToGlobalPU3AS4ci(i8 addrspace(4)* %12, i32 5) #0
  %32 = call spir_func i8 addrspace(1)* @_Z41__spirv_GenericCastToPtrExplicit_ToGlobalPU3AS4ci(i8 addrspace(4)* %13, i32 5) #0
  %33 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %33)
  %34 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 0, i64 0
  %35 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 1
  br label %36

36:                                               ; preds = %36, %5
  %37 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* [ %34, %5 ], [ %38, %36 ]
  %38 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %37, i64 1
  %39 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %35 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"*
  %40 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %38 to i64
  %41 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %39 to i64
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %.preheader1, label %36

.preheader1:                                      ; preds = %36
  br label %43

43:                                               ; preds = %74, %.preheader1
  %44 = phi i32 [ %75, %74 ], [ 0, %.preheader1 ]
  %45 = icmp ult i32 %44, 4
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = sext i32 %44 to i64
  br label %71

48:                                               ; preds = %43
  %49 = mul nsw i32 %26, %3, !spirv.Decorations !292
  %50 = sext i32 %49 to i64
  %51 = bitcast i8 addrspace(1)* %0 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %52 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %51, i64 %50
  %53 = sext i32 %3 to i64
  %54 = shl nsw i32 %4, 1, !spirv.Decorations !292
  %55 = sext i32 %54 to i64
  %56 = sext i32 %29 to i64
  %57 = shl nsw i64 %56, 1, !spirv.Decorations !292
  %58 = bitcast i8 addrspace(1)* %1 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %59 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %58, i64 %57
  %60 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 0, i64 0
  %61 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 1
  %62 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 0, i64 0
  %63 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 1
  %64 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 0, i64 0
  %65 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 1
  %66 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 0, i64 0
  %67 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 1
  %68 = sext i32 %3 to i64
  %69 = shl nsw i32 %4, 1, !spirv.Decorations !292
  %70 = sext i32 %69 to i64
  br label %82

71:                                               ; preds = %76, %46
  %72 = phi i32 [ %81, %76 ], [ 0, %46 ]
  %73 = icmp ult i32 %72, 4
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = add nuw nsw i32 %44, 1, !spirv.Decorations !294
  br label %43

76:                                               ; preds = %71
  %77 = zext i32 %72 to i64
  %78 = call spir_func %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* @_Z26__spirv_CompositeConstructf(float 0.000000e+00) #0
  %79 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 %47, i64 %77
  %80 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %79 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %78, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %80, align 8
  %81 = add nuw nsw i32 %72, 1, !spirv.Decorations !294
  br label %71

82:                                               ; preds = %198, %48
  %83 = phi i32 [ %91, %198 ], [ 0, %48 ]
  %84 = icmp slt i32 %83, %3
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = sext i32 %29 to i64
  %87 = bitcast i8 addrspace(1)* %32 to float addrspace(1)*
  %88 = getelementptr float, float addrspace(1)* %87, i64 %86
  %89 = sext i32 %4 to i64
  br label %225

90:                                               ; preds = %82
  %91 = add nuw nsw i32 %83, 32, !spirv.Decorations !294
  %92 = icmp slt i32 %91, %3
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = sext i32 %91 to i64
  %95 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %52, i64 %94
  %96 = addrspacecast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %95 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(4)*
  call spir_func void @"_Z38__spirv_CooperativeMatrixPrefetchINTELPU3AS438class.sycl::_V1::ext::oneapi::bfloat16iiiil"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(4)* %96, i32 8, i32 32, i32 0, i32 0, i64 %53) #0
  %97 = lshr i32 %91, 1
  %98 = zext i32 %97 to i64
  %99 = mul nsw i64 %98, %55, !spirv.Decorations !292
  %100 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %59, i64 %99
  %101 = addrspacecast %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %100 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(4)*
  call spir_func void @"_Z38__spirv_CooperativeMatrixPrefetchINTELPU3AS438class.sycl::_V1::ext::oneapi::bfloat16iiiil"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(4)* %101, i32 8, i32 32, i32 0, i32 0, i64 %55) #0
  br label %102

102:                                              ; preds = %93, %90
  %103 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %103)
  br label %104

104:                                              ; preds = %104, %102
  %105 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* [ %60, %102 ], [ %106, %104 ]
  %106 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %105, i64 1
  %107 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %61 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"*
  %108 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %106 to i64
  %109 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %107 to i64
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %104

111:                                              ; preds = %104
  %112 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %112)
  br label %113

113:                                              ; preds = %113, %111
  %114 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* [ %62, %111 ], [ %115, %113 ]
  %115 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %114, i64 1
  %116 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %63 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"*
  %117 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %115 to i64
  %118 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %116 to i64
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %113

120:                                              ; preds = %113
  %121 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %121)
  br label %122

122:                                              ; preds = %122, %120
  %123 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* [ %64, %120 ], [ %124, %122 ]
  %124 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %123, i64 1
  %125 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %65 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"*
  %126 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %124 to i64
  %127 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %125 to i64
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %122

129:                                              ; preds = %122
  %130 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %130)
  br label %131

131:                                              ; preds = %131, %129
  %132 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* [ %66, %129 ], [ %133, %131 ]
  %133 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %132, i64 1
  %134 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %67 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"*
  %135 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %133 to i64
  %136 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %134 to i64
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %131

138:                                              ; preds = %131
  %139 = sext i32 %83 to i64
  %140 = bitcast i8 addrspace(1)* %30 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %141 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %140, i64 %139
  br label %142

142:                                              ; preds = %156, %138
  %143 = phi i32 [ %170, %156 ], [ 0, %138 ]
  %144 = icmp ult i32 %143, 4
  br i1 %144, label %156, label %145

145:                                              ; preds = %142
  %146 = lshr i32 %83, 1
  %147 = zext i32 %146 to i64
  %148 = mul nsw i64 %147, %70, !spirv.Decorations !292
  %149 = bitcast i8 addrspace(1)* %31 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %150 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %149, i64 %148
  %151 = or i32 %146, 8
  %152 = zext i32 %151 to i64
  %153 = mul nsw i64 %152, %70, !spirv.Decorations !292
  %154 = bitcast i8 addrspace(1)* %31 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %155 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %154, i64 %153
  br label %171

156:                                              ; preds = %142
  %157 = zext i32 %143 to i64
  %158 = shl nuw nsw i32 %143, 3, !spirv.Decorations !294
  %159 = or i32 %26, %158
  %160 = mul nsw i32 %159, %3, !spirv.Decorations !292
  %161 = sext i32 %160 to i64
  %162 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %141, i64 %161
  %163 = call spir_func %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* @"_Z86__spirv_CooperativeMatrixLoadKHR_RPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %162, i32 0, i64 %68, i32 0) #0
  %164 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 0, i64 %157
  %165 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %164 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %163, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %165, align 8
  %166 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %162, i64 16
  %167 = call spir_func %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* @"_Z86__spirv_CooperativeMatrixLoadKHR_RPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %166, i32 0, i64 %68, i32 0) #0
  %168 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 0, i64 %157
  %169 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %168 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %167, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %169, align 8
  %170 = add nuw nsw i32 %143, 1, !spirv.Decorations !294
  br label %142

171:                                              ; preds = %174, %145
  %172 = phi i32 [ %188, %174 ], [ 0, %145 ]
  %173 = icmp ult i32 %172, 4
  br i1 %173, label %174, label %.preheader

.preheader:                                       ; preds = %171
  br label %189

174:                                              ; preds = %171
  %175 = shl nuw nsw i32 %172, 4, !spirv.Decorations !294
  %176 = or i32 %29, %175
  %177 = zext i32 %172 to i64
  %178 = sext i32 %176 to i64
  %179 = shl nsw i64 %178, 1, !spirv.Decorations !292
  %180 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %150, i64 %179
  %181 = call spir_func %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* @"_Z87__spirv_CooperativeMatrixLoadKHR_RPU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %180, i32 2, i64 %70, i32 0) #0
  %182 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 0, i64 %177
  %183 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %182 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %181, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %183, align 8
  %184 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %155, i64 %179
  %185 = call spir_func %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* @"_Z87__spirv_CooperativeMatrixLoadKHR_RPU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %184, i32 2, i64 %70, i32 0) #0
  %186 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 0, i64 %177
  %187 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %186 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %185, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %187, align 8
  %188 = add nuw nsw i32 %172, 1, !spirv.Decorations !294
  br label %171

189:                                              ; preds = %206, %.preheader
  %190 = phi i32 [ %207, %206 ], [ 0, %.preheader ]
  %191 = icmp ult i32 %190, 4
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = sext i32 %190 to i64
  %194 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 0, i64 %193
  %195 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %194 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  %196 = load %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %195, align 8
  %197 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 0, i64 %193
  br label %203

198:                                              ; preds = %189
  %199 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %199)
  %200 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %200)
  %201 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %201)
  %202 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %202)
  br label %82

203:                                              ; preds = %208, %192
  %204 = phi i32 [ %224, %208 ], [ 0, %192 ]
  %205 = icmp ult i32 %204, 4
  br i1 %205, label %208, label %206

206:                                              ; preds = %203
  %207 = add nuw nsw i32 %190, 1, !spirv.Decorations !294
  br label %189

208:                                              ; preds = %203
  %209 = zext i32 %204 to i64
  %210 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 0, i64 %209
  %211 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %210 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  %212 = load %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %211, align 8
  %213 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 %193, i64 %209
  %214 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %213 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  %215 = load %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)*, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %214, align 8
  %216 = call spir_func %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* @_Z34__spirv_CooperativeMatrixMulAddKHRPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS144__spirv_CooperativeMatrixKHR__float_3_8_16_2i(%spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %196, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %212, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %215, i32 64) #0
  %217 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %197 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  %218 = load %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %217, align 8
  %219 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 0, i64 %209
  %220 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %219 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  %221 = load %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %220, align 8
  %222 = call spir_func %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* @_Z34__spirv_CooperativeMatrixMulAddKHRPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS144__spirv_CooperativeMatrixKHR__float_3_8_16_2i(%spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %218, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %221, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %216, i32 64) #0
  %223 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %213 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %222, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %223, align 8
  %224 = add nuw nsw i32 %204, 1, !spirv.Decorations !294
  br label %203

225:                                              ; preds = %238, %85
  %226 = phi i32 [ %239, %238 ], [ 0, %85 ]
  %227 = icmp ult i32 %226, 4
  br i1 %227, label %228, label %249

228:                                              ; preds = %225
  %229 = sext i32 %226 to i64
  %230 = shl nuw nsw i32 %226, 3, !spirv.Decorations !294
  %231 = or i32 %26, %230
  %232 = mul nsw i32 %231, %4, !spirv.Decorations !292
  %233 = sext i32 %232 to i64
  %234 = getelementptr float, float addrspace(1)* %88, i64 %233
  br label %235

235:                                              ; preds = %240, %228
  %236 = phi i32 [ %248, %240 ], [ 0, %228 ]
  %237 = icmp ult i32 %236, 4
  br i1 %237, label %240, label %238

238:                                              ; preds = %235
  %239 = add nuw nsw i32 %226, 1, !spirv.Decorations !294
  br label %225

240:                                              ; preds = %235
  %241 = zext i32 %236 to i64
  %242 = shl nuw nsw i32 %236, 4, !spirv.Decorations !294
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds float, float addrspace(1)* %234, i64 %243
  %245 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 %229, i64 %241
  %246 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %245 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  %247 = load %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)*, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %246, align 8
  call spir_func void @_Z33__spirv_CooperativeMatrixStoreKHRPU3AS1fPU3AS144__spirv_CooperativeMatrixKHR__float_3_8_16_2ili(float addrspace(1)* %244, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %247, i32 0, i64 %89, i32 0) #0
  %248 = add nuw nsw i32 %236, 1, !spirv.Decorations !294
  br label %235

249:                                              ; preds = %225
  %250 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %250)
  ret void
}

; Function Attrs: nounwind
define spir_kernel void @_ZTSZZZ5benchILi4ELi4ELi4ELi2ELb1EEdRN4sycl3_V15queueEiiiiiPKcENKUlvE_clEvENKUlRNS1_7handlerEE_clES8_EUlNS1_7nd_itemILi2EEEE_(i8 addrspace(1)* align 2 %0, i8 addrspace(1)* align 2 %1, i8 addrspace(1)* align 4 %2, i32 %3, i32 %4) #0 !kernel_arg_addr_space !280 !kernel_arg_access_qual !281 !kernel_arg_type !282 !kernel_arg_type_qual !283 !kernel_arg_base_type !282 !kernel_arg_name !283 !spirv.ParameterDecorations !284 !intel_reqd_sub_group_size !289 {
  %6 = alloca [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], align 8, !spirv.Decorations !290
  %7 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], align 8, !spirv.Decorations !290
  %8 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], align 8, !spirv.Decorations !290
  %9 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], align 8, !spirv.Decorations !290
  %10 = alloca [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], align 8, !spirv.Decorations !290
  %11 = addrspacecast i8 addrspace(1)* %0 to i8 addrspace(4)*
  %12 = addrspacecast i8 addrspace(1)* %1 to i8 addrspace(4)*
  %13 = addrspacecast i8 addrspace(1)* %2 to i8 addrspace(4)*
  %14 = call spir_func i32 @_Z25__spirv_BuiltInSubgroupIdv() #3
  %15 = sdiv i32 %14, 2
  %16 = mul i32 %15, 2
  %17 = sub i32 %14, %16
  %18 = call spir_func i64 @_Z26__spirv_BuiltInWorkgroupIdi(i32 1) #3
  %19 = icmp ult i64 %18, 2147483648
  call void @llvm.assume(i1 %19)
  %20 = trunc i64 %18 to i32
  %21 = call spir_func i64 @_Z26__spirv_BuiltInWorkgroupIdi(i32 0) #3
  %22 = icmp ult i64 %21, 2147483648
  call void @llvm.assume(i1 %22)
  %23 = trunc i64 %21 to i32
  %24 = shl nsw i32 %20, 7, !spirv.Decorations !292
  %25 = shl nsw i32 %15, 5, !spirv.Decorations !292
  %26 = add nsw i32 %24, %25, !spirv.Decorations !292
  %27 = shl nsw i32 %23, 7, !spirv.Decorations !292
  %28 = shl nsw i32 %17, 6, !spirv.Decorations !292
  %29 = add nsw i32 %27, %28, !spirv.Decorations !292
  %30 = call spir_func i8 addrspace(1)* @_Z41__spirv_GenericCastToPtrExplicit_ToGlobalPU3AS4ci(i8 addrspace(4)* %11, i32 5) #0
  %31 = call spir_func i8 addrspace(1)* @_Z41__spirv_GenericCastToPtrExplicit_ToGlobalPU3AS4ci(i8 addrspace(4)* %12, i32 5) #0
  %32 = call spir_func i8 addrspace(1)* @_Z41__spirv_GenericCastToPtrExplicit_ToGlobalPU3AS4ci(i8 addrspace(4)* %13, i32 5) #0
  %33 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %33)
  %34 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 0, i64 0
  %35 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 1
  br label %36

36:                                               ; preds = %36, %5
  %37 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* [ %34, %5 ], [ %38, %36 ]
  %38 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %37, i64 1
  %39 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %35 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"*
  %40 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %38 to i64
  %41 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %39 to i64
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %.preheader1, label %36

.preheader1:                                      ; preds = %36
  br label %43

43:                                               ; preds = %63, %.preheader1
  %44 = phi i32 [ %64, %63 ], [ 0, %.preheader1 ]
  %45 = icmp ult i32 %44, 4
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = sext i32 %44 to i64
  br label %60

48:                                               ; preds = %43
  %49 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 0, i64 0
  %50 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 1
  %51 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 0, i64 0
  %52 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 1
  %53 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 0, i64 0
  %54 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 1
  %55 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 0, i64 0
  %56 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 1
  %57 = sext i32 %3 to i64
  %58 = shl nsw i32 %4, 1, !spirv.Decorations !292
  %59 = sext i32 %58 to i64
  br label %71

60:                                               ; preds = %65, %46
  %61 = phi i32 [ %70, %65 ], [ 0, %46 ]
  %62 = icmp ult i32 %61, 4
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = add nuw nsw i32 %44, 1, !spirv.Decorations !294
  br label %43

65:                                               ; preds = %60
  %66 = zext i32 %61 to i64
  %67 = call spir_func %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* @_Z26__spirv_CompositeConstructf(float 0.000000e+00) #0
  %68 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 %47, i64 %66
  %69 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %68 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %67, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %69, align 8
  %70 = add nuw nsw i32 %61, 1, !spirv.Decorations !294
  br label %60

71:                                               ; preds = %175, %48
  %72 = phi i32 [ %180, %175 ], [ 0, %48 ]
  %73 = icmp slt i32 %72, %3
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = sext i32 %29 to i64
  %76 = bitcast i8 addrspace(1)* %32 to float addrspace(1)*
  %77 = getelementptr float, float addrspace(1)* %76, i64 %75
  %78 = sext i32 %4 to i64
  br label %203

79:                                               ; preds = %71
  %80 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %80)
  br label %81

81:                                               ; preds = %81, %79
  %82 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* [ %49, %79 ], [ %83, %81 ]
  %83 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %82, i64 1
  %84 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %50 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"*
  %85 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %83 to i64
  %86 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %84 to i64
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %81

88:                                               ; preds = %81
  %89 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %89)
  br label %90

90:                                               ; preds = %90, %88
  %91 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* [ %51, %88 ], [ %92, %90 ]
  %92 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %91, i64 1
  %93 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %52 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"*
  %94 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %92 to i64
  %95 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %93 to i64
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %90

97:                                               ; preds = %90
  %98 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %98)
  br label %99

99:                                               ; preds = %99, %97
  %100 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* [ %53, %97 ], [ %101, %99 ]
  %101 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %100, i64 1
  %102 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %54 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"*
  %103 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %101 to i64
  %104 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %102 to i64
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %99

106:                                              ; preds = %99
  %107 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %107)
  br label %108

108:                                              ; preds = %108, %106
  %109 = phi %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* [ %55, %106 ], [ %110, %108 ]
  %110 = getelementptr inbounds %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2", %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %109, i64 1
  %111 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %56 to %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"*
  %112 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %110 to i64
  %113 = ptrtoint %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %111 to i64
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %108

115:                                              ; preds = %108
  %116 = sext i32 %72 to i64
  %117 = bitcast i8 addrspace(1)* %30 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %118 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %117, i64 %116
  br label %119

119:                                              ; preds = %133, %115
  %120 = phi i32 [ %147, %133 ], [ 0, %115 ]
  %121 = icmp ult i32 %120, 4
  br i1 %121, label %133, label %122

122:                                              ; preds = %119
  %123 = lshr i32 %72, 1
  %124 = zext i32 %123 to i64
  %125 = mul nsw i64 %124, %59, !spirv.Decorations !292
  %126 = bitcast i8 addrspace(1)* %31 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %127 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %126, i64 %125
  %128 = or i32 %123, 8
  %129 = zext i32 %128 to i64
  %130 = mul nsw i64 %129, %59, !spirv.Decorations !292
  %131 = bitcast i8 addrspace(1)* %31 to %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)*
  %132 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %131, i64 %130
  br label %148

133:                                              ; preds = %119
  %134 = zext i32 %120 to i64
  %135 = shl nuw nsw i32 %120, 3, !spirv.Decorations !294
  %136 = or i32 %26, %135
  %137 = mul nsw i32 %136, %3, !spirv.Decorations !292
  %138 = sext i32 %137 to i64
  %139 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %118, i64 %138
  %140 = call spir_func %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* @"_Z86__spirv_CooperativeMatrixLoadKHR_RPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %139, i32 0, i64 %57, i32 0) #0
  %141 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 0, i64 %134
  %142 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %141 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %140, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %142, align 8
  %143 = getelementptr %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %139, i64 16
  %144 = call spir_func %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* @"_Z86__spirv_CooperativeMatrixLoadKHR_RPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %143, i32 0, i64 %57, i32 0) #0
  %145 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 0, i64 %134
  %146 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %145 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %144, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %146, align 8
  %147 = add nuw nsw i32 %120, 1, !spirv.Decorations !294
  br label %119

148:                                              ; preds = %151, %122
  %149 = phi i32 [ %165, %151 ], [ 0, %122 ]
  %150 = icmp ult i32 %149, 4
  br i1 %150, label %151, label %.preheader

.preheader:                                       ; preds = %148
  br label %166

151:                                              ; preds = %148
  %152 = shl nuw nsw i32 %149, 4, !spirv.Decorations !294
  %153 = or i32 %29, %152
  %154 = zext i32 %149 to i64
  %155 = sext i32 %153 to i64
  %156 = shl nsw i64 %155, 1, !spirv.Decorations !292
  %157 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %127, i64 %156
  %158 = call spir_func %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* @"_Z87__spirv_CooperativeMatrixLoadKHR_RPU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %157, i32 2, i64 %59, i32 0) #0
  %159 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 0, i64 %154
  %160 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %159 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %158, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %160, align 8
  %161 = getelementptr inbounds %"class.sycl::_V1::ext::oneapi::bfloat16", %"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %132, i64 %156
  %162 = call spir_func %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* @"_Z87__spirv_CooperativeMatrixLoadKHR_RPU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS138class.sycl::_V1::ext::oneapi::bfloat16ili"(%"class.sycl::_V1::ext::oneapi::bfloat16" addrspace(1)* %161, i32 2, i64 %59, i32 0) #0
  %163 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 0, i64 %154
  %164 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %163 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %162, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %164, align 8
  %165 = add nuw nsw i32 %149, 1, !spirv.Decorations !294
  br label %148

166:                                              ; preds = %184, %.preheader
  %167 = phi i32 [ %185, %184 ], [ 0, %.preheader ]
  %168 = icmp ult i32 %167, 4
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = sext i32 %167 to i64
  %171 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7, i64 0, i64 %170
  %172 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %171 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  %173 = load %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %172, align 8
  %174 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8, i64 0, i64 %170
  br label %181

175:                                              ; preds = %166
  %176 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %176)
  %177 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %177)
  %178 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %178)
  %179 = bitcast [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %179)
  %180 = add nuw nsw i32 %72, 32, !spirv.Decorations !294
  br label %71

181:                                              ; preds = %186, %169
  %182 = phi i32 [ %202, %186 ], [ 0, %169 ]
  %183 = icmp ult i32 %182, 4
  br i1 %183, label %186, label %184

184:                                              ; preds = %181
  %185 = add nuw nsw i32 %167, 1, !spirv.Decorations !294
  br label %166

186:                                              ; preds = %181
  %187 = zext i32 %182 to i64
  %188 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %9, i64 0, i64 %187
  %189 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %188 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  %190 = load %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %189, align 8
  %191 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 %170, i64 %187
  %192 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %191 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  %193 = load %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)*, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %192, align 8
  %194 = call spir_func %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* @_Z34__spirv_CooperativeMatrixMulAddKHRPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS144__spirv_CooperativeMatrixKHR__float_3_8_16_2i(%spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %173, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %190, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %193, i32 64) #0
  %195 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.1"* %174 to %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)**
  %196 = load %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)** %195, align 8
  %197 = getelementptr inbounds [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"], [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"]* %10, i64 0, i64 %187
  %198 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix.2"* %197 to %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)**
  %199 = load %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)*, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)** %198, align 8
  %200 = call spir_func %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* @_Z34__spirv_CooperativeMatrixMulAddKHRPU3AS144__spirv_CooperativeMatrixKHR__short_3_8_16_0PU3AS145__spirv_CooperativeMatrixKHR__short_3_16_16_1PU3AS144__spirv_CooperativeMatrixKHR__float_3_8_16_2i(%spirv.CooperativeMatrixKHR._short_3_8_16_0 addrspace(1)* %196, %spirv.CooperativeMatrixKHR._short_3_16_16_1 addrspace(1)* %199, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %194, i32 64) #0
  %201 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %191 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  store %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %200, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %201, align 8
  %202 = add nuw nsw i32 %182, 1, !spirv.Decorations !294
  br label %181

203:                                              ; preds = %216, %74
  %204 = phi i32 [ %217, %216 ], [ 0, %74 ]
  %205 = icmp ult i32 %204, 4
  br i1 %205, label %206, label %227

206:                                              ; preds = %203
  %207 = sext i32 %204 to i64
  %208 = shl nuw nsw i32 %204, 3, !spirv.Decorations !294
  %209 = or i32 %26, %208
  %210 = mul nsw i32 %209, %4, !spirv.Decorations !292
  %211 = sext i32 %210 to i64
  %212 = getelementptr float, float addrspace(1)* %77, i64 %211
  br label %213

213:                                              ; preds = %218, %206
  %214 = phi i32 [ %226, %218 ], [ 0, %206 ]
  %215 = icmp ult i32 %214, 4
  br i1 %215, label %218, label %216

216:                                              ; preds = %213
  %217 = add nuw nsw i32 %204, 1, !spirv.Decorations !294
  br label %203

218:                                              ; preds = %213
  %219 = zext i32 %214 to i64
  %220 = shl nuw nsw i32 %214, 4, !spirv.Decorations !294
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds float, float addrspace(1)* %212, i64 %221
  %223 = getelementptr inbounds [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]], [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6, i64 0, i64 %207, i64 %219
  %224 = bitcast %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"* %223 to %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)**
  %225 = load %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)*, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)** %224, align 8
  call spir_func void @_Z33__spirv_CooperativeMatrixStoreKHRPU3AS1fPU3AS144__spirv_CooperativeMatrixKHR__float_3_8_16_2ili(float addrspace(1)* %222, %spirv.CooperativeMatrixKHR._float_3_8_16_2 addrspace(1)* %225, i32 0, i64 %78, i32 0) #0
  %226 = add nuw nsw i32 %214, 1, !spirv.Decorations !294
  br label %213

227:                                              ; preds = %203
  %228 = bitcast [4 x [4 x %"struct.sycl::_V1::ext::oneapi::experimental::matrix::joint_matrix"]]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %228)
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare spir_func i32 @_Z25__spirv_BuiltInSubgroupIdv() #3

; Function Attrs: nounwind readnone willreturn
declare spir_func i64 @_Z26__spirv_BuiltInWorkgroupIdi(i32) #3

attributes #0 = { nounwind }
attributes #1 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind readnone willreturn }

!spirv.MemoryModel = !{!0}
!opencl.enable.FP_CONTRACT = !{}
!spirv.Source = !{!1}
!opencl.spir.version = !{!2}
!opencl.ocl.version = !{!3}
!opencl.used.extensions = !{!4}
!opencl.used.optional.core.features = !{!4}
!spirv.Generator = !{!5}
!opencl.compiler.options = !{!6}
!igc.spirv.extensions = !{!7}
!igc.functions = !{}
!IGCMetadata = !{!8}

!0 = !{i32 2, i32 2}
!1 = !{i32 4, i32 100000}
!2 = !{i32 1, i32 2}
!3 = !{i32 1, i32 0}
!4 = !{}
!5 = !{i16 6, i16 14}
!6 = !{!"-gline-tables-only", !"-cl-intel-256-GRF-per-thread", !"-dumpvisa", !"-dumpschedule"}
!7 = !{!"SPV_INTEL_joint_matrix", !"SPV_INTEL_memory_access_aliasing", !"SPV_KHR_cooperative_matrix", !"SPV_KHR_expect_assume"}
!8 = !{!"ModuleMD", !9, !10, !112, !113, !144, !161, !181, !191, !193, !194, !210, !211, !212, !213, !217, !218, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !237, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !260, !262, !265, !266, !267, !269, !270, !271, !276, !277, !278, !279}
!9 = !{!"isPrecise", i1 false}
!10 = !{!"compOpt", !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!11 = !{!"DenormsAreZero", i1 false}
!12 = !{!"BFTFDenormsAreZero", i1 false}
!13 = !{!"CorrectlyRoundedDivSqrt", i1 false}
!14 = !{!"OptDisable", i1 false}
!15 = !{!"MadEnable", i1 false}
!16 = !{!"NoSignedZeros", i1 false}
!17 = !{!"NoNaNs", i1 false}
!18 = !{!"FloatDenormMode16", !"FLOAT_DENORM_RETAIN"}
!19 = !{!"FloatDenormMode32", !"FLOAT_DENORM_RETAIN"}
!20 = !{!"FloatDenormMode64", !"FLOAT_DENORM_RETAIN"}
!21 = !{!"FloatDenormModeBFTF", !"FLOAT_DENORM_RETAIN"}
!22 = !{!"FloatRoundingMode", i32 0}
!23 = !{!"FloatCvtIntRoundingMode", i32 3}
!24 = !{!"LoadCacheDefault", i32 -1}
!25 = !{!"StoreCacheDefault", i32 -1}
!26 = !{!"VISAPreSchedRPThreshold", i32 0}
!27 = !{!"VISAPreSchedCtrl", i32 0}
!28 = !{!"SetLoopUnrollThreshold", i32 0}
!29 = !{!"UnsafeMathOptimizations", i1 false}
!30 = !{!"disableCustomUnsafeOpts", i1 false}
!31 = !{!"disableReducePow", i1 false}
!32 = !{!"disableSqrtOpt", i1 false}
!33 = !{!"FiniteMathOnly", i1 false}
!34 = !{!"FastRelaxedMath", i1 false}
!35 = !{!"DashGSpecified", i1 false}
!36 = !{!"FastCompilation", i1 false}
!37 = !{!"UseScratchSpacePrivateMemory", i1 true}
!38 = !{!"RelaxedBuiltins", i1 false}
!39 = !{!"SubgroupIndependentForwardProgressRequired", i1 true}
!40 = !{!"GreaterThan2GBBufferRequired", i1 true}
!41 = !{!"GreaterThan4GBBufferRequired", i1 true}
!42 = !{!"DisableA64WA", i1 false}
!43 = !{!"ForceEnableA64WA", i1 false}
!44 = !{!"PushConstantsEnable", i1 true}
!45 = !{!"HasPositivePointerOffset", i1 false}
!46 = !{!"HasBufferOffsetArg", i1 false}
!47 = !{!"BufferOffsetArgOptional", i1 true}
!48 = !{!"replaceGlobalOffsetsByZero", i1 false}
!49 = !{!"forcePixelShaderSIMDMode", i32 0}
!50 = !{!"forceTotalGRFNum", i32 0}
!51 = !{!"pixelShaderDoNotAbortOnSpill", i1 false}
!52 = !{!"UniformWGS", i1 false}
!53 = !{!"disableVertexComponentPacking", i1 false}
!54 = !{!"disablePartialVertexComponentPacking", i1 false}
!55 = !{!"PreferBindlessImages", i1 false}
!56 = !{!"UseBindlessMode", i1 false}
!57 = !{!"UseLegacyBindlessMode", i1 true}
!58 = !{!"disableMathRefactoring", i1 false}
!59 = !{!"atomicBranch", i1 false}
!60 = !{!"spillCompression", i1 false}
!61 = !{!"DisableEarlyOut", i1 false}
!62 = !{!"ForceInt32DivRemEmu", i1 false}
!63 = !{!"ForceInt32DivRemEmuSP", i1 false}
!64 = !{!"DisableFastestSingleCSSIMD", i1 false}
!65 = !{!"DisableFastestLinearScan", i1 false}
!66 = !{!"UseStatelessforPrivateMemory", i1 false}
!67 = !{!"EnableTakeGlobalAddress", i1 false}
!68 = !{!"IsLibraryCompilation", i1 false}
!69 = !{!"LibraryCompileSIMDSize", i32 0}
!70 = !{!"FastVISACompile", i1 false}
!71 = !{!"MatchSinCosPi", i1 false}
!72 = !{!"ExcludeIRFromZEBinary", i1 false}
!73 = !{!"EmitZeBinVISASections", i1 false}
!74 = !{!"FP64GenEmulationEnabled", i1 false}
!75 = !{!"FP64GenConvEmulationEnabled", i1 false}
!76 = !{!"allowDisableRematforCS", i1 false}
!77 = !{!"DisableIncSpillCostAllAddrTaken", i1 false}
!78 = !{!"DisableCPSOmaskWA", i1 false}
!79 = !{!"DisableFastestGopt", i1 false}
!80 = !{!"WaForceHalfPromotionComputeShader", i1 false}
!81 = !{!"WaForceHalfPromotionPixelVertexShader", i1 false}
!82 = !{!"DisableConstantCoalescing", i1 false}
!83 = !{!"EnableUndefAlphaOutputAsRed", i1 true}
!84 = !{!"WaEnableALTModeVisaWA", i1 false}
!85 = !{!"EnableLdStCombineforLoad", i1 false}
!86 = !{!"EnableLdStCombinewithDummyLoad", i1 false}
!87 = !{!"ForceUniformBuffer", i1 false}
!88 = !{!"ForceUniformSurfaceSampler", i1 false}
!89 = !{!"EnableIndependentSharedMemoryFenceFunctionality", i1 false}
!90 = !{!"NewSpillCostFunction", i1 false}
!91 = !{!"EnableVRT", i1 false}
!92 = !{!"ForceLargeGRFNum4RQ", i1 false}
!93 = !{!"DisableEUFusion", i1 false}
!94 = !{!"DisableFDivToFMulInvOpt", i1 false}
!95 = !{!"initializePhiSampleSourceWA", i1 false}
!96 = !{!"WaDisableSubspanUseNoMaskForCB", i1 false}
!97 = !{!"DisableLoosenSimd32Occu", i1 false}
!98 = !{!"FastestS1Options", i32 0}
!99 = !{!"DisableFastestForWaveIntrinsicsCS", i1 false}
!100 = !{!"ForceLinearWalkOnLinearUAV", i1 false}
!101 = !{!"DisableLscSamplerRouting", i1 false}
!102 = !{!"UseBarrierControlFlowOptimization", i1 false}
!103 = !{!"EnableDynamicRQManagement", i1 false}
!104 = !{!"WaDisablePayloadCoalescing", i1 false}
!105 = !{!"Quad8InputThreshold", i32 0}
!106 = !{!"UseResourceLoopUnrollNested", i1 false}
!107 = !{!"DisableLoopUnroll", i1 false}
!108 = !{!"ForcePushConstantMode", i32 0}
!109 = !{!"UseInstructionHoistingOptimization", i1 false}
!110 = !{!"DisableResourceLoopDestLifeTimeStart", i1 false}
!111 = !{!"UseLinearScanRA", i1 false}
!112 = !{!"FuncMD"}
!113 = !{!"pushInfo", !114, !115, !116, !120, !121, !122, !123, !124, !125, !126, !127, !140, !141, !142, !143}
!114 = !{!"pushableAddresses"}
!115 = !{!"bindlessPushInfo"}
!116 = !{!"dynamicBufferInfo", !117, !118, !119}
!117 = !{!"firstIndex", i32 0}
!118 = !{!"numOffsets", i32 0}
!119 = !{!"forceDisabled", i1 false}
!120 = !{!"MaxNumberOfPushedBuffers", i32 0}
!121 = !{!"inlineConstantBufferSlot", i32 -1}
!122 = !{!"inlineConstantBufferOffset", i32 -1}
!123 = !{!"inlineConstantBufferGRFOffset", i32 -1}
!124 = !{!"constants"}
!125 = !{!"inputs"}
!126 = !{!"constantReg"}
!127 = !{!"simplePushInfoArr", !128, !137, !138, !139}
!128 = !{!"simplePushInfoArrVec[0]", !129, !130, !131, !132, !133, !134, !135, !136}
!129 = !{!"cbIdx", i32 0}
!130 = !{!"pushableAddressGrfOffset", i32 -1}
!131 = !{!"pushableOffsetGrfOffset", i32 -1}
!132 = !{!"offset", i32 0}
!133 = !{!"size", i32 0}
!134 = !{!"isStateless", i1 false}
!135 = !{!"isBindless", i1 false}
!136 = !{!"simplePushLoads"}
!137 = !{!"simplePushInfoArrVec[1]", !129, !130, !131, !132, !133, !134, !135, !136}
!138 = !{!"simplePushInfoArrVec[2]", !129, !130, !131, !132, !133, !134, !135, !136}
!139 = !{!"simplePushInfoArrVec[3]", !129, !130, !131, !132, !133, !134, !135, !136}
!140 = !{!"simplePushBufferUsed", i32 0}
!141 = !{!"pushAnalysisWIInfos"}
!142 = !{!"inlineRTGlobalPtrOffset", i32 0}
!143 = !{!"rtSyncSurfPtrOffset", i32 0}
!144 = !{!"psInfo", !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160}
!145 = !{!"BlendStateDisabledMask", i8 0}
!146 = !{!"SkipSrc0Alpha", i1 false}
!147 = !{!"DualSourceBlendingDisabled", i1 false}
!148 = !{!"ForceEnableSimd32", i1 false}
!149 = !{!"DisableSimd32WithDiscard", i1 false}
!150 = !{!"outputDepth", i1 false}
!151 = !{!"outputStencil", i1 false}
!152 = !{!"outputMask", i1 false}
!153 = !{!"blendToFillEnabled", i1 false}
!154 = !{!"forceEarlyZ", i1 false}
!155 = !{!"hasVersionedLoop", i1 false}
!156 = !{!"forceSingleSourceRTWAfterDualSourceRTW", i1 false}
!157 = !{!"NumSamples", i8 0}
!158 = !{!"blendOptimizationMode"}
!159 = !{!"colorOutputMask"}
!160 = !{!"WaDisableVRS", i1 false}
!161 = !{!"csInfo", !162, !163, !164, !165, !50, !26, !27, !28, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !60, !177, !178, !179, !180}
!162 = !{!"maxWorkGroupSize", i32 0}
!163 = !{!"waveSize", i32 0}
!164 = !{!"ComputeShaderSecondCompile"}
!165 = !{!"forcedSIMDSize", i8 0}
!166 = !{!"forceSpillCompression", i1 false}
!167 = !{!"allowLowerSimd", i1 false}
!168 = !{!"disableSimd32Slicing", i1 false}
!169 = !{!"disableSplitOnSpill", i1 false}
!170 = !{!"enableNewSpillCostFunction", i1 false}
!171 = !{!"forceVISAPreSched", i1 false}
!172 = !{!"disableLocalIdOrderOptimizations", i1 false}
!173 = !{!"disableDispatchAlongY", i1 false}
!174 = !{!"neededThreadIdLayout", i1* null}
!175 = !{!"forceTileYWalk", i1 false}
!176 = !{!"atomicBranch", i32 0}
!177 = !{!"disableEarlyOut", i1 false}
!178 = !{!"walkOrderEnabled", i1 false}
!179 = !{!"walkOrderOverride", i32 0}
!180 = !{!"ResForHfPacking"}
!181 = !{!"msInfo", !182, !183, !184, !185, !186, !187, !188, !189, !190}
!182 = !{!"PrimitiveTopology", i32 3}
!183 = !{!"MaxNumOfPrimitives", i32 0}
!184 = !{!"MaxNumOfVertices", i32 0}
!185 = !{!"MaxNumOfPerPrimitiveOutputs", i32 0}
!186 = !{!"MaxNumOfPerVertexOutputs", i32 0}
!187 = !{!"WorkGroupSize", i32 0}
!188 = !{!"WorkGroupMemorySizeInBytes", i32 0}
!189 = !{!"IndexFormat", i32 6}
!190 = !{!"SubgroupSize", i32 0}
!191 = !{!"taskInfo", !192, !187, !188, !190}
!192 = !{!"MaxNumOfOutputs", i32 0}
!193 = !{!"NBarrierCnt", i32 0}
!194 = !{!"rtInfo", !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209}
!195 = !{!"RayQueryAllocSizeInBytes", i32 0}
!196 = !{!"NumContinuations", i32 0}
!197 = !{!"RTAsyncStackAddrspace", i32 -1}
!198 = !{!"RTAsyncStackSurfaceStateOffset", i1* null}
!199 = !{!"SWHotZoneAddrspace", i32 -1}
!200 = !{!"SWHotZoneSurfaceStateOffset", i1* null}
!201 = !{!"SWStackAddrspace", i32 -1}
!202 = !{!"SWStackSurfaceStateOffset", i1* null}
!203 = !{!"RTSyncStackAddrspace", i32 -1}
!204 = !{!"RTSyncStackSurfaceStateOffset", i1* null}
!205 = !{!"doSyncDispatchRays", i1 false}
!206 = !{!"MemStyle", !"Xe"}
!207 = !{!"GlobalDataStyle", !"Xe"}
!208 = !{!"uberTileDimensions", i1* null}
!209 = !{!"numSyncRTStacks", i32 0}
!210 = !{!"CurUniqueIndirectIdx", i32 0}
!211 = !{!"inlineDynTextures"}
!212 = !{!"inlineResInfoData"}
!213 = !{!"immConstant", !214, !215, !216}
!214 = !{!"data"}
!215 = !{!"sizes"}
!216 = !{!"zeroIdxs"}
!217 = !{!"stringConstants"}
!218 = !{!"inlineBuffers", !219, !223, !224}
!219 = !{!"inlineBuffersVec[0]", !220, !221, !222}
!220 = !{!"alignment", i32 0}
!221 = !{!"allocSize", i64 0}
!222 = !{!"Buffer"}
!223 = !{!"inlineBuffersVec[1]", !220, !221, !222}
!224 = !{!"inlineBuffersVec[2]", !220, !221, !222}
!225 = !{!"GlobalPointerProgramBinaryInfos"}
!226 = !{!"ConstantPointerProgramBinaryInfos"}
!227 = !{!"GlobalBufferAddressRelocInfo"}
!228 = !{!"ConstantBufferAddressRelocInfo"}
!229 = !{!"forceLscCacheList"}
!230 = !{!"SrvMap"}
!231 = !{!"RasterizerOrderedByteAddressBuffer"}
!232 = !{!"RasterizerOrderedViews"}
!233 = !{!"MinNOSPushConstantSize", i32 0}
!234 = !{!"inlineProgramScopeOffsets"}
!235 = !{!"shaderData", !236}
!236 = !{!"numReplicas", i32 0}
!237 = !{!"URBInfo", !238, !239, !240}
!238 = !{!"has64BVertexHeaderInput", i1 false}
!239 = !{!"has64BVertexHeaderOutput", i1 false}
!240 = !{!"hasVertexHeader", i1 true}
!241 = !{!"UseBindlessImage", i1 false}
!242 = !{!"UseBindlessImageWithSamplerTracking", i1 false}
!243 = !{!"enableRangeReduce", i1 false}
!244 = !{!"allowMatchMadOptimizationforVS", i1 false}
!245 = !{!"disableMatchMadOptimizationForCS", i1 false}
!246 = !{!"disableMemOptforNegativeOffsetLoads", i1 false}
!247 = !{!"enableThreeWayLoadSpiltOpt", i1 false}
!248 = !{!"statefulResourcesNotAliased", i1 false}
!249 = !{!"disableMixMode", i1 false}
!250 = !{!"genericAccessesResolved", i1 false}
!251 = !{!"disableSeparateSpillPvtScratchSpace", i1 false}
!252 = !{!"enableSeparateSpillPvtScratchSpace", i1 false}
!253 = !{!"disableSeparateScratchWA", i1 false}
!254 = !{!"enableRemoveUnusedTGMFence", i1 false}
!255 = !{!"privateMemoryPerWI", i32 0}
!256 = !{!"PrivateMemoryPerFG"}
!257 = !{!"m_OptsToDisable"}
!258 = !{!"capabilities", !259}
!259 = !{!"globalVariableDecorationsINTEL", i1 false}
!260 = !{!"extensions", !261}
!261 = !{!"spvINTELBindlessImages", i1 false}
!262 = !{!"m_ShaderResourceViewMcsMask", !263, !264}
!263 = !{!"m_ShaderResourceViewMcsMaskVec[0]", i64 0}
!264 = !{!"m_ShaderResourceViewMcsMaskVec[1]", i64 0}
!265 = !{!"computedDepthMode", i32 0}
!266 = !{!"isHDCFastClearShader", i1 false}
!267 = !{!"argRegisterReservations", !268}
!268 = !{!"argRegisterReservationsVec[0]", i32 0}
!269 = !{!"SIMD16_SpillThreshold", i8 0}
!270 = !{!"SIMD32_SpillThreshold", i8 0}
!271 = !{!"m_CacheControlOption", !272, !273, !274, !275}
!272 = !{!"LscLoadCacheControlOverride", i8 0}
!273 = !{!"LscStoreCacheControlOverride", i8 0}
!274 = !{!"TgmLoadCacheControlOverride", i8 0}
!275 = !{!"TgmStoreCacheControlOverride", i8 0}
!276 = !{!"ModuleUsesBindless", i1 false}
!277 = !{!"predicationMap"}
!278 = !{!"lifeTimeStartMap"}
!279 = !{!"HitGroups"}
!280 = !{i32 1, i32 1, i32 1, i32 0, i32 0}
!281 = !{!"none", !"none", !"none", !"none", !"none"}
!282 = !{!"char*", !"char*", !"char*", !"int", !"int"}
!283 = !{!"", !"", !"", !"", !""}
!284 = !{!285, !285, !287, !4, !4}
!285 = !{!286}
!286 = !{i32 44, i32 2}
!287 = !{!288}
!288 = !{i32 44, i32 4}
!289 = !{i32 16}
!290 = !{!291}
!291 = !{i32 44, i32 8}
!292 = !{!293}
!293 = !{i32 4469}
!294 = !{!293, !295}
!295 = !{i32 4470}
