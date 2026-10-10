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
; shader hash: 922fc7903918cb1eba3942ce1fc35bdd
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
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   texture  struct         r/o      T0             t3     1
;                                   texture  struct         r/o      T1             t5     1
;                                       UAV  struct         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.StructuredBuffer<FxEmitterDefPerFrameData>" = type { %struct.FxEmitterDefPerFrameData }
%struct.FxEmitterDefPerFrameData = type { i32, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%FxPrefixSumDefThreadGroupsConsts_decl = type { %struct.FxPrefixSumDefThreadGroupsConsts }
%struct.FxPrefixSumDefThreadGroupsConsts = type { i32, i32, i32, i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4
@"\01?nextIterationBaseSum@@3IA" = external addrspace(3) global i32, align 4

define void @cs_fx_prefix_sum_def_thread_groups() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %6 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %7 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6, i32 0)  ; BufferLoad(srv,index,wot)
  %8 = extractvalue %dx.types.ResRet.i32 %7, 0
  %9 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %8, i32 0)  ; BufferLoad(srv,index,wot)
  %10 = extractvalue %dx.types.ResRet.i32 %9, 0
  %11 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %8, i32 4)  ; BufferLoad(srv,index,wot)
  %12 = extractvalue %dx.types.ResRet.i32 %11, 0
  %13 = add i32 %10, 63
  %14 = lshr i32 %13, 6
  br label %15

; <label>:15                                      ; preds = %112, %0
  %16 = phi i32 [ 0, %0 ], [ %113, %112 ]
  %17 = shl i32 1, %16
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 0
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  %22 = icmp ne i32 %14, 0
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %112, !dx.controlflow.hints !17

; <label>:24                                      ; preds = %15
  br label %25

; <label>:25                                      ; preds = %107, %24
  %26 = phi i32 [ %108, %107 ], [ 0, %24 ]
  %27 = phi i32 [ %109, %107 ], [ 0, %24 ]
  %28 = shl i32 %27, 6
  %29 = add i32 %28, %5
  %30 = shl i32 %16, 8
  %31 = add i32 %30, %12
  %32 = add i32 %31, %29
  %33 = icmp ult i32 %29, %10
  br i1 %33, label %34, label %37, !dx.controlflow.hints !18

; <label>:34                                      ; preds = %25
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %32, i32 0)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  br label %37

; <label>:37                                      ; preds = %34, %25
  %38 = phi i32 [ %36, %34 ], [ 0, %25 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %39 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %5
  store i32 %38, i32 addrspace(3)* %39, align 4, !tbaa !19
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %40 = and i32 %5, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42, !dx.controlflow.hints !23

; <label>:42                                      ; preds = %37
  %43 = and i32 %5, -2
  %44 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %43
  %45 = load i32, i32 addrspace(3)* %44, align 4, !tbaa !19
  %46 = load i32, i32 addrspace(3)* %39, align 4, !tbaa !19
  %47 = add i32 %46, %45
  store i32 %47, i32 addrspace(3)* %39, align 4, !tbaa !19
  br label %48

; <label>:48                                      ; preds = %42, %37
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %49 = and i32 %5, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %51, !dx.controlflow.hints !24

; <label>:51                                      ; preds = %48
  %52 = and i32 %5, -4
  %53 = or i32 %52, 1
  %54 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %53
  %55 = load i32, i32 addrspace(3)* %54, align 4, !tbaa !19
  %56 = load i32, i32 addrspace(3)* %39, align 4, !tbaa !19
  %57 = add i32 %56, %55
  store i32 %57, i32 addrspace(3)* %39, align 4, !tbaa !19
  br label %58

; <label>:58                                      ; preds = %51, %48
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %59 = and i32 %5, 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61, !dx.controlflow.hints !25

; <label>:61                                      ; preds = %58
  %62 = and i32 %5, -8
  %63 = or i32 %62, 3
  %64 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %63
  %65 = load i32, i32 addrspace(3)* %64, align 4, !tbaa !19
  %66 = load i32, i32 addrspace(3)* %39, align 4, !tbaa !19
  %67 = add i32 %66, %65
  store i32 %67, i32 addrspace(3)* %39, align 4, !tbaa !19
  br label %68

; <label>:68                                      ; preds = %61, %58
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %69 = and i32 %5, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %78, label %71, !dx.controlflow.hints !26

; <label>:71                                      ; preds = %68
  %72 = and i32 %5, -16
  %73 = or i32 %72, 7
  %74 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %73
  %75 = load i32, i32 addrspace(3)* %74, align 4, !tbaa !19
  %76 = load i32, i32 addrspace(3)* %39, align 4, !tbaa !19
  %77 = add i32 %76, %75
  store i32 %77, i32 addrspace(3)* %39, align 4, !tbaa !19
  br label %78

; <label>:78                                      ; preds = %71, %68
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %79 = and i32 %5, 16
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %88, label %81, !dx.controlflow.hints !27

; <label>:81                                      ; preds = %78
  %82 = and i32 %5, -32
  %83 = or i32 %82, 15
  %84 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %83
  %85 = load i32, i32 addrspace(3)* %84, align 4, !tbaa !19
  %86 = load i32, i32 addrspace(3)* %39, align 4, !tbaa !19
  %87 = add i32 %86, %85
  store i32 %87, i32 addrspace(3)* %39, align 4, !tbaa !19
  br label %88

; <label>:88                                      ; preds = %81, %78
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %89 = and i32 %5, 32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93, !dx.controlflow.hints !28

; <label>:91                                      ; preds = %88
  %92 = load i32, i32 addrspace(3)* %39, align 4, !tbaa !19
  br label %100

; <label>:93                                      ; preds = %88
  %94 = and i32 %5, -64
  %95 = or i32 %94, 31
  %96 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %95
  %97 = load i32, i32 addrspace(3)* %96, align 4, !tbaa !19
  %98 = load i32, i32 addrspace(3)* %39, align 4, !tbaa !19
  %99 = add i32 %98, %97
  store i32 %99, i32 addrspace(3)* %39, align 4, !tbaa !19
  br label %100

; <label>:100                                     ; preds = %93, %91
  %101 = phi i32 [ %92, %91 ], [ %99, %93 ]
  %102 = add i32 %101, %26
  br i1 %33, label %103, label %104, !dx.controlflow.hints !29

; <label>:103                                     ; preds = %100
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %32, i32 0, i32 %102, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %104

; <label>:104                                     ; preds = %103, %100
  %105 = icmp eq i32 %5, 63
  br i1 %105, label %106, label %107, !dx.controlflow.hints !30

; <label>:106                                     ; preds = %104
  store i32 %102, i32 addrspace(3)* @"\01?nextIterationBaseSum@@3IA", align 4, !tbaa !19
  br label %107

; <label>:107                                     ; preds = %106, %104
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %108 = load i32, i32 addrspace(3)* @"\01?nextIterationBaseSum@@3IA", align 4, !tbaa !19
  %109 = add nuw nsw i32 %27, 1
  %110 = icmp eq i32 %109, %14
  br i1 %110, label %111, label %25

; <label>:111                                     ; preds = %107
  br label %112

; <label>:112                                     ; preds = %111, %15
  %113 = add nuw nsw i32 %16, 1
  %114 = icmp eq i32 %113, 3
  br i1 %114, label %115, label %15

; <label>:115                                     ; preds = %112
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

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
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !12, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.StructuredBuffer<FxEmitterDefPerFrameData>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 8}
!8 = !{i32 1, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 4}
!10 = !{!11}
!11 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !9}
!12 = !{!13}
!13 = !{i32 0, %FxPrefixSumDefThreadGroupsConsts_decl* undef, !"", i32 0, i32 3, i32 1, i32 16, null}
!14 = !{void ()* @cs_fx_prefix_sum_def_thread_groups, !"cs_fx_prefix_sum_def_thread_groups", null, !4, !15}
!15 = !{i32 0, i64 272, i32 4, !16}
!16 = !{i32 64, i32 1, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}

