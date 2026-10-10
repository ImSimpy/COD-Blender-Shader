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
; shader hash: da74c08c61a6621cb89fc8439a995e84
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

define void @cs_fog_raymarching_particles() {
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
  %291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.f32 %291, 3
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 0
  %295 = fsub fast float -0.000000e+00, %226
  %296 = fsub fast float -0.000000e+00, %227
  %297 = fsub fast float %292, %228
  %298 = fadd fast float %297, %294
  %299 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %295, float %296, float %298)  ; Dot3(ax,ay,az,bx,by,bz)
  %300 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %269, float %270, float %271)  ; Dot3(ax,ay,az,bx,by,bz)
  %301 = fdiv fast float 1.000000e+00, %300
  %302 = fmul fast float %301, %299
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %305 = fsub fast float %304, %228
  %306 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %295, float %296, float %305)  ; Dot3(ax,ay,az,bx,by,bz)
  %307 = fmul fast float %301, %306
  %308 = call float @dx.op.binary.f32(i32 36, float %302, float %307)  ; FMin(a,b)
  %309 = call float @dx.op.binary.f32(i32 35, float %302, float %307)  ; FMax(a,b)
  %310 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %308)  ; FMin(a,b)
  %311 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %309)  ; FMax(a,b)
  %312 = fdiv fast float 1.000000e+00, %269
  %313 = fdiv fast float 1.000000e+00, %270
  %314 = fdiv fast float 1.000000e+00, %271
  %315 = call float @dx.op.binary.f32(i32 36, float %290, float %311)  ; FMin(a,b)
  %316 = call float @dx.op.binary.f32(i32 35, float %267, float %310)  ; FMax(a,b)
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 0
  %319 = fmul fast float %215, 2.000000e+00
  %320 = fadd fast float %319, -1.000000e+00
  %321 = fmul fast float %318, %320
  %322 = fadd fast float %321, %316
  %323 = fcmp fast olt float %322, %315
  %324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.f32 %324, 2
  %326 = fcmp fast olt float %325, 1.000000e+00
  %327 = and i1 %326, %323
  br i1 %327, label %328, label %684

; <label>:328                                     ; preds = %198
  %329 = fmul fast float %322, %271
  %330 = fadd fast float %329, %228
  %331 = fmul fast float %322, %270
  %332 = fadd fast float %331, %227
  %333 = fmul fast float %322, %269
  %334 = fadd fast float %333, %226
  br label %335

; <label>:335                                     ; preds = %662, %328
  %336 = phi float [ %459, %662 ], [ undef, %328 ]
  %337 = phi float [ %460, %662 ], [ undef, %328 ]
  %338 = phi float [ %461, %662 ], [ undef, %328 ]
  %339 = phi float [ %462, %662 ], [ undef, %328 ]
  %340 = phi float [ %664, %662 ], [ 0.000000e+00, %328 ]
  %341 = phi float [ %665, %662 ], [ 1.000000e+00, %328 ]
  %342 = phi float [ %675, %662 ], [ %334, %328 ]
  %343 = phi float [ %676, %662 ], [ %332, %328 ]
  %344 = phi float [ %677, %662 ], [ %330, %328 ]
  %345 = phi float [ %663, %662 ], [ %322, %328 ]
  %346 = phi i32 [ %354, %662 ], [ 0, %328 ]
  %347 = phi i32 [ %464, %662 ], [ 10, %328 ]
  %348 = phi float [ %666, %662 ], [ 0.000000e+00, %328 ]
  %349 = phi float [ %667, %662 ], [ 0.000000e+00, %328 ]
  %350 = phi float [ %668, %662 ], [ 0.000000e+00, %328 ]
  %351 = phi float [ %669, %662 ], [ 0.000000e+00, %328 ]
  %352 = phi float [ %670, %662 ], [ 0.000000e+00, %328 ]
  %353 = phi i32 [ %671, %662 ], [ 0, %328 ]
  %354 = add i32 %346, 1
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 0
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 0
  %359 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %360 = fsub fast float %342, %358
  %361 = fsub fast float %343, %359
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 2
  %364 = extractvalue %dx.types.CBufRet.f32 %362, 3
  %365 = fmul fast float %360, %363
  %366 = fmul fast float %361, %364
  %367 = call float @dx.op.binary.f32(i32 36, float %365, float %366)  ; FMin(a,b)
  %368 = fcmp fast olt float %367, 0.000000e+00
  %369 = call float @dx.op.binary.f32(i32 35, float %365, float %366)  ; FMax(a,b)
  %370 = fcmp fast ogt float %369, 1.000000e+00
  %371 = or i1 %368, %370
  %372 = extractvalue %dx.types.CBufRet.f32 %357, 2
  %373 = fcmp fast olt float %344, %372
  %374 = or i1 %371, %373
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 3
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 0
  %379 = fadd fast float %378, %376
  %380 = fcmp fast ogt float %344, %379
  %381 = or i1 %374, %380
  br i1 %381, label %382, label %411, !dx.controlflow.hints !29

; <label>:382                                     ; preds = %335
  %383 = extractvalue %dx.types.CBufRet.f32 %362, 0
  %384 = extractvalue %dx.types.CBufRet.f32 %362, 1
  %385 = fsub fast float %358, %342
  %386 = fmul fast float %385, %312
  %387 = fadd fast float %385, %383
  %388 = fmul fast float %387, %312
  %389 = call float @dx.op.binary.f32(i32 36, float %386, float %388)  ; FMin(a,b)
  %390 = call float @dx.op.binary.f32(i32 35, float %386, float %388)  ; FMax(a,b)
  %391 = fsub fast float %359, %343
  %392 = fmul fast float %391, %313
  %393 = fadd fast float %391, %384
  %394 = fmul fast float %393, %313
  %395 = call float @dx.op.binary.f32(i32 36, float %392, float %394)  ; FMin(a,b)
  %396 = call float @dx.op.binary.f32(i32 35, float %389, float %395)  ; FMax(a,b)
  %397 = call float @dx.op.binary.f32(i32 35, float %392, float %394)  ; FMax(a,b)
  %398 = call float @dx.op.binary.f32(i32 36, float %390, float %397)  ; FMin(a,b)
  %399 = fsub fast float %372, %344
  %400 = fmul fast float %399, %314
  %401 = fsub fast float %376, %344
  %402 = fadd fast float %401, %378
  %403 = fmul fast float %402, %314
  %404 = call float @dx.op.binary.f32(i32 36, float %400, float %403)  ; FMin(a,b)
  %405 = call float @dx.op.binary.f32(i32 35, float %396, float %404)  ; FMax(a,b)
  %406 = call float @dx.op.binary.f32(i32 35, float %400, float %403)  ; FMax(a,b)
  %407 = call float @dx.op.binary.f32(i32 36, float %398, float %406)  ; FMin(a,b)
  %408 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %405)  ; FMax(a,b)
  %409 = fcmp fast oge float %407, %408
  %410 = select i1 %409, float %405, float 1.000000e+07
  br label %457

; <label>:411                                     ; preds = %335
  %412 = fsub fast float 1.000000e+00, %366
  %413 = icmp eq i32 %347, 0
  br i1 %413, label %442, label %414

; <label>:414                                     ; preds = %411
  br label %415

; <label>:415                                     ; preds = %438, %414
  %416 = phi i32 [ %439, %438 ], [ %347, %414 ]
  %417 = uitofp i32 %416 to float
  %418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %365, float %412, float undef, float undef, i32 0, i32 0, i32 undef, float %417)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = extractvalue %dx.types.ResRet.f32 %418, 1
  %421 = extractvalue %dx.types.ResRet.f32 %418, 2
  %422 = fcmp fast oeq float %419, 0.000000e+00
  %423 = fcmp ule float %344, %421
  %424 = fcmp uge float %344, %420
  %425 = or i1 %424, %423
  %426 = or i1 %422, %425
  br i1 %426, label %427, label %438, !dx.controlflow.hints !30

; <label>:427                                     ; preds = %415
  %428 = extractvalue %dx.types.ResRet.f32 %418, 3
  %429 = extractvalue %dx.types.CBufRet.f32 %362, 0
  %430 = and i32 %416, 31
  %431 = lshr i32 1024, %430
  %432 = uitofp i32 %431 to float
  %433 = fdiv fast float %429, %432
  %434 = add i32 %416, 1
  %435 = uitofp i32 %434 to float
  %436 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %435)  ; FMin(a,b)
  %437 = fptosi float %436 to i32
  br label %457

; <label>:438                                     ; preds = %415
  %439 = add i32 %416, -1
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %415, !llvm.loop !31

; <label>:441                                     ; preds = %438
  br label %442

; <label>:442                                     ; preds = %441, %411
  %443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %10, float %365, float %412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %444 = extractvalue %dx.types.ResRet.f32 %443, 0
  %445 = extractvalue %dx.types.ResRet.f32 %443, 1
  %446 = extractvalue %dx.types.ResRet.f32 %443, 2
  %447 = extractvalue %dx.types.ResRet.f32 %443, 3
  %448 = extractvalue %dx.types.CBufRet.f32 %362, 0
  %449 = fmul fast float %448, 9.765625e-04
  %450 = fcmp fast oeq float %444, 0.000000e+00
  %451 = fcmp ule float %344, %446
  %452 = fcmp uge float %344, %445
  %453 = or i1 %452, %451
  %454 = or i1 %450, %453
  %455 = zext i1 %454 to i32
  %456 = xor i32 %455, 1
  br label %457

; <label>:457                                     ; preds = %442, %427, %382
  %458 = phi float [ %410, %382 ], [ %433, %427 ], [ %449, %442 ]
  %459 = phi float [ %336, %382 ], [ %419, %427 ], [ %444, %442 ]
  %460 = phi float [ %337, %382 ], [ %420, %427 ], [ %445, %442 ]
  %461 = phi float [ %338, %382 ], [ %421, %427 ], [ %446, %442 ]
  %462 = phi float [ %339, %382 ], [ %428, %427 ], [ %447, %442 ]
  %463 = phi i32 [ 0, %382 ], [ 0, %427 ], [ %456, %442 ]
  %464 = phi i32 [ 10, %382 ], [ %437, %427 ], [ 1, %442 ]
  %465 = icmp eq i32 %463, 0
  %466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.f32 %466, 2
  %468 = call float @dx.op.binary.f32(i32 35, float %458, float %467)  ; FMax(a,b)
  %469 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %468)  ; FMin(a,b)
  %470 = extractvalue %dx.types.CBufRet.f32 %355, 2
  %471 = fmul fast float %470, %345
  %472 = call float @dx.op.unary.f32(i32 23, float %471)  ; Log(value)
  %473 = fmul fast float %472, 0x3FE62E4300000000
  %474 = call float @dx.op.binary.f32(i32 35, float %473, float 1.000000e+00)  ; FMax(a,b)
  %475 = fmul fast float %474, 0x47EFFFFFE0000000
  %476 = call float @dx.op.binary.f32(i32 36, float %475, float %469)  ; FMin(a,b)
  %477 = call float @dx.op.binary.f32(i32 35, float %476, float %356)  ; FMax(a,b)
  %478 = fadd fast float %315, 0x3F1A36E2E0000000
  %479 = fsub fast float %478, %345
  %480 = call float @dx.op.binary.f32(i32 36, float %479, float %477)  ; FMin(a,b)
  br i1 %465, label %605, label %481, !dx.controlflow.hints !33

; <label>:481                                     ; preds = %457
  %482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %483 = extractvalue %dx.types.CBufRet.i32 %482, 0
  %484 = icmp ne i32 %483, 0
  %485 = zext i1 %484 to i32
  %486 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.i32 %486, 0
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %522, label %489

; <label>:489                                     ; preds = %481
  br label %490

; <label>:490                                     ; preds = %517, %489
  %491 = phi i32 [ %518, %517 ], [ 0, %489 ]
  %492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %491, i32 0)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.f32 %492, 0
  %494 = extractvalue %dx.types.ResRet.f32 %492, 1
  %495 = extractvalue %dx.types.ResRet.f32 %492, 2
  %496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %491, i32 16)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = extractvalue %dx.types.ResRet.f32 %496, 1
  %499 = extractvalue %dx.types.ResRet.f32 %496, 2
  %500 = fsub fast float %493, %497
  %501 = fsub fast float %494, %498
  %502 = fsub fast float %495, %499
  %503 = fadd fast float %497, %493
  %504 = fadd fast float %498, %494
  %505 = fadd fast float %499, %495
  %506 = fcmp fast olt float %342, %500
  %507 = fcmp fast olt float %343, %501
  %508 = fcmp fast olt float %344, %502
  %509 = or i1 %506, %507
  %510 = or i1 %508, %509
  %511 = fcmp fast ogt float %342, %503
  %512 = fcmp fast ogt float %343, %504
  %513 = fcmp fast ogt float %344, %505
  %514 = or i1 %511, %512
  %515 = or i1 %513, %514
  %516 = or i1 %510, %515
  br i1 %516, label %517, label %520, !dx.controlflow.hints !34

; <label>:517                                     ; preds = %490
  %518 = add nuw i32 %491, 1
  %519 = icmp ult i32 %518, %487
  br i1 %519, label %490, label %520

; <label>:520                                     ; preds = %517, %490
  %521 = phi i32 [ 255, %517 ], [ %491, %490 ]
  br label %522

; <label>:522                                     ; preds = %520, %481
  %523 = phi i32 [ 255, %481 ], [ %521, %520 ]
  %524 = icmp eq i32 %523, 255
  br i1 %524, label %530, label %525, !dx.controlflow.hints !35

; <label>:525                                     ; preds = %522
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %523, i32 156)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = icmp ne i32 %527, 0
  %529 = zext i1 %528 to i32
  br label %530

; <label>:530                                     ; preds = %525, %522
  %531 = phi i32 [ %529, %525 ], [ %485, %522 ]
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %602, !dx.controlflow.hints !36

; <label>:533                                     ; preds = %530
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 3
  %536 = extractvalue %dx.types.CBufRet.f32 %375, 0
  %537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %538 = extractvalue %dx.types.CBufRet.f32 %537, 2
  %539 = extractvalue %dx.types.CBufRet.f32 %537, 3
  br i1 %524, label %550, label %540, !dx.controlflow.hints !37

; <label>:540                                     ; preds = %533
  %541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %523, i32 60)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 0
  %543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %523, i32 64)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 0
  %545 = extractvalue %dx.types.ResRet.f32 %543, 1
  %546 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %523, i32 72)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %523, i32 96)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 0
  br label %550

; <label>:550                                     ; preds = %540, %533
  %551 = phi float [ %542, %540 ], [ %378, %533 ]
  %552 = phi float [ %547, %540 ], [ %376, %533 ]
  %553 = phi float [ %549, %540 ], [ %536, %533 ]
  %554 = phi float [ %544, %540 ], [ %538, %533 ]
  %555 = phi float [ %545, %540 ], [ %539, %533 ]
  %556 = call float @dx.op.binary.f32(i32 35, float %459, float 0.000000e+00)  ; FMax(a,b)
  %557 = call float @dx.op.binary.f32(i32 36, float %556, float 1.000000e+00)  ; FMin(a,b)
  %558 = call float @dx.op.unary.f32(i32 24, float %557)  ; Sqrt(value)
  %559 = call float @dx.op.binary.f32(i32 35, float %462, float 0x3F847AE140000000)  ; FMax(a,b)
  %560 = fsub fast float %460, %344
  %561 = fsub fast float %344, %461
  %562 = call float @dx.op.binary.f32(i32 36, float %561, float %560)  ; FMin(a,b)
  %563 = fdiv fast float %562, %559
  %564 = call float @dx.op.unary.f32(i32 7, float %563)  ; Saturate(value)
  %565 = fsub fast float %344, %552
  %566 = fdiv fast float %565, %551
  %567 = call float @dx.op.unary.f32(i32 7, float %566)  ; Saturate(value)
  %568 = fsub fast float 1.000000e+00, %567
  %569 = fmul float %564, %568
  %570 = fmul float %569, %569
  %571 = fmul fast float %558, %535
  %572 = fmul fast float %571, %570
  %573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %574 = extractvalue %dx.types.CBufRet.f32 %573, 2
  %575 = extractvalue %dx.types.CBufRet.f32 %573, 1
  %576 = fsub fast float %572, %575
  %577 = fsub fast float %574, %575
  %578 = fdiv fast float %576, %577
  %579 = call float @dx.op.unary.f32(i32 7, float %578)  ; Saturate(value)
  %580 = fmul fast float %579, %553
  %581 = fcmp fast ogt float %555, 0.000000e+00
  br i1 %581, label %582, label %602, !dx.controlflow.hints !38

; <label>:582                                     ; preds = %550
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 0
  %585 = extractvalue %dx.types.CBufRet.f32 %583, 1
  %586 = extractvalue %dx.types.CBufRet.f32 %583, 2
  %587 = fsub fast float %342, %584
  %588 = fsub fast float %343, %585
  %589 = fsub fast float %344, %586
  %590 = fmul fast float %587, %587
  %591 = fmul fast float %588, %588
  %592 = fadd fast float %590, %591
  %593 = fmul fast float %589, %589
  %594 = fadd fast float %592, %593
  %595 = call float @dx.op.unary.f32(i32 24, float %594)  ; Sqrt(value)
  %596 = fsub fast float %595, %554
  %597 = fsub fast float %555, %554
  %598 = fdiv fast float %596, %597
  %599 = call float @dx.op.unary.f32(i32 7, float %598)  ; Saturate(value)
  %600 = fmul fast float %599, %599
  %601 = fmul fast float %600, %580
  br label %602

; <label>:602                                     ; preds = %582, %550, %530
  %603 = phi float [ 0.000000e+00, %530 ], [ %601, %582 ], [ %580, %550 ]
  %604 = fmul fast float %603, %480
  br label %605

; <label>:605                                     ; preds = %602, %457
  %606 = phi float [ %604, %602 ], [ 0.000000e+00, %457 ]
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 1
  %609 = fcmp fast ogt float %606, %608
  br i1 %609, label %612, label %610, !dx.controlflow.hints !39

; <label>:610                                     ; preds = %605
  %611 = fadd fast float %480, %345
  br label %662

; <label>:612                                     ; preds = %605
  %613 = fmul fast float %606, 0xBFF7154760000000
  %614 = call float @dx.op.unary.f32(i32 21, float %613)  ; Exp(value)
  %615 = call float @dx.op.unary.f32(i32 7, float %614)  ; Saturate(value)
  %616 = fsub fast float 1.000000e+00, %615
  %617 = fdiv fast float %606, %480
  %618 = fadd fast float %480, %345
  %619 = fmul fast float %345, %345
  %620 = fmul fast float %618, %618
  %621 = fsub fast float %619, %620
  %622 = fmul fast float %621, -5.000000e-01
  %623 = fmul fast float %622, %617
  %624 = fadd fast float %623, %340
  %625 = fadd fast float %606, %348
  %626 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %627 = extractvalue %dx.types.CBufRet.i32 %626, 0
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %655, label %629, !dx.controlflow.hints !40

; <label>:629                                     ; preds = %612
  %630 = icmp ne i32 %353, 0
  %631 = zext i1 %630 to i32
  %632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.f32 %632, 2
  %634 = extractvalue %dx.types.CBufRet.f32 %632, 0
  %635 = fsub fast float %618, %634
  %636 = fmul fast float %635, %633
  %637 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %638 = fadd fast float %637, -5.000000e-01
  %639 = fmul fast float %638, 2.000000e+00
  %640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.f32 %640, 2
  %642 = fcmp fast olt float %639, %641
  br i1 %642, label %643, label %655, !dx.controlflow.hints !41

; <label>:643                                     ; preds = %629
  %644 = fmul fast float %639, %639
  %645 = fmul fast float %616, %341
  %646 = fmul fast float %639, %645
  %647 = fmul fast float %644, %645
  %648 = fmul fast float %646, %644
  %649 = fmul fast float %644, %644
  %650 = fmul fast float %649, %645
  %651 = fadd fast float %646, %349
  %652 = fadd fast float %647, %350
  %653 = fadd fast float %648, %351
  %654 = fadd fast float %650, %352
  br label %655

; <label>:655                                     ; preds = %643, %629, %612
  %656 = phi float [ %349, %612 ], [ %651, %643 ], [ %349, %629 ]
  %657 = phi float [ %350, %612 ], [ %652, %643 ], [ %350, %629 ]
  %658 = phi float [ %351, %612 ], [ %653, %643 ], [ %351, %629 ]
  %659 = phi float [ %352, %612 ], [ %654, %643 ], [ %352, %629 ]
  %660 = phi i32 [ %353, %612 ], [ 1, %643 ], [ %631, %629 ]
  %661 = fmul fast float %615, %341
  br label %662

; <label>:662                                     ; preds = %655, %610
  %663 = phi float [ %611, %610 ], [ %618, %655 ]
  %664 = phi float [ %340, %610 ], [ %624, %655 ]
  %665 = phi float [ %341, %610 ], [ %661, %655 ]
  %666 = phi float [ %348, %610 ], [ %625, %655 ]
  %667 = phi float [ %349, %610 ], [ %656, %655 ]
  %668 = phi float [ %350, %610 ], [ %657, %655 ]
  %669 = phi float [ %351, %610 ], [ %658, %655 ]
  %670 = phi float [ %352, %610 ], [ %659, %655 ]
  %671 = phi i32 [ %353, %610 ], [ %660, %655 ]
  %672 = fmul fast float %480, %269
  %673 = fmul fast float %480, %270
  %674 = fmul fast float %480, %271
  %675 = fadd fast float %672, %342
  %676 = fadd fast float %673, %343
  %677 = fadd fast float %674, %344
  %678 = fcmp fast olt float %663, %315
  %679 = extractvalue %dx.types.CBufRet.f32 %607, 2
  %680 = fcmp fast olt float %679, %665
  %681 = and i1 %678, %680
  br i1 %681, label %335, label %682

; <label>:682                                     ; preds = %662
  %683 = uitofp i32 %354 to float
  br label %684

; <label>:684                                     ; preds = %682, %198
  %685 = phi float [ 0.000000e+00, %198 ], [ %664, %682 ]
  %686 = phi float [ 1.000000e+00, %198 ], [ %665, %682 ]
  %687 = phi float [ 0.000000e+00, %198 ], [ %683, %682 ]
  %688 = phi float [ 0.000000e+00, %198 ], [ %666, %682 ]
  %689 = phi float [ 0.000000e+00, %198 ], [ %667, %682 ]
  %690 = phi float [ 0.000000e+00, %198 ], [ %668, %682 ]
  %691 = phi float [ 0.000000e+00, %198 ], [ %669, %682 ]
  %692 = phi float [ 0.000000e+00, %198 ], [ %670, %682 ]
  %693 = phi i32 [ 0, %198 ], [ %671, %682 ]
  %694 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %695 = extractvalue %dx.types.CBufRet.i32 %694, 0
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %738, label %697, !dx.controlflow.hints !42

; <label>:697                                     ; preds = %684
  %698 = icmp eq i32 %693, 0
  br i1 %698, label %737, label %699, !dx.controlflow.hints !43

; <label>:699                                     ; preds = %697
  %700 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %701 = extractvalue %dx.types.CBufRet.i32 %700, 2
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %709, label %703, !dx.controlflow.hints !44

; <label>:703                                     ; preds = %699
  %704 = fsub fast float 1.000000e+00, %686
  %705 = fdiv fast float %689, %704
  %706 = fdiv fast float %690, %704
  %707 = fdiv fast float %691, %704
  %708 = fdiv fast float %692, %704
  br label %714

; <label>:709                                     ; preds = %699
  %710 = fadd fast float %689, %686
  %711 = fadd fast float %690, %686
  %712 = fadd fast float %691, %686
  %713 = fadd fast float %692, %686
  br label %714

; <label>:714                                     ; preds = %709, %703
  %715 = phi float [ %705, %703 ], [ %710, %709 ]
  %716 = phi float [ %706, %703 ], [ %711, %709 ]
  %717 = phi float [ %707, %703 ], [ %712, %709 ]
  %718 = phi float [ %708, %703 ], [ %713, %709 ]
  %719 = call float @dx.op.binary.f32(i32 35, float %715, float -1.000000e+00)  ; FMax(a,b)
  %720 = call float @dx.op.binary.f32(i32 35, float %716, float -1.000000e+00)  ; FMax(a,b)
  %721 = call float @dx.op.binary.f32(i32 35, float %717, float -1.000000e+00)  ; FMax(a,b)
  %722 = call float @dx.op.binary.f32(i32 35, float %718, float -1.000000e+00)  ; FMax(a,b)
  %723 = call float @dx.op.binary.f32(i32 36, float %719, float 1.000000e+00)  ; FMin(a,b)
  %724 = call float @dx.op.binary.f32(i32 36, float %720, float 1.000000e+00)  ; FMin(a,b)
  %725 = call float @dx.op.binary.f32(i32 36, float %721, float 1.000000e+00)  ; FMin(a,b)
  %726 = call float @dx.op.binary.f32(i32 36, float %722, float 1.000000e+00)  ; FMin(a,b)
  %727 = fmul fast float %723, 1.500000e+00
  %728 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %725, float %727)  ; FMad(a,b,c)
  %729 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %724, float 0.000000e+00)  ; FMad(a,b,c)
  %730 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %726, float %729)  ; FMad(a,b,c)
  %731 = fmul fast float %723, 0x3FEBB67AE0000000
  %732 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %725, float %731)  ; FMad(a,b,c)
  %733 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %724, float 0.000000e+00)  ; FMad(a,b,c)
  %734 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %726, float %733)  ; FMad(a,b,c)
  %735 = fadd fast float %728, 5.000000e-01
  %736 = fadd fast float %732, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %15, i32 0, float %735, float %730, float %736, float %734, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %738

; <label>:737                                     ; preds = %697
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %15, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %738

; <label>:738                                     ; preds = %737, %714, %684
  %739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.f32 %739, 0
  %741 = extractvalue %dx.types.CBufRet.f32 %739, 1
  %742 = extractvalue %dx.types.CBufRet.f32 %739, 2
  %743 = call float @dx.op.dot3.f32(i32 55, float %269, float %270, float %271, float %740, float %741, float %742)  ; Dot3(ax,ay,az,bx,by,bz)
  %744 = fmul fast float %743, %685
  %745 = fcmp fast ogt float %688, 0.000000e+00
  %746 = fdiv fast float 1.000000e+00, %688
  %747 = fmul fast float %744, %746
  %748 = select i1 %745, float %747, float %280
  %749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.f32 %749, 0
  %751 = extractvalue %dx.types.CBufRet.f32 %749, 1
  %752 = extractvalue %dx.types.CBufRet.f32 %749, 2
  %753 = fmul fast float %750, %233
  %754 = fmul fast float %751, %233
  %755 = fmul fast float %752, %233
  %756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %757 = extractvalue %dx.types.CBufRet.f32 %756, 0
  %758 = extractvalue %dx.types.CBufRet.f32 %756, 1
  %759 = extractvalue %dx.types.CBufRet.f32 %756, 2
  %760 = fmul fast float %757, %234
  %761 = fmul fast float %758, %234
  %762 = fmul fast float %759, %234
  %763 = fadd fast float %760, %753
  %764 = fadd fast float %761, %754
  %765 = fadd fast float %762, %755
  %766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %767 = extractvalue %dx.types.CBufRet.f32 %766, 0
  %768 = extractvalue %dx.types.CBufRet.f32 %766, 1
  %769 = extractvalue %dx.types.CBufRet.f32 %766, 2
  %770 = fadd fast float %763, %767
  %771 = fadd fast float %764, %768
  %772 = fadd fast float %765, %769
  %773 = fmul fast float %770, %748
  %774 = fmul fast float %771, %748
  %775 = fmul fast float %772, %748
  %776 = call float @dx.op.dot3.f32(i32 55, float %773, float %774, float %775, float %773, float %774, float %775)  ; Dot3(ax,ay,az,bx,by,bz)
  %777 = call float @dx.op.unary.f32(i32 25, float %776)  ; Rsqrt(value)
  %778 = fmul fast float %777, %776
  %779 = fmul fast float %777, %773
  %780 = fmul fast float %777, %774
  %781 = fmul fast float %777, %775
  %782 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.i32 %782, 1
  %784 = and i32 %783, 1
  %785 = icmp ne i32 %784, 0
  %786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %787 = extractvalue %dx.types.CBufRet.f32 %786, 2
  %788 = fcmp fast ogt float %787, 0.000000e+00
  %789 = and i1 %785, %788
  br i1 %789, label %790, label %948, !dx.controlflow.hints !45

; <label>:790                                     ; preds = %738
  %791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %792 = extractvalue %dx.types.CBufRet.f32 %791, 2
  %793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.f32 %793, 2
  %795 = fsub fast float %792, %794
  %796 = extractvalue %dx.types.CBufRet.i32 %782, 0
  %797 = call i32 @dx.op.binary.i32(i32 40, i32 %796, i32 3)  ; UMin(a,b)
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 0
  %800 = extractvalue %dx.types.CBufRet.f32 %798, 1
  %801 = extractvalue %dx.types.CBufRet.f32 %793, 0
  %802 = extractvalue %dx.types.CBufRet.f32 %793, 1
  %803 = fsub fast float %799, %801
  %804 = fsub fast float %800, %802
  %805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %806 = extractvalue %dx.types.CBufRet.f32 %805, 0
  %807 = fcmp fast ogt float %806, 0.000000e+00
  %808 = fsub fast float -0.000000e+00, %803
  %809 = fsub fast float -0.000000e+00, %804
  %810 = call float @dx.op.dot2.f32(i32 54, float %779, float %780, float %779, float %780)  ; Dot2(ax,ay,bx,by)
  %811 = call float @dx.op.dot2.f32(i32 54, float %779, float %780, float %808, float %809)  ; Dot2(ax,ay,bx,by)
  %812 = fmul fast float %811, 2.000000e+00
  %813 = call float @dx.op.dot2.f32(i32 54, float %808, float %809, float %808, float %809)  ; Dot2(ax,ay,bx,by)
  %814 = fmul fast float %806, %806
  %815 = fsub fast float %813, %814
  %816 = fmul fast float %812, %812
  %817 = fmul fast float %810, 4.000000e+00
  %818 = fmul fast float %817, %815
  %819 = fsub fast float %816, %818
  %820 = fcmp fast ogt float %819, 0.000000e+00
  br i1 %820, label %821, label %836, !dx.controlflow.hints !46

; <label>:821                                     ; preds = %790
  %822 = fcmp fast ogt float %812, 0.000000e+00
  %823 = call float @dx.op.unary.f32(i32 24, float %819)  ; Sqrt(value)
  %824 = fsub fast float -0.000000e+00, %823
  %825 = select i1 %822, float %823, float %824
  %826 = fadd fast float %825, %812
  %827 = fmul float %826, -5.000000e-01
  %828 = fdiv fast float %827, %810
  %829 = call float @dx.op.binary.f32(i32 35, float %828, float 0.000000e+00)  ; FMax(a,b)
  %830 = call float @dx.op.binary.f32(i32 36, float %778, float %829)  ; FMin(a,b)
  %831 = fdiv fast float %815, %827
  %832 = call float @dx.op.binary.f32(i32 35, float %831, float 0.000000e+00)  ; FMax(a,b)
  %833 = call float @dx.op.binary.f32(i32 36, float %778, float %832)  ; FMin(a,b)
  %834 = call float @dx.op.binary.f32(i32 36, float %830, float %833)  ; FMin(a,b)
  %835 = call float @dx.op.binary.f32(i32 35, float %830, float %833)  ; FMax(a,b)
  br label %836

; <label>:836                                     ; preds = %821, %790
  %837 = phi float [ %835, %821 ], [ -1.000000e+00, %790 ]
  %838 = phi float [ %834, %821 ], [ -1.000000e+00, %790 ]
  %839 = phi i1 [ true, %821 ], [ false, %790 ]
  %840 = and i1 %807, %839
  br i1 %840, label %841, label %843, !dx.controlflow.hints !47

; <label>:841                                     ; preds = %836
  %842 = fcmp fast oeq float %838, %837
  br i1 %842, label %948, label %844, !dx.controlflow.hints !48

; <label>:843                                     ; preds = %836
  br i1 %807, label %948, label %844, !dx.controlflow.hints !49

; <label>:844                                     ; preds = %843, %841
  %845 = phi float [ %778, %843 ], [ %837, %841 ]
  %846 = phi float [ 0.000000e+00, %843 ], [ %838, %841 ]
  %847 = fcmp fast oeq float %781, 0.000000e+00
  %848 = fdiv fast float %795, %781
  %849 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %848)  ; FMax(a,b)
  %850 = select i1 %847, float %845, float %849
  %851 = call float @dx.op.binary.f32(i32 36, float %845, float %850)  ; FMin(a,b)
  %852 = fcmp fast ogt float %781, 0.000000e+00
  %853 = fcmp fast olt float %795, 0.000000e+00
  br i1 %852, label %854, label %855, !dx.controlflow.hints !50

; <label>:854                                     ; preds = %844
  br i1 %853, label %948, label %858, !dx.controlflow.hints !51

; <label>:855                                     ; preds = %844
  br i1 %853, label %856, label %858, !dx.controlflow.hints !52

; <label>:856                                     ; preds = %855
  %857 = call float @dx.op.binary.f32(i32 35, float %846, float %851)  ; FMax(a,b)
  br label %858

; <label>:858                                     ; preds = %856, %855, %854
  %859 = phi float [ %857, %856 ], [ %846, %855 ], [ %846, %854 ]
  %860 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 0
  store float -1.000000e+00, float* %860, align 4, !tbaa !53, !noalias !57
  %861 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 1
  store float -1.000000e+00, float* %861, align 4, !tbaa !53, !noalias !57
  %862 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 2
  store float -1.000000e+00, float* %862, align 4, !tbaa !53, !noalias !57
  %863 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 0
  store float -1.000000e+00, float* %863, align 4, !tbaa !53, !noalias !57
  %864 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 1
  store float -1.000000e+00, float* %864, align 4, !tbaa !53, !noalias !57
  %865 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 2
  store float -1.000000e+00, float* %865, align 4, !tbaa !53, !noalias !57
  %866 = icmp sgt i32 %797, 0
  br i1 %866, label %867, label %925

; <label>:867                                     ; preds = %858
  br label %868

; <label>:868                                     ; preds = %915, %867
  %869 = phi i32 [ %916, %915 ], [ 0, %867 ]
  %870 = add nuw i32 %869, 171
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %870)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 0
  %873 = extractvalue %dx.types.CBufRet.f32 %871, 1
  %874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.f32 %874, 0
  %876 = extractvalue %dx.types.CBufRet.f32 %874, 1
  %877 = fsub fast float %872, %875
  %878 = fsub fast float %873, %876
  %879 = extractvalue %dx.types.CBufRet.f32 %871, 2
  %880 = fsub fast float -0.000000e+00, %877
  %881 = fsub fast float -0.000000e+00, %878
  %882 = call float @dx.op.dot2.f32(i32 54, float %779, float %780, float %880, float %881)  ; Dot2(ax,ay,bx,by)
  %883 = fmul fast float %882, 2.000000e+00
  %884 = call float @dx.op.dot2.f32(i32 54, float %880, float %881, float %880, float %881)  ; Dot2(ax,ay,bx,by)
  %885 = fmul fast float %879, %879
  %886 = fsub fast float %884, %885
  %887 = fmul fast float %883, %883
  %888 = fmul fast float %817, %886
  %889 = fsub fast float %887, %888
  %890 = fcmp fast ogt float %889, 0.000000e+00
  br i1 %890, label %891, label %906, !dx.controlflow.hints !46

; <label>:891                                     ; preds = %868
  %892 = fcmp fast ogt float %883, 0.000000e+00
  %893 = call float @dx.op.unary.f32(i32 24, float %889)  ; Sqrt(value)
  %894 = fsub fast float -0.000000e+00, %893
  %895 = select i1 %892, float %893, float %894
  %896 = fadd fast float %895, %883
  %897 = fmul float %896, -5.000000e-01
  %898 = fdiv fast float %897, %810
  %899 = call float @dx.op.binary.f32(i32 35, float %898, float 0.000000e+00)  ; FMax(a,b)
  %900 = call float @dx.op.binary.f32(i32 36, float %845, float %899)  ; FMin(a,b)
  %901 = fdiv fast float %886, %897
  %902 = call float @dx.op.binary.f32(i32 35, float %901, float 0.000000e+00)  ; FMax(a,b)
  %903 = call float @dx.op.binary.f32(i32 36, float %845, float %902)  ; FMin(a,b)
  %904 = call float @dx.op.binary.f32(i32 36, float %900, float %903)  ; FMin(a,b)
  %905 = call float @dx.op.binary.f32(i32 35, float %900, float %903)  ; FMax(a,b)
  br label %906

; <label>:906                                     ; preds = %891, %868
  %907 = phi float [ %905, %891 ], [ -1.000000e+00, %868 ]
  %908 = phi float [ %904, %891 ], [ -1.000000e+00, %868 ]
  %909 = phi i1 [ true, %891 ], [ false, %868 ]
  br i1 %909, label %910, label %915, !dx.controlflow.hints !68

; <label>:910                                     ; preds = %906
  %911 = call float @dx.op.binary.f32(i32 35, float %859, float %908)  ; FMax(a,b)
  %912 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 %869
  store float %911, float* %912, align 4, !tbaa !53, !noalias !57
  %913 = call float @dx.op.binary.f32(i32 35, float %859, float %907)  ; FMax(a,b)
  %914 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 %869
  store float %913, float* %914, align 4, !tbaa !53, !noalias !57
  br label %915

; <label>:915                                     ; preds = %910, %906
  %916 = add nuw nsw i32 %869, 1
  %917 = icmp eq i32 %916, %797
  br i1 %917, label %918, label %868

; <label>:918                                     ; preds = %915
  %919 = load float, float* %862, align 4, !tbaa !53, !alias.scope !69, !noalias !72
  %920 = load float, float* %861, align 4, !tbaa !53, !alias.scope !75, !noalias !76
  %921 = load float, float* %860, align 4, !tbaa !53, !alias.scope !77, !noalias !78
  %922 = load float, float* %865, align 4, !tbaa !53, !alias.scope !79, !noalias !82
  %923 = load float, float* %864, align 4, !tbaa !53, !alias.scope !85, !noalias !86
  %924 = load float, float* %863, align 4, !tbaa !53, !alias.scope !87, !noalias !88
  br label %925

; <label>:925                                     ; preds = %918, %858
  %926 = phi float [ -1.000000e+00, %858 ], [ %924, %918 ]
  %927 = phi float [ -1.000000e+00, %858 ], [ %923, %918 ]
  %928 = phi float [ -1.000000e+00, %858 ], [ %922, %918 ]
  %929 = phi float [ -1.000000e+00, %858 ], [ %921, %918 ]
  %930 = phi float [ -1.000000e+00, %858 ], [ %920, %918 ]
  %931 = phi float [ -1.000000e+00, %858 ], [ %919, %918 ]
  %932 = call float @dx.op.binary.f32(i32 36, float %930, float %931)  ; FMin(a,b)
  %933 = call float @dx.op.binary.f32(i32 36, float %929, float %932)  ; FMin(a,b)
  %934 = call float @dx.op.binary.f32(i32 35, float %929, float %930)  ; FMax(a,b)
  %935 = call float @dx.op.binary.f32(i32 36, float %934, float %931)  ; FMin(a,b)
  %936 = call float @dx.op.binary.f32(i32 36, float %929, float %930)  ; FMin(a,b)
  %937 = call float @dx.op.binary.f32(i32 35, float %936, float %935)  ; FMax(a,b)
  %938 = call float @dx.op.binary.f32(i32 35, float %930, float %931)  ; FMax(a,b)
  %939 = call float @dx.op.binary.f32(i32 35, float %929, float %938)  ; FMax(a,b)
  store float %933, float* %860, align 4, !tbaa !53, !alias.scope !77, !noalias !78
  store float %937, float* %861, align 4, !tbaa !53, !alias.scope !75, !noalias !76
  store float %939, float* %862, align 4, !tbaa !53, !alias.scope !69, !noalias !72
  %940 = call float @dx.op.binary.f32(i32 36, float %927, float %928)  ; FMin(a,b)
  %941 = call float @dx.op.binary.f32(i32 36, float %926, float %940)  ; FMin(a,b)
  %942 = call float @dx.op.binary.f32(i32 35, float %926, float %927)  ; FMax(a,b)
  %943 = call float @dx.op.binary.f32(i32 36, float %942, float %928)  ; FMin(a,b)
  %944 = call float @dx.op.binary.f32(i32 36, float %926, float %927)  ; FMin(a,b)
  %945 = call float @dx.op.binary.f32(i32 35, float %944, float %943)  ; FMax(a,b)
  %946 = call float @dx.op.binary.f32(i32 35, float %927, float %928)  ; FMax(a,b)
  %947 = call float @dx.op.binary.f32(i32 35, float %926, float %946)  ; FMax(a,b)
  store float %941, float* %863, align 4, !tbaa !53, !alias.scope !87, !noalias !88
  store float %945, float* %864, align 4, !tbaa !53, !alias.scope !85, !noalias !86
  store float %947, float* %865, align 4, !tbaa !53, !alias.scope !79, !noalias !82
  br label %948

; <label>:948                                     ; preds = %925, %854, %843, %841, %738
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 2
  %951 = fmul fast float %950, %748
  %952 = call float @dx.op.unary.f32(i32 7, float %951)  ; Saturate(value)
  %953 = fptoui float %687 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %954 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %16
  store i32 %953, i32 addrspace(3)* %954, align 4, !tbaa !89
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %955 = and i32 %16, 63
  %956 = icmp ult i32 %955, 32
  br i1 %956, label %957, label %963, !dx.controlflow.hints !91

; <label>:957                                     ; preds = %948
  %958 = add i32 %16, 32
  %959 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %958
  %960 = load i32, i32 addrspace(3)* %959, align 4, !tbaa !89
  %961 = load i32, i32 addrspace(3)* %954, align 4, !tbaa !89
  %962 = call i32 @dx.op.binary.i32(i32 40, i32 %961, i32 %960)  ; UMin(a,b)
  store i32 %962, i32 addrspace(3)* %954, align 4, !tbaa !89
  br label %963

; <label>:963                                     ; preds = %957, %948
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %964 = icmp ult i32 %955, 16
  br i1 %964, label %965, label %971, !dx.controlflow.hints !92

; <label>:965                                     ; preds = %963
  %966 = add i32 %16, 16
  %967 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %966
  %968 = load i32, i32 addrspace(3)* %967, align 4, !tbaa !89
  %969 = load i32, i32 addrspace(3)* %954, align 4, !tbaa !89
  %970 = call i32 @dx.op.binary.i32(i32 40, i32 %969, i32 %968)  ; UMin(a,b)
  store i32 %970, i32 addrspace(3)* %954, align 4, !tbaa !89
  br label %971

; <label>:971                                     ; preds = %965, %963
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %972 = icmp ult i32 %955, 8
  br i1 %972, label %973, label %979, !dx.controlflow.hints !93

; <label>:973                                     ; preds = %971
  %974 = add i32 %16, 8
  %975 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %974
  %976 = load i32, i32 addrspace(3)* %975, align 4, !tbaa !89
  %977 = load i32, i32 addrspace(3)* %954, align 4, !tbaa !89
  %978 = call i32 @dx.op.binary.i32(i32 40, i32 %977, i32 %976)  ; UMin(a,b)
  store i32 %978, i32 addrspace(3)* %954, align 4, !tbaa !89
  br label %979

; <label>:979                                     ; preds = %973, %971
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %980 = icmp ult i32 %955, 4
  br i1 %980, label %981, label %987, !dx.controlflow.hints !94

; <label>:981                                     ; preds = %979
  %982 = add i32 %16, 4
  %983 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %982
  %984 = load i32, i32 addrspace(3)* %983, align 4, !tbaa !89
  %985 = load i32, i32 addrspace(3)* %954, align 4, !tbaa !89
  %986 = call i32 @dx.op.binary.i32(i32 40, i32 %985, i32 %984)  ; UMin(a,b)
  store i32 %986, i32 addrspace(3)* %954, align 4, !tbaa !89
  br label %987

; <label>:987                                     ; preds = %981, %979
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %988 = icmp ult i32 %955, 2
  br i1 %988, label %989, label %995, !dx.controlflow.hints !95

; <label>:989                                     ; preds = %987
  %990 = add i32 %16, 2
  %991 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %990
  %992 = load i32, i32 addrspace(3)* %991, align 4, !tbaa !89
  %993 = load i32, i32 addrspace(3)* %954, align 4, !tbaa !89
  %994 = call i32 @dx.op.binary.i32(i32 40, i32 %993, i32 %992)  ; UMin(a,b)
  store i32 %994, i32 addrspace(3)* %954, align 4, !tbaa !89
  br label %995

; <label>:995                                     ; preds = %989, %987
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %996 = icmp eq i32 %955, 0
  br i1 %996, label %997, label %1003, !dx.controlflow.hints !96

; <label>:997                                     ; preds = %995
  %998 = add i32 %16, 1
  %999 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %998
  %1000 = load i32, i32 addrspace(3)* %999, align 4, !tbaa !89
  %1001 = load i32, i32 addrspace(3)* %954, align 4, !tbaa !89
  %1002 = call i32 @dx.op.binary.i32(i32 40, i32 %1001, i32 %1000)  ; UMin(a,b)
  store i32 %1002, i32 addrspace(3)* %954, align 4, !tbaa !89
  br label %1003

; <label>:1003                                    ; preds = %997, %995
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1004 = and i32 %16, -64
  %1005 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1004
  %1006 = load i32, i32 addrspace(3)* %1005, align 4, !tbaa !89
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %953, i32 addrspace(3)* %954, align 4, !tbaa !89
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %956, label %1007, label %1013, !dx.controlflow.hints !97

; <label>:1007                                    ; preds = %1003
  %1008 = add i32 %16, 32
  %1009 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1008
  %1010 = load i32, i32 addrspace(3)* %1009, align 4, !tbaa !89
  %1011 = load i32, i32 addrspace(3)* %954, align 4, !tbaa !89
  %1012 = call i32 @dx.op.binary.i32(i32 39, i32 %1011, i32 %1010)  ; UMax(a,b)
  store i32 %1012, i32 addrspace(3)* %954, align 4, !tbaa !89
  br label %1013

; <label>:1013                                    ; preds = %1007, %1003
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %964, label %1014, label %1020, !dx.controlflow.hints !98

; <label>:1014                                    ; preds = %1013
  %1015 = add i32 %16, 16
  %1016 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1015
  %1017 = load i32, i32 addrspace(3)* %1016, align 4, !tbaa !89
  %1018 = load i32, i32 addrspace(3)* %954, align 4, !tbaa !89
  %1019 = call i32 @dx.op.binary.i32(i32 39, i32 %1018, i32 %1017)  ; UMax(a,b)
  store i32 %1019, i32 addrspace(3)* %954, align 4, !tbaa !89
  br label %1020

; <label>:1020                                    ; preds = %1014, %1013
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %972, label %1021, label %1027, !dx.controlflow.hints !99

; <label>:1021                                    ; preds = %1020
  %1022 = add i32 %16, 8
  %1023 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1022
  %1024 = load i32, i32 addrspace(3)* %1023, align 4, !tbaa !89
  %1025 = load i32, i32 addrspace(3)* %954, align 4, !tbaa !89
  %1026 = call i32 @dx.op.binary.i32(i32 39, i32 %1025, i32 %1024)  ; UMax(a,b)
  store i32 %1026, i32 addrspace(3)* %954, align 4, !tbaa !89
  br label %1027

; <label>:1027                                    ; preds = %1021, %1020
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %980, label %1028, label %1034, !dx.controlflow.hints !100

; <label>:1028                                    ; preds = %1027
  %1029 = add i32 %16, 4
  %1030 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1029
  %1031 = load i32, i32 addrspace(3)* %1030, align 4, !tbaa !89
  %1032 = load i32, i32 addrspace(3)* %954, align 4, !tbaa !89
  %1033 = call i32 @dx.op.binary.i32(i32 39, i32 %1032, i32 %1031)  ; UMax(a,b)
  store i32 %1033, i32 addrspace(3)* %954, align 4, !tbaa !89
  br label %1034

; <label>:1034                                    ; preds = %1028, %1027
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %988, label %1035, label %1041, !dx.controlflow.hints !101

; <label>:1035                                    ; preds = %1034
  %1036 = add i32 %16, 2
  %1037 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1036
  %1038 = load i32, i32 addrspace(3)* %1037, align 4, !tbaa !89
  %1039 = load i32, i32 addrspace(3)* %954, align 4, !tbaa !89
  %1040 = call i32 @dx.op.binary.i32(i32 39, i32 %1039, i32 %1038)  ; UMax(a,b)
  store i32 %1040, i32 addrspace(3)* %954, align 4, !tbaa !89
  br label %1041

; <label>:1041                                    ; preds = %1035, %1034
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %996, label %1042, label %1048, !dx.controlflow.hints !102

; <label>:1042                                    ; preds = %1041
  %1043 = add i32 %16, 1
  %1044 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1043
  %1045 = load i32, i32 addrspace(3)* %1044, align 4, !tbaa !89
  %1046 = load i32, i32 addrspace(3)* %954, align 4, !tbaa !89
  %1047 = call i32 @dx.op.binary.i32(i32 39, i32 %1046, i32 %1045)  ; UMax(a,b)
  store i32 %1047, i32 addrspace(3)* %954, align 4, !tbaa !89
  br label %1048

; <label>:1048                                    ; preds = %1042, %1041
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1049 = load i32, i32 addrspace(3)* %1005, align 4, !tbaa !89
  %1050 = uitofp i32 %1049 to float
  %1051 = uitofp i32 %1006 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %14, i32 %15, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.f32 %1052, 0
  %1054 = fmul fast float %1053, %687
  %1055 = fmul fast float %1053, %1050
  %1056 = fmul fast float %1053, %1051
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %14, i32 %15, i32 undef, float %1054, float %1055, float %1056, float %1054, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %14, i32 %15, i32 undef, float %952, float %952, float %952, float %952, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!25 = !{void ()* @cs_fog_raymarching_particles, !"cs_fog_raymarching_particles", null, !4, !26}
!26 = !{i32 0, i64 272, i32 4, !27}
!27 = !{i32 8, i32 8, i32 1}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
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
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = !{!54, !54, i64 0}
!54 = !{!"float", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!58, !60, !62, !63, !65, !66, !67}
!58 = distinct !{!58, !59, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!59 = distinct !{!59, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!60 = distinct !{!60, !61, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!61 = distinct !{!61, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!62 = distinct !{!62, !61, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!63 = distinct !{!63, !64, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!64 = distinct !{!64, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!65 = distinct !{!65, !64, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!66 = distinct !{!66, !64, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!67 = distinct !{!67, !64, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = !{!70}
!70 = distinct !{!70, !71, !"\01?sort@@YAXAIAM00@Z: %c"}
!71 = distinct !{!71, !"\01?sort@@YAXAIAM00@Z"}
!72 = !{!73, !74, !58, !60, !62, !63, !65, !66, !67}
!73 = distinct !{!73, !71, !"\01?sort@@YAXAIAM00@Z: %a"}
!74 = distinct !{!74, !71, !"\01?sort@@YAXAIAM00@Z: %b"}
!75 = !{!74}
!76 = !{!73, !70, !58, !60, !62, !63, !65, !66, !67}
!77 = !{!73}
!78 = !{!74, !70, !58, !60, !62, !63, !65, !66, !67}
!79 = !{!80}
!80 = distinct !{!80, !81, !"\01?sort@@YAXAIAM00@Z: %c"}
!81 = distinct !{!81, !"\01?sort@@YAXAIAM00@Z"}
!82 = !{!83, !84, !58, !60, !62, !63, !65, !66, !67}
!83 = distinct !{!83, !81, !"\01?sort@@YAXAIAM00@Z: %a"}
!84 = distinct !{!84, !81, !"\01?sort@@YAXAIAM00@Z: %b"}
!85 = !{!84}
!86 = !{!83, !80, !58, !60, !62, !63, !65, !66, !67}
!87 = !{!83}
!88 = !{!84, !80, !58, !60, !62, !63, !65, !66, !67}
!89 = !{!90, !90, i64 0}
!90 = !{!"int", !55, i64 0}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}

