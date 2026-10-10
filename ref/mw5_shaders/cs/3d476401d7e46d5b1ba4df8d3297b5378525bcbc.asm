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
; shader hash: f1b2911ce13ecac91cc2bac9d17ae17d
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
;   [64 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s1     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                       UAV  struct         r/w      U0             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%CSMConstants = type { <4 x i32>, <4 x i32>, <4 x i32>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @extract_depth_range() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %8 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %9 = extractvalue %dx.types.CBufRet.i32 %8, 3
  %10 = bitcast i32 %9 to float
  %11 = uitofp i32 %6 to float
  %12 = fadd fast float %11, 5.000000e-01
  %13 = fmul fast float %10, %12
  %14 = uitofp i32 %7 to float
  %15 = fadd fast float %14, 5.000000e-01
  %16 = fmul fast float %10, %15
  %17 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.f32 %17, 0
  %19 = extractvalue %dx.types.CBufRet.f32 %17, 1
  %20 = fmul fast float %13, %18
  %21 = fmul fast float %16, %19
  %22 = extractvalue %dx.types.CBufRet.f32 %17, 2
  %23 = extractvalue %dx.types.CBufRet.f32 %17, 3
  %24 = fadd fast float %20, %22
  %25 = fadd fast float %21, %23
  %26 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %27 = extractvalue %dx.types.ResRet.f32 %26, 0
  %28 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %29 = extractvalue %dx.types.ResRet.f32 %28, 0
  %30 = fcmp fast ogt float %27, 0.000000e+00
  br i1 %30, label %31, label %38, !dx.controlflow.hints !19

; <label>:31                                      ; preds = %0
  %32 = fmul fast float %27, 0x416FFFFFE0000000
  %33 = call float @dx.op.unary.f32(i32 27, float %32)  ; Round_ni(value)
  %34 = fptoui float %33 to i32
  %35 = sub i32 16777215, %34
  %36 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 0, i32 0, i32 undef, i32 %35)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %37 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 1, i32 0, i32 undef, i32 %34)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %38

; <label>:38                                      ; preds = %31, %0
  %39 = fcmp fast ogt float %29, 0.000000e+00
  br i1 %39, label %40, label %47, !dx.controlflow.hints !20

; <label>:40                                      ; preds = %38
  %41 = fmul fast float %29, 0x416FFFFFE0000000
  %42 = call float @dx.op.unary.f32(i32 28, float %41)  ; Round_pi(value)
  %43 = fptoui float %42 to i32
  %44 = sub i32 16777215, %43
  %45 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 0, i32 0, i32 undef, i32 %44)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %46 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 1, i32 0, i32 undef, i32 %43)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %47

; <label>:47                                      ; preds = %40, %38
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !12, !14}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!11 = !{i32 1, i32 4}
!12 = !{!13}
!13 = !{i32 0, %CSMConstants* undef, !"", i32 0, i32 0, i32 1, i32 64, null}
!14 = !{!15}
!15 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!16 = !{void ()* @extract_depth_range, !"extract_depth_range", null, !4, !17}
!17 = !{i32 0, i64 272, i32 4, !18}
!18 = !{i32 8, i32 8, i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}

