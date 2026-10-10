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
; shader hash: 57cd7cfe76d170e6aa4ac6ddcebe57d1
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
;   [240 x i8] (type annotation not present)
;
; }
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
;   [4 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb1     1
;                                   texture  struct         r/o      T0            t37     1
;                                   texture  struct         r/o      T1            t23     1
;                                       UAV  struct         r/w      U0             u4     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<vector<unsigned int, 2> >" = type { <2 x i32> }
%DeferredEffectLightConsts_decl = type { %struct.DeferredEffectLightConsts }
%struct.DeferredEffectLightConsts = type { i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x <4 x i32>] }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

define void @cs_del_sh_compute_sampling_offsets() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %7 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %8 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %9 = extractvalue %dx.types.CBufRet.i32 %8, 2
  %10 = add i32 %9, 6
  %11 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %10, i32 0)  ; BufferLoad(srv,index,wot)
  %12 = extractvalue %dx.types.ResRet.i32 %11, 0
  %13 = icmp ult i32 %5, %12
  %14 = add i32 %9, 9
  %15 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 %14)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.i32 %15, 1
  %17 = extractvalue %dx.types.CBufRet.i32 %15, 3
  %18 = mul i32 %17, 20
  br i1 %13, label %19, label %24, !dx.controlflow.hints !17

; <label>:19                                      ; preds = %0
  %20 = extractvalue %dx.types.CBufRet.i32 %15, 2
  %21 = add i32 %20, %5
  %22 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %21, i32 0)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.i32 %22, 0
  br label %24

; <label>:24                                      ; preds = %19, %0
  %25 = phi i32 [ 0, %0 ], [ %23, %19 ]
  br label %26

; <label>:26                                      ; preds = %74, %24
  %27 = phi i32 [ 0, %24 ], [ %84, %74 ]
  %28 = shl i32 1, %27
  %29 = and i32 %28, %25
  %30 = icmp ne i32 %29, 0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %31 = and i32 %6, 31
  %32 = shl i32 1, %31
  %33 = select i1 %30, i32 %32, i32 0
  %34 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %6
  store i32 %33, i32 addrspace(3)* %34, align 4, !tbaa !18
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %35 = icmp ult i32 %31, 16
  br i1 %35, label %36, label %42, !dx.controlflow.hints !22

; <label>:36                                      ; preds = %26
  %37 = add i32 %6, 16
  %38 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %37
  %39 = load i32, i32 addrspace(3)* %38, align 4, !tbaa !18
  %40 = load i32, i32 addrspace(3)* %34, align 4, !tbaa !18
  %41 = or i32 %40, %39
  store i32 %41, i32 addrspace(3)* %34, align 4, !tbaa !18
  br label %42

; <label>:42                                      ; preds = %36, %26
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %43 = icmp ult i32 %31, 8
  br i1 %43, label %44, label %50, !dx.controlflow.hints !23

; <label>:44                                      ; preds = %42
  %45 = add i32 %6, 8
  %46 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %45
  %47 = load i32, i32 addrspace(3)* %46, align 4, !tbaa !18
  %48 = load i32, i32 addrspace(3)* %34, align 4, !tbaa !18
  %49 = or i32 %48, %47
  store i32 %49, i32 addrspace(3)* %34, align 4, !tbaa !18
  br label %50

; <label>:50                                      ; preds = %44, %42
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %51 = icmp ult i32 %31, 4
  br i1 %51, label %52, label %58, !dx.controlflow.hints !24

; <label>:52                                      ; preds = %50
  %53 = add i32 %6, 4
  %54 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %53
  %55 = load i32, i32 addrspace(3)* %54, align 4, !tbaa !18
  %56 = load i32, i32 addrspace(3)* %34, align 4, !tbaa !18
  %57 = or i32 %56, %55
  store i32 %57, i32 addrspace(3)* %34, align 4, !tbaa !18
  br label %58

; <label>:58                                      ; preds = %52, %50
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %59 = icmp ult i32 %31, 2
  br i1 %59, label %60, label %66, !dx.controlflow.hints !25

; <label>:60                                      ; preds = %58
  %61 = add i32 %6, 2
  %62 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %61
  %63 = load i32, i32 addrspace(3)* %62, align 4, !tbaa !18
  %64 = load i32, i32 addrspace(3)* %34, align 4, !tbaa !18
  %65 = or i32 %64, %63
  store i32 %65, i32 addrspace(3)* %34, align 4, !tbaa !18
  br label %66

; <label>:66                                      ; preds = %60, %58
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %67 = icmp eq i32 %31, 0
  br i1 %67, label %68, label %74, !dx.controlflow.hints !26

; <label>:68                                      ; preds = %66
  %69 = add i32 %6, 1
  %70 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %69
  %71 = load i32, i32 addrspace(3)* %70, align 4, !tbaa !18
  %72 = load i32, i32 addrspace(3)* %34, align 4, !tbaa !18
  %73 = or i32 %72, %71
  store i32 %73, i32 addrspace(3)* %34, align 4, !tbaa !18
  br label %74

; <label>:74                                      ; preds = %68, %66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %75 = and i32 %6, -64
  %76 = or i32 %75, 32
  %77 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %75
  %78 = load i32, i32 addrspace(3)* %77, align 4, !tbaa !18
  %79 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %76
  %80 = load i32, i32 addrspace(3)* %79, align 4, !tbaa !18
  %81 = mul i32 %27, %16
  %82 = add i32 %18, %7
  %83 = add i32 %82, %81
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %83, i32 0, i32 %78, i32 %80, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %84 = add nuw nsw i32 %27, 1
  %85 = icmp eq i32 %84, 20
  br i1 %85, label %86, label %26

; <label>:86                                      ; preds = %74
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !12, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 37, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 4}
!8 = !{i32 1, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 23, i32 1, i32 12, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %"class.RWStructuredBuffer<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 4, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!11 = !{i32 1, i32 8}
!12 = !{!13}
!13 = !{i32 0, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!14 = !{void ()* @cs_del_sh_compute_sampling_offsets, !"cs_del_sh_compute_sampling_offsets", null, !4, !15}
!15 = !{i32 0, i64 272, i32 4, !16}
!16 = !{i32 64, i32 1, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}

