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
; shader hash: 8b067a5cbc29a94fe464a4281d39952e
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

@"\01?ppSumSharedMem@@3PAIA" = external addrspace(3) global [512 x i32], align 4
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
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %9 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %3
  store i32 %8, i32 addrspace(3)* %9, align 4, !tbaa !10
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %10 = and i32 %3, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12, !dx.controlflow.hints !14

; <label>:12                                      ; preds = %0
  %13 = and i32 %3, -2
  %14 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %13
  %15 = load i32, i32 addrspace(3)* %14, align 4, !tbaa !10
  %16 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !10
  %17 = add i32 %16, %15
  store i32 %17, i32 addrspace(3)* %9, align 4, !tbaa !10
  br label %18

; <label>:18                                      ; preds = %12, %0
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %19 = and i32 %3, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21, !dx.controlflow.hints !15

; <label>:21                                      ; preds = %18
  %22 = and i32 %3, -4
  %23 = or i32 %22, 1
  %24 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %23
  %25 = load i32, i32 addrspace(3)* %24, align 4, !tbaa !10
  %26 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !10
  %27 = add i32 %26, %25
  store i32 %27, i32 addrspace(3)* %9, align 4, !tbaa !10
  br label %28

; <label>:28                                      ; preds = %21, %18
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %29 = and i32 %3, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31, !dx.controlflow.hints !16

; <label>:31                                      ; preds = %28
  %32 = and i32 %3, -8
  %33 = or i32 %32, 3
  %34 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %33
  %35 = load i32, i32 addrspace(3)* %34, align 4, !tbaa !10
  %36 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !10
  %37 = add i32 %36, %35
  store i32 %37, i32 addrspace(3)* %9, align 4, !tbaa !10
  br label %38

; <label>:38                                      ; preds = %31, %28
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %39 = and i32 %3, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41, !dx.controlflow.hints !17

; <label>:41                                      ; preds = %38
  %42 = and i32 %3, -16
  %43 = or i32 %42, 7
  %44 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %43
  %45 = load i32, i32 addrspace(3)* %44, align 4, !tbaa !10
  %46 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !10
  %47 = add i32 %46, %45
  store i32 %47, i32 addrspace(3)* %9, align 4, !tbaa !10
  br label %48

; <label>:48                                      ; preds = %41, %38
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %49 = and i32 %3, 16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %51, !dx.controlflow.hints !18

; <label>:51                                      ; preds = %48
  %52 = and i32 %3, -32
  %53 = or i32 %52, 15
  %54 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %53
  %55 = load i32, i32 addrspace(3)* %54, align 4, !tbaa !10
  %56 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !10
  %57 = add i32 %56, %55
  store i32 %57, i32 addrspace(3)* %9, align 4, !tbaa !10
  br label %58

; <label>:58                                      ; preds = %51, %48
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %59 = and i32 %3, 32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63, !dx.controlflow.hints !19

; <label>:61                                      ; preds = %58
  %62 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !10
  br label %70

; <label>:63                                      ; preds = %58
  %64 = and i32 %3, -64
  %65 = or i32 %64, 31
  %66 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %65
  %67 = load i32, i32 addrspace(3)* %66, align 4, !tbaa !10
  %68 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !10
  %69 = add i32 %68, %67
  store i32 %69, i32 addrspace(3)* %9, align 4, !tbaa !10
  br label %70

; <label>:70                                      ; preds = %63, %61
  %71 = phi i32 [ %62, %61 ], [ %69, %63 ]
  %72 = and i32 %3, 63
  %73 = icmp eq i32 %72, 63
  br i1 %73, label %74, label %77, !dx.controlflow.hints !20

; <label>:74                                      ; preds = %70
  %75 = lshr i32 %3, 6
  %76 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %75
  store i32 %71, i32 addrspace(3)* %76, align 4, !tbaa !10
  br label %77

; <label>:77                                      ; preds = %74, %70
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %78 = icmp eq i32 %3, 0
  br i1 %78, label %79, label %87, !dx.controlflow.hints !21

; <label>:79                                      ; preds = %77
  %80 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 0), align 4, !tbaa !10
  %81 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 1), align 4, !tbaa !10
  %82 = add i32 %81, %80
  store i32 %82, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 1), align 4, !tbaa !10
  %83 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 2), align 4, !tbaa !10
  %84 = add i32 %83, %82
  store i32 %84, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 2), align 4, !tbaa !10
  %85 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 3), align 4, !tbaa !10
  %86 = add i32 %85, %84
  store i32 %86, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 3), align 4, !tbaa !10
  br label %87

; <label>:87                                      ; preds = %79, %77
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %88 = icmp ugt i32 %3, 63
  br i1 %88, label %89, label %95, !dx.controlflow.hints !22

; <label>:89                                      ; preds = %87
  %90 = lshr i32 %3, 6
  %91 = add nsw i32 %90, -1
  %92 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %91
  %93 = load i32, i32 addrspace(3)* %92, align 4, !tbaa !10
  %94 = add i32 %93, %71
  br label %95

; <label>:95                                      ; preds = %89, %87
  %96 = phi i32 [ %94, %89 ], [ %71, %87 ]
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %6, i32 undef, i32 %96, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #3

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }

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
!8 = !{i32 0, i64 272, i32 4, !9}
!9 = !{i32 256, i32 1, i32 1}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
!14 = distinct !{!14, !"dx.controlflow.hints", i32 2}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}

