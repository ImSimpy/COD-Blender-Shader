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
; shader hash: 8eb60c3d518c66c8ad2c5ed9e241abde
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
;                                   texture    byte         r/o      T1            t22     1
;                                   texture  struct         r/o      T2            t23     1
;                                       UAV  struct         r/w      U0             u1     1
;                                       UAV    byte         r/w      U1             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<GPCulledTriCluster>" = type { %struct.GPCulledTriCluster }
%struct.GPCulledTriCluster = type { <2 x i32> }
%"class.RWStructuredBuffer<GPCulledTriCluster>" = type { %struct.GPCulledTriCluster }
%struct.RWByteAddressBuffer = type { i32 }

define void @cluster_gen_tri_counts() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %7 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %8 = shl i32 %6, 6
  %9 = add i32 %8, %7
  %10 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %11 = extractvalue %dx.types.ResRet.i32 %10, 0
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %33, !dx.controlflow.hints !16

; <label>:13                                      ; preds = %0
  %14 = shl i32 %9, 2
  %15 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %14, i32 undef)  ; BufferLoad(srv,index,wot)
  %16 = extractvalue %dx.types.ResRet.i32 %15, 0
  %17 = and i32 %16, 268435456
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !dx.controlflow.hints !17

; <label>:19                                      ; preds = %13
  %20 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %9, i32 0)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.i32 %20, 0
  %22 = extractvalue %dx.types.ResRet.i32 %20, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %9, i32 0, i32 %21, i32 %22, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %27

; <label>:23                                      ; preds = %13
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %9, i32 0)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = extractvalue %dx.types.ResRet.i32 %24, 1
  br label %27

; <label>:27                                      ; preds = %23, %19
  %28 = phi i32 [ %21, %19 ], [ %25, %23 ]
  %29 = phi i32 [ %22, %19 ], [ %26, %23 ]
  %30 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %28)  ; Countbits(value)
  %31 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %29)  ; Countbits(value)
  %32 = add i32 %31, %30
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %14, i32 undef, i32 %32, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %33

; <label>:33                                      ; preds = %27, %0
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
!4 = !{!5, !10, null, null}
!5 = !{!6, !7, !8}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 21, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %"class.StructuredBuffer<GPCulledTriCluster>"* undef, !"", i32 0, i32 23, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 8}
!10 = !{!11, !12}
!11 = !{i32 0, %"class.RWStructuredBuffer<GPCulledTriCluster>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !9}
!12 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!13 = !{void ()* @cluster_gen_tri_counts, !"cluster_gen_tri_counts", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 64, i32 1, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}

