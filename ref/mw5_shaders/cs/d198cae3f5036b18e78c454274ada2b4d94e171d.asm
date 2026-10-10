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
; shader hash: aa7a10aa5dec3dea3943416c11b12912
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

define void @cs_fog_raymarching_heightmap_particles_brfog() {
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
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 3
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = fsub fast float -0.000000e+00, %232
  %372 = fsub fast float -0.000000e+00, %233
  %373 = fsub fast float %368, %234
  %374 = fadd fast float %373, %370
  %375 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %371, float %372, float %374)  ; Dot3(ax,ay,az,bx,by,bz)
  %376 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %275, float %276, float %277)  ; Dot3(ax,ay,az,bx,by,bz)
  %377 = fdiv fast float 1.000000e+00, %376
  %378 = fmul fast float %377, %375
  %379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.f32 %379, 2
  %381 = fsub fast float %380, %234
  %382 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %371, float %372, float %381)  ; Dot3(ax,ay,az,bx,by,bz)
  %383 = fmul fast float %377, %382
  %384 = call float @dx.op.binary.f32(i32 36, float %378, float %383)  ; FMin(a,b)
  %385 = call float @dx.op.binary.f32(i32 35, float %378, float %383)  ; FMax(a,b)
  %386 = call float @dx.op.binary.f32(i32 36, float %366, float %384)  ; FMin(a,b)
  %387 = call float @dx.op.binary.f32(i32 35, float %365, float %385)  ; FMax(a,b)
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 2
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 3
  %392 = fsub fast float %389, %234
  %393 = fadd fast float %392, %391
  %394 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %371, float %372, float %393)  ; Dot3(ax,ay,az,bx,by,bz)
  %395 = fmul fast float %377, %394
  %396 = fcmp fast olt float %395, 0.000000e+00
  %397 = fcmp fast ogt float %277, 0.000000e+00
  %398 = and i1 %397, %396
  br i1 %398, label %403, label %399, !dx.controlflow.hints !35

; <label>:399                                     ; preds = %363
  %400 = fcmp fast olt float %277, 0.000000e+00
  br i1 %400, label %401, label %403, !dx.controlflow.hints !36

; <label>:401                                     ; preds = %399
  %402 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %395)  ; FMax(a,b)
  br label %403

; <label>:403                                     ; preds = %401, %399, %363
  %404 = phi float [ 0.000000e+00, %363 ], [ %402, %401 ], [ 0.000000e+00, %399 ]
  %405 = phi float [ 0.000000e+00, %363 ], [ 0x47EFFFFFE0000000, %401 ], [ %395, %399 ]
  %406 = fcmp fast oeq float %405, 0.000000e+00
  br i1 %406, label %410, label %407, !dx.controlflow.hints !37

; <label>:407                                     ; preds = %403
  %408 = call float @dx.op.binary.f32(i32 36, float %386, float %404)  ; FMin(a,b)
  %409 = call float @dx.op.binary.f32(i32 35, float %387, float %405)  ; FMax(a,b)
  br label %410

; <label>:410                                     ; preds = %407, %403
  %411 = phi i32 [ 1, %407 ], [ 0, %403 ]
  %412 = phi float [ %409, %407 ], [ %387, %403 ]
  %413 = phi float [ %408, %407 ], [ %386, %403 ]
  %414 = fdiv fast float 1.000000e+00, %275
  %415 = fdiv fast float 1.000000e+00, %276
  %416 = fdiv fast float 1.000000e+00, %277
  %417 = call float @dx.op.binary.f32(i32 36, float %296, float %412)  ; FMin(a,b)
  %418 = call float @dx.op.binary.f32(i32 35, float %273, float %413)  ; FMax(a,b)
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 0
  %421 = fmul fast float %221, 2.000000e+00
  %422 = fadd fast float %421, -1.000000e+00
  %423 = fmul fast float %420, %422
  %424 = fadd fast float %423, %418
  %425 = fcmp fast olt float %424, %417
  %426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %427 = extractvalue %dx.types.CBufRet.f32 %426, 2
  %428 = fcmp fast olt float %427, 1.000000e+00
  %429 = and i1 %425, %428
  br i1 %429, label %430, label %1358

; <label>:430                                     ; preds = %410
  %431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %432 = extractvalue %dx.types.CBufRet.i32 %431, 1
  %433 = add i32 %432, -1
  %434 = fmul fast float %424, %277
  %435 = fadd fast float %434, %234
  %436 = fmul fast float %424, %276
  %437 = fadd fast float %436, %233
  %438 = fmul fast float %424, %275
  %439 = fadd fast float %438, %232
  br label %440

; <label>:440                                     ; preds = %1336, %430
  %441 = phi i32 [ %923, %1336 ], [ undef, %430 ]
  %442 = phi float [ %925, %1336 ], [ undef, %430 ]
  %443 = phi float [ %739, %1336 ], [ undef, %430 ]
  %444 = phi float [ %740, %1336 ], [ undef, %430 ]
  %445 = phi float [ %741, %1336 ], [ undef, %430 ]
  %446 = phi float [ %742, %1336 ], [ undef, %430 ]
  %447 = phi float [ %1338, %1336 ], [ 0.000000e+00, %430 ]
  %448 = phi float [ %1339, %1336 ], [ 1.000000e+00, %430 ]
  %449 = phi float [ %1349, %1336 ], [ %439, %430 ]
  %450 = phi float [ %1350, %1336 ], [ %437, %430 ]
  %451 = phi float [ %1351, %1336 ], [ %435, %430 ]
  %452 = phi float [ %1337, %1336 ], [ %424, %430 ]
  %453 = phi i32 [ %464, %1336 ], [ 0, %430 ]
  %454 = phi i32 [ %744, %1336 ], [ 10, %430 ]
  %455 = phi i32 [ %636, %1336 ], [ %433, %430 ]
  %456 = phi float [ %1340, %1336 ], [ 0.000000e+00, %430 ]
  %457 = phi float [ %1341, %1336 ], [ 0.000000e+00, %430 ]
  %458 = phi float [ %1342, %1336 ], [ 0.000000e+00, %430 ]
  %459 = phi float [ %1343, %1336 ], [ 0.000000e+00, %430 ]
  %460 = phi float [ %1344, %1336 ], [ 0.000000e+00, %430 ]
  %461 = phi i32 [ %1345, %1336 ], [ 0, %430 ]
  %462 = fsub fast float -0.000000e+00, %450
  %463 = fsub fast float -0.000000e+00, %449
  %464 = add i32 %453, 1
  %465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.f32 %465, 0
  %467 = icmp eq i32 %364, 0
  br i1 %467, label %633, label %468, !dx.controlflow.hints !38

; <label>:468                                     ; preds = %440
  %469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %470 = extractvalue %dx.types.CBufRet.i32 %469, 1
  %471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %472 = extractvalue %dx.types.CBufRet.f32 %471, 1
  %473 = fcmp fast ogt float %472, %452
  br i1 %473, label %474, label %476, !dx.controlflow.hints !39

; <label>:474                                     ; preds = %468
  %475 = fsub fast float %472, %452
  br label %623

; <label>:476                                     ; preds = %468
  %477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.i32 %477, 3
  %479 = icmp eq i32 %478, 0
  %480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.f32 %480, 2
  %482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %483 = extractvalue %dx.types.CBufRet.f32 %482, 2
  %484 = fsub fast float %481, %451
  %485 = fadd fast float %484, %483
  %486 = fsub fast float 0xC7EFFFFFE0000000, %451
  br i1 %479, label %494, label %487, !dx.controlflow.hints !32

; <label>:487                                     ; preds = %476
  %488 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %463, float %462, float %485)  ; Dot3(ax,ay,az,bx,by,bz)
  %489 = fmul fast float %377, %488
  %490 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %463, float %462, float %486)  ; Dot3(ax,ay,az,bx,by,bz)
  %491 = fmul fast float %377, %490
  %492 = call float @dx.op.binary.f32(i32 36, float %489, float %491)  ; FMin(a,b)
  %493 = call float @dx.op.binary.f32(i32 35, float %489, float %491)  ; FMax(a,b)
  br label %524

; <label>:494                                     ; preds = %476
  %495 = extractvalue %dx.types.CBufRet.f32 %480, 0
  %496 = extractvalue %dx.types.CBufRet.f32 %480, 1
  %497 = extractvalue %dx.types.CBufRet.f32 %482, 0
  %498 = extractvalue %dx.types.CBufRet.f32 %482, 1
  %499 = fsub fast float %495, %449
  %500 = fmul fast float %414, %499
  %501 = fadd fast float %499, %497
  %502 = fmul fast float %501, %414
  %503 = call float @dx.op.binary.f32(i32 36, float %500, float %502)  ; FMin(a,b)
  %504 = call float @dx.op.binary.f32(i32 35, float %500, float %502)  ; FMax(a,b)
  %505 = fsub fast float %496, %450
  %506 = fmul fast float %415, %505
  %507 = fadd fast float %505, %498
  %508 = fmul fast float %507, %415
  %509 = call float @dx.op.binary.f32(i32 36, float %506, float %508)  ; FMin(a,b)
  %510 = call float @dx.op.binary.f32(i32 35, float %503, float %509)  ; FMax(a,b)
  %511 = call float @dx.op.binary.f32(i32 35, float %506, float %508)  ; FMax(a,b)
  %512 = call float @dx.op.binary.f32(i32 36, float %504, float %511)  ; FMin(a,b)
  %513 = fmul fast float %416, %486
  %514 = fmul fast float %416, %485
  %515 = call float @dx.op.binary.f32(i32 36, float %513, float %514)  ; FMin(a,b)
  %516 = call float @dx.op.binary.f32(i32 35, float %510, float %515)  ; FMax(a,b)
  %517 = call float @dx.op.binary.f32(i32 35, float %513, float %514)  ; FMax(a,b)
  %518 = call float @dx.op.binary.f32(i32 36, float %512, float %517)  ; FMin(a,b)
  %519 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %516)  ; FMax(a,b)
  %520 = fcmp fast ult float %518, %519
  br i1 %520, label %524, label %521, !dx.controlflow.hints !33

; <label>:521                                     ; preds = %494
  %522 = call float @dx.op.binary.f32(i32 36, float %516, float %518)  ; FMin(a,b)
  %523 = call float @dx.op.binary.f32(i32 35, float %516, float %518)  ; FMax(a,b)
  br label %524

; <label>:524                                     ; preds = %521, %494, %487
  %525 = phi float [ %492, %487 ], [ %522, %521 ], [ 0.000000e+00, %494 ]
  %526 = phi float [ %493, %487 ], [ %523, %521 ], [ 0.000000e+00, %494 ]
  %527 = fcmp fast ogt float %525, 0.000000e+00
  br i1 %527, label %623, label %528, !dx.controlflow.hints !40

; <label>:528                                     ; preds = %524
  %529 = fcmp fast ugt float %526, 0.000000e+00
  br i1 %529, label %530, label %623, !dx.controlflow.hints !41

; <label>:530                                     ; preds = %528
  %531 = icmp sgt i32 %455, 0
  br i1 %531, label %532, label %617

; <label>:532                                     ; preds = %530
  br label %533

; <label>:533                                     ; preds = %613, %532
  %534 = phi i32 [ %614, %613 ], [ %455, %532 ]
  %535 = sitofp i32 %534 to float
  %536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.f32 %536, 0
  %538 = extractvalue %dx.types.CBufRet.f32 %536, 1
  %539 = fsub fast float %449, %537
  %540 = fsub fast float %450, %538
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 0
  %543 = extractvalue %dx.types.CBufRet.f32 %541, 1
  %544 = fmul fast float %539, %542
  %545 = fmul fast float %540, %543
  %546 = fsub fast float 1.000000e+00, %545
  %547 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.i32 %547, 3
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %556, label %550, !dx.controlflow.hints !42

; <label>:550                                     ; preds = %533
  %551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %12, float %544, float %546, float undef, float undef, i32 0, i32 0, i32 undef, float %535)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  %553 = extractvalue %dx.types.ResRet.f32 %551, 1
  %554 = extractvalue %dx.types.ResRet.f32 %551, 2
  %555 = extractvalue %dx.types.ResRet.f32 %551, 3
  br label %562

; <label>:556                                     ; preds = %533
  %557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %544, float %546, float undef, float undef, i32 0, i32 0, i32 undef, float %535)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 0
  %559 = extractvalue %dx.types.ResRet.f32 %557, 1
  %560 = extractvalue %dx.types.ResRet.f32 %557, 2
  %561 = extractvalue %dx.types.ResRet.f32 %557, 3
  br label %562

; <label>:562                                     ; preds = %556, %550
  %563 = phi float [ %552, %550 ], [ %558, %556 ]
  %564 = phi float [ %553, %550 ], [ %559, %556 ]
  %565 = phi float [ %554, %550 ], [ %560, %556 ]
  %566 = phi float [ %555, %550 ], [ %561, %556 ]
  %567 = extractvalue %dx.types.CBufRet.f32 %541, 3
  %568 = fmul fast float %567, %563
  %569 = extractvalue %dx.types.CBufRet.f32 %536, 2
  %570 = fadd fast float %568, %569
  %571 = fmul fast float %567, %564
  %572 = fadd fast float %571, %569
  %573 = fmul fast float %567, %565
  %574 = fadd fast float %573, %569
  %575 = and i32 %534, 31
  %576 = shl i32 1, %575
  %577 = uitofp i32 %576 to float
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 3
  %580 = fdiv fast float 1.000000e+00, %579
  %581 = fmul fast float %580, %577
  %582 = fmul fast float %581, %277
  %583 = fadd fast float %582, %451
  %584 = fcmp fast oeq float %566, 0.000000e+00
  %585 = fcmp fast ogt float %451, %572
  %586 = fcmp fast ogt float %583, %572
  %587 = and i1 %585, %586
  %588 = or i1 %584, %587
  br i1 %588, label %589, label %593, !dx.controlflow.hints !43

; <label>:589                                     ; preds = %562
  %590 = add nsw i32 %534, 1
  %591 = add nsw i32 %470, -1
  %592 = call i32 @dx.op.binary.i32(i32 38, i32 %590, i32 %591)  ; IMin(a,b)
  br label %623

; <label>:593                                     ; preds = %562
  %594 = fcmp fast olt float %451, %574
  %595 = fcmp fast olt float %583, %574
  %596 = and i1 %594, %595
  br i1 %596, label %597, label %601, !dx.controlflow.hints !44

; <label>:597                                     ; preds = %593
  %598 = add nsw i32 %534, 1
  %599 = add nsw i32 %470, -1
  %600 = call i32 @dx.op.binary.i32(i32 38, i32 %598, i32 %599)  ; IMin(a,b)
  br label %623

; <label>:601                                     ; preds = %593
  %602 = fcmp fast olt float %451, %570
  %603 = fcmp fast olt float %583, %570
  %604 = and i1 %602, %603
  br i1 %604, label %605, label %613, !dx.controlflow.hints !45

; <label>:605                                     ; preds = %601
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 3
  %608 = extractvalue %dx.types.CBufRet.f32 %541, 2
  %609 = fcmp fast une float %607, %608
  br i1 %609, label %610, label %617, !dx.controlflow.hints !46

; <label>:610                                     ; preds = %605
  %611 = fsub fast float %451, %574
  %612 = call float @dx.op.binary.f32(i32 36, float %581, float %611)  ; FMin(a,b)
  br label %617

; <label>:613                                     ; preds = %601
  %614 = add nsw i32 %534, -1
  %615 = icmp sgt i32 %534, 1
  br i1 %615, label %533, label %616

; <label>:616                                     ; preds = %613
  br label %617

; <label>:617                                     ; preds = %616, %610, %605, %530
  %618 = phi float [ %612, %610 ], [ %581, %605 ], [ 0.000000e+00, %530 ], [ 0.000000e+00, %616 ]
  %619 = phi i32 [ %534, %610 ], [ %534, %605 ], [ %455, %530 ], [ %614, %616 ]
  %620 = add nsw i32 %619, 1
  %621 = add nsw i32 %470, -1
  %622 = call i32 @dx.op.binary.i32(i32 38, i32 %620, i32 %621)  ; IMin(a,b)
  br label %623

; <label>:623                                     ; preds = %617, %597, %589, %528, %524, %474
  %624 = phi float [ %475, %474 ], [ %581, %589 ], [ %581, %597 ], [ %618, %617 ], [ 0x47EFFFFFE0000000, %528 ], [ %525, %524 ]
  %625 = phi i32 [ %364, %474 ], [ %364, %589 ], [ %364, %597 ], [ %364, %617 ], [ 0, %528 ], [ %364, %524 ]
  %626 = phi i32 [ %455, %474 ], [ %592, %589 ], [ %600, %597 ], [ %622, %617 ], [ %455, %528 ], [ %455, %524 ]
  %627 = icmp ne i32 %625, 0
  %628 = zext i1 %627 to i32
  %629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %630 = extractvalue %dx.types.CBufRet.f32 %629, 2
  %631 = call float @dx.op.binary.f32(i32 35, float %624, float %630)  ; FMax(a,b)
  %632 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %631)  ; FMin(a,b)
  br label %633

; <label>:633                                     ; preds = %623, %440
  %634 = phi i32 [ %628, %623 ], [ 0, %440 ]
  %635 = phi float [ %632, %623 ], [ 0x47EFFFFFE0000000, %440 ]
  %636 = phi i32 [ %626, %623 ], [ %455, %440 ]
  %637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %638 = extractvalue %dx.types.CBufRet.f32 %637, 0
  %639 = extractvalue %dx.types.CBufRet.f32 %637, 1
  %640 = fsub fast float %449, %638
  %641 = fsub fast float %450, %639
  %642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.f32 %642, 2
  %644 = extractvalue %dx.types.CBufRet.f32 %642, 3
  %645 = fmul fast float %640, %643
  %646 = fmul fast float %641, %644
  %647 = call float @dx.op.binary.f32(i32 36, float %645, float %646)  ; FMin(a,b)
  %648 = fcmp fast olt float %647, 0.000000e+00
  %649 = call float @dx.op.binary.f32(i32 35, float %645, float %646)  ; FMax(a,b)
  %650 = fcmp fast ogt float %649, 1.000000e+00
  %651 = or i1 %648, %650
  %652 = extractvalue %dx.types.CBufRet.f32 %637, 2
  %653 = fcmp fast olt float %451, %652
  %654 = or i1 %651, %653
  %655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %656 = extractvalue %dx.types.CBufRet.f32 %655, 3
  %657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.f32 %657, 0
  %659 = fadd fast float %658, %656
  %660 = fcmp fast ogt float %451, %659
  %661 = or i1 %654, %660
  br i1 %661, label %662, label %691, !dx.controlflow.hints !47

; <label>:662                                     ; preds = %633
  %663 = extractvalue %dx.types.CBufRet.f32 %642, 0
  %664 = extractvalue %dx.types.CBufRet.f32 %642, 1
  %665 = fsub fast float %638, %449
  %666 = fmul fast float %665, %414
  %667 = fadd fast float %665, %663
  %668 = fmul fast float %667, %414
  %669 = call float @dx.op.binary.f32(i32 36, float %666, float %668)  ; FMin(a,b)
  %670 = call float @dx.op.binary.f32(i32 35, float %666, float %668)  ; FMax(a,b)
  %671 = fsub fast float %639, %450
  %672 = fmul fast float %671, %415
  %673 = fadd fast float %671, %664
  %674 = fmul fast float %673, %415
  %675 = call float @dx.op.binary.f32(i32 36, float %672, float %674)  ; FMin(a,b)
  %676 = call float @dx.op.binary.f32(i32 35, float %669, float %675)  ; FMax(a,b)
  %677 = call float @dx.op.binary.f32(i32 35, float %672, float %674)  ; FMax(a,b)
  %678 = call float @dx.op.binary.f32(i32 36, float %670, float %677)  ; FMin(a,b)
  %679 = fsub fast float %652, %451
  %680 = fmul fast float %679, %416
  %681 = fsub fast float %656, %451
  %682 = fadd fast float %681, %658
  %683 = fmul fast float %682, %416
  %684 = call float @dx.op.binary.f32(i32 36, float %680, float %683)  ; FMin(a,b)
  %685 = call float @dx.op.binary.f32(i32 35, float %676, float %684)  ; FMax(a,b)
  %686 = call float @dx.op.binary.f32(i32 35, float %680, float %683)  ; FMax(a,b)
  %687 = call float @dx.op.binary.f32(i32 36, float %678, float %686)  ; FMin(a,b)
  %688 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %685)  ; FMax(a,b)
  %689 = fcmp fast oge float %687, %688
  %690 = select i1 %689, float %685, float 1.000000e+07
  br label %737

; <label>:691                                     ; preds = %633
  %692 = fsub fast float 1.000000e+00, %646
  %693 = icmp eq i32 %454, 0
  br i1 %693, label %722, label %694

; <label>:694                                     ; preds = %691
  br label %695

; <label>:695                                     ; preds = %718, %694
  %696 = phi i32 [ %719, %718 ], [ %454, %694 ]
  %697 = uitofp i32 %696 to float
  %698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %645, float %692, float undef, float undef, i32 0, i32 0, i32 undef, float %697)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = extractvalue %dx.types.ResRet.f32 %698, 1
  %701 = extractvalue %dx.types.ResRet.f32 %698, 2
  %702 = fcmp fast oeq float %699, 0.000000e+00
  %703 = fcmp ule float %451, %701
  %704 = fcmp uge float %451, %700
  %705 = or i1 %704, %703
  %706 = or i1 %702, %705
  br i1 %706, label %707, label %718, !dx.controlflow.hints !48

; <label>:707                                     ; preds = %695
  %708 = extractvalue %dx.types.ResRet.f32 %698, 3
  %709 = extractvalue %dx.types.CBufRet.f32 %642, 0
  %710 = and i32 %696, 31
  %711 = lshr i32 1024, %710
  %712 = uitofp i32 %711 to float
  %713 = fdiv fast float %709, %712
  %714 = add i32 %696, 1
  %715 = uitofp i32 %714 to float
  %716 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %715)  ; FMin(a,b)
  %717 = fptosi float %716 to i32
  br label %737

; <label>:718                                     ; preds = %695
  %719 = add i32 %696, -1
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %721, label %695, !llvm.loop !49

; <label>:721                                     ; preds = %718
  br label %722

; <label>:722                                     ; preds = %721, %691
  %723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %645, float %692, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %724 = extractvalue %dx.types.ResRet.f32 %723, 0
  %725 = extractvalue %dx.types.ResRet.f32 %723, 1
  %726 = extractvalue %dx.types.ResRet.f32 %723, 2
  %727 = extractvalue %dx.types.ResRet.f32 %723, 3
  %728 = extractvalue %dx.types.CBufRet.f32 %642, 0
  %729 = fmul fast float %728, 9.765625e-04
  %730 = fcmp fast oeq float %724, 0.000000e+00
  %731 = fcmp ule float %451, %726
  %732 = fcmp uge float %451, %725
  %733 = or i1 %732, %731
  %734 = or i1 %730, %733
  %735 = zext i1 %734 to i32
  %736 = xor i32 %735, 1
  br label %737

; <label>:737                                     ; preds = %722, %707, %662
  %738 = phi float [ %690, %662 ], [ %713, %707 ], [ %729, %722 ]
  %739 = phi float [ %443, %662 ], [ %699, %707 ], [ %724, %722 ]
  %740 = phi float [ %444, %662 ], [ %700, %707 ], [ %725, %722 ]
  %741 = phi float [ %445, %662 ], [ %701, %707 ], [ %726, %722 ]
  %742 = phi float [ %446, %662 ], [ %708, %707 ], [ %727, %722 ]
  %743 = phi i32 [ 0, %662 ], [ 0, %707 ], [ %736, %722 ]
  %744 = phi i32 [ 10, %662 ], [ %717, %707 ], [ 1, %722 ]
  %745 = icmp eq i32 %743, 0
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 2
  %748 = call float @dx.op.binary.f32(i32 35, float %738, float %747)  ; FMax(a,b)
  %749 = call float @dx.op.binary.f32(i32 36, float %635, float %748)  ; FMin(a,b)
  %750 = icmp eq i32 %411, 0
  br i1 %750, label %922, label %751, !dx.controlflow.hints !51

; <label>:751                                     ; preds = %737
  %752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.i32 %752, 1
  %754 = and i32 %753, 1
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %756, label %913, !dx.controlflow.hints !52

; <label>:756                                     ; preds = %751
  %757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %758 = extractvalue %dx.types.CBufRet.f32 %757, 2
  %759 = extractvalue %dx.types.CBufRet.f32 %757, 3
  %760 = fmul fast float %758, %449
  %761 = fmul fast float %759, %450
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 0
  %764 = extractvalue %dx.types.CBufRet.f32 %762, 1
  %765 = fadd fast float %760, %763
  %766 = fadd fast float %761, %764
  %767 = call float @dx.op.unary.f32(i32 7, float %765)  ; Saturate(value)
  %768 = call float @dx.op.unary.f32(i32 7, float %766)  ; Saturate(value)
  %769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %767, float %768, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %770 = extractvalue %dx.types.ResRet.f32 %769, 0
  %771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %772 = extractvalue %dx.types.CBufRet.f32 %771, 0
  %773 = fmul fast float %772, %770
  %774 = fsub fast float %765, %767
  %775 = fsub fast float %766, %768
  %776 = extractvalue %dx.types.CBufRet.f32 %757, 0
  %777 = extractvalue %dx.types.CBufRet.f32 %757, 1
  %778 = fmul fast float %776, %774
  %779 = fmul fast float %777, %775
  %780 = fmul fast float %778, %778
  %781 = fmul fast float %779, %779
  %782 = fadd fast float %780, %781
  %783 = call float @dx.op.unary.f32(i32 24, float %782)  ; Sqrt(value)
  %784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.f32 %784, 3
  %786 = fmul fast float %785, %783
  %787 = call float @dx.op.unary.f32(i32 7, float %786)  ; Saturate(value)
  %788 = extractvalue %dx.types.CBufRet.f32 %784, 2
  %789 = fsub fast float %788, %773
  %790 = fmul fast float %789, %787
  %791 = extractvalue %dx.types.CBufRet.f32 %771, 1
  %792 = fsub fast float %451, %773
  %793 = fsub fast float %792, %791
  %794 = fsub fast float %793, %790
  %795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.f32 %795, 2
  %797 = fsub fast float %794, %796
  %798 = fcmp fast olt float %797, 0.000000e+00
  %799 = call float @dx.op.unary.f32(i32 6, float %797)  ; FAbs(value)
  %800 = extractvalue %dx.types.CBufRet.i32 %752, 0
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %855, label %802

; <label>:802                                     ; preds = %756
  br label %803

; <label>:803                                     ; preds = %842, %802
  %804 = phi i32 [ %848, %842 ], [ 1, %802 ]
  %805 = phi float [ %850, %842 ], [ 0x47EFFFFFE0000000, %802 ]
  %806 = phi i32 [ %851, %842 ], [ 0, %802 ]
  %807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %808 = extractvalue %dx.types.CBufRet.f32 %807, 1
  %809 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.i32 %809, 1
  %811 = and i32 %810, 8
  %812 = icmp eq i32 %811, 0
  %813 = fcmp fast ogt float %808, %794
  %814 = or i1 %813, %812
  %815 = add i32 %806, 171
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %815)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 0
  %818 = extractvalue %dx.types.CBufRet.f32 %816, 1
  %819 = extractvalue %dx.types.CBufRet.f32 %816, 2
  br i1 %814, label %820, label %826, !dx.controlflow.hints !53

; <label>:820                                     ; preds = %803
  %821 = fsub fast float %817, %449
  %822 = fsub fast float %818, %450
  %823 = fmul fast float %821, %821
  %824 = fmul fast float %822, %822
  %825 = fadd fast float %823, %824
  br label %842

; <label>:826                                     ; preds = %803
  %827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %828 = extractvalue %dx.types.CBufRet.f32 %827, 2
  %829 = extractvalue %dx.types.CBufRet.f32 %807, 2
  %830 = fmul fast float %829, %828
  %831 = fsub fast float %830, %808
  %832 = fdiv fast float %819, %831
  %833 = fsub fast float %449, %817
  %834 = fsub fast float %450, %818
  %835 = fsub fast float %794, %808
  %836 = fmul fast float %832, %835
  %837 = fmul fast float %833, %833
  %838 = fmul fast float %834, %834
  %839 = fadd fast float %837, %838
  %840 = fmul fast float %836, %836
  %841 = fadd fast float %839, %840
  br label %842

; <label>:842                                     ; preds = %826, %820
  %843 = phi float [ %825, %820 ], [ %841, %826 ]
  %844 = call float @dx.op.unary.f32(i32 24, float %843)  ; Sqrt(value)
  %845 = fsub float %819, %844
  %846 = fcmp fast olt float %845, 0.000000e+00
  %847 = zext i1 %846 to i32
  %848 = and i32 %847, %804
  %849 = call float @dx.op.unary.f32(i32 6, float %845)  ; FAbs(value)
  %850 = call float @dx.op.binary.f32(i32 36, float %805, float %849)  ; FMin(a,b)
  %851 = add i32 %806, 1
  %852 = extractvalue %dx.types.CBufRet.i32 %809, 0
  %853 = icmp ult i32 %851, %852
  br i1 %853, label %803, label %854

; <label>:854                                     ; preds = %842
  br label %855

; <label>:855                                     ; preds = %854, %756
  %856 = phi i32 [ 1, %756 ], [ %848, %854 ]
  %857 = phi float [ 0x47EFFFFFE0000000, %756 ], [ %850, %854 ]
  br label %858

; <label>:858                                     ; preds = %858, %855
  %859 = phi i32 [ %856, %855 ], [ %898, %858 ]
  %860 = phi float [ 0x47EFFFFFE0000000, %855 ], [ %900, %858 ]
  %861 = phi i32 [ 0, %855 ], [ %901, %858 ]
  %862 = add nuw nsw i32 %861, 191
  %863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %862)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.f32 %863, 0
  %865 = extractvalue %dx.types.CBufRet.f32 %863, 1
  %866 = extractvalue %dx.types.CBufRet.f32 %863, 2
  %867 = add nuw nsw i32 %861, 195
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %867)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 0
  %870 = extractvalue %dx.types.CBufRet.f32 %868, 1
  %871 = extractvalue %dx.types.CBufRet.f32 %868, 2
  %872 = fsub fast float %449, %864
  %873 = fsub fast float %450, %865
  %874 = fsub fast float %794, %866
  %875 = call float @dx.op.unary.f32(i32 6, float %872)  ; FAbs(value)
  %876 = call float @dx.op.unary.f32(i32 6, float %873)  ; FAbs(value)
  %877 = call float @dx.op.unary.f32(i32 6, float %874)  ; FAbs(value)
  %878 = fsub fast float %875, %869
  %879 = fsub fast float %876, %870
  %880 = fsub fast float %877, %871
  %881 = call float @dx.op.binary.f32(i32 35, float %878, float 0.000000e+00)  ; FMax(a,b)
  %882 = call float @dx.op.binary.f32(i32 35, float %879, float 0.000000e+00)  ; FMax(a,b)
  %883 = call float @dx.op.binary.f32(i32 35, float %880, float 0.000000e+00)  ; FMax(a,b)
  %884 = fmul fast float %881, %881
  %885 = fmul fast float %882, %882
  %886 = fadd fast float %885, %884
  %887 = fmul fast float %883, %883
  %888 = fadd fast float %886, %887
  %889 = call float @dx.op.unary.f32(i32 24, float %888)  ; Sqrt(value)
  %890 = call float @dx.op.binary.f32(i32 35, float %879, float %880)  ; FMax(a,b)
  %891 = call float @dx.op.binary.f32(i32 35, float %878, float %890)  ; FMax(a,b)
  %892 = call float @dx.op.binary.f32(i32 36, float %891, float 0.000000e+00)  ; FMin(a,b)
  %893 = fadd fast float %892, %889
  %894 = fsub fast float -0.000000e+00, %893
  %895 = fcmp ogt float %893, -0.000000e+00
  %896 = icmp ne i32 %859, 0
  %897 = and i1 %896, %895
  %898 = zext i1 %897 to i32
  %899 = call float @dx.op.unary.f32(i32 6, float %894)  ; FAbs(value)
  %900 = call float @dx.op.binary.f32(i32 36, float %860, float %899)  ; FMin(a,b)
  %901 = add nuw nsw i32 %861, 1
  %902 = icmp eq i32 %901, 4
  br i1 %902, label %903, label %858

; <label>:903                                     ; preds = %858
  %904 = call float @dx.op.binary.f32(i32 36, float %799, float %900)  ; FMin(a,b)
  %905 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.i32 %905, 1
  %907 = and i32 %906, 2
  %908 = icmp ne i32 %907, 0
  %909 = xor i1 %897, %908
  %910 = call float @dx.op.binary.f32(i32 36, float %904, float %857)  ; FMin(a,b)
  %911 = and i1 %909, %798
  %912 = zext i1 %911 to i32
  br label %913

; <label>:913                                     ; preds = %903, %751
  %914 = phi i32 [ %441, %751 ], [ %912, %903 ]
  %915 = phi float [ 0.000000e+00, %751 ], [ %910, %903 ]
  %916 = phi float [ %451, %751 ], [ %794, %903 ]
  %917 = icmp ne i32 %914, 0
  %918 = extractvalue %dx.types.CBufRet.f32 %746, 3
  %919 = call float @dx.op.binary.f32(i32 35, float %915, float %918)  ; FMax(a,b)
  %920 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %919)  ; FMin(a,b)
  %921 = zext i1 %917 to i32
  br label %922

; <label>:922                                     ; preds = %913, %737
  %923 = phi i32 [ %914, %913 ], [ %441, %737 ]
  %924 = phi i32 [ %921, %913 ], [ 0, %737 ]
  %925 = phi float [ %916, %913 ], [ %442, %737 ]
  %926 = phi float [ %920, %913 ], [ 0x47EFFFFFE0000000, %737 ]
  %927 = extractvalue %dx.types.CBufRet.f32 %465, 2
  %928 = fmul fast float %927, %452
  %929 = call float @dx.op.unary.f32(i32 23, float %928)  ; Log(value)
  %930 = fmul fast float %929, 0x3FE62E4300000000
  %931 = call float @dx.op.binary.f32(i32 35, float %930, float 1.000000e+00)  ; FMax(a,b)
  %932 = fmul fast float %931, %926
  %933 = call float @dx.op.binary.f32(i32 36, float %932, float %749)  ; FMin(a,b)
  %934 = call float @dx.op.binary.f32(i32 35, float %933, float %466)  ; FMax(a,b)
  %935 = fsub fast float %417, %452
  %936 = fadd fast float %935, 0x3F1A36E2E0000000
  %937 = call float @dx.op.binary.f32(i32 36, float %936, float %934)  ; FMin(a,b)
  %938 = icmp eq i32 %634, 0
  br i1 %938, label %1035, label %939, !dx.controlflow.hints !54

; <label>:939                                     ; preds = %922
  %940 = fcmp fast olt float %936, %934
  %941 = fmul fast float %277, %220
  %942 = fmul fast float %941, %937
  %943 = fadd fast float %942, %451
  %944 = fmul fast float %277, %221
  %945 = fmul fast float %944, %937
  %946 = fadd fast float %945, %451
  %947 = fmul fast float %277, %222
  %948 = fmul fast float %947, %937
  %949 = fadd fast float %948, %451
  br i1 %940, label %950, label %955, !dx.controlflow.hints !55

; <label>:950                                     ; preds = %939
  %951 = fmul fast float %937, %275
  %952 = fmul fast float %937, %276
  %953 = fadd fast float %951, %449
  %954 = fadd fast float %952, %450
  br label %955

; <label>:955                                     ; preds = %950, %939
  %956 = phi float [ %953, %950 ], [ %449, %939 ]
  %957 = phi float [ %954, %950 ], [ %450, %939 ]
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 0
  %960 = extractvalue %dx.types.CBufRet.f32 %958, 1
  %961 = fsub fast float %956, %959
  %962 = fsub fast float %957, %960
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 0
  %965 = extractvalue %dx.types.CBufRet.f32 %963, 1
  %966 = fmul fast float %961, %964
  %967 = fmul fast float %962, %965
  %968 = fsub fast float 1.000000e+00, %967
  %969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.i32 %969, 3
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %978, label %972, !dx.controlflow.hints !42

; <label>:972                                     ; preds = %955
  %973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %12, float %966, float %968, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %974 = extractvalue %dx.types.ResRet.f32 %973, 0
  %975 = extractvalue %dx.types.ResRet.f32 %973, 1
  %976 = extractvalue %dx.types.ResRet.f32 %973, 2
  %977 = extractvalue %dx.types.ResRet.f32 %973, 3
  br label %984

; <label>:978                                     ; preds = %955
  %979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %966, float %968, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %980 = extractvalue %dx.types.ResRet.f32 %979, 0
  %981 = extractvalue %dx.types.ResRet.f32 %979, 1
  %982 = extractvalue %dx.types.ResRet.f32 %979, 2
  %983 = extractvalue %dx.types.ResRet.f32 %979, 3
  br label %984

; <label>:984                                     ; preds = %978, %972
  %985 = phi float [ %974, %972 ], [ %980, %978 ]
  %986 = phi float [ %975, %972 ], [ %981, %978 ]
  %987 = phi float [ %976, %972 ], [ %982, %978 ]
  %988 = phi float [ %977, %972 ], [ %983, %978 ]
  %989 = extractvalue %dx.types.CBufRet.f32 %963, 3
  %990 = fmul fast float %989, %986
  %991 = fmul fast float %990, %985
  %992 = fsub fast float %990, %991
  %993 = fcmp fast ole float %992, 0.000000e+00
  %994 = extractvalue %dx.types.CBufRet.f32 %958, 2
  %995 = fadd fast float %991, %994
  %996 = fmul fast float %989, %987
  %997 = fadd fast float %996, %994
  %998 = fdiv fast float 1.000000e+00, %992
  %999 = select i1 %993, float 1.000000e+06, float %998
  %1000 = fsub fast float %943, %995
  %1001 = fmul fast float %999, %1000
  %1002 = call float @dx.op.unary.f32(i32 7, float %1001)  ; Saturate(value)
  %1003 = extractvalue %dx.types.CBufRet.f32 %963, 2
  %1004 = fmul fast float %1003, %1002
  %1005 = fsub fast float %1003, %1004
  %1006 = fcmp fast olt float %943, %997
  %1007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1008 = extractvalue %dx.types.CBufRet.f32 %1007, 3
  %1009 = select i1 %1006, float %1008, float 1.000000e+00
  %1010 = fmul fast float %1005, %1009
  %1011 = fsub fast float %946, %995
  %1012 = fmul fast float %999, %1011
  %1013 = call float @dx.op.unary.f32(i32 7, float %1012)  ; Saturate(value)
  %1014 = fmul fast float %1003, %1013
  %1015 = fsub fast float %1003, %1014
  %1016 = fcmp fast olt float %946, %997
  %1017 = select i1 %1016, float %1008, float 1.000000e+00
  %1018 = fmul fast float %1015, %1017
  %1019 = fadd fast float %1018, %1010
  %1020 = fsub fast float %949, %995
  %1021 = fmul fast float %999, %1020
  %1022 = call float @dx.op.unary.f32(i32 7, float %1021)  ; Saturate(value)
  %1023 = fmul fast float %1003, %1022
  %1024 = fsub fast float %1003, %1023
  %1025 = fcmp fast olt float %949, %997
  %1026 = select i1 %1025, float %1008, float 1.000000e+00
  %1027 = fmul fast float %1024, %1026
  %1028 = fadd fast float %1019, %1027
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 2
  %1031 = fmul fast float %937, 0x3FD5555560000000
  %1032 = fmul fast float %1031, %988
  %1033 = fmul fast float %1032, %1030
  %1034 = fmul fast float %1033, %1028
  br label %1035

; <label>:1035                                    ; preds = %984, %922
  %1036 = phi float [ %1034, %984 ], [ 0.000000e+00, %922 ]
  br i1 %745, label %1162, label %1037, !dx.controlflow.hints !56

; <label>:1037                                    ; preds = %1035
  %1038 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1039 = extractvalue %dx.types.CBufRet.i32 %1038, 0
  %1040 = icmp ne i32 %1039, 0
  %1041 = zext i1 %1040 to i32
  %1042 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1043 = extractvalue %dx.types.CBufRet.i32 %1042, 0
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1078, label %1045

; <label>:1045                                    ; preds = %1037
  br label %1046

; <label>:1046                                    ; preds = %1073, %1045
  %1047 = phi i32 [ %1074, %1073 ], [ 0, %1045 ]
  %1048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1047, i32 0)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1047, i32 16)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.ResRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.ResRet.f32 %1052, 2
  %1056 = fsub fast float %1049, %1053
  %1057 = fsub fast float %1050, %1054
  %1058 = fsub fast float %1051, %1055
  %1059 = fadd fast float %1053, %1049
  %1060 = fadd fast float %1054, %1050
  %1061 = fadd fast float %1055, %1051
  %1062 = fcmp fast olt float %449, %1056
  %1063 = fcmp fast olt float %450, %1057
  %1064 = fcmp fast olt float %451, %1058
  %1065 = or i1 %1062, %1063
  %1066 = or i1 %1064, %1065
  %1067 = fcmp fast ogt float %449, %1059
  %1068 = fcmp fast ogt float %450, %1060
  %1069 = fcmp fast ogt float %451, %1061
  %1070 = or i1 %1067, %1068
  %1071 = or i1 %1069, %1070
  %1072 = or i1 %1066, %1071
  br i1 %1072, label %1073, label %1076, !dx.controlflow.hints !57

; <label>:1073                                    ; preds = %1046
  %1074 = add nuw i32 %1047, 1
  %1075 = icmp ult i32 %1074, %1043
  br i1 %1075, label %1046, label %1076

; <label>:1076                                    ; preds = %1073, %1046
  %1077 = phi i32 [ 255, %1073 ], [ %1047, %1046 ]
  br label %1078

; <label>:1078                                    ; preds = %1076, %1037
  %1079 = phi i32 [ 255, %1037 ], [ %1077, %1076 ]
  %1080 = icmp eq i32 %1079, 255
  br i1 %1080, label %1086, label %1081, !dx.controlflow.hints !58

; <label>:1081                                    ; preds = %1078
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1079, i32 156)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = icmp ne i32 %1083, 0
  %1085 = zext i1 %1084 to i32
  br label %1086

; <label>:1086                                    ; preds = %1081, %1078
  %1087 = phi i32 [ %1085, %1081 ], [ %1041, %1078 ]
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1089, label %1158, !dx.controlflow.hints !59

; <label>:1089                                    ; preds = %1086
  %1090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.f32 %1090, 3
  %1092 = extractvalue %dx.types.CBufRet.f32 %655, 0
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 2
  %1095 = extractvalue %dx.types.CBufRet.f32 %1093, 3
  br i1 %1080, label %1106, label %1096, !dx.controlflow.hints !60

; <label>:1096                                    ; preds = %1089
  %1097 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1079, i32 60)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.f32 %1097, 0
  %1099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1079, i32 64)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.f32 %1099, 0
  %1101 = extractvalue %dx.types.ResRet.f32 %1099, 1
  %1102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1079, i32 72)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.f32 %1102, 0
  %1104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1079, i32 96)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  br label %1106

; <label>:1106                                    ; preds = %1096, %1089
  %1107 = phi float [ %1098, %1096 ], [ %658, %1089 ]
  %1108 = phi float [ %1103, %1096 ], [ %656, %1089 ]
  %1109 = phi float [ %1105, %1096 ], [ %1092, %1089 ]
  %1110 = phi float [ %1100, %1096 ], [ %1094, %1089 ]
  %1111 = phi float [ %1101, %1096 ], [ %1095, %1089 ]
  %1112 = call float @dx.op.binary.f32(i32 35, float %739, float 0.000000e+00)  ; FMax(a,b)
  %1113 = call float @dx.op.binary.f32(i32 36, float %1112, float 1.000000e+00)  ; FMin(a,b)
  %1114 = call float @dx.op.unary.f32(i32 24, float %1113)  ; Sqrt(value)
  %1115 = call float @dx.op.binary.f32(i32 35, float %742, float 0x3F847AE140000000)  ; FMax(a,b)
  %1116 = fsub fast float %740, %451
  %1117 = fsub fast float %451, %741
  %1118 = call float @dx.op.binary.f32(i32 36, float %1117, float %1116)  ; FMin(a,b)
  %1119 = fdiv fast float %1118, %1115
  %1120 = call float @dx.op.unary.f32(i32 7, float %1119)  ; Saturate(value)
  %1121 = fsub fast float %451, %1108
  %1122 = fdiv fast float %1121, %1107
  %1123 = call float @dx.op.unary.f32(i32 7, float %1122)  ; Saturate(value)
  %1124 = fsub fast float 1.000000e+00, %1123
  %1125 = fmul float %1120, %1124
  %1126 = fmul float %1125, %1125
  %1127 = fmul fast float %1114, %1091
  %1128 = fmul fast float %1127, %1126
  %1129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1129, 2
  %1131 = extractvalue %dx.types.CBufRet.f32 %1129, 1
  %1132 = fsub fast float %1128, %1131
  %1133 = fsub fast float %1130, %1131
  %1134 = fdiv fast float %1132, %1133
  %1135 = call float @dx.op.unary.f32(i32 7, float %1134)  ; Saturate(value)
  %1136 = fmul fast float %1135, %1109
  %1137 = fcmp fast ogt float %1111, 0.000000e+00
  br i1 %1137, label %1138, label %1158, !dx.controlflow.hints !61

; <label>:1138                                    ; preds = %1106
  %1139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.CBufRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.CBufRet.f32 %1139, 2
  %1143 = fsub fast float %449, %1140
  %1144 = fsub fast float %450, %1141
  %1145 = fsub fast float %451, %1142
  %1146 = fmul fast float %1143, %1143
  %1147 = fmul fast float %1144, %1144
  %1148 = fadd fast float %1146, %1147
  %1149 = fmul fast float %1145, %1145
  %1150 = fadd fast float %1148, %1149
  %1151 = call float @dx.op.unary.f32(i32 24, float %1150)  ; Sqrt(value)
  %1152 = fsub fast float %1151, %1110
  %1153 = fsub fast float %1111, %1110
  %1154 = fdiv fast float %1152, %1153
  %1155 = call float @dx.op.unary.f32(i32 7, float %1154)  ; Saturate(value)
  %1156 = fmul fast float %1155, %1155
  %1157 = fmul fast float %1156, %1136
  br label %1158

; <label>:1158                                    ; preds = %1138, %1106, %1086
  %1159 = phi float [ 0.000000e+00, %1086 ], [ %1157, %1138 ], [ %1136, %1106 ]
  %1160 = fmul fast float %1159, %937
  %1161 = fadd fast float %1160, %1036
  br label %1162

; <label>:1162                                    ; preds = %1158, %1035
  %1163 = phi float [ %1161, %1158 ], [ %1036, %1035 ]
  %1164 = icmp eq i32 %924, 0
  br i1 %1164, label %1196, label %1165, !dx.controlflow.hints !62

; <label>:1165                                    ; preds = %1162
  %1166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.f32 %1166, 1
  %1168 = fsub fast float %937, %1167
  %1169 = extractvalue %dx.types.CBufRet.f32 %1166, 3
  %1170 = fmul fast float %1168, %1169
  %1171 = call float @dx.op.unary.f32(i32 7, float %1170)  ; Saturate(value)
  %1172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1173 = extractvalue %dx.types.CBufRet.f32 %1172, 3
  %1174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1175 = extractvalue %dx.types.CBufRet.f32 %1174, 2
  %1176 = fsub fast float %1175, %925
  %1177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1178 = extractvalue %dx.types.CBufRet.f32 %1177, 3
  %1179 = fmul fast float %1176, %1178
  %1180 = call float @dx.op.unary.f32(i32 7, float %1179)  ; Saturate(value)
  %1181 = fmul fast float %1180, %1173
  %1182 = extractvalue %dx.types.CBufRet.f32 %1177, 0
  %1183 = fsub fast float %452, %1182
  %1184 = extractvalue %dx.types.CBufRet.f32 %1177, 1
  %1185 = fmul fast float %1183, %1184
  %1186 = call float @dx.op.unary.f32(i32 7, float %1185)  ; Saturate(value)
  %1187 = fsub fast float 1.000000e+00, %1171
  %1188 = fmul fast float %1186, %1187
  %1189 = fadd fast float %1188, %1171
  %1190 = extractvalue %dx.types.CBufRet.f32 %1166, 0
  %1191 = fsub fast float %1181, %1190
  %1192 = fmul fast float %1191, %1189
  %1193 = fadd fast float %1192, %1190
  %1194 = fmul fast float %1193, %937
  %1195 = fadd fast float %1194, %1163
  br label %1196

; <label>:1196                                    ; preds = %1165, %1162
  %1197 = phi float [ %1195, %1165 ], [ %1163, %1162 ]
  %1198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.f32 %1198, 1
  %1200 = fcmp fast ogt float %1197, %1199
  br i1 %1200, label %1203, label %1201, !dx.controlflow.hints !63

; <label>:1201                                    ; preds = %1196
  %1202 = fadd fast float %937, %452
  br label %1336

; <label>:1203                                    ; preds = %1196
  %1204 = fmul fast float %1197, 0xBFF7154760000000
  %1205 = call float @dx.op.unary.f32(i32 21, float %1204)  ; Exp(value)
  %1206 = call float @dx.op.unary.f32(i32 7, float %1205)  ; Saturate(value)
  %1207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.f32 %1207, 0
  %1209 = extractvalue %dx.types.CBufRet.f32 %1207, 1
  %1210 = extractvalue %dx.types.CBufRet.f32 %1207, 2
  %1211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1212 = extractvalue %dx.types.CBufRet.f32 %1211, 0
  %1213 = fmul fast float %1212, %1208
  %1214 = fmul fast float %1212, %1209
  %1215 = fmul fast float %1212, %1210
  %1216 = fadd fast float %1213, %449
  %1217 = fadd fast float %1214, %450
  %1218 = fadd fast float %1215, %451
  br i1 %750, label %1289, label %1219, !dx.controlflow.hints !51

; <label>:1219                                    ; preds = %1203
  %1220 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.i32 %1220, 1
  %1222 = and i32 %1221, 1
  %1223 = icmp eq i32 %1222, 0
  br i1 %1223, label %1224, label %1289, !dx.controlflow.hints !52

; <label>:1224                                    ; preds = %1219
  %1225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1226 = extractvalue %dx.types.CBufRet.f32 %1225, 2
  %1227 = extractvalue %dx.types.CBufRet.f32 %1225, 3
  %1228 = fmul fast float %1226, %1216
  %1229 = fmul fast float %1227, %1217
  %1230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1230, 0
  %1232 = extractvalue %dx.types.CBufRet.f32 %1230, 1
  %1233 = fadd fast float %1228, %1231
  %1234 = fadd fast float %1229, %1232
  %1235 = call float @dx.op.unary.f32(i32 7, float %1233)  ; Saturate(value)
  %1236 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  %1237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1235, float %1236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 0
  %1239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1240 = extractvalue %dx.types.CBufRet.f32 %1239, 0
  %1241 = fmul fast float %1240, %1238
  %1242 = fsub fast float %1233, %1235
  %1243 = fsub fast float %1234, %1236
  %1244 = extractvalue %dx.types.CBufRet.f32 %1225, 0
  %1245 = extractvalue %dx.types.CBufRet.f32 %1225, 1
  %1246 = fmul fast float %1244, %1242
  %1247 = fmul fast float %1245, %1243
  %1248 = fmul fast float %1246, %1246
  %1249 = fmul fast float %1247, %1247
  %1250 = fadd fast float %1248, %1249
  %1251 = call float @dx.op.unary.f32(i32 24, float %1250)  ; Sqrt(value)
  %1252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1253 = extractvalue %dx.types.CBufRet.f32 %1252, 3
  %1254 = fmul fast float %1253, %1251
  %1255 = call float @dx.op.unary.f32(i32 7, float %1254)  ; Saturate(value)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1252, 2
  %1257 = fsub fast float %1256, %1241
  %1258 = fmul fast float %1257, %1255
  %1259 = extractvalue %dx.types.CBufRet.f32 %1239, 1
  %1260 = fsub fast float %1218, %1241
  %1261 = fsub fast float %1260, %1259
  %1262 = fsub fast float %1261, %1258
  %1263 = extractvalue %dx.types.CBufRet.i32 %1220, 0
  %1264 = icmp eq i32 %1263, 0
  br i1 %1264, label %1283, label %1265

; <label>:1265                                    ; preds = %1224
  br label %1266

; <label>:1266                                    ; preds = %1278, %1265
  %1267 = phi i32 [ %1279, %1278 ], [ 0, %1265 ]
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 1
  %1270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.i32 %1270, 1
  %1272 = and i32 %1271, 8
  %1273 = icmp eq i32 %1272, 0
  %1274 = fcmp fast ogt float %1269, %1262
  %1275 = or i1 %1274, %1273
  br i1 %1275, label %1276, label %1277, !dx.controlflow.hints !53

; <label>:1276                                    ; preds = %1266
  br label %1278

; <label>:1277                                    ; preds = %1266
  br label %1278

; <label>:1278                                    ; preds = %1277, %1276
  %1279 = add i32 %1267, 1
  %1280 = extractvalue %dx.types.CBufRet.i32 %1270, 0
  %1281 = icmp ult i32 %1279, %1280
  br i1 %1281, label %1266, label %1282

; <label>:1282                                    ; preds = %1278
  br label %1283

; <label>:1283                                    ; preds = %1282, %1224
  br label %1284

; <label>:1284                                    ; preds = %1284, %1283
  %1285 = phi i32 [ %1286, %1284 ], [ 0, %1283 ]
  %1286 = add nuw nsw i32 %1285, 1
  %1287 = icmp eq i32 %1286, 4
  br i1 %1287, label %1288, label %1284

; <label>:1288                                    ; preds = %1284
  br label %1289

; <label>:1289                                    ; preds = %1288, %1219, %1203
  %1290 = fsub fast float 1.000000e+00, %1206
  %1291 = fdiv fast float %1197, %937
  %1292 = fadd fast float %937, %452
  %1293 = fmul fast float %452, %452
  %1294 = fmul fast float %1292, %1292
  %1295 = fsub fast float %1293, %1294
  %1296 = fmul fast float %1295, -5.000000e-01
  %1297 = fmul fast float %1296, %1291
  %1298 = fadd fast float %1297, %447
  %1299 = fadd fast float %1197, %456
  %1300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.i32 %1300, 0
  %1302 = icmp eq i32 %1301, 0
  br i1 %1302, label %1329, label %1303, !dx.controlflow.hints !64

; <label>:1303                                    ; preds = %1289
  %1304 = icmp ne i32 %461, 0
  %1305 = zext i1 %1304 to i32
  %1306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.f32 %1306, 2
  %1308 = extractvalue %dx.types.CBufRet.f32 %1306, 0
  %1309 = fsub fast float %1292, %1308
  %1310 = fmul fast float %1309, %1307
  %1311 = call float @dx.op.unary.f32(i32 7, float %1310)  ; Saturate(value)
  %1312 = fadd fast float %1311, -5.000000e-01
  %1313 = fmul fast float %1312, 2.000000e+00
  %1314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.f32 %1314, 2
  %1316 = fcmp fast olt float %1313, %1315
  br i1 %1316, label %1317, label %1329, !dx.controlflow.hints !65

; <label>:1317                                    ; preds = %1303
  %1318 = fmul fast float %1313, %1313
  %1319 = fmul fast float %1290, %448
  %1320 = fmul fast float %1313, %1319
  %1321 = fmul fast float %1318, %1319
  %1322 = fmul fast float %1320, %1318
  %1323 = fmul fast float %1318, %1318
  %1324 = fmul fast float %1323, %1319
  %1325 = fadd fast float %1320, %457
  %1326 = fadd fast float %1321, %458
  %1327 = fadd fast float %1322, %459
  %1328 = fadd fast float %1324, %460
  br label %1329

; <label>:1329                                    ; preds = %1317, %1303, %1289
  %1330 = phi float [ %457, %1289 ], [ %1325, %1317 ], [ %457, %1303 ]
  %1331 = phi float [ %458, %1289 ], [ %1326, %1317 ], [ %458, %1303 ]
  %1332 = phi float [ %459, %1289 ], [ %1327, %1317 ], [ %459, %1303 ]
  %1333 = phi float [ %460, %1289 ], [ %1328, %1317 ], [ %460, %1303 ]
  %1334 = phi i32 [ %461, %1289 ], [ 1, %1317 ], [ %1305, %1303 ]
  %1335 = fmul fast float %1206, %448
  br label %1336

; <label>:1336                                    ; preds = %1329, %1201
  %1337 = phi float [ %1202, %1201 ], [ %1292, %1329 ]
  %1338 = phi float [ %447, %1201 ], [ %1298, %1329 ]
  %1339 = phi float [ %448, %1201 ], [ %1335, %1329 ]
  %1340 = phi float [ %456, %1201 ], [ %1299, %1329 ]
  %1341 = phi float [ %457, %1201 ], [ %1330, %1329 ]
  %1342 = phi float [ %458, %1201 ], [ %1331, %1329 ]
  %1343 = phi float [ %459, %1201 ], [ %1332, %1329 ]
  %1344 = phi float [ %460, %1201 ], [ %1333, %1329 ]
  %1345 = phi i32 [ %461, %1201 ], [ %1334, %1329 ]
  %1346 = fmul fast float %937, %275
  %1347 = fmul fast float %937, %276
  %1348 = fmul fast float %937, %277
  %1349 = fadd fast float %1346, %449
  %1350 = fadd fast float %1347, %450
  %1351 = fadd fast float %1348, %451
  %1352 = fcmp fast olt float %1337, %417
  %1353 = extractvalue %dx.types.CBufRet.f32 %1198, 2
  %1354 = fcmp fast olt float %1353, %1339
  %1355 = and i1 %1352, %1354
  br i1 %1355, label %440, label %1356

; <label>:1356                                    ; preds = %1336
  %1357 = uitofp i32 %464 to float
  br label %1358

; <label>:1358                                    ; preds = %1356, %410
  %1359 = phi float [ 0.000000e+00, %410 ], [ %1338, %1356 ]
  %1360 = phi float [ 1.000000e+00, %410 ], [ %1339, %1356 ]
  %1361 = phi float [ 0.000000e+00, %410 ], [ %1357, %1356 ]
  %1362 = phi float [ 0.000000e+00, %410 ], [ %1340, %1356 ]
  %1363 = phi float [ 0.000000e+00, %410 ], [ %1341, %1356 ]
  %1364 = phi float [ 0.000000e+00, %410 ], [ %1342, %1356 ]
  %1365 = phi float [ 0.000000e+00, %410 ], [ %1343, %1356 ]
  %1366 = phi float [ 0.000000e+00, %410 ], [ %1344, %1356 ]
  %1367 = phi i32 [ 0, %410 ], [ %1345, %1356 ]
  %1368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.i32 %1368, 0
  %1370 = icmp eq i32 %1369, 0
  br i1 %1370, label %1412, label %1371, !dx.controlflow.hints !66

; <label>:1371                                    ; preds = %1358
  %1372 = icmp eq i32 %1367, 0
  br i1 %1372, label %1411, label %1373, !dx.controlflow.hints !67

; <label>:1373                                    ; preds = %1371
  %1374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1375 = extractvalue %dx.types.CBufRet.i32 %1374, 2
  %1376 = icmp eq i32 %1375, 0
  br i1 %1376, label %1383, label %1377, !dx.controlflow.hints !68

; <label>:1377                                    ; preds = %1373
  %1378 = fsub fast float 1.000000e+00, %1360
  %1379 = fdiv fast float %1363, %1378
  %1380 = fdiv fast float %1364, %1378
  %1381 = fdiv fast float %1365, %1378
  %1382 = fdiv fast float %1366, %1378
  br label %1388

; <label>:1383                                    ; preds = %1373
  %1384 = fadd fast float %1363, %1360
  %1385 = fadd fast float %1364, %1360
  %1386 = fadd fast float %1365, %1360
  %1387 = fadd fast float %1366, %1360
  br label %1388

; <label>:1388                                    ; preds = %1383, %1377
  %1389 = phi float [ %1379, %1377 ], [ %1384, %1383 ]
  %1390 = phi float [ %1380, %1377 ], [ %1385, %1383 ]
  %1391 = phi float [ %1381, %1377 ], [ %1386, %1383 ]
  %1392 = phi float [ %1382, %1377 ], [ %1387, %1383 ]
  %1393 = call float @dx.op.binary.f32(i32 35, float %1389, float -1.000000e+00)  ; FMax(a,b)
  %1394 = call float @dx.op.binary.f32(i32 35, float %1390, float -1.000000e+00)  ; FMax(a,b)
  %1395 = call float @dx.op.binary.f32(i32 35, float %1391, float -1.000000e+00)  ; FMax(a,b)
  %1396 = call float @dx.op.binary.f32(i32 35, float %1392, float -1.000000e+00)  ; FMax(a,b)
  %1397 = call float @dx.op.binary.f32(i32 36, float %1393, float 1.000000e+00)  ; FMin(a,b)
  %1398 = call float @dx.op.binary.f32(i32 36, float %1394, float 1.000000e+00)  ; FMin(a,b)
  %1399 = call float @dx.op.binary.f32(i32 36, float %1395, float 1.000000e+00)  ; FMin(a,b)
  %1400 = call float @dx.op.binary.f32(i32 36, float %1396, float 1.000000e+00)  ; FMin(a,b)
  %1401 = fmul fast float %1397, 1.500000e+00
  %1402 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1399, float %1401)  ; FMad(a,b,c)
  %1403 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1398, float 0.000000e+00)  ; FMad(a,b,c)
  %1404 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1400, float %1403)  ; FMad(a,b,c)
  %1405 = fmul fast float %1397, 0x3FEBB67AE0000000
  %1406 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1399, float %1405)  ; FMad(a,b,c)
  %1407 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1398, float 0.000000e+00)  ; FMad(a,b,c)
  %1408 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1400, float %1407)  ; FMad(a,b,c)
  %1409 = fadd fast float %1402, 5.000000e-01
  %1410 = fadd fast float %1406, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 0, float %1409, float %1404, float %1410, float %1408, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1412

; <label>:1411                                    ; preds = %1371
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1412

; <label>:1412                                    ; preds = %1411, %1388, %1358
  %1413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1414 = extractvalue %dx.types.CBufRet.f32 %1413, 0
  %1415 = extractvalue %dx.types.CBufRet.f32 %1413, 1
  %1416 = extractvalue %dx.types.CBufRet.f32 %1413, 2
  %1417 = call float @dx.op.dot3.f32(i32 55, float %275, float %276, float %277, float %1414, float %1415, float %1416)  ; Dot3(ax,ay,az,bx,by,bz)
  %1418 = fmul fast float %1417, %1359
  %1419 = fcmp fast ogt float %1362, 0.000000e+00
  %1420 = fdiv fast float 1.000000e+00, %1362
  %1421 = fmul fast float %1418, %1420
  %1422 = select i1 %1419, float %1421, float %286
  %1423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1424 = extractvalue %dx.types.CBufRet.f32 %1423, 0
  %1425 = extractvalue %dx.types.CBufRet.f32 %1423, 1
  %1426 = extractvalue %dx.types.CBufRet.f32 %1423, 2
  %1427 = fmul fast float %1424, %239
  %1428 = fmul fast float %1425, %239
  %1429 = fmul fast float %1426, %239
  %1430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.f32 %1430, 0
  %1432 = extractvalue %dx.types.CBufRet.f32 %1430, 1
  %1433 = extractvalue %dx.types.CBufRet.f32 %1430, 2
  %1434 = fmul fast float %1431, %240
  %1435 = fmul fast float %1432, %240
  %1436 = fmul fast float %1433, %240
  %1437 = fadd fast float %1434, %1427
  %1438 = fadd fast float %1435, %1428
  %1439 = fadd fast float %1436, %1429
  %1440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1441 = extractvalue %dx.types.CBufRet.f32 %1440, 0
  %1442 = extractvalue %dx.types.CBufRet.f32 %1440, 1
  %1443 = extractvalue %dx.types.CBufRet.f32 %1440, 2
  %1444 = fadd fast float %1437, %1441
  %1445 = fadd fast float %1438, %1442
  %1446 = fadd fast float %1439, %1443
  %1447 = fmul fast float %1444, %1422
  %1448 = fmul fast float %1445, %1422
  %1449 = fmul fast float %1446, %1422
  %1450 = call float @dx.op.dot3.f32(i32 55, float %1447, float %1448, float %1449, float %1447, float %1448, float %1449)  ; Dot3(ax,ay,az,bx,by,bz)
  %1451 = call float @dx.op.unary.f32(i32 25, float %1450)  ; Rsqrt(value)
  %1452 = fmul fast float %1451, %1450
  %1453 = fmul fast float %1451, %1447
  %1454 = fmul fast float %1451, %1448
  %1455 = fmul fast float %1451, %1449
  %1456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.i32 %1456, 1
  %1458 = and i32 %1457, 1
  %1459 = icmp ne i32 %1458, 0
  %1460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1461 = extractvalue %dx.types.CBufRet.f32 %1460, 2
  %1462 = fcmp fast ogt float %1461, 0.000000e+00
  %1463 = and i1 %1459, %1462
  br i1 %1463, label %1464, label %1622, !dx.controlflow.hints !69

; <label>:1464                                    ; preds = %1412
  %1465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.f32 %1465, 2
  %1467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1468 = extractvalue %dx.types.CBufRet.f32 %1467, 2
  %1469 = fsub fast float %1466, %1468
  %1470 = extractvalue %dx.types.CBufRet.i32 %1456, 0
  %1471 = call i32 @dx.op.binary.i32(i32 40, i32 %1470, i32 3)  ; UMin(a,b)
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.f32 %1472, 0
  %1474 = extractvalue %dx.types.CBufRet.f32 %1472, 1
  %1475 = extractvalue %dx.types.CBufRet.f32 %1467, 0
  %1476 = extractvalue %dx.types.CBufRet.f32 %1467, 1
  %1477 = fsub fast float %1473, %1475
  %1478 = fsub fast float %1474, %1476
  %1479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1480 = extractvalue %dx.types.CBufRet.f32 %1479, 0
  %1481 = fcmp fast ogt float %1480, 0.000000e+00
  %1482 = fsub fast float -0.000000e+00, %1477
  %1483 = fsub fast float -0.000000e+00, %1478
  %1484 = call float @dx.op.dot2.f32(i32 54, float %1453, float %1454, float %1453, float %1454)  ; Dot2(ax,ay,bx,by)
  %1485 = call float @dx.op.dot2.f32(i32 54, float %1453, float %1454, float %1482, float %1483)  ; Dot2(ax,ay,bx,by)
  %1486 = fmul fast float %1485, 2.000000e+00
  %1487 = call float @dx.op.dot2.f32(i32 54, float %1482, float %1483, float %1482, float %1483)  ; Dot2(ax,ay,bx,by)
  %1488 = fmul fast float %1480, %1480
  %1489 = fsub fast float %1487, %1488
  %1490 = fmul fast float %1486, %1486
  %1491 = fmul fast float %1484, 4.000000e+00
  %1492 = fmul fast float %1491, %1489
  %1493 = fsub fast float %1490, %1492
  %1494 = fcmp fast ogt float %1493, 0.000000e+00
  br i1 %1494, label %1495, label %1510, !dx.controlflow.hints !70

; <label>:1495                                    ; preds = %1464
  %1496 = fcmp fast ogt float %1486, 0.000000e+00
  %1497 = call float @dx.op.unary.f32(i32 24, float %1493)  ; Sqrt(value)
  %1498 = fsub fast float -0.000000e+00, %1497
  %1499 = select i1 %1496, float %1497, float %1498
  %1500 = fadd fast float %1499, %1486
  %1501 = fmul float %1500, -5.000000e-01
  %1502 = fdiv fast float %1501, %1484
  %1503 = call float @dx.op.binary.f32(i32 35, float %1502, float 0.000000e+00)  ; FMax(a,b)
  %1504 = call float @dx.op.binary.f32(i32 36, float %1452, float %1503)  ; FMin(a,b)
  %1505 = fdiv fast float %1489, %1501
  %1506 = call float @dx.op.binary.f32(i32 35, float %1505, float 0.000000e+00)  ; FMax(a,b)
  %1507 = call float @dx.op.binary.f32(i32 36, float %1452, float %1506)  ; FMin(a,b)
  %1508 = call float @dx.op.binary.f32(i32 36, float %1504, float %1507)  ; FMin(a,b)
  %1509 = call float @dx.op.binary.f32(i32 35, float %1504, float %1507)  ; FMax(a,b)
  br label %1510

; <label>:1510                                    ; preds = %1495, %1464
  %1511 = phi float [ %1509, %1495 ], [ -1.000000e+00, %1464 ]
  %1512 = phi float [ %1508, %1495 ], [ -1.000000e+00, %1464 ]
  %1513 = phi i1 [ true, %1495 ], [ false, %1464 ]
  %1514 = and i1 %1481, %1513
  br i1 %1514, label %1515, label %1517, !dx.controlflow.hints !71

; <label>:1515                                    ; preds = %1510
  %1516 = fcmp fast oeq float %1512, %1511
  br i1 %1516, label %1622, label %1518, !dx.controlflow.hints !72

; <label>:1517                                    ; preds = %1510
  br i1 %1481, label %1622, label %1518, !dx.controlflow.hints !73

; <label>:1518                                    ; preds = %1517, %1515
  %1519 = phi float [ %1452, %1517 ], [ %1511, %1515 ]
  %1520 = phi float [ 0.000000e+00, %1517 ], [ %1512, %1515 ]
  %1521 = fcmp fast oeq float %1455, 0.000000e+00
  %1522 = fdiv fast float %1469, %1455
  %1523 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1522)  ; FMax(a,b)
  %1524 = select i1 %1521, float %1519, float %1523
  %1525 = call float @dx.op.binary.f32(i32 36, float %1519, float %1524)  ; FMin(a,b)
  %1526 = fcmp fast ogt float %1455, 0.000000e+00
  %1527 = fcmp fast olt float %1469, 0.000000e+00
  br i1 %1526, label %1528, label %1529, !dx.controlflow.hints !74

; <label>:1528                                    ; preds = %1518
  br i1 %1527, label %1622, label %1532, !dx.controlflow.hints !75

; <label>:1529                                    ; preds = %1518
  br i1 %1527, label %1530, label %1532, !dx.controlflow.hints !76

; <label>:1530                                    ; preds = %1529
  %1531 = call float @dx.op.binary.f32(i32 35, float %1520, float %1525)  ; FMax(a,b)
  br label %1532

; <label>:1532                                    ; preds = %1530, %1529, %1528
  %1533 = phi float [ %1531, %1530 ], [ %1520, %1529 ], [ %1520, %1528 ]
  %1534 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 0
  store float -1.000000e+00, float* %1534, align 4, !tbaa !77, !noalias !81
  %1535 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 1
  store float -1.000000e+00, float* %1535, align 4, !tbaa !77, !noalias !81
  %1536 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 2
  store float -1.000000e+00, float* %1536, align 4, !tbaa !77, !noalias !81
  %1537 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 0
  store float -1.000000e+00, float* %1537, align 4, !tbaa !77, !noalias !81
  %1538 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 1
  store float -1.000000e+00, float* %1538, align 4, !tbaa !77, !noalias !81
  %1539 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 2
  store float -1.000000e+00, float* %1539, align 4, !tbaa !77, !noalias !81
  %1540 = icmp sgt i32 %1471, 0
  br i1 %1540, label %1541, label %1599

; <label>:1541                                    ; preds = %1532
  br label %1542

; <label>:1542                                    ; preds = %1589, %1541
  %1543 = phi i32 [ %1590, %1589 ], [ 0, %1541 ]
  %1544 = add nuw i32 %1543, 171
  %1545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %1544)  ; CBufferLoadLegacy(handle,regIndex)
  %1546 = extractvalue %dx.types.CBufRet.f32 %1545, 0
  %1547 = extractvalue %dx.types.CBufRet.f32 %1545, 1
  %1548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1549 = extractvalue %dx.types.CBufRet.f32 %1548, 0
  %1550 = extractvalue %dx.types.CBufRet.f32 %1548, 1
  %1551 = fsub fast float %1546, %1549
  %1552 = fsub fast float %1547, %1550
  %1553 = extractvalue %dx.types.CBufRet.f32 %1545, 2
  %1554 = fsub fast float -0.000000e+00, %1551
  %1555 = fsub fast float -0.000000e+00, %1552
  %1556 = call float @dx.op.dot2.f32(i32 54, float %1453, float %1454, float %1554, float %1555)  ; Dot2(ax,ay,bx,by)
  %1557 = fmul fast float %1556, 2.000000e+00
  %1558 = call float @dx.op.dot2.f32(i32 54, float %1554, float %1555, float %1554, float %1555)  ; Dot2(ax,ay,bx,by)
  %1559 = fmul fast float %1553, %1553
  %1560 = fsub fast float %1558, %1559
  %1561 = fmul fast float %1557, %1557
  %1562 = fmul fast float %1491, %1560
  %1563 = fsub fast float %1561, %1562
  %1564 = fcmp fast ogt float %1563, 0.000000e+00
  br i1 %1564, label %1565, label %1580, !dx.controlflow.hints !70

; <label>:1565                                    ; preds = %1542
  %1566 = fcmp fast ogt float %1557, 0.000000e+00
  %1567 = call float @dx.op.unary.f32(i32 24, float %1563)  ; Sqrt(value)
  %1568 = fsub fast float -0.000000e+00, %1567
  %1569 = select i1 %1566, float %1567, float %1568
  %1570 = fadd fast float %1569, %1557
  %1571 = fmul float %1570, -5.000000e-01
  %1572 = fdiv fast float %1571, %1484
  %1573 = call float @dx.op.binary.f32(i32 35, float %1572, float 0.000000e+00)  ; FMax(a,b)
  %1574 = call float @dx.op.binary.f32(i32 36, float %1519, float %1573)  ; FMin(a,b)
  %1575 = fdiv fast float %1560, %1571
  %1576 = call float @dx.op.binary.f32(i32 35, float %1575, float 0.000000e+00)  ; FMax(a,b)
  %1577 = call float @dx.op.binary.f32(i32 36, float %1519, float %1576)  ; FMin(a,b)
  %1578 = call float @dx.op.binary.f32(i32 36, float %1574, float %1577)  ; FMin(a,b)
  %1579 = call float @dx.op.binary.f32(i32 35, float %1574, float %1577)  ; FMax(a,b)
  br label %1580

; <label>:1580                                    ; preds = %1565, %1542
  %1581 = phi float [ %1579, %1565 ], [ -1.000000e+00, %1542 ]
  %1582 = phi float [ %1578, %1565 ], [ -1.000000e+00, %1542 ]
  %1583 = phi i1 [ true, %1565 ], [ false, %1542 ]
  br i1 %1583, label %1584, label %1589, !dx.controlflow.hints !92

; <label>:1584                                    ; preds = %1580
  %1585 = call float @dx.op.binary.f32(i32 35, float %1533, float %1582)  ; FMax(a,b)
  %1586 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %1543
  store float %1585, float* %1586, align 4, !tbaa !77, !noalias !81
  %1587 = call float @dx.op.binary.f32(i32 35, float %1533, float %1581)  ; FMax(a,b)
  %1588 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 %1543
  store float %1587, float* %1588, align 4, !tbaa !77, !noalias !81
  br label %1589

; <label>:1589                                    ; preds = %1584, %1580
  %1590 = add nuw nsw i32 %1543, 1
  %1591 = icmp eq i32 %1590, %1471
  br i1 %1591, label %1592, label %1542

; <label>:1592                                    ; preds = %1589
  %1593 = load float, float* %1536, align 4, !tbaa !77, !alias.scope !93, !noalias !96
  %1594 = load float, float* %1535, align 4, !tbaa !77, !alias.scope !99, !noalias !100
  %1595 = load float, float* %1534, align 4, !tbaa !77, !alias.scope !101, !noalias !102
  %1596 = load float, float* %1539, align 4, !tbaa !77, !alias.scope !103, !noalias !106
  %1597 = load float, float* %1538, align 4, !tbaa !77, !alias.scope !109, !noalias !110
  %1598 = load float, float* %1537, align 4, !tbaa !77, !alias.scope !111, !noalias !112
  br label %1599

; <label>:1599                                    ; preds = %1592, %1532
  %1600 = phi float [ -1.000000e+00, %1532 ], [ %1598, %1592 ]
  %1601 = phi float [ -1.000000e+00, %1532 ], [ %1597, %1592 ]
  %1602 = phi float [ -1.000000e+00, %1532 ], [ %1596, %1592 ]
  %1603 = phi float [ -1.000000e+00, %1532 ], [ %1595, %1592 ]
  %1604 = phi float [ -1.000000e+00, %1532 ], [ %1594, %1592 ]
  %1605 = phi float [ -1.000000e+00, %1532 ], [ %1593, %1592 ]
  %1606 = call float @dx.op.binary.f32(i32 36, float %1604, float %1605)  ; FMin(a,b)
  %1607 = call float @dx.op.binary.f32(i32 36, float %1603, float %1606)  ; FMin(a,b)
  %1608 = call float @dx.op.binary.f32(i32 35, float %1603, float %1604)  ; FMax(a,b)
  %1609 = call float @dx.op.binary.f32(i32 36, float %1608, float %1605)  ; FMin(a,b)
  %1610 = call float @dx.op.binary.f32(i32 36, float %1603, float %1604)  ; FMin(a,b)
  %1611 = call float @dx.op.binary.f32(i32 35, float %1610, float %1609)  ; FMax(a,b)
  %1612 = call float @dx.op.binary.f32(i32 35, float %1604, float %1605)  ; FMax(a,b)
  %1613 = call float @dx.op.binary.f32(i32 35, float %1603, float %1612)  ; FMax(a,b)
  store float %1607, float* %1534, align 4, !tbaa !77, !alias.scope !101, !noalias !102
  store float %1611, float* %1535, align 4, !tbaa !77, !alias.scope !99, !noalias !100
  store float %1613, float* %1536, align 4, !tbaa !77, !alias.scope !93, !noalias !96
  %1614 = call float @dx.op.binary.f32(i32 36, float %1601, float %1602)  ; FMin(a,b)
  %1615 = call float @dx.op.binary.f32(i32 36, float %1600, float %1614)  ; FMin(a,b)
  %1616 = call float @dx.op.binary.f32(i32 35, float %1600, float %1601)  ; FMax(a,b)
  %1617 = call float @dx.op.binary.f32(i32 36, float %1616, float %1602)  ; FMin(a,b)
  %1618 = call float @dx.op.binary.f32(i32 36, float %1600, float %1601)  ; FMin(a,b)
  %1619 = call float @dx.op.binary.f32(i32 35, float %1618, float %1617)  ; FMax(a,b)
  %1620 = call float @dx.op.binary.f32(i32 35, float %1601, float %1602)  ; FMax(a,b)
  %1621 = call float @dx.op.binary.f32(i32 35, float %1600, float %1620)  ; FMax(a,b)
  store float %1615, float* %1537, align 4, !tbaa !77, !alias.scope !111, !noalias !112
  store float %1619, float* %1538, align 4, !tbaa !77, !alias.scope !109, !noalias !110
  store float %1621, float* %1539, align 4, !tbaa !77, !alias.scope !103, !noalias !106
  br label %1622

; <label>:1622                                    ; preds = %1599, %1528, %1517, %1515, %1412
  %1623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1624 = extractvalue %dx.types.CBufRet.f32 %1623, 2
  %1625 = fmul fast float %1624, %1422
  %1626 = call float @dx.op.unary.f32(i32 7, float %1625)  ; Saturate(value)
  %1627 = fptoui float %1361 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1628 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %19
  store i32 %1627, i32 addrspace(3)* %1628, align 4, !tbaa !113
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1629 = and i32 %19, 63
  %1630 = icmp ult i32 %1629, 32
  br i1 %1630, label %1631, label %1637, !dx.controlflow.hints !115

; <label>:1631                                    ; preds = %1622
  %1632 = add i32 %19, 32
  %1633 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1632
  %1634 = load i32, i32 addrspace(3)* %1633, align 4, !tbaa !113
  %1635 = load i32, i32 addrspace(3)* %1628, align 4, !tbaa !113
  %1636 = call i32 @dx.op.binary.i32(i32 40, i32 %1635, i32 %1634)  ; UMin(a,b)
  store i32 %1636, i32 addrspace(3)* %1628, align 4, !tbaa !113
  br label %1637

; <label>:1637                                    ; preds = %1631, %1622
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1638 = icmp ult i32 %1629, 16
  br i1 %1638, label %1639, label %1645, !dx.controlflow.hints !116

; <label>:1639                                    ; preds = %1637
  %1640 = add i32 %19, 16
  %1641 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1640
  %1642 = load i32, i32 addrspace(3)* %1641, align 4, !tbaa !113
  %1643 = load i32, i32 addrspace(3)* %1628, align 4, !tbaa !113
  %1644 = call i32 @dx.op.binary.i32(i32 40, i32 %1643, i32 %1642)  ; UMin(a,b)
  store i32 %1644, i32 addrspace(3)* %1628, align 4, !tbaa !113
  br label %1645

; <label>:1645                                    ; preds = %1639, %1637
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1646 = icmp ult i32 %1629, 8
  br i1 %1646, label %1647, label %1653, !dx.controlflow.hints !117

; <label>:1647                                    ; preds = %1645
  %1648 = add i32 %19, 8
  %1649 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1648
  %1650 = load i32, i32 addrspace(3)* %1649, align 4, !tbaa !113
  %1651 = load i32, i32 addrspace(3)* %1628, align 4, !tbaa !113
  %1652 = call i32 @dx.op.binary.i32(i32 40, i32 %1651, i32 %1650)  ; UMin(a,b)
  store i32 %1652, i32 addrspace(3)* %1628, align 4, !tbaa !113
  br label %1653

; <label>:1653                                    ; preds = %1647, %1645
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1654 = icmp ult i32 %1629, 4
  br i1 %1654, label %1655, label %1661, !dx.controlflow.hints !118

; <label>:1655                                    ; preds = %1653
  %1656 = add i32 %19, 4
  %1657 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1656
  %1658 = load i32, i32 addrspace(3)* %1657, align 4, !tbaa !113
  %1659 = load i32, i32 addrspace(3)* %1628, align 4, !tbaa !113
  %1660 = call i32 @dx.op.binary.i32(i32 40, i32 %1659, i32 %1658)  ; UMin(a,b)
  store i32 %1660, i32 addrspace(3)* %1628, align 4, !tbaa !113
  br label %1661

; <label>:1661                                    ; preds = %1655, %1653
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1662 = icmp ult i32 %1629, 2
  br i1 %1662, label %1663, label %1669, !dx.controlflow.hints !119

; <label>:1663                                    ; preds = %1661
  %1664 = add i32 %19, 2
  %1665 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1664
  %1666 = load i32, i32 addrspace(3)* %1665, align 4, !tbaa !113
  %1667 = load i32, i32 addrspace(3)* %1628, align 4, !tbaa !113
  %1668 = call i32 @dx.op.binary.i32(i32 40, i32 %1667, i32 %1666)  ; UMin(a,b)
  store i32 %1668, i32 addrspace(3)* %1628, align 4, !tbaa !113
  br label %1669

; <label>:1669                                    ; preds = %1663, %1661
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1670 = icmp eq i32 %1629, 0
  br i1 %1670, label %1671, label %1677, !dx.controlflow.hints !120

; <label>:1671                                    ; preds = %1669
  %1672 = add i32 %19, 1
  %1673 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1672
  %1674 = load i32, i32 addrspace(3)* %1673, align 4, !tbaa !113
  %1675 = load i32, i32 addrspace(3)* %1628, align 4, !tbaa !113
  %1676 = call i32 @dx.op.binary.i32(i32 40, i32 %1675, i32 %1674)  ; UMin(a,b)
  store i32 %1676, i32 addrspace(3)* %1628, align 4, !tbaa !113
  br label %1677

; <label>:1677                                    ; preds = %1671, %1669
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1678 = and i32 %19, -64
  %1679 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1678
  %1680 = load i32, i32 addrspace(3)* %1679, align 4, !tbaa !113
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1627, i32 addrspace(3)* %1628, align 4, !tbaa !113
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1630, label %1681, label %1687, !dx.controlflow.hints !121

; <label>:1681                                    ; preds = %1677
  %1682 = add i32 %19, 32
  %1683 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1682
  %1684 = load i32, i32 addrspace(3)* %1683, align 4, !tbaa !113
  %1685 = load i32, i32 addrspace(3)* %1628, align 4, !tbaa !113
  %1686 = call i32 @dx.op.binary.i32(i32 39, i32 %1685, i32 %1684)  ; UMax(a,b)
  store i32 %1686, i32 addrspace(3)* %1628, align 4, !tbaa !113
  br label %1687

; <label>:1687                                    ; preds = %1681, %1677
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1638, label %1688, label %1694, !dx.controlflow.hints !122

; <label>:1688                                    ; preds = %1687
  %1689 = add i32 %19, 16
  %1690 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1689
  %1691 = load i32, i32 addrspace(3)* %1690, align 4, !tbaa !113
  %1692 = load i32, i32 addrspace(3)* %1628, align 4, !tbaa !113
  %1693 = call i32 @dx.op.binary.i32(i32 39, i32 %1692, i32 %1691)  ; UMax(a,b)
  store i32 %1693, i32 addrspace(3)* %1628, align 4, !tbaa !113
  br label %1694

; <label>:1694                                    ; preds = %1688, %1687
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1646, label %1695, label %1701, !dx.controlflow.hints !123

; <label>:1695                                    ; preds = %1694
  %1696 = add i32 %19, 8
  %1697 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1696
  %1698 = load i32, i32 addrspace(3)* %1697, align 4, !tbaa !113
  %1699 = load i32, i32 addrspace(3)* %1628, align 4, !tbaa !113
  %1700 = call i32 @dx.op.binary.i32(i32 39, i32 %1699, i32 %1698)  ; UMax(a,b)
  store i32 %1700, i32 addrspace(3)* %1628, align 4, !tbaa !113
  br label %1701

; <label>:1701                                    ; preds = %1695, %1694
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1654, label %1702, label %1708, !dx.controlflow.hints !124

; <label>:1702                                    ; preds = %1701
  %1703 = add i32 %19, 4
  %1704 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1703
  %1705 = load i32, i32 addrspace(3)* %1704, align 4, !tbaa !113
  %1706 = load i32, i32 addrspace(3)* %1628, align 4, !tbaa !113
  %1707 = call i32 @dx.op.binary.i32(i32 39, i32 %1706, i32 %1705)  ; UMax(a,b)
  store i32 %1707, i32 addrspace(3)* %1628, align 4, !tbaa !113
  br label %1708

; <label>:1708                                    ; preds = %1702, %1701
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1662, label %1709, label %1715, !dx.controlflow.hints !125

; <label>:1709                                    ; preds = %1708
  %1710 = add i32 %19, 2
  %1711 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1710
  %1712 = load i32, i32 addrspace(3)* %1711, align 4, !tbaa !113
  %1713 = load i32, i32 addrspace(3)* %1628, align 4, !tbaa !113
  %1714 = call i32 @dx.op.binary.i32(i32 39, i32 %1713, i32 %1712)  ; UMax(a,b)
  store i32 %1714, i32 addrspace(3)* %1628, align 4, !tbaa !113
  br label %1715

; <label>:1715                                    ; preds = %1709, %1708
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1670, label %1716, label %1722, !dx.controlflow.hints !126

; <label>:1716                                    ; preds = %1715
  %1717 = add i32 %19, 1
  %1718 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1717
  %1719 = load i32, i32 addrspace(3)* %1718, align 4, !tbaa !113
  %1720 = load i32, i32 addrspace(3)* %1628, align 4, !tbaa !113
  %1721 = call i32 @dx.op.binary.i32(i32 39, i32 %1720, i32 %1719)  ; UMax(a,b)
  store i32 %1721, i32 addrspace(3)* %1628, align 4, !tbaa !113
  br label %1722

; <label>:1722                                    ; preds = %1716, %1715
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1723 = load i32, i32 addrspace(3)* %1679, align 4, !tbaa !113
  %1724 = uitofp i32 %1723 to float
  %1725 = uitofp i32 %1680 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %17, i32 %18, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1727 = extractvalue %dx.types.CBufRet.f32 %1726, 0
  %1728 = fmul fast float %1727, %1361
  %1729 = fmul fast float %1727, %1724
  %1730 = fmul fast float %1727, %1725
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %17, i32 %18, i32 undef, float %1728, float %1729, float %1730, float %1728, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %17, i32 %18, i32 undef, float %1626, float %1626, float %1626, float %1626, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!28 = !{void ()* @cs_fog_raymarching_heightmap_particles_brfog, !"cs_fog_raymarching_heightmap_particles_brfog", null, !4, !29}
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
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
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
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = !{!78, !78, i64 0}
!78 = !{!"float", !79, i64 0}
!79 = !{!"omnipotent char", !80, i64 0}
!80 = !{!"Simple C/C++ TBAA"}
!81 = !{!82, !84, !86, !87, !89, !90, !91}
!82 = distinct !{!82, !83, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!83 = distinct !{!83, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!84 = distinct !{!84, !85, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!85 = distinct !{!85, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!86 = distinct !{!86, !85, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!87 = distinct !{!87, !88, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!88 = distinct !{!88, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!89 = distinct !{!89, !88, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!90 = distinct !{!90, !88, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!91 = distinct !{!91, !88, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = !{!94}
!94 = distinct !{!94, !95, !"\01?sort@@YAXAIAM00@Z: %c"}
!95 = distinct !{!95, !"\01?sort@@YAXAIAM00@Z"}
!96 = !{!97, !98, !82, !84, !86, !87, !89, !90, !91}
!97 = distinct !{!97, !95, !"\01?sort@@YAXAIAM00@Z: %a"}
!98 = distinct !{!98, !95, !"\01?sort@@YAXAIAM00@Z: %b"}
!99 = !{!98}
!100 = !{!97, !94, !82, !84, !86, !87, !89, !90, !91}
!101 = !{!97}
!102 = !{!98, !94, !82, !84, !86, !87, !89, !90, !91}
!103 = !{!104}
!104 = distinct !{!104, !105, !"\01?sort@@YAXAIAM00@Z: %c"}
!105 = distinct !{!105, !"\01?sort@@YAXAIAM00@Z"}
!106 = !{!107, !108, !82, !84, !86, !87, !89, !90, !91}
!107 = distinct !{!107, !105, !"\01?sort@@YAXAIAM00@Z: %a"}
!108 = distinct !{!108, !105, !"\01?sort@@YAXAIAM00@Z: %b"}
!109 = !{!108}
!110 = !{!107, !104, !82, !84, !86, !87, !89, !90, !91}
!111 = !{!107}
!112 = !{!108, !104, !82, !84, !86, !87, !89, !90, !91}
!113 = !{!114, !114, i64 0}
!114 = !{!"int", !79, i64 0}
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
!125 = distinct !{!125, !"dx.controlflow.hints", i32 2}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 2}

