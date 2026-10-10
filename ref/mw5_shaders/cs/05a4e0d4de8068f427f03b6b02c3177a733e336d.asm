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
; shader hash: 8327489b2cd38c6babb49a7bb85785ac
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

@"\01?gsTempData@@3PAIA" = external addrspace(3) global [32 x i32], align 4
@"\01?tiledOffsets512@@3PAIA" = external addrspace(3) global [8 x i32], align 4

define void @prefix_sum_upsweep512() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %4 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %5 = icmp ugt i32 %3, 511
  br i1 %5, label %68, label %6, !dx.controlflow.hints !12

; <label>:6                                       ; preds = %0
  %7 = shl i32 %3, 9
  %8 = add i32 %7, %4
  %9 = shl i32 %8, 2
  %10 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %9, i32 undef)  ; BufferLoad(srv,index,wot)
  %11 = extractvalue %dx.types.ResRet.i32 %10, 0
  %12 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %13 = udiv i32 %4, %12
  %14 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %11, i8 0, i8 1)  ; WaveActiveOp(value,op,sop)
  %15 = icmp eq i32 %12, 64
  br i1 %15, label %42, label %16, !dx.controlflow.hints !13

; <label>:16                                      ; preds = %6
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %17 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %17, label %18, label %20, !dx.controlflow.hints !14

; <label>:18                                      ; preds = %16
  %19 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %13
  store i32 %14, i32 addrspace(3)* %19, align 4, !tbaa !15
  br label %20

; <label>:20                                      ; preds = %18, %16
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %21 = icmp eq i32 %12, 32
  br i1 %21, label %22, label %27, !dx.controlflow.hints !19

; <label>:22                                      ; preds = %20
  %23 = xor i32 %13, 1
  %24 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %23
  %25 = load i32, i32 addrspace(3)* %24, align 4, !tbaa !15
  %26 = add i32 %25, %14
  br label %42

; <label>:27                                      ; preds = %20
  %28 = icmp eq i32 %12, 16
  br i1 %28, label %29, label %42, !dx.controlflow.hints !20

; <label>:29                                      ; preds = %27
  %30 = xor i32 %13, 1
  %31 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %30
  %32 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !15
  %33 = add i32 %32, %14
  %34 = xor i32 %13, 2
  %35 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %34
  %36 = load i32, i32 addrspace(3)* %35, align 4, !tbaa !15
  %37 = add i32 %33, %36
  %38 = xor i32 %13, 3
  %39 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %38
  %40 = load i32, i32 addrspace(3)* %39, align 4, !tbaa !15
  %41 = add i32 %37, %40
  br label %42

; <label>:42                                      ; preds = %29, %27, %22, %6
  %43 = phi i32 [ %26, %22 ], [ %41, %29 ], [ %14, %6 ], [ 0, %27 ]
  %44 = and i32 %4, 63
  %45 = icmp eq i32 %44, 63
  br i1 %45, label %46, label %49, !dx.controlflow.hints !21

; <label>:46                                      ; preds = %42
  %47 = lshr i32 %4, 6
  %48 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 %47
  store i32 %43, i32 addrspace(3)* %48, align 4, !tbaa !15
  br label %49

; <label>:49                                      ; preds = %46, %42
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %50 = icmp eq i32 %4, 0
  br i1 %50, label %51, label %68, !dx.controlflow.hints !22

; <label>:51                                      ; preds = %49
  %52 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 0), align 4, !tbaa !15
  %53 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 1), align 4, !tbaa !15
  %54 = add i32 %53, %52
  %55 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 2), align 4, !tbaa !15
  %56 = add i32 %54, %55
  %57 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 3), align 4, !tbaa !15
  %58 = add i32 %56, %57
  %59 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 4), align 4, !tbaa !15
  %60 = add i32 %58, %59
  %61 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 5), align 4, !tbaa !15
  %62 = add i32 %60, %61
  %63 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 6), align 4, !tbaa !15
  %64 = add i32 %62, %63
  %65 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 7), align 4, !tbaa !15
  %66 = add i32 %64, %65
  %67 = shl i32 %3, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %67, i32 undef, i32 %66, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %68

; <label>:68                                      ; preds = %51, %49, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveOp.i32(i32, i32, i8, i8) #2

; Function Attrs: nounwind
declare i1 @dx.op.waveIsFirstLane(i32) #2

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
!9 = !{void ()* @prefix_sum_upsweep512, !"prefix_sum_upsweep512", null, !4, !10}
!10 = !{i32 0, i64 524560, i32 4, !11}
!11 = !{i32 512, i32 1, i32 1}
!12 = distinct !{!12, !"dx.controlflow.hints", i32 2}
!13 = distinct !{!13, !"dx.controlflow.hints", i32 2}
!14 = distinct !{!14, !"dx.controlflow.hints", i32 2}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}

