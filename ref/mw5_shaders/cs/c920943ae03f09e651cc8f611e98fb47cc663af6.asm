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
; shader hash: 12a54af20d9669ab63670813dba30833
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
;
; cbuffer 
; {
;
;   [16 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture    byte         r/o      T0             t9     1
;                                       UAV    byte         r/w      U0             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%ThreadCountConst = type { i32, i32, i32, i32 }

@"\01?tiledOffsets512@@3PAIA" = external addrspace(3) global [512 x i32], align 4

define void @cs_sum() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %5 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %6 = shl i32 %4, 9
  %7 = add i32 %6, %5
  %8 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %9 = extractvalue %dx.types.CBufRet.i32 %8, 0
  %10 = icmp ult i32 %7, %9
  %11 = shl i32 %7, 2
  %12 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %11, i32 undef)  ; BufferLoad(srv,index,wot)
  %13 = extractvalue %dx.types.ResRet.i32 %12, 0
  %14 = select i1 %10, i32 %13, i32 0
  %15 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 %5
  store i32 %14, i32 addrspace(3)* %15, align 4, !tbaa !14
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %16 = and i32 %5, 511
  %17 = icmp ult i32 %16, 256
  br i1 %17, label %18, label %24, !dx.controlflow.hints !18

; <label>:18                                      ; preds = %0
  %19 = add i32 %5, 256
  %20 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 %19
  %21 = load i32, i32 addrspace(3)* %20, align 4, !tbaa !14
  %22 = load i32, i32 addrspace(3)* %15, align 4, !tbaa !14
  %23 = add i32 %22, %21
  store i32 %23, i32 addrspace(3)* %15, align 4, !tbaa !14
  br label %24

; <label>:24                                      ; preds = %18, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %25 = icmp ult i32 %16, 128
  br i1 %25, label %26, label %32, !dx.controlflow.hints !19

; <label>:26                                      ; preds = %24
  %27 = add i32 %5, 128
  %28 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 %27
  %29 = load i32, i32 addrspace(3)* %28, align 4, !tbaa !14
  %30 = load i32, i32 addrspace(3)* %15, align 4, !tbaa !14
  %31 = add i32 %30, %29
  store i32 %31, i32 addrspace(3)* %15, align 4, !tbaa !14
  br label %32

; <label>:32                                      ; preds = %26, %24
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %33 = icmp ult i32 %16, 64
  br i1 %33, label %34, label %40, !dx.controlflow.hints !20

; <label>:34                                      ; preds = %32
  %35 = add i32 %5, 64
  %36 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 %35
  %37 = load i32, i32 addrspace(3)* %36, align 4, !tbaa !14
  %38 = load i32, i32 addrspace(3)* %15, align 4, !tbaa !14
  %39 = add i32 %38, %37
  store i32 %39, i32 addrspace(3)* %15, align 4, !tbaa !14
  br label %40

; <label>:40                                      ; preds = %34, %32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %41 = icmp ult i32 %16, 32
  br i1 %41, label %42, label %48, !dx.controlflow.hints !21

; <label>:42                                      ; preds = %40
  %43 = add i32 %5, 32
  %44 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 %43
  %45 = load i32, i32 addrspace(3)* %44, align 4, !tbaa !14
  %46 = load i32, i32 addrspace(3)* %15, align 4, !tbaa !14
  %47 = add i32 %46, %45
  store i32 %47, i32 addrspace(3)* %15, align 4, !tbaa !14
  br label %48

; <label>:48                                      ; preds = %42, %40
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %49 = icmp ult i32 %16, 16
  br i1 %49, label %50, label %56, !dx.controlflow.hints !22

; <label>:50                                      ; preds = %48
  %51 = add i32 %5, 16
  %52 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 %51
  %53 = load i32, i32 addrspace(3)* %52, align 4, !tbaa !14
  %54 = load i32, i32 addrspace(3)* %15, align 4, !tbaa !14
  %55 = add i32 %54, %53
  store i32 %55, i32 addrspace(3)* %15, align 4, !tbaa !14
  br label %56

; <label>:56                                      ; preds = %50, %48
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %57 = icmp ult i32 %16, 8
  br i1 %57, label %58, label %64, !dx.controlflow.hints !23

; <label>:58                                      ; preds = %56
  %59 = add i32 %5, 8
  %60 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 %59
  %61 = load i32, i32 addrspace(3)* %60, align 4, !tbaa !14
  %62 = load i32, i32 addrspace(3)* %15, align 4, !tbaa !14
  %63 = add i32 %62, %61
  store i32 %63, i32 addrspace(3)* %15, align 4, !tbaa !14
  br label %64

; <label>:64                                      ; preds = %58, %56
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %65 = icmp ult i32 %16, 4
  br i1 %65, label %66, label %72, !dx.controlflow.hints !24

; <label>:66                                      ; preds = %64
  %67 = add i32 %5, 4
  %68 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 %67
  %69 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !14
  %70 = load i32, i32 addrspace(3)* %15, align 4, !tbaa !14
  %71 = add i32 %70, %69
  store i32 %71, i32 addrspace(3)* %15, align 4, !tbaa !14
  br label %72

; <label>:72                                      ; preds = %66, %64
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %73 = icmp ult i32 %16, 2
  br i1 %73, label %74, label %80, !dx.controlflow.hints !25

; <label>:74                                      ; preds = %72
  %75 = add i32 %5, 2
  %76 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 %75
  %77 = load i32, i32 addrspace(3)* %76, align 4, !tbaa !14
  %78 = load i32, i32 addrspace(3)* %15, align 4, !tbaa !14
  %79 = add i32 %78, %77
  store i32 %79, i32 addrspace(3)* %15, align 4, !tbaa !14
  br label %80

; <label>:80                                      ; preds = %74, %72
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %81 = icmp eq i32 %16, 0
  br i1 %81, label %82, label %88, !dx.controlflow.hints !26

; <label>:82                                      ; preds = %80
  %83 = add i32 %5, 1
  %84 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 %83
  %85 = load i32, i32 addrspace(3)* %84, align 4, !tbaa !14
  %86 = load i32, i32 addrspace(3)* %15, align 4, !tbaa !14
  %87 = add i32 %86, %85
  store i32 %87, i32 addrspace(3)* %15, align 4, !tbaa !14
  br label %88

; <label>:88                                      ; preds = %82, %80
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %89 = icmp eq i32 %5, 0
  br i1 %89, label %90, label %93, !dx.controlflow.hints !27

; <label>:90                                      ; preds = %88
  %91 = load i32, i32 addrspace(3)* getelementptr inbounds ([512 x i32], [512 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 0), align 4, !tbaa !14
  %92 = shl i32 %4, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %92, i32 undef, i32 %91, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %93

; <label>:93                                      ; preds = %90, %88
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

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
!dx.entryPoints = !{!11}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !7, !9, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!7 = !{!8}
!8 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!9 = !{!10}
!10 = !{i32 0, %ThreadCountConst* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!11 = !{void ()* @cs_sum, !"cs_sum", null, !4, !12}
!12 = !{i32 0, i64 272, i32 4, !13}
!13 = !{i32 512, i32 1, i32 1}
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

