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
; shader hash: 335030597745ea9b4cc2afdf2ddc479e
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
;                                   texture     f32          2d      T1            t18     1
;                                   texture  struct         r/o      T2            t25     1
;                                   texture     f32          2d      T3            t13     1
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

define void @cs_fog_raymarching_air_heightmap_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %13 = uitofp i32 %11 to float
  %14 = uitofp i32 %12 to float
  %15 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.f32 %15, 2
  %17 = fmul fast float %16, 0x3FE3C6EF40000000
  %18 = frem fast float %13, 2.560000e+02
  %19 = frem fast float %14, 2.560000e+02
  %20 = fptoui float %18 to i32
  %21 = fptoui float %19 to i32
  %22 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %20, i32 %21, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %23 = extractvalue %dx.types.ResRet.f32 %22, 0
  %24 = extractvalue %dx.types.ResRet.f32 %22, 1
  %25 = extractvalue %dx.types.ResRet.f32 %22, 2
  %26 = fadd fast float %23, %17
  %27 = fadd fast float %24, %17
  %28 = fadd fast float %25, %17
  %29 = call float @dx.op.unary.f32(i32 22, float %26)  ; Frc(value)
  %30 = call float @dx.op.unary.f32(i32 22, float %27)  ; Frc(value)
  %31 = call float @dx.op.unary.f32(i32 22, float %28)  ; Frc(value)
  %32 = fadd fast float %13, 5.000000e-01
  %33 = fadd fast float %14, 5.000000e-01
  %34 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.f32 %34, 2
  %36 = extractvalue %dx.types.CBufRet.f32 %34, 3
  %37 = fmul fast float %35, %32
  %38 = fmul fast float %36, %33
  %39 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.f32 %39, 0
  %41 = extractvalue %dx.types.CBufRet.f32 %39, 1
  %42 = extractvalue %dx.types.CBufRet.f32 %39, 2
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 0
  %45 = extractvalue %dx.types.CBufRet.f32 %43, 1
  %46 = fmul fast float %37, %44
  %47 = fmul fast float %38, %45
  %48 = fadd fast float %46, %40
  %49 = fadd fast float %47, %41
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 0
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %55 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %56 = fsub fast float -0.000000e+00, %53
  %57 = fsub fast float -0.000000e+00, %54
  %58 = fsub fast float -0.000000e+00, %55
  %59 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.i32 %59, 3
  %61 = icmp eq i32 %60, 0
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %66 = fsub fast float %63, %42
  %67 = fadd fast float %66, %65
  %68 = fsub fast float 0xC7EFFFFFE0000000, %42
  br i1 %61, label %80, label %69, !dx.controlflow.hints !24

; <label>:69                                      ; preds = %0
  %70 = fsub fast float -0.000000e+00, %49
  %71 = fsub fast float -0.000000e+00, %48
  %72 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %71, float %70, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %73 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %74 = fdiv fast float 1.000000e+00, %73
  %75 = fmul fast float %74, %72
  %76 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %71, float %70, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %77 = fmul fast float %74, %76
  %78 = call float @dx.op.binary.f32(i32 36, float %75, float %77)  ; FMin(a,b)
  %79 = call float @dx.op.binary.f32(i32 35, float %75, float %77)  ; FMax(a,b)
  br label %113

; <label>:80                                      ; preds = %0
  %81 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %83 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %85 = fdiv fast float 1.000000e+00, %56
  %86 = fdiv fast float 1.000000e+00, %57
  %87 = fdiv fast float 1.000000e+00, %58
  %88 = fsub fast float %81, %48
  %89 = fmul fast float %85, %88
  %90 = fadd fast float %88, %83
  %91 = fmul fast float %90, %85
  %92 = call float @dx.op.binary.f32(i32 36, float %89, float %91)  ; FMin(a,b)
  %93 = call float @dx.op.binary.f32(i32 35, float %89, float %91)  ; FMax(a,b)
  %94 = fsub fast float %82, %49
  %95 = fmul fast float %86, %94
  %96 = fadd fast float %94, %84
  %97 = fmul fast float %96, %86
  %98 = call float @dx.op.binary.f32(i32 36, float %95, float %97)  ; FMin(a,b)
  %99 = call float @dx.op.binary.f32(i32 35, float %92, float %98)  ; FMax(a,b)
  %100 = call float @dx.op.binary.f32(i32 35, float %95, float %97)  ; FMax(a,b)
  %101 = call float @dx.op.binary.f32(i32 36, float %93, float %100)  ; FMin(a,b)
  %102 = fmul fast float %87, %68
  %103 = fmul fast float %87, %67
  %104 = call float @dx.op.binary.f32(i32 36, float %102, float %103)  ; FMin(a,b)
  %105 = call float @dx.op.binary.f32(i32 35, float %99, float %104)  ; FMax(a,b)
  %106 = call float @dx.op.binary.f32(i32 35, float %102, float %103)  ; FMax(a,b)
  %107 = call float @dx.op.binary.f32(i32 36, float %101, float %106)  ; FMin(a,b)
  %108 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %105)  ; FMax(a,b)
  %109 = fcmp fast ult float %107, %108
  br i1 %109, label %113, label %110, !dx.controlflow.hints !25

; <label>:110                                     ; preds = %80
  %111 = call float @dx.op.binary.f32(i32 36, float %105, float %107)  ; FMin(a,b)
  %112 = call float @dx.op.binary.f32(i32 35, float %105, float %107)  ; FMax(a,b)
  br label %113

; <label>:113                                     ; preds = %110, %80, %69
  %114 = phi float [ %78, %69 ], [ %111, %110 ], [ 0.000000e+00, %80 ]
  %115 = phi float [ %79, %69 ], [ %112, %110 ], [ 0.000000e+00, %80 ]
  %116 = fcmp fast oeq float %115, 0.000000e+00
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %119 = fcmp fast olt float %115, %118
  %120 = or i1 %116, %119
  br i1 %120, label %125, label %121, !dx.controlflow.hints !26

; <label>:121                                     ; preds = %113
  %122 = call float @dx.op.binary.f32(i32 35, float %118, float %114)  ; FMax(a,b)
  %123 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %122)  ; FMin(a,b)
  %124 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %115)  ; FMax(a,b)
  br label %125

; <label>:125                                     ; preds = %121, %113
  %126 = phi float [ %124, %121 ], [ -1.000000e+00, %113 ]
  %127 = phi i32 [ 1, %121 ], [ 0, %113 ]
  %128 = phi float [ %123, %121 ], [ 0x47EFFFFFE0000000, %113 ]
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 3
  %131 = fsub fast float -0.000000e+00, %48
  %132 = fsub fast float -0.000000e+00, %49
  %133 = fsub fast float %130, %42
  %134 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %135 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %136 = fdiv fast float 1.000000e+00, %135
  %137 = fmul fast float %136, %134
  %138 = fcmp fast olt float %137, 0.000000e+00
  %139 = fcmp olt float %55, -0.000000e+00
  %140 = and i1 %139, %138
  br i1 %140, label %145, label %141, !dx.controlflow.hints !27

; <label>:141                                     ; preds = %125
  %142 = fcmp ogt float %55, -0.000000e+00
  br i1 %142, label %143, label %145, !dx.controlflow.hints !28

; <label>:143                                     ; preds = %141
  %144 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %137)  ; FMax(a,b)
  br label %145

; <label>:145                                     ; preds = %143, %141, %125
  %146 = phi float [ 0.000000e+00, %125 ], [ %144, %143 ], [ 0.000000e+00, %141 ]
  %147 = phi float [ 0.000000e+00, %125 ], [ 0x47EFFFFFE0000000, %143 ], [ %137, %141 ]
  %148 = fcmp fast oeq float %147, 0.000000e+00
  br i1 %148, label %152, label %149, !dx.controlflow.hints !29

; <label>:149                                     ; preds = %145
  %150 = call float @dx.op.binary.f32(i32 36, float %128, float %146)  ; FMin(a,b)
  %151 = call float @dx.op.binary.f32(i32 35, float %126, float %147)  ; FMax(a,b)
  br label %152

; <label>:152                                     ; preds = %149, %145
  %153 = phi float [ %151, %149 ], [ %126, %145 ]
  %154 = phi i32 [ 1, %149 ], [ 0, %145 ]
  %155 = phi float [ %150, %149 ], [ %128, %145 ]
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 3
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = fsub fast float %157, %42
  %161 = fadd fast float %160, %159
  %162 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %131, float %132, float %161)  ; Dot3(ax,ay,az,bx,by,bz)
  %163 = fmul fast float %136, %162
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %166 = fsub fast float %165, %42
  %167 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %131, float %132, float %166)  ; Dot3(ax,ay,az,bx,by,bz)
  %168 = fmul fast float %136, %167
  %169 = call float @dx.op.binary.f32(i32 36, float %163, float %168)  ; FMin(a,b)
  %170 = call float @dx.op.binary.f32(i32 35, float %163, float %168)  ; FMax(a,b)
  %171 = call float @dx.op.binary.f32(i32 36, float %155, float %169)  ; FMin(a,b)
  %172 = call float @dx.op.binary.f32(i32 35, float %153, float %170)  ; FMax(a,b)
  %173 = fdiv fast float 1.000000e+00, %56
  %174 = fdiv fast float 1.000000e+00, %57
  %175 = fdiv fast float 1.000000e+00, %58
  %176 = call float @dx.op.binary.f32(i32 36, float %51, float %172)  ; FMin(a,b)
  %177 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %171)  ; FMax(a,b)
  %178 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %179 = fmul fast float %30, 2.000000e+00
  %180 = fadd fast float %179, -1.000000e+00
  %181 = fmul fast float %178, %180
  %182 = fadd fast float %181, %177
  %183 = fcmp fast olt float %182, %176
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %186 = fcmp fast olt float %185, 1.000000e+00
  %187 = and i1 %183, %186
  br i1 %187, label %188, label %834

; <label>:188                                     ; preds = %152
  %189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.i32 %189, 1
  %191 = add i32 %190, -1
  %192 = fmul fast float %182, %58
  %193 = fadd fast float %192, %42
  %194 = fmul fast float %182, %57
  %195 = fadd fast float %194, %49
  %196 = fmul fast float %182, %56
  %197 = fadd fast float %196, %48
  br label %198

; <label>:198                                     ; preds = %816, %188
  %199 = phi float [ %490, %816 ], [ undef, %188 ]
  %200 = phi float [ %491, %816 ], [ undef, %188 ]
  %201 = phi float [ %492, %816 ], [ undef, %188 ]
  %202 = phi float [ %493, %816 ], [ undef, %188 ]
  %203 = phi float [ %817, %816 ], [ 1.000000e+00, %188 ]
  %204 = phi float [ %826, %816 ], [ %197, %188 ]
  %205 = phi float [ %827, %816 ], [ %195, %188 ]
  %206 = phi float [ %828, %816 ], [ %193, %188 ]
  %207 = phi float [ %822, %816 ], [ %182, %188 ]
  %208 = phi i32 [ %495, %816 ], [ 10, %188 ]
  %209 = phi i32 [ %386, %816 ], [ %191, %188 ]
  %210 = phi i32 [ %818, %816 ], [ 0, %188 ]
  %211 = phi float [ %819, %816 ], [ 0.000000e+00, %188 ]
  %212 = phi float [ %820, %816 ], [ 0.000000e+00, %188 ]
  %213 = phi float [ %821, %816 ], [ 0.000000e+00, %188 ]
  %214 = fsub fast float -0.000000e+00, %205
  %215 = fsub fast float -0.000000e+00, %204
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 1
  %218 = icmp eq i32 %127, 0
  br i1 %218, label %384, label %219, !dx.controlflow.hints !30

; <label>:219                                     ; preds = %198
  %220 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.i32 %220, 1
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 1
  %224 = fcmp fast ogt float %223, %207
  br i1 %224, label %225, label %227, !dx.controlflow.hints !31

; <label>:225                                     ; preds = %219
  %226 = fsub fast float %223, %207
  br label %374

; <label>:227                                     ; preds = %219
  %228 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.i32 %228, 3
  %230 = icmp eq i32 %229, 0
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %235 = fsub fast float %232, %206
  %236 = fadd fast float %235, %234
  %237 = fsub fast float 0xC7EFFFFFE0000000, %206
  br i1 %230, label %245, label %238, !dx.controlflow.hints !24

; <label>:238                                     ; preds = %227
  %239 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %215, float %214, float %236)  ; Dot3(ax,ay,az,bx,by,bz)
  %240 = fmul fast float %136, %239
  %241 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %215, float %214, float %237)  ; Dot3(ax,ay,az,bx,by,bz)
  %242 = fmul fast float %136, %241
  %243 = call float @dx.op.binary.f32(i32 36, float %240, float %242)  ; FMin(a,b)
  %244 = call float @dx.op.binary.f32(i32 35, float %240, float %242)  ; FMax(a,b)
  br label %275

; <label>:245                                     ; preds = %227
  %246 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %247 = extractvalue %dx.types.CBufRet.f32 %231, 1
  %248 = extractvalue %dx.types.CBufRet.f32 %233, 0
  %249 = extractvalue %dx.types.CBufRet.f32 %233, 1
  %250 = fsub fast float %246, %204
  %251 = fmul fast float %173, %250
  %252 = fadd fast float %250, %248
  %253 = fmul fast float %252, %173
  %254 = call float @dx.op.binary.f32(i32 36, float %251, float %253)  ; FMin(a,b)
  %255 = call float @dx.op.binary.f32(i32 35, float %251, float %253)  ; FMax(a,b)
  %256 = fsub fast float %247, %205
  %257 = fmul fast float %174, %256
  %258 = fadd fast float %256, %249
  %259 = fmul fast float %258, %174
  %260 = call float @dx.op.binary.f32(i32 36, float %257, float %259)  ; FMin(a,b)
  %261 = call float @dx.op.binary.f32(i32 35, float %254, float %260)  ; FMax(a,b)
  %262 = call float @dx.op.binary.f32(i32 35, float %257, float %259)  ; FMax(a,b)
  %263 = call float @dx.op.binary.f32(i32 36, float %255, float %262)  ; FMin(a,b)
  %264 = fmul fast float %175, %237
  %265 = fmul fast float %175, %236
  %266 = call float @dx.op.binary.f32(i32 36, float %264, float %265)  ; FMin(a,b)
  %267 = call float @dx.op.binary.f32(i32 35, float %261, float %266)  ; FMax(a,b)
  %268 = call float @dx.op.binary.f32(i32 35, float %264, float %265)  ; FMax(a,b)
  %269 = call float @dx.op.binary.f32(i32 36, float %263, float %268)  ; FMin(a,b)
  %270 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %267)  ; FMax(a,b)
  %271 = fcmp fast ult float %269, %270
  br i1 %271, label %275, label %272, !dx.controlflow.hints !25

; <label>:272                                     ; preds = %245
  %273 = call float @dx.op.binary.f32(i32 36, float %267, float %269)  ; FMin(a,b)
  %274 = call float @dx.op.binary.f32(i32 35, float %267, float %269)  ; FMax(a,b)
  br label %275

; <label>:275                                     ; preds = %272, %245, %238
  %276 = phi float [ %243, %238 ], [ %273, %272 ], [ 0.000000e+00, %245 ]
  %277 = phi float [ %244, %238 ], [ %274, %272 ], [ 0.000000e+00, %245 ]
  %278 = fcmp fast ogt float %276, 0.000000e+00
  br i1 %278, label %374, label %279, !dx.controlflow.hints !32

; <label>:279                                     ; preds = %275
  %280 = fcmp fast ugt float %277, 0.000000e+00
  br i1 %280, label %281, label %374, !dx.controlflow.hints !33

; <label>:281                                     ; preds = %279
  %282 = icmp sgt i32 %209, 0
  br i1 %282, label %283, label %368

; <label>:283                                     ; preds = %281
  br label %284

; <label>:284                                     ; preds = %364, %283
  %285 = phi i32 [ %365, %364 ], [ %209, %283 ]
  %286 = sitofp i32 %285 to float
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 0
  %289 = extractvalue %dx.types.CBufRet.f32 %287, 1
  %290 = fsub fast float %204, %288
  %291 = fsub fast float %205, %289
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 0
  %294 = extractvalue %dx.types.CBufRet.f32 %292, 1
  %295 = fmul fast float %290, %293
  %296 = fmul fast float %291, %294
  %297 = fsub fast float 1.000000e+00, %296
  %298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.i32 %298, 3
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %307, label %301, !dx.controlflow.hints !34

; <label>:301                                     ; preds = %284
  %302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %295, float %297, float undef, float undef, i32 0, i32 0, i32 undef, float %286)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %303 = extractvalue %dx.types.ResRet.f32 %302, 0
  %304 = extractvalue %dx.types.ResRet.f32 %302, 1
  %305 = extractvalue %dx.types.ResRet.f32 %302, 2
  %306 = extractvalue %dx.types.ResRet.f32 %302, 3
  br label %313

; <label>:307                                     ; preds = %284
  %308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %7, float %295, float %297, float undef, float undef, i32 0, i32 0, i32 undef, float %286)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %309 = extractvalue %dx.types.ResRet.f32 %308, 0
  %310 = extractvalue %dx.types.ResRet.f32 %308, 1
  %311 = extractvalue %dx.types.ResRet.f32 %308, 2
  %312 = extractvalue %dx.types.ResRet.f32 %308, 3
  br label %313

; <label>:313                                     ; preds = %307, %301
  %314 = phi float [ %303, %301 ], [ %309, %307 ]
  %315 = phi float [ %304, %301 ], [ %310, %307 ]
  %316 = phi float [ %305, %301 ], [ %311, %307 ]
  %317 = phi float [ %306, %301 ], [ %312, %307 ]
  %318 = extractvalue %dx.types.CBufRet.f32 %292, 3
  %319 = fmul fast float %318, %314
  %320 = extractvalue %dx.types.CBufRet.f32 %287, 2
  %321 = fadd fast float %319, %320
  %322 = fmul fast float %318, %315
  %323 = fadd fast float %322, %320
  %324 = fmul fast float %318, %316
  %325 = fadd fast float %324, %320
  %326 = and i32 %285, 31
  %327 = shl i32 1, %326
  %328 = uitofp i32 %327 to float
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 3
  %331 = fdiv fast float 1.000000e+00, %330
  %332 = fmul fast float %331, %328
  %333 = fmul fast float %332, %58
  %334 = fadd fast float %333, %206
  %335 = fcmp fast oeq float %317, 0.000000e+00
  %336 = fcmp fast ogt float %206, %323
  %337 = fcmp fast ogt float %334, %323
  %338 = and i1 %336, %337
  %339 = or i1 %335, %338
  br i1 %339, label %340, label %344, !dx.controlflow.hints !35

; <label>:340                                     ; preds = %313
  %341 = add nsw i32 %285, 1
  %342 = add nsw i32 %221, -1
  %343 = call i32 @dx.op.binary.i32(i32 38, i32 %341, i32 %342)  ; IMin(a,b)
  br label %374

; <label>:344                                     ; preds = %313
  %345 = fcmp fast olt float %206, %325
  %346 = fcmp fast olt float %334, %325
  %347 = and i1 %345, %346
  br i1 %347, label %348, label %352, !dx.controlflow.hints !36

; <label>:348                                     ; preds = %344
  %349 = add nsw i32 %285, 1
  %350 = add nsw i32 %221, -1
  %351 = call i32 @dx.op.binary.i32(i32 38, i32 %349, i32 %350)  ; IMin(a,b)
  br label %374

; <label>:352                                     ; preds = %344
  %353 = fcmp fast olt float %206, %321
  %354 = fcmp fast olt float %334, %321
  %355 = and i1 %353, %354
  br i1 %355, label %356, label %364, !dx.controlflow.hints !37

; <label>:356                                     ; preds = %352
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 3
  %359 = extractvalue %dx.types.CBufRet.f32 %292, 2
  %360 = fcmp fast une float %358, %359
  br i1 %360, label %361, label %368, !dx.controlflow.hints !38

; <label>:361                                     ; preds = %356
  %362 = fsub fast float %206, %325
  %363 = call float @dx.op.binary.f32(i32 36, float %332, float %362)  ; FMin(a,b)
  br label %368

; <label>:364                                     ; preds = %352
  %365 = add nsw i32 %285, -1
  %366 = icmp sgt i32 %285, 1
  br i1 %366, label %284, label %367

; <label>:367                                     ; preds = %364
  br label %368

; <label>:368                                     ; preds = %367, %361, %356, %281
  %369 = phi float [ %363, %361 ], [ %332, %356 ], [ 0.000000e+00, %281 ], [ 0.000000e+00, %367 ]
  %370 = phi i32 [ %285, %361 ], [ %285, %356 ], [ %209, %281 ], [ %365, %367 ]
  %371 = add nsw i32 %370, 1
  %372 = add nsw i32 %221, -1
  %373 = call i32 @dx.op.binary.i32(i32 38, i32 %371, i32 %372)  ; IMin(a,b)
  br label %374

; <label>:374                                     ; preds = %368, %348, %340, %279, %275, %225
  %375 = phi float [ %226, %225 ], [ %332, %340 ], [ %332, %348 ], [ %369, %368 ], [ 0x47EFFFFFE0000000, %279 ], [ %276, %275 ]
  %376 = phi i32 [ %127, %225 ], [ %127, %340 ], [ %127, %348 ], [ %127, %368 ], [ 0, %279 ], [ %127, %275 ]
  %377 = phi i32 [ %209, %225 ], [ %343, %340 ], [ %351, %348 ], [ %373, %368 ], [ %209, %279 ], [ %209, %275 ]
  %378 = icmp ne i32 %376, 0
  %379 = zext i1 %378 to i32
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 2
  %382 = call float @dx.op.binary.f32(i32 35, float %375, float %381)  ; FMax(a,b)
  %383 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %382)  ; FMin(a,b)
  br label %384

; <label>:384                                     ; preds = %374, %198
  %385 = phi float [ %383, %374 ], [ 0x47EFFFFFE0000000, %198 ]
  %386 = phi i32 [ %377, %374 ], [ %209, %198 ]
  %387 = phi i32 [ %379, %374 ], [ 0, %198 ]
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 0
  %390 = extractvalue %dx.types.CBufRet.f32 %388, 1
  %391 = fsub fast float %204, %389
  %392 = fsub fast float %205, %390
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.f32 %393, 2
  %395 = extractvalue %dx.types.CBufRet.f32 %393, 3
  %396 = fmul fast float %391, %394
  %397 = fmul fast float %392, %395
  %398 = call float @dx.op.binary.f32(i32 36, float %396, float %397)  ; FMin(a,b)
  %399 = fcmp fast olt float %398, 0.000000e+00
  %400 = call float @dx.op.binary.f32(i32 35, float %396, float %397)  ; FMax(a,b)
  %401 = fcmp fast ogt float %400, 1.000000e+00
  %402 = or i1 %399, %401
  %403 = extractvalue %dx.types.CBufRet.f32 %388, 2
  %404 = fcmp fast olt float %206, %403
  %405 = or i1 %402, %404
  %406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.f32 %406, 3
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 0
  %410 = fadd fast float %409, %407
  %411 = fcmp fast ogt float %206, %410
  %412 = or i1 %405, %411
  br i1 %412, label %413, label %442, !dx.controlflow.hints !39

; <label>:413                                     ; preds = %384
  %414 = extractvalue %dx.types.CBufRet.f32 %393, 0
  %415 = extractvalue %dx.types.CBufRet.f32 %393, 1
  %416 = fsub fast float %389, %204
  %417 = fmul fast float %416, %173
  %418 = fadd fast float %416, %414
  %419 = fmul fast float %418, %173
  %420 = call float @dx.op.binary.f32(i32 36, float %417, float %419)  ; FMin(a,b)
  %421 = call float @dx.op.binary.f32(i32 35, float %417, float %419)  ; FMax(a,b)
  %422 = fsub fast float %390, %205
  %423 = fmul fast float %422, %174
  %424 = fadd fast float %422, %415
  %425 = fmul fast float %424, %174
  %426 = call float @dx.op.binary.f32(i32 36, float %423, float %425)  ; FMin(a,b)
  %427 = call float @dx.op.binary.f32(i32 35, float %420, float %426)  ; FMax(a,b)
  %428 = call float @dx.op.binary.f32(i32 35, float %423, float %425)  ; FMax(a,b)
  %429 = call float @dx.op.binary.f32(i32 36, float %421, float %428)  ; FMin(a,b)
  %430 = fsub fast float %403, %206
  %431 = fmul fast float %430, %175
  %432 = fsub fast float %407, %206
  %433 = fadd fast float %432, %409
  %434 = fmul fast float %433, %175
  %435 = call float @dx.op.binary.f32(i32 36, float %431, float %434)  ; FMin(a,b)
  %436 = call float @dx.op.binary.f32(i32 35, float %427, float %435)  ; FMax(a,b)
  %437 = call float @dx.op.binary.f32(i32 35, float %431, float %434)  ; FMax(a,b)
  %438 = call float @dx.op.binary.f32(i32 36, float %429, float %437)  ; FMin(a,b)
  %439 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %436)  ; FMax(a,b)
  %440 = fcmp fast oge float %438, %439
  %441 = select i1 %440, float %436, float 1.000000e+07
  br label %488

; <label>:442                                     ; preds = %384
  %443 = fsub fast float 1.000000e+00, %397
  %444 = icmp eq i32 %208, 0
  br i1 %444, label %473, label %445

; <label>:445                                     ; preds = %442
  br label %446

; <label>:446                                     ; preds = %469, %445
  %447 = phi i32 [ %470, %469 ], [ %208, %445 ]
  %448 = uitofp i32 %447 to float
  %449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %8, float %396, float %443, float undef, float undef, i32 0, i32 0, i32 undef, float %448)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = extractvalue %dx.types.ResRet.f32 %449, 1
  %452 = extractvalue %dx.types.ResRet.f32 %449, 2
  %453 = fcmp fast oeq float %450, 0.000000e+00
  %454 = fcmp ule float %206, %452
  %455 = fcmp uge float %206, %451
  %456 = or i1 %455, %454
  %457 = or i1 %453, %456
  br i1 %457, label %458, label %469, !dx.controlflow.hints !40

; <label>:458                                     ; preds = %446
  %459 = extractvalue %dx.types.ResRet.f32 %449, 3
  %460 = extractvalue %dx.types.CBufRet.f32 %393, 0
  %461 = and i32 %447, 31
  %462 = lshr i32 1024, %461
  %463 = uitofp i32 %462 to float
  %464 = fdiv fast float %460, %463
  %465 = add i32 %447, 1
  %466 = uitofp i32 %465 to float
  %467 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %466)  ; FMin(a,b)
  %468 = fptosi float %467 to i32
  br label %488

; <label>:469                                     ; preds = %446
  %470 = add i32 %447, -1
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %446, !llvm.loop !41

; <label>:472                                     ; preds = %469
  br label %473

; <label>:473                                     ; preds = %472, %442
  %474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %7, float %396, float %443, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = extractvalue %dx.types.ResRet.f32 %474, 1
  %477 = extractvalue %dx.types.ResRet.f32 %474, 2
  %478 = extractvalue %dx.types.ResRet.f32 %474, 3
  %479 = extractvalue %dx.types.CBufRet.f32 %393, 0
  %480 = fmul fast float %479, 9.765625e-04
  %481 = fcmp fast oeq float %475, 0.000000e+00
  %482 = fcmp ule float %206, %477
  %483 = fcmp uge float %206, %476
  %484 = or i1 %483, %482
  %485 = or i1 %481, %484
  %486 = zext i1 %485 to i32
  %487 = xor i32 %486, 1
  br label %488

; <label>:488                                     ; preds = %473, %458, %413
  %489 = phi float [ %441, %413 ], [ %464, %458 ], [ %480, %473 ]
  %490 = phi float [ %199, %413 ], [ %450, %458 ], [ %475, %473 ]
  %491 = phi float [ %200, %413 ], [ %451, %458 ], [ %476, %473 ]
  %492 = phi float [ %201, %413 ], [ %452, %458 ], [ %477, %473 ]
  %493 = phi float [ %202, %413 ], [ %459, %458 ], [ %478, %473 ]
  %494 = phi i32 [ 0, %413 ], [ 0, %458 ], [ %487, %473 ]
  %495 = phi i32 [ 10, %413 ], [ %468, %458 ], [ 1, %473 ]
  %496 = icmp eq i32 %494, 0
  %497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %498 = extractvalue %dx.types.CBufRet.f32 %497, 2
  %499 = call float @dx.op.binary.f32(i32 35, float %489, float %498)  ; FMax(a,b)
  %500 = call float @dx.op.binary.f32(i32 36, float %385, float %499)  ; FMin(a,b)
  %501 = icmp eq i32 %154, 0
  br i1 %501, label %514, label %502, !dx.controlflow.hints !43

; <label>:502                                     ; preds = %488
  %503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %504 = extractvalue %dx.types.CBufRet.f32 %503, 3
  %505 = extractvalue %dx.types.CBufRet.f32 %503, 2
  %506 = fmul fast float %504, %207
  %507 = fdiv fast float %506, %176
  %508 = fadd fast float %507, 1.000000e+00
  %509 = call float @dx.op.unary.f32(i32 23, float %508)  ; Log(value)
  %510 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %509)  ; FMin(a,b)
  %511 = fmul fast float %505, %176
  %512 = fmul fast float %511, %510
  %513 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %512)  ; FMin(a,b)
  br label %514

; <label>:514                                     ; preds = %502, %488
  %515 = phi float [ %513, %502 ], [ 0x47EFFFFFE0000000, %488 ]
  %516 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %517 = fmul fast float %516, %207
  %518 = call float @dx.op.unary.f32(i32 23, float %517)  ; Log(value)
  %519 = fmul fast float %518, 0x3FE62E4300000000
  %520 = call float @dx.op.binary.f32(i32 35, float %519, float 1.000000e+00)  ; FMax(a,b)
  %521 = fmul fast float %520, %515
  %522 = call float @dx.op.binary.f32(i32 36, float %521, float %500)  ; FMin(a,b)
  %523 = call float @dx.op.binary.f32(i32 35, float %522, float %217)  ; FMax(a,b)
  %524 = fsub fast float %176, %207
  %525 = fadd fast float %524, 0x3F1A36E2E0000000
  %526 = call float @dx.op.binary.f32(i32 36, float %525, float %523)  ; FMin(a,b)
  %527 = icmp eq i32 %387, 0
  br i1 %527, label %624, label %528, !dx.controlflow.hints !44

; <label>:528                                     ; preds = %514
  %529 = fcmp fast olt float %525, %523
  %530 = fmul fast float %29, %58
  %531 = fmul fast float %530, %526
  %532 = fadd fast float %531, %206
  %533 = fmul fast float %30, %58
  %534 = fmul fast float %533, %526
  %535 = fadd fast float %534, %206
  %536 = fmul fast float %31, %58
  %537 = fmul fast float %536, %526
  %538 = fadd fast float %537, %206
  br i1 %529, label %539, label %544, !dx.controlflow.hints !45

; <label>:539                                     ; preds = %528
  %540 = fmul fast float %526, %56
  %541 = fmul fast float %526, %57
  %542 = fadd fast float %540, %204
  %543 = fadd fast float %541, %205
  br label %544

; <label>:544                                     ; preds = %539, %528
  %545 = phi float [ %542, %539 ], [ %204, %528 ]
  %546 = phi float [ %543, %539 ], [ %205, %528 ]
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 0
  %549 = extractvalue %dx.types.CBufRet.f32 %547, 1
  %550 = fsub fast float %545, %548
  %551 = fsub fast float %546, %549
  %552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.f32 %552, 0
  %554 = extractvalue %dx.types.CBufRet.f32 %552, 1
  %555 = fmul fast float %550, %553
  %556 = fmul fast float %551, %554
  %557 = fsub fast float 1.000000e+00, %556
  %558 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.i32 %558, 3
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %567, label %561, !dx.controlflow.hints !34

; <label>:561                                     ; preds = %544
  %562 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %555, float %557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 0
  %564 = extractvalue %dx.types.ResRet.f32 %562, 1
  %565 = extractvalue %dx.types.ResRet.f32 %562, 2
  %566 = extractvalue %dx.types.ResRet.f32 %562, 3
  br label %573

; <label>:567                                     ; preds = %544
  %568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %7, float %555, float %557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  %570 = extractvalue %dx.types.ResRet.f32 %568, 1
  %571 = extractvalue %dx.types.ResRet.f32 %568, 2
  %572 = extractvalue %dx.types.ResRet.f32 %568, 3
  br label %573

; <label>:573                                     ; preds = %567, %561
  %574 = phi float [ %563, %561 ], [ %569, %567 ]
  %575 = phi float [ %564, %561 ], [ %570, %567 ]
  %576 = phi float [ %565, %561 ], [ %571, %567 ]
  %577 = phi float [ %566, %561 ], [ %572, %567 ]
  %578 = extractvalue %dx.types.CBufRet.f32 %552, 3
  %579 = fmul fast float %578, %575
  %580 = fmul fast float %579, %574
  %581 = fsub fast float %579, %580
  %582 = fcmp fast ole float %581, 0.000000e+00
  %583 = extractvalue %dx.types.CBufRet.f32 %547, 2
  %584 = fadd fast float %580, %583
  %585 = fmul fast float %578, %576
  %586 = fadd fast float %585, %583
  %587 = fdiv fast float 1.000000e+00, %581
  %588 = select i1 %582, float 1.000000e+06, float %587
  %589 = fsub fast float %532, %584
  %590 = fmul fast float %588, %589
  %591 = call float @dx.op.unary.f32(i32 7, float %590)  ; Saturate(value)
  %592 = extractvalue %dx.types.CBufRet.f32 %552, 2
  %593 = fmul fast float %592, %591
  %594 = fsub fast float %592, %593
  %595 = fcmp fast olt float %532, %586
  %596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.f32 %596, 3
  %598 = select i1 %595, float %597, float 1.000000e+00
  %599 = fmul fast float %594, %598
  %600 = fsub fast float %535, %584
  %601 = fmul fast float %588, %600
  %602 = call float @dx.op.unary.f32(i32 7, float %601)  ; Saturate(value)
  %603 = fmul fast float %592, %602
  %604 = fsub fast float %592, %603
  %605 = fcmp fast olt float %535, %586
  %606 = select i1 %605, float %597, float 1.000000e+00
  %607 = fmul fast float %604, %606
  %608 = fadd fast float %607, %599
  %609 = fsub fast float %538, %584
  %610 = fmul fast float %588, %609
  %611 = call float @dx.op.unary.f32(i32 7, float %610)  ; Saturate(value)
  %612 = fmul fast float %592, %611
  %613 = fsub fast float %592, %612
  %614 = fcmp fast olt float %538, %586
  %615 = select i1 %614, float %597, float 1.000000e+00
  %616 = fmul fast float %613, %615
  %617 = fadd fast float %608, %616
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 2
  %620 = fmul fast float %526, 0x3FD5555560000000
  %621 = fmul fast float %620, %577
  %622 = fmul fast float %621, %619
  %623 = fmul fast float %622, %617
  br label %624

; <label>:624                                     ; preds = %573, %514
  %625 = phi float [ %623, %573 ], [ 0.000000e+00, %514 ]
  br i1 %501, label %672, label %626, !dx.controlflow.hints !46

; <label>:626                                     ; preds = %624
  %627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %628 = extractvalue %dx.types.CBufRet.f32 %627, 0
  %629 = fsub fast float %628, %206
  %630 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %215, float %214, float %629)  ; Dot3(ax,ay,az,bx,by,bz)
  %631 = fmul fast float %136, %630
  %632 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %631)  ; FMax(a,b)
  %633 = fcmp ogt float %55, -0.000000e+00
  %634 = call float @dx.op.binary.f32(i32 36, float %526, float %632)  ; FMin(a,b)
  br i1 %633, label %636, label %635, !dx.controlflow.hints !47

; <label>:635                                     ; preds = %626
  br label %636

; <label>:636                                     ; preds = %635, %626
  %637 = phi float [ 0.000000e+00, %635 ], [ %634, %626 ]
  %638 = phi float [ %634, %635 ], [ %526, %626 ]
  %639 = phi float [ %634, %635 ], [ 0.000000e+00, %626 ]
  %640 = phi float [ %526, %635 ], [ %634, %626 ]
  %641 = fsub fast float %638, %637
  %642 = extractvalue %dx.types.CBufRet.f32 %627, 1
  %643 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %642)  ; FMin(a,b)
  %644 = fsub fast float %206, %628
  %645 = fmul fast float %643, 0x3FF7154760000000
  %646 = fmul fast float %645, %644
  %647 = call float @dx.op.unary.f32(i32 21, float %646)  ; Exp(value)
  %648 = fmul fast float %55, 0xBFF7154760000000
  %649 = fmul fast float %648, %640
  %650 = fmul fast float %649, %643
  %651 = call float @dx.op.unary.f32(i32 21, float %650)  ; Exp(value)
  %652 = fmul fast float %648, %639
  %653 = fmul fast float %652, %643
  %654 = call float @dx.op.unary.f32(i32 21, float %653)  ; Exp(value)
  %655 = fsub fast float %651, %654
  %656 = fmul fast float %655, %647
  %657 = fmul fast float %643, %58
  %658 = fdiv fast float %656, %657
  %659 = fadd fast float %641, %658
  %660 = call float @dx.op.unary.f32(i32 6, float %58)  ; FAbs(value)
  %661 = fcmp fast olt float %660, 0x3F0FFB4800000000
  %662 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %644)  ; FMax(a,b)
  %663 = fmul fast float %662, 0x3FF7154760000000
  %664 = fmul fast float %663, %642
  %665 = call float @dx.op.unary.f32(i32 21, float %664)  ; Exp(value)
  %666 = fmul fast float %665, %526
  %667 = select i1 %661, float %666, float %659
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 1
  %670 = fmul fast float %667, %669
  %671 = fadd fast float %670, %625
  br label %672

; <label>:672                                     ; preds = %636, %624
  %673 = phi float [ %671, %636 ], [ %625, %624 ]
  br i1 %496, label %799, label %674, !dx.controlflow.hints !48

; <label>:674                                     ; preds = %672
  %675 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.i32 %675, 0
  %677 = icmp ne i32 %676, 0
  %678 = zext i1 %677 to i32
  %679 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %680 = extractvalue %dx.types.CBufRet.i32 %679, 0
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %715, label %682

; <label>:682                                     ; preds = %674
  br label %683

; <label>:683                                     ; preds = %710, %682
  %684 = phi i32 [ %711, %710 ], [ 0, %682 ]
  %685 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %684, i32 0)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.f32 %685, 0
  %687 = extractvalue %dx.types.ResRet.f32 %685, 1
  %688 = extractvalue %dx.types.ResRet.f32 %685, 2
  %689 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %684, i32 16)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.f32 %689, 0
  %691 = extractvalue %dx.types.ResRet.f32 %689, 1
  %692 = extractvalue %dx.types.ResRet.f32 %689, 2
  %693 = fsub fast float %686, %690
  %694 = fsub fast float %687, %691
  %695 = fsub fast float %688, %692
  %696 = fadd fast float %690, %686
  %697 = fadd fast float %691, %687
  %698 = fadd fast float %692, %688
  %699 = fcmp fast olt float %204, %693
  %700 = fcmp fast olt float %205, %694
  %701 = fcmp fast olt float %206, %695
  %702 = or i1 %699, %700
  %703 = or i1 %701, %702
  %704 = fcmp fast ogt float %204, %696
  %705 = fcmp fast ogt float %205, %697
  %706 = fcmp fast ogt float %206, %698
  %707 = or i1 %704, %705
  %708 = or i1 %706, %707
  %709 = or i1 %703, %708
  br i1 %709, label %710, label %713, !dx.controlflow.hints !49

; <label>:710                                     ; preds = %683
  %711 = add nuw i32 %684, 1
  %712 = icmp ult i32 %711, %680
  br i1 %712, label %683, label %713

; <label>:713                                     ; preds = %710, %683
  %714 = phi i32 [ 255, %710 ], [ %684, %683 ]
  br label %715

; <label>:715                                     ; preds = %713, %674
  %716 = phi i32 [ 255, %674 ], [ %714, %713 ]
  %717 = icmp eq i32 %716, 255
  br i1 %717, label %723, label %718, !dx.controlflow.hints !50

; <label>:718                                     ; preds = %715
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %716, i32 156)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = icmp ne i32 %720, 0
  %722 = zext i1 %721 to i32
  br label %723

; <label>:723                                     ; preds = %718, %715
  %724 = phi i32 [ %722, %718 ], [ %678, %715 ]
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %726, label %795, !dx.controlflow.hints !51

; <label>:726                                     ; preds = %723
  %727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.f32 %727, 3
  %729 = extractvalue %dx.types.CBufRet.f32 %406, 0
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 2
  %732 = extractvalue %dx.types.CBufRet.f32 %730, 3
  br i1 %717, label %743, label %733, !dx.controlflow.hints !52

; <label>:733                                     ; preds = %726
  %734 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %716, i32 60)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.f32 %734, 0
  %736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %716, i32 64)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.f32 %736, 0
  %738 = extractvalue %dx.types.ResRet.f32 %736, 1
  %739 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %716, i32 72)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.f32 %739, 0
  %741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %716, i32 96)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.f32 %741, 0
  br label %743

; <label>:743                                     ; preds = %733, %726
  %744 = phi float [ %737, %733 ], [ %731, %726 ]
  %745 = phi float [ %738, %733 ], [ %732, %726 ]
  %746 = phi float [ %742, %733 ], [ %729, %726 ]
  %747 = phi float [ %740, %733 ], [ %407, %726 ]
  %748 = phi float [ %735, %733 ], [ %409, %726 ]
  %749 = call float @dx.op.binary.f32(i32 35, float %490, float 0.000000e+00)  ; FMax(a,b)
  %750 = call float @dx.op.binary.f32(i32 36, float %749, float 1.000000e+00)  ; FMin(a,b)
  %751 = call float @dx.op.unary.f32(i32 24, float %750)  ; Sqrt(value)
  %752 = call float @dx.op.binary.f32(i32 35, float %493, float 0x3F847AE140000000)  ; FMax(a,b)
  %753 = fsub fast float %491, %206
  %754 = fsub fast float %206, %492
  %755 = call float @dx.op.binary.f32(i32 36, float %754, float %753)  ; FMin(a,b)
  %756 = fdiv fast float %755, %752
  %757 = call float @dx.op.unary.f32(i32 7, float %756)  ; Saturate(value)
  %758 = fsub fast float %206, %747
  %759 = fdiv fast float %758, %748
  %760 = call float @dx.op.unary.f32(i32 7, float %759)  ; Saturate(value)
  %761 = fsub fast float 1.000000e+00, %760
  %762 = fmul float %757, %761
  %763 = fmul float %762, %762
  %764 = fmul fast float %751, %728
  %765 = fmul fast float %764, %763
  %766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %767 = extractvalue %dx.types.CBufRet.f32 %766, 2
  %768 = extractvalue %dx.types.CBufRet.f32 %766, 1
  %769 = fsub fast float %765, %768
  %770 = fsub fast float %767, %768
  %771 = fdiv fast float %769, %770
  %772 = call float @dx.op.unary.f32(i32 7, float %771)  ; Saturate(value)
  %773 = fmul fast float %772, %746
  %774 = fcmp fast ogt float %745, 0.000000e+00
  br i1 %774, label %775, label %795, !dx.controlflow.hints !53

; <label>:775                                     ; preds = %743
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 0
  %778 = extractvalue %dx.types.CBufRet.f32 %776, 1
  %779 = extractvalue %dx.types.CBufRet.f32 %776, 2
  %780 = fsub fast float %204, %777
  %781 = fsub fast float %205, %778
  %782 = fsub fast float %206, %779
  %783 = fmul fast float %780, %780
  %784 = fmul fast float %781, %781
  %785 = fadd fast float %783, %784
  %786 = fmul fast float %782, %782
  %787 = fadd fast float %785, %786
  %788 = call float @dx.op.unary.f32(i32 24, float %787)  ; Sqrt(value)
  %789 = fsub fast float %788, %744
  %790 = fsub fast float %745, %744
  %791 = fdiv fast float %789, %790
  %792 = call float @dx.op.unary.f32(i32 7, float %791)  ; Saturate(value)
  %793 = fmul fast float %792, %792
  %794 = fmul fast float %793, %773
  br label %795

; <label>:795                                     ; preds = %775, %743, %723
  %796 = phi float [ 0.000000e+00, %723 ], [ %794, %775 ], [ %773, %743 ]
  %797 = fmul fast float %796, %526
  %798 = fadd fast float %797, %673
  br label %799

; <label>:799                                     ; preds = %795, %672
  %800 = phi float [ %798, %795 ], [ %673, %672 ]
  %801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %802 = extractvalue %dx.types.CBufRet.f32 %801, 1
  %803 = fcmp fast ogt float %800, %802
  br i1 %803, label %804, label %816, !dx.controlflow.hints !54

; <label>:804                                     ; preds = %799
  %805 = fmul fast float %800, 0xBFF7154760000000
  %806 = call float @dx.op.unary.f32(i32 21, float %805)  ; Exp(value)
  %807 = call float @dx.op.unary.f32(i32 7, float %806)  ; Saturate(value)
  %808 = icmp eq i32 %210, 0
  br i1 %808, label %809, label %810, !dx.controlflow.hints !55

; <label>:809                                     ; preds = %804
  br label %810

; <label>:810                                     ; preds = %809, %804
  %811 = phi i32 [ %210, %804 ], [ 1, %809 ]
  %812 = phi float [ %211, %804 ], [ %207, %809 ]
  %813 = fadd fast float %526, %212
  %814 = fadd fast float %800, %213
  %815 = fmul fast float %807, %203
  br label %816

; <label>:816                                     ; preds = %810, %799
  %817 = phi float [ %815, %810 ], [ %203, %799 ]
  %818 = phi i32 [ %811, %810 ], [ %210, %799 ]
  %819 = phi float [ %812, %810 ], [ %211, %799 ]
  %820 = phi float [ %813, %810 ], [ %212, %799 ]
  %821 = phi float [ %814, %810 ], [ %213, %799 ]
  %822 = fadd fast float %526, %207
  %823 = fmul fast float %526, %56
  %824 = fmul fast float %526, %57
  %825 = fmul fast float %526, %58
  %826 = fadd fast float %823, %204
  %827 = fadd fast float %824, %205
  %828 = fadd fast float %825, %206
  %829 = fcmp fast olt float %822, %176
  %830 = extractvalue %dx.types.CBufRet.f32 %801, 2
  %831 = fcmp fast olt float %830, %817
  %832 = and i1 %829, %831
  br i1 %832, label %198, label %833

; <label>:833                                     ; preds = %816
  br label %834

; <label>:834                                     ; preds = %833, %152
  %835 = phi float [ 0.000000e+00, %152 ], [ %819, %833 ]
  %836 = phi float [ 0.000000e+00, %152 ], [ %820, %833 ]
  %837 = phi float [ 0.000000e+00, %152 ], [ %821, %833 ]
  %838 = extractvalue %dx.types.CBufRet.f32 %50, 3
  %839 = fmul fast float %838, %835
  %840 = fdiv fast float 1.000000e+00, %836
  %841 = fmul fast float %840, %837
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %11, i32 %12, i32 undef, float %839, float %841, float %837, float %839, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!21}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !12, !14, !17}
!5 = !{!6, !8, !9, !11}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !10}
!10 = !{i32 1, i32 164}
!11 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!12 = !{!13}
!13 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{!15, !16}
!15 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!17 = !{!18, !19, !20}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!19 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!20 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!21 = !{void ()* @cs_fog_raymarching_air_heightmap_particles, !"cs_fog_raymarching_air_heightmap_particles", null, !4, !22}
!22 = !{i32 0, i64 272, i32 4, !23}
!23 = !{i32 8, i32 8, i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}

