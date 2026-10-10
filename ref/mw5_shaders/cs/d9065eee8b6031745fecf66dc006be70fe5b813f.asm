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
; shader hash: 7acfc6ee9d28cbbf47292bca32ad7a01
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

define void @cs_fog_raymarching_air_heightmap_particles_brfog() {
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
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 3
  %132 = fsub fast float -0.000000e+00, %49
  %133 = fsub fast float -0.000000e+00, %50
  %134 = fsub fast float %131, %43
  %135 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %136 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %137 = fdiv fast float 1.000000e+00, %136
  %138 = fmul fast float %137, %135
  %139 = fcmp fast olt float %138, 0.000000e+00
  %140 = fcmp olt float %56, -0.000000e+00
  %141 = and i1 %140, %139
  br i1 %141, label %146, label %142, !dx.controlflow.hints !28

; <label>:142                                     ; preds = %126
  %143 = fcmp ogt float %56, -0.000000e+00
  br i1 %143, label %144, label %146, !dx.controlflow.hints !29

; <label>:144                                     ; preds = %142
  %145 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %138)  ; FMax(a,b)
  br label %146

; <label>:146                                     ; preds = %144, %142, %126
  %147 = phi float [ 0.000000e+00, %126 ], [ %145, %144 ], [ 0.000000e+00, %142 ]
  %148 = phi float [ 0.000000e+00, %126 ], [ 0x47EFFFFFE0000000, %144 ], [ %138, %142 ]
  %149 = fcmp fast oeq float %148, 0.000000e+00
  br i1 %149, label %153, label %150, !dx.controlflow.hints !30

; <label>:150                                     ; preds = %146
  %151 = call float @dx.op.binary.f32(i32 36, float %129, float %147)  ; FMin(a,b)
  %152 = call float @dx.op.binary.f32(i32 35, float %127, float %148)  ; FMax(a,b)
  br label %153

; <label>:153                                     ; preds = %150, %146
  %154 = phi float [ %152, %150 ], [ %127, %146 ]
  %155 = phi i32 [ 1, %150 ], [ 0, %146 ]
  %156 = phi float [ %151, %150 ], [ %129, %146 ]
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 3
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = fsub fast float %158, %43
  %162 = fadd fast float %161, %160
  %163 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %132, float %133, float %162)  ; Dot3(ax,ay,az,bx,by,bz)
  %164 = fmul fast float %137, %163
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %167 = fsub fast float %166, %43
  %168 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %132, float %133, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %169 = fmul fast float %137, %168
  %170 = call float @dx.op.binary.f32(i32 36, float %164, float %169)  ; FMin(a,b)
  %171 = call float @dx.op.binary.f32(i32 35, float %164, float %169)  ; FMax(a,b)
  %172 = call float @dx.op.binary.f32(i32 36, float %156, float %170)  ; FMin(a,b)
  %173 = call float @dx.op.binary.f32(i32 35, float %154, float %171)  ; FMax(a,b)
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 3
  %178 = fsub fast float %175, %43
  %179 = fadd fast float %178, %177
  %180 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %132, float %133, float %179)  ; Dot3(ax,ay,az,bx,by,bz)
  %181 = fmul fast float %137, %180
  %182 = fcmp fast olt float %181, 0.000000e+00
  %183 = and i1 %140, %182
  br i1 %183, label %188, label %184, !dx.controlflow.hints !31

; <label>:184                                     ; preds = %153
  %185 = fcmp ogt float %56, -0.000000e+00
  br i1 %185, label %186, label %188, !dx.controlflow.hints !32

; <label>:186                                     ; preds = %184
  %187 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %181)  ; FMax(a,b)
  br label %188

; <label>:188                                     ; preds = %186, %184, %153
  %189 = phi float [ 0.000000e+00, %153 ], [ %187, %186 ], [ 0.000000e+00, %184 ]
  %190 = phi float [ 0.000000e+00, %153 ], [ 0x47EFFFFFE0000000, %186 ], [ %181, %184 ]
  %191 = fcmp fast oeq float %190, 0.000000e+00
  br i1 %191, label %195, label %192, !dx.controlflow.hints !33

; <label>:192                                     ; preds = %188
  %193 = call float @dx.op.binary.f32(i32 36, float %172, float %189)  ; FMin(a,b)
  %194 = call float @dx.op.binary.f32(i32 35, float %173, float %190)  ; FMax(a,b)
  br label %195

; <label>:195                                     ; preds = %192, %188
  %196 = phi i32 [ 1, %192 ], [ 0, %188 ]
  %197 = phi float [ %194, %192 ], [ %173, %188 ]
  %198 = phi float [ %193, %192 ], [ %172, %188 ]
  %199 = fdiv fast float 1.000000e+00, %57
  %200 = fdiv fast float 1.000000e+00, %58
  %201 = fdiv fast float 1.000000e+00, %59
  %202 = call float @dx.op.binary.f32(i32 36, float %52, float %197)  ; FMin(a,b)
  %203 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %198)  ; FMax(a,b)
  %204 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %205 = fmul fast float %31, 2.000000e+00
  %206 = fadd fast float %205, -1.000000e+00
  %207 = fmul fast float %204, %206
  %208 = fadd fast float %207, %203
  %209 = fcmp fast olt float %208, %202
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %212 = fcmp fast olt float %211, 1.000000e+00
  %213 = and i1 %209, %212
  br i1 %213, label %214, label %1073

; <label>:214                                     ; preds = %195
  %215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.i32 %215, 1
  %217 = add i32 %216, -1
  %218 = fmul fast float %208, %59
  %219 = fadd fast float %218, %43
  %220 = fmul fast float %208, %58
  %221 = fadd fast float %220, %50
  %222 = fmul fast float %208, %57
  %223 = fadd fast float %222, %49
  br label %224

; <label>:224                                     ; preds = %1055, %214
  %225 = phi i32 [ %717, %1055 ], [ undef, %214 ]
  %226 = phi float [ %718, %1055 ], [ undef, %214 ]
  %227 = phi float [ %518, %1055 ], [ undef, %214 ]
  %228 = phi float [ %519, %1055 ], [ undef, %214 ]
  %229 = phi float [ %520, %1055 ], [ undef, %214 ]
  %230 = phi float [ %521, %1055 ], [ undef, %214 ]
  %231 = phi float [ %1056, %1055 ], [ 1.000000e+00, %214 ]
  %232 = phi float [ %1065, %1055 ], [ %223, %214 ]
  %233 = phi float [ %1066, %1055 ], [ %221, %214 ]
  %234 = phi float [ %1067, %1055 ], [ %219, %214 ]
  %235 = phi float [ %1061, %1055 ], [ %208, %214 ]
  %236 = phi i32 [ %523, %1055 ], [ 10, %214 ]
  %237 = phi i32 [ %414, %1055 ], [ %217, %214 ]
  %238 = phi i32 [ %1057, %1055 ], [ 0, %214 ]
  %239 = phi float [ %1058, %1055 ], [ 0.000000e+00, %214 ]
  %240 = phi float [ %1059, %1055 ], [ 0.000000e+00, %214 ]
  %241 = phi float [ %1060, %1055 ], [ 0.000000e+00, %214 ]
  %242 = fsub fast float -0.000000e+00, %233
  %243 = fsub fast float -0.000000e+00, %232
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 1
  %246 = icmp eq i32 %128, 0
  br i1 %246, label %412, label %247, !dx.controlflow.hints !34

; <label>:247                                     ; preds = %224
  %248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.i32 %248, 1
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 1
  %252 = fcmp fast ogt float %251, %235
  br i1 %252, label %253, label %255, !dx.controlflow.hints !35

; <label>:253                                     ; preds = %247
  %254 = fsub fast float %251, %235
  br label %402

; <label>:255                                     ; preds = %247
  %256 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.i32 %256, 3
  %258 = icmp eq i32 %257, 0
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 2
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %263 = fsub fast float %260, %234
  %264 = fadd fast float %263, %262
  %265 = fsub fast float 0xC7EFFFFFE0000000, %234
  br i1 %258, label %273, label %266, !dx.controlflow.hints !25

; <label>:266                                     ; preds = %255
  %267 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %243, float %242, float %264)  ; Dot3(ax,ay,az,bx,by,bz)
  %268 = fmul fast float %137, %267
  %269 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %243, float %242, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %270 = fmul fast float %137, %269
  %271 = call float @dx.op.binary.f32(i32 36, float %268, float %270)  ; FMin(a,b)
  %272 = call float @dx.op.binary.f32(i32 35, float %268, float %270)  ; FMax(a,b)
  br label %303

; <label>:273                                     ; preds = %255
  %274 = extractvalue %dx.types.CBufRet.f32 %259, 0
  %275 = extractvalue %dx.types.CBufRet.f32 %259, 1
  %276 = extractvalue %dx.types.CBufRet.f32 %261, 0
  %277 = extractvalue %dx.types.CBufRet.f32 %261, 1
  %278 = fsub fast float %274, %232
  %279 = fmul fast float %199, %278
  %280 = fadd fast float %278, %276
  %281 = fmul fast float %280, %199
  %282 = call float @dx.op.binary.f32(i32 36, float %279, float %281)  ; FMin(a,b)
  %283 = call float @dx.op.binary.f32(i32 35, float %279, float %281)  ; FMax(a,b)
  %284 = fsub fast float %275, %233
  %285 = fmul fast float %200, %284
  %286 = fadd fast float %284, %277
  %287 = fmul fast float %286, %200
  %288 = call float @dx.op.binary.f32(i32 36, float %285, float %287)  ; FMin(a,b)
  %289 = call float @dx.op.binary.f32(i32 35, float %282, float %288)  ; FMax(a,b)
  %290 = call float @dx.op.binary.f32(i32 35, float %285, float %287)  ; FMax(a,b)
  %291 = call float @dx.op.binary.f32(i32 36, float %283, float %290)  ; FMin(a,b)
  %292 = fmul fast float %201, %265
  %293 = fmul fast float %201, %264
  %294 = call float @dx.op.binary.f32(i32 36, float %292, float %293)  ; FMin(a,b)
  %295 = call float @dx.op.binary.f32(i32 35, float %289, float %294)  ; FMax(a,b)
  %296 = call float @dx.op.binary.f32(i32 35, float %292, float %293)  ; FMax(a,b)
  %297 = call float @dx.op.binary.f32(i32 36, float %291, float %296)  ; FMin(a,b)
  %298 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %295)  ; FMax(a,b)
  %299 = fcmp fast ult float %297, %298
  br i1 %299, label %303, label %300, !dx.controlflow.hints !26

; <label>:300                                     ; preds = %273
  %301 = call float @dx.op.binary.f32(i32 36, float %295, float %297)  ; FMin(a,b)
  %302 = call float @dx.op.binary.f32(i32 35, float %295, float %297)  ; FMax(a,b)
  br label %303

; <label>:303                                     ; preds = %300, %273, %266
  %304 = phi float [ %271, %266 ], [ %301, %300 ], [ 0.000000e+00, %273 ]
  %305 = phi float [ %272, %266 ], [ %302, %300 ], [ 0.000000e+00, %273 ]
  %306 = fcmp fast ogt float %304, 0.000000e+00
  br i1 %306, label %402, label %307, !dx.controlflow.hints !36

; <label>:307                                     ; preds = %303
  %308 = fcmp fast ugt float %305, 0.000000e+00
  br i1 %308, label %309, label %402, !dx.controlflow.hints !37

; <label>:309                                     ; preds = %307
  %310 = icmp sgt i32 %237, 0
  br i1 %310, label %311, label %396

; <label>:311                                     ; preds = %309
  br label %312

; <label>:312                                     ; preds = %392, %311
  %313 = phi i32 [ %393, %392 ], [ %237, %311 ]
  %314 = sitofp i32 %313 to float
  %315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.f32 %315, 0
  %317 = extractvalue %dx.types.CBufRet.f32 %315, 1
  %318 = fsub fast float %232, %316
  %319 = fsub fast float %233, %317
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %323 = fmul fast float %318, %321
  %324 = fmul fast float %319, %322
  %325 = fsub fast float 1.000000e+00, %324
  %326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.i32 %326, 3
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %335, label %329, !dx.controlflow.hints !38

; <label>:329                                     ; preds = %312
  %330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %323, float %325, float undef, float undef, i32 0, i32 0, i32 undef, float %314)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %331 = extractvalue %dx.types.ResRet.f32 %330, 0
  %332 = extractvalue %dx.types.ResRet.f32 %330, 1
  %333 = extractvalue %dx.types.ResRet.f32 %330, 2
  %334 = extractvalue %dx.types.ResRet.f32 %330, 3
  br label %341

; <label>:335                                     ; preds = %312
  %336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %8, float %323, float %325, float undef, float undef, i32 0, i32 0, i32 undef, float %314)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %337 = extractvalue %dx.types.ResRet.f32 %336, 0
  %338 = extractvalue %dx.types.ResRet.f32 %336, 1
  %339 = extractvalue %dx.types.ResRet.f32 %336, 2
  %340 = extractvalue %dx.types.ResRet.f32 %336, 3
  br label %341

; <label>:341                                     ; preds = %335, %329
  %342 = phi float [ %331, %329 ], [ %337, %335 ]
  %343 = phi float [ %332, %329 ], [ %338, %335 ]
  %344 = phi float [ %333, %329 ], [ %339, %335 ]
  %345 = phi float [ %334, %329 ], [ %340, %335 ]
  %346 = extractvalue %dx.types.CBufRet.f32 %320, 3
  %347 = fmul fast float %346, %342
  %348 = extractvalue %dx.types.CBufRet.f32 %315, 2
  %349 = fadd fast float %347, %348
  %350 = fmul fast float %346, %343
  %351 = fadd fast float %350, %348
  %352 = fmul fast float %346, %344
  %353 = fadd fast float %352, %348
  %354 = and i32 %313, 31
  %355 = shl i32 1, %354
  %356 = uitofp i32 %355 to float
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 3
  %359 = fdiv fast float 1.000000e+00, %358
  %360 = fmul fast float %359, %356
  %361 = fmul fast float %360, %59
  %362 = fadd fast float %361, %234
  %363 = fcmp fast oeq float %345, 0.000000e+00
  %364 = fcmp fast ogt float %234, %351
  %365 = fcmp fast ogt float %362, %351
  %366 = and i1 %364, %365
  %367 = or i1 %363, %366
  br i1 %367, label %368, label %372, !dx.controlflow.hints !39

; <label>:368                                     ; preds = %341
  %369 = add nsw i32 %313, 1
  %370 = add nsw i32 %249, -1
  %371 = call i32 @dx.op.binary.i32(i32 38, i32 %369, i32 %370)  ; IMin(a,b)
  br label %402

; <label>:372                                     ; preds = %341
  %373 = fcmp fast olt float %234, %353
  %374 = fcmp fast olt float %362, %353
  %375 = and i1 %373, %374
  br i1 %375, label %376, label %380, !dx.controlflow.hints !40

; <label>:376                                     ; preds = %372
  %377 = add nsw i32 %313, 1
  %378 = add nsw i32 %249, -1
  %379 = call i32 @dx.op.binary.i32(i32 38, i32 %377, i32 %378)  ; IMin(a,b)
  br label %402

; <label>:380                                     ; preds = %372
  %381 = fcmp fast olt float %234, %349
  %382 = fcmp fast olt float %362, %349
  %383 = and i1 %381, %382
  br i1 %383, label %384, label %392, !dx.controlflow.hints !41

; <label>:384                                     ; preds = %380
  %385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.f32 %385, 3
  %387 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %388 = fcmp fast une float %386, %387
  br i1 %388, label %389, label %396, !dx.controlflow.hints !42

; <label>:389                                     ; preds = %384
  %390 = fsub fast float %234, %353
  %391 = call float @dx.op.binary.f32(i32 36, float %360, float %390)  ; FMin(a,b)
  br label %396

; <label>:392                                     ; preds = %380
  %393 = add nsw i32 %313, -1
  %394 = icmp sgt i32 %313, 1
  br i1 %394, label %312, label %395

; <label>:395                                     ; preds = %392
  br label %396

; <label>:396                                     ; preds = %395, %389, %384, %309
  %397 = phi float [ %391, %389 ], [ %360, %384 ], [ 0.000000e+00, %309 ], [ 0.000000e+00, %395 ]
  %398 = phi i32 [ %313, %389 ], [ %313, %384 ], [ %237, %309 ], [ %393, %395 ]
  %399 = add nsw i32 %398, 1
  %400 = add nsw i32 %249, -1
  %401 = call i32 @dx.op.binary.i32(i32 38, i32 %399, i32 %400)  ; IMin(a,b)
  br label %402

; <label>:402                                     ; preds = %396, %376, %368, %307, %303, %253
  %403 = phi float [ %254, %253 ], [ %360, %368 ], [ %360, %376 ], [ %397, %396 ], [ 0x47EFFFFFE0000000, %307 ], [ %304, %303 ]
  %404 = phi i32 [ %128, %253 ], [ %128, %368 ], [ %128, %376 ], [ %128, %396 ], [ 0, %307 ], [ %128, %303 ]
  %405 = phi i32 [ %237, %253 ], [ %371, %368 ], [ %379, %376 ], [ %401, %396 ], [ %237, %307 ], [ %237, %303 ]
  %406 = icmp ne i32 %404, 0
  %407 = zext i1 %406 to i32
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 2
  %410 = call float @dx.op.binary.f32(i32 35, float %403, float %409)  ; FMax(a,b)
  %411 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %410)  ; FMin(a,b)
  br label %412

; <label>:412                                     ; preds = %402, %224
  %413 = phi float [ %411, %402 ], [ 0x47EFFFFFE0000000, %224 ]
  %414 = phi i32 [ %405, %402 ], [ %237, %224 ]
  %415 = phi i32 [ %407, %402 ], [ 0, %224 ]
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 0
  %418 = extractvalue %dx.types.CBufRet.f32 %416, 1
  %419 = fsub fast float %232, %417
  %420 = fsub fast float %233, %418
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 2
  %423 = extractvalue %dx.types.CBufRet.f32 %421, 3
  %424 = fmul fast float %419, %422
  %425 = fmul fast float %420, %423
  %426 = call float @dx.op.binary.f32(i32 36, float %424, float %425)  ; FMin(a,b)
  %427 = fcmp fast olt float %426, 0.000000e+00
  %428 = call float @dx.op.binary.f32(i32 35, float %424, float %425)  ; FMax(a,b)
  %429 = fcmp fast ogt float %428, 1.000000e+00
  %430 = or i1 %427, %429
  %431 = extractvalue %dx.types.CBufRet.f32 %416, 2
  %432 = fcmp fast olt float %234, %431
  %433 = or i1 %430, %432
  %434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %435 = extractvalue %dx.types.CBufRet.f32 %434, 3
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 0
  %438 = fadd fast float %437, %435
  %439 = fcmp fast ogt float %234, %438
  %440 = or i1 %433, %439
  br i1 %440, label %441, label %470, !dx.controlflow.hints !43

; <label>:441                                     ; preds = %412
  %442 = extractvalue %dx.types.CBufRet.f32 %421, 0
  %443 = extractvalue %dx.types.CBufRet.f32 %421, 1
  %444 = fsub fast float %417, %232
  %445 = fmul fast float %444, %199
  %446 = fadd fast float %444, %442
  %447 = fmul fast float %446, %199
  %448 = call float @dx.op.binary.f32(i32 36, float %445, float %447)  ; FMin(a,b)
  %449 = call float @dx.op.binary.f32(i32 35, float %445, float %447)  ; FMax(a,b)
  %450 = fsub fast float %418, %233
  %451 = fmul fast float %450, %200
  %452 = fadd fast float %450, %443
  %453 = fmul fast float %452, %200
  %454 = call float @dx.op.binary.f32(i32 36, float %451, float %453)  ; FMin(a,b)
  %455 = call float @dx.op.binary.f32(i32 35, float %448, float %454)  ; FMax(a,b)
  %456 = call float @dx.op.binary.f32(i32 35, float %451, float %453)  ; FMax(a,b)
  %457 = call float @dx.op.binary.f32(i32 36, float %449, float %456)  ; FMin(a,b)
  %458 = fsub fast float %431, %234
  %459 = fmul fast float %458, %201
  %460 = fsub fast float %435, %234
  %461 = fadd fast float %460, %437
  %462 = fmul fast float %461, %201
  %463 = call float @dx.op.binary.f32(i32 36, float %459, float %462)  ; FMin(a,b)
  %464 = call float @dx.op.binary.f32(i32 35, float %455, float %463)  ; FMax(a,b)
  %465 = call float @dx.op.binary.f32(i32 35, float %459, float %462)  ; FMax(a,b)
  %466 = call float @dx.op.binary.f32(i32 36, float %457, float %465)  ; FMin(a,b)
  %467 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %464)  ; FMax(a,b)
  %468 = fcmp fast oge float %466, %467
  %469 = select i1 %468, float %464, float 1.000000e+07
  br label %516

; <label>:470                                     ; preds = %412
  %471 = fsub fast float 1.000000e+00, %425
  %472 = icmp eq i32 %236, 0
  br i1 %472, label %501, label %473

; <label>:473                                     ; preds = %470
  br label %474

; <label>:474                                     ; preds = %497, %473
  %475 = phi i32 [ %498, %497 ], [ %236, %473 ]
  %476 = uitofp i32 %475 to float
  %477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %9, float %424, float %471, float undef, float undef, i32 0, i32 0, i32 undef, float %476)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = extractvalue %dx.types.ResRet.f32 %477, 1
  %480 = extractvalue %dx.types.ResRet.f32 %477, 2
  %481 = fcmp fast oeq float %478, 0.000000e+00
  %482 = fcmp ule float %234, %480
  %483 = fcmp uge float %234, %479
  %484 = or i1 %483, %482
  %485 = or i1 %481, %484
  br i1 %485, label %486, label %497, !dx.controlflow.hints !44

; <label>:486                                     ; preds = %474
  %487 = extractvalue %dx.types.ResRet.f32 %477, 3
  %488 = extractvalue %dx.types.CBufRet.f32 %421, 0
  %489 = and i32 %475, 31
  %490 = lshr i32 1024, %489
  %491 = uitofp i32 %490 to float
  %492 = fdiv fast float %488, %491
  %493 = add i32 %475, 1
  %494 = uitofp i32 %493 to float
  %495 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %494)  ; FMin(a,b)
  %496 = fptosi float %495 to i32
  br label %516

; <label>:497                                     ; preds = %474
  %498 = add i32 %475, -1
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %474, !llvm.loop !45

; <label>:500                                     ; preds = %497
  br label %501

; <label>:501                                     ; preds = %500, %470
  %502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %8, float %424, float %471, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = extractvalue %dx.types.ResRet.f32 %502, 1
  %505 = extractvalue %dx.types.ResRet.f32 %502, 2
  %506 = extractvalue %dx.types.ResRet.f32 %502, 3
  %507 = extractvalue %dx.types.CBufRet.f32 %421, 0
  %508 = fmul fast float %507, 9.765625e-04
  %509 = fcmp fast oeq float %503, 0.000000e+00
  %510 = fcmp ule float %234, %505
  %511 = fcmp uge float %234, %504
  %512 = or i1 %511, %510
  %513 = or i1 %509, %512
  %514 = zext i1 %513 to i32
  %515 = xor i32 %514, 1
  br label %516

; <label>:516                                     ; preds = %501, %486, %441
  %517 = phi float [ %469, %441 ], [ %492, %486 ], [ %508, %501 ]
  %518 = phi float [ %227, %441 ], [ %478, %486 ], [ %503, %501 ]
  %519 = phi float [ %228, %441 ], [ %479, %486 ], [ %504, %501 ]
  %520 = phi float [ %229, %441 ], [ %480, %486 ], [ %505, %501 ]
  %521 = phi float [ %230, %441 ], [ %487, %486 ], [ %506, %501 ]
  %522 = phi i32 [ 0, %441 ], [ 0, %486 ], [ %515, %501 ]
  %523 = phi i32 [ 10, %441 ], [ %496, %486 ], [ 1, %501 ]
  %524 = icmp eq i32 %522, 0
  %525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %526 = extractvalue %dx.types.CBufRet.f32 %525, 2
  %527 = call float @dx.op.binary.f32(i32 35, float %517, float %526)  ; FMax(a,b)
  %528 = call float @dx.op.binary.f32(i32 36, float %413, float %527)  ; FMin(a,b)
  %529 = icmp eq i32 %155, 0
  br i1 %529, label %542, label %530, !dx.controlflow.hints !47

; <label>:530                                     ; preds = %516
  %531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %532 = extractvalue %dx.types.CBufRet.f32 %531, 3
  %533 = extractvalue %dx.types.CBufRet.f32 %531, 2
  %534 = fmul fast float %532, %235
  %535 = fdiv fast float %534, %202
  %536 = fadd fast float %535, 1.000000e+00
  %537 = call float @dx.op.unary.f32(i32 23, float %536)  ; Log(value)
  %538 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %537)  ; FMin(a,b)
  %539 = fmul fast float %533, %202
  %540 = fmul fast float %539, %538
  %541 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %540)  ; FMin(a,b)
  br label %542

; <label>:542                                     ; preds = %530, %516
  %543 = phi float [ %541, %530 ], [ 0x47EFFFFFE0000000, %516 ]
  %544 = icmp eq i32 %196, 0
  br i1 %544, label %716, label %545, !dx.controlflow.hints !48

; <label>:545                                     ; preds = %542
  %546 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %547 = extractvalue %dx.types.CBufRet.i32 %546, 1
  %548 = and i32 %547, 1
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %707, !dx.controlflow.hints !49

; <label>:550                                     ; preds = %545
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 2
  %553 = extractvalue %dx.types.CBufRet.f32 %551, 3
  %554 = fmul fast float %552, %232
  %555 = fmul fast float %553, %233
  %556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.f32 %556, 0
  %558 = extractvalue %dx.types.CBufRet.f32 %556, 1
  %559 = fadd fast float %554, %557
  %560 = fadd fast float %555, %558
  %561 = call float @dx.op.unary.f32(i32 7, float %559)  ; Saturate(value)
  %562 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  %563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %561, float %562, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %564 = extractvalue %dx.types.ResRet.f32 %563, 0
  %565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.f32 %565, 0
  %567 = fmul fast float %566, %564
  %568 = fsub fast float %559, %561
  %569 = fsub fast float %560, %562
  %570 = extractvalue %dx.types.CBufRet.f32 %551, 0
  %571 = extractvalue %dx.types.CBufRet.f32 %551, 1
  %572 = fmul fast float %570, %568
  %573 = fmul fast float %571, %569
  %574 = fmul fast float %572, %572
  %575 = fmul fast float %573, %573
  %576 = fadd fast float %574, %575
  %577 = call float @dx.op.unary.f32(i32 24, float %576)  ; Sqrt(value)
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 3
  %580 = fmul fast float %579, %577
  %581 = call float @dx.op.unary.f32(i32 7, float %580)  ; Saturate(value)
  %582 = extractvalue %dx.types.CBufRet.f32 %578, 2
  %583 = fsub fast float %582, %567
  %584 = fmul fast float %583, %581
  %585 = extractvalue %dx.types.CBufRet.f32 %565, 1
  %586 = fsub fast float %234, %567
  %587 = fsub fast float %586, %585
  %588 = fsub fast float %587, %584
  %589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.f32 %589, 2
  %591 = fsub fast float %588, %590
  %592 = fcmp fast olt float %591, 0.000000e+00
  %593 = call float @dx.op.unary.f32(i32 6, float %591)  ; FAbs(value)
  %594 = extractvalue %dx.types.CBufRet.i32 %546, 0
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %649, label %596

; <label>:596                                     ; preds = %550
  br label %597

; <label>:597                                     ; preds = %636, %596
  %598 = phi i32 [ %642, %636 ], [ 1, %596 ]
  %599 = phi float [ %644, %636 ], [ 0x47EFFFFFE0000000, %596 ]
  %600 = phi i32 [ %645, %636 ], [ 0, %596 ]
  %601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %602 = extractvalue %dx.types.CBufRet.f32 %601, 1
  %603 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.i32 %603, 1
  %605 = and i32 %604, 8
  %606 = icmp eq i32 %605, 0
  %607 = fcmp fast ogt float %602, %588
  %608 = or i1 %607, %606
  %609 = add i32 %600, 171
  %610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 %609)  ; CBufferLoadLegacy(handle,regIndex)
  %611 = extractvalue %dx.types.CBufRet.f32 %610, 0
  %612 = extractvalue %dx.types.CBufRet.f32 %610, 1
  %613 = extractvalue %dx.types.CBufRet.f32 %610, 2
  br i1 %608, label %614, label %620, !dx.controlflow.hints !50

; <label>:614                                     ; preds = %597
  %615 = fsub fast float %611, %232
  %616 = fsub fast float %612, %233
  %617 = fmul fast float %615, %615
  %618 = fmul fast float %616, %616
  %619 = fadd fast float %617, %618
  br label %636

; <label>:620                                     ; preds = %597
  %621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.f32 %621, 2
  %623 = extractvalue %dx.types.CBufRet.f32 %601, 2
  %624 = fmul fast float %623, %622
  %625 = fsub fast float %624, %602
  %626 = fdiv fast float %613, %625
  %627 = fsub fast float %232, %611
  %628 = fsub fast float %233, %612
  %629 = fsub fast float %588, %602
  %630 = fmul fast float %626, %629
  %631 = fmul fast float %627, %627
  %632 = fmul fast float %628, %628
  %633 = fadd fast float %631, %632
  %634 = fmul fast float %630, %630
  %635 = fadd fast float %633, %634
  br label %636

; <label>:636                                     ; preds = %620, %614
  %637 = phi float [ %619, %614 ], [ %635, %620 ]
  %638 = call float @dx.op.unary.f32(i32 24, float %637)  ; Sqrt(value)
  %639 = fsub float %613, %638
  %640 = fcmp fast olt float %639, 0.000000e+00
  %641 = zext i1 %640 to i32
  %642 = and i32 %641, %598
  %643 = call float @dx.op.unary.f32(i32 6, float %639)  ; FAbs(value)
  %644 = call float @dx.op.binary.f32(i32 36, float %599, float %643)  ; FMin(a,b)
  %645 = add i32 %600, 1
  %646 = extractvalue %dx.types.CBufRet.i32 %603, 0
  %647 = icmp ult i32 %645, %646
  br i1 %647, label %597, label %648

; <label>:648                                     ; preds = %636
  br label %649

; <label>:649                                     ; preds = %648, %550
  %650 = phi i32 [ 1, %550 ], [ %642, %648 ]
  %651 = phi float [ 0x47EFFFFFE0000000, %550 ], [ %644, %648 ]
  br label %652

; <label>:652                                     ; preds = %652, %649
  %653 = phi i32 [ %650, %649 ], [ %692, %652 ]
  %654 = phi float [ 0x47EFFFFFE0000000, %649 ], [ %694, %652 ]
  %655 = phi i32 [ 0, %649 ], [ %695, %652 ]
  %656 = add nuw nsw i32 %655, 191
  %657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 %656)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.f32 %657, 0
  %659 = extractvalue %dx.types.CBufRet.f32 %657, 1
  %660 = extractvalue %dx.types.CBufRet.f32 %657, 2
  %661 = add nuw nsw i32 %655, 195
  %662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 %661)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.f32 %662, 0
  %664 = extractvalue %dx.types.CBufRet.f32 %662, 1
  %665 = extractvalue %dx.types.CBufRet.f32 %662, 2
  %666 = fsub fast float %232, %658
  %667 = fsub fast float %233, %659
  %668 = fsub fast float %588, %660
  %669 = call float @dx.op.unary.f32(i32 6, float %666)  ; FAbs(value)
  %670 = call float @dx.op.unary.f32(i32 6, float %667)  ; FAbs(value)
  %671 = call float @dx.op.unary.f32(i32 6, float %668)  ; FAbs(value)
  %672 = fsub fast float %669, %663
  %673 = fsub fast float %670, %664
  %674 = fsub fast float %671, %665
  %675 = call float @dx.op.binary.f32(i32 35, float %672, float 0.000000e+00)  ; FMax(a,b)
  %676 = call float @dx.op.binary.f32(i32 35, float %673, float 0.000000e+00)  ; FMax(a,b)
  %677 = call float @dx.op.binary.f32(i32 35, float %674, float 0.000000e+00)  ; FMax(a,b)
  %678 = fmul fast float %675, %675
  %679 = fmul fast float %676, %676
  %680 = fadd fast float %679, %678
  %681 = fmul fast float %677, %677
  %682 = fadd fast float %680, %681
  %683 = call float @dx.op.unary.f32(i32 24, float %682)  ; Sqrt(value)
  %684 = call float @dx.op.binary.f32(i32 35, float %673, float %674)  ; FMax(a,b)
  %685 = call float @dx.op.binary.f32(i32 35, float %672, float %684)  ; FMax(a,b)
  %686 = call float @dx.op.binary.f32(i32 36, float %685, float 0.000000e+00)  ; FMin(a,b)
  %687 = fadd fast float %686, %683
  %688 = fsub fast float -0.000000e+00, %687
  %689 = fcmp ogt float %687, -0.000000e+00
  %690 = icmp ne i32 %653, 0
  %691 = and i1 %690, %689
  %692 = zext i1 %691 to i32
  %693 = call float @dx.op.unary.f32(i32 6, float %688)  ; FAbs(value)
  %694 = call float @dx.op.binary.f32(i32 36, float %654, float %693)  ; FMin(a,b)
  %695 = add nuw nsw i32 %655, 1
  %696 = icmp eq i32 %695, 4
  br i1 %696, label %697, label %652

; <label>:697                                     ; preds = %652
  %698 = call float @dx.op.binary.f32(i32 36, float %593, float %694)  ; FMin(a,b)
  %699 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %700 = extractvalue %dx.types.CBufRet.i32 %699, 1
  %701 = and i32 %700, 2
  %702 = icmp ne i32 %701, 0
  %703 = xor i1 %691, %702
  %704 = call float @dx.op.binary.f32(i32 36, float %698, float %651)  ; FMin(a,b)
  %705 = and i1 %703, %592
  %706 = zext i1 %705 to i32
  br label %707

; <label>:707                                     ; preds = %697, %545
  %708 = phi i32 [ %225, %545 ], [ %706, %697 ]
  %709 = phi float [ 0.000000e+00, %545 ], [ %704, %697 ]
  %710 = phi float [ %234, %545 ], [ %588, %697 ]
  %711 = icmp ne i32 %708, 0
  %712 = extractvalue %dx.types.CBufRet.f32 %525, 3
  %713 = call float @dx.op.binary.f32(i32 35, float %709, float %712)  ; FMax(a,b)
  %714 = call float @dx.op.binary.f32(i32 36, float %543, float %713)  ; FMin(a,b)
  %715 = zext i1 %711 to i32
  br label %716

; <label>:716                                     ; preds = %707, %542
  %717 = phi i32 [ %708, %707 ], [ %225, %542 ]
  %718 = phi float [ %710, %707 ], [ %226, %542 ]
  %719 = phi float [ %714, %707 ], [ %543, %542 ]
  %720 = phi i32 [ %715, %707 ], [ 0, %542 ]
  %721 = extractvalue %dx.types.CBufRet.f32 %244, 2
  %722 = fmul fast float %721, %235
  %723 = call float @dx.op.unary.f32(i32 23, float %722)  ; Log(value)
  %724 = fmul fast float %723, 0x3FE62E4300000000
  %725 = call float @dx.op.binary.f32(i32 35, float %724, float 1.000000e+00)  ; FMax(a,b)
  %726 = fmul fast float %725, %719
  %727 = call float @dx.op.binary.f32(i32 36, float %726, float %528)  ; FMin(a,b)
  %728 = call float @dx.op.binary.f32(i32 35, float %727, float %245)  ; FMax(a,b)
  %729 = fsub fast float %202, %235
  %730 = fadd fast float %729, 0x3F1A36E2E0000000
  %731 = call float @dx.op.binary.f32(i32 36, float %730, float %728)  ; FMin(a,b)
  %732 = icmp eq i32 %415, 0
  br i1 %732, label %829, label %733, !dx.controlflow.hints !51

; <label>:733                                     ; preds = %716
  %734 = fcmp fast olt float %730, %728
  %735 = fmul fast float %30, %59
  %736 = fmul fast float %735, %731
  %737 = fadd fast float %736, %234
  %738 = fmul fast float %31, %59
  %739 = fmul fast float %738, %731
  %740 = fadd fast float %739, %234
  %741 = fmul fast float %32, %59
  %742 = fmul fast float %741, %731
  %743 = fadd fast float %742, %234
  br i1 %734, label %744, label %749, !dx.controlflow.hints !52

; <label>:744                                     ; preds = %733
  %745 = fmul fast float %731, %57
  %746 = fmul fast float %731, %58
  %747 = fadd fast float %745, %232
  %748 = fadd fast float %746, %233
  br label %749

; <label>:749                                     ; preds = %744, %733
  %750 = phi float [ %747, %744 ], [ %232, %733 ]
  %751 = phi float [ %748, %744 ], [ %233, %733 ]
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 0
  %754 = extractvalue %dx.types.CBufRet.f32 %752, 1
  %755 = fsub fast float %750, %753
  %756 = fsub fast float %751, %754
  %757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %758 = extractvalue %dx.types.CBufRet.f32 %757, 0
  %759 = extractvalue %dx.types.CBufRet.f32 %757, 1
  %760 = fmul fast float %755, %758
  %761 = fmul fast float %756, %759
  %762 = fsub fast float 1.000000e+00, %761
  %763 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.i32 %763, 3
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %772, label %766, !dx.controlflow.hints !38

; <label>:766                                     ; preds = %749
  %767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %760, float %762, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %768 = extractvalue %dx.types.ResRet.f32 %767, 0
  %769 = extractvalue %dx.types.ResRet.f32 %767, 1
  %770 = extractvalue %dx.types.ResRet.f32 %767, 2
  %771 = extractvalue %dx.types.ResRet.f32 %767, 3
  br label %778

; <label>:772                                     ; preds = %749
  %773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %8, float %760, float %762, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %774 = extractvalue %dx.types.ResRet.f32 %773, 0
  %775 = extractvalue %dx.types.ResRet.f32 %773, 1
  %776 = extractvalue %dx.types.ResRet.f32 %773, 2
  %777 = extractvalue %dx.types.ResRet.f32 %773, 3
  br label %778

; <label>:778                                     ; preds = %772, %766
  %779 = phi float [ %768, %766 ], [ %774, %772 ]
  %780 = phi float [ %769, %766 ], [ %775, %772 ]
  %781 = phi float [ %770, %766 ], [ %776, %772 ]
  %782 = phi float [ %771, %766 ], [ %777, %772 ]
  %783 = extractvalue %dx.types.CBufRet.f32 %757, 3
  %784 = fmul fast float %783, %780
  %785 = fmul fast float %784, %779
  %786 = fsub fast float %784, %785
  %787 = fcmp fast ole float %786, 0.000000e+00
  %788 = extractvalue %dx.types.CBufRet.f32 %752, 2
  %789 = fadd fast float %785, %788
  %790 = fmul fast float %783, %781
  %791 = fadd fast float %790, %788
  %792 = fdiv fast float 1.000000e+00, %786
  %793 = select i1 %787, float 1.000000e+06, float %792
  %794 = fsub fast float %737, %789
  %795 = fmul fast float %793, %794
  %796 = call float @dx.op.unary.f32(i32 7, float %795)  ; Saturate(value)
  %797 = extractvalue %dx.types.CBufRet.f32 %757, 2
  %798 = fmul fast float %797, %796
  %799 = fsub fast float %797, %798
  %800 = fcmp fast olt float %737, %791
  %801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %802 = extractvalue %dx.types.CBufRet.f32 %801, 3
  %803 = select i1 %800, float %802, float 1.000000e+00
  %804 = fmul fast float %799, %803
  %805 = fsub fast float %740, %789
  %806 = fmul fast float %793, %805
  %807 = call float @dx.op.unary.f32(i32 7, float %806)  ; Saturate(value)
  %808 = fmul fast float %797, %807
  %809 = fsub fast float %797, %808
  %810 = fcmp fast olt float %740, %791
  %811 = select i1 %810, float %802, float 1.000000e+00
  %812 = fmul fast float %809, %811
  %813 = fadd fast float %812, %804
  %814 = fsub fast float %743, %789
  %815 = fmul fast float %793, %814
  %816 = call float @dx.op.unary.f32(i32 7, float %815)  ; Saturate(value)
  %817 = fmul fast float %797, %816
  %818 = fsub fast float %797, %817
  %819 = fcmp fast olt float %743, %791
  %820 = select i1 %819, float %802, float 1.000000e+00
  %821 = fmul fast float %818, %820
  %822 = fadd fast float %813, %821
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 2
  %825 = fmul fast float %731, 0x3FD5555560000000
  %826 = fmul fast float %825, %782
  %827 = fmul fast float %826, %824
  %828 = fmul fast float %827, %822
  br label %829

; <label>:829                                     ; preds = %778, %716
  %830 = phi float [ %828, %778 ], [ 0.000000e+00, %716 ]
  br i1 %529, label %877, label %831, !dx.controlflow.hints !53

; <label>:831                                     ; preds = %829
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 0
  %834 = fsub fast float %833, %234
  %835 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %243, float %242, float %834)  ; Dot3(ax,ay,az,bx,by,bz)
  %836 = fmul fast float %137, %835
  %837 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %836)  ; FMax(a,b)
  %838 = fcmp ogt float %56, -0.000000e+00
  %839 = call float @dx.op.binary.f32(i32 36, float %731, float %837)  ; FMin(a,b)
  br i1 %838, label %841, label %840, !dx.controlflow.hints !54

; <label>:840                                     ; preds = %831
  br label %841

; <label>:841                                     ; preds = %840, %831
  %842 = phi float [ 0.000000e+00, %840 ], [ %839, %831 ]
  %843 = phi float [ %839, %840 ], [ %731, %831 ]
  %844 = phi float [ %839, %840 ], [ 0.000000e+00, %831 ]
  %845 = phi float [ %731, %840 ], [ %839, %831 ]
  %846 = fsub fast float %843, %842
  %847 = extractvalue %dx.types.CBufRet.f32 %832, 1
  %848 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %847)  ; FMin(a,b)
  %849 = fsub fast float %234, %833
  %850 = fmul fast float %848, 0x3FF7154760000000
  %851 = fmul fast float %850, %849
  %852 = call float @dx.op.unary.f32(i32 21, float %851)  ; Exp(value)
  %853 = fmul fast float %56, 0xBFF7154760000000
  %854 = fmul fast float %853, %845
  %855 = fmul fast float %854, %848
  %856 = call float @dx.op.unary.f32(i32 21, float %855)  ; Exp(value)
  %857 = fmul fast float %853, %844
  %858 = fmul fast float %857, %848
  %859 = call float @dx.op.unary.f32(i32 21, float %858)  ; Exp(value)
  %860 = fsub fast float %856, %859
  %861 = fmul fast float %860, %852
  %862 = fmul fast float %848, %59
  %863 = fdiv fast float %861, %862
  %864 = fadd fast float %846, %863
  %865 = call float @dx.op.unary.f32(i32 6, float %59)  ; FAbs(value)
  %866 = fcmp fast olt float %865, 0x3F0FFB4800000000
  %867 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %849)  ; FMax(a,b)
  %868 = fmul fast float %867, 0x3FF7154760000000
  %869 = fmul fast float %868, %847
  %870 = call float @dx.op.unary.f32(i32 21, float %869)  ; Exp(value)
  %871 = fmul fast float %870, %731
  %872 = select i1 %866, float %871, float %864
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 1
  %875 = fmul fast float %872, %874
  %876 = fadd fast float %875, %830
  br label %877

; <label>:877                                     ; preds = %841, %829
  %878 = phi float [ %876, %841 ], [ %830, %829 ]
  br i1 %524, label %1004, label %879, !dx.controlflow.hints !55

; <label>:879                                     ; preds = %877
  %880 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %881 = extractvalue %dx.types.CBufRet.i32 %880, 0
  %882 = icmp ne i32 %881, 0
  %883 = zext i1 %882 to i32
  %884 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.i32 %884, 0
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %920, label %887

; <label>:887                                     ; preds = %879
  br label %888

; <label>:888                                     ; preds = %915, %887
  %889 = phi i32 [ %916, %915 ], [ 0, %887 ]
  %890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %889, i32 0)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.f32 %890, 0
  %892 = extractvalue %dx.types.ResRet.f32 %890, 1
  %893 = extractvalue %dx.types.ResRet.f32 %890, 2
  %894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %889, i32 16)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.f32 %894, 0
  %896 = extractvalue %dx.types.ResRet.f32 %894, 1
  %897 = extractvalue %dx.types.ResRet.f32 %894, 2
  %898 = fsub fast float %891, %895
  %899 = fsub fast float %892, %896
  %900 = fsub fast float %893, %897
  %901 = fadd fast float %895, %891
  %902 = fadd fast float %896, %892
  %903 = fadd fast float %897, %893
  %904 = fcmp fast olt float %232, %898
  %905 = fcmp fast olt float %233, %899
  %906 = fcmp fast olt float %234, %900
  %907 = or i1 %904, %905
  %908 = or i1 %906, %907
  %909 = fcmp fast ogt float %232, %901
  %910 = fcmp fast ogt float %233, %902
  %911 = fcmp fast ogt float %234, %903
  %912 = or i1 %909, %910
  %913 = or i1 %911, %912
  %914 = or i1 %908, %913
  br i1 %914, label %915, label %918, !dx.controlflow.hints !56

; <label>:915                                     ; preds = %888
  %916 = add nuw i32 %889, 1
  %917 = icmp ult i32 %916, %885
  br i1 %917, label %888, label %918

; <label>:918                                     ; preds = %915, %888
  %919 = phi i32 [ 255, %915 ], [ %889, %888 ]
  br label %920

; <label>:920                                     ; preds = %918, %879
  %921 = phi i32 [ 255, %879 ], [ %919, %918 ]
  %922 = icmp eq i32 %921, 255
  br i1 %922, label %928, label %923, !dx.controlflow.hints !57

; <label>:923                                     ; preds = %920
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %921, i32 156)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 0
  %926 = icmp ne i32 %925, 0
  %927 = zext i1 %926 to i32
  br label %928

; <label>:928                                     ; preds = %923, %920
  %929 = phi i32 [ %927, %923 ], [ %883, %920 ]
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %931, label %1000, !dx.controlflow.hints !58

; <label>:931                                     ; preds = %928
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 3
  %934 = extractvalue %dx.types.CBufRet.f32 %434, 0
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 2
  %937 = extractvalue %dx.types.CBufRet.f32 %935, 3
  br i1 %922, label %948, label %938, !dx.controlflow.hints !59

; <label>:938                                     ; preds = %931
  %939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %921, i32 60)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.f32 %939, 0
  %941 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %921, i32 64)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.f32 %941, 0
  %943 = extractvalue %dx.types.ResRet.f32 %941, 1
  %944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %921, i32 72)  ; BufferLoad(srv,index,wot)
  %945 = extractvalue %dx.types.ResRet.f32 %944, 0
  %946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %921, i32 96)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.f32 %946, 0
  br label %948

; <label>:948                                     ; preds = %938, %931
  %949 = phi float [ %942, %938 ], [ %936, %931 ]
  %950 = phi float [ %943, %938 ], [ %937, %931 ]
  %951 = phi float [ %947, %938 ], [ %934, %931 ]
  %952 = phi float [ %945, %938 ], [ %435, %931 ]
  %953 = phi float [ %940, %938 ], [ %437, %931 ]
  %954 = call float @dx.op.binary.f32(i32 35, float %518, float 0.000000e+00)  ; FMax(a,b)
  %955 = call float @dx.op.binary.f32(i32 36, float %954, float 1.000000e+00)  ; FMin(a,b)
  %956 = call float @dx.op.unary.f32(i32 24, float %955)  ; Sqrt(value)
  %957 = call float @dx.op.binary.f32(i32 35, float %521, float 0x3F847AE140000000)  ; FMax(a,b)
  %958 = fsub fast float %519, %234
  %959 = fsub fast float %234, %520
  %960 = call float @dx.op.binary.f32(i32 36, float %959, float %958)  ; FMin(a,b)
  %961 = fdiv fast float %960, %957
  %962 = call float @dx.op.unary.f32(i32 7, float %961)  ; Saturate(value)
  %963 = fsub fast float %234, %952
  %964 = fdiv fast float %963, %953
  %965 = call float @dx.op.unary.f32(i32 7, float %964)  ; Saturate(value)
  %966 = fsub fast float 1.000000e+00, %965
  %967 = fmul float %962, %966
  %968 = fmul float %967, %967
  %969 = fmul fast float %956, %933
  %970 = fmul fast float %969, %968
  %971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.f32 %971, 2
  %973 = extractvalue %dx.types.CBufRet.f32 %971, 1
  %974 = fsub fast float %970, %973
  %975 = fsub fast float %972, %973
  %976 = fdiv fast float %974, %975
  %977 = call float @dx.op.unary.f32(i32 7, float %976)  ; Saturate(value)
  %978 = fmul fast float %977, %951
  %979 = fcmp fast ogt float %950, 0.000000e+00
  br i1 %979, label %980, label %1000, !dx.controlflow.hints !60

; <label>:980                                     ; preds = %948
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 0
  %983 = extractvalue %dx.types.CBufRet.f32 %981, 1
  %984 = extractvalue %dx.types.CBufRet.f32 %981, 2
  %985 = fsub fast float %232, %982
  %986 = fsub fast float %233, %983
  %987 = fsub fast float %234, %984
  %988 = fmul fast float %985, %985
  %989 = fmul fast float %986, %986
  %990 = fadd fast float %988, %989
  %991 = fmul fast float %987, %987
  %992 = fadd fast float %990, %991
  %993 = call float @dx.op.unary.f32(i32 24, float %992)  ; Sqrt(value)
  %994 = fsub fast float %993, %949
  %995 = fsub fast float %950, %949
  %996 = fdiv fast float %994, %995
  %997 = call float @dx.op.unary.f32(i32 7, float %996)  ; Saturate(value)
  %998 = fmul fast float %997, %997
  %999 = fmul fast float %998, %978
  br label %1000

; <label>:1000                                    ; preds = %980, %948, %928
  %1001 = phi float [ 0.000000e+00, %928 ], [ %999, %980 ], [ %978, %948 ]
  %1002 = fmul fast float %1001, %731
  %1003 = fadd fast float %1002, %878
  br label %1004

; <label>:1004                                    ; preds = %1000, %877
  %1005 = phi float [ %1003, %1000 ], [ %878, %877 ]
  %1006 = icmp eq i32 %720, 0
  br i1 %1006, label %1038, label %1007, !dx.controlflow.hints !61

; <label>:1007                                    ; preds = %1004
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 1
  %1010 = fsub fast float %731, %1009
  %1011 = extractvalue %dx.types.CBufRet.f32 %1008, 3
  %1012 = fmul fast float %1010, %1011
  %1013 = call float @dx.op.unary.f32(i32 7, float %1012)  ; Saturate(value)
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 3
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 2
  %1018 = fsub fast float %1017, %718
  %1019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1020 = extractvalue %dx.types.CBufRet.f32 %1019, 3
  %1021 = fmul fast float %1018, %1020
  %1022 = call float @dx.op.unary.f32(i32 7, float %1021)  ; Saturate(value)
  %1023 = fmul fast float %1022, %1015
  %1024 = extractvalue %dx.types.CBufRet.f32 %1019, 0
  %1025 = fsub fast float %235, %1024
  %1026 = extractvalue %dx.types.CBufRet.f32 %1019, 1
  %1027 = fmul fast float %1025, %1026
  %1028 = call float @dx.op.unary.f32(i32 7, float %1027)  ; Saturate(value)
  %1029 = fsub fast float 1.000000e+00, %1013
  %1030 = fmul fast float %1028, %1029
  %1031 = fadd fast float %1030, %1013
  %1032 = extractvalue %dx.types.CBufRet.f32 %1008, 0
  %1033 = fsub fast float %1023, %1032
  %1034 = fmul fast float %1033, %1031
  %1035 = fadd fast float %1034, %1032
  %1036 = fmul fast float %1035, %731
  %1037 = fadd fast float %1036, %1005
  br label %1038

; <label>:1038                                    ; preds = %1007, %1004
  %1039 = phi float [ %1037, %1007 ], [ %1005, %1004 ]
  %1040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1041 = extractvalue %dx.types.CBufRet.f32 %1040, 1
  %1042 = fcmp fast ogt float %1039, %1041
  br i1 %1042, label %1043, label %1055, !dx.controlflow.hints !62

; <label>:1043                                    ; preds = %1038
  %1044 = fmul fast float %1039, 0xBFF7154760000000
  %1045 = call float @dx.op.unary.f32(i32 21, float %1044)  ; Exp(value)
  %1046 = call float @dx.op.unary.f32(i32 7, float %1045)  ; Saturate(value)
  %1047 = icmp eq i32 %238, 0
  br i1 %1047, label %1048, label %1049, !dx.controlflow.hints !63

; <label>:1048                                    ; preds = %1043
  br label %1049

; <label>:1049                                    ; preds = %1048, %1043
  %1050 = phi i32 [ %238, %1043 ], [ 1, %1048 ]
  %1051 = phi float [ %239, %1043 ], [ %235, %1048 ]
  %1052 = fadd fast float %731, %240
  %1053 = fadd fast float %1039, %241
  %1054 = fmul fast float %1046, %231
  br label %1055

; <label>:1055                                    ; preds = %1049, %1038
  %1056 = phi float [ %1054, %1049 ], [ %231, %1038 ]
  %1057 = phi i32 [ %1050, %1049 ], [ %238, %1038 ]
  %1058 = phi float [ %1051, %1049 ], [ %239, %1038 ]
  %1059 = phi float [ %1052, %1049 ], [ %240, %1038 ]
  %1060 = phi float [ %1053, %1049 ], [ %241, %1038 ]
  %1061 = fadd fast float %731, %235
  %1062 = fmul fast float %731, %57
  %1063 = fmul fast float %731, %58
  %1064 = fmul fast float %731, %59
  %1065 = fadd fast float %1062, %232
  %1066 = fadd fast float %1063, %233
  %1067 = fadd fast float %1064, %234
  %1068 = fcmp fast olt float %1061, %202
  %1069 = extractvalue %dx.types.CBufRet.f32 %1040, 2
  %1070 = fcmp fast olt float %1069, %1056
  %1071 = and i1 %1068, %1070
  br i1 %1071, label %224, label %1072

; <label>:1072                                    ; preds = %1055
  br label %1073

; <label>:1073                                    ; preds = %1072, %195
  %1074 = phi float [ 0.000000e+00, %195 ], [ %1058, %1072 ]
  %1075 = phi float [ 0.000000e+00, %195 ], [ %1059, %1072 ]
  %1076 = phi float [ 0.000000e+00, %195 ], [ %1060, %1072 ]
  %1077 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %1078 = fmul fast float %1077, %1074
  %1079 = fdiv fast float 1.000000e+00, %1075
  %1080 = fmul fast float %1079, %1076
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 undef, float %1078, float %1080, float %1076, float %1078, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!22 = !{void ()* @cs_fog_raymarching_air_heightmap_particles_brfog, !"cs_fog_raymarching_air_heightmap_particles_brfog", null, !4, !23}
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
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}

