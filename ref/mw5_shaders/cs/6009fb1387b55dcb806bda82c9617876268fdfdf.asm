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
; shader hash: 310546763436231e033ce22f4154c67e
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
;                                   texture    byte         r/o      T0             t0     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }

@"\01?ppSumSharedMem@@3PAIA" = external addrspace(3) global [512 x i32], align 4
@"\01?tiledOffsets256@@3PAIA" = external addrspace(3) global [4 x i32], align 4

define void @prefix_sum_upsweep256() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %4 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %5 = icmp ugt i32 %3, 255
  br i1 %5, label %80, label %6, !dx.controlflow.hints !12

; <label>:6                                       ; preds = %0
  %7 = shl i32 %3, 8
  %8 = add i32 %7, %4
  %9 = shl i32 %8, 2
  %10 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %9, i32 undef)  ; BufferLoad(srv,index,wot)
  %11 = extractvalue %dx.types.ResRet.i32 %10, 0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %12 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %4
  store i32 %11, i32 addrspace(3)* %12, align 4, !tbaa !13
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %13 = and i32 %4, 63
  %14 = icmp ult i32 %13, 32
  br i1 %14, label %15, label %21, !dx.controlflow.hints !17

; <label>:15                                      ; preds = %6
  %16 = add i32 %4, 32
  %17 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %16
  %18 = load i32, i32 addrspace(3)* %17, align 4, !tbaa !13
  %19 = load i32, i32 addrspace(3)* %12, align 4, !tbaa !13
  %20 = add i32 %19, %18
  store i32 %20, i32 addrspace(3)* %12, align 4, !tbaa !13
  br label %21

; <label>:21                                      ; preds = %15, %6
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %22 = icmp ult i32 %13, 16
  br i1 %22, label %23, label %29, !dx.controlflow.hints !18

; <label>:23                                      ; preds = %21
  %24 = add i32 %4, 16
  %25 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %24
  %26 = load i32, i32 addrspace(3)* %25, align 4, !tbaa !13
  %27 = load i32, i32 addrspace(3)* %12, align 4, !tbaa !13
  %28 = add i32 %27, %26
  store i32 %28, i32 addrspace(3)* %12, align 4, !tbaa !13
  br label %29

; <label>:29                                      ; preds = %23, %21
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %30 = icmp ult i32 %13, 8
  br i1 %30, label %31, label %37, !dx.controlflow.hints !19

; <label>:31                                      ; preds = %29
  %32 = add i32 %4, 8
  %33 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %32
  %34 = load i32, i32 addrspace(3)* %33, align 4, !tbaa !13
  %35 = load i32, i32 addrspace(3)* %12, align 4, !tbaa !13
  %36 = add i32 %35, %34
  store i32 %36, i32 addrspace(3)* %12, align 4, !tbaa !13
  br label %37

; <label>:37                                      ; preds = %31, %29
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %38 = icmp ult i32 %13, 4
  br i1 %38, label %39, label %45, !dx.controlflow.hints !20

; <label>:39                                      ; preds = %37
  %40 = add i32 %4, 4
  %41 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %40
  %42 = load i32, i32 addrspace(3)* %41, align 4, !tbaa !13
  %43 = load i32, i32 addrspace(3)* %12, align 4, !tbaa !13
  %44 = add i32 %43, %42
  store i32 %44, i32 addrspace(3)* %12, align 4, !tbaa !13
  br label %45

; <label>:45                                      ; preds = %39, %37
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %46 = icmp ult i32 %13, 2
  br i1 %46, label %47, label %53, !dx.controlflow.hints !21

; <label>:47                                      ; preds = %45
  %48 = add i32 %4, 2
  %49 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %48
  %50 = load i32, i32 addrspace(3)* %49, align 4, !tbaa !13
  %51 = load i32, i32 addrspace(3)* %12, align 4, !tbaa !13
  %52 = add i32 %51, %50
  store i32 %52, i32 addrspace(3)* %12, align 4, !tbaa !13
  br label %53

; <label>:53                                      ; preds = %47, %45
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %54 = icmp eq i32 %13, 0
  br i1 %54, label %55, label %61, !dx.controlflow.hints !22

; <label>:55                                      ; preds = %53
  %56 = add i32 %4, 1
  %57 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %56
  %58 = load i32, i32 addrspace(3)* %57, align 4, !tbaa !13
  %59 = load i32, i32 addrspace(3)* %12, align 4, !tbaa !13
  %60 = add i32 %59, %58
  store i32 %60, i32 addrspace(3)* %12, align 4, !tbaa !13
  br label %61

; <label>:61                                      ; preds = %55, %53
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %62 = icmp eq i32 %13, 63
  br i1 %62, label %63, label %69, !dx.controlflow.hints !23

; <label>:63                                      ; preds = %61
  %64 = and i32 %4, -64
  %65 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %64
  %66 = load i32, i32 addrspace(3)* %65, align 4, !tbaa !13
  %67 = lshr i32 %4, 6
  %68 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %67
  store i32 %66, i32 addrspace(3)* %68, align 4, !tbaa !13
  br label %69

; <label>:69                                      ; preds = %63, %61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %70 = icmp eq i32 %4, 0
  br i1 %70, label %71, label %80, !dx.controlflow.hints !24

; <label>:71                                      ; preds = %69
  %72 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 0), align 4, !tbaa !13
  %73 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 1), align 4, !tbaa !13
  %74 = add i32 %73, %72
  %75 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 2), align 4, !tbaa !13
  %76 = add i32 %74, %75
  %77 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 3), align 4, !tbaa !13
  %78 = add i32 %76, %77
  %79 = shl i32 %3, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %79, i32 undef, i32 %78, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %80

; <label>:80                                      ; preds = %71, %69, %0
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
!dx.entryPoints = !{!9}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !7, null, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{!8}
!8 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!9 = !{void ()* @prefix_sum_upsweep256, !"prefix_sum_upsweep256", null, !4, !10}
!10 = !{i32 0, i64 272, i32 4, !11}
!11 = !{i32 256, i32 1, i32 1}
!12 = distinct !{!12, !"dx.controlflow.hints", i32 2}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !15, i64 0}
!15 = !{!"omnipotent char", !16, i64 0}
!16 = !{!"Simple C/C++ TBAA"}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}

