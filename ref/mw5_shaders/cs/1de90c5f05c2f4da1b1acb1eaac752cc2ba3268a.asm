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
; shader hash: 8eea90603a22beeb85ae3dc836430123
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
;   [4 x i8] (type annotation not present)
;
; }
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
;                                   texture  struct         r/o      T0             t3     1
;                                   texture  struct         r/o      T1             t4     1
;                                       UAV  struct         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxClutterCollectionGPUData>" = type { %struct.GfxClutterCollectionGPUData }
%struct.GfxClutterCollectionGPUData = type { i32, i32 }
%"class.RWStructuredBuffer<GfxClutterCollectionGPUData>" = type { %struct.GfxClutterCollectionGPUData }

define void @reactivemotion_clutter_copy_collection_data() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 0)  ; BufferLoad(srv,index,wot)
  %6 = extractvalue %dx.types.ResRet.i32 %5, 0
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %13, !dx.controlflow.hints !15

; <label>:8                                       ; preds = %0
  %9 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4, i32 0)  ; BufferLoad(srv,index,wot)
  %10 = extractvalue %dx.types.ResRet.i32 %9, 0
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %10, i32 0, i32 %10, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %11 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4, i32 4)  ; BufferLoad(srv,index,wot)
  %12 = extractvalue %dx.types.ResRet.i32 %11, 0
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %10, i32 4, i32 %12, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %13

; <label>:13                                      ; preds = %8, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

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
!dx.entryPoints = !{!12}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, null, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 4}
!8 = !{i32 1, %"class.StructuredBuffer<GfxClutterCollectionGPUData>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 8}
!10 = !{!11}
!11 = !{i32 0, %"class.RWStructuredBuffer<GfxClutterCollectionGPUData>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !9}
!12 = !{void ()* @reactivemotion_clutter_copy_collection_data, !"reactivemotion_clutter_copy_collection_data", null, !4, !13}
!13 = !{i32 0, i64 272, i32 4, !14}
!14 = !{i32 64, i32 1, i32 1}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}

