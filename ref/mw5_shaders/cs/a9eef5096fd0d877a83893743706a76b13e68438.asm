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
; shader hash: e4e66399bde2784f005aa0ea494fde7f
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
;                                       UAV    byte         r/w      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }

@"\01?gsTempData@@3PAIA" = external addrspace(3) global [32 x i32], align 4
@"\01?tiledOffsets256@@3PAIA" = external addrspace(3) global [4 x i32], align 4

define void @prefix_sum_downsweep256() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %5 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %6 = icmp ugt i32 %4, 255
  br i1 %6, label %97, label %7, !dx.controlflow.hints !13

; <label>:7                                       ; preds = %0
  %8 = shl i32 %4, 8
  %9 = add i32 %8, %5
  %10 = shl i32 %9, 2
  %11 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %10, i32 undef)  ; BufferLoad(srv,index,wot)
  %12 = extractvalue %dx.types.ResRet.i32 %11, 0
  %13 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %14 = and i32 %5, 63
  %15 = udiv i32 %14, %13
  %16 = udiv i32 64, %13
  %17 = lshr i32 %5, 6
  %18 = mul i32 %16, %17
  %19 = call i32 @dx.op.wavePrefixOp.i32(i32 121, i32 %12, i8 0, i8 1)  ; WavePrefixOp(value,op,sop)
  %20 = add i32 %19, %12
  %21 = icmp eq i32 %13, 64
  br i1 %21, label %61, label %22, !dx.controlflow.hints !14

; <label>:22                                      ; preds = %7
  %23 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %24 = add i32 %13, -1
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29, !dx.controlflow.hints !15

; <label>:26                                      ; preds = %22
  %27 = add i32 %18, %15
  %28 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %27
  store i32 %20, i32 addrspace(3)* %28, align 4, !tbaa !16
  br label %29

; <label>:29                                      ; preds = %26, %22
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %30 = icmp eq i32 %13, 32
  br i1 %30, label %31, label %37, !dx.controlflow.hints !20

; <label>:31                                      ; preds = %29
  %32 = icmp ugt i32 %14, 31
  br i1 %32, label %33, label %61, !dx.controlflow.hints !21

; <label>:33                                      ; preds = %31
  %34 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %18
  %35 = load i32, i32 addrspace(3)* %34, align 4, !tbaa !16
  %36 = add i32 %35, %20
  br label %61

; <label>:37                                      ; preds = %29
  %38 = icmp eq i32 %13, 16
  br i1 %38, label %39, label %61, !dx.controlflow.hints !22

; <label>:39                                      ; preds = %37
  %40 = icmp ugt i32 %14, 15
  br i1 %40, label %41, label %45, !dx.controlflow.hints !23

; <label>:41                                      ; preds = %39
  %42 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %18
  %43 = load i32, i32 addrspace(3)* %42, align 4, !tbaa !16
  %44 = add i32 %43, %20
  br label %45

; <label>:45                                      ; preds = %41, %39
  %46 = phi i32 [ %44, %41 ], [ %20, %39 ]
  %47 = icmp ugt i32 %14, 31
  br i1 %47, label %48, label %53, !dx.controlflow.hints !24

; <label>:48                                      ; preds = %45
  %49 = add i32 %18, 1
  %50 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %49
  %51 = load i32, i32 addrspace(3)* %50, align 4, !tbaa !16
  %52 = add i32 %51, %46
  br label %53

; <label>:53                                      ; preds = %48, %45
  %54 = phi i32 [ %52, %48 ], [ %46, %45 ]
  %55 = icmp ugt i32 %14, 47
  br i1 %55, label %56, label %61, !dx.controlflow.hints !25

; <label>:56                                      ; preds = %53
  %57 = add i32 %18, 2
  %58 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %57
  %59 = load i32, i32 addrspace(3)* %58, align 4, !tbaa !16
  %60 = add i32 %59, %54
  br label %61

; <label>:61                                      ; preds = %56, %53, %37, %33, %31, %7
  %62 = phi i32 [ %20, %7 ], [ %36, %33 ], [ %20, %31 ], [ %60, %56 ], [ %54, %53 ], [ 0, %37 ]
  %63 = icmp eq i32 %14, 63
  br i1 %63, label %64, label %66, !dx.controlflow.hints !26

; <label>:64                                      ; preds = %61
  %65 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %17
  store i32 %62, i32 addrspace(3)* %65, align 4, !tbaa !16
  br label %66

; <label>:66                                      ; preds = %64, %61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %67 = icmp eq i32 %5, 0
  br i1 %67, label %68, label %76, !dx.controlflow.hints !27

; <label>:68                                      ; preds = %66
  %69 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 0), align 4, !tbaa !16
  %70 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 1), align 4, !tbaa !16
  %71 = add i32 %70, %69
  store i32 %71, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 1), align 4, !tbaa !16
  %72 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 2), align 4, !tbaa !16
  %73 = add i32 %72, %71
  store i32 %73, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 2), align 4, !tbaa !16
  %74 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 3), align 4, !tbaa !16
  %75 = add i32 %74, %73
  store i32 %75, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 3), align 4, !tbaa !16
  br label %76

; <label>:76                                      ; preds = %68, %66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %77 = icmp ugt i32 %5, 63
  br i1 %77, label %78, label %83, !dx.controlflow.hints !28

; <label>:78                                      ; preds = %76
  %79 = add nsw i32 %17, -1
  %80 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %79
  %81 = load i32, i32 addrspace(3)* %80, align 4, !tbaa !16
  %82 = add i32 %81, %62
  br label %83

; <label>:83                                      ; preds = %78, %76
  %84 = phi i32 [ %82, %78 ], [ %62, %76 ]
  %85 = icmp eq i32 %4, 0
  br i1 %85, label %91, label %86, !dx.controlflow.hints !29

; <label>:86                                      ; preds = %83
  %87 = shl i32 %4, 2
  %88 = add i32 %87, -4
  %89 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %88, i32 undef)  ; BufferLoad(srv,index,wot)
  %90 = extractvalue %dx.types.ResRet.i32 %89, 0
  br label %91

; <label>:91                                      ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ 0, %83 ]
  %93 = add i32 %92, %84
  %94 = add i32 %10, 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %94, i32 undef, i32 %93, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %95 = icmp eq i32 %9, 0
  br i1 %95, label %96, label %97, !dx.controlflow.hints !30

; <label>:96                                      ; preds = %91
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %97

; <label>:97                                      ; preds = %96, %91, %0
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
!dx.entryPoints = !{!10}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !7, null, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{!8, !9}
!8 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!9 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!10 = !{void ()* @prefix_sum_downsweep256, !"prefix_sum_downsweep256", null, !4, !11}
!11 = !{i32 0, i64 524560, i32 4, !12}
!12 = !{i32 256, i32 1, i32 1}
!13 = distinct !{!13, !"dx.controlflow.hints", i32 2}
!14 = distinct !{!14, !"dx.controlflow.hints", i32 2}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C/C++ TBAA"}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}

