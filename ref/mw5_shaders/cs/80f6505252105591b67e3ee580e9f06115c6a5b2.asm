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
; shader hash: 939b1c947fe152478d29061b06ae54b7
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
;   [28 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb2     1
;                                   texture  struct         r/o      T0             t2     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.StructuredBuffer<TransShadowBounds>" = type { %struct.TransShadowBounds }
%struct.TransShadowBounds = type { <3 x float>, float, <3 x float> }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%TransShadowMaskConstants = type { i32, i32, i32, i32 }

define void @cs_sunvis_trans_shadow_mask() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %6 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %7 = extractvalue %dx.types.CBufRet.i32 %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %56, label %9

; <label>:9                                       ; preds = %0
  br label %10

; <label>:10                                      ; preds = %46, %9
  %11 = phi i32 [ %51, %46 ], [ 0, %9 ]
  %12 = phi float [ %47, %46 ], [ 0.000000e+00, %9 ]
  %13 = phi i32 [ %48, %46 ], [ 0, %9 ]
  %14 = phi float [ %49, %46 ], [ -6.550000e+04, %9 ]
  %15 = phi float [ %50, %46 ], [ 6.550000e+04, %9 ]
  %16 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %11, i32 0)  ; BufferLoad(srv,index,wot)
  %17 = extractvalue %dx.types.ResRet.f32 %16, 0
  %18 = extractvalue %dx.types.ResRet.f32 %16, 1
  %19 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %11, i32 16)  ; BufferLoad(srv,index,wot)
  %20 = extractvalue %dx.types.ResRet.f32 %19, 0
  %21 = extractvalue %dx.types.ResRet.f32 %19, 1
  %22 = fmul fast float %20, 3.200000e+01
  %23 = fmul fast float %21, 3.200000e+01
  %24 = fptoui float %22 to i32
  %25 = fptoui float %23 to i32
  %26 = fmul fast float %17, 3.200000e+01
  %27 = fmul fast float %18, 3.200000e+01
  %28 = fptoui float %26 to i32
  %29 = fptoui float %27 to i32
  %30 = icmp ule i32 %4, %24
  %31 = icmp uge i32 %4, %28
  %32 = and i1 %31, %30
  %33 = icmp ule i32 %5, %25
  %34 = and i1 %33, %32
  %35 = icmp uge i32 %5, %29
  %36 = and i1 %35, %34
  br i1 %36, label %37, label %46, !dx.controlflow.hints !16

; <label>:37                                      ; preds = %10
  %38 = extractvalue %dx.types.ResRet.f32 %19, 2
  %39 = extractvalue %dx.types.ResRet.f32 %16, 2
  %40 = call float @dx.op.binary.f32(i32 36, float %15, float %39)  ; FMin(a,b)
  %41 = call float @dx.op.binary.f32(i32 35, float %14, float %38)  ; FMax(a,b)
  %42 = add i32 %13, 1
  %43 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %11, i32 12)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.f32 %43, 0
  %45 = call float @dx.op.binary.f32(i32 35, float %12, float %44)  ; FMax(a,b)
  br label %46

; <label>:46                                      ; preds = %37, %10
  %47 = phi float [ %45, %37 ], [ %12, %10 ]
  %48 = phi i32 [ %42, %37 ], [ %13, %10 ]
  %49 = phi float [ %41, %37 ], [ %14, %10 ]
  %50 = phi float [ %40, %37 ], [ %15, %10 ]
  %51 = add i32 %11, 1
  %52 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.i32 %52, 0
  %54 = icmp ult i32 %51, %53
  br i1 %54, label %10, label %55

; <label>:55                                      ; preds = %46
  br label %56

; <label>:56                                      ; preds = %55, %0
  %57 = phi float [ 0.000000e+00, %0 ], [ %47, %55 ]
  %58 = phi i32 [ 0, %0 ], [ %48, %55 ]
  %59 = phi float [ -6.550000e+04, %0 ], [ %49, %55 ]
  %60 = phi float [ 6.550000e+04, %0 ], [ %50, %55 ]
  %61 = icmp eq i32 %58, 0
  %62 = select i1 %61, float 0.000000e+00, float %59
  %63 = select i1 %61, float 0.000000e+00, float %60
  %64 = uitofp i32 %58 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %4, i32 %5, i32 undef, float %63, float %62, float %64, float %57, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

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
!4 = !{!5, !8, !11, null}
!5 = !{!6}
!6 = !{i32 0, %"class.StructuredBuffer<TransShadowBounds>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 28}
!8 = !{!9}
!9 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 9}
!11 = !{!12}
!12 = !{i32 0, %TransShadowMaskConstants* undef, !"", i32 0, i32 2, i32 1, i32 16, null}
!13 = !{void ()* @cs_sunvis_trans_shadow_mask, !"cs_sunvis_trans_shadow_mask", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 8, i32 8, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}

