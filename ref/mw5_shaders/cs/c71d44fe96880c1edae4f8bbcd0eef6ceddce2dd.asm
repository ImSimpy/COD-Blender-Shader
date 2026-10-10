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
; shader hash: 75fa5a93f48351dfe17c0ef1be44227c
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
;                                   texture     f32          2d      T3             t0     1
;                                   texture    byte         r/o      T4            t17     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;                                       UAVunorm_f32     2darray      U3             u3     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.StructuredBuffer<VolumetricBBoxGpu>" = type { %struct.VolumetricBBoxGpu }
%struct.VolumetricBBoxGpu = type { <3 x float>, i32, <3 x float>, float, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture2D<float>" = type { float }
%"class.RWTexture2DArray<vector<float, 4> >" = type { <4 x float> }
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

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

define void @cs_fog_raymarching_air_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %15 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %16 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = add i32 %15, %14
  %20 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.i32 %20, 1
  %22 = add i32 %19, %21
  %23 = lshr i32 %22, 1
  %24 = and i32 %23, 1
  %25 = and i32 %22, 1
  %26 = xor i32 %24, %25
  %27 = shl i32 %14, 1
  %28 = shl i32 %15, 1
  %29 = or i32 %26, %27
  %30 = or i32 %24, %28
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = extractvalue %dx.types.ResRet.i32 %33, 1
  %36 = extractvalue %dx.types.ResRet.i32 %33, 2
  %37 = extractvalue %dx.types.ResRet.i32 %33, 3
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = extractvalue %dx.types.ResRet.i32 %38, 1
  %41 = extractvalue %dx.types.ResRet.i32 %38, 2
  %42 = extractvalue %dx.types.ResRet.i32 %38, 3
  %43 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.i32 %43, 0
  %45 = extractvalue %dx.types.ResRet.i32 %43, 1
  %46 = extractvalue %dx.types.ResRet.i32 %43, 2
  %47 = extractvalue %dx.types.ResRet.i32 %43, 3
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 2
  %50 = fmul fast float %49, %49
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %54 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %55 = fmul fast float %54, 0x3FF17B1420000000
  %56 = icmp eq i32 %16, 0
  br i1 %56, label %57, label %198, !dx.controlflow.hints !28

; <label>:57                                      ; preds = %0
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 3
  %62 = extractvalue %dx.types.ResRet.i32 %31, 1
  %63 = and i32 %62, 65535
  %64 = call float @dx.op.legacyF16ToF32(i32 131, i32 %63)  ; LegacyF16ToF32(value)
  %65 = lshr i32 %32, 16
  %66 = call float @dx.op.legacyF16ToF32(i32 131, i32 %65)  ; LegacyF16ToF32(value)
  %67 = and i32 %32, 65535
  %68 = call float @dx.op.legacyF16ToF32(i32 131, i32 %67)  ; LegacyF16ToF32(value)
  %69 = lshr i32 %37, 16
  %70 = call float @dx.op.legacyF16ToF32(i32 131, i32 %69)  ; LegacyF16ToF32(value)
  %71 = and i32 %37, 65535
  %72 = call float @dx.op.legacyF16ToF32(i32 131, i32 %71)  ; LegacyF16ToF32(value)
  %73 = lshr i32 %36, 16
  %74 = call float @dx.op.legacyF16ToF32(i32 131, i32 %73)  ; LegacyF16ToF32(value)
  %75 = and i32 %36, 65535
  %76 = call float @dx.op.legacyF16ToF32(i32 131, i32 %75)  ; LegacyF16ToF32(value)
  %77 = lshr i32 %35, 16
  %78 = call float @dx.op.legacyF16ToF32(i32 131, i32 %77)  ; LegacyF16ToF32(value)
  %79 = lshr i32 %34, 16
  %80 = call float @dx.op.legacyF16ToF32(i32 131, i32 %79)  ; LegacyF16ToF32(value)
  %81 = and i32 %34, 65535
  %82 = call float @dx.op.legacyF16ToF32(i32 131, i32 %81)  ; LegacyF16ToF32(value)
  %83 = lshr i32 %42, 16
  %84 = call float @dx.op.legacyF16ToF32(i32 131, i32 %83)  ; LegacyF16ToF32(value)
  %85 = and i32 %42, 65535
  %86 = call float @dx.op.legacyF16ToF32(i32 131, i32 %85)  ; LegacyF16ToF32(value)
  %87 = lshr i32 %41, 16
  %88 = call float @dx.op.legacyF16ToF32(i32 131, i32 %87)  ; LegacyF16ToF32(value)
  %89 = and i32 %41, 65535
  %90 = call float @dx.op.legacyF16ToF32(i32 131, i32 %89)  ; LegacyF16ToF32(value)
  %91 = lshr i32 %40, 16
  %92 = call float @dx.op.legacyF16ToF32(i32 131, i32 %91)  ; LegacyF16ToF32(value)
  %93 = and i32 %40, 65535
  %94 = call float @dx.op.legacyF16ToF32(i32 131, i32 %93)  ; LegacyF16ToF32(value)
  %95 = and i32 %39, 65535
  %96 = call float @dx.op.legacyF16ToF32(i32 131, i32 %95)  ; LegacyF16ToF32(value)
  %97 = lshr i32 %47, 16
  %98 = call float @dx.op.legacyF16ToF32(i32 131, i32 %97)  ; LegacyF16ToF32(value)
  %99 = and i32 %47, 65535
  %100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %99)  ; LegacyF16ToF32(value)
  %101 = lshr i32 %46, 16
  %102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %101)  ; LegacyF16ToF32(value)
  %103 = and i32 %46, 65535
  %104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %103)  ; LegacyF16ToF32(value)
  %105 = lshr i32 %45, 16
  %106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %105)  ; LegacyF16ToF32(value)
  %107 = and i32 %45, 65535
  %108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %107)  ; LegacyF16ToF32(value)
  %109 = lshr i32 %44, 16
  %110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %109)  ; LegacyF16ToF32(value)
  %111 = and i32 %35, 65535
  %112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %111)  ; LegacyF16ToF32(value)
  %113 = lshr i32 %39, 16
  %114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %113)  ; LegacyF16ToF32(value)
  %115 = and i32 %44, 65535
  %116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %115)  ; LegacyF16ToF32(value)
  %117 = fmul fast float %112, 0x3FD20DD760000000
  %118 = fmul fast float %54, %49
  %119 = fmul fast float %118, %76
  %120 = fmul fast float %54, %54
  %121 = fmul fast float %120, 0x3FEE471020000000
  %122 = fadd fast float %121, 0xBFD42F6020000000
  %123 = fmul fast float %68, %122
  %124 = fmul fast float %74, %52
  %125 = fmul fast float %78, %53
  %126 = fmul fast float %52, %50
  %127 = fmul fast float %126, %55
  %128 = fmul fast float %127, %66
  %129 = fsub fast float -0.000000e+00, %128
  %130 = fmul fast float %53, %50
  %131 = fmul fast float %130, %55
  %132 = fmul fast float %131, %70
  %133 = fmul fast float %52, %52
  %134 = fmul fast float %53, %53
  %135 = fsub fast float %133, %134
  %136 = fmul fast float %135, 0x3FE17B1420000000
  %137 = fmul fast float %136, %64
  %138 = fmul fast float %53, 0x3FF17B1420000000
  %139 = fmul fast float %138, %52
  %140 = fmul fast float %139, %72
  %141 = fadd fast float %125, %124
  %142 = fmul fast float %141, %49
  %143 = fsub fast float %142, %119
  %144 = fmul fast float %143, 0x3FDF454380000000
  %145 = fadd fast float %123, %137
  %146 = fadd fast float %145, %140
  %147 = fmul fast float %146, %50
  %148 = fsub fast float %129, %132
  %149 = fadd fast float %148, %117
  %150 = fadd fast float %149, %144
  %151 = fadd fast float %150, %147
  %152 = fmul fast float %59, %61
  %153 = fmul fast float %152, %151
  %154 = fmul fast float %114, 0x3FD20DD760000000
  %155 = fmul fast float %118, %92
  %156 = fmul fast float %84, %122
  %157 = fmul fast float %90, %52
  %158 = fmul fast float %94, %53
  %159 = fmul fast float %127, %82
  %160 = fsub fast float -0.000000e+00, %159
  %161 = fmul fast float %131, %86
  %162 = fmul fast float %136, %80
  %163 = fmul fast float %139, %88
  %164 = fadd fast float %158, %157
  %165 = fmul fast float %164, %49
  %166 = fsub fast float %165, %155
  %167 = fmul fast float %166, 0x3FDF454380000000
  %168 = fadd fast float %156, %162
  %169 = fadd fast float %168, %163
  %170 = fmul fast float %169, %50
  %171 = fsub fast float %160, %161
  %172 = fadd fast float %171, %154
  %173 = fadd fast float %172, %167
  %174 = fadd fast float %173, %170
  %175 = fmul fast float %152, %174
  %176 = fmul fast float %116, 0x3FD20DD760000000
  %177 = fmul fast float %118, %108
  %178 = fmul fast float %100, %122
  %179 = fmul fast float %106, %52
  %180 = fmul fast float %110, %53
  %181 = fmul fast float %127, %98
  %182 = fsub fast float -0.000000e+00, %181
  %183 = fmul fast float %131, %102
  %184 = fmul fast float %136, %96
  %185 = fmul fast float %139, %104
  %186 = fadd fast float %180, %179
  %187 = fmul fast float %186, %49
  %188 = fsub fast float %187, %177
  %189 = fmul fast float %188, 0x3FDF454380000000
  %190 = fadd fast float %178, %184
  %191 = fadd fast float %190, %185
  %192 = fmul fast float %191, %50
  %193 = fsub fast float %182, %183
  %194 = fadd fast float %193, %176
  %195 = fadd fast float %194, %189
  %196 = fadd fast float %195, %192
  %197 = fmul fast float %152, %196
  br label %198

; <label>:198                                     ; preds = %57, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %199 = uitofp i32 %29 to float
  %200 = uitofp i32 %30 to float
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 2
  %203 = fmul fast float %202, 0x3FE3C6EF40000000
  %204 = frem fast float %199, 2.560000e+02
  %205 = frem fast float %200, 2.560000e+02
  %206 = fptoui float %204 to i32
  %207 = fptoui float %205 to i32
  %208 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %206, i32 %207, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 1
  %210 = extractvalue %dx.types.ResRet.f32 %208, 2
  %211 = extractvalue %dx.types.ResRet.f32 %208, 3
  %212 = fadd fast float %209, %203
  %213 = fadd fast float %210, %203
  %214 = fadd fast float %211, %203
  %215 = call float @dx.op.unary.f32(i32 22, float %212)  ; Frc(value)
  %216 = call float @dx.op.unary.f32(i32 22, float %213)  ; Frc(value)
  %217 = call float @dx.op.unary.f32(i32 22, float %214)  ; Frc(value)
  %218 = fadd fast float %216, %199
  %219 = fadd fast float %217, %200
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 2
  %222 = extractvalue %dx.types.CBufRet.f32 %220, 3
  %223 = fmul fast float %221, %218
  %224 = fmul fast float %222, %219
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 0
  %227 = extractvalue %dx.types.CBufRet.f32 %225, 1
  %228 = extractvalue %dx.types.CBufRet.f32 %225, 2
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 1
  %231 = fmul fast float %223, 2.000000e+00
  %232 = fmul fast float %224, 2.000000e+00
  %233 = fsub fast float 1.000000e+00, %231
  %234 = fsub fast float 1.000000e+00, %232
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.f32 %235, 0
  %237 = extractvalue %dx.types.CBufRet.f32 %235, 1
  %238 = extractvalue %dx.types.CBufRet.f32 %235, 2
  %239 = fmul fast float %236, %233
  %240 = fmul fast float %237, %233
  %241 = fmul fast float %238, %233
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %244 = extractvalue %dx.types.CBufRet.f32 %242, 1
  %245 = extractvalue %dx.types.CBufRet.f32 %242, 2
  %246 = fmul fast float %243, %234
  %247 = fmul fast float %244, %234
  %248 = fmul fast float %245, %234
  %249 = fadd fast float %246, %239
  %250 = fadd fast float %247, %240
  %251 = fadd fast float %248, %241
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 0
  %254 = extractvalue %dx.types.CBufRet.f32 %252, 1
  %255 = extractvalue %dx.types.CBufRet.f32 %252, 2
  %256 = fadd fast float %249, %253
  %257 = fadd fast float %250, %254
  %258 = fadd fast float %251, %255
  %259 = fmul fast float %256, %230
  %260 = fmul fast float %257, %230
  %261 = fmul fast float %258, %230
  %262 = fmul fast float %259, %259
  %263 = fmul fast float %260, %260
  %264 = fadd fast float %262, %263
  %265 = fmul fast float %261, %261
  %266 = fadd fast float %264, %265
  %267 = call float @dx.op.unary.f32(i32 24, float %266)  ; Sqrt(value)
  %268 = fdiv fast float 1.000000e+00, %267
  %269 = fmul fast float %259, %268
  %270 = fmul fast float %260, %268
  %271 = fmul fast float %261, %268
  %272 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %29, i32 %30, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = fcmp fast ogt float %273, -1.000000e+00
  %275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %276 = extractvalue %dx.types.CBufRet.f32 %275, 1
  %277 = select i1 %274, float %276, float 1.000000e+00
  %278 = fadd fast float %273, 1.000000e+00
  %279 = fmul fast float %277, %278
  %280 = call float @dx.op.unary.f32(i32 6, float %279)  ; FAbs(value)
  %281 = fdiv fast float 1.000000e+00, %230
  %282 = fmul fast float %281, %267
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 1
  %285 = fmul fast float %284, %282
  %286 = fmul fast float %282, %280
  %287 = extractvalue %dx.types.CBufRet.f32 %275, 3
  %288 = fcmp fast oge float %280, %287
  %289 = call float @dx.op.binary.f32(i32 36, float %286, float %285)  ; FMin(a,b)
  %290 = select i1 %288, float %285, float %289
  %291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.f32 %291, 3
  %293 = fsub fast float -0.000000e+00, %226
  %294 = fsub fast float -0.000000e+00, %227
  %295 = fsub fast float %292, %228
  %296 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %293, float %294, float %295)  ; Dot3(ax,ay,az,bx,by,bz)
  %297 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %269, float %270, float %271)  ; Dot3(ax,ay,az,bx,by,bz)
  %298 = fdiv fast float 1.000000e+00, %297
  %299 = fmul fast float %298, %296
  %300 = fcmp fast olt float %299, 0.000000e+00
  %301 = fcmp fast ogt float %271, 0.000000e+00
  %302 = and i1 %301, %300
  br i1 %302, label %307, label %303, !dx.controlflow.hints !29

; <label>:303                                     ; preds = %198
  %304 = fcmp fast olt float %271, 0.000000e+00
  br i1 %304, label %305, label %307, !dx.controlflow.hints !30

; <label>:305                                     ; preds = %303
  %306 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %299)  ; FMax(a,b)
  br label %307

; <label>:307                                     ; preds = %305, %303, %198
  %308 = phi float [ 0.000000e+00, %198 ], [ %306, %305 ], [ 0.000000e+00, %303 ]
  %309 = phi float [ 0.000000e+00, %198 ], [ 0x47EFFFFFE0000000, %305 ], [ %299, %303 ]
  %310 = fcmp fast oeq float %309, 0.000000e+00
  br i1 %310, label %314, label %311, !dx.controlflow.hints !31

; <label>:311                                     ; preds = %307
  %312 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %308)  ; FMin(a,b)
  %313 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %309)  ; FMax(a,b)
  br label %314

; <label>:314                                     ; preds = %311, %307
  %315 = phi i32 [ 1, %311 ], [ 0, %307 ]
  %316 = phi float [ %313, %311 ], [ -1.000000e+00, %307 ]
  %317 = phi float [ %312, %311 ], [ 0x47EFFFFFE0000000, %307 ]
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 3
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %322 = fsub fast float %319, %228
  %323 = fadd fast float %322, %321
  %324 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %293, float %294, float %323)  ; Dot3(ax,ay,az,bx,by,bz)
  %325 = fmul fast float %298, %324
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %328 = fsub fast float %327, %228
  %329 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %293, float %294, float %328)  ; Dot3(ax,ay,az,bx,by,bz)
  %330 = fmul fast float %298, %329
  %331 = call float @dx.op.binary.f32(i32 36, float %325, float %330)  ; FMin(a,b)
  %332 = call float @dx.op.binary.f32(i32 35, float %325, float %330)  ; FMax(a,b)
  %333 = call float @dx.op.binary.f32(i32 36, float %317, float %331)  ; FMin(a,b)
  %334 = call float @dx.op.binary.f32(i32 35, float %316, float %332)  ; FMax(a,b)
  %335 = fdiv fast float 1.000000e+00, %269
  %336 = fdiv fast float 1.000000e+00, %270
  %337 = fdiv fast float 1.000000e+00, %271
  %338 = call float @dx.op.binary.f32(i32 36, float %290, float %334)  ; FMin(a,b)
  %339 = call float @dx.op.binary.f32(i32 35, float %267, float %333)  ; FMax(a,b)
  %340 = extractvalue %dx.types.CBufRet.f32 %291, 0
  %341 = fmul fast float %215, 2.000000e+00
  %342 = fadd fast float %341, -1.000000e+00
  %343 = fmul fast float %340, %342
  %344 = fadd fast float %343, %339
  %345 = fcmp fast olt float %344, %338
  %346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.f32 %346, 2
  %348 = fcmp fast olt float %347, 1.000000e+00
  %349 = and i1 %348, %345
  br i1 %349, label %350, label %771

; <label>:350                                     ; preds = %314
  %351 = fmul fast float %344, %271
  %352 = fadd fast float %351, %228
  %353 = fmul fast float %344, %270
  %354 = fadd fast float %353, %227
  %355 = fmul fast float %344, %269
  %356 = fadd fast float %355, %226
  br label %357

; <label>:357                                     ; preds = %749, %350
  %358 = phi float [ %483, %749 ], [ undef, %350 ]
  %359 = phi float [ %484, %749 ], [ undef, %350 ]
  %360 = phi float [ %485, %749 ], [ undef, %350 ]
  %361 = phi float [ %486, %749 ], [ undef, %350 ]
  %362 = phi float [ %751, %749 ], [ 0.000000e+00, %350 ]
  %363 = phi float [ %752, %749 ], [ 1.000000e+00, %350 ]
  %364 = phi float [ %762, %749 ], [ %356, %350 ]
  %365 = phi float [ %763, %749 ], [ %354, %350 ]
  %366 = phi float [ %764, %749 ], [ %352, %350 ]
  %367 = phi float [ %750, %749 ], [ %344, %350 ]
  %368 = phi i32 [ %378, %749 ], [ 0, %350 ]
  %369 = phi i32 [ %488, %749 ], [ 10, %350 ]
  %370 = phi float [ %753, %749 ], [ 0.000000e+00, %350 ]
  %371 = phi float [ %754, %749 ], [ 0.000000e+00, %350 ]
  %372 = phi float [ %755, %749 ], [ 0.000000e+00, %350 ]
  %373 = phi float [ %756, %749 ], [ 0.000000e+00, %350 ]
  %374 = phi float [ %757, %749 ], [ 0.000000e+00, %350 ]
  %375 = phi i32 [ %758, %749 ], [ 0, %350 ]
  %376 = fsub fast float -0.000000e+00, %365
  %377 = fsub fast float -0.000000e+00, %364
  %378 = add i32 %368, 1
  %379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.f32 %379, 0
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 0
  %383 = extractvalue %dx.types.CBufRet.f32 %381, 1
  %384 = fsub fast float %364, %382
  %385 = fsub fast float %365, %383
  %386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %387 = extractvalue %dx.types.CBufRet.f32 %386, 2
  %388 = extractvalue %dx.types.CBufRet.f32 %386, 3
  %389 = fmul fast float %384, %387
  %390 = fmul fast float %385, %388
  %391 = call float @dx.op.binary.f32(i32 36, float %389, float %390)  ; FMin(a,b)
  %392 = fcmp fast olt float %391, 0.000000e+00
  %393 = call float @dx.op.binary.f32(i32 35, float %389, float %390)  ; FMax(a,b)
  %394 = fcmp fast ogt float %393, 1.000000e+00
  %395 = or i1 %392, %394
  %396 = extractvalue %dx.types.CBufRet.f32 %381, 2
  %397 = fcmp fast olt float %366, %396
  %398 = or i1 %395, %397
  %399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.f32 %399, 3
  %401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.f32 %401, 0
  %403 = fadd fast float %402, %400
  %404 = fcmp fast ogt float %366, %403
  %405 = or i1 %398, %404
  br i1 %405, label %406, label %435, !dx.controlflow.hints !32

; <label>:406                                     ; preds = %357
  %407 = extractvalue %dx.types.CBufRet.f32 %386, 0
  %408 = extractvalue %dx.types.CBufRet.f32 %386, 1
  %409 = fsub fast float %382, %364
  %410 = fmul fast float %409, %335
  %411 = fadd fast float %409, %407
  %412 = fmul fast float %411, %335
  %413 = call float @dx.op.binary.f32(i32 36, float %410, float %412)  ; FMin(a,b)
  %414 = call float @dx.op.binary.f32(i32 35, float %410, float %412)  ; FMax(a,b)
  %415 = fsub fast float %383, %365
  %416 = fmul fast float %415, %336
  %417 = fadd fast float %415, %408
  %418 = fmul fast float %417, %336
  %419 = call float @dx.op.binary.f32(i32 36, float %416, float %418)  ; FMin(a,b)
  %420 = call float @dx.op.binary.f32(i32 35, float %413, float %419)  ; FMax(a,b)
  %421 = call float @dx.op.binary.f32(i32 35, float %416, float %418)  ; FMax(a,b)
  %422 = call float @dx.op.binary.f32(i32 36, float %414, float %421)  ; FMin(a,b)
  %423 = fsub fast float %396, %366
  %424 = fmul fast float %423, %337
  %425 = fsub fast float %400, %366
  %426 = fadd fast float %425, %402
  %427 = fmul fast float %426, %337
  %428 = call float @dx.op.binary.f32(i32 36, float %424, float %427)  ; FMin(a,b)
  %429 = call float @dx.op.binary.f32(i32 35, float %420, float %428)  ; FMax(a,b)
  %430 = call float @dx.op.binary.f32(i32 35, float %424, float %427)  ; FMax(a,b)
  %431 = call float @dx.op.binary.f32(i32 36, float %422, float %430)  ; FMin(a,b)
  %432 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %429)  ; FMax(a,b)
  %433 = fcmp fast oge float %431, %432
  %434 = select i1 %433, float %429, float 1.000000e+07
  br label %481

; <label>:435                                     ; preds = %357
  %436 = fsub fast float 1.000000e+00, %390
  %437 = icmp eq i32 %369, 0
  br i1 %437, label %466, label %438

; <label>:438                                     ; preds = %435
  br label %439

; <label>:439                                     ; preds = %462, %438
  %440 = phi i32 [ %463, %462 ], [ %369, %438 ]
  %441 = uitofp i32 %440 to float
  %442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %389, float %436, float undef, float undef, i32 0, i32 0, i32 undef, float %441)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = extractvalue %dx.types.ResRet.f32 %442, 1
  %445 = extractvalue %dx.types.ResRet.f32 %442, 2
  %446 = fcmp fast oeq float %443, 0.000000e+00
  %447 = fcmp ule float %366, %445
  %448 = fcmp uge float %366, %444
  %449 = or i1 %448, %447
  %450 = or i1 %446, %449
  br i1 %450, label %451, label %462, !dx.controlflow.hints !33

; <label>:451                                     ; preds = %439
  %452 = extractvalue %dx.types.ResRet.f32 %442, 3
  %453 = extractvalue %dx.types.CBufRet.f32 %386, 0
  %454 = and i32 %440, 31
  %455 = lshr i32 1024, %454
  %456 = uitofp i32 %455 to float
  %457 = fdiv fast float %453, %456
  %458 = add i32 %440, 1
  %459 = uitofp i32 %458 to float
  %460 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %459)  ; FMin(a,b)
  %461 = fptosi float %460 to i32
  br label %481

; <label>:462                                     ; preds = %439
  %463 = add i32 %440, -1
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %465, label %439, !llvm.loop !34

; <label>:465                                     ; preds = %462
  br label %466

; <label>:466                                     ; preds = %465, %435
  %467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %10, float %389, float %436, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  %471 = extractvalue %dx.types.ResRet.f32 %467, 3
  %472 = extractvalue %dx.types.CBufRet.f32 %386, 0
  %473 = fmul fast float %472, 9.765625e-04
  %474 = fcmp fast oeq float %468, 0.000000e+00
  %475 = fcmp ule float %366, %470
  %476 = fcmp uge float %366, %469
  %477 = or i1 %476, %475
  %478 = or i1 %474, %477
  %479 = zext i1 %478 to i32
  %480 = xor i32 %479, 1
  br label %481

; <label>:481                                     ; preds = %466, %451, %406
  %482 = phi float [ %434, %406 ], [ %457, %451 ], [ %473, %466 ]
  %483 = phi float [ %358, %406 ], [ %443, %451 ], [ %468, %466 ]
  %484 = phi float [ %359, %406 ], [ %444, %451 ], [ %469, %466 ]
  %485 = phi float [ %360, %406 ], [ %445, %451 ], [ %470, %466 ]
  %486 = phi float [ %361, %406 ], [ %452, %451 ], [ %471, %466 ]
  %487 = phi i32 [ 0, %406 ], [ 0, %451 ], [ %480, %466 ]
  %488 = phi i32 [ 10, %406 ], [ %461, %451 ], [ 1, %466 ]
  %489 = icmp eq i32 %487, 0
  %490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %491 = extractvalue %dx.types.CBufRet.f32 %490, 2
  %492 = call float @dx.op.binary.f32(i32 35, float %482, float %491)  ; FMax(a,b)
  %493 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %492)  ; FMin(a,b)
  %494 = icmp eq i32 %315, 0
  br i1 %494, label %507, label %495, !dx.controlflow.hints !36

; <label>:495                                     ; preds = %481
  %496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %497 = extractvalue %dx.types.CBufRet.f32 %496, 3
  %498 = extractvalue %dx.types.CBufRet.f32 %496, 2
  %499 = fmul fast float %497, %367
  %500 = fdiv fast float %499, %338
  %501 = fadd fast float %500, 1.000000e+00
  %502 = call float @dx.op.unary.f32(i32 23, float %501)  ; Log(value)
  %503 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %502)  ; FMin(a,b)
  %504 = fmul fast float %498, %338
  %505 = fmul fast float %504, %503
  %506 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %505)  ; FMin(a,b)
  br label %507

; <label>:507                                     ; preds = %495, %481
  %508 = phi float [ %506, %495 ], [ 0x47EFFFFFE0000000, %481 ]
  %509 = extractvalue %dx.types.CBufRet.f32 %379, 2
  %510 = fmul fast float %509, %367
  %511 = call float @dx.op.unary.f32(i32 23, float %510)  ; Log(value)
  %512 = fmul fast float %511, 0x3FE62E4300000000
  %513 = call float @dx.op.binary.f32(i32 35, float %512, float 1.000000e+00)  ; FMax(a,b)
  %514 = fmul fast float %513, %508
  %515 = call float @dx.op.binary.f32(i32 36, float %514, float %493)  ; FMin(a,b)
  %516 = call float @dx.op.binary.f32(i32 35, float %515, float %380)  ; FMax(a,b)
  %517 = fadd fast float %338, 0x3F1A36E2E0000000
  %518 = fsub fast float %517, %367
  %519 = call float @dx.op.binary.f32(i32 36, float %518, float %516)  ; FMin(a,b)
  br i1 %494, label %565, label %520, !dx.controlflow.hints !37

; <label>:520                                     ; preds = %507
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 0
  %523 = fsub fast float %522, %366
  %524 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %377, float %376, float %523)  ; Dot3(ax,ay,az,bx,by,bz)
  %525 = fmul fast float %298, %524
  %526 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %525)  ; FMax(a,b)
  %527 = fcmp fast olt float %271, 0.000000e+00
  %528 = call float @dx.op.binary.f32(i32 36, float %519, float %526)  ; FMin(a,b)
  br i1 %527, label %530, label %529, !dx.controlflow.hints !38

; <label>:529                                     ; preds = %520
  br label %530

; <label>:530                                     ; preds = %529, %520
  %531 = phi float [ 0.000000e+00, %529 ], [ %528, %520 ]
  %532 = phi float [ %528, %529 ], [ %519, %520 ]
  %533 = phi float [ %528, %529 ], [ 0.000000e+00, %520 ]
  %534 = phi float [ %519, %529 ], [ %528, %520 ]
  %535 = fsub fast float %532, %531
  %536 = extractvalue %dx.types.CBufRet.f32 %521, 1
  %537 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %536)  ; FMin(a,b)
  %538 = fsub fast float %366, %522
  %539 = fmul fast float %537, 0x3FF7154760000000
  %540 = fmul fast float %539, %538
  %541 = call float @dx.op.unary.f32(i32 21, float %540)  ; Exp(value)
  %542 = fmul fast float %271, 0x3FF7154760000000
  %543 = fmul fast float %542, %534
  %544 = fmul fast float %543, %537
  %545 = call float @dx.op.unary.f32(i32 21, float %544)  ; Exp(value)
  %546 = fmul fast float %542, %533
  %547 = fmul fast float %546, %537
  %548 = call float @dx.op.unary.f32(i32 21, float %547)  ; Exp(value)
  %549 = fsub fast float %545, %548
  %550 = fmul fast float %549, %541
  %551 = fmul fast float %537, %271
  %552 = fdiv fast float %550, %551
  %553 = fadd fast float %535, %552
  %554 = call float @dx.op.unary.f32(i32 6, float %271)  ; FAbs(value)
  %555 = fcmp fast olt float %554, 0x3F0FFB4800000000
  %556 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %538)  ; FMax(a,b)
  %557 = fmul fast float %556, 0x3FF7154760000000
  %558 = fmul fast float %557, %536
  %559 = call float @dx.op.unary.f32(i32 21, float %558)  ; Exp(value)
  %560 = fmul fast float %559, %519
  %561 = select i1 %555, float %560, float %553
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 1
  %564 = fmul fast float %561, %563
  br label %565

; <label>:565                                     ; preds = %530, %507
  %566 = phi float [ %564, %530 ], [ 0.000000e+00, %507 ]
  br i1 %489, label %692, label %567, !dx.controlflow.hints !39

; <label>:567                                     ; preds = %565
  %568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.i32 %568, 0
  %570 = icmp ne i32 %569, 0
  %571 = zext i1 %570 to i32
  %572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.i32 %572, 0
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %608, label %575

; <label>:575                                     ; preds = %567
  br label %576

; <label>:576                                     ; preds = %603, %575
  %577 = phi i32 [ %604, %603 ], [ 0, %575 ]
  %578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %577, i32 0)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.f32 %578, 0
  %580 = extractvalue %dx.types.ResRet.f32 %578, 1
  %581 = extractvalue %dx.types.ResRet.f32 %578, 2
  %582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %577, i32 16)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  %584 = extractvalue %dx.types.ResRet.f32 %582, 1
  %585 = extractvalue %dx.types.ResRet.f32 %582, 2
  %586 = fsub fast float %579, %583
  %587 = fsub fast float %580, %584
  %588 = fsub fast float %581, %585
  %589 = fadd fast float %583, %579
  %590 = fadd fast float %584, %580
  %591 = fadd fast float %585, %581
  %592 = fcmp fast olt float %364, %586
  %593 = fcmp fast olt float %365, %587
  %594 = fcmp fast olt float %366, %588
  %595 = or i1 %592, %593
  %596 = or i1 %594, %595
  %597 = fcmp fast ogt float %364, %589
  %598 = fcmp fast ogt float %365, %590
  %599 = fcmp fast ogt float %366, %591
  %600 = or i1 %597, %598
  %601 = or i1 %599, %600
  %602 = or i1 %596, %601
  br i1 %602, label %603, label %606, !dx.controlflow.hints !40

; <label>:603                                     ; preds = %576
  %604 = add nuw i32 %577, 1
  %605 = icmp ult i32 %604, %573
  br i1 %605, label %576, label %606

; <label>:606                                     ; preds = %603, %576
  %607 = phi i32 [ 255, %603 ], [ %577, %576 ]
  br label %608

; <label>:608                                     ; preds = %606, %567
  %609 = phi i32 [ 255, %567 ], [ %607, %606 ]
  %610 = icmp eq i32 %609, 255
  br i1 %610, label %616, label %611, !dx.controlflow.hints !41

; <label>:611                                     ; preds = %608
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %609, i32 156)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = icmp ne i32 %613, 0
  %615 = zext i1 %614 to i32
  br label %616

; <label>:616                                     ; preds = %611, %608
  %617 = phi i32 [ %615, %611 ], [ %571, %608 ]
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %688, !dx.controlflow.hints !42

; <label>:619                                     ; preds = %616
  %620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.f32 %620, 3
  %622 = extractvalue %dx.types.CBufRet.f32 %399, 0
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 2
  %625 = extractvalue %dx.types.CBufRet.f32 %623, 3
  br i1 %610, label %636, label %626, !dx.controlflow.hints !43

; <label>:626                                     ; preds = %619
  %627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %609, i32 60)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.f32 %627, 0
  %629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %609, i32 64)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.f32 %629, 0
  %631 = extractvalue %dx.types.ResRet.f32 %629, 1
  %632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %609, i32 72)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.f32 %632, 0
  %634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %609, i32 96)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.f32 %634, 0
  br label %636

; <label>:636                                     ; preds = %626, %619
  %637 = phi float [ %628, %626 ], [ %402, %619 ]
  %638 = phi float [ %633, %626 ], [ %400, %619 ]
  %639 = phi float [ %635, %626 ], [ %622, %619 ]
  %640 = phi float [ %630, %626 ], [ %624, %619 ]
  %641 = phi float [ %631, %626 ], [ %625, %619 ]
  %642 = call float @dx.op.binary.f32(i32 35, float %483, float 0.000000e+00)  ; FMax(a,b)
  %643 = call float @dx.op.binary.f32(i32 36, float %642, float 1.000000e+00)  ; FMin(a,b)
  %644 = call float @dx.op.unary.f32(i32 24, float %643)  ; Sqrt(value)
  %645 = call float @dx.op.binary.f32(i32 35, float %486, float 0x3F847AE140000000)  ; FMax(a,b)
  %646 = fsub fast float %484, %366
  %647 = fsub fast float %366, %485
  %648 = call float @dx.op.binary.f32(i32 36, float %647, float %646)  ; FMin(a,b)
  %649 = fdiv fast float %648, %645
  %650 = call float @dx.op.unary.f32(i32 7, float %649)  ; Saturate(value)
  %651 = fsub fast float %366, %638
  %652 = fdiv fast float %651, %637
  %653 = call float @dx.op.unary.f32(i32 7, float %652)  ; Saturate(value)
  %654 = fsub fast float 1.000000e+00, %653
  %655 = fmul float %650, %654
  %656 = fmul float %655, %655
  %657 = fmul fast float %644, %621
  %658 = fmul fast float %657, %656
  %659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %660 = extractvalue %dx.types.CBufRet.f32 %659, 2
  %661 = extractvalue %dx.types.CBufRet.f32 %659, 1
  %662 = fsub fast float %658, %661
  %663 = fsub fast float %660, %661
  %664 = fdiv fast float %662, %663
  %665 = call float @dx.op.unary.f32(i32 7, float %664)  ; Saturate(value)
  %666 = fmul fast float %665, %639
  %667 = fcmp fast ogt float %641, 0.000000e+00
  br i1 %667, label %668, label %688, !dx.controlflow.hints !44

; <label>:668                                     ; preds = %636
  %669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.f32 %669, 0
  %671 = extractvalue %dx.types.CBufRet.f32 %669, 1
  %672 = extractvalue %dx.types.CBufRet.f32 %669, 2
  %673 = fsub fast float %364, %670
  %674 = fsub fast float %365, %671
  %675 = fsub fast float %366, %672
  %676 = fmul fast float %673, %673
  %677 = fmul fast float %674, %674
  %678 = fadd fast float %676, %677
  %679 = fmul fast float %675, %675
  %680 = fadd fast float %678, %679
  %681 = call float @dx.op.unary.f32(i32 24, float %680)  ; Sqrt(value)
  %682 = fsub fast float %681, %640
  %683 = fsub fast float %641, %640
  %684 = fdiv fast float %682, %683
  %685 = call float @dx.op.unary.f32(i32 7, float %684)  ; Saturate(value)
  %686 = fmul fast float %685, %685
  %687 = fmul fast float %686, %666
  br label %688

; <label>:688                                     ; preds = %668, %636, %616
  %689 = phi float [ 0.000000e+00, %616 ], [ %687, %668 ], [ %666, %636 ]
  %690 = fmul fast float %689, %519
  %691 = fadd fast float %690, %566
  br label %692

; <label>:692                                     ; preds = %688, %565
  %693 = phi float [ %691, %688 ], [ %566, %565 ]
  %694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %695 = extractvalue %dx.types.CBufRet.f32 %694, 1
  %696 = fcmp fast ogt float %693, %695
  br i1 %696, label %699, label %697, !dx.controlflow.hints !45

; <label>:697                                     ; preds = %692
  %698 = fadd fast float %519, %367
  br label %749

; <label>:699                                     ; preds = %692
  %700 = fmul fast float %693, 0xBFF7154760000000
  %701 = call float @dx.op.unary.f32(i32 21, float %700)  ; Exp(value)
  %702 = call float @dx.op.unary.f32(i32 7, float %701)  ; Saturate(value)
  %703 = fsub fast float 1.000000e+00, %702
  %704 = fdiv fast float %693, %519
  %705 = fadd fast float %519, %367
  %706 = fmul fast float %367, %367
  %707 = fmul fast float %705, %705
  %708 = fsub fast float %706, %707
  %709 = fmul fast float %708, -5.000000e-01
  %710 = fmul fast float %709, %704
  %711 = fadd fast float %710, %362
  %712 = fadd fast float %693, %370
  %713 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %714 = extractvalue %dx.types.CBufRet.i32 %713, 0
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %742, label %716, !dx.controlflow.hints !46

; <label>:716                                     ; preds = %699
  %717 = icmp ne i32 %375, 0
  %718 = zext i1 %717 to i32
  %719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %720 = extractvalue %dx.types.CBufRet.f32 %719, 2
  %721 = extractvalue %dx.types.CBufRet.f32 %719, 0
  %722 = fsub fast float %705, %721
  %723 = fmul fast float %722, %720
  %724 = call float @dx.op.unary.f32(i32 7, float %723)  ; Saturate(value)
  %725 = fadd fast float %724, -5.000000e-01
  %726 = fmul fast float %725, 2.000000e+00
  %727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.f32 %727, 2
  %729 = fcmp fast olt float %726, %728
  br i1 %729, label %730, label %742, !dx.controlflow.hints !47

; <label>:730                                     ; preds = %716
  %731 = fmul fast float %726, %726
  %732 = fmul fast float %703, %363
  %733 = fmul fast float %726, %732
  %734 = fmul fast float %731, %732
  %735 = fmul fast float %733, %731
  %736 = fmul fast float %731, %731
  %737 = fmul fast float %736, %732
  %738 = fadd fast float %733, %371
  %739 = fadd fast float %734, %372
  %740 = fadd fast float %735, %373
  %741 = fadd fast float %737, %374
  br label %742

; <label>:742                                     ; preds = %730, %716, %699
  %743 = phi float [ %371, %699 ], [ %738, %730 ], [ %371, %716 ]
  %744 = phi float [ %372, %699 ], [ %739, %730 ], [ %372, %716 ]
  %745 = phi float [ %373, %699 ], [ %740, %730 ], [ %373, %716 ]
  %746 = phi float [ %374, %699 ], [ %741, %730 ], [ %374, %716 ]
  %747 = phi i32 [ %375, %699 ], [ 1, %730 ], [ %718, %716 ]
  %748 = fmul fast float %702, %363
  br label %749

; <label>:749                                     ; preds = %742, %697
  %750 = phi float [ %698, %697 ], [ %705, %742 ]
  %751 = phi float [ %362, %697 ], [ %711, %742 ]
  %752 = phi float [ %363, %697 ], [ %748, %742 ]
  %753 = phi float [ %370, %697 ], [ %712, %742 ]
  %754 = phi float [ %371, %697 ], [ %743, %742 ]
  %755 = phi float [ %372, %697 ], [ %744, %742 ]
  %756 = phi float [ %373, %697 ], [ %745, %742 ]
  %757 = phi float [ %374, %697 ], [ %746, %742 ]
  %758 = phi i32 [ %375, %697 ], [ %747, %742 ]
  %759 = fmul fast float %519, %269
  %760 = fmul fast float %519, %270
  %761 = fmul fast float %519, %271
  %762 = fadd fast float %759, %364
  %763 = fadd fast float %760, %365
  %764 = fadd fast float %761, %366
  %765 = fcmp fast olt float %750, %338
  %766 = extractvalue %dx.types.CBufRet.f32 %694, 2
  %767 = fcmp fast olt float %766, %752
  %768 = and i1 %765, %767
  br i1 %768, label %357, label %769

; <label>:769                                     ; preds = %749
  %770 = uitofp i32 %378 to float
  br label %771

; <label>:771                                     ; preds = %769, %314
  %772 = phi float [ 0.000000e+00, %314 ], [ %751, %769 ]
  %773 = phi float [ 1.000000e+00, %314 ], [ %752, %769 ]
  %774 = phi float [ 0.000000e+00, %314 ], [ %770, %769 ]
  %775 = phi float [ 0.000000e+00, %314 ], [ %753, %769 ]
  %776 = phi float [ 0.000000e+00, %314 ], [ %754, %769 ]
  %777 = phi float [ 0.000000e+00, %314 ], [ %755, %769 ]
  %778 = phi float [ 0.000000e+00, %314 ], [ %756, %769 ]
  %779 = phi float [ 0.000000e+00, %314 ], [ %757, %769 ]
  %780 = phi i32 [ 0, %314 ], [ %758, %769 ]
  %781 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %782 = extractvalue %dx.types.CBufRet.i32 %781, 0
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %825, label %784, !dx.controlflow.hints !48

; <label>:784                                     ; preds = %771
  %785 = icmp eq i32 %780, 0
  br i1 %785, label %824, label %786, !dx.controlflow.hints !49

; <label>:786                                     ; preds = %784
  %787 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %788 = extractvalue %dx.types.CBufRet.i32 %787, 2
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %796, label %790, !dx.controlflow.hints !50

; <label>:790                                     ; preds = %786
  %791 = fsub fast float 1.000000e+00, %773
  %792 = fdiv fast float %776, %791
  %793 = fdiv fast float %777, %791
  %794 = fdiv fast float %778, %791
  %795 = fdiv fast float %779, %791
  br label %801

; <label>:796                                     ; preds = %786
  %797 = fadd fast float %776, %773
  %798 = fadd fast float %777, %773
  %799 = fadd fast float %778, %773
  %800 = fadd fast float %779, %773
  br label %801

; <label>:801                                     ; preds = %796, %790
  %802 = phi float [ %792, %790 ], [ %797, %796 ]
  %803 = phi float [ %793, %790 ], [ %798, %796 ]
  %804 = phi float [ %794, %790 ], [ %799, %796 ]
  %805 = phi float [ %795, %790 ], [ %800, %796 ]
  %806 = call float @dx.op.binary.f32(i32 35, float %802, float -1.000000e+00)  ; FMax(a,b)
  %807 = call float @dx.op.binary.f32(i32 35, float %803, float -1.000000e+00)  ; FMax(a,b)
  %808 = call float @dx.op.binary.f32(i32 35, float %804, float -1.000000e+00)  ; FMax(a,b)
  %809 = call float @dx.op.binary.f32(i32 35, float %805, float -1.000000e+00)  ; FMax(a,b)
  %810 = call float @dx.op.binary.f32(i32 36, float %806, float 1.000000e+00)  ; FMin(a,b)
  %811 = call float @dx.op.binary.f32(i32 36, float %807, float 1.000000e+00)  ; FMin(a,b)
  %812 = call float @dx.op.binary.f32(i32 36, float %808, float 1.000000e+00)  ; FMin(a,b)
  %813 = call float @dx.op.binary.f32(i32 36, float %809, float 1.000000e+00)  ; FMin(a,b)
  %814 = fmul fast float %810, 1.500000e+00
  %815 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %812, float %814)  ; FMad(a,b,c)
  %816 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %811, float 0.000000e+00)  ; FMad(a,b,c)
  %817 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %813, float %816)  ; FMad(a,b,c)
  %818 = fmul fast float %810, 0x3FEBB67AE0000000
  %819 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %812, float %818)  ; FMad(a,b,c)
  %820 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %811, float 0.000000e+00)  ; FMad(a,b,c)
  %821 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %813, float %820)  ; FMad(a,b,c)
  %822 = fadd fast float %815, 5.000000e-01
  %823 = fadd fast float %819, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %15, i32 0, float %822, float %817, float %823, float %821, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %825

; <label>:824                                     ; preds = %784
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %15, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %825

; <label>:825                                     ; preds = %824, %801, %771
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 0
  %828 = extractvalue %dx.types.CBufRet.f32 %826, 1
  %829 = extractvalue %dx.types.CBufRet.f32 %826, 2
  %830 = call float @dx.op.dot3.f32(i32 55, float %269, float %270, float %271, float %827, float %828, float %829)  ; Dot3(ax,ay,az,bx,by,bz)
  %831 = fmul fast float %830, %772
  %832 = fcmp fast ogt float %775, 0.000000e+00
  %833 = fdiv fast float 1.000000e+00, %775
  %834 = fmul fast float %831, %833
  %835 = select i1 %832, float %834, float %280
  %836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %837 = extractvalue %dx.types.CBufRet.f32 %836, 0
  %838 = extractvalue %dx.types.CBufRet.f32 %836, 1
  %839 = extractvalue %dx.types.CBufRet.f32 %836, 2
  %840 = fmul fast float %837, %233
  %841 = fmul fast float %838, %233
  %842 = fmul fast float %839, %233
  %843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %844 = extractvalue %dx.types.CBufRet.f32 %843, 0
  %845 = extractvalue %dx.types.CBufRet.f32 %843, 1
  %846 = extractvalue %dx.types.CBufRet.f32 %843, 2
  %847 = fmul fast float %844, %234
  %848 = fmul fast float %845, %234
  %849 = fmul fast float %846, %234
  %850 = fadd fast float %847, %840
  %851 = fadd fast float %848, %841
  %852 = fadd fast float %849, %842
  %853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %854 = extractvalue %dx.types.CBufRet.f32 %853, 0
  %855 = extractvalue %dx.types.CBufRet.f32 %853, 1
  %856 = extractvalue %dx.types.CBufRet.f32 %853, 2
  %857 = fadd fast float %850, %854
  %858 = fadd fast float %851, %855
  %859 = fadd fast float %852, %856
  %860 = fmul fast float %857, %835
  %861 = fmul fast float %858, %835
  %862 = fmul fast float %859, %835
  %863 = call float @dx.op.dot3.f32(i32 55, float %860, float %861, float %862, float %860, float %861, float %862)  ; Dot3(ax,ay,az,bx,by,bz)
  %864 = call float @dx.op.unary.f32(i32 25, float %863)  ; Rsqrt(value)
  %865 = fmul fast float %864, %863
  %866 = fmul fast float %864, %860
  %867 = fmul fast float %864, %861
  %868 = fmul fast float %864, %862
  %869 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.i32 %869, 1
  %871 = and i32 %870, 1
  %872 = icmp ne i32 %871, 0
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 2
  %875 = fcmp fast ogt float %874, 0.000000e+00
  %876 = and i1 %872, %875
  br i1 %876, label %877, label %1035, !dx.controlflow.hints !51

; <label>:877                                     ; preds = %825
  %878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.f32 %878, 2
  %880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %881 = extractvalue %dx.types.CBufRet.f32 %880, 2
  %882 = fsub fast float %879, %881
  %883 = extractvalue %dx.types.CBufRet.i32 %869, 0
  %884 = call i32 @dx.op.binary.i32(i32 40, i32 %883, i32 3)  ; UMin(a,b)
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 0
  %887 = extractvalue %dx.types.CBufRet.f32 %885, 1
  %888 = extractvalue %dx.types.CBufRet.f32 %880, 0
  %889 = extractvalue %dx.types.CBufRet.f32 %880, 1
  %890 = fsub fast float %886, %888
  %891 = fsub fast float %887, %889
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 0
  %894 = fcmp fast ogt float %893, 0.000000e+00
  %895 = fsub fast float -0.000000e+00, %890
  %896 = fsub fast float -0.000000e+00, %891
  %897 = call float @dx.op.dot2.f32(i32 54, float %866, float %867, float %866, float %867)  ; Dot2(ax,ay,bx,by)
  %898 = call float @dx.op.dot2.f32(i32 54, float %866, float %867, float %895, float %896)  ; Dot2(ax,ay,bx,by)
  %899 = fmul fast float %898, 2.000000e+00
  %900 = call float @dx.op.dot2.f32(i32 54, float %895, float %896, float %895, float %896)  ; Dot2(ax,ay,bx,by)
  %901 = fmul fast float %893, %893
  %902 = fsub fast float %900, %901
  %903 = fmul fast float %899, %899
  %904 = fmul fast float %897, 4.000000e+00
  %905 = fmul fast float %904, %902
  %906 = fsub fast float %903, %905
  %907 = fcmp fast ogt float %906, 0.000000e+00
  br i1 %907, label %908, label %923, !dx.controlflow.hints !52

; <label>:908                                     ; preds = %877
  %909 = fcmp fast ogt float %899, 0.000000e+00
  %910 = call float @dx.op.unary.f32(i32 24, float %906)  ; Sqrt(value)
  %911 = fsub fast float -0.000000e+00, %910
  %912 = select i1 %909, float %910, float %911
  %913 = fadd fast float %912, %899
  %914 = fmul float %913, -5.000000e-01
  %915 = fdiv fast float %914, %897
  %916 = call float @dx.op.binary.f32(i32 35, float %915, float 0.000000e+00)  ; FMax(a,b)
  %917 = call float @dx.op.binary.f32(i32 36, float %865, float %916)  ; FMin(a,b)
  %918 = fdiv fast float %902, %914
  %919 = call float @dx.op.binary.f32(i32 35, float %918, float 0.000000e+00)  ; FMax(a,b)
  %920 = call float @dx.op.binary.f32(i32 36, float %865, float %919)  ; FMin(a,b)
  %921 = call float @dx.op.binary.f32(i32 36, float %917, float %920)  ; FMin(a,b)
  %922 = call float @dx.op.binary.f32(i32 35, float %917, float %920)  ; FMax(a,b)
  br label %923

; <label>:923                                     ; preds = %908, %877
  %924 = phi float [ %922, %908 ], [ -1.000000e+00, %877 ]
  %925 = phi float [ %921, %908 ], [ -1.000000e+00, %877 ]
  %926 = phi i1 [ true, %908 ], [ false, %877 ]
  %927 = and i1 %894, %926
  br i1 %927, label %928, label %930, !dx.controlflow.hints !53

; <label>:928                                     ; preds = %923
  %929 = fcmp fast oeq float %925, %924
  br i1 %929, label %1035, label %931, !dx.controlflow.hints !54

; <label>:930                                     ; preds = %923
  br i1 %894, label %1035, label %931, !dx.controlflow.hints !55

; <label>:931                                     ; preds = %930, %928
  %932 = phi float [ %865, %930 ], [ %924, %928 ]
  %933 = phi float [ 0.000000e+00, %930 ], [ %925, %928 ]
  %934 = fcmp fast oeq float %868, 0.000000e+00
  %935 = fdiv fast float %882, %868
  %936 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %935)  ; FMax(a,b)
  %937 = select i1 %934, float %932, float %936
  %938 = call float @dx.op.binary.f32(i32 36, float %932, float %937)  ; FMin(a,b)
  %939 = fcmp fast ogt float %868, 0.000000e+00
  %940 = fcmp fast olt float %882, 0.000000e+00
  br i1 %939, label %941, label %942, !dx.controlflow.hints !56

; <label>:941                                     ; preds = %931
  br i1 %940, label %1035, label %945, !dx.controlflow.hints !57

; <label>:942                                     ; preds = %931
  br i1 %940, label %943, label %945, !dx.controlflow.hints !58

; <label>:943                                     ; preds = %942
  %944 = call float @dx.op.binary.f32(i32 35, float %933, float %938)  ; FMax(a,b)
  br label %945

; <label>:945                                     ; preds = %943, %942, %941
  %946 = phi float [ %944, %943 ], [ %933, %942 ], [ %933, %941 ]
  %947 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 0
  store float -1.000000e+00, float* %947, align 4, !tbaa !59, !noalias !63
  %948 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 1
  store float -1.000000e+00, float* %948, align 4, !tbaa !59, !noalias !63
  %949 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 2
  store float -1.000000e+00, float* %949, align 4, !tbaa !59, !noalias !63
  %950 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 0
  store float -1.000000e+00, float* %950, align 4, !tbaa !59, !noalias !63
  %951 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 1
  store float -1.000000e+00, float* %951, align 4, !tbaa !59, !noalias !63
  %952 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 2
  store float -1.000000e+00, float* %952, align 4, !tbaa !59, !noalias !63
  %953 = icmp sgt i32 %884, 0
  br i1 %953, label %954, label %1012

; <label>:954                                     ; preds = %945
  br label %955

; <label>:955                                     ; preds = %1002, %954
  %956 = phi i32 [ %1003, %1002 ], [ 0, %954 ]
  %957 = add nuw i32 %956, 171
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %957)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 0
  %960 = extractvalue %dx.types.CBufRet.f32 %958, 1
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %963 = extractvalue %dx.types.CBufRet.f32 %961, 1
  %964 = fsub fast float %959, %962
  %965 = fsub fast float %960, %963
  %966 = extractvalue %dx.types.CBufRet.f32 %958, 2
  %967 = fsub fast float -0.000000e+00, %964
  %968 = fsub fast float -0.000000e+00, %965
  %969 = call float @dx.op.dot2.f32(i32 54, float %866, float %867, float %967, float %968)  ; Dot2(ax,ay,bx,by)
  %970 = fmul fast float %969, 2.000000e+00
  %971 = call float @dx.op.dot2.f32(i32 54, float %967, float %968, float %967, float %968)  ; Dot2(ax,ay,bx,by)
  %972 = fmul fast float %966, %966
  %973 = fsub fast float %971, %972
  %974 = fmul fast float %970, %970
  %975 = fmul fast float %904, %973
  %976 = fsub fast float %974, %975
  %977 = fcmp fast ogt float %976, 0.000000e+00
  br i1 %977, label %978, label %993, !dx.controlflow.hints !52

; <label>:978                                     ; preds = %955
  %979 = fcmp fast ogt float %970, 0.000000e+00
  %980 = call float @dx.op.unary.f32(i32 24, float %976)  ; Sqrt(value)
  %981 = fsub fast float -0.000000e+00, %980
  %982 = select i1 %979, float %980, float %981
  %983 = fadd fast float %982, %970
  %984 = fmul float %983, -5.000000e-01
  %985 = fdiv fast float %984, %897
  %986 = call float @dx.op.binary.f32(i32 35, float %985, float 0.000000e+00)  ; FMax(a,b)
  %987 = call float @dx.op.binary.f32(i32 36, float %932, float %986)  ; FMin(a,b)
  %988 = fdiv fast float %973, %984
  %989 = call float @dx.op.binary.f32(i32 35, float %988, float 0.000000e+00)  ; FMax(a,b)
  %990 = call float @dx.op.binary.f32(i32 36, float %932, float %989)  ; FMin(a,b)
  %991 = call float @dx.op.binary.f32(i32 36, float %987, float %990)  ; FMin(a,b)
  %992 = call float @dx.op.binary.f32(i32 35, float %987, float %990)  ; FMax(a,b)
  br label %993

; <label>:993                                     ; preds = %978, %955
  %994 = phi float [ %992, %978 ], [ -1.000000e+00, %955 ]
  %995 = phi float [ %991, %978 ], [ -1.000000e+00, %955 ]
  %996 = phi i1 [ true, %978 ], [ false, %955 ]
  br i1 %996, label %997, label %1002, !dx.controlflow.hints !74

; <label>:997                                     ; preds = %993
  %998 = call float @dx.op.binary.f32(i32 35, float %946, float %995)  ; FMax(a,b)
  %999 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 %956
  store float %998, float* %999, align 4, !tbaa !59, !noalias !63
  %1000 = call float @dx.op.binary.f32(i32 35, float %946, float %994)  ; FMax(a,b)
  %1001 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 %956
  store float %1000, float* %1001, align 4, !tbaa !59, !noalias !63
  br label %1002

; <label>:1002                                    ; preds = %997, %993
  %1003 = add nuw nsw i32 %956, 1
  %1004 = icmp eq i32 %1003, %884
  br i1 %1004, label %1005, label %955

; <label>:1005                                    ; preds = %1002
  %1006 = load float, float* %949, align 4, !tbaa !59, !alias.scope !75, !noalias !78
  %1007 = load float, float* %948, align 4, !tbaa !59, !alias.scope !81, !noalias !82
  %1008 = load float, float* %947, align 4, !tbaa !59, !alias.scope !83, !noalias !84
  %1009 = load float, float* %952, align 4, !tbaa !59, !alias.scope !85, !noalias !88
  %1010 = load float, float* %951, align 4, !tbaa !59, !alias.scope !91, !noalias !92
  %1011 = load float, float* %950, align 4, !tbaa !59, !alias.scope !93, !noalias !94
  br label %1012

; <label>:1012                                    ; preds = %1005, %945
  %1013 = phi float [ -1.000000e+00, %945 ], [ %1011, %1005 ]
  %1014 = phi float [ -1.000000e+00, %945 ], [ %1010, %1005 ]
  %1015 = phi float [ -1.000000e+00, %945 ], [ %1009, %1005 ]
  %1016 = phi float [ -1.000000e+00, %945 ], [ %1008, %1005 ]
  %1017 = phi float [ -1.000000e+00, %945 ], [ %1007, %1005 ]
  %1018 = phi float [ -1.000000e+00, %945 ], [ %1006, %1005 ]
  %1019 = call float @dx.op.binary.f32(i32 36, float %1017, float %1018)  ; FMin(a,b)
  %1020 = call float @dx.op.binary.f32(i32 36, float %1016, float %1019)  ; FMin(a,b)
  %1021 = call float @dx.op.binary.f32(i32 35, float %1016, float %1017)  ; FMax(a,b)
  %1022 = call float @dx.op.binary.f32(i32 36, float %1021, float %1018)  ; FMin(a,b)
  %1023 = call float @dx.op.binary.f32(i32 36, float %1016, float %1017)  ; FMin(a,b)
  %1024 = call float @dx.op.binary.f32(i32 35, float %1023, float %1022)  ; FMax(a,b)
  %1025 = call float @dx.op.binary.f32(i32 35, float %1017, float %1018)  ; FMax(a,b)
  %1026 = call float @dx.op.binary.f32(i32 35, float %1016, float %1025)  ; FMax(a,b)
  store float %1020, float* %947, align 4, !tbaa !59, !alias.scope !83, !noalias !84
  store float %1024, float* %948, align 4, !tbaa !59, !alias.scope !81, !noalias !82
  store float %1026, float* %949, align 4, !tbaa !59, !alias.scope !75, !noalias !78
  %1027 = call float @dx.op.binary.f32(i32 36, float %1014, float %1015)  ; FMin(a,b)
  %1028 = call float @dx.op.binary.f32(i32 36, float %1013, float %1027)  ; FMin(a,b)
  %1029 = call float @dx.op.binary.f32(i32 35, float %1013, float %1014)  ; FMax(a,b)
  %1030 = call float @dx.op.binary.f32(i32 36, float %1029, float %1015)  ; FMin(a,b)
  %1031 = call float @dx.op.binary.f32(i32 36, float %1013, float %1014)  ; FMin(a,b)
  %1032 = call float @dx.op.binary.f32(i32 35, float %1031, float %1030)  ; FMax(a,b)
  %1033 = call float @dx.op.binary.f32(i32 35, float %1014, float %1015)  ; FMax(a,b)
  %1034 = call float @dx.op.binary.f32(i32 35, float %1013, float %1033)  ; FMax(a,b)
  store float %1028, float* %950, align 4, !tbaa !59, !alias.scope !93, !noalias !94
  store float %1032, float* %951, align 4, !tbaa !59, !alias.scope !91, !noalias !92
  store float %1034, float* %952, align 4, !tbaa !59, !alias.scope !85, !noalias !88
  br label %1035

; <label>:1035                                    ; preds = %1012, %941, %930, %928, %825
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 2
  %1038 = fmul fast float %1037, %835
  %1039 = call float @dx.op.unary.f32(i32 7, float %1038)  ; Saturate(value)
  %1040 = fptoui float %774 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1041 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %16
  store i32 %1040, i32 addrspace(3)* %1041, align 4, !tbaa !95
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1042 = and i32 %16, 63
  %1043 = icmp ult i32 %1042, 32
  br i1 %1043, label %1044, label %1050, !dx.controlflow.hints !97

; <label>:1044                                    ; preds = %1035
  %1045 = add i32 %16, 32
  %1046 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1045
  %1047 = load i32, i32 addrspace(3)* %1046, align 4, !tbaa !95
  %1048 = load i32, i32 addrspace(3)* %1041, align 4, !tbaa !95
  %1049 = call i32 @dx.op.binary.i32(i32 40, i32 %1048, i32 %1047)  ; UMin(a,b)
  store i32 %1049, i32 addrspace(3)* %1041, align 4, !tbaa !95
  br label %1050

; <label>:1050                                    ; preds = %1044, %1035
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1051 = icmp ult i32 %1042, 16
  br i1 %1051, label %1052, label %1058, !dx.controlflow.hints !98

; <label>:1052                                    ; preds = %1050
  %1053 = add i32 %16, 16
  %1054 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1053
  %1055 = load i32, i32 addrspace(3)* %1054, align 4, !tbaa !95
  %1056 = load i32, i32 addrspace(3)* %1041, align 4, !tbaa !95
  %1057 = call i32 @dx.op.binary.i32(i32 40, i32 %1056, i32 %1055)  ; UMin(a,b)
  store i32 %1057, i32 addrspace(3)* %1041, align 4, !tbaa !95
  br label %1058

; <label>:1058                                    ; preds = %1052, %1050
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1059 = icmp ult i32 %1042, 8
  br i1 %1059, label %1060, label %1066, !dx.controlflow.hints !99

; <label>:1060                                    ; preds = %1058
  %1061 = add i32 %16, 8
  %1062 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1061
  %1063 = load i32, i32 addrspace(3)* %1062, align 4, !tbaa !95
  %1064 = load i32, i32 addrspace(3)* %1041, align 4, !tbaa !95
  %1065 = call i32 @dx.op.binary.i32(i32 40, i32 %1064, i32 %1063)  ; UMin(a,b)
  store i32 %1065, i32 addrspace(3)* %1041, align 4, !tbaa !95
  br label %1066

; <label>:1066                                    ; preds = %1060, %1058
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1067 = icmp ult i32 %1042, 4
  br i1 %1067, label %1068, label %1074, !dx.controlflow.hints !100

; <label>:1068                                    ; preds = %1066
  %1069 = add i32 %16, 4
  %1070 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1069
  %1071 = load i32, i32 addrspace(3)* %1070, align 4, !tbaa !95
  %1072 = load i32, i32 addrspace(3)* %1041, align 4, !tbaa !95
  %1073 = call i32 @dx.op.binary.i32(i32 40, i32 %1072, i32 %1071)  ; UMin(a,b)
  store i32 %1073, i32 addrspace(3)* %1041, align 4, !tbaa !95
  br label %1074

; <label>:1074                                    ; preds = %1068, %1066
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1075 = icmp ult i32 %1042, 2
  br i1 %1075, label %1076, label %1082, !dx.controlflow.hints !101

; <label>:1076                                    ; preds = %1074
  %1077 = add i32 %16, 2
  %1078 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1077
  %1079 = load i32, i32 addrspace(3)* %1078, align 4, !tbaa !95
  %1080 = load i32, i32 addrspace(3)* %1041, align 4, !tbaa !95
  %1081 = call i32 @dx.op.binary.i32(i32 40, i32 %1080, i32 %1079)  ; UMin(a,b)
  store i32 %1081, i32 addrspace(3)* %1041, align 4, !tbaa !95
  br label %1082

; <label>:1082                                    ; preds = %1076, %1074
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1083 = icmp eq i32 %1042, 0
  br i1 %1083, label %1084, label %1090, !dx.controlflow.hints !102

; <label>:1084                                    ; preds = %1082
  %1085 = add i32 %16, 1
  %1086 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1085
  %1087 = load i32, i32 addrspace(3)* %1086, align 4, !tbaa !95
  %1088 = load i32, i32 addrspace(3)* %1041, align 4, !tbaa !95
  %1089 = call i32 @dx.op.binary.i32(i32 40, i32 %1088, i32 %1087)  ; UMin(a,b)
  store i32 %1089, i32 addrspace(3)* %1041, align 4, !tbaa !95
  br label %1090

; <label>:1090                                    ; preds = %1084, %1082
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1091 = and i32 %16, -64
  %1092 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1091
  %1093 = load i32, i32 addrspace(3)* %1092, align 4, !tbaa !95
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1040, i32 addrspace(3)* %1041, align 4, !tbaa !95
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1043, label %1094, label %1100, !dx.controlflow.hints !103

; <label>:1094                                    ; preds = %1090
  %1095 = add i32 %16, 32
  %1096 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1095
  %1097 = load i32, i32 addrspace(3)* %1096, align 4, !tbaa !95
  %1098 = load i32, i32 addrspace(3)* %1041, align 4, !tbaa !95
  %1099 = call i32 @dx.op.binary.i32(i32 39, i32 %1098, i32 %1097)  ; UMax(a,b)
  store i32 %1099, i32 addrspace(3)* %1041, align 4, !tbaa !95
  br label %1100

; <label>:1100                                    ; preds = %1094, %1090
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1051, label %1101, label %1107, !dx.controlflow.hints !104

; <label>:1101                                    ; preds = %1100
  %1102 = add i32 %16, 16
  %1103 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1102
  %1104 = load i32, i32 addrspace(3)* %1103, align 4, !tbaa !95
  %1105 = load i32, i32 addrspace(3)* %1041, align 4, !tbaa !95
  %1106 = call i32 @dx.op.binary.i32(i32 39, i32 %1105, i32 %1104)  ; UMax(a,b)
  store i32 %1106, i32 addrspace(3)* %1041, align 4, !tbaa !95
  br label %1107

; <label>:1107                                    ; preds = %1101, %1100
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1059, label %1108, label %1114, !dx.controlflow.hints !105

; <label>:1108                                    ; preds = %1107
  %1109 = add i32 %16, 8
  %1110 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1109
  %1111 = load i32, i32 addrspace(3)* %1110, align 4, !tbaa !95
  %1112 = load i32, i32 addrspace(3)* %1041, align 4, !tbaa !95
  %1113 = call i32 @dx.op.binary.i32(i32 39, i32 %1112, i32 %1111)  ; UMax(a,b)
  store i32 %1113, i32 addrspace(3)* %1041, align 4, !tbaa !95
  br label %1114

; <label>:1114                                    ; preds = %1108, %1107
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1067, label %1115, label %1121, !dx.controlflow.hints !106

; <label>:1115                                    ; preds = %1114
  %1116 = add i32 %16, 4
  %1117 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1116
  %1118 = load i32, i32 addrspace(3)* %1117, align 4, !tbaa !95
  %1119 = load i32, i32 addrspace(3)* %1041, align 4, !tbaa !95
  %1120 = call i32 @dx.op.binary.i32(i32 39, i32 %1119, i32 %1118)  ; UMax(a,b)
  store i32 %1120, i32 addrspace(3)* %1041, align 4, !tbaa !95
  br label %1121

; <label>:1121                                    ; preds = %1115, %1114
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1075, label %1122, label %1128, !dx.controlflow.hints !107

; <label>:1122                                    ; preds = %1121
  %1123 = add i32 %16, 2
  %1124 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1123
  %1125 = load i32, i32 addrspace(3)* %1124, align 4, !tbaa !95
  %1126 = load i32, i32 addrspace(3)* %1041, align 4, !tbaa !95
  %1127 = call i32 @dx.op.binary.i32(i32 39, i32 %1126, i32 %1125)  ; UMax(a,b)
  store i32 %1127, i32 addrspace(3)* %1041, align 4, !tbaa !95
  br label %1128

; <label>:1128                                    ; preds = %1122, %1121
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1083, label %1129, label %1135, !dx.controlflow.hints !108

; <label>:1129                                    ; preds = %1128
  %1130 = add i32 %16, 1
  %1131 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1130
  %1132 = load i32, i32 addrspace(3)* %1131, align 4, !tbaa !95
  %1133 = load i32, i32 addrspace(3)* %1041, align 4, !tbaa !95
  %1134 = call i32 @dx.op.binary.i32(i32 39, i32 %1133, i32 %1132)  ; UMax(a,b)
  store i32 %1134, i32 addrspace(3)* %1041, align 4, !tbaa !95
  br label %1135

; <label>:1135                                    ; preds = %1129, %1128
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1136 = load i32, i32 addrspace(3)* %1092, align 4, !tbaa !95
  %1137 = uitofp i32 %1136 to float
  %1138 = uitofp i32 %1093 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %14, i32 %15, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1139, 0
  %1141 = fmul fast float %1140, %774
  %1142 = fmul fast float %1140, %1137
  %1143 = fmul fast float %1140, %1138
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %14, i32 %15, i32 undef, float %1141, float %1142, float %1143, float %1141, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %14, i32 %15, i32 undef, float %1039, float %1039, float %1039, float %1039, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #3

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #3

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!25}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !19, !22}
!5 = !{!6, !8, !10, !11, !12}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 164}
!10 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!11 = !{i32 3, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!12 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!13 = !{!14, !15, !16, !17}
!14 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !18}
!18 = !{i32 0, i32 14}
!19 = !{!20, !21}
!20 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!21 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!22 = !{!23, !24}
!23 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!24 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!25 = !{void ()* @cs_fog_raymarching_air_particles, !"cs_fog_raymarching_air_particles", null, !4, !26}
!26 = !{i32 0, i64 272, i32 4, !27}
!27 = !{i32 8, i32 8, i32 1}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 1}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = !{!60, !60, i64 0}
!60 = !{!"float", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C/C++ TBAA"}
!63 = !{!64, !66, !68, !69, !71, !72, !73}
!64 = distinct !{!64, !65, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!65 = distinct !{!65, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!66 = distinct !{!66, !67, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!67 = distinct !{!67, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!68 = distinct !{!68, !67, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!69 = distinct !{!69, !70, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!70 = distinct !{!70, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!71 = distinct !{!71, !70, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!72 = distinct !{!72, !70, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!73 = distinct !{!73, !70, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = !{!76}
!76 = distinct !{!76, !77, !"\01?sort@@YAXAIAM00@Z: %c"}
!77 = distinct !{!77, !"\01?sort@@YAXAIAM00@Z"}
!78 = !{!79, !80, !64, !66, !68, !69, !71, !72, !73}
!79 = distinct !{!79, !77, !"\01?sort@@YAXAIAM00@Z: %a"}
!80 = distinct !{!80, !77, !"\01?sort@@YAXAIAM00@Z: %b"}
!81 = !{!80}
!82 = !{!79, !76, !64, !66, !68, !69, !71, !72, !73}
!83 = !{!79}
!84 = !{!80, !76, !64, !66, !68, !69, !71, !72, !73}
!85 = !{!86}
!86 = distinct !{!86, !87, !"\01?sort@@YAXAIAM00@Z: %c"}
!87 = distinct !{!87, !"\01?sort@@YAXAIAM00@Z"}
!88 = !{!89, !90, !64, !66, !68, !69, !71, !72, !73}
!89 = distinct !{!89, !87, !"\01?sort@@YAXAIAM00@Z: %a"}
!90 = distinct !{!90, !87, !"\01?sort@@YAXAIAM00@Z: %b"}
!91 = !{!90}
!92 = !{!89, !86, !64, !66, !68, !69, !71, !72, !73}
!93 = !{!89}
!94 = !{!90, !86, !64, !66, !68, !69, !71, !72, !73}
!95 = !{!96, !96, i64 0}
!96 = !{!"int", !61, i64 0}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}

