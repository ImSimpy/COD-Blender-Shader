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
; shader hash: 6e8b8ba9f04c9814353aded6323e900b
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   texture    byte         r/o      T0            t11     1
;                                   texture    byte         r/o      T1            t12     1
;                                   texture  struct         r/o      T2            t22     1
;                                       UAV    byte         r/w      U0             u0     1
;                                       UAV    byte         r/w      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<GfxClutterCollectionGPUData>" = type { %struct.GfxClutterCollectionGPUData }
%struct.GfxClutterCollectionGPUData = type { i32, i32 }
%struct.RWByteAddressBuffer = type { i32 }

@"\01?workgroupBufferPos@@3IA" = external addrspace(3) global i32, align 4

define void @smodel_workgroup_gen_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %7 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %8 = shl i32 %6, 3
  %9 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %8, i32 undef)  ; BufferLoad(srv,index,wot)
  %10 = extractvalue %dx.types.ResRet.i32 %9, 0
  %11 = shl i32 %10, 4
  %12 = and i32 %11, 1048560
  %13 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %12, i32 undef)  ; BufferLoad(srv,index,wot)
  %14 = extractvalue %dx.types.ResRet.i32 %13, 1
  %15 = extractvalue %dx.types.ResRet.i32 %13, 3
  %16 = and i32 %15, 2097152
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !dx.controlflow.hints !16

; <label>:18                                      ; preds = %0
  %19 = and i32 %15, 65535
  %20 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %19, i32 4)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.i32 %20, 0
  br label %22

; <label>:22                                      ; preds = %18, %0
  %23 = phi i32 [ %21, %18 ], [ %14, %0 ]
  %24 = add i32 %23, 63
  %25 = lshr i32 %24, 6
  %26 = add nuw nsw i32 %25, 63
  %27 = lshr i32 %26, 6
  %28 = icmp eq i32 %7, 0
  br i1 %28, label %29, label %30, !dx.controlflow.hints !17

; <label>:29                                      ; preds = %22
  store i32 0, i32 addrspace(3)* @"\01?workgroupBufferPos@@3IA", align 4, !tbaa !18
  br label %30

; <label>:30                                      ; preds = %29, %22
  %31 = phi i1 [ %28, %29 ], [ false, %22 ]
  br i1 %31, label %32, label %34, !dx.controlflow.hints !22

; <label>:32                                      ; preds = %30
  %33 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 undef, i32 undef, i32 %25)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %33, i32 addrspace(3)* @"\01?workgroupBufferPos@@3IA", align 4, !tbaa !18
  br label %34

; <label>:34                                      ; preds = %32, %30
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %35 = icmp eq i32 %27, 0
  br i1 %35, label %54, label %36

; <label>:36                                      ; preds = %34
  %37 = and i32 %6, 65535
  br label %38

; <label>:38                                      ; preds = %46, %36
  %39 = phi i32 [ %50, %46 ], [ %7, %36 ]
  %40 = phi i32 [ %51, %46 ], [ 0, %36 ]
  %41 = icmp uge i32 %39, %25
  %42 = load i32, i32 addrspace(3)* @"\01?workgroupBufferPos@@3IA", align 4, !tbaa !18
  %43 = add i32 %42, %39
  %44 = icmp ugt i32 %43, 16383
  %45 = or i1 %41, %44
  br i1 %45, label %53, label %46, !dx.controlflow.hints !23

; <label>:46                                      ; preds = %38
  %47 = shl i32 %39, 16
  %48 = or i32 %47, %37
  %49 = shl i32 %43, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %49, i32 undef, i32 %48, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %50 = add i32 %39, 64
  %51 = add nuw nsw i32 %40, 1
  %52 = icmp ult i32 %51, %27
  br i1 %52, label %38, label %53

; <label>:53                                      ; preds = %46, %38
  br label %54

; <label>:54                                      ; preds = %53, %34
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #3

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind readonly }

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
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %"class.StructuredBuffer<GfxClutterCollectionGPUData>"* undef, !"", i32 0, i32 22, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 8}
!10 = !{!11, !12}
!11 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!12 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!13 = !{void ()* @smodel_workgroup_gen_pass, !"smodel_workgroup_gen_pass", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 64, i32 1, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}

