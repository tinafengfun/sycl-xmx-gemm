; ------------------------------------------------
; OCL_asmea89a4472ab535eb_simd32_entry_0002.visa.ll
; ------------------------------------------------
; Function Attrs: convergent nounwind null_pointer_is_valid
define spir_kernel void @_ZTSZN4sycl3_V17handler4fillINS0_3ext6oneapi8bfloat16EEEvPvRKT_mEUlNS0_2idILi1EEEE_(i16 addrspace(1)* align 2 %0, %"class.sycl::_V1::ext::oneapi::bfloat16"* byval(%"class.sycl::_V1::ext::oneapi::bfloat16") align 2 %1, <8 x i32> %r0, <3 x i32> %globalOffset, <3 x i32> %enqueuedLocalSize, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i8* %privateBase, i16 %const_reg_word, i32 %bufferOffset, i32 %bindlessOffset) #0 {
; BB0 :
  %3 = extractelement <3 x i32> %globalOffset, i32 0		; visa id: 2
  %4 = extractelement <3 x i32> %enqueuedLocalSize, i32 0		; visa id: 2
  %5 = extractelement <8 x i32> %r0, i32 1		; visa id: 2
  %6 = call { i32, i32 } @llvm.genx.GenISA.mul.pair(i32 %4, i32 0, i32 %5, i32 0)
  %7 = extractvalue { i32, i32 } %6, 0		; visa id: 2
  %8 = extractvalue { i32, i32 } %6, 1		; visa id: 2
  %9 = insertelement <2 x i32> undef, i32 %7, i32 0		; visa id: 9
  %10 = insertelement <2 x i32> %9, i32 %8, i32 1		; visa id: 10
  %11 = bitcast <2 x i32> %10 to i64		; visa id: 11
  %12 = zext i16 %localIdX to i64		; visa id: 13
  %13 = add nuw i64 %11, %12		; visa id: 14
  %14 = zext i32 %3 to i64		; visa id: 15
  %15 = add nuw i64 %13, %14		; visa id: 16
  %16 = ptrtoint i16 addrspace(1)* %0 to i64		; visa id: 17
  %17 = shl i64 %15, 1		; visa id: 17
  %18 = add i64 %17, %16		; visa id: 18
  %19 = inttoptr i64 %18 to i16 addrspace(1)*		; visa id: 19
  store i16 %const_reg_word, i16 addrspace(1)* %19, align 2		; visa id: 19
  ret void, !stats.blockFrequency.digits !431, !stats.blockFrequency.scale !432		; visa id: 21
}
