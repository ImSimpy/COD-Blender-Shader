;
; Note: shader requires additional functionality:
;       Wave level operations
;
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
; shader hash: 9f907017dc0e6d50498dbc99d6046cf6
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.RWByteAddressBuffer = type { i32 }

@"\01?gsTempData@@3PAIA" = external addrspace(3) global [32 x i32], align 4
@"\01?tiledOffsets256@@3PAIA" = external addrspace(3) global [4 x i32], align 4

define void @prefix_sum_resolve256() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %3 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %4 = shl i32 %2, 8
  %5 = add i32 %4, %3
  %6 = shl i32 %5, 2
  %7 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %6, i32 undef)  ; BufferLoad(srv,index,wot)
  %8 = extractvalue %dx.types.ResRet.i32 %7, 0
  %9 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %10 = and i32 %3, 63
  %11 = udiv i32 %10, %9
  %12 = udiv i32 64, %9
  %13 = lshr i32 %3, 6
  %14 = mul i32 %12, %13
  %15 = call i32 @dx.op.wavePrefixOp.i32(i32 121, i32 %8, i8 0, i8 1)  ; WavePrefixOp(value,op,sop)
  %16 = add i32 %15, %8
  %17 = icmp eq i32 %9, 64
  br i1 %17, label %57, label %18, !dx.controlflow.hints !10

; <label>:18                                      ; preds = %0
  %19 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %20 = add i32 %9, -1
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25, !dx.controlflow.hints !11

; <label>:22                                      ; preds = %18
  %23 = add i32 %14, %11
  %24 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %23
  store i32 %16, i32 addrspace(3)* %24, align 4, !tbaa !12
  br label %25

; <label>:25                                      ; preds = %22, %18
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %26 = icmp eq i32 %9, 32
  br i1 %26, label %27, label %33, !dx.controlflow.hints !16

; <label>:27                                      ; preds = %25
  %28 = icmp ugt i32 %10, 31
  br i1 %28, label %29, label %57, !dx.controlflow.hints !17

; <label>:29                                      ; preds = %27
  %30 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %14
  %31 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !12
  %32 = add i32 %31, %16
  br label %57

; <label>:33                                      ; preds = %25
  %34 = icmp eq i32 %9, 16
  br i1 %34, label %35, label %57, !dx.controlflow.hints !18

; <label>:35                                      ; preds = %33
  %36 = icmp ugt i32 %10, 15
  br i1 %36, label %37, label %41, !dx.controlflow.hints !19

; <label>:37                                      ; preds = %35
  %38 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %14
  %39 = load i32, i32 addrspace(3)* %38, align 4, !tbaa !12
  %40 = add i32 %39, %16
  br label %41

; <label>:41                                      ; preds = %37, %35
  %42 = phi i32 [ %40, %37 ], [ %16, %35 ]
  %43 = icmp ugt i32 %10, 31
  br i1 %43, label %44, label %49, !dx.controlflow.hints !20

; <label>:44                                      ; preds = %41
  %45 = add i32 %14, 1
  %46 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %45
  %47 = load i32, i32 addrspace(3)* %46, align 4, !tbaa !12
  %48 = add i32 %47, %42
  br label %49

; <label>:49                                      ; preds = %44, %41
  %50 = phi i32 [ %48, %44 ], [ %42, %41 ]
  %51 = icmp ugt i32 %10, 47
  br i1 %51, label %52, label %57, !dx.controlflow.hints !21

; <label>:52                                      ; preds = %49
  %53 = add i32 %14, 2
  %54 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %53
  %55 = load i32, i32 addrspace(3)* %54, align 4, !tbaa !12
  %56 = add i32 %55, %50
  br label %57

; <label>:57                                      ; preds = %52, %49, %33, %29, %27, %0
  %58 = phi i32 [ %16, %0 ], [ %32, %29 ], [ %16, %27 ], [ %56, %52 ], [ %50, %49 ], [ 0, %33 ]
  %59 = icmp eq i32 %10, 63
  br i1 %59, label %60, label %62, !dx.controlflow.hints !22

; <label>:60                                      ; preds = %57
  %61 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %13
  store i32 %58, i32 addrspace(3)* %61, align 4, !tbaa !12
  br label %62

; <label>:62                                      ; preds = %60, %57
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %63 = icmp eq i32 %3, 0
  br i1 %63, label %64, label %72, !dx.controlflow.hints !23

; <label>:64                                      ; preds = %62
  %65 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 0), align 4, !tbaa !12
  %66 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 1), align 4, !tbaa !12
  %67 = add i32 %66, %65
  store i32 %67, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 1), align 4, !tbaa !12
  %68 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 2), align 4, !tbaa !12
  %69 = add i32 %68, %67
  store i32 %69, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 2), align 4, !tbaa !12
  %70 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 3), align 4, !tbaa !12
  %71 = add i32 %70, %69
  store i32 %71, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 3), align 4, !tbaa !12
  br label %72

; <label>:72                                      ; preds = %64, %62
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %73 = icmp ugt i32 %3, 63
  br i1 %73, label %74, label %79, !dx.controlflow.hints !24

; <label>:74                                      ; preds = %72
  %75 = add nsw i32 %13, -1
  %76 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %75
  %77 = load i32, i32 addrspace(3)* %76, align 4, !tbaa !12
  %78 = add i32 %77, %58
  br label %79

; <label>:79                                      ; preds = %74, %72
  %80 = phi i32 [ %78, %74 ], [ %58, %72 ]
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %6, i32 undef, i32 %80, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneIndex(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.wavePrefixOp.i32(i32, i32, i8, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #3

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!7}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{null, !5, null, null}
!5 = !{!6}
!6 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!7 = !{void ()* @prefix_sum_resolve256, !"prefix_sum_resolve256", null, !4, !8}
!8 = !{i32 0, i64 524560, i32 4, !9}
!9 = !{i32 256, i32 1, i32 1}
!10 = distinct !{!10, !"dx.controlflow.hints", i32 2}
!11 = distinct !{!11, !"dx.controlflow.hints", i32 2}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}

