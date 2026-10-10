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
; shader hash: 64ff2f6a18eca838414b20e06b90586f
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

define void @cs_fog_raymarching_particles_brfog() {
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
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 3
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 0
  %296 = fsub fast float -0.000000e+00, %227
  %297 = fsub fast float -0.000000e+00, %228
  %298 = fsub fast float %293, %229
  %299 = fadd fast float %298, %295
  %300 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %296, float %297, float %299)  ; Dot3(ax,ay,az,bx,by,bz)
  %301 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %270, float %271, float %272)  ; Dot3(ax,ay,az,bx,by,bz)
  %302 = fdiv fast float 1.000000e+00, %301
  %303 = fmul fast float %302, %300
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 2
  %306 = fsub fast float %305, %229
  %307 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %296, float %297, float %306)  ; Dot3(ax,ay,az,bx,by,bz)
  %308 = fmul fast float %302, %307
  %309 = call float @dx.op.binary.f32(i32 36, float %303, float %308)  ; FMin(a,b)
  %310 = call float @dx.op.binary.f32(i32 35, float %303, float %308)  ; FMax(a,b)
  %311 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %309)  ; FMin(a,b)
  %312 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %310)  ; FMax(a,b)
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 2
  %315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.f32 %315, 3
  %317 = fsub fast float %314, %229
  %318 = fadd fast float %317, %316
  %319 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %296, float %297, float %318)  ; Dot3(ax,ay,az,bx,by,bz)
  %320 = fmul fast float %302, %319
  %321 = fcmp fast olt float %320, 0.000000e+00
  %322 = fcmp fast ogt float %272, 0.000000e+00
  %323 = and i1 %322, %321
  br i1 %323, label %328, label %324, !dx.controlflow.hints !30

; <label>:324                                     ; preds = %199
  %325 = fcmp fast olt float %272, 0.000000e+00
  br i1 %325, label %326, label %328, !dx.controlflow.hints !31

; <label>:326                                     ; preds = %324
  %327 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %320)  ; FMax(a,b)
  br label %328

; <label>:328                                     ; preds = %326, %324, %199
  %329 = phi float [ 0.000000e+00, %199 ], [ %327, %326 ], [ 0.000000e+00, %324 ]
  %330 = phi float [ 0.000000e+00, %199 ], [ 0x47EFFFFFE0000000, %326 ], [ %320, %324 ]
  %331 = fcmp fast oeq float %330, 0.000000e+00
  br i1 %331, label %335, label %332, !dx.controlflow.hints !32

; <label>:332                                     ; preds = %328
  %333 = call float @dx.op.binary.f32(i32 36, float %311, float %329)  ; FMin(a,b)
  %334 = call float @dx.op.binary.f32(i32 35, float %312, float %330)  ; FMax(a,b)
  br label %335

; <label>:335                                     ; preds = %332, %328
  %336 = phi i32 [ 1, %332 ], [ 0, %328 ]
  %337 = phi float [ %334, %332 ], [ %312, %328 ]
  %338 = phi float [ %333, %332 ], [ %311, %328 ]
  %339 = fdiv fast float 1.000000e+00, %270
  %340 = fdiv fast float 1.000000e+00, %271
  %341 = fdiv fast float 1.000000e+00, %272
  %342 = call float @dx.op.binary.f32(i32 36, float %291, float %337)  ; FMin(a,b)
  %343 = call float @dx.op.binary.f32(i32 35, float %268, float %338)  ; FMax(a,b)
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = fmul fast float %216, 2.000000e+00
  %347 = fadd fast float %346, -1.000000e+00
  %348 = fmul fast float %345, %347
  %349 = fadd fast float %348, %343
  %350 = fcmp fast olt float %349, %342
  %351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.f32 %351, 2
  %353 = fcmp fast olt float %352, 1.000000e+00
  %354 = and i1 %353, %350
  br i1 %354, label %355, label %1007

; <label>:355                                     ; preds = %335
  %356 = fmul fast float %349, %272
  %357 = fadd fast float %356, %229
  %358 = fmul fast float %349, %271
  %359 = fadd fast float %358, %228
  %360 = fmul fast float %349, %270
  %361 = fadd fast float %360, %227
  br label %362

; <label>:362                                     ; preds = %985, %355
  %363 = phi i32 [ %672, %985 ], [ undef, %355 ]
  %364 = phi float [ %674, %985 ], [ undef, %355 ]
  %365 = phi float [ %488, %985 ], [ undef, %355 ]
  %366 = phi float [ %489, %985 ], [ undef, %355 ]
  %367 = phi float [ %490, %985 ], [ undef, %355 ]
  %368 = phi float [ %491, %985 ], [ undef, %355 ]
  %369 = phi float [ %987, %985 ], [ 0.000000e+00, %355 ]
  %370 = phi float [ %988, %985 ], [ 1.000000e+00, %355 ]
  %371 = phi float [ %998, %985 ], [ %361, %355 ]
  %372 = phi float [ %999, %985 ], [ %359, %355 ]
  %373 = phi float [ %1000, %985 ], [ %357, %355 ]
  %374 = phi float [ %986, %985 ], [ %349, %355 ]
  %375 = phi i32 [ %383, %985 ], [ 0, %355 ]
  %376 = phi i32 [ %493, %985 ], [ 10, %355 ]
  %377 = phi float [ %989, %985 ], [ 0.000000e+00, %355 ]
  %378 = phi float [ %990, %985 ], [ 0.000000e+00, %355 ]
  %379 = phi float [ %991, %985 ], [ 0.000000e+00, %355 ]
  %380 = phi float [ %992, %985 ], [ 0.000000e+00, %355 ]
  %381 = phi float [ %993, %985 ], [ 0.000000e+00, %355 ]
  %382 = phi i32 [ %994, %985 ], [ 0, %355 ]
  %383 = add i32 %375, 1
  %384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.f32 %384, 0
  %386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %387 = extractvalue %dx.types.CBufRet.f32 %386, 0
  %388 = extractvalue %dx.types.CBufRet.f32 %386, 1
  %389 = fsub fast float %371, %387
  %390 = fsub fast float %372, %388
  %391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %392 = extractvalue %dx.types.CBufRet.f32 %391, 2
  %393 = extractvalue %dx.types.CBufRet.f32 %391, 3
  %394 = fmul fast float %389, %392
  %395 = fmul fast float %390, %393
  %396 = call float @dx.op.binary.f32(i32 36, float %394, float %395)  ; FMin(a,b)
  %397 = fcmp fast olt float %396, 0.000000e+00
  %398 = call float @dx.op.binary.f32(i32 35, float %394, float %395)  ; FMax(a,b)
  %399 = fcmp fast ogt float %398, 1.000000e+00
  %400 = or i1 %397, %399
  %401 = extractvalue %dx.types.CBufRet.f32 %386, 2
  %402 = fcmp fast olt float %373, %401
  %403 = or i1 %400, %402
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 3
  %406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.f32 %406, 0
  %408 = fadd fast float %407, %405
  %409 = fcmp fast ogt float %373, %408
  %410 = or i1 %403, %409
  br i1 %410, label %411, label %440, !dx.controlflow.hints !33

; <label>:411                                     ; preds = %362
  %412 = extractvalue %dx.types.CBufRet.f32 %391, 0
  %413 = extractvalue %dx.types.CBufRet.f32 %391, 1
  %414 = fsub fast float %387, %371
  %415 = fmul fast float %414, %339
  %416 = fadd fast float %414, %412
  %417 = fmul fast float %416, %339
  %418 = call float @dx.op.binary.f32(i32 36, float %415, float %417)  ; FMin(a,b)
  %419 = call float @dx.op.binary.f32(i32 35, float %415, float %417)  ; FMax(a,b)
  %420 = fsub fast float %388, %372
  %421 = fmul fast float %420, %340
  %422 = fadd fast float %420, %413
  %423 = fmul fast float %422, %340
  %424 = call float @dx.op.binary.f32(i32 36, float %421, float %423)  ; FMin(a,b)
  %425 = call float @dx.op.binary.f32(i32 35, float %418, float %424)  ; FMax(a,b)
  %426 = call float @dx.op.binary.f32(i32 35, float %421, float %423)  ; FMax(a,b)
  %427 = call float @dx.op.binary.f32(i32 36, float %419, float %426)  ; FMin(a,b)
  %428 = fsub fast float %401, %373
  %429 = fmul fast float %428, %341
  %430 = fsub fast float %405, %373
  %431 = fadd fast float %430, %407
  %432 = fmul fast float %431, %341
  %433 = call float @dx.op.binary.f32(i32 36, float %429, float %432)  ; FMin(a,b)
  %434 = call float @dx.op.binary.f32(i32 35, float %425, float %433)  ; FMax(a,b)
  %435 = call float @dx.op.binary.f32(i32 35, float %429, float %432)  ; FMax(a,b)
  %436 = call float @dx.op.binary.f32(i32 36, float %427, float %435)  ; FMin(a,b)
  %437 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %434)  ; FMax(a,b)
  %438 = fcmp fast oge float %436, %437
  %439 = select i1 %438, float %434, float 1.000000e+07
  br label %486

; <label>:440                                     ; preds = %362
  %441 = fsub fast float 1.000000e+00, %395
  %442 = icmp eq i32 %376, 0
  br i1 %442, label %471, label %443

; <label>:443                                     ; preds = %440
  br label %444

; <label>:444                                     ; preds = %467, %443
  %445 = phi i32 [ %468, %467 ], [ %376, %443 ]
  %446 = uitofp i32 %445 to float
  %447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %12, float %394, float %441, float undef, float undef, i32 0, i32 0, i32 undef, float %446)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %448 = extractvalue %dx.types.ResRet.f32 %447, 0
  %449 = extractvalue %dx.types.ResRet.f32 %447, 1
  %450 = extractvalue %dx.types.ResRet.f32 %447, 2
  %451 = fcmp fast oeq float %448, 0.000000e+00
  %452 = fcmp ule float %373, %450
  %453 = fcmp uge float %373, %449
  %454 = or i1 %453, %452
  %455 = or i1 %451, %454
  br i1 %455, label %456, label %467, !dx.controlflow.hints !34

; <label>:456                                     ; preds = %444
  %457 = extractvalue %dx.types.ResRet.f32 %447, 3
  %458 = extractvalue %dx.types.CBufRet.f32 %391, 0
  %459 = and i32 %445, 31
  %460 = lshr i32 1024, %459
  %461 = uitofp i32 %460 to float
  %462 = fdiv fast float %458, %461
  %463 = add i32 %445, 1
  %464 = uitofp i32 %463 to float
  %465 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %464)  ; FMin(a,b)
  %466 = fptosi float %465 to i32
  br label %486

; <label>:467                                     ; preds = %444
  %468 = add i32 %445, -1
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %444, !llvm.loop !35

; <label>:470                                     ; preds = %467
  br label %471

; <label>:471                                     ; preds = %470, %440
  %472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %394, float %441, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = extractvalue %dx.types.ResRet.f32 %472, 1
  %475 = extractvalue %dx.types.ResRet.f32 %472, 2
  %476 = extractvalue %dx.types.ResRet.f32 %472, 3
  %477 = extractvalue %dx.types.CBufRet.f32 %391, 0
  %478 = fmul fast float %477, 9.765625e-04
  %479 = fcmp fast oeq float %473, 0.000000e+00
  %480 = fcmp ule float %373, %475
  %481 = fcmp uge float %373, %474
  %482 = or i1 %481, %480
  %483 = or i1 %479, %482
  %484 = zext i1 %483 to i32
  %485 = xor i32 %484, 1
  br label %486

; <label>:486                                     ; preds = %471, %456, %411
  %487 = phi float [ %439, %411 ], [ %462, %456 ], [ %478, %471 ]
  %488 = phi float [ %365, %411 ], [ %448, %456 ], [ %473, %471 ]
  %489 = phi float [ %366, %411 ], [ %449, %456 ], [ %474, %471 ]
  %490 = phi float [ %367, %411 ], [ %450, %456 ], [ %475, %471 ]
  %491 = phi float [ %368, %411 ], [ %457, %456 ], [ %476, %471 ]
  %492 = phi i32 [ 0, %411 ], [ 0, %456 ], [ %485, %471 ]
  %493 = phi i32 [ 10, %411 ], [ %466, %456 ], [ 1, %471 ]
  %494 = icmp eq i32 %492, 0
  %495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %496 = extractvalue %dx.types.CBufRet.f32 %495, 2
  %497 = call float @dx.op.binary.f32(i32 35, float %487, float %496)  ; FMax(a,b)
  %498 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %497)  ; FMin(a,b)
  %499 = icmp eq i32 %336, 0
  br i1 %499, label %671, label %500, !dx.controlflow.hints !37

; <label>:500                                     ; preds = %486
  %501 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.i32 %501, 1
  %503 = and i32 %502, 1
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %662, !dx.controlflow.hints !38

; <label>:505                                     ; preds = %500
  %506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.f32 %506, 2
  %508 = extractvalue %dx.types.CBufRet.f32 %506, 3
  %509 = fmul fast float %507, %371
  %510 = fmul fast float %508, %372
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 0
  %513 = extractvalue %dx.types.CBufRet.f32 %511, 1
  %514 = fadd fast float %509, %512
  %515 = fadd fast float %510, %513
  %516 = call float @dx.op.unary.f32(i32 7, float %514)  ; Saturate(value)
  %517 = call float @dx.op.unary.f32(i32 7, float %515)  ; Saturate(value)
  %518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %516, float %517, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 0
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 0
  %522 = fmul fast float %521, %519
  %523 = fsub fast float %514, %516
  %524 = fsub fast float %515, %517
  %525 = extractvalue %dx.types.CBufRet.f32 %506, 0
  %526 = extractvalue %dx.types.CBufRet.f32 %506, 1
  %527 = fmul fast float %525, %523
  %528 = fmul fast float %526, %524
  %529 = fmul fast float %527, %527
  %530 = fmul fast float %528, %528
  %531 = fadd fast float %529, %530
  %532 = call float @dx.op.unary.f32(i32 24, float %531)  ; Sqrt(value)
  %533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %534 = extractvalue %dx.types.CBufRet.f32 %533, 3
  %535 = fmul fast float %534, %532
  %536 = call float @dx.op.unary.f32(i32 7, float %535)  ; Saturate(value)
  %537 = extractvalue %dx.types.CBufRet.f32 %533, 2
  %538 = fsub fast float %537, %522
  %539 = fmul fast float %538, %536
  %540 = extractvalue %dx.types.CBufRet.f32 %520, 1
  %541 = fsub fast float %373, %522
  %542 = fsub fast float %541, %540
  %543 = fsub fast float %542, %539
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 2
  %546 = fsub fast float %543, %545
  %547 = fcmp fast olt float %546, 0.000000e+00
  %548 = call float @dx.op.unary.f32(i32 6, float %546)  ; FAbs(value)
  %549 = extractvalue %dx.types.CBufRet.i32 %501, 0
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %604, label %551

; <label>:551                                     ; preds = %505
  br label %552

; <label>:552                                     ; preds = %591, %551
  %553 = phi i32 [ %597, %591 ], [ 1, %551 ]
  %554 = phi float [ %599, %591 ], [ 0x47EFFFFFE0000000, %551 ]
  %555 = phi i32 [ %600, %591 ], [ 0, %551 ]
  %556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.f32 %556, 1
  %558 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.i32 %558, 1
  %560 = and i32 %559, 8
  %561 = icmp eq i32 %560, 0
  %562 = fcmp fast ogt float %557, %543
  %563 = or i1 %562, %561
  %564 = add i32 %555, 171
  %565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 %564)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.f32 %565, 0
  %567 = extractvalue %dx.types.CBufRet.f32 %565, 1
  %568 = extractvalue %dx.types.CBufRet.f32 %565, 2
  br i1 %563, label %569, label %575, !dx.controlflow.hints !39

; <label>:569                                     ; preds = %552
  %570 = fsub fast float %566, %371
  %571 = fsub fast float %567, %372
  %572 = fmul fast float %570, %570
  %573 = fmul fast float %571, %571
  %574 = fadd fast float %572, %573
  br label %591

; <label>:575                                     ; preds = %552
  %576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.f32 %576, 2
  %578 = extractvalue %dx.types.CBufRet.f32 %556, 2
  %579 = fmul fast float %578, %577
  %580 = fsub fast float %579, %557
  %581 = fdiv fast float %568, %580
  %582 = fsub fast float %371, %566
  %583 = fsub fast float %372, %567
  %584 = fsub fast float %543, %557
  %585 = fmul fast float %581, %584
  %586 = fmul fast float %582, %582
  %587 = fmul fast float %583, %583
  %588 = fadd fast float %586, %587
  %589 = fmul fast float %585, %585
  %590 = fadd fast float %588, %589
  br label %591

; <label>:591                                     ; preds = %575, %569
  %592 = phi float [ %574, %569 ], [ %590, %575 ]
  %593 = call float @dx.op.unary.f32(i32 24, float %592)  ; Sqrt(value)
  %594 = fsub float %568, %593
  %595 = fcmp fast olt float %594, 0.000000e+00
  %596 = zext i1 %595 to i32
  %597 = and i32 %596, %553
  %598 = call float @dx.op.unary.f32(i32 6, float %594)  ; FAbs(value)
  %599 = call float @dx.op.binary.f32(i32 36, float %554, float %598)  ; FMin(a,b)
  %600 = add i32 %555, 1
  %601 = extractvalue %dx.types.CBufRet.i32 %558, 0
  %602 = icmp ult i32 %600, %601
  br i1 %602, label %552, label %603

; <label>:603                                     ; preds = %591
  br label %604

; <label>:604                                     ; preds = %603, %505
  %605 = phi i32 [ 1, %505 ], [ %597, %603 ]
  %606 = phi float [ 0x47EFFFFFE0000000, %505 ], [ %599, %603 ]
  br label %607

; <label>:607                                     ; preds = %607, %604
  %608 = phi i32 [ %605, %604 ], [ %647, %607 ]
  %609 = phi float [ 0x47EFFFFFE0000000, %604 ], [ %649, %607 ]
  %610 = phi i32 [ 0, %604 ], [ %650, %607 ]
  %611 = add nuw nsw i32 %610, 191
  %612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 %611)  ; CBufferLoadLegacy(handle,regIndex)
  %613 = extractvalue %dx.types.CBufRet.f32 %612, 0
  %614 = extractvalue %dx.types.CBufRet.f32 %612, 1
  %615 = extractvalue %dx.types.CBufRet.f32 %612, 2
  %616 = add nuw nsw i32 %610, 195
  %617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 %616)  ; CBufferLoadLegacy(handle,regIndex)
  %618 = extractvalue %dx.types.CBufRet.f32 %617, 0
  %619 = extractvalue %dx.types.CBufRet.f32 %617, 1
  %620 = extractvalue %dx.types.CBufRet.f32 %617, 2
  %621 = fsub fast float %371, %613
  %622 = fsub fast float %372, %614
  %623 = fsub fast float %543, %615
  %624 = call float @dx.op.unary.f32(i32 6, float %621)  ; FAbs(value)
  %625 = call float @dx.op.unary.f32(i32 6, float %622)  ; FAbs(value)
  %626 = call float @dx.op.unary.f32(i32 6, float %623)  ; FAbs(value)
  %627 = fsub fast float %624, %618
  %628 = fsub fast float %625, %619
  %629 = fsub fast float %626, %620
  %630 = call float @dx.op.binary.f32(i32 35, float %627, float 0.000000e+00)  ; FMax(a,b)
  %631 = call float @dx.op.binary.f32(i32 35, float %628, float 0.000000e+00)  ; FMax(a,b)
  %632 = call float @dx.op.binary.f32(i32 35, float %629, float 0.000000e+00)  ; FMax(a,b)
  %633 = fmul fast float %630, %630
  %634 = fmul fast float %631, %631
  %635 = fadd fast float %634, %633
  %636 = fmul fast float %632, %632
  %637 = fadd fast float %635, %636
  %638 = call float @dx.op.unary.f32(i32 24, float %637)  ; Sqrt(value)
  %639 = call float @dx.op.binary.f32(i32 35, float %628, float %629)  ; FMax(a,b)
  %640 = call float @dx.op.binary.f32(i32 35, float %627, float %639)  ; FMax(a,b)
  %641 = call float @dx.op.binary.f32(i32 36, float %640, float 0.000000e+00)  ; FMin(a,b)
  %642 = fadd fast float %641, %638
  %643 = fsub fast float -0.000000e+00, %642
  %644 = fcmp ogt float %642, -0.000000e+00
  %645 = icmp ne i32 %608, 0
  %646 = and i1 %645, %644
  %647 = zext i1 %646 to i32
  %648 = call float @dx.op.unary.f32(i32 6, float %643)  ; FAbs(value)
  %649 = call float @dx.op.binary.f32(i32 36, float %609, float %648)  ; FMin(a,b)
  %650 = add nuw nsw i32 %610, 1
  %651 = icmp eq i32 %650, 4
  br i1 %651, label %652, label %607

; <label>:652                                     ; preds = %607
  %653 = call float @dx.op.binary.f32(i32 36, float %548, float %649)  ; FMin(a,b)
  %654 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %655 = extractvalue %dx.types.CBufRet.i32 %654, 1
  %656 = and i32 %655, 2
  %657 = icmp ne i32 %656, 0
  %658 = xor i1 %646, %657
  %659 = call float @dx.op.binary.f32(i32 36, float %653, float %606)  ; FMin(a,b)
  %660 = and i1 %658, %547
  %661 = zext i1 %660 to i32
  br label %662

; <label>:662                                     ; preds = %652, %500
  %663 = phi i32 [ %363, %500 ], [ %661, %652 ]
  %664 = phi float [ 0.000000e+00, %500 ], [ %659, %652 ]
  %665 = phi float [ %373, %500 ], [ %543, %652 ]
  %666 = icmp ne i32 %663, 0
  %667 = extractvalue %dx.types.CBufRet.f32 %495, 3
  %668 = call float @dx.op.binary.f32(i32 35, float %664, float %667)  ; FMax(a,b)
  %669 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %668)  ; FMin(a,b)
  %670 = zext i1 %666 to i32
  br label %671

; <label>:671                                     ; preds = %662, %486
  %672 = phi i32 [ %663, %662 ], [ %363, %486 ]
  %673 = phi i32 [ %670, %662 ], [ 0, %486 ]
  %674 = phi float [ %665, %662 ], [ %364, %486 ]
  %675 = phi float [ %669, %662 ], [ 0x47EFFFFFE0000000, %486 ]
  %676 = extractvalue %dx.types.CBufRet.f32 %384, 2
  %677 = fmul fast float %676, %374
  %678 = call float @dx.op.unary.f32(i32 23, float %677)  ; Log(value)
  %679 = fmul fast float %678, 0x3FE62E4300000000
  %680 = call float @dx.op.binary.f32(i32 35, float %679, float 1.000000e+00)  ; FMax(a,b)
  %681 = fmul fast float %680, %675
  %682 = call float @dx.op.binary.f32(i32 36, float %681, float %498)  ; FMin(a,b)
  %683 = call float @dx.op.binary.f32(i32 35, float %682, float %385)  ; FMax(a,b)
  %684 = fadd fast float %342, 0x3F1A36E2E0000000
  %685 = fsub fast float %684, %374
  %686 = call float @dx.op.binary.f32(i32 36, float %685, float %683)  ; FMin(a,b)
  br i1 %494, label %811, label %687, !dx.controlflow.hints !40

; <label>:687                                     ; preds = %671
  %688 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.i32 %688, 0
  %690 = icmp ne i32 %689, 0
  %691 = zext i1 %690 to i32
  %692 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.i32 %692, 0
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %728, label %695

; <label>:695                                     ; preds = %687
  br label %696

; <label>:696                                     ; preds = %723, %695
  %697 = phi i32 [ %724, %723 ], [ 0, %695 ]
  %698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %697, i32 0)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = extractvalue %dx.types.ResRet.f32 %698, 1
  %701 = extractvalue %dx.types.ResRet.f32 %698, 2
  %702 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %697, i32 16)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.f32 %702, 0
  %704 = extractvalue %dx.types.ResRet.f32 %702, 1
  %705 = extractvalue %dx.types.ResRet.f32 %702, 2
  %706 = fsub fast float %699, %703
  %707 = fsub fast float %700, %704
  %708 = fsub fast float %701, %705
  %709 = fadd fast float %703, %699
  %710 = fadd fast float %704, %700
  %711 = fadd fast float %705, %701
  %712 = fcmp fast olt float %371, %706
  %713 = fcmp fast olt float %372, %707
  %714 = fcmp fast olt float %373, %708
  %715 = or i1 %712, %713
  %716 = or i1 %714, %715
  %717 = fcmp fast ogt float %371, %709
  %718 = fcmp fast ogt float %372, %710
  %719 = fcmp fast ogt float %373, %711
  %720 = or i1 %717, %718
  %721 = or i1 %719, %720
  %722 = or i1 %716, %721
  br i1 %722, label %723, label %726, !dx.controlflow.hints !41

; <label>:723                                     ; preds = %696
  %724 = add nuw i32 %697, 1
  %725 = icmp ult i32 %724, %693
  br i1 %725, label %696, label %726

; <label>:726                                     ; preds = %723, %696
  %727 = phi i32 [ 255, %723 ], [ %697, %696 ]
  br label %728

; <label>:728                                     ; preds = %726, %687
  %729 = phi i32 [ 255, %687 ], [ %727, %726 ]
  %730 = icmp eq i32 %729, 255
  br i1 %730, label %736, label %731, !dx.controlflow.hints !42

; <label>:731                                     ; preds = %728
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %729, i32 156)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = icmp ne i32 %733, 0
  %735 = zext i1 %734 to i32
  br label %736

; <label>:736                                     ; preds = %731, %728
  %737 = phi i32 [ %735, %731 ], [ %691, %728 ]
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %739, label %808, !dx.controlflow.hints !43

; <label>:739                                     ; preds = %736
  %740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.f32 %740, 3
  %742 = extractvalue %dx.types.CBufRet.f32 %404, 0
  %743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %744 = extractvalue %dx.types.CBufRet.f32 %743, 2
  %745 = extractvalue %dx.types.CBufRet.f32 %743, 3
  br i1 %730, label %756, label %746, !dx.controlflow.hints !44

; <label>:746                                     ; preds = %739
  %747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %729, i32 60)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %729, i32 64)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 0
  %751 = extractvalue %dx.types.ResRet.f32 %749, 1
  %752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %729, i32 72)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.f32 %752, 0
  %754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %729, i32 96)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.f32 %754, 0
  br label %756

; <label>:756                                     ; preds = %746, %739
  %757 = phi float [ %748, %746 ], [ %407, %739 ]
  %758 = phi float [ %753, %746 ], [ %405, %739 ]
  %759 = phi float [ %755, %746 ], [ %742, %739 ]
  %760 = phi float [ %750, %746 ], [ %744, %739 ]
  %761 = phi float [ %751, %746 ], [ %745, %739 ]
  %762 = call float @dx.op.binary.f32(i32 35, float %488, float 0.000000e+00)  ; FMax(a,b)
  %763 = call float @dx.op.binary.f32(i32 36, float %762, float 1.000000e+00)  ; FMin(a,b)
  %764 = call float @dx.op.unary.f32(i32 24, float %763)  ; Sqrt(value)
  %765 = call float @dx.op.binary.f32(i32 35, float %491, float 0x3F847AE140000000)  ; FMax(a,b)
  %766 = fsub fast float %489, %373
  %767 = fsub fast float %373, %490
  %768 = call float @dx.op.binary.f32(i32 36, float %767, float %766)  ; FMin(a,b)
  %769 = fdiv fast float %768, %765
  %770 = call float @dx.op.unary.f32(i32 7, float %769)  ; Saturate(value)
  %771 = fsub fast float %373, %758
  %772 = fdiv fast float %771, %757
  %773 = call float @dx.op.unary.f32(i32 7, float %772)  ; Saturate(value)
  %774 = fsub fast float 1.000000e+00, %773
  %775 = fmul float %770, %774
  %776 = fmul float %775, %775
  %777 = fmul fast float %764, %741
  %778 = fmul fast float %777, %776
  %779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %780 = extractvalue %dx.types.CBufRet.f32 %779, 2
  %781 = extractvalue %dx.types.CBufRet.f32 %779, 1
  %782 = fsub fast float %778, %781
  %783 = fsub fast float %780, %781
  %784 = fdiv fast float %782, %783
  %785 = call float @dx.op.unary.f32(i32 7, float %784)  ; Saturate(value)
  %786 = fmul fast float %785, %759
  %787 = fcmp fast ogt float %761, 0.000000e+00
  br i1 %787, label %788, label %808, !dx.controlflow.hints !45

; <label>:788                                     ; preds = %756
  %789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %790 = extractvalue %dx.types.CBufRet.f32 %789, 0
  %791 = extractvalue %dx.types.CBufRet.f32 %789, 1
  %792 = extractvalue %dx.types.CBufRet.f32 %789, 2
  %793 = fsub fast float %371, %790
  %794 = fsub fast float %372, %791
  %795 = fsub fast float %373, %792
  %796 = fmul fast float %793, %793
  %797 = fmul fast float %794, %794
  %798 = fadd fast float %796, %797
  %799 = fmul fast float %795, %795
  %800 = fadd fast float %798, %799
  %801 = call float @dx.op.unary.f32(i32 24, float %800)  ; Sqrt(value)
  %802 = fsub fast float %801, %760
  %803 = fsub fast float %761, %760
  %804 = fdiv fast float %802, %803
  %805 = call float @dx.op.unary.f32(i32 7, float %804)  ; Saturate(value)
  %806 = fmul fast float %805, %805
  %807 = fmul fast float %806, %786
  br label %808

; <label>:808                                     ; preds = %788, %756, %736
  %809 = phi float [ 0.000000e+00, %736 ], [ %807, %788 ], [ %786, %756 ]
  %810 = fmul fast float %809, %686
  br label %811

; <label>:811                                     ; preds = %808, %671
  %812 = phi float [ %810, %808 ], [ 0.000000e+00, %671 ]
  %813 = icmp eq i32 %673, 0
  br i1 %813, label %845, label %814, !dx.controlflow.hints !46

; <label>:814                                     ; preds = %811
  %815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %816 = extractvalue %dx.types.CBufRet.f32 %815, 1
  %817 = fsub fast float %686, %816
  %818 = extractvalue %dx.types.CBufRet.f32 %815, 3
  %819 = fmul fast float %817, %818
  %820 = call float @dx.op.unary.f32(i32 7, float %819)  ; Saturate(value)
  %821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %822 = extractvalue %dx.types.CBufRet.f32 %821, 3
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 2
  %825 = fsub fast float %824, %674
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 3
  %828 = fmul fast float %825, %827
  %829 = call float @dx.op.unary.f32(i32 7, float %828)  ; Saturate(value)
  %830 = fmul fast float %829, %822
  %831 = extractvalue %dx.types.CBufRet.f32 %826, 0
  %832 = fsub fast float %374, %831
  %833 = extractvalue %dx.types.CBufRet.f32 %826, 1
  %834 = fmul fast float %832, %833
  %835 = call float @dx.op.unary.f32(i32 7, float %834)  ; Saturate(value)
  %836 = fsub fast float 1.000000e+00, %820
  %837 = fmul fast float %835, %836
  %838 = fadd fast float %837, %820
  %839 = extractvalue %dx.types.CBufRet.f32 %815, 0
  %840 = fsub fast float %830, %839
  %841 = fmul fast float %840, %838
  %842 = fadd fast float %841, %839
  %843 = fmul fast float %842, %686
  %844 = fadd fast float %843, %812
  br label %845

; <label>:845                                     ; preds = %814, %811
  %846 = phi float [ %844, %814 ], [ %812, %811 ]
  %847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.f32 %847, 1
  %849 = fcmp fast ogt float %846, %848
  br i1 %849, label %852, label %850, !dx.controlflow.hints !47

; <label>:850                                     ; preds = %845
  %851 = fadd fast float %686, %374
  br label %985

; <label>:852                                     ; preds = %845
  %853 = fmul fast float %846, 0xBFF7154760000000
  %854 = call float @dx.op.unary.f32(i32 21, float %853)  ; Exp(value)
  %855 = call float @dx.op.unary.f32(i32 7, float %854)  ; Saturate(value)
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 0
  %858 = extractvalue %dx.types.CBufRet.f32 %856, 1
  %859 = extractvalue %dx.types.CBufRet.f32 %856, 2
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 0
  %862 = fmul fast float %861, %857
  %863 = fmul fast float %861, %858
  %864 = fmul fast float %861, %859
  %865 = fadd fast float %862, %371
  %866 = fadd fast float %863, %372
  %867 = fadd fast float %864, %373
  br i1 %499, label %938, label %868, !dx.controlflow.hints !37

; <label>:868                                     ; preds = %852
  %869 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.i32 %869, 1
  %871 = and i32 %870, 1
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %873, label %938, !dx.controlflow.hints !38

; <label>:873                                     ; preds = %868
  %874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.f32 %874, 2
  %876 = extractvalue %dx.types.CBufRet.f32 %874, 3
  %877 = fmul fast float %875, %865
  %878 = fmul fast float %876, %866
  %879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %880 = extractvalue %dx.types.CBufRet.f32 %879, 0
  %881 = extractvalue %dx.types.CBufRet.f32 %879, 1
  %882 = fadd fast float %877, %880
  %883 = fadd fast float %878, %881
  %884 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  %885 = call float @dx.op.unary.f32(i32 7, float %883)  ; Saturate(value)
  %886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %884, float %885, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %887 = extractvalue %dx.types.ResRet.f32 %886, 0
  %888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.f32 %888, 0
  %890 = fmul fast float %889, %887
  %891 = fsub fast float %882, %884
  %892 = fsub fast float %883, %885
  %893 = extractvalue %dx.types.CBufRet.f32 %874, 0
  %894 = extractvalue %dx.types.CBufRet.f32 %874, 1
  %895 = fmul fast float %893, %891
  %896 = fmul fast float %894, %892
  %897 = fmul fast float %895, %895
  %898 = fmul fast float %896, %896
  %899 = fadd fast float %897, %898
  %900 = call float @dx.op.unary.f32(i32 24, float %899)  ; Sqrt(value)
  %901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %902 = extractvalue %dx.types.CBufRet.f32 %901, 3
  %903 = fmul fast float %902, %900
  %904 = call float @dx.op.unary.f32(i32 7, float %903)  ; Saturate(value)
  %905 = extractvalue %dx.types.CBufRet.f32 %901, 2
  %906 = fsub fast float %905, %890
  %907 = fmul fast float %906, %904
  %908 = extractvalue %dx.types.CBufRet.f32 %888, 1
  %909 = fsub fast float %867, %890
  %910 = fsub fast float %909, %908
  %911 = fsub fast float %910, %907
  %912 = extractvalue %dx.types.CBufRet.i32 %869, 0
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %932, label %914

; <label>:914                                     ; preds = %873
  br label %915

; <label>:915                                     ; preds = %927, %914
  %916 = phi i32 [ %928, %927 ], [ 0, %914 ]
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 1
  %919 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.i32 %919, 1
  %921 = and i32 %920, 8
  %922 = icmp eq i32 %921, 0
  %923 = fcmp fast ogt float %918, %911
  %924 = or i1 %923, %922
  br i1 %924, label %925, label %926, !dx.controlflow.hints !39

; <label>:925                                     ; preds = %915
  br label %927

; <label>:926                                     ; preds = %915
  br label %927

; <label>:927                                     ; preds = %926, %925
  %928 = add i32 %916, 1
  %929 = extractvalue %dx.types.CBufRet.i32 %919, 0
  %930 = icmp ult i32 %928, %929
  br i1 %930, label %915, label %931

; <label>:931                                     ; preds = %927
  br label %932

; <label>:932                                     ; preds = %931, %873
  br label %933

; <label>:933                                     ; preds = %933, %932
  %934 = phi i32 [ %935, %933 ], [ 0, %932 ]
  %935 = add nuw nsw i32 %934, 1
  %936 = icmp eq i32 %935, 4
  br i1 %936, label %937, label %933

; <label>:937                                     ; preds = %933
  br label %938

; <label>:938                                     ; preds = %937, %868, %852
  %939 = fsub fast float 1.000000e+00, %855
  %940 = fdiv fast float %846, %686
  %941 = fadd fast float %686, %374
  %942 = fmul fast float %374, %374
  %943 = fmul fast float %941, %941
  %944 = fsub fast float %942, %943
  %945 = fmul fast float %944, -5.000000e-01
  %946 = fmul fast float %945, %940
  %947 = fadd fast float %946, %369
  %948 = fadd fast float %846, %377
  %949 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.i32 %949, 0
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %978, label %952, !dx.controlflow.hints !48

; <label>:952                                     ; preds = %938
  %953 = icmp ne i32 %382, 0
  %954 = zext i1 %953 to i32
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 2
  %957 = extractvalue %dx.types.CBufRet.f32 %955, 0
  %958 = fsub fast float %941, %957
  %959 = fmul fast float %958, %956
  %960 = call float @dx.op.unary.f32(i32 7, float %959)  ; Saturate(value)
  %961 = fadd fast float %960, -5.000000e-01
  %962 = fmul fast float %961, 2.000000e+00
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 2
  %965 = fcmp fast olt float %962, %964
  br i1 %965, label %966, label %978, !dx.controlflow.hints !49

; <label>:966                                     ; preds = %952
  %967 = fmul fast float %962, %962
  %968 = fmul fast float %939, %370
  %969 = fmul fast float %962, %968
  %970 = fmul fast float %967, %968
  %971 = fmul fast float %969, %967
  %972 = fmul fast float %967, %967
  %973 = fmul fast float %972, %968
  %974 = fadd fast float %969, %378
  %975 = fadd fast float %970, %379
  %976 = fadd fast float %971, %380
  %977 = fadd fast float %973, %381
  br label %978

; <label>:978                                     ; preds = %966, %952, %938
  %979 = phi float [ %378, %938 ], [ %974, %966 ], [ %378, %952 ]
  %980 = phi float [ %379, %938 ], [ %975, %966 ], [ %379, %952 ]
  %981 = phi float [ %380, %938 ], [ %976, %966 ], [ %380, %952 ]
  %982 = phi float [ %381, %938 ], [ %977, %966 ], [ %381, %952 ]
  %983 = phi i32 [ %382, %938 ], [ 1, %966 ], [ %954, %952 ]
  %984 = fmul fast float %855, %370
  br label %985

; <label>:985                                     ; preds = %978, %850
  %986 = phi float [ %851, %850 ], [ %941, %978 ]
  %987 = phi float [ %369, %850 ], [ %947, %978 ]
  %988 = phi float [ %370, %850 ], [ %984, %978 ]
  %989 = phi float [ %377, %850 ], [ %948, %978 ]
  %990 = phi float [ %378, %850 ], [ %979, %978 ]
  %991 = phi float [ %379, %850 ], [ %980, %978 ]
  %992 = phi float [ %380, %850 ], [ %981, %978 ]
  %993 = phi float [ %381, %850 ], [ %982, %978 ]
  %994 = phi i32 [ %382, %850 ], [ %983, %978 ]
  %995 = fmul fast float %686, %270
  %996 = fmul fast float %686, %271
  %997 = fmul fast float %686, %272
  %998 = fadd fast float %995, %371
  %999 = fadd fast float %996, %372
  %1000 = fadd fast float %997, %373
  %1001 = fcmp fast olt float %986, %342
  %1002 = extractvalue %dx.types.CBufRet.f32 %847, 2
  %1003 = fcmp fast olt float %1002, %988
  %1004 = and i1 %1001, %1003
  br i1 %1004, label %362, label %1005

; <label>:1005                                    ; preds = %985
  %1006 = uitofp i32 %383 to float
  br label %1007

; <label>:1007                                    ; preds = %1005, %335
  %1008 = phi float [ 0.000000e+00, %335 ], [ %987, %1005 ]
  %1009 = phi float [ 1.000000e+00, %335 ], [ %988, %1005 ]
  %1010 = phi float [ 0.000000e+00, %335 ], [ %1006, %1005 ]
  %1011 = phi float [ 0.000000e+00, %335 ], [ %989, %1005 ]
  %1012 = phi float [ 0.000000e+00, %335 ], [ %990, %1005 ]
  %1013 = phi float [ 0.000000e+00, %335 ], [ %991, %1005 ]
  %1014 = phi float [ 0.000000e+00, %335 ], [ %992, %1005 ]
  %1015 = phi float [ 0.000000e+00, %335 ], [ %993, %1005 ]
  %1016 = phi i32 [ 0, %335 ], [ %994, %1005 ]
  %1017 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.i32 %1017, 0
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1061, label %1020, !dx.controlflow.hints !50

; <label>:1020                                    ; preds = %1007
  %1021 = icmp eq i32 %1016, 0
  br i1 %1021, label %1060, label %1022, !dx.controlflow.hints !51

; <label>:1022                                    ; preds = %1020
  %1023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.i32 %1023, 2
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1032, label %1026, !dx.controlflow.hints !52

; <label>:1026                                    ; preds = %1022
  %1027 = fsub fast float 1.000000e+00, %1009
  %1028 = fdiv fast float %1012, %1027
  %1029 = fdiv fast float %1013, %1027
  %1030 = fdiv fast float %1014, %1027
  %1031 = fdiv fast float %1015, %1027
  br label %1037

; <label>:1032                                    ; preds = %1022
  %1033 = fadd fast float %1012, %1009
  %1034 = fadd fast float %1013, %1009
  %1035 = fadd fast float %1014, %1009
  %1036 = fadd fast float %1015, %1009
  br label %1037

; <label>:1037                                    ; preds = %1032, %1026
  %1038 = phi float [ %1028, %1026 ], [ %1033, %1032 ]
  %1039 = phi float [ %1029, %1026 ], [ %1034, %1032 ]
  %1040 = phi float [ %1030, %1026 ], [ %1035, %1032 ]
  %1041 = phi float [ %1031, %1026 ], [ %1036, %1032 ]
  %1042 = call float @dx.op.binary.f32(i32 35, float %1038, float -1.000000e+00)  ; FMax(a,b)
  %1043 = call float @dx.op.binary.f32(i32 35, float %1039, float -1.000000e+00)  ; FMax(a,b)
  %1044 = call float @dx.op.binary.f32(i32 35, float %1040, float -1.000000e+00)  ; FMax(a,b)
  %1045 = call float @dx.op.binary.f32(i32 35, float %1041, float -1.000000e+00)  ; FMax(a,b)
  %1046 = call float @dx.op.binary.f32(i32 36, float %1042, float 1.000000e+00)  ; FMin(a,b)
  %1047 = call float @dx.op.binary.f32(i32 36, float %1043, float 1.000000e+00)  ; FMin(a,b)
  %1048 = call float @dx.op.binary.f32(i32 36, float %1044, float 1.000000e+00)  ; FMin(a,b)
  %1049 = call float @dx.op.binary.f32(i32 36, float %1045, float 1.000000e+00)  ; FMin(a,b)
  %1050 = fmul fast float %1046, 1.500000e+00
  %1051 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1048, float %1050)  ; FMad(a,b,c)
  %1052 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1047, float 0.000000e+00)  ; FMad(a,b,c)
  %1053 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1049, float %1052)  ; FMad(a,b,c)
  %1054 = fmul fast float %1046, 0x3FEBB67AE0000000
  %1055 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1048, float %1054)  ; FMad(a,b,c)
  %1056 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1047, float 0.000000e+00)  ; FMad(a,b,c)
  %1057 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1049, float %1056)  ; FMad(a,b,c)
  %1058 = fadd fast float %1051, 5.000000e-01
  %1059 = fadd fast float %1055, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %15, i32 %16, i32 0, float %1058, float %1053, float %1059, float %1057, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1061

; <label>:1060                                    ; preds = %1020
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %15, i32 %16, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1061

; <label>:1061                                    ; preds = %1060, %1037, %1007
  %1062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.f32 %1062, 0
  %1064 = extractvalue %dx.types.CBufRet.f32 %1062, 1
  %1065 = extractvalue %dx.types.CBufRet.f32 %1062, 2
  %1066 = call float @dx.op.dot3.f32(i32 55, float %270, float %271, float %272, float %1063, float %1064, float %1065)  ; Dot3(ax,ay,az,bx,by,bz)
  %1067 = fmul fast float %1066, %1008
  %1068 = fcmp fast ogt float %1011, 0.000000e+00
  %1069 = fdiv fast float 1.000000e+00, %1011
  %1070 = fmul fast float %1067, %1069
  %1071 = select i1 %1068, float %1070, float %281
  %1072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1073 = extractvalue %dx.types.CBufRet.f32 %1072, 0
  %1074 = extractvalue %dx.types.CBufRet.f32 %1072, 1
  %1075 = extractvalue %dx.types.CBufRet.f32 %1072, 2
  %1076 = fmul fast float %1073, %234
  %1077 = fmul fast float %1074, %234
  %1078 = fmul fast float %1075, %234
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.CBufRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.CBufRet.f32 %1079, 2
  %1083 = fmul fast float %1080, %235
  %1084 = fmul fast float %1081, %235
  %1085 = fmul fast float %1082, %235
  %1086 = fadd fast float %1083, %1076
  %1087 = fadd fast float %1084, %1077
  %1088 = fadd fast float %1085, %1078
  %1089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.CBufRet.f32 %1089, 1
  %1092 = extractvalue %dx.types.CBufRet.f32 %1089, 2
  %1093 = fadd fast float %1086, %1090
  %1094 = fadd fast float %1087, %1091
  %1095 = fadd fast float %1088, %1092
  %1096 = fmul fast float %1093, %1071
  %1097 = fmul fast float %1094, %1071
  %1098 = fmul fast float %1095, %1071
  %1099 = call float @dx.op.dot3.f32(i32 55, float %1096, float %1097, float %1098, float %1096, float %1097, float %1098)  ; Dot3(ax,ay,az,bx,by,bz)
  %1100 = call float @dx.op.unary.f32(i32 25, float %1099)  ; Rsqrt(value)
  %1101 = fmul fast float %1100, %1099
  %1102 = fmul fast float %1100, %1096
  %1103 = fmul fast float %1100, %1097
  %1104 = fmul fast float %1100, %1098
  %1105 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1106 = extractvalue %dx.types.CBufRet.i32 %1105, 1
  %1107 = and i32 %1106, 1
  %1108 = icmp ne i32 %1107, 0
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 2
  %1111 = fcmp fast ogt float %1110, 0.000000e+00
  %1112 = and i1 %1108, %1111
  br i1 %1112, label %1113, label %1271, !dx.controlflow.hints !53

; <label>:1113                                    ; preds = %1061
  %1114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1115 = extractvalue %dx.types.CBufRet.f32 %1114, 2
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 2
  %1118 = fsub fast float %1115, %1117
  %1119 = extractvalue %dx.types.CBufRet.i32 %1105, 0
  %1120 = call i32 @dx.op.binary.i32(i32 40, i32 %1119, i32 3)  ; UMin(a,b)
  %1121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.f32 %1121, 0
  %1123 = extractvalue %dx.types.CBufRet.f32 %1121, 1
  %1124 = extractvalue %dx.types.CBufRet.f32 %1116, 0
  %1125 = extractvalue %dx.types.CBufRet.f32 %1116, 1
  %1126 = fsub fast float %1122, %1124
  %1127 = fsub fast float %1123, %1125
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 0
  %1130 = fcmp fast ogt float %1129, 0.000000e+00
  %1131 = fsub fast float -0.000000e+00, %1126
  %1132 = fsub fast float -0.000000e+00, %1127
  %1133 = call float @dx.op.dot2.f32(i32 54, float %1102, float %1103, float %1102, float %1103)  ; Dot2(ax,ay,bx,by)
  %1134 = call float @dx.op.dot2.f32(i32 54, float %1102, float %1103, float %1131, float %1132)  ; Dot2(ax,ay,bx,by)
  %1135 = fmul fast float %1134, 2.000000e+00
  %1136 = call float @dx.op.dot2.f32(i32 54, float %1131, float %1132, float %1131, float %1132)  ; Dot2(ax,ay,bx,by)
  %1137 = fmul fast float %1129, %1129
  %1138 = fsub fast float %1136, %1137
  %1139 = fmul fast float %1135, %1135
  %1140 = fmul fast float %1133, 4.000000e+00
  %1141 = fmul fast float %1140, %1138
  %1142 = fsub fast float %1139, %1141
  %1143 = fcmp fast ogt float %1142, 0.000000e+00
  br i1 %1143, label %1144, label %1159, !dx.controlflow.hints !54

; <label>:1144                                    ; preds = %1113
  %1145 = fcmp fast ogt float %1135, 0.000000e+00
  %1146 = call float @dx.op.unary.f32(i32 24, float %1142)  ; Sqrt(value)
  %1147 = fsub fast float -0.000000e+00, %1146
  %1148 = select i1 %1145, float %1146, float %1147
  %1149 = fadd fast float %1148, %1135
  %1150 = fmul float %1149, -5.000000e-01
  %1151 = fdiv fast float %1150, %1133
  %1152 = call float @dx.op.binary.f32(i32 35, float %1151, float 0.000000e+00)  ; FMax(a,b)
  %1153 = call float @dx.op.binary.f32(i32 36, float %1101, float %1152)  ; FMin(a,b)
  %1154 = fdiv fast float %1138, %1150
  %1155 = call float @dx.op.binary.f32(i32 35, float %1154, float 0.000000e+00)  ; FMax(a,b)
  %1156 = call float @dx.op.binary.f32(i32 36, float %1101, float %1155)  ; FMin(a,b)
  %1157 = call float @dx.op.binary.f32(i32 36, float %1153, float %1156)  ; FMin(a,b)
  %1158 = call float @dx.op.binary.f32(i32 35, float %1153, float %1156)  ; FMax(a,b)
  br label %1159

; <label>:1159                                    ; preds = %1144, %1113
  %1160 = phi float [ %1158, %1144 ], [ -1.000000e+00, %1113 ]
  %1161 = phi float [ %1157, %1144 ], [ -1.000000e+00, %1113 ]
  %1162 = phi i1 [ true, %1144 ], [ false, %1113 ]
  %1163 = and i1 %1130, %1162
  br i1 %1163, label %1164, label %1166, !dx.controlflow.hints !55

; <label>:1164                                    ; preds = %1159
  %1165 = fcmp fast oeq float %1161, %1160
  br i1 %1165, label %1271, label %1167, !dx.controlflow.hints !56

; <label>:1166                                    ; preds = %1159
  br i1 %1130, label %1271, label %1167, !dx.controlflow.hints !57

; <label>:1167                                    ; preds = %1166, %1164
  %1168 = phi float [ %1101, %1166 ], [ %1160, %1164 ]
  %1169 = phi float [ 0.000000e+00, %1166 ], [ %1161, %1164 ]
  %1170 = fcmp fast oeq float %1104, 0.000000e+00
  %1171 = fdiv fast float %1118, %1104
  %1172 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1171)  ; FMax(a,b)
  %1173 = select i1 %1170, float %1168, float %1172
  %1174 = call float @dx.op.binary.f32(i32 36, float %1168, float %1173)  ; FMin(a,b)
  %1175 = fcmp fast ogt float %1104, 0.000000e+00
  %1176 = fcmp fast olt float %1118, 0.000000e+00
  br i1 %1175, label %1177, label %1178, !dx.controlflow.hints !58

; <label>:1177                                    ; preds = %1167
  br i1 %1176, label %1271, label %1181, !dx.controlflow.hints !59

; <label>:1178                                    ; preds = %1167
  br i1 %1176, label %1179, label %1181, !dx.controlflow.hints !60

; <label>:1179                                    ; preds = %1178
  %1180 = call float @dx.op.binary.f32(i32 35, float %1169, float %1174)  ; FMax(a,b)
  br label %1181

; <label>:1181                                    ; preds = %1179, %1178, %1177
  %1182 = phi float [ %1180, %1179 ], [ %1169, %1178 ], [ %1169, %1177 ]
  %1183 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 0
  store float -1.000000e+00, float* %1183, align 4, !tbaa !61, !noalias !65
  %1184 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 1
  store float -1.000000e+00, float* %1184, align 4, !tbaa !61, !noalias !65
  %1185 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 2
  store float -1.000000e+00, float* %1185, align 4, !tbaa !61, !noalias !65
  %1186 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 0
  store float -1.000000e+00, float* %1186, align 4, !tbaa !61, !noalias !65
  %1187 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 1
  store float -1.000000e+00, float* %1187, align 4, !tbaa !61, !noalias !65
  %1188 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 2
  store float -1.000000e+00, float* %1188, align 4, !tbaa !61, !noalias !65
  %1189 = icmp sgt i32 %1120, 0
  br i1 %1189, label %1190, label %1248

; <label>:1190                                    ; preds = %1181
  br label %1191

; <label>:1191                                    ; preds = %1238, %1190
  %1192 = phi i32 [ %1239, %1238 ], [ 0, %1190 ]
  %1193 = add nuw i32 %1192, 171
  %1194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 %1193)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.CBufRet.f32 %1194, 1
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 0
  %1199 = extractvalue %dx.types.CBufRet.f32 %1197, 1
  %1200 = fsub fast float %1195, %1198
  %1201 = fsub fast float %1196, %1199
  %1202 = extractvalue %dx.types.CBufRet.f32 %1194, 2
  %1203 = fsub fast float -0.000000e+00, %1200
  %1204 = fsub fast float -0.000000e+00, %1201
  %1205 = call float @dx.op.dot2.f32(i32 54, float %1102, float %1103, float %1203, float %1204)  ; Dot2(ax,ay,bx,by)
  %1206 = fmul fast float %1205, 2.000000e+00
  %1207 = call float @dx.op.dot2.f32(i32 54, float %1203, float %1204, float %1203, float %1204)  ; Dot2(ax,ay,bx,by)
  %1208 = fmul fast float %1202, %1202
  %1209 = fsub fast float %1207, %1208
  %1210 = fmul fast float %1206, %1206
  %1211 = fmul fast float %1140, %1209
  %1212 = fsub fast float %1210, %1211
  %1213 = fcmp fast ogt float %1212, 0.000000e+00
  br i1 %1213, label %1214, label %1229, !dx.controlflow.hints !54

; <label>:1214                                    ; preds = %1191
  %1215 = fcmp fast ogt float %1206, 0.000000e+00
  %1216 = call float @dx.op.unary.f32(i32 24, float %1212)  ; Sqrt(value)
  %1217 = fsub fast float -0.000000e+00, %1216
  %1218 = select i1 %1215, float %1216, float %1217
  %1219 = fadd fast float %1218, %1206
  %1220 = fmul float %1219, -5.000000e-01
  %1221 = fdiv fast float %1220, %1133
  %1222 = call float @dx.op.binary.f32(i32 35, float %1221, float 0.000000e+00)  ; FMax(a,b)
  %1223 = call float @dx.op.binary.f32(i32 36, float %1168, float %1222)  ; FMin(a,b)
  %1224 = fdiv fast float %1209, %1220
  %1225 = call float @dx.op.binary.f32(i32 35, float %1224, float 0.000000e+00)  ; FMax(a,b)
  %1226 = call float @dx.op.binary.f32(i32 36, float %1168, float %1225)  ; FMin(a,b)
  %1227 = call float @dx.op.binary.f32(i32 36, float %1223, float %1226)  ; FMin(a,b)
  %1228 = call float @dx.op.binary.f32(i32 35, float %1223, float %1226)  ; FMax(a,b)
  br label %1229

; <label>:1229                                    ; preds = %1214, %1191
  %1230 = phi float [ %1228, %1214 ], [ -1.000000e+00, %1191 ]
  %1231 = phi float [ %1227, %1214 ], [ -1.000000e+00, %1191 ]
  %1232 = phi i1 [ true, %1214 ], [ false, %1191 ]
  br i1 %1232, label %1233, label %1238, !dx.controlflow.hints !76

; <label>:1233                                    ; preds = %1229
  %1234 = call float @dx.op.binary.f32(i32 35, float %1182, float %1231)  ; FMax(a,b)
  %1235 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 %1192
  store float %1234, float* %1235, align 4, !tbaa !61, !noalias !65
  %1236 = call float @dx.op.binary.f32(i32 35, float %1182, float %1230)  ; FMax(a,b)
  %1237 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %1192
  store float %1236, float* %1237, align 4, !tbaa !61, !noalias !65
  br label %1238

; <label>:1238                                    ; preds = %1233, %1229
  %1239 = add nuw nsw i32 %1192, 1
  %1240 = icmp eq i32 %1239, %1120
  br i1 %1240, label %1241, label %1191

; <label>:1241                                    ; preds = %1238
  %1242 = load float, float* %1185, align 4, !tbaa !61, !alias.scope !77, !noalias !80
  %1243 = load float, float* %1184, align 4, !tbaa !61, !alias.scope !83, !noalias !84
  %1244 = load float, float* %1183, align 4, !tbaa !61, !alias.scope !85, !noalias !86
  %1245 = load float, float* %1188, align 4, !tbaa !61, !alias.scope !87, !noalias !90
  %1246 = load float, float* %1187, align 4, !tbaa !61, !alias.scope !93, !noalias !94
  %1247 = load float, float* %1186, align 4, !tbaa !61, !alias.scope !95, !noalias !96
  br label %1248

; <label>:1248                                    ; preds = %1241, %1181
  %1249 = phi float [ -1.000000e+00, %1181 ], [ %1247, %1241 ]
  %1250 = phi float [ -1.000000e+00, %1181 ], [ %1246, %1241 ]
  %1251 = phi float [ -1.000000e+00, %1181 ], [ %1245, %1241 ]
  %1252 = phi float [ -1.000000e+00, %1181 ], [ %1244, %1241 ]
  %1253 = phi float [ -1.000000e+00, %1181 ], [ %1243, %1241 ]
  %1254 = phi float [ -1.000000e+00, %1181 ], [ %1242, %1241 ]
  %1255 = call float @dx.op.binary.f32(i32 36, float %1253, float %1254)  ; FMin(a,b)
  %1256 = call float @dx.op.binary.f32(i32 36, float %1252, float %1255)  ; FMin(a,b)
  %1257 = call float @dx.op.binary.f32(i32 35, float %1252, float %1253)  ; FMax(a,b)
  %1258 = call float @dx.op.binary.f32(i32 36, float %1257, float %1254)  ; FMin(a,b)
  %1259 = call float @dx.op.binary.f32(i32 36, float %1252, float %1253)  ; FMin(a,b)
  %1260 = call float @dx.op.binary.f32(i32 35, float %1259, float %1258)  ; FMax(a,b)
  %1261 = call float @dx.op.binary.f32(i32 35, float %1253, float %1254)  ; FMax(a,b)
  %1262 = call float @dx.op.binary.f32(i32 35, float %1252, float %1261)  ; FMax(a,b)
  store float %1256, float* %1183, align 4, !tbaa !61, !alias.scope !85, !noalias !86
  store float %1260, float* %1184, align 4, !tbaa !61, !alias.scope !83, !noalias !84
  store float %1262, float* %1185, align 4, !tbaa !61, !alias.scope !77, !noalias !80
  %1263 = call float @dx.op.binary.f32(i32 36, float %1250, float %1251)  ; FMin(a,b)
  %1264 = call float @dx.op.binary.f32(i32 36, float %1249, float %1263)  ; FMin(a,b)
  %1265 = call float @dx.op.binary.f32(i32 35, float %1249, float %1250)  ; FMax(a,b)
  %1266 = call float @dx.op.binary.f32(i32 36, float %1265, float %1251)  ; FMin(a,b)
  %1267 = call float @dx.op.binary.f32(i32 36, float %1249, float %1250)  ; FMin(a,b)
  %1268 = call float @dx.op.binary.f32(i32 35, float %1267, float %1266)  ; FMax(a,b)
  %1269 = call float @dx.op.binary.f32(i32 35, float %1250, float %1251)  ; FMax(a,b)
  %1270 = call float @dx.op.binary.f32(i32 35, float %1249, float %1269)  ; FMax(a,b)
  store float %1264, float* %1186, align 4, !tbaa !61, !alias.scope !95, !noalias !96
  store float %1268, float* %1187, align 4, !tbaa !61, !alias.scope !93, !noalias !94
  store float %1270, float* %1188, align 4, !tbaa !61, !alias.scope !87, !noalias !90
  br label %1271

; <label>:1271                                    ; preds = %1248, %1177, %1166, %1164, %1061
  %1272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1273 = extractvalue %dx.types.CBufRet.f32 %1272, 2
  %1274 = fmul fast float %1273, %1071
  %1275 = call float @dx.op.unary.f32(i32 7, float %1274)  ; Saturate(value)
  %1276 = fptoui float %1010 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1277 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %17
  store i32 %1276, i32 addrspace(3)* %1277, align 4, !tbaa !97
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1278 = and i32 %17, 63
  %1279 = icmp ult i32 %1278, 32
  br i1 %1279, label %1280, label %1286, !dx.controlflow.hints !99

; <label>:1280                                    ; preds = %1271
  %1281 = add i32 %17, 32
  %1282 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1281
  %1283 = load i32, i32 addrspace(3)* %1282, align 4, !tbaa !97
  %1284 = load i32, i32 addrspace(3)* %1277, align 4, !tbaa !97
  %1285 = call i32 @dx.op.binary.i32(i32 40, i32 %1284, i32 %1283)  ; UMin(a,b)
  store i32 %1285, i32 addrspace(3)* %1277, align 4, !tbaa !97
  br label %1286

; <label>:1286                                    ; preds = %1280, %1271
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1287 = icmp ult i32 %1278, 16
  br i1 %1287, label %1288, label %1294, !dx.controlflow.hints !100

; <label>:1288                                    ; preds = %1286
  %1289 = add i32 %17, 16
  %1290 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1289
  %1291 = load i32, i32 addrspace(3)* %1290, align 4, !tbaa !97
  %1292 = load i32, i32 addrspace(3)* %1277, align 4, !tbaa !97
  %1293 = call i32 @dx.op.binary.i32(i32 40, i32 %1292, i32 %1291)  ; UMin(a,b)
  store i32 %1293, i32 addrspace(3)* %1277, align 4, !tbaa !97
  br label %1294

; <label>:1294                                    ; preds = %1288, %1286
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1295 = icmp ult i32 %1278, 8
  br i1 %1295, label %1296, label %1302, !dx.controlflow.hints !101

; <label>:1296                                    ; preds = %1294
  %1297 = add i32 %17, 8
  %1298 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1297
  %1299 = load i32, i32 addrspace(3)* %1298, align 4, !tbaa !97
  %1300 = load i32, i32 addrspace(3)* %1277, align 4, !tbaa !97
  %1301 = call i32 @dx.op.binary.i32(i32 40, i32 %1300, i32 %1299)  ; UMin(a,b)
  store i32 %1301, i32 addrspace(3)* %1277, align 4, !tbaa !97
  br label %1302

; <label>:1302                                    ; preds = %1296, %1294
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1303 = icmp ult i32 %1278, 4
  br i1 %1303, label %1304, label %1310, !dx.controlflow.hints !102

; <label>:1304                                    ; preds = %1302
  %1305 = add i32 %17, 4
  %1306 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1305
  %1307 = load i32, i32 addrspace(3)* %1306, align 4, !tbaa !97
  %1308 = load i32, i32 addrspace(3)* %1277, align 4, !tbaa !97
  %1309 = call i32 @dx.op.binary.i32(i32 40, i32 %1308, i32 %1307)  ; UMin(a,b)
  store i32 %1309, i32 addrspace(3)* %1277, align 4, !tbaa !97
  br label %1310

; <label>:1310                                    ; preds = %1304, %1302
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1311 = icmp ult i32 %1278, 2
  br i1 %1311, label %1312, label %1318, !dx.controlflow.hints !103

; <label>:1312                                    ; preds = %1310
  %1313 = add i32 %17, 2
  %1314 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1313
  %1315 = load i32, i32 addrspace(3)* %1314, align 4, !tbaa !97
  %1316 = load i32, i32 addrspace(3)* %1277, align 4, !tbaa !97
  %1317 = call i32 @dx.op.binary.i32(i32 40, i32 %1316, i32 %1315)  ; UMin(a,b)
  store i32 %1317, i32 addrspace(3)* %1277, align 4, !tbaa !97
  br label %1318

; <label>:1318                                    ; preds = %1312, %1310
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1319 = icmp eq i32 %1278, 0
  br i1 %1319, label %1320, label %1326, !dx.controlflow.hints !104

; <label>:1320                                    ; preds = %1318
  %1321 = add i32 %17, 1
  %1322 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1321
  %1323 = load i32, i32 addrspace(3)* %1322, align 4, !tbaa !97
  %1324 = load i32, i32 addrspace(3)* %1277, align 4, !tbaa !97
  %1325 = call i32 @dx.op.binary.i32(i32 40, i32 %1324, i32 %1323)  ; UMin(a,b)
  store i32 %1325, i32 addrspace(3)* %1277, align 4, !tbaa !97
  br label %1326

; <label>:1326                                    ; preds = %1320, %1318
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1327 = and i32 %17, -64
  %1328 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1327
  %1329 = load i32, i32 addrspace(3)* %1328, align 4, !tbaa !97
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1276, i32 addrspace(3)* %1277, align 4, !tbaa !97
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1279, label %1330, label %1336, !dx.controlflow.hints !105

; <label>:1330                                    ; preds = %1326
  %1331 = add i32 %17, 32
  %1332 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1331
  %1333 = load i32, i32 addrspace(3)* %1332, align 4, !tbaa !97
  %1334 = load i32, i32 addrspace(3)* %1277, align 4, !tbaa !97
  %1335 = call i32 @dx.op.binary.i32(i32 39, i32 %1334, i32 %1333)  ; UMax(a,b)
  store i32 %1335, i32 addrspace(3)* %1277, align 4, !tbaa !97
  br label %1336

; <label>:1336                                    ; preds = %1330, %1326
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1287, label %1337, label %1343, !dx.controlflow.hints !106

; <label>:1337                                    ; preds = %1336
  %1338 = add i32 %17, 16
  %1339 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1338
  %1340 = load i32, i32 addrspace(3)* %1339, align 4, !tbaa !97
  %1341 = load i32, i32 addrspace(3)* %1277, align 4, !tbaa !97
  %1342 = call i32 @dx.op.binary.i32(i32 39, i32 %1341, i32 %1340)  ; UMax(a,b)
  store i32 %1342, i32 addrspace(3)* %1277, align 4, !tbaa !97
  br label %1343

; <label>:1343                                    ; preds = %1337, %1336
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1295, label %1344, label %1350, !dx.controlflow.hints !107

; <label>:1344                                    ; preds = %1343
  %1345 = add i32 %17, 8
  %1346 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1345
  %1347 = load i32, i32 addrspace(3)* %1346, align 4, !tbaa !97
  %1348 = load i32, i32 addrspace(3)* %1277, align 4, !tbaa !97
  %1349 = call i32 @dx.op.binary.i32(i32 39, i32 %1348, i32 %1347)  ; UMax(a,b)
  store i32 %1349, i32 addrspace(3)* %1277, align 4, !tbaa !97
  br label %1350

; <label>:1350                                    ; preds = %1344, %1343
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1303, label %1351, label %1357, !dx.controlflow.hints !108

; <label>:1351                                    ; preds = %1350
  %1352 = add i32 %17, 4
  %1353 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1352
  %1354 = load i32, i32 addrspace(3)* %1353, align 4, !tbaa !97
  %1355 = load i32, i32 addrspace(3)* %1277, align 4, !tbaa !97
  %1356 = call i32 @dx.op.binary.i32(i32 39, i32 %1355, i32 %1354)  ; UMax(a,b)
  store i32 %1356, i32 addrspace(3)* %1277, align 4, !tbaa !97
  br label %1357

; <label>:1357                                    ; preds = %1351, %1350
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1311, label %1358, label %1364, !dx.controlflow.hints !109

; <label>:1358                                    ; preds = %1357
  %1359 = add i32 %17, 2
  %1360 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1359
  %1361 = load i32, i32 addrspace(3)* %1360, align 4, !tbaa !97
  %1362 = load i32, i32 addrspace(3)* %1277, align 4, !tbaa !97
  %1363 = call i32 @dx.op.binary.i32(i32 39, i32 %1362, i32 %1361)  ; UMax(a,b)
  store i32 %1363, i32 addrspace(3)* %1277, align 4, !tbaa !97
  br label %1364

; <label>:1364                                    ; preds = %1358, %1357
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1319, label %1365, label %1371, !dx.controlflow.hints !110

; <label>:1365                                    ; preds = %1364
  %1366 = add i32 %17, 1
  %1367 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1366
  %1368 = load i32, i32 addrspace(3)* %1367, align 4, !tbaa !97
  %1369 = load i32, i32 addrspace(3)* %1277, align 4, !tbaa !97
  %1370 = call i32 @dx.op.binary.i32(i32 39, i32 %1369, i32 %1368)  ; UMax(a,b)
  store i32 %1370, i32 addrspace(3)* %1277, align 4, !tbaa !97
  br label %1371

; <label>:1371                                    ; preds = %1365, %1364
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1372 = load i32, i32 addrspace(3)* %1328, align 4, !tbaa !97
  %1373 = uitofp i32 %1372 to float
  %1374 = uitofp i32 %1329 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %15, i32 %16, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1376 = extractvalue %dx.types.CBufRet.f32 %1375, 0
  %1377 = fmul fast float %1376, %1010
  %1378 = fmul fast float %1376, %1373
  %1379 = fmul fast float %1376, %1374
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %15, i32 %16, i32 undef, float %1377, float %1378, float %1379, float %1377, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %15, i32 %16, i32 undef, float %1275, float %1275, float %1275, float %1275, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!26 = !{void ()* @cs_fog_raymarching_particles_brfog, !"cs_fog_raymarching_particles_brfog", null, !4, !27}
!27 = !{i32 0, i64 272, i32 4, !28}
!28 = !{i32 8, i32 8, i32 1}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
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
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = !{!62, !62, i64 0}
!62 = !{!"float", !63, i64 0}
!63 = !{!"omnipotent char", !64, i64 0}
!64 = !{!"Simple C/C++ TBAA"}
!65 = !{!66, !68, !70, !71, !73, !74, !75}
!66 = distinct !{!66, !67, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!67 = distinct !{!67, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!68 = distinct !{!68, !69, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!69 = distinct !{!69, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!70 = distinct !{!70, !69, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!71 = distinct !{!71, !72, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!72 = distinct !{!72, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!73 = distinct !{!73, !72, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!74 = distinct !{!74, !72, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!75 = distinct !{!75, !72, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = !{!78}
!78 = distinct !{!78, !79, !"\01?sort@@YAXAIAM00@Z: %c"}
!79 = distinct !{!79, !"\01?sort@@YAXAIAM00@Z"}
!80 = !{!81, !82, !66, !68, !70, !71, !73, !74, !75}
!81 = distinct !{!81, !79, !"\01?sort@@YAXAIAM00@Z: %a"}
!82 = distinct !{!82, !79, !"\01?sort@@YAXAIAM00@Z: %b"}
!83 = !{!82}
!84 = !{!81, !78, !66, !68, !70, !71, !73, !74, !75}
!85 = !{!81}
!86 = !{!82, !78, !66, !68, !70, !71, !73, !74, !75}
!87 = !{!88}
!88 = distinct !{!88, !89, !"\01?sort@@YAXAIAM00@Z: %c"}
!89 = distinct !{!89, !"\01?sort@@YAXAIAM00@Z"}
!90 = !{!91, !92, !66, !68, !70, !71, !73, !74, !75}
!91 = distinct !{!91, !89, !"\01?sort@@YAXAIAM00@Z: %a"}
!92 = distinct !{!92, !89, !"\01?sort@@YAXAIAM00@Z: %b"}
!93 = !{!92}
!94 = !{!91, !88, !66, !68, !70, !71, !73, !74, !75}
!95 = !{!91}
!96 = !{!92, !88, !66, !68, !70, !71, !73, !74, !75}
!97 = !{!98, !98, i64 0}
!98 = !{!"int", !63, i64 0}
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
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}

