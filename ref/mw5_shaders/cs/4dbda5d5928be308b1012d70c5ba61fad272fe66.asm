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
; shader hash: 5a3528ed2d6e3021dedda0450f63daf2
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
;   [80 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%VeilSampleConsts = type { <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @cs_downsample_veil() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = uitofp i32 %5 to float
  %8 = uitofp i32 %6 to float
  %9 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %10 = extractvalue %dx.types.CBufRet.f32 %9, 2
  %11 = extractvalue %dx.types.CBufRet.f32 %9, 3
  %12 = fcmp fast olt float %7, %10
  %13 = fcmp fast olt float %8, %11
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %56, !dx.controlflow.hints !17

; <label>:15                                      ; preds = %0
  %16 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.f32 %16, 2
  %18 = extractvalue %dx.types.CBufRet.f32 %16, 3
  %19 = fadd fast float %7, 5.000000e-01
  %20 = fadd fast float %8, 5.000000e-01
  %21 = fmul fast float %17, %19
  %22 = fmul fast float %18, %20
  %23 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %21, float %22, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %24 = extractvalue %dx.types.ResRet.f32 %23, 0
  %25 = extractvalue %dx.types.ResRet.f32 %23, 1
  %26 = extractvalue %dx.types.ResRet.f32 %23, 2
  %27 = extractvalue %dx.types.ResRet.f32 %23, 3
  %28 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %21, float %22, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %29 = extractvalue %dx.types.ResRet.f32 %28, 0
  %30 = extractvalue %dx.types.ResRet.f32 %28, 1
  %31 = extractvalue %dx.types.ResRet.f32 %28, 2
  %32 = extractvalue %dx.types.ResRet.f32 %28, 3
  %33 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %21, float %22, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %34 = extractvalue %dx.types.ResRet.f32 %33, 0
  %35 = extractvalue %dx.types.ResRet.f32 %33, 1
  %36 = extractvalue %dx.types.ResRet.f32 %33, 2
  %37 = extractvalue %dx.types.ResRet.f32 %33, 3
  %38 = fadd fast float %24, %25
  %39 = fadd fast float %29, %30
  %40 = fadd fast float %34, %35
  %41 = fadd fast float %38, %26
  %42 = fadd fast float %39, %31
  %43 = fadd fast float %40, %36
  %44 = fadd fast float %41, %27
  %45 = fadd fast float %42, %32
  %46 = fadd fast float %43, %37
  %47 = fmul fast float %44, 2.500000e-01
  %48 = fmul fast float %45, 2.500000e-01
  %49 = fmul fast float %46, 2.500000e-01
  %50 = call float @dx.op.binary.f32(i32 35, float %47, float -3.225500e+04)  ; FMax(a,b)
  %51 = call float @dx.op.binary.f32(i32 35, float %48, float -3.225500e+04)  ; FMax(a,b)
  %52 = call float @dx.op.binary.f32(i32 35, float %49, float -3.225500e+04)  ; FMax(a,b)
  %53 = call float @dx.op.binary.f32(i32 36, float %50, float 3.225500e+04)  ; FMin(a,b)
  %54 = call float @dx.op.binary.f32(i32 36, float %51, float 3.225500e+04)  ; FMin(a,b)
  %55 = call float @dx.op.binary.f32(i32 36, float %52, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5, i32 %6, i32 undef, float %53, float %54, float %55, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %56

; <label>:56                                      ; preds = %15, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

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
!4 = !{!5, !8, !10, !12}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{!11}
!11 = !{i32 0, %VeilSampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!12 = !{!13}
!13 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!14 = !{void ()* @cs_downsample_veil, !"cs_downsample_veil", null, !4, !15}
!15 = !{i32 0, i64 256, i32 4, !16}
!16 = !{i32 8, i32 8, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 1}

