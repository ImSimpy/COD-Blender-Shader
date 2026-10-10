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
; shader hash: 5349f65ad6f7fc9050bc7703e5a70ccb
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
;   [11728 x i8] (type annotation not present)
;
; }
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
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32          2d      T0             t1     1
;                                   texture     f32          2d      T1             t0     1
;                                   texture     f32          2d      T2             t5     1
;                                   texture     f32          2d      T3             t4     1
;                                   texture     f32          2d      T4             t3     1
;                                   texture     f32          2d      T5             t6     1
;                                   texture     f32          2d      T6             t7     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%VeilSampleConsts = type { <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @cs_downsample_veil() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %15 = uitofp i32 %13 to float
  %16 = uitofp i32 %14 to float
  %17 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.f32 %17, 2
  %19 = extractvalue %dx.types.CBufRet.f32 %17, 3
  %20 = fcmp fast olt float %15, %18
  %21 = fcmp fast olt float %16, %19
  %22 = and i1 %20, %21
  br i1 %22, label %23, label %470, !dx.controlflow.hints !25

; <label>:23                                      ; preds = %0
  %24 = extractvalue %dx.types.CBufRet.f32 %17, 0
  %25 = extractvalue %dx.types.CBufRet.f32 %17, 1
  %26 = fadd fast float %24, %15
  %27 = fadd fast float %25, %16
  %28 = fptoui float %26 to i32
  %29 = fptoui float %27 to i32
  %30 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.f32 %30, 2
  %32 = extractvalue %dx.types.CBufRet.f32 %30, 3
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 2
  %35 = extractvalue %dx.types.CBufRet.f32 %33, 3
  %36 = fmul fast float %34, %31
  %37 = fmul fast float %35, %32
  %38 = uitofp i32 %28 to float
  %39 = uitofp i32 %29 to float
  %40 = fadd fast float %38, 5.000000e-01
  %41 = fadd fast float %39, 5.000000e-01
  %42 = fmul fast float %34, %40
  %43 = fmul fast float %35, %41
  %44 = call float @dx.op.dot2.f32(i32 54, float %40, float %41, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %45 = call float @dx.op.unary.f32(i32 22, float %44)  ; Frc(value)
  %46 = fmul fast float %45, 0x404A7DD040000000
  %47 = call float @dx.op.unary.f32(i32 22, float %46)  ; Frc(value)
  %48 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %9, float %42, float %43, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = extractvalue %dx.types.ResRet.f32 %48, 1
  %51 = extractvalue %dx.types.ResRet.f32 %48, 2
  %52 = fmul fast float %49, 0x3FDEB71760000000
  %53 = fmul fast float %50, 0x3FDEB71760000000
  %54 = fmul fast float %51, 0x3FDEB71760000000
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %58 = call float @dx.op.binary.f32(i32 35, float %42, float %57)  ; FMax(a,b)
  %59 = call float @dx.op.binary.f32(i32 36, float %58, float %56)  ; FMin(a,b)
  %60 = call float @dx.op.binary.f32(i32 36, float %42, float %57)  ; FMin(a,b)
  %61 = call float @dx.op.binary.f32(i32 35, float %60, float %59)  ; FMax(a,b)
  %62 = fcmp fast oeq float %42, %61
  %63 = extractvalue %dx.types.CBufRet.f32 %55, 3
  %64 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %65 = call float @dx.op.binary.f32(i32 35, float %43, float %64)  ; FMax(a,b)
  %66 = call float @dx.op.binary.f32(i32 36, float %65, float %63)  ; FMin(a,b)
  %67 = call float @dx.op.binary.f32(i32 36, float %43, float %64)  ; FMin(a,b)
  %68 = call float @dx.op.binary.f32(i32 35, float %67, float %66)  ; FMax(a,b)
  %69 = fcmp fast oeq float %43, %68
  %70 = and i1 %62, %69
  br i1 %70, label %71, label %78, !dx.controlflow.hints !26

; <label>:71                                      ; preds = %23
  %72 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %9, float %42, float %43, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %73 = extractvalue %dx.types.ResRet.f32 %72, 0
  %74 = fsub fast float 1.000000e+00, %73
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = fcmp fast olt float %74, %76
  br label %78

; <label>:78                                      ; preds = %71, %23
  %79 = phi i1 [ %77, %71 ], [ false, %23 ]
  %80 = select i1 %79, float %52, float %53
  %81 = select i1 %79, float %52, float %54
  %82 = fmul fast float %47, 0x3FE921FB60000000
  %83 = fadd fast float %82, 0x3FE921FB60000000
  %84 = call float @dx.op.unary.f32(i32 13, float %83)  ; Sin(value)
  %85 = call float @dx.op.unary.f32(i32 12, float %83)  ; Cos(value)
  %86 = fmul fast float %36, 0x3FFE2F0140000000
  %87 = fmul fast float %86, %84
  %88 = fmul fast float %37, 0x3FFE2F0140000000
  %89 = fmul fast float %88, %85
  %90 = fadd fast float %87, %42
  %91 = fadd fast float %89, %43
  %92 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %9, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %93 = extractvalue %dx.types.ResRet.f32 %92, 0
  %94 = extractvalue %dx.types.ResRet.f32 %92, 1
  %95 = extractvalue %dx.types.ResRet.f32 %92, 2
  %96 = call float @dx.op.binary.f32(i32 35, float %90, float %57)  ; FMax(a,b)
  %97 = call float @dx.op.binary.f32(i32 36, float %96, float %56)  ; FMin(a,b)
  %98 = call float @dx.op.binary.f32(i32 36, float %90, float %57)  ; FMin(a,b)
  %99 = call float @dx.op.binary.f32(i32 35, float %98, float %97)  ; FMax(a,b)
  %100 = fcmp fast oeq float %90, %99
  %101 = call float @dx.op.binary.f32(i32 35, float %91, float %64)  ; FMax(a,b)
  %102 = call float @dx.op.binary.f32(i32 36, float %101, float %63)  ; FMin(a,b)
  %103 = call float @dx.op.binary.f32(i32 36, float %91, float %64)  ; FMin(a,b)
  %104 = call float @dx.op.binary.f32(i32 35, float %103, float %102)  ; FMax(a,b)
  %105 = fcmp fast oeq float %91, %104
  %106 = and i1 %100, %105
  br i1 %106, label %107, label %114, !dx.controlflow.hints !26

; <label>:107                                     ; preds = %78
  %108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %9, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = fsub fast float 1.000000e+00, %109
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = fcmp fast olt float %110, %112
  br label %114

; <label>:114                                     ; preds = %107, %78
  %115 = phi i1 [ %113, %107 ], [ false, %78 ]
  %116 = select i1 %115, float %93, float %94
  %117 = select i1 %115, float %93, float %95
  %118 = fadd fast float %82, 0x4002D97C80000000
  %119 = call float @dx.op.unary.f32(i32 13, float %118)  ; Sin(value)
  %120 = call float @dx.op.unary.f32(i32 12, float %118)  ; Cos(value)
  %121 = fmul fast float %36, 0x3FEE145200000000
  %122 = fmul fast float %121, %119
  %123 = fmul fast float %37, 0x3FEE145200000000
  %124 = fmul fast float %123, %120
  %125 = fadd fast float %122, %42
  %126 = fadd fast float %124, %43
  %127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %9, float %125, float %126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  %129 = extractvalue %dx.types.ResRet.f32 %127, 1
  %130 = extractvalue %dx.types.ResRet.f32 %127, 2
  %131 = call float @dx.op.binary.f32(i32 35, float %125, float %57)  ; FMax(a,b)
  %132 = call float @dx.op.binary.f32(i32 36, float %131, float %56)  ; FMin(a,b)
  %133 = call float @dx.op.binary.f32(i32 36, float %125, float %57)  ; FMin(a,b)
  %134 = call float @dx.op.binary.f32(i32 35, float %133, float %132)  ; FMax(a,b)
  %135 = fcmp fast oeq float %125, %134
  %136 = call float @dx.op.binary.f32(i32 35, float %126, float %64)  ; FMax(a,b)
  %137 = call float @dx.op.binary.f32(i32 36, float %136, float %63)  ; FMin(a,b)
  %138 = call float @dx.op.binary.f32(i32 36, float %126, float %64)  ; FMin(a,b)
  %139 = call float @dx.op.binary.f32(i32 35, float %138, float %137)  ; FMax(a,b)
  %140 = fcmp fast oeq float %126, %139
  %141 = and i1 %135, %140
  br i1 %141, label %142, label %149, !dx.controlflow.hints !26

; <label>:142                                     ; preds = %114
  %143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %9, float %125, float %126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %144 = extractvalue %dx.types.ResRet.f32 %143, 0
  %145 = fsub fast float 1.000000e+00, %144
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = fcmp fast olt float %145, %147
  br label %149

; <label>:149                                     ; preds = %142, %114
  %150 = phi i1 [ %148, %142 ], [ false, %114 ]
  %151 = select i1 %150, float %128, float %129
  %152 = select i1 %150, float %128, float %130
  %153 = fadd fast float %82, 0x400F6A7A40000000
  %154 = call float @dx.op.unary.f32(i32 13, float %153)  ; Sin(value)
  %155 = call float @dx.op.unary.f32(i32 12, float %153)  ; Cos(value)
  %156 = fmul fast float %86, %154
  %157 = fmul fast float %88, %155
  %158 = fadd fast float %156, %42
  %159 = fadd fast float %157, %43
  %160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %9, float %158, float %159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %161 = extractvalue %dx.types.ResRet.f32 %160, 0
  %162 = extractvalue %dx.types.ResRet.f32 %160, 1
  %163 = extractvalue %dx.types.ResRet.f32 %160, 2
  %164 = call float @dx.op.binary.f32(i32 35, float %158, float %57)  ; FMax(a,b)
  %165 = call float @dx.op.binary.f32(i32 36, float %164, float %56)  ; FMin(a,b)
  %166 = call float @dx.op.binary.f32(i32 36, float %158, float %57)  ; FMin(a,b)
  %167 = call float @dx.op.binary.f32(i32 35, float %166, float %165)  ; FMax(a,b)
  %168 = fcmp fast oeq float %158, %167
  %169 = call float @dx.op.binary.f32(i32 35, float %159, float %64)  ; FMax(a,b)
  %170 = call float @dx.op.binary.f32(i32 36, float %169, float %63)  ; FMin(a,b)
  %171 = call float @dx.op.binary.f32(i32 36, float %159, float %64)  ; FMin(a,b)
  %172 = call float @dx.op.binary.f32(i32 35, float %171, float %170)  ; FMax(a,b)
  %173 = fcmp fast oeq float %159, %172
  %174 = and i1 %168, %173
  br i1 %174, label %175, label %182, !dx.controlflow.hints !26

; <label>:175                                     ; preds = %149
  %176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %9, float %158, float %159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = fsub fast float 1.000000e+00, %177
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = fcmp fast olt float %178, %180
  br label %182

; <label>:182                                     ; preds = %175, %149
  %183 = phi i1 [ %181, %175 ], [ false, %149 ]
  %184 = select i1 %183, float %161, float %162
  %185 = select i1 %183, float %161, float %163
  %186 = fadd fast float %82, 0x4015FDBC00000000
  %187 = call float @dx.op.unary.f32(i32 13, float %186)  ; Sin(value)
  %188 = call float @dx.op.unary.f32(i32 12, float %186)  ; Cos(value)
  %189 = fmul fast float %121, %187
  %190 = fmul fast float %123, %188
  %191 = fadd fast float %189, %42
  %192 = fadd fast float %190, %43
  %193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %9, float %191, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = extractvalue %dx.types.ResRet.f32 %193, 1
  %196 = extractvalue %dx.types.ResRet.f32 %193, 2
  %197 = call float @dx.op.binary.f32(i32 35, float %191, float %57)  ; FMax(a,b)
  %198 = call float @dx.op.binary.f32(i32 36, float %197, float %56)  ; FMin(a,b)
  %199 = call float @dx.op.binary.f32(i32 36, float %191, float %57)  ; FMin(a,b)
  %200 = call float @dx.op.binary.f32(i32 35, float %199, float %198)  ; FMax(a,b)
  %201 = fcmp fast oeq float %191, %200
  %202 = call float @dx.op.binary.f32(i32 35, float %192, float %64)  ; FMax(a,b)
  %203 = call float @dx.op.binary.f32(i32 36, float %202, float %63)  ; FMin(a,b)
  %204 = call float @dx.op.binary.f32(i32 36, float %192, float %64)  ; FMin(a,b)
  %205 = call float @dx.op.binary.f32(i32 35, float %204, float %203)  ; FMax(a,b)
  %206 = fcmp fast oeq float %192, %205
  %207 = and i1 %201, %206
  br i1 %207, label %208, label %215, !dx.controlflow.hints !26

; <label>:208                                     ; preds = %182
  %209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %9, float %191, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = fsub fast float 1.000000e+00, %210
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = fcmp fast olt float %211, %213
  br label %215

; <label>:215                                     ; preds = %208, %182
  %216 = phi i1 [ %214, %208 ], [ false, %182 ]
  %217 = select i1 %216, float %194, float %195
  %218 = select i1 %216, float %194, float %196
  %219 = fadd fast float %194, %128
  %220 = fmul fast float %219, 0x3FD363C320000000
  %221 = fadd fast float %161, %93
  %222 = fmul fast float %221, 0x3FB3714BA0000000
  %223 = fadd fast float %220, %52
  %224 = fadd fast float %223, %222
  %225 = fadd fast float %217, %151
  %226 = fmul fast float %225, 0x3FD363C320000000
  %227 = fadd fast float %184, %116
  %228 = fmul fast float %227, 0x3FB3714BA0000000
  %229 = fadd fast float %226, %80
  %230 = fadd fast float %229, %228
  %231 = fadd fast float %218, %152
  %232 = fmul fast float %231, 0x3FD363C320000000
  %233 = fadd fast float %185, %117
  %234 = fmul fast float %233, 0x3FB3714BA0000000
  %235 = fadd fast float %232, %81
  %236 = fadd fast float %235, %234
  %237 = fmul fast float %224, 0x3FE9DA78C0000000
  %238 = fmul fast float %230, 0x3FE9DA78C0000000
  %239 = fmul fast float %236, 0x3FE9DA78C0000000
  %240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %10, float %42, float %43, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = bitcast float %241 to i32
  %243 = lshr i32 %242, 11
  %244 = and i32 %242, 2047
  %245 = and i32 %243, 2047
  %246 = uitofp i32 %244 to float
  %247 = uitofp i32 %245 to float
  %248 = fmul fast float %246, 0x3F50040100000000
  %249 = fmul fast float %247, 0x3F50040100000000
  %250 = fadd fast float %248, -1.000000e+00
  %251 = fadd fast float %249, -1.000000e+00
  %252 = lshr i32 %242, 22
  %253 = shl nuw nsw i32 %252, 5
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = call float @dx.op.unary.f32(i32 6, float %250)  ; FAbs(value)
  %256 = call float @dx.op.unary.f32(i32 6, float %251)  ; FAbs(value)
  %257 = fadd fast float %255, -5.000000e-01
  %258 = fadd fast float %256, -5.000000e-01
  %259 = fmul fast float %257, 2.000000e+00
  %260 = fmul fast float %258, 2.000000e+00
  %261 = call float @dx.op.unary.f32(i32 7, float %259)  ; Saturate(value)
  %262 = call float @dx.op.unary.f32(i32 7, float %260)  ; Saturate(value)
  %263 = fmul fast float %255, 2.000000e+00
  %264 = fmul fast float %256, 2.000000e+00
  %265 = call float @dx.op.unary.f32(i32 7, float %263)  ; Saturate(value)
  %266 = call float @dx.op.unary.f32(i32 7, float %264)  ; Saturate(value)
  %267 = fmul fast float %261, %261
  %268 = fmul fast float %267, 0x3FA48888A0000000
  %269 = fmul fast float %262, %262
  %270 = fmul fast float %269, 0x3FB2407960000000
  %271 = fmul fast float %265, 0x3F599999A0000000
  %272 = fmul fast float %266, 0x3F66C16C20000000
  %273 = fadd fast float %271, %268
  %274 = fadd fast float %272, %270
  %275 = fsub fast float -0.000000e+00, %273
  %276 = fsub fast float -0.000000e+00, %274
  %277 = fcmp fast olt float %250, 0.000000e+00
  %278 = fcmp fast olt float %251, 0.000000e+00
  %279 = select i1 %277, float 0.000000e+00, float 1.000000e+00
  %280 = select i1 %278, float 0.000000e+00, float 1.000000e+00
  %281 = fcmp fast une float %279, 0.000000e+00
  %282 = fcmp fast une float %280, 0.000000e+00
  %283 = select i1 %281, float %273, float %275
  %284 = select i1 %282, float %274, float %276
  %285 = fsub fast float %42, %283
  %286 = fsub fast float %43, %284
  %287 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %10, float %285, float %286, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = extractvalue %dx.types.ResRet.f32 %287, 1
  %290 = extractvalue %dx.types.ResRet.f32 %287, 2
  %291 = extractvalue %dx.types.ResRet.f32 %287, 3
  %292 = bitcast float %288 to i32
  %293 = bitcast float %289 to i32
  %294 = bitcast float %290 to i32
  %295 = bitcast float %291 to i32
  %296 = call i32 @dx.op.binary.i32(i32 40, i32 %294, i32 %295)  ; UMin(a,b)
  %297 = call i32 @dx.op.binary.i32(i32 40, i32 %293, i32 %296)  ; UMin(a,b)
  %298 = call i32 @dx.op.binary.i32(i32 40, i32 %292, i32 %297)  ; UMin(a,b)
  %299 = lshr i32 %298, 11
  %300 = and i32 %298, 2047
  %301 = and i32 %299, 2047
  %302 = uitofp i32 %300 to float
  %303 = uitofp i32 %301 to float
  %304 = fmul fast float %302, 0x3F50040100000000
  %305 = fmul fast float %303, 0x3F50040100000000
  %306 = fadd fast float %304, -1.000000e+00
  %307 = fadd fast float %305, -1.000000e+00
  %308 = lshr i32 %298, 22
  %309 = shl nuw nsw i32 %308, 5
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = call float @dx.op.unary.f32(i32 6, float %306)  ; FAbs(value)
  %312 = call float @dx.op.unary.f32(i32 6, float %307)  ; FAbs(value)
  %313 = fadd fast float %311, -5.000000e-01
  %314 = fadd fast float %312, -5.000000e-01
  %315 = fmul fast float %313, 2.000000e+00
  %316 = fmul fast float %314, 2.000000e+00
  %317 = call float @dx.op.unary.f32(i32 7, float %315)  ; Saturate(value)
  %318 = call float @dx.op.unary.f32(i32 7, float %316)  ; Saturate(value)
  %319 = fmul fast float %311, 2.000000e+00
  %320 = fmul fast float %312, 2.000000e+00
  %321 = call float @dx.op.unary.f32(i32 7, float %319)  ; Saturate(value)
  %322 = call float @dx.op.unary.f32(i32 7, float %320)  ; Saturate(value)
  %323 = fmul fast float %317, %317
  %324 = fmul fast float %323, 0x3FA48888A0000000
  %325 = fmul fast float %318, %318
  %326 = fmul fast float %325, 0x3FB2407960000000
  %327 = fmul fast float %321, 0x3F599999A0000000
  %328 = fmul fast float %322, 0x3F66C16C20000000
  %329 = fadd fast float %327, %324
  %330 = fadd fast float %328, %326
  %331 = fsub fast float -0.000000e+00, %329
  %332 = fsub fast float -0.000000e+00, %330
  %333 = fcmp fast olt float %306, 0.000000e+00
  %334 = fcmp fast olt float %307, 0.000000e+00
  %335 = select i1 %333, float 0.000000e+00, float 1.000000e+00
  %336 = select i1 %334, float 0.000000e+00, float 1.000000e+00
  %337 = fcmp fast une float %335, 0.000000e+00
  %338 = fcmp fast une float %336, 0.000000e+00
  %339 = select i1 %337, float %329, float %331
  %340 = select i1 %338, float %330, float %332
  %341 = fmul fast float %283, 3.000000e+00
  %342 = fmul fast float %284, 3.000000e+00
  %343 = fmul fast float %254, 0x3FA99999A0000000
  %344 = fadd fast float %310, %343
  %345 = fcmp fast olt float %254, %344
  %346 = fsub fast float %283, %339
  %347 = fsub fast float %284, %340
  %348 = fmul fast float %346, 1.920000e+03
  %349 = fmul fast float %347, 1.080000e+03
  %350 = call float @dx.op.dot2.f32(i32 54, float %348, float %349, float %348, float %349)  ; Dot2(ax,ay,bx,by)
  %351 = bitcast float %350 to i32
  %352 = ashr i32 %351, 1
  %353 = add nsw i32 %352, 532487669
  %354 = bitcast i32 %353 to float
  %355 = fmul fast float %354, 2.000000e+00
  %356 = fsub fast float 1.000000e+00, %355
  %357 = call float @dx.op.unary.f32(i32 7, float %356)  ; Saturate(value)
  %358 = select i1 %345, float 1.000000e+00, float %357
  %359 = fmul fast float %283, 1.920000e+03
  %360 = fmul fast float %284, 1.080000e+03
  %361 = call float @dx.op.unary.f32(i32 6, float %359)  ; FAbs(value)
  %362 = call float @dx.op.unary.f32(i32 6, float %360)  ; FAbs(value)
  %363 = call float @dx.op.binary.f32(i32 35, float %361, float %362)  ; FMax(a,b)
  %364 = fmul fast float %363, 0x3FB99999A0000000
  %365 = fsub fast float 8.000000e+00, %364
  %366 = call float @dx.op.unary.f32(i32 7, float %365)  ; Saturate(value)
  %367 = fmul fast float %366, %358
  %368 = fadd fast float %42, -5.000000e-01
  %369 = fsub fast float %368, %341
  %370 = fadd fast float %43, -5.000000e-01
  %371 = fsub fast float %370, %342
  %372 = call float @dx.op.unary.f32(i32 6, float %369)  ; FAbs(value)
  %373 = call float @dx.op.unary.f32(i32 6, float %371)  ; FAbs(value)
  %374 = fadd fast float %372, -5.000000e-01
  %375 = fadd fast float %373, -5.000000e-01
  %376 = call float @dx.op.binary.f32(i32 35, float %374, float %375)  ; FMax(a,b)
  %377 = fcmp fast olt float %376, 0.000000e+00
  %378 = select i1 %377, float 1.000000e+00, float 0.000000e+00
  %379 = fmul fast float %367, %378
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 1
  %382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %285, float %286, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %383 = extractvalue %dx.types.ResRet.f32 %382, 0
  %384 = extractvalue %dx.types.ResRet.f32 %382, 1
  %385 = extractvalue %dx.types.ResRet.f32 %382, 2
  %386 = fmul fast float %383, %381
  %387 = fmul fast float %384, %381
  %388 = fmul fast float %385, %381
  %389 = fmul fast float %386, 0x3FDA65AF80000000
  %390 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD6E286E0000000, float %387, float %389)  ; FMad(a,b,c)
  %391 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC7189380000000, float %388, float %390)  ; FMad(a,b,c)
  %392 = fmul fast float %386, 0x3FCB38DDA0000000
  %393 = call float @dx.op.tertiary.f32(i32 46, float 0x3FE6E286E0000000, float %387, float %392)  ; FMad(a,b,c)
  %394 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB27A0FA0000000, float %388, float %393)  ; FMad(a,b,c)
  %395 = fmul fast float %386, 0x3F93CC4420000000
  %396 = call float @dx.op.tertiary.f32(i32 46, float 0x3FBE835DE0000000, float %387, float %395)  ; FMad(a,b,c)
  %397 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEE68E420000000, float %388, float %396)  ; FMad(a,b,c)
  %398 = fmul fast float %224, 0x3FD553A980000000
  %399 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD6E286E0000000, float %238, float %398)  ; FMad(a,b,c)
  %400 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC7189380000000, float %239, float %399)  ; FMad(a,b,c)
  %401 = fmul fast float %224, 0x3FC5FE4740000000
  %402 = call float @dx.op.tertiary.f32(i32 46, float 0x3FE6E286E0000000, float %238, float %401)  ; FMad(a,b,c)
  %403 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB27A0FA0000000, float %239, float %402)  ; FMad(a,b,c)
  %404 = fmul fast float %224, 0x3F8FFD7F00000000
  %405 = call float @dx.op.tertiary.f32(i32 46, float 0x3FBE835DE0000000, float %238, float %404)  ; FMad(a,b,c)
  %406 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEE68E420000000, float %239, float %405)  ; FMad(a,b,c)
  %407 = fadd fast float %403, %400
  %408 = fadd fast float %407, %406
  %409 = fdiv fast float 1.000000e+00, %408
  %410 = fmul fast float %409, %400
  %411 = call float @dx.op.unary.f32(i32 7, float %410)  ; Saturate(value)
  %412 = fmul fast float %409, %403
  %413 = call float @dx.op.unary.f32(i32 7, float %412)  ; Saturate(value)
  %414 = fadd fast float %394, %391
  %415 = fadd fast float %414, %397
  %416 = fdiv fast float 1.000000e+00, %415
  %417 = fmul fast float %416, %391
  %418 = call float @dx.op.unary.f32(i32 7, float %417)  ; Saturate(value)
  %419 = fmul fast float %416, %394
  %420 = call float @dx.op.unary.f32(i32 7, float %419)  ; Saturate(value)
  %421 = fsub fast float %411, %418
  %422 = fsub fast float %413, %420
  %423 = extractvalue %dx.types.CBufRet.f32 %380, 0
  %424 = call float @dx.op.dot2.f32(i32 54, float %421, float %422, float %421, float %422)  ; Dot2(ax,ay,bx,by)
  %425 = fmul fast float %423, %423
  %426 = fcmp fast olt float %424, %425
  %427 = extractvalue %dx.types.CBufRet.f32 %380, 2
  %428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %10, float %42, float %43, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %429 = extractvalue %dx.types.ResRet.f32 %428, 0
  %430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %10, float %285, float %286, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = fadd fast float %431, 0xBFB1111120000000
  %433 = fmul fast float %432, 0x3FF1249240000000
  %434 = call float @dx.op.unary.f32(i32 7, float %433)  ; Saturate(value)
  %435 = fadd fast float %429, 0xBFB1111120000000
  %436 = fmul fast float %435, 0x3FF1249240000000
  %437 = call float @dx.op.unary.f32(i32 7, float %436)  ; Saturate(value)
  %438 = fsub fast float %437, %434
  %439 = call float @dx.op.unary.f32(i32 6, float %438)  ; FAbs(value)
  %440 = fadd fast float %437, %434
  %441 = fdiv fast float 1.000000e+00, %440
  %442 = fmul fast float %439, 0x4005555560000000
  %443 = fmul fast float %442, %441
  %444 = fsub fast float 1.000000e+00, %443
  %445 = call float @dx.op.unary.f32(i32 7, float %444)  ; Saturate(value)
  %446 = call float @dx.op.binary.f32(i32 36, float %437, float %434)  ; FMin(a,b)
  %447 = fmul fast float %446, 4.000000e+01
  %448 = call float @dx.op.unary.f32(i32 7, float %447)  ; Saturate(value)
  %449 = call float @dx.op.binary.f32(i32 36, float %445, float %448)  ; FMin(a,b)
  %450 = fadd fast float %427, -1.000000e+00
  %451 = select i1 %426, float %379, float 0.000000e+00
  %452 = fmul fast float %451, %450
  %453 = fmul fast float %452, %449
  %454 = fadd fast float %453, 1.000000e+00
  %455 = fsub fast float %237, %386
  %456 = fsub fast float %238, %387
  %457 = fsub fast float %239, %388
  %458 = fmul fast float %454, %455
  %459 = fmul fast float %454, %456
  %460 = fmul fast float %454, %457
  %461 = fadd fast float %458, %386
  %462 = fadd fast float %459, %387
  %463 = fadd fast float %460, %388
  %464 = call float @dx.op.binary.f32(i32 35, float %461, float -3.225500e+04)  ; FMax(a,b)
  %465 = call float @dx.op.binary.f32(i32 35, float %462, float -3.225500e+04)  ; FMax(a,b)
  %466 = call float @dx.op.binary.f32(i32 35, float %463, float -3.225500e+04)  ; FMax(a,b)
  %467 = call float @dx.op.binary.f32(i32 36, float %464, float 3.225500e+04)  ; FMin(a,b)
  %468 = call float @dx.op.binary.f32(i32 36, float %465, float 3.225500e+04)  ; FMin(a,b)
  %469 = call float @dx.op.binary.f32(i32 36, float %466, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %28, i32 %29, i32 undef, float %467, float %468, float %469, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %470

; <label>:470                                     ; preds = %215, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

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
!dx.entryPoints = !{!22}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !14, !16, !19}
!5 = !{!6, !8, !9, !10, !11, !12, !13}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<float>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<float>"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !7}
!14 = !{!15}
!15 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{!17, !18}
!17 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!18 = !{i32 1, %VeilSampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!19 = !{!20, !21}
!20 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!21 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!22 = !{void ()* @cs_downsample_veil, !"cs_downsample_veil", null, !4, !23}
!23 = !{i32 0, i64 256, i32 4, !24}
!24 = !{i32 8, i32 8, i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 1}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 1}

