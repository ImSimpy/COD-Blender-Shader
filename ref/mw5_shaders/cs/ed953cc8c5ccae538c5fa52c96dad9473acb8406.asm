;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; no parameters
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; no parameters
; shader hash: 25bf3e0d66c2d5ac5f87d1d608137185
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
;
; cbuffer 
; {
;
;   [9232 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [180 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.globals = type { <4 x i32>, [64 x [4 x <4 x float>]], [64 x [4 x <4 x float>]], [64 x <4 x float>] }
%headers = type { [8 x <4 x i32>], i32, [3 x i32] }

define void @cs_bsp_tessfactors_header() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6 = extractvalue %dx.types.CBufRet.i32 %5, 0
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %47, !dx.controlflow.hints !13

; <label>:8                                       ; preds = %0
  %9 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 %4)  ; CBufferLoadLegacy(handle,regIndex)
  %10 = extractvalue %dx.types.CBufRet.i32 %9, 0
  %11 = extractvalue %dx.types.CBufRet.i32 %9, 1
  %12 = extractvalue %dx.types.CBufRet.i32 %9, 2
  %13 = extractvalue %dx.types.CBufRet.i32 %9, 3
  %14 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.i32 %14, 0
  %16 = urem i32 %11, %15
  %17 = udiv i32 262144, %15
  %18 = mul i32 %17, %16
  %19 = add i32 %18, 7184
  %20 = udiv i32 81920, %15
  %21 = mul i32 %20, %16
  %22 = add i32 %21, 269328
  %23 = shl i32 %10, 3
  %24 = icmp eq i32 %11, 0
  br i1 %24, label %25, label %35, !dx.controlflow.hints !14

; <label>:25                                      ; preds = %8
  br label %26

; <label>:26                                      ; preds = %26, %25
  %27 = phi i32 [ %32, %26 ], [ 0, %25 ]
  %28 = shl i32 %27, 2
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %28, i32 undef)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = add nuw nsw i32 %28, 32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %31, i32 undef, i32 %30, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %28, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %32 = add nuw nsw i32 %27, 1
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %34, label %26

; <label>:34                                      ; preds = %26
  br label %35

; <label>:35                                      ; preds = %34, %8
  %36 = shl i32 %16, 2
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %36, i32 undef)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = mul i32 %38, 3
  %40 = add i32 %19, %39
  %41 = mul i32 %10, 20
  %42 = add i32 %41, 64
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %42, i32 undef, i32 0, i32 1, i32 %40, i32 %13, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %43 = add i32 %41, 80
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %43, i32 undef, i32 %10, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %44 = add i32 %22, %38
  %45 = shl i32 %44, 2
  %46 = add i32 %23, 20544
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %46, i32 undef, i32 %12, i32 %45, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %47

; <label>:47                                      ; preds = %35, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!10}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{null, !5, !7, null}
!5 = !{!6}
!6 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!7 = !{!8, !9}
!8 = !{i32 0, %hostlayout.globals* undef, !"", i32 0, i32 0, i32 1, i32 9232, null}
!9 = !{i32 1, %headers* undef, !"", i32 0, i32 1, i32 1, i32 180, null}
!10 = !{void ()* @cs_bsp_tessfactors_header, !"cs_bsp_tessfactors_header", null, !4, !11}
!11 = !{i32 0, i64 272, i32 4, !12}
!12 = !{i32 64, i32 1, i32 1}
!13 = distinct !{!13, !"dx.controlflow.hints", i32 2}
!14 = distinct !{!14, !"dx.controlflow.hints", i32 2}

