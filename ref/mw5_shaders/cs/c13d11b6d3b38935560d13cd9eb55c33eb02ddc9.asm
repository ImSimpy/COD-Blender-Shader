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
; shader hash: 4cd64efee36367c4ac737f6f5937b16c
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
;   [24 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB0            cb4     1
;                                   texture  struct         r/o      T0             t0     1
;                                   texture  struct         r/o      T1             t1     1
;                                       UAV  struct         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.StructuredBuffer<FxAABB>" = type { %struct.FxAABB }
%struct.FxAABB = type { i32, i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<vector<float, 4> >" = type { <4 x float> }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%FxMultiLightgridProcessingConsts_decl = type { %struct.FxMultiLightgridProcessingConsts }
%struct.FxMultiLightgridProcessingConsts = type { i32, i32, i32, i32 }

define void @cs_fx_prerender_calculate_active_lightgrid_masks() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %7 = extractvalue %dx.types.CBufRet.i32 %6, 0
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %83, !dx.controlflow.hints !18

; <label>:9                                       ; preds = %0
  %10 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5, i32 0)  ; BufferLoad(srv,index,wot)
  %11 = extractvalue %dx.types.ResRet.i32 %10, 0
  %12 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5, i32 4)  ; BufferLoad(srv,index,wot)
  %13 = extractvalue %dx.types.ResRet.i32 %12, 0
  %14 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5, i32 8)  ; BufferLoad(srv,index,wot)
  %15 = extractvalue %dx.types.ResRet.i32 %14, 0
  %16 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5, i32 12)  ; BufferLoad(srv,index,wot)
  %17 = extractvalue %dx.types.ResRet.i32 %16, 0
  %18 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5, i32 16)  ; BufferLoad(srv,index,wot)
  %19 = extractvalue %dx.types.ResRet.i32 %18, 0
  %20 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5, i32 20)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.i32 %20, 0
  %22 = bitcast i32 %11 to float
  %23 = fadd fast float %22, -1.310720e+05
  %24 = bitcast i32 %13 to float
  %25 = fadd fast float %24, -1.310720e+05
  %26 = bitcast i32 %15 to float
  %27 = fadd fast float %26, -1.310720e+05
  %28 = bitcast i32 %17 to float
  %29 = bitcast i32 %19 to float
  %30 = bitcast i32 %21 to float
  %31 = fsub fast float %28, %22
  %32 = fsub fast float %29, %24
  %33 = fsub fast float %30, %26
  %34 = fmul fast float %31, 5.000000e-01
  %35 = fmul fast float %32, 5.000000e-01
  %36 = fmul fast float %33, 5.000000e-01
  %37 = fadd fast float %34, %23
  %38 = fadd fast float %35, %25
  %39 = fadd fast float %36, %27
  %40 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %81, label %43

; <label>:43                                      ; preds = %9
  br label %44

; <label>:44                                      ; preds = %71, %43
  %45 = phi i32 [ %75, %71 ], [ 0, %43 ]
  %46 = phi i32 [ %76, %71 ], [ 0, %43 ]
  br label %47

; <label>:47                                      ; preds = %68, %44
  %48 = phi i32 [ 0, %44 ], [ %69, %68 ]
  %49 = mul nsw i32 %46, 7
  %50 = add nsw i32 %48, %49
  %51 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %50, i32 0)  ; BufferLoad(srv,index,wot)
  %52 = extractvalue %dx.types.ResRet.f32 %51, 0
  %53 = extractvalue %dx.types.ResRet.f32 %51, 1
  %54 = extractvalue %dx.types.ResRet.f32 %51, 2
  %55 = extractvalue %dx.types.ResRet.f32 %51, 3
  %56 = fmul fast float %52, %52
  %57 = fmul fast float %53, %53
  %58 = fsub fast float 1.000000e+00, %57
  %59 = fsub fast float %58, %56
  %60 = call float @dx.op.unary.f32(i32 24, float %59)  ; Sqrt(value)
  %61 = call float @dx.op.dot3.f32(i32 55, float %37, float %38, float %39, float %52, float %53, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %62 = call float @dx.op.dot3.f32(i32 55, float %34, float %35, float %36, float %52, float %53, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %63 = fadd fast float %62, %61
  %64 = fcmp fast ole float %63, %54
  %65 = fsub fast float %61, %62
  %66 = fcmp fast oge float %65, %55
  %67 = or i1 %64, %66
  br i1 %67, label %71, label %68, !dx.controlflow.hints !19

; <label>:68                                      ; preds = %47
  %69 = add nuw nsw i32 %48, 1
  %70 = icmp slt i32 %69, 7
  br i1 %70, label %47, label %71

; <label>:71                                      ; preds = %68, %47
  %72 = phi i32 [ 0, %47 ], [ 1, %68 ]
  %73 = and i32 %46, 31
  %74 = shl i32 %72, %73
  %75 = or i32 %74, %45
  %76 = add nuw nsw i32 %46, 1
  %77 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.i32 %77, 1
  %79 = icmp ult i32 %76, %78
  br i1 %79, label %44, label %80, !llvm.loop !20

; <label>:80                                      ; preds = %71
  br label %81

; <label>:81                                      ; preds = %80, %9
  %82 = phi i32 [ 0, %9 ], [ %75, %80 ]
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %5, i32 0, i32 %82, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %83

; <label>:83                                      ; preds = %81, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !13, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.StructuredBuffer<FxAABB>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 24}
!8 = !{i32 1, %"class.StructuredBuffer<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 16}
!10 = !{!11}
!11 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !12}
!12 = !{i32 1, i32 4}
!13 = !{!14}
!14 = !{i32 0, %FxMultiLightgridProcessingConsts_decl* undef, !"", i32 0, i32 4, i32 1, i32 16, null}
!15 = !{void ()* @cs_fx_prerender_calculate_active_lightgrid_masks, !"cs_fx_prerender_calculate_active_lightgrid_masks", null, !4, !16}
!16 = !{i32 0, i64 272, i32 4, !17}
!17 = !{i32 64, i32 1, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}

