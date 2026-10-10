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
; shader hash: 988deea1cb28fc6b94f48c8986d51a46
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
;                                   texture     f32          3d      T0             t3     1
;                                   texture     f32          2d      T1            t16     1
;                                   texture     f32          2d      T2            t18     1
;                                   texture  struct         r/o      T3            t25     1
;                                   texture     f32          1d      T4            t14     1
;                                   texture     f32          2d      T5            t13     1
;                                   texture     f32          2d      T6             t0     1
;                                   texture    byte         r/o      T7            t17     1
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
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.StructuredBuffer<VolumetricBBoxGpu>" = type { %struct.VolumetricBBoxGpu }
%struct.VolumetricBBoxGpu = type { <3 x float>, i32, <3 x float>, float, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
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

@"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0" = addrspace(3) global float undef, align 4
@"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1" = addrspace(3) global float undef, align 4
@"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2" = addrspace(3) global float undef, align 4

define void @cs_fog_raymarching_air_heightmap_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %19 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %20 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = add i32 %19, %18
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 1
  %26 = add i32 %23, %25
  %27 = lshr i32 %26, 1
  %28 = and i32 %27, 1
  %29 = and i32 %26, 1
  %30 = xor i32 %28, %29
  %31 = shl i32 %18, 1
  %32 = shl i32 %19, 1
  %33 = or i32 %30, %31
  %34 = or i32 %28, %32
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = extractvalue %dx.types.ResRet.i32 %37, 1
  %40 = extractvalue %dx.types.ResRet.i32 %37, 2
  %41 = extractvalue %dx.types.ResRet.i32 %37, 3
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = extractvalue %dx.types.ResRet.i32 %42, 1
  %45 = extractvalue %dx.types.ResRet.i32 %42, 2
  %46 = extractvalue %dx.types.ResRet.i32 %42, 3
  %47 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.i32 %47, 0
  %49 = extractvalue %dx.types.ResRet.i32 %47, 1
  %50 = extractvalue %dx.types.ResRet.i32 %47, 2
  %51 = extractvalue %dx.types.ResRet.i32 %47, 3
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %54 = fmul fast float %53, %53
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %58 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %59 = fmul fast float %58, 0x3FF17B1420000000
  %60 = icmp eq i32 %20, 0
  br i1 %60, label %61, label %202, !dx.controlflow.hints !32

; <label>:61                                      ; preds = %0
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 3
  %66 = extractvalue %dx.types.ResRet.i32 %35, 1
  %67 = and i32 %66, 65535
  %68 = call float @dx.op.legacyF16ToF32(i32 131, i32 %67)  ; LegacyF16ToF32(value)
  %69 = lshr i32 %36, 16
  %70 = call float @dx.op.legacyF16ToF32(i32 131, i32 %69)  ; LegacyF16ToF32(value)
  %71 = and i32 %36, 65535
  %72 = call float @dx.op.legacyF16ToF32(i32 131, i32 %71)  ; LegacyF16ToF32(value)
  %73 = lshr i32 %41, 16
  %74 = call float @dx.op.legacyF16ToF32(i32 131, i32 %73)  ; LegacyF16ToF32(value)
  %75 = and i32 %41, 65535
  %76 = call float @dx.op.legacyF16ToF32(i32 131, i32 %75)  ; LegacyF16ToF32(value)
  %77 = lshr i32 %40, 16
  %78 = call float @dx.op.legacyF16ToF32(i32 131, i32 %77)  ; LegacyF16ToF32(value)
  %79 = and i32 %40, 65535
  %80 = call float @dx.op.legacyF16ToF32(i32 131, i32 %79)  ; LegacyF16ToF32(value)
  %81 = lshr i32 %39, 16
  %82 = call float @dx.op.legacyF16ToF32(i32 131, i32 %81)  ; LegacyF16ToF32(value)
  %83 = lshr i32 %38, 16
  %84 = call float @dx.op.legacyF16ToF32(i32 131, i32 %83)  ; LegacyF16ToF32(value)
  %85 = and i32 %38, 65535
  %86 = call float @dx.op.legacyF16ToF32(i32 131, i32 %85)  ; LegacyF16ToF32(value)
  %87 = lshr i32 %46, 16
  %88 = call float @dx.op.legacyF16ToF32(i32 131, i32 %87)  ; LegacyF16ToF32(value)
  %89 = and i32 %46, 65535
  %90 = call float @dx.op.legacyF16ToF32(i32 131, i32 %89)  ; LegacyF16ToF32(value)
  %91 = lshr i32 %45, 16
  %92 = call float @dx.op.legacyF16ToF32(i32 131, i32 %91)  ; LegacyF16ToF32(value)
  %93 = and i32 %45, 65535
  %94 = call float @dx.op.legacyF16ToF32(i32 131, i32 %93)  ; LegacyF16ToF32(value)
  %95 = lshr i32 %44, 16
  %96 = call float @dx.op.legacyF16ToF32(i32 131, i32 %95)  ; LegacyF16ToF32(value)
  %97 = and i32 %44, 65535
  %98 = call float @dx.op.legacyF16ToF32(i32 131, i32 %97)  ; LegacyF16ToF32(value)
  %99 = and i32 %43, 65535
  %100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %99)  ; LegacyF16ToF32(value)
  %101 = lshr i32 %51, 16
  %102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %101)  ; LegacyF16ToF32(value)
  %103 = and i32 %51, 65535
  %104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %103)  ; LegacyF16ToF32(value)
  %105 = lshr i32 %50, 16
  %106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %105)  ; LegacyF16ToF32(value)
  %107 = and i32 %50, 65535
  %108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %107)  ; LegacyF16ToF32(value)
  %109 = lshr i32 %49, 16
  %110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %109)  ; LegacyF16ToF32(value)
  %111 = and i32 %49, 65535
  %112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %111)  ; LegacyF16ToF32(value)
  %113 = lshr i32 %48, 16
  %114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %113)  ; LegacyF16ToF32(value)
  %115 = and i32 %39, 65535
  %116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %115)  ; LegacyF16ToF32(value)
  %117 = lshr i32 %43, 16
  %118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %117)  ; LegacyF16ToF32(value)
  %119 = and i32 %48, 65535
  %120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %119)  ; LegacyF16ToF32(value)
  %121 = fmul fast float %116, 0x3FD20DD760000000
  %122 = fmul fast float %58, %53
  %123 = fmul fast float %122, %80
  %124 = fmul fast float %58, %58
  %125 = fmul fast float %124, 0x3FEE471020000000
  %126 = fadd fast float %125, 0xBFD42F6020000000
  %127 = fmul fast float %72, %126
  %128 = fmul fast float %78, %56
  %129 = fmul fast float %82, %57
  %130 = fmul fast float %56, %54
  %131 = fmul fast float %130, %59
  %132 = fmul fast float %131, %70
  %133 = fsub fast float -0.000000e+00, %132
  %134 = fmul fast float %57, %54
  %135 = fmul fast float %134, %59
  %136 = fmul fast float %135, %74
  %137 = fmul fast float %56, %56
  %138 = fmul fast float %57, %57
  %139 = fsub fast float %137, %138
  %140 = fmul fast float %139, 0x3FE17B1420000000
  %141 = fmul fast float %140, %68
  %142 = fmul fast float %57, 0x3FF17B1420000000
  %143 = fmul fast float %142, %56
  %144 = fmul fast float %143, %76
  %145 = fadd fast float %129, %128
  %146 = fmul fast float %145, %53
  %147 = fsub fast float %146, %123
  %148 = fmul fast float %147, 0x3FDF454380000000
  %149 = fadd fast float %127, %141
  %150 = fadd fast float %149, %144
  %151 = fmul fast float %150, %54
  %152 = fsub fast float %133, %136
  %153 = fadd fast float %152, %121
  %154 = fadd fast float %153, %148
  %155 = fadd fast float %154, %151
  %156 = fmul fast float %63, %65
  %157 = fmul fast float %156, %155
  %158 = fmul fast float %118, 0x3FD20DD760000000
  %159 = fmul fast float %122, %96
  %160 = fmul fast float %88, %126
  %161 = fmul fast float %94, %56
  %162 = fmul fast float %98, %57
  %163 = fmul fast float %131, %86
  %164 = fsub fast float -0.000000e+00, %163
  %165 = fmul fast float %135, %90
  %166 = fmul fast float %140, %84
  %167 = fmul fast float %143, %92
  %168 = fadd fast float %162, %161
  %169 = fmul fast float %168, %53
  %170 = fsub fast float %169, %159
  %171 = fmul fast float %170, 0x3FDF454380000000
  %172 = fadd fast float %160, %166
  %173 = fadd fast float %172, %167
  %174 = fmul fast float %173, %54
  %175 = fsub fast float %164, %165
  %176 = fadd fast float %175, %158
  %177 = fadd fast float %176, %171
  %178 = fadd fast float %177, %174
  %179 = fmul fast float %156, %178
  %180 = fmul fast float %120, 0x3FD20DD760000000
  %181 = fmul fast float %122, %112
  %182 = fmul fast float %104, %126
  %183 = fmul fast float %110, %56
  %184 = fmul fast float %114, %57
  %185 = fmul fast float %131, %102
  %186 = fsub fast float -0.000000e+00, %185
  %187 = fmul fast float %135, %106
  %188 = fmul fast float %140, %100
  %189 = fmul fast float %143, %108
  %190 = fadd fast float %184, %183
  %191 = fmul fast float %190, %53
  %192 = fsub fast float %191, %181
  %193 = fmul fast float %192, 0x3FDF454380000000
  %194 = fadd fast float %182, %188
  %195 = fadd fast float %194, %189
  %196 = fmul fast float %195, %54
  %197 = fsub fast float %186, %187
  %198 = fadd fast float %197, %180
  %199 = fadd fast float %198, %193
  %200 = fadd fast float %199, %196
  %201 = fmul fast float %156, %200
  store float %201, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  store float %179, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  store float %157, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  br label %202

; <label>:202                                     ; preds = %61, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %203 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  %204 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  %205 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  %206 = uitofp i32 %33 to float
  %207 = uitofp i32 %34 to float
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 2
  %210 = fmul fast float %209, 0x3FE3C6EF40000000
  %211 = frem fast float %206, 2.560000e+02
  %212 = frem fast float %207, 2.560000e+02
  %213 = fptoui float %211 to i32
  %214 = fptoui float %212 to i32
  %215 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %213, i32 %214, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = extractvalue %dx.types.ResRet.f32 %215, 1
  %218 = extractvalue %dx.types.ResRet.f32 %215, 2
  %219 = extractvalue %dx.types.ResRet.f32 %215, 3
  %220 = fadd fast float %216, %210
  %221 = fadd fast float %217, %210
  %222 = fadd fast float %218, %210
  %223 = fadd fast float %219, %210
  %224 = call float @dx.op.unary.f32(i32 22, float %220)  ; Frc(value)
  %225 = call float @dx.op.unary.f32(i32 22, float %221)  ; Frc(value)
  %226 = call float @dx.op.unary.f32(i32 22, float %222)  ; Frc(value)
  %227 = call float @dx.op.unary.f32(i32 22, float %223)  ; Frc(value)
  %228 = fadd fast float %226, %206
  %229 = fadd fast float %227, %207
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 2
  %232 = extractvalue %dx.types.CBufRet.f32 %230, 3
  %233 = fmul fast float %231, %228
  %234 = fmul fast float %232, %229
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.f32 %235, 0
  %237 = extractvalue %dx.types.CBufRet.f32 %235, 1
  %238 = extractvalue %dx.types.CBufRet.f32 %235, 2
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 1
  %241 = fmul fast float %233, 2.000000e+00
  %242 = fmul fast float %234, 2.000000e+00
  %243 = fsub fast float 1.000000e+00, %241
  %244 = fsub fast float 1.000000e+00, %242
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 0
  %247 = extractvalue %dx.types.CBufRet.f32 %245, 1
  %248 = extractvalue %dx.types.CBufRet.f32 %245, 2
  %249 = fmul fast float %246, %243
  %250 = fmul fast float %247, %243
  %251 = fmul fast float %248, %243
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 0
  %254 = extractvalue %dx.types.CBufRet.f32 %252, 1
  %255 = extractvalue %dx.types.CBufRet.f32 %252, 2
  %256 = fmul fast float %253, %244
  %257 = fmul fast float %254, %244
  %258 = fmul fast float %255, %244
  %259 = fadd fast float %256, %249
  %260 = fadd fast float %257, %250
  %261 = fadd fast float %258, %251
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 0
  %264 = extractvalue %dx.types.CBufRet.f32 %262, 1
  %265 = extractvalue %dx.types.CBufRet.f32 %262, 2
  %266 = fadd fast float %259, %263
  %267 = fadd fast float %260, %264
  %268 = fadd fast float %261, %265
  %269 = fmul fast float %266, %240
  %270 = fmul fast float %267, %240
  %271 = fmul fast float %268, %240
  %272 = fmul fast float %269, %269
  %273 = fmul fast float %270, %270
  %274 = fadd fast float %272, %273
  %275 = fmul fast float %271, %271
  %276 = fadd fast float %274, %275
  %277 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %278 = fdiv fast float 1.000000e+00, %277
  %279 = fmul fast float %269, %278
  %280 = fmul fast float %270, %278
  %281 = fmul fast float %271, %278
  %282 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %33, i32 %34, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = fcmp fast ogt float %283, -1.000000e+00
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 1
  %287 = select i1 %284, float %286, float 1.000000e+00
  %288 = fadd fast float %283, 1.000000e+00
  %289 = fmul fast float %287, %288
  %290 = call float @dx.op.unary.f32(i32 6, float %289)  ; FAbs(value)
  %291 = fdiv fast float 1.000000e+00, %240
  %292 = fmul fast float %291, %277
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %295 = fmul fast float %294, %292
  %296 = fmul fast float %292, %290
  %297 = extractvalue %dx.types.CBufRet.f32 %285, 3
  %298 = fcmp fast oge float %290, %297
  %299 = call float @dx.op.binary.f32(i32 36, float %296, float %295)  ; FMin(a,b)
  %300 = select i1 %298, float %295, float %299
  %301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.i32 %301, 3
  %303 = icmp eq i32 %302, 0
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 2
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 2
  %308 = fsub fast float %305, %238
  %309 = fadd fast float %308, %307
  %310 = fsub fast float 0xC7EFFFFFE0000000, %238
  br i1 %303, label %322, label %311, !dx.controlflow.hints !33

; <label>:311                                     ; preds = %202
  %312 = fsub fast float -0.000000e+00, %237
  %313 = fsub fast float -0.000000e+00, %236
  %314 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %313, float %312, float %309)  ; Dot3(ax,ay,az,bx,by,bz)
  %315 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %279, float %280, float %281)  ; Dot3(ax,ay,az,bx,by,bz)
  %316 = fdiv fast float 1.000000e+00, %315
  %317 = fmul fast float %316, %314
  %318 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %313, float %312, float %310)  ; Dot3(ax,ay,az,bx,by,bz)
  %319 = fmul fast float %316, %318
  %320 = call float @dx.op.binary.f32(i32 36, float %317, float %319)  ; FMin(a,b)
  %321 = call float @dx.op.binary.f32(i32 35, float %317, float %319)  ; FMax(a,b)
  br label %355

; <label>:322                                     ; preds = %202
  %323 = extractvalue %dx.types.CBufRet.f32 %304, 0
  %324 = extractvalue %dx.types.CBufRet.f32 %304, 1
  %325 = extractvalue %dx.types.CBufRet.f32 %306, 0
  %326 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %327 = fdiv fast float 1.000000e+00, %279
  %328 = fdiv fast float 1.000000e+00, %280
  %329 = fdiv fast float 1.000000e+00, %281
  %330 = fsub fast float %323, %236
  %331 = fmul fast float %327, %330
  %332 = fadd fast float %330, %325
  %333 = fmul fast float %332, %327
  %334 = call float @dx.op.binary.f32(i32 36, float %331, float %333)  ; FMin(a,b)
  %335 = call float @dx.op.binary.f32(i32 35, float %331, float %333)  ; FMax(a,b)
  %336 = fsub fast float %324, %237
  %337 = fmul fast float %328, %336
  %338 = fadd fast float %336, %326
  %339 = fmul fast float %338, %328
  %340 = call float @dx.op.binary.f32(i32 36, float %337, float %339)  ; FMin(a,b)
  %341 = call float @dx.op.binary.f32(i32 35, float %334, float %340)  ; FMax(a,b)
  %342 = call float @dx.op.binary.f32(i32 35, float %337, float %339)  ; FMax(a,b)
  %343 = call float @dx.op.binary.f32(i32 36, float %335, float %342)  ; FMin(a,b)
  %344 = fmul fast float %329, %310
  %345 = fmul fast float %329, %309
  %346 = call float @dx.op.binary.f32(i32 36, float %344, float %345)  ; FMin(a,b)
  %347 = call float @dx.op.binary.f32(i32 35, float %341, float %346)  ; FMax(a,b)
  %348 = call float @dx.op.binary.f32(i32 35, float %344, float %345)  ; FMax(a,b)
  %349 = call float @dx.op.binary.f32(i32 36, float %343, float %348)  ; FMin(a,b)
  %350 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %347)  ; FMax(a,b)
  %351 = fcmp fast ult float %349, %350
  br i1 %351, label %355, label %352, !dx.controlflow.hints !34

; <label>:352                                     ; preds = %322
  %353 = call float @dx.op.binary.f32(i32 36, float %347, float %349)  ; FMin(a,b)
  %354 = call float @dx.op.binary.f32(i32 35, float %347, float %349)  ; FMax(a,b)
  br label %355

; <label>:355                                     ; preds = %352, %322, %311
  %356 = phi float [ %320, %311 ], [ %353, %352 ], [ 0.000000e+00, %322 ]
  %357 = phi float [ %321, %311 ], [ %354, %352 ], [ 0.000000e+00, %322 ]
  %358 = fcmp fast oeq float %357, 0.000000e+00
  %359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.f32 %359, 1
  %361 = fcmp fast olt float %357, %360
  %362 = or i1 %358, %361
  br i1 %362, label %367, label %363, !dx.controlflow.hints !35

; <label>:363                                     ; preds = %355
  %364 = call float @dx.op.binary.f32(i32 35, float %360, float %356)  ; FMax(a,b)
  %365 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %364)  ; FMin(a,b)
  %366 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %357)  ; FMax(a,b)
  br label %367

; <label>:367                                     ; preds = %363, %355
  %368 = phi i32 [ 1, %363 ], [ 0, %355 ]
  %369 = phi float [ %366, %363 ], [ -1.000000e+00, %355 ]
  %370 = phi float [ %365, %363 ], [ 0x47EFFFFFE0000000, %355 ]
  %371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.f32 %371, 3
  %373 = fsub fast float -0.000000e+00, %236
  %374 = fsub fast float -0.000000e+00, %237
  %375 = fsub fast float %372, %238
  %376 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %373, float %374, float %375)  ; Dot3(ax,ay,az,bx,by,bz)
  %377 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %279, float %280, float %281)  ; Dot3(ax,ay,az,bx,by,bz)
  %378 = fdiv fast float 1.000000e+00, %377
  %379 = fmul fast float %378, %376
  %380 = fcmp fast olt float %379, 0.000000e+00
  %381 = fcmp fast ogt float %281, 0.000000e+00
  %382 = and i1 %381, %380
  br i1 %382, label %387, label %383, !dx.controlflow.hints !36

; <label>:383                                     ; preds = %367
  %384 = fcmp fast olt float %281, 0.000000e+00
  br i1 %384, label %385, label %387, !dx.controlflow.hints !37

; <label>:385                                     ; preds = %383
  %386 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %379)  ; FMax(a,b)
  br label %387

; <label>:387                                     ; preds = %385, %383, %367
  %388 = phi float [ 0.000000e+00, %367 ], [ %386, %385 ], [ 0.000000e+00, %383 ]
  %389 = phi float [ 0.000000e+00, %367 ], [ 0x47EFFFFFE0000000, %385 ], [ %379, %383 ]
  %390 = fcmp fast oeq float %389, 0.000000e+00
  br i1 %390, label %394, label %391, !dx.controlflow.hints !38

; <label>:391                                     ; preds = %387
  %392 = call float @dx.op.binary.f32(i32 36, float %370, float %388)  ; FMin(a,b)
  %393 = call float @dx.op.binary.f32(i32 35, float %369, float %389)  ; FMax(a,b)
  br label %394

; <label>:394                                     ; preds = %391, %387
  %395 = phi i32 [ 1, %391 ], [ 0, %387 ]
  %396 = phi float [ %393, %391 ], [ %369, %387 ]
  %397 = phi float [ %392, %391 ], [ %370, %387 ]
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 3
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %402 = fsub fast float %399, %238
  %403 = fadd fast float %402, %401
  %404 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %373, float %374, float %403)  ; Dot3(ax,ay,az,bx,by,bz)
  %405 = fmul fast float %378, %404
  %406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.f32 %406, 2
  %408 = fsub fast float %407, %238
  %409 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %373, float %374, float %408)  ; Dot3(ax,ay,az,bx,by,bz)
  %410 = fmul fast float %378, %409
  %411 = call float @dx.op.binary.f32(i32 36, float %405, float %410)  ; FMin(a,b)
  %412 = call float @dx.op.binary.f32(i32 35, float %405, float %410)  ; FMax(a,b)
  %413 = call float @dx.op.binary.f32(i32 36, float %397, float %411)  ; FMin(a,b)
  %414 = call float @dx.op.binary.f32(i32 35, float %396, float %412)  ; FMax(a,b)
  %415 = fdiv fast float 1.000000e+00, %279
  %416 = fdiv fast float 1.000000e+00, %280
  %417 = fdiv fast float 1.000000e+00, %281
  %418 = call float @dx.op.binary.f32(i32 36, float %300, float %414)  ; FMin(a,b)
  %419 = call float @dx.op.binary.f32(i32 35, float %277, float %413)  ; FMax(a,b)
  %420 = extractvalue %dx.types.CBufRet.f32 %371, 0
  %421 = fmul fast float %225, 2.000000e+00
  %422 = fadd fast float %421, -1.000000e+00
  %423 = fmul fast float %420, %422
  %424 = fadd fast float %423, %419
  %425 = fcmp fast olt float %424, %418
  %426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %427 = extractvalue %dx.types.CBufRet.f32 %426, 2
  %428 = fcmp fast olt float %427, 1.000000e+00
  %429 = and i1 %425, %428
  br i1 %429, label %430, label %1674

; <label>:430                                     ; preds = %394
  %431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %432 = extractvalue %dx.types.CBufRet.i32 %431, 1
  %433 = add i32 %432, -1
  %434 = fmul fast float %424, %281
  %435 = fadd fast float %434, %238
  %436 = fmul fast float %424, %280
  %437 = fadd fast float %436, %237
  %438 = fmul fast float %424, %279
  %439 = fadd fast float %438, %236
  br label %440

; <label>:440                                     ; preds = %1646, %430
  %441 = phi float [ %1648, %1646 ], [ undef, %430 ]
  %442 = phi float [ %1649, %1646 ], [ undef, %430 ]
  %443 = phi float [ %1650, %1646 ], [ undef, %430 ]
  %444 = phi float [ %1651, %1646 ], [ undef, %430 ]
  %445 = phi float [ %742, %1646 ], [ undef, %430 ]
  %446 = phi float [ %743, %1646 ], [ undef, %430 ]
  %447 = phi float [ %744, %1646 ], [ undef, %430 ]
  %448 = phi float [ %745, %1646 ], [ undef, %430 ]
  %449 = phi float [ %1652, %1646 ], [ 0.000000e+00, %430 ]
  %450 = phi float [ %1653, %1646 ], [ 1.000000e+00, %430 ]
  %451 = phi float [ %1654, %1646 ], [ 0.000000e+00, %430 ]
  %452 = phi float [ %1655, %1646 ], [ 0.000000e+00, %430 ]
  %453 = phi float [ %1656, %1646 ], [ 0.000000e+00, %430 ]
  %454 = phi float [ %1666, %1646 ], [ %439, %430 ]
  %455 = phi float [ %1667, %1646 ], [ %437, %430 ]
  %456 = phi float [ %1668, %1646 ], [ %435, %430 ]
  %457 = phi float [ %1647, %1646 ], [ %424, %430 ]
  %458 = phi i32 [ %747, %1646 ], [ 10, %430 ]
  %459 = phi i32 [ %639, %1646 ], [ %433, %430 ]
  %460 = phi float [ %1657, %1646 ], [ 0.000000e+00, %430 ]
  %461 = phi float [ %1658, %1646 ], [ 0.000000e+00, %430 ]
  %462 = phi float [ %1659, %1646 ], [ 0.000000e+00, %430 ]
  %463 = phi float [ %1660, %1646 ], [ 0.000000e+00, %430 ]
  %464 = phi float [ %1661, %1646 ], [ 0.000000e+00, %430 ]
  %465 = phi i32 [ %1662, %1646 ], [ 0, %430 ]
  %466 = fsub fast float -0.000000e+00, %455
  %467 = fsub fast float -0.000000e+00, %454
  %468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %469 = extractvalue %dx.types.CBufRet.f32 %468, 0
  %470 = icmp eq i32 %368, 0
  br i1 %470, label %636, label %471, !dx.controlflow.hints !39

; <label>:471                                     ; preds = %440
  %472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.i32 %472, 1
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 1
  %476 = fcmp fast ogt float %475, %457
  br i1 %476, label %477, label %479, !dx.controlflow.hints !40

; <label>:477                                     ; preds = %471
  %478 = fsub fast float %475, %457
  br label %626

; <label>:479                                     ; preds = %471
  %480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.i32 %480, 3
  %482 = icmp eq i32 %481, 0
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 2
  %485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %486 = extractvalue %dx.types.CBufRet.f32 %485, 2
  %487 = fsub fast float %484, %456
  %488 = fadd fast float %487, %486
  %489 = fsub fast float 0xC7EFFFFFE0000000, %456
  br i1 %482, label %497, label %490, !dx.controlflow.hints !33

; <label>:490                                     ; preds = %479
  %491 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %467, float %466, float %488)  ; Dot3(ax,ay,az,bx,by,bz)
  %492 = fmul fast float %378, %491
  %493 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %467, float %466, float %489)  ; Dot3(ax,ay,az,bx,by,bz)
  %494 = fmul fast float %378, %493
  %495 = call float @dx.op.binary.f32(i32 36, float %492, float %494)  ; FMin(a,b)
  %496 = call float @dx.op.binary.f32(i32 35, float %492, float %494)  ; FMax(a,b)
  br label %527

; <label>:497                                     ; preds = %479
  %498 = extractvalue %dx.types.CBufRet.f32 %483, 0
  %499 = extractvalue %dx.types.CBufRet.f32 %483, 1
  %500 = extractvalue %dx.types.CBufRet.f32 %485, 0
  %501 = extractvalue %dx.types.CBufRet.f32 %485, 1
  %502 = fsub fast float %498, %454
  %503 = fmul fast float %415, %502
  %504 = fadd fast float %502, %500
  %505 = fmul fast float %504, %415
  %506 = call float @dx.op.binary.f32(i32 36, float %503, float %505)  ; FMin(a,b)
  %507 = call float @dx.op.binary.f32(i32 35, float %503, float %505)  ; FMax(a,b)
  %508 = fsub fast float %499, %455
  %509 = fmul fast float %416, %508
  %510 = fadd fast float %508, %501
  %511 = fmul fast float %510, %416
  %512 = call float @dx.op.binary.f32(i32 36, float %509, float %511)  ; FMin(a,b)
  %513 = call float @dx.op.binary.f32(i32 35, float %506, float %512)  ; FMax(a,b)
  %514 = call float @dx.op.binary.f32(i32 35, float %509, float %511)  ; FMax(a,b)
  %515 = call float @dx.op.binary.f32(i32 36, float %507, float %514)  ; FMin(a,b)
  %516 = fmul fast float %417, %489
  %517 = fmul fast float %417, %488
  %518 = call float @dx.op.binary.f32(i32 36, float %516, float %517)  ; FMin(a,b)
  %519 = call float @dx.op.binary.f32(i32 35, float %513, float %518)  ; FMax(a,b)
  %520 = call float @dx.op.binary.f32(i32 35, float %516, float %517)  ; FMax(a,b)
  %521 = call float @dx.op.binary.f32(i32 36, float %515, float %520)  ; FMin(a,b)
  %522 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %519)  ; FMax(a,b)
  %523 = fcmp fast ult float %521, %522
  br i1 %523, label %527, label %524, !dx.controlflow.hints !34

; <label>:524                                     ; preds = %497
  %525 = call float @dx.op.binary.f32(i32 36, float %519, float %521)  ; FMin(a,b)
  %526 = call float @dx.op.binary.f32(i32 35, float %519, float %521)  ; FMax(a,b)
  br label %527

; <label>:527                                     ; preds = %524, %497, %490
  %528 = phi float [ %495, %490 ], [ %525, %524 ], [ 0.000000e+00, %497 ]
  %529 = phi float [ %496, %490 ], [ %526, %524 ], [ 0.000000e+00, %497 ]
  %530 = fcmp fast ogt float %528, 0.000000e+00
  br i1 %530, label %626, label %531, !dx.controlflow.hints !41

; <label>:531                                     ; preds = %527
  %532 = fcmp fast ugt float %529, 0.000000e+00
  br i1 %532, label %533, label %626, !dx.controlflow.hints !42

; <label>:533                                     ; preds = %531
  %534 = icmp sgt i32 %459, 0
  br i1 %534, label %535, label %620

; <label>:535                                     ; preds = %533
  br label %536

; <label>:536                                     ; preds = %616, %535
  %537 = phi i32 [ %617, %616 ], [ %459, %535 ]
  %538 = sitofp i32 %537 to float
  %539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %540 = extractvalue %dx.types.CBufRet.f32 %539, 0
  %541 = extractvalue %dx.types.CBufRet.f32 %539, 1
  %542 = fsub fast float %454, %540
  %543 = fsub fast float %455, %541
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 0
  %546 = extractvalue %dx.types.CBufRet.f32 %544, 1
  %547 = fmul fast float %542, %545
  %548 = fmul fast float %543, %546
  %549 = fsub fast float 1.000000e+00, %548
  %550 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.i32 %550, 3
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %559, label %553, !dx.controlflow.hints !43

; <label>:553                                     ; preds = %536
  %554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %547, float %549, float undef, float undef, i32 0, i32 0, i32 undef, float %538)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %555 = extractvalue %dx.types.ResRet.f32 %554, 0
  %556 = extractvalue %dx.types.ResRet.f32 %554, 1
  %557 = extractvalue %dx.types.ResRet.f32 %554, 2
  %558 = extractvalue %dx.types.ResRet.f32 %554, 3
  br label %565

; <label>:559                                     ; preds = %536
  %560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %547, float %549, float undef, float undef, i32 0, i32 0, i32 undef, float %538)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %561 = extractvalue %dx.types.ResRet.f32 %560, 0
  %562 = extractvalue %dx.types.ResRet.f32 %560, 1
  %563 = extractvalue %dx.types.ResRet.f32 %560, 2
  %564 = extractvalue %dx.types.ResRet.f32 %560, 3
  br label %565

; <label>:565                                     ; preds = %559, %553
  %566 = phi float [ %555, %553 ], [ %561, %559 ]
  %567 = phi float [ %556, %553 ], [ %562, %559 ]
  %568 = phi float [ %557, %553 ], [ %563, %559 ]
  %569 = phi float [ %558, %553 ], [ %564, %559 ]
  %570 = extractvalue %dx.types.CBufRet.f32 %544, 3
  %571 = fmul fast float %570, %566
  %572 = extractvalue %dx.types.CBufRet.f32 %539, 2
  %573 = fadd fast float %571, %572
  %574 = fmul fast float %570, %567
  %575 = fadd fast float %574, %572
  %576 = fmul fast float %570, %568
  %577 = fadd fast float %576, %572
  %578 = and i32 %537, 31
  %579 = shl i32 1, %578
  %580 = uitofp i32 %579 to float
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 3
  %583 = fdiv fast float 1.000000e+00, %582
  %584 = fmul fast float %583, %580
  %585 = fmul fast float %584, %281
  %586 = fadd fast float %585, %456
  %587 = fcmp fast oeq float %569, 0.000000e+00
  %588 = fcmp fast ogt float %456, %575
  %589 = fcmp fast ogt float %586, %575
  %590 = and i1 %588, %589
  %591 = or i1 %587, %590
  br i1 %591, label %592, label %596, !dx.controlflow.hints !44

; <label>:592                                     ; preds = %565
  %593 = add nsw i32 %537, 1
  %594 = add nsw i32 %473, -1
  %595 = call i32 @dx.op.binary.i32(i32 38, i32 %593, i32 %594)  ; IMin(a,b)
  br label %626

; <label>:596                                     ; preds = %565
  %597 = fcmp fast olt float %456, %577
  %598 = fcmp fast olt float %586, %577
  %599 = and i1 %597, %598
  br i1 %599, label %600, label %604, !dx.controlflow.hints !45

; <label>:600                                     ; preds = %596
  %601 = add nsw i32 %537, 1
  %602 = add nsw i32 %473, -1
  %603 = call i32 @dx.op.binary.i32(i32 38, i32 %601, i32 %602)  ; IMin(a,b)
  br label %626

; <label>:604                                     ; preds = %596
  %605 = fcmp fast olt float %456, %573
  %606 = fcmp fast olt float %586, %573
  %607 = and i1 %605, %606
  br i1 %607, label %608, label %616, !dx.controlflow.hints !46

; <label>:608                                     ; preds = %604
  %609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %610 = extractvalue %dx.types.CBufRet.f32 %609, 3
  %611 = extractvalue %dx.types.CBufRet.f32 %544, 2
  %612 = fcmp fast une float %610, %611
  br i1 %612, label %613, label %620, !dx.controlflow.hints !47

; <label>:613                                     ; preds = %608
  %614 = fsub fast float %456, %577
  %615 = call float @dx.op.binary.f32(i32 36, float %584, float %614)  ; FMin(a,b)
  br label %620

; <label>:616                                     ; preds = %604
  %617 = add nsw i32 %537, -1
  %618 = icmp sgt i32 %537, 1
  br i1 %618, label %536, label %619

; <label>:619                                     ; preds = %616
  br label %620

; <label>:620                                     ; preds = %619, %613, %608, %533
  %621 = phi float [ %615, %613 ], [ %584, %608 ], [ 0.000000e+00, %533 ], [ 0.000000e+00, %619 ]
  %622 = phi i32 [ %537, %613 ], [ %537, %608 ], [ %459, %533 ], [ %617, %619 ]
  %623 = add nsw i32 %622, 1
  %624 = add nsw i32 %473, -1
  %625 = call i32 @dx.op.binary.i32(i32 38, i32 %623, i32 %624)  ; IMin(a,b)
  br label %626

; <label>:626                                     ; preds = %620, %600, %592, %531, %527, %477
  %627 = phi float [ %478, %477 ], [ %584, %592 ], [ %584, %600 ], [ %621, %620 ], [ 0x47EFFFFFE0000000, %531 ], [ %528, %527 ]
  %628 = phi i32 [ %368, %477 ], [ %368, %592 ], [ %368, %600 ], [ %368, %620 ], [ 0, %531 ], [ %368, %527 ]
  %629 = phi i32 [ %459, %477 ], [ %595, %592 ], [ %603, %600 ], [ %625, %620 ], [ %459, %531 ], [ %459, %527 ]
  %630 = icmp ne i32 %628, 0
  %631 = zext i1 %630 to i32
  %632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.f32 %632, 2
  %634 = call float @dx.op.binary.f32(i32 35, float %627, float %633)  ; FMax(a,b)
  %635 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %634)  ; FMin(a,b)
  br label %636

; <label>:636                                     ; preds = %626, %440
  %637 = phi i32 [ %631, %626 ], [ 0, %440 ]
  %638 = phi float [ %635, %626 ], [ 0x47EFFFFFE0000000, %440 ]
  %639 = phi i32 [ %629, %626 ], [ %459, %440 ]
  %640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.f32 %640, 0
  %642 = extractvalue %dx.types.CBufRet.f32 %640, 1
  %643 = fsub fast float %454, %641
  %644 = fsub fast float %455, %642
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 2
  %647 = extractvalue %dx.types.CBufRet.f32 %645, 3
  %648 = fmul fast float %643, %646
  %649 = fmul fast float %644, %647
  %650 = call float @dx.op.binary.f32(i32 36, float %648, float %649)  ; FMin(a,b)
  %651 = fcmp fast olt float %650, 0.000000e+00
  %652 = call float @dx.op.binary.f32(i32 35, float %648, float %649)  ; FMax(a,b)
  %653 = fcmp fast ogt float %652, 1.000000e+00
  %654 = or i1 %651, %653
  %655 = extractvalue %dx.types.CBufRet.f32 %640, 2
  %656 = fcmp fast olt float %456, %655
  %657 = or i1 %654, %656
  %658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %659 = extractvalue %dx.types.CBufRet.f32 %658, 3
  %660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %661 = extractvalue %dx.types.CBufRet.f32 %660, 0
  %662 = fadd fast float %661, %659
  %663 = fcmp fast ogt float %456, %662
  %664 = or i1 %657, %663
  br i1 %664, label %665, label %694, !dx.controlflow.hints !48

; <label>:665                                     ; preds = %636
  %666 = extractvalue %dx.types.CBufRet.f32 %645, 0
  %667 = extractvalue %dx.types.CBufRet.f32 %645, 1
  %668 = fsub fast float %641, %454
  %669 = fmul fast float %668, %415
  %670 = fadd fast float %668, %666
  %671 = fmul fast float %670, %415
  %672 = call float @dx.op.binary.f32(i32 36, float %669, float %671)  ; FMin(a,b)
  %673 = call float @dx.op.binary.f32(i32 35, float %669, float %671)  ; FMax(a,b)
  %674 = fsub fast float %642, %455
  %675 = fmul fast float %674, %416
  %676 = fadd fast float %674, %667
  %677 = fmul fast float %676, %416
  %678 = call float @dx.op.binary.f32(i32 36, float %675, float %677)  ; FMin(a,b)
  %679 = call float @dx.op.binary.f32(i32 35, float %672, float %678)  ; FMax(a,b)
  %680 = call float @dx.op.binary.f32(i32 35, float %675, float %677)  ; FMax(a,b)
  %681 = call float @dx.op.binary.f32(i32 36, float %673, float %680)  ; FMin(a,b)
  %682 = fsub fast float %655, %456
  %683 = fmul fast float %682, %417
  %684 = fsub fast float %659, %456
  %685 = fadd fast float %684, %661
  %686 = fmul fast float %685, %417
  %687 = call float @dx.op.binary.f32(i32 36, float %683, float %686)  ; FMin(a,b)
  %688 = call float @dx.op.binary.f32(i32 35, float %679, float %687)  ; FMax(a,b)
  %689 = call float @dx.op.binary.f32(i32 35, float %683, float %686)  ; FMax(a,b)
  %690 = call float @dx.op.binary.f32(i32 36, float %681, float %689)  ; FMin(a,b)
  %691 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %688)  ; FMax(a,b)
  %692 = fcmp fast oge float %690, %691
  %693 = select i1 %692, float %688, float 1.000000e+07
  br label %740

; <label>:694                                     ; preds = %636
  %695 = fsub fast float 1.000000e+00, %649
  %696 = icmp eq i32 %458, 0
  br i1 %696, label %725, label %697

; <label>:697                                     ; preds = %694
  br label %698

; <label>:698                                     ; preds = %721, %697
  %699 = phi i32 [ %722, %721 ], [ %458, %697 ]
  %700 = uitofp i32 %699 to float
  %701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %648, float %695, float undef, float undef, i32 0, i32 0, i32 undef, float %700)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %702 = extractvalue %dx.types.ResRet.f32 %701, 0
  %703 = extractvalue %dx.types.ResRet.f32 %701, 1
  %704 = extractvalue %dx.types.ResRet.f32 %701, 2
  %705 = fcmp fast oeq float %702, 0.000000e+00
  %706 = fcmp ule float %456, %704
  %707 = fcmp uge float %456, %703
  %708 = or i1 %707, %706
  %709 = or i1 %705, %708
  br i1 %709, label %710, label %721, !dx.controlflow.hints !49

; <label>:710                                     ; preds = %698
  %711 = extractvalue %dx.types.ResRet.f32 %701, 3
  %712 = extractvalue %dx.types.CBufRet.f32 %645, 0
  %713 = and i32 %699, 31
  %714 = lshr i32 1024, %713
  %715 = uitofp i32 %714 to float
  %716 = fdiv fast float %712, %715
  %717 = add i32 %699, 1
  %718 = uitofp i32 %717 to float
  %719 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %718)  ; FMin(a,b)
  %720 = fptosi float %719 to i32
  br label %740

; <label>:721                                     ; preds = %698
  %722 = add i32 %699, -1
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %724, label %698, !llvm.loop !50

; <label>:724                                     ; preds = %721
  br label %725

; <label>:725                                     ; preds = %724, %694
  %726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %648, float %695, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %727 = extractvalue %dx.types.ResRet.f32 %726, 0
  %728 = extractvalue %dx.types.ResRet.f32 %726, 1
  %729 = extractvalue %dx.types.ResRet.f32 %726, 2
  %730 = extractvalue %dx.types.ResRet.f32 %726, 3
  %731 = extractvalue %dx.types.CBufRet.f32 %645, 0
  %732 = fmul fast float %731, 9.765625e-04
  %733 = fcmp fast oeq float %727, 0.000000e+00
  %734 = fcmp ule float %456, %729
  %735 = fcmp uge float %456, %728
  %736 = or i1 %735, %734
  %737 = or i1 %733, %736
  %738 = zext i1 %737 to i32
  %739 = xor i32 %738, 1
  br label %740

; <label>:740                                     ; preds = %725, %710, %665
  %741 = phi float [ %693, %665 ], [ %716, %710 ], [ %732, %725 ]
  %742 = phi float [ %445, %665 ], [ %702, %710 ], [ %727, %725 ]
  %743 = phi float [ %446, %665 ], [ %703, %710 ], [ %728, %725 ]
  %744 = phi float [ %447, %665 ], [ %704, %710 ], [ %729, %725 ]
  %745 = phi float [ %448, %665 ], [ %711, %710 ], [ %730, %725 ]
  %746 = phi i32 [ 0, %665 ], [ 0, %710 ], [ %739, %725 ]
  %747 = phi i32 [ 10, %665 ], [ %720, %710 ], [ 1, %725 ]
  %748 = icmp eq i32 %746, 0
  %749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.f32 %749, 2
  %751 = call float @dx.op.binary.f32(i32 35, float %741, float %750)  ; FMax(a,b)
  %752 = call float @dx.op.binary.f32(i32 36, float %638, float %751)  ; FMin(a,b)
  %753 = icmp eq i32 %395, 0
  br i1 %753, label %766, label %754, !dx.controlflow.hints !52

; <label>:754                                     ; preds = %740
  %755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %756 = extractvalue %dx.types.CBufRet.f32 %755, 3
  %757 = extractvalue %dx.types.CBufRet.f32 %755, 2
  %758 = fmul fast float %756, %457
  %759 = fdiv fast float %758, %418
  %760 = fadd fast float %759, 1.000000e+00
  %761 = call float @dx.op.unary.f32(i32 23, float %760)  ; Log(value)
  %762 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %761)  ; FMin(a,b)
  %763 = fmul fast float %757, %418
  %764 = fmul fast float %763, %762
  %765 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %764)  ; FMin(a,b)
  br label %766

; <label>:766                                     ; preds = %754, %740
  %767 = phi float [ %765, %754 ], [ 0x47EFFFFFE0000000, %740 ]
  %768 = extractvalue %dx.types.CBufRet.f32 %468, 2
  %769 = fmul fast float %768, %457
  %770 = call float @dx.op.unary.f32(i32 23, float %769)  ; Log(value)
  %771 = fmul fast float %770, 0x3FE62E4300000000
  %772 = call float @dx.op.binary.f32(i32 35, float %771, float 1.000000e+00)  ; FMax(a,b)
  %773 = fmul fast float %772, %767
  %774 = call float @dx.op.binary.f32(i32 36, float %773, float %752)  ; FMin(a,b)
  %775 = call float @dx.op.binary.f32(i32 35, float %774, float %469)  ; FMax(a,b)
  %776 = fsub fast float %418, %457
  %777 = fadd fast float %776, 0x3F1A36E2E0000000
  %778 = call float @dx.op.binary.f32(i32 36, float %777, float %775)  ; FMin(a,b)
  %779 = icmp eq i32 %637, 0
  br i1 %779, label %885, label %780, !dx.controlflow.hints !53

; <label>:780                                     ; preds = %766
  %781 = fcmp fast olt float %777, %775
  %782 = fmul fast float %281, %224
  %783 = fmul fast float %782, %778
  %784 = fadd fast float %783, %456
  %785 = fmul fast float %281, %225
  %786 = fmul fast float %785, %778
  %787 = fadd fast float %786, %456
  %788 = fmul fast float %281, %226
  %789 = fmul fast float %788, %778
  %790 = fadd fast float %789, %456
  br i1 %781, label %791, label %796, !dx.controlflow.hints !54

; <label>:791                                     ; preds = %780
  %792 = fmul fast float %778, %279
  %793 = fmul fast float %778, %280
  %794 = fadd fast float %792, %454
  %795 = fadd fast float %793, %455
  br label %796

; <label>:796                                     ; preds = %791, %780
  %797 = phi float [ %794, %791 ], [ %454, %780 ]
  %798 = phi float [ %795, %791 ], [ %455, %780 ]
  %799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %800 = extractvalue %dx.types.CBufRet.f32 %799, 0
  %801 = extractvalue %dx.types.CBufRet.f32 %799, 1
  %802 = fsub fast float %797, %800
  %803 = fsub fast float %798, %801
  %804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.f32 %804, 0
  %806 = extractvalue %dx.types.CBufRet.f32 %804, 1
  %807 = fmul fast float %802, %805
  %808 = fmul fast float %803, %806
  %809 = fsub fast float 1.000000e+00, %808
  %810 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %811 = extractvalue %dx.types.CBufRet.i32 %810, 3
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %819, label %813, !dx.controlflow.hints !43

; <label>:813                                     ; preds = %796
  %814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %807, float %809, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %815 = extractvalue %dx.types.ResRet.f32 %814, 0
  %816 = extractvalue %dx.types.ResRet.f32 %814, 1
  %817 = extractvalue %dx.types.ResRet.f32 %814, 2
  %818 = extractvalue %dx.types.ResRet.f32 %814, 3
  br label %825

; <label>:819                                     ; preds = %796
  %820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %807, float %809, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = extractvalue %dx.types.ResRet.f32 %820, 1
  %823 = extractvalue %dx.types.ResRet.f32 %820, 2
  %824 = extractvalue %dx.types.ResRet.f32 %820, 3
  br label %825

; <label>:825                                     ; preds = %819, %813
  %826 = phi float [ %815, %813 ], [ %821, %819 ]
  %827 = phi float [ %816, %813 ], [ %822, %819 ]
  %828 = phi float [ %817, %813 ], [ %823, %819 ]
  %829 = phi float [ %818, %813 ], [ %824, %819 ]
  %830 = extractvalue %dx.types.CBufRet.f32 %804, 3
  %831 = fmul fast float %830, %827
  %832 = fmul fast float %831, %826
  %833 = fsub fast float %831, %832
  %834 = fcmp fast ole float %833, 0.000000e+00
  %835 = extractvalue %dx.types.CBufRet.f32 %799, 2
  %836 = fadd fast float %832, %835
  %837 = fmul fast float %830, %828
  %838 = fadd fast float %837, %835
  %839 = fdiv fast float 1.000000e+00, %833
  %840 = select i1 %834, float 1.000000e+06, float %839
  %841 = fsub fast float %784, %836
  %842 = fmul fast float %840, %841
  %843 = call float @dx.op.unary.f32(i32 7, float %842)  ; Saturate(value)
  %844 = extractvalue %dx.types.CBufRet.f32 %804, 2
  %845 = fmul fast float %844, %843
  %846 = fsub fast float %844, %845
  %847 = fcmp fast olt float %784, %838
  %848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.f32 %848, 3
  %850 = select i1 %847, float %849, float 1.000000e+00
  %851 = fmul fast float %846, %850
  %852 = fsub fast float %787, %836
  %853 = fmul fast float %840, %852
  %854 = call float @dx.op.unary.f32(i32 7, float %853)  ; Saturate(value)
  %855 = fmul fast float %844, %854
  %856 = fsub fast float %844, %855
  %857 = fcmp fast olt float %787, %838
  %858 = select i1 %857, float %849, float 1.000000e+00
  %859 = fmul fast float %856, %858
  %860 = fadd fast float %859, %851
  %861 = fsub fast float %790, %836
  %862 = fmul fast float %840, %861
  %863 = call float @dx.op.unary.f32(i32 7, float %862)  ; Saturate(value)
  %864 = fmul fast float %844, %863
  %865 = fsub fast float %844, %864
  %866 = fcmp fast olt float %790, %838
  %867 = select i1 %866, float %849, float 1.000000e+00
  %868 = fmul fast float %865, %867
  %869 = fadd fast float %860, %868
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 2
  %872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %873 = extractvalue %dx.types.CBufRet.f32 %872, 0
  %874 = extractvalue %dx.types.CBufRet.f32 %872, 1
  %875 = extractvalue %dx.types.CBufRet.f32 %872, 2
  %876 = fmul fast float %778, 0x3FD5555560000000
  %877 = fmul fast float %876, %829
  %878 = fmul fast float %877, %871
  %879 = fmul fast float %878, %869
  %880 = extractvalue %dx.types.CBufRet.f32 %848, 0
  %881 = fmul fast float %879, %873
  %882 = fmul fast float %879, %874
  %883 = fmul fast float %879, %875
  %884 = fmul fast float %879, %880
  br label %885

; <label>:885                                     ; preds = %825, %766
  %886 = phi float [ %879, %825 ], [ 0.000000e+00, %766 ]
  %887 = phi float [ %884, %825 ], [ 0.000000e+00, %766 ]
  %888 = phi float [ %881, %825 ], [ 0.000000e+00, %766 ]
  %889 = phi float [ %882, %825 ], [ 0.000000e+00, %766 ]
  %890 = phi float [ %883, %825 ], [ 0.000000e+00, %766 ]
  br i1 %753, label %950, label %891, !dx.controlflow.hints !55

; <label>:891                                     ; preds = %885
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 0
  %894 = fsub fast float %893, %456
  %895 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %467, float %466, float %894)  ; Dot3(ax,ay,az,bx,by,bz)
  %896 = fmul fast float %378, %895
  %897 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %896)  ; FMax(a,b)
  %898 = fcmp fast olt float %281, 0.000000e+00
  %899 = call float @dx.op.binary.f32(i32 36, float %778, float %897)  ; FMin(a,b)
  br i1 %898, label %901, label %900, !dx.controlflow.hints !56

; <label>:900                                     ; preds = %891
  br label %901

; <label>:901                                     ; preds = %900, %891
  %902 = phi float [ 0.000000e+00, %900 ], [ %899, %891 ]
  %903 = phi float [ %899, %900 ], [ %778, %891 ]
  %904 = phi float [ %899, %900 ], [ 0.000000e+00, %891 ]
  %905 = phi float [ %778, %900 ], [ %899, %891 ]
  %906 = fsub fast float %903, %902
  %907 = extractvalue %dx.types.CBufRet.f32 %892, 1
  %908 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %907)  ; FMin(a,b)
  %909 = fsub fast float %456, %893
  %910 = fmul fast float %908, 0x3FF7154760000000
  %911 = fmul fast float %910, %909
  %912 = call float @dx.op.unary.f32(i32 21, float %911)  ; Exp(value)
  %913 = fmul fast float %281, 0x3FF7154760000000
  %914 = fmul fast float %913, %905
  %915 = fmul fast float %914, %908
  %916 = call float @dx.op.unary.f32(i32 21, float %915)  ; Exp(value)
  %917 = fmul fast float %913, %904
  %918 = fmul fast float %917, %908
  %919 = call float @dx.op.unary.f32(i32 21, float %918)  ; Exp(value)
  %920 = fsub fast float %916, %919
  %921 = fmul fast float %920, %912
  %922 = fmul fast float %908, %281
  %923 = fdiv fast float %921, %922
  %924 = fadd fast float %906, %923
  %925 = call float @dx.op.unary.f32(i32 6, float %281)  ; FAbs(value)
  %926 = fcmp fast olt float %925, 0x3F0FFB4800000000
  %927 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %909)  ; FMax(a,b)
  %928 = fmul fast float %927, 0x3FF7154760000000
  %929 = fmul fast float %928, %907
  %930 = call float @dx.op.unary.f32(i32 21, float %929)  ; Exp(value)
  %931 = fmul fast float %930, %778
  %932 = select i1 %926, float %931, float %924
  %933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.f32 %933, 1
  %935 = fmul fast float %932, %934
  %936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %937 = extractvalue %dx.types.CBufRet.f32 %936, 0
  %938 = extractvalue %dx.types.CBufRet.f32 %936, 1
  %939 = extractvalue %dx.types.CBufRet.f32 %936, 2
  %940 = extractvalue %dx.types.CBufRet.f32 %933, 2
  %941 = fmul fast float %937, %935
  %942 = fmul fast float %938, %935
  %943 = fmul fast float %939, %935
  %944 = fadd fast float %941, %888
  %945 = fadd fast float %942, %889
  %946 = fadd fast float %943, %890
  %947 = fmul fast float %940, %935
  %948 = fadd fast float %947, %887
  %949 = fadd fast float %935, %886
  br label %950

; <label>:950                                     ; preds = %901, %885
  %951 = phi float [ %949, %901 ], [ %886, %885 ]
  %952 = phi float [ %948, %901 ], [ %887, %885 ]
  %953 = phi float [ %944, %901 ], [ %888, %885 ]
  %954 = phi float [ %945, %901 ], [ %889, %885 ]
  %955 = phi float [ %946, %901 ], [ %890, %885 ]
  br i1 %748, label %1098, label %956, !dx.controlflow.hints !57

; <label>:956                                     ; preds = %950
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 0
  %959 = extractvalue %dx.types.CBufRet.f32 %957, 1
  %960 = extractvalue %dx.types.CBufRet.f32 %957, 2
  %961 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.i32 %961, 0
  %963 = icmp ne i32 %962, 0
  %964 = zext i1 %963 to i32
  %965 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.i32 %965, 0
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %1001, label %968

; <label>:968                                     ; preds = %956
  br label %969

; <label>:969                                     ; preds = %996, %968
  %970 = phi i32 [ %997, %996 ], [ 0, %968 ]
  %971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %970, i32 0)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.f32 %971, 0
  %973 = extractvalue %dx.types.ResRet.f32 %971, 1
  %974 = extractvalue %dx.types.ResRet.f32 %971, 2
  %975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %970, i32 16)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.f32 %975, 0
  %977 = extractvalue %dx.types.ResRet.f32 %975, 1
  %978 = extractvalue %dx.types.ResRet.f32 %975, 2
  %979 = fsub fast float %972, %976
  %980 = fsub fast float %973, %977
  %981 = fsub fast float %974, %978
  %982 = fadd fast float %976, %972
  %983 = fadd fast float %977, %973
  %984 = fadd fast float %978, %974
  %985 = fcmp fast olt float %454, %979
  %986 = fcmp fast olt float %455, %980
  %987 = fcmp fast olt float %456, %981
  %988 = or i1 %985, %986
  %989 = or i1 %987, %988
  %990 = fcmp fast ogt float %454, %982
  %991 = fcmp fast ogt float %455, %983
  %992 = fcmp fast ogt float %456, %984
  %993 = or i1 %990, %991
  %994 = or i1 %992, %993
  %995 = or i1 %989, %994
  br i1 %995, label %996, label %999, !dx.controlflow.hints !58

; <label>:996                                     ; preds = %969
  %997 = add nuw i32 %970, 1
  %998 = icmp ult i32 %997, %966
  br i1 %998, label %969, label %999

; <label>:999                                     ; preds = %996, %969
  %1000 = phi i32 [ 255, %996 ], [ %970, %969 ]
  br label %1001

; <label>:1001                                    ; preds = %999, %956
  %1002 = phi i32 [ 255, %956 ], [ %1000, %999 ]
  %1003 = icmp eq i32 %1002, 255
  br i1 %1003, label %1013, label %1004, !dx.controlflow.hints !59

; <label>:1004                                    ; preds = %1001
  %1005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1002, i32 32)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 0
  %1007 = extractvalue %dx.types.ResRet.f32 %1005, 1
  %1008 = extractvalue %dx.types.ResRet.f32 %1005, 2
  %1009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1002, i32 156)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.i32 %1009, 0
  %1011 = icmp ne i32 %1010, 0
  %1012 = zext i1 %1011 to i32
  br label %1013

; <label>:1013                                    ; preds = %1004, %1001
  %1014 = phi float [ %1006, %1004 ], [ %958, %1001 ]
  %1015 = phi float [ %1007, %1004 ], [ %959, %1001 ]
  %1016 = phi float [ %1008, %1004 ], [ %960, %1001 ]
  %1017 = phi i32 [ %1012, %1004 ], [ %964, %1001 ]
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1019, label %1088, !dx.controlflow.hints !60

; <label>:1019                                    ; preds = %1013
  %1020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1020, 3
  %1022 = extractvalue %dx.types.CBufRet.f32 %658, 0
  %1023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.f32 %1023, 2
  %1025 = extractvalue %dx.types.CBufRet.f32 %1023, 3
  br i1 %1003, label %1036, label %1026, !dx.controlflow.hints !61

; <label>:1026                                    ; preds = %1019
  %1027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1002, i32 60)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.f32 %1027, 0
  %1029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1002, i32 64)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.ResRet.f32 %1029, 1
  %1032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1002, i32 72)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 0
  %1034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1002, i32 96)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 0
  br label %1036

; <label>:1036                                    ; preds = %1026, %1019
  %1037 = phi float [ %1028, %1026 ], [ %661, %1019 ]
  %1038 = phi float [ %1033, %1026 ], [ %659, %1019 ]
  %1039 = phi float [ %1035, %1026 ], [ %1022, %1019 ]
  %1040 = phi float [ %1030, %1026 ], [ %1024, %1019 ]
  %1041 = phi float [ %1031, %1026 ], [ %1025, %1019 ]
  %1042 = call float @dx.op.binary.f32(i32 35, float %742, float 0.000000e+00)  ; FMax(a,b)
  %1043 = call float @dx.op.binary.f32(i32 36, float %1042, float 1.000000e+00)  ; FMin(a,b)
  %1044 = call float @dx.op.unary.f32(i32 24, float %1043)  ; Sqrt(value)
  %1045 = call float @dx.op.binary.f32(i32 35, float %745, float 0x3F847AE140000000)  ; FMax(a,b)
  %1046 = fsub fast float %743, %456
  %1047 = fsub fast float %456, %744
  %1048 = call float @dx.op.binary.f32(i32 36, float %1047, float %1046)  ; FMin(a,b)
  %1049 = fdiv fast float %1048, %1045
  %1050 = call float @dx.op.unary.f32(i32 7, float %1049)  ; Saturate(value)
  %1051 = fsub fast float %456, %1038
  %1052 = fdiv fast float %1051, %1037
  %1053 = call float @dx.op.unary.f32(i32 7, float %1052)  ; Saturate(value)
  %1054 = fsub fast float 1.000000e+00, %1053
  %1055 = fmul float %1050, %1054
  %1056 = fmul float %1055, %1055
  %1057 = fmul fast float %1044, %1021
  %1058 = fmul fast float %1057, %1056
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 2
  %1061 = extractvalue %dx.types.CBufRet.f32 %1059, 1
  %1062 = fsub fast float %1058, %1061
  %1063 = fsub fast float %1060, %1061
  %1064 = fdiv fast float %1062, %1063
  %1065 = call float @dx.op.unary.f32(i32 7, float %1064)  ; Saturate(value)
  %1066 = fmul fast float %1065, %1039
  %1067 = fcmp fast ogt float %1041, 0.000000e+00
  br i1 %1067, label %1068, label %1088, !dx.controlflow.hints !62

; <label>:1068                                    ; preds = %1036
  %1069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1070 = extractvalue %dx.types.CBufRet.f32 %1069, 0
  %1071 = extractvalue %dx.types.CBufRet.f32 %1069, 1
  %1072 = extractvalue %dx.types.CBufRet.f32 %1069, 2
  %1073 = fsub fast float %454, %1070
  %1074 = fsub fast float %455, %1071
  %1075 = fsub fast float %456, %1072
  %1076 = fmul fast float %1073, %1073
  %1077 = fmul fast float %1074, %1074
  %1078 = fadd fast float %1076, %1077
  %1079 = fmul fast float %1075, %1075
  %1080 = fadd fast float %1078, %1079
  %1081 = call float @dx.op.unary.f32(i32 24, float %1080)  ; Sqrt(value)
  %1082 = fsub fast float %1081, %1040
  %1083 = fsub fast float %1041, %1040
  %1084 = fdiv fast float %1082, %1083
  %1085 = call float @dx.op.unary.f32(i32 7, float %1084)  ; Saturate(value)
  %1086 = fmul fast float %1085, %1085
  %1087 = fmul fast float %1086, %1066
  br label %1088

; <label>:1088                                    ; preds = %1068, %1036, %1013
  %1089 = phi float [ 0.000000e+00, %1013 ], [ %1087, %1068 ], [ %1066, %1036 ]
  %1090 = fmul fast float %1089, %778
  %1091 = fmul fast float %1090, %1014
  %1092 = fmul fast float %1090, %1015
  %1093 = fmul fast float %1090, %1016
  %1094 = fadd fast float %1091, %953
  %1095 = fadd fast float %1092, %954
  %1096 = fadd fast float %1093, %955
  %1097 = fadd fast float %1090, %951
  br label %1098

; <label>:1098                                    ; preds = %1088, %950
  %1099 = phi float [ %1097, %1088 ], [ %951, %950 ]
  %1100 = phi float [ %1094, %1088 ], [ %953, %950 ]
  %1101 = phi float [ %1095, %1088 ], [ %954, %950 ]
  %1102 = phi float [ %1096, %1088 ], [ %955, %950 ]
  %1103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1104 = extractvalue %dx.types.CBufRet.f32 %1103, 1
  %1105 = fcmp fast ogt float %1099, %1104
  br i1 %1105, label %1106, label %1112, !dx.controlflow.hints !63

; <label>:1106                                    ; preds = %1098
  %1107 = fdiv fast float 1.000000e+00, %1099
  %1108 = fmul fast float %1107, %1100
  %1109 = fmul fast float %1107, %1101
  %1110 = fmul fast float %1107, %1102
  %1111 = fmul fast float %1107, %952
  br label %1112

; <label>:1112                                    ; preds = %1106, %1098
  %1113 = phi float [ %1111, %1106 ], [ %952, %1098 ]
  %1114 = phi float [ %1108, %1106 ], [ %1100, %1098 ]
  %1115 = phi float [ %1109, %1106 ], [ %1101, %1098 ]
  %1116 = phi float [ %1110, %1106 ], [ %1102, %1098 ]
  br i1 %1105, label %1119, label %1117, !dx.controlflow.hints !64

; <label>:1117                                    ; preds = %1112
  %1118 = fadd fast float %778, %457
  br label %1646

; <label>:1119                                    ; preds = %1112
  %1120 = fmul fast float %1099, 0xBFF7154760000000
  %1121 = call float @dx.op.unary.f32(i32 21, float %1120)  ; Exp(value)
  %1122 = call float @dx.op.unary.f32(i32 7, float %1121)  ; Saturate(value)
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 3
  %1125 = fcmp fast une float %1124, 0.000000e+00
  %1126 = extractvalue %dx.types.CBufRet.f32 %1123, 0
  %1127 = extractvalue %dx.types.CBufRet.f32 %1123, 1
  %1128 = extractvalue %dx.types.CBufRet.f32 %1123, 2
  br i1 %1125, label %1129, label %1151, !dx.controlflow.hints !65

; <label>:1129                                    ; preds = %1119
  %1130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.f32 %1130, 0
  %1132 = extractvalue %dx.types.CBufRet.f32 %1130, 1
  %1133 = extractvalue %dx.types.CBufRet.f32 %1130, 2
  %1134 = call float @dx.op.dot3.f32(i32 55, float %1126, float %1127, float %1128, float %279, float %280, float %281)  ; Dot3(ax,ay,az,bx,by,bz)
  %1135 = fcmp fast ogt float %1113, 0.000000e+00
  %1136 = select i1 %1135, float 1.000000e+00, float -1.000000e+00
  %1137 = fmul fast float %1136, 5.000000e-01
  %1138 = fmul fast float %1137, %1134
  %1139 = fmul fast float %1136, %1113
  %1140 = fadd fast float %1138, 4.921875e-01
  %1141 = fadd fast float %1139, -3.125000e-02
  %1142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %1140, float 0x3FB25F3060000000, float %1141, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1143 = extractvalue %dx.types.ResRet.f32 %1142, 0
  %1144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1145 = extractvalue %dx.types.CBufRet.f32 %1144, 0
  %1146 = fmul fast float %1143, 0x400921FB60000000
  %1147 = fmul fast float %1146, %1145
  %1148 = fmul fast float %1147, %1131
  %1149 = fmul fast float %1147, %1132
  %1150 = fmul fast float %1147, %1133
  br label %1151

; <label>:1151                                    ; preds = %1129, %1119
  %1152 = phi float [ %1148, %1129 ], [ 0.000000e+00, %1119 ]
  %1153 = phi float [ %1149, %1129 ], [ 0.000000e+00, %1119 ]
  %1154 = phi float [ %1150, %1129 ], [ 0.000000e+00, %1119 ]
  %1155 = fdiv fast float 1.000000e+00, %1126
  %1156 = fdiv fast float 1.000000e+00, %1127
  %1157 = fdiv fast float 1.000000e+00, %1128
  %1158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1159 = extractvalue %dx.types.CBufRet.f32 %1158, 0
  %1160 = fmul fast float %1159, %1126
  %1161 = fmul fast float %1159, %1127
  %1162 = fmul fast float %1159, %1128
  %1163 = fadd fast float %1160, %454
  %1164 = fsub fast float -0.000000e+00, %1163
  %1165 = fadd fast float %1161, %455
  %1166 = fsub fast float -0.000000e+00, %1165
  %1167 = fadd fast float %1162, %456
  br i1 %470, label %1239, label %1168, !dx.controlflow.hints !39

; <label>:1168                                    ; preds = %1151
  %1169 = extractvalue %dx.types.CBufRet.f32 %1158, 1
  %1170 = fcmp fast ogt float %1169, %1159
  br i1 %1170, label %1171, label %1173, !dx.controlflow.hints !40

; <label>:1171                                    ; preds = %1168
  %1172 = fsub fast float %1169, %1159
  br label %1230

; <label>:1173                                    ; preds = %1168
  %1174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1175 = extractvalue %dx.types.CBufRet.i32 %1174, 3
  %1176 = icmp eq i32 %1175, 0
  %1177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1178 = extractvalue %dx.types.CBufRet.f32 %1177, 2
  %1179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1180 = extractvalue %dx.types.CBufRet.f32 %1179, 2
  %1181 = fsub fast float %1178, %1167
  %1182 = fadd fast float %1181, %1180
  %1183 = fsub fast float 0xC7EFFFFFE0000000, %1167
  br i1 %1176, label %1193, label %1184, !dx.controlflow.hints !33

; <label>:1184                                    ; preds = %1173
  %1185 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1164, float %1166, float %1182)  ; Dot3(ax,ay,az,bx,by,bz)
  %1186 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1126, float %1127, float %1128)  ; Dot3(ax,ay,az,bx,by,bz)
  %1187 = fdiv fast float 1.000000e+00, %1186
  %1188 = fmul fast float %1187, %1185
  %1189 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1164, float %1166, float %1183)  ; Dot3(ax,ay,az,bx,by,bz)
  %1190 = fmul fast float %1187, %1189
  %1191 = call float @dx.op.binary.f32(i32 36, float %1188, float %1190)  ; FMin(a,b)
  %1192 = call float @dx.op.binary.f32(i32 35, float %1188, float %1190)  ; FMax(a,b)
  br label %1223

; <label>:1193                                    ; preds = %1173
  %1194 = extractvalue %dx.types.CBufRet.f32 %1177, 0
  %1195 = extractvalue %dx.types.CBufRet.f32 %1177, 1
  %1196 = extractvalue %dx.types.CBufRet.f32 %1179, 0
  %1197 = extractvalue %dx.types.CBufRet.f32 %1179, 1
  %1198 = fsub fast float %1194, %1163
  %1199 = fmul fast float %1155, %1198
  %1200 = fadd fast float %1198, %1196
  %1201 = fmul fast float %1200, %1155
  %1202 = call float @dx.op.binary.f32(i32 36, float %1199, float %1201)  ; FMin(a,b)
  %1203 = call float @dx.op.binary.f32(i32 35, float %1199, float %1201)  ; FMax(a,b)
  %1204 = fsub fast float %1195, %1165
  %1205 = fmul fast float %1156, %1204
  %1206 = fadd fast float %1204, %1197
  %1207 = fmul fast float %1206, %1156
  %1208 = call float @dx.op.binary.f32(i32 36, float %1205, float %1207)  ; FMin(a,b)
  %1209 = call float @dx.op.binary.f32(i32 35, float %1202, float %1208)  ; FMax(a,b)
  %1210 = call float @dx.op.binary.f32(i32 35, float %1205, float %1207)  ; FMax(a,b)
  %1211 = call float @dx.op.binary.f32(i32 36, float %1203, float %1210)  ; FMin(a,b)
  %1212 = fmul fast float %1157, %1183
  %1213 = fmul fast float %1157, %1182
  %1214 = call float @dx.op.binary.f32(i32 36, float %1212, float %1213)  ; FMin(a,b)
  %1215 = call float @dx.op.binary.f32(i32 35, float %1209, float %1214)  ; FMax(a,b)
  %1216 = call float @dx.op.binary.f32(i32 35, float %1212, float %1213)  ; FMax(a,b)
  %1217 = call float @dx.op.binary.f32(i32 36, float %1211, float %1216)  ; FMin(a,b)
  %1218 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1215)  ; FMax(a,b)
  %1219 = fcmp fast ult float %1217, %1218
  br i1 %1219, label %1223, label %1220, !dx.controlflow.hints !34

; <label>:1220                                    ; preds = %1193
  %1221 = call float @dx.op.binary.f32(i32 36, float %1215, float %1217)  ; FMin(a,b)
  %1222 = call float @dx.op.binary.f32(i32 35, float %1215, float %1217)  ; FMax(a,b)
  br label %1223

; <label>:1223                                    ; preds = %1220, %1193, %1184
  %1224 = phi float [ %1191, %1184 ], [ %1221, %1220 ], [ 0.000000e+00, %1193 ]
  %1225 = phi float [ %1192, %1184 ], [ %1222, %1220 ], [ 0.000000e+00, %1193 ]
  %1226 = fcmp fast ogt float %1224, 0.000000e+00
  br i1 %1226, label %1230, label %1227, !dx.controlflow.hints !41

; <label>:1227                                    ; preds = %1223
  %1228 = fcmp fast ugt float %1225, 0.000000e+00
  br i1 %1228, label %1229, label %1230, !dx.controlflow.hints !42

; <label>:1229                                    ; preds = %1227
  br label %1230

; <label>:1230                                    ; preds = %1229, %1227, %1223, %1171
  %1231 = phi float [ %1172, %1171 ], [ 0.000000e+00, %1229 ], [ 0x47EFFFFFE0000000, %1227 ], [ %1224, %1223 ]
  %1232 = phi i32 [ %368, %1171 ], [ %368, %1229 ], [ 0, %1227 ], [ %368, %1223 ]
  %1233 = icmp ne i32 %1232, 0
  %1234 = zext i1 %1233 to i32
  %1235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1236 = extractvalue %dx.types.CBufRet.f32 %1235, 2
  %1237 = call float @dx.op.binary.f32(i32 35, float %1231, float %1236)  ; FMax(a,b)
  %1238 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1237)  ; FMin(a,b)
  br label %1239

; <label>:1239                                    ; preds = %1230, %1151
  %1240 = phi float [ %1238, %1230 ], [ 0x47EFFFFFE0000000, %1151 ]
  %1241 = phi i32 [ %1234, %1230 ], [ 0, %1151 ]
  %1242 = fsub fast float %1163, %641
  %1243 = fsub fast float %1165, %642
  %1244 = fmul fast float %1242, %646
  %1245 = fmul fast float %1243, %647
  %1246 = call float @dx.op.binary.f32(i32 36, float %1244, float %1245)  ; FMin(a,b)
  %1247 = fcmp fast olt float %1246, 0.000000e+00
  %1248 = call float @dx.op.binary.f32(i32 35, float %1244, float %1245)  ; FMax(a,b)
  %1249 = fcmp fast ogt float %1248, 1.000000e+00
  %1250 = or i1 %1247, %1249
  %1251 = fcmp fast olt float %1167, %655
  %1252 = or i1 %1250, %1251
  %1253 = fcmp fast ogt float %1167, %662
  %1254 = or i1 %1252, %1253
  %1255 = extractvalue %dx.types.CBufRet.f32 %645, 0
  br i1 %1254, label %1256, label %1284, !dx.controlflow.hints !48

; <label>:1256                                    ; preds = %1239
  %1257 = extractvalue %dx.types.CBufRet.f32 %645, 1
  %1258 = fsub fast float %641, %1163
  %1259 = fmul fast float %1258, %1155
  %1260 = fadd fast float %1258, %1255
  %1261 = fmul fast float %1260, %1155
  %1262 = call float @dx.op.binary.f32(i32 36, float %1259, float %1261)  ; FMin(a,b)
  %1263 = call float @dx.op.binary.f32(i32 35, float %1259, float %1261)  ; FMax(a,b)
  %1264 = fsub fast float %642, %1165
  %1265 = fmul fast float %1264, %1156
  %1266 = fadd fast float %1264, %1257
  %1267 = fmul fast float %1266, %1156
  %1268 = call float @dx.op.binary.f32(i32 36, float %1265, float %1267)  ; FMin(a,b)
  %1269 = call float @dx.op.binary.f32(i32 35, float %1262, float %1268)  ; FMax(a,b)
  %1270 = call float @dx.op.binary.f32(i32 35, float %1265, float %1267)  ; FMax(a,b)
  %1271 = call float @dx.op.binary.f32(i32 36, float %1263, float %1270)  ; FMin(a,b)
  %1272 = fsub fast float %655, %1167
  %1273 = fmul fast float %1272, %1157
  %1274 = fsub fast float %659, %1167
  %1275 = fadd fast float %1274, %661
  %1276 = fmul fast float %1275, %1157
  %1277 = call float @dx.op.binary.f32(i32 36, float %1273, float %1276)  ; FMin(a,b)
  %1278 = call float @dx.op.binary.f32(i32 35, float %1269, float %1277)  ; FMax(a,b)
  %1279 = call float @dx.op.binary.f32(i32 35, float %1273, float %1276)  ; FMax(a,b)
  %1280 = call float @dx.op.binary.f32(i32 36, float %1271, float %1279)  ; FMin(a,b)
  %1281 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1278)  ; FMax(a,b)
  %1282 = fcmp fast oge float %1280, %1281
  %1283 = select i1 %1282, float %1278, float 1.000000e+07
  br label %1299

; <label>:1284                                    ; preds = %1239
  %1285 = fsub fast float 1.000000e+00, %1245
  %1286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %1244, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1287 = extractvalue %dx.types.ResRet.f32 %1286, 0
  %1288 = extractvalue %dx.types.ResRet.f32 %1286, 1
  %1289 = extractvalue %dx.types.ResRet.f32 %1286, 2
  %1290 = extractvalue %dx.types.ResRet.f32 %1286, 3
  %1291 = fmul fast float %1255, 9.765625e-04
  %1292 = fcmp fast oeq float %1287, 0.000000e+00
  %1293 = fcmp ule float %1167, %1289
  %1294 = fcmp uge float %1167, %1288
  %1295 = or i1 %1294, %1293
  %1296 = or i1 %1292, %1295
  %1297 = zext i1 %1296 to i32
  %1298 = xor i32 %1297, 1
  br label %1299

; <label>:1299                                    ; preds = %1284, %1256
  %1300 = phi float [ %1283, %1256 ], [ %1291, %1284 ]
  %1301 = phi float [ %441, %1256 ], [ %1287, %1284 ]
  %1302 = phi float [ %442, %1256 ], [ %1288, %1284 ]
  %1303 = phi float [ %443, %1256 ], [ %1289, %1284 ]
  %1304 = phi float [ %444, %1256 ], [ %1290, %1284 ]
  %1305 = phi i32 [ 0, %1256 ], [ %1298, %1284 ]
  %1306 = icmp eq i32 %1305, 0
  %1307 = call float @dx.op.binary.f32(i32 35, float %1300, float %750)  ; FMax(a,b)
  %1308 = call float @dx.op.binary.f32(i32 36, float %1240, float %1307)  ; FMin(a,b)
  br i1 %753, label %1321, label %1309, !dx.controlflow.hints !52

; <label>:1309                                    ; preds = %1299
  %1310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1311 = extractvalue %dx.types.CBufRet.f32 %1310, 3
  %1312 = extractvalue %dx.types.CBufRet.f32 %1310, 2
  %1313 = fmul fast float %1311, %1159
  %1314 = fdiv fast float %1313, %1159
  %1315 = fadd fast float %1314, 1.000000e+00
  %1316 = call float @dx.op.unary.f32(i32 23, float %1315)  ; Log(value)
  %1317 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1316)  ; FMin(a,b)
  %1318 = fmul fast float %1312, %1159
  %1319 = fmul fast float %1318, %1317
  %1320 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1319)  ; FMin(a,b)
  br label %1321

; <label>:1321                                    ; preds = %1309, %1299
  %1322 = phi float [ %1320, %1309 ], [ 0x47EFFFFFE0000000, %1299 ]
  %1323 = icmp eq i32 %1241, 0
  br i1 %1323, label %1397, label %1324, !dx.controlflow.hints !53

; <label>:1324                                    ; preds = %1321
  %1325 = fmul fast float %768, %1159
  %1326 = call float @dx.op.unary.f32(i32 23, float %1325)  ; Log(value)
  %1327 = fmul fast float %1326, 0x3FE62E4300000000
  %1328 = call float @dx.op.binary.f32(i32 35, float %1327, float 1.000000e+00)  ; FMax(a,b)
  %1329 = fmul fast float %1328, %1322
  %1330 = call float @dx.op.binary.f32(i32 36, float %1329, float %1308)  ; FMin(a,b)
  %1331 = call float @dx.op.binary.f32(i32 35, float %1330, float 0.000000e+00)  ; FMax(a,b)
  %1332 = fcmp fast ogt float %1331, 0x3F1A36E2E0000000
  %1333 = fadd fast float %1160, %1163
  %1334 = fadd fast float %1161, %1165
  %1335 = select i1 %1332, float %1333, float %1163
  %1336 = select i1 %1332, float %1334, float %1165
  %1337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1338 = extractvalue %dx.types.CBufRet.f32 %1337, 0
  %1339 = extractvalue %dx.types.CBufRet.f32 %1337, 1
  %1340 = fsub fast float %1335, %1338
  %1341 = fsub fast float %1336, %1339
  %1342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %1343 = extractvalue %dx.types.CBufRet.f32 %1342, 0
  %1344 = extractvalue %dx.types.CBufRet.f32 %1342, 1
  %1345 = fmul fast float %1340, %1343
  %1346 = fmul fast float %1341, %1344
  %1347 = fsub fast float 1.000000e+00, %1346
  %1348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1349 = extractvalue %dx.types.CBufRet.i32 %1348, 3
  %1350 = icmp eq i32 %1349, 0
  br i1 %1350, label %1357, label %1351, !dx.controlflow.hints !43

; <label>:1351                                    ; preds = %1324
  %1352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1345, float %1347, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1353 = extractvalue %dx.types.ResRet.f32 %1352, 0
  %1354 = extractvalue %dx.types.ResRet.f32 %1352, 1
  %1355 = extractvalue %dx.types.ResRet.f32 %1352, 2
  %1356 = extractvalue %dx.types.ResRet.f32 %1352, 3
  br label %1363

; <label>:1357                                    ; preds = %1324
  %1358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %1345, float %1347, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1359 = extractvalue %dx.types.ResRet.f32 %1358, 0
  %1360 = extractvalue %dx.types.ResRet.f32 %1358, 1
  %1361 = extractvalue %dx.types.ResRet.f32 %1358, 2
  %1362 = extractvalue %dx.types.ResRet.f32 %1358, 3
  br label %1363

; <label>:1363                                    ; preds = %1357, %1351
  %1364 = phi float [ %1353, %1351 ], [ %1359, %1357 ]
  %1365 = phi float [ %1354, %1351 ], [ %1360, %1357 ]
  %1366 = phi float [ %1355, %1351 ], [ %1361, %1357 ]
  %1367 = phi float [ %1356, %1351 ], [ %1362, %1357 ]
  %1368 = extractvalue %dx.types.CBufRet.f32 %1342, 3
  %1369 = fmul fast float %1368, %1365
  %1370 = fmul fast float %1369, %1364
  %1371 = fsub fast float %1369, %1370
  %1372 = fcmp fast ole float %1371, 0.000000e+00
  %1373 = extractvalue %dx.types.CBufRet.f32 %1337, 2
  %1374 = fadd fast float %1370, %1373
  %1375 = fmul fast float %1368, %1366
  %1376 = fadd fast float %1375, %1373
  %1377 = fdiv fast float 1.000000e+00, %1371
  %1378 = select i1 %1372, float 1.000000e+06, float %1377
  %1379 = fsub fast float %1167, %1374
  %1380 = fmul fast float %1378, %1379
  %1381 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  %1382 = extractvalue %dx.types.CBufRet.f32 %1342, 2
  %1383 = fmul fast float %1382, %1381
  %1384 = fsub fast float %1382, %1383
  %1385 = fcmp fast olt float %1167, %1376
  %1386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1387 = extractvalue %dx.types.CBufRet.f32 %1386, 3
  %1388 = fmul fast float %1387, 3.000000e+00
  %1389 = select i1 %1385, float %1388, float 3.000000e+00
  %1390 = fmul fast float %1384, %1389
  %1391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.f32 %1391, 2
  %1393 = fmul fast float %1159, 0x3FD5555560000000
  %1394 = fmul fast float %1393, %1367
  %1395 = fmul fast float %1394, %1392
  %1396 = fmul fast float %1395, %1390
  br label %1397

; <label>:1397                                    ; preds = %1363, %1321
  %1398 = phi float [ %1396, %1363 ], [ 0.000000e+00, %1321 ]
  br i1 %753, label %1447, label %1399, !dx.controlflow.hints !55

; <label>:1399                                    ; preds = %1397
  %1400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1401 = extractvalue %dx.types.CBufRet.f32 %1400, 0
  %1402 = fsub fast float %1401, %1167
  %1403 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1164, float %1166, float %1402)  ; Dot3(ax,ay,az,bx,by,bz)
  %1404 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1126, float %1127, float %1128)  ; Dot3(ax,ay,az,bx,by,bz)
  %1405 = fdiv fast float 1.000000e+00, %1404
  %1406 = fmul fast float %1405, %1403
  %1407 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1406)  ; FMax(a,b)
  %1408 = fcmp fast olt float %1128, 0.000000e+00
  %1409 = call float @dx.op.binary.f32(i32 36, float %1159, float %1407)  ; FMin(a,b)
  br i1 %1408, label %1411, label %1410, !dx.controlflow.hints !56

; <label>:1410                                    ; preds = %1399
  br label %1411

; <label>:1411                                    ; preds = %1410, %1399
  %1412 = phi float [ 0.000000e+00, %1410 ], [ %1409, %1399 ]
  %1413 = phi float [ %1409, %1410 ], [ %1159, %1399 ]
  %1414 = phi float [ %1409, %1410 ], [ 0.000000e+00, %1399 ]
  %1415 = phi float [ %1159, %1410 ], [ %1409, %1399 ]
  %1416 = fsub fast float %1413, %1412
  %1417 = extractvalue %dx.types.CBufRet.f32 %1400, 1
  %1418 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1417)  ; FMin(a,b)
  %1419 = fsub fast float %1167, %1401
  %1420 = fmul fast float %1418, 0x3FF7154760000000
  %1421 = fmul fast float %1420, %1419
  %1422 = call float @dx.op.unary.f32(i32 21, float %1421)  ; Exp(value)
  %1423 = fmul fast float %1128, 0x3FF7154760000000
  %1424 = fmul fast float %1423, %1415
  %1425 = fmul fast float %1424, %1418
  %1426 = call float @dx.op.unary.f32(i32 21, float %1425)  ; Exp(value)
  %1427 = fmul fast float %1423, %1414
  %1428 = fmul fast float %1427, %1418
  %1429 = call float @dx.op.unary.f32(i32 21, float %1428)  ; Exp(value)
  %1430 = fsub fast float %1426, %1429
  %1431 = fmul fast float %1430, %1422
  %1432 = fmul fast float %1418, %1128
  %1433 = fdiv fast float %1431, %1432
  %1434 = fadd fast float %1416, %1433
  %1435 = call float @dx.op.unary.f32(i32 6, float %1128)  ; FAbs(value)
  %1436 = fcmp fast olt float %1435, 0x3F0FFB4800000000
  %1437 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1419)  ; FMax(a,b)
  %1438 = fmul fast float %1437, 0x3FF7154760000000
  %1439 = fmul fast float %1438, %1417
  %1440 = call float @dx.op.unary.f32(i32 21, float %1439)  ; Exp(value)
  %1441 = fmul fast float %1440, %1159
  %1442 = select i1 %1436, float %1441, float %1434
  %1443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1444 = extractvalue %dx.types.CBufRet.f32 %1443, 1
  %1445 = fmul fast float %1442, %1444
  %1446 = fadd fast float %1445, %1398
  br label %1447

; <label>:1447                                    ; preds = %1411, %1397
  %1448 = phi float [ %1446, %1411 ], [ %1398, %1397 ]
  br i1 %1306, label %1574, label %1449, !dx.controlflow.hints !57

; <label>:1449                                    ; preds = %1447
  %1450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1451 = extractvalue %dx.types.CBufRet.i32 %1450, 0
  %1452 = icmp ne i32 %1451, 0
  %1453 = zext i1 %1452 to i32
  %1454 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1455 = extractvalue %dx.types.CBufRet.i32 %1454, 0
  %1456 = icmp eq i32 %1455, 0
  br i1 %1456, label %1490, label %1457

; <label>:1457                                    ; preds = %1449
  br label %1458

; <label>:1458                                    ; preds = %1485, %1457
  %1459 = phi i32 [ %1486, %1485 ], [ 0, %1457 ]
  %1460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1459, i32 0)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.f32 %1460, 0
  %1462 = extractvalue %dx.types.ResRet.f32 %1460, 1
  %1463 = extractvalue %dx.types.ResRet.f32 %1460, 2
  %1464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1459, i32 16)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.f32 %1464, 0
  %1466 = extractvalue %dx.types.ResRet.f32 %1464, 1
  %1467 = extractvalue %dx.types.ResRet.f32 %1464, 2
  %1468 = fsub fast float %1461, %1465
  %1469 = fsub fast float %1462, %1466
  %1470 = fsub fast float %1463, %1467
  %1471 = fadd fast float %1465, %1461
  %1472 = fadd fast float %1466, %1462
  %1473 = fadd fast float %1467, %1463
  %1474 = fcmp fast olt float %1163, %1468
  %1475 = fcmp fast olt float %1165, %1469
  %1476 = fcmp fast olt float %1167, %1470
  %1477 = or i1 %1474, %1475
  %1478 = or i1 %1476, %1477
  %1479 = fcmp fast ogt float %1163, %1471
  %1480 = fcmp fast ogt float %1165, %1472
  %1481 = fcmp fast ogt float %1167, %1473
  %1482 = or i1 %1479, %1480
  %1483 = or i1 %1481, %1482
  %1484 = or i1 %1478, %1483
  br i1 %1484, label %1485, label %1488, !dx.controlflow.hints !58

; <label>:1485                                    ; preds = %1458
  %1486 = add nuw i32 %1459, 1
  %1487 = icmp ult i32 %1486, %1455
  br i1 %1487, label %1458, label %1488

; <label>:1488                                    ; preds = %1485, %1458
  %1489 = phi i32 [ 255, %1485 ], [ %1459, %1458 ]
  br label %1490

; <label>:1490                                    ; preds = %1488, %1449
  %1491 = phi i32 [ 255, %1449 ], [ %1489, %1488 ]
  %1492 = icmp eq i32 %1491, 255
  br i1 %1492, label %1498, label %1493, !dx.controlflow.hints !59

; <label>:1493                                    ; preds = %1490
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1491, i32 156)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = icmp ne i32 %1495, 0
  %1497 = zext i1 %1496 to i32
  br label %1498

; <label>:1498                                    ; preds = %1493, %1490
  %1499 = phi i32 [ %1497, %1493 ], [ %1453, %1490 ]
  %1500 = icmp eq i32 %1499, 0
  br i1 %1500, label %1501, label %1570, !dx.controlflow.hints !60

; <label>:1501                                    ; preds = %1498
  %1502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1503 = extractvalue %dx.types.CBufRet.f32 %1502, 3
  %1504 = extractvalue %dx.types.CBufRet.f32 %658, 0
  %1505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.f32 %1505, 2
  %1507 = extractvalue %dx.types.CBufRet.f32 %1505, 3
  br i1 %1492, label %1518, label %1508, !dx.controlflow.hints !61

; <label>:1508                                    ; preds = %1501
  %1509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1491, i32 60)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.f32 %1509, 0
  %1511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1491, i32 64)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.f32 %1511, 0
  %1513 = extractvalue %dx.types.ResRet.f32 %1511, 1
  %1514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1491, i32 72)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.f32 %1514, 0
  %1516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1491, i32 96)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.f32 %1516, 0
  br label %1518

; <label>:1518                                    ; preds = %1508, %1501
  %1519 = phi float [ %1510, %1508 ], [ %661, %1501 ]
  %1520 = phi float [ %1515, %1508 ], [ %659, %1501 ]
  %1521 = phi float [ %1517, %1508 ], [ %1504, %1501 ]
  %1522 = phi float [ %1512, %1508 ], [ %1506, %1501 ]
  %1523 = phi float [ %1513, %1508 ], [ %1507, %1501 ]
  %1524 = call float @dx.op.binary.f32(i32 35, float %1301, float 0.000000e+00)  ; FMax(a,b)
  %1525 = call float @dx.op.binary.f32(i32 36, float %1524, float 1.000000e+00)  ; FMin(a,b)
  %1526 = call float @dx.op.unary.f32(i32 24, float %1525)  ; Sqrt(value)
  %1527 = call float @dx.op.binary.f32(i32 35, float %1304, float 0x3F847AE140000000)  ; FMax(a,b)
  %1528 = fsub fast float %1302, %1167
  %1529 = fsub fast float %1167, %1303
  %1530 = call float @dx.op.binary.f32(i32 36, float %1529, float %1528)  ; FMin(a,b)
  %1531 = fdiv fast float %1530, %1527
  %1532 = call float @dx.op.unary.f32(i32 7, float %1531)  ; Saturate(value)
  %1533 = fsub fast float %1167, %1520
  %1534 = fdiv fast float %1533, %1519
  %1535 = call float @dx.op.unary.f32(i32 7, float %1534)  ; Saturate(value)
  %1536 = fsub fast float 1.000000e+00, %1535
  %1537 = fmul float %1532, %1536
  %1538 = fmul float %1537, %1537
  %1539 = fmul fast float %1526, %1503
  %1540 = fmul fast float %1539, %1538
  %1541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1542 = extractvalue %dx.types.CBufRet.f32 %1541, 2
  %1543 = extractvalue %dx.types.CBufRet.f32 %1541, 1
  %1544 = fsub fast float %1540, %1543
  %1545 = fsub fast float %1542, %1543
  %1546 = fdiv fast float %1544, %1545
  %1547 = call float @dx.op.unary.f32(i32 7, float %1546)  ; Saturate(value)
  %1548 = fmul fast float %1547, %1521
  %1549 = fcmp fast ogt float %1523, 0.000000e+00
  br i1 %1549, label %1550, label %1570, !dx.controlflow.hints !62

; <label>:1550                                    ; preds = %1518
  %1551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1552 = extractvalue %dx.types.CBufRet.f32 %1551, 0
  %1553 = extractvalue %dx.types.CBufRet.f32 %1551, 1
  %1554 = extractvalue %dx.types.CBufRet.f32 %1551, 2
  %1555 = fsub fast float %1163, %1552
  %1556 = fsub fast float %1165, %1553
  %1557 = fsub fast float %1167, %1554
  %1558 = fmul fast float %1555, %1555
  %1559 = fmul fast float %1556, %1556
  %1560 = fadd fast float %1558, %1559
  %1561 = fmul fast float %1557, %1557
  %1562 = fadd fast float %1560, %1561
  %1563 = call float @dx.op.unary.f32(i32 24, float %1562)  ; Sqrt(value)
  %1564 = fsub fast float %1563, %1522
  %1565 = fsub fast float %1523, %1522
  %1566 = fdiv fast float %1564, %1565
  %1567 = call float @dx.op.unary.f32(i32 7, float %1566)  ; Saturate(value)
  %1568 = fmul fast float %1567, %1567
  %1569 = fmul fast float %1568, %1548
  br label %1570

; <label>:1570                                    ; preds = %1550, %1518, %1498
  %1571 = phi float [ 0.000000e+00, %1498 ], [ %1569, %1550 ], [ %1548, %1518 ]
  %1572 = fmul fast float %1571, %1159
  %1573 = fadd fast float %1572, %1448
  br label %1574

; <label>:1574                                    ; preds = %1570, %1447
  %1575 = phi float [ %1573, %1570 ], [ %1448, %1447 ]
  %1576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1577 = extractvalue %dx.types.CBufRet.f32 %1576, 3
  %1578 = fmul fast float %1575, 0xBFF7154760000000
  %1579 = fmul fast float %1578, %1577
  %1580 = call float @dx.op.unary.f32(i32 21, float %1579)  ; Exp(value)
  %1581 = call float @dx.op.unary.f32(i32 7, float %1580)  ; Saturate(value)
  %1582 = fmul fast float %1581, %1152
  %1583 = fmul fast float %1581, %1153
  %1584 = fmul fast float %1581, %1154
  %1585 = fadd fast float %1582, %203
  %1586 = fadd fast float %1583, %204
  %1587 = fadd fast float %1584, %205
  %1588 = fsub fast float 1.000000e+00, %1122
  %1589 = fmul fast float %1114, %450
  %1590 = fmul fast float %1589, %1588
  %1591 = fmul fast float %1590, %1585
  %1592 = fmul fast float %1115, %450
  %1593 = fmul fast float %1592, %1588
  %1594 = fmul fast float %1593, %1586
  %1595 = fmul fast float %1116, %450
  %1596 = fmul fast float %1595, %1588
  %1597 = fmul fast float %1596, %1587
  %1598 = fadd fast float %1591, %451
  %1599 = fadd fast float %1594, %452
  %1600 = fadd fast float %1597, %453
  %1601 = fdiv fast float %1099, %778
  %1602 = fadd fast float %778, %457
  %1603 = fmul fast float %457, %457
  %1604 = fmul fast float %1602, %1602
  %1605 = fsub fast float %1603, %1604
  %1606 = fmul fast float %1605, -5.000000e-01
  %1607 = fmul fast float %1606, %1601
  %1608 = fadd fast float %1607, %449
  %1609 = fadd fast float %1099, %460
  %1610 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1611 = extractvalue %dx.types.CBufRet.i32 %1610, 0
  %1612 = icmp eq i32 %1611, 0
  br i1 %1612, label %1639, label %1613, !dx.controlflow.hints !66

; <label>:1613                                    ; preds = %1574
  %1614 = icmp ne i32 %465, 0
  %1615 = zext i1 %1614 to i32
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 2
  %1618 = extractvalue %dx.types.CBufRet.f32 %1616, 0
  %1619 = fsub fast float %1602, %1618
  %1620 = fmul fast float %1619, %1617
  %1621 = call float @dx.op.unary.f32(i32 7, float %1620)  ; Saturate(value)
  %1622 = fadd fast float %1621, -5.000000e-01
  %1623 = fmul fast float %1622, 2.000000e+00
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 2
  %1626 = fcmp fast olt float %1623, %1625
  br i1 %1626, label %1627, label %1639, !dx.controlflow.hints !67

; <label>:1627                                    ; preds = %1613
  %1628 = fmul fast float %1623, %1623
  %1629 = fmul fast float %1588, %450
  %1630 = fmul fast float %1623, %1629
  %1631 = fmul fast float %1628, %1629
  %1632 = fmul fast float %1630, %1628
  %1633 = fmul fast float %1628, %1628
  %1634 = fmul fast float %1633, %1629
  %1635 = fadd fast float %1630, %461
  %1636 = fadd fast float %1631, %462
  %1637 = fadd fast float %1632, %463
  %1638 = fadd fast float %1634, %464
  br label %1639

; <label>:1639                                    ; preds = %1627, %1613, %1574
  %1640 = phi float [ %461, %1574 ], [ %1635, %1627 ], [ %461, %1613 ]
  %1641 = phi float [ %462, %1574 ], [ %1636, %1627 ], [ %462, %1613 ]
  %1642 = phi float [ %463, %1574 ], [ %1637, %1627 ], [ %463, %1613 ]
  %1643 = phi float [ %464, %1574 ], [ %1638, %1627 ], [ %464, %1613 ]
  %1644 = phi i32 [ %465, %1574 ], [ 1, %1627 ], [ %1615, %1613 ]
  %1645 = fmul fast float %1122, %450
  br label %1646

; <label>:1646                                    ; preds = %1639, %1117
  %1647 = phi float [ %1118, %1117 ], [ %1602, %1639 ]
  %1648 = phi float [ %441, %1117 ], [ %1301, %1639 ]
  %1649 = phi float [ %442, %1117 ], [ %1302, %1639 ]
  %1650 = phi float [ %443, %1117 ], [ %1303, %1639 ]
  %1651 = phi float [ %444, %1117 ], [ %1304, %1639 ]
  %1652 = phi float [ %449, %1117 ], [ %1608, %1639 ]
  %1653 = phi float [ %450, %1117 ], [ %1645, %1639 ]
  %1654 = phi float [ %451, %1117 ], [ %1598, %1639 ]
  %1655 = phi float [ %452, %1117 ], [ %1599, %1639 ]
  %1656 = phi float [ %453, %1117 ], [ %1600, %1639 ]
  %1657 = phi float [ %460, %1117 ], [ %1609, %1639 ]
  %1658 = phi float [ %461, %1117 ], [ %1640, %1639 ]
  %1659 = phi float [ %462, %1117 ], [ %1641, %1639 ]
  %1660 = phi float [ %463, %1117 ], [ %1642, %1639 ]
  %1661 = phi float [ %464, %1117 ], [ %1643, %1639 ]
  %1662 = phi i32 [ %465, %1117 ], [ %1644, %1639 ]
  %1663 = fmul fast float %778, %279
  %1664 = fmul fast float %778, %280
  %1665 = fmul fast float %778, %281
  %1666 = fadd fast float %1663, %454
  %1667 = fadd fast float %1664, %455
  %1668 = fadd fast float %1665, %456
  %1669 = fcmp fast olt float %1647, %418
  %1670 = extractvalue %dx.types.CBufRet.f32 %1103, 2
  %1671 = fcmp fast olt float %1670, %1653
  %1672 = and i1 %1669, %1671
  br i1 %1672, label %440, label %1673

; <label>:1673                                    ; preds = %1646
  br label %1674

; <label>:1674                                    ; preds = %1673, %394
  %1675 = phi float [ 0.000000e+00, %394 ], [ %1652, %1673 ]
  %1676 = phi float [ 1.000000e+00, %394 ], [ %1653, %1673 ]
  %1677 = phi float [ 0.000000e+00, %394 ], [ %1654, %1673 ]
  %1678 = phi float [ 0.000000e+00, %394 ], [ %1655, %1673 ]
  %1679 = phi float [ 0.000000e+00, %394 ], [ %1656, %1673 ]
  %1680 = phi float [ 0.000000e+00, %394 ], [ %1657, %1673 ]
  %1681 = phi float [ 0.000000e+00, %394 ], [ %1658, %1673 ]
  %1682 = phi float [ 0.000000e+00, %394 ], [ %1659, %1673 ]
  %1683 = phi float [ 0.000000e+00, %394 ], [ %1660, %1673 ]
  %1684 = phi float [ 0.000000e+00, %394 ], [ %1661, %1673 ]
  %1685 = phi i32 [ 0, %394 ], [ %1662, %1673 ]
  %1686 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.i32 %1686, 0
  %1688 = icmp eq i32 %1687, 0
  br i1 %1688, label %1730, label %1689, !dx.controlflow.hints !68

; <label>:1689                                    ; preds = %1674
  %1690 = icmp eq i32 %1685, 0
  br i1 %1690, label %1729, label %1691, !dx.controlflow.hints !69

; <label>:1691                                    ; preds = %1689
  %1692 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1693 = extractvalue %dx.types.CBufRet.i32 %1692, 2
  %1694 = icmp eq i32 %1693, 0
  br i1 %1694, label %1701, label %1695, !dx.controlflow.hints !70

; <label>:1695                                    ; preds = %1691
  %1696 = fsub fast float 1.000000e+00, %1676
  %1697 = fdiv fast float %1681, %1696
  %1698 = fdiv fast float %1682, %1696
  %1699 = fdiv fast float %1683, %1696
  %1700 = fdiv fast float %1684, %1696
  br label %1706

; <label>:1701                                    ; preds = %1691
  %1702 = fadd fast float %1681, %1676
  %1703 = fadd fast float %1682, %1676
  %1704 = fadd fast float %1683, %1676
  %1705 = fadd fast float %1684, %1676
  br label %1706

; <label>:1706                                    ; preds = %1701, %1695
  %1707 = phi float [ %1697, %1695 ], [ %1702, %1701 ]
  %1708 = phi float [ %1698, %1695 ], [ %1703, %1701 ]
  %1709 = phi float [ %1699, %1695 ], [ %1704, %1701 ]
  %1710 = phi float [ %1700, %1695 ], [ %1705, %1701 ]
  %1711 = call float @dx.op.binary.f32(i32 35, float %1707, float -1.000000e+00)  ; FMax(a,b)
  %1712 = call float @dx.op.binary.f32(i32 35, float %1708, float -1.000000e+00)  ; FMax(a,b)
  %1713 = call float @dx.op.binary.f32(i32 35, float %1709, float -1.000000e+00)  ; FMax(a,b)
  %1714 = call float @dx.op.binary.f32(i32 35, float %1710, float -1.000000e+00)  ; FMax(a,b)
  %1715 = call float @dx.op.binary.f32(i32 36, float %1711, float 1.000000e+00)  ; FMin(a,b)
  %1716 = call float @dx.op.binary.f32(i32 36, float %1712, float 1.000000e+00)  ; FMin(a,b)
  %1717 = call float @dx.op.binary.f32(i32 36, float %1713, float 1.000000e+00)  ; FMin(a,b)
  %1718 = call float @dx.op.binary.f32(i32 36, float %1714, float 1.000000e+00)  ; FMin(a,b)
  %1719 = fmul fast float %1715, 1.500000e+00
  %1720 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1717, float %1719)  ; FMad(a,b,c)
  %1721 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1716, float 0.000000e+00)  ; FMad(a,b,c)
  %1722 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1718, float %1721)  ; FMad(a,b,c)
  %1723 = fmul fast float %1715, 0x3FEBB67AE0000000
  %1724 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1717, float %1723)  ; FMad(a,b,c)
  %1725 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1716, float 0.000000e+00)  ; FMad(a,b,c)
  %1726 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1718, float %1725)  ; FMad(a,b,c)
  %1727 = fadd fast float %1720, 5.000000e-01
  %1728 = fadd fast float %1724, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %18, i32 %19, i32 0, float %1727, float %1722, float %1728, float %1726, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1730

; <label>:1729                                    ; preds = %1689
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %18, i32 %19, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1730

; <label>:1730                                    ; preds = %1729, %1706, %1674
  %1731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1732 = extractvalue %dx.types.CBufRet.f32 %1731, 2
  %1733 = fsub fast float %1676, %1732
  %1734 = fdiv fast float %1733, %1732
  %1735 = call float @dx.op.unary.f32(i32 7, float %1734)  ; Saturate(value)
  %1736 = fmul fast float %1735, 2.000000e+00
  %1737 = fsub fast float 3.000000e+00, %1736
  %1738 = fmul fast float %1735, %1735
  %1739 = fmul fast float %1738, %1676
  %1740 = fmul fast float %1739, %1737
  %1741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1742 = extractvalue %dx.types.CBufRet.f32 %1741, 0
  %1743 = extractvalue %dx.types.CBufRet.f32 %1741, 1
  %1744 = extractvalue %dx.types.CBufRet.f32 %1741, 2
  %1745 = call float @dx.op.dot3.f32(i32 55, float %279, float %280, float %281, float %1742, float %1743, float %1744)  ; Dot3(ax,ay,az,bx,by,bz)
  %1746 = fmul fast float %1745, %1675
  %1747 = fcmp fast ogt float %1680, 0.000000e+00
  %1748 = fdiv fast float 1.000000e+00, %1680
  %1749 = fmul fast float %1746, %1748
  %1750 = select i1 %1747, float %1749, float %290
  %1751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1752 = extractvalue %dx.types.CBufRet.f32 %1751, 0
  %1753 = extractvalue %dx.types.CBufRet.f32 %1751, 1
  %1754 = extractvalue %dx.types.CBufRet.f32 %1751, 2
  %1755 = fmul fast float %1752, %243
  %1756 = fmul fast float %1753, %243
  %1757 = fmul fast float %1754, %243
  %1758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1759 = extractvalue %dx.types.CBufRet.f32 %1758, 0
  %1760 = extractvalue %dx.types.CBufRet.f32 %1758, 1
  %1761 = extractvalue %dx.types.CBufRet.f32 %1758, 2
  %1762 = fmul fast float %1759, %244
  %1763 = fmul fast float %1760, %244
  %1764 = fmul fast float %1761, %244
  %1765 = fadd fast float %1762, %1755
  %1766 = fadd fast float %1763, %1756
  %1767 = fadd fast float %1764, %1757
  %1768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1769 = extractvalue %dx.types.CBufRet.f32 %1768, 0
  %1770 = extractvalue %dx.types.CBufRet.f32 %1768, 1
  %1771 = extractvalue %dx.types.CBufRet.f32 %1768, 2
  %1772 = fadd fast float %1765, %1769
  %1773 = fadd fast float %1766, %1770
  %1774 = fadd fast float %1767, %1771
  %1775 = fmul fast float %1772, %1750
  %1776 = fmul fast float %1773, %1750
  %1777 = fmul fast float %1774, %1750
  %1778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1779 = extractvalue %dx.types.CBufRet.f32 %1778, 0
  %1780 = extractvalue %dx.types.CBufRet.f32 %1778, 1
  %1781 = extractvalue %dx.types.CBufRet.f32 %1778, 2
  %1782 = extractvalue %dx.types.CBufRet.f32 %1778, 3
  %1783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1784 = extractvalue %dx.types.CBufRet.f32 %1783, 0
  %1785 = extractvalue %dx.types.CBufRet.f32 %1783, 1
  %1786 = extractvalue %dx.types.CBufRet.f32 %1783, 2
  %1787 = extractvalue %dx.types.CBufRet.f32 %1783, 3
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 0
  %1790 = extractvalue %dx.types.CBufRet.f32 %1788, 1
  %1791 = extractvalue %dx.types.CBufRet.f32 %1788, 2
  %1792 = extractvalue %dx.types.CBufRet.f32 %1788, 3
  %1793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1794 = extractvalue %dx.types.CBufRet.f32 %1793, 0
  %1795 = extractvalue %dx.types.CBufRet.f32 %1793, 1
  %1796 = extractvalue %dx.types.CBufRet.f32 %1793, 2
  %1797 = extractvalue %dx.types.CBufRet.f32 %1793, 3
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 3
  %1800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1801 = extractvalue %dx.types.CBufRet.f32 %1800, 3
  %1802 = extractvalue %dx.types.CBufRet.f32 %1800, 0
  %1803 = extractvalue %dx.types.CBufRet.f32 %1800, 1
  %1804 = extractvalue %dx.types.CBufRet.f32 %1800, 2
  %1805 = fcmp fast olt float %1804, -5.000000e-01
  %1806 = call float @dx.op.dot3.f32(i32 55, float %1775, float %1776, float %1777, float %1775, float %1776, float %1777)  ; Dot3(ax,ay,az,bx,by,bz)
  %1807 = call float @dx.op.unary.f32(i32 25, float %1806)  ; Rsqrt(value)
  %1808 = fmul fast float %1807, %1806
  %1809 = fmul fast float %1807, %1775
  %1810 = fmul fast float %1807, %1776
  %1811 = fmul fast float %1807, %1777
  %1812 = fadd fast float %1808, %1782
  %1813 = call float @dx.op.dot3.f32(i32 55, float %1809, float %1810, float %1811, float %1779, float %1780, float %1781)  ; Dot3(ax,ay,az,bx,by,bz)
  %1814 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1815 = extractvalue %dx.types.CBufRet.i32 %1814, 1
  %1816 = and i32 %1815, 1
  %1817 = icmp ne i32 %1816, 0
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 2
  %1820 = fcmp fast ogt float %1819, 0.000000e+00
  %1821 = and i1 %1817, %1820
  br i1 %1821, label %1822, label %2228, !dx.controlflow.hints !71

; <label>:1822                                    ; preds = %1730
  %1823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1824 = extractvalue %dx.types.CBufRet.f32 %1823, 3
  %1825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1826 = extractvalue %dx.types.CBufRet.f32 %1825, 2
  %1827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1828 = extractvalue %dx.types.CBufRet.f32 %1827, 2
  %1829 = fsub fast float %1826, %1828
  %1830 = and i32 %1815, 2
  %1831 = extractvalue %dx.types.CBufRet.i32 %1814, 0
  %1832 = call i32 @dx.op.binary.i32(i32 40, i32 %1831, i32 3)  ; UMin(a,b)
  %1833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1834 = extractvalue %dx.types.CBufRet.f32 %1833, 0
  %1835 = extractvalue %dx.types.CBufRet.f32 %1833, 1
  %1836 = extractvalue %dx.types.CBufRet.f32 %1827, 0
  %1837 = extractvalue %dx.types.CBufRet.f32 %1827, 1
  %1838 = fsub fast float %1834, %1836
  %1839 = fsub fast float %1835, %1837
  %1840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.f32 %1840, 0
  %1842 = fcmp fast ogt float %1841, 0.000000e+00
  %1843 = fsub fast float -0.000000e+00, %1838
  %1844 = fsub fast float -0.000000e+00, %1839
  %1845 = call float @dx.op.dot2.f32(i32 54, float %1809, float %1810, float %1809, float %1810)  ; Dot2(ax,ay,bx,by)
  %1846 = call float @dx.op.dot2.f32(i32 54, float %1809, float %1810, float %1843, float %1844)  ; Dot2(ax,ay,bx,by)
  %1847 = fmul fast float %1846, 2.000000e+00
  %1848 = call float @dx.op.dot2.f32(i32 54, float %1843, float %1844, float %1843, float %1844)  ; Dot2(ax,ay,bx,by)
  %1849 = fmul fast float %1841, %1841
  %1850 = fsub fast float %1848, %1849
  %1851 = fmul fast float %1847, %1847
  %1852 = fmul fast float %1845, 4.000000e+00
  %1853 = fmul fast float %1852, %1850
  %1854 = fsub fast float %1851, %1853
  %1855 = fcmp fast ogt float %1854, 0.000000e+00
  br i1 %1855, label %1856, label %1871, !dx.controlflow.hints !72

; <label>:1856                                    ; preds = %1822
  %1857 = fcmp fast ogt float %1847, 0.000000e+00
  %1858 = call float @dx.op.unary.f32(i32 24, float %1854)  ; Sqrt(value)
  %1859 = fsub fast float -0.000000e+00, %1858
  %1860 = select i1 %1857, float %1858, float %1859
  %1861 = fadd fast float %1860, %1847
  %1862 = fmul float %1861, -5.000000e-01
  %1863 = fdiv fast float %1862, %1845
  %1864 = call float @dx.op.binary.f32(i32 35, float %1863, float 0.000000e+00)  ; FMax(a,b)
  %1865 = call float @dx.op.binary.f32(i32 36, float %1808, float %1864)  ; FMin(a,b)
  %1866 = fdiv fast float %1850, %1862
  %1867 = call float @dx.op.binary.f32(i32 35, float %1866, float 0.000000e+00)  ; FMax(a,b)
  %1868 = call float @dx.op.binary.f32(i32 36, float %1808, float %1867)  ; FMin(a,b)
  %1869 = call float @dx.op.binary.f32(i32 36, float %1865, float %1868)  ; FMin(a,b)
  %1870 = call float @dx.op.binary.f32(i32 35, float %1865, float %1868)  ; FMax(a,b)
  br label %1871

; <label>:1871                                    ; preds = %1856, %1822
  %1872 = phi float [ %1870, %1856 ], [ -1.000000e+00, %1822 ]
  %1873 = phi float [ %1869, %1856 ], [ -1.000000e+00, %1822 ]
  %1874 = phi i1 [ true, %1856 ], [ false, %1822 ]
  %1875 = and i1 %1842, %1874
  br i1 %1875, label %1876, label %1878, !dx.controlflow.hints !73

; <label>:1876                                    ; preds = %1871
  %1877 = fcmp fast oeq float %1873, %1872
  br i1 %1877, label %2181, label %1879, !dx.controlflow.hints !74

; <label>:1878                                    ; preds = %1871
  br i1 %1842, label %2181, label %1879, !dx.controlflow.hints !75

; <label>:1879                                    ; preds = %1878, %1876
  %1880 = phi float [ %1808, %1878 ], [ %1872, %1876 ]
  %1881 = phi float [ 0.000000e+00, %1878 ], [ %1873, %1876 ]
  %1882 = icmp ne i32 %1830, 0
  %1883 = fmul fast float %1880, %1811
  %1884 = fadd fast float %1883, %1824
  %1885 = fmul fast float %1884, %1880
  %1886 = select i1 %1882, float 0.000000e+00, float %1885
  %1887 = fcmp fast oeq float %1811, 0.000000e+00
  %1888 = fdiv fast float %1829, %1811
  %1889 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1888)  ; FMax(a,b)
  %1890 = select i1 %1887, float %1880, float %1889
  %1891 = call float @dx.op.binary.f32(i32 36, float %1880, float %1890)  ; FMin(a,b)
  %1892 = fcmp fast ogt float %1811, 0.000000e+00
  %1893 = fcmp fast olt float %1829, 0.000000e+00
  br i1 %1892, label %1894, label %1951, !dx.controlflow.hints !76

; <label>:1894                                    ; preds = %1879
  %1895 = icmp eq i32 %1830, 0
  br i1 %1893, label %1896, label %1940, !dx.controlflow.hints !77

; <label>:1896                                    ; preds = %1894
  %1897 = select i1 %1895, float %1880, float 0.000000e+00
  %1898 = fsub fast float -0.000000e+00, %1897
  %1899 = call float @dx.op.unary.f32(i32 6, float %1898)  ; FAbs(value)
  %1900 = fmul fast float %1897, %1811
  %1901 = fadd fast float %1900, %1824
  %1902 = fmul fast float %1899, %1901
  %1903 = fsub fast float %1886, %1902
  %1904 = fsub fast float %1880, %1899
  %1905 = select i1 %1895, float %1904, float 0.000000e+00
  %1906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1907 = extractvalue %dx.types.CBufRet.f32 %1906, 0
  %1908 = extractvalue %dx.types.CBufRet.f32 %1906, 1
  %1909 = extractvalue %dx.types.CBufRet.f32 %1906, 2
  %1910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.f32 %1910, 0
  %1912 = extractvalue %dx.types.CBufRet.f32 %1910, 1
  %1913 = extractvalue %dx.types.CBufRet.f32 %1910, 2
  %1914 = extractvalue %dx.types.CBufRet.f32 %1910, 3
  %1915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1916 = extractvalue %dx.types.CBufRet.f32 %1915, 3
  %1917 = call float @dx.op.binary.f32(i32 36, float %1903, float %1916)  ; FMin(a,b)
  %1918 = fmul fast float %1914, %1905
  %1919 = call float @dx.op.unary.f32(i32 7, float %1918)  ; Saturate(value)
  %1920 = fsub fast float %1911, %1907
  %1921 = fsub fast float %1912, %1908
  %1922 = fsub fast float %1913, %1909
  %1923 = fmul fast float %1919, %1920
  %1924 = fmul fast float %1919, %1921
  %1925 = fmul fast float %1919, %1922
  %1926 = fadd fast float %1923, %1907
  %1927 = fadd fast float %1924, %1908
  %1928 = fadd fast float %1925, %1909
  %1929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1930 = extractvalue %dx.types.CBufRet.f32 %1929, 0
  %1931 = extractvalue %dx.types.CBufRet.f32 %1929, 1
  %1932 = fadd fast float %1931, %1930
  %1933 = call float @dx.op.unary.f32(i32 7, float %1932)  ; Saturate(value)
  %1934 = extractvalue %dx.types.CBufRet.f32 %1929, 2
  %1935 = extractvalue %dx.types.CBufRet.f32 %1929, 3
  %1936 = fadd fast float %1935, %1934
  %1937 = call float @dx.op.unary.f32(i32 7, float %1936)  ; Saturate(value)
  %1938 = fmul fast float %1933, %1917
  %1939 = fmul fast float %1938, %1937
  br label %2181

; <label>:1940                                    ; preds = %1894
  br i1 %1895, label %1941, label %1962, !dx.controlflow.hints !78

; <label>:1941                                    ; preds = %1940
  %1942 = call float @dx.op.binary.f32(i32 36, float %1891, float %1881)  ; FMin(a,b)
  %1943 = fsub fast float %1891, %1942
  %1944 = fsub fast float %1943, %1880
  %1945 = call float @dx.op.unary.f32(i32 6, float %1944)  ; FAbs(value)
  %1946 = fadd fast float %1943, %1880
  %1947 = fmul fast float %1946, %1811
  %1948 = fadd fast float %1947, %1824
  %1949 = fmul fast float %1948, %1945
  %1950 = fsub fast float %1886, %1949
  br label %1962

; <label>:1951                                    ; preds = %1879
  br i1 %1893, label %1952, label %1962, !dx.controlflow.hints !79

; <label>:1952                                    ; preds = %1951
  %1953 = call float @dx.op.binary.f32(i32 35, float %1881, float %1891)  ; FMax(a,b)
  %1954 = icmp eq i32 %1830, 0
  %1955 = select i1 %1954, float %1891, float 0.000000e+00
  %1956 = fsub fast float -0.000000e+00, %1955
  %1957 = call float @dx.op.unary.f32(i32 6, float %1956)  ; FAbs(value)
  %1958 = fmul fast float %1955, %1811
  %1959 = fadd fast float %1958, %1824
  %1960 = fmul fast float %1957, %1959
  %1961 = fsub fast float %1886, %1960
  br label %1962

; <label>:1962                                    ; preds = %1952, %1951, %1941, %1940
  %1963 = phi float [ %1881, %1940 ], [ %1881, %1941 ], [ %1953, %1952 ], [ %1881, %1951 ]
  %1964 = phi float [ 0.000000e+00, %1940 ], [ %1945, %1941 ], [ %1957, %1952 ], [ 0.000000e+00, %1951 ]
  %1965 = phi float [ %1886, %1940 ], [ %1950, %1941 ], [ %1961, %1952 ], [ %1886, %1951 ]
  %1966 = phi float [ %1891, %1940 ], [ %1891, %1941 ], [ %1880, %1952 ], [ %1880, %1951 ]
  %1967 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 0
  store float -1.000000e+00, float* %1967, align 4, !tbaa !80, !noalias !84
  %1968 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 1
  store float -1.000000e+00, float* %1968, align 4, !tbaa !80, !noalias !84
  %1969 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 2
  store float -1.000000e+00, float* %1969, align 4, !tbaa !80, !noalias !84
  %1970 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 0
  store float -1.000000e+00, float* %1970, align 4, !tbaa !80, !noalias !84
  %1971 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 1
  store float -1.000000e+00, float* %1971, align 4, !tbaa !80, !noalias !84
  %1972 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 2
  store float -1.000000e+00, float* %1972, align 4, !tbaa !80, !noalias !84
  %1973 = icmp sgt i32 %1832, 0
  br i1 %1973, label %1974, label %2035

; <label>:1974                                    ; preds = %1962
  br label %1975

; <label>:1975                                    ; preds = %2024, %1974
  %1976 = phi i32 [ %2025, %2024 ], [ 0, %1974 ]
  %1977 = phi i32 [ %2026, %2024 ], [ 0, %1974 ]
  %1978 = add nuw i32 %1977, 171
  %1979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %1978)  ; CBufferLoadLegacy(handle,regIndex)
  %1980 = extractvalue %dx.types.CBufRet.f32 %1979, 0
  %1981 = extractvalue %dx.types.CBufRet.f32 %1979, 1
  %1982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1983 = extractvalue %dx.types.CBufRet.f32 %1982, 0
  %1984 = extractvalue %dx.types.CBufRet.f32 %1982, 1
  %1985 = fsub fast float %1980, %1983
  %1986 = fsub fast float %1981, %1984
  %1987 = extractvalue %dx.types.CBufRet.f32 %1979, 2
  %1988 = fsub fast float -0.000000e+00, %1985
  %1989 = fsub fast float -0.000000e+00, %1986
  %1990 = call float @dx.op.dot2.f32(i32 54, float %1809, float %1810, float %1988, float %1989)  ; Dot2(ax,ay,bx,by)
  %1991 = fmul fast float %1990, 2.000000e+00
  %1992 = call float @dx.op.dot2.f32(i32 54, float %1988, float %1989, float %1988, float %1989)  ; Dot2(ax,ay,bx,by)
  %1993 = fmul fast float %1987, %1987
  %1994 = fsub fast float %1992, %1993
  %1995 = fmul fast float %1991, %1991
  %1996 = fmul fast float %1852, %1994
  %1997 = fsub fast float %1995, %1996
  %1998 = fcmp fast ogt float %1997, 0.000000e+00
  br i1 %1998, label %1999, label %2014, !dx.controlflow.hints !72

; <label>:1999                                    ; preds = %1975
  %2000 = fcmp fast ogt float %1991, 0.000000e+00
  %2001 = call float @dx.op.unary.f32(i32 24, float %1997)  ; Sqrt(value)
  %2002 = fsub fast float -0.000000e+00, %2001
  %2003 = select i1 %2000, float %2001, float %2002
  %2004 = fadd fast float %2003, %1991
  %2005 = fmul float %2004, -5.000000e-01
  %2006 = fdiv fast float %2005, %1845
  %2007 = call float @dx.op.binary.f32(i32 35, float %2006, float 0.000000e+00)  ; FMax(a,b)
  %2008 = call float @dx.op.binary.f32(i32 36, float %1880, float %2007)  ; FMin(a,b)
  %2009 = fdiv fast float %1994, %2005
  %2010 = call float @dx.op.binary.f32(i32 35, float %2009, float 0.000000e+00)  ; FMax(a,b)
  %2011 = call float @dx.op.binary.f32(i32 36, float %1880, float %2010)  ; FMin(a,b)
  %2012 = call float @dx.op.binary.f32(i32 36, float %2008, float %2011)  ; FMin(a,b)
  %2013 = call float @dx.op.binary.f32(i32 35, float %2008, float %2011)  ; FMax(a,b)
  br label %2014

; <label>:2014                                    ; preds = %1999, %1975
  %2015 = phi float [ %2013, %1999 ], [ -1.000000e+00, %1975 ]
  %2016 = phi float [ %2012, %1999 ], [ -1.000000e+00, %1975 ]
  %2017 = phi i1 [ true, %1999 ], [ false, %1975 ]
  br i1 %2017, label %2018, label %2024, !dx.controlflow.hints !95

; <label>:2018                                    ; preds = %2014
  %2019 = call float @dx.op.binary.f32(i32 35, float %1963, float %2016)  ; FMax(a,b)
  %2020 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 %1977
  store float %2019, float* %2020, align 4, !tbaa !80, !noalias !84
  %2021 = call float @dx.op.binary.f32(i32 35, float %1963, float %2015)  ; FMax(a,b)
  %2022 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %1977
  store float %2021, float* %2022, align 4, !tbaa !80, !noalias !84
  %2023 = add nsw i32 %1976, 1
  br label %2024

; <label>:2024                                    ; preds = %2018, %2014
  %2025 = phi i32 [ %2023, %2018 ], [ %1976, %2014 ]
  %2026 = add nuw nsw i32 %1977, 1
  %2027 = icmp eq i32 %2026, %1832
  br i1 %2027, label %2028, label %1975

; <label>:2028                                    ; preds = %2024
  %2029 = load float, float* %1969, align 4, !tbaa !80, !alias.scope !96, !noalias !99
  %2030 = load float, float* %1968, align 4, !tbaa !80, !alias.scope !102, !noalias !103
  %2031 = load float, float* %1967, align 4, !tbaa !80, !alias.scope !104, !noalias !105
  %2032 = load float, float* %1972, align 4, !tbaa !80, !alias.scope !106, !noalias !109
  %2033 = load float, float* %1971, align 4, !tbaa !80, !alias.scope !112, !noalias !113
  %2034 = load float, float* %1970, align 4, !tbaa !80, !alias.scope !114, !noalias !115
  br label %2035

; <label>:2035                                    ; preds = %2028, %1962
  %2036 = phi float [ -1.000000e+00, %1962 ], [ %2034, %2028 ]
  %2037 = phi float [ -1.000000e+00, %1962 ], [ %2033, %2028 ]
  %2038 = phi float [ -1.000000e+00, %1962 ], [ %2032, %2028 ]
  %2039 = phi float [ -1.000000e+00, %1962 ], [ %2031, %2028 ]
  %2040 = phi float [ -1.000000e+00, %1962 ], [ %2030, %2028 ]
  %2041 = phi float [ -1.000000e+00, %1962 ], [ %2029, %2028 ]
  %2042 = phi i32 [ 0, %1962 ], [ %2025, %2028 ]
  %2043 = call float @dx.op.binary.f32(i32 36, float %2040, float %2041)  ; FMin(a,b)
  %2044 = call float @dx.op.binary.f32(i32 36, float %2039, float %2043)  ; FMin(a,b)
  %2045 = call float @dx.op.binary.f32(i32 35, float %2039, float %2040)  ; FMax(a,b)
  %2046 = call float @dx.op.binary.f32(i32 36, float %2045, float %2041)  ; FMin(a,b)
  %2047 = call float @dx.op.binary.f32(i32 36, float %2039, float %2040)  ; FMin(a,b)
  %2048 = call float @dx.op.binary.f32(i32 35, float %2047, float %2046)  ; FMax(a,b)
  %2049 = call float @dx.op.binary.f32(i32 35, float %2040, float %2041)  ; FMax(a,b)
  %2050 = call float @dx.op.binary.f32(i32 35, float %2039, float %2049)  ; FMax(a,b)
  store float %2044, float* %1967, align 4, !tbaa !80, !alias.scope !104, !noalias !105
  store float %2048, float* %1968, align 4, !tbaa !80, !alias.scope !102, !noalias !103
  store float %2050, float* %1969, align 4, !tbaa !80, !alias.scope !96, !noalias !99
  %2051 = call float @dx.op.binary.f32(i32 36, float %2037, float %2038)  ; FMin(a,b)
  %2052 = call float @dx.op.binary.f32(i32 36, float %2036, float %2051)  ; FMin(a,b)
  %2053 = call float @dx.op.binary.f32(i32 35, float %2036, float %2037)  ; FMax(a,b)
  %2054 = call float @dx.op.binary.f32(i32 36, float %2053, float %2038)  ; FMin(a,b)
  %2055 = call float @dx.op.binary.f32(i32 36, float %2036, float %2037)  ; FMin(a,b)
  %2056 = call float @dx.op.binary.f32(i32 35, float %2055, float %2054)  ; FMax(a,b)
  %2057 = call float @dx.op.binary.f32(i32 35, float %2037, float %2038)  ; FMax(a,b)
  %2058 = call float @dx.op.binary.f32(i32 35, float %2036, float %2057)  ; FMax(a,b)
  store float %2052, float* %1970, align 4, !tbaa !80, !alias.scope !114, !noalias !115
  store float %2056, float* %1971, align 4, !tbaa !80, !alias.scope !112, !noalias !113
  store float %2058, float* %1972, align 4, !tbaa !80, !alias.scope !106, !noalias !109
  %2059 = sub nsw i32 3, %2042
  %2060 = icmp sgt i32 %2059, 2
  br i1 %2060, label %2061, label %2099, !dx.controlflow.hints !116

; <label>:2061                                    ; preds = %2035
  %2062 = icmp eq i32 %1830, 0
  %2063 = fsub fast float %1880, %1964
  %2064 = select i1 %2062, float %2063, float %1964
  %2065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2066 = extractvalue %dx.types.CBufRet.f32 %2065, 0
  %2067 = extractvalue %dx.types.CBufRet.f32 %2065, 1
  %2068 = extractvalue %dx.types.CBufRet.f32 %2065, 2
  %2069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2070 = extractvalue %dx.types.CBufRet.f32 %2069, 0
  %2071 = extractvalue %dx.types.CBufRet.f32 %2069, 1
  %2072 = extractvalue %dx.types.CBufRet.f32 %2069, 2
  %2073 = extractvalue %dx.types.CBufRet.f32 %2069, 3
  %2074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2075 = extractvalue %dx.types.CBufRet.f32 %2074, 3
  %2076 = call float @dx.op.binary.f32(i32 36, float %1965, float %2075)  ; FMin(a,b)
  %2077 = fmul fast float %2073, %2064
  %2078 = call float @dx.op.unary.f32(i32 7, float %2077)  ; Saturate(value)
  %2079 = fsub fast float %2070, %2066
  %2080 = fsub fast float %2071, %2067
  %2081 = fsub fast float %2072, %2068
  %2082 = fmul fast float %2078, %2079
  %2083 = fmul fast float %2078, %2080
  %2084 = fmul fast float %2078, %2081
  %2085 = fadd fast float %2082, %2066
  %2086 = fadd fast float %2083, %2067
  %2087 = fadd fast float %2084, %2068
  %2088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2089 = extractvalue %dx.types.CBufRet.f32 %2088, 0
  %2090 = extractvalue %dx.types.CBufRet.f32 %2088, 1
  %2091 = fadd fast float %2090, %2089
  %2092 = call float @dx.op.unary.f32(i32 7, float %2091)  ; Saturate(value)
  %2093 = extractvalue %dx.types.CBufRet.f32 %2088, 2
  %2094 = extractvalue %dx.types.CBufRet.f32 %2088, 3
  %2095 = fadd fast float %2094, %2093
  %2096 = call float @dx.op.unary.f32(i32 7, float %2095)  ; Saturate(value)
  %2097 = fmul fast float %2092, %2076
  %2098 = fmul fast float %2097, %2096
  br label %2181

; <label>:2099                                    ; preds = %2035
  %2100 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 %2059
  %2101 = load float, float* %2100, align 4, !tbaa !80, !noalias !84
  %2102 = fcmp fast olt float %2101, %1966
  %2103 = icmp sgt i32 %2042, 0
  %2104 = and i1 %2103, %2102
  br i1 %2104, label %2105, label %2142

; <label>:2105                                    ; preds = %2099
  br label %2106

; <label>:2106                                    ; preds = %2135, %2105
  %2107 = phi float [ %2136, %2135 ], [ %1964, %2105 ]
  %2108 = phi float [ %2137, %2135 ], [ %1965, %2105 ]
  %2109 = phi float [ %2117, %2135 ], [ %2101, %2105 ]
  %2110 = phi i32 [ %2114, %2135 ], [ %2059, %2105 ]
  %2111 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %2110
  %2112 = load float, float* %2111, align 4, !tbaa !80, !noalias !84
  %2113 = icmp slt i32 %2110, 2
  %2114 = add nsw i32 %2110, 1
  %2115 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 %2114
  %2116 = load float, float* %2115, align 4, !tbaa !80, !noalias !84
  %2117 = select i1 %2113, float %2116, float %1880
  %2118 = call float @dx.op.binary.f32(i32 36, float %2117, float %2112)  ; FMin(a,b)
  %2119 = call float @dx.op.binary.f32(i32 36, float %1966, float %2118)  ; FMin(a,b)
  %2120 = icmp eq i32 %1830, 0
  %2121 = fadd fast float %2119, %2109
  %2122 = fmul fast float %2121, %1811
  %2123 = fadd fast float %2122, %1824
  br i1 %2120, label %2129, label %2124, !dx.controlflow.hints !117

; <label>:2124                                    ; preds = %2106
  %2125 = fsub fast float %2119, %2109
  %2126 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2125)  ; FMax(a,b)
  %2127 = fmul fast float %2126, %2123
  %2128 = fadd fast float %2127, %2108
  br label %2135

; <label>:2129                                    ; preds = %2106
  %2130 = fsub fast float %2109, %2119
  %2131 = call float @dx.op.unary.f32(i32 6, float %2130)  ; FAbs(value)
  %2132 = fadd fast float %2131, %2107
  %2133 = fmul fast float %2131, %2123
  %2134 = fsub fast float %2108, %2133
  br label %2135

; <label>:2135                                    ; preds = %2129, %2124
  %2136 = phi float [ %2126, %2124 ], [ %2132, %2129 ]
  %2137 = phi float [ %2128, %2124 ], [ %2134, %2129 ]
  %2138 = fcmp fast olt float %2117, %1966
  %2139 = icmp slt i32 %2114, 3
  %2140 = and i1 %2139, %2138
  br i1 %2140, label %2106, label %2141

; <label>:2141                                    ; preds = %2135
  br label %2142

; <label>:2142                                    ; preds = %2141, %2099
  %2143 = phi float [ %1964, %2099 ], [ %2136, %2141 ]
  %2144 = phi float [ %1965, %2099 ], [ %2137, %2141 ]
  %2145 = fsub fast float %1880, %2143
  %2146 = select i1 %1882, float %2143, float %2145
  %2147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2148 = extractvalue %dx.types.CBufRet.f32 %2147, 0
  %2149 = extractvalue %dx.types.CBufRet.f32 %2147, 1
  %2150 = extractvalue %dx.types.CBufRet.f32 %2147, 2
  %2151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2152 = extractvalue %dx.types.CBufRet.f32 %2151, 0
  %2153 = extractvalue %dx.types.CBufRet.f32 %2151, 1
  %2154 = extractvalue %dx.types.CBufRet.f32 %2151, 2
  %2155 = extractvalue %dx.types.CBufRet.f32 %2151, 3
  %2156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2157 = extractvalue %dx.types.CBufRet.f32 %2156, 3
  %2158 = call float @dx.op.binary.f32(i32 36, float %2144, float %2157)  ; FMin(a,b)
  %2159 = fmul fast float %2155, %2146
  %2160 = call float @dx.op.unary.f32(i32 7, float %2159)  ; Saturate(value)
  %2161 = fsub fast float %2152, %2148
  %2162 = fsub fast float %2153, %2149
  %2163 = fsub fast float %2154, %2150
  %2164 = fmul fast float %2160, %2161
  %2165 = fmul fast float %2160, %2162
  %2166 = fmul fast float %2160, %2163
  %2167 = fadd fast float %2164, %2148
  %2168 = fadd fast float %2165, %2149
  %2169 = fadd fast float %2166, %2150
  %2170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2171 = extractvalue %dx.types.CBufRet.f32 %2170, 0
  %2172 = extractvalue %dx.types.CBufRet.f32 %2170, 1
  %2173 = fadd fast float %2172, %2171
  %2174 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2175 = extractvalue %dx.types.CBufRet.f32 %2170, 2
  %2176 = extractvalue %dx.types.CBufRet.f32 %2170, 3
  %2177 = fadd fast float %2176, %2175
  %2178 = call float @dx.op.unary.f32(i32 7, float %2177)  ; Saturate(value)
  %2179 = fmul fast float %2174, %2158
  %2180 = fmul fast float %2179, %2178
  br label %2181

; <label>:2181                                    ; preds = %2142, %2061, %1896, %1878, %1876
  %2182 = phi float [ %1905, %1896 ], [ %2064, %2061 ], [ %2146, %2142 ], [ 0.000000e+00, %1876 ], [ 0.000000e+00, %1878 ]
  %2183 = phi float [ %1939, %1896 ], [ %2098, %2061 ], [ %2180, %2142 ], [ 0.000000e+00, %1876 ], [ 0.000000e+00, %1878 ]
  %2184 = phi float [ %1926, %1896 ], [ %2085, %2061 ], [ %2167, %2142 ], [ 0.000000e+00, %1876 ], [ 0.000000e+00, %1878 ]
  %2185 = phi float [ %1927, %1896 ], [ %2086, %2061 ], [ %2168, %2142 ], [ 0.000000e+00, %1876 ], [ 0.000000e+00, %1878 ]
  %2186 = phi float [ %1928, %1896 ], [ %2087, %2061 ], [ %2169, %2142 ], [ 0.000000e+00, %1876 ], [ 0.000000e+00, %1878 ]
  %2187 = fmul fast float %1819, %2183
  %2188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2189 = extractvalue %dx.types.CBufRet.f32 %2188, 2
  %2190 = fsub fast float %1826, %2189
  %2191 = fcmp fast olt float %2187, -2.000000e+01
  %2192 = call float @dx.op.unary.f32(i32 21, float %2187)  ; Exp(value)
  %2193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2194 = extractvalue %dx.types.CBufRet.f32 %2193, 2
  %2195 = extractvalue %dx.types.CBufRet.f32 %2193, 3
  %2196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2197 = extractvalue %dx.types.CBufRet.f32 %2196, 2
  %2198 = fmul fast float %2195, %2190
  %2199 = call float @dx.op.unary.f32(i32 7, float %2198)  ; Saturate(value)
  %2200 = fsub fast float 1.000000e+00, %2199
  %2201 = fmul fast float %1811, 5.000000e-01
  %2202 = fadd fast float %2201, 5.000000e-01
  %2203 = call float @dx.op.unary.f32(i32 7, float %2202)  ; Saturate(value)
  %2204 = fsub fast float 1.000000e+00, %2203
  %2205 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2200)  ; FMax(a,b)
  %2206 = fdiv fast float %2204, %2205
  %2207 = fsub fast float %2190, %1777
  %2208 = call float @dx.op.unary.f32(i32 6, float %2207)  ; FAbs(value)
  %2209 = fmul fast float %2208, %2194
  %2210 = call float @dx.op.unary.f32(i32 7, float %2206)  ; Saturate(value)
  %2211 = fsub fast float 1.000000e+00, %2209
  %2212 = fmul fast float %2211, %2210
  %2213 = fadd fast float %2212, %2209
  %2214 = fmul fast float %2197, %2190
  %2215 = call float @dx.op.unary.f32(i32 7, float %2214)  ; Saturate(value)
  %2216 = fsub fast float 1.000000e+00, %2213
  %2217 = fmul fast float %2216, %2215
  %2218 = fadd fast float %2217, %2213
  %2219 = call float @dx.op.unary.f32(i32 7, float %2218)  ; Saturate(value)
  %2220 = fadd fast float %2192, -1.000000e+00
  %2221 = select i1 %2191, float -1.000000e+00, float %2220
  %2222 = fmul fast float %2219, %2221
  %2223 = fadd fast float %2222, 1.000000e+00
  %2224 = fsub fast float -0.000000e+00, %2222
  %2225 = fmul fast float %2184, %2224
  %2226 = fmul fast float %2185, %2224
  %2227 = fmul fast float %2186, %2224
  br label %2228

; <label>:2228                                    ; preds = %2181, %1730
  %2229 = phi float [ %2182, %2181 ], [ 0.000000e+00, %1730 ]
  %2230 = phi float [ %2223, %2181 ], [ 1.000000e+00, %1730 ]
  %2231 = phi float [ %2225, %2181 ], [ 0.000000e+00, %1730 ]
  %2232 = phi float [ %2226, %2181 ], [ 0.000000e+00, %1730 ]
  %2233 = phi float [ %2227, %2181 ], [ 0.000000e+00, %1730 ]
  %2234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2235 = extractvalue %dx.types.CBufRet.f32 %2234, 1
  %2236 = fsub fast float 1.000000e+00, %2230
  %2237 = fmul fast float %2236, %1812
  %2238 = fmul fast float %2237, %2235
  %2239 = fsub fast float %1812, %2238
  br i1 %1805, label %2240, label %2269, !dx.controlflow.hints !118

; <label>:2240                                    ; preds = %2228
  %2241 = fmul fast float %1813, %1802
  %2242 = fadd fast float %2241, %1803
  %2243 = call float @dx.op.unary.f32(i32 7, float %2242)  ; Saturate(value)
  %2244 = fmul fast float %1784, %2239
  %2245 = fsub fast float -0.000000e+00, %2244
  %2246 = fmul fast float %1785, %2239
  %2247 = fsub fast float -0.000000e+00, %2246
  %2248 = call float @dx.op.unary.f32(i32 21, float %2245)  ; Exp(value)
  %2249 = call float @dx.op.unary.f32(i32 21, float %2247)  ; Exp(value)
  %2250 = call float @dx.op.binary.f32(i32 35, float %1792, float %2248)  ; FMax(a,b)
  %2251 = call float @dx.op.binary.f32(i32 35, float %1792, float %2249)  ; FMax(a,b)
  %2252 = fsub fast float %2251, %2250
  %2253 = fmul fast float %2252, %2243
  %2254 = fadd fast float %2253, %2250
  %2255 = call float @dx.op.unary.f32(i32 7, float %2254)  ; Saturate(value)
  %2256 = fsub fast float %1789, %1794
  %2257 = fsub fast float %1790, %1795
  %2258 = fsub fast float %1791, %1796
  %2259 = fmul fast float %2243, %2256
  %2260 = fmul fast float %2243, %2257
  %2261 = fmul fast float %2243, %2258
  %2262 = fadd fast float %2259, %1794
  %2263 = fadd fast float %2260, %1795
  %2264 = fadd fast float %2261, %1796
  %2265 = fsub fast float 1.000000e+00, %2255
  %2266 = fmul fast float %2265, %2262
  %2267 = fmul fast float %2265, %2263
  %2268 = fmul fast float %2265, %2264
  br label %2328

; <label>:2269                                    ; preds = %2228
  %2270 = fmul fast float %2239, %1801
  %2271 = call float @dx.op.unary.f32(i32 7, float %2270)  ; Saturate(value)
  %2272 = fsub fast float 2.000000e+00, %2271
  %2273 = fmul fast float %2271, 9.921875e-01
  %2274 = fmul fast float %2273, %2272
  %2275 = fadd fast float %2274, 3.906250e-03
  %2276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %2275, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2277 = extractvalue %dx.types.ResRet.f32 %2276, 0
  %2278 = fsub fast float %2271, %2277
  %2279 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2278)  ; FMax(a,b)
  %2280 = fmul fast float %1787, %1777
  %2281 = call float @dx.op.unary.f32(i32 6, float %2280)  ; FAbs(value)
  %2282 = fcmp fast ogt float %2281, 0x3EB0C6F7A0000000
  br i1 %2282, label %2283, label %2289, !dx.controlflow.hints !119

; <label>:2283                                    ; preds = %2269
  %2284 = fmul fast float %2280, 0xBFF7154760000000
  %2285 = call float @dx.op.unary.f32(i32 21, float %2284)  ; Exp(value)
  %2286 = fsub fast float 1.000000e+00, %2285
  %2287 = fdiv fast float %2286, %2280
  %2288 = fmul fast float %2287, %1797
  br label %2289

; <label>:2289                                    ; preds = %2283, %2269
  %2290 = phi float [ %2288, %2283 ], [ %1797, %2269 ]
  %2291 = fadd fast float %2290, %1799
  %2292 = fmul fast float %2291, %2279
  %2293 = fmul fast float %1784, %2292
  %2294 = fsub fast float -0.000000e+00, %2293
  %2295 = fmul fast float %1785, %2292
  %2296 = fsub fast float -0.000000e+00, %2295
  %2297 = fmul fast float %1786, %2292
  %2298 = fsub fast float -0.000000e+00, %2297
  %2299 = call float @dx.op.unary.f32(i32 21, float %2294)  ; Exp(value)
  %2300 = call float @dx.op.unary.f32(i32 21, float %2296)  ; Exp(value)
  %2301 = call float @dx.op.unary.f32(i32 21, float %2298)  ; Exp(value)
  %2302 = fmul fast float %1813, %1813
  %2303 = fadd fast float %2302, 1.000000e+00
  %2304 = fmul fast float %2303, 0x3FAE8EC8A0000000
  %2305 = fmul fast float %2304, %1794
  %2306 = fmul fast float %2304, %1795
  %2307 = fmul fast float %2304, %1796
  %2308 = fmul fast float %1813, %1792
  %2309 = fsub fast float 1.000000e+00, %2308
  %2310 = fmul fast float %1792, %1792
  %2311 = fsub fast float 1.000000e+00, %2310
  %2312 = fmul fast float %2311, 0x3FB45F3060000000
  %2313 = fmul fast float %2309, %2309
  %2314 = fdiv fast float 1.000000e+00, %2313
  %2315 = fmul fast float %2312, %2314
  %2316 = fmul fast float %2315, %1789
  %2317 = fmul fast float %2315, %1790
  %2318 = fmul fast float %2315, %1791
  %2319 = fadd fast float %2316, %2305
  %2320 = fadd fast float %2317, %2306
  %2321 = fadd fast float %2318, %2307
  %2322 = fsub fast float 1.000000e+00, %2299
  %2323 = fsub fast float 1.000000e+00, %2300
  %2324 = fsub fast float 1.000000e+00, %2301
  %2325 = fmul fast float %2319, %2322
  %2326 = fmul fast float %2320, %2323
  %2327 = fmul fast float %2321, %2324
  br label %2328

; <label>:2328                                    ; preds = %2289, %2240
  %2329 = phi float [ %2266, %2240 ], [ %2325, %2289 ]
  %2330 = phi float [ %2267, %2240 ], [ %2326, %2289 ]
  %2331 = phi float [ %2268, %2240 ], [ %2327, %2289 ]
  %2332 = phi float [ %2255, %2240 ], [ %2299, %2289 ]
  %2333 = phi float [ %2255, %2240 ], [ %2300, %2289 ]
  %2334 = phi float [ %2255, %2240 ], [ %2301, %2289 ]
  br i1 %1821, label %2335, label %2533, !dx.controlflow.hints !120

; <label>:2335                                    ; preds = %2328
  %2336 = extractvalue %dx.types.CBufRet.f32 %2234, 0
  %2337 = fmul fast float %2336, %2236
  %2338 = fsub fast float %2231, %2329
  %2339 = fsub fast float %2232, %2330
  %2340 = fsub fast float %2233, %2331
  %2341 = fmul fast float %2337, %2338
  %2342 = fmul fast float %2337, %2339
  %2343 = fmul fast float %2337, %2340
  %2344 = fadd fast float %2341, %2329
  %2345 = fadd fast float %2342, %2330
  %2346 = fadd fast float %2343, %2331
  %2347 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2332)  ; FMax(a,b)
  %2348 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2333)  ; FMax(a,b)
  %2349 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2334)  ; FMax(a,b)
  %2350 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2230)  ; FMax(a,b)
  %2351 = call float @dx.op.binary.f32(i32 35, float %2229, float %2239)  ; FMax(a,b)
  %2352 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2351)  ; FMax(a,b)
  %2353 = fdiv fast float %2229, %2352
  %2354 = call float @dx.op.unary.f32(i32 7, float %2353)  ; Saturate(value)
  %2355 = fdiv fast float %2239, %2352
  %2356 = call float @dx.op.unary.f32(i32 7, float %2355)  ; Saturate(value)
  %2357 = fcmp fast une float %2350, 1.000000e+00
  br i1 %2357, label %2358, label %2371, !dx.controlflow.hints !121

; <label>:2358                                    ; preds = %2335
  %2359 = call float @dx.op.unary.f32(i32 23, float %2350)  ; Log(value)
  %2360 = fmul fast float %2359, 0x3FE62E4300000000
  %2361 = fmul fast float %2231, %2360
  %2362 = fsub fast float -0.000000e+00, %2361
  %2363 = fmul fast float %2232, %2360
  %2364 = fsub fast float -0.000000e+00, %2363
  %2365 = fmul fast float %2233, %2360
  %2366 = fsub fast float -0.000000e+00, %2365
  %2367 = fsub fast float 1.000000e+00, %2350
  %2368 = fdiv fast float %2362, %2367
  %2369 = fdiv fast float %2364, %2367
  %2370 = fdiv fast float %2366, %2367
  br label %2371

; <label>:2371                                    ; preds = %2358, %2335
  %2372 = phi float [ %2368, %2358 ], [ %2231, %2335 ]
  %2373 = phi float [ %2369, %2358 ], [ %2232, %2335 ]
  %2374 = phi float [ %2370, %2358 ], [ %2233, %2335 ]
  %2375 = phi float [ %2360, %2358 ], [ 0.000000e+00, %2335 ]
  %2376 = fcmp fast une float %2347, 1.000000e+00
  br i1 %2376, label %2377, label %2384, !dx.controlflow.hints !122

; <label>:2377                                    ; preds = %2371
  %2378 = call float @dx.op.unary.f32(i32 23, float %2347)  ; Log(value)
  %2379 = fmul fast float %2378, 0x3FE62E4300000000
  %2380 = fmul fast float %2344, %2379
  %2381 = fsub fast float -0.000000e+00, %2380
  %2382 = fsub fast float 1.000000e+00, %2347
  %2383 = fdiv fast float %2381, %2382
  br label %2384

; <label>:2384                                    ; preds = %2377, %2371
  %2385 = phi float [ %2383, %2377 ], [ %2344, %2371 ]
  %2386 = phi float [ %2379, %2377 ], [ 0.000000e+00, %2371 ]
  %2387 = fcmp fast une float %2348, 1.000000e+00
  br i1 %2387, label %2388, label %2395, !dx.controlflow.hints !122

; <label>:2388                                    ; preds = %2384
  %2389 = call float @dx.op.unary.f32(i32 23, float %2348)  ; Log(value)
  %2390 = fmul fast float %2389, 0x3FE62E4300000000
  %2391 = fmul fast float %2345, %2390
  %2392 = fsub fast float -0.000000e+00, %2391
  %2393 = fsub fast float 1.000000e+00, %2348
  %2394 = fdiv fast float %2392, %2393
  br label %2395

; <label>:2395                                    ; preds = %2388, %2384
  %2396 = phi float [ %2394, %2388 ], [ %2345, %2384 ]
  %2397 = phi float [ %2390, %2388 ], [ 0.000000e+00, %2384 ]
  %2398 = fcmp fast une float %2349, 1.000000e+00
  br i1 %2398, label %2399, label %2406, !dx.controlflow.hints !122

; <label>:2399                                    ; preds = %2395
  %2400 = call float @dx.op.unary.f32(i32 23, float %2349)  ; Log(value)
  %2401 = fmul fast float %2400, 0x3FE62E4300000000
  %2402 = fmul fast float %2346, %2401
  %2403 = fsub fast float -0.000000e+00, %2402
  %2404 = fsub fast float 1.000000e+00, %2349
  %2405 = fdiv fast float %2403, %2404
  br label %2406

; <label>:2406                                    ; preds = %2399, %2395
  %2407 = phi float [ %2405, %2399 ], [ %2346, %2395 ]
  %2408 = phi float [ %2401, %2399 ], [ 0.000000e+00, %2395 ]
  %2409 = fmul fast float %2372, %2356
  %2410 = fmul fast float %2373, %2356
  %2411 = fmul fast float %2374, %2356
  %2412 = fmul fast float %2375, %2356
  %2413 = fmul fast float %2385, %2354
  %2414 = fmul fast float %2396, %2354
  %2415 = fmul fast float %2407, %2354
  %2416 = fmul fast float %2386, %2354
  %2417 = fmul fast float %2397, %2354
  %2418 = fmul fast float %2408, %2354
  %2419 = fadd fast float %2413, %2409
  %2420 = fadd fast float %2414, %2410
  %2421 = fadd fast float %2415, %2411
  %2422 = fadd fast float %2416, %2412
  %2423 = fadd fast float %2417, %2412
  %2424 = fadd fast float %2418, %2412
  %2425 = fcmp fast une float %2422, 0.000000e+00
  br i1 %2425, label %2426, label %2433, !dx.controlflow.hints !123

; <label>:2426                                    ; preds = %2406
  %2427 = fmul fast float %2422, 0x3FF7154760000000
  %2428 = call float @dx.op.unary.f32(i32 21, float %2427)  ; Exp(value)
  %2429 = fsub fast float 1.000000e+00, %2428
  %2430 = fmul fast float %2419, %2429
  %2431 = fsub fast float -0.000000e+00, %2430
  %2432 = fdiv fast float %2431, %2422
  br label %2433

; <label>:2433                                    ; preds = %2426, %2406
  %2434 = phi float [ %2428, %2426 ], [ 1.000000e+00, %2406 ]
  %2435 = phi float [ %2432, %2426 ], [ %2419, %2406 ]
  %2436 = fcmp fast une float %2423, 0.000000e+00
  br i1 %2436, label %2437, label %2444, !dx.controlflow.hints !123

; <label>:2437                                    ; preds = %2433
  %2438 = fmul fast float %2423, 0x3FF7154760000000
  %2439 = call float @dx.op.unary.f32(i32 21, float %2438)  ; Exp(value)
  %2440 = fsub fast float 1.000000e+00, %2439
  %2441 = fmul fast float %2420, %2440
  %2442 = fsub fast float -0.000000e+00, %2441
  %2443 = fdiv fast float %2442, %2423
  br label %2444

; <label>:2444                                    ; preds = %2437, %2433
  %2445 = phi float [ %2439, %2437 ], [ 1.000000e+00, %2433 ]
  %2446 = phi float [ %2443, %2437 ], [ %2420, %2433 ]
  %2447 = fcmp fast une float %2424, 0.000000e+00
  br i1 %2447, label %2448, label %2455, !dx.controlflow.hints !123

; <label>:2448                                    ; preds = %2444
  %2449 = fmul fast float %2424, 0x3FF7154760000000
  %2450 = call float @dx.op.unary.f32(i32 21, float %2449)  ; Exp(value)
  %2451 = fsub fast float 1.000000e+00, %2450
  %2452 = fmul fast float %2421, %2451
  %2453 = fsub fast float -0.000000e+00, %2452
  %2454 = fdiv fast float %2453, %2424
  br label %2455

; <label>:2455                                    ; preds = %2448, %2444
  %2456 = phi float [ %2450, %2448 ], [ 1.000000e+00, %2444 ]
  %2457 = phi float [ %2454, %2448 ], [ %2421, %2444 ]
  %2458 = fcmp fast ogt float %2354, %2356
  br i1 %2458, label %2459, label %2479, !dx.controlflow.hints !124

; <label>:2459                                    ; preds = %2455
  %2460 = fsub fast float 1.000000e+00, %2356
  %2461 = fmul fast float %2372, %2460
  %2462 = fmul fast float %2373, %2460
  %2463 = fmul fast float %2374, %2460
  %2464 = fmul fast float %2375, %2460
  %2465 = fcmp fast une float %2464, 0.000000e+00
  br i1 %2465, label %2466, label %2517, !dx.controlflow.hints !125

; <label>:2466                                    ; preds = %2459
  %2467 = fmul fast float %2464, 0x3FF7154760000000
  %2468 = call float @dx.op.unary.f32(i32 21, float %2467)  ; Exp(value)
  %2469 = fsub fast float 1.000000e+00, %2468
  %2470 = fmul fast float %2461, %2469
  %2471 = fsub fast float -0.000000e+00, %2470
  %2472 = fmul fast float %2462, %2469
  %2473 = fsub fast float -0.000000e+00, %2472
  %2474 = fmul fast float %2463, %2469
  %2475 = fsub fast float -0.000000e+00, %2474
  %2476 = fdiv fast float %2471, %2464
  %2477 = fdiv fast float %2473, %2464
  %2478 = fdiv fast float %2475, %2464
  br label %2517

; <label>:2479                                    ; preds = %2455
  %2480 = fsub fast float 1.000000e+00, %2354
  %2481 = fmul fast float %2385, %2480
  %2482 = fmul fast float %2396, %2480
  %2483 = fmul fast float %2407, %2480
  %2484 = fmul fast float %2386, %2480
  %2485 = fmul fast float %2397, %2480
  %2486 = fmul fast float %2408, %2480
  %2487 = fcmp fast une float %2484, 0.000000e+00
  br i1 %2487, label %2488, label %2495, !dx.controlflow.hints !123

; <label>:2488                                    ; preds = %2479
  %2489 = fmul fast float %2484, 0x3FF7154760000000
  %2490 = call float @dx.op.unary.f32(i32 21, float %2489)  ; Exp(value)
  %2491 = fsub fast float 1.000000e+00, %2490
  %2492 = fmul fast float %2481, %2491
  %2493 = fsub fast float -0.000000e+00, %2492
  %2494 = fdiv fast float %2493, %2484
  br label %2495

; <label>:2495                                    ; preds = %2488, %2479
  %2496 = phi float [ %2494, %2488 ], [ %2481, %2479 ]
  %2497 = phi float [ %2490, %2488 ], [ 1.000000e+00, %2479 ]
  %2498 = fcmp fast une float %2485, 0.000000e+00
  br i1 %2498, label %2499, label %2506, !dx.controlflow.hints !123

; <label>:2499                                    ; preds = %2495
  %2500 = fmul fast float %2485, 0x3FF7154760000000
  %2501 = call float @dx.op.unary.f32(i32 21, float %2500)  ; Exp(value)
  %2502 = fsub fast float 1.000000e+00, %2501
  %2503 = fmul fast float %2482, %2502
  %2504 = fsub fast float -0.000000e+00, %2503
  %2505 = fdiv fast float %2504, %2485
  br label %2506

; <label>:2506                                    ; preds = %2499, %2495
  %2507 = phi float [ %2505, %2499 ], [ %2482, %2495 ]
  %2508 = phi float [ %2501, %2499 ], [ 1.000000e+00, %2495 ]
  %2509 = fcmp fast une float %2486, 0.000000e+00
  br i1 %2509, label %2510, label %2517, !dx.controlflow.hints !123

; <label>:2510                                    ; preds = %2506
  %2511 = fmul fast float %2486, 0x3FF7154760000000
  %2512 = call float @dx.op.unary.f32(i32 21, float %2511)  ; Exp(value)
  %2513 = fsub fast float 1.000000e+00, %2512
  %2514 = fmul fast float %2483, %2513
  %2515 = fsub fast float -0.000000e+00, %2514
  %2516 = fdiv fast float %2515, %2486
  br label %2517

; <label>:2517                                    ; preds = %2510, %2506, %2466, %2459
  %2518 = phi float [ %2516, %2510 ], [ %2478, %2466 ], [ %2463, %2459 ], [ %2483, %2506 ]
  %2519 = phi float [ %2507, %2510 ], [ %2477, %2466 ], [ %2462, %2459 ], [ %2507, %2506 ]
  %2520 = phi float [ %2496, %2510 ], [ %2476, %2466 ], [ %2461, %2459 ], [ %2496, %2506 ]
  %2521 = phi float [ %2512, %2510 ], [ %2468, %2466 ], [ 1.000000e+00, %2459 ], [ 1.000000e+00, %2506 ]
  %2522 = phi float [ %2508, %2510 ], [ %2468, %2466 ], [ 1.000000e+00, %2459 ], [ %2508, %2506 ]
  %2523 = phi float [ %2497, %2510 ], [ %2468, %2466 ], [ 1.000000e+00, %2459 ], [ %2497, %2506 ]
  %2524 = fmul fast float %2523, %2435
  %2525 = fmul fast float %2522, %2446
  %2526 = fmul fast float %2521, %2457
  %2527 = fadd fast float %2524, %2520
  %2528 = fadd fast float %2525, %2519
  %2529 = fadd fast float %2526, %2518
  %2530 = fmul fast float %2523, %2434
  %2531 = fmul fast float %2522, %2445
  %2532 = fmul fast float %2521, %2456
  br label %2533

; <label>:2533                                    ; preds = %2517, %2328
  %2534 = phi float [ %2334, %2328 ], [ %2532, %2517 ]
  %2535 = phi float [ %2333, %2328 ], [ %2531, %2517 ]
  %2536 = phi float [ %2332, %2328 ], [ %2530, %2517 ]
  %2537 = phi float [ %2331, %2328 ], [ %2529, %2517 ]
  %2538 = phi float [ %2330, %2328 ], [ %2528, %2517 ]
  %2539 = phi float [ %2329, %2328 ], [ %2527, %2517 ]
  %2540 = fmul fast float %2536, %1677
  %2541 = fmul fast float %2535, %1678
  %2542 = fmul fast float %2534, %1679
  %2543 = fsub fast float 1.000000e+00, %1740
  %2544 = fmul fast float %2539, %2543
  %2545 = fmul fast float %2538, %2543
  %2546 = fmul fast float %2537, %2543
  %2547 = fadd fast float %2544, %2540
  %2548 = fadd fast float %2545, %2541
  %2549 = fadd fast float %2546, %2542
  %2550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2551 = extractvalue %dx.types.CBufRet.f32 %2550, 2
  %2552 = fmul fast float %2551, %1750
  %2553 = call float @dx.op.unary.f32(i32 7, float %2552)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %18, i32 %19, i32 undef, float %1740, float %1740, float %1740, float %1740, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2555 = extractvalue %dx.types.CBufRet.f32 %2554, 0
  %2556 = fmul fast float %2555, %2547
  %2557 = fmul fast float %2555, %2548
  %2558 = fmul fast float %2555, %2549
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %18, i32 %19, i32 undef, float %2556, float %2557, float %2558, float %2556, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %18, i32 %19, i32 undef, float %2553, float %2553, float %2553, float %2553, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!29}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !16, !22, !25}
!5 = !{!6, !8, !9, !10, !12, !13, !14, !15}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 164}
!12 = !{i32 4, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!13 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!14 = !{i32 6, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!15 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!16 = !{!17, !18, !19, !20}
!17 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!18 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!19 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!20 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !21}
!21 = !{i32 0, i32 14}
!22 = !{!23, !24}
!23 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!24 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!25 = !{!26, !27, !28}
!26 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!27 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!28 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!29 = !{void ()* @cs_fog_raymarching_air_heightmap_particles, !"cs_fog_raymarching_air_heightmap_particles", null, !4, !30}
!30 = !{i32 0, i64 272, i32 4, !31}
!31 = !{i32 8, i32 8, i32 1}
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
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
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
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = !{!81, !81, i64 0}
!81 = !{!"float", !82, i64 0}
!82 = !{!"omnipotent char", !83, i64 0}
!83 = !{!"Simple C/C++ TBAA"}
!84 = !{!85, !87, !89, !90, !92, !93, !94}
!85 = distinct !{!85, !86, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!86 = distinct !{!86, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!87 = distinct !{!87, !88, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!88 = distinct !{!88, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!89 = distinct !{!89, !88, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!90 = distinct !{!90, !91, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!91 = distinct !{!91, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!92 = distinct !{!92, !91, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!93 = distinct !{!93, !91, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!94 = distinct !{!94, !91, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = !{!97}
!97 = distinct !{!97, !98, !"\01?sort@@YAXAIAM00@Z: %c"}
!98 = distinct !{!98, !"\01?sort@@YAXAIAM00@Z"}
!99 = !{!100, !101, !85, !87, !89, !90, !92, !93, !94}
!100 = distinct !{!100, !98, !"\01?sort@@YAXAIAM00@Z: %a"}
!101 = distinct !{!101, !98, !"\01?sort@@YAXAIAM00@Z: %b"}
!102 = !{!101}
!103 = !{!100, !97, !85, !87, !89, !90, !92, !93, !94}
!104 = !{!100}
!105 = !{!101, !97, !85, !87, !89, !90, !92, !93, !94}
!106 = !{!107}
!107 = distinct !{!107, !108, !"\01?sort@@YAXAIAM00@Z: %c"}
!108 = distinct !{!108, !"\01?sort@@YAXAIAM00@Z"}
!109 = !{!110, !111, !85, !87, !89, !90, !92, !93, !94}
!110 = distinct !{!110, !108, !"\01?sort@@YAXAIAM00@Z: %a"}
!111 = distinct !{!111, !108, !"\01?sort@@YAXAIAM00@Z: %b"}
!112 = !{!111}
!113 = !{!110, !107, !85, !87, !89, !90, !92, !93, !94}
!114 = !{!110}
!115 = !{!111, !107, !85, !87, !89, !90, !92, !93, !94}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 2}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 2}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 2}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 2}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}

