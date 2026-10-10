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
; shader hash: eb0c5637f34632430be1b45c473d64c2
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
;                                   texture     f32          2d      T0            t27     1
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

define void @cs_fog_raymarching_air_particles_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %16 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %17 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = add i32 %16, %15
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 1
  %23 = add i32 %20, %22
  %24 = lshr i32 %23, 1
  %25 = and i32 %24, 1
  %26 = and i32 %23, 1
  %27 = xor i32 %25, %26
  %28 = shl i32 %15, 1
  %29 = shl i32 %16, 1
  %30 = or i32 %27, %28
  %31 = or i32 %25, %29
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = extractvalue %dx.types.ResRet.i32 %34, 1
  %37 = extractvalue %dx.types.ResRet.i32 %34, 2
  %38 = extractvalue %dx.types.ResRet.i32 %34, 3
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = extractvalue %dx.types.ResRet.i32 %39, 1
  %42 = extractvalue %dx.types.ResRet.i32 %39, 2
  %43 = extractvalue %dx.types.ResRet.i32 %39, 3
  %44 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %45 = extractvalue %dx.types.ResRet.i32 %44, 0
  %46 = extractvalue %dx.types.ResRet.i32 %44, 1
  %47 = extractvalue %dx.types.ResRet.i32 %44, 2
  %48 = extractvalue %dx.types.ResRet.i32 %44, 3
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %51 = fmul fast float %50, %50
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 0
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %55 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %56 = fmul fast float %55, 0x3FF17B1420000000
  %57 = icmp eq i32 %17, 0
  br i1 %57, label %58, label %199, !dx.controlflow.hints !29

; <label>:58                                      ; preds = %0
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 3
  %63 = extractvalue %dx.types.ResRet.i32 %32, 1
  %64 = and i32 %63, 65535
  %65 = call float @dx.op.legacyF16ToF32(i32 131, i32 %64)  ; LegacyF16ToF32(value)
  %66 = lshr i32 %33, 16
  %67 = call float @dx.op.legacyF16ToF32(i32 131, i32 %66)  ; LegacyF16ToF32(value)
  %68 = and i32 %33, 65535
  %69 = call float @dx.op.legacyF16ToF32(i32 131, i32 %68)  ; LegacyF16ToF32(value)
  %70 = lshr i32 %38, 16
  %71 = call float @dx.op.legacyF16ToF32(i32 131, i32 %70)  ; LegacyF16ToF32(value)
  %72 = and i32 %38, 65535
  %73 = call float @dx.op.legacyF16ToF32(i32 131, i32 %72)  ; LegacyF16ToF32(value)
  %74 = lshr i32 %37, 16
  %75 = call float @dx.op.legacyF16ToF32(i32 131, i32 %74)  ; LegacyF16ToF32(value)
  %76 = and i32 %37, 65535
  %77 = call float @dx.op.legacyF16ToF32(i32 131, i32 %76)  ; LegacyF16ToF32(value)
  %78 = lshr i32 %36, 16
  %79 = call float @dx.op.legacyF16ToF32(i32 131, i32 %78)  ; LegacyF16ToF32(value)
  %80 = lshr i32 %35, 16
  %81 = call float @dx.op.legacyF16ToF32(i32 131, i32 %80)  ; LegacyF16ToF32(value)
  %82 = and i32 %35, 65535
  %83 = call float @dx.op.legacyF16ToF32(i32 131, i32 %82)  ; LegacyF16ToF32(value)
  %84 = lshr i32 %43, 16
  %85 = call float @dx.op.legacyF16ToF32(i32 131, i32 %84)  ; LegacyF16ToF32(value)
  %86 = and i32 %43, 65535
  %87 = call float @dx.op.legacyF16ToF32(i32 131, i32 %86)  ; LegacyF16ToF32(value)
  %88 = lshr i32 %42, 16
  %89 = call float @dx.op.legacyF16ToF32(i32 131, i32 %88)  ; LegacyF16ToF32(value)
  %90 = and i32 %42, 65535
  %91 = call float @dx.op.legacyF16ToF32(i32 131, i32 %90)  ; LegacyF16ToF32(value)
  %92 = lshr i32 %41, 16
  %93 = call float @dx.op.legacyF16ToF32(i32 131, i32 %92)  ; LegacyF16ToF32(value)
  %94 = and i32 %41, 65535
  %95 = call float @dx.op.legacyF16ToF32(i32 131, i32 %94)  ; LegacyF16ToF32(value)
  %96 = and i32 %40, 65535
  %97 = call float @dx.op.legacyF16ToF32(i32 131, i32 %96)  ; LegacyF16ToF32(value)
  %98 = lshr i32 %48, 16
  %99 = call float @dx.op.legacyF16ToF32(i32 131, i32 %98)  ; LegacyF16ToF32(value)
  %100 = and i32 %48, 65535
  %101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %100)  ; LegacyF16ToF32(value)
  %102 = lshr i32 %47, 16
  %103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %102)  ; LegacyF16ToF32(value)
  %104 = and i32 %47, 65535
  %105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %104)  ; LegacyF16ToF32(value)
  %106 = lshr i32 %46, 16
  %107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %106)  ; LegacyF16ToF32(value)
  %108 = and i32 %46, 65535
  %109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %108)  ; LegacyF16ToF32(value)
  %110 = lshr i32 %45, 16
  %111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %110)  ; LegacyF16ToF32(value)
  %112 = and i32 %36, 65535
  %113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %112)  ; LegacyF16ToF32(value)
  %114 = lshr i32 %40, 16
  %115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %114)  ; LegacyF16ToF32(value)
  %116 = and i32 %45, 65535
  %117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %116)  ; LegacyF16ToF32(value)
  %118 = fmul fast float %113, 0x3FD20DD760000000
  %119 = fmul fast float %55, %50
  %120 = fmul fast float %119, %77
  %121 = fmul fast float %55, %55
  %122 = fmul fast float %121, 0x3FEE471020000000
  %123 = fadd fast float %122, 0xBFD42F6020000000
  %124 = fmul fast float %69, %123
  %125 = fmul fast float %75, %53
  %126 = fmul fast float %79, %54
  %127 = fmul fast float %53, %51
  %128 = fmul fast float %127, %56
  %129 = fmul fast float %128, %67
  %130 = fsub fast float -0.000000e+00, %129
  %131 = fmul fast float %54, %51
  %132 = fmul fast float %131, %56
  %133 = fmul fast float %132, %71
  %134 = fmul fast float %53, %53
  %135 = fmul fast float %54, %54
  %136 = fsub fast float %134, %135
  %137 = fmul fast float %136, 0x3FE17B1420000000
  %138 = fmul fast float %137, %65
  %139 = fmul fast float %54, 0x3FF17B1420000000
  %140 = fmul fast float %139, %53
  %141 = fmul fast float %140, %73
  %142 = fadd fast float %126, %125
  %143 = fmul fast float %142, %50
  %144 = fsub fast float %143, %120
  %145 = fmul fast float %144, 0x3FDF454380000000
  %146 = fadd fast float %124, %138
  %147 = fadd fast float %146, %141
  %148 = fmul fast float %147, %51
  %149 = fsub fast float %130, %133
  %150 = fadd fast float %149, %118
  %151 = fadd fast float %150, %145
  %152 = fadd fast float %151, %148
  %153 = fmul fast float %60, %62
  %154 = fmul fast float %153, %152
  %155 = fmul fast float %115, 0x3FD20DD760000000
  %156 = fmul fast float %119, %93
  %157 = fmul fast float %85, %123
  %158 = fmul fast float %91, %53
  %159 = fmul fast float %95, %54
  %160 = fmul fast float %128, %83
  %161 = fsub fast float -0.000000e+00, %160
  %162 = fmul fast float %132, %87
  %163 = fmul fast float %137, %81
  %164 = fmul fast float %140, %89
  %165 = fadd fast float %159, %158
  %166 = fmul fast float %165, %50
  %167 = fsub fast float %166, %156
  %168 = fmul fast float %167, 0x3FDF454380000000
  %169 = fadd fast float %157, %163
  %170 = fadd fast float %169, %164
  %171 = fmul fast float %170, %51
  %172 = fsub fast float %161, %162
  %173 = fadd fast float %172, %155
  %174 = fadd fast float %173, %168
  %175 = fadd fast float %174, %171
  %176 = fmul fast float %153, %175
  %177 = fmul fast float %117, 0x3FD20DD760000000
  %178 = fmul fast float %119, %109
  %179 = fmul fast float %101, %123
  %180 = fmul fast float %107, %53
  %181 = fmul fast float %111, %54
  %182 = fmul fast float %128, %99
  %183 = fsub fast float -0.000000e+00, %182
  %184 = fmul fast float %132, %103
  %185 = fmul fast float %137, %97
  %186 = fmul fast float %140, %105
  %187 = fadd fast float %181, %180
  %188 = fmul fast float %187, %50
  %189 = fsub fast float %188, %178
  %190 = fmul fast float %189, 0x3FDF454380000000
  %191 = fadd fast float %179, %185
  %192 = fadd fast float %191, %186
  %193 = fmul fast float %192, %51
  %194 = fsub fast float %183, %184
  %195 = fadd fast float %194, %177
  %196 = fadd fast float %195, %190
  %197 = fadd fast float %196, %193
  %198 = fmul fast float %153, %197
  br label %199

; <label>:199                                     ; preds = %58, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %200 = uitofp i32 %30 to float
  %201 = uitofp i32 %31 to float
  %202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.f32 %202, 2
  %204 = fmul fast float %203, 0x3FE3C6EF40000000
  %205 = frem fast float %200, 2.560000e+02
  %206 = frem fast float %201, 2.560000e+02
  %207 = fptoui float %205 to i32
  %208 = fptoui float %206 to i32
  %209 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %207, i32 %208, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 1
  %211 = extractvalue %dx.types.ResRet.f32 %209, 2
  %212 = extractvalue %dx.types.ResRet.f32 %209, 3
  %213 = fadd fast float %210, %204
  %214 = fadd fast float %211, %204
  %215 = fadd fast float %212, %204
  %216 = call float @dx.op.unary.f32(i32 22, float %213)  ; Frc(value)
  %217 = call float @dx.op.unary.f32(i32 22, float %214)  ; Frc(value)
  %218 = call float @dx.op.unary.f32(i32 22, float %215)  ; Frc(value)
  %219 = fadd fast float %217, %200
  %220 = fadd fast float %218, %201
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %223 = extractvalue %dx.types.CBufRet.f32 %221, 3
  %224 = fmul fast float %222, %219
  %225 = fmul fast float %223, %220
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 0
  %228 = extractvalue %dx.types.CBufRet.f32 %226, 1
  %229 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 1
  %232 = fmul fast float %224, 2.000000e+00
  %233 = fmul fast float %225, 2.000000e+00
  %234 = fsub fast float 1.000000e+00, %232
  %235 = fsub fast float 1.000000e+00, %233
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 0
  %238 = extractvalue %dx.types.CBufRet.f32 %236, 1
  %239 = extractvalue %dx.types.CBufRet.f32 %236, 2
  %240 = fmul fast float %237, %234
  %241 = fmul fast float %238, %234
  %242 = fmul fast float %239, %234
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 0
  %245 = extractvalue %dx.types.CBufRet.f32 %243, 1
  %246 = extractvalue %dx.types.CBufRet.f32 %243, 2
  %247 = fmul fast float %244, %235
  %248 = fmul fast float %245, %235
  %249 = fmul fast float %246, %235
  %250 = fadd fast float %247, %240
  %251 = fadd fast float %248, %241
  %252 = fadd fast float %249, %242
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 0
  %255 = extractvalue %dx.types.CBufRet.f32 %253, 1
  %256 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %257 = fadd fast float %250, %254
  %258 = fadd fast float %251, %255
  %259 = fadd fast float %252, %256
  %260 = fmul fast float %257, %231
  %261 = fmul fast float %258, %231
  %262 = fmul fast float %259, %231
  %263 = fmul fast float %260, %260
  %264 = fmul fast float %261, %261
  %265 = fadd fast float %263, %264
  %266 = fmul fast float %262, %262
  %267 = fadd fast float %265, %266
  %268 = call float @dx.op.unary.f32(i32 24, float %267)  ; Sqrt(value)
  %269 = fdiv fast float 1.000000e+00, %268
  %270 = fmul fast float %260, %269
  %271 = fmul fast float %261, %269
  %272 = fmul fast float %262, %269
  %273 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %30, i32 %31, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = fcmp fast ogt float %274, -1.000000e+00
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 1
  %278 = select i1 %275, float %277, float 1.000000e+00
  %279 = fadd fast float %274, 1.000000e+00
  %280 = fmul fast float %278, %279
  %281 = call float @dx.op.unary.f32(i32 6, float %280)  ; FAbs(value)
  %282 = fdiv fast float 1.000000e+00, %231
  %283 = fmul fast float %282, %268
  %284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.f32 %284, 1
  %286 = fmul fast float %285, %283
  %287 = fmul fast float %283, %281
  %288 = extractvalue %dx.types.CBufRet.f32 %276, 3
  %289 = fcmp fast oge float %281, %288
  %290 = call float @dx.op.binary.f32(i32 36, float %287, float %286)  ; FMin(a,b)
  %291 = select i1 %289, float %286, float %290
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 3
  %294 = fsub fast float -0.000000e+00, %227
  %295 = fsub fast float -0.000000e+00, %228
  %296 = fsub fast float %293, %229
  %297 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %294, float %295, float %296)  ; Dot3(ax,ay,az,bx,by,bz)
  %298 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %270, float %271, float %272)  ; Dot3(ax,ay,az,bx,by,bz)
  %299 = fdiv fast float 1.000000e+00, %298
  %300 = fmul fast float %299, %297
  %301 = fcmp fast olt float %300, 0.000000e+00
  %302 = fcmp fast ogt float %272, 0.000000e+00
  %303 = and i1 %302, %301
  br i1 %303, label %308, label %304, !dx.controlflow.hints !30

; <label>:304                                     ; preds = %199
  %305 = fcmp fast olt float %272, 0.000000e+00
  br i1 %305, label %306, label %308, !dx.controlflow.hints !31

; <label>:306                                     ; preds = %304
  %307 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %300)  ; FMax(a,b)
  br label %308

; <label>:308                                     ; preds = %306, %304, %199
  %309 = phi float [ 0.000000e+00, %199 ], [ %307, %306 ], [ 0.000000e+00, %304 ]
  %310 = phi float [ 0.000000e+00, %199 ], [ 0x47EFFFFFE0000000, %306 ], [ %300, %304 ]
  %311 = fcmp fast oeq float %310, 0.000000e+00
  br i1 %311, label %315, label %312, !dx.controlflow.hints !32

; <label>:312                                     ; preds = %308
  %313 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %309)  ; FMin(a,b)
  %314 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %310)  ; FMax(a,b)
  br label %315

; <label>:315                                     ; preds = %312, %308
  %316 = phi i32 [ 1, %312 ], [ 0, %308 ]
  %317 = phi float [ %314, %312 ], [ -1.000000e+00, %308 ]
  %318 = phi float [ %313, %312 ], [ 0x47EFFFFFE0000000, %308 ]
  %319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.f32 %319, 3
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 0
  %323 = fsub fast float %320, %229
  %324 = fadd fast float %323, %322
  %325 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %294, float %295, float %324)  ; Dot3(ax,ay,az,bx,by,bz)
  %326 = fmul fast float %299, %325
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %329 = fsub fast float %328, %229
  %330 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %294, float %295, float %329)  ; Dot3(ax,ay,az,bx,by,bz)
  %331 = fmul fast float %299, %330
  %332 = call float @dx.op.binary.f32(i32 36, float %326, float %331)  ; FMin(a,b)
  %333 = call float @dx.op.binary.f32(i32 35, float %326, float %331)  ; FMax(a,b)
  %334 = call float @dx.op.binary.f32(i32 36, float %318, float %332)  ; FMin(a,b)
  %335 = call float @dx.op.binary.f32(i32 35, float %317, float %333)  ; FMax(a,b)
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 3
  %340 = fsub fast float %337, %229
  %341 = fadd fast float %340, %339
  %342 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %294, float %295, float %341)  ; Dot3(ax,ay,az,bx,by,bz)
  %343 = fmul fast float %299, %342
  %344 = fcmp fast olt float %343, 0.000000e+00
  %345 = and i1 %302, %344
  br i1 %345, label %350, label %346, !dx.controlflow.hints !33

; <label>:346                                     ; preds = %315
  %347 = fcmp fast olt float %272, 0.000000e+00
  br i1 %347, label %348, label %350, !dx.controlflow.hints !34

; <label>:348                                     ; preds = %346
  %349 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %343)  ; FMax(a,b)
  br label %350

; <label>:350                                     ; preds = %348, %346, %315
  %351 = phi float [ 0.000000e+00, %315 ], [ %349, %348 ], [ 0.000000e+00, %346 ]
  %352 = phi float [ 0.000000e+00, %315 ], [ 0x47EFFFFFE0000000, %348 ], [ %343, %346 ]
  %353 = fcmp fast oeq float %352, 0.000000e+00
  br i1 %353, label %357, label %354, !dx.controlflow.hints !35

; <label>:354                                     ; preds = %350
  %355 = call float @dx.op.binary.f32(i32 36, float %334, float %351)  ; FMin(a,b)
  %356 = call float @dx.op.binary.f32(i32 35, float %335, float %352)  ; FMax(a,b)
  br label %357

; <label>:357                                     ; preds = %354, %350
  %358 = phi i32 [ 1, %354 ], [ 0, %350 ]
  %359 = phi float [ %356, %354 ], [ %335, %350 ]
  %360 = phi float [ %355, %354 ], [ %334, %350 ]
  %361 = fdiv fast float 1.000000e+00, %270
  %362 = fdiv fast float 1.000000e+00, %271
  %363 = fdiv fast float 1.000000e+00, %272
  %364 = call float @dx.op.binary.f32(i32 36, float %291, float %359)  ; FMin(a,b)
  %365 = call float @dx.op.binary.f32(i32 35, float %268, float %360)  ; FMax(a,b)
  %366 = extractvalue %dx.types.CBufRet.f32 %292, 0
  %367 = fmul fast float %216, 2.000000e+00
  %368 = fadd fast float %367, -1.000000e+00
  %369 = fmul fast float %366, %368
  %370 = fadd fast float %369, %365
  %371 = fcmp fast olt float %370, %364
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 2
  %374 = fcmp fast olt float %373, 1.000000e+00
  %375 = and i1 %374, %371
  br i1 %375, label %376, label %1093

; <label>:376                                     ; preds = %357
  %377 = fmul fast float %370, %272
  %378 = fadd fast float %377, %229
  %379 = fmul fast float %370, %271
  %380 = fadd fast float %379, %228
  %381 = fmul fast float %370, %270
  %382 = fadd fast float %381, %227
  br label %383

; <label>:383                                     ; preds = %1071, %376
  %384 = phi i32 [ %710, %1071 ], [ undef, %376 ]
  %385 = phi float [ %712, %1071 ], [ undef, %376 ]
  %386 = phi float [ %511, %1071 ], [ undef, %376 ]
  %387 = phi float [ %512, %1071 ], [ undef, %376 ]
  %388 = phi float [ %513, %1071 ], [ undef, %376 ]
  %389 = phi float [ %514, %1071 ], [ undef, %376 ]
  %390 = phi float [ %1073, %1071 ], [ 0.000000e+00, %376 ]
  %391 = phi float [ %1074, %1071 ], [ 1.000000e+00, %376 ]
  %392 = phi float [ %1084, %1071 ], [ %382, %376 ]
  %393 = phi float [ %1085, %1071 ], [ %380, %376 ]
  %394 = phi float [ %1086, %1071 ], [ %378, %376 ]
  %395 = phi float [ %1072, %1071 ], [ %370, %376 ]
  %396 = phi i32 [ %406, %1071 ], [ 0, %376 ]
  %397 = phi i32 [ %516, %1071 ], [ 10, %376 ]
  %398 = phi float [ %1075, %1071 ], [ 0.000000e+00, %376 ]
  %399 = phi float [ %1076, %1071 ], [ 0.000000e+00, %376 ]
  %400 = phi float [ %1077, %1071 ], [ 0.000000e+00, %376 ]
  %401 = phi float [ %1078, %1071 ], [ 0.000000e+00, %376 ]
  %402 = phi float [ %1079, %1071 ], [ 0.000000e+00, %376 ]
  %403 = phi i32 [ %1080, %1071 ], [ 0, %376 ]
  %404 = fsub fast float -0.000000e+00, %393
  %405 = fsub fast float -0.000000e+00, %392
  %406 = add i32 %396, 1
  %407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %408 = extractvalue %dx.types.CBufRet.f32 %407, 0
  %409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.f32 %409, 0
  %411 = extractvalue %dx.types.CBufRet.f32 %409, 1
  %412 = fsub fast float %392, %410
  %413 = fsub fast float %393, %411
  %414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %415 = extractvalue %dx.types.CBufRet.f32 %414, 2
  %416 = extractvalue %dx.types.CBufRet.f32 %414, 3
  %417 = fmul fast float %412, %415
  %418 = fmul fast float %413, %416
  %419 = call float @dx.op.binary.f32(i32 36, float %417, float %418)  ; FMin(a,b)
  %420 = fcmp fast olt float %419, 0.000000e+00
  %421 = call float @dx.op.binary.f32(i32 35, float %417, float %418)  ; FMax(a,b)
  %422 = fcmp fast ogt float %421, 1.000000e+00
  %423 = or i1 %420, %422
  %424 = extractvalue %dx.types.CBufRet.f32 %409, 2
  %425 = fcmp fast olt float %394, %424
  %426 = or i1 %423, %425
  %427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.f32 %427, 3
  %429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.f32 %429, 0
  %431 = fadd fast float %430, %428
  %432 = fcmp fast ogt float %394, %431
  %433 = or i1 %426, %432
  br i1 %433, label %434, label %463, !dx.controlflow.hints !36

; <label>:434                                     ; preds = %383
  %435 = extractvalue %dx.types.CBufRet.f32 %414, 0
  %436 = extractvalue %dx.types.CBufRet.f32 %414, 1
  %437 = fsub fast float %410, %392
  %438 = fmul fast float %437, %361
  %439 = fadd fast float %437, %435
  %440 = fmul fast float %439, %361
  %441 = call float @dx.op.binary.f32(i32 36, float %438, float %440)  ; FMin(a,b)
  %442 = call float @dx.op.binary.f32(i32 35, float %438, float %440)  ; FMax(a,b)
  %443 = fsub fast float %411, %393
  %444 = fmul fast float %443, %362
  %445 = fadd fast float %443, %436
  %446 = fmul fast float %445, %362
  %447 = call float @dx.op.binary.f32(i32 36, float %444, float %446)  ; FMin(a,b)
  %448 = call float @dx.op.binary.f32(i32 35, float %441, float %447)  ; FMax(a,b)
  %449 = call float @dx.op.binary.f32(i32 35, float %444, float %446)  ; FMax(a,b)
  %450 = call float @dx.op.binary.f32(i32 36, float %442, float %449)  ; FMin(a,b)
  %451 = fsub fast float %424, %394
  %452 = fmul fast float %451, %363
  %453 = fsub fast float %428, %394
  %454 = fadd fast float %453, %430
  %455 = fmul fast float %454, %363
  %456 = call float @dx.op.binary.f32(i32 36, float %452, float %455)  ; FMin(a,b)
  %457 = call float @dx.op.binary.f32(i32 35, float %448, float %456)  ; FMax(a,b)
  %458 = call float @dx.op.binary.f32(i32 35, float %452, float %455)  ; FMax(a,b)
  %459 = call float @dx.op.binary.f32(i32 36, float %450, float %458)  ; FMin(a,b)
  %460 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %457)  ; FMax(a,b)
  %461 = fcmp fast oge float %459, %460
  %462 = select i1 %461, float %457, float 1.000000e+07
  br label %509

; <label>:463                                     ; preds = %383
  %464 = fsub fast float 1.000000e+00, %418
  %465 = icmp eq i32 %397, 0
  br i1 %465, label %494, label %466

; <label>:466                                     ; preds = %463
  br label %467

; <label>:467                                     ; preds = %490, %466
  %468 = phi i32 [ %491, %490 ], [ %397, %466 ]
  %469 = uitofp i32 %468 to float
  %470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %12, float %417, float %464, float undef, float undef, i32 0, i32 0, i32 undef, float %469)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %471 = extractvalue %dx.types.ResRet.f32 %470, 0
  %472 = extractvalue %dx.types.ResRet.f32 %470, 1
  %473 = extractvalue %dx.types.ResRet.f32 %470, 2
  %474 = fcmp fast oeq float %471, 0.000000e+00
  %475 = fcmp ule float %394, %473
  %476 = fcmp uge float %394, %472
  %477 = or i1 %476, %475
  %478 = or i1 %474, %477
  br i1 %478, label %479, label %490, !dx.controlflow.hints !37

; <label>:479                                     ; preds = %467
  %480 = extractvalue %dx.types.ResRet.f32 %470, 3
  %481 = extractvalue %dx.types.CBufRet.f32 %414, 0
  %482 = and i32 %468, 31
  %483 = lshr i32 1024, %482
  %484 = uitofp i32 %483 to float
  %485 = fdiv fast float %481, %484
  %486 = add i32 %468, 1
  %487 = uitofp i32 %486 to float
  %488 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %487)  ; FMin(a,b)
  %489 = fptosi float %488 to i32
  br label %509

; <label>:490                                     ; preds = %467
  %491 = add i32 %468, -1
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %467, !llvm.loop !38

; <label>:493                                     ; preds = %490
  br label %494

; <label>:494                                     ; preds = %493, %463
  %495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %417, float %464, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  %497 = extractvalue %dx.types.ResRet.f32 %495, 1
  %498 = extractvalue %dx.types.ResRet.f32 %495, 2
  %499 = extractvalue %dx.types.ResRet.f32 %495, 3
  %500 = extractvalue %dx.types.CBufRet.f32 %414, 0
  %501 = fmul fast float %500, 9.765625e-04
  %502 = fcmp fast oeq float %496, 0.000000e+00
  %503 = fcmp ule float %394, %498
  %504 = fcmp uge float %394, %497
  %505 = or i1 %504, %503
  %506 = or i1 %502, %505
  %507 = zext i1 %506 to i32
  %508 = xor i32 %507, 1
  br label %509

; <label>:509                                     ; preds = %494, %479, %434
  %510 = phi float [ %462, %434 ], [ %485, %479 ], [ %501, %494 ]
  %511 = phi float [ %386, %434 ], [ %471, %479 ], [ %496, %494 ]
  %512 = phi float [ %387, %434 ], [ %472, %479 ], [ %497, %494 ]
  %513 = phi float [ %388, %434 ], [ %473, %479 ], [ %498, %494 ]
  %514 = phi float [ %389, %434 ], [ %480, %479 ], [ %499, %494 ]
  %515 = phi i32 [ 0, %434 ], [ 0, %479 ], [ %508, %494 ]
  %516 = phi i32 [ 10, %434 ], [ %489, %479 ], [ 1, %494 ]
  %517 = icmp eq i32 %515, 0
  %518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %519 = extractvalue %dx.types.CBufRet.f32 %518, 2
  %520 = call float @dx.op.binary.f32(i32 35, float %510, float %519)  ; FMax(a,b)
  %521 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %520)  ; FMin(a,b)
  %522 = icmp eq i32 %316, 0
  br i1 %522, label %535, label %523, !dx.controlflow.hints !40

; <label>:523                                     ; preds = %509
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 3
  %526 = extractvalue %dx.types.CBufRet.f32 %524, 2
  %527 = fmul fast float %525, %395
  %528 = fdiv fast float %527, %364
  %529 = fadd fast float %528, 1.000000e+00
  %530 = call float @dx.op.unary.f32(i32 23, float %529)  ; Log(value)
  %531 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %530)  ; FMin(a,b)
  %532 = fmul fast float %526, %364
  %533 = fmul fast float %532, %531
  %534 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %533)  ; FMin(a,b)
  br label %535

; <label>:535                                     ; preds = %523, %509
  %536 = phi float [ %534, %523 ], [ 0x47EFFFFFE0000000, %509 ]
  %537 = icmp eq i32 %358, 0
  br i1 %537, label %709, label %538, !dx.controlflow.hints !41

; <label>:538                                     ; preds = %535
  %539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %540 = extractvalue %dx.types.CBufRet.i32 %539, 1
  %541 = and i32 %540, 1
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %543, label %700, !dx.controlflow.hints !42

; <label>:543                                     ; preds = %538
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 2
  %546 = extractvalue %dx.types.CBufRet.f32 %544, 3
  %547 = fmul fast float %545, %392
  %548 = fmul fast float %546, %393
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 0
  %551 = extractvalue %dx.types.CBufRet.f32 %549, 1
  %552 = fadd fast float %547, %550
  %553 = fadd fast float %548, %551
  %554 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %555 = call float @dx.op.unary.f32(i32 7, float %553)  ; Saturate(value)
  %556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %554, float %555, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %557 = extractvalue %dx.types.ResRet.f32 %556, 0
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 0
  %560 = fmul fast float %559, %557
  %561 = fsub fast float %552, %554
  %562 = fsub fast float %553, %555
  %563 = extractvalue %dx.types.CBufRet.f32 %544, 0
  %564 = extractvalue %dx.types.CBufRet.f32 %544, 1
  %565 = fmul fast float %563, %561
  %566 = fmul fast float %564, %562
  %567 = fmul fast float %565, %565
  %568 = fmul fast float %566, %566
  %569 = fadd fast float %567, %568
  %570 = call float @dx.op.unary.f32(i32 24, float %569)  ; Sqrt(value)
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 3
  %573 = fmul fast float %572, %570
  %574 = call float @dx.op.unary.f32(i32 7, float %573)  ; Saturate(value)
  %575 = extractvalue %dx.types.CBufRet.f32 %571, 2
  %576 = fsub fast float %575, %560
  %577 = fmul fast float %576, %574
  %578 = extractvalue %dx.types.CBufRet.f32 %558, 1
  %579 = fsub fast float %394, %560
  %580 = fsub fast float %579, %578
  %581 = fsub fast float %580, %577
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 2
  %584 = fsub fast float %581, %583
  %585 = fcmp fast olt float %584, 0.000000e+00
  %586 = call float @dx.op.unary.f32(i32 6, float %584)  ; FAbs(value)
  %587 = extractvalue %dx.types.CBufRet.i32 %539, 0
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %642, label %589

; <label>:589                                     ; preds = %543
  br label %590

; <label>:590                                     ; preds = %629, %589
  %591 = phi i32 [ %635, %629 ], [ 1, %589 ]
  %592 = phi float [ %637, %629 ], [ 0x47EFFFFFE0000000, %589 ]
  %593 = phi i32 [ %638, %629 ], [ 0, %589 ]
  %594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.f32 %594, 1
  %596 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.i32 %596, 1
  %598 = and i32 %597, 8
  %599 = icmp eq i32 %598, 0
  %600 = fcmp fast ogt float %595, %581
  %601 = or i1 %600, %599
  %602 = add i32 %593, 171
  %603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 %602)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.f32 %603, 0
  %605 = extractvalue %dx.types.CBufRet.f32 %603, 1
  %606 = extractvalue %dx.types.CBufRet.f32 %603, 2
  br i1 %601, label %607, label %613, !dx.controlflow.hints !43

; <label>:607                                     ; preds = %590
  %608 = fsub fast float %604, %392
  %609 = fsub fast float %605, %393
  %610 = fmul fast float %608, %608
  %611 = fmul fast float %609, %609
  %612 = fadd fast float %610, %611
  br label %629

; <label>:613                                     ; preds = %590
  %614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %615 = extractvalue %dx.types.CBufRet.f32 %614, 2
  %616 = extractvalue %dx.types.CBufRet.f32 %594, 2
  %617 = fmul fast float %616, %615
  %618 = fsub fast float %617, %595
  %619 = fdiv fast float %606, %618
  %620 = fsub fast float %392, %604
  %621 = fsub fast float %393, %605
  %622 = fsub fast float %581, %595
  %623 = fmul fast float %619, %622
  %624 = fmul fast float %620, %620
  %625 = fmul fast float %621, %621
  %626 = fadd fast float %624, %625
  %627 = fmul fast float %623, %623
  %628 = fadd fast float %626, %627
  br label %629

; <label>:629                                     ; preds = %613, %607
  %630 = phi float [ %612, %607 ], [ %628, %613 ]
  %631 = call float @dx.op.unary.f32(i32 24, float %630)  ; Sqrt(value)
  %632 = fsub float %606, %631
  %633 = fcmp fast olt float %632, 0.000000e+00
  %634 = zext i1 %633 to i32
  %635 = and i32 %634, %591
  %636 = call float @dx.op.unary.f32(i32 6, float %632)  ; FAbs(value)
  %637 = call float @dx.op.binary.f32(i32 36, float %592, float %636)  ; FMin(a,b)
  %638 = add i32 %593, 1
  %639 = extractvalue %dx.types.CBufRet.i32 %596, 0
  %640 = icmp ult i32 %638, %639
  br i1 %640, label %590, label %641

; <label>:641                                     ; preds = %629
  br label %642

; <label>:642                                     ; preds = %641, %543
  %643 = phi i32 [ 1, %543 ], [ %635, %641 ]
  %644 = phi float [ 0x47EFFFFFE0000000, %543 ], [ %637, %641 ]
  br label %645

; <label>:645                                     ; preds = %645, %642
  %646 = phi i32 [ %643, %642 ], [ %685, %645 ]
  %647 = phi float [ 0x47EFFFFFE0000000, %642 ], [ %687, %645 ]
  %648 = phi i32 [ 0, %642 ], [ %688, %645 ]
  %649 = add nuw nsw i32 %648, 191
  %650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 %649)  ; CBufferLoadLegacy(handle,regIndex)
  %651 = extractvalue %dx.types.CBufRet.f32 %650, 0
  %652 = extractvalue %dx.types.CBufRet.f32 %650, 1
  %653 = extractvalue %dx.types.CBufRet.f32 %650, 2
  %654 = add nuw nsw i32 %648, 195
  %655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 %654)  ; CBufferLoadLegacy(handle,regIndex)
  %656 = extractvalue %dx.types.CBufRet.f32 %655, 0
  %657 = extractvalue %dx.types.CBufRet.f32 %655, 1
  %658 = extractvalue %dx.types.CBufRet.f32 %655, 2
  %659 = fsub fast float %392, %651
  %660 = fsub fast float %393, %652
  %661 = fsub fast float %581, %653
  %662 = call float @dx.op.unary.f32(i32 6, float %659)  ; FAbs(value)
  %663 = call float @dx.op.unary.f32(i32 6, float %660)  ; FAbs(value)
  %664 = call float @dx.op.unary.f32(i32 6, float %661)  ; FAbs(value)
  %665 = fsub fast float %662, %656
  %666 = fsub fast float %663, %657
  %667 = fsub fast float %664, %658
  %668 = call float @dx.op.binary.f32(i32 35, float %665, float 0.000000e+00)  ; FMax(a,b)
  %669 = call float @dx.op.binary.f32(i32 35, float %666, float 0.000000e+00)  ; FMax(a,b)
  %670 = call float @dx.op.binary.f32(i32 35, float %667, float 0.000000e+00)  ; FMax(a,b)
  %671 = fmul fast float %668, %668
  %672 = fmul fast float %669, %669
  %673 = fadd fast float %672, %671
  %674 = fmul fast float %670, %670
  %675 = fadd fast float %673, %674
  %676 = call float @dx.op.unary.f32(i32 24, float %675)  ; Sqrt(value)
  %677 = call float @dx.op.binary.f32(i32 35, float %666, float %667)  ; FMax(a,b)
  %678 = call float @dx.op.binary.f32(i32 35, float %665, float %677)  ; FMax(a,b)
  %679 = call float @dx.op.binary.f32(i32 36, float %678, float 0.000000e+00)  ; FMin(a,b)
  %680 = fadd fast float %679, %676
  %681 = fsub fast float -0.000000e+00, %680
  %682 = fcmp ogt float %680, -0.000000e+00
  %683 = icmp ne i32 %646, 0
  %684 = and i1 %683, %682
  %685 = zext i1 %684 to i32
  %686 = call float @dx.op.unary.f32(i32 6, float %681)  ; FAbs(value)
  %687 = call float @dx.op.binary.f32(i32 36, float %647, float %686)  ; FMin(a,b)
  %688 = add nuw nsw i32 %648, 1
  %689 = icmp eq i32 %688, 4
  br i1 %689, label %690, label %645

; <label>:690                                     ; preds = %645
  %691 = call float @dx.op.binary.f32(i32 36, float %586, float %687)  ; FMin(a,b)
  %692 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.i32 %692, 1
  %694 = and i32 %693, 2
  %695 = icmp ne i32 %694, 0
  %696 = xor i1 %684, %695
  %697 = call float @dx.op.binary.f32(i32 36, float %691, float %644)  ; FMin(a,b)
  %698 = and i1 %696, %585
  %699 = zext i1 %698 to i32
  br label %700

; <label>:700                                     ; preds = %690, %538
  %701 = phi i32 [ %384, %538 ], [ %699, %690 ]
  %702 = phi float [ 0.000000e+00, %538 ], [ %697, %690 ]
  %703 = phi float [ %394, %538 ], [ %581, %690 ]
  %704 = icmp ne i32 %701, 0
  %705 = extractvalue %dx.types.CBufRet.f32 %518, 3
  %706 = call float @dx.op.binary.f32(i32 35, float %702, float %705)  ; FMax(a,b)
  %707 = call float @dx.op.binary.f32(i32 36, float %536, float %706)  ; FMin(a,b)
  %708 = zext i1 %704 to i32
  br label %709

; <label>:709                                     ; preds = %700, %535
  %710 = phi i32 [ %701, %700 ], [ %384, %535 ]
  %711 = phi i32 [ %708, %700 ], [ 0, %535 ]
  %712 = phi float [ %703, %700 ], [ %385, %535 ]
  %713 = phi float [ %707, %700 ], [ %536, %535 ]
  %714 = extractvalue %dx.types.CBufRet.f32 %407, 2
  %715 = fmul fast float %714, %395
  %716 = call float @dx.op.unary.f32(i32 23, float %715)  ; Log(value)
  %717 = fmul fast float %716, 0x3FE62E4300000000
  %718 = call float @dx.op.binary.f32(i32 35, float %717, float 1.000000e+00)  ; FMax(a,b)
  %719 = fmul fast float %718, %713
  %720 = call float @dx.op.binary.f32(i32 36, float %719, float %521)  ; FMin(a,b)
  %721 = call float @dx.op.binary.f32(i32 35, float %720, float %408)  ; FMax(a,b)
  %722 = fadd fast float %364, 0x3F1A36E2E0000000
  %723 = fsub fast float %722, %395
  %724 = call float @dx.op.binary.f32(i32 36, float %723, float %721)  ; FMin(a,b)
  br i1 %522, label %770, label %725, !dx.controlflow.hints !44

; <label>:725                                     ; preds = %709
  %726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %727 = extractvalue %dx.types.CBufRet.f32 %726, 0
  %728 = fsub fast float %727, %394
  %729 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %405, float %404, float %728)  ; Dot3(ax,ay,az,bx,by,bz)
  %730 = fmul fast float %299, %729
  %731 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %730)  ; FMax(a,b)
  %732 = fcmp fast olt float %272, 0.000000e+00
  %733 = call float @dx.op.binary.f32(i32 36, float %724, float %731)  ; FMin(a,b)
  br i1 %732, label %735, label %734, !dx.controlflow.hints !45

; <label>:734                                     ; preds = %725
  br label %735

; <label>:735                                     ; preds = %734, %725
  %736 = phi float [ 0.000000e+00, %734 ], [ %733, %725 ]
  %737 = phi float [ %733, %734 ], [ %724, %725 ]
  %738 = phi float [ %733, %734 ], [ 0.000000e+00, %725 ]
  %739 = phi float [ %724, %734 ], [ %733, %725 ]
  %740 = fsub fast float %737, %736
  %741 = extractvalue %dx.types.CBufRet.f32 %726, 1
  %742 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %741)  ; FMin(a,b)
  %743 = fsub fast float %394, %727
  %744 = fmul fast float %742, 0x3FF7154760000000
  %745 = fmul fast float %744, %743
  %746 = call float @dx.op.unary.f32(i32 21, float %745)  ; Exp(value)
  %747 = fmul fast float %272, 0x3FF7154760000000
  %748 = fmul fast float %747, %739
  %749 = fmul fast float %748, %742
  %750 = call float @dx.op.unary.f32(i32 21, float %749)  ; Exp(value)
  %751 = fmul fast float %747, %738
  %752 = fmul fast float %751, %742
  %753 = call float @dx.op.unary.f32(i32 21, float %752)  ; Exp(value)
  %754 = fsub fast float %750, %753
  %755 = fmul fast float %754, %746
  %756 = fmul fast float %742, %272
  %757 = fdiv fast float %755, %756
  %758 = fadd fast float %740, %757
  %759 = call float @dx.op.unary.f32(i32 6, float %272)  ; FAbs(value)
  %760 = fcmp fast olt float %759, 0x3F0FFB4800000000
  %761 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %743)  ; FMax(a,b)
  %762 = fmul fast float %761, 0x3FF7154760000000
  %763 = fmul fast float %762, %741
  %764 = call float @dx.op.unary.f32(i32 21, float %763)  ; Exp(value)
  %765 = fmul fast float %764, %724
  %766 = select i1 %760, float %765, float %758
  %767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.f32 %767, 1
  %769 = fmul fast float %766, %768
  br label %770

; <label>:770                                     ; preds = %735, %709
  %771 = phi float [ %769, %735 ], [ 0.000000e+00, %709 ]
  br i1 %517, label %897, label %772, !dx.controlflow.hints !46

; <label>:772                                     ; preds = %770
  %773 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.i32 %773, 0
  %775 = icmp ne i32 %774, 0
  %776 = zext i1 %775 to i32
  %777 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %778 = extractvalue %dx.types.CBufRet.i32 %777, 0
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %813, label %780

; <label>:780                                     ; preds = %772
  br label %781

; <label>:781                                     ; preds = %808, %780
  %782 = phi i32 [ %809, %808 ], [ 0, %780 ]
  %783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %782, i32 0)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.f32 %783, 0
  %785 = extractvalue %dx.types.ResRet.f32 %783, 1
  %786 = extractvalue %dx.types.ResRet.f32 %783, 2
  %787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %782, i32 16)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.f32 %787, 0
  %789 = extractvalue %dx.types.ResRet.f32 %787, 1
  %790 = extractvalue %dx.types.ResRet.f32 %787, 2
  %791 = fsub fast float %784, %788
  %792 = fsub fast float %785, %789
  %793 = fsub fast float %786, %790
  %794 = fadd fast float %788, %784
  %795 = fadd fast float %789, %785
  %796 = fadd fast float %790, %786
  %797 = fcmp fast olt float %392, %791
  %798 = fcmp fast olt float %393, %792
  %799 = fcmp fast olt float %394, %793
  %800 = or i1 %797, %798
  %801 = or i1 %799, %800
  %802 = fcmp fast ogt float %392, %794
  %803 = fcmp fast ogt float %393, %795
  %804 = fcmp fast ogt float %394, %796
  %805 = or i1 %802, %803
  %806 = or i1 %804, %805
  %807 = or i1 %801, %806
  br i1 %807, label %808, label %811, !dx.controlflow.hints !47

; <label>:808                                     ; preds = %781
  %809 = add nuw i32 %782, 1
  %810 = icmp ult i32 %809, %778
  br i1 %810, label %781, label %811

; <label>:811                                     ; preds = %808, %781
  %812 = phi i32 [ 255, %808 ], [ %782, %781 ]
  br label %813

; <label>:813                                     ; preds = %811, %772
  %814 = phi i32 [ 255, %772 ], [ %812, %811 ]
  %815 = icmp eq i32 %814, 255
  br i1 %815, label %821, label %816, !dx.controlflow.hints !48

; <label>:816                                     ; preds = %813
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %814, i32 156)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = icmp ne i32 %818, 0
  %820 = zext i1 %819 to i32
  br label %821

; <label>:821                                     ; preds = %816, %813
  %822 = phi i32 [ %820, %816 ], [ %776, %813 ]
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %824, label %893, !dx.controlflow.hints !49

; <label>:824                                     ; preds = %821
  %825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %826 = extractvalue %dx.types.CBufRet.f32 %825, 3
  %827 = extractvalue %dx.types.CBufRet.f32 %427, 0
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 2
  %830 = extractvalue %dx.types.CBufRet.f32 %828, 3
  br i1 %815, label %841, label %831, !dx.controlflow.hints !50

; <label>:831                                     ; preds = %824
  %832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %814, i32 60)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.f32 %832, 0
  %834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %814, i32 64)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.f32 %834, 0
  %836 = extractvalue %dx.types.ResRet.f32 %834, 1
  %837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %814, i32 72)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.f32 %837, 0
  %839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %814, i32 96)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 0
  br label %841

; <label>:841                                     ; preds = %831, %824
  %842 = phi float [ %833, %831 ], [ %430, %824 ]
  %843 = phi float [ %838, %831 ], [ %428, %824 ]
  %844 = phi float [ %840, %831 ], [ %827, %824 ]
  %845 = phi float [ %835, %831 ], [ %829, %824 ]
  %846 = phi float [ %836, %831 ], [ %830, %824 ]
  %847 = call float @dx.op.binary.f32(i32 35, float %511, float 0.000000e+00)  ; FMax(a,b)
  %848 = call float @dx.op.binary.f32(i32 36, float %847, float 1.000000e+00)  ; FMin(a,b)
  %849 = call float @dx.op.unary.f32(i32 24, float %848)  ; Sqrt(value)
  %850 = call float @dx.op.binary.f32(i32 35, float %514, float 0x3F847AE140000000)  ; FMax(a,b)
  %851 = fsub fast float %512, %394
  %852 = fsub fast float %394, %513
  %853 = call float @dx.op.binary.f32(i32 36, float %852, float %851)  ; FMin(a,b)
  %854 = fdiv fast float %853, %850
  %855 = call float @dx.op.unary.f32(i32 7, float %854)  ; Saturate(value)
  %856 = fsub fast float %394, %843
  %857 = fdiv fast float %856, %842
  %858 = call float @dx.op.unary.f32(i32 7, float %857)  ; Saturate(value)
  %859 = fsub fast float 1.000000e+00, %858
  %860 = fmul float %855, %859
  %861 = fmul float %860, %860
  %862 = fmul fast float %849, %826
  %863 = fmul fast float %862, %861
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 2
  %866 = extractvalue %dx.types.CBufRet.f32 %864, 1
  %867 = fsub fast float %863, %866
  %868 = fsub fast float %865, %866
  %869 = fdiv fast float %867, %868
  %870 = call float @dx.op.unary.f32(i32 7, float %869)  ; Saturate(value)
  %871 = fmul fast float %870, %844
  %872 = fcmp fast ogt float %846, 0.000000e+00
  br i1 %872, label %873, label %893, !dx.controlflow.hints !51

; <label>:873                                     ; preds = %841
  %874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.f32 %874, 0
  %876 = extractvalue %dx.types.CBufRet.f32 %874, 1
  %877 = extractvalue %dx.types.CBufRet.f32 %874, 2
  %878 = fsub fast float %392, %875
  %879 = fsub fast float %393, %876
  %880 = fsub fast float %394, %877
  %881 = fmul fast float %878, %878
  %882 = fmul fast float %879, %879
  %883 = fadd fast float %881, %882
  %884 = fmul fast float %880, %880
  %885 = fadd fast float %883, %884
  %886 = call float @dx.op.unary.f32(i32 24, float %885)  ; Sqrt(value)
  %887 = fsub fast float %886, %845
  %888 = fsub fast float %846, %845
  %889 = fdiv fast float %887, %888
  %890 = call float @dx.op.unary.f32(i32 7, float %889)  ; Saturate(value)
  %891 = fmul fast float %890, %890
  %892 = fmul fast float %891, %871
  br label %893

; <label>:893                                     ; preds = %873, %841, %821
  %894 = phi float [ 0.000000e+00, %821 ], [ %892, %873 ], [ %871, %841 ]
  %895 = fmul fast float %894, %724
  %896 = fadd fast float %895, %771
  br label %897

; <label>:897                                     ; preds = %893, %770
  %898 = phi float [ %896, %893 ], [ %771, %770 ]
  %899 = icmp eq i32 %711, 0
  br i1 %899, label %931, label %900, !dx.controlflow.hints !52

; <label>:900                                     ; preds = %897
  %901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %902 = extractvalue %dx.types.CBufRet.f32 %901, 1
  %903 = fsub fast float %724, %902
  %904 = extractvalue %dx.types.CBufRet.f32 %901, 3
  %905 = fmul fast float %903, %904
  %906 = call float @dx.op.unary.f32(i32 7, float %905)  ; Saturate(value)
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 3
  %909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %910 = extractvalue %dx.types.CBufRet.f32 %909, 2
  %911 = fsub fast float %910, %712
  %912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %913 = extractvalue %dx.types.CBufRet.f32 %912, 3
  %914 = fmul fast float %911, %913
  %915 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %916 = fmul fast float %915, %908
  %917 = extractvalue %dx.types.CBufRet.f32 %912, 0
  %918 = fsub fast float %395, %917
  %919 = extractvalue %dx.types.CBufRet.f32 %912, 1
  %920 = fmul fast float %918, %919
  %921 = call float @dx.op.unary.f32(i32 7, float %920)  ; Saturate(value)
  %922 = fsub fast float 1.000000e+00, %906
  %923 = fmul fast float %921, %922
  %924 = fadd fast float %923, %906
  %925 = extractvalue %dx.types.CBufRet.f32 %901, 0
  %926 = fsub fast float %916, %925
  %927 = fmul fast float %926, %924
  %928 = fadd fast float %927, %925
  %929 = fmul fast float %928, %724
  %930 = fadd fast float %929, %898
  br label %931

; <label>:931                                     ; preds = %900, %897
  %932 = phi float [ %930, %900 ], [ %898, %897 ]
  %933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.f32 %933, 1
  %935 = fcmp fast ogt float %932, %934
  br i1 %935, label %938, label %936, !dx.controlflow.hints !53

; <label>:936                                     ; preds = %931
  %937 = fadd fast float %724, %395
  br label %1071

; <label>:938                                     ; preds = %931
  %939 = fmul fast float %932, 0xBFF7154760000000
  %940 = call float @dx.op.unary.f32(i32 21, float %939)  ; Exp(value)
  %941 = call float @dx.op.unary.f32(i32 7, float %940)  ; Saturate(value)
  %942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.f32 %942, 0
  %944 = extractvalue %dx.types.CBufRet.f32 %942, 1
  %945 = extractvalue %dx.types.CBufRet.f32 %942, 2
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 0
  %948 = fmul fast float %947, %943
  %949 = fmul fast float %947, %944
  %950 = fmul fast float %947, %945
  %951 = fadd fast float %948, %392
  %952 = fadd fast float %949, %393
  %953 = fadd fast float %950, %394
  br i1 %537, label %1024, label %954, !dx.controlflow.hints !41

; <label>:954                                     ; preds = %938
  %955 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.i32 %955, 1
  %957 = and i32 %956, 1
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %959, label %1024, !dx.controlflow.hints !42

; <label>:959                                     ; preds = %954
  %960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.f32 %960, 2
  %962 = extractvalue %dx.types.CBufRet.f32 %960, 3
  %963 = fmul fast float %961, %951
  %964 = fmul fast float %962, %952
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 0
  %967 = extractvalue %dx.types.CBufRet.f32 %965, 1
  %968 = fadd fast float %963, %966
  %969 = fadd fast float %964, %967
  %970 = call float @dx.op.unary.f32(i32 7, float %968)  ; Saturate(value)
  %971 = call float @dx.op.unary.f32(i32 7, float %969)  ; Saturate(value)
  %972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %970, float %971, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %973 = extractvalue %dx.types.ResRet.f32 %972, 0
  %974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %975 = extractvalue %dx.types.CBufRet.f32 %974, 0
  %976 = fmul fast float %975, %973
  %977 = fsub fast float %968, %970
  %978 = fsub fast float %969, %971
  %979 = extractvalue %dx.types.CBufRet.f32 %960, 0
  %980 = extractvalue %dx.types.CBufRet.f32 %960, 1
  %981 = fmul fast float %979, %977
  %982 = fmul fast float %980, %978
  %983 = fmul fast float %981, %981
  %984 = fmul fast float %982, %982
  %985 = fadd fast float %983, %984
  %986 = call float @dx.op.unary.f32(i32 24, float %985)  ; Sqrt(value)
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 3
  %989 = fmul fast float %988, %986
  %990 = call float @dx.op.unary.f32(i32 7, float %989)  ; Saturate(value)
  %991 = extractvalue %dx.types.CBufRet.f32 %987, 2
  %992 = fsub fast float %991, %976
  %993 = fmul fast float %992, %990
  %994 = extractvalue %dx.types.CBufRet.f32 %974, 1
  %995 = fsub fast float %953, %976
  %996 = fsub fast float %995, %994
  %997 = fsub fast float %996, %993
  %998 = extractvalue %dx.types.CBufRet.i32 %955, 0
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1018, label %1000

; <label>:1000                                    ; preds = %959
  br label %1001

; <label>:1001                                    ; preds = %1013, %1000
  %1002 = phi i32 [ %1014, %1013 ], [ 0, %1000 ]
  %1003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.f32 %1003, 1
  %1005 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.i32 %1005, 1
  %1007 = and i32 %1006, 8
  %1008 = icmp eq i32 %1007, 0
  %1009 = fcmp fast ogt float %1004, %997
  %1010 = or i1 %1009, %1008
  br i1 %1010, label %1011, label %1012, !dx.controlflow.hints !43

; <label>:1011                                    ; preds = %1001
  br label %1013

; <label>:1012                                    ; preds = %1001
  br label %1013

; <label>:1013                                    ; preds = %1012, %1011
  %1014 = add i32 %1002, 1
  %1015 = extractvalue %dx.types.CBufRet.i32 %1005, 0
  %1016 = icmp ult i32 %1014, %1015
  br i1 %1016, label %1001, label %1017

; <label>:1017                                    ; preds = %1013
  br label %1018

; <label>:1018                                    ; preds = %1017, %959
  br label %1019

; <label>:1019                                    ; preds = %1019, %1018
  %1020 = phi i32 [ %1021, %1019 ], [ 0, %1018 ]
  %1021 = add nuw nsw i32 %1020, 1
  %1022 = icmp eq i32 %1021, 4
  br i1 %1022, label %1023, label %1019

; <label>:1023                                    ; preds = %1019
  br label %1024

; <label>:1024                                    ; preds = %1023, %954, %938
  %1025 = fsub fast float 1.000000e+00, %941
  %1026 = fdiv fast float %932, %724
  %1027 = fadd fast float %724, %395
  %1028 = fmul fast float %395, %395
  %1029 = fmul fast float %1027, %1027
  %1030 = fsub fast float %1028, %1029
  %1031 = fmul fast float %1030, -5.000000e-01
  %1032 = fmul fast float %1031, %1026
  %1033 = fadd fast float %1032, %390
  %1034 = fadd fast float %932, %398
  %1035 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.i32 %1035, 0
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1064, label %1038, !dx.controlflow.hints !54

; <label>:1038                                    ; preds = %1024
  %1039 = icmp ne i32 %403, 0
  %1040 = zext i1 %1039 to i32
  %1041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.f32 %1041, 2
  %1043 = extractvalue %dx.types.CBufRet.f32 %1041, 0
  %1044 = fsub fast float %1027, %1043
  %1045 = fmul fast float %1044, %1042
  %1046 = call float @dx.op.unary.f32(i32 7, float %1045)  ; Saturate(value)
  %1047 = fadd fast float %1046, -5.000000e-01
  %1048 = fmul fast float %1047, 2.000000e+00
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 2
  %1051 = fcmp fast olt float %1048, %1050
  br i1 %1051, label %1052, label %1064, !dx.controlflow.hints !55

; <label>:1052                                    ; preds = %1038
  %1053 = fmul fast float %1048, %1048
  %1054 = fmul fast float %1025, %391
  %1055 = fmul fast float %1048, %1054
  %1056 = fmul fast float %1053, %1054
  %1057 = fmul fast float %1055, %1053
  %1058 = fmul fast float %1053, %1053
  %1059 = fmul fast float %1058, %1054
  %1060 = fadd fast float %1055, %399
  %1061 = fadd fast float %1056, %400
  %1062 = fadd fast float %1057, %401
  %1063 = fadd fast float %1059, %402
  br label %1064

; <label>:1064                                    ; preds = %1052, %1038, %1024
  %1065 = phi float [ %399, %1024 ], [ %1060, %1052 ], [ %399, %1038 ]
  %1066 = phi float [ %400, %1024 ], [ %1061, %1052 ], [ %400, %1038 ]
  %1067 = phi float [ %401, %1024 ], [ %1062, %1052 ], [ %401, %1038 ]
  %1068 = phi float [ %402, %1024 ], [ %1063, %1052 ], [ %402, %1038 ]
  %1069 = phi i32 [ %403, %1024 ], [ 1, %1052 ], [ %1040, %1038 ]
  %1070 = fmul fast float %941, %391
  br label %1071

; <label>:1071                                    ; preds = %1064, %936
  %1072 = phi float [ %937, %936 ], [ %1027, %1064 ]
  %1073 = phi float [ %390, %936 ], [ %1033, %1064 ]
  %1074 = phi float [ %391, %936 ], [ %1070, %1064 ]
  %1075 = phi float [ %398, %936 ], [ %1034, %1064 ]
  %1076 = phi float [ %399, %936 ], [ %1065, %1064 ]
  %1077 = phi float [ %400, %936 ], [ %1066, %1064 ]
  %1078 = phi float [ %401, %936 ], [ %1067, %1064 ]
  %1079 = phi float [ %402, %936 ], [ %1068, %1064 ]
  %1080 = phi i32 [ %403, %936 ], [ %1069, %1064 ]
  %1081 = fmul fast float %724, %270
  %1082 = fmul fast float %724, %271
  %1083 = fmul fast float %724, %272
  %1084 = fadd fast float %1081, %392
  %1085 = fadd fast float %1082, %393
  %1086 = fadd fast float %1083, %394
  %1087 = fcmp fast olt float %1072, %364
  %1088 = extractvalue %dx.types.CBufRet.f32 %933, 2
  %1089 = fcmp fast olt float %1088, %1074
  %1090 = and i1 %1087, %1089
  br i1 %1090, label %383, label %1091

; <label>:1091                                    ; preds = %1071
  %1092 = uitofp i32 %406 to float
  br label %1093

; <label>:1093                                    ; preds = %1091, %357
  %1094 = phi float [ 0.000000e+00, %357 ], [ %1073, %1091 ]
  %1095 = phi float [ 1.000000e+00, %357 ], [ %1074, %1091 ]
  %1096 = phi float [ 0.000000e+00, %357 ], [ %1092, %1091 ]
  %1097 = phi float [ 0.000000e+00, %357 ], [ %1075, %1091 ]
  %1098 = phi float [ 0.000000e+00, %357 ], [ %1076, %1091 ]
  %1099 = phi float [ 0.000000e+00, %357 ], [ %1077, %1091 ]
  %1100 = phi float [ 0.000000e+00, %357 ], [ %1078, %1091 ]
  %1101 = phi float [ 0.000000e+00, %357 ], [ %1079, %1091 ]
  %1102 = phi i32 [ 0, %357 ], [ %1080, %1091 ]
  %1103 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1104 = extractvalue %dx.types.CBufRet.i32 %1103, 0
  %1105 = icmp eq i32 %1104, 0
  br i1 %1105, label %1147, label %1106, !dx.controlflow.hints !56

; <label>:1106                                    ; preds = %1093
  %1107 = icmp eq i32 %1102, 0
  br i1 %1107, label %1146, label %1108, !dx.controlflow.hints !57

; <label>:1108                                    ; preds = %1106
  %1109 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.i32 %1109, 2
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %1118, label %1112, !dx.controlflow.hints !58

; <label>:1112                                    ; preds = %1108
  %1113 = fsub fast float 1.000000e+00, %1095
  %1114 = fdiv fast float %1098, %1113
  %1115 = fdiv fast float %1099, %1113
  %1116 = fdiv fast float %1100, %1113
  %1117 = fdiv fast float %1101, %1113
  br label %1123

; <label>:1118                                    ; preds = %1108
  %1119 = fadd fast float %1098, %1095
  %1120 = fadd fast float %1099, %1095
  %1121 = fadd fast float %1100, %1095
  %1122 = fadd fast float %1101, %1095
  br label %1123

; <label>:1123                                    ; preds = %1118, %1112
  %1124 = phi float [ %1114, %1112 ], [ %1119, %1118 ]
  %1125 = phi float [ %1115, %1112 ], [ %1120, %1118 ]
  %1126 = phi float [ %1116, %1112 ], [ %1121, %1118 ]
  %1127 = phi float [ %1117, %1112 ], [ %1122, %1118 ]
  %1128 = call float @dx.op.binary.f32(i32 35, float %1124, float -1.000000e+00)  ; FMax(a,b)
  %1129 = call float @dx.op.binary.f32(i32 35, float %1125, float -1.000000e+00)  ; FMax(a,b)
  %1130 = call float @dx.op.binary.f32(i32 35, float %1126, float -1.000000e+00)  ; FMax(a,b)
  %1131 = call float @dx.op.binary.f32(i32 35, float %1127, float -1.000000e+00)  ; FMax(a,b)
  %1132 = call float @dx.op.binary.f32(i32 36, float %1128, float 1.000000e+00)  ; FMin(a,b)
  %1133 = call float @dx.op.binary.f32(i32 36, float %1129, float 1.000000e+00)  ; FMin(a,b)
  %1134 = call float @dx.op.binary.f32(i32 36, float %1130, float 1.000000e+00)  ; FMin(a,b)
  %1135 = call float @dx.op.binary.f32(i32 36, float %1131, float 1.000000e+00)  ; FMin(a,b)
  %1136 = fmul fast float %1132, 1.500000e+00
  %1137 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1134, float %1136)  ; FMad(a,b,c)
  %1138 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1133, float 0.000000e+00)  ; FMad(a,b,c)
  %1139 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1135, float %1138)  ; FMad(a,b,c)
  %1140 = fmul fast float %1132, 0x3FEBB67AE0000000
  %1141 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1134, float %1140)  ; FMad(a,b,c)
  %1142 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1133, float 0.000000e+00)  ; FMad(a,b,c)
  %1143 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1135, float %1142)  ; FMad(a,b,c)
  %1144 = fadd fast float %1137, 5.000000e-01
  %1145 = fadd fast float %1141, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %15, i32 %16, i32 0, float %1144, float %1139, float %1145, float %1143, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1147

; <label>:1146                                    ; preds = %1106
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %15, i32 %16, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1147

; <label>:1147                                    ; preds = %1146, %1123, %1093
  %1148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1148, 0
  %1150 = extractvalue %dx.types.CBufRet.f32 %1148, 1
  %1151 = extractvalue %dx.types.CBufRet.f32 %1148, 2
  %1152 = call float @dx.op.dot3.f32(i32 55, float %270, float %271, float %272, float %1149, float %1150, float %1151)  ; Dot3(ax,ay,az,bx,by,bz)
  %1153 = fmul fast float %1152, %1094
  %1154 = fcmp fast ogt float %1097, 0.000000e+00
  %1155 = fdiv fast float 1.000000e+00, %1097
  %1156 = fmul fast float %1153, %1155
  %1157 = select i1 %1154, float %1156, float %281
  %1158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1159 = extractvalue %dx.types.CBufRet.f32 %1158, 0
  %1160 = extractvalue %dx.types.CBufRet.f32 %1158, 1
  %1161 = extractvalue %dx.types.CBufRet.f32 %1158, 2
  %1162 = fmul fast float %1159, %234
  %1163 = fmul fast float %1160, %234
  %1164 = fmul fast float %1161, %234
  %1165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1166 = extractvalue %dx.types.CBufRet.f32 %1165, 0
  %1167 = extractvalue %dx.types.CBufRet.f32 %1165, 1
  %1168 = extractvalue %dx.types.CBufRet.f32 %1165, 2
  %1169 = fmul fast float %1166, %235
  %1170 = fmul fast float %1167, %235
  %1171 = fmul fast float %1168, %235
  %1172 = fadd fast float %1169, %1162
  %1173 = fadd fast float %1170, %1163
  %1174 = fadd fast float %1171, %1164
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.CBufRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.CBufRet.f32 %1175, 2
  %1179 = fadd fast float %1172, %1176
  %1180 = fadd fast float %1173, %1177
  %1181 = fadd fast float %1174, %1178
  %1182 = fmul fast float %1179, %1157
  %1183 = fmul fast float %1180, %1157
  %1184 = fmul fast float %1181, %1157
  %1185 = call float @dx.op.dot3.f32(i32 55, float %1182, float %1183, float %1184, float %1182, float %1183, float %1184)  ; Dot3(ax,ay,az,bx,by,bz)
  %1186 = call float @dx.op.unary.f32(i32 25, float %1185)  ; Rsqrt(value)
  %1187 = fmul fast float %1186, %1185
  %1188 = fmul fast float %1186, %1182
  %1189 = fmul fast float %1186, %1183
  %1190 = fmul fast float %1186, %1184
  %1191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1192 = extractvalue %dx.types.CBufRet.i32 %1191, 1
  %1193 = and i32 %1192, 1
  %1194 = icmp ne i32 %1193, 0
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 2
  %1197 = fcmp fast ogt float %1196, 0.000000e+00
  %1198 = and i1 %1194, %1197
  br i1 %1198, label %1199, label %1357, !dx.controlflow.hints !59

; <label>:1199                                    ; preds = %1147
  %1200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1201 = extractvalue %dx.types.CBufRet.f32 %1200, 2
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 2
  %1204 = fsub fast float %1201, %1203
  %1205 = extractvalue %dx.types.CBufRet.i32 %1191, 0
  %1206 = call i32 @dx.op.binary.i32(i32 40, i32 %1205, i32 3)  ; UMin(a,b)
  %1207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.f32 %1207, 0
  %1209 = extractvalue %dx.types.CBufRet.f32 %1207, 1
  %1210 = extractvalue %dx.types.CBufRet.f32 %1202, 0
  %1211 = extractvalue %dx.types.CBufRet.f32 %1202, 1
  %1212 = fsub fast float %1208, %1210
  %1213 = fsub fast float %1209, %1211
  %1214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1215 = extractvalue %dx.types.CBufRet.f32 %1214, 0
  %1216 = fcmp fast ogt float %1215, 0.000000e+00
  %1217 = fsub fast float -0.000000e+00, %1212
  %1218 = fsub fast float -0.000000e+00, %1213
  %1219 = call float @dx.op.dot2.f32(i32 54, float %1188, float %1189, float %1188, float %1189)  ; Dot2(ax,ay,bx,by)
  %1220 = call float @dx.op.dot2.f32(i32 54, float %1188, float %1189, float %1217, float %1218)  ; Dot2(ax,ay,bx,by)
  %1221 = fmul fast float %1220, 2.000000e+00
  %1222 = call float @dx.op.dot2.f32(i32 54, float %1217, float %1218, float %1217, float %1218)  ; Dot2(ax,ay,bx,by)
  %1223 = fmul fast float %1215, %1215
  %1224 = fsub fast float %1222, %1223
  %1225 = fmul fast float %1221, %1221
  %1226 = fmul fast float %1219, 4.000000e+00
  %1227 = fmul fast float %1226, %1224
  %1228 = fsub fast float %1225, %1227
  %1229 = fcmp fast ogt float %1228, 0.000000e+00
  br i1 %1229, label %1230, label %1245, !dx.controlflow.hints !60

; <label>:1230                                    ; preds = %1199
  %1231 = fcmp fast ogt float %1221, 0.000000e+00
  %1232 = call float @dx.op.unary.f32(i32 24, float %1228)  ; Sqrt(value)
  %1233 = fsub fast float -0.000000e+00, %1232
  %1234 = select i1 %1231, float %1232, float %1233
  %1235 = fadd fast float %1234, %1221
  %1236 = fmul float %1235, -5.000000e-01
  %1237 = fdiv fast float %1236, %1219
  %1238 = call float @dx.op.binary.f32(i32 35, float %1237, float 0.000000e+00)  ; FMax(a,b)
  %1239 = call float @dx.op.binary.f32(i32 36, float %1187, float %1238)  ; FMin(a,b)
  %1240 = fdiv fast float %1224, %1236
  %1241 = call float @dx.op.binary.f32(i32 35, float %1240, float 0.000000e+00)  ; FMax(a,b)
  %1242 = call float @dx.op.binary.f32(i32 36, float %1187, float %1241)  ; FMin(a,b)
  %1243 = call float @dx.op.binary.f32(i32 36, float %1239, float %1242)  ; FMin(a,b)
  %1244 = call float @dx.op.binary.f32(i32 35, float %1239, float %1242)  ; FMax(a,b)
  br label %1245

; <label>:1245                                    ; preds = %1230, %1199
  %1246 = phi float [ %1244, %1230 ], [ -1.000000e+00, %1199 ]
  %1247 = phi float [ %1243, %1230 ], [ -1.000000e+00, %1199 ]
  %1248 = phi i1 [ true, %1230 ], [ false, %1199 ]
  %1249 = and i1 %1216, %1248
  br i1 %1249, label %1250, label %1252, !dx.controlflow.hints !61

; <label>:1250                                    ; preds = %1245
  %1251 = fcmp fast oeq float %1247, %1246
  br i1 %1251, label %1357, label %1253, !dx.controlflow.hints !62

; <label>:1252                                    ; preds = %1245
  br i1 %1216, label %1357, label %1253, !dx.controlflow.hints !63

; <label>:1253                                    ; preds = %1252, %1250
  %1254 = phi float [ %1187, %1252 ], [ %1246, %1250 ]
  %1255 = phi float [ 0.000000e+00, %1252 ], [ %1247, %1250 ]
  %1256 = fcmp fast oeq float %1190, 0.000000e+00
  %1257 = fdiv fast float %1204, %1190
  %1258 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1257)  ; FMax(a,b)
  %1259 = select i1 %1256, float %1254, float %1258
  %1260 = call float @dx.op.binary.f32(i32 36, float %1254, float %1259)  ; FMin(a,b)
  %1261 = fcmp fast ogt float %1190, 0.000000e+00
  %1262 = fcmp fast olt float %1204, 0.000000e+00
  br i1 %1261, label %1263, label %1264, !dx.controlflow.hints !64

; <label>:1263                                    ; preds = %1253
  br i1 %1262, label %1357, label %1267, !dx.controlflow.hints !65

; <label>:1264                                    ; preds = %1253
  br i1 %1262, label %1265, label %1267, !dx.controlflow.hints !66

; <label>:1265                                    ; preds = %1264
  %1266 = call float @dx.op.binary.f32(i32 35, float %1255, float %1260)  ; FMax(a,b)
  br label %1267

; <label>:1267                                    ; preds = %1265, %1264, %1263
  %1268 = phi float [ %1266, %1265 ], [ %1255, %1264 ], [ %1255, %1263 ]
  %1269 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 0
  store float -1.000000e+00, float* %1269, align 4, !tbaa !67, !noalias !71
  %1270 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 1
  store float -1.000000e+00, float* %1270, align 4, !tbaa !67, !noalias !71
  %1271 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 2
  store float -1.000000e+00, float* %1271, align 4, !tbaa !67, !noalias !71
  %1272 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 0
  store float -1.000000e+00, float* %1272, align 4, !tbaa !67, !noalias !71
  %1273 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 1
  store float -1.000000e+00, float* %1273, align 4, !tbaa !67, !noalias !71
  %1274 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 2
  store float -1.000000e+00, float* %1274, align 4, !tbaa !67, !noalias !71
  %1275 = icmp sgt i32 %1206, 0
  br i1 %1275, label %1276, label %1334

; <label>:1276                                    ; preds = %1267
  br label %1277

; <label>:1277                                    ; preds = %1324, %1276
  %1278 = phi i32 [ %1325, %1324 ], [ 0, %1276 ]
  %1279 = add nuw i32 %1278, 171
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 %1279)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 0
  %1282 = extractvalue %dx.types.CBufRet.f32 %1280, 1
  %1283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1284 = extractvalue %dx.types.CBufRet.f32 %1283, 0
  %1285 = extractvalue %dx.types.CBufRet.f32 %1283, 1
  %1286 = fsub fast float %1281, %1284
  %1287 = fsub fast float %1282, %1285
  %1288 = extractvalue %dx.types.CBufRet.f32 %1280, 2
  %1289 = fsub fast float -0.000000e+00, %1286
  %1290 = fsub fast float -0.000000e+00, %1287
  %1291 = call float @dx.op.dot2.f32(i32 54, float %1188, float %1189, float %1289, float %1290)  ; Dot2(ax,ay,bx,by)
  %1292 = fmul fast float %1291, 2.000000e+00
  %1293 = call float @dx.op.dot2.f32(i32 54, float %1289, float %1290, float %1289, float %1290)  ; Dot2(ax,ay,bx,by)
  %1294 = fmul fast float %1288, %1288
  %1295 = fsub fast float %1293, %1294
  %1296 = fmul fast float %1292, %1292
  %1297 = fmul fast float %1226, %1295
  %1298 = fsub fast float %1296, %1297
  %1299 = fcmp fast ogt float %1298, 0.000000e+00
  br i1 %1299, label %1300, label %1315, !dx.controlflow.hints !60

; <label>:1300                                    ; preds = %1277
  %1301 = fcmp fast ogt float %1292, 0.000000e+00
  %1302 = call float @dx.op.unary.f32(i32 24, float %1298)  ; Sqrt(value)
  %1303 = fsub fast float -0.000000e+00, %1302
  %1304 = select i1 %1301, float %1302, float %1303
  %1305 = fadd fast float %1304, %1292
  %1306 = fmul float %1305, -5.000000e-01
  %1307 = fdiv fast float %1306, %1219
  %1308 = call float @dx.op.binary.f32(i32 35, float %1307, float 0.000000e+00)  ; FMax(a,b)
  %1309 = call float @dx.op.binary.f32(i32 36, float %1254, float %1308)  ; FMin(a,b)
  %1310 = fdiv fast float %1295, %1306
  %1311 = call float @dx.op.binary.f32(i32 35, float %1310, float 0.000000e+00)  ; FMax(a,b)
  %1312 = call float @dx.op.binary.f32(i32 36, float %1254, float %1311)  ; FMin(a,b)
  %1313 = call float @dx.op.binary.f32(i32 36, float %1309, float %1312)  ; FMin(a,b)
  %1314 = call float @dx.op.binary.f32(i32 35, float %1309, float %1312)  ; FMax(a,b)
  br label %1315

; <label>:1315                                    ; preds = %1300, %1277
  %1316 = phi float [ %1314, %1300 ], [ -1.000000e+00, %1277 ]
  %1317 = phi float [ %1313, %1300 ], [ -1.000000e+00, %1277 ]
  %1318 = phi i1 [ true, %1300 ], [ false, %1277 ]
  br i1 %1318, label %1319, label %1324, !dx.controlflow.hints !82

; <label>:1319                                    ; preds = %1315
  %1320 = call float @dx.op.binary.f32(i32 35, float %1268, float %1317)  ; FMax(a,b)
  %1321 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 %1278
  store float %1320, float* %1321, align 4, !tbaa !67, !noalias !71
  %1322 = call float @dx.op.binary.f32(i32 35, float %1268, float %1316)  ; FMax(a,b)
  %1323 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %1278
  store float %1322, float* %1323, align 4, !tbaa !67, !noalias !71
  br label %1324

; <label>:1324                                    ; preds = %1319, %1315
  %1325 = add nuw nsw i32 %1278, 1
  %1326 = icmp eq i32 %1325, %1206
  br i1 %1326, label %1327, label %1277

; <label>:1327                                    ; preds = %1324
  %1328 = load float, float* %1271, align 4, !tbaa !67, !alias.scope !83, !noalias !86
  %1329 = load float, float* %1270, align 4, !tbaa !67, !alias.scope !89, !noalias !90
  %1330 = load float, float* %1269, align 4, !tbaa !67, !alias.scope !91, !noalias !92
  %1331 = load float, float* %1274, align 4, !tbaa !67, !alias.scope !93, !noalias !96
  %1332 = load float, float* %1273, align 4, !tbaa !67, !alias.scope !99, !noalias !100
  %1333 = load float, float* %1272, align 4, !tbaa !67, !alias.scope !101, !noalias !102
  br label %1334

; <label>:1334                                    ; preds = %1327, %1267
  %1335 = phi float [ -1.000000e+00, %1267 ], [ %1333, %1327 ]
  %1336 = phi float [ -1.000000e+00, %1267 ], [ %1332, %1327 ]
  %1337 = phi float [ -1.000000e+00, %1267 ], [ %1331, %1327 ]
  %1338 = phi float [ -1.000000e+00, %1267 ], [ %1330, %1327 ]
  %1339 = phi float [ -1.000000e+00, %1267 ], [ %1329, %1327 ]
  %1340 = phi float [ -1.000000e+00, %1267 ], [ %1328, %1327 ]
  %1341 = call float @dx.op.binary.f32(i32 36, float %1339, float %1340)  ; FMin(a,b)
  %1342 = call float @dx.op.binary.f32(i32 36, float %1338, float %1341)  ; FMin(a,b)
  %1343 = call float @dx.op.binary.f32(i32 35, float %1338, float %1339)  ; FMax(a,b)
  %1344 = call float @dx.op.binary.f32(i32 36, float %1343, float %1340)  ; FMin(a,b)
  %1345 = call float @dx.op.binary.f32(i32 36, float %1338, float %1339)  ; FMin(a,b)
  %1346 = call float @dx.op.binary.f32(i32 35, float %1345, float %1344)  ; FMax(a,b)
  %1347 = call float @dx.op.binary.f32(i32 35, float %1339, float %1340)  ; FMax(a,b)
  %1348 = call float @dx.op.binary.f32(i32 35, float %1338, float %1347)  ; FMax(a,b)
  store float %1342, float* %1269, align 4, !tbaa !67, !alias.scope !91, !noalias !92
  store float %1346, float* %1270, align 4, !tbaa !67, !alias.scope !89, !noalias !90
  store float %1348, float* %1271, align 4, !tbaa !67, !alias.scope !83, !noalias !86
  %1349 = call float @dx.op.binary.f32(i32 36, float %1336, float %1337)  ; FMin(a,b)
  %1350 = call float @dx.op.binary.f32(i32 36, float %1335, float %1349)  ; FMin(a,b)
  %1351 = call float @dx.op.binary.f32(i32 35, float %1335, float %1336)  ; FMax(a,b)
  %1352 = call float @dx.op.binary.f32(i32 36, float %1351, float %1337)  ; FMin(a,b)
  %1353 = call float @dx.op.binary.f32(i32 36, float %1335, float %1336)  ; FMin(a,b)
  %1354 = call float @dx.op.binary.f32(i32 35, float %1353, float %1352)  ; FMax(a,b)
  %1355 = call float @dx.op.binary.f32(i32 35, float %1336, float %1337)  ; FMax(a,b)
  %1356 = call float @dx.op.binary.f32(i32 35, float %1335, float %1355)  ; FMax(a,b)
  store float %1350, float* %1272, align 4, !tbaa !67, !alias.scope !101, !noalias !102
  store float %1354, float* %1273, align 4, !tbaa !67, !alias.scope !99, !noalias !100
  store float %1356, float* %1274, align 4, !tbaa !67, !alias.scope !93, !noalias !96
  br label %1357

; <label>:1357                                    ; preds = %1334, %1263, %1252, %1250, %1147
  %1358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1359 = extractvalue %dx.types.CBufRet.f32 %1358, 2
  %1360 = fmul fast float %1359, %1157
  %1361 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  %1362 = fptoui float %1096 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1363 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %17
  store i32 %1362, i32 addrspace(3)* %1363, align 4, !tbaa !103
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1364 = and i32 %17, 63
  %1365 = icmp ult i32 %1364, 32
  br i1 %1365, label %1366, label %1372, !dx.controlflow.hints !105

; <label>:1366                                    ; preds = %1357
  %1367 = add i32 %17, 32
  %1368 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1367
  %1369 = load i32, i32 addrspace(3)* %1368, align 4, !tbaa !103
  %1370 = load i32, i32 addrspace(3)* %1363, align 4, !tbaa !103
  %1371 = call i32 @dx.op.binary.i32(i32 40, i32 %1370, i32 %1369)  ; UMin(a,b)
  store i32 %1371, i32 addrspace(3)* %1363, align 4, !tbaa !103
  br label %1372

; <label>:1372                                    ; preds = %1366, %1357
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1373 = icmp ult i32 %1364, 16
  br i1 %1373, label %1374, label %1380, !dx.controlflow.hints !106

; <label>:1374                                    ; preds = %1372
  %1375 = add i32 %17, 16
  %1376 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1375
  %1377 = load i32, i32 addrspace(3)* %1376, align 4, !tbaa !103
  %1378 = load i32, i32 addrspace(3)* %1363, align 4, !tbaa !103
  %1379 = call i32 @dx.op.binary.i32(i32 40, i32 %1378, i32 %1377)  ; UMin(a,b)
  store i32 %1379, i32 addrspace(3)* %1363, align 4, !tbaa !103
  br label %1380

; <label>:1380                                    ; preds = %1374, %1372
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1381 = icmp ult i32 %1364, 8
  br i1 %1381, label %1382, label %1388, !dx.controlflow.hints !107

; <label>:1382                                    ; preds = %1380
  %1383 = add i32 %17, 8
  %1384 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1383
  %1385 = load i32, i32 addrspace(3)* %1384, align 4, !tbaa !103
  %1386 = load i32, i32 addrspace(3)* %1363, align 4, !tbaa !103
  %1387 = call i32 @dx.op.binary.i32(i32 40, i32 %1386, i32 %1385)  ; UMin(a,b)
  store i32 %1387, i32 addrspace(3)* %1363, align 4, !tbaa !103
  br label %1388

; <label>:1388                                    ; preds = %1382, %1380
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1389 = icmp ult i32 %1364, 4
  br i1 %1389, label %1390, label %1396, !dx.controlflow.hints !108

; <label>:1390                                    ; preds = %1388
  %1391 = add i32 %17, 4
  %1392 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1391
  %1393 = load i32, i32 addrspace(3)* %1392, align 4, !tbaa !103
  %1394 = load i32, i32 addrspace(3)* %1363, align 4, !tbaa !103
  %1395 = call i32 @dx.op.binary.i32(i32 40, i32 %1394, i32 %1393)  ; UMin(a,b)
  store i32 %1395, i32 addrspace(3)* %1363, align 4, !tbaa !103
  br label %1396

; <label>:1396                                    ; preds = %1390, %1388
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1397 = icmp ult i32 %1364, 2
  br i1 %1397, label %1398, label %1404, !dx.controlflow.hints !109

; <label>:1398                                    ; preds = %1396
  %1399 = add i32 %17, 2
  %1400 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1399
  %1401 = load i32, i32 addrspace(3)* %1400, align 4, !tbaa !103
  %1402 = load i32, i32 addrspace(3)* %1363, align 4, !tbaa !103
  %1403 = call i32 @dx.op.binary.i32(i32 40, i32 %1402, i32 %1401)  ; UMin(a,b)
  store i32 %1403, i32 addrspace(3)* %1363, align 4, !tbaa !103
  br label %1404

; <label>:1404                                    ; preds = %1398, %1396
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1405 = icmp eq i32 %1364, 0
  br i1 %1405, label %1406, label %1412, !dx.controlflow.hints !110

; <label>:1406                                    ; preds = %1404
  %1407 = add i32 %17, 1
  %1408 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1407
  %1409 = load i32, i32 addrspace(3)* %1408, align 4, !tbaa !103
  %1410 = load i32, i32 addrspace(3)* %1363, align 4, !tbaa !103
  %1411 = call i32 @dx.op.binary.i32(i32 40, i32 %1410, i32 %1409)  ; UMin(a,b)
  store i32 %1411, i32 addrspace(3)* %1363, align 4, !tbaa !103
  br label %1412

; <label>:1412                                    ; preds = %1406, %1404
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1413 = and i32 %17, -64
  %1414 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1413
  %1415 = load i32, i32 addrspace(3)* %1414, align 4, !tbaa !103
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1362, i32 addrspace(3)* %1363, align 4, !tbaa !103
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1365, label %1416, label %1422, !dx.controlflow.hints !111

; <label>:1416                                    ; preds = %1412
  %1417 = add i32 %17, 32
  %1418 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1417
  %1419 = load i32, i32 addrspace(3)* %1418, align 4, !tbaa !103
  %1420 = load i32, i32 addrspace(3)* %1363, align 4, !tbaa !103
  %1421 = call i32 @dx.op.binary.i32(i32 39, i32 %1420, i32 %1419)  ; UMax(a,b)
  store i32 %1421, i32 addrspace(3)* %1363, align 4, !tbaa !103
  br label %1422

; <label>:1422                                    ; preds = %1416, %1412
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1373, label %1423, label %1429, !dx.controlflow.hints !112

; <label>:1423                                    ; preds = %1422
  %1424 = add i32 %17, 16
  %1425 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1424
  %1426 = load i32, i32 addrspace(3)* %1425, align 4, !tbaa !103
  %1427 = load i32, i32 addrspace(3)* %1363, align 4, !tbaa !103
  %1428 = call i32 @dx.op.binary.i32(i32 39, i32 %1427, i32 %1426)  ; UMax(a,b)
  store i32 %1428, i32 addrspace(3)* %1363, align 4, !tbaa !103
  br label %1429

; <label>:1429                                    ; preds = %1423, %1422
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1381, label %1430, label %1436, !dx.controlflow.hints !113

; <label>:1430                                    ; preds = %1429
  %1431 = add i32 %17, 8
  %1432 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1431
  %1433 = load i32, i32 addrspace(3)* %1432, align 4, !tbaa !103
  %1434 = load i32, i32 addrspace(3)* %1363, align 4, !tbaa !103
  %1435 = call i32 @dx.op.binary.i32(i32 39, i32 %1434, i32 %1433)  ; UMax(a,b)
  store i32 %1435, i32 addrspace(3)* %1363, align 4, !tbaa !103
  br label %1436

; <label>:1436                                    ; preds = %1430, %1429
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1389, label %1437, label %1443, !dx.controlflow.hints !114

; <label>:1437                                    ; preds = %1436
  %1438 = add i32 %17, 4
  %1439 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1438
  %1440 = load i32, i32 addrspace(3)* %1439, align 4, !tbaa !103
  %1441 = load i32, i32 addrspace(3)* %1363, align 4, !tbaa !103
  %1442 = call i32 @dx.op.binary.i32(i32 39, i32 %1441, i32 %1440)  ; UMax(a,b)
  store i32 %1442, i32 addrspace(3)* %1363, align 4, !tbaa !103
  br label %1443

; <label>:1443                                    ; preds = %1437, %1436
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1397, label %1444, label %1450, !dx.controlflow.hints !115

; <label>:1444                                    ; preds = %1443
  %1445 = add i32 %17, 2
  %1446 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1445
  %1447 = load i32, i32 addrspace(3)* %1446, align 4, !tbaa !103
  %1448 = load i32, i32 addrspace(3)* %1363, align 4, !tbaa !103
  %1449 = call i32 @dx.op.binary.i32(i32 39, i32 %1448, i32 %1447)  ; UMax(a,b)
  store i32 %1449, i32 addrspace(3)* %1363, align 4, !tbaa !103
  br label %1450

; <label>:1450                                    ; preds = %1444, %1443
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1405, label %1451, label %1457, !dx.controlflow.hints !116

; <label>:1451                                    ; preds = %1450
  %1452 = add i32 %17, 1
  %1453 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1452
  %1454 = load i32, i32 addrspace(3)* %1453, align 4, !tbaa !103
  %1455 = load i32, i32 addrspace(3)* %1363, align 4, !tbaa !103
  %1456 = call i32 @dx.op.binary.i32(i32 39, i32 %1455, i32 %1454)  ; UMax(a,b)
  store i32 %1456, i32 addrspace(3)* %1363, align 4, !tbaa !103
  br label %1457

; <label>:1457                                    ; preds = %1451, %1450
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1458 = load i32, i32 addrspace(3)* %1414, align 4, !tbaa !103
  %1459 = uitofp i32 %1458 to float
  %1460 = uitofp i32 %1415 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %15, i32 %16, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.f32 %1461, 0
  %1463 = fmul fast float %1462, %1096
  %1464 = fmul fast float %1462, %1459
  %1465 = fmul fast float %1462, %1460
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %15, i32 %16, i32 undef, float %1463, float %1464, float %1465, float %1463, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %15, i32 %16, i32 undef, float %1361, float %1361, float %1361, float %1361, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!26}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !14, !20, !23}
!5 = !{!6, !8, !9, !11, !12, !13}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
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
!23 = !{!24, !25}
!24 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!25 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!26 = !{void ()* @cs_fog_raymarching_air_particles_brfog, !"cs_fog_raymarching_air_particles_brfog", null, !4, !27}
!27 = !{i32 0, i64 272, i32 4, !28}
!28 = !{i32 8, i32 8, i32 1}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
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
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
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
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = !{!68, !68, i64 0}
!68 = !{!"float", !69, i64 0}
!69 = !{!"omnipotent char", !70, i64 0}
!70 = !{!"Simple C/C++ TBAA"}
!71 = !{!72, !74, !76, !77, !79, !80, !81}
!72 = distinct !{!72, !73, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!73 = distinct !{!73, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!74 = distinct !{!74, !75, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!75 = distinct !{!75, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!76 = distinct !{!76, !75, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!77 = distinct !{!77, !78, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!78 = distinct !{!78, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!79 = distinct !{!79, !78, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!80 = distinct !{!80, !78, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!81 = distinct !{!81, !78, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = !{!84}
!84 = distinct !{!84, !85, !"\01?sort@@YAXAIAM00@Z: %c"}
!85 = distinct !{!85, !"\01?sort@@YAXAIAM00@Z"}
!86 = !{!87, !88, !72, !74, !76, !77, !79, !80, !81}
!87 = distinct !{!87, !85, !"\01?sort@@YAXAIAM00@Z: %a"}
!88 = distinct !{!88, !85, !"\01?sort@@YAXAIAM00@Z: %b"}
!89 = !{!88}
!90 = !{!87, !84, !72, !74, !76, !77, !79, !80, !81}
!91 = !{!87}
!92 = !{!88, !84, !72, !74, !76, !77, !79, !80, !81}
!93 = !{!94}
!94 = distinct !{!94, !95, !"\01?sort@@YAXAIAM00@Z: %c"}
!95 = distinct !{!95, !"\01?sort@@YAXAIAM00@Z"}
!96 = !{!97, !98, !72, !74, !76, !77, !79, !80, !81}
!97 = distinct !{!97, !95, !"\01?sort@@YAXAIAM00@Z: %a"}
!98 = distinct !{!98, !95, !"\01?sort@@YAXAIAM00@Z: %b"}
!99 = !{!98}
!100 = !{!97, !94, !72, !74, !76, !77, !79, !80, !81}
!101 = !{!97}
!102 = !{!98, !94, !72, !74, !76, !77, !79, !80, !81}
!103 = !{!104, !104, i64 0}
!104 = !{!"int", !69, i64 0}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 2}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 2}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 2}

