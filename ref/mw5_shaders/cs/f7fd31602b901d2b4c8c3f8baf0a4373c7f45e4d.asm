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
; shader hash: ccac114e01f14d89614d322647b252cb
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

@"\01?ppSumSharedMem@@3PAIA" = external addrspace(3) global [512 x i32], align 4
@"\01?tiledOffsets512@@3PAIA" = external addrspace(3) global [8 x i32], align 4

define void @prefix_sum_downsweep512() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %5 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %6 = icmp ugt i32 %4, 511
  br i1 %6, label %121, label %7, !dx.controlflow.hints !13

; <label>:7                                       ; preds = %0
  %8 = shl i32 %4, 9
  %9 = add i32 %8, %5
  %10 = shl i32 %9, 2
  %11 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %10, i32 undef)  ; BufferLoad(srv,index,wot)
  %12 = extractvalue %dx.types.ResRet.i32 %11, 0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %13 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %5
  store i32 %12, i32 addrspace(3)* %13, align 4, !tbaa !14
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %14 = and i32 %5, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16, !dx.controlflow.hints !18

; <label>:16                                      ; preds = %7
  %17 = and i32 %5, -2
  %18 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %17
  %19 = load i32, i32 addrspace(3)* %18, align 4, !tbaa !14
  %20 = load i32, i32 addrspace(3)* %13, align 4, !tbaa !14
  %21 = add i32 %20, %19
  store i32 %21, i32 addrspace(3)* %13, align 4, !tbaa !14
  br label %22

; <label>:22                                      ; preds = %16, %7
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %23 = and i32 %5, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25, !dx.controlflow.hints !19

; <label>:25                                      ; preds = %22
  %26 = and i32 %5, -4
  %27 = or i32 %26, 1
  %28 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %27
  %29 = load i32, i32 addrspace(3)* %28, align 4, !tbaa !14
  %30 = load i32, i32 addrspace(3)* %13, align 4, !tbaa !14
  %31 = add i32 %30, %29
  store i32 %31, i32 addrspace(3)* %13, align 4, !tbaa !14
  br label %32

; <label>:32                                      ; preds = %25, %22
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %33 = and i32 %5, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35, !dx.controlflow.hints !20

; <label>:35                                      ; preds = %32
  %36 = and i32 %5, -8
  %37 = or i32 %36, 3
  %38 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %37
  %39 = load i32, i32 addrspace(3)* %38, align 4, !tbaa !14
  %40 = load i32, i32 addrspace(3)* %13, align 4, !tbaa !14
  %41 = add i32 %40, %39
  store i32 %41, i32 addrspace(3)* %13, align 4, !tbaa !14
  br label %42

; <label>:42                                      ; preds = %35, %32
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %43 = and i32 %5, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45, !dx.controlflow.hints !21

; <label>:45                                      ; preds = %42
  %46 = and i32 %5, -16
  %47 = or i32 %46, 7
  %48 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %47
  %49 = load i32, i32 addrspace(3)* %48, align 4, !tbaa !14
  %50 = load i32, i32 addrspace(3)* %13, align 4, !tbaa !14
  %51 = add i32 %50, %49
  store i32 %51, i32 addrspace(3)* %13, align 4, !tbaa !14
  br label %52

; <label>:52                                      ; preds = %45, %42
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %53 = and i32 %5, 16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55, !dx.controlflow.hints !22

; <label>:55                                      ; preds = %52
  %56 = and i32 %5, -32
  %57 = or i32 %56, 15
  %58 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %57
  %59 = load i32, i32 addrspace(3)* %58, align 4, !tbaa !14
  %60 = load i32, i32 addrspace(3)* %13, align 4, !tbaa !14
  %61 = add i32 %60, %59
  store i32 %61, i32 addrspace(3)* %13, align 4, !tbaa !14
  br label %62

; <label>:62                                      ; preds = %55, %52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %63 = and i32 %5, 32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67, !dx.controlflow.hints !23

; <label>:65                                      ; preds = %62
  %66 = load i32, i32 addrspace(3)* %13, align 4, !tbaa !14
  br label %74

; <label>:67                                      ; preds = %62
  %68 = and i32 %5, -64
  %69 = or i32 %68, 31
  %70 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?ppSumSharedMem@@3PAIA", i32 0, i32 %69
  %71 = load i32, i32 addrspace(3)* %70, align 4, !tbaa !14
  %72 = load i32, i32 addrspace(3)* %13, align 4, !tbaa !14
  %73 = add i32 %72, %71
  store i32 %73, i32 addrspace(3)* %13, align 4, !tbaa !14
  br label %74

; <label>:74                                      ; preds = %67, %65
  %75 = phi i32 [ %66, %65 ], [ %73, %67 ]
  %76 = and i32 %5, 63
  %77 = icmp eq i32 %76, 63
  br i1 %77, label %78, label %81, !dx.controlflow.hints !24

; <label>:78                                      ; preds = %74
  %79 = lshr i32 %5, 6
  %80 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 %79
  store i32 %75, i32 addrspace(3)* %80, align 4, !tbaa !14
  br label %81

; <label>:81                                      ; preds = %78, %74
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %82 = icmp eq i32 %5, 0
  br i1 %82, label %83, label %99, !dx.controlflow.hints !25

; <label>:83                                      ; preds = %81
  %84 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 0), align 4, !tbaa !14
  %85 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 1), align 4, !tbaa !14
  %86 = add i32 %85, %84
  store i32 %86, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 1), align 4, !tbaa !14
  %87 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 2), align 4, !tbaa !14
  %88 = add i32 %87, %86
  store i32 %88, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 2), align 4, !tbaa !14
  %89 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 3), align 4, !tbaa !14
  %90 = add i32 %89, %88
  store i32 %90, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 3), align 4, !tbaa !14
  %91 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 4), align 4, !tbaa !14
  %92 = add i32 %91, %90
  store i32 %92, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 4), align 4, !tbaa !14
  %93 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 5), align 4, !tbaa !14
  %94 = add i32 %93, %92
  store i32 %94, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 5), align 4, !tbaa !14
  %95 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 6), align 4, !tbaa !14
  %96 = add i32 %95, %94
  store i32 %96, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 6), align 4, !tbaa !14
  %97 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 7), align 4, !tbaa !14
  %98 = add i32 %97, %96
  store i32 %98, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 7), align 4, !tbaa !14
  br label %99

; <label>:99                                      ; preds = %83, %81
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %100 = icmp ugt i32 %5, 63
  br i1 %100, label %101, label %107, !dx.controlflow.hints !26

; <label>:101                                     ; preds = %99
  %102 = lshr i32 %5, 6
  %103 = add nsw i32 %102, -1
  %104 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 %103
  %105 = load i32, i32 addrspace(3)* %104, align 4, !tbaa !14
  %106 = add i32 %105, %75
  br label %107

; <label>:107                                     ; preds = %101, %99
  %108 = phi i32 [ %106, %101 ], [ %75, %99 ]
  %109 = icmp eq i32 %4, 0
  br i1 %109, label %115, label %110, !dx.controlflow.hints !27

; <label>:110                                     ; preds = %107
  %111 = shl i32 %4, 2
  %112 = add i32 %111, -4
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %112, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  br label %115

; <label>:115                                     ; preds = %110, %107
  %116 = phi i32 [ %114, %110 ], [ 0, %107 ]
  %117 = add i32 %116, %108
  %118 = add i32 %10, 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %118, i32 undef, i32 %117, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %119 = icmp eq i32 %9, 0
  br i1 %119, label %120, label %121, !dx.controlflow.hints !28

; <label>:120                                     ; preds = %115
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %121

; <label>:121                                     ; preds = %120, %115, %0
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
!10 = !{void ()* @prefix_sum_downsweep512, !"prefix_sum_downsweep512", null, !4, !11}
!11 = !{i32 0, i64 272, i32 4, !12}
!12 = !{i32 512, i32 1, i32 1}
!13 = distinct !{!13, !"dx.controlflow.hints", i32 2}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}

