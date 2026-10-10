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
; shader hash: f064917c54ed1c29791a4798608fbc73
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
  %10 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %9, i32 0)  ; BufferLoad(srv,index,wot)
  %11 = extractvalue %dx.types.ResRet.i32 %10, 0
  %12 = icmp ult i32 %5, %11
  %13 = add i32 %9, 3
  %14 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 %13)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.i32 %14, 1
  %16 = extractvalue %dx.types.CBufRet.i32 %14, 3
  %17 = mul i32 %16, 20
  br i1 %12, label %18, label %23, !dx.controlflow.hints !17

; <label>:18                                      ; preds = %0
  %19 = extractvalue %dx.types.CBufRet.i32 %14, 2
  %20 = add i32 %19, %5
  %21 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %20, i32 0)  ; BufferLoad(srv,index,wot)
  %22 = extractvalue %dx.types.ResRet.i32 %21, 0
  br label %23

; <label>:23                                      ; preds = %18, %0
  %24 = phi i32 [ 0, %0 ], [ %22, %18 ]
  br label %25

; <label>:25                                      ; preds = %73, %23
  %26 = phi i32 [ 0, %23 ], [ %83, %73 ]
  %27 = shl i32 1, %26
  %28 = and i32 %27, %24
  %29 = icmp ne i32 %28, 0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %30 = and i32 %6, 31
  %31 = shl i32 1, %30
  %32 = select i1 %29, i32 %31, i32 0
  %33 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %6
  store i32 %32, i32 addrspace(3)* %33, align 4, !tbaa !18
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %34 = icmp ult i32 %30, 16
  br i1 %34, label %35, label %41, !dx.controlflow.hints !22

; <label>:35                                      ; preds = %25
  %36 = add i32 %6, 16
  %37 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %36
  %38 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !18
  %39 = load i32, i32 addrspace(3)* %33, align 4, !tbaa !18
  %40 = or i32 %39, %38
  store i32 %40, i32 addrspace(3)* %33, align 4, !tbaa !18
  br label %41

; <label>:41                                      ; preds = %35, %25
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %42 = icmp ult i32 %30, 8
  br i1 %42, label %43, label %49, !dx.controlflow.hints !23

; <label>:43                                      ; preds = %41
  %44 = add i32 %6, 8
  %45 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %44
  %46 = load i32, i32 addrspace(3)* %45, align 4, !tbaa !18
  %47 = load i32, i32 addrspace(3)* %33, align 4, !tbaa !18
  %48 = or i32 %47, %46
  store i32 %48, i32 addrspace(3)* %33, align 4, !tbaa !18
  br label %49

; <label>:49                                      ; preds = %43, %41
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %50 = icmp ult i32 %30, 4
  br i1 %50, label %51, label %57, !dx.controlflow.hints !24

; <label>:51                                      ; preds = %49
  %52 = add i32 %6, 4
  %53 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %52
  %54 = load i32, i32 addrspace(3)* %53, align 4, !tbaa !18
  %55 = load i32, i32 addrspace(3)* %33, align 4, !tbaa !18
  %56 = or i32 %55, %54
  store i32 %56, i32 addrspace(3)* %33, align 4, !tbaa !18
  br label %57

; <label>:57                                      ; preds = %51, %49
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %58 = icmp ult i32 %30, 2
  br i1 %58, label %59, label %65, !dx.controlflow.hints !25

; <label>:59                                      ; preds = %57
  %60 = add i32 %6, 2
  %61 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %60
  %62 = load i32, i32 addrspace(3)* %61, align 4, !tbaa !18
  %63 = load i32, i32 addrspace(3)* %33, align 4, !tbaa !18
  %64 = or i32 %63, %62
  store i32 %64, i32 addrspace(3)* %33, align 4, !tbaa !18
  br label %65

; <label>:65                                      ; preds = %59, %57
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %66 = icmp eq i32 %30, 0
  br i1 %66, label %67, label %73, !dx.controlflow.hints !26

; <label>:67                                      ; preds = %65
  %68 = add i32 %6, 1
  %69 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %68
  %70 = load i32, i32 addrspace(3)* %69, align 4, !tbaa !18
  %71 = load i32, i32 addrspace(3)* %33, align 4, !tbaa !18
  %72 = or i32 %71, %70
  store i32 %72, i32 addrspace(3)* %33, align 4, !tbaa !18
  br label %73

; <label>:73                                      ; preds = %67, %65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %74 = and i32 %6, -64
  %75 = or i32 %74, 32
  %76 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %74
  %77 = load i32, i32 addrspace(3)* %76, align 4, !tbaa !18
  %78 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %75
  %79 = load i32, i32 addrspace(3)* %78, align 4, !tbaa !18
  %80 = mul i32 %26, %15
  %81 = add i32 %17, %7
  %82 = add i32 %81, %80
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %82, i32 0, i32 %77, i32 %79, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %83 = add nuw nsw i32 %26, 1
  %84 = icmp eq i32 %83, 20
  br i1 %84, label %85, label %25

; <label>:85                                      ; preds = %73
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

