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
; shader hash: 9c5a009431300a882fc3494de20e7a80
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
;   [464 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture  struct         r/o      T0             t5     1
;                                       UAV    byte         r/w      U0             u1     1
;                                       UAV    byte         r/w      U1             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.FxFrameConsts_decl = type { %hostlayout.struct.FxFrameConsts }
%hostlayout.struct.FxFrameConsts = type { [4 x <4 x float>], [4 x <4 x float>], <4 x i32>, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, i32, i32, i32, i32, i32, i32, float, float, <3 x float>, i32, i32, float, float, float, <4 x i32>, [12 x <4 x i32>] }

define void @cs_fx_reset_indirect_params() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %7 = extractvalue %dx.types.CBufRet.i32 %6, 3
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %15, !dx.controlflow.hints !16

; <label>:9                                       ; preds = %0
  %10 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5, i32 0)  ; BufferLoad(srv,index,wot)
  %11 = extractvalue %dx.types.ResRet.i32 %10, 0
  %12 = call i32 @dx.op.tertiary.i32(i32 49, i32 %11, i32 64, i32 0)  ; UMad(a,b,c)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %12, i32 undef, i32 0, i32 1, i32 1, i32 0, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %13 = call i32 @dx.op.tertiary.i32(i32 49, i32 %11, i32 64, i32 32)  ; UMad(a,b,c)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %13, i32 undef, i32 0, i32 1, i32 1, i32 0, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %14 = shl i32 %11, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %14, i32 undef, i32 0, i32 1, i32 1, i32 0, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %15

; <label>:15                                      ; preds = %9, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!13}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !11, null}
!5 = !{!6}
!6 = !{i32 0, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 4}
!8 = !{!9, !10}
!9 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!10 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!11 = !{!12}
!12 = !{i32 0, %hostlayout.FxFrameConsts_decl* undef, !"", i32 0, i32 0, i32 1, i32 464, null}
!13 = !{void ()* @cs_fx_reset_indirect_params, !"cs_fx_reset_indirect_params", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 64, i32 1, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}

