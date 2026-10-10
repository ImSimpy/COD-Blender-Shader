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
; shader hash: 4f65a1a63432995e272f33239bb5e7d4
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
;                                   sampler      NA          NA      S3             s4     1
;                                   sampler      NA          NA      S4             s5     1
;                                   texture     f32          3d      T0             t1     1
;                                   texture     f32          3d      T1             t2     1
;                                   texture     f32          2d      T2             t8     1
;                                   texture     f32          2d      T3             t9     1
;                                   texture     f32          2d      T4            t18     1
;                                   texture  struct         r/o      T5            t25     1
;                                   texture     f32          2d      T6            t13     1
;                                   texture     f32          2d      T7             t0     1
;                                   texture    byte         r/o      T8            t17     1
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
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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

define void @cs_fog_raymarching_clouds_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %22 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %23 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %24 = alloca [3 x float], align 4
  %25 = alloca [3 x float], align 4
  %26 = add i32 %22, %21
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 1
  %29 = add i32 %26, %28
  %30 = lshr i32 %29, 1
  %31 = and i32 %30, 1
  %32 = and i32 %29, 1
  %33 = xor i32 %31, %32
  %34 = shl i32 %21, 1
  %35 = shl i32 %22, 1
  %36 = or i32 %33, %34
  %37 = or i32 %31, %35
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = extractvalue %dx.types.ResRet.i32 %40, 1
  %43 = extractvalue %dx.types.ResRet.i32 %40, 2
  %44 = extractvalue %dx.types.ResRet.i32 %40, 3
  %45 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %46 = extractvalue %dx.types.ResRet.i32 %45, 0
  %47 = extractvalue %dx.types.ResRet.i32 %45, 1
  %48 = extractvalue %dx.types.ResRet.i32 %45, 2
  %49 = extractvalue %dx.types.ResRet.i32 %45, 3
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.i32 %50, 0
  %52 = extractvalue %dx.types.ResRet.i32 %50, 1
  %53 = extractvalue %dx.types.ResRet.i32 %50, 2
  %54 = extractvalue %dx.types.ResRet.i32 %50, 3
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %57 = fmul fast float %56, %56
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %61 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %62 = fmul fast float %61, 0x3FF17B1420000000
  %63 = icmp eq i32 %23, 0
  br i1 %63, label %64, label %205, !dx.controlflow.hints !35

; <label>:64                                      ; preds = %0
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 3
  %69 = extractvalue %dx.types.ResRet.i32 %38, 1
  %70 = and i32 %69, 65535
  %71 = call float @dx.op.legacyF16ToF32(i32 131, i32 %70)  ; LegacyF16ToF32(value)
  %72 = lshr i32 %39, 16
  %73 = call float @dx.op.legacyF16ToF32(i32 131, i32 %72)  ; LegacyF16ToF32(value)
  %74 = and i32 %39, 65535
  %75 = call float @dx.op.legacyF16ToF32(i32 131, i32 %74)  ; LegacyF16ToF32(value)
  %76 = lshr i32 %44, 16
  %77 = call float @dx.op.legacyF16ToF32(i32 131, i32 %76)  ; LegacyF16ToF32(value)
  %78 = and i32 %44, 65535
  %79 = call float @dx.op.legacyF16ToF32(i32 131, i32 %78)  ; LegacyF16ToF32(value)
  %80 = lshr i32 %43, 16
  %81 = call float @dx.op.legacyF16ToF32(i32 131, i32 %80)  ; LegacyF16ToF32(value)
  %82 = and i32 %43, 65535
  %83 = call float @dx.op.legacyF16ToF32(i32 131, i32 %82)  ; LegacyF16ToF32(value)
  %84 = lshr i32 %42, 16
  %85 = call float @dx.op.legacyF16ToF32(i32 131, i32 %84)  ; LegacyF16ToF32(value)
  %86 = lshr i32 %41, 16
  %87 = call float @dx.op.legacyF16ToF32(i32 131, i32 %86)  ; LegacyF16ToF32(value)
  %88 = and i32 %41, 65535
  %89 = call float @dx.op.legacyF16ToF32(i32 131, i32 %88)  ; LegacyF16ToF32(value)
  %90 = lshr i32 %49, 16
  %91 = call float @dx.op.legacyF16ToF32(i32 131, i32 %90)  ; LegacyF16ToF32(value)
  %92 = and i32 %49, 65535
  %93 = call float @dx.op.legacyF16ToF32(i32 131, i32 %92)  ; LegacyF16ToF32(value)
  %94 = lshr i32 %48, 16
  %95 = call float @dx.op.legacyF16ToF32(i32 131, i32 %94)  ; LegacyF16ToF32(value)
  %96 = and i32 %48, 65535
  %97 = call float @dx.op.legacyF16ToF32(i32 131, i32 %96)  ; LegacyF16ToF32(value)
  %98 = lshr i32 %47, 16
  %99 = call float @dx.op.legacyF16ToF32(i32 131, i32 %98)  ; LegacyF16ToF32(value)
  %100 = and i32 %47, 65535
  %101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %100)  ; LegacyF16ToF32(value)
  %102 = and i32 %46, 65535
  %103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %102)  ; LegacyF16ToF32(value)
  %104 = lshr i32 %54, 16
  %105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %104)  ; LegacyF16ToF32(value)
  %106 = and i32 %54, 65535
  %107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %106)  ; LegacyF16ToF32(value)
  %108 = lshr i32 %53, 16
  %109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %108)  ; LegacyF16ToF32(value)
  %110 = and i32 %53, 65535
  %111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %110)  ; LegacyF16ToF32(value)
  %112 = lshr i32 %52, 16
  %113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %112)  ; LegacyF16ToF32(value)
  %114 = and i32 %52, 65535
  %115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %114)  ; LegacyF16ToF32(value)
  %116 = lshr i32 %51, 16
  %117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %116)  ; LegacyF16ToF32(value)
  %118 = and i32 %42, 65535
  %119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %118)  ; LegacyF16ToF32(value)
  %120 = lshr i32 %46, 16
  %121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %120)  ; LegacyF16ToF32(value)
  %122 = and i32 %51, 65535
  %123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %122)  ; LegacyF16ToF32(value)
  %124 = fmul fast float %119, 0x3FD20DD760000000
  %125 = fmul fast float %61, %56
  %126 = fmul fast float %125, %83
  %127 = fmul fast float %61, %61
  %128 = fmul fast float %127, 0x3FEE471020000000
  %129 = fadd fast float %128, 0xBFD42F6020000000
  %130 = fmul fast float %75, %129
  %131 = fmul fast float %81, %59
  %132 = fmul fast float %85, %60
  %133 = fmul fast float %59, %57
  %134 = fmul fast float %133, %62
  %135 = fmul fast float %134, %73
  %136 = fsub fast float -0.000000e+00, %135
  %137 = fmul fast float %60, %57
  %138 = fmul fast float %137, %62
  %139 = fmul fast float %138, %77
  %140 = fmul fast float %59, %59
  %141 = fmul fast float %60, %60
  %142 = fsub fast float %140, %141
  %143 = fmul fast float %142, 0x3FE17B1420000000
  %144 = fmul fast float %143, %71
  %145 = fmul fast float %60, 0x3FF17B1420000000
  %146 = fmul fast float %145, %59
  %147 = fmul fast float %146, %79
  %148 = fadd fast float %132, %131
  %149 = fmul fast float %148, %56
  %150 = fsub fast float %149, %126
  %151 = fmul fast float %150, 0x3FDF454380000000
  %152 = fadd fast float %130, %144
  %153 = fadd fast float %152, %147
  %154 = fmul fast float %153, %57
  %155 = fsub fast float %136, %139
  %156 = fadd fast float %155, %124
  %157 = fadd fast float %156, %151
  %158 = fadd fast float %157, %154
  %159 = fmul fast float %66, %68
  %160 = fmul fast float %159, %158
  %161 = fmul fast float %121, 0x3FD20DD760000000
  %162 = fmul fast float %125, %99
  %163 = fmul fast float %91, %129
  %164 = fmul fast float %97, %59
  %165 = fmul fast float %101, %60
  %166 = fmul fast float %134, %89
  %167 = fsub fast float -0.000000e+00, %166
  %168 = fmul fast float %138, %93
  %169 = fmul fast float %143, %87
  %170 = fmul fast float %146, %95
  %171 = fadd fast float %165, %164
  %172 = fmul fast float %171, %56
  %173 = fsub fast float %172, %162
  %174 = fmul fast float %173, 0x3FDF454380000000
  %175 = fadd fast float %163, %169
  %176 = fadd fast float %175, %170
  %177 = fmul fast float %176, %57
  %178 = fsub fast float %167, %168
  %179 = fadd fast float %178, %161
  %180 = fadd fast float %179, %174
  %181 = fadd fast float %180, %177
  %182 = fmul fast float %159, %181
  %183 = fmul fast float %123, 0x3FD20DD760000000
  %184 = fmul fast float %125, %115
  %185 = fmul fast float %107, %129
  %186 = fmul fast float %113, %59
  %187 = fmul fast float %117, %60
  %188 = fmul fast float %134, %105
  %189 = fsub fast float -0.000000e+00, %188
  %190 = fmul fast float %138, %109
  %191 = fmul fast float %143, %103
  %192 = fmul fast float %146, %111
  %193 = fadd fast float %187, %186
  %194 = fmul fast float %193, %56
  %195 = fsub fast float %194, %184
  %196 = fmul fast float %195, 0x3FDF454380000000
  %197 = fadd fast float %185, %191
  %198 = fadd fast float %197, %192
  %199 = fmul fast float %198, %57
  %200 = fsub fast float %189, %190
  %201 = fadd fast float %200, %183
  %202 = fadd fast float %201, %196
  %203 = fadd fast float %202, %199
  %204 = fmul fast float %159, %203
  br label %205

; <label>:205                                     ; preds = %64, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %206 = uitofp i32 %36 to float
  %207 = uitofp i32 %37 to float
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 2
  %210 = fmul fast float %209, 0x3FE3C6EF40000000
  %211 = frem fast float %206, 2.560000e+02
  %212 = frem fast float %207, 2.560000e+02
  %213 = fptoui float %211 to i32
  %214 = fptoui float %212 to i32
  %215 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %213, i32 %214, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 1
  %217 = extractvalue %dx.types.ResRet.f32 %215, 2
  %218 = extractvalue %dx.types.ResRet.f32 %215, 3
  %219 = fadd fast float %216, %210
  %220 = fadd fast float %217, %210
  %221 = fadd fast float %218, %210
  %222 = call float @dx.op.unary.f32(i32 22, float %219)  ; Frc(value)
  %223 = call float @dx.op.unary.f32(i32 22, float %220)  ; Frc(value)
  %224 = call float @dx.op.unary.f32(i32 22, float %221)  ; Frc(value)
  %225 = fadd fast float %223, %206
  %226 = fadd fast float %224, %207
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 2
  %229 = extractvalue %dx.types.CBufRet.f32 %227, 3
  %230 = fmul fast float %228, %225
  %231 = fmul fast float %229, %226
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 0
  %234 = extractvalue %dx.types.CBufRet.f32 %232, 1
  %235 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 1
  %238 = fmul fast float %230, 2.000000e+00
  %239 = fmul fast float %231, 2.000000e+00
  %240 = fsub fast float 1.000000e+00, %238
  %241 = fsub fast float 1.000000e+00, %239
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %244 = extractvalue %dx.types.CBufRet.f32 %242, 1
  %245 = extractvalue %dx.types.CBufRet.f32 %242, 2
  %246 = fmul fast float %243, %240
  %247 = fmul fast float %244, %240
  %248 = fmul fast float %245, %240
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 0
  %251 = extractvalue %dx.types.CBufRet.f32 %249, 1
  %252 = extractvalue %dx.types.CBufRet.f32 %249, 2
  %253 = fmul fast float %250, %241
  %254 = fmul fast float %251, %241
  %255 = fmul fast float %252, %241
  %256 = fadd fast float %253, %246
  %257 = fadd fast float %254, %247
  %258 = fadd fast float %255, %248
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 0
  %261 = extractvalue %dx.types.CBufRet.f32 %259, 1
  %262 = extractvalue %dx.types.CBufRet.f32 %259, 2
  %263 = fadd fast float %256, %260
  %264 = fadd fast float %257, %261
  %265 = fadd fast float %258, %262
  %266 = fmul fast float %263, %237
  %267 = fmul fast float %264, %237
  %268 = fmul fast float %265, %237
  %269 = fmul fast float %266, %266
  %270 = fmul fast float %267, %267
  %271 = fadd fast float %269, %270
  %272 = fmul fast float %268, %268
  %273 = fadd fast float %271, %272
  %274 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %275 = fdiv fast float 1.000000e+00, %274
  %276 = fmul fast float %266, %275
  %277 = fmul fast float %267, %275
  %278 = fmul fast float %268, %275
  %279 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %36, i32 %37, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = fcmp fast ogt float %280, -1.000000e+00
  %282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.f32 %282, 1
  %284 = select i1 %281, float %283, float 1.000000e+00
  %285 = fadd fast float %280, 1.000000e+00
  %286 = fmul fast float %284, %285
  %287 = call float @dx.op.unary.f32(i32 6, float %286)  ; FAbs(value)
  %288 = fdiv fast float 1.000000e+00, %237
  %289 = fmul fast float %288, %274
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 1
  %292 = fmul fast float %291, %289
  %293 = fmul fast float %289, %287
  %294 = extractvalue %dx.types.CBufRet.f32 %282, 3
  %295 = fcmp fast oge float %287, %294
  %296 = call float @dx.op.binary.f32(i32 36, float %293, float %292)  ; FMin(a,b)
  %297 = select i1 %295, float %292, float %296
  %298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.i32 %298, 3
  %300 = icmp eq i32 %299, 0
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 2
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %305 = fsub fast float %302, %235
  %306 = fadd fast float %305, %304
  br i1 %300, label %318, label %307, !dx.controlflow.hints !36

; <label>:307                                     ; preds = %205
  %308 = fsub fast float -0.000000e+00, %234
  %309 = fsub fast float -0.000000e+00, %233
  %310 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %309, float %308, float %306)  ; Dot3(ax,ay,az,bx,by,bz)
  %311 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %276, float %277, float %278)  ; Dot3(ax,ay,az,bx,by,bz)
  %312 = fdiv fast float 1.000000e+00, %311
  %313 = fmul fast float %312, %310
  %314 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %309, float %308, float %305)  ; Dot3(ax,ay,az,bx,by,bz)
  %315 = fmul fast float %312, %314
  %316 = call float @dx.op.binary.f32(i32 36, float %313, float %315)  ; FMin(a,b)
  %317 = call float @dx.op.binary.f32(i32 35, float %313, float %315)  ; FMax(a,b)
  br label %351

; <label>:318                                     ; preds = %205
  %319 = fdiv fast float 1.000000e+00, %276
  %320 = fdiv fast float 1.000000e+00, %277
  %321 = fdiv fast float 1.000000e+00, %278
  %322 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %323 = extractvalue %dx.types.CBufRet.f32 %301, 1
  %324 = extractvalue %dx.types.CBufRet.f32 %303, 0
  %325 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %326 = fsub fast float %322, %233
  %327 = fmul fast float %326, %319
  %328 = fadd fast float %326, %324
  %329 = fmul fast float %328, %319
  %330 = call float @dx.op.binary.f32(i32 36, float %327, float %329)  ; FMin(a,b)
  %331 = call float @dx.op.binary.f32(i32 35, float %327, float %329)  ; FMax(a,b)
  %332 = fsub fast float %323, %234
  %333 = fmul fast float %332, %320
  %334 = fadd fast float %332, %325
  %335 = fmul fast float %334, %320
  %336 = call float @dx.op.binary.f32(i32 36, float %333, float %335)  ; FMin(a,b)
  %337 = call float @dx.op.binary.f32(i32 35, float %330, float %336)  ; FMax(a,b)
  %338 = call float @dx.op.binary.f32(i32 35, float %333, float %335)  ; FMax(a,b)
  %339 = call float @dx.op.binary.f32(i32 36, float %331, float %338)  ; FMin(a,b)
  %340 = fmul fast float %305, %321
  %341 = fmul fast float %306, %321
  %342 = call float @dx.op.binary.f32(i32 36, float %340, float %341)  ; FMin(a,b)
  %343 = call float @dx.op.binary.f32(i32 35, float %337, float %342)  ; FMax(a,b)
  %344 = call float @dx.op.binary.f32(i32 35, float %340, float %341)  ; FMax(a,b)
  %345 = call float @dx.op.binary.f32(i32 36, float %339, float %344)  ; FMin(a,b)
  %346 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %343)  ; FMax(a,b)
  %347 = fcmp fast ult float %345, %346
  br i1 %347, label %351, label %348, !dx.controlflow.hints !37

; <label>:348                                     ; preds = %318
  %349 = call float @dx.op.binary.f32(i32 36, float %343, float %345)  ; FMin(a,b)
  %350 = call float @dx.op.binary.f32(i32 35, float %343, float %345)  ; FMax(a,b)
  br label %351

; <label>:351                                     ; preds = %348, %318, %307
  %352 = phi float [ %316, %307 ], [ %349, %348 ], [ 0.000000e+00, %318 ]
  %353 = phi float [ %317, %307 ], [ %350, %348 ], [ 0.000000e+00, %318 ]
  %354 = fcmp fast oeq float %353, 0.000000e+00
  br i1 %354, label %358, label %355, !dx.controlflow.hints !38

; <label>:355                                     ; preds = %351
  %356 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %352)  ; FMin(a,b)
  %357 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %353)  ; FMax(a,b)
  br label %358

; <label>:358                                     ; preds = %355, %351
  %359 = phi i32 [ 1, %355 ], [ 0, %351 ]
  %360 = phi float [ %357, %355 ], [ -1.000000e+00, %351 ]
  %361 = phi float [ %356, %355 ], [ 0x47EFFFFFE0000000, %351 ]
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 3
  %364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.f32 %364, 0
  %366 = fsub fast float -0.000000e+00, %233
  %367 = fsub fast float -0.000000e+00, %234
  %368 = fsub fast float %363, %235
  %369 = fadd fast float %368, %365
  %370 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %366, float %367, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %371 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %276, float %277, float %278)  ; Dot3(ax,ay,az,bx,by,bz)
  %372 = fdiv fast float 1.000000e+00, %371
  %373 = fmul fast float %372, %370
  %374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.f32 %374, 2
  %376 = fsub fast float %375, %235
  %377 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %366, float %367, float %376)  ; Dot3(ax,ay,az,bx,by,bz)
  %378 = fmul fast float %372, %377
  %379 = call float @dx.op.binary.f32(i32 36, float %373, float %378)  ; FMin(a,b)
  %380 = call float @dx.op.binary.f32(i32 35, float %373, float %378)  ; FMax(a,b)
  %381 = call float @dx.op.binary.f32(i32 36, float %361, float %379)  ; FMin(a,b)
  %382 = call float @dx.op.binary.f32(i32 35, float %360, float %380)  ; FMax(a,b)
  %383 = fdiv fast float 1.000000e+00, %276
  %384 = fdiv fast float 1.000000e+00, %277
  %385 = fdiv fast float 1.000000e+00, %278
  %386 = call float @dx.op.binary.f32(i32 36, float %297, float %382)  ; FMin(a,b)
  %387 = call float @dx.op.binary.f32(i32 35, float %274, float %381)  ; FMax(a,b)
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 0
  %390 = fmul fast float %222, 2.000000e+00
  %391 = fadd fast float %390, -1.000000e+00
  %392 = fmul fast float %389, %391
  %393 = fadd fast float %392, %387
  %394 = fcmp fast olt float %393, %386
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 2
  %397 = fcmp fast olt float %396, 1.000000e+00
  %398 = and i1 %397, %394
  br i1 %398, label %399, label %997

; <label>:399                                     ; preds = %358
  %400 = fmul fast float %393, %278
  %401 = fadd fast float %400, %235
  %402 = fmul fast float %393, %277
  %403 = fadd fast float %402, %234
  %404 = fmul fast float %393, %276
  %405 = fadd fast float %404, %233
  br label %406

; <label>:406                                     ; preds = %975, %399
  %407 = phi float [ %530, %975 ], [ undef, %399 ]
  %408 = phi float [ %531, %975 ], [ undef, %399 ]
  %409 = phi float [ %532, %975 ], [ undef, %399 ]
  %410 = phi float [ %533, %975 ], [ undef, %399 ]
  %411 = phi float [ %977, %975 ], [ 0.000000e+00, %399 ]
  %412 = phi float [ %978, %975 ], [ 1.000000e+00, %399 ]
  %413 = phi float [ %988, %975 ], [ %405, %399 ]
  %414 = phi float [ %989, %975 ], [ %403, %399 ]
  %415 = phi float [ %990, %975 ], [ %401, %399 ]
  %416 = phi float [ %976, %975 ], [ %393, %399 ]
  %417 = phi i32 [ %425, %975 ], [ 0, %399 ]
  %418 = phi i32 [ %535, %975 ], [ 10, %399 ]
  %419 = phi float [ %979, %975 ], [ 0.000000e+00, %399 ]
  %420 = phi float [ %980, %975 ], [ 0.000000e+00, %399 ]
  %421 = phi float [ %981, %975 ], [ 0.000000e+00, %399 ]
  %422 = phi float [ %982, %975 ], [ 0.000000e+00, %399 ]
  %423 = phi float [ %983, %975 ], [ 0.000000e+00, %399 ]
  %424 = phi i32 [ %984, %975 ], [ 0, %399 ]
  %425 = add i32 %417, 1
  %426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %427 = extractvalue %dx.types.CBufRet.f32 %426, 0
  %428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %429 = extractvalue %dx.types.CBufRet.f32 %428, 0
  %430 = extractvalue %dx.types.CBufRet.f32 %428, 1
  %431 = fsub fast float %413, %429
  %432 = fsub fast float %414, %430
  %433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %434 = extractvalue %dx.types.CBufRet.f32 %433, 2
  %435 = extractvalue %dx.types.CBufRet.f32 %433, 3
  %436 = fmul fast float %431, %434
  %437 = fmul fast float %432, %435
  %438 = call float @dx.op.binary.f32(i32 36, float %436, float %437)  ; FMin(a,b)
  %439 = fcmp fast olt float %438, 0.000000e+00
  %440 = call float @dx.op.binary.f32(i32 35, float %436, float %437)  ; FMax(a,b)
  %441 = fcmp fast ogt float %440, 1.000000e+00
  %442 = or i1 %439, %441
  %443 = extractvalue %dx.types.CBufRet.f32 %428, 2
  %444 = fcmp fast olt float %415, %443
  %445 = or i1 %442, %444
  %446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.f32 %446, 3
  %448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.f32 %448, 0
  %450 = fadd fast float %449, %447
  %451 = fcmp fast ogt float %415, %450
  %452 = or i1 %445, %451
  br i1 %452, label %453, label %482, !dx.controlflow.hints !39

; <label>:453                                     ; preds = %406
  %454 = extractvalue %dx.types.CBufRet.f32 %433, 0
  %455 = extractvalue %dx.types.CBufRet.f32 %433, 1
  %456 = fsub fast float %429, %413
  %457 = fmul fast float %456, %383
  %458 = fadd fast float %456, %454
  %459 = fmul fast float %458, %383
  %460 = call float @dx.op.binary.f32(i32 36, float %457, float %459)  ; FMin(a,b)
  %461 = call float @dx.op.binary.f32(i32 35, float %457, float %459)  ; FMax(a,b)
  %462 = fsub fast float %430, %414
  %463 = fmul fast float %462, %384
  %464 = fadd fast float %462, %455
  %465 = fmul fast float %464, %384
  %466 = call float @dx.op.binary.f32(i32 36, float %463, float %465)  ; FMin(a,b)
  %467 = call float @dx.op.binary.f32(i32 35, float %460, float %466)  ; FMax(a,b)
  %468 = call float @dx.op.binary.f32(i32 35, float %463, float %465)  ; FMax(a,b)
  %469 = call float @dx.op.binary.f32(i32 36, float %461, float %468)  ; FMin(a,b)
  %470 = fsub fast float %443, %415
  %471 = fmul fast float %470, %385
  %472 = fsub fast float %447, %415
  %473 = fadd fast float %472, %449
  %474 = fmul fast float %473, %385
  %475 = call float @dx.op.binary.f32(i32 36, float %471, float %474)  ; FMin(a,b)
  %476 = call float @dx.op.binary.f32(i32 35, float %467, float %475)  ; FMax(a,b)
  %477 = call float @dx.op.binary.f32(i32 35, float %471, float %474)  ; FMax(a,b)
  %478 = call float @dx.op.binary.f32(i32 36, float %469, float %477)  ; FMin(a,b)
  %479 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %476)  ; FMax(a,b)
  %480 = fcmp fast oge float %478, %479
  %481 = select i1 %480, float %476, float 1.000000e+07
  br label %528

; <label>:482                                     ; preds = %406
  %483 = fsub fast float 1.000000e+00, %437
  %484 = icmp eq i32 %418, 0
  br i1 %484, label %513, label %485

; <label>:485                                     ; preds = %482
  br label %486

; <label>:486                                     ; preds = %509, %485
  %487 = phi i32 [ %510, %509 ], [ %418, %485 ]
  %488 = uitofp i32 %487 to float
  %489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %436, float %483, float undef, float undef, i32 0, i32 0, i32 undef, float %488)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %490 = extractvalue %dx.types.ResRet.f32 %489, 0
  %491 = extractvalue %dx.types.ResRet.f32 %489, 1
  %492 = extractvalue %dx.types.ResRet.f32 %489, 2
  %493 = fcmp fast oeq float %490, 0.000000e+00
  %494 = fcmp ule float %415, %492
  %495 = fcmp uge float %415, %491
  %496 = or i1 %495, %494
  %497 = or i1 %493, %496
  br i1 %497, label %498, label %509, !dx.controlflow.hints !40

; <label>:498                                     ; preds = %486
  %499 = extractvalue %dx.types.ResRet.f32 %489, 3
  %500 = extractvalue %dx.types.CBufRet.f32 %433, 0
  %501 = and i32 %487, 31
  %502 = lshr i32 1024, %501
  %503 = uitofp i32 %502 to float
  %504 = fdiv fast float %500, %503
  %505 = add i32 %487, 1
  %506 = uitofp i32 %505 to float
  %507 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %506)  ; FMin(a,b)
  %508 = fptosi float %507 to i32
  br label %528

; <label>:509                                     ; preds = %486
  %510 = add i32 %487, -1
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %486, !llvm.loop !41

; <label>:512                                     ; preds = %509
  br label %513

; <label>:513                                     ; preds = %512, %482
  %514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %436, float %483, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = extractvalue %dx.types.ResRet.f32 %514, 1
  %517 = extractvalue %dx.types.ResRet.f32 %514, 2
  %518 = extractvalue %dx.types.ResRet.f32 %514, 3
  %519 = extractvalue %dx.types.CBufRet.f32 %433, 0
  %520 = fmul fast float %519, 9.765625e-04
  %521 = fcmp fast oeq float %515, 0.000000e+00
  %522 = fcmp ule float %415, %517
  %523 = fcmp uge float %415, %516
  %524 = or i1 %523, %522
  %525 = or i1 %521, %524
  %526 = zext i1 %525 to i32
  %527 = xor i32 %526, 1
  br label %528

; <label>:528                                     ; preds = %513, %498, %453
  %529 = phi float [ %481, %453 ], [ %504, %498 ], [ %520, %513 ]
  %530 = phi float [ %407, %453 ], [ %490, %498 ], [ %515, %513 ]
  %531 = phi float [ %408, %453 ], [ %491, %498 ], [ %516, %513 ]
  %532 = phi float [ %409, %453 ], [ %492, %498 ], [ %517, %513 ]
  %533 = phi float [ %410, %453 ], [ %499, %498 ], [ %518, %513 ]
  %534 = phi i32 [ 0, %453 ], [ 0, %498 ], [ %527, %513 ]
  %535 = phi i32 [ 10, %453 ], [ %508, %498 ], [ 1, %513 ]
  %536 = icmp eq i32 %534, 0
  %537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %538 = extractvalue %dx.types.CBufRet.f32 %537, 2
  %539 = call float @dx.op.binary.f32(i32 35, float %529, float %538)  ; FMax(a,b)
  %540 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %539)  ; FMin(a,b)
  %541 = icmp eq i32 %359, 0
  br i1 %541, label %597, label %542, !dx.controlflow.hints !43

; <label>:542                                     ; preds = %528
  %543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.f32 %543, 0
  %545 = extractvalue %dx.types.CBufRet.f32 %543, 1
  %546 = extractvalue %dx.types.CBufRet.f32 %543, 2
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 0
  %549 = extractvalue %dx.types.CBufRet.f32 %547, 1
  %550 = extractvalue %dx.types.CBufRet.f32 %547, 2
  %551 = fsub fast float %413, %548
  %552 = fsub fast float %414, %549
  %553 = fsub fast float %415, %550
  %554 = fmul fast float %551, %544
  %555 = fmul fast float %552, %545
  %556 = fmul fast float %553, %546
  %557 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.i32 %557, 3
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %563, label %560, !dx.controlflow.hints !44

; <label>:560                                     ; preds = %542
  %561 = call float @dx.op.unary.f32(i32 22, float %554)  ; Frc(value)
  %562 = call float @dx.op.unary.f32(i32 22, float %555)  ; Frc(value)
  br label %563

; <label>:563                                     ; preds = %560, %542
  %564 = phi float [ %561, %560 ], [ %554, %542 ]
  %565 = phi float [ %562, %560 ], [ %555, %542 ]
  %566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %564, float %565, float %556, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 0
  %568 = fmul fast float %567, 2.000000e+00
  %569 = fadd fast float %568, -1.000000e+00
  %570 = extractvalue %dx.types.CBufRet.f32 %543, 3
  %571 = fmul fast float %569, %570
  %572 = fcmp fast olt float %571, 0.000000e+00
  %573 = fcmp fast oge float %556, 0.000000e+00
  %574 = fcmp fast ole float %556, 1.000000e+00
  br i1 %559, label %577, label %575, !dx.controlflow.hints !45

; <label>:575                                     ; preds = %563
  %576 = and i1 %573, %574
  br label %587

; <label>:577                                     ; preds = %563
  %578 = fcmp fast oge float %554, 0.000000e+00
  %579 = fcmp fast oge float %555, 0.000000e+00
  %580 = and i1 %578, %579
  %581 = and i1 %573, %580
  %582 = fcmp fast ole float %554, 1.000000e+00
  %583 = fcmp fast ole float %555, 1.000000e+00
  %584 = and i1 %582, %583
  %585 = and i1 %574, %584
  %586 = and i1 %581, %585
  br label %587

; <label>:587                                     ; preds = %577, %575
  %588 = phi i1 [ %576, %575 ], [ %586, %577 ]
  %589 = and i1 %572, %588
  %590 = call float @dx.op.unary.f32(i32 6, float %571)  ; FAbs(value)
  %591 = extractvalue %dx.types.CBufRet.f32 %537, 1
  %592 = extractvalue %dx.types.CBufRet.f32 %537, 0
  %593 = call float @dx.op.binary.f32(i32 35, float %590, float %592)  ; FMax(a,b)
  %594 = select i1 %589, float %591, float %593
  %595 = zext i1 %589 to i32
  %596 = call float @dx.op.binary.f32(i32 36, float %540, float %594)  ; FMin(a,b)
  br label %597

; <label>:597                                     ; preds = %587, %528
  %598 = phi i32 [ %595, %587 ], [ 0, %528 ]
  %599 = phi float [ %596, %587 ], [ %540, %528 ]
  %600 = extractvalue %dx.types.CBufRet.f32 %426, 2
  %601 = fmul fast float %600, %416
  %602 = call float @dx.op.unary.f32(i32 23, float %601)  ; Log(value)
  %603 = fmul fast float %602, 0x3FE62E4300000000
  %604 = call float @dx.op.binary.f32(i32 35, float %603, float 1.000000e+00)  ; FMax(a,b)
  %605 = fmul fast float %604, 0x47EFFFFFE0000000
  %606 = call float @dx.op.binary.f32(i32 36, float %605, float %599)  ; FMin(a,b)
  %607 = call float @dx.op.binary.f32(i32 35, float %606, float %427)  ; FMax(a,b)
  %608 = fadd fast float %386, 0x3F1A36E2E0000000
  %609 = fsub fast float %608, %416
  %610 = call float @dx.op.binary.f32(i32 36, float %609, float %607)  ; FMin(a,b)
  %611 = icmp eq i32 %598, 0
  br i1 %611, label %791, label %612, !dx.controlflow.hints !46

; <label>:612                                     ; preds = %597
  %613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %614 = extractvalue %dx.types.CBufRet.f32 %613, 3
  %615 = fmul fast float %614, %416
  %616 = fcmp fast oeq float %615, 0.000000e+00
  br i1 %616, label %631, label %617, !dx.controlflow.hints !47

; <label>:617                                     ; preds = %612
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 3
  %620 = fmul fast float %619, %615
  %621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.f32 %621, 0
  %623 = extractvalue %dx.types.CBufRet.f32 %621, 1
  %624 = extractvalue %dx.types.CBufRet.f32 %621, 2
  %625 = fmul fast float %622, %620
  %626 = fmul fast float %623, %620
  %627 = fmul fast float %624, %620
  %628 = call float @dx.op.unary.f32(i32 23, float %625)  ; Log(value)
  %629 = call float @dx.op.unary.f32(i32 23, float %626)  ; Log(value)
  %630 = call float @dx.op.unary.f32(i32 23, float %627)  ; Log(value)
  br label %631

; <label>:631                                     ; preds = %617, %612
  %632 = phi float [ %628, %617 ], [ 0.000000e+00, %612 ]
  %633 = phi float [ %629, %617 ], [ 0.000000e+00, %612 ]
  %634 = phi float [ %630, %617 ], [ 0.000000e+00, %612 ]
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %637 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %638 = extractvalue %dx.types.CBufRet.f32 %635, 2
  %639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.f32 %639, 0
  %641 = extractvalue %dx.types.CBufRet.f32 %639, 1
  %642 = extractvalue %dx.types.CBufRet.f32 %639, 2
  %643 = fsub fast float %413, %640
  %644 = fsub fast float %414, %641
  %645 = fsub fast float %415, %642
  %646 = fmul fast float %643, %636
  %647 = fmul fast float %644, %637
  %648 = fmul fast float %645, %638
  %649 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %650 = extractvalue %dx.types.CBufRet.i32 %649, 0
  %651 = extractvalue %dx.types.CBufRet.i32 %649, 1
  %652 = uitofp i32 %650 to float
  %653 = uitofp i32 %651 to float
  %654 = fmul fast float %646, %652
  %655 = fmul fast float %647, %653
  %656 = fadd fast float %654, 5.000000e-01
  %657 = fadd fast float %655, 5.000000e-01
  %658 = call float @dx.op.unary.f32(i32 22, float %656)  ; Frc(value)
  %659 = call float @dx.op.unary.f32(i32 22, float %657)  ; Frc(value)
  %660 = call float @dx.op.unary.f32(i32 27, float %656)  ; Round_ni(value)
  %661 = call float @dx.op.unary.f32(i32 27, float %657)  ; Round_ni(value)
  %662 = fadd fast float %660, 1.000000e+00
  %663 = fadd fast float %661, 1.000000e+00
  %664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %665 = extractvalue %dx.types.CBufRet.f32 %664, 0
  %666 = extractvalue %dx.types.CBufRet.f32 %664, 1
  %667 = fmul fast float %665, %662
  %668 = fmul fast float %666, %663
  %669 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %16, float %667, float %668, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = extractvalue %dx.types.ResRet.f32 %669, 1
  %672 = extractvalue %dx.types.ResRet.f32 %669, 2
  %673 = extractvalue %dx.types.ResRet.f32 %669, 3
  %674 = extractvalue %dx.types.CBufRet.i32 %649, 2
  %675 = extractvalue %dx.types.CBufRet.f32 %664, 2
  %676 = uitofp i32 %674 to float
  %677 = fadd fast float %676, -1.000000e+00
  %678 = fmul fast float %677, %670
  %679 = fmul fast float %677, %671
  %680 = fmul fast float %677, %672
  %681 = fmul fast float %677, %673
  %682 = fadd fast float %678, 5.000000e-01
  %683 = fadd fast float %679, 5.000000e-01
  %684 = fadd fast float %680, 5.000000e-01
  %685 = fadd fast float %681, 5.000000e-01
  %686 = fptoui float %682 to i32
  %687 = fptoui float %683 to i32
  %688 = fptoui float %684 to i32
  %689 = fptoui float %685 to i32
  %690 = uitofp i32 %686 to float
  %691 = uitofp i32 %687 to float
  %692 = uitofp i32 %688 to float
  %693 = uitofp i32 %689 to float
  %694 = fadd fast float %690, 5.000000e-01
  %695 = fadd fast float %691, 5.000000e-01
  %696 = fadd fast float %692, 5.000000e-01
  %697 = fadd fast float %693, 5.000000e-01
  %698 = fmul fast float %694, %675
  %699 = fmul fast float %695, %675
  %700 = fmul fast float %696, %675
  %701 = fmul fast float %697, %675
  %702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %698, float %648, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %703 = extractvalue %dx.types.ResRet.f32 %702, 0
  %704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %699, float %648, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %705 = extractvalue %dx.types.ResRet.f32 %704, 0
  %706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %700, float %648, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  %708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %701, float %648, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  %710 = fsub fast float %707, %709
  %711 = fmul fast float %710, %658
  %712 = fadd fast float %711, %709
  %713 = fsub fast float %705, %703
  %714 = fmul fast float %713, %658
  %715 = fadd fast float %714, %703
  %716 = fsub fast float %715, %712
  %717 = fmul fast float %716, %659
  %718 = fadd fast float %717, %712
  %719 = fcmp fast ogt float %718, 0.000000e+00
  br i1 %719, label %720, label %788, !dx.controlflow.hints !48

; <label>:720                                     ; preds = %631
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 0
  %723 = extractvalue %dx.types.CBufRet.f32 %721, 1
  %724 = extractvalue %dx.types.CBufRet.f32 %721, 2
  %725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %726 = extractvalue %dx.types.CBufRet.f32 %725, 0
  %727 = extractvalue %dx.types.CBufRet.f32 %725, 1
  %728 = extractvalue %dx.types.CBufRet.f32 %725, 2
  %729 = fmul fast float %644, %636
  %730 = fmul fast float %645, %636
  %731 = fadd fast float %646, %726
  %732 = fadd fast float %729, %727
  %733 = fadd fast float %730, %728
  %734 = fmul fast float %731, %722
  %735 = fmul fast float %732, %722
  %736 = fmul fast float %733, %722
  %737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %734, float %735, float %736, float undef, i32 0, i32 0, i32 0, float %632)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %738 = extractvalue %dx.types.ResRet.f32 %737, 0
  %739 = fmul fast float %731, %723
  %740 = fmul fast float %732, %723
  %741 = fmul fast float %733, %723
  %742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %739, float %740, float %741, float undef, i32 0, i32 0, i32 0, float %633)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %743 = extractvalue %dx.types.ResRet.f32 %742, 1
  %744 = fmul fast float %731, %724
  %745 = fmul fast float %732, %724
  %746 = fmul fast float %733, %724
  %747 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %744, float %745, float %746, float undef, i32 0, i32 0, i32 0, float %634)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 2
  %749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.f32 %749, 1
  %751 = fmul fast float %743, %738
  %752 = fmul fast float %751, %748
  %753 = call float @dx.op.unary.f32(i32 23, float %752)  ; Log(value)
  %754 = fmul fast float %753, %750
  %755 = call float @dx.op.unary.f32(i32 21, float %754)  ; Exp(value)
  %756 = extractvalue %dx.types.CBufRet.f32 %749, 2
  %757 = fmul fast float %718, %718
  %758 = fmul fast float %757, %755
  %759 = fmul fast float %758, %756
  %760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.f32 %760, 3
  %762 = fmul fast float %761, %759
  %763 = bitcast float %762 to i32
  %764 = sitofp i32 %763 to float
  %765 = fptosi float %764 to i32
  %766 = bitcast i32 %765 to float
  %767 = fsub fast float 1.000000e+00, %759
  %768 = bitcast float %767 to i32
  %769 = sitofp i32 %768 to float
  %770 = fptosi float %769 to i32
  %771 = bitcast i32 %770 to float
  %772 = fadd fast float %766, %771
  %773 = bitcast float %772 to i32
  %774 = sub nsw i32 2129859010, %773
  %775 = bitcast i32 %774 to float
  %776 = fmul fast float %775, %766
  %777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %778 = extractvalue %dx.types.CBufRet.f32 %777, 2
  %779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %780 = extractvalue %dx.types.CBufRet.f32 %779, 0
  %781 = fmul fast float %776, %780
  %782 = fadd fast float %781, 1.000000e+00
  %783 = bitcast float %782 to i32
  %784 = sub nsw i32 2129859010, %783
  %785 = bitcast i32 %784 to float
  %786 = fmul fast float %776, %778
  %787 = fmul fast float %786, %785
  br label %788

; <label>:788                                     ; preds = %720, %631
  %789 = phi float [ %787, %720 ], [ %718, %631 ]
  %790 = fmul fast float %789, %610
  br label %791

; <label>:791                                     ; preds = %788, %597
  %792 = phi float [ %790, %788 ], [ 0.000000e+00, %597 ]
  br i1 %536, label %918, label %793, !dx.controlflow.hints !49

; <label>:793                                     ; preds = %791
  %794 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %795 = extractvalue %dx.types.CBufRet.i32 %794, 0
  %796 = icmp ne i32 %795, 0
  %797 = zext i1 %796 to i32
  %798 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.i32 %798, 0
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %834, label %801

; <label>:801                                     ; preds = %793
  br label %802

; <label>:802                                     ; preds = %829, %801
  %803 = phi i32 [ %830, %829 ], [ 0, %801 ]
  %804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %803, i32 0)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.f32 %804, 0
  %806 = extractvalue %dx.types.ResRet.f32 %804, 1
  %807 = extractvalue %dx.types.ResRet.f32 %804, 2
  %808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %803, i32 16)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.f32 %808, 0
  %810 = extractvalue %dx.types.ResRet.f32 %808, 1
  %811 = extractvalue %dx.types.ResRet.f32 %808, 2
  %812 = fsub fast float %805, %809
  %813 = fsub fast float %806, %810
  %814 = fsub fast float %807, %811
  %815 = fadd fast float %809, %805
  %816 = fadd fast float %810, %806
  %817 = fadd fast float %811, %807
  %818 = fcmp fast olt float %413, %812
  %819 = fcmp fast olt float %414, %813
  %820 = fcmp fast olt float %415, %814
  %821 = or i1 %818, %819
  %822 = or i1 %820, %821
  %823 = fcmp fast ogt float %413, %815
  %824 = fcmp fast ogt float %414, %816
  %825 = fcmp fast ogt float %415, %817
  %826 = or i1 %823, %824
  %827 = or i1 %825, %826
  %828 = or i1 %822, %827
  br i1 %828, label %829, label %832, !dx.controlflow.hints !50

; <label>:829                                     ; preds = %802
  %830 = add nuw i32 %803, 1
  %831 = icmp ult i32 %830, %799
  br i1 %831, label %802, label %832

; <label>:832                                     ; preds = %829, %802
  %833 = phi i32 [ 255, %829 ], [ %803, %802 ]
  br label %834

; <label>:834                                     ; preds = %832, %793
  %835 = phi i32 [ 255, %793 ], [ %833, %832 ]
  %836 = icmp eq i32 %835, 255
  br i1 %836, label %842, label %837, !dx.controlflow.hints !51

; <label>:837                                     ; preds = %834
  %838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %835, i32 156)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.i32 %838, 0
  %840 = icmp ne i32 %839, 0
  %841 = zext i1 %840 to i32
  br label %842

; <label>:842                                     ; preds = %837, %834
  %843 = phi i32 [ %841, %837 ], [ %797, %834 ]
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %845, label %914, !dx.controlflow.hints !52

; <label>:845                                     ; preds = %842
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 3
  %848 = extractvalue %dx.types.CBufRet.f32 %446, 0
  %849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %850 = extractvalue %dx.types.CBufRet.f32 %849, 2
  %851 = extractvalue %dx.types.CBufRet.f32 %849, 3
  br i1 %836, label %862, label %852, !dx.controlflow.hints !53

; <label>:852                                     ; preds = %845
  %853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %835, i32 60)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.f32 %853, 0
  %855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %835, i32 64)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.f32 %855, 0
  %857 = extractvalue %dx.types.ResRet.f32 %855, 1
  %858 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %835, i32 72)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.f32 %858, 0
  %860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %835, i32 96)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.f32 %860, 0
  br label %862

; <label>:862                                     ; preds = %852, %845
  %863 = phi float [ %854, %852 ], [ %449, %845 ]
  %864 = phi float [ %859, %852 ], [ %447, %845 ]
  %865 = phi float [ %861, %852 ], [ %848, %845 ]
  %866 = phi float [ %856, %852 ], [ %850, %845 ]
  %867 = phi float [ %857, %852 ], [ %851, %845 ]
  %868 = call float @dx.op.binary.f32(i32 35, float %530, float 0.000000e+00)  ; FMax(a,b)
  %869 = call float @dx.op.binary.f32(i32 36, float %868, float 1.000000e+00)  ; FMin(a,b)
  %870 = call float @dx.op.unary.f32(i32 24, float %869)  ; Sqrt(value)
  %871 = call float @dx.op.binary.f32(i32 35, float %533, float 0x3F847AE140000000)  ; FMax(a,b)
  %872 = fsub fast float %531, %415
  %873 = fsub fast float %415, %532
  %874 = call float @dx.op.binary.f32(i32 36, float %873, float %872)  ; FMin(a,b)
  %875 = fdiv fast float %874, %871
  %876 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  %877 = fsub fast float %415, %864
  %878 = fdiv fast float %877, %863
  %879 = call float @dx.op.unary.f32(i32 7, float %878)  ; Saturate(value)
  %880 = fsub fast float 1.000000e+00, %879
  %881 = fmul float %876, %880
  %882 = fmul float %881, %881
  %883 = fmul fast float %870, %847
  %884 = fmul fast float %883, %882
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 2
  %887 = extractvalue %dx.types.CBufRet.f32 %885, 1
  %888 = fsub fast float %884, %887
  %889 = fsub fast float %886, %887
  %890 = fdiv fast float %888, %889
  %891 = call float @dx.op.unary.f32(i32 7, float %890)  ; Saturate(value)
  %892 = fmul fast float %891, %865
  %893 = fcmp fast ogt float %867, 0.000000e+00
  br i1 %893, label %894, label %914, !dx.controlflow.hints !54

; <label>:894                                     ; preds = %862
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 0
  %897 = extractvalue %dx.types.CBufRet.f32 %895, 1
  %898 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %899 = fsub fast float %413, %896
  %900 = fsub fast float %414, %897
  %901 = fsub fast float %415, %898
  %902 = fmul fast float %899, %899
  %903 = fmul fast float %900, %900
  %904 = fadd fast float %902, %903
  %905 = fmul fast float %901, %901
  %906 = fadd fast float %904, %905
  %907 = call float @dx.op.unary.f32(i32 24, float %906)  ; Sqrt(value)
  %908 = fsub fast float %907, %866
  %909 = fsub fast float %867, %866
  %910 = fdiv fast float %908, %909
  %911 = call float @dx.op.unary.f32(i32 7, float %910)  ; Saturate(value)
  %912 = fmul fast float %911, %911
  %913 = fmul fast float %912, %892
  br label %914

; <label>:914                                     ; preds = %894, %862, %842
  %915 = phi float [ 0.000000e+00, %842 ], [ %913, %894 ], [ %892, %862 ]
  %916 = fmul fast float %915, %610
  %917 = fadd fast float %916, %792
  br label %918

; <label>:918                                     ; preds = %914, %791
  %919 = phi float [ %917, %914 ], [ %792, %791 ]
  %920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %921 = extractvalue %dx.types.CBufRet.f32 %920, 1
  %922 = fcmp fast ogt float %919, %921
  br i1 %922, label %925, label %923, !dx.controlflow.hints !55

; <label>:923                                     ; preds = %918
  %924 = fadd fast float %610, %416
  br label %975

; <label>:925                                     ; preds = %918
  %926 = fmul fast float %919, 0xBFF7154760000000
  %927 = call float @dx.op.unary.f32(i32 21, float %926)  ; Exp(value)
  %928 = call float @dx.op.unary.f32(i32 7, float %927)  ; Saturate(value)
  %929 = fsub fast float 1.000000e+00, %928
  %930 = fdiv fast float %919, %610
  %931 = fadd fast float %610, %416
  %932 = fmul fast float %416, %416
  %933 = fmul fast float %931, %931
  %934 = fsub fast float %932, %933
  %935 = fmul fast float %934, -5.000000e-01
  %936 = fmul fast float %935, %930
  %937 = fadd fast float %936, %411
  %938 = fadd fast float %919, %419
  %939 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %940 = extractvalue %dx.types.CBufRet.i32 %939, 0
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %968, label %942, !dx.controlflow.hints !56

; <label>:942                                     ; preds = %925
  %943 = icmp ne i32 %424, 0
  %944 = zext i1 %943 to i32
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 2
  %947 = extractvalue %dx.types.CBufRet.f32 %945, 0
  %948 = fsub fast float %931, %947
  %949 = fmul fast float %948, %946
  %950 = call float @dx.op.unary.f32(i32 7, float %949)  ; Saturate(value)
  %951 = fadd fast float %950, -5.000000e-01
  %952 = fmul fast float %951, 2.000000e+00
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 2
  %955 = fcmp fast olt float %952, %954
  br i1 %955, label %956, label %968, !dx.controlflow.hints !57

; <label>:956                                     ; preds = %942
  %957 = fmul fast float %952, %952
  %958 = fmul fast float %929, %412
  %959 = fmul fast float %952, %958
  %960 = fmul fast float %957, %958
  %961 = fmul fast float %959, %957
  %962 = fmul fast float %957, %957
  %963 = fmul fast float %962, %958
  %964 = fadd fast float %959, %420
  %965 = fadd fast float %960, %421
  %966 = fadd fast float %961, %422
  %967 = fadd fast float %963, %423
  br label %968

; <label>:968                                     ; preds = %956, %942, %925
  %969 = phi float [ %420, %925 ], [ %964, %956 ], [ %420, %942 ]
  %970 = phi float [ %421, %925 ], [ %965, %956 ], [ %421, %942 ]
  %971 = phi float [ %422, %925 ], [ %966, %956 ], [ %422, %942 ]
  %972 = phi float [ %423, %925 ], [ %967, %956 ], [ %423, %942 ]
  %973 = phi i32 [ %424, %925 ], [ 1, %956 ], [ %944, %942 ]
  %974 = fmul fast float %928, %412
  br label %975

; <label>:975                                     ; preds = %968, %923
  %976 = phi float [ %924, %923 ], [ %931, %968 ]
  %977 = phi float [ %411, %923 ], [ %937, %968 ]
  %978 = phi float [ %412, %923 ], [ %974, %968 ]
  %979 = phi float [ %419, %923 ], [ %938, %968 ]
  %980 = phi float [ %420, %923 ], [ %969, %968 ]
  %981 = phi float [ %421, %923 ], [ %970, %968 ]
  %982 = phi float [ %422, %923 ], [ %971, %968 ]
  %983 = phi float [ %423, %923 ], [ %972, %968 ]
  %984 = phi i32 [ %424, %923 ], [ %973, %968 ]
  %985 = fmul fast float %610, %276
  %986 = fmul fast float %610, %277
  %987 = fmul fast float %610, %278
  %988 = fadd fast float %985, %413
  %989 = fadd fast float %986, %414
  %990 = fadd fast float %987, %415
  %991 = fcmp fast olt float %976, %386
  %992 = extractvalue %dx.types.CBufRet.f32 %920, 2
  %993 = fcmp fast olt float %992, %978
  %994 = and i1 %991, %993
  br i1 %994, label %406, label %995

; <label>:995                                     ; preds = %975
  %996 = uitofp i32 %425 to float
  br label %997

; <label>:997                                     ; preds = %995, %358
  %998 = phi float [ 0.000000e+00, %358 ], [ %977, %995 ]
  %999 = phi float [ 1.000000e+00, %358 ], [ %978, %995 ]
  %1000 = phi float [ 0.000000e+00, %358 ], [ %996, %995 ]
  %1001 = phi float [ 0.000000e+00, %358 ], [ %979, %995 ]
  %1002 = phi float [ 0.000000e+00, %358 ], [ %980, %995 ]
  %1003 = phi float [ 0.000000e+00, %358 ], [ %981, %995 ]
  %1004 = phi float [ 0.000000e+00, %358 ], [ %982, %995 ]
  %1005 = phi float [ 0.000000e+00, %358 ], [ %983, %995 ]
  %1006 = phi i32 [ 0, %358 ], [ %984, %995 ]
  %1007 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1008 = extractvalue %dx.types.CBufRet.i32 %1007, 0
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1051, label %1010, !dx.controlflow.hints !58

; <label>:1010                                    ; preds = %997
  %1011 = icmp eq i32 %1006, 0
  br i1 %1011, label %1050, label %1012, !dx.controlflow.hints !59

; <label>:1012                                    ; preds = %1010
  %1013 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1014 = extractvalue %dx.types.CBufRet.i32 %1013, 2
  %1015 = icmp eq i32 %1014, 0
  br i1 %1015, label %1022, label %1016, !dx.controlflow.hints !60

; <label>:1016                                    ; preds = %1012
  %1017 = fsub fast float 1.000000e+00, %999
  %1018 = fdiv fast float %1002, %1017
  %1019 = fdiv fast float %1003, %1017
  %1020 = fdiv fast float %1004, %1017
  %1021 = fdiv fast float %1005, %1017
  br label %1027

; <label>:1022                                    ; preds = %1012
  %1023 = fadd fast float %1002, %999
  %1024 = fadd fast float %1003, %999
  %1025 = fadd fast float %1004, %999
  %1026 = fadd fast float %1005, %999
  br label %1027

; <label>:1027                                    ; preds = %1022, %1016
  %1028 = phi float [ %1018, %1016 ], [ %1023, %1022 ]
  %1029 = phi float [ %1019, %1016 ], [ %1024, %1022 ]
  %1030 = phi float [ %1020, %1016 ], [ %1025, %1022 ]
  %1031 = phi float [ %1021, %1016 ], [ %1026, %1022 ]
  %1032 = call float @dx.op.binary.f32(i32 35, float %1028, float -1.000000e+00)  ; FMax(a,b)
  %1033 = call float @dx.op.binary.f32(i32 35, float %1029, float -1.000000e+00)  ; FMax(a,b)
  %1034 = call float @dx.op.binary.f32(i32 35, float %1030, float -1.000000e+00)  ; FMax(a,b)
  %1035 = call float @dx.op.binary.f32(i32 35, float %1031, float -1.000000e+00)  ; FMax(a,b)
  %1036 = call float @dx.op.binary.f32(i32 36, float %1032, float 1.000000e+00)  ; FMin(a,b)
  %1037 = call float @dx.op.binary.f32(i32 36, float %1033, float 1.000000e+00)  ; FMin(a,b)
  %1038 = call float @dx.op.binary.f32(i32 36, float %1034, float 1.000000e+00)  ; FMin(a,b)
  %1039 = call float @dx.op.binary.f32(i32 36, float %1035, float 1.000000e+00)  ; FMin(a,b)
  %1040 = fmul fast float %1036, 1.500000e+00
  %1041 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1038, float %1040)  ; FMad(a,b,c)
  %1042 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1037, float 0.000000e+00)  ; FMad(a,b,c)
  %1043 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1039, float %1042)  ; FMad(a,b,c)
  %1044 = fmul fast float %1036, 0x3FEBB67AE0000000
  %1045 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1038, float %1044)  ; FMad(a,b,c)
  %1046 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1037, float 0.000000e+00)  ; FMad(a,b,c)
  %1047 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1039, float %1046)  ; FMad(a,b,c)
  %1048 = fadd fast float %1041, 5.000000e-01
  %1049 = fadd fast float %1045, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %21, i32 %22, i32 0, float %1048, float %1043, float %1049, float %1047, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1051

; <label>:1050                                    ; preds = %1010
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %21, i32 %22, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1051

; <label>:1051                                    ; preds = %1050, %1027, %997
  %1052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.CBufRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.CBufRet.f32 %1052, 2
  %1056 = call float @dx.op.dot3.f32(i32 55, float %276, float %277, float %278, float %1053, float %1054, float %1055)  ; Dot3(ax,ay,az,bx,by,bz)
  %1057 = fmul fast float %1056, %998
  %1058 = fcmp fast ogt float %1001, 0.000000e+00
  %1059 = fdiv fast float 1.000000e+00, %1001
  %1060 = fmul fast float %1057, %1059
  %1061 = select i1 %1058, float %1060, float %287
  %1062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.f32 %1062, 0
  %1064 = extractvalue %dx.types.CBufRet.f32 %1062, 1
  %1065 = extractvalue %dx.types.CBufRet.f32 %1062, 2
  %1066 = fmul fast float %1063, %240
  %1067 = fmul fast float %1064, %240
  %1068 = fmul fast float %1065, %240
  %1069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1070 = extractvalue %dx.types.CBufRet.f32 %1069, 0
  %1071 = extractvalue %dx.types.CBufRet.f32 %1069, 1
  %1072 = extractvalue %dx.types.CBufRet.f32 %1069, 2
  %1073 = fmul fast float %1070, %241
  %1074 = fmul fast float %1071, %241
  %1075 = fmul fast float %1072, %241
  %1076 = fadd fast float %1073, %1066
  %1077 = fadd fast float %1074, %1067
  %1078 = fadd fast float %1075, %1068
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.CBufRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.CBufRet.f32 %1079, 2
  %1083 = fadd fast float %1076, %1080
  %1084 = fadd fast float %1077, %1081
  %1085 = fadd fast float %1078, %1082
  %1086 = fmul fast float %1083, %1061
  %1087 = fmul fast float %1084, %1061
  %1088 = fmul fast float %1085, %1061
  %1089 = call float @dx.op.dot3.f32(i32 55, float %1086, float %1087, float %1088, float %1086, float %1087, float %1088)  ; Dot3(ax,ay,az,bx,by,bz)
  %1090 = call float @dx.op.unary.f32(i32 25, float %1089)  ; Rsqrt(value)
  %1091 = fmul fast float %1090, %1089
  %1092 = fmul fast float %1090, %1086
  %1093 = fmul fast float %1090, %1087
  %1094 = fmul fast float %1090, %1088
  %1095 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1096 = extractvalue %dx.types.CBufRet.i32 %1095, 1
  %1097 = and i32 %1096, 1
  %1098 = icmp ne i32 %1097, 0
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 2
  %1101 = fcmp fast ogt float %1100, 0.000000e+00
  %1102 = and i1 %1098, %1101
  br i1 %1102, label %1103, label %1261, !dx.controlflow.hints !61

; <label>:1103                                    ; preds = %1051
  %1104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.f32 %1104, 2
  %1106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.f32 %1106, 2
  %1108 = fsub fast float %1105, %1107
  %1109 = extractvalue %dx.types.CBufRet.i32 %1095, 0
  %1110 = call i32 @dx.op.binary.i32(i32 40, i32 %1109, i32 3)  ; UMin(a,b)
  %1111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1112 = extractvalue %dx.types.CBufRet.f32 %1111, 0
  %1113 = extractvalue %dx.types.CBufRet.f32 %1111, 1
  %1114 = extractvalue %dx.types.CBufRet.f32 %1106, 0
  %1115 = extractvalue %dx.types.CBufRet.f32 %1106, 1
  %1116 = fsub fast float %1112, %1114
  %1117 = fsub fast float %1113, %1115
  %1118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.f32 %1118, 0
  %1120 = fcmp fast ogt float %1119, 0.000000e+00
  %1121 = fsub fast float -0.000000e+00, %1116
  %1122 = fsub fast float -0.000000e+00, %1117
  %1123 = call float @dx.op.dot2.f32(i32 54, float %1092, float %1093, float %1092, float %1093)  ; Dot2(ax,ay,bx,by)
  %1124 = call float @dx.op.dot2.f32(i32 54, float %1092, float %1093, float %1121, float %1122)  ; Dot2(ax,ay,bx,by)
  %1125 = fmul fast float %1124, 2.000000e+00
  %1126 = call float @dx.op.dot2.f32(i32 54, float %1121, float %1122, float %1121, float %1122)  ; Dot2(ax,ay,bx,by)
  %1127 = fmul fast float %1119, %1119
  %1128 = fsub fast float %1126, %1127
  %1129 = fmul fast float %1125, %1125
  %1130 = fmul fast float %1123, 4.000000e+00
  %1131 = fmul fast float %1130, %1128
  %1132 = fsub fast float %1129, %1131
  %1133 = fcmp fast ogt float %1132, 0.000000e+00
  br i1 %1133, label %1134, label %1149, !dx.controlflow.hints !62

; <label>:1134                                    ; preds = %1103
  %1135 = fcmp fast ogt float %1125, 0.000000e+00
  %1136 = call float @dx.op.unary.f32(i32 24, float %1132)  ; Sqrt(value)
  %1137 = fsub fast float -0.000000e+00, %1136
  %1138 = select i1 %1135, float %1136, float %1137
  %1139 = fadd fast float %1138, %1125
  %1140 = fmul float %1139, -5.000000e-01
  %1141 = fdiv fast float %1140, %1123
  %1142 = call float @dx.op.binary.f32(i32 35, float %1141, float 0.000000e+00)  ; FMax(a,b)
  %1143 = call float @dx.op.binary.f32(i32 36, float %1091, float %1142)  ; FMin(a,b)
  %1144 = fdiv fast float %1128, %1140
  %1145 = call float @dx.op.binary.f32(i32 35, float %1144, float 0.000000e+00)  ; FMax(a,b)
  %1146 = call float @dx.op.binary.f32(i32 36, float %1091, float %1145)  ; FMin(a,b)
  %1147 = call float @dx.op.binary.f32(i32 36, float %1143, float %1146)  ; FMin(a,b)
  %1148 = call float @dx.op.binary.f32(i32 35, float %1143, float %1146)  ; FMax(a,b)
  br label %1149

; <label>:1149                                    ; preds = %1134, %1103
  %1150 = phi float [ %1148, %1134 ], [ -1.000000e+00, %1103 ]
  %1151 = phi float [ %1147, %1134 ], [ -1.000000e+00, %1103 ]
  %1152 = phi i1 [ true, %1134 ], [ false, %1103 ]
  %1153 = and i1 %1120, %1152
  br i1 %1153, label %1154, label %1156, !dx.controlflow.hints !63

; <label>:1154                                    ; preds = %1149
  %1155 = fcmp fast oeq float %1151, %1150
  br i1 %1155, label %1261, label %1157, !dx.controlflow.hints !64

; <label>:1156                                    ; preds = %1149
  br i1 %1120, label %1261, label %1157, !dx.controlflow.hints !65

; <label>:1157                                    ; preds = %1156, %1154
  %1158 = phi float [ %1091, %1156 ], [ %1150, %1154 ]
  %1159 = phi float [ 0.000000e+00, %1156 ], [ %1151, %1154 ]
  %1160 = fcmp fast oeq float %1094, 0.000000e+00
  %1161 = fdiv fast float %1108, %1094
  %1162 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1161)  ; FMax(a,b)
  %1163 = select i1 %1160, float %1158, float %1162
  %1164 = call float @dx.op.binary.f32(i32 36, float %1158, float %1163)  ; FMin(a,b)
  %1165 = fcmp fast ogt float %1094, 0.000000e+00
  %1166 = fcmp fast olt float %1108, 0.000000e+00
  br i1 %1165, label %1167, label %1168, !dx.controlflow.hints !66

; <label>:1167                                    ; preds = %1157
  br i1 %1166, label %1261, label %1171, !dx.controlflow.hints !67

; <label>:1168                                    ; preds = %1157
  br i1 %1166, label %1169, label %1171, !dx.controlflow.hints !68

; <label>:1169                                    ; preds = %1168
  %1170 = call float @dx.op.binary.f32(i32 35, float %1159, float %1164)  ; FMax(a,b)
  br label %1171

; <label>:1171                                    ; preds = %1169, %1168, %1167
  %1172 = phi float [ %1170, %1169 ], [ %1159, %1168 ], [ %1159, %1167 ]
  %1173 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 0
  store float -1.000000e+00, float* %1173, align 4, !tbaa !69, !noalias !73
  %1174 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 1
  store float -1.000000e+00, float* %1174, align 4, !tbaa !69, !noalias !73
  %1175 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 2
  store float -1.000000e+00, float* %1175, align 4, !tbaa !69, !noalias !73
  %1176 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 0
  store float -1.000000e+00, float* %1176, align 4, !tbaa !69, !noalias !73
  %1177 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 1
  store float -1.000000e+00, float* %1177, align 4, !tbaa !69, !noalias !73
  %1178 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 2
  store float -1.000000e+00, float* %1178, align 4, !tbaa !69, !noalias !73
  %1179 = icmp sgt i32 %1110, 0
  br i1 %1179, label %1180, label %1238

; <label>:1180                                    ; preds = %1171
  br label %1181

; <label>:1181                                    ; preds = %1228, %1180
  %1182 = phi i32 [ %1229, %1228 ], [ 0, %1180 ]
  %1183 = add nuw i32 %1182, 171
  %1184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %1183)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1184, 0
  %1186 = extractvalue %dx.types.CBufRet.f32 %1184, 1
  %1187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1188 = extractvalue %dx.types.CBufRet.f32 %1187, 0
  %1189 = extractvalue %dx.types.CBufRet.f32 %1187, 1
  %1190 = fsub fast float %1185, %1188
  %1191 = fsub fast float %1186, %1189
  %1192 = extractvalue %dx.types.CBufRet.f32 %1184, 2
  %1193 = fsub fast float -0.000000e+00, %1190
  %1194 = fsub fast float -0.000000e+00, %1191
  %1195 = call float @dx.op.dot2.f32(i32 54, float %1092, float %1093, float %1193, float %1194)  ; Dot2(ax,ay,bx,by)
  %1196 = fmul fast float %1195, 2.000000e+00
  %1197 = call float @dx.op.dot2.f32(i32 54, float %1193, float %1194, float %1193, float %1194)  ; Dot2(ax,ay,bx,by)
  %1198 = fmul fast float %1192, %1192
  %1199 = fsub fast float %1197, %1198
  %1200 = fmul fast float %1196, %1196
  %1201 = fmul fast float %1130, %1199
  %1202 = fsub fast float %1200, %1201
  %1203 = fcmp fast ogt float %1202, 0.000000e+00
  br i1 %1203, label %1204, label %1219, !dx.controlflow.hints !62

; <label>:1204                                    ; preds = %1181
  %1205 = fcmp fast ogt float %1196, 0.000000e+00
  %1206 = call float @dx.op.unary.f32(i32 24, float %1202)  ; Sqrt(value)
  %1207 = fsub fast float -0.000000e+00, %1206
  %1208 = select i1 %1205, float %1206, float %1207
  %1209 = fadd fast float %1208, %1196
  %1210 = fmul float %1209, -5.000000e-01
  %1211 = fdiv fast float %1210, %1123
  %1212 = call float @dx.op.binary.f32(i32 35, float %1211, float 0.000000e+00)  ; FMax(a,b)
  %1213 = call float @dx.op.binary.f32(i32 36, float %1158, float %1212)  ; FMin(a,b)
  %1214 = fdiv fast float %1199, %1210
  %1215 = call float @dx.op.binary.f32(i32 35, float %1214, float 0.000000e+00)  ; FMax(a,b)
  %1216 = call float @dx.op.binary.f32(i32 36, float %1158, float %1215)  ; FMin(a,b)
  %1217 = call float @dx.op.binary.f32(i32 36, float %1213, float %1216)  ; FMin(a,b)
  %1218 = call float @dx.op.binary.f32(i32 35, float %1213, float %1216)  ; FMax(a,b)
  br label %1219

; <label>:1219                                    ; preds = %1204, %1181
  %1220 = phi float [ %1218, %1204 ], [ -1.000000e+00, %1181 ]
  %1221 = phi float [ %1217, %1204 ], [ -1.000000e+00, %1181 ]
  %1222 = phi i1 [ true, %1204 ], [ false, %1181 ]
  br i1 %1222, label %1223, label %1228, !dx.controlflow.hints !84

; <label>:1223                                    ; preds = %1219
  %1224 = call float @dx.op.binary.f32(i32 35, float %1172, float %1221)  ; FMax(a,b)
  %1225 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %1182
  store float %1224, float* %1225, align 4, !tbaa !69, !noalias !73
  %1226 = call float @dx.op.binary.f32(i32 35, float %1172, float %1220)  ; FMax(a,b)
  %1227 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %1182
  store float %1226, float* %1227, align 4, !tbaa !69, !noalias !73
  br label %1228

; <label>:1228                                    ; preds = %1223, %1219
  %1229 = add nuw nsw i32 %1182, 1
  %1230 = icmp eq i32 %1229, %1110
  br i1 %1230, label %1231, label %1181

; <label>:1231                                    ; preds = %1228
  %1232 = load float, float* %1175, align 4, !tbaa !69, !alias.scope !85, !noalias !88
  %1233 = load float, float* %1174, align 4, !tbaa !69, !alias.scope !91, !noalias !92
  %1234 = load float, float* %1173, align 4, !tbaa !69, !alias.scope !93, !noalias !94
  %1235 = load float, float* %1178, align 4, !tbaa !69, !alias.scope !95, !noalias !98
  %1236 = load float, float* %1177, align 4, !tbaa !69, !alias.scope !101, !noalias !102
  %1237 = load float, float* %1176, align 4, !tbaa !69, !alias.scope !103, !noalias !104
  br label %1238

; <label>:1238                                    ; preds = %1231, %1171
  %1239 = phi float [ -1.000000e+00, %1171 ], [ %1237, %1231 ]
  %1240 = phi float [ -1.000000e+00, %1171 ], [ %1236, %1231 ]
  %1241 = phi float [ -1.000000e+00, %1171 ], [ %1235, %1231 ]
  %1242 = phi float [ -1.000000e+00, %1171 ], [ %1234, %1231 ]
  %1243 = phi float [ -1.000000e+00, %1171 ], [ %1233, %1231 ]
  %1244 = phi float [ -1.000000e+00, %1171 ], [ %1232, %1231 ]
  %1245 = call float @dx.op.binary.f32(i32 36, float %1243, float %1244)  ; FMin(a,b)
  %1246 = call float @dx.op.binary.f32(i32 36, float %1242, float %1245)  ; FMin(a,b)
  %1247 = call float @dx.op.binary.f32(i32 35, float %1242, float %1243)  ; FMax(a,b)
  %1248 = call float @dx.op.binary.f32(i32 36, float %1247, float %1244)  ; FMin(a,b)
  %1249 = call float @dx.op.binary.f32(i32 36, float %1242, float %1243)  ; FMin(a,b)
  %1250 = call float @dx.op.binary.f32(i32 35, float %1249, float %1248)  ; FMax(a,b)
  %1251 = call float @dx.op.binary.f32(i32 35, float %1243, float %1244)  ; FMax(a,b)
  %1252 = call float @dx.op.binary.f32(i32 35, float %1242, float %1251)  ; FMax(a,b)
  store float %1246, float* %1173, align 4, !tbaa !69, !alias.scope !93, !noalias !94
  store float %1250, float* %1174, align 4, !tbaa !69, !alias.scope !91, !noalias !92
  store float %1252, float* %1175, align 4, !tbaa !69, !alias.scope !85, !noalias !88
  %1253 = call float @dx.op.binary.f32(i32 36, float %1240, float %1241)  ; FMin(a,b)
  %1254 = call float @dx.op.binary.f32(i32 36, float %1239, float %1253)  ; FMin(a,b)
  %1255 = call float @dx.op.binary.f32(i32 35, float %1239, float %1240)  ; FMax(a,b)
  %1256 = call float @dx.op.binary.f32(i32 36, float %1255, float %1241)  ; FMin(a,b)
  %1257 = call float @dx.op.binary.f32(i32 36, float %1239, float %1240)  ; FMin(a,b)
  %1258 = call float @dx.op.binary.f32(i32 35, float %1257, float %1256)  ; FMax(a,b)
  %1259 = call float @dx.op.binary.f32(i32 35, float %1240, float %1241)  ; FMax(a,b)
  %1260 = call float @dx.op.binary.f32(i32 35, float %1239, float %1259)  ; FMax(a,b)
  store float %1254, float* %1176, align 4, !tbaa !69, !alias.scope !103, !noalias !104
  store float %1258, float* %1177, align 4, !tbaa !69, !alias.scope !101, !noalias !102
  store float %1260, float* %1178, align 4, !tbaa !69, !alias.scope !95, !noalias !98
  br label %1261

; <label>:1261                                    ; preds = %1238, %1167, %1156, %1154, %1051
  %1262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1262, 2
  %1264 = fmul fast float %1263, %1061
  %1265 = call float @dx.op.unary.f32(i32 7, float %1264)  ; Saturate(value)
  %1266 = fptoui float %1000 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1267 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %23
  store i32 %1266, i32 addrspace(3)* %1267, align 4, !tbaa !105
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1268 = and i32 %23, 63
  %1269 = icmp ult i32 %1268, 32
  br i1 %1269, label %1270, label %1276, !dx.controlflow.hints !107

; <label>:1270                                    ; preds = %1261
  %1271 = add i32 %23, 32
  %1272 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1271
  %1273 = load i32, i32 addrspace(3)* %1272, align 4, !tbaa !105
  %1274 = load i32, i32 addrspace(3)* %1267, align 4, !tbaa !105
  %1275 = call i32 @dx.op.binary.i32(i32 40, i32 %1274, i32 %1273)  ; UMin(a,b)
  store i32 %1275, i32 addrspace(3)* %1267, align 4, !tbaa !105
  br label %1276

; <label>:1276                                    ; preds = %1270, %1261
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1277 = icmp ult i32 %1268, 16
  br i1 %1277, label %1278, label %1284, !dx.controlflow.hints !108

; <label>:1278                                    ; preds = %1276
  %1279 = add i32 %23, 16
  %1280 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1279
  %1281 = load i32, i32 addrspace(3)* %1280, align 4, !tbaa !105
  %1282 = load i32, i32 addrspace(3)* %1267, align 4, !tbaa !105
  %1283 = call i32 @dx.op.binary.i32(i32 40, i32 %1282, i32 %1281)  ; UMin(a,b)
  store i32 %1283, i32 addrspace(3)* %1267, align 4, !tbaa !105
  br label %1284

; <label>:1284                                    ; preds = %1278, %1276
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1285 = icmp ult i32 %1268, 8
  br i1 %1285, label %1286, label %1292, !dx.controlflow.hints !109

; <label>:1286                                    ; preds = %1284
  %1287 = add i32 %23, 8
  %1288 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1287
  %1289 = load i32, i32 addrspace(3)* %1288, align 4, !tbaa !105
  %1290 = load i32, i32 addrspace(3)* %1267, align 4, !tbaa !105
  %1291 = call i32 @dx.op.binary.i32(i32 40, i32 %1290, i32 %1289)  ; UMin(a,b)
  store i32 %1291, i32 addrspace(3)* %1267, align 4, !tbaa !105
  br label %1292

; <label>:1292                                    ; preds = %1286, %1284
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1293 = icmp ult i32 %1268, 4
  br i1 %1293, label %1294, label %1300, !dx.controlflow.hints !110

; <label>:1294                                    ; preds = %1292
  %1295 = add i32 %23, 4
  %1296 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1295
  %1297 = load i32, i32 addrspace(3)* %1296, align 4, !tbaa !105
  %1298 = load i32, i32 addrspace(3)* %1267, align 4, !tbaa !105
  %1299 = call i32 @dx.op.binary.i32(i32 40, i32 %1298, i32 %1297)  ; UMin(a,b)
  store i32 %1299, i32 addrspace(3)* %1267, align 4, !tbaa !105
  br label %1300

; <label>:1300                                    ; preds = %1294, %1292
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1301 = icmp ult i32 %1268, 2
  br i1 %1301, label %1302, label %1308, !dx.controlflow.hints !111

; <label>:1302                                    ; preds = %1300
  %1303 = add i32 %23, 2
  %1304 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1303
  %1305 = load i32, i32 addrspace(3)* %1304, align 4, !tbaa !105
  %1306 = load i32, i32 addrspace(3)* %1267, align 4, !tbaa !105
  %1307 = call i32 @dx.op.binary.i32(i32 40, i32 %1306, i32 %1305)  ; UMin(a,b)
  store i32 %1307, i32 addrspace(3)* %1267, align 4, !tbaa !105
  br label %1308

; <label>:1308                                    ; preds = %1302, %1300
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1309 = icmp eq i32 %1268, 0
  br i1 %1309, label %1310, label %1316, !dx.controlflow.hints !112

; <label>:1310                                    ; preds = %1308
  %1311 = add i32 %23, 1
  %1312 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1311
  %1313 = load i32, i32 addrspace(3)* %1312, align 4, !tbaa !105
  %1314 = load i32, i32 addrspace(3)* %1267, align 4, !tbaa !105
  %1315 = call i32 @dx.op.binary.i32(i32 40, i32 %1314, i32 %1313)  ; UMin(a,b)
  store i32 %1315, i32 addrspace(3)* %1267, align 4, !tbaa !105
  br label %1316

; <label>:1316                                    ; preds = %1310, %1308
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1317 = and i32 %23, -64
  %1318 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1317
  %1319 = load i32, i32 addrspace(3)* %1318, align 4, !tbaa !105
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1266, i32 addrspace(3)* %1267, align 4, !tbaa !105
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1269, label %1320, label %1326, !dx.controlflow.hints !113

; <label>:1320                                    ; preds = %1316
  %1321 = add i32 %23, 32
  %1322 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1321
  %1323 = load i32, i32 addrspace(3)* %1322, align 4, !tbaa !105
  %1324 = load i32, i32 addrspace(3)* %1267, align 4, !tbaa !105
  %1325 = call i32 @dx.op.binary.i32(i32 39, i32 %1324, i32 %1323)  ; UMax(a,b)
  store i32 %1325, i32 addrspace(3)* %1267, align 4, !tbaa !105
  br label %1326

; <label>:1326                                    ; preds = %1320, %1316
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1277, label %1327, label %1333, !dx.controlflow.hints !114

; <label>:1327                                    ; preds = %1326
  %1328 = add i32 %23, 16
  %1329 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1328
  %1330 = load i32, i32 addrspace(3)* %1329, align 4, !tbaa !105
  %1331 = load i32, i32 addrspace(3)* %1267, align 4, !tbaa !105
  %1332 = call i32 @dx.op.binary.i32(i32 39, i32 %1331, i32 %1330)  ; UMax(a,b)
  store i32 %1332, i32 addrspace(3)* %1267, align 4, !tbaa !105
  br label %1333

; <label>:1333                                    ; preds = %1327, %1326
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1285, label %1334, label %1340, !dx.controlflow.hints !115

; <label>:1334                                    ; preds = %1333
  %1335 = add i32 %23, 8
  %1336 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1335
  %1337 = load i32, i32 addrspace(3)* %1336, align 4, !tbaa !105
  %1338 = load i32, i32 addrspace(3)* %1267, align 4, !tbaa !105
  %1339 = call i32 @dx.op.binary.i32(i32 39, i32 %1338, i32 %1337)  ; UMax(a,b)
  store i32 %1339, i32 addrspace(3)* %1267, align 4, !tbaa !105
  br label %1340

; <label>:1340                                    ; preds = %1334, %1333
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1293, label %1341, label %1347, !dx.controlflow.hints !116

; <label>:1341                                    ; preds = %1340
  %1342 = add i32 %23, 4
  %1343 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1342
  %1344 = load i32, i32 addrspace(3)* %1343, align 4, !tbaa !105
  %1345 = load i32, i32 addrspace(3)* %1267, align 4, !tbaa !105
  %1346 = call i32 @dx.op.binary.i32(i32 39, i32 %1345, i32 %1344)  ; UMax(a,b)
  store i32 %1346, i32 addrspace(3)* %1267, align 4, !tbaa !105
  br label %1347

; <label>:1347                                    ; preds = %1341, %1340
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1301, label %1348, label %1354, !dx.controlflow.hints !117

; <label>:1348                                    ; preds = %1347
  %1349 = add i32 %23, 2
  %1350 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1349
  %1351 = load i32, i32 addrspace(3)* %1350, align 4, !tbaa !105
  %1352 = load i32, i32 addrspace(3)* %1267, align 4, !tbaa !105
  %1353 = call i32 @dx.op.binary.i32(i32 39, i32 %1352, i32 %1351)  ; UMax(a,b)
  store i32 %1353, i32 addrspace(3)* %1267, align 4, !tbaa !105
  br label %1354

; <label>:1354                                    ; preds = %1348, %1347
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1309, label %1355, label %1361, !dx.controlflow.hints !118

; <label>:1355                                    ; preds = %1354
  %1356 = add i32 %23, 1
  %1357 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1356
  %1358 = load i32, i32 addrspace(3)* %1357, align 4, !tbaa !105
  %1359 = load i32, i32 addrspace(3)* %1267, align 4, !tbaa !105
  %1360 = call i32 @dx.op.binary.i32(i32 39, i32 %1359, i32 %1358)  ; UMax(a,b)
  store i32 %1360, i32 addrspace(3)* %1267, align 4, !tbaa !105
  br label %1361

; <label>:1361                                    ; preds = %1355, %1354
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1362 = load i32, i32 addrspace(3)* %1318, align 4, !tbaa !105
  %1363 = uitofp i32 %1362 to float
  %1364 = uitofp i32 %1319 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %21, i32 %22, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1366 = extractvalue %dx.types.CBufRet.f32 %1365, 0
  %1367 = fmul fast float %1366, %1000
  %1368 = fmul fast float %1366, %1363
  %1369 = fmul fast float %1366, %1364
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %21, i32 %22, i32 undef, float %1367, float %1368, float %1369, float %1367, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %21, i32 %22, i32 undef, float %1265, float %1265, float %1265, float %1265, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #3

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
!dx.entryPoints = !{!32}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !17, !23, !26}
!5 = !{!6, !8, !9, !10, !11, !12, !14, !15, !16}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !13}
!13 = !{i32 1, i32 164}
!14 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!15 = !{i32 7, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!16 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!17 = !{!18, !19, !20, !21}
!18 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!19 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!20 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!21 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !22}
!22 = !{i32 0, i32 14}
!23 = !{!24, !25}
!24 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!25 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!26 = !{!27, !28, !29, !30, !31}
!27 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!28 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!29 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!30 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!31 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!32 = !{void ()* @cs_fog_raymarching_clouds_particles, !"cs_fog_raymarching_clouds_particles", null, !4, !33}
!33 = !{i32 0, i64 272, i32 4, !34}
!34 = !{i32 8, i32 8, i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
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

