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
; shader hash: 615f76ca28e6e33aa08e7fe77cddff25
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

define void @cs_fog_raymarching_air_clouds_particles() {
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
  %234 = fsub fast float -0.000000e+00, %233
  %235 = extractvalue %dx.types.CBufRet.f32 %232, 1
  %236 = fsub fast float -0.000000e+00, %235
  %237 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 1
  %240 = fmul fast float %230, 2.000000e+00
  %241 = fmul fast float %231, 2.000000e+00
  %242 = fsub fast float 1.000000e+00, %240
  %243 = fsub fast float 1.000000e+00, %241
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 0
  %246 = extractvalue %dx.types.CBufRet.f32 %244, 1
  %247 = extractvalue %dx.types.CBufRet.f32 %244, 2
  %248 = fmul fast float %245, %242
  %249 = fmul fast float %246, %242
  %250 = fmul fast float %247, %242
  %251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.f32 %251, 0
  %253 = extractvalue %dx.types.CBufRet.f32 %251, 1
  %254 = extractvalue %dx.types.CBufRet.f32 %251, 2
  %255 = fmul fast float %252, %243
  %256 = fmul fast float %253, %243
  %257 = fmul fast float %254, %243
  %258 = fadd fast float %255, %248
  %259 = fadd fast float %256, %249
  %260 = fadd fast float %257, %250
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 0
  %263 = extractvalue %dx.types.CBufRet.f32 %261, 1
  %264 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %265 = fadd fast float %258, %262
  %266 = fadd fast float %259, %263
  %267 = fadd fast float %260, %264
  %268 = fmul fast float %265, %239
  %269 = fmul fast float %266, %239
  %270 = fmul fast float %267, %239
  %271 = fmul fast float %268, %268
  %272 = fmul fast float %269, %269
  %273 = fadd fast float %271, %272
  %274 = fmul fast float %270, %270
  %275 = fadd fast float %273, %274
  %276 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %277 = fdiv fast float 1.000000e+00, %276
  %278 = fmul fast float %268, %277
  %279 = fmul fast float %269, %277
  %280 = fmul fast float %270, %277
  %281 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %36, i32 %37, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 0
  %283 = fcmp fast ogt float %282, -1.000000e+00
  %284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.f32 %284, 1
  %286 = select i1 %283, float %285, float 1.000000e+00
  %287 = fadd fast float %282, 1.000000e+00
  %288 = fmul fast float %286, %287
  %289 = call float @dx.op.unary.f32(i32 6, float %288)  ; FAbs(value)
  %290 = fdiv fast float 1.000000e+00, %239
  %291 = fmul fast float %290, %276
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 1
  %294 = fmul fast float %293, %291
  %295 = fmul fast float %291, %289
  %296 = extractvalue %dx.types.CBufRet.f32 %284, 3
  %297 = fcmp fast oge float %289, %296
  %298 = call float @dx.op.binary.f32(i32 36, float %295, float %294)  ; FMin(a,b)
  %299 = select i1 %297, float %294, float %298
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 3
  %302 = fsub fast float %301, %237
  %303 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %234, float %236, float %302)  ; Dot3(ax,ay,az,bx,by,bz)
  %304 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %278, float %279, float %280)  ; Dot3(ax,ay,az,bx,by,bz)
  %305 = fdiv fast float 1.000000e+00, %304
  %306 = fmul fast float %305, %303
  %307 = fcmp fast olt float %306, 0.000000e+00
  %308 = fcmp fast ogt float %280, 0.000000e+00
  %309 = and i1 %308, %307
  br i1 %309, label %314, label %310, !dx.controlflow.hints !36

; <label>:310                                     ; preds = %205
  %311 = fcmp fast olt float %280, 0.000000e+00
  br i1 %311, label %312, label %314, !dx.controlflow.hints !37

; <label>:312                                     ; preds = %310
  %313 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %306)  ; FMax(a,b)
  br label %314

; <label>:314                                     ; preds = %312, %310, %205
  %315 = phi float [ 0.000000e+00, %205 ], [ %313, %312 ], [ 0.000000e+00, %310 ]
  %316 = phi float [ 0.000000e+00, %205 ], [ 0x47EFFFFFE0000000, %312 ], [ %306, %310 ]
  %317 = fcmp fast oeq float %316, 0.000000e+00
  br i1 %317, label %321, label %318, !dx.controlflow.hints !38

; <label>:318                                     ; preds = %314
  %319 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %315)  ; FMin(a,b)
  %320 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %316)  ; FMax(a,b)
  br label %321

; <label>:321                                     ; preds = %318, %314
  %322 = phi i32 [ 1, %318 ], [ 0, %314 ]
  %323 = phi float [ %320, %318 ], [ -1.000000e+00, %314 ]
  %324 = phi float [ %319, %318 ], [ 0x47EFFFFFE0000000, %314 ]
  %325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.i32 %325, 3
  %327 = icmp eq i32 %326, 0
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 2
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 2
  %332 = fsub fast float %329, %237
  %333 = fadd fast float %332, %331
  br i1 %327, label %341, label %334, !dx.controlflow.hints !39

; <label>:334                                     ; preds = %321
  %335 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %234, float %236, float %333)  ; Dot3(ax,ay,az,bx,by,bz)
  %336 = fmul fast float %305, %335
  %337 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %234, float %236, float %332)  ; Dot3(ax,ay,az,bx,by,bz)
  %338 = fmul fast float %305, %337
  %339 = call float @dx.op.binary.f32(i32 36, float %336, float %338)  ; FMin(a,b)
  %340 = call float @dx.op.binary.f32(i32 35, float %336, float %338)  ; FMax(a,b)
  br label %374

; <label>:341                                     ; preds = %321
  %342 = fdiv fast float 1.000000e+00, %278
  %343 = fdiv fast float 1.000000e+00, %279
  %344 = fdiv fast float 1.000000e+00, %280
  %345 = extractvalue %dx.types.CBufRet.f32 %328, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %328, 1
  %347 = extractvalue %dx.types.CBufRet.f32 %330, 0
  %348 = extractvalue %dx.types.CBufRet.f32 %330, 1
  %349 = fsub fast float %345, %233
  %350 = fmul fast float %349, %342
  %351 = fadd fast float %349, %347
  %352 = fmul fast float %351, %342
  %353 = call float @dx.op.binary.f32(i32 36, float %350, float %352)  ; FMin(a,b)
  %354 = call float @dx.op.binary.f32(i32 35, float %350, float %352)  ; FMax(a,b)
  %355 = fsub fast float %346, %235
  %356 = fmul fast float %355, %343
  %357 = fadd fast float %355, %348
  %358 = fmul fast float %357, %343
  %359 = call float @dx.op.binary.f32(i32 36, float %356, float %358)  ; FMin(a,b)
  %360 = call float @dx.op.binary.f32(i32 35, float %353, float %359)  ; FMax(a,b)
  %361 = call float @dx.op.binary.f32(i32 35, float %356, float %358)  ; FMax(a,b)
  %362 = call float @dx.op.binary.f32(i32 36, float %354, float %361)  ; FMin(a,b)
  %363 = fmul fast float %332, %344
  %364 = fmul fast float %333, %344
  %365 = call float @dx.op.binary.f32(i32 36, float %363, float %364)  ; FMin(a,b)
  %366 = call float @dx.op.binary.f32(i32 35, float %360, float %365)  ; FMax(a,b)
  %367 = call float @dx.op.binary.f32(i32 35, float %363, float %364)  ; FMax(a,b)
  %368 = call float @dx.op.binary.f32(i32 36, float %362, float %367)  ; FMin(a,b)
  %369 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %366)  ; FMax(a,b)
  %370 = fcmp fast ult float %368, %369
  br i1 %370, label %374, label %371, !dx.controlflow.hints !40

; <label>:371                                     ; preds = %341
  %372 = call float @dx.op.binary.f32(i32 36, float %366, float %368)  ; FMin(a,b)
  %373 = call float @dx.op.binary.f32(i32 35, float %366, float %368)  ; FMax(a,b)
  br label %374

; <label>:374                                     ; preds = %371, %341, %334
  %375 = phi float [ %339, %334 ], [ %372, %371 ], [ 0.000000e+00, %341 ]
  %376 = phi float [ %340, %334 ], [ %373, %371 ], [ 0.000000e+00, %341 ]
  %377 = fcmp fast oeq float %376, 0.000000e+00
  br i1 %377, label %381, label %378, !dx.controlflow.hints !41

; <label>:378                                     ; preds = %374
  %379 = call float @dx.op.binary.f32(i32 36, float %324, float %375)  ; FMin(a,b)
  %380 = call float @dx.op.binary.f32(i32 35, float %323, float %376)  ; FMax(a,b)
  br label %381

; <label>:381                                     ; preds = %378, %374
  %382 = phi i32 [ 1, %378 ], [ 0, %374 ]
  %383 = phi float [ %380, %378 ], [ %323, %374 ]
  %384 = phi float [ %379, %378 ], [ %324, %374 ]
  %385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.f32 %385, 3
  %387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %388 = extractvalue %dx.types.CBufRet.f32 %387, 0
  %389 = fsub fast float %386, %237
  %390 = fadd fast float %389, %388
  %391 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %234, float %236, float %390)  ; Dot3(ax,ay,az,bx,by,bz)
  %392 = fmul fast float %305, %391
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.f32 %393, 2
  %395 = fsub fast float %394, %237
  %396 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %234, float %236, float %395)  ; Dot3(ax,ay,az,bx,by,bz)
  %397 = fmul fast float %305, %396
  %398 = call float @dx.op.binary.f32(i32 36, float %392, float %397)  ; FMin(a,b)
  %399 = call float @dx.op.binary.f32(i32 35, float %392, float %397)  ; FMax(a,b)
  %400 = call float @dx.op.binary.f32(i32 36, float %384, float %398)  ; FMin(a,b)
  %401 = call float @dx.op.binary.f32(i32 35, float %383, float %399)  ; FMax(a,b)
  %402 = fdiv fast float 1.000000e+00, %278
  %403 = fdiv fast float 1.000000e+00, %279
  %404 = fdiv fast float 1.000000e+00, %280
  %405 = call float @dx.op.binary.f32(i32 36, float %299, float %401)  ; FMin(a,b)
  %406 = call float @dx.op.binary.f32(i32 35, float %276, float %400)  ; FMax(a,b)
  %407 = extractvalue %dx.types.CBufRet.f32 %300, 0
  %408 = fmul fast float %222, 2.000000e+00
  %409 = fadd fast float %408, -1.000000e+00
  %410 = fmul fast float %407, %409
  %411 = fadd fast float %410, %406
  %412 = fcmp fast olt float %411, %405
  %413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.f32 %413, 2
  %415 = fcmp fast olt float %414, 1.000000e+00
  %416 = and i1 %415, %412
  br i1 %416, label %417, label %1080

; <label>:417                                     ; preds = %381
  %418 = fmul fast float %411, %280
  %419 = fadd fast float %418, %237
  %420 = fmul fast float %411, %279
  %421 = fadd fast float %420, %235
  %422 = fmul fast float %411, %278
  %423 = fadd fast float %422, %233
  br label %424

; <label>:424                                     ; preds = %1058, %417
  %425 = phi float [ %550, %1058 ], [ undef, %417 ]
  %426 = phi float [ %551, %1058 ], [ undef, %417 ]
  %427 = phi float [ %552, %1058 ], [ undef, %417 ]
  %428 = phi float [ %553, %1058 ], [ undef, %417 ]
  %429 = phi float [ %1060, %1058 ], [ 0.000000e+00, %417 ]
  %430 = phi float [ %1061, %1058 ], [ 1.000000e+00, %417 ]
  %431 = phi float [ %1071, %1058 ], [ %423, %417 ]
  %432 = phi float [ %1072, %1058 ], [ %421, %417 ]
  %433 = phi float [ %1073, %1058 ], [ %419, %417 ]
  %434 = phi float [ %1059, %1058 ], [ %411, %417 ]
  %435 = phi i32 [ %445, %1058 ], [ 0, %417 ]
  %436 = phi i32 [ %555, %1058 ], [ 10, %417 ]
  %437 = phi float [ %1062, %1058 ], [ 0.000000e+00, %417 ]
  %438 = phi float [ %1063, %1058 ], [ 0.000000e+00, %417 ]
  %439 = phi float [ %1064, %1058 ], [ 0.000000e+00, %417 ]
  %440 = phi float [ %1065, %1058 ], [ 0.000000e+00, %417 ]
  %441 = phi float [ %1066, %1058 ], [ 0.000000e+00, %417 ]
  %442 = phi i32 [ %1067, %1058 ], [ 0, %417 ]
  %443 = fsub fast float -0.000000e+00, %432
  %444 = fsub fast float -0.000000e+00, %431
  %445 = add i32 %435, 1
  %446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.f32 %446, 0
  %448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.f32 %448, 0
  %450 = extractvalue %dx.types.CBufRet.f32 %448, 1
  %451 = fsub fast float %431, %449
  %452 = fsub fast float %432, %450
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 2
  %455 = extractvalue %dx.types.CBufRet.f32 %453, 3
  %456 = fmul fast float %451, %454
  %457 = fmul fast float %452, %455
  %458 = call float @dx.op.binary.f32(i32 36, float %456, float %457)  ; FMin(a,b)
  %459 = fcmp fast olt float %458, 0.000000e+00
  %460 = call float @dx.op.binary.f32(i32 35, float %456, float %457)  ; FMax(a,b)
  %461 = fcmp fast ogt float %460, 1.000000e+00
  %462 = or i1 %459, %461
  %463 = extractvalue %dx.types.CBufRet.f32 %448, 2
  %464 = fcmp fast olt float %433, %463
  %465 = or i1 %462, %464
  %466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.f32 %466, 3
  %468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %469 = extractvalue %dx.types.CBufRet.f32 %468, 0
  %470 = fadd fast float %469, %467
  %471 = fcmp fast ogt float %433, %470
  %472 = or i1 %465, %471
  br i1 %472, label %473, label %502, !dx.controlflow.hints !42

; <label>:473                                     ; preds = %424
  %474 = extractvalue %dx.types.CBufRet.f32 %453, 0
  %475 = extractvalue %dx.types.CBufRet.f32 %453, 1
  %476 = fsub fast float %449, %431
  %477 = fmul fast float %476, %402
  %478 = fadd fast float %476, %474
  %479 = fmul fast float %478, %402
  %480 = call float @dx.op.binary.f32(i32 36, float %477, float %479)  ; FMin(a,b)
  %481 = call float @dx.op.binary.f32(i32 35, float %477, float %479)  ; FMax(a,b)
  %482 = fsub fast float %450, %432
  %483 = fmul fast float %482, %403
  %484 = fadd fast float %482, %475
  %485 = fmul fast float %484, %403
  %486 = call float @dx.op.binary.f32(i32 36, float %483, float %485)  ; FMin(a,b)
  %487 = call float @dx.op.binary.f32(i32 35, float %480, float %486)  ; FMax(a,b)
  %488 = call float @dx.op.binary.f32(i32 35, float %483, float %485)  ; FMax(a,b)
  %489 = call float @dx.op.binary.f32(i32 36, float %481, float %488)  ; FMin(a,b)
  %490 = fsub fast float %463, %433
  %491 = fmul fast float %490, %404
  %492 = fsub fast float %467, %433
  %493 = fadd fast float %492, %469
  %494 = fmul fast float %493, %404
  %495 = call float @dx.op.binary.f32(i32 36, float %491, float %494)  ; FMin(a,b)
  %496 = call float @dx.op.binary.f32(i32 35, float %487, float %495)  ; FMax(a,b)
  %497 = call float @dx.op.binary.f32(i32 35, float %491, float %494)  ; FMax(a,b)
  %498 = call float @dx.op.binary.f32(i32 36, float %489, float %497)  ; FMin(a,b)
  %499 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %496)  ; FMax(a,b)
  %500 = fcmp fast oge float %498, %499
  %501 = select i1 %500, float %496, float 1.000000e+07
  br label %548

; <label>:502                                     ; preds = %424
  %503 = fsub fast float 1.000000e+00, %457
  %504 = icmp eq i32 %436, 0
  br i1 %504, label %533, label %505

; <label>:505                                     ; preds = %502
  br label %506

; <label>:506                                     ; preds = %529, %505
  %507 = phi i32 [ %530, %529 ], [ %436, %505 ]
  %508 = uitofp i32 %507 to float
  %509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %456, float %503, float undef, float undef, i32 0, i32 0, i32 undef, float %508)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = extractvalue %dx.types.ResRet.f32 %509, 1
  %512 = extractvalue %dx.types.ResRet.f32 %509, 2
  %513 = fcmp fast oeq float %510, 0.000000e+00
  %514 = fcmp ule float %433, %512
  %515 = fcmp uge float %433, %511
  %516 = or i1 %515, %514
  %517 = or i1 %513, %516
  br i1 %517, label %518, label %529, !dx.controlflow.hints !43

; <label>:518                                     ; preds = %506
  %519 = extractvalue %dx.types.ResRet.f32 %509, 3
  %520 = extractvalue %dx.types.CBufRet.f32 %453, 0
  %521 = and i32 %507, 31
  %522 = lshr i32 1024, %521
  %523 = uitofp i32 %522 to float
  %524 = fdiv fast float %520, %523
  %525 = add i32 %507, 1
  %526 = uitofp i32 %525 to float
  %527 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %526)  ; FMin(a,b)
  %528 = fptosi float %527 to i32
  br label %548

; <label>:529                                     ; preds = %506
  %530 = add i32 %507, -1
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %532, label %506, !llvm.loop !44

; <label>:532                                     ; preds = %529
  br label %533

; <label>:533                                     ; preds = %532, %502
  %534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %456, float %503, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = extractvalue %dx.types.ResRet.f32 %534, 1
  %537 = extractvalue %dx.types.ResRet.f32 %534, 2
  %538 = extractvalue %dx.types.ResRet.f32 %534, 3
  %539 = extractvalue %dx.types.CBufRet.f32 %453, 0
  %540 = fmul fast float %539, 9.765625e-04
  %541 = fcmp fast oeq float %535, 0.000000e+00
  %542 = fcmp ule float %433, %537
  %543 = fcmp uge float %433, %536
  %544 = or i1 %543, %542
  %545 = or i1 %541, %544
  %546 = zext i1 %545 to i32
  %547 = xor i32 %546, 1
  br label %548

; <label>:548                                     ; preds = %533, %518, %473
  %549 = phi float [ %501, %473 ], [ %524, %518 ], [ %540, %533 ]
  %550 = phi float [ %425, %473 ], [ %510, %518 ], [ %535, %533 ]
  %551 = phi float [ %426, %473 ], [ %511, %518 ], [ %536, %533 ]
  %552 = phi float [ %427, %473 ], [ %512, %518 ], [ %537, %533 ]
  %553 = phi float [ %428, %473 ], [ %519, %518 ], [ %538, %533 ]
  %554 = phi i32 [ 0, %473 ], [ 0, %518 ], [ %547, %533 ]
  %555 = phi i32 [ 10, %473 ], [ %528, %518 ], [ 1, %533 ]
  %556 = icmp eq i32 %554, 0
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 2
  %559 = call float @dx.op.binary.f32(i32 35, float %549, float %558)  ; FMax(a,b)
  %560 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %559)  ; FMin(a,b)
  %561 = icmp eq i32 %322, 0
  br i1 %561, label %574, label %562, !dx.controlflow.hints !46

; <label>:562                                     ; preds = %548
  %563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.f32 %563, 3
  %565 = extractvalue %dx.types.CBufRet.f32 %563, 2
  %566 = fmul fast float %564, %434
  %567 = fdiv fast float %566, %405
  %568 = fadd fast float %567, 1.000000e+00
  %569 = call float @dx.op.unary.f32(i32 23, float %568)  ; Log(value)
  %570 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %569)  ; FMin(a,b)
  %571 = fmul fast float %565, %405
  %572 = fmul fast float %571, %570
  %573 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %572)  ; FMin(a,b)
  br label %574

; <label>:574                                     ; preds = %562, %548
  %575 = phi float [ %573, %562 ], [ 0x47EFFFFFE0000000, %548 ]
  %576 = icmp eq i32 %382, 0
  br i1 %576, label %632, label %577, !dx.controlflow.hints !47

; <label>:577                                     ; preds = %574
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 0
  %580 = extractvalue %dx.types.CBufRet.f32 %578, 1
  %581 = extractvalue %dx.types.CBufRet.f32 %578, 2
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %584 = extractvalue %dx.types.CBufRet.f32 %582, 1
  %585 = extractvalue %dx.types.CBufRet.f32 %582, 2
  %586 = fsub fast float %431, %583
  %587 = fsub fast float %432, %584
  %588 = fsub fast float %433, %585
  %589 = fmul fast float %586, %579
  %590 = fmul fast float %587, %580
  %591 = fmul fast float %588, %581
  %592 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.i32 %592, 3
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %598, label %595, !dx.controlflow.hints !48

; <label>:595                                     ; preds = %577
  %596 = call float @dx.op.unary.f32(i32 22, float %589)  ; Frc(value)
  %597 = call float @dx.op.unary.f32(i32 22, float %590)  ; Frc(value)
  br label %598

; <label>:598                                     ; preds = %595, %577
  %599 = phi float [ %596, %595 ], [ %589, %577 ]
  %600 = phi float [ %597, %595 ], [ %590, %577 ]
  %601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %599, float %600, float %591, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = fmul fast float %602, 2.000000e+00
  %604 = fadd fast float %603, -1.000000e+00
  %605 = extractvalue %dx.types.CBufRet.f32 %578, 3
  %606 = fmul fast float %604, %605
  %607 = fcmp fast olt float %606, 0.000000e+00
  %608 = fcmp fast oge float %591, 0.000000e+00
  %609 = fcmp fast ole float %591, 1.000000e+00
  br i1 %594, label %612, label %610, !dx.controlflow.hints !49

; <label>:610                                     ; preds = %598
  %611 = and i1 %608, %609
  br label %622

; <label>:612                                     ; preds = %598
  %613 = fcmp fast oge float %589, 0.000000e+00
  %614 = fcmp fast oge float %590, 0.000000e+00
  %615 = and i1 %613, %614
  %616 = and i1 %608, %615
  %617 = fcmp fast ole float %589, 1.000000e+00
  %618 = fcmp fast ole float %590, 1.000000e+00
  %619 = and i1 %617, %618
  %620 = and i1 %609, %619
  %621 = and i1 %616, %620
  br label %622

; <label>:622                                     ; preds = %612, %610
  %623 = phi i1 [ %611, %610 ], [ %621, %612 ]
  %624 = and i1 %607, %623
  %625 = call float @dx.op.unary.f32(i32 6, float %606)  ; FAbs(value)
  %626 = extractvalue %dx.types.CBufRet.f32 %557, 1
  %627 = extractvalue %dx.types.CBufRet.f32 %557, 0
  %628 = call float @dx.op.binary.f32(i32 35, float %625, float %627)  ; FMax(a,b)
  %629 = select i1 %624, float %626, float %628
  %630 = zext i1 %624 to i32
  %631 = call float @dx.op.binary.f32(i32 36, float %560, float %629)  ; FMin(a,b)
  br label %632

; <label>:632                                     ; preds = %622, %574
  %633 = phi i32 [ %630, %622 ], [ 0, %574 ]
  %634 = phi float [ %631, %622 ], [ %560, %574 ]
  %635 = extractvalue %dx.types.CBufRet.f32 %446, 2
  %636 = fmul fast float %635, %434
  %637 = call float @dx.op.unary.f32(i32 23, float %636)  ; Log(value)
  %638 = fmul fast float %637, 0x3FE62E4300000000
  %639 = call float @dx.op.binary.f32(i32 35, float %638, float 1.000000e+00)  ; FMax(a,b)
  %640 = fmul fast float %639, %575
  %641 = call float @dx.op.binary.f32(i32 36, float %640, float %634)  ; FMin(a,b)
  %642 = call float @dx.op.binary.f32(i32 35, float %641, float %447)  ; FMax(a,b)
  %643 = fadd fast float %405, 0x3F1A36E2E0000000
  %644 = fsub fast float %643, %434
  %645 = call float @dx.op.binary.f32(i32 36, float %644, float %642)  ; FMin(a,b)
  br i1 %561, label %691, label %646, !dx.controlflow.hints !50

; <label>:646                                     ; preds = %632
  %647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %648 = extractvalue %dx.types.CBufRet.f32 %647, 0
  %649 = fsub fast float %648, %433
  %650 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %444, float %443, float %649)  ; Dot3(ax,ay,az,bx,by,bz)
  %651 = fmul fast float %305, %650
  %652 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %651)  ; FMax(a,b)
  %653 = fcmp fast olt float %280, 0.000000e+00
  %654 = call float @dx.op.binary.f32(i32 36, float %645, float %652)  ; FMin(a,b)
  br i1 %653, label %656, label %655, !dx.controlflow.hints !51

; <label>:655                                     ; preds = %646
  br label %656

; <label>:656                                     ; preds = %655, %646
  %657 = phi float [ 0.000000e+00, %655 ], [ %654, %646 ]
  %658 = phi float [ %654, %655 ], [ %645, %646 ]
  %659 = phi float [ %654, %655 ], [ 0.000000e+00, %646 ]
  %660 = phi float [ %645, %655 ], [ %654, %646 ]
  %661 = fsub fast float %658, %657
  %662 = extractvalue %dx.types.CBufRet.f32 %647, 1
  %663 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %662)  ; FMin(a,b)
  %664 = fsub fast float %433, %648
  %665 = fmul fast float %663, 0x3FF7154760000000
  %666 = fmul fast float %665, %664
  %667 = call float @dx.op.unary.f32(i32 21, float %666)  ; Exp(value)
  %668 = fmul fast float %280, 0x3FF7154760000000
  %669 = fmul fast float %668, %660
  %670 = fmul fast float %669, %663
  %671 = call float @dx.op.unary.f32(i32 21, float %670)  ; Exp(value)
  %672 = fmul fast float %668, %659
  %673 = fmul fast float %672, %663
  %674 = call float @dx.op.unary.f32(i32 21, float %673)  ; Exp(value)
  %675 = fsub fast float %671, %674
  %676 = fmul fast float %675, %667
  %677 = fmul fast float %663, %280
  %678 = fdiv fast float %676, %677
  %679 = fadd fast float %661, %678
  %680 = call float @dx.op.unary.f32(i32 6, float %280)  ; FAbs(value)
  %681 = fcmp fast olt float %680, 0x3F0FFB4800000000
  %682 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %664)  ; FMax(a,b)
  %683 = fmul fast float %682, 0x3FF7154760000000
  %684 = fmul fast float %683, %662
  %685 = call float @dx.op.unary.f32(i32 21, float %684)  ; Exp(value)
  %686 = fmul fast float %685, %645
  %687 = select i1 %681, float %686, float %679
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 1
  %690 = fmul fast float %687, %689
  br label %691

; <label>:691                                     ; preds = %656, %632
  %692 = phi float [ %690, %656 ], [ 0.000000e+00, %632 ]
  %693 = icmp eq i32 %633, 0
  br i1 %693, label %874, label %694, !dx.controlflow.hints !52

; <label>:694                                     ; preds = %691
  %695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %696 = extractvalue %dx.types.CBufRet.f32 %695, 3
  %697 = fmul fast float %696, %434
  %698 = fcmp fast oeq float %697, 0.000000e+00
  br i1 %698, label %713, label %699, !dx.controlflow.hints !53

; <label>:699                                     ; preds = %694
  %700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %701 = extractvalue %dx.types.CBufRet.f32 %700, 3
  %702 = fmul fast float %701, %697
  %703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %704 = extractvalue %dx.types.CBufRet.f32 %703, 0
  %705 = extractvalue %dx.types.CBufRet.f32 %703, 1
  %706 = extractvalue %dx.types.CBufRet.f32 %703, 2
  %707 = fmul fast float %704, %702
  %708 = fmul fast float %705, %702
  %709 = fmul fast float %706, %702
  %710 = call float @dx.op.unary.f32(i32 23, float %707)  ; Log(value)
  %711 = call float @dx.op.unary.f32(i32 23, float %708)  ; Log(value)
  %712 = call float @dx.op.unary.f32(i32 23, float %709)  ; Log(value)
  br label %713

; <label>:713                                     ; preds = %699, %694
  %714 = phi float [ %710, %699 ], [ 0.000000e+00, %694 ]
  %715 = phi float [ %711, %699 ], [ 0.000000e+00, %694 ]
  %716 = phi float [ %712, %699 ], [ 0.000000e+00, %694 ]
  %717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %718 = extractvalue %dx.types.CBufRet.f32 %717, 0
  %719 = extractvalue %dx.types.CBufRet.f32 %717, 1
  %720 = extractvalue %dx.types.CBufRet.f32 %717, 2
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 0
  %723 = extractvalue %dx.types.CBufRet.f32 %721, 1
  %724 = extractvalue %dx.types.CBufRet.f32 %721, 2
  %725 = fsub fast float %431, %722
  %726 = fsub fast float %432, %723
  %727 = fsub fast float %433, %724
  %728 = fmul fast float %725, %718
  %729 = fmul fast float %726, %719
  %730 = fmul fast float %727, %720
  %731 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %732 = extractvalue %dx.types.CBufRet.i32 %731, 0
  %733 = extractvalue %dx.types.CBufRet.i32 %731, 1
  %734 = uitofp i32 %732 to float
  %735 = uitofp i32 %733 to float
  %736 = fmul fast float %728, %734
  %737 = fmul fast float %729, %735
  %738 = fadd fast float %736, 5.000000e-01
  %739 = fadd fast float %737, 5.000000e-01
  %740 = call float @dx.op.unary.f32(i32 22, float %738)  ; Frc(value)
  %741 = call float @dx.op.unary.f32(i32 22, float %739)  ; Frc(value)
  %742 = call float @dx.op.unary.f32(i32 27, float %738)  ; Round_ni(value)
  %743 = call float @dx.op.unary.f32(i32 27, float %739)  ; Round_ni(value)
  %744 = fadd fast float %742, 1.000000e+00
  %745 = fadd fast float %743, 1.000000e+00
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 0
  %748 = extractvalue %dx.types.CBufRet.f32 %746, 1
  %749 = fmul fast float %747, %744
  %750 = fmul fast float %748, %745
  %751 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %16, float %749, float %750, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %752 = extractvalue %dx.types.ResRet.f32 %751, 0
  %753 = extractvalue %dx.types.ResRet.f32 %751, 1
  %754 = extractvalue %dx.types.ResRet.f32 %751, 2
  %755 = extractvalue %dx.types.ResRet.f32 %751, 3
  %756 = extractvalue %dx.types.CBufRet.i32 %731, 2
  %757 = extractvalue %dx.types.CBufRet.f32 %746, 2
  %758 = uitofp i32 %756 to float
  %759 = fadd fast float %758, -1.000000e+00
  %760 = fmul fast float %759, %752
  %761 = fmul fast float %759, %753
  %762 = fmul fast float %759, %754
  %763 = fmul fast float %759, %755
  %764 = fadd fast float %760, 5.000000e-01
  %765 = fadd fast float %761, 5.000000e-01
  %766 = fadd fast float %762, 5.000000e-01
  %767 = fadd fast float %763, 5.000000e-01
  %768 = fptoui float %764 to i32
  %769 = fptoui float %765 to i32
  %770 = fptoui float %766 to i32
  %771 = fptoui float %767 to i32
  %772 = uitofp i32 %768 to float
  %773 = uitofp i32 %769 to float
  %774 = uitofp i32 %770 to float
  %775 = uitofp i32 %771 to float
  %776 = fadd fast float %772, 5.000000e-01
  %777 = fadd fast float %773, 5.000000e-01
  %778 = fadd fast float %774, 5.000000e-01
  %779 = fadd fast float %775, 5.000000e-01
  %780 = fmul fast float %776, %757
  %781 = fmul fast float %777, %757
  %782 = fmul fast float %778, %757
  %783 = fmul fast float %779, %757
  %784 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %780, float %730, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %785 = extractvalue %dx.types.ResRet.f32 %784, 0
  %786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %781, float %730, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %787 = extractvalue %dx.types.ResRet.f32 %786, 0
  %788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %782, float %730, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %789 = extractvalue %dx.types.ResRet.f32 %788, 0
  %790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %783, float %730, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %791 = extractvalue %dx.types.ResRet.f32 %790, 0
  %792 = fsub fast float %789, %791
  %793 = fmul fast float %792, %740
  %794 = fadd fast float %793, %791
  %795 = fsub fast float %787, %785
  %796 = fmul fast float %795, %740
  %797 = fadd fast float %796, %785
  %798 = fsub fast float %797, %794
  %799 = fmul fast float %798, %741
  %800 = fadd fast float %799, %794
  %801 = fcmp fast ogt float %800, 0.000000e+00
  br i1 %801, label %802, label %870, !dx.controlflow.hints !54

; <label>:802                                     ; preds = %713
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 0
  %805 = extractvalue %dx.types.CBufRet.f32 %803, 1
  %806 = extractvalue %dx.types.CBufRet.f32 %803, 2
  %807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %808 = extractvalue %dx.types.CBufRet.f32 %807, 0
  %809 = extractvalue %dx.types.CBufRet.f32 %807, 1
  %810 = extractvalue %dx.types.CBufRet.f32 %807, 2
  %811 = fmul fast float %726, %718
  %812 = fmul fast float %727, %718
  %813 = fadd fast float %728, %808
  %814 = fadd fast float %811, %809
  %815 = fadd fast float %812, %810
  %816 = fmul fast float %813, %804
  %817 = fmul fast float %814, %804
  %818 = fmul fast float %815, %804
  %819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %816, float %817, float %818, float undef, i32 0, i32 0, i32 0, float %714)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %820 = extractvalue %dx.types.ResRet.f32 %819, 0
  %821 = fmul fast float %813, %805
  %822 = fmul fast float %814, %805
  %823 = fmul fast float %815, %805
  %824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %821, float %822, float %823, float undef, i32 0, i32 0, i32 0, float %715)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 1
  %826 = fmul fast float %813, %806
  %827 = fmul fast float %814, %806
  %828 = fmul fast float %815, %806
  %829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %826, float %827, float %828, float undef, i32 0, i32 0, i32 0, float %716)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 2
  %831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %832 = extractvalue %dx.types.CBufRet.f32 %831, 1
  %833 = fmul fast float %825, %820
  %834 = fmul fast float %833, %830
  %835 = call float @dx.op.unary.f32(i32 23, float %834)  ; Log(value)
  %836 = fmul fast float %835, %832
  %837 = call float @dx.op.unary.f32(i32 21, float %836)  ; Exp(value)
  %838 = extractvalue %dx.types.CBufRet.f32 %831, 2
  %839 = fmul fast float %800, %800
  %840 = fmul fast float %839, %837
  %841 = fmul fast float %840, %838
  %842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.f32 %842, 3
  %844 = fmul fast float %843, %841
  %845 = bitcast float %844 to i32
  %846 = sitofp i32 %845 to float
  %847 = fptosi float %846 to i32
  %848 = bitcast i32 %847 to float
  %849 = fsub fast float 1.000000e+00, %841
  %850 = bitcast float %849 to i32
  %851 = sitofp i32 %850 to float
  %852 = fptosi float %851 to i32
  %853 = bitcast i32 %852 to float
  %854 = fadd fast float %848, %853
  %855 = bitcast float %854 to i32
  %856 = sub nsw i32 2129859010, %855
  %857 = bitcast i32 %856 to float
  %858 = fmul fast float %857, %848
  %859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.f32 %859, 2
  %861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %862 = extractvalue %dx.types.CBufRet.f32 %861, 0
  %863 = fmul fast float %858, %862
  %864 = fadd fast float %863, 1.000000e+00
  %865 = bitcast float %864 to i32
  %866 = sub nsw i32 2129859010, %865
  %867 = bitcast i32 %866 to float
  %868 = fmul fast float %858, %860
  %869 = fmul fast float %868, %867
  br label %870

; <label>:870                                     ; preds = %802, %713
  %871 = phi float [ %869, %802 ], [ %800, %713 ]
  %872 = fmul fast float %871, %645
  %873 = fadd fast float %872, %692
  br label %874

; <label>:874                                     ; preds = %870, %691
  %875 = phi float [ %873, %870 ], [ %692, %691 ]
  br i1 %556, label %1001, label %876, !dx.controlflow.hints !55

; <label>:876                                     ; preds = %874
  %877 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %878 = extractvalue %dx.types.CBufRet.i32 %877, 0
  %879 = icmp ne i32 %878, 0
  %880 = zext i1 %879 to i32
  %881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.i32 %881, 0
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %917, label %884

; <label>:884                                     ; preds = %876
  br label %885

; <label>:885                                     ; preds = %912, %884
  %886 = phi i32 [ %913, %912 ], [ 0, %884 ]
  %887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %886, i32 0)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.f32 %887, 0
  %889 = extractvalue %dx.types.ResRet.f32 %887, 1
  %890 = extractvalue %dx.types.ResRet.f32 %887, 2
  %891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %886, i32 16)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.f32 %891, 0
  %893 = extractvalue %dx.types.ResRet.f32 %891, 1
  %894 = extractvalue %dx.types.ResRet.f32 %891, 2
  %895 = fsub fast float %888, %892
  %896 = fsub fast float %889, %893
  %897 = fsub fast float %890, %894
  %898 = fadd fast float %892, %888
  %899 = fadd fast float %893, %889
  %900 = fadd fast float %894, %890
  %901 = fcmp fast olt float %431, %895
  %902 = fcmp fast olt float %432, %896
  %903 = fcmp fast olt float %433, %897
  %904 = or i1 %901, %902
  %905 = or i1 %903, %904
  %906 = fcmp fast ogt float %431, %898
  %907 = fcmp fast ogt float %432, %899
  %908 = fcmp fast ogt float %433, %900
  %909 = or i1 %906, %907
  %910 = or i1 %908, %909
  %911 = or i1 %905, %910
  br i1 %911, label %912, label %915, !dx.controlflow.hints !56

; <label>:912                                     ; preds = %885
  %913 = add nuw i32 %886, 1
  %914 = icmp ult i32 %913, %882
  br i1 %914, label %885, label %915

; <label>:915                                     ; preds = %912, %885
  %916 = phi i32 [ 255, %912 ], [ %886, %885 ]
  br label %917

; <label>:917                                     ; preds = %915, %876
  %918 = phi i32 [ 255, %876 ], [ %916, %915 ]
  %919 = icmp eq i32 %918, 255
  br i1 %919, label %925, label %920, !dx.controlflow.hints !57

; <label>:920                                     ; preds = %917
  %921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %918, i32 156)  ; BufferLoad(srv,index,wot)
  %922 = extractvalue %dx.types.ResRet.i32 %921, 0
  %923 = icmp ne i32 %922, 0
  %924 = zext i1 %923 to i32
  br label %925

; <label>:925                                     ; preds = %920, %917
  %926 = phi i32 [ %924, %920 ], [ %880, %917 ]
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %928, label %997, !dx.controlflow.hints !58

; <label>:928                                     ; preds = %925
  %929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %930 = extractvalue %dx.types.CBufRet.f32 %929, 3
  %931 = extractvalue %dx.types.CBufRet.f32 %466, 0
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 2
  %934 = extractvalue %dx.types.CBufRet.f32 %932, 3
  br i1 %919, label %945, label %935, !dx.controlflow.hints !59

; <label>:935                                     ; preds = %928
  %936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %918, i32 60)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.f32 %936, 0
  %938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %918, i32 64)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.f32 %938, 0
  %940 = extractvalue %dx.types.ResRet.f32 %938, 1
  %941 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %918, i32 72)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.f32 %941, 0
  %943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %918, i32 96)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.f32 %943, 0
  br label %945

; <label>:945                                     ; preds = %935, %928
  %946 = phi float [ %937, %935 ], [ %469, %928 ]
  %947 = phi float [ %942, %935 ], [ %467, %928 ]
  %948 = phi float [ %944, %935 ], [ %931, %928 ]
  %949 = phi float [ %939, %935 ], [ %933, %928 ]
  %950 = phi float [ %940, %935 ], [ %934, %928 ]
  %951 = call float @dx.op.binary.f32(i32 35, float %550, float 0.000000e+00)  ; FMax(a,b)
  %952 = call float @dx.op.binary.f32(i32 36, float %951, float 1.000000e+00)  ; FMin(a,b)
  %953 = call float @dx.op.unary.f32(i32 24, float %952)  ; Sqrt(value)
  %954 = call float @dx.op.binary.f32(i32 35, float %553, float 0x3F847AE140000000)  ; FMax(a,b)
  %955 = fsub fast float %551, %433
  %956 = fsub fast float %433, %552
  %957 = call float @dx.op.binary.f32(i32 36, float %956, float %955)  ; FMin(a,b)
  %958 = fdiv fast float %957, %954
  %959 = call float @dx.op.unary.f32(i32 7, float %958)  ; Saturate(value)
  %960 = fsub fast float %433, %947
  %961 = fdiv fast float %960, %946
  %962 = call float @dx.op.unary.f32(i32 7, float %961)  ; Saturate(value)
  %963 = fsub fast float 1.000000e+00, %962
  %964 = fmul float %959, %963
  %965 = fmul float %964, %964
  %966 = fmul fast float %953, %930
  %967 = fmul fast float %966, %965
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %970 = extractvalue %dx.types.CBufRet.f32 %968, 1
  %971 = fsub fast float %967, %970
  %972 = fsub fast float %969, %970
  %973 = fdiv fast float %971, %972
  %974 = call float @dx.op.unary.f32(i32 7, float %973)  ; Saturate(value)
  %975 = fmul fast float %974, %948
  %976 = fcmp fast ogt float %950, 0.000000e+00
  br i1 %976, label %977, label %997, !dx.controlflow.hints !60

; <label>:977                                     ; preds = %945
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 0
  %980 = extractvalue %dx.types.CBufRet.f32 %978, 1
  %981 = extractvalue %dx.types.CBufRet.f32 %978, 2
  %982 = fsub fast float %431, %979
  %983 = fsub fast float %432, %980
  %984 = fsub fast float %433, %981
  %985 = fmul fast float %982, %982
  %986 = fmul fast float %983, %983
  %987 = fadd fast float %985, %986
  %988 = fmul fast float %984, %984
  %989 = fadd fast float %987, %988
  %990 = call float @dx.op.unary.f32(i32 24, float %989)  ; Sqrt(value)
  %991 = fsub fast float %990, %949
  %992 = fsub fast float %950, %949
  %993 = fdiv fast float %991, %992
  %994 = call float @dx.op.unary.f32(i32 7, float %993)  ; Saturate(value)
  %995 = fmul fast float %994, %994
  %996 = fmul fast float %995, %975
  br label %997

; <label>:997                                     ; preds = %977, %945, %925
  %998 = phi float [ 0.000000e+00, %925 ], [ %996, %977 ], [ %975, %945 ]
  %999 = fmul fast float %998, %645
  %1000 = fadd fast float %999, %875
  br label %1001

; <label>:1001                                    ; preds = %997, %874
  %1002 = phi float [ %1000, %997 ], [ %875, %874 ]
  %1003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.f32 %1003, 1
  %1005 = fcmp fast ogt float %1002, %1004
  br i1 %1005, label %1008, label %1006, !dx.controlflow.hints !61

; <label>:1006                                    ; preds = %1001
  %1007 = fadd fast float %645, %434
  br label %1058

; <label>:1008                                    ; preds = %1001
  %1009 = fmul fast float %1002, 0xBFF7154760000000
  %1010 = call float @dx.op.unary.f32(i32 21, float %1009)  ; Exp(value)
  %1011 = call float @dx.op.unary.f32(i32 7, float %1010)  ; Saturate(value)
  %1012 = fsub fast float 1.000000e+00, %1011
  %1013 = fdiv fast float %1002, %645
  %1014 = fadd fast float %645, %434
  %1015 = fmul fast float %434, %434
  %1016 = fmul fast float %1014, %1014
  %1017 = fsub fast float %1015, %1016
  %1018 = fmul fast float %1017, -5.000000e-01
  %1019 = fmul fast float %1018, %1013
  %1020 = fadd fast float %1019, %429
  %1021 = fadd fast float %1002, %437
  %1022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.i32 %1022, 0
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1051, label %1025, !dx.controlflow.hints !62

; <label>:1025                                    ; preds = %1008
  %1026 = icmp ne i32 %442, 0
  %1027 = zext i1 %1026 to i32
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 2
  %1030 = extractvalue %dx.types.CBufRet.f32 %1028, 0
  %1031 = fsub fast float %1014, %1030
  %1032 = fmul fast float %1031, %1029
  %1033 = call float @dx.op.unary.f32(i32 7, float %1032)  ; Saturate(value)
  %1034 = fadd fast float %1033, -5.000000e-01
  %1035 = fmul fast float %1034, 2.000000e+00
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 2
  %1038 = fcmp fast olt float %1035, %1037
  br i1 %1038, label %1039, label %1051, !dx.controlflow.hints !63

; <label>:1039                                    ; preds = %1025
  %1040 = fmul fast float %1035, %1035
  %1041 = fmul fast float %1012, %430
  %1042 = fmul fast float %1035, %1041
  %1043 = fmul fast float %1040, %1041
  %1044 = fmul fast float %1042, %1040
  %1045 = fmul fast float %1040, %1040
  %1046 = fmul fast float %1045, %1041
  %1047 = fadd fast float %1042, %438
  %1048 = fadd fast float %1043, %439
  %1049 = fadd fast float %1044, %440
  %1050 = fadd fast float %1046, %441
  br label %1051

; <label>:1051                                    ; preds = %1039, %1025, %1008
  %1052 = phi float [ %438, %1008 ], [ %1047, %1039 ], [ %438, %1025 ]
  %1053 = phi float [ %439, %1008 ], [ %1048, %1039 ], [ %439, %1025 ]
  %1054 = phi float [ %440, %1008 ], [ %1049, %1039 ], [ %440, %1025 ]
  %1055 = phi float [ %441, %1008 ], [ %1050, %1039 ], [ %441, %1025 ]
  %1056 = phi i32 [ %442, %1008 ], [ 1, %1039 ], [ %1027, %1025 ]
  %1057 = fmul fast float %1011, %430
  br label %1058

; <label>:1058                                    ; preds = %1051, %1006
  %1059 = phi float [ %1007, %1006 ], [ %1014, %1051 ]
  %1060 = phi float [ %429, %1006 ], [ %1020, %1051 ]
  %1061 = phi float [ %430, %1006 ], [ %1057, %1051 ]
  %1062 = phi float [ %437, %1006 ], [ %1021, %1051 ]
  %1063 = phi float [ %438, %1006 ], [ %1052, %1051 ]
  %1064 = phi float [ %439, %1006 ], [ %1053, %1051 ]
  %1065 = phi float [ %440, %1006 ], [ %1054, %1051 ]
  %1066 = phi float [ %441, %1006 ], [ %1055, %1051 ]
  %1067 = phi i32 [ %442, %1006 ], [ %1056, %1051 ]
  %1068 = fmul fast float %645, %278
  %1069 = fmul fast float %645, %279
  %1070 = fmul fast float %645, %280
  %1071 = fadd fast float %1068, %431
  %1072 = fadd fast float %1069, %432
  %1073 = fadd fast float %1070, %433
  %1074 = fcmp fast olt float %1059, %405
  %1075 = extractvalue %dx.types.CBufRet.f32 %1003, 2
  %1076 = fcmp fast olt float %1075, %1061
  %1077 = and i1 %1074, %1076
  br i1 %1077, label %424, label %1078

; <label>:1078                                    ; preds = %1058
  %1079 = uitofp i32 %445 to float
  br label %1080

; <label>:1080                                    ; preds = %1078, %381
  %1081 = phi float [ 0.000000e+00, %381 ], [ %1060, %1078 ]
  %1082 = phi float [ 1.000000e+00, %381 ], [ %1061, %1078 ]
  %1083 = phi float [ 0.000000e+00, %381 ], [ %1079, %1078 ]
  %1084 = phi float [ 0.000000e+00, %381 ], [ %1062, %1078 ]
  %1085 = phi float [ 0.000000e+00, %381 ], [ %1063, %1078 ]
  %1086 = phi float [ 0.000000e+00, %381 ], [ %1064, %1078 ]
  %1087 = phi float [ 0.000000e+00, %381 ], [ %1065, %1078 ]
  %1088 = phi float [ 0.000000e+00, %381 ], [ %1066, %1078 ]
  %1089 = phi i32 [ 0, %381 ], [ %1067, %1078 ]
  %1090 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.i32 %1090, 0
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %1134, label %1093, !dx.controlflow.hints !64

; <label>:1093                                    ; preds = %1080
  %1094 = icmp eq i32 %1089, 0
  br i1 %1094, label %1133, label %1095, !dx.controlflow.hints !65

; <label>:1095                                    ; preds = %1093
  %1096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.i32 %1096, 2
  %1098 = icmp eq i32 %1097, 0
  br i1 %1098, label %1105, label %1099, !dx.controlflow.hints !66

; <label>:1099                                    ; preds = %1095
  %1100 = fsub fast float 1.000000e+00, %1082
  %1101 = fdiv fast float %1085, %1100
  %1102 = fdiv fast float %1086, %1100
  %1103 = fdiv fast float %1087, %1100
  %1104 = fdiv fast float %1088, %1100
  br label %1110

; <label>:1105                                    ; preds = %1095
  %1106 = fadd fast float %1085, %1082
  %1107 = fadd fast float %1086, %1082
  %1108 = fadd fast float %1087, %1082
  %1109 = fadd fast float %1088, %1082
  br label %1110

; <label>:1110                                    ; preds = %1105, %1099
  %1111 = phi float [ %1101, %1099 ], [ %1106, %1105 ]
  %1112 = phi float [ %1102, %1099 ], [ %1107, %1105 ]
  %1113 = phi float [ %1103, %1099 ], [ %1108, %1105 ]
  %1114 = phi float [ %1104, %1099 ], [ %1109, %1105 ]
  %1115 = call float @dx.op.binary.f32(i32 35, float %1111, float -1.000000e+00)  ; FMax(a,b)
  %1116 = call float @dx.op.binary.f32(i32 35, float %1112, float -1.000000e+00)  ; FMax(a,b)
  %1117 = call float @dx.op.binary.f32(i32 35, float %1113, float -1.000000e+00)  ; FMax(a,b)
  %1118 = call float @dx.op.binary.f32(i32 35, float %1114, float -1.000000e+00)  ; FMax(a,b)
  %1119 = call float @dx.op.binary.f32(i32 36, float %1115, float 1.000000e+00)  ; FMin(a,b)
  %1120 = call float @dx.op.binary.f32(i32 36, float %1116, float 1.000000e+00)  ; FMin(a,b)
  %1121 = call float @dx.op.binary.f32(i32 36, float %1117, float 1.000000e+00)  ; FMin(a,b)
  %1122 = call float @dx.op.binary.f32(i32 36, float %1118, float 1.000000e+00)  ; FMin(a,b)
  %1123 = fmul fast float %1119, 1.500000e+00
  %1124 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1121, float %1123)  ; FMad(a,b,c)
  %1125 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1120, float 0.000000e+00)  ; FMad(a,b,c)
  %1126 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1122, float %1125)  ; FMad(a,b,c)
  %1127 = fmul fast float %1119, 0x3FEBB67AE0000000
  %1128 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1121, float %1127)  ; FMad(a,b,c)
  %1129 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1120, float 0.000000e+00)  ; FMad(a,b,c)
  %1130 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1122, float %1129)  ; FMad(a,b,c)
  %1131 = fadd fast float %1124, 5.000000e-01
  %1132 = fadd fast float %1128, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %21, i32 %22, i32 0, float %1131, float %1126, float %1132, float %1130, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1134

; <label>:1133                                    ; preds = %1093
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %21, i32 %22, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1134

; <label>:1134                                    ; preds = %1133, %1110, %1080
  %1135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1136 = extractvalue %dx.types.CBufRet.f32 %1135, 0
  %1137 = extractvalue %dx.types.CBufRet.f32 %1135, 1
  %1138 = extractvalue %dx.types.CBufRet.f32 %1135, 2
  %1139 = call float @dx.op.dot3.f32(i32 55, float %278, float %279, float %280, float %1136, float %1137, float %1138)  ; Dot3(ax,ay,az,bx,by,bz)
  %1140 = fmul fast float %1139, %1081
  %1141 = fcmp fast ogt float %1084, 0.000000e+00
  %1142 = fdiv fast float 1.000000e+00, %1084
  %1143 = fmul fast float %1140, %1142
  %1144 = select i1 %1141, float %1143, float %289
  %1145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1146 = extractvalue %dx.types.CBufRet.f32 %1145, 0
  %1147 = extractvalue %dx.types.CBufRet.f32 %1145, 1
  %1148 = extractvalue %dx.types.CBufRet.f32 %1145, 2
  %1149 = fmul fast float %1146, %242
  %1150 = fmul fast float %1147, %242
  %1151 = fmul fast float %1148, %242
  %1152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.f32 %1152, 0
  %1154 = extractvalue %dx.types.CBufRet.f32 %1152, 1
  %1155 = extractvalue %dx.types.CBufRet.f32 %1152, 2
  %1156 = fmul fast float %1153, %243
  %1157 = fmul fast float %1154, %243
  %1158 = fmul fast float %1155, %243
  %1159 = fadd fast float %1156, %1149
  %1160 = fadd fast float %1157, %1150
  %1161 = fadd fast float %1158, %1151
  %1162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1163 = extractvalue %dx.types.CBufRet.f32 %1162, 0
  %1164 = extractvalue %dx.types.CBufRet.f32 %1162, 1
  %1165 = extractvalue %dx.types.CBufRet.f32 %1162, 2
  %1166 = fadd fast float %1159, %1163
  %1167 = fadd fast float %1160, %1164
  %1168 = fadd fast float %1161, %1165
  %1169 = fmul fast float %1166, %1144
  %1170 = fmul fast float %1167, %1144
  %1171 = fmul fast float %1168, %1144
  %1172 = call float @dx.op.dot3.f32(i32 55, float %1169, float %1170, float %1171, float %1169, float %1170, float %1171)  ; Dot3(ax,ay,az,bx,by,bz)
  %1173 = call float @dx.op.unary.f32(i32 25, float %1172)  ; Rsqrt(value)
  %1174 = fmul fast float %1173, %1172
  %1175 = fmul fast float %1173, %1169
  %1176 = fmul fast float %1173, %1170
  %1177 = fmul fast float %1173, %1171
  %1178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1179 = extractvalue %dx.types.CBufRet.i32 %1178, 1
  %1180 = and i32 %1179, 1
  %1181 = icmp ne i32 %1180, 0
  %1182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1183 = extractvalue %dx.types.CBufRet.f32 %1182, 2
  %1184 = fcmp fast ogt float %1183, 0.000000e+00
  %1185 = and i1 %1181, %1184
  br i1 %1185, label %1186, label %1344, !dx.controlflow.hints !67

; <label>:1186                                    ; preds = %1134
  %1187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1188 = extractvalue %dx.types.CBufRet.f32 %1187, 2
  %1189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1190 = extractvalue %dx.types.CBufRet.f32 %1189, 2
  %1191 = fsub fast float %1188, %1190
  %1192 = extractvalue %dx.types.CBufRet.i32 %1178, 0
  %1193 = call i32 @dx.op.binary.i32(i32 40, i32 %1192, i32 3)  ; UMin(a,b)
  %1194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.CBufRet.f32 %1194, 1
  %1197 = extractvalue %dx.types.CBufRet.f32 %1189, 0
  %1198 = extractvalue %dx.types.CBufRet.f32 %1189, 1
  %1199 = fsub fast float %1195, %1197
  %1200 = fsub fast float %1196, %1198
  %1201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1201, 0
  %1203 = fcmp fast ogt float %1202, 0.000000e+00
  %1204 = fsub fast float -0.000000e+00, %1199
  %1205 = fsub fast float -0.000000e+00, %1200
  %1206 = call float @dx.op.dot2.f32(i32 54, float %1175, float %1176, float %1175, float %1176)  ; Dot2(ax,ay,bx,by)
  %1207 = call float @dx.op.dot2.f32(i32 54, float %1175, float %1176, float %1204, float %1205)  ; Dot2(ax,ay,bx,by)
  %1208 = fmul fast float %1207, 2.000000e+00
  %1209 = call float @dx.op.dot2.f32(i32 54, float %1204, float %1205, float %1204, float %1205)  ; Dot2(ax,ay,bx,by)
  %1210 = fmul fast float %1202, %1202
  %1211 = fsub fast float %1209, %1210
  %1212 = fmul fast float %1208, %1208
  %1213 = fmul fast float %1206, 4.000000e+00
  %1214 = fmul fast float %1213, %1211
  %1215 = fsub fast float %1212, %1214
  %1216 = fcmp fast ogt float %1215, 0.000000e+00
  br i1 %1216, label %1217, label %1232, !dx.controlflow.hints !68

; <label>:1217                                    ; preds = %1186
  %1218 = fcmp fast ogt float %1208, 0.000000e+00
  %1219 = call float @dx.op.unary.f32(i32 24, float %1215)  ; Sqrt(value)
  %1220 = fsub fast float -0.000000e+00, %1219
  %1221 = select i1 %1218, float %1219, float %1220
  %1222 = fadd fast float %1221, %1208
  %1223 = fmul float %1222, -5.000000e-01
  %1224 = fdiv fast float %1223, %1206
  %1225 = call float @dx.op.binary.f32(i32 35, float %1224, float 0.000000e+00)  ; FMax(a,b)
  %1226 = call float @dx.op.binary.f32(i32 36, float %1174, float %1225)  ; FMin(a,b)
  %1227 = fdiv fast float %1211, %1223
  %1228 = call float @dx.op.binary.f32(i32 35, float %1227, float 0.000000e+00)  ; FMax(a,b)
  %1229 = call float @dx.op.binary.f32(i32 36, float %1174, float %1228)  ; FMin(a,b)
  %1230 = call float @dx.op.binary.f32(i32 36, float %1226, float %1229)  ; FMin(a,b)
  %1231 = call float @dx.op.binary.f32(i32 35, float %1226, float %1229)  ; FMax(a,b)
  br label %1232

; <label>:1232                                    ; preds = %1217, %1186
  %1233 = phi float [ %1231, %1217 ], [ -1.000000e+00, %1186 ]
  %1234 = phi float [ %1230, %1217 ], [ -1.000000e+00, %1186 ]
  %1235 = phi i1 [ true, %1217 ], [ false, %1186 ]
  %1236 = and i1 %1203, %1235
  br i1 %1236, label %1237, label %1239, !dx.controlflow.hints !69

; <label>:1237                                    ; preds = %1232
  %1238 = fcmp fast oeq float %1234, %1233
  br i1 %1238, label %1344, label %1240, !dx.controlflow.hints !70

; <label>:1239                                    ; preds = %1232
  br i1 %1203, label %1344, label %1240, !dx.controlflow.hints !71

; <label>:1240                                    ; preds = %1239, %1237
  %1241 = phi float [ %1174, %1239 ], [ %1233, %1237 ]
  %1242 = phi float [ 0.000000e+00, %1239 ], [ %1234, %1237 ]
  %1243 = fcmp fast oeq float %1177, 0.000000e+00
  %1244 = fdiv fast float %1191, %1177
  %1245 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1244)  ; FMax(a,b)
  %1246 = select i1 %1243, float %1241, float %1245
  %1247 = call float @dx.op.binary.f32(i32 36, float %1241, float %1246)  ; FMin(a,b)
  %1248 = fcmp fast ogt float %1177, 0.000000e+00
  %1249 = fcmp fast olt float %1191, 0.000000e+00
  br i1 %1248, label %1250, label %1251, !dx.controlflow.hints !72

; <label>:1250                                    ; preds = %1240
  br i1 %1249, label %1344, label %1254, !dx.controlflow.hints !73

; <label>:1251                                    ; preds = %1240
  br i1 %1249, label %1252, label %1254, !dx.controlflow.hints !74

; <label>:1252                                    ; preds = %1251
  %1253 = call float @dx.op.binary.f32(i32 35, float %1242, float %1247)  ; FMax(a,b)
  br label %1254

; <label>:1254                                    ; preds = %1252, %1251, %1250
  %1255 = phi float [ %1253, %1252 ], [ %1242, %1251 ], [ %1242, %1250 ]
  %1256 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 0
  store float -1.000000e+00, float* %1256, align 4, !tbaa !75, !noalias !79
  %1257 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 1
  store float -1.000000e+00, float* %1257, align 4, !tbaa !75, !noalias !79
  %1258 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 2
  store float -1.000000e+00, float* %1258, align 4, !tbaa !75, !noalias !79
  %1259 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 0
  store float -1.000000e+00, float* %1259, align 4, !tbaa !75, !noalias !79
  %1260 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 1
  store float -1.000000e+00, float* %1260, align 4, !tbaa !75, !noalias !79
  %1261 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 2
  store float -1.000000e+00, float* %1261, align 4, !tbaa !75, !noalias !79
  %1262 = icmp sgt i32 %1193, 0
  br i1 %1262, label %1263, label %1321

; <label>:1263                                    ; preds = %1254
  br label %1264

; <label>:1264                                    ; preds = %1311, %1263
  %1265 = phi i32 [ %1312, %1311 ], [ 0, %1263 ]
  %1266 = add nuw i32 %1265, 171
  %1267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %1266)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1267, 0
  %1269 = extractvalue %dx.types.CBufRet.f32 %1267, 1
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 0
  %1272 = extractvalue %dx.types.CBufRet.f32 %1270, 1
  %1273 = fsub fast float %1268, %1271
  %1274 = fsub fast float %1269, %1272
  %1275 = extractvalue %dx.types.CBufRet.f32 %1267, 2
  %1276 = fsub fast float -0.000000e+00, %1273
  %1277 = fsub fast float -0.000000e+00, %1274
  %1278 = call float @dx.op.dot2.f32(i32 54, float %1175, float %1176, float %1276, float %1277)  ; Dot2(ax,ay,bx,by)
  %1279 = fmul fast float %1278, 2.000000e+00
  %1280 = call float @dx.op.dot2.f32(i32 54, float %1276, float %1277, float %1276, float %1277)  ; Dot2(ax,ay,bx,by)
  %1281 = fmul fast float %1275, %1275
  %1282 = fsub fast float %1280, %1281
  %1283 = fmul fast float %1279, %1279
  %1284 = fmul fast float %1213, %1282
  %1285 = fsub fast float %1283, %1284
  %1286 = fcmp fast ogt float %1285, 0.000000e+00
  br i1 %1286, label %1287, label %1302, !dx.controlflow.hints !68

; <label>:1287                                    ; preds = %1264
  %1288 = fcmp fast ogt float %1279, 0.000000e+00
  %1289 = call float @dx.op.unary.f32(i32 24, float %1285)  ; Sqrt(value)
  %1290 = fsub fast float -0.000000e+00, %1289
  %1291 = select i1 %1288, float %1289, float %1290
  %1292 = fadd fast float %1291, %1279
  %1293 = fmul float %1292, -5.000000e-01
  %1294 = fdiv fast float %1293, %1206
  %1295 = call float @dx.op.binary.f32(i32 35, float %1294, float 0.000000e+00)  ; FMax(a,b)
  %1296 = call float @dx.op.binary.f32(i32 36, float %1241, float %1295)  ; FMin(a,b)
  %1297 = fdiv fast float %1282, %1293
  %1298 = call float @dx.op.binary.f32(i32 35, float %1297, float 0.000000e+00)  ; FMax(a,b)
  %1299 = call float @dx.op.binary.f32(i32 36, float %1241, float %1298)  ; FMin(a,b)
  %1300 = call float @dx.op.binary.f32(i32 36, float %1296, float %1299)  ; FMin(a,b)
  %1301 = call float @dx.op.binary.f32(i32 35, float %1296, float %1299)  ; FMax(a,b)
  br label %1302

; <label>:1302                                    ; preds = %1287, %1264
  %1303 = phi float [ %1301, %1287 ], [ -1.000000e+00, %1264 ]
  %1304 = phi float [ %1300, %1287 ], [ -1.000000e+00, %1264 ]
  %1305 = phi i1 [ true, %1287 ], [ false, %1264 ]
  br i1 %1305, label %1306, label %1311, !dx.controlflow.hints !90

; <label>:1306                                    ; preds = %1302
  %1307 = call float @dx.op.binary.f32(i32 35, float %1255, float %1304)  ; FMax(a,b)
  %1308 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %1265
  store float %1307, float* %1308, align 4, !tbaa !75, !noalias !79
  %1309 = call float @dx.op.binary.f32(i32 35, float %1255, float %1303)  ; FMax(a,b)
  %1310 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %1265
  store float %1309, float* %1310, align 4, !tbaa !75, !noalias !79
  br label %1311

; <label>:1311                                    ; preds = %1306, %1302
  %1312 = add nuw nsw i32 %1265, 1
  %1313 = icmp eq i32 %1312, %1193
  br i1 %1313, label %1314, label %1264

; <label>:1314                                    ; preds = %1311
  %1315 = load float, float* %1258, align 4, !tbaa !75, !alias.scope !91, !noalias !94
  %1316 = load float, float* %1257, align 4, !tbaa !75, !alias.scope !97, !noalias !98
  %1317 = load float, float* %1256, align 4, !tbaa !75, !alias.scope !99, !noalias !100
  %1318 = load float, float* %1261, align 4, !tbaa !75, !alias.scope !101, !noalias !104
  %1319 = load float, float* %1260, align 4, !tbaa !75, !alias.scope !107, !noalias !108
  %1320 = load float, float* %1259, align 4, !tbaa !75, !alias.scope !109, !noalias !110
  br label %1321

; <label>:1321                                    ; preds = %1314, %1254
  %1322 = phi float [ -1.000000e+00, %1254 ], [ %1320, %1314 ]
  %1323 = phi float [ -1.000000e+00, %1254 ], [ %1319, %1314 ]
  %1324 = phi float [ -1.000000e+00, %1254 ], [ %1318, %1314 ]
  %1325 = phi float [ -1.000000e+00, %1254 ], [ %1317, %1314 ]
  %1326 = phi float [ -1.000000e+00, %1254 ], [ %1316, %1314 ]
  %1327 = phi float [ -1.000000e+00, %1254 ], [ %1315, %1314 ]
  %1328 = call float @dx.op.binary.f32(i32 36, float %1326, float %1327)  ; FMin(a,b)
  %1329 = call float @dx.op.binary.f32(i32 36, float %1325, float %1328)  ; FMin(a,b)
  %1330 = call float @dx.op.binary.f32(i32 35, float %1325, float %1326)  ; FMax(a,b)
  %1331 = call float @dx.op.binary.f32(i32 36, float %1330, float %1327)  ; FMin(a,b)
  %1332 = call float @dx.op.binary.f32(i32 36, float %1325, float %1326)  ; FMin(a,b)
  %1333 = call float @dx.op.binary.f32(i32 35, float %1332, float %1331)  ; FMax(a,b)
  %1334 = call float @dx.op.binary.f32(i32 35, float %1326, float %1327)  ; FMax(a,b)
  %1335 = call float @dx.op.binary.f32(i32 35, float %1325, float %1334)  ; FMax(a,b)
  store float %1329, float* %1256, align 4, !tbaa !75, !alias.scope !99, !noalias !100
  store float %1333, float* %1257, align 4, !tbaa !75, !alias.scope !97, !noalias !98
  store float %1335, float* %1258, align 4, !tbaa !75, !alias.scope !91, !noalias !94
  %1336 = call float @dx.op.binary.f32(i32 36, float %1323, float %1324)  ; FMin(a,b)
  %1337 = call float @dx.op.binary.f32(i32 36, float %1322, float %1336)  ; FMin(a,b)
  %1338 = call float @dx.op.binary.f32(i32 35, float %1322, float %1323)  ; FMax(a,b)
  %1339 = call float @dx.op.binary.f32(i32 36, float %1338, float %1324)  ; FMin(a,b)
  %1340 = call float @dx.op.binary.f32(i32 36, float %1322, float %1323)  ; FMin(a,b)
  %1341 = call float @dx.op.binary.f32(i32 35, float %1340, float %1339)  ; FMax(a,b)
  %1342 = call float @dx.op.binary.f32(i32 35, float %1323, float %1324)  ; FMax(a,b)
  %1343 = call float @dx.op.binary.f32(i32 35, float %1322, float %1342)  ; FMax(a,b)
  store float %1337, float* %1259, align 4, !tbaa !75, !alias.scope !109, !noalias !110
  store float %1341, float* %1260, align 4, !tbaa !75, !alias.scope !107, !noalias !108
  store float %1343, float* %1261, align 4, !tbaa !75, !alias.scope !101, !noalias !104
  br label %1344

; <label>:1344                                    ; preds = %1321, %1250, %1239, %1237, %1134
  %1345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1346 = extractvalue %dx.types.CBufRet.f32 %1345, 2
  %1347 = fmul fast float %1346, %1144
  %1348 = call float @dx.op.unary.f32(i32 7, float %1347)  ; Saturate(value)
  %1349 = fptoui float %1083 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1350 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %23
  store i32 %1349, i32 addrspace(3)* %1350, align 4, !tbaa !111
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1351 = and i32 %23, 63
  %1352 = icmp ult i32 %1351, 32
  br i1 %1352, label %1353, label %1359, !dx.controlflow.hints !113

; <label>:1353                                    ; preds = %1344
  %1354 = add i32 %23, 32
  %1355 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1354
  %1356 = load i32, i32 addrspace(3)* %1355, align 4, !tbaa !111
  %1357 = load i32, i32 addrspace(3)* %1350, align 4, !tbaa !111
  %1358 = call i32 @dx.op.binary.i32(i32 40, i32 %1357, i32 %1356)  ; UMin(a,b)
  store i32 %1358, i32 addrspace(3)* %1350, align 4, !tbaa !111
  br label %1359

; <label>:1359                                    ; preds = %1353, %1344
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1360 = icmp ult i32 %1351, 16
  br i1 %1360, label %1361, label %1367, !dx.controlflow.hints !114

; <label>:1361                                    ; preds = %1359
  %1362 = add i32 %23, 16
  %1363 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1362
  %1364 = load i32, i32 addrspace(3)* %1363, align 4, !tbaa !111
  %1365 = load i32, i32 addrspace(3)* %1350, align 4, !tbaa !111
  %1366 = call i32 @dx.op.binary.i32(i32 40, i32 %1365, i32 %1364)  ; UMin(a,b)
  store i32 %1366, i32 addrspace(3)* %1350, align 4, !tbaa !111
  br label %1367

; <label>:1367                                    ; preds = %1361, %1359
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1368 = icmp ult i32 %1351, 8
  br i1 %1368, label %1369, label %1375, !dx.controlflow.hints !115

; <label>:1369                                    ; preds = %1367
  %1370 = add i32 %23, 8
  %1371 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1370
  %1372 = load i32, i32 addrspace(3)* %1371, align 4, !tbaa !111
  %1373 = load i32, i32 addrspace(3)* %1350, align 4, !tbaa !111
  %1374 = call i32 @dx.op.binary.i32(i32 40, i32 %1373, i32 %1372)  ; UMin(a,b)
  store i32 %1374, i32 addrspace(3)* %1350, align 4, !tbaa !111
  br label %1375

; <label>:1375                                    ; preds = %1369, %1367
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1376 = icmp ult i32 %1351, 4
  br i1 %1376, label %1377, label %1383, !dx.controlflow.hints !116

; <label>:1377                                    ; preds = %1375
  %1378 = add i32 %23, 4
  %1379 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1378
  %1380 = load i32, i32 addrspace(3)* %1379, align 4, !tbaa !111
  %1381 = load i32, i32 addrspace(3)* %1350, align 4, !tbaa !111
  %1382 = call i32 @dx.op.binary.i32(i32 40, i32 %1381, i32 %1380)  ; UMin(a,b)
  store i32 %1382, i32 addrspace(3)* %1350, align 4, !tbaa !111
  br label %1383

; <label>:1383                                    ; preds = %1377, %1375
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1384 = icmp ult i32 %1351, 2
  br i1 %1384, label %1385, label %1391, !dx.controlflow.hints !117

; <label>:1385                                    ; preds = %1383
  %1386 = add i32 %23, 2
  %1387 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1386
  %1388 = load i32, i32 addrspace(3)* %1387, align 4, !tbaa !111
  %1389 = load i32, i32 addrspace(3)* %1350, align 4, !tbaa !111
  %1390 = call i32 @dx.op.binary.i32(i32 40, i32 %1389, i32 %1388)  ; UMin(a,b)
  store i32 %1390, i32 addrspace(3)* %1350, align 4, !tbaa !111
  br label %1391

; <label>:1391                                    ; preds = %1385, %1383
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1392 = icmp eq i32 %1351, 0
  br i1 %1392, label %1393, label %1399, !dx.controlflow.hints !118

; <label>:1393                                    ; preds = %1391
  %1394 = add i32 %23, 1
  %1395 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1394
  %1396 = load i32, i32 addrspace(3)* %1395, align 4, !tbaa !111
  %1397 = load i32, i32 addrspace(3)* %1350, align 4, !tbaa !111
  %1398 = call i32 @dx.op.binary.i32(i32 40, i32 %1397, i32 %1396)  ; UMin(a,b)
  store i32 %1398, i32 addrspace(3)* %1350, align 4, !tbaa !111
  br label %1399

; <label>:1399                                    ; preds = %1393, %1391
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1400 = and i32 %23, -64
  %1401 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1400
  %1402 = load i32, i32 addrspace(3)* %1401, align 4, !tbaa !111
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1349, i32 addrspace(3)* %1350, align 4, !tbaa !111
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1352, label %1403, label %1409, !dx.controlflow.hints !119

; <label>:1403                                    ; preds = %1399
  %1404 = add i32 %23, 32
  %1405 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1404
  %1406 = load i32, i32 addrspace(3)* %1405, align 4, !tbaa !111
  %1407 = load i32, i32 addrspace(3)* %1350, align 4, !tbaa !111
  %1408 = call i32 @dx.op.binary.i32(i32 39, i32 %1407, i32 %1406)  ; UMax(a,b)
  store i32 %1408, i32 addrspace(3)* %1350, align 4, !tbaa !111
  br label %1409

; <label>:1409                                    ; preds = %1403, %1399
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1360, label %1410, label %1416, !dx.controlflow.hints !120

; <label>:1410                                    ; preds = %1409
  %1411 = add i32 %23, 16
  %1412 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1411
  %1413 = load i32, i32 addrspace(3)* %1412, align 4, !tbaa !111
  %1414 = load i32, i32 addrspace(3)* %1350, align 4, !tbaa !111
  %1415 = call i32 @dx.op.binary.i32(i32 39, i32 %1414, i32 %1413)  ; UMax(a,b)
  store i32 %1415, i32 addrspace(3)* %1350, align 4, !tbaa !111
  br label %1416

; <label>:1416                                    ; preds = %1410, %1409
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1368, label %1417, label %1423, !dx.controlflow.hints !121

; <label>:1417                                    ; preds = %1416
  %1418 = add i32 %23, 8
  %1419 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1418
  %1420 = load i32, i32 addrspace(3)* %1419, align 4, !tbaa !111
  %1421 = load i32, i32 addrspace(3)* %1350, align 4, !tbaa !111
  %1422 = call i32 @dx.op.binary.i32(i32 39, i32 %1421, i32 %1420)  ; UMax(a,b)
  store i32 %1422, i32 addrspace(3)* %1350, align 4, !tbaa !111
  br label %1423

; <label>:1423                                    ; preds = %1417, %1416
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1376, label %1424, label %1430, !dx.controlflow.hints !122

; <label>:1424                                    ; preds = %1423
  %1425 = add i32 %23, 4
  %1426 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1425
  %1427 = load i32, i32 addrspace(3)* %1426, align 4, !tbaa !111
  %1428 = load i32, i32 addrspace(3)* %1350, align 4, !tbaa !111
  %1429 = call i32 @dx.op.binary.i32(i32 39, i32 %1428, i32 %1427)  ; UMax(a,b)
  store i32 %1429, i32 addrspace(3)* %1350, align 4, !tbaa !111
  br label %1430

; <label>:1430                                    ; preds = %1424, %1423
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1384, label %1431, label %1437, !dx.controlflow.hints !123

; <label>:1431                                    ; preds = %1430
  %1432 = add i32 %23, 2
  %1433 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1432
  %1434 = load i32, i32 addrspace(3)* %1433, align 4, !tbaa !111
  %1435 = load i32, i32 addrspace(3)* %1350, align 4, !tbaa !111
  %1436 = call i32 @dx.op.binary.i32(i32 39, i32 %1435, i32 %1434)  ; UMax(a,b)
  store i32 %1436, i32 addrspace(3)* %1350, align 4, !tbaa !111
  br label %1437

; <label>:1437                                    ; preds = %1431, %1430
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1392, label %1438, label %1444, !dx.controlflow.hints !124

; <label>:1438                                    ; preds = %1437
  %1439 = add i32 %23, 1
  %1440 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1439
  %1441 = load i32, i32 addrspace(3)* %1440, align 4, !tbaa !111
  %1442 = load i32, i32 addrspace(3)* %1350, align 4, !tbaa !111
  %1443 = call i32 @dx.op.binary.i32(i32 39, i32 %1442, i32 %1441)  ; UMax(a,b)
  store i32 %1443, i32 addrspace(3)* %1350, align 4, !tbaa !111
  br label %1444

; <label>:1444                                    ; preds = %1438, %1437
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1445 = load i32, i32 addrspace(3)* %1401, align 4, !tbaa !111
  %1446 = uitofp i32 %1445 to float
  %1447 = uitofp i32 %1402 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %21, i32 %22, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1449 = extractvalue %dx.types.CBufRet.f32 %1448, 0
  %1450 = fmul fast float %1449, %1083
  %1451 = fmul fast float %1449, %1446
  %1452 = fmul fast float %1449, %1447
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %21, i32 %22, i32 undef, float %1450, float %1451, float %1452, float %1450, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %21, i32 %22, i32 undef, float %1348, float %1348, float %1348, float %1348, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!32 = !{void ()* @cs_fog_raymarching_air_clouds_particles, !"cs_fog_raymarching_air_clouds_particles", null, !4, !33}
!33 = !{i32 0, i64 272, i32 4, !34}
!34 = !{i32 8, i32 8, i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
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

