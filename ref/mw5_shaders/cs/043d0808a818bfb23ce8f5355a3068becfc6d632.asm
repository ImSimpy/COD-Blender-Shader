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
; shader hash: 085e5854f0c62a6b180ef1e4b64cd534
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
;   [12 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [12 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                       UAV     u32         buf      U0             u0     1
;                                       UAV  struct     r/w+cnt      U1             u4     1
;                                       UAV  struct     r/w+cnt      U2             u5     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%"class.RWBuffer<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<vector<unsigned int, 3> >" = type { <3 x i32> }

@"\01?countH@@3IA" = external addrspace(3) global i32, align 4
@"\01?countV@@3IA" = external addrspace(3) global i32, align 4

define void @smaa_morphological_resolve_work_queue() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9, !dx.controlflow.hints !14

; <label>:6                                       ; preds = %0
  %7 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %2, i8 1)  ; BufferUpdateCounter(uav,inc)
  store i32 %7, i32 addrspace(3)* @"\01?countH@@3IA", align 4, !tbaa !15
  %8 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %1, i8 1)  ; BufferUpdateCounter(uav,inc)
  store i32 %8, i32 addrspace(3)* @"\01?countV@@3IA", align 4, !tbaa !15
  br label %9

; <label>:9                                       ; preds = %6, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %10 = load i32, i32 addrspace(3)* @"\01?countH@@3IA", align 4, !tbaa !15
  %11 = add i32 %10, 63
  %12 = and i32 %11, -64
  %13 = load i32, i32 addrspace(3)* @"\01?countV@@3IA", align 4, !tbaa !15
  %14 = add i32 %13, 63
  %15 = and i32 %14, -64
  %16 = add i32 %10, %4
  %17 = icmp ult i32 %16, %12
  br i1 %17, label %18, label %20, !dx.controlflow.hints !19

; <label>:18                                      ; preds = %9
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %16, i32 0, i32 0, i32 0, i32 0, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %19 = load i32, i32 addrspace(3)* @"\01?countV@@3IA", align 4, !tbaa !15
  br label %20

; <label>:20                                      ; preds = %18, %9
  %21 = phi i32 [ %19, %18 ], [ %13, %9 ]
  %22 = add i32 %21, %4
  %23 = icmp ult i32 %22, %15
  br i1 %23, label %24, label %25, !dx.controlflow.hints !20

; <label>:24                                      ; preds = %20
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %22, i32 0, i32 0, i32 0, i32 0, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %25

; <label>:25                                      ; preds = %24, %20
  br i1 %5, label %26, label %29, !dx.controlflow.hints !21

; <label>:26                                      ; preds = %25
  %27 = lshr i32 %14, 6
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 0, i32 undef, i32 %27, i32 %27, i32 %27, i32 %27, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 1, i32 undef, i32 1, i32 1, i32 1, i32 1, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 2, i32 undef, i32 1, i32 1, i32 1, i32 1, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %28 = lshr i32 %11, 6
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 3, i32 undef, i32 %28, i32 %28, i32 %28, i32 %28, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 4, i32 undef, i32 1, i32 1, i32 1, i32 1, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 5, i32 undef, i32 1, i32 1, i32 1, i32 1, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %29

; <label>:29                                      ; preds = %26, %25
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.bufferUpdateCounter(i32, %dx.types.Handle, i8) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!11}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{null, !5, null, null}
!5 = !{!6, !8, !10}
!6 = !{i32 0, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %"class.RWStructuredBuffer<vector<unsigned int, 3> >"* undef, !"", i32 0, i32 4, i32 1, i32 12, i1 false, i1 true, i1 false, !9}
!9 = !{i32 1, i32 12}
!10 = !{i32 2, %"class.RWStructuredBuffer<vector<unsigned int, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 12, i1 false, i1 true, i1 false, !9}
!11 = !{void ()* @smaa_morphological_resolve_work_queue, !"smaa_morphological_resolve_work_queue", null, !4, !12}
!12 = !{i32 0, i64 272, i32 4, !13}
!13 = !{i32 64, i32 1, i32 1}
!14 = distinct !{!14, !"dx.controlflow.hints", i32 2}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}

