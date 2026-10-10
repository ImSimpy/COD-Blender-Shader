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
; shader hash: c4228cae3ccd1aeafbe110b1e8b5c31f
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
;   [112 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [164 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T0            t18     1
;                                   texture  struct         r/o      T1            t25     1
;                                   texture     f32          2d      T2            t13     1
;                                       UAV     f32          2d      U0             u7     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.StructuredBuffer<VolumetricBBoxGpu>" = type { %struct.VolumetricBBoxGpu }
%struct.VolumetricBBoxGpu = type { <3 x float>, i32, <3 x float>, float, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%FogRaymarchingConstBuffer_decl = type { %struct.FogRaymarchingConstBuffer }
%struct.FogRaymarchingConstBuffer = type { <2 x float>, <2 x float>, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

define void @cs_fog_raymarching_air_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %11 = uitofp i32 %9 to float
  %12 = uitofp i32 %10 to float
  %13 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.f32 %13, 2
  %15 = fmul fast float %14, 0x3FE3C6EF40000000
  %16 = frem fast float %11, 2.560000e+02
  %17 = frem fast float %12, 2.560000e+02
  %18 = fptoui float %16 to i32
  %19 = fptoui float %17 to i32
  %20 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %18, i32 %19, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %21 = extractvalue %dx.types.ResRet.f32 %20, 1
  %22 = fadd fast float %21, %15
  %23 = call float @dx.op.unary.f32(i32 22, float %22)  ; Frc(value)
  %24 = fadd fast float %11, 5.000000e-01
  %25 = fadd fast float %12, 5.000000e-01
  %26 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.f32 %26, 2
  %28 = extractvalue %dx.types.CBufRet.f32 %26, 3
  %29 = fmul fast float %27, %24
  %30 = fmul fast float %28, %25
  %31 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.f32 %31, 0
  %33 = extractvalue %dx.types.CBufRet.f32 %31, 1
  %34 = extractvalue %dx.types.CBufRet.f32 %31, 2
  %35 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.f32 %35, 0
  %37 = extractvalue %dx.types.CBufRet.f32 %35, 1
  %38 = fmul fast float %29, %36
  %39 = fmul fast float %30, %37
  %40 = fadd fast float %38, %32
  %41 = fadd fast float %39, %33
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 2
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 0
  %46 = extractvalue %dx.types.CBufRet.f32 %44, 1
  %47 = extractvalue %dx.types.CBufRet.f32 %44, 2
  %48 = fsub fast float -0.000000e+00, %45
  %49 = fsub fast float -0.000000e+00, %46
  %50 = fsub fast float -0.000000e+00, %47
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %53 = fsub fast float -0.000000e+00, %40
  %54 = fsub fast float -0.000000e+00, %41
  %55 = fsub fast float %52, %34
  %56 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %57 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %48, float %49, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %58 = fdiv fast float 1.000000e+00, %57
  %59 = fmul fast float %58, %56
  %60 = fcmp fast olt float %59, 0.000000e+00
  %61 = fcmp olt float %47, -0.000000e+00
  %62 = and i1 %61, %60
  br i1 %62, label %67, label %63, !dx.controlflow.hints !22

; <label>:63                                      ; preds = %0
  %64 = fcmp ogt float %47, -0.000000e+00
  br i1 %64, label %65, label %67, !dx.controlflow.hints !23

; <label>:65                                      ; preds = %63
  %66 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %59)  ; FMax(a,b)
  br label %67

; <label>:67                                      ; preds = %65, %63, %0
  %68 = phi float [ 0.000000e+00, %0 ], [ %66, %65 ], [ 0.000000e+00, %63 ]
  %69 = phi float [ 0.000000e+00, %0 ], [ 0x47EFFFFFE0000000, %65 ], [ %59, %63 ]
  %70 = fcmp fast oeq float %69, 0.000000e+00
  br i1 %70, label %74, label %71, !dx.controlflow.hints !24

; <label>:71                                      ; preds = %67
  %72 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %68)  ; FMin(a,b)
  %73 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %69)  ; FMax(a,b)
  br label %74

; <label>:74                                      ; preds = %71, %67
  %75 = phi float [ %73, %71 ], [ -1.000000e+00, %67 ]
  %76 = phi i32 [ 1, %71 ], [ 0, %67 ]
  %77 = phi float [ %72, %71 ], [ 0x47EFFFFFE0000000, %67 ]
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 3
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = fsub fast float %79, %34
  %83 = fadd fast float %82, %81
  %84 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %53, float %54, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %85 = fmul fast float %58, %84
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %88 = fsub fast float %87, %34
  %89 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %53, float %54, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %90 = fmul fast float %58, %89
  %91 = call float @dx.op.binary.f32(i32 36, float %85, float %90)  ; FMin(a,b)
  %92 = call float @dx.op.binary.f32(i32 35, float %85, float %90)  ; FMax(a,b)
  %93 = call float @dx.op.binary.f32(i32 36, float %77, float %91)  ; FMin(a,b)
  %94 = call float @dx.op.binary.f32(i32 35, float %75, float %92)  ; FMax(a,b)
  %95 = fdiv fast float 1.000000e+00, %48
  %96 = fdiv fast float 1.000000e+00, %49
  %97 = fdiv fast float 1.000000e+00, %50
  %98 = call float @dx.op.binary.f32(i32 36, float %43, float %94)  ; FMin(a,b)
  %99 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %93)  ; FMax(a,b)
  %100 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %101 = fmul fast float %23, 2.000000e+00
  %102 = fadd fast float %101, -1.000000e+00
  %103 = fmul fast float %100, %102
  %104 = fadd fast float %103, %99
  %105 = fcmp fast olt float %104, %98
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %108 = fcmp fast olt float %107, 1.000000e+00
  %109 = and i1 %108, %105
  br i1 %109, label %110, label %482

; <label>:110                                     ; preds = %74
  %111 = fmul fast float %104, %50
  %112 = fadd fast float %111, %34
  %113 = fmul fast float %104, %49
  %114 = fadd fast float %113, %41
  %115 = fmul fast float %104, %48
  %116 = fadd fast float %115, %40
  br label %117

; <label>:117                                     ; preds = %464, %110
  %118 = phi float [ %238, %464 ], [ undef, %110 ]
  %119 = phi float [ %239, %464 ], [ undef, %110 ]
  %120 = phi float [ %240, %464 ], [ undef, %110 ]
  %121 = phi float [ %241, %464 ], [ undef, %110 ]
  %122 = phi float [ %465, %464 ], [ 1.000000e+00, %110 ]
  %123 = phi float [ %474, %464 ], [ %116, %110 ]
  %124 = phi float [ %475, %464 ], [ %114, %110 ]
  %125 = phi float [ %476, %464 ], [ %112, %110 ]
  %126 = phi float [ %470, %464 ], [ %104, %110 ]
  %127 = phi i32 [ %243, %464 ], [ 10, %110 ]
  %128 = phi i32 [ %466, %464 ], [ 0, %110 ]
  %129 = phi float [ %467, %464 ], [ 0.000000e+00, %110 ]
  %130 = phi float [ %468, %464 ], [ 0.000000e+00, %110 ]
  %131 = phi float [ %469, %464 ], [ 0.000000e+00, %110 ]
  %132 = fsub fast float -0.000000e+00, %124
  %133 = fsub fast float -0.000000e+00, %123
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = fsub fast float %123, %137
  %140 = fsub fast float %124, %138
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 3
  %144 = fmul fast float %139, %142
  %145 = fmul fast float %140, %143
  %146 = call float @dx.op.binary.f32(i32 36, float %144, float %145)  ; FMin(a,b)
  %147 = fcmp fast olt float %146, 0.000000e+00
  %148 = call float @dx.op.binary.f32(i32 35, float %144, float %145)  ; FMax(a,b)
  %149 = fcmp fast ogt float %148, 1.000000e+00
  %150 = or i1 %147, %149
  %151 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %152 = fcmp fast olt float %125, %151
  %153 = or i1 %150, %152
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 3
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = fadd fast float %157, %155
  %159 = fcmp fast ogt float %125, %158
  %160 = or i1 %153, %159
  br i1 %160, label %161, label %190, !dx.controlflow.hints !25

; <label>:161                                     ; preds = %117
  %162 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %164 = fsub fast float %137, %123
  %165 = fmul fast float %164, %95
  %166 = fadd fast float %164, %162
  %167 = fmul fast float %166, %95
  %168 = call float @dx.op.binary.f32(i32 36, float %165, float %167)  ; FMin(a,b)
  %169 = call float @dx.op.binary.f32(i32 35, float %165, float %167)  ; FMax(a,b)
  %170 = fsub fast float %138, %124
  %171 = fmul fast float %170, %96
  %172 = fadd fast float %170, %163
  %173 = fmul fast float %172, %96
  %174 = call float @dx.op.binary.f32(i32 36, float %171, float %173)  ; FMin(a,b)
  %175 = call float @dx.op.binary.f32(i32 35, float %168, float %174)  ; FMax(a,b)
  %176 = call float @dx.op.binary.f32(i32 35, float %171, float %173)  ; FMax(a,b)
  %177 = call float @dx.op.binary.f32(i32 36, float %169, float %176)  ; FMin(a,b)
  %178 = fsub fast float %151, %125
  %179 = fmul fast float %178, %97
  %180 = fsub fast float %155, %125
  %181 = fadd fast float %180, %157
  %182 = fmul fast float %181, %97
  %183 = call float @dx.op.binary.f32(i32 36, float %179, float %182)  ; FMin(a,b)
  %184 = call float @dx.op.binary.f32(i32 35, float %175, float %183)  ; FMax(a,b)
  %185 = call float @dx.op.binary.f32(i32 35, float %179, float %182)  ; FMax(a,b)
  %186 = call float @dx.op.binary.f32(i32 36, float %177, float %185)  ; FMin(a,b)
  %187 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %184)  ; FMax(a,b)
  %188 = fcmp fast oge float %186, %187
  %189 = select i1 %188, float %184, float 1.000000e+07
  br label %236

; <label>:190                                     ; preds = %117
  %191 = fsub fast float 1.000000e+00, %145
  %192 = icmp eq i32 %127, 0
  br i1 %192, label %221, label %193

; <label>:193                                     ; preds = %190
  br label %194

; <label>:194                                     ; preds = %217, %193
  %195 = phi i32 [ %218, %217 ], [ %127, %193 ]
  %196 = uitofp i32 %195 to float
  %197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %144, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float %196)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %198 = extractvalue %dx.types.ResRet.f32 %197, 0
  %199 = extractvalue %dx.types.ResRet.f32 %197, 1
  %200 = extractvalue %dx.types.ResRet.f32 %197, 2
  %201 = fcmp fast oeq float %198, 0.000000e+00
  %202 = fcmp ule float %125, %200
  %203 = fcmp uge float %125, %199
  %204 = or i1 %203, %202
  %205 = or i1 %201, %204
  br i1 %205, label %206, label %217, !dx.controlflow.hints !26

; <label>:206                                     ; preds = %194
  %207 = extractvalue %dx.types.ResRet.f32 %197, 3
  %208 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %209 = and i32 %195, 31
  %210 = lshr i32 1024, %209
  %211 = uitofp i32 %210 to float
  %212 = fdiv fast float %208, %211
  %213 = add i32 %195, 1
  %214 = uitofp i32 %213 to float
  %215 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %214)  ; FMin(a,b)
  %216 = fptosi float %215 to i32
  br label %236

; <label>:217                                     ; preds = %194
  %218 = add i32 %195, -1
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %194, !llvm.loop !27

; <label>:220                                     ; preds = %217
  br label %221

; <label>:221                                     ; preds = %220, %190
  %222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %144, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = extractvalue %dx.types.ResRet.f32 %222, 1
  %225 = extractvalue %dx.types.ResRet.f32 %222, 2
  %226 = extractvalue %dx.types.ResRet.f32 %222, 3
  %227 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %228 = fmul fast float %227, 9.765625e-04
  %229 = fcmp fast oeq float %223, 0.000000e+00
  %230 = fcmp ule float %125, %225
  %231 = fcmp uge float %125, %224
  %232 = or i1 %231, %230
  %233 = or i1 %229, %232
  %234 = zext i1 %233 to i32
  %235 = xor i32 %234, 1
  br label %236

; <label>:236                                     ; preds = %221, %206, %161
  %237 = phi float [ %189, %161 ], [ %212, %206 ], [ %228, %221 ]
  %238 = phi float [ %118, %161 ], [ %198, %206 ], [ %223, %221 ]
  %239 = phi float [ %119, %161 ], [ %199, %206 ], [ %224, %221 ]
  %240 = phi float [ %120, %161 ], [ %200, %206 ], [ %225, %221 ]
  %241 = phi float [ %121, %161 ], [ %207, %206 ], [ %226, %221 ]
  %242 = phi i32 [ 0, %161 ], [ 0, %206 ], [ %235, %221 ]
  %243 = phi i32 [ 10, %161 ], [ %216, %206 ], [ 1, %221 ]
  %244 = icmp eq i32 %242, 0
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 2
  %247 = call float @dx.op.binary.f32(i32 35, float %237, float %246)  ; FMax(a,b)
  %248 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %247)  ; FMin(a,b)
  %249 = icmp eq i32 %76, 0
  br i1 %249, label %262, label %250, !dx.controlflow.hints !29

; <label>:250                                     ; preds = %236
  %251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.f32 %251, 3
  %253 = extractvalue %dx.types.CBufRet.f32 %251, 2
  %254 = fmul fast float %252, %126
  %255 = fdiv fast float %254, %98
  %256 = fadd fast float %255, 1.000000e+00
  %257 = call float @dx.op.unary.f32(i32 23, float %256)  ; Log(value)
  %258 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %257)  ; FMin(a,b)
  %259 = fmul fast float %253, %98
  %260 = fmul fast float %259, %258
  %261 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %260)  ; FMin(a,b)
  br label %262

; <label>:262                                     ; preds = %250, %236
  %263 = phi float [ %261, %250 ], [ 0x47EFFFFFE0000000, %236 ]
  %264 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %265 = fmul fast float %264, %126
  %266 = call float @dx.op.unary.f32(i32 23, float %265)  ; Log(value)
  %267 = fmul fast float %266, 0x3FE62E4300000000
  %268 = call float @dx.op.binary.f32(i32 35, float %267, float 1.000000e+00)  ; FMax(a,b)
  %269 = fmul fast float %268, %263
  %270 = call float @dx.op.binary.f32(i32 36, float %269, float %248)  ; FMin(a,b)
  %271 = call float @dx.op.binary.f32(i32 35, float %270, float %135)  ; FMax(a,b)
  %272 = fadd fast float %98, 0x3F1A36E2E0000000
  %273 = fsub fast float %272, %126
  %274 = call float @dx.op.binary.f32(i32 36, float %273, float %271)  ; FMin(a,b)
  br i1 %249, label %320, label %275, !dx.controlflow.hints !30

; <label>:275                                     ; preds = %262
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 0
  %278 = fsub fast float %277, %125
  %279 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %133, float %132, float %278)  ; Dot3(ax,ay,az,bx,by,bz)
  %280 = fmul fast float %58, %279
  %281 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %280)  ; FMax(a,b)
  %282 = fcmp ogt float %47, -0.000000e+00
  %283 = call float @dx.op.binary.f32(i32 36, float %274, float %281)  ; FMin(a,b)
  br i1 %282, label %285, label %284, !dx.controlflow.hints !31

; <label>:284                                     ; preds = %275
  br label %285

; <label>:285                                     ; preds = %284, %275
  %286 = phi float [ 0.000000e+00, %284 ], [ %283, %275 ]
  %287 = phi float [ %283, %284 ], [ %274, %275 ]
  %288 = phi float [ %283, %284 ], [ 0.000000e+00, %275 ]
  %289 = phi float [ %274, %284 ], [ %283, %275 ]
  %290 = fsub fast float %287, %286
  %291 = extractvalue %dx.types.CBufRet.f32 %276, 1
  %292 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %291)  ; FMin(a,b)
  %293 = fsub fast float %125, %277
  %294 = fmul fast float %292, 0x3FF7154760000000
  %295 = fmul fast float %294, %293
  %296 = call float @dx.op.unary.f32(i32 21, float %295)  ; Exp(value)
  %297 = fmul fast float %47, 0xBFF7154760000000
  %298 = fmul fast float %297, %289
  %299 = fmul fast float %298, %292
  %300 = call float @dx.op.unary.f32(i32 21, float %299)  ; Exp(value)
  %301 = fmul fast float %297, %288
  %302 = fmul fast float %301, %292
  %303 = call float @dx.op.unary.f32(i32 21, float %302)  ; Exp(value)
  %304 = fsub fast float %300, %303
  %305 = fmul fast float %304, %296
  %306 = fmul fast float %292, %50
  %307 = fdiv fast float %305, %306
  %308 = fadd fast float %290, %307
  %309 = call float @dx.op.unary.f32(i32 6, float %50)  ; FAbs(value)
  %310 = fcmp fast olt float %309, 0x3F0FFB4800000000
  %311 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %293)  ; FMax(a,b)
  %312 = fmul fast float %311, 0x3FF7154760000000
  %313 = fmul fast float %312, %291
  %314 = call float @dx.op.unary.f32(i32 21, float %313)  ; Exp(value)
  %315 = fmul fast float %314, %274
  %316 = select i1 %310, float %315, float %308
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %319 = fmul fast float %316, %318
  br label %320

; <label>:320                                     ; preds = %285, %262
  %321 = phi float [ %319, %285 ], [ 0.000000e+00, %262 ]
  br i1 %244, label %447, label %322, !dx.controlflow.hints !32

; <label>:322                                     ; preds = %320
  %323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.i32 %323, 0
  %325 = icmp ne i32 %324, 0
  %326 = zext i1 %325 to i32
  %327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.i32 %327, 0
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %363, label %330

; <label>:330                                     ; preds = %322
  br label %331

; <label>:331                                     ; preds = %358, %330
  %332 = phi i32 [ %359, %358 ], [ 0, %330 ]
  %333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %332, i32 0)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = extractvalue %dx.types.ResRet.f32 %333, 1
  %336 = extractvalue %dx.types.ResRet.f32 %333, 2
  %337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %332, i32 16)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 0
  %339 = extractvalue %dx.types.ResRet.f32 %337, 1
  %340 = extractvalue %dx.types.ResRet.f32 %337, 2
  %341 = fsub fast float %334, %338
  %342 = fsub fast float %335, %339
  %343 = fsub fast float %336, %340
  %344 = fadd fast float %338, %334
  %345 = fadd fast float %339, %335
  %346 = fadd fast float %340, %336
  %347 = fcmp fast olt float %123, %341
  %348 = fcmp fast olt float %124, %342
  %349 = fcmp fast olt float %125, %343
  %350 = or i1 %347, %348
  %351 = or i1 %349, %350
  %352 = fcmp fast ogt float %123, %344
  %353 = fcmp fast ogt float %124, %345
  %354 = fcmp fast ogt float %125, %346
  %355 = or i1 %352, %353
  %356 = or i1 %354, %355
  %357 = or i1 %351, %356
  br i1 %357, label %358, label %361, !dx.controlflow.hints !33

; <label>:358                                     ; preds = %331
  %359 = add nuw i32 %332, 1
  %360 = icmp ult i32 %359, %328
  br i1 %360, label %331, label %361

; <label>:361                                     ; preds = %358, %331
  %362 = phi i32 [ 255, %358 ], [ %332, %331 ]
  br label %363

; <label>:363                                     ; preds = %361, %322
  %364 = phi i32 [ 255, %322 ], [ %362, %361 ]
  %365 = icmp eq i32 %364, 255
  br i1 %365, label %371, label %366, !dx.controlflow.hints !34

; <label>:366                                     ; preds = %363
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %364, i32 156)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = icmp ne i32 %368, 0
  %370 = zext i1 %369 to i32
  br label %371

; <label>:371                                     ; preds = %366, %363
  %372 = phi i32 [ %370, %366 ], [ %326, %363 ]
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %443, !dx.controlflow.hints !35

; <label>:374                                     ; preds = %371
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 3
  %377 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 2
  %380 = extractvalue %dx.types.CBufRet.f32 %378, 3
  br i1 %365, label %391, label %381, !dx.controlflow.hints !36

; <label>:381                                     ; preds = %374
  %382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %364, i32 60)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.f32 %382, 0
  %384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %364, i32 64)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.f32 %384, 0
  %386 = extractvalue %dx.types.ResRet.f32 %384, 1
  %387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %364, i32 72)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  %389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %364, i32 96)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  br label %391

; <label>:391                                     ; preds = %381, %374
  %392 = phi float [ %385, %381 ], [ %379, %374 ]
  %393 = phi float [ %386, %381 ], [ %380, %374 ]
  %394 = phi float [ %390, %381 ], [ %377, %374 ]
  %395 = phi float [ %388, %381 ], [ %155, %374 ]
  %396 = phi float [ %383, %381 ], [ %157, %374 ]
  %397 = call float @dx.op.binary.f32(i32 35, float %238, float 0.000000e+00)  ; FMax(a,b)
  %398 = call float @dx.op.binary.f32(i32 36, float %397, float 1.000000e+00)  ; FMin(a,b)
  %399 = call float @dx.op.unary.f32(i32 24, float %398)  ; Sqrt(value)
  %400 = call float @dx.op.binary.f32(i32 35, float %241, float 0x3F847AE140000000)  ; FMax(a,b)
  %401 = fsub fast float %239, %125
  %402 = fsub fast float %125, %240
  %403 = call float @dx.op.binary.f32(i32 36, float %402, float %401)  ; FMin(a,b)
  %404 = fdiv fast float %403, %400
  %405 = call float @dx.op.unary.f32(i32 7, float %404)  ; Saturate(value)
  %406 = fsub fast float %125, %395
  %407 = fdiv fast float %406, %396
  %408 = call float @dx.op.unary.f32(i32 7, float %407)  ; Saturate(value)
  %409 = fsub fast float 1.000000e+00, %408
  %410 = fmul float %405, %409
  %411 = fmul float %410, %410
  %412 = fmul fast float %399, %376
  %413 = fmul fast float %412, %411
  %414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %415 = extractvalue %dx.types.CBufRet.f32 %414, 2
  %416 = extractvalue %dx.types.CBufRet.f32 %414, 1
  %417 = fsub fast float %413, %416
  %418 = fsub fast float %415, %416
  %419 = fdiv fast float %417, %418
  %420 = call float @dx.op.unary.f32(i32 7, float %419)  ; Saturate(value)
  %421 = fmul fast float %420, %394
  %422 = fcmp fast ogt float %393, 0.000000e+00
  br i1 %422, label %423, label %443, !dx.controlflow.hints !37

; <label>:423                                     ; preds = %391
  %424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.f32 %424, 0
  %426 = extractvalue %dx.types.CBufRet.f32 %424, 1
  %427 = extractvalue %dx.types.CBufRet.f32 %424, 2
  %428 = fsub fast float %123, %425
  %429 = fsub fast float %124, %426
  %430 = fsub fast float %125, %427
  %431 = fmul fast float %428, %428
  %432 = fmul fast float %429, %429
  %433 = fadd fast float %431, %432
  %434 = fmul fast float %430, %430
  %435 = fadd fast float %433, %434
  %436 = call float @dx.op.unary.f32(i32 24, float %435)  ; Sqrt(value)
  %437 = fsub fast float %436, %392
  %438 = fsub fast float %393, %392
  %439 = fdiv fast float %437, %438
  %440 = call float @dx.op.unary.f32(i32 7, float %439)  ; Saturate(value)
  %441 = fmul fast float %440, %440
  %442 = fmul fast float %441, %421
  br label %443

; <label>:443                                     ; preds = %423, %391, %371
  %444 = phi float [ 0.000000e+00, %371 ], [ %442, %423 ], [ %421, %391 ]
  %445 = fmul fast float %444, %274
  %446 = fadd fast float %445, %321
  br label %447

; <label>:447                                     ; preds = %443, %320
  %448 = phi float [ %446, %443 ], [ %321, %320 ]
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 1
  %451 = fcmp fast ogt float %448, %450
  br i1 %451, label %452, label %464, !dx.controlflow.hints !38

; <label>:452                                     ; preds = %447
  %453 = fmul fast float %448, 0xBFF7154760000000
  %454 = call float @dx.op.unary.f32(i32 21, float %453)  ; Exp(value)
  %455 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  %456 = icmp eq i32 %128, 0
  br i1 %456, label %457, label %458, !dx.controlflow.hints !39

; <label>:457                                     ; preds = %452
  br label %458

; <label>:458                                     ; preds = %457, %452
  %459 = phi i32 [ %128, %452 ], [ 1, %457 ]
  %460 = phi float [ %129, %452 ], [ %126, %457 ]
  %461 = fadd fast float %274, %130
  %462 = fadd fast float %448, %131
  %463 = fmul fast float %455, %122
  br label %464

; <label>:464                                     ; preds = %458, %447
  %465 = phi float [ %463, %458 ], [ %122, %447 ]
  %466 = phi i32 [ %459, %458 ], [ %128, %447 ]
  %467 = phi float [ %460, %458 ], [ %129, %447 ]
  %468 = phi float [ %461, %458 ], [ %130, %447 ]
  %469 = phi float [ %462, %458 ], [ %131, %447 ]
  %470 = fadd fast float %274, %126
  %471 = fmul fast float %274, %48
  %472 = fmul fast float %274, %49
  %473 = fmul fast float %274, %50
  %474 = fadd fast float %471, %123
  %475 = fadd fast float %472, %124
  %476 = fadd fast float %473, %125
  %477 = fcmp fast olt float %470, %98
  %478 = extractvalue %dx.types.CBufRet.f32 %449, 2
  %479 = fcmp fast olt float %478, %465
  %480 = and i1 %477, %479
  br i1 %480, label %117, label %481

; <label>:481                                     ; preds = %464
  br label %482

; <label>:482                                     ; preds = %481, %74
  %483 = phi float [ 0.000000e+00, %74 ], [ %467, %481 ]
  %484 = phi float [ 0.000000e+00, %74 ], [ %468, %481 ]
  %485 = phi float [ 0.000000e+00, %74 ], [ %469, %481 ]
  %486 = extractvalue %dx.types.CBufRet.f32 %42, 3
  %487 = fmul fast float %486, %483
  %488 = fdiv fast float 1.000000e+00, %484
  %489 = fmul fast float %488, %485
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %9, i32 %10, i32 undef, float %487, float %489, float %485, float %487, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!19}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !11, !13, !16}
!5 = !{!6, !8, !10}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 164}
!10 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!11 = !{!12}
!12 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{!14, !15}
!14 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!15 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!16 = !{!17, !18}
!17 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!18 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!19 = !{void ()* @cs_fog_raymarching_air_particles, !"cs_fog_raymarching_air_particles", null, !4, !20}
!20 = !{i32 0, i64 272, i32 4, !21}
!21 = !{i32 8, i32 8, i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}

