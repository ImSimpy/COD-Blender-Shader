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
; shader hash: 4e4f31c6b34802d786ec2edf73caf1b6
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
;   [48 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                       UAV    byte         r/w      U0             u0     1
;                                       UAV    byte         r/w      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%BlendShapeSkinningConstants = type { i32, i32, i32, i32, i32, i32, i32, i32, <4 x float> }

define void @cs_blendshapes_copy_to_out_init_blendmap_weights() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %8 = extractvalue %dx.types.CBufRet.i32 %7, 0
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %49, !dx.controlflow.hints !16

; <label>:10                                      ; preds = %0
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 2
  %13 = shl i32 %6, 4
  %14 = add i32 %12, %13
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %14, i32 undef, i32 0, i32 0, i32 0, i32 0, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %15 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.i32 %15, 1
  %17 = shl i32 %6, 3
  %18 = lshr i32 %6, 7
  %19 = and i32 %18, 4194303
  %20 = add i32 %16, %19
  %21 = shl i32 %20, 2
  %22 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %21, i32 undef)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.i32 %22, 0
  %24 = shl i32 %23, 10
  %25 = and i32 %17, 1016
  %26 = or i32 %24, %25
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %26, i32 undef)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = extractvalue %dx.types.ResRet.i32 %27, 1
  %30 = extractvalue %dx.types.CBufRet.i32 %15, 2
  %31 = shl i32 %6, 2
  %32 = lshr i32 %6, 8
  %33 = and i32 %32, 4194303
  %34 = add i32 %30, %33
  %35 = shl i32 %34, 2
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %35, i32 undef)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = shl i32 %37, 10
  %39 = and i32 %31, 1020
  %40 = or i32 %38, %39
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %40, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.i32 %43, 0
  %45 = add i32 %44, %17
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %45, i32 undef, i32 %28, i32 %29, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %46 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.i32 %46, 1
  %48 = add i32 %47, %31
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %48, i32 undef, i32 %42, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %49

; <label>:49                                      ; preds = %10, %0
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
!dx.entryPoints = !{!13}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !11, null}
!5 = !{!6, !7}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{!9, !10}
!9 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!10 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!11 = !{!12}
!12 = !{i32 0, %BlendShapeSkinningConstants* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!13 = !{void ()* @cs_blendshapes_copy_to_out_init_blendmap_weights, !"cs_blendshapes_copy_to_out_init_blendmap_weights", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 64, i32 1, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}

