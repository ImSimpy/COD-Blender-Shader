;
; Note: shader requires additional functionality:
;       Typed UAV Load Additional Formats
;
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
; shader hash: 5694599795ce9a534ce4eecefb61096e
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
;   [48 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                       UAV     u32     2darray      U0             u0     1
;                                       UAV     f32     2darray      U1             u1     1
;                                       UAV     f32     2darray      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2DArray<vector<unsigned int, 4> >" = type { <4 x i32> }
%"class.RWTexture2DArray<float>" = type { float }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%WaterWaveWetnessUpdateConstants = type { i32, i32, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?waveWetnessMaxNodeHeightsLevel0@@3PAY07$$CAMA.1dim" = addrspace(3) global [64 x float] undef, align 4
@"\01?waveWetnessMaxNodeHeightsLevel1@@3PAY03$$CAMA.1dim" = addrspace(3) global [16 x float] undef, align 4

define void @cs_water_wave_wetness_update() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = alloca [4 x i32], align 4
  %9 = alloca [4 x float], align 4
  %10 = alloca [4 x float], align 4
  %11 = alloca [4 x float], align 4
  %12 = alloca [4 x float], align 4
  %13 = alloca [4 x float], align 4
  %14 = alloca [4 x float], align 4
  %15 = alloca [4 x i32], align 4
  %16 = alloca [4 x i32], align 4
  %17 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %18 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %19 = alloca [4 x float], align 4
  %20 = alloca [4 x float], align 4
  %21 = alloca [4 x float], align 4
  %22 = alloca [4 x float], align 4
  %23 = alloca [4 x float], align 4
  %24 = alloca [4 x float], align 4
  %25 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.i32 %25, 0
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 337)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 0
  %29 = extractvalue %dx.types.CBufRet.i32 %27, 1
  %30 = sub nsw i32 3, %26
  %31 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 338)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.i32 %31, 0
  %33 = extractvalue %dx.types.CBufRet.i32 %31, 1
  %34 = extractvalue %dx.types.CBufRet.i32 %31, 2
  %35 = extractvalue %dx.types.CBufRet.i32 %31, 3
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 2
  store i32 %34, i32* %38, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 3
  store i32 %35, i32* %39, align 4
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 %30
  %41 = load i32, i32* %40, align 4, !tbaa !21
  %42 = mul i32 %41, %28
  %43 = mul i32 %41, %29
  %44 = add i32 %17, 536870912
  %45 = add i32 %44, %42
  %46 = add i32 %18, 536870912
  %47 = add i32 %46, %43
  %48 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.i32 %48, 3
  %50 = and i32 %45, %49
  %51 = and i32 %47, %49
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 342)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 0
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = fmul fast float %56, 5.000000e-01
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 340)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %61 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %62 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %63 = getelementptr inbounds [4 x float], [4 x float]* %10, i32 0, i32 0
  store float %59, float* %63, align 4
  %64 = getelementptr inbounds [4 x float], [4 x float]* %10, i32 0, i32 1
  store float %60, float* %64, align 4
  %65 = getelementptr inbounds [4 x float], [4 x float]* %10, i32 0, i32 2
  store float %61, float* %65, align 4
  %66 = getelementptr inbounds [4 x float], [4 x float]* %10, i32 0, i32 3
  store float %62, float* %66, align 4
  %67 = getelementptr inbounds [4 x float], [4 x float]* %10, i32 0, i32 %26
  %68 = load float, float* %67, align 4, !tbaa !25
  %69 = fmul fast float %57, %68
  %70 = fsub fast float %53, %69
  %71 = fsub fast float %54, %69
  %72 = uitofp i32 %17 to float
  %73 = uitofp i32 %18 to float
  %74 = fadd fast float %72, 5.000000e-01
  %75 = fadd fast float %73, 5.000000e-01
  %76 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 0
  store float %59, float* %76, align 4
  %77 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 1
  store float %60, float* %77, align 4
  %78 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 2
  store float %61, float* %78, align 4
  %79 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 3
  store float %62, float* %79, align 4
  %80 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 %26
  %81 = load float, float* %80, align 4, !tbaa !25
  %82 = fmul fast float %81, %74
  %83 = fmul fast float %81, %75
  %84 = fadd fast float %82, %70
  %85 = fadd fast float %83, %71
  %86 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 0
  store float %59, float* %86, align 4
  %87 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 1
  store float %60, float* %87, align 4
  %88 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 2
  store float %61, float* %88, align 4
  %89 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 3
  store float %62, float* %89, align 4
  %90 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 %26
  %91 = load float, float* %90, align 4, !tbaa !25
  %92 = fmul fast float %57, %91
  %93 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %94 = extractvalue %dx.types.CBufRet.f32 %52, 3
  %95 = getelementptr inbounds [4 x float], [4 x float]* %13, i32 0, i32 0
  store float %59, float* %95, align 4
  %96 = getelementptr inbounds [4 x float], [4 x float]* %13, i32 0, i32 1
  store float %60, float* %96, align 4
  %97 = getelementptr inbounds [4 x float], [4 x float]* %13, i32 0, i32 2
  store float %61, float* %97, align 4
  %98 = getelementptr inbounds [4 x float], [4 x float]* %13, i32 0, i32 3
  store float %62, float* %98, align 4
  %99 = getelementptr inbounds [4 x float], [4 x float]* %13, i32 0, i32 %26
  %100 = load float, float* %99, align 4, !tbaa !25
  %101 = fmul fast float %57, %100
  %102 = fsub fast float %53, %92
  %103 = fsub fast float %102, %93
  %104 = fadd fast float %103, %101
  %105 = fsub fast float %54, %92
  %106 = fsub fast float %105, %94
  %107 = fadd fast float %106, %101
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 341)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 1
  %111 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %112 = extractvalue %dx.types.CBufRet.f32 %108, 3
  %113 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 0
  store float %109, float* %113, align 4
  %114 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 1
  store float %110, float* %114, align 4
  %115 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 2
  store float %111, float* %115, align 4
  %116 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 3
  store float %112, float* %116, align 4
  %117 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 %26
  %118 = load float, float* %117, align 4, !tbaa !25
  %119 = fmul fast float %104, %118
  %120 = fmul fast float %107, %118
  %121 = call float @dx.op.unary.f32(i32 27, float %119)  ; Round_ni(value)
  %122 = call float @dx.op.unary.f32(i32 27, float %120)  ; Round_ni(value)
  %123 = fptosi float %121 to i32
  %124 = fptosi float %122 to i32
  %125 = add i32 %123, %17
  %126 = add i32 %124, %18
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %129 = fcmp fast une float %128, 0.000000e+00
  %130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.i32 %130, 0
  %132 = and i32 %131, 32769
  %133 = icmp eq i32 %132, 32769
  %134 = and i1 %133, %129
  br i1 %134, label %135, label %227, !dx.controlflow.hints !27

; <label>:135                                     ; preds = %0
  %136 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 0
  store float %59, float* %136, align 4
  %137 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 1
  store float %60, float* %137, align 4
  %138 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 2
  store float %61, float* %138, align 4
  %139 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 3
  store float %62, float* %139, align 4
  %140 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 %26
  %141 = load float, float* %140, align 4, !tbaa !25, !noalias !28
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 3
  %144 = fmul fast float %143, %141
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = fsub fast float %84, %144
  %150 = fsub fast float %149, %146
  %151 = fadd fast float %150, %148
  %152 = fsub fast float %85, %144
  %153 = fsub fast float %152, %147
  %154 = fadd fast float %153, %148
  %155 = extractvalue %dx.types.CBufRet.f32 %145, 3
  %156 = fmul fast float %151, %155
  %157 = fmul fast float %154, %155
  %158 = call float @dx.op.unary.f32(i32 7, float %156)  ; Saturate(value)
  %159 = call float @dx.op.unary.f32(i32 7, float %157)  ; Saturate(value)
  %160 = fsub fast float 1.000000e+00, %158
  %161 = fsub fast float 1.000000e+00, %159
  %162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %160, float %161, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %163 = extractvalue %dx.types.ResRet.f32 %162, 0
  %164 = fcmp fast olt float %160, 0x3FEFF7CEE0000000
  %165 = fcmp fast olt float %161, 0x3FEFF7CEE0000000
  %166 = and i1 %164, %165
  %167 = fcmp fast ogt float %160, 0x3F50624DE0000000
  %168 = fcmp fast ogt float %161, 0x3F50624DE0000000
  %169 = and i1 %167, %168
  %170 = and i1 %166, %169
  %171 = fcmp fast une float %163, 0.000000e+00
  %172 = and i1 %170, %171
  %173 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %174 = fmul fast float %173, %163
  %175 = extractvalue %dx.types.CBufRet.f32 %127, 3
  %176 = fadd fast float %175, %174
  %177 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %176)  ; FMin(a,b)
  %178 = fadd fast float %144, %85
  %179 = fsub fast float %178, %147
  %180 = fadd fast float %179, %148
  %181 = fmul fast float %180, %155
  %182 = call float @dx.op.unary.f32(i32 7, float %181)  ; Saturate(value)
  %183 = fsub fast float 1.000000e+00, %182
  %184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %160, float %183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %185 = extractvalue %dx.types.ResRet.f32 %184, 0
  %186 = fcmp fast olt float %183, 0x3FEFF7CEE0000000
  %187 = and i1 %164, %186
  %188 = fcmp fast ogt float %183, 0x3F50624DE0000000
  %189 = and i1 %167, %188
  %190 = and i1 %187, %189
  %191 = fcmp fast une float %185, 0.000000e+00
  %192 = and i1 %172, %190
  %193 = and i1 %192, %191
  %194 = fmul fast float %173, %185
  %195 = fadd fast float %175, %194
  %196 = call float @dx.op.binary.f32(i32 36, float %177, float %195)  ; FMin(a,b)
  %197 = fadd fast float %144, %84
  %198 = fsub fast float %197, %146
  %199 = fadd fast float %198, %148
  %200 = fmul fast float %199, %155
  %201 = call float @dx.op.unary.f32(i32 7, float %200)  ; Saturate(value)
  %202 = fsub fast float 1.000000e+00, %201
  %203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %202, float %161, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %204 = extractvalue %dx.types.ResRet.f32 %203, 0
  %205 = fcmp fast olt float %202, 0x3FEFF7CEE0000000
  %206 = and i1 %205, %165
  %207 = fcmp fast ogt float %202, 0x3F50624DE0000000
  %208 = and i1 %207, %168
  %209 = and i1 %206, %208
  %210 = fcmp fast une float %204, 0.000000e+00
  %211 = and i1 %193, %209
  %212 = and i1 %211, %210
  %213 = fmul fast float %173, %204
  %214 = fadd fast float %175, %213
  %215 = call float @dx.op.binary.f32(i32 36, float %196, float %214)  ; FMin(a,b)
  %216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %202, float %183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = and i1 %205, %186
  %219 = and i1 %207, %188
  %220 = and i1 %218, %219
  %221 = fcmp fast une float %217, 0.000000e+00
  %222 = and i1 %212, %220
  %223 = and i1 %222, %221
  %224 = fmul fast float %173, %217
  %225 = fadd fast float %175, %224
  %226 = call float @dx.op.binary.f32(i32 36, float %215, float %225)  ; FMin(a,b)
  br label %227

; <label>:227                                     ; preds = %135, %0
  %228 = phi i1 [ false, %0 ], [ %223, %135 ]
  %229 = phi float [ 0x47EFFFFFE0000000, %0 ], [ %226, %135 ]
  %230 = select i1 %228, float %229, float 0xC7EFFFFFE0000000
  %231 = fptosi float %56 to i32
  %232 = ashr i32 %231, 1
  %233 = ashr i32 %231, 2
  %234 = or i32 %126, %125
  %235 = icmp sgt i32 %234, -1
  %236 = icmp slt i32 %125, %231
  %237 = icmp slt i32 %126, %231
  %238 = and i1 %236, %237
  %239 = and i1 %235, %238
  br i1 %239, label %240, label %326, !dx.controlflow.hints !31

; <label>:240                                     ; preds = %227
  %241 = extractvalue %dx.types.CBufRet.i32 %27, 2
  %242 = extractvalue %dx.types.CBufRet.i32 %27, 3
  %243 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i32 0, i32 0
  store i32 %32, i32* %243, align 4
  %244 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i32 0, i32 1
  store i32 %33, i32* %244, align 4
  %245 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i32 0, i32 2
  store i32 %34, i32* %245, align 4
  %246 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i32 0, i32 3
  store i32 %35, i32* %246, align 4
  %247 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i32 0, i32 %30
  %248 = load i32, i32* %247, align 4, !tbaa !21, !noalias !32
  %249 = mul i32 %248, %241
  %250 = mul i32 %248, %242
  %251 = add i32 %125, 536870912
  %252 = add i32 %251, %249
  %253 = add i32 %126, 536870912
  %254 = add i32 %253, %250
  %255 = and i32 %252, %49
  %256 = and i32 %254, %49
  %257 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %3, i32 undef, i32 %255, i32 %256, i32 %26, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = extractvalue %dx.types.ResRet.i32 %257, 1
  %260 = extractvalue %dx.types.ResRet.i32 %257, 2
  %261 = extractvalue %dx.types.ResRet.i32 %257, 3
  %262 = and i32 %258, 65535
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = getelementptr inbounds [4 x float], [4 x float]* %22, i32 0, i32 0
  store float %263, float* %264, align 4, !tbaa !25, !alias.scope !37, !noalias !32
  %265 = lshr i32 %258, 16
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 0
  store float %266, float* %267, align 4, !tbaa !25, !alias.scope !37, !noalias !32
  %268 = and i32 %259, 65535
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = getelementptr inbounds [4 x float], [4 x float]* %22, i32 0, i32 1
  store float %269, float* %270, align 4, !tbaa !25, !alias.scope !37, !noalias !32
  %271 = lshr i32 %259, 16
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 1
  store float %272, float* %273, align 4, !tbaa !25, !alias.scope !37, !noalias !32
  %274 = and i32 %260, 65535
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = getelementptr inbounds [4 x float], [4 x float]* %22, i32 0, i32 2
  store float %275, float* %276, align 4, !tbaa !25, !alias.scope !37, !noalias !32
  %277 = lshr i32 %260, 16
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 2
  store float %278, float* %279, align 4, !tbaa !25, !alias.scope !37, !noalias !32
  %280 = and i32 %261, 65535
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = getelementptr inbounds [4 x float], [4 x float]* %22, i32 0, i32 3
  store float %281, float* %282, align 4, !tbaa !25, !alias.scope !37, !noalias !32
  %283 = lshr i32 %261, 16
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 3
  store float %284, float* %285, align 4, !tbaa !25, !alias.scope !37, !noalias !32
  br label %286

; <label>:286                                     ; preds = %318, %240
  %287 = phi float [ %263, %240 ], [ %322, %318 ]
  %288 = phi float [ %266, %240 ], [ %320, %318 ]
  %289 = phi i32 [ 0, %240 ], [ %315, %318 ]
  %290 = phi i32 [ 0, %240 ], [ %316, %318 ]
  %291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.i32 %291, 0
  %293 = icmp eq i32 %292, 0
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 2
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %298 = fmul fast float %297, %295
  br i1 %293, label %302, label %299, !dx.controlflow.hints !40

; <label>:299                                     ; preds = %286
  %300 = call float @dx.op.binary.f32(i32 35, float %287, float 0x3F947AE140000000)  ; FMax(a,b)
  %301 = fmul fast float %298, %300
  br label %302

; <label>:302                                     ; preds = %299, %286
  %303 = phi float [ %301, %299 ], [ %298, %286 ]
  %304 = fsub fast float %287, %303
  %305 = fcmp fast ogt float %304, 0.000000e+00
  %306 = xor i1 %228, true
  %307 = fcmp fast oge float %288, %230
  %308 = or i1 %307, %306
  %309 = and i1 %308, %305
  br i1 %309, label %310, label %314, !dx.controlflow.hints !41

; <label>:310                                     ; preds = %302
  %311 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 %289
  store float %288, float* %311, align 4, !tbaa !25, !alias.scope !42, !noalias !43
  %312 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 %289
  store float %304, float* %312, align 4, !tbaa !25, !alias.scope !42, !noalias !43
  %313 = add nsw i32 %289, 1
  br label %314

; <label>:314                                     ; preds = %310, %302
  %315 = phi i32 [ %313, %310 ], [ %289, %302 ]
  %316 = add nuw nsw i32 %290, 1
  %317 = icmp eq i32 %316, 4
  br i1 %317, label %323, label %318

; <label>:318                                     ; preds = %314
  %319 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 %316
  %320 = load float, float* %319, align 4
  %321 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 %316
  %322 = load float, float* %321, align 4
  br label %286

; <label>:323                                     ; preds = %314
  %324 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 %50, i32 %51, i32 %26, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %325 = extractvalue %dx.types.ResRet.f32 %324, 0
  br label %433

; <label>:326                                     ; preds = %227
  %327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.i32 %327, 1
  %329 = add i32 %328, -1
  %330 = icmp ult i32 %26, %329
  %331 = sub nsw i32 0, %232
  %332 = icmp sge i32 %125, %331
  %333 = icmp sge i32 %126, %331
  %334 = and i1 %332, %333
  %335 = and i1 %334, %330
  %336 = add nsw i32 %232, %231
  %337 = icmp slt i32 %125, %336
  %338 = icmp slt i32 %126, %336
  %339 = and i1 %337, %338
  %340 = and i1 %339, %335
  br i1 %340, label %341, label %433, !dx.controlflow.hints !44

; <label>:341                                     ; preds = %326
  %342 = add i32 %26, 1
  %343 = ashr i32 %125, 1
  %344 = ashr i32 %126, 1
  %345 = extractvalue %dx.types.CBufRet.i32 %27, 2
  %346 = extractvalue %dx.types.CBufRet.i32 %27, 3
  %347 = sub i32 2, %26
  %348 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 0
  store i32 %32, i32* %348, align 4
  %349 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 1
  store i32 %33, i32* %349, align 4
  %350 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 2
  store i32 %34, i32* %350, align 4
  %351 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 3
  store i32 %35, i32* %351, align 4
  %352 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 %347
  %353 = load i32, i32* %352, align 4, !tbaa !21, !noalias !45
  %354 = mul i32 %353, %345
  %355 = mul i32 %353, %346
  %356 = add nsw i32 %343, 536870912
  %357 = add i32 %356, %233
  %358 = add i32 %357, %354
  %359 = add nsw i32 %344, 536870912
  %360 = add i32 %359, %233
  %361 = add i32 %360, %355
  %362 = and i32 %358, %49
  %363 = and i32 %361, %49
  %364 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 %362, i32 %363, i32 %342, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %365 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %3, i32 undef, i32 %362, i32 %363, i32 %342, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = extractvalue %dx.types.ResRet.i32 %365, 1
  %368 = extractvalue %dx.types.ResRet.i32 %365, 2
  %369 = extractvalue %dx.types.ResRet.i32 %365, 3
  %370 = and i32 %366, 65535
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = getelementptr inbounds [4 x float], [4 x float]* %24, i32 0, i32 0
  store float %371, float* %372, align 4, !tbaa !25, !alias.scope !50, !noalias !45
  %373 = lshr i32 %366, 16
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 0
  store float %374, float* %375, align 4, !tbaa !25, !alias.scope !50, !noalias !45
  %376 = and i32 %367, 65535
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = getelementptr inbounds [4 x float], [4 x float]* %24, i32 0, i32 1
  store float %377, float* %378, align 4, !tbaa !25, !alias.scope !50, !noalias !45
  %379 = lshr i32 %367, 16
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 1
  store float %380, float* %381, align 4, !tbaa !25, !alias.scope !50, !noalias !45
  %382 = and i32 %368, 65535
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = getelementptr inbounds [4 x float], [4 x float]* %24, i32 0, i32 2
  store float %383, float* %384, align 4, !tbaa !25, !alias.scope !50, !noalias !45
  %385 = lshr i32 %368, 16
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 2
  store float %386, float* %387, align 4, !tbaa !25, !alias.scope !50, !noalias !45
  %388 = and i32 %369, 65535
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = getelementptr inbounds [4 x float], [4 x float]* %24, i32 0, i32 3
  store float %389, float* %390, align 4, !tbaa !25, !alias.scope !50, !noalias !45
  %391 = lshr i32 %369, 16
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 3
  store float %392, float* %393, align 4, !tbaa !25, !alias.scope !50, !noalias !45
  br label %394

; <label>:394                                     ; preds = %426, %341
  %395 = phi float [ %371, %341 ], [ %430, %426 ]
  %396 = phi float [ %374, %341 ], [ %428, %426 ]
  %397 = phi i32 [ 0, %341 ], [ %423, %426 ]
  %398 = phi i32 [ 0, %341 ], [ %424, %426 ]
  %399 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.i32 %399, 0
  %401 = icmp eq i32 %400, 0
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 2
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 2
  %406 = fmul fast float %405, %403
  br i1 %401, label %410, label %407, !dx.controlflow.hints !40

; <label>:407                                     ; preds = %394
  %408 = call float @dx.op.binary.f32(i32 35, float %395, float 0x3F947AE140000000)  ; FMax(a,b)
  %409 = fmul fast float %406, %408
  br label %410

; <label>:410                                     ; preds = %407, %394
  %411 = phi float [ %409, %407 ], [ %406, %394 ]
  %412 = fsub fast float %395, %411
  %413 = fcmp fast ogt float %412, 0.000000e+00
  %414 = xor i1 %228, true
  %415 = fcmp fast oge float %396, %230
  %416 = or i1 %415, %414
  %417 = and i1 %416, %413
  br i1 %417, label %418, label %422, !dx.controlflow.hints !41

; <label>:418                                     ; preds = %410
  %419 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 %397
  store float %396, float* %419, align 4, !tbaa !25, !alias.scope !53, !noalias !54
  %420 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 %397
  store float %412, float* %420, align 4, !tbaa !25, !alias.scope !53, !noalias !54
  %421 = add nsw i32 %397, 1
  br label %422

; <label>:422                                     ; preds = %418, %410
  %423 = phi i32 [ %421, %418 ], [ %397, %410 ]
  %424 = add nuw nsw i32 %398, 1
  %425 = icmp eq i32 %424, 4
  br i1 %425, label %431, label %426

; <label>:426                                     ; preds = %422
  %427 = getelementptr [4 x float], [4 x float]* %23, i32 0, i32 %424
  %428 = load float, float* %427, align 4
  %429 = getelementptr [4 x float], [4 x float]* %24, i32 0, i32 %424
  %430 = load float, float* %429, align 4
  br label %394

; <label>:431                                     ; preds = %422
  %432 = extractvalue %dx.types.ResRet.f32 %364, 0
  br label %433

; <label>:433                                     ; preds = %431, %326, %323
  %434 = phi i32 [ %315, %323 ], [ 0, %326 ], [ %423, %431 ]
  %435 = phi float [ %325, %323 ], [ 0.000000e+00, %326 ], [ %432, %431 ]
  %436 = icmp sgt i32 %434, 1
  br i1 %436, label %437, label %524, !dx.controlflow.hints !55

; <label>:437                                     ; preds = %433
  %438 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 1
  %439 = load float, float* %438, align 4, !tbaa !25, !noalias !56
  %440 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 1
  %441 = load float, float* %440, align 4, !tbaa !25, !noalias !56
  %442 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 0
  %443 = load float, float* %442, align 4, !tbaa !25, !noalias !56
  %444 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %445 = fmul fast float %444, %439
  %446 = fsub fast float %441, %443
  %447 = fadd fast float %446, %445
  %448 = extractvalue %dx.types.CBufRet.f32 %55, 3
  %449 = fmul fast float %447, %448
  %450 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 0
  %451 = load float, float* %450, align 4, !tbaa !25, !noalias !56
  %452 = fsub fast float %451, %449
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 2
  %455 = fadd fast float %452, %454
  %456 = extractvalue %dx.types.CBufRet.f32 %453, 1
  %457 = fadd fast float %456, %443
  %458 = fmul fast float %455, %457
  br label %459

; <label>:459                                     ; preds = %495, %437
  %460 = phi float [ %461, %495 ], [ %443, %437 ]
  %461 = phi float [ %497, %495 ], [ %441, %437 ]
  %462 = phi i32 [ %493, %495 ], [ 0, %437 ]
  %463 = phi float [ %494, %495 ], [ %458, %437 ]
  %464 = phi i32 [ %465, %495 ], [ 1, %437 ]
  %465 = add nuw nsw i32 %464, 1
  %466 = icmp ult i32 %465, %434
  br i1 %466, label %467, label %472, !dx.controlflow.hints !60

; <label>:467                                     ; preds = %459
  %468 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 %465
  %469 = load float, float* %468, align 4, !tbaa !25, !noalias !56
  %470 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 %465
  %471 = load float, float* %470, align 4, !tbaa !25, !noalias !56
  br label %472

; <label>:472                                     ; preds = %467, %459
  %473 = phi float [ %469, %467 ], [ %230, %459 ]
  %474 = phi float [ %471, %467 ], [ %461, %459 ]
  %475 = fsub fast float %461, %460
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 2
  %478 = fmul fast float %477, %473
  %479 = fsub fast float %474, %461
  %480 = fadd fast float %479, %478
  %481 = extractvalue %dx.types.CBufRet.f32 %476, 3
  %482 = fmul fast float %480, %481
  %483 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 %464
  %484 = load float, float* %483, align 4, !tbaa !25, !noalias !56
  %485 = fsub fast float %484, %482
  %486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.f32 %486, 2
  %488 = fadd fast float %485, %487
  %489 = extractvalue %dx.types.CBufRet.f32 %486, 1
  %490 = fadd fast float %475, %489
  %491 = fmul fast float %490, %488
  %492 = fcmp fast olt float %491, %463
  %493 = select i1 %492, i32 %464, i32 %462
  %494 = select i1 %492, float %491, float %463
  br i1 %466, label %495, label %498

; <label>:495                                     ; preds = %472
  %496 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 %465
  %497 = load float, float* %496, align 4, !tbaa !25, !noalias !56
  br label %459

; <label>:498                                     ; preds = %472
  %499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %500 = extractvalue %dx.types.CBufRet.f32 %499, 3
  %501 = fcmp fast olt float %494, %500
  br i1 %501, label %502, label %524, !dx.controlflow.hints !61

; <label>:502                                     ; preds = %498
  %503 = icmp eq i32 %434, 0
  br i1 %503, label %522, label %504

; <label>:504                                     ; preds = %502
  br label %505

; <label>:505                                     ; preds = %517, %504
  %506 = phi i32 [ %518, %517 ], [ 0, %504 ]
  %507 = phi i32 [ %519, %517 ], [ 0, %504 ]
  %508 = icmp eq i32 %507, %493
  br i1 %508, label %517, label %509, !dx.controlflow.hints !62

; <label>:509                                     ; preds = %505
  %510 = getelementptr [4 x float], [4 x float]* %19, i32 0, i32 %507
  %511 = getelementptr [4 x float], [4 x float]* %20, i32 0, i32 %507
  %512 = load float, float* %510, align 4
  %513 = load float, float* %511, align 4
  %514 = getelementptr [4 x float], [4 x float]* %19, i32 0, i32 %506
  %515 = getelementptr [4 x float], [4 x float]* %20, i32 0, i32 %506
  store float %512, float* %514, align 4
  store float %513, float* %515, align 4
  %516 = add nsw i32 %506, 1
  br label %517

; <label>:517                                     ; preds = %509, %505
  %518 = phi i32 [ %516, %509 ], [ %506, %505 ]
  %519 = add nuw nsw i32 %507, 1
  %520 = icmp eq i32 %519, %434
  br i1 %520, label %521, label %505

; <label>:521                                     ; preds = %517
  br label %522

; <label>:522                                     ; preds = %521, %502
  %523 = add i32 %434, -1
  br label %524

; <label>:524                                     ; preds = %522, %498, %433
  %525 = phi i32 [ %523, %522 ], [ %434, %498 ], [ %434, %433 ]
  %526 = fcmp fast ogt float %230, %435
  %527 = and i1 %228, %526
  %528 = icmp eq i32 %525, 0
  %529 = add nsw i32 %525, -1
  %530 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 %529
  %531 = load float, float* %530, align 4, !tbaa !25
  %532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.f32 %532, 0
  %534 = fsub fast float 1.000000e+00, %533
  %535 = fcmp fast olt float %531, %534
  %536 = or i1 %528, %535
  %537 = and i1 %527, %536
  %538 = icmp slt i32 %525, 4
  %539 = and i1 %538, %537
  br i1 %539, label %540, label %544, !dx.controlflow.hints !63

; <label>:540                                     ; preds = %524
  %541 = getelementptr [4 x float], [4 x float]* %19, i32 0, i32 %525
  %542 = getelementptr [4 x float], [4 x float]* %20, i32 0, i32 %525
  store float %230, float* %541, align 4
  store float 1.000000e+00, float* %542, align 4
  %543 = add i32 %525, 1
  br label %544

; <label>:544                                     ; preds = %540, %524
  %545 = phi i32 [ %543, %540 ], [ %525, %524 ]
  %546 = icmp ult i32 %545, 4
  br i1 %546, label %547, label %555

; <label>:547                                     ; preds = %544
  br label %548

; <label>:548                                     ; preds = %548, %547
  %549 = phi i32 [ %552, %548 ], [ %545, %547 ]
  %550 = getelementptr [4 x float], [4 x float]* %19, i32 0, i32 %549
  %551 = getelementptr [4 x float], [4 x float]* %20, i32 0, i32 %549
  store float 0xC7EFFFFFE0000000, float* %550, align 4
  store float 0.000000e+00, float* %551, align 4
  %552 = add nuw nsw i32 %549, 1
  %553 = icmp eq i32 %552, 4
  br i1 %553, label %554, label %548, !llvm.loop !64

; <label>:554                                     ; preds = %548
  br label %555

; <label>:555                                     ; preds = %554, %544
  %556 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 0
  %557 = load float, float* %556, align 4, !tbaa !25
  %558 = call i32 @dx.op.legacyF32ToF16(i32 130, float %557)  ; LegacyF32ToF16(value)
  %559 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 0
  %560 = load float, float* %559, align 4, !tbaa !25
  %561 = call i32 @dx.op.legacyF32ToF16(i32 130, float %560)  ; LegacyF32ToF16(value)
  %562 = shl i32 %561, 16
  %563 = or i32 %562, %558
  %564 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 1
  %565 = load float, float* %564, align 4, !tbaa !25
  %566 = call i32 @dx.op.legacyF32ToF16(i32 130, float %565)  ; LegacyF32ToF16(value)
  %567 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 1
  %568 = load float, float* %567, align 4, !tbaa !25
  %569 = call i32 @dx.op.legacyF32ToF16(i32 130, float %568)  ; LegacyF32ToF16(value)
  %570 = shl i32 %569, 16
  %571 = or i32 %570, %566
  %572 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 2
  %573 = load float, float* %572, align 4, !tbaa !25
  %574 = call i32 @dx.op.legacyF32ToF16(i32 130, float %573)  ; LegacyF32ToF16(value)
  %575 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 2
  %576 = load float, float* %575, align 4, !tbaa !25
  %577 = call i32 @dx.op.legacyF32ToF16(i32 130, float %576)  ; LegacyF32ToF16(value)
  %578 = shl i32 %577, 16
  %579 = or i32 %578, %574
  %580 = getelementptr inbounds [4 x float], [4 x float]* %20, i32 0, i32 3
  %581 = load float, float* %580, align 4, !tbaa !25
  %582 = call i32 @dx.op.legacyF32ToF16(i32 130, float %581)  ; LegacyF32ToF16(value)
  %583 = getelementptr inbounds [4 x float], [4 x float]* %19, i32 0, i32 3
  %584 = load float, float* %583, align 4, !tbaa !25
  %585 = call i32 @dx.op.legacyF32ToF16(i32 130, float %584)  ; LegacyF32ToF16(value)
  %586 = shl i32 %585, 16
  %587 = or i32 %586, %582
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %3, i32 %50, i32 %51, i32 %26, i32 %563, i32 %571, i32 %579, i32 %587, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %50, i32 %51, i32 %26, float %230, float %230, float %230, float %230, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %588 = icmp ne i32 %545, 0
  %589 = select i1 %588, float %560, float 0.000000e+00
  %590 = and i32 %17, 7
  %591 = and i32 %18, 7
  %592 = mul i32 %590, 8
  %593 = add i32 %591, %592
  %594 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?waveWetnessMaxNodeHeightsLevel0@@3PAY07$$CAMA.1dim", i32 0, i32 %593
  store float %589, float addrspace(3)* %594, align 4, !tbaa !25
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %595 = or i32 %18, %17
  %596 = and i32 %595, 4
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %598, label %625, !dx.controlflow.hints !66

; <label>:598                                     ; preds = %555
  %599 = shl nuw nsw i32 %591, 1
  %600 = or i32 %599, 1
  %601 = shl nuw nsw i32 %590, 1
  %602 = or i32 %601, 1
  %603 = mul i32 %602, 8
  %604 = add i32 %600, %603
  %605 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?waveWetnessMaxNodeHeightsLevel0@@3PAY07$$CAMA.1dim", i32 0, i32 %604
  %606 = load float, float addrspace(3)* %605, align 4, !tbaa !25
  %607 = mul i32 %601, 8
  %608 = add i32 %600, %607
  %609 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?waveWetnessMaxNodeHeightsLevel0@@3PAY07$$CAMA.1dim", i32 0, i32 %608
  %610 = load float, float addrspace(3)* %609, align 4, !tbaa !25
  %611 = mul i32 %602, 8
  %612 = add i32 %599, %611
  %613 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?waveWetnessMaxNodeHeightsLevel0@@3PAY07$$CAMA.1dim", i32 0, i32 %612
  %614 = load float, float addrspace(3)* %613, align 4, !tbaa !25
  %615 = mul i32 %601, 8
  %616 = add i32 %599, %615
  %617 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?waveWetnessMaxNodeHeightsLevel0@@3PAY07$$CAMA.1dim", i32 0, i32 %616
  %618 = load float, float addrspace(3)* %617, align 4, !tbaa !25
  %619 = call float @dx.op.binary.f32(i32 35, float %614, float %610)  ; FMax(a,b)
  %620 = call float @dx.op.binary.f32(i32 35, float %618, float %619)  ; FMax(a,b)
  %621 = call float @dx.op.binary.f32(i32 35, float %620, float %606)  ; FMax(a,b)
  %622 = mul i32 %590, 4
  %623 = add i32 %591, %622
  %624 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?waveWetnessMaxNodeHeightsLevel1@@3PAY03$$CAMA.1dim", i32 0, i32 %623
  store float %621, float addrspace(3)* %624, align 4, !tbaa !25
  br label %625

; <label>:625                                     ; preds = %598, %555
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %626 = and i32 %595, 6
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %628, label %662, !dx.controlflow.hints !67

; <label>:628                                     ; preds = %625
  %629 = shl nuw nsw i32 %591, 1
  %630 = or i32 %629, 1
  %631 = shl nuw nsw i32 %590, 1
  %632 = or i32 %631, 1
  %633 = mul i32 %632, 4
  %634 = add i32 %630, %633
  %635 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?waveWetnessMaxNodeHeightsLevel1@@3PAY03$$CAMA.1dim", i32 0, i32 %634
  %636 = load float, float addrspace(3)* %635, align 4, !tbaa !25
  %637 = mul i32 %631, 4
  %638 = add i32 %630, %637
  %639 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?waveWetnessMaxNodeHeightsLevel1@@3PAY03$$CAMA.1dim", i32 0, i32 %638
  %640 = load float, float addrspace(3)* %639, align 4, !tbaa !25
  %641 = mul i32 %632, 4
  %642 = add i32 %629, %641
  %643 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?waveWetnessMaxNodeHeightsLevel1@@3PAY03$$CAMA.1dim", i32 0, i32 %642
  %644 = load float, float addrspace(3)* %643, align 4, !tbaa !25
  %645 = mul i32 %631, 4
  %646 = add i32 %629, %645
  %647 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?waveWetnessMaxNodeHeightsLevel1@@3PAY03$$CAMA.1dim", i32 0, i32 %646
  %648 = load float, float addrspace(3)* %647, align 4, !tbaa !25
  %649 = call float @dx.op.binary.f32(i32 35, float %644, float %640)  ; FMax(a,b)
  %650 = call float @dx.op.binary.f32(i32 35, float %648, float %649)  ; FMax(a,b)
  %651 = call float @dx.op.binary.f32(i32 35, float %650, float %636)  ; FMax(a,b)
  %652 = lshr i32 %17, 2
  %653 = lshr i32 %18, 2
  %654 = and i32 %652, 1073741822
  %655 = and i32 %653, 1073741822
  %656 = add nuw nsw i32 %654, %590
  %657 = add nuw nsw i32 %655, %591
  %658 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %659 = extractvalue %dx.types.CBufRet.i32 %658, 1
  %660 = icmp ne i32 %659, 0
  %661 = select i1 %660, float %651, float 6.550000e+04
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %656, i32 %657, i32 %26, float %661, float %661, float %661, float %661, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %662

; <label>:662                                     ; preds = %628, %625
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !13, !16}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !11, !12}
!9 = !{i32 0, %"class.RWTexture2DArray<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 5}
!11 = !{i32 1, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!12 = !{i32 2, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!13 = !{!14, !15}
!14 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!15 = !{i32 1, %WaterWaveWetnessUpdateConstants* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!16 = !{!17}
!17 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!18 = !{void ()* @cs_water_wave_wetness_update, !"cs_water_wave_wetness_update", null, !4, !19}
!19 = !{i32 0, i64 8448, i32 4, !20}
!20 = !{i32 8, i32 8, i32 1}
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !23, i64 0}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = !{!29}
!29 = distinct !{!29, !30, !"\01?WaveWetnessCreateWaterSurface@@YAMV?$vector@M$01@@HAIA_N@Z: %valid"}
!30 = distinct !{!30, !"\01?WaveWetnessCreateWaterSurface@@YAMV?$vector@M$01@@HAIA_N@Z"}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = !{!33, !35, !36}
!33 = distinct !{!33, !34, !"\01?WaveWetnessLoadUpdateFilterNodes@@YAXV?$vector@H$01@@HM_NY03$$CAUWaterWaveWetnessNode@@AIAHAIAM@Z: %nodes"}
!34 = distinct !{!34, !"\01?WaveWetnessLoadUpdateFilterNodes@@YAXV?$vector@H$01@@HM_NY03$$CAUWaterWaveWetnessNode@@AIAHAIAM@Z"}
!35 = distinct !{!35, !34, !"\01?WaveWetnessLoadUpdateFilterNodes@@YAXV?$vector@H$01@@HM_NY03$$CAUWaterWaveWetnessNode@@AIAHAIAM@Z: %nodeCount"}
!36 = distinct !{!36, !34, !"\01?WaveWetnessLoadUpdateFilterNodes@@YAXV?$vector@H$01@@HM_NY03$$CAUWaterWaveWetnessNode@@AIAHAIAM@Z: %lastFrameWaterSurface"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"\01?Water_WaveWetnessLoadNodes@@YAXV?$RWTexture2DArray@V?$vector@I$03@@@@V?$vector@I$01@@IY03$$CAUWaterWaveWetnessNode@@@Z: %nodes"}
!39 = distinct !{!39, !"\01?Water_WaveWetnessLoadNodes@@YAXV?$RWTexture2DArray@V?$vector@I$03@@@@V?$vector@I$01@@IY03$$CAUWaterWaveWetnessNode@@@Z"}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = !{!33}
!43 = !{!35, !36}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = !{!46, !48, !49}
!46 = distinct !{!46, !47, !"\01?WaveWetnessLoadUpdateFilterNodes@@YAXV?$vector@H$01@@HM_NY03$$CAUWaterWaveWetnessNode@@AIAHAIAM@Z: %nodes"}
!47 = distinct !{!47, !"\01?WaveWetnessLoadUpdateFilterNodes@@YAXV?$vector@H$01@@HM_NY03$$CAUWaterWaveWetnessNode@@AIAHAIAM@Z"}
!48 = distinct !{!48, !47, !"\01?WaveWetnessLoadUpdateFilterNodes@@YAXV?$vector@H$01@@HM_NY03$$CAUWaterWaveWetnessNode@@AIAHAIAM@Z: %nodeCount"}
!49 = distinct !{!49, !47, !"\01?WaveWetnessLoadUpdateFilterNodes@@YAXV?$vector@H$01@@HM_NY03$$CAUWaterWaveWetnessNode@@AIAHAIAM@Z: %lastFrameWaterSurface"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"\01?Water_WaveWetnessLoadNodes@@YAXV?$RWTexture2DArray@V?$vector@I$03@@@@V?$vector@I$01@@IY03$$CAUWaterWaveWetnessNode@@@Z: %nodes"}
!52 = distinct !{!52, !"\01?Water_WaveWetnessLoadNodes@@YAXV?$RWTexture2DArray@V?$vector@I$03@@@@V?$vector@I$01@@IY03$$CAUWaterWaveWetnessNode@@@Z"}
!53 = !{!46}
!54 = !{!48, !49}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = !{!57, !59}
!57 = distinct !{!57, !58, !"\01?WaveWetnessFindLeastImportantNode@@YAXY03$$CBUWaterWaveWetnessNode@@IMAIAMAIAI@Z: %outNodeVisualImpact"}
!58 = distinct !{!58, !"\01?WaveWetnessFindLeastImportantNode@@YAXY03$$CBUWaterWaveWetnessNode@@IMAIAMAIAI@Z"}
!59 = distinct !{!59, !58, !"\01?WaveWetnessFindLeastImportantNode@@YAXY03$$CBUWaterWaveWetnessNode@@IMAIAMAIAI@Z: %outNodeIndex"}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}

