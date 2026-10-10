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
; shader hash: 2dca91de609826ad7c72cf872f7aa1a4
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

define void @cs_fog_raymarching_heightmap_particles() {
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
  %366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.f32 %366, 3
  %368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.f32 %368, 0
  %370 = fsub fast float -0.000000e+00, %231
  %371 = fsub fast float -0.000000e+00, %232
  %372 = fsub fast float %367, %233
  %373 = fadd fast float %372, %369
  %374 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %370, float %371, float %373)  ; Dot3(ax,ay,az,bx,by,bz)
  %375 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %376 = fdiv fast float 1.000000e+00, %375
  %377 = fmul fast float %376, %374
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 2
  %380 = fsub fast float %379, %233
  %381 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %370, float %371, float %380)  ; Dot3(ax,ay,az,bx,by,bz)
  %382 = fmul fast float %376, %381
  %383 = call float @dx.op.binary.f32(i32 36, float %377, float %382)  ; FMin(a,b)
  %384 = call float @dx.op.binary.f32(i32 35, float %377, float %382)  ; FMax(a,b)
  %385 = call float @dx.op.binary.f32(i32 36, float %365, float %383)  ; FMin(a,b)
  %386 = call float @dx.op.binary.f32(i32 35, float %364, float %384)  ; FMax(a,b)
  %387 = fdiv fast float 1.000000e+00, %274
  %388 = fdiv fast float 1.000000e+00, %275
  %389 = fdiv fast float 1.000000e+00, %276
  %390 = call float @dx.op.binary.f32(i32 36, float %295, float %386)  ; FMin(a,b)
  %391 = call float @dx.op.binary.f32(i32 35, float %272, float %385)  ; FMax(a,b)
  %392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %393 = extractvalue %dx.types.CBufRet.f32 %392, 0
  %394 = fmul fast float %220, 2.000000e+00
  %395 = fadd fast float %394, -1.000000e+00
  %396 = fmul fast float %393, %395
  %397 = fadd fast float %396, %391
  %398 = fcmp fast olt float %397, %390
  %399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.f32 %399, 2
  %401 = fcmp fast olt float %400, 1.000000e+00
  %402 = and i1 %398, %401
  br i1 %402, label %403, label %1035

; <label>:403                                     ; preds = %362
  %404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.i32 %404, 1
  %406 = add i32 %405, -1
  %407 = fmul fast float %397, %276
  %408 = fadd fast float %407, %233
  %409 = fmul fast float %397, %275
  %410 = fadd fast float %409, %232
  %411 = fmul fast float %397, %274
  %412 = fadd fast float %411, %231
  br label %413

; <label>:413                                     ; preds = %1013, %403
  %414 = phi float [ %710, %1013 ], [ undef, %403 ]
  %415 = phi float [ %711, %1013 ], [ undef, %403 ]
  %416 = phi float [ %712, %1013 ], [ undef, %403 ]
  %417 = phi float [ %713, %1013 ], [ undef, %403 ]
  %418 = phi float [ %1015, %1013 ], [ 0.000000e+00, %403 ]
  %419 = phi float [ %1016, %1013 ], [ 1.000000e+00, %403 ]
  %420 = phi float [ %1026, %1013 ], [ %412, %403 ]
  %421 = phi float [ %1027, %1013 ], [ %410, %403 ]
  %422 = phi float [ %1028, %1013 ], [ %408, %403 ]
  %423 = phi float [ %1014, %1013 ], [ %397, %403 ]
  %424 = phi i32 [ %435, %1013 ], [ 0, %403 ]
  %425 = phi i32 [ %715, %1013 ], [ 10, %403 ]
  %426 = phi i32 [ %607, %1013 ], [ %406, %403 ]
  %427 = phi float [ %1017, %1013 ], [ 0.000000e+00, %403 ]
  %428 = phi float [ %1018, %1013 ], [ 0.000000e+00, %403 ]
  %429 = phi float [ %1019, %1013 ], [ 0.000000e+00, %403 ]
  %430 = phi float [ %1020, %1013 ], [ 0.000000e+00, %403 ]
  %431 = phi float [ %1021, %1013 ], [ 0.000000e+00, %403 ]
  %432 = phi i32 [ %1022, %1013 ], [ 0, %403 ]
  %433 = fsub fast float -0.000000e+00, %421
  %434 = fsub fast float -0.000000e+00, %420
  %435 = add i32 %424, 1
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 0
  %438 = icmp eq i32 %363, 0
  br i1 %438, label %604, label %439, !dx.controlflow.hints !34

; <label>:439                                     ; preds = %413
  %440 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.i32 %440, 1
  %442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.f32 %442, 1
  %444 = fcmp fast ogt float %443, %423
  br i1 %444, label %445, label %447, !dx.controlflow.hints !35

; <label>:445                                     ; preds = %439
  %446 = fsub fast float %443, %423
  br label %594

; <label>:447                                     ; preds = %439
  %448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.i32 %448, 3
  %450 = icmp eq i32 %449, 0
  %451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.f32 %451, 2
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 2
  %455 = fsub fast float %452, %422
  %456 = fadd fast float %455, %454
  %457 = fsub fast float 0xC7EFFFFFE0000000, %422
  br i1 %450, label %465, label %458, !dx.controlflow.hints !31

; <label>:458                                     ; preds = %447
  %459 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %434, float %433, float %456)  ; Dot3(ax,ay,az,bx,by,bz)
  %460 = fmul fast float %376, %459
  %461 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %434, float %433, float %457)  ; Dot3(ax,ay,az,bx,by,bz)
  %462 = fmul fast float %376, %461
  %463 = call float @dx.op.binary.f32(i32 36, float %460, float %462)  ; FMin(a,b)
  %464 = call float @dx.op.binary.f32(i32 35, float %460, float %462)  ; FMax(a,b)
  br label %495

; <label>:465                                     ; preds = %447
  %466 = extractvalue %dx.types.CBufRet.f32 %451, 0
  %467 = extractvalue %dx.types.CBufRet.f32 %451, 1
  %468 = extractvalue %dx.types.CBufRet.f32 %453, 0
  %469 = extractvalue %dx.types.CBufRet.f32 %453, 1
  %470 = fsub fast float %466, %420
  %471 = fmul fast float %387, %470
  %472 = fadd fast float %470, %468
  %473 = fmul fast float %472, %387
  %474 = call float @dx.op.binary.f32(i32 36, float %471, float %473)  ; FMin(a,b)
  %475 = call float @dx.op.binary.f32(i32 35, float %471, float %473)  ; FMax(a,b)
  %476 = fsub fast float %467, %421
  %477 = fmul fast float %388, %476
  %478 = fadd fast float %476, %469
  %479 = fmul fast float %478, %388
  %480 = call float @dx.op.binary.f32(i32 36, float %477, float %479)  ; FMin(a,b)
  %481 = call float @dx.op.binary.f32(i32 35, float %474, float %480)  ; FMax(a,b)
  %482 = call float @dx.op.binary.f32(i32 35, float %477, float %479)  ; FMax(a,b)
  %483 = call float @dx.op.binary.f32(i32 36, float %475, float %482)  ; FMin(a,b)
  %484 = fmul fast float %389, %457
  %485 = fmul fast float %389, %456
  %486 = call float @dx.op.binary.f32(i32 36, float %484, float %485)  ; FMin(a,b)
  %487 = call float @dx.op.binary.f32(i32 35, float %481, float %486)  ; FMax(a,b)
  %488 = call float @dx.op.binary.f32(i32 35, float %484, float %485)  ; FMax(a,b)
  %489 = call float @dx.op.binary.f32(i32 36, float %483, float %488)  ; FMin(a,b)
  %490 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %487)  ; FMax(a,b)
  %491 = fcmp fast ult float %489, %490
  br i1 %491, label %495, label %492, !dx.controlflow.hints !32

; <label>:492                                     ; preds = %465
  %493 = call float @dx.op.binary.f32(i32 36, float %487, float %489)  ; FMin(a,b)
  %494 = call float @dx.op.binary.f32(i32 35, float %487, float %489)  ; FMax(a,b)
  br label %495

; <label>:495                                     ; preds = %492, %465, %458
  %496 = phi float [ %463, %458 ], [ %493, %492 ], [ 0.000000e+00, %465 ]
  %497 = phi float [ %464, %458 ], [ %494, %492 ], [ 0.000000e+00, %465 ]
  %498 = fcmp fast ogt float %496, 0.000000e+00
  br i1 %498, label %594, label %499, !dx.controlflow.hints !36

; <label>:499                                     ; preds = %495
  %500 = fcmp fast ugt float %497, 0.000000e+00
  br i1 %500, label %501, label %594, !dx.controlflow.hints !37

; <label>:501                                     ; preds = %499
  %502 = icmp sgt i32 %426, 0
  br i1 %502, label %503, label %588

; <label>:503                                     ; preds = %501
  br label %504

; <label>:504                                     ; preds = %584, %503
  %505 = phi i32 [ %585, %584 ], [ %426, %503 ]
  %506 = sitofp i32 %505 to float
  %507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %508 = extractvalue %dx.types.CBufRet.f32 %507, 0
  %509 = extractvalue %dx.types.CBufRet.f32 %507, 1
  %510 = fsub fast float %420, %508
  %511 = fsub fast float %421, %509
  %512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %513 = extractvalue %dx.types.CBufRet.f32 %512, 0
  %514 = extractvalue %dx.types.CBufRet.f32 %512, 1
  %515 = fmul fast float %510, %513
  %516 = fmul fast float %511, %514
  %517 = fsub fast float 1.000000e+00, %516
  %518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %519 = extractvalue %dx.types.CBufRet.i32 %518, 3
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %527, label %521, !dx.controlflow.hints !38

; <label>:521                                     ; preds = %504
  %522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %515, float %517, float undef, float undef, i32 0, i32 0, i32 undef, float %506)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %523 = extractvalue %dx.types.ResRet.f32 %522, 0
  %524 = extractvalue %dx.types.ResRet.f32 %522, 1
  %525 = extractvalue %dx.types.ResRet.f32 %522, 2
  %526 = extractvalue %dx.types.ResRet.f32 %522, 3
  br label %533

; <label>:527                                     ; preds = %504
  %528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %515, float %517, float undef, float undef, i32 0, i32 0, i32 undef, float %506)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %529 = extractvalue %dx.types.ResRet.f32 %528, 0
  %530 = extractvalue %dx.types.ResRet.f32 %528, 1
  %531 = extractvalue %dx.types.ResRet.f32 %528, 2
  %532 = extractvalue %dx.types.ResRet.f32 %528, 3
  br label %533

; <label>:533                                     ; preds = %527, %521
  %534 = phi float [ %523, %521 ], [ %529, %527 ]
  %535 = phi float [ %524, %521 ], [ %530, %527 ]
  %536 = phi float [ %525, %521 ], [ %531, %527 ]
  %537 = phi float [ %526, %521 ], [ %532, %527 ]
  %538 = extractvalue %dx.types.CBufRet.f32 %512, 3
  %539 = fmul fast float %538, %534
  %540 = extractvalue %dx.types.CBufRet.f32 %507, 2
  %541 = fadd fast float %539, %540
  %542 = fmul fast float %538, %535
  %543 = fadd fast float %542, %540
  %544 = fmul fast float %538, %536
  %545 = fadd fast float %544, %540
  %546 = and i32 %505, 31
  %547 = shl i32 1, %546
  %548 = uitofp i32 %547 to float
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 3
  %551 = fdiv fast float 1.000000e+00, %550
  %552 = fmul fast float %551, %548
  %553 = fmul fast float %552, %276
  %554 = fadd fast float %553, %422
  %555 = fcmp fast oeq float %537, 0.000000e+00
  %556 = fcmp fast ogt float %422, %543
  %557 = fcmp fast ogt float %554, %543
  %558 = and i1 %556, %557
  %559 = or i1 %555, %558
  br i1 %559, label %560, label %564, !dx.controlflow.hints !39

; <label>:560                                     ; preds = %533
  %561 = add nsw i32 %505, 1
  %562 = add nsw i32 %441, -1
  %563 = call i32 @dx.op.binary.i32(i32 38, i32 %561, i32 %562)  ; IMin(a,b)
  br label %594

; <label>:564                                     ; preds = %533
  %565 = fcmp fast olt float %422, %545
  %566 = fcmp fast olt float %554, %545
  %567 = and i1 %565, %566
  br i1 %567, label %568, label %572, !dx.controlflow.hints !40

; <label>:568                                     ; preds = %564
  %569 = add nsw i32 %505, 1
  %570 = add nsw i32 %441, -1
  %571 = call i32 @dx.op.binary.i32(i32 38, i32 %569, i32 %570)  ; IMin(a,b)
  br label %594

; <label>:572                                     ; preds = %564
  %573 = fcmp fast olt float %422, %541
  %574 = fcmp fast olt float %554, %541
  %575 = and i1 %573, %574
  br i1 %575, label %576, label %584, !dx.controlflow.hints !41

; <label>:576                                     ; preds = %572
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 3
  %579 = extractvalue %dx.types.CBufRet.f32 %512, 2
  %580 = fcmp fast une float %578, %579
  br i1 %580, label %581, label %588, !dx.controlflow.hints !42

; <label>:581                                     ; preds = %576
  %582 = fsub fast float %422, %545
  %583 = call float @dx.op.binary.f32(i32 36, float %552, float %582)  ; FMin(a,b)
  br label %588

; <label>:584                                     ; preds = %572
  %585 = add nsw i32 %505, -1
  %586 = icmp sgt i32 %505, 1
  br i1 %586, label %504, label %587

; <label>:587                                     ; preds = %584
  br label %588

; <label>:588                                     ; preds = %587, %581, %576, %501
  %589 = phi float [ %583, %581 ], [ %552, %576 ], [ 0.000000e+00, %501 ], [ 0.000000e+00, %587 ]
  %590 = phi i32 [ %505, %581 ], [ %505, %576 ], [ %426, %501 ], [ %585, %587 ]
  %591 = add nsw i32 %590, 1
  %592 = add nsw i32 %441, -1
  %593 = call i32 @dx.op.binary.i32(i32 38, i32 %591, i32 %592)  ; IMin(a,b)
  br label %594

; <label>:594                                     ; preds = %588, %568, %560, %499, %495, %445
  %595 = phi float [ %446, %445 ], [ %552, %560 ], [ %552, %568 ], [ %589, %588 ], [ 0x47EFFFFFE0000000, %499 ], [ %496, %495 ]
  %596 = phi i32 [ %363, %445 ], [ %363, %560 ], [ %363, %568 ], [ %363, %588 ], [ 0, %499 ], [ %363, %495 ]
  %597 = phi i32 [ %426, %445 ], [ %563, %560 ], [ %571, %568 ], [ %593, %588 ], [ %426, %499 ], [ %426, %495 ]
  %598 = icmp ne i32 %596, 0
  %599 = zext i1 %598 to i32
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 2
  %602 = call float @dx.op.binary.f32(i32 35, float %595, float %601)  ; FMax(a,b)
  %603 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %602)  ; FMin(a,b)
  br label %604

; <label>:604                                     ; preds = %594, %413
  %605 = phi i32 [ %599, %594 ], [ 0, %413 ]
  %606 = phi float [ %603, %594 ], [ 0x47EFFFFFE0000000, %413 ]
  %607 = phi i32 [ %597, %594 ], [ %426, %413 ]
  %608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %609 = extractvalue %dx.types.CBufRet.f32 %608, 0
  %610 = extractvalue %dx.types.CBufRet.f32 %608, 1
  %611 = fsub fast float %420, %609
  %612 = fsub fast float %421, %610
  %613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %614 = extractvalue %dx.types.CBufRet.f32 %613, 2
  %615 = extractvalue %dx.types.CBufRet.f32 %613, 3
  %616 = fmul fast float %611, %614
  %617 = fmul fast float %612, %615
  %618 = call float @dx.op.binary.f32(i32 36, float %616, float %617)  ; FMin(a,b)
  %619 = fcmp fast olt float %618, 0.000000e+00
  %620 = call float @dx.op.binary.f32(i32 35, float %616, float %617)  ; FMax(a,b)
  %621 = fcmp fast ogt float %620, 1.000000e+00
  %622 = or i1 %619, %621
  %623 = extractvalue %dx.types.CBufRet.f32 %608, 2
  %624 = fcmp fast olt float %422, %623
  %625 = or i1 %622, %624
  %626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %627 = extractvalue %dx.types.CBufRet.f32 %626, 3
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 0
  %630 = fadd fast float %629, %627
  %631 = fcmp fast ogt float %422, %630
  %632 = or i1 %625, %631
  br i1 %632, label %633, label %662, !dx.controlflow.hints !43

; <label>:633                                     ; preds = %604
  %634 = extractvalue %dx.types.CBufRet.f32 %613, 0
  %635 = extractvalue %dx.types.CBufRet.f32 %613, 1
  %636 = fsub fast float %609, %420
  %637 = fmul fast float %636, %387
  %638 = fadd fast float %636, %634
  %639 = fmul fast float %638, %387
  %640 = call float @dx.op.binary.f32(i32 36, float %637, float %639)  ; FMin(a,b)
  %641 = call float @dx.op.binary.f32(i32 35, float %637, float %639)  ; FMax(a,b)
  %642 = fsub fast float %610, %421
  %643 = fmul fast float %642, %388
  %644 = fadd fast float %642, %635
  %645 = fmul fast float %644, %388
  %646 = call float @dx.op.binary.f32(i32 36, float %643, float %645)  ; FMin(a,b)
  %647 = call float @dx.op.binary.f32(i32 35, float %640, float %646)  ; FMax(a,b)
  %648 = call float @dx.op.binary.f32(i32 35, float %643, float %645)  ; FMax(a,b)
  %649 = call float @dx.op.binary.f32(i32 36, float %641, float %648)  ; FMin(a,b)
  %650 = fsub fast float %623, %422
  %651 = fmul fast float %650, %389
  %652 = fsub fast float %627, %422
  %653 = fadd fast float %652, %629
  %654 = fmul fast float %653, %389
  %655 = call float @dx.op.binary.f32(i32 36, float %651, float %654)  ; FMin(a,b)
  %656 = call float @dx.op.binary.f32(i32 35, float %647, float %655)  ; FMax(a,b)
  %657 = call float @dx.op.binary.f32(i32 35, float %651, float %654)  ; FMax(a,b)
  %658 = call float @dx.op.binary.f32(i32 36, float %649, float %657)  ; FMin(a,b)
  %659 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %656)  ; FMax(a,b)
  %660 = fcmp fast oge float %658, %659
  %661 = select i1 %660, float %656, float 1.000000e+07
  br label %708

; <label>:662                                     ; preds = %604
  %663 = fsub fast float 1.000000e+00, %617
  %664 = icmp eq i32 %425, 0
  br i1 %664, label %693, label %665

; <label>:665                                     ; preds = %662
  br label %666

; <label>:666                                     ; preds = %689, %665
  %667 = phi i32 [ %690, %689 ], [ %425, %665 ]
  %668 = uitofp i32 %667 to float
  %669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %616, float %663, float undef, float undef, i32 0, i32 0, i32 undef, float %668)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = extractvalue %dx.types.ResRet.f32 %669, 1
  %672 = extractvalue %dx.types.ResRet.f32 %669, 2
  %673 = fcmp fast oeq float %670, 0.000000e+00
  %674 = fcmp ule float %422, %672
  %675 = fcmp uge float %422, %671
  %676 = or i1 %675, %674
  %677 = or i1 %673, %676
  br i1 %677, label %678, label %689, !dx.controlflow.hints !44

; <label>:678                                     ; preds = %666
  %679 = extractvalue %dx.types.ResRet.f32 %669, 3
  %680 = extractvalue %dx.types.CBufRet.f32 %613, 0
  %681 = and i32 %667, 31
  %682 = lshr i32 1024, %681
  %683 = uitofp i32 %682 to float
  %684 = fdiv fast float %680, %683
  %685 = add i32 %667, 1
  %686 = uitofp i32 %685 to float
  %687 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %686)  ; FMin(a,b)
  %688 = fptosi float %687 to i32
  br label %708

; <label>:689                                     ; preds = %666
  %690 = add i32 %667, -1
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %692, label %666, !llvm.loop !45

; <label>:692                                     ; preds = %689
  br label %693

; <label>:693                                     ; preds = %692, %662
  %694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %12, float %616, float %663, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %695 = extractvalue %dx.types.ResRet.f32 %694, 0
  %696 = extractvalue %dx.types.ResRet.f32 %694, 1
  %697 = extractvalue %dx.types.ResRet.f32 %694, 2
  %698 = extractvalue %dx.types.ResRet.f32 %694, 3
  %699 = extractvalue %dx.types.CBufRet.f32 %613, 0
  %700 = fmul fast float %699, 9.765625e-04
  %701 = fcmp fast oeq float %695, 0.000000e+00
  %702 = fcmp ule float %422, %697
  %703 = fcmp uge float %422, %696
  %704 = or i1 %703, %702
  %705 = or i1 %701, %704
  %706 = zext i1 %705 to i32
  %707 = xor i32 %706, 1
  br label %708

; <label>:708                                     ; preds = %693, %678, %633
  %709 = phi float [ %661, %633 ], [ %684, %678 ], [ %700, %693 ]
  %710 = phi float [ %414, %633 ], [ %670, %678 ], [ %695, %693 ]
  %711 = phi float [ %415, %633 ], [ %671, %678 ], [ %696, %693 ]
  %712 = phi float [ %416, %633 ], [ %672, %678 ], [ %697, %693 ]
  %713 = phi float [ %417, %633 ], [ %679, %678 ], [ %698, %693 ]
  %714 = phi i32 [ 0, %633 ], [ 0, %678 ], [ %707, %693 ]
  %715 = phi i32 [ 10, %633 ], [ %688, %678 ], [ 1, %693 ]
  %716 = icmp eq i32 %714, 0
  %717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %718 = extractvalue %dx.types.CBufRet.f32 %717, 2
  %719 = call float @dx.op.binary.f32(i32 35, float %709, float %718)  ; FMax(a,b)
  %720 = call float @dx.op.binary.f32(i32 36, float %606, float %719)  ; FMin(a,b)
  %721 = extractvalue %dx.types.CBufRet.f32 %436, 2
  %722 = fmul fast float %721, %423
  %723 = call float @dx.op.unary.f32(i32 23, float %722)  ; Log(value)
  %724 = fmul fast float %723, 0x3FE62E4300000000
  %725 = call float @dx.op.binary.f32(i32 35, float %724, float 1.000000e+00)  ; FMax(a,b)
  %726 = fmul fast float %725, 0x47EFFFFFE0000000
  %727 = call float @dx.op.binary.f32(i32 36, float %726, float %720)  ; FMin(a,b)
  %728 = call float @dx.op.binary.f32(i32 35, float %727, float %437)  ; FMax(a,b)
  %729 = fsub fast float %390, %423
  %730 = fadd fast float %729, 0x3F1A36E2E0000000
  %731 = call float @dx.op.binary.f32(i32 36, float %730, float %728)  ; FMin(a,b)
  %732 = icmp eq i32 %605, 0
  br i1 %732, label %829, label %733, !dx.controlflow.hints !47

; <label>:733                                     ; preds = %708
  %734 = fcmp fast olt float %730, %728
  %735 = fmul fast float %276, %219
  %736 = fmul fast float %735, %731
  %737 = fadd fast float %736, %422
  %738 = fmul fast float %276, %220
  %739 = fmul fast float %738, %731
  %740 = fadd fast float %739, %422
  %741 = fmul fast float %276, %221
  %742 = fmul fast float %741, %731
  %743 = fadd fast float %742, %422
  br i1 %734, label %744, label %749, !dx.controlflow.hints !48

; <label>:744                                     ; preds = %733
  %745 = fmul fast float %731, %274
  %746 = fmul fast float %731, %275
  %747 = fadd fast float %745, %420
  %748 = fadd fast float %746, %421
  br label %749

; <label>:749                                     ; preds = %744, %733
  %750 = phi float [ %747, %744 ], [ %420, %733 ]
  %751 = phi float [ %748, %744 ], [ %421, %733 ]
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 0
  %754 = extractvalue %dx.types.CBufRet.f32 %752, 1
  %755 = fsub fast float %750, %753
  %756 = fsub fast float %751, %754
  %757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %758 = extractvalue %dx.types.CBufRet.f32 %757, 0
  %759 = extractvalue %dx.types.CBufRet.f32 %757, 1
  %760 = fmul fast float %755, %758
  %761 = fmul fast float %756, %759
  %762 = fsub fast float 1.000000e+00, %761
  %763 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.i32 %763, 3
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %772, label %766, !dx.controlflow.hints !38

; <label>:766                                     ; preds = %749
  %767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %760, float %762, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %768 = extractvalue %dx.types.ResRet.f32 %767, 0
  %769 = extractvalue %dx.types.ResRet.f32 %767, 1
  %770 = extractvalue %dx.types.ResRet.f32 %767, 2
  %771 = extractvalue %dx.types.ResRet.f32 %767, 3
  br label %778

; <label>:772                                     ; preds = %749
  %773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %760, float %762, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %774 = extractvalue %dx.types.ResRet.f32 %773, 0
  %775 = extractvalue %dx.types.ResRet.f32 %773, 1
  %776 = extractvalue %dx.types.ResRet.f32 %773, 2
  %777 = extractvalue %dx.types.ResRet.f32 %773, 3
  br label %778

; <label>:778                                     ; preds = %772, %766
  %779 = phi float [ %768, %766 ], [ %774, %772 ]
  %780 = phi float [ %769, %766 ], [ %775, %772 ]
  %781 = phi float [ %770, %766 ], [ %776, %772 ]
  %782 = phi float [ %771, %766 ], [ %777, %772 ]
  %783 = extractvalue %dx.types.CBufRet.f32 %757, 3
  %784 = fmul fast float %783, %780
  %785 = fmul fast float %784, %779
  %786 = fsub fast float %784, %785
  %787 = fcmp fast ole float %786, 0.000000e+00
  %788 = extractvalue %dx.types.CBufRet.f32 %752, 2
  %789 = fadd fast float %785, %788
  %790 = fmul fast float %783, %781
  %791 = fadd fast float %790, %788
  %792 = fdiv fast float 1.000000e+00, %786
  %793 = select i1 %787, float 1.000000e+06, float %792
  %794 = fsub fast float %737, %789
  %795 = fmul fast float %793, %794
  %796 = call float @dx.op.unary.f32(i32 7, float %795)  ; Saturate(value)
  %797 = extractvalue %dx.types.CBufRet.f32 %757, 2
  %798 = fmul fast float %797, %796
  %799 = fsub fast float %797, %798
  %800 = fcmp fast olt float %737, %791
  %801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %802 = extractvalue %dx.types.CBufRet.f32 %801, 3
  %803 = select i1 %800, float %802, float 1.000000e+00
  %804 = fmul fast float %799, %803
  %805 = fsub fast float %740, %789
  %806 = fmul fast float %793, %805
  %807 = call float @dx.op.unary.f32(i32 7, float %806)  ; Saturate(value)
  %808 = fmul fast float %797, %807
  %809 = fsub fast float %797, %808
  %810 = fcmp fast olt float %740, %791
  %811 = select i1 %810, float %802, float 1.000000e+00
  %812 = fmul fast float %809, %811
  %813 = fadd fast float %812, %804
  %814 = fsub fast float %743, %789
  %815 = fmul fast float %793, %814
  %816 = call float @dx.op.unary.f32(i32 7, float %815)  ; Saturate(value)
  %817 = fmul fast float %797, %816
  %818 = fsub fast float %797, %817
  %819 = fcmp fast olt float %743, %791
  %820 = select i1 %819, float %802, float 1.000000e+00
  %821 = fmul fast float %818, %820
  %822 = fadd fast float %813, %821
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 2
  %825 = fmul fast float %731, 0x3FD5555560000000
  %826 = fmul fast float %825, %782
  %827 = fmul fast float %826, %824
  %828 = fmul fast float %827, %822
  br label %829

; <label>:829                                     ; preds = %778, %708
  %830 = phi float [ %828, %778 ], [ 0.000000e+00, %708 ]
  br i1 %716, label %956, label %831, !dx.controlflow.hints !49

; <label>:831                                     ; preds = %829
  %832 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.i32 %832, 0
  %834 = icmp ne i32 %833, 0
  %835 = zext i1 %834 to i32
  %836 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %837 = extractvalue %dx.types.CBufRet.i32 %836, 0
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %872, label %839

; <label>:839                                     ; preds = %831
  br label %840

; <label>:840                                     ; preds = %867, %839
  %841 = phi i32 [ %868, %867 ], [ 0, %839 ]
  %842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %841, i32 0)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.f32 %842, 0
  %844 = extractvalue %dx.types.ResRet.f32 %842, 1
  %845 = extractvalue %dx.types.ResRet.f32 %842, 2
  %846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %841, i32 16)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.f32 %846, 0
  %848 = extractvalue %dx.types.ResRet.f32 %846, 1
  %849 = extractvalue %dx.types.ResRet.f32 %846, 2
  %850 = fsub fast float %843, %847
  %851 = fsub fast float %844, %848
  %852 = fsub fast float %845, %849
  %853 = fadd fast float %847, %843
  %854 = fadd fast float %848, %844
  %855 = fadd fast float %849, %845
  %856 = fcmp fast olt float %420, %850
  %857 = fcmp fast olt float %421, %851
  %858 = fcmp fast olt float %422, %852
  %859 = or i1 %856, %857
  %860 = or i1 %858, %859
  %861 = fcmp fast ogt float %420, %853
  %862 = fcmp fast ogt float %421, %854
  %863 = fcmp fast ogt float %422, %855
  %864 = or i1 %861, %862
  %865 = or i1 %863, %864
  %866 = or i1 %860, %865
  br i1 %866, label %867, label %870, !dx.controlflow.hints !50

; <label>:867                                     ; preds = %840
  %868 = add nuw i32 %841, 1
  %869 = icmp ult i32 %868, %837
  br i1 %869, label %840, label %870

; <label>:870                                     ; preds = %867, %840
  %871 = phi i32 [ 255, %867 ], [ %841, %840 ]
  br label %872

; <label>:872                                     ; preds = %870, %831
  %873 = phi i32 [ 255, %831 ], [ %871, %870 ]
  %874 = icmp eq i32 %873, 255
  br i1 %874, label %880, label %875, !dx.controlflow.hints !51

; <label>:875                                     ; preds = %872
  %876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %873, i32 156)  ; BufferLoad(srv,index,wot)
  %877 = extractvalue %dx.types.ResRet.i32 %876, 0
  %878 = icmp ne i32 %877, 0
  %879 = zext i1 %878 to i32
  br label %880

; <label>:880                                     ; preds = %875, %872
  %881 = phi i32 [ %879, %875 ], [ %835, %872 ]
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %883, label %952, !dx.controlflow.hints !52

; <label>:883                                     ; preds = %880
  %884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.f32 %884, 3
  %886 = extractvalue %dx.types.CBufRet.f32 %626, 0
  %887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %888 = extractvalue %dx.types.CBufRet.f32 %887, 2
  %889 = extractvalue %dx.types.CBufRet.f32 %887, 3
  br i1 %874, label %900, label %890, !dx.controlflow.hints !53

; <label>:890                                     ; preds = %883
  %891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %873, i32 60)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.f32 %891, 0
  %893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %873, i32 64)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.f32 %893, 0
  %895 = extractvalue %dx.types.ResRet.f32 %893, 1
  %896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %873, i32 72)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.f32 %896, 0
  %898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %873, i32 96)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.f32 %898, 0
  br label %900

; <label>:900                                     ; preds = %890, %883
  %901 = phi float [ %892, %890 ], [ %629, %883 ]
  %902 = phi float [ %897, %890 ], [ %627, %883 ]
  %903 = phi float [ %899, %890 ], [ %886, %883 ]
  %904 = phi float [ %894, %890 ], [ %888, %883 ]
  %905 = phi float [ %895, %890 ], [ %889, %883 ]
  %906 = call float @dx.op.binary.f32(i32 35, float %710, float 0.000000e+00)  ; FMax(a,b)
  %907 = call float @dx.op.binary.f32(i32 36, float %906, float 1.000000e+00)  ; FMin(a,b)
  %908 = call float @dx.op.unary.f32(i32 24, float %907)  ; Sqrt(value)
  %909 = call float @dx.op.binary.f32(i32 35, float %713, float 0x3F847AE140000000)  ; FMax(a,b)
  %910 = fsub fast float %711, %422
  %911 = fsub fast float %422, %712
  %912 = call float @dx.op.binary.f32(i32 36, float %911, float %910)  ; FMin(a,b)
  %913 = fdiv fast float %912, %909
  %914 = call float @dx.op.unary.f32(i32 7, float %913)  ; Saturate(value)
  %915 = fsub fast float %422, %902
  %916 = fdiv fast float %915, %901
  %917 = call float @dx.op.unary.f32(i32 7, float %916)  ; Saturate(value)
  %918 = fsub fast float 1.000000e+00, %917
  %919 = fmul float %914, %918
  %920 = fmul float %919, %919
  %921 = fmul fast float %908, %885
  %922 = fmul fast float %921, %920
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 2
  %925 = extractvalue %dx.types.CBufRet.f32 %923, 1
  %926 = fsub fast float %922, %925
  %927 = fsub fast float %924, %925
  %928 = fdiv fast float %926, %927
  %929 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %930 = fmul fast float %929, %903
  %931 = fcmp fast ogt float %905, 0.000000e+00
  br i1 %931, label %932, label %952, !dx.controlflow.hints !54

; <label>:932                                     ; preds = %900
  %933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.f32 %933, 0
  %935 = extractvalue %dx.types.CBufRet.f32 %933, 1
  %936 = extractvalue %dx.types.CBufRet.f32 %933, 2
  %937 = fsub fast float %420, %934
  %938 = fsub fast float %421, %935
  %939 = fsub fast float %422, %936
  %940 = fmul fast float %937, %937
  %941 = fmul fast float %938, %938
  %942 = fadd fast float %940, %941
  %943 = fmul fast float %939, %939
  %944 = fadd fast float %942, %943
  %945 = call float @dx.op.unary.f32(i32 24, float %944)  ; Sqrt(value)
  %946 = fsub fast float %945, %904
  %947 = fsub fast float %905, %904
  %948 = fdiv fast float %946, %947
  %949 = call float @dx.op.unary.f32(i32 7, float %948)  ; Saturate(value)
  %950 = fmul fast float %949, %949
  %951 = fmul fast float %950, %930
  br label %952

; <label>:952                                     ; preds = %932, %900, %880
  %953 = phi float [ 0.000000e+00, %880 ], [ %951, %932 ], [ %930, %900 ]
  %954 = fmul fast float %953, %731
  %955 = fadd fast float %954, %830
  br label %956

; <label>:956                                     ; preds = %952, %829
  %957 = phi float [ %955, %952 ], [ %830, %829 ]
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 1
  %960 = fcmp fast ogt float %957, %959
  br i1 %960, label %963, label %961, !dx.controlflow.hints !55

; <label>:961                                     ; preds = %956
  %962 = fadd fast float %731, %423
  br label %1013

; <label>:963                                     ; preds = %956
  %964 = fmul fast float %957, 0xBFF7154760000000
  %965 = call float @dx.op.unary.f32(i32 21, float %964)  ; Exp(value)
  %966 = call float @dx.op.unary.f32(i32 7, float %965)  ; Saturate(value)
  %967 = fsub fast float 1.000000e+00, %966
  %968 = fdiv fast float %957, %731
  %969 = fadd fast float %731, %423
  %970 = fmul fast float %423, %423
  %971 = fmul fast float %969, %969
  %972 = fsub fast float %970, %971
  %973 = fmul fast float %972, -5.000000e-01
  %974 = fmul fast float %973, %968
  %975 = fadd fast float %974, %418
  %976 = fadd fast float %957, %427
  %977 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %978 = extractvalue %dx.types.CBufRet.i32 %977, 0
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %1006, label %980, !dx.controlflow.hints !56

; <label>:980                                     ; preds = %963
  %981 = icmp ne i32 %432, 0
  %982 = zext i1 %981 to i32
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 2
  %985 = extractvalue %dx.types.CBufRet.f32 %983, 0
  %986 = fsub fast float %969, %985
  %987 = fmul fast float %986, %984
  %988 = call float @dx.op.unary.f32(i32 7, float %987)  ; Saturate(value)
  %989 = fadd fast float %988, -5.000000e-01
  %990 = fmul fast float %989, 2.000000e+00
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 2
  %993 = fcmp fast olt float %990, %992
  br i1 %993, label %994, label %1006, !dx.controlflow.hints !57

; <label>:994                                     ; preds = %980
  %995 = fmul fast float %990, %990
  %996 = fmul fast float %967, %419
  %997 = fmul fast float %990, %996
  %998 = fmul fast float %995, %996
  %999 = fmul fast float %997, %995
  %1000 = fmul fast float %995, %995
  %1001 = fmul fast float %1000, %996
  %1002 = fadd fast float %997, %428
  %1003 = fadd fast float %998, %429
  %1004 = fadd fast float %999, %430
  %1005 = fadd fast float %1001, %431
  br label %1006

; <label>:1006                                    ; preds = %994, %980, %963
  %1007 = phi float [ %428, %963 ], [ %1002, %994 ], [ %428, %980 ]
  %1008 = phi float [ %429, %963 ], [ %1003, %994 ], [ %429, %980 ]
  %1009 = phi float [ %430, %963 ], [ %1004, %994 ], [ %430, %980 ]
  %1010 = phi float [ %431, %963 ], [ %1005, %994 ], [ %431, %980 ]
  %1011 = phi i32 [ %432, %963 ], [ 1, %994 ], [ %982, %980 ]
  %1012 = fmul fast float %966, %419
  br label %1013

; <label>:1013                                    ; preds = %1006, %961
  %1014 = phi float [ %962, %961 ], [ %969, %1006 ]
  %1015 = phi float [ %418, %961 ], [ %975, %1006 ]
  %1016 = phi float [ %419, %961 ], [ %1012, %1006 ]
  %1017 = phi float [ %427, %961 ], [ %976, %1006 ]
  %1018 = phi float [ %428, %961 ], [ %1007, %1006 ]
  %1019 = phi float [ %429, %961 ], [ %1008, %1006 ]
  %1020 = phi float [ %430, %961 ], [ %1009, %1006 ]
  %1021 = phi float [ %431, %961 ], [ %1010, %1006 ]
  %1022 = phi i32 [ %432, %961 ], [ %1011, %1006 ]
  %1023 = fmul fast float %731, %274
  %1024 = fmul fast float %731, %275
  %1025 = fmul fast float %731, %276
  %1026 = fadd fast float %1023, %420
  %1027 = fadd fast float %1024, %421
  %1028 = fadd fast float %1025, %422
  %1029 = fcmp fast olt float %1014, %390
  %1030 = extractvalue %dx.types.CBufRet.f32 %958, 2
  %1031 = fcmp fast olt float %1030, %1016
  %1032 = and i1 %1029, %1031
  br i1 %1032, label %413, label %1033

; <label>:1033                                    ; preds = %1013
  %1034 = uitofp i32 %435 to float
  br label %1035

; <label>:1035                                    ; preds = %1033, %362
  %1036 = phi float [ 0.000000e+00, %362 ], [ %1015, %1033 ]
  %1037 = phi float [ 1.000000e+00, %362 ], [ %1016, %1033 ]
  %1038 = phi float [ 0.000000e+00, %362 ], [ %1034, %1033 ]
  %1039 = phi float [ 0.000000e+00, %362 ], [ %1017, %1033 ]
  %1040 = phi float [ 0.000000e+00, %362 ], [ %1018, %1033 ]
  %1041 = phi float [ 0.000000e+00, %362 ], [ %1019, %1033 ]
  %1042 = phi float [ 0.000000e+00, %362 ], [ %1020, %1033 ]
  %1043 = phi float [ 0.000000e+00, %362 ], [ %1021, %1033 ]
  %1044 = phi i32 [ 0, %362 ], [ %1022, %1033 ]
  %1045 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.i32 %1045, 0
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1089, label %1048, !dx.controlflow.hints !58

; <label>:1048                                    ; preds = %1035
  %1049 = icmp eq i32 %1044, 0
  br i1 %1049, label %1088, label %1050, !dx.controlflow.hints !59

; <label>:1050                                    ; preds = %1048
  %1051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1052 = extractvalue %dx.types.CBufRet.i32 %1051, 2
  %1053 = icmp eq i32 %1052, 0
  br i1 %1053, label %1060, label %1054, !dx.controlflow.hints !60

; <label>:1054                                    ; preds = %1050
  %1055 = fsub fast float 1.000000e+00, %1037
  %1056 = fdiv fast float %1040, %1055
  %1057 = fdiv fast float %1041, %1055
  %1058 = fdiv fast float %1042, %1055
  %1059 = fdiv fast float %1043, %1055
  br label %1065

; <label>:1060                                    ; preds = %1050
  %1061 = fadd fast float %1040, %1037
  %1062 = fadd fast float %1041, %1037
  %1063 = fadd fast float %1042, %1037
  %1064 = fadd fast float %1043, %1037
  br label %1065

; <label>:1065                                    ; preds = %1060, %1054
  %1066 = phi float [ %1056, %1054 ], [ %1061, %1060 ]
  %1067 = phi float [ %1057, %1054 ], [ %1062, %1060 ]
  %1068 = phi float [ %1058, %1054 ], [ %1063, %1060 ]
  %1069 = phi float [ %1059, %1054 ], [ %1064, %1060 ]
  %1070 = call float @dx.op.binary.f32(i32 35, float %1066, float -1.000000e+00)  ; FMax(a,b)
  %1071 = call float @dx.op.binary.f32(i32 35, float %1067, float -1.000000e+00)  ; FMax(a,b)
  %1072 = call float @dx.op.binary.f32(i32 35, float %1068, float -1.000000e+00)  ; FMax(a,b)
  %1073 = call float @dx.op.binary.f32(i32 35, float %1069, float -1.000000e+00)  ; FMax(a,b)
  %1074 = call float @dx.op.binary.f32(i32 36, float %1070, float 1.000000e+00)  ; FMin(a,b)
  %1075 = call float @dx.op.binary.f32(i32 36, float %1071, float 1.000000e+00)  ; FMin(a,b)
  %1076 = call float @dx.op.binary.f32(i32 36, float %1072, float 1.000000e+00)  ; FMin(a,b)
  %1077 = call float @dx.op.binary.f32(i32 36, float %1073, float 1.000000e+00)  ; FMin(a,b)
  %1078 = fmul fast float %1074, 1.500000e+00
  %1079 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1076, float %1078)  ; FMad(a,b,c)
  %1080 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1075, float 0.000000e+00)  ; FMad(a,b,c)
  %1081 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1077, float %1080)  ; FMad(a,b,c)
  %1082 = fmul fast float %1074, 0x3FEBB67AE0000000
  %1083 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1076, float %1082)  ; FMad(a,b,c)
  %1084 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1075, float 0.000000e+00)  ; FMad(a,b,c)
  %1085 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1077, float %1084)  ; FMad(a,b,c)
  %1086 = fadd fast float %1079, 5.000000e-01
  %1087 = fadd fast float %1083, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %16, i32 %17, i32 0, float %1086, float %1081, float %1087, float %1085, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1089

; <label>:1088                                    ; preds = %1048
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %16, i32 %17, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1089

; <label>:1089                                    ; preds = %1088, %1065, %1035
  %1090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.f32 %1090, 0
  %1092 = extractvalue %dx.types.CBufRet.f32 %1090, 1
  %1093 = extractvalue %dx.types.CBufRet.f32 %1090, 2
  %1094 = call float @dx.op.dot3.f32(i32 55, float %274, float %275, float %276, float %1091, float %1092, float %1093)  ; Dot3(ax,ay,az,bx,by,bz)
  %1095 = fmul fast float %1094, %1036
  %1096 = fcmp fast ogt float %1039, 0.000000e+00
  %1097 = fdiv fast float 1.000000e+00, %1039
  %1098 = fmul fast float %1095, %1097
  %1099 = select i1 %1096, float %1098, float %285
  %1100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1101 = extractvalue %dx.types.CBufRet.f32 %1100, 0
  %1102 = extractvalue %dx.types.CBufRet.f32 %1100, 1
  %1103 = extractvalue %dx.types.CBufRet.f32 %1100, 2
  %1104 = fmul fast float %1101, %238
  %1105 = fmul fast float %1102, %238
  %1106 = fmul fast float %1103, %238
  %1107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1108 = extractvalue %dx.types.CBufRet.f32 %1107, 0
  %1109 = extractvalue %dx.types.CBufRet.f32 %1107, 1
  %1110 = extractvalue %dx.types.CBufRet.f32 %1107, 2
  %1111 = fmul fast float %1108, %239
  %1112 = fmul fast float %1109, %239
  %1113 = fmul fast float %1110, %239
  %1114 = fadd fast float %1111, %1104
  %1115 = fadd fast float %1112, %1105
  %1116 = fadd fast float %1113, %1106
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 0
  %1119 = extractvalue %dx.types.CBufRet.f32 %1117, 1
  %1120 = extractvalue %dx.types.CBufRet.f32 %1117, 2
  %1121 = fadd fast float %1114, %1118
  %1122 = fadd fast float %1115, %1119
  %1123 = fadd fast float %1116, %1120
  %1124 = fmul fast float %1121, %1099
  %1125 = fmul fast float %1122, %1099
  %1126 = fmul fast float %1123, %1099
  %1127 = call float @dx.op.dot3.f32(i32 55, float %1124, float %1125, float %1126, float %1124, float %1125, float %1126)  ; Dot3(ax,ay,az,bx,by,bz)
  %1128 = call float @dx.op.unary.f32(i32 25, float %1127)  ; Rsqrt(value)
  %1129 = fmul fast float %1128, %1127
  %1130 = fmul fast float %1128, %1124
  %1131 = fmul fast float %1128, %1125
  %1132 = fmul fast float %1128, %1126
  %1133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.i32 %1133, 1
  %1135 = and i32 %1134, 1
  %1136 = icmp ne i32 %1135, 0
  %1137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1138 = extractvalue %dx.types.CBufRet.f32 %1137, 2
  %1139 = fcmp fast ogt float %1138, 0.000000e+00
  %1140 = and i1 %1136, %1139
  br i1 %1140, label %1141, label %1299, !dx.controlflow.hints !61

; <label>:1141                                    ; preds = %1089
  %1142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1143 = extractvalue %dx.types.CBufRet.f32 %1142, 2
  %1144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1145 = extractvalue %dx.types.CBufRet.f32 %1144, 2
  %1146 = fsub fast float %1143, %1145
  %1147 = extractvalue %dx.types.CBufRet.i32 %1133, 0
  %1148 = call i32 @dx.op.binary.i32(i32 40, i32 %1147, i32 3)  ; UMin(a,b)
  %1149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1150 = extractvalue %dx.types.CBufRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.CBufRet.f32 %1149, 1
  %1152 = extractvalue %dx.types.CBufRet.f32 %1144, 0
  %1153 = extractvalue %dx.types.CBufRet.f32 %1144, 1
  %1154 = fsub fast float %1150, %1152
  %1155 = fsub fast float %1151, %1153
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 0
  %1158 = fcmp fast ogt float %1157, 0.000000e+00
  %1159 = fsub fast float -0.000000e+00, %1154
  %1160 = fsub fast float -0.000000e+00, %1155
  %1161 = call float @dx.op.dot2.f32(i32 54, float %1130, float %1131, float %1130, float %1131)  ; Dot2(ax,ay,bx,by)
  %1162 = call float @dx.op.dot2.f32(i32 54, float %1130, float %1131, float %1159, float %1160)  ; Dot2(ax,ay,bx,by)
  %1163 = fmul fast float %1162, 2.000000e+00
  %1164 = call float @dx.op.dot2.f32(i32 54, float %1159, float %1160, float %1159, float %1160)  ; Dot2(ax,ay,bx,by)
  %1165 = fmul fast float %1157, %1157
  %1166 = fsub fast float %1164, %1165
  %1167 = fmul fast float %1163, %1163
  %1168 = fmul fast float %1161, 4.000000e+00
  %1169 = fmul fast float %1168, %1166
  %1170 = fsub fast float %1167, %1169
  %1171 = fcmp fast ogt float %1170, 0.000000e+00
  br i1 %1171, label %1172, label %1187, !dx.controlflow.hints !62

; <label>:1172                                    ; preds = %1141
  %1173 = fcmp fast ogt float %1163, 0.000000e+00
  %1174 = call float @dx.op.unary.f32(i32 24, float %1170)  ; Sqrt(value)
  %1175 = fsub fast float -0.000000e+00, %1174
  %1176 = select i1 %1173, float %1174, float %1175
  %1177 = fadd fast float %1176, %1163
  %1178 = fmul float %1177, -5.000000e-01
  %1179 = fdiv fast float %1178, %1161
  %1180 = call float @dx.op.binary.f32(i32 35, float %1179, float 0.000000e+00)  ; FMax(a,b)
  %1181 = call float @dx.op.binary.f32(i32 36, float %1129, float %1180)  ; FMin(a,b)
  %1182 = fdiv fast float %1166, %1178
  %1183 = call float @dx.op.binary.f32(i32 35, float %1182, float 0.000000e+00)  ; FMax(a,b)
  %1184 = call float @dx.op.binary.f32(i32 36, float %1129, float %1183)  ; FMin(a,b)
  %1185 = call float @dx.op.binary.f32(i32 36, float %1181, float %1184)  ; FMin(a,b)
  %1186 = call float @dx.op.binary.f32(i32 35, float %1181, float %1184)  ; FMax(a,b)
  br label %1187

; <label>:1187                                    ; preds = %1172, %1141
  %1188 = phi float [ %1186, %1172 ], [ -1.000000e+00, %1141 ]
  %1189 = phi float [ %1185, %1172 ], [ -1.000000e+00, %1141 ]
  %1190 = phi i1 [ true, %1172 ], [ false, %1141 ]
  %1191 = and i1 %1158, %1190
  br i1 %1191, label %1192, label %1194, !dx.controlflow.hints !63

; <label>:1192                                    ; preds = %1187
  %1193 = fcmp fast oeq float %1189, %1188
  br i1 %1193, label %1299, label %1195, !dx.controlflow.hints !64

; <label>:1194                                    ; preds = %1187
  br i1 %1158, label %1299, label %1195, !dx.controlflow.hints !65

; <label>:1195                                    ; preds = %1194, %1192
  %1196 = phi float [ %1129, %1194 ], [ %1188, %1192 ]
  %1197 = phi float [ 0.000000e+00, %1194 ], [ %1189, %1192 ]
  %1198 = fcmp fast oeq float %1132, 0.000000e+00
  %1199 = fdiv fast float %1146, %1132
  %1200 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1199)  ; FMax(a,b)
  %1201 = select i1 %1198, float %1196, float %1200
  %1202 = call float @dx.op.binary.f32(i32 36, float %1196, float %1201)  ; FMin(a,b)
  %1203 = fcmp fast ogt float %1132, 0.000000e+00
  %1204 = fcmp fast olt float %1146, 0.000000e+00
  br i1 %1203, label %1205, label %1206, !dx.controlflow.hints !66

; <label>:1205                                    ; preds = %1195
  br i1 %1204, label %1299, label %1209, !dx.controlflow.hints !67

; <label>:1206                                    ; preds = %1195
  br i1 %1204, label %1207, label %1209, !dx.controlflow.hints !68

; <label>:1207                                    ; preds = %1206
  %1208 = call float @dx.op.binary.f32(i32 35, float %1197, float %1202)  ; FMax(a,b)
  br label %1209

; <label>:1209                                    ; preds = %1207, %1206, %1205
  %1210 = phi float [ %1208, %1207 ], [ %1197, %1206 ], [ %1197, %1205 ]
  %1211 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 0
  store float -1.000000e+00, float* %1211, align 4, !tbaa !69, !noalias !73
  %1212 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 1
  store float -1.000000e+00, float* %1212, align 4, !tbaa !69, !noalias !73
  %1213 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 2
  store float -1.000000e+00, float* %1213, align 4, !tbaa !69, !noalias !73
  %1214 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 0
  store float -1.000000e+00, float* %1214, align 4, !tbaa !69, !noalias !73
  %1215 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 1
  store float -1.000000e+00, float* %1215, align 4, !tbaa !69, !noalias !73
  %1216 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 2
  store float -1.000000e+00, float* %1216, align 4, !tbaa !69, !noalias !73
  %1217 = icmp sgt i32 %1148, 0
  br i1 %1217, label %1218, label %1276

; <label>:1218                                    ; preds = %1209
  br label %1219

; <label>:1219                                    ; preds = %1266, %1218
  %1220 = phi i32 [ %1267, %1266 ], [ 0, %1218 ]
  %1221 = add nuw i32 %1220, 171
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %1221)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.CBufRet.f32 %1222, 1
  %1225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1226 = extractvalue %dx.types.CBufRet.f32 %1225, 0
  %1227 = extractvalue %dx.types.CBufRet.f32 %1225, 1
  %1228 = fsub fast float %1223, %1226
  %1229 = fsub fast float %1224, %1227
  %1230 = extractvalue %dx.types.CBufRet.f32 %1222, 2
  %1231 = fsub fast float -0.000000e+00, %1228
  %1232 = fsub fast float -0.000000e+00, %1229
  %1233 = call float @dx.op.dot2.f32(i32 54, float %1130, float %1131, float %1231, float %1232)  ; Dot2(ax,ay,bx,by)
  %1234 = fmul fast float %1233, 2.000000e+00
  %1235 = call float @dx.op.dot2.f32(i32 54, float %1231, float %1232, float %1231, float %1232)  ; Dot2(ax,ay,bx,by)
  %1236 = fmul fast float %1230, %1230
  %1237 = fsub fast float %1235, %1236
  %1238 = fmul fast float %1234, %1234
  %1239 = fmul fast float %1168, %1237
  %1240 = fsub fast float %1238, %1239
  %1241 = fcmp fast ogt float %1240, 0.000000e+00
  br i1 %1241, label %1242, label %1257, !dx.controlflow.hints !62

; <label>:1242                                    ; preds = %1219
  %1243 = fcmp fast ogt float %1234, 0.000000e+00
  %1244 = call float @dx.op.unary.f32(i32 24, float %1240)  ; Sqrt(value)
  %1245 = fsub fast float -0.000000e+00, %1244
  %1246 = select i1 %1243, float %1244, float %1245
  %1247 = fadd fast float %1246, %1234
  %1248 = fmul float %1247, -5.000000e-01
  %1249 = fdiv fast float %1248, %1161
  %1250 = call float @dx.op.binary.f32(i32 35, float %1249, float 0.000000e+00)  ; FMax(a,b)
  %1251 = call float @dx.op.binary.f32(i32 36, float %1196, float %1250)  ; FMin(a,b)
  %1252 = fdiv fast float %1237, %1248
  %1253 = call float @dx.op.binary.f32(i32 35, float %1252, float 0.000000e+00)  ; FMax(a,b)
  %1254 = call float @dx.op.binary.f32(i32 36, float %1196, float %1253)  ; FMin(a,b)
  %1255 = call float @dx.op.binary.f32(i32 36, float %1251, float %1254)  ; FMin(a,b)
  %1256 = call float @dx.op.binary.f32(i32 35, float %1251, float %1254)  ; FMax(a,b)
  br label %1257

; <label>:1257                                    ; preds = %1242, %1219
  %1258 = phi float [ %1256, %1242 ], [ -1.000000e+00, %1219 ]
  %1259 = phi float [ %1255, %1242 ], [ -1.000000e+00, %1219 ]
  %1260 = phi i1 [ true, %1242 ], [ false, %1219 ]
  br i1 %1260, label %1261, label %1266, !dx.controlflow.hints !84

; <label>:1261                                    ; preds = %1257
  %1262 = call float @dx.op.binary.f32(i32 35, float %1210, float %1259)  ; FMax(a,b)
  %1263 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %1220
  store float %1262, float* %1263, align 4, !tbaa !69, !noalias !73
  %1264 = call float @dx.op.binary.f32(i32 35, float %1210, float %1258)  ; FMax(a,b)
  %1265 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %1220
  store float %1264, float* %1265, align 4, !tbaa !69, !noalias !73
  br label %1266

; <label>:1266                                    ; preds = %1261, %1257
  %1267 = add nuw nsw i32 %1220, 1
  %1268 = icmp eq i32 %1267, %1148
  br i1 %1268, label %1269, label %1219

; <label>:1269                                    ; preds = %1266
  %1270 = load float, float* %1213, align 4, !tbaa !69, !alias.scope !85, !noalias !88
  %1271 = load float, float* %1212, align 4, !tbaa !69, !alias.scope !91, !noalias !92
  %1272 = load float, float* %1211, align 4, !tbaa !69, !alias.scope !93, !noalias !94
  %1273 = load float, float* %1216, align 4, !tbaa !69, !alias.scope !95, !noalias !98
  %1274 = load float, float* %1215, align 4, !tbaa !69, !alias.scope !101, !noalias !102
  %1275 = load float, float* %1214, align 4, !tbaa !69, !alias.scope !103, !noalias !104
  br label %1276

; <label>:1276                                    ; preds = %1269, %1209
  %1277 = phi float [ -1.000000e+00, %1209 ], [ %1275, %1269 ]
  %1278 = phi float [ -1.000000e+00, %1209 ], [ %1274, %1269 ]
  %1279 = phi float [ -1.000000e+00, %1209 ], [ %1273, %1269 ]
  %1280 = phi float [ -1.000000e+00, %1209 ], [ %1272, %1269 ]
  %1281 = phi float [ -1.000000e+00, %1209 ], [ %1271, %1269 ]
  %1282 = phi float [ -1.000000e+00, %1209 ], [ %1270, %1269 ]
  %1283 = call float @dx.op.binary.f32(i32 36, float %1281, float %1282)  ; FMin(a,b)
  %1284 = call float @dx.op.binary.f32(i32 36, float %1280, float %1283)  ; FMin(a,b)
  %1285 = call float @dx.op.binary.f32(i32 35, float %1280, float %1281)  ; FMax(a,b)
  %1286 = call float @dx.op.binary.f32(i32 36, float %1285, float %1282)  ; FMin(a,b)
  %1287 = call float @dx.op.binary.f32(i32 36, float %1280, float %1281)  ; FMin(a,b)
  %1288 = call float @dx.op.binary.f32(i32 35, float %1287, float %1286)  ; FMax(a,b)
  %1289 = call float @dx.op.binary.f32(i32 35, float %1281, float %1282)  ; FMax(a,b)
  %1290 = call float @dx.op.binary.f32(i32 35, float %1280, float %1289)  ; FMax(a,b)
  store float %1284, float* %1211, align 4, !tbaa !69, !alias.scope !93, !noalias !94
  store float %1288, float* %1212, align 4, !tbaa !69, !alias.scope !91, !noalias !92
  store float %1290, float* %1213, align 4, !tbaa !69, !alias.scope !85, !noalias !88
  %1291 = call float @dx.op.binary.f32(i32 36, float %1278, float %1279)  ; FMin(a,b)
  %1292 = call float @dx.op.binary.f32(i32 36, float %1277, float %1291)  ; FMin(a,b)
  %1293 = call float @dx.op.binary.f32(i32 35, float %1277, float %1278)  ; FMax(a,b)
  %1294 = call float @dx.op.binary.f32(i32 36, float %1293, float %1279)  ; FMin(a,b)
  %1295 = call float @dx.op.binary.f32(i32 36, float %1277, float %1278)  ; FMin(a,b)
  %1296 = call float @dx.op.binary.f32(i32 35, float %1295, float %1294)  ; FMax(a,b)
  %1297 = call float @dx.op.binary.f32(i32 35, float %1278, float %1279)  ; FMax(a,b)
  %1298 = call float @dx.op.binary.f32(i32 35, float %1277, float %1297)  ; FMax(a,b)
  store float %1292, float* %1214, align 4, !tbaa !69, !alias.scope !103, !noalias !104
  store float %1296, float* %1215, align 4, !tbaa !69, !alias.scope !101, !noalias !102
  store float %1298, float* %1216, align 4, !tbaa !69, !alias.scope !95, !noalias !98
  br label %1299

; <label>:1299                                    ; preds = %1276, %1205, %1194, %1192, %1089
  %1300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1300, 2
  %1302 = fmul fast float %1301, %1099
  %1303 = call float @dx.op.unary.f32(i32 7, float %1302)  ; Saturate(value)
  %1304 = fptoui float %1038 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1305 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %18
  store i32 %1304, i32 addrspace(3)* %1305, align 4, !tbaa !105
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1306 = and i32 %18, 63
  %1307 = icmp ult i32 %1306, 32
  br i1 %1307, label %1308, label %1314, !dx.controlflow.hints !107

; <label>:1308                                    ; preds = %1299
  %1309 = add i32 %18, 32
  %1310 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1309
  %1311 = load i32, i32 addrspace(3)* %1310, align 4, !tbaa !105
  %1312 = load i32, i32 addrspace(3)* %1305, align 4, !tbaa !105
  %1313 = call i32 @dx.op.binary.i32(i32 40, i32 %1312, i32 %1311)  ; UMin(a,b)
  store i32 %1313, i32 addrspace(3)* %1305, align 4, !tbaa !105
  br label %1314

; <label>:1314                                    ; preds = %1308, %1299
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1315 = icmp ult i32 %1306, 16
  br i1 %1315, label %1316, label %1322, !dx.controlflow.hints !108

; <label>:1316                                    ; preds = %1314
  %1317 = add i32 %18, 16
  %1318 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1317
  %1319 = load i32, i32 addrspace(3)* %1318, align 4, !tbaa !105
  %1320 = load i32, i32 addrspace(3)* %1305, align 4, !tbaa !105
  %1321 = call i32 @dx.op.binary.i32(i32 40, i32 %1320, i32 %1319)  ; UMin(a,b)
  store i32 %1321, i32 addrspace(3)* %1305, align 4, !tbaa !105
  br label %1322

; <label>:1322                                    ; preds = %1316, %1314
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1323 = icmp ult i32 %1306, 8
  br i1 %1323, label %1324, label %1330, !dx.controlflow.hints !109

; <label>:1324                                    ; preds = %1322
  %1325 = add i32 %18, 8
  %1326 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1325
  %1327 = load i32, i32 addrspace(3)* %1326, align 4, !tbaa !105
  %1328 = load i32, i32 addrspace(3)* %1305, align 4, !tbaa !105
  %1329 = call i32 @dx.op.binary.i32(i32 40, i32 %1328, i32 %1327)  ; UMin(a,b)
  store i32 %1329, i32 addrspace(3)* %1305, align 4, !tbaa !105
  br label %1330

; <label>:1330                                    ; preds = %1324, %1322
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1331 = icmp ult i32 %1306, 4
  br i1 %1331, label %1332, label %1338, !dx.controlflow.hints !110

; <label>:1332                                    ; preds = %1330
  %1333 = add i32 %18, 4
  %1334 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1333
  %1335 = load i32, i32 addrspace(3)* %1334, align 4, !tbaa !105
  %1336 = load i32, i32 addrspace(3)* %1305, align 4, !tbaa !105
  %1337 = call i32 @dx.op.binary.i32(i32 40, i32 %1336, i32 %1335)  ; UMin(a,b)
  store i32 %1337, i32 addrspace(3)* %1305, align 4, !tbaa !105
  br label %1338

; <label>:1338                                    ; preds = %1332, %1330
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1339 = icmp ult i32 %1306, 2
  br i1 %1339, label %1340, label %1346, !dx.controlflow.hints !111

; <label>:1340                                    ; preds = %1338
  %1341 = add i32 %18, 2
  %1342 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1341
  %1343 = load i32, i32 addrspace(3)* %1342, align 4, !tbaa !105
  %1344 = load i32, i32 addrspace(3)* %1305, align 4, !tbaa !105
  %1345 = call i32 @dx.op.binary.i32(i32 40, i32 %1344, i32 %1343)  ; UMin(a,b)
  store i32 %1345, i32 addrspace(3)* %1305, align 4, !tbaa !105
  br label %1346

; <label>:1346                                    ; preds = %1340, %1338
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1347 = icmp eq i32 %1306, 0
  br i1 %1347, label %1348, label %1354, !dx.controlflow.hints !112

; <label>:1348                                    ; preds = %1346
  %1349 = add i32 %18, 1
  %1350 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1349
  %1351 = load i32, i32 addrspace(3)* %1350, align 4, !tbaa !105
  %1352 = load i32, i32 addrspace(3)* %1305, align 4, !tbaa !105
  %1353 = call i32 @dx.op.binary.i32(i32 40, i32 %1352, i32 %1351)  ; UMin(a,b)
  store i32 %1353, i32 addrspace(3)* %1305, align 4, !tbaa !105
  br label %1354

; <label>:1354                                    ; preds = %1348, %1346
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1355 = and i32 %18, -64
  %1356 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1355
  %1357 = load i32, i32 addrspace(3)* %1356, align 4, !tbaa !105
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1304, i32 addrspace(3)* %1305, align 4, !tbaa !105
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1307, label %1358, label %1364, !dx.controlflow.hints !113

; <label>:1358                                    ; preds = %1354
  %1359 = add i32 %18, 32
  %1360 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1359
  %1361 = load i32, i32 addrspace(3)* %1360, align 4, !tbaa !105
  %1362 = load i32, i32 addrspace(3)* %1305, align 4, !tbaa !105
  %1363 = call i32 @dx.op.binary.i32(i32 39, i32 %1362, i32 %1361)  ; UMax(a,b)
  store i32 %1363, i32 addrspace(3)* %1305, align 4, !tbaa !105
  br label %1364

; <label>:1364                                    ; preds = %1358, %1354
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1315, label %1365, label %1371, !dx.controlflow.hints !114

; <label>:1365                                    ; preds = %1364
  %1366 = add i32 %18, 16
  %1367 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1366
  %1368 = load i32, i32 addrspace(3)* %1367, align 4, !tbaa !105
  %1369 = load i32, i32 addrspace(3)* %1305, align 4, !tbaa !105
  %1370 = call i32 @dx.op.binary.i32(i32 39, i32 %1369, i32 %1368)  ; UMax(a,b)
  store i32 %1370, i32 addrspace(3)* %1305, align 4, !tbaa !105
  br label %1371

; <label>:1371                                    ; preds = %1365, %1364
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1323, label %1372, label %1378, !dx.controlflow.hints !115

; <label>:1372                                    ; preds = %1371
  %1373 = add i32 %18, 8
  %1374 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1373
  %1375 = load i32, i32 addrspace(3)* %1374, align 4, !tbaa !105
  %1376 = load i32, i32 addrspace(3)* %1305, align 4, !tbaa !105
  %1377 = call i32 @dx.op.binary.i32(i32 39, i32 %1376, i32 %1375)  ; UMax(a,b)
  store i32 %1377, i32 addrspace(3)* %1305, align 4, !tbaa !105
  br label %1378

; <label>:1378                                    ; preds = %1372, %1371
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1331, label %1379, label %1385, !dx.controlflow.hints !116

; <label>:1379                                    ; preds = %1378
  %1380 = add i32 %18, 4
  %1381 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1380
  %1382 = load i32, i32 addrspace(3)* %1381, align 4, !tbaa !105
  %1383 = load i32, i32 addrspace(3)* %1305, align 4, !tbaa !105
  %1384 = call i32 @dx.op.binary.i32(i32 39, i32 %1383, i32 %1382)  ; UMax(a,b)
  store i32 %1384, i32 addrspace(3)* %1305, align 4, !tbaa !105
  br label %1385

; <label>:1385                                    ; preds = %1379, %1378
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1339, label %1386, label %1392, !dx.controlflow.hints !117

; <label>:1386                                    ; preds = %1385
  %1387 = add i32 %18, 2
  %1388 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1387
  %1389 = load i32, i32 addrspace(3)* %1388, align 4, !tbaa !105
  %1390 = load i32, i32 addrspace(3)* %1305, align 4, !tbaa !105
  %1391 = call i32 @dx.op.binary.i32(i32 39, i32 %1390, i32 %1389)  ; UMax(a,b)
  store i32 %1391, i32 addrspace(3)* %1305, align 4, !tbaa !105
  br label %1392

; <label>:1392                                    ; preds = %1386, %1385
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1347, label %1393, label %1399, !dx.controlflow.hints !118

; <label>:1393                                    ; preds = %1392
  %1394 = add i32 %18, 1
  %1395 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1394
  %1396 = load i32, i32 addrspace(3)* %1395, align 4, !tbaa !105
  %1397 = load i32, i32 addrspace(3)* %1305, align 4, !tbaa !105
  %1398 = call i32 @dx.op.binary.i32(i32 39, i32 %1397, i32 %1396)  ; UMax(a,b)
  store i32 %1398, i32 addrspace(3)* %1305, align 4, !tbaa !105
  br label %1399

; <label>:1399                                    ; preds = %1393, %1392
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1400 = load i32, i32 addrspace(3)* %1356, align 4, !tbaa !105
  %1401 = uitofp i32 %1400 to float
  %1402 = uitofp i32 %1357 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %16, i32 %17, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1404 = extractvalue %dx.types.CBufRet.f32 %1403, 0
  %1405 = fmul fast float %1404, %1038
  %1406 = fmul fast float %1404, %1401
  %1407 = fmul fast float %1404, %1402
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %16, i32 %17, i32 undef, float %1405, float %1406, float %1407, float %1405, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %16, i32 %17, i32 undef, float %1303, float %1303, float %1303, float %1303, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!27 = !{void ()* @cs_fog_raymarching_heightmap_particles, !"cs_fog_raymarching_heightmap_particles", null, !4, !28}
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
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
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
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = !{!70, !70, i64 0}
!70 = !{!"float", !71, i64 0}
!71 = !{!"omnipotent char", !72, i64 0}
!72 = !{!"Simple C/C++ TBAA"}
!73 = !{!74, !76, !78, !79, !81, !82, !83}
!74 = distinct !{!74, !75, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!75 = distinct !{!75, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!76 = distinct !{!76, !77, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!77 = distinct !{!77, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!78 = distinct !{!78, !77, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!79 = distinct !{!79, !80, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!80 = distinct !{!80, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!81 = distinct !{!81, !80, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!82 = distinct !{!82, !80, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!83 = distinct !{!83, !80, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = !{!86}
!86 = distinct !{!86, !87, !"\01?sort@@YAXAIAM00@Z: %c"}
!87 = distinct !{!87, !"\01?sort@@YAXAIAM00@Z"}
!88 = !{!89, !90, !74, !76, !78, !79, !81, !82, !83}
!89 = distinct !{!89, !87, !"\01?sort@@YAXAIAM00@Z: %a"}
!90 = distinct !{!90, !87, !"\01?sort@@YAXAIAM00@Z: %b"}
!91 = !{!90}
!92 = !{!89, !86, !74, !76, !78, !79, !81, !82, !83}
!93 = !{!89}
!94 = !{!90, !86, !74, !76, !78, !79, !81, !82, !83}
!95 = !{!96}
!96 = distinct !{!96, !97, !"\01?sort@@YAXAIAM00@Z: %c"}
!97 = distinct !{!97, !"\01?sort@@YAXAIAM00@Z"}
!98 = !{!99, !100, !74, !76, !78, !79, !81, !82, !83}
!99 = distinct !{!99, !97, !"\01?sort@@YAXAIAM00@Z: %a"}
!100 = distinct !{!100, !97, !"\01?sort@@YAXAIAM00@Z: %b"}
!101 = !{!100}
!102 = !{!99, !96, !74, !76, !78, !79, !81, !82, !83}
!103 = !{!99}
!104 = !{!100, !96, !74, !76, !78, !79, !81, !82, !83}
!105 = !{!106, !106, i64 0}
!106 = !{!"int", !71, i64 0}
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
!117 = distinct !{!117, !"dx.controlflow.hints", i32 2}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 2}

