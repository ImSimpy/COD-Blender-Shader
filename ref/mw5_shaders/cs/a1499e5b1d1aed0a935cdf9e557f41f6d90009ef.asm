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
; shader hash: 1c726405f5dc567c3fb2fd75a47b2a49
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

define void @cs_fog_raymarching_heightmap_particles() {
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
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 3
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = fsub fast float -0.000000e+00, %48
  %134 = fsub fast float -0.000000e+00, %49
  %135 = fsub fast float %130, %42
  %136 = fadd fast float %135, %132
  %137 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %133, float %134, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %138 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %139 = fdiv fast float 1.000000e+00, %138
  %140 = fmul fast float %139, %137
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %143 = fsub fast float %142, %42
  %144 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %133, float %134, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %145 = fmul fast float %139, %144
  %146 = call float @dx.op.binary.f32(i32 36, float %140, float %145)  ; FMin(a,b)
  %147 = call float @dx.op.binary.f32(i32 35, float %140, float %145)  ; FMax(a,b)
  %148 = call float @dx.op.binary.f32(i32 36, float %128, float %146)  ; FMin(a,b)
  %149 = call float @dx.op.binary.f32(i32 35, float %126, float %147)  ; FMax(a,b)
  %150 = fdiv fast float 1.000000e+00, %56
  %151 = fdiv fast float 1.000000e+00, %57
  %152 = fdiv fast float 1.000000e+00, %58
  %153 = call float @dx.op.binary.f32(i32 36, float %51, float %149)  ; FMin(a,b)
  %154 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %148)  ; FMax(a,b)
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %157 = fmul fast float %30, 2.000000e+00
  %158 = fadd fast float %157, -1.000000e+00
  %159 = fmul fast float %156, %158
  %160 = fadd fast float %159, %154
  %161 = fcmp fast olt float %160, %153
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %164 = fcmp fast olt float %163, 1.000000e+00
  %165 = and i1 %161, %164
  br i1 %165, label %166, label %749

; <label>:166                                     ; preds = %125
  %167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.i32 %167, 1
  %169 = add i32 %168, -1
  %170 = fmul fast float %160, %58
  %171 = fadd fast float %170, %42
  %172 = fmul fast float %160, %57
  %173 = fadd fast float %172, %49
  %174 = fmul fast float %160, %56
  %175 = fadd fast float %174, %48
  br label %176

; <label>:176                                     ; preds = %731, %166
  %177 = phi float [ %468, %731 ], [ undef, %166 ]
  %178 = phi float [ %469, %731 ], [ undef, %166 ]
  %179 = phi float [ %470, %731 ], [ undef, %166 ]
  %180 = phi float [ %471, %731 ], [ undef, %166 ]
  %181 = phi float [ %732, %731 ], [ 1.000000e+00, %166 ]
  %182 = phi float [ %741, %731 ], [ %175, %166 ]
  %183 = phi float [ %742, %731 ], [ %173, %166 ]
  %184 = phi float [ %743, %731 ], [ %171, %166 ]
  %185 = phi float [ %737, %731 ], [ %160, %166 ]
  %186 = phi i32 [ %473, %731 ], [ 10, %166 ]
  %187 = phi i32 [ %364, %731 ], [ %169, %166 ]
  %188 = phi i32 [ %733, %731 ], [ 0, %166 ]
  %189 = phi float [ %734, %731 ], [ 0.000000e+00, %166 ]
  %190 = phi float [ %735, %731 ], [ 0.000000e+00, %166 ]
  %191 = phi float [ %736, %731 ], [ 0.000000e+00, %166 ]
  %192 = fsub fast float -0.000000e+00, %183
  %193 = fsub fast float -0.000000e+00, %182
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 1
  %196 = icmp eq i32 %127, 0
  br i1 %196, label %362, label %197, !dx.controlflow.hints !27

; <label>:197                                     ; preds = %176
  %198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.i32 %198, 1
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 1
  %202 = fcmp fast ogt float %201, %185
  br i1 %202, label %203, label %205, !dx.controlflow.hints !28

; <label>:203                                     ; preds = %197
  %204 = fsub fast float %201, %185
  br label %352

; <label>:205                                     ; preds = %197
  %206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.i32 %206, 3
  %208 = icmp eq i32 %207, 0
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 2
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 2
  %213 = fsub fast float %210, %184
  %214 = fadd fast float %213, %212
  %215 = fsub fast float 0xC7EFFFFFE0000000, %184
  br i1 %208, label %223, label %216, !dx.controlflow.hints !24

; <label>:216                                     ; preds = %205
  %217 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %193, float %192, float %214)  ; Dot3(ax,ay,az,bx,by,bz)
  %218 = fmul fast float %139, %217
  %219 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %193, float %192, float %215)  ; Dot3(ax,ay,az,bx,by,bz)
  %220 = fmul fast float %139, %219
  %221 = call float @dx.op.binary.f32(i32 36, float %218, float %220)  ; FMin(a,b)
  %222 = call float @dx.op.binary.f32(i32 35, float %218, float %220)  ; FMax(a,b)
  br label %253

; <label>:223                                     ; preds = %205
  %224 = extractvalue %dx.types.CBufRet.f32 %209, 0
  %225 = extractvalue %dx.types.CBufRet.f32 %209, 1
  %226 = extractvalue %dx.types.CBufRet.f32 %211, 0
  %227 = extractvalue %dx.types.CBufRet.f32 %211, 1
  %228 = fsub fast float %224, %182
  %229 = fmul fast float %150, %228
  %230 = fadd fast float %228, %226
  %231 = fmul fast float %230, %150
  %232 = call float @dx.op.binary.f32(i32 36, float %229, float %231)  ; FMin(a,b)
  %233 = call float @dx.op.binary.f32(i32 35, float %229, float %231)  ; FMax(a,b)
  %234 = fsub fast float %225, %183
  %235 = fmul fast float %151, %234
  %236 = fadd fast float %234, %227
  %237 = fmul fast float %236, %151
  %238 = call float @dx.op.binary.f32(i32 36, float %235, float %237)  ; FMin(a,b)
  %239 = call float @dx.op.binary.f32(i32 35, float %232, float %238)  ; FMax(a,b)
  %240 = call float @dx.op.binary.f32(i32 35, float %235, float %237)  ; FMax(a,b)
  %241 = call float @dx.op.binary.f32(i32 36, float %233, float %240)  ; FMin(a,b)
  %242 = fmul fast float %152, %215
  %243 = fmul fast float %152, %214
  %244 = call float @dx.op.binary.f32(i32 36, float %242, float %243)  ; FMin(a,b)
  %245 = call float @dx.op.binary.f32(i32 35, float %239, float %244)  ; FMax(a,b)
  %246 = call float @dx.op.binary.f32(i32 35, float %242, float %243)  ; FMax(a,b)
  %247 = call float @dx.op.binary.f32(i32 36, float %241, float %246)  ; FMin(a,b)
  %248 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %245)  ; FMax(a,b)
  %249 = fcmp fast ult float %247, %248
  br i1 %249, label %253, label %250, !dx.controlflow.hints !25

; <label>:250                                     ; preds = %223
  %251 = call float @dx.op.binary.f32(i32 36, float %245, float %247)  ; FMin(a,b)
  %252 = call float @dx.op.binary.f32(i32 35, float %245, float %247)  ; FMax(a,b)
  br label %253

; <label>:253                                     ; preds = %250, %223, %216
  %254 = phi float [ %221, %216 ], [ %251, %250 ], [ 0.000000e+00, %223 ]
  %255 = phi float [ %222, %216 ], [ %252, %250 ], [ 0.000000e+00, %223 ]
  %256 = fcmp fast ogt float %254, 0.000000e+00
  br i1 %256, label %352, label %257, !dx.controlflow.hints !29

; <label>:257                                     ; preds = %253
  %258 = fcmp fast ugt float %255, 0.000000e+00
  br i1 %258, label %259, label %352, !dx.controlflow.hints !30

; <label>:259                                     ; preds = %257
  %260 = icmp sgt i32 %187, 0
  br i1 %260, label %261, label %346

; <label>:261                                     ; preds = %259
  br label %262

; <label>:262                                     ; preds = %342, %261
  %263 = phi i32 [ %343, %342 ], [ %187, %261 ]
  %264 = sitofp i32 %263 to float
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 0
  %267 = extractvalue %dx.types.CBufRet.f32 %265, 1
  %268 = fsub fast float %182, %266
  %269 = fsub fast float %183, %267
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 0
  %272 = extractvalue %dx.types.CBufRet.f32 %270, 1
  %273 = fmul fast float %268, %271
  %274 = fmul fast float %269, %272
  %275 = fsub fast float 1.000000e+00, %274
  %276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.i32 %276, 3
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %285, label %279, !dx.controlflow.hints !31

; <label>:279                                     ; preds = %262
  %280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %273, float %275, float undef, float undef, i32 0, i32 0, i32 undef, float %264)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %281 = extractvalue %dx.types.ResRet.f32 %280, 0
  %282 = extractvalue %dx.types.ResRet.f32 %280, 1
  %283 = extractvalue %dx.types.ResRet.f32 %280, 2
  %284 = extractvalue %dx.types.ResRet.f32 %280, 3
  br label %291

; <label>:285                                     ; preds = %262
  %286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %7, float %273, float %275, float undef, float undef, i32 0, i32 0, i32 undef, float %264)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = extractvalue %dx.types.ResRet.f32 %286, 1
  %289 = extractvalue %dx.types.ResRet.f32 %286, 2
  %290 = extractvalue %dx.types.ResRet.f32 %286, 3
  br label %291

; <label>:291                                     ; preds = %285, %279
  %292 = phi float [ %281, %279 ], [ %287, %285 ]
  %293 = phi float [ %282, %279 ], [ %288, %285 ]
  %294 = phi float [ %283, %279 ], [ %289, %285 ]
  %295 = phi float [ %284, %279 ], [ %290, %285 ]
  %296 = extractvalue %dx.types.CBufRet.f32 %270, 3
  %297 = fmul fast float %296, %292
  %298 = extractvalue %dx.types.CBufRet.f32 %265, 2
  %299 = fadd fast float %297, %298
  %300 = fmul fast float %296, %293
  %301 = fadd fast float %300, %298
  %302 = fmul fast float %296, %294
  %303 = fadd fast float %302, %298
  %304 = and i32 %263, 31
  %305 = shl i32 1, %304
  %306 = uitofp i32 %305 to float
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 3
  %309 = fdiv fast float 1.000000e+00, %308
  %310 = fmul fast float %309, %306
  %311 = fmul fast float %310, %58
  %312 = fadd fast float %311, %184
  %313 = fcmp fast oeq float %295, 0.000000e+00
  %314 = fcmp fast ogt float %184, %301
  %315 = fcmp fast ogt float %312, %301
  %316 = and i1 %314, %315
  %317 = or i1 %313, %316
  br i1 %317, label %318, label %322, !dx.controlflow.hints !32

; <label>:318                                     ; preds = %291
  %319 = add nsw i32 %263, 1
  %320 = add nsw i32 %199, -1
  %321 = call i32 @dx.op.binary.i32(i32 38, i32 %319, i32 %320)  ; IMin(a,b)
  br label %352

; <label>:322                                     ; preds = %291
  %323 = fcmp fast olt float %184, %303
  %324 = fcmp fast olt float %312, %303
  %325 = and i1 %323, %324
  br i1 %325, label %326, label %330, !dx.controlflow.hints !33

; <label>:326                                     ; preds = %322
  %327 = add nsw i32 %263, 1
  %328 = add nsw i32 %199, -1
  %329 = call i32 @dx.op.binary.i32(i32 38, i32 %327, i32 %328)  ; IMin(a,b)
  br label %352

; <label>:330                                     ; preds = %322
  %331 = fcmp fast olt float %184, %299
  %332 = fcmp fast olt float %312, %299
  %333 = and i1 %331, %332
  br i1 %333, label %334, label %342, !dx.controlflow.hints !34

; <label>:334                                     ; preds = %330
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 3
  %337 = extractvalue %dx.types.CBufRet.f32 %270, 2
  %338 = fcmp fast une float %336, %337
  br i1 %338, label %339, label %346, !dx.controlflow.hints !35

; <label>:339                                     ; preds = %334
  %340 = fsub fast float %184, %303
  %341 = call float @dx.op.binary.f32(i32 36, float %310, float %340)  ; FMin(a,b)
  br label %346

; <label>:342                                     ; preds = %330
  %343 = add nsw i32 %263, -1
  %344 = icmp sgt i32 %263, 1
  br i1 %344, label %262, label %345

; <label>:345                                     ; preds = %342
  br label %346

; <label>:346                                     ; preds = %345, %339, %334, %259
  %347 = phi float [ %341, %339 ], [ %310, %334 ], [ 0.000000e+00, %259 ], [ 0.000000e+00, %345 ]
  %348 = phi i32 [ %263, %339 ], [ %263, %334 ], [ %187, %259 ], [ %343, %345 ]
  %349 = add nsw i32 %348, 1
  %350 = add nsw i32 %199, -1
  %351 = call i32 @dx.op.binary.i32(i32 38, i32 %349, i32 %350)  ; IMin(a,b)
  br label %352

; <label>:352                                     ; preds = %346, %326, %318, %257, %253, %203
  %353 = phi float [ %204, %203 ], [ %310, %318 ], [ %310, %326 ], [ %347, %346 ], [ 0x47EFFFFFE0000000, %257 ], [ %254, %253 ]
  %354 = phi i32 [ %127, %203 ], [ %127, %318 ], [ %127, %326 ], [ %127, %346 ], [ 0, %257 ], [ %127, %253 ]
  %355 = phi i32 [ %187, %203 ], [ %321, %318 ], [ %329, %326 ], [ %351, %346 ], [ %187, %257 ], [ %187, %253 ]
  %356 = icmp ne i32 %354, 0
  %357 = zext i1 %356 to i32
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 2
  %360 = call float @dx.op.binary.f32(i32 35, float %353, float %359)  ; FMax(a,b)
  %361 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %360)  ; FMin(a,b)
  br label %362

; <label>:362                                     ; preds = %352, %176
  %363 = phi float [ %361, %352 ], [ 0x47EFFFFFE0000000, %176 ]
  %364 = phi i32 [ %355, %352 ], [ %187, %176 ]
  %365 = phi i32 [ %357, %352 ], [ 0, %176 ]
  %366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.f32 %366, 0
  %368 = extractvalue %dx.types.CBufRet.f32 %366, 1
  %369 = fsub fast float %182, %367
  %370 = fsub fast float %183, %368
  %371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.f32 %371, 2
  %373 = extractvalue %dx.types.CBufRet.f32 %371, 3
  %374 = fmul fast float %369, %372
  %375 = fmul fast float %370, %373
  %376 = call float @dx.op.binary.f32(i32 36, float %374, float %375)  ; FMin(a,b)
  %377 = fcmp fast olt float %376, 0.000000e+00
  %378 = call float @dx.op.binary.f32(i32 35, float %374, float %375)  ; FMax(a,b)
  %379 = fcmp fast ogt float %378, 1.000000e+00
  %380 = or i1 %377, %379
  %381 = extractvalue %dx.types.CBufRet.f32 %366, 2
  %382 = fcmp fast olt float %184, %381
  %383 = or i1 %380, %382
  %384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.f32 %384, 3
  %386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %387 = extractvalue %dx.types.CBufRet.f32 %386, 0
  %388 = fadd fast float %387, %385
  %389 = fcmp fast ogt float %184, %388
  %390 = or i1 %383, %389
  br i1 %390, label %391, label %420, !dx.controlflow.hints !36

; <label>:391                                     ; preds = %362
  %392 = extractvalue %dx.types.CBufRet.f32 %371, 0
  %393 = extractvalue %dx.types.CBufRet.f32 %371, 1
  %394 = fsub fast float %367, %182
  %395 = fmul fast float %394, %150
  %396 = fadd fast float %394, %392
  %397 = fmul fast float %396, %150
  %398 = call float @dx.op.binary.f32(i32 36, float %395, float %397)  ; FMin(a,b)
  %399 = call float @dx.op.binary.f32(i32 35, float %395, float %397)  ; FMax(a,b)
  %400 = fsub fast float %368, %183
  %401 = fmul fast float %400, %151
  %402 = fadd fast float %400, %393
  %403 = fmul fast float %402, %151
  %404 = call float @dx.op.binary.f32(i32 36, float %401, float %403)  ; FMin(a,b)
  %405 = call float @dx.op.binary.f32(i32 35, float %398, float %404)  ; FMax(a,b)
  %406 = call float @dx.op.binary.f32(i32 35, float %401, float %403)  ; FMax(a,b)
  %407 = call float @dx.op.binary.f32(i32 36, float %399, float %406)  ; FMin(a,b)
  %408 = fsub fast float %381, %184
  %409 = fmul fast float %408, %152
  %410 = fsub fast float %385, %184
  %411 = fadd fast float %410, %387
  %412 = fmul fast float %411, %152
  %413 = call float @dx.op.binary.f32(i32 36, float %409, float %412)  ; FMin(a,b)
  %414 = call float @dx.op.binary.f32(i32 35, float %405, float %413)  ; FMax(a,b)
  %415 = call float @dx.op.binary.f32(i32 35, float %409, float %412)  ; FMax(a,b)
  %416 = call float @dx.op.binary.f32(i32 36, float %407, float %415)  ; FMin(a,b)
  %417 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %414)  ; FMax(a,b)
  %418 = fcmp fast oge float %416, %417
  %419 = select i1 %418, float %414, float 1.000000e+07
  br label %466

; <label>:420                                     ; preds = %362
  %421 = fsub fast float 1.000000e+00, %375
  %422 = icmp eq i32 %186, 0
  br i1 %422, label %451, label %423

; <label>:423                                     ; preds = %420
  br label %424

; <label>:424                                     ; preds = %447, %423
  %425 = phi i32 [ %448, %447 ], [ %186, %423 ]
  %426 = uitofp i32 %425 to float
  %427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %8, float %374, float %421, float undef, float undef, i32 0, i32 0, i32 undef, float %426)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %428 = extractvalue %dx.types.ResRet.f32 %427, 0
  %429 = extractvalue %dx.types.ResRet.f32 %427, 1
  %430 = extractvalue %dx.types.ResRet.f32 %427, 2
  %431 = fcmp fast oeq float %428, 0.000000e+00
  %432 = fcmp ule float %184, %430
  %433 = fcmp uge float %184, %429
  %434 = or i1 %433, %432
  %435 = or i1 %431, %434
  br i1 %435, label %436, label %447, !dx.controlflow.hints !37

; <label>:436                                     ; preds = %424
  %437 = extractvalue %dx.types.ResRet.f32 %427, 3
  %438 = extractvalue %dx.types.CBufRet.f32 %371, 0
  %439 = and i32 %425, 31
  %440 = lshr i32 1024, %439
  %441 = uitofp i32 %440 to float
  %442 = fdiv fast float %438, %441
  %443 = add i32 %425, 1
  %444 = uitofp i32 %443 to float
  %445 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %444)  ; FMin(a,b)
  %446 = fptosi float %445 to i32
  br label %466

; <label>:447                                     ; preds = %424
  %448 = add i32 %425, -1
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %424, !llvm.loop !38

; <label>:450                                     ; preds = %447
  br label %451

; <label>:451                                     ; preds = %450, %420
  %452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %7, float %374, float %421, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 0
  %454 = extractvalue %dx.types.ResRet.f32 %452, 1
  %455 = extractvalue %dx.types.ResRet.f32 %452, 2
  %456 = extractvalue %dx.types.ResRet.f32 %452, 3
  %457 = extractvalue %dx.types.CBufRet.f32 %371, 0
  %458 = fmul fast float %457, 9.765625e-04
  %459 = fcmp fast oeq float %453, 0.000000e+00
  %460 = fcmp ule float %184, %455
  %461 = fcmp uge float %184, %454
  %462 = or i1 %461, %460
  %463 = or i1 %459, %462
  %464 = zext i1 %463 to i32
  %465 = xor i32 %464, 1
  br label %466

; <label>:466                                     ; preds = %451, %436, %391
  %467 = phi float [ %419, %391 ], [ %442, %436 ], [ %458, %451 ]
  %468 = phi float [ %177, %391 ], [ %428, %436 ], [ %453, %451 ]
  %469 = phi float [ %178, %391 ], [ %429, %436 ], [ %454, %451 ]
  %470 = phi float [ %179, %391 ], [ %430, %436 ], [ %455, %451 ]
  %471 = phi float [ %180, %391 ], [ %437, %436 ], [ %456, %451 ]
  %472 = phi i32 [ 0, %391 ], [ 0, %436 ], [ %465, %451 ]
  %473 = phi i32 [ 10, %391 ], [ %446, %436 ], [ 1, %451 ]
  %474 = icmp eq i32 %472, 0
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 2
  %477 = call float @dx.op.binary.f32(i32 35, float %467, float %476)  ; FMax(a,b)
  %478 = call float @dx.op.binary.f32(i32 36, float %363, float %477)  ; FMin(a,b)
  %479 = extractvalue %dx.types.CBufRet.f32 %194, 2
  %480 = fmul fast float %479, %185
  %481 = call float @dx.op.unary.f32(i32 23, float %480)  ; Log(value)
  %482 = fmul fast float %481, 0x3FE62E4300000000
  %483 = call float @dx.op.binary.f32(i32 35, float %482, float 1.000000e+00)  ; FMax(a,b)
  %484 = fmul fast float %483, 0x47EFFFFFE0000000
  %485 = call float @dx.op.binary.f32(i32 36, float %484, float %478)  ; FMin(a,b)
  %486 = call float @dx.op.binary.f32(i32 35, float %485, float %195)  ; FMax(a,b)
  %487 = fsub fast float %153, %185
  %488 = fadd fast float %487, 0x3F1A36E2E0000000
  %489 = call float @dx.op.binary.f32(i32 36, float %488, float %486)  ; FMin(a,b)
  %490 = icmp eq i32 %365, 0
  br i1 %490, label %587, label %491, !dx.controlflow.hints !40

; <label>:491                                     ; preds = %466
  %492 = fcmp fast olt float %488, %486
  %493 = fmul fast float %29, %58
  %494 = fmul fast float %493, %489
  %495 = fadd fast float %494, %184
  %496 = fmul fast float %30, %58
  %497 = fmul fast float %496, %489
  %498 = fadd fast float %497, %184
  %499 = fmul fast float %31, %58
  %500 = fmul fast float %499, %489
  %501 = fadd fast float %500, %184
  br i1 %492, label %502, label %507, !dx.controlflow.hints !41

; <label>:502                                     ; preds = %491
  %503 = fmul fast float %489, %56
  %504 = fmul fast float %489, %57
  %505 = fadd fast float %503, %182
  %506 = fadd fast float %504, %183
  br label %507

; <label>:507                                     ; preds = %502, %491
  %508 = phi float [ %505, %502 ], [ %182, %491 ]
  %509 = phi float [ %506, %502 ], [ %183, %491 ]
  %510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.f32 %510, 0
  %512 = extractvalue %dx.types.CBufRet.f32 %510, 1
  %513 = fsub fast float %508, %511
  %514 = fsub fast float %509, %512
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 0
  %517 = extractvalue %dx.types.CBufRet.f32 %515, 1
  %518 = fmul fast float %513, %516
  %519 = fmul fast float %514, %517
  %520 = fsub fast float 1.000000e+00, %519
  %521 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.i32 %521, 3
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %530, label %524, !dx.controlflow.hints !31

; <label>:524                                     ; preds = %507
  %525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %518, float %520, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = extractvalue %dx.types.ResRet.f32 %525, 1
  %528 = extractvalue %dx.types.ResRet.f32 %525, 2
  %529 = extractvalue %dx.types.ResRet.f32 %525, 3
  br label %536

; <label>:530                                     ; preds = %507
  %531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %7, float %518, float %520, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %532 = extractvalue %dx.types.ResRet.f32 %531, 0
  %533 = extractvalue %dx.types.ResRet.f32 %531, 1
  %534 = extractvalue %dx.types.ResRet.f32 %531, 2
  %535 = extractvalue %dx.types.ResRet.f32 %531, 3
  br label %536

; <label>:536                                     ; preds = %530, %524
  %537 = phi float [ %526, %524 ], [ %532, %530 ]
  %538 = phi float [ %527, %524 ], [ %533, %530 ]
  %539 = phi float [ %528, %524 ], [ %534, %530 ]
  %540 = phi float [ %529, %524 ], [ %535, %530 ]
  %541 = extractvalue %dx.types.CBufRet.f32 %515, 3
  %542 = fmul fast float %541, %538
  %543 = fmul fast float %542, %537
  %544 = fsub fast float %542, %543
  %545 = fcmp fast ole float %544, 0.000000e+00
  %546 = extractvalue %dx.types.CBufRet.f32 %510, 2
  %547 = fadd fast float %543, %546
  %548 = fmul fast float %541, %539
  %549 = fadd fast float %548, %546
  %550 = fdiv fast float 1.000000e+00, %544
  %551 = select i1 %545, float 1.000000e+06, float %550
  %552 = fsub fast float %495, %547
  %553 = fmul fast float %551, %552
  %554 = call float @dx.op.unary.f32(i32 7, float %553)  ; Saturate(value)
  %555 = extractvalue %dx.types.CBufRet.f32 %515, 2
  %556 = fmul fast float %555, %554
  %557 = fsub fast float %555, %556
  %558 = fcmp fast olt float %495, %549
  %559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = extractvalue %dx.types.CBufRet.f32 %559, 3
  %561 = select i1 %558, float %560, float 1.000000e+00
  %562 = fmul fast float %557, %561
  %563 = fsub fast float %498, %547
  %564 = fmul fast float %551, %563
  %565 = call float @dx.op.unary.f32(i32 7, float %564)  ; Saturate(value)
  %566 = fmul fast float %555, %565
  %567 = fsub fast float %555, %566
  %568 = fcmp fast olt float %498, %549
  %569 = select i1 %568, float %560, float 1.000000e+00
  %570 = fmul fast float %567, %569
  %571 = fadd fast float %570, %562
  %572 = fsub fast float %501, %547
  %573 = fmul fast float %551, %572
  %574 = call float @dx.op.unary.f32(i32 7, float %573)  ; Saturate(value)
  %575 = fmul fast float %555, %574
  %576 = fsub fast float %555, %575
  %577 = fcmp fast olt float %501, %549
  %578 = select i1 %577, float %560, float 1.000000e+00
  %579 = fmul fast float %576, %578
  %580 = fadd fast float %571, %579
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 2
  %583 = fmul fast float %489, 0x3FD5555560000000
  %584 = fmul fast float %583, %540
  %585 = fmul fast float %584, %582
  %586 = fmul fast float %585, %580
  br label %587

; <label>:587                                     ; preds = %536, %466
  %588 = phi float [ %586, %536 ], [ 0.000000e+00, %466 ]
  br i1 %474, label %714, label %589, !dx.controlflow.hints !42

; <label>:589                                     ; preds = %587
  %590 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.i32 %590, 0
  %592 = icmp ne i32 %591, 0
  %593 = zext i1 %592 to i32
  %594 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.i32 %594, 0
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %630, label %597

; <label>:597                                     ; preds = %589
  br label %598

; <label>:598                                     ; preds = %625, %597
  %599 = phi i32 [ %626, %625 ], [ 0, %597 ]
  %600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %599, i32 0)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  %602 = extractvalue %dx.types.ResRet.f32 %600, 1
  %603 = extractvalue %dx.types.ResRet.f32 %600, 2
  %604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %599, i32 16)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = extractvalue %dx.types.ResRet.f32 %604, 1
  %607 = extractvalue %dx.types.ResRet.f32 %604, 2
  %608 = fsub fast float %601, %605
  %609 = fsub fast float %602, %606
  %610 = fsub fast float %603, %607
  %611 = fadd fast float %605, %601
  %612 = fadd fast float %606, %602
  %613 = fadd fast float %607, %603
  %614 = fcmp fast olt float %182, %608
  %615 = fcmp fast olt float %183, %609
  %616 = fcmp fast olt float %184, %610
  %617 = or i1 %614, %615
  %618 = or i1 %616, %617
  %619 = fcmp fast ogt float %182, %611
  %620 = fcmp fast ogt float %183, %612
  %621 = fcmp fast ogt float %184, %613
  %622 = or i1 %619, %620
  %623 = or i1 %621, %622
  %624 = or i1 %618, %623
  br i1 %624, label %625, label %628, !dx.controlflow.hints !43

; <label>:625                                     ; preds = %598
  %626 = add nuw i32 %599, 1
  %627 = icmp ult i32 %626, %595
  br i1 %627, label %598, label %628

; <label>:628                                     ; preds = %625, %598
  %629 = phi i32 [ 255, %625 ], [ %599, %598 ]
  br label %630

; <label>:630                                     ; preds = %628, %589
  %631 = phi i32 [ 255, %589 ], [ %629, %628 ]
  %632 = icmp eq i32 %631, 255
  br i1 %632, label %638, label %633, !dx.controlflow.hints !44

; <label>:633                                     ; preds = %630
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %631, i32 156)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = icmp ne i32 %635, 0
  %637 = zext i1 %636 to i32
  br label %638

; <label>:638                                     ; preds = %633, %630
  %639 = phi i32 [ %637, %633 ], [ %593, %630 ]
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %641, label %710, !dx.controlflow.hints !45

; <label>:641                                     ; preds = %638
  %642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.f32 %642, 3
  %644 = extractvalue %dx.types.CBufRet.f32 %384, 0
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 2
  %647 = extractvalue %dx.types.CBufRet.f32 %645, 3
  br i1 %632, label %658, label %648, !dx.controlflow.hints !46

; <label>:648                                     ; preds = %641
  %649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %631, i32 60)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.f32 %649, 0
  %651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %631, i32 64)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.f32 %651, 0
  %653 = extractvalue %dx.types.ResRet.f32 %651, 1
  %654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %631, i32 72)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.f32 %654, 0
  %656 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %631, i32 96)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.f32 %656, 0
  br label %658

; <label>:658                                     ; preds = %648, %641
  %659 = phi float [ %652, %648 ], [ %646, %641 ]
  %660 = phi float [ %653, %648 ], [ %647, %641 ]
  %661 = phi float [ %657, %648 ], [ %644, %641 ]
  %662 = phi float [ %655, %648 ], [ %385, %641 ]
  %663 = phi float [ %650, %648 ], [ %387, %641 ]
  %664 = call float @dx.op.binary.f32(i32 35, float %468, float 0.000000e+00)  ; FMax(a,b)
  %665 = call float @dx.op.binary.f32(i32 36, float %664, float 1.000000e+00)  ; FMin(a,b)
  %666 = call float @dx.op.unary.f32(i32 24, float %665)  ; Sqrt(value)
  %667 = call float @dx.op.binary.f32(i32 35, float %471, float 0x3F847AE140000000)  ; FMax(a,b)
  %668 = fsub fast float %469, %184
  %669 = fsub fast float %184, %470
  %670 = call float @dx.op.binary.f32(i32 36, float %669, float %668)  ; FMin(a,b)
  %671 = fdiv fast float %670, %667
  %672 = call float @dx.op.unary.f32(i32 7, float %671)  ; Saturate(value)
  %673 = fsub fast float %184, %662
  %674 = fdiv fast float %673, %663
  %675 = call float @dx.op.unary.f32(i32 7, float %674)  ; Saturate(value)
  %676 = fsub fast float 1.000000e+00, %675
  %677 = fmul float %672, %676
  %678 = fmul float %677, %677
  %679 = fmul fast float %666, %643
  %680 = fmul fast float %679, %678
  %681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %682 = extractvalue %dx.types.CBufRet.f32 %681, 2
  %683 = extractvalue %dx.types.CBufRet.f32 %681, 1
  %684 = fsub fast float %680, %683
  %685 = fsub fast float %682, %683
  %686 = fdiv fast float %684, %685
  %687 = call float @dx.op.unary.f32(i32 7, float %686)  ; Saturate(value)
  %688 = fmul fast float %687, %661
  %689 = fcmp fast ogt float %660, 0.000000e+00
  br i1 %689, label %690, label %710, !dx.controlflow.hints !47

; <label>:690                                     ; preds = %658
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 0
  %693 = extractvalue %dx.types.CBufRet.f32 %691, 1
  %694 = extractvalue %dx.types.CBufRet.f32 %691, 2
  %695 = fsub fast float %182, %692
  %696 = fsub fast float %183, %693
  %697 = fsub fast float %184, %694
  %698 = fmul fast float %695, %695
  %699 = fmul fast float %696, %696
  %700 = fadd fast float %698, %699
  %701 = fmul fast float %697, %697
  %702 = fadd fast float %700, %701
  %703 = call float @dx.op.unary.f32(i32 24, float %702)  ; Sqrt(value)
  %704 = fsub fast float %703, %659
  %705 = fsub fast float %660, %659
  %706 = fdiv fast float %704, %705
  %707 = call float @dx.op.unary.f32(i32 7, float %706)  ; Saturate(value)
  %708 = fmul fast float %707, %707
  %709 = fmul fast float %708, %688
  br label %710

; <label>:710                                     ; preds = %690, %658, %638
  %711 = phi float [ 0.000000e+00, %638 ], [ %709, %690 ], [ %688, %658 ]
  %712 = fmul fast float %711, %489
  %713 = fadd fast float %712, %588
  br label %714

; <label>:714                                     ; preds = %710, %587
  %715 = phi float [ %713, %710 ], [ %588, %587 ]
  %716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %717 = extractvalue %dx.types.CBufRet.f32 %716, 1
  %718 = fcmp fast ogt float %715, %717
  br i1 %718, label %719, label %731, !dx.controlflow.hints !48

; <label>:719                                     ; preds = %714
  %720 = fmul fast float %715, 0xBFF7154760000000
  %721 = call float @dx.op.unary.f32(i32 21, float %720)  ; Exp(value)
  %722 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  %723 = icmp eq i32 %188, 0
  br i1 %723, label %724, label %725, !dx.controlflow.hints !49

; <label>:724                                     ; preds = %719
  br label %725

; <label>:725                                     ; preds = %724, %719
  %726 = phi i32 [ %188, %719 ], [ 1, %724 ]
  %727 = phi float [ %189, %719 ], [ %185, %724 ]
  %728 = fadd fast float %489, %190
  %729 = fadd fast float %715, %191
  %730 = fmul fast float %722, %181
  br label %731

; <label>:731                                     ; preds = %725, %714
  %732 = phi float [ %730, %725 ], [ %181, %714 ]
  %733 = phi i32 [ %726, %725 ], [ %188, %714 ]
  %734 = phi float [ %727, %725 ], [ %189, %714 ]
  %735 = phi float [ %728, %725 ], [ %190, %714 ]
  %736 = phi float [ %729, %725 ], [ %191, %714 ]
  %737 = fadd fast float %489, %185
  %738 = fmul fast float %489, %56
  %739 = fmul fast float %489, %57
  %740 = fmul fast float %489, %58
  %741 = fadd fast float %738, %182
  %742 = fadd fast float %739, %183
  %743 = fadd fast float %740, %184
  %744 = fcmp fast olt float %737, %153
  %745 = extractvalue %dx.types.CBufRet.f32 %716, 2
  %746 = fcmp fast olt float %745, %732
  %747 = and i1 %744, %746
  br i1 %747, label %176, label %748

; <label>:748                                     ; preds = %731
  br label %749

; <label>:749                                     ; preds = %748, %125
  %750 = phi float [ 0.000000e+00, %125 ], [ %734, %748 ]
  %751 = phi float [ 0.000000e+00, %125 ], [ %735, %748 ]
  %752 = phi float [ 0.000000e+00, %125 ], [ %736, %748 ]
  %753 = extractvalue %dx.types.CBufRet.f32 %50, 3
  %754 = fmul fast float %753, %750
  %755 = fdiv fast float 1.000000e+00, %751
  %756 = fmul fast float %755, %752
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %11, i32 %12, i32 undef, float %754, float %756, float %752, float %754, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!21 = !{void ()* @cs_fog_raymarching_heightmap_particles, !"cs_fog_raymarching_heightmap_particles", null, !4, !22}
!22 = !{i32 0, i64 272, i32 4, !23}
!23 = !{i32 8, i32 8, i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 1}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}

