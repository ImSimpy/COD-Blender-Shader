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
; shader hash: 3cbcf822f7db23a04b7175854d40798e
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
;   [56 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture    byte         r/o      T0             t2     1
;                                   texture    byte         r/o      T1             t3     1
;                                   texture    byte         r/o      T2             t4     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%g_constants = type { %struct.UnpackConstants }
%struct.UnpackConstants = type { <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

define void @cs_indices_format_16bit() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = lshr i32 %6, 5
  %8 = shl i32 %6, 1
  %9 = and i32 %8, 62
  %10 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.i32 %10, 1
  %12 = icmp ult i32 %7, %11
  br i1 %12, label %13, label %74, !dx.controlflow.hints !16

; <label>:13                                      ; preds = %0
  %14 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.i32 %14, 0
  %16 = add i32 %15, %7
  %17 = shl i32 %16, 2
  %18 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %17, i32 undef)  ; BufferLoad(srv,index,wot)
  %19 = extractvalue %dx.types.ResRet.i32 %18, 0
  %20 = shl i32 %19, 5
  %21 = or i32 %20, 16
  %22 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %21, i32 undef)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.i32 %22, 3
  %24 = and i32 %23, 65535
  %25 = lshr i32 %23, 16
  %26 = icmp ult i32 %9, %25
  br i1 %26, label %27, label %58, !dx.controlflow.hints !17

; <label>:27                                      ; preds = %13
  %28 = shl i32 %19, 6
  %29 = or i32 %28, %9
  %30 = mul i32 %29, 6
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %30, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = extractvalue %dx.types.ResRet.i32 %31, 1
  %34 = and i32 %33, 65535
  %35 = or i32 %9, 1
  %36 = icmp ult i32 %35, %25
  br i1 %36, label %37, label %58, !dx.controlflow.hints !18

; <label>:37                                      ; preds = %27
  %38 = or i32 %29, 1
  %39 = mul i32 %38, 3
  %40 = mul i32 %38, 6
  %41 = and i32 %40, -4
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %41, i32 undef)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = extractvalue %dx.types.ResRet.i32 %42, 1
  %45 = and i32 %39, 1
  %46 = icmp eq i32 %45, 0
  %47 = lshr i32 %43, 16
  %48 = and i32 %44, 65535
  %49 = lshr i32 %44, 16
  %50 = and i32 %43, 65535
  %51 = select i1 %46, i32 %50, i32 %47
  %52 = select i1 %46, i32 %47, i32 %48
  %53 = select i1 %46, i32 %48, i32 %49
  %54 = shl nuw i32 %51, 16
  %55 = or i32 %54, %34
  %56 = shl nuw i32 %53, 16
  %57 = or i32 %56, %52
  br label %58

; <label>:58                                      ; preds = %37, %27, %13
  %59 = phi i32 [ %32, %37 ], [ 0, %13 ], [ %32, %27 ]
  %60 = phi i32 [ %55, %37 ], [ 0, %13 ], [ %34, %27 ]
  %61 = phi i32 [ %57, %37 ], [ 0, %13 ], [ 0, %27 ]
  %62 = extractvalue %dx.types.CBufRet.i32 %14, 2
  %63 = icmp ne i32 %62, 0
  %64 = or i1 %26, %63
  br i1 %64, label %65, label %74, !dx.controlflow.hints !19

; <label>:65                                      ; preds = %58
  %66 = shl i32 %7, 6
  %67 = or i32 %66, %9
  %68 = add nuw nsw i32 %24, %9
  %69 = select i1 %63, i32 %67, i32 %68
  %70 = lshr i32 %69, 1
  %71 = extractvalue %dx.types.CBufRet.i32 %14, 3
  %72 = mul i32 %70, 12
  %73 = add i32 %72, %71
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %73, i32 undef, i32 %59, i32 %60, i32 %61, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %74

; <label>:74                                      ; preds = %65, %58, %0
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
!4 = !{!5, !9, !11, null}
!5 = !{!6, !7, !8}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!9 = !{!10}
!10 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!11 = !{!12}
!12 = !{i32 0, %g_constants* undef, !"", i32 0, i32 0, i32 1, i32 56, null}
!13 = !{void ()* @cs_indices_format_16bit, !"cs_indices_format_16bit", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 64, i32 1, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}

