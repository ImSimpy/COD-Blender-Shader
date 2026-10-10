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
; shader hash: 1f8ead7bd3cf3cd37456e092c2fff744
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
;                                   texture     f32          2d      T4             t0     1
;                                   texture    byte         r/o      T5            t17     1
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

define void @cs_fog_raymarching_air_heightmap_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %17 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %18 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = add i32 %17, %16
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 1
  %24 = add i32 %21, %23
  %25 = lshr i32 %24, 1
  %26 = and i32 %25, 1
  %27 = and i32 %24, 1
  %28 = xor i32 %26, %27
  %29 = shl i32 %16, 1
  %30 = shl i32 %17, 1
  %31 = or i32 %28, %29
  %32 = or i32 %26, %30
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = extractvalue %dx.types.ResRet.i32 %35, 1
  %38 = extractvalue %dx.types.ResRet.i32 %35, 2
  %39 = extractvalue %dx.types.ResRet.i32 %35, 3
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = extractvalue %dx.types.ResRet.i32 %40, 1
  %43 = extractvalue %dx.types.ResRet.i32 %40, 2
  %44 = extractvalue %dx.types.ResRet.i32 %40, 3
  %45 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %46 = extractvalue %dx.types.ResRet.i32 %45, 0
  %47 = extractvalue %dx.types.ResRet.i32 %45, 1
  %48 = extractvalue %dx.types.ResRet.i32 %45, 2
  %49 = extractvalue %dx.types.ResRet.i32 %45, 3
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %52 = fmul fast float %51, %51
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %56 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %57 = fmul fast float %56, 0x3FF17B1420000000
  %58 = icmp eq i32 %18, 0
  br i1 %58, label %59, label %200, !dx.controlflow.hints !30

; <label>:59                                      ; preds = %0
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 3
  %64 = extractvalue %dx.types.ResRet.i32 %33, 1
  %65 = and i32 %64, 65535
  %66 = call float @dx.op.legacyF16ToF32(i32 131, i32 %65)  ; LegacyF16ToF32(value)
  %67 = lshr i32 %34, 16
  %68 = call float @dx.op.legacyF16ToF32(i32 131, i32 %67)  ; LegacyF16ToF32(value)
  %69 = and i32 %34, 65535
  %70 = call float @dx.op.legacyF16ToF32(i32 131, i32 %69)  ; LegacyF16ToF32(value)
  %71 = lshr i32 %39, 16
  %72 = call float @dx.op.legacyF16ToF32(i32 131, i32 %71)  ; LegacyF16ToF32(value)
  %73 = and i32 %39, 65535
  %74 = call float @dx.op.legacyF16ToF32(i32 131, i32 %73)  ; LegacyF16ToF32(value)
  %75 = lshr i32 %38, 16
  %76 = call float @dx.op.legacyF16ToF32(i32 131, i32 %75)  ; LegacyF16ToF32(value)
  %77 = and i32 %38, 65535
  %78 = call float @dx.op.legacyF16ToF32(i32 131, i32 %77)  ; LegacyF16ToF32(value)
  %79 = lshr i32 %37, 16
  %80 = call float @dx.op.legacyF16ToF32(i32 131, i32 %79)  ; LegacyF16ToF32(value)
  %81 = lshr i32 %36, 16
  %82 = call float @dx.op.legacyF16ToF32(i32 131, i32 %81)  ; LegacyF16ToF32(value)
  %83 = and i32 %36, 65535
  %84 = call float @dx.op.legacyF16ToF32(i32 131, i32 %83)  ; LegacyF16ToF32(value)
  %85 = lshr i32 %44, 16
  %86 = call float @dx.op.legacyF16ToF32(i32 131, i32 %85)  ; LegacyF16ToF32(value)
  %87 = and i32 %44, 65535
  %88 = call float @dx.op.legacyF16ToF32(i32 131, i32 %87)  ; LegacyF16ToF32(value)
  %89 = lshr i32 %43, 16
  %90 = call float @dx.op.legacyF16ToF32(i32 131, i32 %89)  ; LegacyF16ToF32(value)
  %91 = and i32 %43, 65535
  %92 = call float @dx.op.legacyF16ToF32(i32 131, i32 %91)  ; LegacyF16ToF32(value)
  %93 = lshr i32 %42, 16
  %94 = call float @dx.op.legacyF16ToF32(i32 131, i32 %93)  ; LegacyF16ToF32(value)
  %95 = and i32 %42, 65535
  %96 = call float @dx.op.legacyF16ToF32(i32 131, i32 %95)  ; LegacyF16ToF32(value)
  %97 = and i32 %41, 65535
  %98 = call float @dx.op.legacyF16ToF32(i32 131, i32 %97)  ; LegacyF16ToF32(value)
  %99 = lshr i32 %49, 16
  %100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %99)  ; LegacyF16ToF32(value)
  %101 = and i32 %49, 65535
  %102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %101)  ; LegacyF16ToF32(value)
  %103 = lshr i32 %48, 16
  %104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %103)  ; LegacyF16ToF32(value)
  %105 = and i32 %48, 65535
  %106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %105)  ; LegacyF16ToF32(value)
  %107 = lshr i32 %47, 16
  %108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %107)  ; LegacyF16ToF32(value)
  %109 = and i32 %47, 65535
  %110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %109)  ; LegacyF16ToF32(value)
  %111 = lshr i32 %46, 16
  %112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %111)  ; LegacyF16ToF32(value)
  %113 = and i32 %37, 65535
  %114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %113)  ; LegacyF16ToF32(value)
  %115 = lshr i32 %41, 16
  %116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %115)  ; LegacyF16ToF32(value)
  %117 = and i32 %46, 65535
  %118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %117)  ; LegacyF16ToF32(value)
  %119 = fmul fast float %114, 0x3FD20DD760000000
  %120 = fmul fast float %56, %51
  %121 = fmul fast float %120, %78
  %122 = fmul fast float %56, %56
  %123 = fmul fast float %122, 0x3FEE471020000000
  %124 = fadd fast float %123, 0xBFD42F6020000000
  %125 = fmul fast float %70, %124
  %126 = fmul fast float %76, %54
  %127 = fmul fast float %80, %55
  %128 = fmul fast float %54, %52
  %129 = fmul fast float %128, %57
  %130 = fmul fast float %129, %68
  %131 = fsub fast float -0.000000e+00, %130
  %132 = fmul fast float %55, %52
  %133 = fmul fast float %132, %57
  %134 = fmul fast float %133, %72
  %135 = fmul fast float %54, %54
  %136 = fmul fast float %55, %55
  %137 = fsub fast float %135, %136
  %138 = fmul fast float %137, 0x3FE17B1420000000
  %139 = fmul fast float %138, %66
  %140 = fmul fast float %55, 0x3FF17B1420000000
  %141 = fmul fast float %140, %54
  %142 = fmul fast float %141, %74
  %143 = fadd fast float %127, %126
  %144 = fmul fast float %143, %51
  %145 = fsub fast float %144, %121
  %146 = fmul fast float %145, 0x3FDF454380000000
  %147 = fadd fast float %125, %139
  %148 = fadd fast float %147, %142
  %149 = fmul fast float %148, %52
  %150 = fsub fast float %131, %134
  %151 = fadd fast float %150, %119
  %152 = fadd fast float %151, %146
  %153 = fadd fast float %152, %149
  %154 = fmul fast float %61, %63
  %155 = fmul fast float %154, %153
  %156 = fmul fast float %116, 0x3FD20DD760000000
  %157 = fmul fast float %120, %94
  %158 = fmul fast float %86, %124
  %159 = fmul fast float %92, %54
  %160 = fmul fast float %96, %55
  %161 = fmul fast float %129, %84
  %162 = fsub fast float -0.000000e+00, %161
  %163 = fmul fast float %133, %88
  %164 = fmul fast float %138, %82
  %165 = fmul fast float %141, %90
  %166 = fadd fast float %160, %159
  %167 = fmul fast float %166, %51
  %168 = fsub fast float %167, %157
  %169 = fmul fast float %168, 0x3FDF454380000000
  %170 = fadd fast float %158, %164
  %171 = fadd fast float %170, %165
  %172 = fmul fast float %171, %52
  %173 = fsub fast float %162, %163
  %174 = fadd fast float %173, %156
  %175 = fadd fast float %174, %169
  %176 = fadd fast float %175, %172
  %177 = fmul fast float %154, %176
  %178 = fmul fast float %118, 0x3FD20DD760000000
  %179 = fmul fast float %120, %110
  %180 = fmul fast float %102, %124
  %181 = fmul fast float %108, %54
  %182 = fmul fast float %112, %55
  %183 = fmul fast float %129, %100
  %184 = fsub fast float -0.000000e+00, %183
  %185 = fmul fast float %133, %104
  %186 = fmul fast float %138, %98
  %187 = fmul fast float %141, %106
  %188 = fadd fast float %182, %181
  %189 = fmul fast float %188, %51
  %190 = fsub fast float %189, %179
  %191 = fmul fast float %190, 0x3FDF454380000000
  %192 = fadd fast float %180, %186
  %193 = fadd fast float %192, %187
  %194 = fmul fast float %193, %52
  %195 = fsub fast float %184, %185
  %196 = fadd fast float %195, %178
  %197 = fadd fast float %196, %191
  %198 = fadd fast float %197, %194
  %199 = fmul fast float %154, %198
  br label %200

; <label>:200                                     ; preds = %59, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %201 = uitofp i32 %31 to float
  %202 = uitofp i32 %32 to float
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 2
  %205 = fmul fast float %204, 0x3FE3C6EF40000000
  %206 = frem fast float %201, 2.560000e+02
  %207 = frem fast float %202, 2.560000e+02
  %208 = fptoui float %206 to i32
  %209 = fptoui float %207 to i32
  %210 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %208, i32 %209, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = extractvalue %dx.types.ResRet.f32 %210, 1
  %213 = extractvalue %dx.types.ResRet.f32 %210, 2
  %214 = extractvalue %dx.types.ResRet.f32 %210, 3
  %215 = fadd fast float %211, %205
  %216 = fadd fast float %212, %205
  %217 = fadd fast float %213, %205
  %218 = fadd fast float %214, %205
  %219 = call float @dx.op.unary.f32(i32 22, float %215)  ; Frc(value)
  %220 = call float @dx.op.unary.f32(i32 22, float %216)  ; Frc(value)
  %221 = call float @dx.op.unary.f32(i32 22, float %217)  ; Frc(value)
  %222 = call float @dx.op.unary.f32(i32 22, float %218)  ; Frc(value)
  %223 = fadd fast float %221, %201
  %224 = fadd fast float %222, %202
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 2
  %227 = extractvalue %dx.types.CBufRet.f32 %225, 3
  %228 = fmul fast float %226, %223
  %229 = fmul fast float %227, %224
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 0
  %232 = extractvalue %dx.types.CBufRet.f32 %230, 1
  %233 = extractvalue %dx.types.CBufRet.f32 %230, 2
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 1
  %236 = fmul fast float %228, 2.000000e+00
  %237 = fmul fast float %229, 2.000000e+00
  %238 = fsub fast float 1.000000e+00, %236
  %239 = fsub fast float 1.000000e+00, %237
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 0
  %242 = extractvalue %dx.types.CBufRet.f32 %240, 1
  %243 = extractvalue %dx.types.CBufRet.f32 %240, 2
  %244 = fmul fast float %241, %238
  %245 = fmul fast float %242, %238
  %246 = fmul fast float %243, %238
  %247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.f32 %247, 0
  %249 = extractvalue %dx.types.CBufRet.f32 %247, 1
  %250 = extractvalue %dx.types.CBufRet.f32 %247, 2
  %251 = fmul fast float %248, %239
  %252 = fmul fast float %249, %239
  %253 = fmul fast float %250, %239
  %254 = fadd fast float %251, %244
  %255 = fadd fast float %252, %245
  %256 = fadd fast float %253, %246
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 0
  %259 = extractvalue %dx.types.CBufRet.f32 %257, 1
  %260 = extractvalue %dx.types.CBufRet.f32 %257, 2
  %261 = fadd fast float %254, %258
  %262 = fadd fast float %255, %259
  %263 = fadd fast float %256, %260
  %264 = fmul fast float %261, %235
  %265 = fmul fast float %262, %235
  %266 = fmul fast float %263, %235
  %267 = fmul fast float %264, %264
  %268 = fmul fast float %265, %265
  %269 = fadd fast float %267, %268
  %270 = fmul fast float %266, %266
  %271 = fadd fast float %269, %270
  %272 = call float @dx.op.unary.f32(i32 24, float %271)  ; Sqrt(value)
  %273 = fdiv fast float 1.000000e+00, %272
  %274 = fmul fast float %264, %273
  %275 = fmul fast float %265, %273
  %276 = fmul fast float %266, %273
  %277 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %31, i32 %32, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = fcmp fast ogt float %278, -1.000000e+00
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 1
  %282 = select i1 %279, float %281, float 1.000000e+00
  %283 = fadd fast float %278, 1.000000e+00
  %284 = fmul fast float %282, %283
  %285 = call float @dx.op.unary.f32(i32 6, float %284)  ; FAbs(value)
  %286 = fdiv fast float 1.000000e+00, %235
  %287 = fmul fast float %286, %272
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 1
  %290 = fmul fast float %289, %287
  %291 = fmul fast float %287, %285
  %292 = extractvalue %dx.types.CBufRet.f32 %280, 3
  %293 = fcmp fast oge float %285, %292
  %294 = call float @dx.op.binary.f32(i32 36, float %291, float %290)  ; FMin(a,b)
  %295 = select i1 %293, float %290, float %294
  %296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.i32 %296, 3
  %298 = icmp eq i32 %297, 0
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 2
  %303 = fsub fast float %300, %233
  %304 = fadd fast float %303, %302
  %305 = fsub fast float 0xC7EFFFFFE0000000, %233
  br i1 %298, label %317, label %306, !dx.controlflow.hints !31

; <label>:306                                     ; preds = %200
  %307 = fsub fast float -0.000000e+00, %232
  %308 = fsub fast float -0.000000e+00, %231
  %309 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %308, float %307, float %304)  ; Dot3(ax,ay,az,bx,by,bz)
  %310 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %311 = fdiv fast float 1.000000e+00, %310
  %312 = fmul fast float %311, %309
  %313 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %308, float %307, float %305)  ; Dot3(ax,ay,az,bx,by,bz)
  %314 = fmul fast float %311, %313
  %315 = call float @dx.op.binary.f32(i32 36, float %312, float %314)  ; FMin(a,b)
  %316 = call float @dx.op.binary.f32(i32 35, float %312, float %314)  ; FMax(a,b)
  br label %350

; <label>:317                                     ; preds = %200
  %318 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %319 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %320 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %321 = extractvalue %dx.types.CBufRet.f32 %301, 1
  %322 = fdiv fast float 1.000000e+00, %274
  %323 = fdiv fast float 1.000000e+00, %275
  %324 = fdiv fast float 1.000000e+00, %276
  %325 = fsub fast float %318, %231
  %326 = fmul fast float %322, %325
  %327 = fadd fast float %325, %320
  %328 = fmul fast float %327, %322
  %329 = call float @dx.op.binary.f32(i32 36, float %326, float %328)  ; FMin(a,b)
  %330 = call float @dx.op.binary.f32(i32 35, float %326, float %328)  ; FMax(a,b)
  %331 = fsub fast float %319, %232
  %332 = fmul fast float %323, %331
  %333 = fadd fast float %331, %321
  %334 = fmul fast float %333, %323
  %335 = call float @dx.op.binary.f32(i32 36, float %332, float %334)  ; FMin(a,b)
  %336 = call float @dx.op.binary.f32(i32 35, float %329, float %335)  ; FMax(a,b)
  %337 = call float @dx.op.binary.f32(i32 35, float %332, float %334)  ; FMax(a,b)
  %338 = call float @dx.op.binary.f32(i32 36, float %330, float %337)  ; FMin(a,b)
  %339 = fmul fast float %324, %305
  %340 = fmul fast float %324, %304
  %341 = call float @dx.op.binary.f32(i32 36, float %339, float %340)  ; FMin(a,b)
  %342 = call float @dx.op.binary.f32(i32 35, float %336, float %341)  ; FMax(a,b)
  %343 = call float @dx.op.binary.f32(i32 35, float %339, float %340)  ; FMax(a,b)
  %344 = call float @dx.op.binary.f32(i32 36, float %338, float %343)  ; FMin(a,b)
  %345 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %342)  ; FMax(a,b)
  %346 = fcmp fast ult float %344, %345
  br i1 %346, label %350, label %347, !dx.controlflow.hints !32

; <label>:347                                     ; preds = %317
  %348 = call float @dx.op.binary.f32(i32 36, float %342, float %344)  ; FMin(a,b)
  %349 = call float @dx.op.binary.f32(i32 35, float %342, float %344)  ; FMax(a,b)
  br label %350

; <label>:350                                     ; preds = %347, %317, %306
  %351 = phi float [ %315, %306 ], [ %348, %347 ], [ 0.000000e+00, %317 ]
  %352 = phi float [ %316, %306 ], [ %349, %347 ], [ 0.000000e+00, %317 ]
  %353 = fcmp fast oeq float %352, 0.000000e+00
  %354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %355 = extractvalue %dx.types.CBufRet.f32 %354, 1
  %356 = fcmp fast olt float %352, %355
  %357 = or i1 %353, %356
  br i1 %357, label %362, label %358, !dx.controlflow.hints !33

; <label>:358                                     ; preds = %350
  %359 = call float @dx.op.binary.f32(i32 35, float %355, float %351)  ; FMax(a,b)
  %360 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %359)  ; FMin(a,b)
  %361 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %352)  ; FMax(a,b)
  br label %362

; <label>:362                                     ; preds = %358, %350
  %363 = phi i32 [ 1, %358 ], [ 0, %350 ]
  %364 = phi float [ %361, %358 ], [ -1.000000e+00, %350 ]
  %365 = phi float [ %360, %358 ], [ 0x47EFFFFFE0000000, %350 ]
  %366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.f32 %366, 3
  %368 = fsub fast float -0.000000e+00, %231
  %369 = fsub fast float -0.000000e+00, %232
  %370 = fsub fast float %367, %233
  %371 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %368, float %369, float %370)  ; Dot3(ax,ay,az,bx,by,bz)
  %372 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %373 = fdiv fast float 1.000000e+00, %372
  %374 = fmul fast float %373, %371
  %375 = fcmp fast olt float %374, 0.000000e+00
  %376 = fcmp fast ogt float %276, 0.000000e+00
  %377 = and i1 %376, %375
  br i1 %377, label %382, label %378, !dx.controlflow.hints !34

; <label>:378                                     ; preds = %362
  %379 = fcmp fast olt float %276, 0.000000e+00
  br i1 %379, label %380, label %382, !dx.controlflow.hints !35

; <label>:380                                     ; preds = %378
  %381 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %374)  ; FMax(a,b)
  br label %382

; <label>:382                                     ; preds = %380, %378, %362
  %383 = phi float [ 0.000000e+00, %362 ], [ %381, %380 ], [ 0.000000e+00, %378 ]
  %384 = phi float [ 0.000000e+00, %362 ], [ 0x47EFFFFFE0000000, %380 ], [ %374, %378 ]
  %385 = fcmp fast oeq float %384, 0.000000e+00
  br i1 %385, label %389, label %386, !dx.controlflow.hints !36

; <label>:386                                     ; preds = %382
  %387 = call float @dx.op.binary.f32(i32 36, float %365, float %383)  ; FMin(a,b)
  %388 = call float @dx.op.binary.f32(i32 35, float %364, float %384)  ; FMax(a,b)
  br label %389

; <label>:389                                     ; preds = %386, %382
  %390 = phi i32 [ 1, %386 ], [ 0, %382 ]
  %391 = phi float [ %388, %386 ], [ %364, %382 ]
  %392 = phi float [ %387, %386 ], [ %365, %382 ]
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.f32 %393, 3
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 0
  %397 = fsub fast float %394, %233
  %398 = fadd fast float %397, %396
  %399 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %368, float %369, float %398)  ; Dot3(ax,ay,az,bx,by,bz)
  %400 = fmul fast float %373, %399
  %401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.f32 %401, 2
  %403 = fsub fast float %402, %233
  %404 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %368, float %369, float %403)  ; Dot3(ax,ay,az,bx,by,bz)
  %405 = fmul fast float %373, %404
  %406 = call float @dx.op.binary.f32(i32 36, float %400, float %405)  ; FMin(a,b)
  %407 = call float @dx.op.binary.f32(i32 35, float %400, float %405)  ; FMax(a,b)
  %408 = call float @dx.op.binary.f32(i32 36, float %392, float %406)  ; FMin(a,b)
  %409 = call float @dx.op.binary.f32(i32 35, float %391, float %407)  ; FMax(a,b)
  %410 = fdiv fast float 1.000000e+00, %274
  %411 = fdiv fast float 1.000000e+00, %275
  %412 = fdiv fast float 1.000000e+00, %276
  %413 = call float @dx.op.binary.f32(i32 36, float %295, float %409)  ; FMin(a,b)
  %414 = call float @dx.op.binary.f32(i32 35, float %272, float %408)  ; FMax(a,b)
  %415 = extractvalue %dx.types.CBufRet.f32 %366, 0
  %416 = fmul fast float %220, 2.000000e+00
  %417 = fadd fast float %416, -1.000000e+00
  %418 = fmul fast float %415, %417
  %419 = fadd fast float %418, %414
  %420 = fcmp fast olt float %419, %413
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 2
  %423 = fcmp fast olt float %422, 1.000000e+00
  %424 = and i1 %420, %423
  br i1 %424, label %425, label %1120

; <label>:425                                     ; preds = %389
  %426 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %427 = extractvalue %dx.types.CBufRet.i32 %426, 1
  %428 = add i32 %427, -1
  %429 = fmul fast float %419, %276
  %430 = fadd fast float %429, %233
  %431 = fmul fast float %419, %275
  %432 = fadd fast float %431, %232
  %433 = fmul fast float %419, %274
  %434 = fadd fast float %433, %231
  br label %435

; <label>:435                                     ; preds = %1098, %425
  %436 = phi float [ %732, %1098 ], [ undef, %425 ]
  %437 = phi float [ %733, %1098 ], [ undef, %425 ]
  %438 = phi float [ %734, %1098 ], [ undef, %425 ]
  %439 = phi float [ %735, %1098 ], [ undef, %425 ]
  %440 = phi float [ %1100, %1098 ], [ 0.000000e+00, %425 ]
  %441 = phi float [ %1101, %1098 ], [ 1.000000e+00, %425 ]
  %442 = phi float [ %1111, %1098 ], [ %434, %425 ]
  %443 = phi float [ %1112, %1098 ], [ %432, %425 ]
  %444 = phi float [ %1113, %1098 ], [ %430, %425 ]
  %445 = phi float [ %1099, %1098 ], [ %419, %425 ]
  %446 = phi i32 [ %457, %1098 ], [ 0, %425 ]
  %447 = phi i32 [ %737, %1098 ], [ 10, %425 ]
  %448 = phi i32 [ %629, %1098 ], [ %428, %425 ]
  %449 = phi float [ %1102, %1098 ], [ 0.000000e+00, %425 ]
  %450 = phi float [ %1103, %1098 ], [ 0.000000e+00, %425 ]
  %451 = phi float [ %1104, %1098 ], [ 0.000000e+00, %425 ]
  %452 = phi float [ %1105, %1098 ], [ 0.000000e+00, %425 ]
  %453 = phi float [ %1106, %1098 ], [ 0.000000e+00, %425 ]
  %454 = phi i32 [ %1107, %1098 ], [ 0, %425 ]
  %455 = fsub fast float -0.000000e+00, %443
  %456 = fsub fast float -0.000000e+00, %442
  %457 = add i32 %446, 1
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %460 = icmp eq i32 %363, 0
  br i1 %460, label %626, label %461, !dx.controlflow.hints !37

; <label>:461                                     ; preds = %435
  %462 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.i32 %462, 1
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 1
  %466 = fcmp fast ogt float %465, %445
  br i1 %466, label %467, label %469, !dx.controlflow.hints !38

; <label>:467                                     ; preds = %461
  %468 = fsub fast float %465, %445
  br label %616

; <label>:469                                     ; preds = %461
  %470 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.i32 %470, 3
  %472 = icmp eq i32 %471, 0
  %473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %474 = extractvalue %dx.types.CBufRet.f32 %473, 2
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 2
  %477 = fsub fast float %474, %444
  %478 = fadd fast float %477, %476
  %479 = fsub fast float 0xC7EFFFFFE0000000, %444
  br i1 %472, label %487, label %480, !dx.controlflow.hints !31

; <label>:480                                     ; preds = %469
  %481 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %456, float %455, float %478)  ; Dot3(ax,ay,az,bx,by,bz)
  %482 = fmul fast float %373, %481
  %483 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %456, float %455, float %479)  ; Dot3(ax,ay,az,bx,by,bz)
  %484 = fmul fast float %373, %483
  %485 = call float @dx.op.binary.f32(i32 36, float %482, float %484)  ; FMin(a,b)
  %486 = call float @dx.op.binary.f32(i32 35, float %482, float %484)  ; FMax(a,b)
  br label %517

; <label>:487                                     ; preds = %469
  %488 = extractvalue %dx.types.CBufRet.f32 %473, 0
  %489 = extractvalue %dx.types.CBufRet.f32 %473, 1
  %490 = extractvalue %dx.types.CBufRet.f32 %475, 0
  %491 = extractvalue %dx.types.CBufRet.f32 %475, 1
  %492 = fsub fast float %488, %442
  %493 = fmul fast float %410, %492
  %494 = fadd fast float %492, %490
  %495 = fmul fast float %494, %410
  %496 = call float @dx.op.binary.f32(i32 36, float %493, float %495)  ; FMin(a,b)
  %497 = call float @dx.op.binary.f32(i32 35, float %493, float %495)  ; FMax(a,b)
  %498 = fsub fast float %489, %443
  %499 = fmul fast float %411, %498
  %500 = fadd fast float %498, %491
  %501 = fmul fast float %500, %411
  %502 = call float @dx.op.binary.f32(i32 36, float %499, float %501)  ; FMin(a,b)
  %503 = call float @dx.op.binary.f32(i32 35, float %496, float %502)  ; FMax(a,b)
  %504 = call float @dx.op.binary.f32(i32 35, float %499, float %501)  ; FMax(a,b)
  %505 = call float @dx.op.binary.f32(i32 36, float %497, float %504)  ; FMin(a,b)
  %506 = fmul fast float %412, %479
  %507 = fmul fast float %412, %478
  %508 = call float @dx.op.binary.f32(i32 36, float %506, float %507)  ; FMin(a,b)
  %509 = call float @dx.op.binary.f32(i32 35, float %503, float %508)  ; FMax(a,b)
  %510 = call float @dx.op.binary.f32(i32 35, float %506, float %507)  ; FMax(a,b)
  %511 = call float @dx.op.binary.f32(i32 36, float %505, float %510)  ; FMin(a,b)
  %512 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %509)  ; FMax(a,b)
  %513 = fcmp fast ult float %511, %512
  br i1 %513, label %517, label %514, !dx.controlflow.hints !32

; <label>:514                                     ; preds = %487
  %515 = call float @dx.op.binary.f32(i32 36, float %509, float %511)  ; FMin(a,b)
  %516 = call float @dx.op.binary.f32(i32 35, float %509, float %511)  ; FMax(a,b)
  br label %517

; <label>:517                                     ; preds = %514, %487, %480
  %518 = phi float [ %485, %480 ], [ %515, %514 ], [ 0.000000e+00, %487 ]
  %519 = phi float [ %486, %480 ], [ %516, %514 ], [ 0.000000e+00, %487 ]
  %520 = fcmp fast ogt float %518, 0.000000e+00
  br i1 %520, label %616, label %521, !dx.controlflow.hints !39

; <label>:521                                     ; preds = %517
  %522 = fcmp fast ugt float %519, 0.000000e+00
  br i1 %522, label %523, label %616, !dx.controlflow.hints !40

; <label>:523                                     ; preds = %521
  %524 = icmp sgt i32 %448, 0
  br i1 %524, label %525, label %610

; <label>:525                                     ; preds = %523
  br label %526

; <label>:526                                     ; preds = %606, %525
  %527 = phi i32 [ %607, %606 ], [ %448, %525 ]
  %528 = sitofp i32 %527 to float
  %529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %530 = extractvalue %dx.types.CBufRet.f32 %529, 0
  %531 = extractvalue %dx.types.CBufRet.f32 %529, 1
  %532 = fsub fast float %442, %530
  %533 = fsub fast float %443, %531
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 0
  %536 = extractvalue %dx.types.CBufRet.f32 %534, 1
  %537 = fmul fast float %532, %535
  %538 = fmul fast float %533, %536
  %539 = fsub fast float 1.000000e+00, %538
  %540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.i32 %540, 3
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %549, label %543, !dx.controlflow.hints !41

; <label>:543                                     ; preds = %526
  %544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %537, float %539, float undef, float undef, i32 0, i32 0, i32 undef, float %528)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = extractvalue %dx.types.ResRet.f32 %544, 1
  %547 = extractvalue %dx.types.ResRet.f32 %544, 2
  %548 = extractvalue %dx.types.ResRet.f32 %544, 3
  br label %555

; <label>:549                                     ; preds = %526
  %550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %537, float %539, float undef, float undef, i32 0, i32 0, i32 undef, float %528)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  %552 = extractvalue %dx.types.ResRet.f32 %550, 1
  %553 = extractvalue %dx.types.ResRet.f32 %550, 2
  %554 = extractvalue %dx.types.ResRet.f32 %550, 3
  br label %555

; <label>:555                                     ; preds = %549, %543
  %556 = phi float [ %545, %543 ], [ %551, %549 ]
  %557 = phi float [ %546, %543 ], [ %552, %549 ]
  %558 = phi float [ %547, %543 ], [ %553, %549 ]
  %559 = phi float [ %548, %543 ], [ %554, %549 ]
  %560 = extractvalue %dx.types.CBufRet.f32 %534, 3
  %561 = fmul fast float %560, %556
  %562 = extractvalue %dx.types.CBufRet.f32 %529, 2
  %563 = fadd fast float %561, %562
  %564 = fmul fast float %560, %557
  %565 = fadd fast float %564, %562
  %566 = fmul fast float %560, %558
  %567 = fadd fast float %566, %562
  %568 = and i32 %527, 31
  %569 = shl i32 1, %568
  %570 = uitofp i32 %569 to float
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 3
  %573 = fdiv fast float 1.000000e+00, %572
  %574 = fmul fast float %573, %570
  %575 = fmul fast float %574, %276
  %576 = fadd fast float %575, %444
  %577 = fcmp fast oeq float %559, 0.000000e+00
  %578 = fcmp fast ogt float %444, %565
  %579 = fcmp fast ogt float %576, %565
  %580 = and i1 %578, %579
  %581 = or i1 %577, %580
  br i1 %581, label %582, label %586, !dx.controlflow.hints !42

; <label>:582                                     ; preds = %555
  %583 = add nsw i32 %527, 1
  %584 = add nsw i32 %463, -1
  %585 = call i32 @dx.op.binary.i32(i32 38, i32 %583, i32 %584)  ; IMin(a,b)
  br label %616

; <label>:586                                     ; preds = %555
  %587 = fcmp fast olt float %444, %567
  %588 = fcmp fast olt float %576, %567
  %589 = and i1 %587, %588
  br i1 %589, label %590, label %594, !dx.controlflow.hints !43

; <label>:590                                     ; preds = %586
  %591 = add nsw i32 %527, 1
  %592 = add nsw i32 %463, -1
  %593 = call i32 @dx.op.binary.i32(i32 38, i32 %591, i32 %592)  ; IMin(a,b)
  br label %616

; <label>:594                                     ; preds = %586
  %595 = fcmp fast olt float %444, %563
  %596 = fcmp fast olt float %576, %563
  %597 = and i1 %595, %596
  br i1 %597, label %598, label %606, !dx.controlflow.hints !44

; <label>:598                                     ; preds = %594
  %599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.f32 %599, 3
  %601 = extractvalue %dx.types.CBufRet.f32 %534, 2
  %602 = fcmp fast une float %600, %601
  br i1 %602, label %603, label %610, !dx.controlflow.hints !45

; <label>:603                                     ; preds = %598
  %604 = fsub fast float %444, %567
  %605 = call float @dx.op.binary.f32(i32 36, float %574, float %604)  ; FMin(a,b)
  br label %610

; <label>:606                                     ; preds = %594
  %607 = add nsw i32 %527, -1
  %608 = icmp sgt i32 %527, 1
  br i1 %608, label %526, label %609

; <label>:609                                     ; preds = %606
  br label %610

; <label>:610                                     ; preds = %609, %603, %598, %523
  %611 = phi float [ %605, %603 ], [ %574, %598 ], [ 0.000000e+00, %523 ], [ 0.000000e+00, %609 ]
  %612 = phi i32 [ %527, %603 ], [ %527, %598 ], [ %448, %523 ], [ %607, %609 ]
  %613 = add nsw i32 %612, 1
  %614 = add nsw i32 %463, -1
  %615 = call i32 @dx.op.binary.i32(i32 38, i32 %613, i32 %614)  ; IMin(a,b)
  br label %616

; <label>:616                                     ; preds = %610, %590, %582, %521, %517, %467
  %617 = phi float [ %468, %467 ], [ %574, %582 ], [ %574, %590 ], [ %611, %610 ], [ 0x47EFFFFFE0000000, %521 ], [ %518, %517 ]
  %618 = phi i32 [ %363, %467 ], [ %363, %582 ], [ %363, %590 ], [ %363, %610 ], [ 0, %521 ], [ %363, %517 ]
  %619 = phi i32 [ %448, %467 ], [ %585, %582 ], [ %593, %590 ], [ %615, %610 ], [ %448, %521 ], [ %448, %517 ]
  %620 = icmp ne i32 %618, 0
  %621 = zext i1 %620 to i32
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 2
  %624 = call float @dx.op.binary.f32(i32 35, float %617, float %623)  ; FMax(a,b)
  %625 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %624)  ; FMin(a,b)
  br label %626

; <label>:626                                     ; preds = %616, %435
  %627 = phi i32 [ %621, %616 ], [ 0, %435 ]
  %628 = phi float [ %625, %616 ], [ 0x47EFFFFFE0000000, %435 ]
  %629 = phi i32 [ %619, %616 ], [ %448, %435 ]
  %630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %631 = extractvalue %dx.types.CBufRet.f32 %630, 0
  %632 = extractvalue %dx.types.CBufRet.f32 %630, 1
  %633 = fsub fast float %442, %631
  %634 = fsub fast float %443, %632
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 2
  %637 = extractvalue %dx.types.CBufRet.f32 %635, 3
  %638 = fmul fast float %633, %636
  %639 = fmul fast float %634, %637
  %640 = call float @dx.op.binary.f32(i32 36, float %638, float %639)  ; FMin(a,b)
  %641 = fcmp fast olt float %640, 0.000000e+00
  %642 = call float @dx.op.binary.f32(i32 35, float %638, float %639)  ; FMax(a,b)
  %643 = fcmp fast ogt float %642, 1.000000e+00
  %644 = or i1 %641, %643
  %645 = extractvalue %dx.types.CBufRet.f32 %630, 2
  %646 = fcmp fast olt float %444, %645
  %647 = or i1 %644, %646
  %648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %649 = extractvalue %dx.types.CBufRet.f32 %648, 3
  %650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %651 = extractvalue %dx.types.CBufRet.f32 %650, 0
  %652 = fadd fast float %651, %649
  %653 = fcmp fast ogt float %444, %652
  %654 = or i1 %647, %653
  br i1 %654, label %655, label %684, !dx.controlflow.hints !46

; <label>:655                                     ; preds = %626
  %656 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %657 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %658 = fsub fast float %631, %442
  %659 = fmul fast float %658, %410
  %660 = fadd fast float %658, %656
  %661 = fmul fast float %660, %410
  %662 = call float @dx.op.binary.f32(i32 36, float %659, float %661)  ; FMin(a,b)
  %663 = call float @dx.op.binary.f32(i32 35, float %659, float %661)  ; FMax(a,b)
  %664 = fsub fast float %632, %443
  %665 = fmul fast float %664, %411
  %666 = fadd fast float %664, %657
  %667 = fmul fast float %666, %411
  %668 = call float @dx.op.binary.f32(i32 36, float %665, float %667)  ; FMin(a,b)
  %669 = call float @dx.op.binary.f32(i32 35, float %662, float %668)  ; FMax(a,b)
  %670 = call float @dx.op.binary.f32(i32 35, float %665, float %667)  ; FMax(a,b)
  %671 = call float @dx.op.binary.f32(i32 36, float %663, float %670)  ; FMin(a,b)
  %672 = fsub fast float %645, %444
  %673 = fmul fast float %672, %412
  %674 = fsub fast float %649, %444
  %675 = fadd fast float %674, %651
  %676 = fmul fast float %675, %412
  %677 = call float @dx.op.binary.f32(i32 36, float %673, float %676)  ; FMin(a,b)
  %678 = call float @dx.op.binary.f32(i32 35, float %669, float %677)  ; FMax(a,b)
  %679 = call float @dx.op.binary.f32(i32 35, float %673, float %676)  ; FMax(a,b)
  %680 = call float @dx.op.binary.f32(i32 36, float %671, float %679)  ; FMin(a,b)
  %681 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %678)  ; FMax(a,b)
  %682 = fcmp fast oge float %680, %681
  %683 = select i1 %682, float %678, float 1.000000e+07
  br label %730

; <label>:684                                     ; preds = %626
  %685 = fsub fast float 1.000000e+00, %639
  %686 = icmp eq i32 %447, 0
  br i1 %686, label %715, label %687

; <label>:687                                     ; preds = %684
  br label %688

; <label>:688                                     ; preds = %711, %687
  %689 = phi i32 [ %712, %711 ], [ %447, %687 ]
  %690 = uitofp i32 %689 to float
  %691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %638, float %685, float undef, float undef, i32 0, i32 0, i32 undef, float %690)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %692 = extractvalue %dx.types.ResRet.f32 %691, 0
  %693 = extractvalue %dx.types.ResRet.f32 %691, 1
  %694 = extractvalue %dx.types.ResRet.f32 %691, 2
  %695 = fcmp fast oeq float %692, 0.000000e+00
  %696 = fcmp ule float %444, %694
  %697 = fcmp uge float %444, %693
  %698 = or i1 %697, %696
  %699 = or i1 %695, %698
  br i1 %699, label %700, label %711, !dx.controlflow.hints !47

; <label>:700                                     ; preds = %688
  %701 = extractvalue %dx.types.ResRet.f32 %691, 3
  %702 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %703 = and i32 %689, 31
  %704 = lshr i32 1024, %703
  %705 = uitofp i32 %704 to float
  %706 = fdiv fast float %702, %705
  %707 = add i32 %689, 1
  %708 = uitofp i32 %707 to float
  %709 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %708)  ; FMin(a,b)
  %710 = fptosi float %709 to i32
  br label %730

; <label>:711                                     ; preds = %688
  %712 = add i32 %689, -1
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %714, label %688, !llvm.loop !48

; <label>:714                                     ; preds = %711
  br label %715

; <label>:715                                     ; preds = %714, %684
  %716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %12, float %638, float %685, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %717 = extractvalue %dx.types.ResRet.f32 %716, 0
  %718 = extractvalue %dx.types.ResRet.f32 %716, 1
  %719 = extractvalue %dx.types.ResRet.f32 %716, 2
  %720 = extractvalue %dx.types.ResRet.f32 %716, 3
  %721 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %722 = fmul fast float %721, 9.765625e-04
  %723 = fcmp fast oeq float %717, 0.000000e+00
  %724 = fcmp ule float %444, %719
  %725 = fcmp uge float %444, %718
  %726 = or i1 %725, %724
  %727 = or i1 %723, %726
  %728 = zext i1 %727 to i32
  %729 = xor i32 %728, 1
  br label %730

; <label>:730                                     ; preds = %715, %700, %655
  %731 = phi float [ %683, %655 ], [ %706, %700 ], [ %722, %715 ]
  %732 = phi float [ %436, %655 ], [ %692, %700 ], [ %717, %715 ]
  %733 = phi float [ %437, %655 ], [ %693, %700 ], [ %718, %715 ]
  %734 = phi float [ %438, %655 ], [ %694, %700 ], [ %719, %715 ]
  %735 = phi float [ %439, %655 ], [ %701, %700 ], [ %720, %715 ]
  %736 = phi i32 [ 0, %655 ], [ 0, %700 ], [ %729, %715 ]
  %737 = phi i32 [ 10, %655 ], [ %710, %700 ], [ 1, %715 ]
  %738 = icmp eq i32 %736, 0
  %739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.f32 %739, 2
  %741 = call float @dx.op.binary.f32(i32 35, float %731, float %740)  ; FMax(a,b)
  %742 = call float @dx.op.binary.f32(i32 36, float %628, float %741)  ; FMin(a,b)
  %743 = icmp eq i32 %390, 0
  br i1 %743, label %756, label %744, !dx.controlflow.hints !50

; <label>:744                                     ; preds = %730
  %745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.f32 %745, 3
  %747 = extractvalue %dx.types.CBufRet.f32 %745, 2
  %748 = fmul fast float %746, %445
  %749 = fdiv fast float %748, %413
  %750 = fadd fast float %749, 1.000000e+00
  %751 = call float @dx.op.unary.f32(i32 23, float %750)  ; Log(value)
  %752 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %751)  ; FMin(a,b)
  %753 = fmul fast float %747, %413
  %754 = fmul fast float %753, %752
  %755 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %754)  ; FMin(a,b)
  br label %756

; <label>:756                                     ; preds = %744, %730
  %757 = phi float [ %755, %744 ], [ 0x47EFFFFFE0000000, %730 ]
  %758 = extractvalue %dx.types.CBufRet.f32 %458, 2
  %759 = fmul fast float %758, %445
  %760 = call float @dx.op.unary.f32(i32 23, float %759)  ; Log(value)
  %761 = fmul fast float %760, 0x3FE62E4300000000
  %762 = call float @dx.op.binary.f32(i32 35, float %761, float 1.000000e+00)  ; FMax(a,b)
  %763 = fmul fast float %762, %757
  %764 = call float @dx.op.binary.f32(i32 36, float %763, float %742)  ; FMin(a,b)
  %765 = call float @dx.op.binary.f32(i32 35, float %764, float %459)  ; FMax(a,b)
  %766 = fsub fast float %413, %445
  %767 = fadd fast float %766, 0x3F1A36E2E0000000
  %768 = call float @dx.op.binary.f32(i32 36, float %767, float %765)  ; FMin(a,b)
  %769 = icmp eq i32 %627, 0
  br i1 %769, label %866, label %770, !dx.controlflow.hints !51

; <label>:770                                     ; preds = %756
  %771 = fcmp fast olt float %767, %765
  %772 = fmul fast float %276, %219
  %773 = fmul fast float %772, %768
  %774 = fadd fast float %773, %444
  %775 = fmul fast float %276, %220
  %776 = fmul fast float %775, %768
  %777 = fadd fast float %776, %444
  %778 = fmul fast float %276, %221
  %779 = fmul fast float %778, %768
  %780 = fadd fast float %779, %444
  br i1 %771, label %781, label %786, !dx.controlflow.hints !52

; <label>:781                                     ; preds = %770
  %782 = fmul fast float %768, %274
  %783 = fmul fast float %768, %275
  %784 = fadd fast float %782, %442
  %785 = fadd fast float %783, %443
  br label %786

; <label>:786                                     ; preds = %781, %770
  %787 = phi float [ %784, %781 ], [ %442, %770 ]
  %788 = phi float [ %785, %781 ], [ %443, %770 ]
  %789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %790 = extractvalue %dx.types.CBufRet.f32 %789, 0
  %791 = extractvalue %dx.types.CBufRet.f32 %789, 1
  %792 = fsub fast float %787, %790
  %793 = fsub fast float %788, %791
  %794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %795 = extractvalue %dx.types.CBufRet.f32 %794, 0
  %796 = extractvalue %dx.types.CBufRet.f32 %794, 1
  %797 = fmul fast float %792, %795
  %798 = fmul fast float %793, %796
  %799 = fsub fast float 1.000000e+00, %798
  %800 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %801 = extractvalue %dx.types.CBufRet.i32 %800, 3
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %809, label %803, !dx.controlflow.hints !41

; <label>:803                                     ; preds = %786
  %804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %797, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %805 = extractvalue %dx.types.ResRet.f32 %804, 0
  %806 = extractvalue %dx.types.ResRet.f32 %804, 1
  %807 = extractvalue %dx.types.ResRet.f32 %804, 2
  %808 = extractvalue %dx.types.ResRet.f32 %804, 3
  br label %815

; <label>:809                                     ; preds = %786
  %810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %797, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %811 = extractvalue %dx.types.ResRet.f32 %810, 0
  %812 = extractvalue %dx.types.ResRet.f32 %810, 1
  %813 = extractvalue %dx.types.ResRet.f32 %810, 2
  %814 = extractvalue %dx.types.ResRet.f32 %810, 3
  br label %815

; <label>:815                                     ; preds = %809, %803
  %816 = phi float [ %805, %803 ], [ %811, %809 ]
  %817 = phi float [ %806, %803 ], [ %812, %809 ]
  %818 = phi float [ %807, %803 ], [ %813, %809 ]
  %819 = phi float [ %808, %803 ], [ %814, %809 ]
  %820 = extractvalue %dx.types.CBufRet.f32 %794, 3
  %821 = fmul fast float %820, %817
  %822 = fmul fast float %821, %816
  %823 = fsub fast float %821, %822
  %824 = fcmp fast ole float %823, 0.000000e+00
  %825 = extractvalue %dx.types.CBufRet.f32 %789, 2
  %826 = fadd fast float %822, %825
  %827 = fmul fast float %820, %818
  %828 = fadd fast float %827, %825
  %829 = fdiv fast float 1.000000e+00, %823
  %830 = select i1 %824, float 1.000000e+06, float %829
  %831 = fsub fast float %774, %826
  %832 = fmul fast float %830, %831
  %833 = call float @dx.op.unary.f32(i32 7, float %832)  ; Saturate(value)
  %834 = extractvalue %dx.types.CBufRet.f32 %794, 2
  %835 = fmul fast float %834, %833
  %836 = fsub fast float %834, %835
  %837 = fcmp fast olt float %774, %828
  %838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.f32 %838, 3
  %840 = select i1 %837, float %839, float 1.000000e+00
  %841 = fmul fast float %836, %840
  %842 = fsub fast float %777, %826
  %843 = fmul fast float %830, %842
  %844 = call float @dx.op.unary.f32(i32 7, float %843)  ; Saturate(value)
  %845 = fmul fast float %834, %844
  %846 = fsub fast float %834, %845
  %847 = fcmp fast olt float %777, %828
  %848 = select i1 %847, float %839, float 1.000000e+00
  %849 = fmul fast float %846, %848
  %850 = fadd fast float %849, %841
  %851 = fsub fast float %780, %826
  %852 = fmul fast float %830, %851
  %853 = call float @dx.op.unary.f32(i32 7, float %852)  ; Saturate(value)
  %854 = fmul fast float %834, %853
  %855 = fsub fast float %834, %854
  %856 = fcmp fast olt float %780, %828
  %857 = select i1 %856, float %839, float 1.000000e+00
  %858 = fmul fast float %855, %857
  %859 = fadd fast float %850, %858
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 2
  %862 = fmul fast float %768, 0x3FD5555560000000
  %863 = fmul fast float %862, %819
  %864 = fmul fast float %863, %861
  %865 = fmul fast float %864, %859
  br label %866

; <label>:866                                     ; preds = %815, %756
  %867 = phi float [ %865, %815 ], [ 0.000000e+00, %756 ]
  br i1 %743, label %914, label %868, !dx.controlflow.hints !53

; <label>:868                                     ; preds = %866
  %869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.f32 %869, 0
  %871 = fsub fast float %870, %444
  %872 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %456, float %455, float %871)  ; Dot3(ax,ay,az,bx,by,bz)
  %873 = fmul fast float %373, %872
  %874 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %873)  ; FMax(a,b)
  %875 = fcmp fast olt float %276, 0.000000e+00
  %876 = call float @dx.op.binary.f32(i32 36, float %768, float %874)  ; FMin(a,b)
  br i1 %875, label %878, label %877, !dx.controlflow.hints !54

; <label>:877                                     ; preds = %868
  br label %878

; <label>:878                                     ; preds = %877, %868
  %879 = phi float [ 0.000000e+00, %877 ], [ %876, %868 ]
  %880 = phi float [ %876, %877 ], [ %768, %868 ]
  %881 = phi float [ %876, %877 ], [ 0.000000e+00, %868 ]
  %882 = phi float [ %768, %877 ], [ %876, %868 ]
  %883 = fsub fast float %880, %879
  %884 = extractvalue %dx.types.CBufRet.f32 %869, 1
  %885 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %884)  ; FMin(a,b)
  %886 = fsub fast float %444, %870
  %887 = fmul fast float %885, 0x3FF7154760000000
  %888 = fmul fast float %887, %886
  %889 = call float @dx.op.unary.f32(i32 21, float %888)  ; Exp(value)
  %890 = fmul fast float %276, 0x3FF7154760000000
  %891 = fmul fast float %890, %882
  %892 = fmul fast float %891, %885
  %893 = call float @dx.op.unary.f32(i32 21, float %892)  ; Exp(value)
  %894 = fmul fast float %890, %881
  %895 = fmul fast float %894, %885
  %896 = call float @dx.op.unary.f32(i32 21, float %895)  ; Exp(value)
  %897 = fsub fast float %893, %896
  %898 = fmul fast float %897, %889
  %899 = fmul fast float %885, %276
  %900 = fdiv fast float %898, %899
  %901 = fadd fast float %883, %900
  %902 = call float @dx.op.unary.f32(i32 6, float %276)  ; FAbs(value)
  %903 = fcmp fast olt float %902, 0x3F0FFB4800000000
  %904 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %886)  ; FMax(a,b)
  %905 = fmul fast float %904, 0x3FF7154760000000
  %906 = fmul fast float %905, %884
  %907 = call float @dx.op.unary.f32(i32 21, float %906)  ; Exp(value)
  %908 = fmul fast float %907, %768
  %909 = select i1 %903, float %908, float %901
  %910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %911 = extractvalue %dx.types.CBufRet.f32 %910, 1
  %912 = fmul fast float %909, %911
  %913 = fadd fast float %912, %867
  br label %914

; <label>:914                                     ; preds = %878, %866
  %915 = phi float [ %913, %878 ], [ %867, %866 ]
  br i1 %738, label %1041, label %916, !dx.controlflow.hints !55

; <label>:916                                     ; preds = %914
  %917 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.i32 %917, 0
  %919 = icmp ne i32 %918, 0
  %920 = zext i1 %919 to i32
  %921 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.i32 %921, 0
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %957, label %924

; <label>:924                                     ; preds = %916
  br label %925

; <label>:925                                     ; preds = %952, %924
  %926 = phi i32 [ %953, %952 ], [ 0, %924 ]
  %927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %926, i32 0)  ; BufferLoad(srv,index,wot)
  %928 = extractvalue %dx.types.ResRet.f32 %927, 0
  %929 = extractvalue %dx.types.ResRet.f32 %927, 1
  %930 = extractvalue %dx.types.ResRet.f32 %927, 2
  %931 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %926, i32 16)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.f32 %931, 0
  %933 = extractvalue %dx.types.ResRet.f32 %931, 1
  %934 = extractvalue %dx.types.ResRet.f32 %931, 2
  %935 = fsub fast float %928, %932
  %936 = fsub fast float %929, %933
  %937 = fsub fast float %930, %934
  %938 = fadd fast float %932, %928
  %939 = fadd fast float %933, %929
  %940 = fadd fast float %934, %930
  %941 = fcmp fast olt float %442, %935
  %942 = fcmp fast olt float %443, %936
  %943 = fcmp fast olt float %444, %937
  %944 = or i1 %941, %942
  %945 = or i1 %943, %944
  %946 = fcmp fast ogt float %442, %938
  %947 = fcmp fast ogt float %443, %939
  %948 = fcmp fast ogt float %444, %940
  %949 = or i1 %946, %947
  %950 = or i1 %948, %949
  %951 = or i1 %945, %950
  br i1 %951, label %952, label %955, !dx.controlflow.hints !56

; <label>:952                                     ; preds = %925
  %953 = add nuw i32 %926, 1
  %954 = icmp ult i32 %953, %922
  br i1 %954, label %925, label %955

; <label>:955                                     ; preds = %952, %925
  %956 = phi i32 [ 255, %952 ], [ %926, %925 ]
  br label %957

; <label>:957                                     ; preds = %955, %916
  %958 = phi i32 [ 255, %916 ], [ %956, %955 ]
  %959 = icmp eq i32 %958, 255
  br i1 %959, label %965, label %960, !dx.controlflow.hints !57

; <label>:960                                     ; preds = %957
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %958, i32 156)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = icmp ne i32 %962, 0
  %964 = zext i1 %963 to i32
  br label %965

; <label>:965                                     ; preds = %960, %957
  %966 = phi i32 [ %964, %960 ], [ %920, %957 ]
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %968, label %1037, !dx.controlflow.hints !58

; <label>:968                                     ; preds = %965
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 3
  %971 = extractvalue %dx.types.CBufRet.f32 %648, 0
  %972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.f32 %972, 2
  %974 = extractvalue %dx.types.CBufRet.f32 %972, 3
  br i1 %959, label %985, label %975, !dx.controlflow.hints !59

; <label>:975                                     ; preds = %968
  %976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %958, i32 60)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.f32 %976, 0
  %978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %958, i32 64)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.f32 %978, 0
  %980 = extractvalue %dx.types.ResRet.f32 %978, 1
  %981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %958, i32 72)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.f32 %981, 0
  %983 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %958, i32 96)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.f32 %983, 0
  br label %985

; <label>:985                                     ; preds = %975, %968
  %986 = phi float [ %977, %975 ], [ %651, %968 ]
  %987 = phi float [ %982, %975 ], [ %649, %968 ]
  %988 = phi float [ %984, %975 ], [ %971, %968 ]
  %989 = phi float [ %979, %975 ], [ %973, %968 ]
  %990 = phi float [ %980, %975 ], [ %974, %968 ]
  %991 = call float @dx.op.binary.f32(i32 35, float %732, float 0.000000e+00)  ; FMax(a,b)
  %992 = call float @dx.op.binary.f32(i32 36, float %991, float 1.000000e+00)  ; FMin(a,b)
  %993 = call float @dx.op.unary.f32(i32 24, float %992)  ; Sqrt(value)
  %994 = call float @dx.op.binary.f32(i32 35, float %735, float 0x3F847AE140000000)  ; FMax(a,b)
  %995 = fsub fast float %733, %444
  %996 = fsub fast float %444, %734
  %997 = call float @dx.op.binary.f32(i32 36, float %996, float %995)  ; FMin(a,b)
  %998 = fdiv fast float %997, %994
  %999 = call float @dx.op.unary.f32(i32 7, float %998)  ; Saturate(value)
  %1000 = fsub fast float %444, %987
  %1001 = fdiv fast float %1000, %986
  %1002 = call float @dx.op.unary.f32(i32 7, float %1001)  ; Saturate(value)
  %1003 = fsub fast float 1.000000e+00, %1002
  %1004 = fmul float %999, %1003
  %1005 = fmul float %1004, %1004
  %1006 = fmul fast float %993, %970
  %1007 = fmul fast float %1006, %1005
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 2
  %1010 = extractvalue %dx.types.CBufRet.f32 %1008, 1
  %1011 = fsub fast float %1007, %1010
  %1012 = fsub fast float %1009, %1010
  %1013 = fdiv fast float %1011, %1012
  %1014 = call float @dx.op.unary.f32(i32 7, float %1013)  ; Saturate(value)
  %1015 = fmul fast float %1014, %988
  %1016 = fcmp fast ogt float %990, 0.000000e+00
  br i1 %1016, label %1017, label %1037, !dx.controlflow.hints !60

; <label>:1017                                    ; preds = %985
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.CBufRet.f32 %1018, 1
  %1021 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1022 = fsub fast float %442, %1019
  %1023 = fsub fast float %443, %1020
  %1024 = fsub fast float %444, %1021
  %1025 = fmul fast float %1022, %1022
  %1026 = fmul fast float %1023, %1023
  %1027 = fadd fast float %1025, %1026
  %1028 = fmul fast float %1024, %1024
  %1029 = fadd fast float %1027, %1028
  %1030 = call float @dx.op.unary.f32(i32 24, float %1029)  ; Sqrt(value)
  %1031 = fsub fast float %1030, %989
  %1032 = fsub fast float %990, %989
  %1033 = fdiv fast float %1031, %1032
  %1034 = call float @dx.op.unary.f32(i32 7, float %1033)  ; Saturate(value)
  %1035 = fmul fast float %1034, %1034
  %1036 = fmul fast float %1035, %1015
  br label %1037

; <label>:1037                                    ; preds = %1017, %985, %965
  %1038 = phi float [ 0.000000e+00, %965 ], [ %1036, %1017 ], [ %1015, %985 ]
  %1039 = fmul fast float %1038, %768
  %1040 = fadd fast float %1039, %915
  br label %1041

; <label>:1041                                    ; preds = %1037, %914
  %1042 = phi float [ %1040, %1037 ], [ %915, %914 ]
  %1043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1044 = extractvalue %dx.types.CBufRet.f32 %1043, 1
  %1045 = fcmp fast ogt float %1042, %1044
  br i1 %1045, label %1048, label %1046, !dx.controlflow.hints !61

; <label>:1046                                    ; preds = %1041
  %1047 = fadd fast float %768, %445
  br label %1098

; <label>:1048                                    ; preds = %1041
  %1049 = fmul fast float %1042, 0xBFF7154760000000
  %1050 = call float @dx.op.unary.f32(i32 21, float %1049)  ; Exp(value)
  %1051 = call float @dx.op.unary.f32(i32 7, float %1050)  ; Saturate(value)
  %1052 = fsub fast float 1.000000e+00, %1051
  %1053 = fdiv fast float %1042, %768
  %1054 = fadd fast float %768, %445
  %1055 = fmul fast float %445, %445
  %1056 = fmul fast float %1054, %1054
  %1057 = fsub fast float %1055, %1056
  %1058 = fmul fast float %1057, -5.000000e-01
  %1059 = fmul fast float %1058, %1053
  %1060 = fadd fast float %1059, %440
  %1061 = fadd fast float %1042, %449
  %1062 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.i32 %1062, 0
  %1064 = icmp eq i32 %1063, 0
  br i1 %1064, label %1091, label %1065, !dx.controlflow.hints !62

; <label>:1065                                    ; preds = %1048
  %1066 = icmp ne i32 %454, 0
  %1067 = zext i1 %1066 to i32
  %1068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1069 = extractvalue %dx.types.CBufRet.f32 %1068, 2
  %1070 = extractvalue %dx.types.CBufRet.f32 %1068, 0
  %1071 = fsub fast float %1054, %1070
  %1072 = fmul fast float %1071, %1069
  %1073 = call float @dx.op.unary.f32(i32 7, float %1072)  ; Saturate(value)
  %1074 = fadd fast float %1073, -5.000000e-01
  %1075 = fmul fast float %1074, 2.000000e+00
  %1076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1077 = extractvalue %dx.types.CBufRet.f32 %1076, 2
  %1078 = fcmp fast olt float %1075, %1077
  br i1 %1078, label %1079, label %1091, !dx.controlflow.hints !63

; <label>:1079                                    ; preds = %1065
  %1080 = fmul fast float %1075, %1075
  %1081 = fmul fast float %1052, %441
  %1082 = fmul fast float %1075, %1081
  %1083 = fmul fast float %1080, %1081
  %1084 = fmul fast float %1082, %1080
  %1085 = fmul fast float %1080, %1080
  %1086 = fmul fast float %1085, %1081
  %1087 = fadd fast float %1082, %450
  %1088 = fadd fast float %1083, %451
  %1089 = fadd fast float %1084, %452
  %1090 = fadd fast float %1086, %453
  br label %1091

; <label>:1091                                    ; preds = %1079, %1065, %1048
  %1092 = phi float [ %450, %1048 ], [ %1087, %1079 ], [ %450, %1065 ]
  %1093 = phi float [ %451, %1048 ], [ %1088, %1079 ], [ %451, %1065 ]
  %1094 = phi float [ %452, %1048 ], [ %1089, %1079 ], [ %452, %1065 ]
  %1095 = phi float [ %453, %1048 ], [ %1090, %1079 ], [ %453, %1065 ]
  %1096 = phi i32 [ %454, %1048 ], [ 1, %1079 ], [ %1067, %1065 ]
  %1097 = fmul fast float %1051, %441
  br label %1098

; <label>:1098                                    ; preds = %1091, %1046
  %1099 = phi float [ %1047, %1046 ], [ %1054, %1091 ]
  %1100 = phi float [ %440, %1046 ], [ %1060, %1091 ]
  %1101 = phi float [ %441, %1046 ], [ %1097, %1091 ]
  %1102 = phi float [ %449, %1046 ], [ %1061, %1091 ]
  %1103 = phi float [ %450, %1046 ], [ %1092, %1091 ]
  %1104 = phi float [ %451, %1046 ], [ %1093, %1091 ]
  %1105 = phi float [ %452, %1046 ], [ %1094, %1091 ]
  %1106 = phi float [ %453, %1046 ], [ %1095, %1091 ]
  %1107 = phi i32 [ %454, %1046 ], [ %1096, %1091 ]
  %1108 = fmul fast float %768, %274
  %1109 = fmul fast float %768, %275
  %1110 = fmul fast float %768, %276
  %1111 = fadd fast float %1108, %442
  %1112 = fadd fast float %1109, %443
  %1113 = fadd fast float %1110, %444
  %1114 = fcmp fast olt float %1099, %413
  %1115 = extractvalue %dx.types.CBufRet.f32 %1043, 2
  %1116 = fcmp fast olt float %1115, %1101
  %1117 = and i1 %1114, %1116
  br i1 %1117, label %435, label %1118

; <label>:1118                                    ; preds = %1098
  %1119 = uitofp i32 %457 to float
  br label %1120

; <label>:1120                                    ; preds = %1118, %389
  %1121 = phi float [ 0.000000e+00, %389 ], [ %1100, %1118 ]
  %1122 = phi float [ 1.000000e+00, %389 ], [ %1101, %1118 ]
  %1123 = phi float [ 0.000000e+00, %389 ], [ %1119, %1118 ]
  %1124 = phi float [ 0.000000e+00, %389 ], [ %1102, %1118 ]
  %1125 = phi float [ 0.000000e+00, %389 ], [ %1103, %1118 ]
  %1126 = phi float [ 0.000000e+00, %389 ], [ %1104, %1118 ]
  %1127 = phi float [ 0.000000e+00, %389 ], [ %1105, %1118 ]
  %1128 = phi float [ 0.000000e+00, %389 ], [ %1106, %1118 ]
  %1129 = phi i32 [ 0, %389 ], [ %1107, %1118 ]
  %1130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.i32 %1130, 0
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1174, label %1133, !dx.controlflow.hints !64

; <label>:1133                                    ; preds = %1120
  %1134 = icmp eq i32 %1129, 0
  br i1 %1134, label %1173, label %1135, !dx.controlflow.hints !65

; <label>:1135                                    ; preds = %1133
  %1136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1137 = extractvalue %dx.types.CBufRet.i32 %1136, 2
  %1138 = icmp eq i32 %1137, 0
  br i1 %1138, label %1145, label %1139, !dx.controlflow.hints !66

; <label>:1139                                    ; preds = %1135
  %1140 = fsub fast float 1.000000e+00, %1122
  %1141 = fdiv fast float %1125, %1140
  %1142 = fdiv fast float %1126, %1140
  %1143 = fdiv fast float %1127, %1140
  %1144 = fdiv fast float %1128, %1140
  br label %1150

; <label>:1145                                    ; preds = %1135
  %1146 = fadd fast float %1125, %1122
  %1147 = fadd fast float %1126, %1122
  %1148 = fadd fast float %1127, %1122
  %1149 = fadd fast float %1128, %1122
  br label %1150

; <label>:1150                                    ; preds = %1145, %1139
  %1151 = phi float [ %1141, %1139 ], [ %1146, %1145 ]
  %1152 = phi float [ %1142, %1139 ], [ %1147, %1145 ]
  %1153 = phi float [ %1143, %1139 ], [ %1148, %1145 ]
  %1154 = phi float [ %1144, %1139 ], [ %1149, %1145 ]
  %1155 = call float @dx.op.binary.f32(i32 35, float %1151, float -1.000000e+00)  ; FMax(a,b)
  %1156 = call float @dx.op.binary.f32(i32 35, float %1152, float -1.000000e+00)  ; FMax(a,b)
  %1157 = call float @dx.op.binary.f32(i32 35, float %1153, float -1.000000e+00)  ; FMax(a,b)
  %1158 = call float @dx.op.binary.f32(i32 35, float %1154, float -1.000000e+00)  ; FMax(a,b)
  %1159 = call float @dx.op.binary.f32(i32 36, float %1155, float 1.000000e+00)  ; FMin(a,b)
  %1160 = call float @dx.op.binary.f32(i32 36, float %1156, float 1.000000e+00)  ; FMin(a,b)
  %1161 = call float @dx.op.binary.f32(i32 36, float %1157, float 1.000000e+00)  ; FMin(a,b)
  %1162 = call float @dx.op.binary.f32(i32 36, float %1158, float 1.000000e+00)  ; FMin(a,b)
  %1163 = fmul fast float %1159, 1.500000e+00
  %1164 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1161, float %1163)  ; FMad(a,b,c)
  %1165 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1160, float 0.000000e+00)  ; FMad(a,b,c)
  %1166 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1162, float %1165)  ; FMad(a,b,c)
  %1167 = fmul fast float %1159, 0x3FEBB67AE0000000
  %1168 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1161, float %1167)  ; FMad(a,b,c)
  %1169 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1160, float 0.000000e+00)  ; FMad(a,b,c)
  %1170 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1162, float %1169)  ; FMad(a,b,c)
  %1171 = fadd fast float %1164, 5.000000e-01
  %1172 = fadd fast float %1168, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %16, i32 %17, i32 0, float %1171, float %1166, float %1172, float %1170, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1174

; <label>:1173                                    ; preds = %1133
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %16, i32 %17, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1174

; <label>:1174                                    ; preds = %1173, %1150, %1120
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.CBufRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.CBufRet.f32 %1175, 2
  %1179 = call float @dx.op.dot3.f32(i32 55, float %274, float %275, float %276, float %1176, float %1177, float %1178)  ; Dot3(ax,ay,az,bx,by,bz)
  %1180 = fmul fast float %1179, %1121
  %1181 = fcmp fast ogt float %1124, 0.000000e+00
  %1182 = fdiv fast float 1.000000e+00, %1124
  %1183 = fmul fast float %1180, %1182
  %1184 = select i1 %1181, float %1183, float %285
  %1185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.f32 %1185, 0
  %1187 = extractvalue %dx.types.CBufRet.f32 %1185, 1
  %1188 = extractvalue %dx.types.CBufRet.f32 %1185, 2
  %1189 = fmul fast float %1186, %238
  %1190 = fmul fast float %1187, %238
  %1191 = fmul fast float %1188, %238
  %1192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.f32 %1192, 0
  %1194 = extractvalue %dx.types.CBufRet.f32 %1192, 1
  %1195 = extractvalue %dx.types.CBufRet.f32 %1192, 2
  %1196 = fmul fast float %1193, %239
  %1197 = fmul fast float %1194, %239
  %1198 = fmul fast float %1195, %239
  %1199 = fadd fast float %1196, %1189
  %1200 = fadd fast float %1197, %1190
  %1201 = fadd fast float %1198, %1191
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.CBufRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.CBufRet.f32 %1202, 2
  %1206 = fadd fast float %1199, %1203
  %1207 = fadd fast float %1200, %1204
  %1208 = fadd fast float %1201, %1205
  %1209 = fmul fast float %1206, %1184
  %1210 = fmul fast float %1207, %1184
  %1211 = fmul fast float %1208, %1184
  %1212 = call float @dx.op.dot3.f32(i32 55, float %1209, float %1210, float %1211, float %1209, float %1210, float %1211)  ; Dot3(ax,ay,az,bx,by,bz)
  %1213 = call float @dx.op.unary.f32(i32 25, float %1212)  ; Rsqrt(value)
  %1214 = fmul fast float %1213, %1212
  %1215 = fmul fast float %1213, %1209
  %1216 = fmul fast float %1213, %1210
  %1217 = fmul fast float %1213, %1211
  %1218 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.i32 %1218, 1
  %1220 = and i32 %1219, 1
  %1221 = icmp ne i32 %1220, 0
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 2
  %1224 = fcmp fast ogt float %1223, 0.000000e+00
  %1225 = and i1 %1221, %1224
  br i1 %1225, label %1226, label %1384, !dx.controlflow.hints !67

; <label>:1226                                    ; preds = %1174
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 2
  %1229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.f32 %1229, 2
  %1231 = fsub fast float %1228, %1230
  %1232 = extractvalue %dx.types.CBufRet.i32 %1218, 0
  %1233 = call i32 @dx.op.binary.i32(i32 40, i32 %1232, i32 3)  ; UMin(a,b)
  %1234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1235 = extractvalue %dx.types.CBufRet.f32 %1234, 0
  %1236 = extractvalue %dx.types.CBufRet.f32 %1234, 1
  %1237 = extractvalue %dx.types.CBufRet.f32 %1229, 0
  %1238 = extractvalue %dx.types.CBufRet.f32 %1229, 1
  %1239 = fsub fast float %1235, %1237
  %1240 = fsub fast float %1236, %1238
  %1241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1241, 0
  %1243 = fcmp fast ogt float %1242, 0.000000e+00
  %1244 = fsub fast float -0.000000e+00, %1239
  %1245 = fsub fast float -0.000000e+00, %1240
  %1246 = call float @dx.op.dot2.f32(i32 54, float %1215, float %1216, float %1215, float %1216)  ; Dot2(ax,ay,bx,by)
  %1247 = call float @dx.op.dot2.f32(i32 54, float %1215, float %1216, float %1244, float %1245)  ; Dot2(ax,ay,bx,by)
  %1248 = fmul fast float %1247, 2.000000e+00
  %1249 = call float @dx.op.dot2.f32(i32 54, float %1244, float %1245, float %1244, float %1245)  ; Dot2(ax,ay,bx,by)
  %1250 = fmul fast float %1242, %1242
  %1251 = fsub fast float %1249, %1250
  %1252 = fmul fast float %1248, %1248
  %1253 = fmul fast float %1246, 4.000000e+00
  %1254 = fmul fast float %1253, %1251
  %1255 = fsub fast float %1252, %1254
  %1256 = fcmp fast ogt float %1255, 0.000000e+00
  br i1 %1256, label %1257, label %1272, !dx.controlflow.hints !68

; <label>:1257                                    ; preds = %1226
  %1258 = fcmp fast ogt float %1248, 0.000000e+00
  %1259 = call float @dx.op.unary.f32(i32 24, float %1255)  ; Sqrt(value)
  %1260 = fsub fast float -0.000000e+00, %1259
  %1261 = select i1 %1258, float %1259, float %1260
  %1262 = fadd fast float %1261, %1248
  %1263 = fmul float %1262, -5.000000e-01
  %1264 = fdiv fast float %1263, %1246
  %1265 = call float @dx.op.binary.f32(i32 35, float %1264, float 0.000000e+00)  ; FMax(a,b)
  %1266 = call float @dx.op.binary.f32(i32 36, float %1214, float %1265)  ; FMin(a,b)
  %1267 = fdiv fast float %1251, %1263
  %1268 = call float @dx.op.binary.f32(i32 35, float %1267, float 0.000000e+00)  ; FMax(a,b)
  %1269 = call float @dx.op.binary.f32(i32 36, float %1214, float %1268)  ; FMin(a,b)
  %1270 = call float @dx.op.binary.f32(i32 36, float %1266, float %1269)  ; FMin(a,b)
  %1271 = call float @dx.op.binary.f32(i32 35, float %1266, float %1269)  ; FMax(a,b)
  br label %1272

; <label>:1272                                    ; preds = %1257, %1226
  %1273 = phi float [ %1271, %1257 ], [ -1.000000e+00, %1226 ]
  %1274 = phi float [ %1270, %1257 ], [ -1.000000e+00, %1226 ]
  %1275 = phi i1 [ true, %1257 ], [ false, %1226 ]
  %1276 = and i1 %1243, %1275
  br i1 %1276, label %1277, label %1279, !dx.controlflow.hints !69

; <label>:1277                                    ; preds = %1272
  %1278 = fcmp fast oeq float %1274, %1273
  br i1 %1278, label %1384, label %1280, !dx.controlflow.hints !70

; <label>:1279                                    ; preds = %1272
  br i1 %1243, label %1384, label %1280, !dx.controlflow.hints !71

; <label>:1280                                    ; preds = %1279, %1277
  %1281 = phi float [ %1214, %1279 ], [ %1273, %1277 ]
  %1282 = phi float [ 0.000000e+00, %1279 ], [ %1274, %1277 ]
  %1283 = fcmp fast oeq float %1217, 0.000000e+00
  %1284 = fdiv fast float %1231, %1217
  %1285 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1284)  ; FMax(a,b)
  %1286 = select i1 %1283, float %1281, float %1285
  %1287 = call float @dx.op.binary.f32(i32 36, float %1281, float %1286)  ; FMin(a,b)
  %1288 = fcmp fast ogt float %1217, 0.000000e+00
  %1289 = fcmp fast olt float %1231, 0.000000e+00
  br i1 %1288, label %1290, label %1291, !dx.controlflow.hints !72

; <label>:1290                                    ; preds = %1280
  br i1 %1289, label %1384, label %1294, !dx.controlflow.hints !73

; <label>:1291                                    ; preds = %1280
  br i1 %1289, label %1292, label %1294, !dx.controlflow.hints !74

; <label>:1292                                    ; preds = %1291
  %1293 = call float @dx.op.binary.f32(i32 35, float %1282, float %1287)  ; FMax(a,b)
  br label %1294

; <label>:1294                                    ; preds = %1292, %1291, %1290
  %1295 = phi float [ %1293, %1292 ], [ %1282, %1291 ], [ %1282, %1290 ]
  %1296 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 0
  store float -1.000000e+00, float* %1296, align 4, !tbaa !75, !noalias !79
  %1297 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 1
  store float -1.000000e+00, float* %1297, align 4, !tbaa !75, !noalias !79
  %1298 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 2
  store float -1.000000e+00, float* %1298, align 4, !tbaa !75, !noalias !79
  %1299 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 0
  store float -1.000000e+00, float* %1299, align 4, !tbaa !75, !noalias !79
  %1300 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 1
  store float -1.000000e+00, float* %1300, align 4, !tbaa !75, !noalias !79
  %1301 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 2
  store float -1.000000e+00, float* %1301, align 4, !tbaa !75, !noalias !79
  %1302 = icmp sgt i32 %1233, 0
  br i1 %1302, label %1303, label %1361

; <label>:1303                                    ; preds = %1294
  br label %1304

; <label>:1304                                    ; preds = %1351, %1303
  %1305 = phi i32 [ %1352, %1351 ], [ 0, %1303 ]
  %1306 = add nuw i32 %1305, 171
  %1307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %1306)  ; CBufferLoadLegacy(handle,regIndex)
  %1308 = extractvalue %dx.types.CBufRet.f32 %1307, 0
  %1309 = extractvalue %dx.types.CBufRet.f32 %1307, 1
  %1310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1311 = extractvalue %dx.types.CBufRet.f32 %1310, 0
  %1312 = extractvalue %dx.types.CBufRet.f32 %1310, 1
  %1313 = fsub fast float %1308, %1311
  %1314 = fsub fast float %1309, %1312
  %1315 = extractvalue %dx.types.CBufRet.f32 %1307, 2
  %1316 = fsub fast float -0.000000e+00, %1313
  %1317 = fsub fast float -0.000000e+00, %1314
  %1318 = call float @dx.op.dot2.f32(i32 54, float %1215, float %1216, float %1316, float %1317)  ; Dot2(ax,ay,bx,by)
  %1319 = fmul fast float %1318, 2.000000e+00
  %1320 = call float @dx.op.dot2.f32(i32 54, float %1316, float %1317, float %1316, float %1317)  ; Dot2(ax,ay,bx,by)
  %1321 = fmul fast float %1315, %1315
  %1322 = fsub fast float %1320, %1321
  %1323 = fmul fast float %1319, %1319
  %1324 = fmul fast float %1253, %1322
  %1325 = fsub fast float %1323, %1324
  %1326 = fcmp fast ogt float %1325, 0.000000e+00
  br i1 %1326, label %1327, label %1342, !dx.controlflow.hints !68

; <label>:1327                                    ; preds = %1304
  %1328 = fcmp fast ogt float %1319, 0.000000e+00
  %1329 = call float @dx.op.unary.f32(i32 24, float %1325)  ; Sqrt(value)
  %1330 = fsub fast float -0.000000e+00, %1329
  %1331 = select i1 %1328, float %1329, float %1330
  %1332 = fadd fast float %1331, %1319
  %1333 = fmul float %1332, -5.000000e-01
  %1334 = fdiv fast float %1333, %1246
  %1335 = call float @dx.op.binary.f32(i32 35, float %1334, float 0.000000e+00)  ; FMax(a,b)
  %1336 = call float @dx.op.binary.f32(i32 36, float %1281, float %1335)  ; FMin(a,b)
  %1337 = fdiv fast float %1322, %1333
  %1338 = call float @dx.op.binary.f32(i32 35, float %1337, float 0.000000e+00)  ; FMax(a,b)
  %1339 = call float @dx.op.binary.f32(i32 36, float %1281, float %1338)  ; FMin(a,b)
  %1340 = call float @dx.op.binary.f32(i32 36, float %1336, float %1339)  ; FMin(a,b)
  %1341 = call float @dx.op.binary.f32(i32 35, float %1336, float %1339)  ; FMax(a,b)
  br label %1342

; <label>:1342                                    ; preds = %1327, %1304
  %1343 = phi float [ %1341, %1327 ], [ -1.000000e+00, %1304 ]
  %1344 = phi float [ %1340, %1327 ], [ -1.000000e+00, %1304 ]
  %1345 = phi i1 [ true, %1327 ], [ false, %1304 ]
  br i1 %1345, label %1346, label %1351, !dx.controlflow.hints !90

; <label>:1346                                    ; preds = %1342
  %1347 = call float @dx.op.binary.f32(i32 35, float %1295, float %1344)  ; FMax(a,b)
  %1348 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %1305
  store float %1347, float* %1348, align 4, !tbaa !75, !noalias !79
  %1349 = call float @dx.op.binary.f32(i32 35, float %1295, float %1343)  ; FMax(a,b)
  %1350 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %1305
  store float %1349, float* %1350, align 4, !tbaa !75, !noalias !79
  br label %1351

; <label>:1351                                    ; preds = %1346, %1342
  %1352 = add nuw nsw i32 %1305, 1
  %1353 = icmp eq i32 %1352, %1233
  br i1 %1353, label %1354, label %1304

; <label>:1354                                    ; preds = %1351
  %1355 = load float, float* %1298, align 4, !tbaa !75, !alias.scope !91, !noalias !94
  %1356 = load float, float* %1297, align 4, !tbaa !75, !alias.scope !97, !noalias !98
  %1357 = load float, float* %1296, align 4, !tbaa !75, !alias.scope !99, !noalias !100
  %1358 = load float, float* %1301, align 4, !tbaa !75, !alias.scope !101, !noalias !104
  %1359 = load float, float* %1300, align 4, !tbaa !75, !alias.scope !107, !noalias !108
  %1360 = load float, float* %1299, align 4, !tbaa !75, !alias.scope !109, !noalias !110
  br label %1361

; <label>:1361                                    ; preds = %1354, %1294
  %1362 = phi float [ -1.000000e+00, %1294 ], [ %1360, %1354 ]
  %1363 = phi float [ -1.000000e+00, %1294 ], [ %1359, %1354 ]
  %1364 = phi float [ -1.000000e+00, %1294 ], [ %1358, %1354 ]
  %1365 = phi float [ -1.000000e+00, %1294 ], [ %1357, %1354 ]
  %1366 = phi float [ -1.000000e+00, %1294 ], [ %1356, %1354 ]
  %1367 = phi float [ -1.000000e+00, %1294 ], [ %1355, %1354 ]
  %1368 = call float @dx.op.binary.f32(i32 36, float %1366, float %1367)  ; FMin(a,b)
  %1369 = call float @dx.op.binary.f32(i32 36, float %1365, float %1368)  ; FMin(a,b)
  %1370 = call float @dx.op.binary.f32(i32 35, float %1365, float %1366)  ; FMax(a,b)
  %1371 = call float @dx.op.binary.f32(i32 36, float %1370, float %1367)  ; FMin(a,b)
  %1372 = call float @dx.op.binary.f32(i32 36, float %1365, float %1366)  ; FMin(a,b)
  %1373 = call float @dx.op.binary.f32(i32 35, float %1372, float %1371)  ; FMax(a,b)
  %1374 = call float @dx.op.binary.f32(i32 35, float %1366, float %1367)  ; FMax(a,b)
  %1375 = call float @dx.op.binary.f32(i32 35, float %1365, float %1374)  ; FMax(a,b)
  store float %1369, float* %1296, align 4, !tbaa !75, !alias.scope !99, !noalias !100
  store float %1373, float* %1297, align 4, !tbaa !75, !alias.scope !97, !noalias !98
  store float %1375, float* %1298, align 4, !tbaa !75, !alias.scope !91, !noalias !94
  %1376 = call float @dx.op.binary.f32(i32 36, float %1363, float %1364)  ; FMin(a,b)
  %1377 = call float @dx.op.binary.f32(i32 36, float %1362, float %1376)  ; FMin(a,b)
  %1378 = call float @dx.op.binary.f32(i32 35, float %1362, float %1363)  ; FMax(a,b)
  %1379 = call float @dx.op.binary.f32(i32 36, float %1378, float %1364)  ; FMin(a,b)
  %1380 = call float @dx.op.binary.f32(i32 36, float %1362, float %1363)  ; FMin(a,b)
  %1381 = call float @dx.op.binary.f32(i32 35, float %1380, float %1379)  ; FMax(a,b)
  %1382 = call float @dx.op.binary.f32(i32 35, float %1363, float %1364)  ; FMax(a,b)
  %1383 = call float @dx.op.binary.f32(i32 35, float %1362, float %1382)  ; FMax(a,b)
  store float %1377, float* %1299, align 4, !tbaa !75, !alias.scope !109, !noalias !110
  store float %1381, float* %1300, align 4, !tbaa !75, !alias.scope !107, !noalias !108
  store float %1383, float* %1301, align 4, !tbaa !75, !alias.scope !101, !noalias !104
  br label %1384

; <label>:1384                                    ; preds = %1361, %1290, %1279, %1277, %1174
  %1385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1386 = extractvalue %dx.types.CBufRet.f32 %1385, 2
  %1387 = fmul fast float %1386, %1184
  %1388 = call float @dx.op.unary.f32(i32 7, float %1387)  ; Saturate(value)
  %1389 = fptoui float %1123 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1390 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %18
  store i32 %1389, i32 addrspace(3)* %1390, align 4, !tbaa !111
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1391 = and i32 %18, 63
  %1392 = icmp ult i32 %1391, 32
  br i1 %1392, label %1393, label %1399, !dx.controlflow.hints !113

; <label>:1393                                    ; preds = %1384
  %1394 = add i32 %18, 32
  %1395 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1394
  %1396 = load i32, i32 addrspace(3)* %1395, align 4, !tbaa !111
  %1397 = load i32, i32 addrspace(3)* %1390, align 4, !tbaa !111
  %1398 = call i32 @dx.op.binary.i32(i32 40, i32 %1397, i32 %1396)  ; UMin(a,b)
  store i32 %1398, i32 addrspace(3)* %1390, align 4, !tbaa !111
  br label %1399

; <label>:1399                                    ; preds = %1393, %1384
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1400 = icmp ult i32 %1391, 16
  br i1 %1400, label %1401, label %1407, !dx.controlflow.hints !114

; <label>:1401                                    ; preds = %1399
  %1402 = add i32 %18, 16
  %1403 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1402
  %1404 = load i32, i32 addrspace(3)* %1403, align 4, !tbaa !111
  %1405 = load i32, i32 addrspace(3)* %1390, align 4, !tbaa !111
  %1406 = call i32 @dx.op.binary.i32(i32 40, i32 %1405, i32 %1404)  ; UMin(a,b)
  store i32 %1406, i32 addrspace(3)* %1390, align 4, !tbaa !111
  br label %1407

; <label>:1407                                    ; preds = %1401, %1399
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1408 = icmp ult i32 %1391, 8
  br i1 %1408, label %1409, label %1415, !dx.controlflow.hints !115

; <label>:1409                                    ; preds = %1407
  %1410 = add i32 %18, 8
  %1411 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1410
  %1412 = load i32, i32 addrspace(3)* %1411, align 4, !tbaa !111
  %1413 = load i32, i32 addrspace(3)* %1390, align 4, !tbaa !111
  %1414 = call i32 @dx.op.binary.i32(i32 40, i32 %1413, i32 %1412)  ; UMin(a,b)
  store i32 %1414, i32 addrspace(3)* %1390, align 4, !tbaa !111
  br label %1415

; <label>:1415                                    ; preds = %1409, %1407
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1416 = icmp ult i32 %1391, 4
  br i1 %1416, label %1417, label %1423, !dx.controlflow.hints !116

; <label>:1417                                    ; preds = %1415
  %1418 = add i32 %18, 4
  %1419 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1418
  %1420 = load i32, i32 addrspace(3)* %1419, align 4, !tbaa !111
  %1421 = load i32, i32 addrspace(3)* %1390, align 4, !tbaa !111
  %1422 = call i32 @dx.op.binary.i32(i32 40, i32 %1421, i32 %1420)  ; UMin(a,b)
  store i32 %1422, i32 addrspace(3)* %1390, align 4, !tbaa !111
  br label %1423

; <label>:1423                                    ; preds = %1417, %1415
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1424 = icmp ult i32 %1391, 2
  br i1 %1424, label %1425, label %1431, !dx.controlflow.hints !117

; <label>:1425                                    ; preds = %1423
  %1426 = add i32 %18, 2
  %1427 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1426
  %1428 = load i32, i32 addrspace(3)* %1427, align 4, !tbaa !111
  %1429 = load i32, i32 addrspace(3)* %1390, align 4, !tbaa !111
  %1430 = call i32 @dx.op.binary.i32(i32 40, i32 %1429, i32 %1428)  ; UMin(a,b)
  store i32 %1430, i32 addrspace(3)* %1390, align 4, !tbaa !111
  br label %1431

; <label>:1431                                    ; preds = %1425, %1423
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1432 = icmp eq i32 %1391, 0
  br i1 %1432, label %1433, label %1439, !dx.controlflow.hints !118

; <label>:1433                                    ; preds = %1431
  %1434 = add i32 %18, 1
  %1435 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1434
  %1436 = load i32, i32 addrspace(3)* %1435, align 4, !tbaa !111
  %1437 = load i32, i32 addrspace(3)* %1390, align 4, !tbaa !111
  %1438 = call i32 @dx.op.binary.i32(i32 40, i32 %1437, i32 %1436)  ; UMin(a,b)
  store i32 %1438, i32 addrspace(3)* %1390, align 4, !tbaa !111
  br label %1439

; <label>:1439                                    ; preds = %1433, %1431
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1440 = and i32 %18, -64
  %1441 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1440
  %1442 = load i32, i32 addrspace(3)* %1441, align 4, !tbaa !111
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1389, i32 addrspace(3)* %1390, align 4, !tbaa !111
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1392, label %1443, label %1449, !dx.controlflow.hints !119

; <label>:1443                                    ; preds = %1439
  %1444 = add i32 %18, 32
  %1445 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1444
  %1446 = load i32, i32 addrspace(3)* %1445, align 4, !tbaa !111
  %1447 = load i32, i32 addrspace(3)* %1390, align 4, !tbaa !111
  %1448 = call i32 @dx.op.binary.i32(i32 39, i32 %1447, i32 %1446)  ; UMax(a,b)
  store i32 %1448, i32 addrspace(3)* %1390, align 4, !tbaa !111
  br label %1449

; <label>:1449                                    ; preds = %1443, %1439
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1400, label %1450, label %1456, !dx.controlflow.hints !120

; <label>:1450                                    ; preds = %1449
  %1451 = add i32 %18, 16
  %1452 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1451
  %1453 = load i32, i32 addrspace(3)* %1452, align 4, !tbaa !111
  %1454 = load i32, i32 addrspace(3)* %1390, align 4, !tbaa !111
  %1455 = call i32 @dx.op.binary.i32(i32 39, i32 %1454, i32 %1453)  ; UMax(a,b)
  store i32 %1455, i32 addrspace(3)* %1390, align 4, !tbaa !111
  br label %1456

; <label>:1456                                    ; preds = %1450, %1449
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1408, label %1457, label %1463, !dx.controlflow.hints !121

; <label>:1457                                    ; preds = %1456
  %1458 = add i32 %18, 8
  %1459 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1458
  %1460 = load i32, i32 addrspace(3)* %1459, align 4, !tbaa !111
  %1461 = load i32, i32 addrspace(3)* %1390, align 4, !tbaa !111
  %1462 = call i32 @dx.op.binary.i32(i32 39, i32 %1461, i32 %1460)  ; UMax(a,b)
  store i32 %1462, i32 addrspace(3)* %1390, align 4, !tbaa !111
  br label %1463

; <label>:1463                                    ; preds = %1457, %1456
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1416, label %1464, label %1470, !dx.controlflow.hints !122

; <label>:1464                                    ; preds = %1463
  %1465 = add i32 %18, 4
  %1466 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1465
  %1467 = load i32, i32 addrspace(3)* %1466, align 4, !tbaa !111
  %1468 = load i32, i32 addrspace(3)* %1390, align 4, !tbaa !111
  %1469 = call i32 @dx.op.binary.i32(i32 39, i32 %1468, i32 %1467)  ; UMax(a,b)
  store i32 %1469, i32 addrspace(3)* %1390, align 4, !tbaa !111
  br label %1470

; <label>:1470                                    ; preds = %1464, %1463
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1424, label %1471, label %1477, !dx.controlflow.hints !123

; <label>:1471                                    ; preds = %1470
  %1472 = add i32 %18, 2
  %1473 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1472
  %1474 = load i32, i32 addrspace(3)* %1473, align 4, !tbaa !111
  %1475 = load i32, i32 addrspace(3)* %1390, align 4, !tbaa !111
  %1476 = call i32 @dx.op.binary.i32(i32 39, i32 %1475, i32 %1474)  ; UMax(a,b)
  store i32 %1476, i32 addrspace(3)* %1390, align 4, !tbaa !111
  br label %1477

; <label>:1477                                    ; preds = %1471, %1470
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1432, label %1478, label %1484, !dx.controlflow.hints !124

; <label>:1478                                    ; preds = %1477
  %1479 = add i32 %18, 1
  %1480 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1479
  %1481 = load i32, i32 addrspace(3)* %1480, align 4, !tbaa !111
  %1482 = load i32, i32 addrspace(3)* %1390, align 4, !tbaa !111
  %1483 = call i32 @dx.op.binary.i32(i32 39, i32 %1482, i32 %1481)  ; UMax(a,b)
  store i32 %1483, i32 addrspace(3)* %1390, align 4, !tbaa !111
  br label %1484

; <label>:1484                                    ; preds = %1478, %1477
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1485 = load i32, i32 addrspace(3)* %1441, align 4, !tbaa !111
  %1486 = uitofp i32 %1485 to float
  %1487 = uitofp i32 %1442 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %16, i32 %17, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1489 = extractvalue %dx.types.CBufRet.f32 %1488, 0
  %1490 = fmul fast float %1489, %1123
  %1491 = fmul fast float %1489, %1486
  %1492 = fmul fast float %1489, %1487
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %16, i32 %17, i32 undef, float %1490, float %1491, float %1492, float %1490, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %16, i32 %17, i32 undef, float %1388, float %1388, float %1388, float %1388, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!27}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !14, !20, !23}
!5 = !{!6, !8, !9, !11, !12, !13}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !10}
!10 = !{i32 1, i32 164}
!11 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!12 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!13 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!14 = !{!15, !16, !17, !18}
!15 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!18 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !19}
!19 = !{i32 0, i32 14}
!20 = !{!21, !22}
!21 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!22 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!23 = !{!24, !25, !26}
!24 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!25 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!26 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!27 = !{void ()* @cs_fog_raymarching_air_heightmap_particles, !"cs_fog_raymarching_air_heightmap_particles", null, !4, !28}
!28 = !{i32 0, i64 272, i32 4, !29}
!29 = !{i32 8, i32 8, i32 1}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}
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
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = !{!76, !76, i64 0}
!76 = !{!"float", !77, i64 0}
!77 = !{!"omnipotent char", !78, i64 0}
!78 = !{!"Simple C/C++ TBAA"}
!79 = !{!80, !82, !84, !85, !87, !88, !89}
!80 = distinct !{!80, !81, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!81 = distinct !{!81, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!82 = distinct !{!82, !83, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!83 = distinct !{!83, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!84 = distinct !{!84, !83, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!85 = distinct !{!85, !86, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!86 = distinct !{!86, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!87 = distinct !{!87, !86, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!88 = distinct !{!88, !86, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!89 = distinct !{!89, !86, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = !{!92}
!92 = distinct !{!92, !93, !"\01?sort@@YAXAIAM00@Z: %c"}
!93 = distinct !{!93, !"\01?sort@@YAXAIAM00@Z"}
!94 = !{!95, !96, !80, !82, !84, !85, !87, !88, !89}
!95 = distinct !{!95, !93, !"\01?sort@@YAXAIAM00@Z: %a"}
!96 = distinct !{!96, !93, !"\01?sort@@YAXAIAM00@Z: %b"}
!97 = !{!96}
!98 = !{!95, !92, !80, !82, !84, !85, !87, !88, !89}
!99 = !{!95}
!100 = !{!96, !92, !80, !82, !84, !85, !87, !88, !89}
!101 = !{!102}
!102 = distinct !{!102, !103, !"\01?sort@@YAXAIAM00@Z: %c"}
!103 = distinct !{!103, !"\01?sort@@YAXAIAM00@Z"}
!104 = !{!105, !106, !80, !82, !84, !85, !87, !88, !89}
!105 = distinct !{!105, !103, !"\01?sort@@YAXAIAM00@Z: %a"}
!106 = distinct !{!106, !103, !"\01?sort@@YAXAIAM00@Z: %b"}
!107 = !{!106}
!108 = !{!105, !102, !80, !82, !84, !85, !87, !88, !89}
!109 = !{!105}
!110 = !{!106, !102, !80, !82, !84, !85, !87, !88, !89}
!111 = !{!112, !112, i64 0}
!112 = !{!"int", !77, i64 0}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 2}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 2}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 2}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 2}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 2}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 2}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 2}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 2}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 2}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 2}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 2}

