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
; shader hash: f9a427eda50fa778d3bdf017dd356fa8
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
;   [464 x i8] (type annotation not present)
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
;   [4 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture  struct         r/o      T0             t1     1
;                                   texture  struct         r/o      T1             t0     1
;                                       UAV  struct         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%hostlayout.FxFrameConsts_decl = type { %hostlayout.struct.FxFrameConsts }
%hostlayout.struct.FxFrameConsts = type { [4 x <4 x float>], [4 x <4 x float>], <4 x i32>, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, i32, i32, i32, i32, i32, i32, float, float, <3 x float>, i32, i32, float, float, float, <4 x i32>, [12 x <4 x i32>] }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4
@"\01?multiLightGridPrefixSumNextIterationBaseSum@@3IA" = external addrspace(3) global i32, align 4

define void @cs_fx_prerender_multilightgrid_prefix_sum() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %6 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %7 = call i32 @dx.op.groupId.i32(i32 94, i32 2)  ; GroupId(component)
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %9 = mul i32 %5, 6
  %10 = add i32 %6, %9
  %11 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %10, i32 0)  ; BufferLoad(srv,index,wot)
  %12 = extractvalue %dx.types.ResRet.i32 %11, 0
  %13 = add i32 %10, 17
  %14 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 %13)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.i32 %14, 1
  %16 = extractvalue %dx.types.CBufRet.i32 %14, 3
  %17 = add i32 %12, 63
  %18 = lshr i32 %17, 6
  %19 = add nuw nsw i32 %18, 63
  %20 = lshr i32 %19, 6
  %21 = mul i32 %16, 20
  %22 = mul i32 %15, %7
  %23 = add i32 %21, %22
  %24 = icmp eq i32 %20, 0
  br i1 %24, label %115, label %25

; <label>:25                                      ; preds = %0
  br label %26

; <label>:26                                      ; preds = %109, %25
  %27 = phi i32 [ %112, %109 ], [ 0, %25 ]
  %28 = phi i32 [ %110, %109 ], [ 0, %25 ]
  %29 = phi i32 [ %111, %109 ], [ 0, %25 ]
  %30 = add i32 %27, %8
  %31 = icmp ult i32 %30, %18
  br i1 %31, label %32, label %38, !dx.controlflow.hints !16

; <label>:32                                      ; preds = %26
  %33 = add i32 %30, %16
  %34 = mul i32 %33, 20
  %35 = add i32 %34, %7
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %35, i32 0)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  br label %38

; <label>:38                                      ; preds = %32, %26
  %39 = phi i32 [ %37, %32 ], [ 0, %26 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %40 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %8
  store i32 %39, i32 addrspace(3)* %40, align 4, !tbaa !17
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %41 = and i32 %8, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43, !dx.controlflow.hints !21

; <label>:43                                      ; preds = %38
  %44 = and i32 %8, -2
  %45 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %44
  %46 = load i32, i32 addrspace(3)* %45, align 4, !tbaa !17
  %47 = load i32, i32 addrspace(3)* %40, align 4, !tbaa !17
  %48 = add i32 %47, %46
  store i32 %48, i32 addrspace(3)* %40, align 4, !tbaa !17
  br label %49

; <label>:49                                      ; preds = %43, %38
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %50 = and i32 %8, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %59, label %52, !dx.controlflow.hints !22

; <label>:52                                      ; preds = %49
  %53 = and i32 %8, -4
  %54 = or i32 %53, 1
  %55 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %54
  %56 = load i32, i32 addrspace(3)* %55, align 4, !tbaa !17
  %57 = load i32, i32 addrspace(3)* %40, align 4, !tbaa !17
  %58 = add i32 %57, %56
  store i32 %58, i32 addrspace(3)* %40, align 4, !tbaa !17
  br label %59

; <label>:59                                      ; preds = %52, %49
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %60 = and i32 %8, 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %62, !dx.controlflow.hints !23

; <label>:62                                      ; preds = %59
  %63 = and i32 %8, -8
  %64 = or i32 %63, 3
  %65 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %64
  %66 = load i32, i32 addrspace(3)* %65, align 4, !tbaa !17
  %67 = load i32, i32 addrspace(3)* %40, align 4, !tbaa !17
  %68 = add i32 %67, %66
  store i32 %68, i32 addrspace(3)* %40, align 4, !tbaa !17
  br label %69

; <label>:69                                      ; preds = %62, %59
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %70 = and i32 %8, 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %79, label %72, !dx.controlflow.hints !24

; <label>:72                                      ; preds = %69
  %73 = and i32 %8, -16
  %74 = or i32 %73, 7
  %75 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %74
  %76 = load i32, i32 addrspace(3)* %75, align 4, !tbaa !17
  %77 = load i32, i32 addrspace(3)* %40, align 4, !tbaa !17
  %78 = add i32 %77, %76
  store i32 %78, i32 addrspace(3)* %40, align 4, !tbaa !17
  br label %79

; <label>:79                                      ; preds = %72, %69
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %80 = and i32 %8, 16
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %89, label %82, !dx.controlflow.hints !25

; <label>:82                                      ; preds = %79
  %83 = and i32 %8, -32
  %84 = or i32 %83, 15
  %85 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %84
  %86 = load i32, i32 addrspace(3)* %85, align 4, !tbaa !17
  %87 = load i32, i32 addrspace(3)* %40, align 4, !tbaa !17
  %88 = add i32 %87, %86
  store i32 %88, i32 addrspace(3)* %40, align 4, !tbaa !17
  br label %89

; <label>:89                                      ; preds = %82, %79
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %90 = and i32 %8, 32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94, !dx.controlflow.hints !26

; <label>:92                                      ; preds = %89
  %93 = load i32, i32 addrspace(3)* %40, align 4, !tbaa !17
  br label %101

; <label>:94                                      ; preds = %89
  %95 = and i32 %8, -64
  %96 = or i32 %95, 31
  %97 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %96
  %98 = load i32, i32 addrspace(3)* %97, align 4, !tbaa !17
  %99 = load i32, i32 addrspace(3)* %40, align 4, !tbaa !17
  %100 = add i32 %99, %98
  store i32 %100, i32 addrspace(3)* %40, align 4, !tbaa !17
  br label %101

; <label>:101                                     ; preds = %94, %92
  %102 = phi i32 [ %93, %92 ], [ %100, %94 ]
  %103 = add i32 %102, %28
  br i1 %31, label %104, label %106, !dx.controlflow.hints !27

; <label>:104                                     ; preds = %101
  %105 = add i32 %23, %30
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %105, i32 0, i32 %103, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %106

; <label>:106                                     ; preds = %104, %101
  %107 = icmp eq i32 %8, 63
  br i1 %107, label %108, label %109, !dx.controlflow.hints !28

; <label>:108                                     ; preds = %106
  store i32 %103, i32 addrspace(3)* @"\01?multiLightGridPrefixSumNextIterationBaseSum@@3IA", align 4, !tbaa !17
  br label %109

; <label>:109                                     ; preds = %108, %106
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %110 = load i32, i32 addrspace(3)* @"\01?multiLightGridPrefixSumNextIterationBaseSum@@3IA", align 4, !tbaa !17
  %111 = add nuw nsw i32 %29, 1
  %112 = add nuw nsw i32 %27, 64
  %113 = icmp eq i32 %111, %20
  br i1 %113, label %114, label %26

; <label>:114                                     ; preds = %109
  br label %115

; <label>:115                                     ; preds = %114, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

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
!dx.entryPoints = !{!13}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !11, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 4}
!8 = !{i32 1, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !7}
!11 = !{!12}
!12 = !{i32 0, %hostlayout.FxFrameConsts_decl* undef, !"", i32 0, i32 0, i32 1, i32 464, null}
!13 = !{void ()* @cs_fx_prerender_multilightgrid_prefix_sum, !"cs_fx_prerender_multilightgrid_prefix_sum", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 64, i32 1, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 1}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 1}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}

