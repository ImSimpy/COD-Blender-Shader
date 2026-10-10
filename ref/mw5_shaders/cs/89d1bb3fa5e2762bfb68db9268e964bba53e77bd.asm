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
; shader hash: 782de97e37586825483ad4ee25118f53
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
;
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T0            t21     1
;                                   texture  struct         r/o      T1            t22     1
;                                   texture    byte         r/o      T2            t23     1
;                                   texture  struct         r/o      T3            t24     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<GPCulledSubMesh>" = type { %struct.GPCulledSubMesh }
%struct.GPCulledSubMesh = type { <2 x i32> }
%struct.RWByteAddressBuffer = type { i32 }

define void @cluster_workgroup_gen_indirection() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %7 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %8 = shl i32 %6, 2
  %9 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %8, i32 undef)  ; BufferLoad(srv,index,wot)
  %10 = extractvalue %dx.types.ResRet.i32 %9, 0
  %11 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %6, i32 0)  ; BufferLoad(srv,index,wot)
  %12 = extractvalue %dx.types.ResRet.i32 %11, 0
  %13 = extractvalue %dx.types.ResRet.i32 %11, 1
  %14 = and i32 %7, 32
  %15 = and i32 %7, 31
  %16 = shl i32 1, %15
  %17 = add i32 %16, -1
  %18 = icmp eq i32 %14, 0
  %19 = and i32 %12, %17
  %20 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %19)  ; Countbits(value)
  %21 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %12)  ; Countbits(value)
  %22 = and i32 %13, %17
  %23 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %22)  ; Countbits(value)
  %24 = add i32 %23, %21
  %25 = select i1 %18, i32 %20, i32 %24
  %26 = add i32 %25, %10
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %8, i32 undef)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6, i32 0)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = extractvalue %dx.types.ResRet.i32 %29, 1
  %32 = and i32 %30, %17
  %33 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %32)  ; Countbits(value)
  %34 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %30)  ; Countbits(value)
  %35 = and i32 %31, %17
  %36 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %35)  ; Countbits(value)
  %37 = add i32 %36, %34
  %38 = select i1 %18, i32 %33, i32 %37
  %39 = add i32 %38, %28
  %40 = lshr i32 %7, 5
  %41 = shl nuw nsw i32 %40, 2
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6, i32 %41)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = and i32 %43, %16
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48, !dx.controlflow.hints !16

; <label>:46                                      ; preds = %0
  %47 = shl i32 %39, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %47, i32 undef, i32 %26, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %48

; <label>:48                                      ; preds = %46, %0
  %49 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %6, i32 %41)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.i32 %49, 0
  %51 = and i32 %50, %16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53, !dx.controlflow.hints !17

; <label>:53                                      ; preds = %48
  %54 = shl i32 %26, 2
  %55 = add i32 %54, 1048576
  br i1 %45, label %56, label %57, !dx.controlflow.hints !18

; <label>:56                                      ; preds = %53
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %55, i32 undef, i32 %39, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %58

; <label>:57                                      ; preds = %53
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %55, i32 undef, i32 262144, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %58

; <label>:58                                      ; preds = %57, %56, %48
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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
!4 = !{!5, !11, null, null}
!5 = !{!6, !7, !9, !10}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 21, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.StructuredBuffer<GPCulledSubMesh>"* undef, !"", i32 0, i32 22, i32 1, i32 12, i32 0, !8}
!8 = !{i32 1, i32 8}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 23, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.StructuredBuffer<GPCulledSubMesh>"* undef, !"", i32 0, i32 24, i32 1, i32 12, i32 0, !8}
!11 = !{!12}
!12 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!13 = !{void ()* @cluster_workgroup_gen_indirection, !"cluster_workgroup_gen_indirection", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 64, i32 1, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}

