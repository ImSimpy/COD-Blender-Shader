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
; shader hash: 0862a382a54c1da2fc57c388eec2184d
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
;                                   sampler      NA          NA      S2             s3     1
;                                   texture     f32          2d      T0            t16     1
;                                   texture     f32          2d      T1            t27     1
;                                   texture     f32          2d      T2            t18     1
;                                   texture  struct         r/o      T3            t25     1
;                                   texture     f32          2d      T4            t13     1
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

define void @cs_fog_raymarching_heightmap_particles_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %14 = uitofp i32 %12 to float
  %15 = uitofp i32 %13 to float
  %16 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.f32 %16, 2
  %18 = fmul fast float %17, 0x3FE3C6EF40000000
  %19 = frem fast float %14, 2.560000e+02
  %20 = frem fast float %15, 2.560000e+02
  %21 = fptoui float %19 to i32
  %22 = fptoui float %20 to i32
  %23 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %21, i32 %22, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %24 = extractvalue %dx.types.ResRet.f32 %23, 0
  %25 = extractvalue %dx.types.ResRet.f32 %23, 1
  %26 = extractvalue %dx.types.ResRet.f32 %23, 2
  %27 = fadd fast float %24, %18
  %28 = fadd fast float %25, %18
  %29 = fadd fast float %26, %18
  %30 = call float @dx.op.unary.f32(i32 22, float %27)  ; Frc(value)
  %31 = call float @dx.op.unary.f32(i32 22, float %28)  ; Frc(value)
  %32 = call float @dx.op.unary.f32(i32 22, float %29)  ; Frc(value)
  %33 = fadd fast float %14, 5.000000e-01
  %34 = fadd fast float %15, 5.000000e-01
  %35 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.f32 %35, 2
  %37 = extractvalue %dx.types.CBufRet.f32 %35, 3
  %38 = fmul fast float %36, %33
  %39 = fmul fast float %37, %34
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 0
  %42 = extractvalue %dx.types.CBufRet.f32 %40, 1
  %43 = extractvalue %dx.types.CBufRet.f32 %40, 2
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 0
  %46 = extractvalue %dx.types.CBufRet.f32 %44, 1
  %47 = fmul fast float %38, %45
  %48 = fmul fast float %39, %46
  %49 = fadd fast float %47, %41
  %50 = fadd fast float %48, %42
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %56 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %57 = fsub fast float -0.000000e+00, %54
  %58 = fsub fast float -0.000000e+00, %55
  %59 = fsub fast float -0.000000e+00, %56
  %60 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.i32 %60, 3
  %62 = icmp eq i32 %61, 0
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %67 = fsub fast float %64, %43
  %68 = fadd fast float %67, %66
  %69 = fsub fast float 0xC7EFFFFFE0000000, %43
  br i1 %62, label %81, label %70, !dx.controlflow.hints !25

; <label>:70                                      ; preds = %0
  %71 = fsub fast float -0.000000e+00, %50
  %72 = fsub fast float -0.000000e+00, %49
  %73 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %72, float %71, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %74 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %75 = fdiv fast float 1.000000e+00, %74
  %76 = fmul fast float %75, %73
  %77 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %72, float %71, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %78 = fmul fast float %75, %77
  %79 = call float @dx.op.binary.f32(i32 36, float %76, float %78)  ; FMin(a,b)
  %80 = call float @dx.op.binary.f32(i32 35, float %76, float %78)  ; FMax(a,b)
  br label %114

; <label>:81                                      ; preds = %0
  %82 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %86 = fdiv fast float 1.000000e+00, %57
  %87 = fdiv fast float 1.000000e+00, %58
  %88 = fdiv fast float 1.000000e+00, %59
  %89 = fsub fast float %82, %49
  %90 = fmul fast float %86, %89
  %91 = fadd fast float %89, %84
  %92 = fmul fast float %91, %86
  %93 = call float @dx.op.binary.f32(i32 36, float %90, float %92)  ; FMin(a,b)
  %94 = call float @dx.op.binary.f32(i32 35, float %90, float %92)  ; FMax(a,b)
  %95 = fsub fast float %83, %50
  %96 = fmul fast float %87, %95
  %97 = fadd fast float %95, %85
  %98 = fmul fast float %97, %87
  %99 = call float @dx.op.binary.f32(i32 36, float %96, float %98)  ; FMin(a,b)
  %100 = call float @dx.op.binary.f32(i32 35, float %93, float %99)  ; FMax(a,b)
  %101 = call float @dx.op.binary.f32(i32 35, float %96, float %98)  ; FMax(a,b)
  %102 = call float @dx.op.binary.f32(i32 36, float %94, float %101)  ; FMin(a,b)
  %103 = fmul fast float %88, %69
  %104 = fmul fast float %88, %68
  %105 = call float @dx.op.binary.f32(i32 36, float %103, float %104)  ; FMin(a,b)
  %106 = call float @dx.op.binary.f32(i32 35, float %100, float %105)  ; FMax(a,b)
  %107 = call float @dx.op.binary.f32(i32 35, float %103, float %104)  ; FMax(a,b)
  %108 = call float @dx.op.binary.f32(i32 36, float %102, float %107)  ; FMin(a,b)
  %109 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %106)  ; FMax(a,b)
  %110 = fcmp fast ult float %108, %109
  br i1 %110, label %114, label %111, !dx.controlflow.hints !26

; <label>:111                                     ; preds = %81
  %112 = call float @dx.op.binary.f32(i32 36, float %106, float %108)  ; FMin(a,b)
  %113 = call float @dx.op.binary.f32(i32 35, float %106, float %108)  ; FMax(a,b)
  br label %114

; <label>:114                                     ; preds = %111, %81, %70
  %115 = phi float [ %79, %70 ], [ %112, %111 ], [ 0.000000e+00, %81 ]
  %116 = phi float [ %80, %70 ], [ %113, %111 ], [ 0.000000e+00, %81 ]
  %117 = fcmp fast oeq float %116, 0.000000e+00
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %120 = fcmp fast olt float %116, %119
  %121 = or i1 %117, %120
  br i1 %121, label %126, label %122, !dx.controlflow.hints !27

; <label>:122                                     ; preds = %114
  %123 = call float @dx.op.binary.f32(i32 35, float %119, float %115)  ; FMax(a,b)
  %124 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %123)  ; FMin(a,b)
  %125 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %116)  ; FMax(a,b)
  br label %126

; <label>:126                                     ; preds = %122, %114
  %127 = phi float [ %125, %122 ], [ -1.000000e+00, %114 ]
  %128 = phi i32 [ 1, %122 ], [ 0, %114 ]
  %129 = phi float [ %124, %122 ], [ 0x47EFFFFFE0000000, %114 ]
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 3
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = fsub fast float -0.000000e+00, %49
  %135 = fsub fast float -0.000000e+00, %50
  %136 = fsub fast float %131, %43
  %137 = fadd fast float %136, %133
  %138 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %134, float %135, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %139 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %140 = fdiv fast float 1.000000e+00, %139
  %141 = fmul fast float %140, %138
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %144 = fsub fast float %143, %43
  %145 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %134, float %135, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %146 = fmul fast float %140, %145
  %147 = call float @dx.op.binary.f32(i32 36, float %141, float %146)  ; FMin(a,b)
  %148 = call float @dx.op.binary.f32(i32 35, float %141, float %146)  ; FMax(a,b)
  %149 = call float @dx.op.binary.f32(i32 36, float %129, float %147)  ; FMin(a,b)
  %150 = call float @dx.op.binary.f32(i32 35, float %127, float %148)  ; FMax(a,b)
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 3
  %155 = fsub fast float %152, %43
  %156 = fadd fast float %155, %154
  %157 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %134, float %135, float %156)  ; Dot3(ax,ay,az,bx,by,bz)
  %158 = fmul fast float %140, %157
  %159 = fcmp fast olt float %158, 0.000000e+00
  %160 = fcmp olt float %56, -0.000000e+00
  %161 = and i1 %160, %159
  br i1 %161, label %166, label %162, !dx.controlflow.hints !28

; <label>:162                                     ; preds = %126
  %163 = fcmp ogt float %56, -0.000000e+00
  br i1 %163, label %164, label %166, !dx.controlflow.hints !29

; <label>:164                                     ; preds = %162
  %165 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %158)  ; FMax(a,b)
  br label %166

; <label>:166                                     ; preds = %164, %162, %126
  %167 = phi float [ 0.000000e+00, %126 ], [ %165, %164 ], [ 0.000000e+00, %162 ]
  %168 = phi float [ 0.000000e+00, %126 ], [ 0x47EFFFFFE0000000, %164 ], [ %158, %162 ]
  %169 = fcmp fast oeq float %168, 0.000000e+00
  br i1 %169, label %173, label %170, !dx.controlflow.hints !30

; <label>:170                                     ; preds = %166
  %171 = call float @dx.op.binary.f32(i32 36, float %149, float %167)  ; FMin(a,b)
  %172 = call float @dx.op.binary.f32(i32 35, float %150, float %168)  ; FMax(a,b)
  br label %173

; <label>:173                                     ; preds = %170, %166
  %174 = phi i32 [ 1, %170 ], [ 0, %166 ]
  %175 = phi float [ %172, %170 ], [ %150, %166 ]
  %176 = phi float [ %171, %170 ], [ %149, %166 ]
  %177 = fdiv fast float 1.000000e+00, %57
  %178 = fdiv fast float 1.000000e+00, %58
  %179 = fdiv fast float 1.000000e+00, %59
  %180 = call float @dx.op.binary.f32(i32 36, float %52, float %175)  ; FMin(a,b)
  %181 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %176)  ; FMax(a,b)
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 1
  %184 = fmul fast float %31, 2.000000e+00
  %185 = fadd fast float %184, -1.000000e+00
  %186 = fmul fast float %183, %185
  %187 = fadd fast float %186, %181
  %188 = fcmp fast olt float %187, %180
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %191 = fcmp fast olt float %190, 1.000000e+00
  %192 = and i1 %188, %191
  br i1 %192, label %193, label %989

; <label>:193                                     ; preds = %173
  %194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.i32 %194, 1
  %196 = add i32 %195, -1
  %197 = fmul fast float %187, %59
  %198 = fadd fast float %197, %43
  %199 = fmul fast float %187, %58
  %200 = fadd fast float %199, %50
  %201 = fmul fast float %187, %57
  %202 = fadd fast float %201, %49
  br label %203

; <label>:203                                     ; preds = %971, %193
  %204 = phi i32 [ %681, %971 ], [ undef, %193 ]
  %205 = phi float [ %682, %971 ], [ undef, %193 ]
  %206 = phi float [ %497, %971 ], [ undef, %193 ]
  %207 = phi float [ %498, %971 ], [ undef, %193 ]
  %208 = phi float [ %499, %971 ], [ undef, %193 ]
  %209 = phi float [ %500, %971 ], [ undef, %193 ]
  %210 = phi float [ %972, %971 ], [ 1.000000e+00, %193 ]
  %211 = phi float [ %981, %971 ], [ %202, %193 ]
  %212 = phi float [ %982, %971 ], [ %200, %193 ]
  %213 = phi float [ %983, %971 ], [ %198, %193 ]
  %214 = phi float [ %977, %971 ], [ %187, %193 ]
  %215 = phi i32 [ %502, %971 ], [ 10, %193 ]
  %216 = phi i32 [ %393, %971 ], [ %196, %193 ]
  %217 = phi i32 [ %973, %971 ], [ 0, %193 ]
  %218 = phi float [ %974, %971 ], [ 0.000000e+00, %193 ]
  %219 = phi float [ %975, %971 ], [ 0.000000e+00, %193 ]
  %220 = phi float [ %976, %971 ], [ 0.000000e+00, %193 ]
  %221 = fsub fast float -0.000000e+00, %212
  %222 = fsub fast float -0.000000e+00, %211
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 1
  %225 = icmp eq i32 %128, 0
  br i1 %225, label %391, label %226, !dx.controlflow.hints !31

; <label>:226                                     ; preds = %203
  %227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.i32 %227, 1
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 1
  %231 = fcmp fast ogt float %230, %214
  br i1 %231, label %232, label %234, !dx.controlflow.hints !32

; <label>:232                                     ; preds = %226
  %233 = fsub fast float %230, %214
  br label %381

; <label>:234                                     ; preds = %226
  %235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.i32 %235, 3
  %237 = icmp eq i32 %236, 0
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 2
  %242 = fsub fast float %239, %213
  %243 = fadd fast float %242, %241
  %244 = fsub fast float 0xC7EFFFFFE0000000, %213
  br i1 %237, label %252, label %245, !dx.controlflow.hints !25

; <label>:245                                     ; preds = %234
  %246 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %222, float %221, float %243)  ; Dot3(ax,ay,az,bx,by,bz)
  %247 = fmul fast float %140, %246
  %248 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %222, float %221, float %244)  ; Dot3(ax,ay,az,bx,by,bz)
  %249 = fmul fast float %140, %248
  %250 = call float @dx.op.binary.f32(i32 36, float %247, float %249)  ; FMin(a,b)
  %251 = call float @dx.op.binary.f32(i32 35, float %247, float %249)  ; FMax(a,b)
  br label %282

; <label>:252                                     ; preds = %234
  %253 = extractvalue %dx.types.CBufRet.f32 %238, 0
  %254 = extractvalue %dx.types.CBufRet.f32 %238, 1
  %255 = extractvalue %dx.types.CBufRet.f32 %240, 0
  %256 = extractvalue %dx.types.CBufRet.f32 %240, 1
  %257 = fsub fast float %253, %211
  %258 = fmul fast float %177, %257
  %259 = fadd fast float %257, %255
  %260 = fmul fast float %259, %177
  %261 = call float @dx.op.binary.f32(i32 36, float %258, float %260)  ; FMin(a,b)
  %262 = call float @dx.op.binary.f32(i32 35, float %258, float %260)  ; FMax(a,b)
  %263 = fsub fast float %254, %212
  %264 = fmul fast float %178, %263
  %265 = fadd fast float %263, %256
  %266 = fmul fast float %265, %178
  %267 = call float @dx.op.binary.f32(i32 36, float %264, float %266)  ; FMin(a,b)
  %268 = call float @dx.op.binary.f32(i32 35, float %261, float %267)  ; FMax(a,b)
  %269 = call float @dx.op.binary.f32(i32 35, float %264, float %266)  ; FMax(a,b)
  %270 = call float @dx.op.binary.f32(i32 36, float %262, float %269)  ; FMin(a,b)
  %271 = fmul fast float %179, %244
  %272 = fmul fast float %179, %243
  %273 = call float @dx.op.binary.f32(i32 36, float %271, float %272)  ; FMin(a,b)
  %274 = call float @dx.op.binary.f32(i32 35, float %268, float %273)  ; FMax(a,b)
  %275 = call float @dx.op.binary.f32(i32 35, float %271, float %272)  ; FMax(a,b)
  %276 = call float @dx.op.binary.f32(i32 36, float %270, float %275)  ; FMin(a,b)
  %277 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %274)  ; FMax(a,b)
  %278 = fcmp fast ult float %276, %277
  br i1 %278, label %282, label %279, !dx.controlflow.hints !26

; <label>:279                                     ; preds = %252
  %280 = call float @dx.op.binary.f32(i32 36, float %274, float %276)  ; FMin(a,b)
  %281 = call float @dx.op.binary.f32(i32 35, float %274, float %276)  ; FMax(a,b)
  br label %282

; <label>:282                                     ; preds = %279, %252, %245
  %283 = phi float [ %250, %245 ], [ %280, %279 ], [ 0.000000e+00, %252 ]
  %284 = phi float [ %251, %245 ], [ %281, %279 ], [ 0.000000e+00, %252 ]
  %285 = fcmp fast ogt float %283, 0.000000e+00
  br i1 %285, label %381, label %286, !dx.controlflow.hints !33

; <label>:286                                     ; preds = %282
  %287 = fcmp fast ugt float %284, 0.000000e+00
  br i1 %287, label %288, label %381, !dx.controlflow.hints !34

; <label>:288                                     ; preds = %286
  %289 = icmp sgt i32 %216, 0
  br i1 %289, label %290, label %375

; <label>:290                                     ; preds = %288
  br label %291

; <label>:291                                     ; preds = %371, %290
  %292 = phi i32 [ %372, %371 ], [ %216, %290 ]
  %293 = sitofp i32 %292 to float
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 0
  %296 = extractvalue %dx.types.CBufRet.f32 %294, 1
  %297 = fsub fast float %211, %295
  %298 = fsub fast float %212, %296
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %301 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %302 = fmul fast float %297, %300
  %303 = fmul fast float %298, %301
  %304 = fsub fast float 1.000000e+00, %303
  %305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.i32 %305, 3
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %314, label %308, !dx.controlflow.hints !35

; <label>:308                                     ; preds = %291
  %309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %302, float %304, float undef, float undef, i32 0, i32 0, i32 undef, float %293)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %310 = extractvalue %dx.types.ResRet.f32 %309, 0
  %311 = extractvalue %dx.types.ResRet.f32 %309, 1
  %312 = extractvalue %dx.types.ResRet.f32 %309, 2
  %313 = extractvalue %dx.types.ResRet.f32 %309, 3
  br label %320

; <label>:314                                     ; preds = %291
  %315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %8, float %302, float %304, float undef, float undef, i32 0, i32 0, i32 undef, float %293)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = extractvalue %dx.types.ResRet.f32 %315, 1
  %318 = extractvalue %dx.types.ResRet.f32 %315, 2
  %319 = extractvalue %dx.types.ResRet.f32 %315, 3
  br label %320

; <label>:320                                     ; preds = %314, %308
  %321 = phi float [ %310, %308 ], [ %316, %314 ]
  %322 = phi float [ %311, %308 ], [ %317, %314 ]
  %323 = phi float [ %312, %308 ], [ %318, %314 ]
  %324 = phi float [ %313, %308 ], [ %319, %314 ]
  %325 = extractvalue %dx.types.CBufRet.f32 %299, 3
  %326 = fmul fast float %325, %321
  %327 = extractvalue %dx.types.CBufRet.f32 %294, 2
  %328 = fadd fast float %326, %327
  %329 = fmul fast float %325, %322
  %330 = fadd fast float %329, %327
  %331 = fmul fast float %325, %323
  %332 = fadd fast float %331, %327
  %333 = and i32 %292, 31
  %334 = shl i32 1, %333
  %335 = uitofp i32 %334 to float
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 3
  %338 = fdiv fast float 1.000000e+00, %337
  %339 = fmul fast float %338, %335
  %340 = fmul fast float %339, %59
  %341 = fadd fast float %340, %213
  %342 = fcmp fast oeq float %324, 0.000000e+00
  %343 = fcmp fast ogt float %213, %330
  %344 = fcmp fast ogt float %341, %330
  %345 = and i1 %343, %344
  %346 = or i1 %342, %345
  br i1 %346, label %347, label %351, !dx.controlflow.hints !36

; <label>:347                                     ; preds = %320
  %348 = add nsw i32 %292, 1
  %349 = add nsw i32 %228, -1
  %350 = call i32 @dx.op.binary.i32(i32 38, i32 %348, i32 %349)  ; IMin(a,b)
  br label %381

; <label>:351                                     ; preds = %320
  %352 = fcmp fast olt float %213, %332
  %353 = fcmp fast olt float %341, %332
  %354 = and i1 %352, %353
  br i1 %354, label %355, label %359, !dx.controlflow.hints !37

; <label>:355                                     ; preds = %351
  %356 = add nsw i32 %292, 1
  %357 = add nsw i32 %228, -1
  %358 = call i32 @dx.op.binary.i32(i32 38, i32 %356, i32 %357)  ; IMin(a,b)
  br label %381

; <label>:359                                     ; preds = %351
  %360 = fcmp fast olt float %213, %328
  %361 = fcmp fast olt float %341, %328
  %362 = and i1 %360, %361
  br i1 %362, label %363, label %371, !dx.controlflow.hints !38

; <label>:363                                     ; preds = %359
  %364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.f32 %364, 3
  %366 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %367 = fcmp fast une float %365, %366
  br i1 %367, label %368, label %375, !dx.controlflow.hints !39

; <label>:368                                     ; preds = %363
  %369 = fsub fast float %213, %332
  %370 = call float @dx.op.binary.f32(i32 36, float %339, float %369)  ; FMin(a,b)
  br label %375

; <label>:371                                     ; preds = %359
  %372 = add nsw i32 %292, -1
  %373 = icmp sgt i32 %292, 1
  br i1 %373, label %291, label %374

; <label>:374                                     ; preds = %371
  br label %375

; <label>:375                                     ; preds = %374, %368, %363, %288
  %376 = phi float [ %370, %368 ], [ %339, %363 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %374 ]
  %377 = phi i32 [ %292, %368 ], [ %292, %363 ], [ %216, %288 ], [ %372, %374 ]
  %378 = add nsw i32 %377, 1
  %379 = add nsw i32 %228, -1
  %380 = call i32 @dx.op.binary.i32(i32 38, i32 %378, i32 %379)  ; IMin(a,b)
  br label %381

; <label>:381                                     ; preds = %375, %355, %347, %286, %282, %232
  %382 = phi float [ %233, %232 ], [ %339, %347 ], [ %339, %355 ], [ %376, %375 ], [ 0x47EFFFFFE0000000, %286 ], [ %283, %282 ]
  %383 = phi i32 [ %128, %232 ], [ %128, %347 ], [ %128, %355 ], [ %128, %375 ], [ 0, %286 ], [ %128, %282 ]
  %384 = phi i32 [ %216, %232 ], [ %350, %347 ], [ %358, %355 ], [ %380, %375 ], [ %216, %286 ], [ %216, %282 ]
  %385 = icmp ne i32 %383, 0
  %386 = zext i1 %385 to i32
  %387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %388 = extractvalue %dx.types.CBufRet.f32 %387, 2
  %389 = call float @dx.op.binary.f32(i32 35, float %382, float %388)  ; FMax(a,b)
  %390 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %389)  ; FMin(a,b)
  br label %391

; <label>:391                                     ; preds = %381, %203
  %392 = phi float [ %390, %381 ], [ 0x47EFFFFFE0000000, %203 ]
  %393 = phi i32 [ %384, %381 ], [ %216, %203 ]
  %394 = phi i32 [ %386, %381 ], [ 0, %203 ]
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 0
  %397 = extractvalue %dx.types.CBufRet.f32 %395, 1
  %398 = fsub fast float %211, %396
  %399 = fsub fast float %212, %397
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 2
  %402 = extractvalue %dx.types.CBufRet.f32 %400, 3
  %403 = fmul fast float %398, %401
  %404 = fmul fast float %399, %402
  %405 = call float @dx.op.binary.f32(i32 36, float %403, float %404)  ; FMin(a,b)
  %406 = fcmp fast olt float %405, 0.000000e+00
  %407 = call float @dx.op.binary.f32(i32 35, float %403, float %404)  ; FMax(a,b)
  %408 = fcmp fast ogt float %407, 1.000000e+00
  %409 = or i1 %406, %408
  %410 = extractvalue %dx.types.CBufRet.f32 %395, 2
  %411 = fcmp fast olt float %213, %410
  %412 = or i1 %409, %411
  %413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.f32 %413, 3
  %415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %416 = extractvalue %dx.types.CBufRet.f32 %415, 0
  %417 = fadd fast float %416, %414
  %418 = fcmp fast ogt float %213, %417
  %419 = or i1 %412, %418
  br i1 %419, label %420, label %449, !dx.controlflow.hints !40

; <label>:420                                     ; preds = %391
  %421 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %422 = extractvalue %dx.types.CBufRet.f32 %400, 1
  %423 = fsub fast float %396, %211
  %424 = fmul fast float %423, %177
  %425 = fadd fast float %423, %421
  %426 = fmul fast float %425, %177
  %427 = call float @dx.op.binary.f32(i32 36, float %424, float %426)  ; FMin(a,b)
  %428 = call float @dx.op.binary.f32(i32 35, float %424, float %426)  ; FMax(a,b)
  %429 = fsub fast float %397, %212
  %430 = fmul fast float %429, %178
  %431 = fadd fast float %429, %422
  %432 = fmul fast float %431, %178
  %433 = call float @dx.op.binary.f32(i32 36, float %430, float %432)  ; FMin(a,b)
  %434 = call float @dx.op.binary.f32(i32 35, float %427, float %433)  ; FMax(a,b)
  %435 = call float @dx.op.binary.f32(i32 35, float %430, float %432)  ; FMax(a,b)
  %436 = call float @dx.op.binary.f32(i32 36, float %428, float %435)  ; FMin(a,b)
  %437 = fsub fast float %410, %213
  %438 = fmul fast float %437, %179
  %439 = fsub fast float %414, %213
  %440 = fadd fast float %439, %416
  %441 = fmul fast float %440, %179
  %442 = call float @dx.op.binary.f32(i32 36, float %438, float %441)  ; FMin(a,b)
  %443 = call float @dx.op.binary.f32(i32 35, float %434, float %442)  ; FMax(a,b)
  %444 = call float @dx.op.binary.f32(i32 35, float %438, float %441)  ; FMax(a,b)
  %445 = call float @dx.op.binary.f32(i32 36, float %436, float %444)  ; FMin(a,b)
  %446 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %443)  ; FMax(a,b)
  %447 = fcmp fast oge float %445, %446
  %448 = select i1 %447, float %443, float 1.000000e+07
  br label %495

; <label>:449                                     ; preds = %391
  %450 = fsub fast float 1.000000e+00, %404
  %451 = icmp eq i32 %215, 0
  br i1 %451, label %480, label %452

; <label>:452                                     ; preds = %449
  br label %453

; <label>:453                                     ; preds = %476, %452
  %454 = phi i32 [ %477, %476 ], [ %215, %452 ]
  %455 = uitofp i32 %454 to float
  %456 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %9, float %403, float %450, float undef, float undef, i32 0, i32 0, i32 undef, float %455)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %457 = extractvalue %dx.types.ResRet.f32 %456, 0
  %458 = extractvalue %dx.types.ResRet.f32 %456, 1
  %459 = extractvalue %dx.types.ResRet.f32 %456, 2
  %460 = fcmp fast oeq float %457, 0.000000e+00
  %461 = fcmp ule float %213, %459
  %462 = fcmp uge float %213, %458
  %463 = or i1 %462, %461
  %464 = or i1 %460, %463
  br i1 %464, label %465, label %476, !dx.controlflow.hints !41

; <label>:465                                     ; preds = %453
  %466 = extractvalue %dx.types.ResRet.f32 %456, 3
  %467 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %468 = and i32 %454, 31
  %469 = lshr i32 1024, %468
  %470 = uitofp i32 %469 to float
  %471 = fdiv fast float %467, %470
  %472 = add i32 %454, 1
  %473 = uitofp i32 %472 to float
  %474 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %473)  ; FMin(a,b)
  %475 = fptosi float %474 to i32
  br label %495

; <label>:476                                     ; preds = %453
  %477 = add i32 %454, -1
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %453, !llvm.loop !42

; <label>:479                                     ; preds = %476
  br label %480

; <label>:480                                     ; preds = %479, %449
  %481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %8, float %403, float %450, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = extractvalue %dx.types.ResRet.f32 %481, 1
  %484 = extractvalue %dx.types.ResRet.f32 %481, 2
  %485 = extractvalue %dx.types.ResRet.f32 %481, 3
  %486 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %487 = fmul fast float %486, 9.765625e-04
  %488 = fcmp fast oeq float %482, 0.000000e+00
  %489 = fcmp ule float %213, %484
  %490 = fcmp uge float %213, %483
  %491 = or i1 %490, %489
  %492 = or i1 %488, %491
  %493 = zext i1 %492 to i32
  %494 = xor i32 %493, 1
  br label %495

; <label>:495                                     ; preds = %480, %465, %420
  %496 = phi float [ %448, %420 ], [ %471, %465 ], [ %487, %480 ]
  %497 = phi float [ %206, %420 ], [ %457, %465 ], [ %482, %480 ]
  %498 = phi float [ %207, %420 ], [ %458, %465 ], [ %483, %480 ]
  %499 = phi float [ %208, %420 ], [ %459, %465 ], [ %484, %480 ]
  %500 = phi float [ %209, %420 ], [ %466, %465 ], [ %485, %480 ]
  %501 = phi i32 [ 0, %420 ], [ 0, %465 ], [ %494, %480 ]
  %502 = phi i32 [ 10, %420 ], [ %475, %465 ], [ 1, %480 ]
  %503 = icmp eq i32 %501, 0
  %504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %505 = extractvalue %dx.types.CBufRet.f32 %504, 2
  %506 = call float @dx.op.binary.f32(i32 35, float %496, float %505)  ; FMax(a,b)
  %507 = call float @dx.op.binary.f32(i32 36, float %392, float %506)  ; FMin(a,b)
  %508 = icmp eq i32 %174, 0
  br i1 %508, label %680, label %509, !dx.controlflow.hints !44

; <label>:509                                     ; preds = %495
  %510 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.i32 %510, 1
  %512 = and i32 %511, 1
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %671, !dx.controlflow.hints !45

; <label>:514                                     ; preds = %509
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 2
  %517 = extractvalue %dx.types.CBufRet.f32 %515, 3
  %518 = fmul fast float %516, %211
  %519 = fmul fast float %517, %212
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 0
  %522 = extractvalue %dx.types.CBufRet.f32 %520, 1
  %523 = fadd fast float %518, %521
  %524 = fadd fast float %519, %522
  %525 = call float @dx.op.unary.f32(i32 7, float %523)  ; Saturate(value)
  %526 = call float @dx.op.unary.f32(i32 7, float %524)  ; Saturate(value)
  %527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %525, float %526, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %530 = extractvalue %dx.types.CBufRet.f32 %529, 0
  %531 = fmul fast float %530, %528
  %532 = fsub fast float %523, %525
  %533 = fsub fast float %524, %526
  %534 = extractvalue %dx.types.CBufRet.f32 %515, 0
  %535 = extractvalue %dx.types.CBufRet.f32 %515, 1
  %536 = fmul fast float %534, %532
  %537 = fmul fast float %535, %533
  %538 = fmul fast float %536, %536
  %539 = fmul fast float %537, %537
  %540 = fadd fast float %538, %539
  %541 = call float @dx.op.unary.f32(i32 24, float %540)  ; Sqrt(value)
  %542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.f32 %542, 3
  %544 = fmul fast float %543, %541
  %545 = call float @dx.op.unary.f32(i32 7, float %544)  ; Saturate(value)
  %546 = extractvalue %dx.types.CBufRet.f32 %542, 2
  %547 = fsub fast float %546, %531
  %548 = fmul fast float %547, %545
  %549 = extractvalue %dx.types.CBufRet.f32 %529, 1
  %550 = fsub fast float %213, %531
  %551 = fsub fast float %550, %549
  %552 = fsub fast float %551, %548
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 2
  %555 = fsub fast float %552, %554
  %556 = fcmp fast olt float %555, 0.000000e+00
  %557 = call float @dx.op.unary.f32(i32 6, float %555)  ; FAbs(value)
  %558 = extractvalue %dx.types.CBufRet.i32 %510, 0
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %613, label %560

; <label>:560                                     ; preds = %514
  br label %561

; <label>:561                                     ; preds = %600, %560
  %562 = phi i32 [ %606, %600 ], [ 1, %560 ]
  %563 = phi float [ %608, %600 ], [ 0x47EFFFFFE0000000, %560 ]
  %564 = phi i32 [ %609, %600 ], [ 0, %560 ]
  %565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.f32 %565, 1
  %567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.i32 %567, 1
  %569 = and i32 %568, 8
  %570 = icmp eq i32 %569, 0
  %571 = fcmp fast ogt float %566, %552
  %572 = or i1 %571, %570
  %573 = add i32 %564, 171
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 %573)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 0
  %576 = extractvalue %dx.types.CBufRet.f32 %574, 1
  %577 = extractvalue %dx.types.CBufRet.f32 %574, 2
  br i1 %572, label %578, label %584, !dx.controlflow.hints !46

; <label>:578                                     ; preds = %561
  %579 = fsub fast float %575, %211
  %580 = fsub fast float %576, %212
  %581 = fmul fast float %579, %579
  %582 = fmul fast float %580, %580
  %583 = fadd fast float %581, %582
  br label %600

; <label>:584                                     ; preds = %561
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 2
  %587 = extractvalue %dx.types.CBufRet.f32 %565, 2
  %588 = fmul fast float %587, %586
  %589 = fsub fast float %588, %566
  %590 = fdiv fast float %577, %589
  %591 = fsub fast float %211, %575
  %592 = fsub fast float %212, %576
  %593 = fsub fast float %552, %566
  %594 = fmul fast float %590, %593
  %595 = fmul fast float %591, %591
  %596 = fmul fast float %592, %592
  %597 = fadd fast float %595, %596
  %598 = fmul fast float %594, %594
  %599 = fadd fast float %597, %598
  br label %600

; <label>:600                                     ; preds = %584, %578
  %601 = phi float [ %583, %578 ], [ %599, %584 ]
  %602 = call float @dx.op.unary.f32(i32 24, float %601)  ; Sqrt(value)
  %603 = fsub float %577, %602
  %604 = fcmp fast olt float %603, 0.000000e+00
  %605 = zext i1 %604 to i32
  %606 = and i32 %605, %562
  %607 = call float @dx.op.unary.f32(i32 6, float %603)  ; FAbs(value)
  %608 = call float @dx.op.binary.f32(i32 36, float %563, float %607)  ; FMin(a,b)
  %609 = add i32 %564, 1
  %610 = extractvalue %dx.types.CBufRet.i32 %567, 0
  %611 = icmp ult i32 %609, %610
  br i1 %611, label %561, label %612

; <label>:612                                     ; preds = %600
  br label %613

; <label>:613                                     ; preds = %612, %514
  %614 = phi i32 [ 1, %514 ], [ %606, %612 ]
  %615 = phi float [ 0x47EFFFFFE0000000, %514 ], [ %608, %612 ]
  br label %616

; <label>:616                                     ; preds = %616, %613
  %617 = phi i32 [ %614, %613 ], [ %656, %616 ]
  %618 = phi float [ 0x47EFFFFFE0000000, %613 ], [ %658, %616 ]
  %619 = phi i32 [ 0, %613 ], [ %659, %616 ]
  %620 = add nuw nsw i32 %619, 191
  %621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 %620)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.f32 %621, 0
  %623 = extractvalue %dx.types.CBufRet.f32 %621, 1
  %624 = extractvalue %dx.types.CBufRet.f32 %621, 2
  %625 = add nuw nsw i32 %619, 195
  %626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 %625)  ; CBufferLoadLegacy(handle,regIndex)
  %627 = extractvalue %dx.types.CBufRet.f32 %626, 0
  %628 = extractvalue %dx.types.CBufRet.f32 %626, 1
  %629 = extractvalue %dx.types.CBufRet.f32 %626, 2
  %630 = fsub fast float %211, %622
  %631 = fsub fast float %212, %623
  %632 = fsub fast float %552, %624
  %633 = call float @dx.op.unary.f32(i32 6, float %630)  ; FAbs(value)
  %634 = call float @dx.op.unary.f32(i32 6, float %631)  ; FAbs(value)
  %635 = call float @dx.op.unary.f32(i32 6, float %632)  ; FAbs(value)
  %636 = fsub fast float %633, %627
  %637 = fsub fast float %634, %628
  %638 = fsub fast float %635, %629
  %639 = call float @dx.op.binary.f32(i32 35, float %636, float 0.000000e+00)  ; FMax(a,b)
  %640 = call float @dx.op.binary.f32(i32 35, float %637, float 0.000000e+00)  ; FMax(a,b)
  %641 = call float @dx.op.binary.f32(i32 35, float %638, float 0.000000e+00)  ; FMax(a,b)
  %642 = fmul fast float %639, %639
  %643 = fmul fast float %640, %640
  %644 = fadd fast float %643, %642
  %645 = fmul fast float %641, %641
  %646 = fadd fast float %644, %645
  %647 = call float @dx.op.unary.f32(i32 24, float %646)  ; Sqrt(value)
  %648 = call float @dx.op.binary.f32(i32 35, float %637, float %638)  ; FMax(a,b)
  %649 = call float @dx.op.binary.f32(i32 35, float %636, float %648)  ; FMax(a,b)
  %650 = call float @dx.op.binary.f32(i32 36, float %649, float 0.000000e+00)  ; FMin(a,b)
  %651 = fadd fast float %650, %647
  %652 = fsub fast float -0.000000e+00, %651
  %653 = fcmp ogt float %651, -0.000000e+00
  %654 = icmp ne i32 %617, 0
  %655 = and i1 %654, %653
  %656 = zext i1 %655 to i32
  %657 = call float @dx.op.unary.f32(i32 6, float %652)  ; FAbs(value)
  %658 = call float @dx.op.binary.f32(i32 36, float %618, float %657)  ; FMin(a,b)
  %659 = add nuw nsw i32 %619, 1
  %660 = icmp eq i32 %659, 4
  br i1 %660, label %661, label %616

; <label>:661                                     ; preds = %616
  %662 = call float @dx.op.binary.f32(i32 36, float %557, float %658)  ; FMin(a,b)
  %663 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %664 = extractvalue %dx.types.CBufRet.i32 %663, 1
  %665 = and i32 %664, 2
  %666 = icmp ne i32 %665, 0
  %667 = xor i1 %655, %666
  %668 = call float @dx.op.binary.f32(i32 36, float %662, float %615)  ; FMin(a,b)
  %669 = and i1 %667, %556
  %670 = zext i1 %669 to i32
  br label %671

; <label>:671                                     ; preds = %661, %509
  %672 = phi i32 [ %204, %509 ], [ %670, %661 ]
  %673 = phi float [ 0.000000e+00, %509 ], [ %668, %661 ]
  %674 = phi float [ %213, %509 ], [ %552, %661 ]
  %675 = icmp ne i32 %672, 0
  %676 = extractvalue %dx.types.CBufRet.f32 %504, 3
  %677 = call float @dx.op.binary.f32(i32 35, float %673, float %676)  ; FMax(a,b)
  %678 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %677)  ; FMin(a,b)
  %679 = zext i1 %675 to i32
  br label %680

; <label>:680                                     ; preds = %671, %495
  %681 = phi i32 [ %672, %671 ], [ %204, %495 ]
  %682 = phi float [ %674, %671 ], [ %205, %495 ]
  %683 = phi float [ %678, %671 ], [ 0x47EFFFFFE0000000, %495 ]
  %684 = phi i32 [ %679, %671 ], [ 0, %495 ]
  %685 = extractvalue %dx.types.CBufRet.f32 %223, 2
  %686 = fmul fast float %685, %214
  %687 = call float @dx.op.unary.f32(i32 23, float %686)  ; Log(value)
  %688 = fmul fast float %687, 0x3FE62E4300000000
  %689 = call float @dx.op.binary.f32(i32 35, float %688, float 1.000000e+00)  ; FMax(a,b)
  %690 = fmul fast float %689, %683
  %691 = call float @dx.op.binary.f32(i32 36, float %690, float %507)  ; FMin(a,b)
  %692 = call float @dx.op.binary.f32(i32 35, float %691, float %224)  ; FMax(a,b)
  %693 = fsub fast float %180, %214
  %694 = fadd fast float %693, 0x3F1A36E2E0000000
  %695 = call float @dx.op.binary.f32(i32 36, float %694, float %692)  ; FMin(a,b)
  %696 = icmp eq i32 %394, 0
  br i1 %696, label %793, label %697, !dx.controlflow.hints !47

; <label>:697                                     ; preds = %680
  %698 = fcmp fast olt float %694, %692
  %699 = fmul fast float %30, %59
  %700 = fmul fast float %699, %695
  %701 = fadd fast float %700, %213
  %702 = fmul fast float %31, %59
  %703 = fmul fast float %702, %695
  %704 = fadd fast float %703, %213
  %705 = fmul fast float %32, %59
  %706 = fmul fast float %705, %695
  %707 = fadd fast float %706, %213
  br i1 %698, label %708, label %713, !dx.controlflow.hints !48

; <label>:708                                     ; preds = %697
  %709 = fmul fast float %695, %57
  %710 = fmul fast float %695, %58
  %711 = fadd fast float %709, %211
  %712 = fadd fast float %710, %212
  br label %713

; <label>:713                                     ; preds = %708, %697
  %714 = phi float [ %711, %708 ], [ %211, %697 ]
  %715 = phi float [ %712, %708 ], [ %212, %697 ]
  %716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %717 = extractvalue %dx.types.CBufRet.f32 %716, 0
  %718 = extractvalue %dx.types.CBufRet.f32 %716, 1
  %719 = fsub fast float %714, %717
  %720 = fsub fast float %715, %718
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 0
  %723 = extractvalue %dx.types.CBufRet.f32 %721, 1
  %724 = fmul fast float %719, %722
  %725 = fmul fast float %720, %723
  %726 = fsub fast float 1.000000e+00, %725
  %727 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.i32 %727, 3
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %736, label %730, !dx.controlflow.hints !35

; <label>:730                                     ; preds = %713
  %731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %724, float %726, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %732 = extractvalue %dx.types.ResRet.f32 %731, 0
  %733 = extractvalue %dx.types.ResRet.f32 %731, 1
  %734 = extractvalue %dx.types.ResRet.f32 %731, 2
  %735 = extractvalue %dx.types.ResRet.f32 %731, 3
  br label %742

; <label>:736                                     ; preds = %713
  %737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %8, float %724, float %726, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %738 = extractvalue %dx.types.ResRet.f32 %737, 0
  %739 = extractvalue %dx.types.ResRet.f32 %737, 1
  %740 = extractvalue %dx.types.ResRet.f32 %737, 2
  %741 = extractvalue %dx.types.ResRet.f32 %737, 3
  br label %742

; <label>:742                                     ; preds = %736, %730
  %743 = phi float [ %732, %730 ], [ %738, %736 ]
  %744 = phi float [ %733, %730 ], [ %739, %736 ]
  %745 = phi float [ %734, %730 ], [ %740, %736 ]
  %746 = phi float [ %735, %730 ], [ %741, %736 ]
  %747 = extractvalue %dx.types.CBufRet.f32 %721, 3
  %748 = fmul fast float %747, %744
  %749 = fmul fast float %748, %743
  %750 = fsub fast float %748, %749
  %751 = fcmp fast ole float %750, 0.000000e+00
  %752 = extractvalue %dx.types.CBufRet.f32 %716, 2
  %753 = fadd fast float %749, %752
  %754 = fmul fast float %747, %745
  %755 = fadd fast float %754, %752
  %756 = fdiv fast float 1.000000e+00, %750
  %757 = select i1 %751, float 1.000000e+06, float %756
  %758 = fsub fast float %701, %753
  %759 = fmul fast float %757, %758
  %760 = call float @dx.op.unary.f32(i32 7, float %759)  ; Saturate(value)
  %761 = extractvalue %dx.types.CBufRet.f32 %721, 2
  %762 = fmul fast float %761, %760
  %763 = fsub fast float %761, %762
  %764 = fcmp fast olt float %701, %755
  %765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %766 = extractvalue %dx.types.CBufRet.f32 %765, 3
  %767 = select i1 %764, float %766, float 1.000000e+00
  %768 = fmul fast float %763, %767
  %769 = fsub fast float %704, %753
  %770 = fmul fast float %757, %769
  %771 = call float @dx.op.unary.f32(i32 7, float %770)  ; Saturate(value)
  %772 = fmul fast float %761, %771
  %773 = fsub fast float %761, %772
  %774 = fcmp fast olt float %704, %755
  %775 = select i1 %774, float %766, float 1.000000e+00
  %776 = fmul fast float %773, %775
  %777 = fadd fast float %776, %768
  %778 = fsub fast float %707, %753
  %779 = fmul fast float %757, %778
  %780 = call float @dx.op.unary.f32(i32 7, float %779)  ; Saturate(value)
  %781 = fmul fast float %761, %780
  %782 = fsub fast float %761, %781
  %783 = fcmp fast olt float %707, %755
  %784 = select i1 %783, float %766, float 1.000000e+00
  %785 = fmul fast float %782, %784
  %786 = fadd fast float %777, %785
  %787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %788 = extractvalue %dx.types.CBufRet.f32 %787, 2
  %789 = fmul fast float %695, 0x3FD5555560000000
  %790 = fmul fast float %789, %746
  %791 = fmul fast float %790, %788
  %792 = fmul fast float %791, %786
  br label %793

; <label>:793                                     ; preds = %742, %680
  %794 = phi float [ %792, %742 ], [ 0.000000e+00, %680 ]
  br i1 %503, label %920, label %795, !dx.controlflow.hints !49

; <label>:795                                     ; preds = %793
  %796 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %797 = extractvalue %dx.types.CBufRet.i32 %796, 0
  %798 = icmp ne i32 %797, 0
  %799 = zext i1 %798 to i32
  %800 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %801 = extractvalue %dx.types.CBufRet.i32 %800, 0
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %836, label %803

; <label>:803                                     ; preds = %795
  br label %804

; <label>:804                                     ; preds = %831, %803
  %805 = phi i32 [ %832, %831 ], [ 0, %803 ]
  %806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %805, i32 0)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.f32 %806, 0
  %808 = extractvalue %dx.types.ResRet.f32 %806, 1
  %809 = extractvalue %dx.types.ResRet.f32 %806, 2
  %810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %805, i32 16)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.f32 %810, 0
  %812 = extractvalue %dx.types.ResRet.f32 %810, 1
  %813 = extractvalue %dx.types.ResRet.f32 %810, 2
  %814 = fsub fast float %807, %811
  %815 = fsub fast float %808, %812
  %816 = fsub fast float %809, %813
  %817 = fadd fast float %811, %807
  %818 = fadd fast float %812, %808
  %819 = fadd fast float %813, %809
  %820 = fcmp fast olt float %211, %814
  %821 = fcmp fast olt float %212, %815
  %822 = fcmp fast olt float %213, %816
  %823 = or i1 %820, %821
  %824 = or i1 %822, %823
  %825 = fcmp fast ogt float %211, %817
  %826 = fcmp fast ogt float %212, %818
  %827 = fcmp fast ogt float %213, %819
  %828 = or i1 %825, %826
  %829 = or i1 %827, %828
  %830 = or i1 %824, %829
  br i1 %830, label %831, label %834, !dx.controlflow.hints !50

; <label>:831                                     ; preds = %804
  %832 = add nuw i32 %805, 1
  %833 = icmp ult i32 %832, %801
  br i1 %833, label %804, label %834

; <label>:834                                     ; preds = %831, %804
  %835 = phi i32 [ 255, %831 ], [ %805, %804 ]
  br label %836

; <label>:836                                     ; preds = %834, %795
  %837 = phi i32 [ 255, %795 ], [ %835, %834 ]
  %838 = icmp eq i32 %837, 255
  br i1 %838, label %844, label %839, !dx.controlflow.hints !51

; <label>:839                                     ; preds = %836
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %837, i32 156)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = icmp ne i32 %841, 0
  %843 = zext i1 %842 to i32
  br label %844

; <label>:844                                     ; preds = %839, %836
  %845 = phi i32 [ %843, %839 ], [ %799, %836 ]
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %847, label %916, !dx.controlflow.hints !52

; <label>:847                                     ; preds = %844
  %848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.f32 %848, 3
  %850 = extractvalue %dx.types.CBufRet.f32 %413, 0
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 2
  %853 = extractvalue %dx.types.CBufRet.f32 %851, 3
  br i1 %838, label %864, label %854, !dx.controlflow.hints !53

; <label>:854                                     ; preds = %847
  %855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %837, i32 60)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.f32 %855, 0
  %857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %837, i32 64)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.f32 %857, 0
  %859 = extractvalue %dx.types.ResRet.f32 %857, 1
  %860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %837, i32 72)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.f32 %860, 0
  %862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %837, i32 96)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.f32 %862, 0
  br label %864

; <label>:864                                     ; preds = %854, %847
  %865 = phi float [ %858, %854 ], [ %852, %847 ]
  %866 = phi float [ %859, %854 ], [ %853, %847 ]
  %867 = phi float [ %863, %854 ], [ %850, %847 ]
  %868 = phi float [ %861, %854 ], [ %414, %847 ]
  %869 = phi float [ %856, %854 ], [ %416, %847 ]
  %870 = call float @dx.op.binary.f32(i32 35, float %497, float 0.000000e+00)  ; FMax(a,b)
  %871 = call float @dx.op.binary.f32(i32 36, float %870, float 1.000000e+00)  ; FMin(a,b)
  %872 = call float @dx.op.unary.f32(i32 24, float %871)  ; Sqrt(value)
  %873 = call float @dx.op.binary.f32(i32 35, float %500, float 0x3F847AE140000000)  ; FMax(a,b)
  %874 = fsub fast float %498, %213
  %875 = fsub fast float %213, %499
  %876 = call float @dx.op.binary.f32(i32 36, float %875, float %874)  ; FMin(a,b)
  %877 = fdiv fast float %876, %873
  %878 = call float @dx.op.unary.f32(i32 7, float %877)  ; Saturate(value)
  %879 = fsub fast float %213, %868
  %880 = fdiv fast float %879, %869
  %881 = call float @dx.op.unary.f32(i32 7, float %880)  ; Saturate(value)
  %882 = fsub fast float 1.000000e+00, %881
  %883 = fmul float %878, %882
  %884 = fmul float %883, %883
  %885 = fmul fast float %872, %849
  %886 = fmul fast float %885, %884
  %887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %888 = extractvalue %dx.types.CBufRet.f32 %887, 2
  %889 = extractvalue %dx.types.CBufRet.f32 %887, 1
  %890 = fsub fast float %886, %889
  %891 = fsub fast float %888, %889
  %892 = fdiv fast float %890, %891
  %893 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  %894 = fmul fast float %893, %867
  %895 = fcmp fast ogt float %866, 0.000000e+00
  br i1 %895, label %896, label %916, !dx.controlflow.hints !54

; <label>:896                                     ; preds = %864
  %897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %898 = extractvalue %dx.types.CBufRet.f32 %897, 0
  %899 = extractvalue %dx.types.CBufRet.f32 %897, 1
  %900 = extractvalue %dx.types.CBufRet.f32 %897, 2
  %901 = fsub fast float %211, %898
  %902 = fsub fast float %212, %899
  %903 = fsub fast float %213, %900
  %904 = fmul fast float %901, %901
  %905 = fmul fast float %902, %902
  %906 = fadd fast float %904, %905
  %907 = fmul fast float %903, %903
  %908 = fadd fast float %906, %907
  %909 = call float @dx.op.unary.f32(i32 24, float %908)  ; Sqrt(value)
  %910 = fsub fast float %909, %865
  %911 = fsub fast float %866, %865
  %912 = fdiv fast float %910, %911
  %913 = call float @dx.op.unary.f32(i32 7, float %912)  ; Saturate(value)
  %914 = fmul fast float %913, %913
  %915 = fmul fast float %914, %894
  br label %916

; <label>:916                                     ; preds = %896, %864, %844
  %917 = phi float [ 0.000000e+00, %844 ], [ %915, %896 ], [ %894, %864 ]
  %918 = fmul fast float %917, %695
  %919 = fadd fast float %918, %794
  br label %920

; <label>:920                                     ; preds = %916, %793
  %921 = phi float [ %919, %916 ], [ %794, %793 ]
  %922 = icmp eq i32 %684, 0
  br i1 %922, label %954, label %923, !dx.controlflow.hints !55

; <label>:923                                     ; preds = %920
  %924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %925 = extractvalue %dx.types.CBufRet.f32 %924, 1
  %926 = fsub fast float %695, %925
  %927 = extractvalue %dx.types.CBufRet.f32 %924, 3
  %928 = fmul fast float %926, %927
  %929 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 3
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 2
  %934 = fsub fast float %933, %682
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 3
  %937 = fmul fast float %934, %936
  %938 = call float @dx.op.unary.f32(i32 7, float %937)  ; Saturate(value)
  %939 = fmul fast float %938, %931
  %940 = extractvalue %dx.types.CBufRet.f32 %935, 0
  %941 = fsub fast float %214, %940
  %942 = extractvalue %dx.types.CBufRet.f32 %935, 1
  %943 = fmul fast float %941, %942
  %944 = call float @dx.op.unary.f32(i32 7, float %943)  ; Saturate(value)
  %945 = fsub fast float 1.000000e+00, %929
  %946 = fmul fast float %944, %945
  %947 = fadd fast float %946, %929
  %948 = extractvalue %dx.types.CBufRet.f32 %924, 0
  %949 = fsub fast float %939, %948
  %950 = fmul fast float %949, %947
  %951 = fadd fast float %950, %948
  %952 = fmul fast float %951, %695
  %953 = fadd fast float %952, %921
  br label %954

; <label>:954                                     ; preds = %923, %920
  %955 = phi float [ %953, %923 ], [ %921, %920 ]
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 1
  %958 = fcmp fast ogt float %955, %957
  br i1 %958, label %959, label %971, !dx.controlflow.hints !56

; <label>:959                                     ; preds = %954
  %960 = fmul fast float %955, 0xBFF7154760000000
  %961 = call float @dx.op.unary.f32(i32 21, float %960)  ; Exp(value)
  %962 = call float @dx.op.unary.f32(i32 7, float %961)  ; Saturate(value)
  %963 = icmp eq i32 %217, 0
  br i1 %963, label %964, label %965, !dx.controlflow.hints !57

; <label>:964                                     ; preds = %959
  br label %965

; <label>:965                                     ; preds = %964, %959
  %966 = phi i32 [ %217, %959 ], [ 1, %964 ]
  %967 = phi float [ %218, %959 ], [ %214, %964 ]
  %968 = fadd fast float %695, %219
  %969 = fadd fast float %955, %220
  %970 = fmul fast float %962, %210
  br label %971

; <label>:971                                     ; preds = %965, %954
  %972 = phi float [ %970, %965 ], [ %210, %954 ]
  %973 = phi i32 [ %966, %965 ], [ %217, %954 ]
  %974 = phi float [ %967, %965 ], [ %218, %954 ]
  %975 = phi float [ %968, %965 ], [ %219, %954 ]
  %976 = phi float [ %969, %965 ], [ %220, %954 ]
  %977 = fadd fast float %695, %214
  %978 = fmul fast float %695, %57
  %979 = fmul fast float %695, %58
  %980 = fmul fast float %695, %59
  %981 = fadd fast float %978, %211
  %982 = fadd fast float %979, %212
  %983 = fadd fast float %980, %213
  %984 = fcmp fast olt float %977, %180
  %985 = extractvalue %dx.types.CBufRet.f32 %956, 2
  %986 = fcmp fast olt float %985, %972
  %987 = and i1 %984, %986
  br i1 %987, label %203, label %988

; <label>:988                                     ; preds = %971
  br label %989

; <label>:989                                     ; preds = %988, %173
  %990 = phi float [ 0.000000e+00, %173 ], [ %974, %988 ]
  %991 = phi float [ 0.000000e+00, %173 ], [ %975, %988 ]
  %992 = phi float [ 0.000000e+00, %173 ], [ %976, %988 ]
  %993 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %994 = fmul fast float %993, %990
  %995 = fdiv fast float 1.000000e+00, %991
  %996 = fmul fast float %995, %992
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 undef, float %994, float %996, float %992, float %994, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

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
!dx.entryPoints = !{!22}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !15, !18}
!5 = !{!6, !8, !9, !10, !12}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 164}
!12 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!13 = !{!14}
!14 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{!16, !17}
!16 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!17 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!18 = !{!19, !20, !21}
!19 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!20 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!21 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!22 = !{void ()* @cs_fog_raymarching_heightmap_particles_brfog, !"cs_fog_raymarching_heightmap_particles_brfog", null, !4, !23}
!23 = !{i32 0, i64 272, i32 4, !24}
!24 = !{i32 8, i32 8, i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 1}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}

