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
; shader hash: 6cebc922f6e4c0d607822e400ed11e0b
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
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb5     1
;                                   texture    byte         r/o      T0             t1     1
;                                   texture    byte         r/o      T1            t12     1
;                                   texture    byte         r/o      T2            t13     1
;                                   texture    byte         r/o      T3            t16     1
;                                   texture  struct         r/o      T4            t17     1
;                                   texture    byte         r/o      T5            t18     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<GPCulledTriCluster>" = type { %struct.GPCulledTriCluster }
%struct.GPCulledTriCluster = type { <2 x i32> }
%struct.RWByteAddressBuffer = type { i32 }
%GPBatchConsts = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

define void @triangle_expand_indexed_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %10 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %11 = shl i32 %9, 2
  %12 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %11, i32 undef)  ; BufferLoad(srv,index,wot)
  %13 = extractvalue %dx.types.ResRet.i32 %12, 0
  %14 = and i32 %13, 65535
  %15 = lshr i32 %13, 16
  %16 = and i32 %15, 1023
  %17 = and i32 %13, 536870912
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19, !dx.controlflow.hints !20

; <label>:19                                      ; preds = %0
  %20 = shl nuw nsw i32 %14, 4
  %21 = add nuw nsw i32 %20, 5767168
  %22 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %21, i32 undef)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.i32 %22, 0
  %24 = extractvalue %dx.types.ResRet.i32 %22, 2
  br label %32

; <label>:25                                      ; preds = %0
  %26 = mul nuw nsw i32 %14, 12
  %27 = add nuw nsw i32 %26, 1572864
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %27, i32 undef)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 1
  %30 = extractvalue %dx.types.ResRet.i32 %28, 2
  %31 = lshr i32 %29, 16
  br label %32

; <label>:32                                      ; preds = %25, %19
  %33 = phi i32 [ %24, %19 ], [ %30, %25 ]
  %34 = phi i32 [ %23, %19 ], [ %31, %25 ]
  %35 = icmp eq i32 %34, 16384
  br i1 %35, label %100, label %36, !dx.controlflow.hints !21

; <label>:36                                      ; preds = %32
  %37 = add i32 %33, %16
  %38 = shl i32 %13, 16
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %9, i32 0)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = extractvalue %dx.types.ResRet.i32 %39, 1
  %42 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %40)  ; Countbits(value)
  %43 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %41)  ; Countbits(value)
  %44 = sub i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %100, label %46, !dx.controlflow.hints !22

; <label>:46                                      ; preds = %36
  %47 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %11, i32 undef)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.i32 %47, 0
  %49 = icmp ult i32 %10, 64
  br i1 %49, label %50, label %100

; <label>:50                                      ; preds = %46
  %51 = lshr i32 %10, 5
  %52 = shl nuw nsw i32 %51, 2
  %53 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %9, i32 %52)  ; BufferLoad(srv,index,wot)
  %54 = extractvalue %dx.types.ResRet.i32 %53, 0
  %55 = and i32 %10, 31
  %56 = shl i32 1, %55
  %57 = and i32 %54, %56
  %58 = icmp eq i32 %57, 0
  %59 = add i32 %56, -1
  br i1 %58, label %100, label %60, !dx.controlflow.hints !23

; <label>:60                                      ; preds = %50
  %61 = and i32 %10, 32
  %62 = icmp eq i32 %61, 0
  %63 = and i32 %40, %59
  %64 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %63)  ; Countbits(value)
  %65 = and i32 %41, %59
  %66 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %65)  ; Countbits(value)
  %67 = add i32 %66, %42
  %68 = select i1 %62, i32 %64, i32 %67
  %69 = shl i32 %37, 2
  %70 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %69, i32 undef)  ; BufferLoad(srv,index,wot)
  %71 = extractvalue %dx.types.ResRet.i32 %70, 0
  %72 = shl i32 %71, 6
  %73 = add i32 %72, %10
  %74 = mul i32 %73, 3
  %75 = mul i32 %73, 6
  %76 = and i32 %75, -4
  %77 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %76, i32 undef)  ; BufferLoad(srv,index,wot)
  %78 = extractvalue %dx.types.ResRet.i32 %77, 0
  %79 = extractvalue %dx.types.ResRet.i32 %77, 1
  %80 = and i32 %74, 1
  %81 = icmp eq i32 %80, 0
  %82 = lshr i32 %78, 16
  %83 = and i32 %79, 65535
  %84 = add i32 %68, %48
  %85 = mul i32 %84, 12
  %86 = add i32 %85, 12
  %87 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.i32 %87, 1
  %89 = shl i32 %88, 2
  %90 = icmp ugt i32 %86, %89
  br i1 %90, label %100, label %91, !dx.controlflow.hints !24

; <label>:91                                      ; preds = %60
  %92 = lshr i32 %79, 16
  %93 = select i1 %81, i32 %83, i32 %92
  %94 = select i1 %81, i32 %82, i32 %83
  %95 = and i32 %78, 65535
  %96 = select i1 %81, i32 %95, i32 %82
  %97 = or i32 %93, %38
  %98 = or i32 %94, %38
  %99 = or i32 %96, %38
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %85, i32 undef, i32 %99, i32 %98, i32 %97, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %100

; <label>:100                                     ; preds = %91, %60, %50, %46, %36, %32
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !15, null}
!5 = !{!6, !7, !8, !9, !10, !12}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %"class.StructuredBuffer<GPCulledTriCluster>"* undef, !"", i32 0, i32 17, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 8}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 18, i32 1, i32 11, i32 0, null}
!13 = !{!14}
!14 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!15 = !{!16}
!16 = !{i32 0, %GPBatchConsts* undef, !"", i32 0, i32 5, i32 1, i32 48, null}
!17 = !{void ()* @triangle_expand_indexed_pass, !"triangle_expand_indexed_pass", null, !4, !18}
!18 = !{i32 0, i64 272, i32 4, !19}
!19 = !{i32 64, i32 1, i32 1}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}

