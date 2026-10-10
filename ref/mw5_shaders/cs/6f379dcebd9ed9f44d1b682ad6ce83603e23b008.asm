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
; shader hash: 7541ac754c0336cb5383b0a9101cb5cd
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
;                                   texture     f32          2d      T5             t0     1
;                                   texture    byte         r/o      T6            t17     1
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

define void @cs_fog_raymarching_air_heightmap_particles_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %18 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %19 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = add i32 %18, %17
  %23 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.i32 %23, 1
  %25 = add i32 %22, %24
  %26 = lshr i32 %25, 1
  %27 = and i32 %26, 1
  %28 = and i32 %25, 1
  %29 = xor i32 %27, %28
  %30 = shl i32 %17, 1
  %31 = shl i32 %18, 1
  %32 = or i32 %29, %30
  %33 = or i32 %27, %31
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = extractvalue %dx.types.ResRet.i32 %36, 1
  %39 = extractvalue %dx.types.ResRet.i32 %36, 2
  %40 = extractvalue %dx.types.ResRet.i32 %36, 3
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = extractvalue %dx.types.ResRet.i32 %41, 1
  %44 = extractvalue %dx.types.ResRet.i32 %41, 2
  %45 = extractvalue %dx.types.ResRet.i32 %41, 3
  %46 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %47 = extractvalue %dx.types.ResRet.i32 %46, 0
  %48 = extractvalue %dx.types.ResRet.i32 %46, 1
  %49 = extractvalue %dx.types.ResRet.i32 %46, 2
  %50 = extractvalue %dx.types.ResRet.i32 %46, 3
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %53 = fmul fast float %52, %52
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %56 = extractvalue %dx.types.CBufRet.f32 %54, 1
  %57 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %58 = fmul fast float %57, 0x3FF17B1420000000
  %59 = icmp eq i32 %19, 0
  br i1 %59, label %60, label %201, !dx.controlflow.hints !31

; <label>:60                                      ; preds = %0
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 3
  %65 = extractvalue %dx.types.ResRet.i32 %34, 1
  %66 = and i32 %65, 65535
  %67 = call float @dx.op.legacyF16ToF32(i32 131, i32 %66)  ; LegacyF16ToF32(value)
  %68 = lshr i32 %35, 16
  %69 = call float @dx.op.legacyF16ToF32(i32 131, i32 %68)  ; LegacyF16ToF32(value)
  %70 = and i32 %35, 65535
  %71 = call float @dx.op.legacyF16ToF32(i32 131, i32 %70)  ; LegacyF16ToF32(value)
  %72 = lshr i32 %40, 16
  %73 = call float @dx.op.legacyF16ToF32(i32 131, i32 %72)  ; LegacyF16ToF32(value)
  %74 = and i32 %40, 65535
  %75 = call float @dx.op.legacyF16ToF32(i32 131, i32 %74)  ; LegacyF16ToF32(value)
  %76 = lshr i32 %39, 16
  %77 = call float @dx.op.legacyF16ToF32(i32 131, i32 %76)  ; LegacyF16ToF32(value)
  %78 = and i32 %39, 65535
  %79 = call float @dx.op.legacyF16ToF32(i32 131, i32 %78)  ; LegacyF16ToF32(value)
  %80 = lshr i32 %38, 16
  %81 = call float @dx.op.legacyF16ToF32(i32 131, i32 %80)  ; LegacyF16ToF32(value)
  %82 = lshr i32 %37, 16
  %83 = call float @dx.op.legacyF16ToF32(i32 131, i32 %82)  ; LegacyF16ToF32(value)
  %84 = and i32 %37, 65535
  %85 = call float @dx.op.legacyF16ToF32(i32 131, i32 %84)  ; LegacyF16ToF32(value)
  %86 = lshr i32 %45, 16
  %87 = call float @dx.op.legacyF16ToF32(i32 131, i32 %86)  ; LegacyF16ToF32(value)
  %88 = and i32 %45, 65535
  %89 = call float @dx.op.legacyF16ToF32(i32 131, i32 %88)  ; LegacyF16ToF32(value)
  %90 = lshr i32 %44, 16
  %91 = call float @dx.op.legacyF16ToF32(i32 131, i32 %90)  ; LegacyF16ToF32(value)
  %92 = and i32 %44, 65535
  %93 = call float @dx.op.legacyF16ToF32(i32 131, i32 %92)  ; LegacyF16ToF32(value)
  %94 = lshr i32 %43, 16
  %95 = call float @dx.op.legacyF16ToF32(i32 131, i32 %94)  ; LegacyF16ToF32(value)
  %96 = and i32 %43, 65535
  %97 = call float @dx.op.legacyF16ToF32(i32 131, i32 %96)  ; LegacyF16ToF32(value)
  %98 = and i32 %42, 65535
  %99 = call float @dx.op.legacyF16ToF32(i32 131, i32 %98)  ; LegacyF16ToF32(value)
  %100 = lshr i32 %50, 16
  %101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %100)  ; LegacyF16ToF32(value)
  %102 = and i32 %50, 65535
  %103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %102)  ; LegacyF16ToF32(value)
  %104 = lshr i32 %49, 16
  %105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %104)  ; LegacyF16ToF32(value)
  %106 = and i32 %49, 65535
  %107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %106)  ; LegacyF16ToF32(value)
  %108 = lshr i32 %48, 16
  %109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %108)  ; LegacyF16ToF32(value)
  %110 = and i32 %48, 65535
  %111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %110)  ; LegacyF16ToF32(value)
  %112 = lshr i32 %47, 16
  %113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %112)  ; LegacyF16ToF32(value)
  %114 = and i32 %38, 65535
  %115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %114)  ; LegacyF16ToF32(value)
  %116 = lshr i32 %42, 16
  %117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %116)  ; LegacyF16ToF32(value)
  %118 = and i32 %47, 65535
  %119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %118)  ; LegacyF16ToF32(value)
  %120 = fmul fast float %115, 0x3FD20DD760000000
  %121 = fmul fast float %57, %52
  %122 = fmul fast float %121, %79
  %123 = fmul fast float %57, %57
  %124 = fmul fast float %123, 0x3FEE471020000000
  %125 = fadd fast float %124, 0xBFD42F6020000000
  %126 = fmul fast float %71, %125
  %127 = fmul fast float %77, %55
  %128 = fmul fast float %81, %56
  %129 = fmul fast float %55, %53
  %130 = fmul fast float %129, %58
  %131 = fmul fast float %130, %69
  %132 = fsub fast float -0.000000e+00, %131
  %133 = fmul fast float %56, %53
  %134 = fmul fast float %133, %58
  %135 = fmul fast float %134, %73
  %136 = fmul fast float %55, %55
  %137 = fmul fast float %56, %56
  %138 = fsub fast float %136, %137
  %139 = fmul fast float %138, 0x3FE17B1420000000
  %140 = fmul fast float %139, %67
  %141 = fmul fast float %56, 0x3FF17B1420000000
  %142 = fmul fast float %141, %55
  %143 = fmul fast float %142, %75
  %144 = fadd fast float %128, %127
  %145 = fmul fast float %144, %52
  %146 = fsub fast float %145, %122
  %147 = fmul fast float %146, 0x3FDF454380000000
  %148 = fadd fast float %126, %140
  %149 = fadd fast float %148, %143
  %150 = fmul fast float %149, %53
  %151 = fsub fast float %132, %135
  %152 = fadd fast float %151, %120
  %153 = fadd fast float %152, %147
  %154 = fadd fast float %153, %150
  %155 = fmul fast float %62, %64
  %156 = fmul fast float %155, %154
  %157 = fmul fast float %117, 0x3FD20DD760000000
  %158 = fmul fast float %121, %95
  %159 = fmul fast float %87, %125
  %160 = fmul fast float %93, %55
  %161 = fmul fast float %97, %56
  %162 = fmul fast float %130, %85
  %163 = fsub fast float -0.000000e+00, %162
  %164 = fmul fast float %134, %89
  %165 = fmul fast float %139, %83
  %166 = fmul fast float %142, %91
  %167 = fadd fast float %161, %160
  %168 = fmul fast float %167, %52
  %169 = fsub fast float %168, %158
  %170 = fmul fast float %169, 0x3FDF454380000000
  %171 = fadd fast float %159, %165
  %172 = fadd fast float %171, %166
  %173 = fmul fast float %172, %53
  %174 = fsub fast float %163, %164
  %175 = fadd fast float %174, %157
  %176 = fadd fast float %175, %170
  %177 = fadd fast float %176, %173
  %178 = fmul fast float %155, %177
  %179 = fmul fast float %119, 0x3FD20DD760000000
  %180 = fmul fast float %121, %111
  %181 = fmul fast float %103, %125
  %182 = fmul fast float %109, %55
  %183 = fmul fast float %113, %56
  %184 = fmul fast float %130, %101
  %185 = fsub fast float -0.000000e+00, %184
  %186 = fmul fast float %134, %105
  %187 = fmul fast float %139, %99
  %188 = fmul fast float %142, %107
  %189 = fadd fast float %183, %182
  %190 = fmul fast float %189, %52
  %191 = fsub fast float %190, %180
  %192 = fmul fast float %191, 0x3FDF454380000000
  %193 = fadd fast float %181, %187
  %194 = fadd fast float %193, %188
  %195 = fmul fast float %194, %53
  %196 = fsub fast float %185, %186
  %197 = fadd fast float %196, %179
  %198 = fadd fast float %197, %192
  %199 = fadd fast float %198, %195
  %200 = fmul fast float %155, %199
  br label %201

; <label>:201                                     ; preds = %60, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %202 = uitofp i32 %32 to float
  %203 = uitofp i32 %33 to float
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 2
  %206 = fmul fast float %205, 0x3FE3C6EF40000000
  %207 = frem fast float %202, 2.560000e+02
  %208 = frem fast float %203, 2.560000e+02
  %209 = fptoui float %207 to i32
  %210 = fptoui float %208 to i32
  %211 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %209, i32 %210, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = extractvalue %dx.types.ResRet.f32 %211, 1
  %214 = extractvalue %dx.types.ResRet.f32 %211, 2
  %215 = extractvalue %dx.types.ResRet.f32 %211, 3
  %216 = fadd fast float %212, %206
  %217 = fadd fast float %213, %206
  %218 = fadd fast float %214, %206
  %219 = fadd fast float %215, %206
  %220 = call float @dx.op.unary.f32(i32 22, float %216)  ; Frc(value)
  %221 = call float @dx.op.unary.f32(i32 22, float %217)  ; Frc(value)
  %222 = call float @dx.op.unary.f32(i32 22, float %218)  ; Frc(value)
  %223 = call float @dx.op.unary.f32(i32 22, float %219)  ; Frc(value)
  %224 = fadd fast float %222, %202
  %225 = fadd fast float %223, %203
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %228 = extractvalue %dx.types.CBufRet.f32 %226, 3
  %229 = fmul fast float %227, %224
  %230 = fmul fast float %228, %225
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %233 = extractvalue %dx.types.CBufRet.f32 %231, 1
  %234 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.f32 %235, 1
  %237 = fmul fast float %229, 2.000000e+00
  %238 = fmul fast float %230, 2.000000e+00
  %239 = fsub fast float 1.000000e+00, %237
  %240 = fsub fast float 1.000000e+00, %238
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 0
  %243 = extractvalue %dx.types.CBufRet.f32 %241, 1
  %244 = extractvalue %dx.types.CBufRet.f32 %241, 2
  %245 = fmul fast float %242, %239
  %246 = fmul fast float %243, %239
  %247 = fmul fast float %244, %239
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 0
  %250 = extractvalue %dx.types.CBufRet.f32 %248, 1
  %251 = extractvalue %dx.types.CBufRet.f32 %248, 2
  %252 = fmul fast float %249, %240
  %253 = fmul fast float %250, %240
  %254 = fmul fast float %251, %240
  %255 = fadd fast float %252, %245
  %256 = fadd fast float %253, %246
  %257 = fadd fast float %254, %247
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 0
  %260 = extractvalue %dx.types.CBufRet.f32 %258, 1
  %261 = extractvalue %dx.types.CBufRet.f32 %258, 2
  %262 = fadd fast float %255, %259
  %263 = fadd fast float %256, %260
  %264 = fadd fast float %257, %261
  %265 = fmul fast float %262, %236
  %266 = fmul fast float %263, %236
  %267 = fmul fast float %264, %236
  %268 = fmul fast float %265, %265
  %269 = fmul fast float %266, %266
  %270 = fadd fast float %268, %269
  %271 = fmul fast float %267, %267
  %272 = fadd fast float %270, %271
  %273 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %274 = fdiv fast float 1.000000e+00, %273
  %275 = fmul fast float %265, %274
  %276 = fmul fast float %266, %274
  %277 = fmul fast float %267, %274
  %278 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %32, i32 %33, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  %280 = fcmp fast ogt float %279, -1.000000e+00
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 1
  %283 = select i1 %280, float %282, float 1.000000e+00
  %284 = fadd fast float %279, 1.000000e+00
  %285 = fmul fast float %283, %284
  %286 = call float @dx.op.unary.f32(i32 6, float %285)  ; FAbs(value)
  %287 = fdiv fast float 1.000000e+00, %236
  %288 = fmul fast float %287, %273
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 1
  %291 = fmul fast float %290, %288
  %292 = fmul fast float %288, %286
  %293 = extractvalue %dx.types.CBufRet.f32 %281, 3
  %294 = fcmp fast oge float %286, %293
  %295 = call float @dx.op.binary.f32(i32 36, float %292, float %291)  ; FMin(a,b)
  %296 = select i1 %294, float %291, float %295
  %297 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.i32 %297, 3
  %299 = icmp eq i32 %298, 0
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 2
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 2
  %304 = fsub fast float %301, %234
  %305 = fadd fast float %304, %303
  %306 = fsub fast float 0xC7EFFFFFE0000000, %234
  br i1 %299, label %318, label %307, !dx.controlflow.hints !32

; <label>:307                                     ; preds = %201
  %308 = fsub fast float -0.000000e+00, %233
  %309 = fsub fast float -0.000000e+00, %232
  %310 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %309, float %308, float %305)  ; Dot3(ax,ay,az,bx,by,bz)
  %311 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %275, float %276, float %277)  ; Dot3(ax,ay,az,bx,by,bz)
  %312 = fdiv fast float 1.000000e+00, %311
  %313 = fmul fast float %312, %310
  %314 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %309, float %308, float %306)  ; Dot3(ax,ay,az,bx,by,bz)
  %315 = fmul fast float %312, %314
  %316 = call float @dx.op.binary.f32(i32 36, float %313, float %315)  ; FMin(a,b)
  %317 = call float @dx.op.binary.f32(i32 35, float %313, float %315)  ; FMax(a,b)
  br label %351

; <label>:318                                     ; preds = %201
  %319 = extractvalue %dx.types.CBufRet.f32 %300, 0
  %320 = extractvalue %dx.types.CBufRet.f32 %300, 1
  %321 = extractvalue %dx.types.CBufRet.f32 %302, 0
  %322 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %323 = fdiv fast float 1.000000e+00, %275
  %324 = fdiv fast float 1.000000e+00, %276
  %325 = fdiv fast float 1.000000e+00, %277
  %326 = fsub fast float %319, %232
  %327 = fmul fast float %323, %326
  %328 = fadd fast float %326, %321
  %329 = fmul fast float %328, %323
  %330 = call float @dx.op.binary.f32(i32 36, float %327, float %329)  ; FMin(a,b)
  %331 = call float @dx.op.binary.f32(i32 35, float %327, float %329)  ; FMax(a,b)
  %332 = fsub fast float %320, %233
  %333 = fmul fast float %324, %332
  %334 = fadd fast float %332, %322
  %335 = fmul fast float %334, %324
  %336 = call float @dx.op.binary.f32(i32 36, float %333, float %335)  ; FMin(a,b)
  %337 = call float @dx.op.binary.f32(i32 35, float %330, float %336)  ; FMax(a,b)
  %338 = call float @dx.op.binary.f32(i32 35, float %333, float %335)  ; FMax(a,b)
  %339 = call float @dx.op.binary.f32(i32 36, float %331, float %338)  ; FMin(a,b)
  %340 = fmul fast float %325, %306
  %341 = fmul fast float %325, %305
  %342 = call float @dx.op.binary.f32(i32 36, float %340, float %341)  ; FMin(a,b)
  %343 = call float @dx.op.binary.f32(i32 35, float %337, float %342)  ; FMax(a,b)
  %344 = call float @dx.op.binary.f32(i32 35, float %340, float %341)  ; FMax(a,b)
  %345 = call float @dx.op.binary.f32(i32 36, float %339, float %344)  ; FMin(a,b)
  %346 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %343)  ; FMax(a,b)
  %347 = fcmp fast ult float %345, %346
  br i1 %347, label %351, label %348, !dx.controlflow.hints !33

; <label>:348                                     ; preds = %318
  %349 = call float @dx.op.binary.f32(i32 36, float %343, float %345)  ; FMin(a,b)
  %350 = call float @dx.op.binary.f32(i32 35, float %343, float %345)  ; FMax(a,b)
  br label %351

; <label>:351                                     ; preds = %348, %318, %307
  %352 = phi float [ %316, %307 ], [ %349, %348 ], [ 0.000000e+00, %318 ]
  %353 = phi float [ %317, %307 ], [ %350, %348 ], [ 0.000000e+00, %318 ]
  %354 = fcmp fast oeq float %353, 0.000000e+00
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 1
  %357 = fcmp fast olt float %353, %356
  %358 = or i1 %354, %357
  br i1 %358, label %363, label %359, !dx.controlflow.hints !34

; <label>:359                                     ; preds = %351
  %360 = call float @dx.op.binary.f32(i32 35, float %356, float %352)  ; FMax(a,b)
  %361 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %360)  ; FMin(a,b)
  %362 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %353)  ; FMax(a,b)
  br label %363

; <label>:363                                     ; preds = %359, %351
  %364 = phi i32 [ 1, %359 ], [ 0, %351 ]
  %365 = phi float [ %362, %359 ], [ -1.000000e+00, %351 ]
  %366 = phi float [ %361, %359 ], [ 0x47EFFFFFE0000000, %351 ]
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 3
  %369 = fsub fast float -0.000000e+00, %232
  %370 = fsub fast float -0.000000e+00, %233
  %371 = fsub fast float %368, %234
  %372 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %369, float %370, float %371)  ; Dot3(ax,ay,az,bx,by,bz)
  %373 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %275, float %276, float %277)  ; Dot3(ax,ay,az,bx,by,bz)
  %374 = fdiv fast float 1.000000e+00, %373
  %375 = fmul fast float %374, %372
  %376 = fcmp fast olt float %375, 0.000000e+00
  %377 = fcmp fast ogt float %277, 0.000000e+00
  %378 = and i1 %377, %376
  br i1 %378, label %383, label %379, !dx.controlflow.hints !35

; <label>:379                                     ; preds = %363
  %380 = fcmp fast olt float %277, 0.000000e+00
  br i1 %380, label %381, label %383, !dx.controlflow.hints !36

; <label>:381                                     ; preds = %379
  %382 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %375)  ; FMax(a,b)
  br label %383

; <label>:383                                     ; preds = %381, %379, %363
  %384 = phi float [ 0.000000e+00, %363 ], [ %382, %381 ], [ 0.000000e+00, %379 ]
  %385 = phi float [ 0.000000e+00, %363 ], [ 0x47EFFFFFE0000000, %381 ], [ %375, %379 ]
  %386 = fcmp fast oeq float %385, 0.000000e+00
  br i1 %386, label %390, label %387, !dx.controlflow.hints !37

; <label>:387                                     ; preds = %383
  %388 = call float @dx.op.binary.f32(i32 36, float %366, float %384)  ; FMin(a,b)
  %389 = call float @dx.op.binary.f32(i32 35, float %365, float %385)  ; FMax(a,b)
  br label %390

; <label>:390                                     ; preds = %387, %383
  %391 = phi i32 [ 1, %387 ], [ 0, %383 ]
  %392 = phi float [ %389, %387 ], [ %365, %383 ]
  %393 = phi float [ %388, %387 ], [ %366, %383 ]
  %394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.f32 %394, 3
  %396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %397 = extractvalue %dx.types.CBufRet.f32 %396, 0
  %398 = fsub fast float %395, %234
  %399 = fadd fast float %398, %397
  %400 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %369, float %370, float %399)  ; Dot3(ax,ay,az,bx,by,bz)
  %401 = fmul fast float %374, %400
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 2
  %404 = fsub fast float %403, %234
  %405 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %369, float %370, float %404)  ; Dot3(ax,ay,az,bx,by,bz)
  %406 = fmul fast float %374, %405
  %407 = call float @dx.op.binary.f32(i32 36, float %401, float %406)  ; FMin(a,b)
  %408 = call float @dx.op.binary.f32(i32 35, float %401, float %406)  ; FMax(a,b)
  %409 = call float @dx.op.binary.f32(i32 36, float %393, float %407)  ; FMin(a,b)
  %410 = call float @dx.op.binary.f32(i32 35, float %392, float %408)  ; FMax(a,b)
  %411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %412 = extractvalue %dx.types.CBufRet.f32 %411, 2
  %413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.f32 %413, 3
  %415 = fsub fast float %412, %234
  %416 = fadd fast float %415, %414
  %417 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %369, float %370, float %416)  ; Dot3(ax,ay,az,bx,by,bz)
  %418 = fmul fast float %374, %417
  %419 = fcmp fast olt float %418, 0.000000e+00
  %420 = and i1 %377, %419
  br i1 %420, label %425, label %421, !dx.controlflow.hints !38

; <label>:421                                     ; preds = %390
  %422 = fcmp fast olt float %277, 0.000000e+00
  br i1 %422, label %423, label %425, !dx.controlflow.hints !39

; <label>:423                                     ; preds = %421
  %424 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %418)  ; FMax(a,b)
  br label %425

; <label>:425                                     ; preds = %423, %421, %390
  %426 = phi float [ 0.000000e+00, %390 ], [ %424, %423 ], [ 0.000000e+00, %421 ]
  %427 = phi float [ 0.000000e+00, %390 ], [ 0x47EFFFFFE0000000, %423 ], [ %418, %421 ]
  %428 = fcmp fast oeq float %427, 0.000000e+00
  br i1 %428, label %432, label %429, !dx.controlflow.hints !40

; <label>:429                                     ; preds = %425
  %430 = call float @dx.op.binary.f32(i32 36, float %409, float %426)  ; FMin(a,b)
  %431 = call float @dx.op.binary.f32(i32 35, float %410, float %427)  ; FMax(a,b)
  br label %432

; <label>:432                                     ; preds = %429, %425
  %433 = phi i32 [ 1, %429 ], [ 0, %425 ]
  %434 = phi float [ %431, %429 ], [ %410, %425 ]
  %435 = phi float [ %430, %429 ], [ %409, %425 ]
  %436 = fdiv fast float 1.000000e+00, %275
  %437 = fdiv fast float 1.000000e+00, %276
  %438 = fdiv fast float 1.000000e+00, %277
  %439 = call float @dx.op.binary.f32(i32 36, float %296, float %434)  ; FMin(a,b)
  %440 = call float @dx.op.binary.f32(i32 35, float %273, float %435)  ; FMax(a,b)
  %441 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %442 = fmul fast float %221, 2.000000e+00
  %443 = fadd fast float %442, -1.000000e+00
  %444 = fmul fast float %441, %443
  %445 = fadd fast float %444, %440
  %446 = fcmp fast olt float %445, %439
  %447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.f32 %447, 2
  %449 = fcmp fast olt float %448, 1.000000e+00
  %450 = and i1 %446, %449
  br i1 %450, label %451, label %1442

; <label>:451                                     ; preds = %432
  %452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.i32 %452, 1
  %454 = add i32 %453, -1
  %455 = fmul fast float %445, %277
  %456 = fadd fast float %455, %234
  %457 = fmul fast float %445, %276
  %458 = fadd fast float %457, %233
  %459 = fmul fast float %445, %275
  %460 = fadd fast float %459, %232
  br label %461

; <label>:461                                     ; preds = %1420, %451
  %462 = phi i32 [ %959, %1420 ], [ undef, %451 ]
  %463 = phi float [ %961, %1420 ], [ undef, %451 ]
  %464 = phi float [ %760, %1420 ], [ undef, %451 ]
  %465 = phi float [ %761, %1420 ], [ undef, %451 ]
  %466 = phi float [ %762, %1420 ], [ undef, %451 ]
  %467 = phi float [ %763, %1420 ], [ undef, %451 ]
  %468 = phi float [ %1422, %1420 ], [ 0.000000e+00, %451 ]
  %469 = phi float [ %1423, %1420 ], [ 1.000000e+00, %451 ]
  %470 = phi float [ %1433, %1420 ], [ %460, %451 ]
  %471 = phi float [ %1434, %1420 ], [ %458, %451 ]
  %472 = phi float [ %1435, %1420 ], [ %456, %451 ]
  %473 = phi float [ %1421, %1420 ], [ %445, %451 ]
  %474 = phi i32 [ %485, %1420 ], [ 0, %451 ]
  %475 = phi i32 [ %765, %1420 ], [ 10, %451 ]
  %476 = phi i32 [ %657, %1420 ], [ %454, %451 ]
  %477 = phi float [ %1424, %1420 ], [ 0.000000e+00, %451 ]
  %478 = phi float [ %1425, %1420 ], [ 0.000000e+00, %451 ]
  %479 = phi float [ %1426, %1420 ], [ 0.000000e+00, %451 ]
  %480 = phi float [ %1427, %1420 ], [ 0.000000e+00, %451 ]
  %481 = phi float [ %1428, %1420 ], [ 0.000000e+00, %451 ]
  %482 = phi i32 [ %1429, %1420 ], [ 0, %451 ]
  %483 = fsub fast float -0.000000e+00, %471
  %484 = fsub fast float -0.000000e+00, %470
  %485 = add i32 %474, 1
  %486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.f32 %486, 0
  %488 = icmp eq i32 %364, 0
  br i1 %488, label %654, label %489, !dx.controlflow.hints !41

; <label>:489                                     ; preds = %461
  %490 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %491 = extractvalue %dx.types.CBufRet.i32 %490, 1
  %492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %493 = extractvalue %dx.types.CBufRet.f32 %492, 1
  %494 = fcmp fast ogt float %493, %473
  br i1 %494, label %495, label %497, !dx.controlflow.hints !42

; <label>:495                                     ; preds = %489
  %496 = fsub fast float %493, %473
  br label %644

; <label>:497                                     ; preds = %489
  %498 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %499 = extractvalue %dx.types.CBufRet.i32 %498, 3
  %500 = icmp eq i32 %499, 0
  %501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.f32 %501, 2
  %503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %504 = extractvalue %dx.types.CBufRet.f32 %503, 2
  %505 = fsub fast float %502, %472
  %506 = fadd fast float %505, %504
  %507 = fsub fast float 0xC7EFFFFFE0000000, %472
  br i1 %500, label %515, label %508, !dx.controlflow.hints !32

; <label>:508                                     ; preds = %497
  %509 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %484, float %483, float %506)  ; Dot3(ax,ay,az,bx,by,bz)
  %510 = fmul fast float %374, %509
  %511 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %484, float %483, float %507)  ; Dot3(ax,ay,az,bx,by,bz)
  %512 = fmul fast float %374, %511
  %513 = call float @dx.op.binary.f32(i32 36, float %510, float %512)  ; FMin(a,b)
  %514 = call float @dx.op.binary.f32(i32 35, float %510, float %512)  ; FMax(a,b)
  br label %545

; <label>:515                                     ; preds = %497
  %516 = extractvalue %dx.types.CBufRet.f32 %501, 0
  %517 = extractvalue %dx.types.CBufRet.f32 %501, 1
  %518 = extractvalue %dx.types.CBufRet.f32 %503, 0
  %519 = extractvalue %dx.types.CBufRet.f32 %503, 1
  %520 = fsub fast float %516, %470
  %521 = fmul fast float %436, %520
  %522 = fadd fast float %520, %518
  %523 = fmul fast float %522, %436
  %524 = call float @dx.op.binary.f32(i32 36, float %521, float %523)  ; FMin(a,b)
  %525 = call float @dx.op.binary.f32(i32 35, float %521, float %523)  ; FMax(a,b)
  %526 = fsub fast float %517, %471
  %527 = fmul fast float %437, %526
  %528 = fadd fast float %526, %519
  %529 = fmul fast float %528, %437
  %530 = call float @dx.op.binary.f32(i32 36, float %527, float %529)  ; FMin(a,b)
  %531 = call float @dx.op.binary.f32(i32 35, float %524, float %530)  ; FMax(a,b)
  %532 = call float @dx.op.binary.f32(i32 35, float %527, float %529)  ; FMax(a,b)
  %533 = call float @dx.op.binary.f32(i32 36, float %525, float %532)  ; FMin(a,b)
  %534 = fmul fast float %438, %507
  %535 = fmul fast float %438, %506
  %536 = call float @dx.op.binary.f32(i32 36, float %534, float %535)  ; FMin(a,b)
  %537 = call float @dx.op.binary.f32(i32 35, float %531, float %536)  ; FMax(a,b)
  %538 = call float @dx.op.binary.f32(i32 35, float %534, float %535)  ; FMax(a,b)
  %539 = call float @dx.op.binary.f32(i32 36, float %533, float %538)  ; FMin(a,b)
  %540 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %537)  ; FMax(a,b)
  %541 = fcmp fast ult float %539, %540
  br i1 %541, label %545, label %542, !dx.controlflow.hints !33

; <label>:542                                     ; preds = %515
  %543 = call float @dx.op.binary.f32(i32 36, float %537, float %539)  ; FMin(a,b)
  %544 = call float @dx.op.binary.f32(i32 35, float %537, float %539)  ; FMax(a,b)
  br label %545

; <label>:545                                     ; preds = %542, %515, %508
  %546 = phi float [ %513, %508 ], [ %543, %542 ], [ 0.000000e+00, %515 ]
  %547 = phi float [ %514, %508 ], [ %544, %542 ], [ 0.000000e+00, %515 ]
  %548 = fcmp fast ogt float %546, 0.000000e+00
  br i1 %548, label %644, label %549, !dx.controlflow.hints !43

; <label>:549                                     ; preds = %545
  %550 = fcmp fast ugt float %547, 0.000000e+00
  br i1 %550, label %551, label %644, !dx.controlflow.hints !44

; <label>:551                                     ; preds = %549
  %552 = icmp sgt i32 %476, 0
  br i1 %552, label %553, label %638

; <label>:553                                     ; preds = %551
  br label %554

; <label>:554                                     ; preds = %634, %553
  %555 = phi i32 [ %635, %634 ], [ %476, %553 ]
  %556 = sitofp i32 %555 to float
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 0
  %559 = extractvalue %dx.types.CBufRet.f32 %557, 1
  %560 = fsub fast float %470, %558
  %561 = fsub fast float %471, %559
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 0
  %564 = extractvalue %dx.types.CBufRet.f32 %562, 1
  %565 = fmul fast float %560, %563
  %566 = fmul fast float %561, %564
  %567 = fsub fast float 1.000000e+00, %566
  %568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.i32 %568, 3
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %577, label %571, !dx.controlflow.hints !45

; <label>:571                                     ; preds = %554
  %572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %12, float %565, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float %556)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %573 = extractvalue %dx.types.ResRet.f32 %572, 0
  %574 = extractvalue %dx.types.ResRet.f32 %572, 1
  %575 = extractvalue %dx.types.ResRet.f32 %572, 2
  %576 = extractvalue %dx.types.ResRet.f32 %572, 3
  br label %583

; <label>:577                                     ; preds = %554
  %578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %565, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float %556)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %579 = extractvalue %dx.types.ResRet.f32 %578, 0
  %580 = extractvalue %dx.types.ResRet.f32 %578, 1
  %581 = extractvalue %dx.types.ResRet.f32 %578, 2
  %582 = extractvalue %dx.types.ResRet.f32 %578, 3
  br label %583

; <label>:583                                     ; preds = %577, %571
  %584 = phi float [ %573, %571 ], [ %579, %577 ]
  %585 = phi float [ %574, %571 ], [ %580, %577 ]
  %586 = phi float [ %575, %571 ], [ %581, %577 ]
  %587 = phi float [ %576, %571 ], [ %582, %577 ]
  %588 = extractvalue %dx.types.CBufRet.f32 %562, 3
  %589 = fmul fast float %588, %584
  %590 = extractvalue %dx.types.CBufRet.f32 %557, 2
  %591 = fadd fast float %589, %590
  %592 = fmul fast float %588, %585
  %593 = fadd fast float %592, %590
  %594 = fmul fast float %588, %586
  %595 = fadd fast float %594, %590
  %596 = and i32 %555, 31
  %597 = shl i32 1, %596
  %598 = uitofp i32 %597 to float
  %599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.f32 %599, 3
  %601 = fdiv fast float 1.000000e+00, %600
  %602 = fmul fast float %601, %598
  %603 = fmul fast float %602, %277
  %604 = fadd fast float %603, %472
  %605 = fcmp fast oeq float %587, 0.000000e+00
  %606 = fcmp fast ogt float %472, %593
  %607 = fcmp fast ogt float %604, %593
  %608 = and i1 %606, %607
  %609 = or i1 %605, %608
  br i1 %609, label %610, label %614, !dx.controlflow.hints !46

; <label>:610                                     ; preds = %583
  %611 = add nsw i32 %555, 1
  %612 = add nsw i32 %491, -1
  %613 = call i32 @dx.op.binary.i32(i32 38, i32 %611, i32 %612)  ; IMin(a,b)
  br label %644

; <label>:614                                     ; preds = %583
  %615 = fcmp fast olt float %472, %595
  %616 = fcmp fast olt float %604, %595
  %617 = and i1 %615, %616
  br i1 %617, label %618, label %622, !dx.controlflow.hints !47

; <label>:618                                     ; preds = %614
  %619 = add nsw i32 %555, 1
  %620 = add nsw i32 %491, -1
  %621 = call i32 @dx.op.binary.i32(i32 38, i32 %619, i32 %620)  ; IMin(a,b)
  br label %644

; <label>:622                                     ; preds = %614
  %623 = fcmp fast olt float %472, %591
  %624 = fcmp fast olt float %604, %591
  %625 = and i1 %623, %624
  br i1 %625, label %626, label %634, !dx.controlflow.hints !48

; <label>:626                                     ; preds = %622
  %627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %628 = extractvalue %dx.types.CBufRet.f32 %627, 3
  %629 = extractvalue %dx.types.CBufRet.f32 %562, 2
  %630 = fcmp fast une float %628, %629
  br i1 %630, label %631, label %638, !dx.controlflow.hints !49

; <label>:631                                     ; preds = %626
  %632 = fsub fast float %472, %595
  %633 = call float @dx.op.binary.f32(i32 36, float %602, float %632)  ; FMin(a,b)
  br label %638

; <label>:634                                     ; preds = %622
  %635 = add nsw i32 %555, -1
  %636 = icmp sgt i32 %555, 1
  br i1 %636, label %554, label %637

; <label>:637                                     ; preds = %634
  br label %638

; <label>:638                                     ; preds = %637, %631, %626, %551
  %639 = phi float [ %633, %631 ], [ %602, %626 ], [ 0.000000e+00, %551 ], [ 0.000000e+00, %637 ]
  %640 = phi i32 [ %555, %631 ], [ %555, %626 ], [ %476, %551 ], [ %635, %637 ]
  %641 = add nsw i32 %640, 1
  %642 = add nsw i32 %491, -1
  %643 = call i32 @dx.op.binary.i32(i32 38, i32 %641, i32 %642)  ; IMin(a,b)
  br label %644

; <label>:644                                     ; preds = %638, %618, %610, %549, %545, %495
  %645 = phi float [ %496, %495 ], [ %602, %610 ], [ %602, %618 ], [ %639, %638 ], [ 0x47EFFFFFE0000000, %549 ], [ %546, %545 ]
  %646 = phi i32 [ %364, %495 ], [ %364, %610 ], [ %364, %618 ], [ %364, %638 ], [ 0, %549 ], [ %364, %545 ]
  %647 = phi i32 [ %476, %495 ], [ %613, %610 ], [ %621, %618 ], [ %643, %638 ], [ %476, %549 ], [ %476, %545 ]
  %648 = icmp ne i32 %646, 0
  %649 = zext i1 %648 to i32
  %650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %651 = extractvalue %dx.types.CBufRet.f32 %650, 2
  %652 = call float @dx.op.binary.f32(i32 35, float %645, float %651)  ; FMax(a,b)
  %653 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %652)  ; FMin(a,b)
  br label %654

; <label>:654                                     ; preds = %644, %461
  %655 = phi i32 [ %649, %644 ], [ 0, %461 ]
  %656 = phi float [ %653, %644 ], [ 0x47EFFFFFE0000000, %461 ]
  %657 = phi i32 [ %647, %644 ], [ %476, %461 ]
  %658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %659 = extractvalue %dx.types.CBufRet.f32 %658, 0
  %660 = extractvalue %dx.types.CBufRet.f32 %658, 1
  %661 = fsub fast float %470, %659
  %662 = fsub fast float %471, %660
  %663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %664 = extractvalue %dx.types.CBufRet.f32 %663, 2
  %665 = extractvalue %dx.types.CBufRet.f32 %663, 3
  %666 = fmul fast float %661, %664
  %667 = fmul fast float %662, %665
  %668 = call float @dx.op.binary.f32(i32 36, float %666, float %667)  ; FMin(a,b)
  %669 = fcmp fast olt float %668, 0.000000e+00
  %670 = call float @dx.op.binary.f32(i32 35, float %666, float %667)  ; FMax(a,b)
  %671 = fcmp fast ogt float %670, 1.000000e+00
  %672 = or i1 %669, %671
  %673 = extractvalue %dx.types.CBufRet.f32 %658, 2
  %674 = fcmp fast olt float %472, %673
  %675 = or i1 %672, %674
  %676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.f32 %676, 3
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 0
  %680 = fadd fast float %679, %677
  %681 = fcmp fast ogt float %472, %680
  %682 = or i1 %675, %681
  br i1 %682, label %683, label %712, !dx.controlflow.hints !50

; <label>:683                                     ; preds = %654
  %684 = extractvalue %dx.types.CBufRet.f32 %663, 0
  %685 = extractvalue %dx.types.CBufRet.f32 %663, 1
  %686 = fsub fast float %659, %470
  %687 = fmul fast float %686, %436
  %688 = fadd fast float %686, %684
  %689 = fmul fast float %688, %436
  %690 = call float @dx.op.binary.f32(i32 36, float %687, float %689)  ; FMin(a,b)
  %691 = call float @dx.op.binary.f32(i32 35, float %687, float %689)  ; FMax(a,b)
  %692 = fsub fast float %660, %471
  %693 = fmul fast float %692, %437
  %694 = fadd fast float %692, %685
  %695 = fmul fast float %694, %437
  %696 = call float @dx.op.binary.f32(i32 36, float %693, float %695)  ; FMin(a,b)
  %697 = call float @dx.op.binary.f32(i32 35, float %690, float %696)  ; FMax(a,b)
  %698 = call float @dx.op.binary.f32(i32 35, float %693, float %695)  ; FMax(a,b)
  %699 = call float @dx.op.binary.f32(i32 36, float %691, float %698)  ; FMin(a,b)
  %700 = fsub fast float %673, %472
  %701 = fmul fast float %700, %438
  %702 = fsub fast float %677, %472
  %703 = fadd fast float %702, %679
  %704 = fmul fast float %703, %438
  %705 = call float @dx.op.binary.f32(i32 36, float %701, float %704)  ; FMin(a,b)
  %706 = call float @dx.op.binary.f32(i32 35, float %697, float %705)  ; FMax(a,b)
  %707 = call float @dx.op.binary.f32(i32 35, float %701, float %704)  ; FMax(a,b)
  %708 = call float @dx.op.binary.f32(i32 36, float %699, float %707)  ; FMin(a,b)
  %709 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %706)  ; FMax(a,b)
  %710 = fcmp fast oge float %708, %709
  %711 = select i1 %710, float %706, float 1.000000e+07
  br label %758

; <label>:712                                     ; preds = %654
  %713 = fsub fast float 1.000000e+00, %667
  %714 = icmp eq i32 %475, 0
  br i1 %714, label %743, label %715

; <label>:715                                     ; preds = %712
  br label %716

; <label>:716                                     ; preds = %739, %715
  %717 = phi i32 [ %740, %739 ], [ %475, %715 ]
  %718 = uitofp i32 %717 to float
  %719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %666, float %713, float undef, float undef, i32 0, i32 0, i32 undef, float %718)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %720 = extractvalue %dx.types.ResRet.f32 %719, 0
  %721 = extractvalue %dx.types.ResRet.f32 %719, 1
  %722 = extractvalue %dx.types.ResRet.f32 %719, 2
  %723 = fcmp fast oeq float %720, 0.000000e+00
  %724 = fcmp ule float %472, %722
  %725 = fcmp uge float %472, %721
  %726 = or i1 %725, %724
  %727 = or i1 %723, %726
  br i1 %727, label %728, label %739, !dx.controlflow.hints !51

; <label>:728                                     ; preds = %716
  %729 = extractvalue %dx.types.ResRet.f32 %719, 3
  %730 = extractvalue %dx.types.CBufRet.f32 %663, 0
  %731 = and i32 %717, 31
  %732 = lshr i32 1024, %731
  %733 = uitofp i32 %732 to float
  %734 = fdiv fast float %730, %733
  %735 = add i32 %717, 1
  %736 = uitofp i32 %735 to float
  %737 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %736)  ; FMin(a,b)
  %738 = fptosi float %737 to i32
  br label %758

; <label>:739                                     ; preds = %716
  %740 = add i32 %717, -1
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %742, label %716, !llvm.loop !52

; <label>:742                                     ; preds = %739
  br label %743

; <label>:743                                     ; preds = %742, %712
  %744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %666, float %713, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  %746 = extractvalue %dx.types.ResRet.f32 %744, 1
  %747 = extractvalue %dx.types.ResRet.f32 %744, 2
  %748 = extractvalue %dx.types.ResRet.f32 %744, 3
  %749 = extractvalue %dx.types.CBufRet.f32 %663, 0
  %750 = fmul fast float %749, 9.765625e-04
  %751 = fcmp fast oeq float %745, 0.000000e+00
  %752 = fcmp ule float %472, %747
  %753 = fcmp uge float %472, %746
  %754 = or i1 %753, %752
  %755 = or i1 %751, %754
  %756 = zext i1 %755 to i32
  %757 = xor i32 %756, 1
  br label %758

; <label>:758                                     ; preds = %743, %728, %683
  %759 = phi float [ %711, %683 ], [ %734, %728 ], [ %750, %743 ]
  %760 = phi float [ %464, %683 ], [ %720, %728 ], [ %745, %743 ]
  %761 = phi float [ %465, %683 ], [ %721, %728 ], [ %746, %743 ]
  %762 = phi float [ %466, %683 ], [ %722, %728 ], [ %747, %743 ]
  %763 = phi float [ %467, %683 ], [ %729, %728 ], [ %748, %743 ]
  %764 = phi i32 [ 0, %683 ], [ 0, %728 ], [ %757, %743 ]
  %765 = phi i32 [ 10, %683 ], [ %738, %728 ], [ 1, %743 ]
  %766 = icmp eq i32 %764, 0
  %767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.f32 %767, 2
  %769 = call float @dx.op.binary.f32(i32 35, float %759, float %768)  ; FMax(a,b)
  %770 = call float @dx.op.binary.f32(i32 36, float %656, float %769)  ; FMin(a,b)
  %771 = icmp eq i32 %391, 0
  br i1 %771, label %784, label %772, !dx.controlflow.hints !54

; <label>:772                                     ; preds = %758
  %773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.f32 %773, 3
  %775 = extractvalue %dx.types.CBufRet.f32 %773, 2
  %776 = fmul fast float %774, %473
  %777 = fdiv fast float %776, %439
  %778 = fadd fast float %777, 1.000000e+00
  %779 = call float @dx.op.unary.f32(i32 23, float %778)  ; Log(value)
  %780 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %779)  ; FMin(a,b)
  %781 = fmul fast float %775, %439
  %782 = fmul fast float %781, %780
  %783 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %782)  ; FMin(a,b)
  br label %784

; <label>:784                                     ; preds = %772, %758
  %785 = phi float [ %783, %772 ], [ 0x47EFFFFFE0000000, %758 ]
  %786 = icmp eq i32 %433, 0
  br i1 %786, label %958, label %787, !dx.controlflow.hints !55

; <label>:787                                     ; preds = %784
  %788 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.i32 %788, 1
  %790 = and i32 %789, 1
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %792, label %949, !dx.controlflow.hints !56

; <label>:792                                     ; preds = %787
  %793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.f32 %793, 2
  %795 = extractvalue %dx.types.CBufRet.f32 %793, 3
  %796 = fmul fast float %794, %470
  %797 = fmul fast float %795, %471
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 0
  %800 = extractvalue %dx.types.CBufRet.f32 %798, 1
  %801 = fadd fast float %796, %799
  %802 = fadd fast float %797, %800
  %803 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %804 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %803, float %804, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  %807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %808 = extractvalue %dx.types.CBufRet.f32 %807, 0
  %809 = fmul fast float %808, %806
  %810 = fsub fast float %801, %803
  %811 = fsub fast float %802, %804
  %812 = extractvalue %dx.types.CBufRet.f32 %793, 0
  %813 = extractvalue %dx.types.CBufRet.f32 %793, 1
  %814 = fmul fast float %812, %810
  %815 = fmul fast float %813, %811
  %816 = fmul fast float %814, %814
  %817 = fmul fast float %815, %815
  %818 = fadd fast float %816, %817
  %819 = call float @dx.op.unary.f32(i32 24, float %818)  ; Sqrt(value)
  %820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %821 = extractvalue %dx.types.CBufRet.f32 %820, 3
  %822 = fmul fast float %821, %819
  %823 = call float @dx.op.unary.f32(i32 7, float %822)  ; Saturate(value)
  %824 = extractvalue %dx.types.CBufRet.f32 %820, 2
  %825 = fsub fast float %824, %809
  %826 = fmul fast float %825, %823
  %827 = extractvalue %dx.types.CBufRet.f32 %807, 1
  %828 = fsub fast float %472, %809
  %829 = fsub fast float %828, %827
  %830 = fsub fast float %829, %826
  %831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %832 = extractvalue %dx.types.CBufRet.f32 %831, 2
  %833 = fsub fast float %830, %832
  %834 = fcmp fast olt float %833, 0.000000e+00
  %835 = call float @dx.op.unary.f32(i32 6, float %833)  ; FAbs(value)
  %836 = extractvalue %dx.types.CBufRet.i32 %788, 0
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %891, label %838

; <label>:838                                     ; preds = %792
  br label %839

; <label>:839                                     ; preds = %878, %838
  %840 = phi i32 [ %884, %878 ], [ 1, %838 ]
  %841 = phi float [ %886, %878 ], [ 0x47EFFFFFE0000000, %838 ]
  %842 = phi i32 [ %887, %878 ], [ 0, %838 ]
  %843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %844 = extractvalue %dx.types.CBufRet.f32 %843, 1
  %845 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.i32 %845, 1
  %847 = and i32 %846, 8
  %848 = icmp eq i32 %847, 0
  %849 = fcmp fast ogt float %844, %830
  %850 = or i1 %849, %848
  %851 = add i32 %842, 171
  %852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %851)  ; CBufferLoadLegacy(handle,regIndex)
  %853 = extractvalue %dx.types.CBufRet.f32 %852, 0
  %854 = extractvalue %dx.types.CBufRet.f32 %852, 1
  %855 = extractvalue %dx.types.CBufRet.f32 %852, 2
  br i1 %850, label %856, label %862, !dx.controlflow.hints !57

; <label>:856                                     ; preds = %839
  %857 = fsub fast float %853, %470
  %858 = fsub fast float %854, %471
  %859 = fmul fast float %857, %857
  %860 = fmul fast float %858, %858
  %861 = fadd fast float %859, %860
  br label %878

; <label>:862                                     ; preds = %839
  %863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.f32 %863, 2
  %865 = extractvalue %dx.types.CBufRet.f32 %843, 2
  %866 = fmul fast float %865, %864
  %867 = fsub fast float %866, %844
  %868 = fdiv fast float %855, %867
  %869 = fsub fast float %470, %853
  %870 = fsub fast float %471, %854
  %871 = fsub fast float %830, %844
  %872 = fmul fast float %868, %871
  %873 = fmul fast float %869, %869
  %874 = fmul fast float %870, %870
  %875 = fadd fast float %873, %874
  %876 = fmul fast float %872, %872
  %877 = fadd fast float %875, %876
  br label %878

; <label>:878                                     ; preds = %862, %856
  %879 = phi float [ %861, %856 ], [ %877, %862 ]
  %880 = call float @dx.op.unary.f32(i32 24, float %879)  ; Sqrt(value)
  %881 = fsub float %855, %880
  %882 = fcmp fast olt float %881, 0.000000e+00
  %883 = zext i1 %882 to i32
  %884 = and i32 %883, %840
  %885 = call float @dx.op.unary.f32(i32 6, float %881)  ; FAbs(value)
  %886 = call float @dx.op.binary.f32(i32 36, float %841, float %885)  ; FMin(a,b)
  %887 = add i32 %842, 1
  %888 = extractvalue %dx.types.CBufRet.i32 %845, 0
  %889 = icmp ult i32 %887, %888
  br i1 %889, label %839, label %890

; <label>:890                                     ; preds = %878
  br label %891

; <label>:891                                     ; preds = %890, %792
  %892 = phi i32 [ 1, %792 ], [ %884, %890 ]
  %893 = phi float [ 0x47EFFFFFE0000000, %792 ], [ %886, %890 ]
  br label %894

; <label>:894                                     ; preds = %894, %891
  %895 = phi i32 [ %892, %891 ], [ %934, %894 ]
  %896 = phi float [ 0x47EFFFFFE0000000, %891 ], [ %936, %894 ]
  %897 = phi i32 [ 0, %891 ], [ %937, %894 ]
  %898 = add nuw nsw i32 %897, 191
  %899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %898)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.f32 %899, 0
  %901 = extractvalue %dx.types.CBufRet.f32 %899, 1
  %902 = extractvalue %dx.types.CBufRet.f32 %899, 2
  %903 = add nuw nsw i32 %897, 195
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %903)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 0
  %906 = extractvalue %dx.types.CBufRet.f32 %904, 1
  %907 = extractvalue %dx.types.CBufRet.f32 %904, 2
  %908 = fsub fast float %470, %900
  %909 = fsub fast float %471, %901
  %910 = fsub fast float %830, %902
  %911 = call float @dx.op.unary.f32(i32 6, float %908)  ; FAbs(value)
  %912 = call float @dx.op.unary.f32(i32 6, float %909)  ; FAbs(value)
  %913 = call float @dx.op.unary.f32(i32 6, float %910)  ; FAbs(value)
  %914 = fsub fast float %911, %905
  %915 = fsub fast float %912, %906
  %916 = fsub fast float %913, %907
  %917 = call float @dx.op.binary.f32(i32 35, float %914, float 0.000000e+00)  ; FMax(a,b)
  %918 = call float @dx.op.binary.f32(i32 35, float %915, float 0.000000e+00)  ; FMax(a,b)
  %919 = call float @dx.op.binary.f32(i32 35, float %916, float 0.000000e+00)  ; FMax(a,b)
  %920 = fmul fast float %917, %917
  %921 = fmul fast float %918, %918
  %922 = fadd fast float %921, %920
  %923 = fmul fast float %919, %919
  %924 = fadd fast float %922, %923
  %925 = call float @dx.op.unary.f32(i32 24, float %924)  ; Sqrt(value)
  %926 = call float @dx.op.binary.f32(i32 35, float %915, float %916)  ; FMax(a,b)
  %927 = call float @dx.op.binary.f32(i32 35, float %914, float %926)  ; FMax(a,b)
  %928 = call float @dx.op.binary.f32(i32 36, float %927, float 0.000000e+00)  ; FMin(a,b)
  %929 = fadd fast float %928, %925
  %930 = fsub fast float -0.000000e+00, %929
  %931 = fcmp ogt float %929, -0.000000e+00
  %932 = icmp ne i32 %895, 0
  %933 = and i1 %932, %931
  %934 = zext i1 %933 to i32
  %935 = call float @dx.op.unary.f32(i32 6, float %930)  ; FAbs(value)
  %936 = call float @dx.op.binary.f32(i32 36, float %896, float %935)  ; FMin(a,b)
  %937 = add nuw nsw i32 %897, 1
  %938 = icmp eq i32 %937, 4
  br i1 %938, label %939, label %894

; <label>:939                                     ; preds = %894
  %940 = call float @dx.op.binary.f32(i32 36, float %835, float %936)  ; FMin(a,b)
  %941 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.i32 %941, 1
  %943 = and i32 %942, 2
  %944 = icmp ne i32 %943, 0
  %945 = xor i1 %933, %944
  %946 = call float @dx.op.binary.f32(i32 36, float %940, float %893)  ; FMin(a,b)
  %947 = and i1 %945, %834
  %948 = zext i1 %947 to i32
  br label %949

; <label>:949                                     ; preds = %939, %787
  %950 = phi i32 [ %462, %787 ], [ %948, %939 ]
  %951 = phi float [ 0.000000e+00, %787 ], [ %946, %939 ]
  %952 = phi float [ %472, %787 ], [ %830, %939 ]
  %953 = icmp ne i32 %950, 0
  %954 = extractvalue %dx.types.CBufRet.f32 %767, 3
  %955 = call float @dx.op.binary.f32(i32 35, float %951, float %954)  ; FMax(a,b)
  %956 = call float @dx.op.binary.f32(i32 36, float %785, float %955)  ; FMin(a,b)
  %957 = zext i1 %953 to i32
  br label %958

; <label>:958                                     ; preds = %949, %784
  %959 = phi i32 [ %950, %949 ], [ %462, %784 ]
  %960 = phi i32 [ %957, %949 ], [ 0, %784 ]
  %961 = phi float [ %952, %949 ], [ %463, %784 ]
  %962 = phi float [ %956, %949 ], [ %785, %784 ]
  %963 = extractvalue %dx.types.CBufRet.f32 %486, 2
  %964 = fmul fast float %963, %473
  %965 = call float @dx.op.unary.f32(i32 23, float %964)  ; Log(value)
  %966 = fmul fast float %965, 0x3FE62E4300000000
  %967 = call float @dx.op.binary.f32(i32 35, float %966, float 1.000000e+00)  ; FMax(a,b)
  %968 = fmul fast float %967, %962
  %969 = call float @dx.op.binary.f32(i32 36, float %968, float %770)  ; FMin(a,b)
  %970 = call float @dx.op.binary.f32(i32 35, float %969, float %487)  ; FMax(a,b)
  %971 = fsub fast float %439, %473
  %972 = fadd fast float %971, 0x3F1A36E2E0000000
  %973 = call float @dx.op.binary.f32(i32 36, float %972, float %970)  ; FMin(a,b)
  %974 = icmp eq i32 %655, 0
  br i1 %974, label %1071, label %975, !dx.controlflow.hints !58

; <label>:975                                     ; preds = %958
  %976 = fcmp fast olt float %972, %970
  %977 = fmul fast float %277, %220
  %978 = fmul fast float %977, %973
  %979 = fadd fast float %978, %472
  %980 = fmul fast float %277, %221
  %981 = fmul fast float %980, %973
  %982 = fadd fast float %981, %472
  %983 = fmul fast float %277, %222
  %984 = fmul fast float %983, %973
  %985 = fadd fast float %984, %472
  br i1 %976, label %986, label %991, !dx.controlflow.hints !59

; <label>:986                                     ; preds = %975
  %987 = fmul fast float %973, %275
  %988 = fmul fast float %973, %276
  %989 = fadd fast float %987, %470
  %990 = fadd fast float %988, %471
  br label %991

; <label>:991                                     ; preds = %986, %975
  %992 = phi float [ %989, %986 ], [ %470, %975 ]
  %993 = phi float [ %990, %986 ], [ %471, %975 ]
  %994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.f32 %994, 0
  %996 = extractvalue %dx.types.CBufRet.f32 %994, 1
  %997 = fsub fast float %992, %995
  %998 = fsub fast float %993, %996
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 0
  %1001 = extractvalue %dx.types.CBufRet.f32 %999, 1
  %1002 = fmul fast float %997, %1000
  %1003 = fmul fast float %998, %1001
  %1004 = fsub fast float 1.000000e+00, %1003
  %1005 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.i32 %1005, 3
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1014, label %1008, !dx.controlflow.hints !45

; <label>:1008                                    ; preds = %991
  %1009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %12, float %1002, float %1004, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1010 = extractvalue %dx.types.ResRet.f32 %1009, 0
  %1011 = extractvalue %dx.types.ResRet.f32 %1009, 1
  %1012 = extractvalue %dx.types.ResRet.f32 %1009, 2
  %1013 = extractvalue %dx.types.ResRet.f32 %1009, 3
  br label %1020

; <label>:1014                                    ; preds = %991
  %1015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1002, float %1004, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1016 = extractvalue %dx.types.ResRet.f32 %1015, 0
  %1017 = extractvalue %dx.types.ResRet.f32 %1015, 1
  %1018 = extractvalue %dx.types.ResRet.f32 %1015, 2
  %1019 = extractvalue %dx.types.ResRet.f32 %1015, 3
  br label %1020

; <label>:1020                                    ; preds = %1014, %1008
  %1021 = phi float [ %1010, %1008 ], [ %1016, %1014 ]
  %1022 = phi float [ %1011, %1008 ], [ %1017, %1014 ]
  %1023 = phi float [ %1012, %1008 ], [ %1018, %1014 ]
  %1024 = phi float [ %1013, %1008 ], [ %1019, %1014 ]
  %1025 = extractvalue %dx.types.CBufRet.f32 %999, 3
  %1026 = fmul fast float %1025, %1022
  %1027 = fmul fast float %1026, %1021
  %1028 = fsub fast float %1026, %1027
  %1029 = fcmp fast ole float %1028, 0.000000e+00
  %1030 = extractvalue %dx.types.CBufRet.f32 %994, 2
  %1031 = fadd fast float %1027, %1030
  %1032 = fmul fast float %1025, %1023
  %1033 = fadd fast float %1032, %1030
  %1034 = fdiv fast float 1.000000e+00, %1028
  %1035 = select i1 %1029, float 1.000000e+06, float %1034
  %1036 = fsub fast float %979, %1031
  %1037 = fmul fast float %1035, %1036
  %1038 = call float @dx.op.unary.f32(i32 7, float %1037)  ; Saturate(value)
  %1039 = extractvalue %dx.types.CBufRet.f32 %999, 2
  %1040 = fmul fast float %1039, %1038
  %1041 = fsub fast float %1039, %1040
  %1042 = fcmp fast olt float %979, %1033
  %1043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1044 = extractvalue %dx.types.CBufRet.f32 %1043, 3
  %1045 = select i1 %1042, float %1044, float 1.000000e+00
  %1046 = fmul fast float %1041, %1045
  %1047 = fsub fast float %982, %1031
  %1048 = fmul fast float %1035, %1047
  %1049 = call float @dx.op.unary.f32(i32 7, float %1048)  ; Saturate(value)
  %1050 = fmul fast float %1039, %1049
  %1051 = fsub fast float %1039, %1050
  %1052 = fcmp fast olt float %982, %1033
  %1053 = select i1 %1052, float %1044, float 1.000000e+00
  %1054 = fmul fast float %1051, %1053
  %1055 = fadd fast float %1054, %1046
  %1056 = fsub fast float %985, %1031
  %1057 = fmul fast float %1035, %1056
  %1058 = call float @dx.op.unary.f32(i32 7, float %1057)  ; Saturate(value)
  %1059 = fmul fast float %1039, %1058
  %1060 = fsub fast float %1039, %1059
  %1061 = fcmp fast olt float %985, %1033
  %1062 = select i1 %1061, float %1044, float 1.000000e+00
  %1063 = fmul fast float %1060, %1062
  %1064 = fadd fast float %1055, %1063
  %1065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1066 = extractvalue %dx.types.CBufRet.f32 %1065, 2
  %1067 = fmul fast float %973, 0x3FD5555560000000
  %1068 = fmul fast float %1067, %1024
  %1069 = fmul fast float %1068, %1066
  %1070 = fmul fast float %1069, %1064
  br label %1071

; <label>:1071                                    ; preds = %1020, %958
  %1072 = phi float [ %1070, %1020 ], [ 0.000000e+00, %958 ]
  br i1 %771, label %1119, label %1073, !dx.controlflow.hints !60

; <label>:1073                                    ; preds = %1071
  %1074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1075 = extractvalue %dx.types.CBufRet.f32 %1074, 0
  %1076 = fsub fast float %1075, %472
  %1077 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %484, float %483, float %1076)  ; Dot3(ax,ay,az,bx,by,bz)
  %1078 = fmul fast float %374, %1077
  %1079 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1078)  ; FMax(a,b)
  %1080 = fcmp fast olt float %277, 0.000000e+00
  %1081 = call float @dx.op.binary.f32(i32 36, float %973, float %1079)  ; FMin(a,b)
  br i1 %1080, label %1083, label %1082, !dx.controlflow.hints !61

; <label>:1082                                    ; preds = %1073
  br label %1083

; <label>:1083                                    ; preds = %1082, %1073
  %1084 = phi float [ 0.000000e+00, %1082 ], [ %1081, %1073 ]
  %1085 = phi float [ %1081, %1082 ], [ %973, %1073 ]
  %1086 = phi float [ %1081, %1082 ], [ 0.000000e+00, %1073 ]
  %1087 = phi float [ %973, %1082 ], [ %1081, %1073 ]
  %1088 = fsub fast float %1085, %1084
  %1089 = extractvalue %dx.types.CBufRet.f32 %1074, 1
  %1090 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1089)  ; FMin(a,b)
  %1091 = fsub fast float %472, %1075
  %1092 = fmul fast float %1090, 0x3FF7154760000000
  %1093 = fmul fast float %1092, %1091
  %1094 = call float @dx.op.unary.f32(i32 21, float %1093)  ; Exp(value)
  %1095 = fmul fast float %277, 0x3FF7154760000000
  %1096 = fmul fast float %1095, %1087
  %1097 = fmul fast float %1096, %1090
  %1098 = call float @dx.op.unary.f32(i32 21, float %1097)  ; Exp(value)
  %1099 = fmul fast float %1095, %1086
  %1100 = fmul fast float %1099, %1090
  %1101 = call float @dx.op.unary.f32(i32 21, float %1100)  ; Exp(value)
  %1102 = fsub fast float %1098, %1101
  %1103 = fmul fast float %1102, %1094
  %1104 = fmul fast float %1090, %277
  %1105 = fdiv fast float %1103, %1104
  %1106 = fadd fast float %1088, %1105
  %1107 = call float @dx.op.unary.f32(i32 6, float %277)  ; FAbs(value)
  %1108 = fcmp fast olt float %1107, 0x3F0FFB4800000000
  %1109 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1091)  ; FMax(a,b)
  %1110 = fmul fast float %1109, 0x3FF7154760000000
  %1111 = fmul fast float %1110, %1089
  %1112 = call float @dx.op.unary.f32(i32 21, float %1111)  ; Exp(value)
  %1113 = fmul fast float %1112, %973
  %1114 = select i1 %1108, float %1113, float %1106
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 1
  %1117 = fmul fast float %1114, %1116
  %1118 = fadd fast float %1117, %1072
  br label %1119

; <label>:1119                                    ; preds = %1083, %1071
  %1120 = phi float [ %1118, %1083 ], [ %1072, %1071 ]
  br i1 %766, label %1246, label %1121, !dx.controlflow.hints !62

; <label>:1121                                    ; preds = %1119
  %1122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.i32 %1122, 0
  %1124 = icmp ne i32 %1123, 0
  %1125 = zext i1 %1124 to i32
  %1126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.i32 %1126, 0
  %1128 = icmp eq i32 %1127, 0
  br i1 %1128, label %1162, label %1129

; <label>:1129                                    ; preds = %1121
  br label %1130

; <label>:1130                                    ; preds = %1157, %1129
  %1131 = phi i32 [ %1158, %1157 ], [ 0, %1129 ]
  %1132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1131, i32 0)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.f32 %1132, 0
  %1134 = extractvalue %dx.types.ResRet.f32 %1132, 1
  %1135 = extractvalue %dx.types.ResRet.f32 %1132, 2
  %1136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1131, i32 16)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.ResRet.f32 %1136, 1
  %1139 = extractvalue %dx.types.ResRet.f32 %1136, 2
  %1140 = fsub fast float %1133, %1137
  %1141 = fsub fast float %1134, %1138
  %1142 = fsub fast float %1135, %1139
  %1143 = fadd fast float %1137, %1133
  %1144 = fadd fast float %1138, %1134
  %1145 = fadd fast float %1139, %1135
  %1146 = fcmp fast olt float %470, %1140
  %1147 = fcmp fast olt float %471, %1141
  %1148 = fcmp fast olt float %472, %1142
  %1149 = or i1 %1146, %1147
  %1150 = or i1 %1148, %1149
  %1151 = fcmp fast ogt float %470, %1143
  %1152 = fcmp fast ogt float %471, %1144
  %1153 = fcmp fast ogt float %472, %1145
  %1154 = or i1 %1151, %1152
  %1155 = or i1 %1153, %1154
  %1156 = or i1 %1150, %1155
  br i1 %1156, label %1157, label %1160, !dx.controlflow.hints !63

; <label>:1157                                    ; preds = %1130
  %1158 = add nuw i32 %1131, 1
  %1159 = icmp ult i32 %1158, %1127
  br i1 %1159, label %1130, label %1160

; <label>:1160                                    ; preds = %1157, %1130
  %1161 = phi i32 [ 255, %1157 ], [ %1131, %1130 ]
  br label %1162

; <label>:1162                                    ; preds = %1160, %1121
  %1163 = phi i32 [ 255, %1121 ], [ %1161, %1160 ]
  %1164 = icmp eq i32 %1163, 255
  br i1 %1164, label %1170, label %1165, !dx.controlflow.hints !64

; <label>:1165                                    ; preds = %1162
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1163, i32 156)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = icmp ne i32 %1167, 0
  %1169 = zext i1 %1168 to i32
  br label %1170

; <label>:1170                                    ; preds = %1165, %1162
  %1171 = phi i32 [ %1169, %1165 ], [ %1125, %1162 ]
  %1172 = icmp eq i32 %1171, 0
  br i1 %1172, label %1173, label %1242, !dx.controlflow.hints !65

; <label>:1173                                    ; preds = %1170
  %1174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1175 = extractvalue %dx.types.CBufRet.f32 %1174, 3
  %1176 = extractvalue %dx.types.CBufRet.f32 %676, 0
  %1177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1178 = extractvalue %dx.types.CBufRet.f32 %1177, 2
  %1179 = extractvalue %dx.types.CBufRet.f32 %1177, 3
  br i1 %1164, label %1190, label %1180, !dx.controlflow.hints !66

; <label>:1180                                    ; preds = %1173
  %1181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1163, i32 60)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.f32 %1181, 0
  %1183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1163, i32 64)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = extractvalue %dx.types.ResRet.f32 %1183, 1
  %1186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1163, i32 72)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.f32 %1186, 0
  %1188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1163, i32 96)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.f32 %1188, 0
  br label %1190

; <label>:1190                                    ; preds = %1180, %1173
  %1191 = phi float [ %1182, %1180 ], [ %679, %1173 ]
  %1192 = phi float [ %1187, %1180 ], [ %677, %1173 ]
  %1193 = phi float [ %1189, %1180 ], [ %1176, %1173 ]
  %1194 = phi float [ %1184, %1180 ], [ %1178, %1173 ]
  %1195 = phi float [ %1185, %1180 ], [ %1179, %1173 ]
  %1196 = call float @dx.op.binary.f32(i32 35, float %760, float 0.000000e+00)  ; FMax(a,b)
  %1197 = call float @dx.op.binary.f32(i32 36, float %1196, float 1.000000e+00)  ; FMin(a,b)
  %1198 = call float @dx.op.unary.f32(i32 24, float %1197)  ; Sqrt(value)
  %1199 = call float @dx.op.binary.f32(i32 35, float %763, float 0x3F847AE140000000)  ; FMax(a,b)
  %1200 = fsub fast float %761, %472
  %1201 = fsub fast float %472, %762
  %1202 = call float @dx.op.binary.f32(i32 36, float %1201, float %1200)  ; FMin(a,b)
  %1203 = fdiv fast float %1202, %1199
  %1204 = call float @dx.op.unary.f32(i32 7, float %1203)  ; Saturate(value)
  %1205 = fsub fast float %472, %1192
  %1206 = fdiv fast float %1205, %1191
  %1207 = call float @dx.op.unary.f32(i32 7, float %1206)  ; Saturate(value)
  %1208 = fsub fast float 1.000000e+00, %1207
  %1209 = fmul float %1204, %1208
  %1210 = fmul float %1209, %1209
  %1211 = fmul fast float %1198, %1175
  %1212 = fmul fast float %1211, %1210
  %1213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1214 = extractvalue %dx.types.CBufRet.f32 %1213, 2
  %1215 = extractvalue %dx.types.CBufRet.f32 %1213, 1
  %1216 = fsub fast float %1212, %1215
  %1217 = fsub fast float %1214, %1215
  %1218 = fdiv fast float %1216, %1217
  %1219 = call float @dx.op.unary.f32(i32 7, float %1218)  ; Saturate(value)
  %1220 = fmul fast float %1219, %1193
  %1221 = fcmp fast ogt float %1195, 0.000000e+00
  br i1 %1221, label %1222, label %1242, !dx.controlflow.hints !67

; <label>:1222                                    ; preds = %1190
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 0
  %1225 = extractvalue %dx.types.CBufRet.f32 %1223, 1
  %1226 = extractvalue %dx.types.CBufRet.f32 %1223, 2
  %1227 = fsub fast float %470, %1224
  %1228 = fsub fast float %471, %1225
  %1229 = fsub fast float %472, %1226
  %1230 = fmul fast float %1227, %1227
  %1231 = fmul fast float %1228, %1228
  %1232 = fadd fast float %1230, %1231
  %1233 = fmul fast float %1229, %1229
  %1234 = fadd fast float %1232, %1233
  %1235 = call float @dx.op.unary.f32(i32 24, float %1234)  ; Sqrt(value)
  %1236 = fsub fast float %1235, %1194
  %1237 = fsub fast float %1195, %1194
  %1238 = fdiv fast float %1236, %1237
  %1239 = call float @dx.op.unary.f32(i32 7, float %1238)  ; Saturate(value)
  %1240 = fmul fast float %1239, %1239
  %1241 = fmul fast float %1240, %1220
  br label %1242

; <label>:1242                                    ; preds = %1222, %1190, %1170
  %1243 = phi float [ 0.000000e+00, %1170 ], [ %1241, %1222 ], [ %1220, %1190 ]
  %1244 = fmul fast float %1243, %973
  %1245 = fadd fast float %1244, %1120
  br label %1246

; <label>:1246                                    ; preds = %1242, %1119
  %1247 = phi float [ %1245, %1242 ], [ %1120, %1119 ]
  %1248 = icmp eq i32 %960, 0
  br i1 %1248, label %1280, label %1249, !dx.controlflow.hints !68

; <label>:1249                                    ; preds = %1246
  %1250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1251 = extractvalue %dx.types.CBufRet.f32 %1250, 1
  %1252 = fsub fast float %973, %1251
  %1253 = extractvalue %dx.types.CBufRet.f32 %1250, 3
  %1254 = fmul fast float %1252, %1253
  %1255 = call float @dx.op.unary.f32(i32 7, float %1254)  ; Saturate(value)
  %1256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.f32 %1256, 3
  %1258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.f32 %1258, 2
  %1260 = fsub fast float %1259, %961
  %1261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1262 = extractvalue %dx.types.CBufRet.f32 %1261, 3
  %1263 = fmul fast float %1260, %1262
  %1264 = call float @dx.op.unary.f32(i32 7, float %1263)  ; Saturate(value)
  %1265 = fmul fast float %1264, %1257
  %1266 = extractvalue %dx.types.CBufRet.f32 %1261, 0
  %1267 = fsub fast float %473, %1266
  %1268 = extractvalue %dx.types.CBufRet.f32 %1261, 1
  %1269 = fmul fast float %1267, %1268
  %1270 = call float @dx.op.unary.f32(i32 7, float %1269)  ; Saturate(value)
  %1271 = fsub fast float 1.000000e+00, %1255
  %1272 = fmul fast float %1270, %1271
  %1273 = fadd fast float %1272, %1255
  %1274 = extractvalue %dx.types.CBufRet.f32 %1250, 0
  %1275 = fsub fast float %1265, %1274
  %1276 = fmul fast float %1275, %1273
  %1277 = fadd fast float %1276, %1274
  %1278 = fmul fast float %1277, %973
  %1279 = fadd fast float %1278, %1247
  br label %1280

; <label>:1280                                    ; preds = %1249, %1246
  %1281 = phi float [ %1279, %1249 ], [ %1247, %1246 ]
  %1282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1283 = extractvalue %dx.types.CBufRet.f32 %1282, 1
  %1284 = fcmp fast ogt float %1281, %1283
  br i1 %1284, label %1287, label %1285, !dx.controlflow.hints !69

; <label>:1285                                    ; preds = %1280
  %1286 = fadd fast float %973, %473
  br label %1420

; <label>:1287                                    ; preds = %1280
  %1288 = fmul fast float %1281, 0xBFF7154760000000
  %1289 = call float @dx.op.unary.f32(i32 21, float %1288)  ; Exp(value)
  %1290 = call float @dx.op.unary.f32(i32 7, float %1289)  ; Saturate(value)
  %1291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1292 = extractvalue %dx.types.CBufRet.f32 %1291, 0
  %1293 = extractvalue %dx.types.CBufRet.f32 %1291, 1
  %1294 = extractvalue %dx.types.CBufRet.f32 %1291, 2
  %1295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1296 = extractvalue %dx.types.CBufRet.f32 %1295, 0
  %1297 = fmul fast float %1296, %1292
  %1298 = fmul fast float %1296, %1293
  %1299 = fmul fast float %1296, %1294
  %1300 = fadd fast float %1297, %470
  %1301 = fadd fast float %1298, %471
  %1302 = fadd fast float %1299, %472
  br i1 %786, label %1373, label %1303, !dx.controlflow.hints !55

; <label>:1303                                    ; preds = %1287
  %1304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1305 = extractvalue %dx.types.CBufRet.i32 %1304, 1
  %1306 = and i32 %1305, 1
  %1307 = icmp eq i32 %1306, 0
  br i1 %1307, label %1308, label %1373, !dx.controlflow.hints !56

; <label>:1308                                    ; preds = %1303
  %1309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1310 = extractvalue %dx.types.CBufRet.f32 %1309, 2
  %1311 = extractvalue %dx.types.CBufRet.f32 %1309, 3
  %1312 = fmul fast float %1310, %1300
  %1313 = fmul fast float %1311, %1301
  %1314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.f32 %1314, 0
  %1316 = extractvalue %dx.types.CBufRet.f32 %1314, 1
  %1317 = fadd fast float %1312, %1315
  %1318 = fadd fast float %1313, %1316
  %1319 = call float @dx.op.unary.f32(i32 7, float %1317)  ; Saturate(value)
  %1320 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1319, float %1320, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1322 = extractvalue %dx.types.ResRet.f32 %1321, 0
  %1323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.f32 %1323, 0
  %1325 = fmul fast float %1324, %1322
  %1326 = fsub fast float %1317, %1319
  %1327 = fsub fast float %1318, %1320
  %1328 = extractvalue %dx.types.CBufRet.f32 %1309, 0
  %1329 = extractvalue %dx.types.CBufRet.f32 %1309, 1
  %1330 = fmul fast float %1328, %1326
  %1331 = fmul fast float %1329, %1327
  %1332 = fmul fast float %1330, %1330
  %1333 = fmul fast float %1331, %1331
  %1334 = fadd fast float %1332, %1333
  %1335 = call float @dx.op.unary.f32(i32 24, float %1334)  ; Sqrt(value)
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 3
  %1338 = fmul fast float %1337, %1335
  %1339 = call float @dx.op.unary.f32(i32 7, float %1338)  ; Saturate(value)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1336, 2
  %1341 = fsub fast float %1340, %1325
  %1342 = fmul fast float %1341, %1339
  %1343 = extractvalue %dx.types.CBufRet.f32 %1323, 1
  %1344 = fsub fast float %1302, %1325
  %1345 = fsub fast float %1344, %1343
  %1346 = fsub fast float %1345, %1342
  %1347 = extractvalue %dx.types.CBufRet.i32 %1304, 0
  %1348 = icmp eq i32 %1347, 0
  br i1 %1348, label %1367, label %1349

; <label>:1349                                    ; preds = %1308
  br label %1350

; <label>:1350                                    ; preds = %1362, %1349
  %1351 = phi i32 [ %1363, %1362 ], [ 0, %1349 ]
  %1352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.f32 %1352, 1
  %1354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1355 = extractvalue %dx.types.CBufRet.i32 %1354, 1
  %1356 = and i32 %1355, 8
  %1357 = icmp eq i32 %1356, 0
  %1358 = fcmp fast ogt float %1353, %1346
  %1359 = or i1 %1358, %1357
  br i1 %1359, label %1360, label %1361, !dx.controlflow.hints !57

; <label>:1360                                    ; preds = %1350
  br label %1362

; <label>:1361                                    ; preds = %1350
  br label %1362

; <label>:1362                                    ; preds = %1361, %1360
  %1363 = add i32 %1351, 1
  %1364 = extractvalue %dx.types.CBufRet.i32 %1354, 0
  %1365 = icmp ult i32 %1363, %1364
  br i1 %1365, label %1350, label %1366

; <label>:1366                                    ; preds = %1362
  br label %1367

; <label>:1367                                    ; preds = %1366, %1308
  br label %1368

; <label>:1368                                    ; preds = %1368, %1367
  %1369 = phi i32 [ %1370, %1368 ], [ 0, %1367 ]
  %1370 = add nuw nsw i32 %1369, 1
  %1371 = icmp eq i32 %1370, 4
  br i1 %1371, label %1372, label %1368

; <label>:1372                                    ; preds = %1368
  br label %1373

; <label>:1373                                    ; preds = %1372, %1303, %1287
  %1374 = fsub fast float 1.000000e+00, %1290
  %1375 = fdiv fast float %1281, %973
  %1376 = fadd fast float %973, %473
  %1377 = fmul fast float %473, %473
  %1378 = fmul fast float %1376, %1376
  %1379 = fsub fast float %1377, %1378
  %1380 = fmul fast float %1379, -5.000000e-01
  %1381 = fmul fast float %1380, %1375
  %1382 = fadd fast float %1381, %468
  %1383 = fadd fast float %1281, %477
  %1384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1385 = extractvalue %dx.types.CBufRet.i32 %1384, 0
  %1386 = icmp eq i32 %1385, 0
  br i1 %1386, label %1413, label %1387, !dx.controlflow.hints !70

; <label>:1387                                    ; preds = %1373
  %1388 = icmp ne i32 %482, 0
  %1389 = zext i1 %1388 to i32
  %1390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.f32 %1390, 2
  %1392 = extractvalue %dx.types.CBufRet.f32 %1390, 0
  %1393 = fsub fast float %1376, %1392
  %1394 = fmul fast float %1393, %1391
  %1395 = call float @dx.op.unary.f32(i32 7, float %1394)  ; Saturate(value)
  %1396 = fadd fast float %1395, -5.000000e-01
  %1397 = fmul fast float %1396, 2.000000e+00
  %1398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.f32 %1398, 2
  %1400 = fcmp fast olt float %1397, %1399
  br i1 %1400, label %1401, label %1413, !dx.controlflow.hints !71

; <label>:1401                                    ; preds = %1387
  %1402 = fmul fast float %1397, %1397
  %1403 = fmul fast float %1374, %469
  %1404 = fmul fast float %1397, %1403
  %1405 = fmul fast float %1402, %1403
  %1406 = fmul fast float %1404, %1402
  %1407 = fmul fast float %1402, %1402
  %1408 = fmul fast float %1407, %1403
  %1409 = fadd fast float %1404, %478
  %1410 = fadd fast float %1405, %479
  %1411 = fadd fast float %1406, %480
  %1412 = fadd fast float %1408, %481
  br label %1413

; <label>:1413                                    ; preds = %1401, %1387, %1373
  %1414 = phi float [ %478, %1373 ], [ %1409, %1401 ], [ %478, %1387 ]
  %1415 = phi float [ %479, %1373 ], [ %1410, %1401 ], [ %479, %1387 ]
  %1416 = phi float [ %480, %1373 ], [ %1411, %1401 ], [ %480, %1387 ]
  %1417 = phi float [ %481, %1373 ], [ %1412, %1401 ], [ %481, %1387 ]
  %1418 = phi i32 [ %482, %1373 ], [ 1, %1401 ], [ %1389, %1387 ]
  %1419 = fmul fast float %1290, %469
  br label %1420

; <label>:1420                                    ; preds = %1413, %1285
  %1421 = phi float [ %1286, %1285 ], [ %1376, %1413 ]
  %1422 = phi float [ %468, %1285 ], [ %1382, %1413 ]
  %1423 = phi float [ %469, %1285 ], [ %1419, %1413 ]
  %1424 = phi float [ %477, %1285 ], [ %1383, %1413 ]
  %1425 = phi float [ %478, %1285 ], [ %1414, %1413 ]
  %1426 = phi float [ %479, %1285 ], [ %1415, %1413 ]
  %1427 = phi float [ %480, %1285 ], [ %1416, %1413 ]
  %1428 = phi float [ %481, %1285 ], [ %1417, %1413 ]
  %1429 = phi i32 [ %482, %1285 ], [ %1418, %1413 ]
  %1430 = fmul fast float %973, %275
  %1431 = fmul fast float %973, %276
  %1432 = fmul fast float %973, %277
  %1433 = fadd fast float %1430, %470
  %1434 = fadd fast float %1431, %471
  %1435 = fadd fast float %1432, %472
  %1436 = fcmp fast olt float %1421, %439
  %1437 = extractvalue %dx.types.CBufRet.f32 %1282, 2
  %1438 = fcmp fast olt float %1437, %1423
  %1439 = and i1 %1436, %1438
  br i1 %1439, label %461, label %1440

; <label>:1440                                    ; preds = %1420
  %1441 = uitofp i32 %485 to float
  br label %1442

; <label>:1442                                    ; preds = %1440, %432
  %1443 = phi float [ 0.000000e+00, %432 ], [ %1422, %1440 ]
  %1444 = phi float [ 1.000000e+00, %432 ], [ %1423, %1440 ]
  %1445 = phi float [ 0.000000e+00, %432 ], [ %1441, %1440 ]
  %1446 = phi float [ 0.000000e+00, %432 ], [ %1424, %1440 ]
  %1447 = phi float [ 0.000000e+00, %432 ], [ %1425, %1440 ]
  %1448 = phi float [ 0.000000e+00, %432 ], [ %1426, %1440 ]
  %1449 = phi float [ 0.000000e+00, %432 ], [ %1427, %1440 ]
  %1450 = phi float [ 0.000000e+00, %432 ], [ %1428, %1440 ]
  %1451 = phi i32 [ 0, %432 ], [ %1429, %1440 ]
  %1452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1453 = extractvalue %dx.types.CBufRet.i32 %1452, 0
  %1454 = icmp eq i32 %1453, 0
  br i1 %1454, label %1496, label %1455, !dx.controlflow.hints !72

; <label>:1455                                    ; preds = %1442
  %1456 = icmp eq i32 %1451, 0
  br i1 %1456, label %1495, label %1457, !dx.controlflow.hints !73

; <label>:1457                                    ; preds = %1455
  %1458 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1459 = extractvalue %dx.types.CBufRet.i32 %1458, 2
  %1460 = icmp eq i32 %1459, 0
  br i1 %1460, label %1467, label %1461, !dx.controlflow.hints !74

; <label>:1461                                    ; preds = %1457
  %1462 = fsub fast float 1.000000e+00, %1444
  %1463 = fdiv fast float %1447, %1462
  %1464 = fdiv fast float %1448, %1462
  %1465 = fdiv fast float %1449, %1462
  %1466 = fdiv fast float %1450, %1462
  br label %1472

; <label>:1467                                    ; preds = %1457
  %1468 = fadd fast float %1447, %1444
  %1469 = fadd fast float %1448, %1444
  %1470 = fadd fast float %1449, %1444
  %1471 = fadd fast float %1450, %1444
  br label %1472

; <label>:1472                                    ; preds = %1467, %1461
  %1473 = phi float [ %1463, %1461 ], [ %1468, %1467 ]
  %1474 = phi float [ %1464, %1461 ], [ %1469, %1467 ]
  %1475 = phi float [ %1465, %1461 ], [ %1470, %1467 ]
  %1476 = phi float [ %1466, %1461 ], [ %1471, %1467 ]
  %1477 = call float @dx.op.binary.f32(i32 35, float %1473, float -1.000000e+00)  ; FMax(a,b)
  %1478 = call float @dx.op.binary.f32(i32 35, float %1474, float -1.000000e+00)  ; FMax(a,b)
  %1479 = call float @dx.op.binary.f32(i32 35, float %1475, float -1.000000e+00)  ; FMax(a,b)
  %1480 = call float @dx.op.binary.f32(i32 35, float %1476, float -1.000000e+00)  ; FMax(a,b)
  %1481 = call float @dx.op.binary.f32(i32 36, float %1477, float 1.000000e+00)  ; FMin(a,b)
  %1482 = call float @dx.op.binary.f32(i32 36, float %1478, float 1.000000e+00)  ; FMin(a,b)
  %1483 = call float @dx.op.binary.f32(i32 36, float %1479, float 1.000000e+00)  ; FMin(a,b)
  %1484 = call float @dx.op.binary.f32(i32 36, float %1480, float 1.000000e+00)  ; FMin(a,b)
  %1485 = fmul fast float %1481, 1.500000e+00
  %1486 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1483, float %1485)  ; FMad(a,b,c)
  %1487 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1482, float 0.000000e+00)  ; FMad(a,b,c)
  %1488 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1484, float %1487)  ; FMad(a,b,c)
  %1489 = fmul fast float %1481, 0x3FEBB67AE0000000
  %1490 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1483, float %1489)  ; FMad(a,b,c)
  %1491 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1482, float 0.000000e+00)  ; FMad(a,b,c)
  %1492 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1484, float %1491)  ; FMad(a,b,c)
  %1493 = fadd fast float %1486, 5.000000e-01
  %1494 = fadd fast float %1490, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 0, float %1493, float %1488, float %1494, float %1492, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1496

; <label>:1495                                    ; preds = %1455
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1496

; <label>:1496                                    ; preds = %1495, %1472, %1442
  %1497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1498 = extractvalue %dx.types.CBufRet.f32 %1497, 0
  %1499 = extractvalue %dx.types.CBufRet.f32 %1497, 1
  %1500 = extractvalue %dx.types.CBufRet.f32 %1497, 2
  %1501 = call float @dx.op.dot3.f32(i32 55, float %275, float %276, float %277, float %1498, float %1499, float %1500)  ; Dot3(ax,ay,az,bx,by,bz)
  %1502 = fmul fast float %1501, %1443
  %1503 = fcmp fast ogt float %1446, 0.000000e+00
  %1504 = fdiv fast float 1.000000e+00, %1446
  %1505 = fmul fast float %1502, %1504
  %1506 = select i1 %1503, float %1505, float %286
  %1507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1508 = extractvalue %dx.types.CBufRet.f32 %1507, 0
  %1509 = extractvalue %dx.types.CBufRet.f32 %1507, 1
  %1510 = extractvalue %dx.types.CBufRet.f32 %1507, 2
  %1511 = fmul fast float %1508, %239
  %1512 = fmul fast float %1509, %239
  %1513 = fmul fast float %1510, %239
  %1514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1515 = extractvalue %dx.types.CBufRet.f32 %1514, 0
  %1516 = extractvalue %dx.types.CBufRet.f32 %1514, 1
  %1517 = extractvalue %dx.types.CBufRet.f32 %1514, 2
  %1518 = fmul fast float %1515, %240
  %1519 = fmul fast float %1516, %240
  %1520 = fmul fast float %1517, %240
  %1521 = fadd fast float %1518, %1511
  %1522 = fadd fast float %1519, %1512
  %1523 = fadd fast float %1520, %1513
  %1524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1525 = extractvalue %dx.types.CBufRet.f32 %1524, 0
  %1526 = extractvalue %dx.types.CBufRet.f32 %1524, 1
  %1527 = extractvalue %dx.types.CBufRet.f32 %1524, 2
  %1528 = fadd fast float %1521, %1525
  %1529 = fadd fast float %1522, %1526
  %1530 = fadd fast float %1523, %1527
  %1531 = fmul fast float %1528, %1506
  %1532 = fmul fast float %1529, %1506
  %1533 = fmul fast float %1530, %1506
  %1534 = call float @dx.op.dot3.f32(i32 55, float %1531, float %1532, float %1533, float %1531, float %1532, float %1533)  ; Dot3(ax,ay,az,bx,by,bz)
  %1535 = call float @dx.op.unary.f32(i32 25, float %1534)  ; Rsqrt(value)
  %1536 = fmul fast float %1535, %1534
  %1537 = fmul fast float %1535, %1531
  %1538 = fmul fast float %1535, %1532
  %1539 = fmul fast float %1535, %1533
  %1540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1541 = extractvalue %dx.types.CBufRet.i32 %1540, 1
  %1542 = and i32 %1541, 1
  %1543 = icmp ne i32 %1542, 0
  %1544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1545 = extractvalue %dx.types.CBufRet.f32 %1544, 2
  %1546 = fcmp fast ogt float %1545, 0.000000e+00
  %1547 = and i1 %1543, %1546
  br i1 %1547, label %1548, label %1706, !dx.controlflow.hints !75

; <label>:1548                                    ; preds = %1496
  %1549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1550 = extractvalue %dx.types.CBufRet.f32 %1549, 2
  %1551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1552 = extractvalue %dx.types.CBufRet.f32 %1551, 2
  %1553 = fsub fast float %1550, %1552
  %1554 = extractvalue %dx.types.CBufRet.i32 %1540, 0
  %1555 = call i32 @dx.op.binary.i32(i32 40, i32 %1554, i32 3)  ; UMin(a,b)
  %1556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.f32 %1556, 0
  %1558 = extractvalue %dx.types.CBufRet.f32 %1556, 1
  %1559 = extractvalue %dx.types.CBufRet.f32 %1551, 0
  %1560 = extractvalue %dx.types.CBufRet.f32 %1551, 1
  %1561 = fsub fast float %1557, %1559
  %1562 = fsub fast float %1558, %1560
  %1563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1564 = extractvalue %dx.types.CBufRet.f32 %1563, 0
  %1565 = fcmp fast ogt float %1564, 0.000000e+00
  %1566 = fsub fast float -0.000000e+00, %1561
  %1567 = fsub fast float -0.000000e+00, %1562
  %1568 = call float @dx.op.dot2.f32(i32 54, float %1537, float %1538, float %1537, float %1538)  ; Dot2(ax,ay,bx,by)
  %1569 = call float @dx.op.dot2.f32(i32 54, float %1537, float %1538, float %1566, float %1567)  ; Dot2(ax,ay,bx,by)
  %1570 = fmul fast float %1569, 2.000000e+00
  %1571 = call float @dx.op.dot2.f32(i32 54, float %1566, float %1567, float %1566, float %1567)  ; Dot2(ax,ay,bx,by)
  %1572 = fmul fast float %1564, %1564
  %1573 = fsub fast float %1571, %1572
  %1574 = fmul fast float %1570, %1570
  %1575 = fmul fast float %1568, 4.000000e+00
  %1576 = fmul fast float %1575, %1573
  %1577 = fsub fast float %1574, %1576
  %1578 = fcmp fast ogt float %1577, 0.000000e+00
  br i1 %1578, label %1579, label %1594, !dx.controlflow.hints !76

; <label>:1579                                    ; preds = %1548
  %1580 = fcmp fast ogt float %1570, 0.000000e+00
  %1581 = call float @dx.op.unary.f32(i32 24, float %1577)  ; Sqrt(value)
  %1582 = fsub fast float -0.000000e+00, %1581
  %1583 = select i1 %1580, float %1581, float %1582
  %1584 = fadd fast float %1583, %1570
  %1585 = fmul float %1584, -5.000000e-01
  %1586 = fdiv fast float %1585, %1568
  %1587 = call float @dx.op.binary.f32(i32 35, float %1586, float 0.000000e+00)  ; FMax(a,b)
  %1588 = call float @dx.op.binary.f32(i32 36, float %1536, float %1587)  ; FMin(a,b)
  %1589 = fdiv fast float %1573, %1585
  %1590 = call float @dx.op.binary.f32(i32 35, float %1589, float 0.000000e+00)  ; FMax(a,b)
  %1591 = call float @dx.op.binary.f32(i32 36, float %1536, float %1590)  ; FMin(a,b)
  %1592 = call float @dx.op.binary.f32(i32 36, float %1588, float %1591)  ; FMin(a,b)
  %1593 = call float @dx.op.binary.f32(i32 35, float %1588, float %1591)  ; FMax(a,b)
  br label %1594

; <label>:1594                                    ; preds = %1579, %1548
  %1595 = phi float [ %1593, %1579 ], [ -1.000000e+00, %1548 ]
  %1596 = phi float [ %1592, %1579 ], [ -1.000000e+00, %1548 ]
  %1597 = phi i1 [ true, %1579 ], [ false, %1548 ]
  %1598 = and i1 %1565, %1597
  br i1 %1598, label %1599, label %1601, !dx.controlflow.hints !77

; <label>:1599                                    ; preds = %1594
  %1600 = fcmp fast oeq float %1596, %1595
  br i1 %1600, label %1706, label %1602, !dx.controlflow.hints !78

; <label>:1601                                    ; preds = %1594
  br i1 %1565, label %1706, label %1602, !dx.controlflow.hints !79

; <label>:1602                                    ; preds = %1601, %1599
  %1603 = phi float [ %1536, %1601 ], [ %1595, %1599 ]
  %1604 = phi float [ 0.000000e+00, %1601 ], [ %1596, %1599 ]
  %1605 = fcmp fast oeq float %1539, 0.000000e+00
  %1606 = fdiv fast float %1553, %1539
  %1607 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1606)  ; FMax(a,b)
  %1608 = select i1 %1605, float %1603, float %1607
  %1609 = call float @dx.op.binary.f32(i32 36, float %1603, float %1608)  ; FMin(a,b)
  %1610 = fcmp fast ogt float %1539, 0.000000e+00
  %1611 = fcmp fast olt float %1553, 0.000000e+00
  br i1 %1610, label %1612, label %1613, !dx.controlflow.hints !80

; <label>:1612                                    ; preds = %1602
  br i1 %1611, label %1706, label %1616, !dx.controlflow.hints !81

; <label>:1613                                    ; preds = %1602
  br i1 %1611, label %1614, label %1616, !dx.controlflow.hints !82

; <label>:1614                                    ; preds = %1613
  %1615 = call float @dx.op.binary.f32(i32 35, float %1604, float %1609)  ; FMax(a,b)
  br label %1616

; <label>:1616                                    ; preds = %1614, %1613, %1612
  %1617 = phi float [ %1615, %1614 ], [ %1604, %1613 ], [ %1604, %1612 ]
  %1618 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 0
  store float -1.000000e+00, float* %1618, align 4, !tbaa !83, !noalias !87
  %1619 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 1
  store float -1.000000e+00, float* %1619, align 4, !tbaa !83, !noalias !87
  %1620 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 2
  store float -1.000000e+00, float* %1620, align 4, !tbaa !83, !noalias !87
  %1621 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 0
  store float -1.000000e+00, float* %1621, align 4, !tbaa !83, !noalias !87
  %1622 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 1
  store float -1.000000e+00, float* %1622, align 4, !tbaa !83, !noalias !87
  %1623 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 2
  store float -1.000000e+00, float* %1623, align 4, !tbaa !83, !noalias !87
  %1624 = icmp sgt i32 %1555, 0
  br i1 %1624, label %1625, label %1683

; <label>:1625                                    ; preds = %1616
  br label %1626

; <label>:1626                                    ; preds = %1673, %1625
  %1627 = phi i32 [ %1674, %1673 ], [ 0, %1625 ]
  %1628 = add nuw i32 %1627, 171
  %1629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %1628)  ; CBufferLoadLegacy(handle,regIndex)
  %1630 = extractvalue %dx.types.CBufRet.f32 %1629, 0
  %1631 = extractvalue %dx.types.CBufRet.f32 %1629, 1
  %1632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1633 = extractvalue %dx.types.CBufRet.f32 %1632, 0
  %1634 = extractvalue %dx.types.CBufRet.f32 %1632, 1
  %1635 = fsub fast float %1630, %1633
  %1636 = fsub fast float %1631, %1634
  %1637 = extractvalue %dx.types.CBufRet.f32 %1629, 2
  %1638 = fsub fast float -0.000000e+00, %1635
  %1639 = fsub fast float -0.000000e+00, %1636
  %1640 = call float @dx.op.dot2.f32(i32 54, float %1537, float %1538, float %1638, float %1639)  ; Dot2(ax,ay,bx,by)
  %1641 = fmul fast float %1640, 2.000000e+00
  %1642 = call float @dx.op.dot2.f32(i32 54, float %1638, float %1639, float %1638, float %1639)  ; Dot2(ax,ay,bx,by)
  %1643 = fmul fast float %1637, %1637
  %1644 = fsub fast float %1642, %1643
  %1645 = fmul fast float %1641, %1641
  %1646 = fmul fast float %1575, %1644
  %1647 = fsub fast float %1645, %1646
  %1648 = fcmp fast ogt float %1647, 0.000000e+00
  br i1 %1648, label %1649, label %1664, !dx.controlflow.hints !76

; <label>:1649                                    ; preds = %1626
  %1650 = fcmp fast ogt float %1641, 0.000000e+00
  %1651 = call float @dx.op.unary.f32(i32 24, float %1647)  ; Sqrt(value)
  %1652 = fsub fast float -0.000000e+00, %1651
  %1653 = select i1 %1650, float %1651, float %1652
  %1654 = fadd fast float %1653, %1641
  %1655 = fmul float %1654, -5.000000e-01
  %1656 = fdiv fast float %1655, %1568
  %1657 = call float @dx.op.binary.f32(i32 35, float %1656, float 0.000000e+00)  ; FMax(a,b)
  %1658 = call float @dx.op.binary.f32(i32 36, float %1603, float %1657)  ; FMin(a,b)
  %1659 = fdiv fast float %1644, %1655
  %1660 = call float @dx.op.binary.f32(i32 35, float %1659, float 0.000000e+00)  ; FMax(a,b)
  %1661 = call float @dx.op.binary.f32(i32 36, float %1603, float %1660)  ; FMin(a,b)
  %1662 = call float @dx.op.binary.f32(i32 36, float %1658, float %1661)  ; FMin(a,b)
  %1663 = call float @dx.op.binary.f32(i32 35, float %1658, float %1661)  ; FMax(a,b)
  br label %1664

; <label>:1664                                    ; preds = %1649, %1626
  %1665 = phi float [ %1663, %1649 ], [ -1.000000e+00, %1626 ]
  %1666 = phi float [ %1662, %1649 ], [ -1.000000e+00, %1626 ]
  %1667 = phi i1 [ true, %1649 ], [ false, %1626 ]
  br i1 %1667, label %1668, label %1673, !dx.controlflow.hints !98

; <label>:1668                                    ; preds = %1664
  %1669 = call float @dx.op.binary.f32(i32 35, float %1617, float %1666)  ; FMax(a,b)
  %1670 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %1627
  store float %1669, float* %1670, align 4, !tbaa !83, !noalias !87
  %1671 = call float @dx.op.binary.f32(i32 35, float %1617, float %1665)  ; FMax(a,b)
  %1672 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 %1627
  store float %1671, float* %1672, align 4, !tbaa !83, !noalias !87
  br label %1673

; <label>:1673                                    ; preds = %1668, %1664
  %1674 = add nuw nsw i32 %1627, 1
  %1675 = icmp eq i32 %1674, %1555
  br i1 %1675, label %1676, label %1626

; <label>:1676                                    ; preds = %1673
  %1677 = load float, float* %1620, align 4, !tbaa !83, !alias.scope !99, !noalias !102
  %1678 = load float, float* %1619, align 4, !tbaa !83, !alias.scope !105, !noalias !106
  %1679 = load float, float* %1618, align 4, !tbaa !83, !alias.scope !107, !noalias !108
  %1680 = load float, float* %1623, align 4, !tbaa !83, !alias.scope !109, !noalias !112
  %1681 = load float, float* %1622, align 4, !tbaa !83, !alias.scope !115, !noalias !116
  %1682 = load float, float* %1621, align 4, !tbaa !83, !alias.scope !117, !noalias !118
  br label %1683

; <label>:1683                                    ; preds = %1676, %1616
  %1684 = phi float [ -1.000000e+00, %1616 ], [ %1682, %1676 ]
  %1685 = phi float [ -1.000000e+00, %1616 ], [ %1681, %1676 ]
  %1686 = phi float [ -1.000000e+00, %1616 ], [ %1680, %1676 ]
  %1687 = phi float [ -1.000000e+00, %1616 ], [ %1679, %1676 ]
  %1688 = phi float [ -1.000000e+00, %1616 ], [ %1678, %1676 ]
  %1689 = phi float [ -1.000000e+00, %1616 ], [ %1677, %1676 ]
  %1690 = call float @dx.op.binary.f32(i32 36, float %1688, float %1689)  ; FMin(a,b)
  %1691 = call float @dx.op.binary.f32(i32 36, float %1687, float %1690)  ; FMin(a,b)
  %1692 = call float @dx.op.binary.f32(i32 35, float %1687, float %1688)  ; FMax(a,b)
  %1693 = call float @dx.op.binary.f32(i32 36, float %1692, float %1689)  ; FMin(a,b)
  %1694 = call float @dx.op.binary.f32(i32 36, float %1687, float %1688)  ; FMin(a,b)
  %1695 = call float @dx.op.binary.f32(i32 35, float %1694, float %1693)  ; FMax(a,b)
  %1696 = call float @dx.op.binary.f32(i32 35, float %1688, float %1689)  ; FMax(a,b)
  %1697 = call float @dx.op.binary.f32(i32 35, float %1687, float %1696)  ; FMax(a,b)
  store float %1691, float* %1618, align 4, !tbaa !83, !alias.scope !107, !noalias !108
  store float %1695, float* %1619, align 4, !tbaa !83, !alias.scope !105, !noalias !106
  store float %1697, float* %1620, align 4, !tbaa !83, !alias.scope !99, !noalias !102
  %1698 = call float @dx.op.binary.f32(i32 36, float %1685, float %1686)  ; FMin(a,b)
  %1699 = call float @dx.op.binary.f32(i32 36, float %1684, float %1698)  ; FMin(a,b)
  %1700 = call float @dx.op.binary.f32(i32 35, float %1684, float %1685)  ; FMax(a,b)
  %1701 = call float @dx.op.binary.f32(i32 36, float %1700, float %1686)  ; FMin(a,b)
  %1702 = call float @dx.op.binary.f32(i32 36, float %1684, float %1685)  ; FMin(a,b)
  %1703 = call float @dx.op.binary.f32(i32 35, float %1702, float %1701)  ; FMax(a,b)
  %1704 = call float @dx.op.binary.f32(i32 35, float %1685, float %1686)  ; FMax(a,b)
  %1705 = call float @dx.op.binary.f32(i32 35, float %1684, float %1704)  ; FMax(a,b)
  store float %1699, float* %1621, align 4, !tbaa !83, !alias.scope !117, !noalias !118
  store float %1703, float* %1622, align 4, !tbaa !83, !alias.scope !115, !noalias !116
  store float %1705, float* %1623, align 4, !tbaa !83, !alias.scope !109, !noalias !112
  br label %1706

; <label>:1706                                    ; preds = %1683, %1612, %1601, %1599, %1496
  %1707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1708 = extractvalue %dx.types.CBufRet.f32 %1707, 2
  %1709 = fmul fast float %1708, %1506
  %1710 = call float @dx.op.unary.f32(i32 7, float %1709)  ; Saturate(value)
  %1711 = fptoui float %1445 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1712 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %19
  store i32 %1711, i32 addrspace(3)* %1712, align 4, !tbaa !119
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1713 = and i32 %19, 63
  %1714 = icmp ult i32 %1713, 32
  br i1 %1714, label %1715, label %1721, !dx.controlflow.hints !121

; <label>:1715                                    ; preds = %1706
  %1716 = add i32 %19, 32
  %1717 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1716
  %1718 = load i32, i32 addrspace(3)* %1717, align 4, !tbaa !119
  %1719 = load i32, i32 addrspace(3)* %1712, align 4, !tbaa !119
  %1720 = call i32 @dx.op.binary.i32(i32 40, i32 %1719, i32 %1718)  ; UMin(a,b)
  store i32 %1720, i32 addrspace(3)* %1712, align 4, !tbaa !119
  br label %1721

; <label>:1721                                    ; preds = %1715, %1706
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1722 = icmp ult i32 %1713, 16
  br i1 %1722, label %1723, label %1729, !dx.controlflow.hints !122

; <label>:1723                                    ; preds = %1721
  %1724 = add i32 %19, 16
  %1725 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1724
  %1726 = load i32, i32 addrspace(3)* %1725, align 4, !tbaa !119
  %1727 = load i32, i32 addrspace(3)* %1712, align 4, !tbaa !119
  %1728 = call i32 @dx.op.binary.i32(i32 40, i32 %1727, i32 %1726)  ; UMin(a,b)
  store i32 %1728, i32 addrspace(3)* %1712, align 4, !tbaa !119
  br label %1729

; <label>:1729                                    ; preds = %1723, %1721
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1730 = icmp ult i32 %1713, 8
  br i1 %1730, label %1731, label %1737, !dx.controlflow.hints !123

; <label>:1731                                    ; preds = %1729
  %1732 = add i32 %19, 8
  %1733 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1732
  %1734 = load i32, i32 addrspace(3)* %1733, align 4, !tbaa !119
  %1735 = load i32, i32 addrspace(3)* %1712, align 4, !tbaa !119
  %1736 = call i32 @dx.op.binary.i32(i32 40, i32 %1735, i32 %1734)  ; UMin(a,b)
  store i32 %1736, i32 addrspace(3)* %1712, align 4, !tbaa !119
  br label %1737

; <label>:1737                                    ; preds = %1731, %1729
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1738 = icmp ult i32 %1713, 4
  br i1 %1738, label %1739, label %1745, !dx.controlflow.hints !124

; <label>:1739                                    ; preds = %1737
  %1740 = add i32 %19, 4
  %1741 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1740
  %1742 = load i32, i32 addrspace(3)* %1741, align 4, !tbaa !119
  %1743 = load i32, i32 addrspace(3)* %1712, align 4, !tbaa !119
  %1744 = call i32 @dx.op.binary.i32(i32 40, i32 %1743, i32 %1742)  ; UMin(a,b)
  store i32 %1744, i32 addrspace(3)* %1712, align 4, !tbaa !119
  br label %1745

; <label>:1745                                    ; preds = %1739, %1737
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1746 = icmp ult i32 %1713, 2
  br i1 %1746, label %1747, label %1753, !dx.controlflow.hints !125

; <label>:1747                                    ; preds = %1745
  %1748 = add i32 %19, 2
  %1749 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1748
  %1750 = load i32, i32 addrspace(3)* %1749, align 4, !tbaa !119
  %1751 = load i32, i32 addrspace(3)* %1712, align 4, !tbaa !119
  %1752 = call i32 @dx.op.binary.i32(i32 40, i32 %1751, i32 %1750)  ; UMin(a,b)
  store i32 %1752, i32 addrspace(3)* %1712, align 4, !tbaa !119
  br label %1753

; <label>:1753                                    ; preds = %1747, %1745
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1754 = icmp eq i32 %1713, 0
  br i1 %1754, label %1755, label %1761, !dx.controlflow.hints !126

; <label>:1755                                    ; preds = %1753
  %1756 = add i32 %19, 1
  %1757 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1756
  %1758 = load i32, i32 addrspace(3)* %1757, align 4, !tbaa !119
  %1759 = load i32, i32 addrspace(3)* %1712, align 4, !tbaa !119
  %1760 = call i32 @dx.op.binary.i32(i32 40, i32 %1759, i32 %1758)  ; UMin(a,b)
  store i32 %1760, i32 addrspace(3)* %1712, align 4, !tbaa !119
  br label %1761

; <label>:1761                                    ; preds = %1755, %1753
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1762 = and i32 %19, -64
  %1763 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1762
  %1764 = load i32, i32 addrspace(3)* %1763, align 4, !tbaa !119
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1711, i32 addrspace(3)* %1712, align 4, !tbaa !119
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1714, label %1765, label %1771, !dx.controlflow.hints !127

; <label>:1765                                    ; preds = %1761
  %1766 = add i32 %19, 32
  %1767 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1766
  %1768 = load i32, i32 addrspace(3)* %1767, align 4, !tbaa !119
  %1769 = load i32, i32 addrspace(3)* %1712, align 4, !tbaa !119
  %1770 = call i32 @dx.op.binary.i32(i32 39, i32 %1769, i32 %1768)  ; UMax(a,b)
  store i32 %1770, i32 addrspace(3)* %1712, align 4, !tbaa !119
  br label %1771

; <label>:1771                                    ; preds = %1765, %1761
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1722, label %1772, label %1778, !dx.controlflow.hints !128

; <label>:1772                                    ; preds = %1771
  %1773 = add i32 %19, 16
  %1774 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1773
  %1775 = load i32, i32 addrspace(3)* %1774, align 4, !tbaa !119
  %1776 = load i32, i32 addrspace(3)* %1712, align 4, !tbaa !119
  %1777 = call i32 @dx.op.binary.i32(i32 39, i32 %1776, i32 %1775)  ; UMax(a,b)
  store i32 %1777, i32 addrspace(3)* %1712, align 4, !tbaa !119
  br label %1778

; <label>:1778                                    ; preds = %1772, %1771
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1730, label %1779, label %1785, !dx.controlflow.hints !129

; <label>:1779                                    ; preds = %1778
  %1780 = add i32 %19, 8
  %1781 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1780
  %1782 = load i32, i32 addrspace(3)* %1781, align 4, !tbaa !119
  %1783 = load i32, i32 addrspace(3)* %1712, align 4, !tbaa !119
  %1784 = call i32 @dx.op.binary.i32(i32 39, i32 %1783, i32 %1782)  ; UMax(a,b)
  store i32 %1784, i32 addrspace(3)* %1712, align 4, !tbaa !119
  br label %1785

; <label>:1785                                    ; preds = %1779, %1778
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1738, label %1786, label %1792, !dx.controlflow.hints !130

; <label>:1786                                    ; preds = %1785
  %1787 = add i32 %19, 4
  %1788 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1787
  %1789 = load i32, i32 addrspace(3)* %1788, align 4, !tbaa !119
  %1790 = load i32, i32 addrspace(3)* %1712, align 4, !tbaa !119
  %1791 = call i32 @dx.op.binary.i32(i32 39, i32 %1790, i32 %1789)  ; UMax(a,b)
  store i32 %1791, i32 addrspace(3)* %1712, align 4, !tbaa !119
  br label %1792

; <label>:1792                                    ; preds = %1786, %1785
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1746, label %1793, label %1799, !dx.controlflow.hints !131

; <label>:1793                                    ; preds = %1792
  %1794 = add i32 %19, 2
  %1795 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1794
  %1796 = load i32, i32 addrspace(3)* %1795, align 4, !tbaa !119
  %1797 = load i32, i32 addrspace(3)* %1712, align 4, !tbaa !119
  %1798 = call i32 @dx.op.binary.i32(i32 39, i32 %1797, i32 %1796)  ; UMax(a,b)
  store i32 %1798, i32 addrspace(3)* %1712, align 4, !tbaa !119
  br label %1799

; <label>:1799                                    ; preds = %1793, %1792
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1754, label %1800, label %1806, !dx.controlflow.hints !132

; <label>:1800                                    ; preds = %1799
  %1801 = add i32 %19, 1
  %1802 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1801
  %1803 = load i32, i32 addrspace(3)* %1802, align 4, !tbaa !119
  %1804 = load i32, i32 addrspace(3)* %1712, align 4, !tbaa !119
  %1805 = call i32 @dx.op.binary.i32(i32 39, i32 %1804, i32 %1803)  ; UMax(a,b)
  store i32 %1805, i32 addrspace(3)* %1712, align 4, !tbaa !119
  br label %1806

; <label>:1806                                    ; preds = %1800, %1799
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1807 = load i32, i32 addrspace(3)* %1763, align 4, !tbaa !119
  %1808 = uitofp i32 %1807 to float
  %1809 = uitofp i32 %1764 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %17, i32 %18, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1811 = extractvalue %dx.types.CBufRet.f32 %1810, 0
  %1812 = fmul fast float %1811, %1445
  %1813 = fmul fast float %1811, %1808
  %1814 = fmul fast float %1811, %1809
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %17, i32 %18, i32 undef, float %1812, float %1813, float %1814, float %1812, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %17, i32 %18, i32 undef, float %1710, float %1710, float %1710, float %1710, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!28}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !15, !21, !24}
!5 = !{!6, !8, !9, !10, !12, !13, !14}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 164}
!12 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!13 = !{i32 5, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!14 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!15 = !{!16, !17, !18, !19}
!16 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!18 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!19 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !20}
!20 = !{i32 0, i32 14}
!21 = !{!22, !23}
!22 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!23 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!24 = !{!25, !26, !27}
!25 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!26 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!27 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!28 = !{void ()* @cs_fog_raymarching_air_heightmap_particles_brfog, !"cs_fog_raymarching_air_heightmap_particles_brfog", null, !4, !29}
!29 = !{i32 0, i64 272, i32 4, !30}
!30 = !{i32 8, i32 8, i32 1}
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
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = !{!84, !84, i64 0}
!84 = !{!"float", !85, i64 0}
!85 = !{!"omnipotent char", !86, i64 0}
!86 = !{!"Simple C/C++ TBAA"}
!87 = !{!88, !90, !92, !93, !95, !96, !97}
!88 = distinct !{!88, !89, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!89 = distinct !{!89, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!90 = distinct !{!90, !91, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!91 = distinct !{!91, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!92 = distinct !{!92, !91, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!93 = distinct !{!93, !94, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!94 = distinct !{!94, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!95 = distinct !{!95, !94, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!96 = distinct !{!96, !94, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!97 = distinct !{!97, !94, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = !{!100}
!100 = distinct !{!100, !101, !"\01?sort@@YAXAIAM00@Z: %c"}
!101 = distinct !{!101, !"\01?sort@@YAXAIAM00@Z"}
!102 = !{!103, !104, !88, !90, !92, !93, !95, !96, !97}
!103 = distinct !{!103, !101, !"\01?sort@@YAXAIAM00@Z: %a"}
!104 = distinct !{!104, !101, !"\01?sort@@YAXAIAM00@Z: %b"}
!105 = !{!104}
!106 = !{!103, !100, !88, !90, !92, !93, !95, !96, !97}
!107 = !{!103}
!108 = !{!104, !100, !88, !90, !92, !93, !95, !96, !97}
!109 = !{!110}
!110 = distinct !{!110, !111, !"\01?sort@@YAXAIAM00@Z: %c"}
!111 = distinct !{!111, !"\01?sort@@YAXAIAM00@Z"}
!112 = !{!113, !114, !88, !90, !92, !93, !95, !96, !97}
!113 = distinct !{!113, !111, !"\01?sort@@YAXAIAM00@Z: %a"}
!114 = distinct !{!114, !111, !"\01?sort@@YAXAIAM00@Z: %b"}
!115 = !{!114}
!116 = !{!113, !110, !88, !90, !92, !93, !95, !96, !97}
!117 = !{!113}
!118 = !{!114, !110, !88, !90, !92, !93, !95, !96, !97}
!119 = !{!120, !120, i64 0}
!120 = !{!"int", !85, i64 0}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 2}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 2}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 2}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 2}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 2}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 2}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 2}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 2}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 2}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 2}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 2}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 2}

