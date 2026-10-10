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
; shader hash: 50a4de695dc4b16fe6d233c251d2234b
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

define void @cs_fog_raymarching_heightmap_particles() {
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
  %371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.f32 %371, 3
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 0
  %375 = fsub fast float -0.000000e+00, %236
  %376 = fsub fast float -0.000000e+00, %237
  %377 = fsub fast float %372, %238
  %378 = fadd fast float %377, %374
  %379 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %375, float %376, float %378)  ; Dot3(ax,ay,az,bx,by,bz)
  %380 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %279, float %280, float %281)  ; Dot3(ax,ay,az,bx,by,bz)
  %381 = fdiv fast float 1.000000e+00, %380
  %382 = fmul fast float %381, %379
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 2
  %385 = fsub fast float %384, %238
  %386 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %375, float %376, float %385)  ; Dot3(ax,ay,az,bx,by,bz)
  %387 = fmul fast float %381, %386
  %388 = call float @dx.op.binary.f32(i32 36, float %382, float %387)  ; FMin(a,b)
  %389 = call float @dx.op.binary.f32(i32 35, float %382, float %387)  ; FMax(a,b)
  %390 = call float @dx.op.binary.f32(i32 36, float %370, float %388)  ; FMin(a,b)
  %391 = call float @dx.op.binary.f32(i32 35, float %369, float %389)  ; FMax(a,b)
  %392 = fdiv fast float 1.000000e+00, %279
  %393 = fdiv fast float 1.000000e+00, %280
  %394 = fdiv fast float 1.000000e+00, %281
  %395 = call float @dx.op.binary.f32(i32 36, float %300, float %391)  ; FMin(a,b)
  %396 = call float @dx.op.binary.f32(i32 35, float %277, float %390)  ; FMax(a,b)
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 0
  %399 = fmul fast float %225, 2.000000e+00
  %400 = fadd fast float %399, -1.000000e+00
  %401 = fmul fast float %398, %400
  %402 = fadd fast float %401, %396
  %403 = fcmp fast olt float %402, %395
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 2
  %406 = fcmp fast olt float %405, 1.000000e+00
  %407 = and i1 %403, %406
  br i1 %407, label %408, label %1508

; <label>:408                                     ; preds = %367
  %409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.i32 %409, 1
  %411 = add i32 %410, -1
  %412 = fmul fast float %402, %281
  %413 = fadd fast float %412, %238
  %414 = fmul fast float %402, %280
  %415 = fadd fast float %414, %237
  %416 = fmul fast float %402, %279
  %417 = fadd fast float %416, %236
  br label %418

; <label>:418                                     ; preds = %1480, %408
  %419 = phi float [ %1482, %1480 ], [ undef, %408 ]
  %420 = phi float [ %1483, %1480 ], [ undef, %408 ]
  %421 = phi float [ %1484, %1480 ], [ undef, %408 ]
  %422 = phi float [ %1485, %1480 ], [ undef, %408 ]
  %423 = phi float [ %720, %1480 ], [ undef, %408 ]
  %424 = phi float [ %721, %1480 ], [ undef, %408 ]
  %425 = phi float [ %722, %1480 ], [ undef, %408 ]
  %426 = phi float [ %723, %1480 ], [ undef, %408 ]
  %427 = phi float [ %1486, %1480 ], [ 0.000000e+00, %408 ]
  %428 = phi float [ %1487, %1480 ], [ 1.000000e+00, %408 ]
  %429 = phi float [ %1488, %1480 ], [ 0.000000e+00, %408 ]
  %430 = phi float [ %1489, %1480 ], [ 0.000000e+00, %408 ]
  %431 = phi float [ %1490, %1480 ], [ 0.000000e+00, %408 ]
  %432 = phi float [ %1500, %1480 ], [ %417, %408 ]
  %433 = phi float [ %1501, %1480 ], [ %415, %408 ]
  %434 = phi float [ %1502, %1480 ], [ %413, %408 ]
  %435 = phi float [ %1481, %1480 ], [ %402, %408 ]
  %436 = phi i32 [ %725, %1480 ], [ 10, %408 ]
  %437 = phi i32 [ %617, %1480 ], [ %411, %408 ]
  %438 = phi float [ %1491, %1480 ], [ 0.000000e+00, %408 ]
  %439 = phi float [ %1492, %1480 ], [ 0.000000e+00, %408 ]
  %440 = phi float [ %1493, %1480 ], [ 0.000000e+00, %408 ]
  %441 = phi float [ %1494, %1480 ], [ 0.000000e+00, %408 ]
  %442 = phi float [ %1495, %1480 ], [ 0.000000e+00, %408 ]
  %443 = phi i32 [ %1496, %1480 ], [ 0, %408 ]
  %444 = fsub fast float -0.000000e+00, %433
  %445 = fsub fast float -0.000000e+00, %432
  %446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.f32 %446, 0
  %448 = icmp eq i32 %368, 0
  br i1 %448, label %614, label %449, !dx.controlflow.hints !36

; <label>:449                                     ; preds = %418
  %450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.i32 %450, 1
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 1
  %454 = fcmp fast ogt float %453, %435
  br i1 %454, label %455, label %457, !dx.controlflow.hints !37

; <label>:455                                     ; preds = %449
  %456 = fsub fast float %453, %435
  br label %604

; <label>:457                                     ; preds = %449
  %458 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.i32 %458, 3
  %460 = icmp eq i32 %459, 0
  %461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %462 = extractvalue %dx.types.CBufRet.f32 %461, 2
  %463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %464 = extractvalue %dx.types.CBufRet.f32 %463, 2
  %465 = fsub fast float %462, %434
  %466 = fadd fast float %465, %464
  %467 = fsub fast float 0xC7EFFFFFE0000000, %434
  br i1 %460, label %475, label %468, !dx.controlflow.hints !33

; <label>:468                                     ; preds = %457
  %469 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %445, float %444, float %466)  ; Dot3(ax,ay,az,bx,by,bz)
  %470 = fmul fast float %381, %469
  %471 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %445, float %444, float %467)  ; Dot3(ax,ay,az,bx,by,bz)
  %472 = fmul fast float %381, %471
  %473 = call float @dx.op.binary.f32(i32 36, float %470, float %472)  ; FMin(a,b)
  %474 = call float @dx.op.binary.f32(i32 35, float %470, float %472)  ; FMax(a,b)
  br label %505

; <label>:475                                     ; preds = %457
  %476 = extractvalue %dx.types.CBufRet.f32 %461, 0
  %477 = extractvalue %dx.types.CBufRet.f32 %461, 1
  %478 = extractvalue %dx.types.CBufRet.f32 %463, 0
  %479 = extractvalue %dx.types.CBufRet.f32 %463, 1
  %480 = fsub fast float %476, %432
  %481 = fmul fast float %392, %480
  %482 = fadd fast float %480, %478
  %483 = fmul fast float %482, %392
  %484 = call float @dx.op.binary.f32(i32 36, float %481, float %483)  ; FMin(a,b)
  %485 = call float @dx.op.binary.f32(i32 35, float %481, float %483)  ; FMax(a,b)
  %486 = fsub fast float %477, %433
  %487 = fmul fast float %393, %486
  %488 = fadd fast float %486, %479
  %489 = fmul fast float %488, %393
  %490 = call float @dx.op.binary.f32(i32 36, float %487, float %489)  ; FMin(a,b)
  %491 = call float @dx.op.binary.f32(i32 35, float %484, float %490)  ; FMax(a,b)
  %492 = call float @dx.op.binary.f32(i32 35, float %487, float %489)  ; FMax(a,b)
  %493 = call float @dx.op.binary.f32(i32 36, float %485, float %492)  ; FMin(a,b)
  %494 = fmul fast float %394, %467
  %495 = fmul fast float %394, %466
  %496 = call float @dx.op.binary.f32(i32 36, float %494, float %495)  ; FMin(a,b)
  %497 = call float @dx.op.binary.f32(i32 35, float %491, float %496)  ; FMax(a,b)
  %498 = call float @dx.op.binary.f32(i32 35, float %494, float %495)  ; FMax(a,b)
  %499 = call float @dx.op.binary.f32(i32 36, float %493, float %498)  ; FMin(a,b)
  %500 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %497)  ; FMax(a,b)
  %501 = fcmp fast ult float %499, %500
  br i1 %501, label %505, label %502, !dx.controlflow.hints !34

; <label>:502                                     ; preds = %475
  %503 = call float @dx.op.binary.f32(i32 36, float %497, float %499)  ; FMin(a,b)
  %504 = call float @dx.op.binary.f32(i32 35, float %497, float %499)  ; FMax(a,b)
  br label %505

; <label>:505                                     ; preds = %502, %475, %468
  %506 = phi float [ %473, %468 ], [ %503, %502 ], [ 0.000000e+00, %475 ]
  %507 = phi float [ %474, %468 ], [ %504, %502 ], [ 0.000000e+00, %475 ]
  %508 = fcmp fast ogt float %506, 0.000000e+00
  br i1 %508, label %604, label %509, !dx.controlflow.hints !38

; <label>:509                                     ; preds = %505
  %510 = fcmp fast ugt float %507, 0.000000e+00
  br i1 %510, label %511, label %604, !dx.controlflow.hints !39

; <label>:511                                     ; preds = %509
  %512 = icmp sgt i32 %437, 0
  br i1 %512, label %513, label %598

; <label>:513                                     ; preds = %511
  br label %514

; <label>:514                                     ; preds = %594, %513
  %515 = phi i32 [ %595, %594 ], [ %437, %513 ]
  %516 = sitofp i32 %515 to float
  %517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %518 = extractvalue %dx.types.CBufRet.f32 %517, 0
  %519 = extractvalue %dx.types.CBufRet.f32 %517, 1
  %520 = fsub fast float %432, %518
  %521 = fsub fast float %433, %519
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 0
  %524 = extractvalue %dx.types.CBufRet.f32 %522, 1
  %525 = fmul fast float %520, %523
  %526 = fmul fast float %521, %524
  %527 = fsub fast float 1.000000e+00, %526
  %528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.i32 %528, 3
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %537, label %531, !dx.controlflow.hints !40

; <label>:531                                     ; preds = %514
  %532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %525, float %527, float undef, float undef, i32 0, i32 0, i32 undef, float %516)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  %534 = extractvalue %dx.types.ResRet.f32 %532, 1
  %535 = extractvalue %dx.types.ResRet.f32 %532, 2
  %536 = extractvalue %dx.types.ResRet.f32 %532, 3
  br label %543

; <label>:537                                     ; preds = %514
  %538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %525, float %527, float undef, float undef, i32 0, i32 0, i32 undef, float %516)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 0
  %540 = extractvalue %dx.types.ResRet.f32 %538, 1
  %541 = extractvalue %dx.types.ResRet.f32 %538, 2
  %542 = extractvalue %dx.types.ResRet.f32 %538, 3
  br label %543

; <label>:543                                     ; preds = %537, %531
  %544 = phi float [ %533, %531 ], [ %539, %537 ]
  %545 = phi float [ %534, %531 ], [ %540, %537 ]
  %546 = phi float [ %535, %531 ], [ %541, %537 ]
  %547 = phi float [ %536, %531 ], [ %542, %537 ]
  %548 = extractvalue %dx.types.CBufRet.f32 %522, 3
  %549 = fmul fast float %548, %544
  %550 = extractvalue %dx.types.CBufRet.f32 %517, 2
  %551 = fadd fast float %549, %550
  %552 = fmul fast float %548, %545
  %553 = fadd fast float %552, %550
  %554 = fmul fast float %548, %546
  %555 = fadd fast float %554, %550
  %556 = and i32 %515, 31
  %557 = shl i32 1, %556
  %558 = uitofp i32 %557 to float
  %559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = extractvalue %dx.types.CBufRet.f32 %559, 3
  %561 = fdiv fast float 1.000000e+00, %560
  %562 = fmul fast float %561, %558
  %563 = fmul fast float %562, %281
  %564 = fadd fast float %563, %434
  %565 = fcmp fast oeq float %547, 0.000000e+00
  %566 = fcmp fast ogt float %434, %553
  %567 = fcmp fast ogt float %564, %553
  %568 = and i1 %566, %567
  %569 = or i1 %565, %568
  br i1 %569, label %570, label %574, !dx.controlflow.hints !41

; <label>:570                                     ; preds = %543
  %571 = add nsw i32 %515, 1
  %572 = add nsw i32 %451, -1
  %573 = call i32 @dx.op.binary.i32(i32 38, i32 %571, i32 %572)  ; IMin(a,b)
  br label %604

; <label>:574                                     ; preds = %543
  %575 = fcmp fast olt float %434, %555
  %576 = fcmp fast olt float %564, %555
  %577 = and i1 %575, %576
  br i1 %577, label %578, label %582, !dx.controlflow.hints !42

; <label>:578                                     ; preds = %574
  %579 = add nsw i32 %515, 1
  %580 = add nsw i32 %451, -1
  %581 = call i32 @dx.op.binary.i32(i32 38, i32 %579, i32 %580)  ; IMin(a,b)
  br label %604

; <label>:582                                     ; preds = %574
  %583 = fcmp fast olt float %434, %551
  %584 = fcmp fast olt float %564, %551
  %585 = and i1 %583, %584
  br i1 %585, label %586, label %594, !dx.controlflow.hints !43

; <label>:586                                     ; preds = %582
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 3
  %589 = extractvalue %dx.types.CBufRet.f32 %522, 2
  %590 = fcmp fast une float %588, %589
  br i1 %590, label %591, label %598, !dx.controlflow.hints !44

; <label>:591                                     ; preds = %586
  %592 = fsub fast float %434, %555
  %593 = call float @dx.op.binary.f32(i32 36, float %562, float %592)  ; FMin(a,b)
  br label %598

; <label>:594                                     ; preds = %582
  %595 = add nsw i32 %515, -1
  %596 = icmp sgt i32 %515, 1
  br i1 %596, label %514, label %597

; <label>:597                                     ; preds = %594
  br label %598

; <label>:598                                     ; preds = %597, %591, %586, %511
  %599 = phi float [ %593, %591 ], [ %562, %586 ], [ 0.000000e+00, %511 ], [ 0.000000e+00, %597 ]
  %600 = phi i32 [ %515, %591 ], [ %515, %586 ], [ %437, %511 ], [ %595, %597 ]
  %601 = add nsw i32 %600, 1
  %602 = add nsw i32 %451, -1
  %603 = call i32 @dx.op.binary.i32(i32 38, i32 %601, i32 %602)  ; IMin(a,b)
  br label %604

; <label>:604                                     ; preds = %598, %578, %570, %509, %505, %455
  %605 = phi float [ %456, %455 ], [ %562, %570 ], [ %562, %578 ], [ %599, %598 ], [ 0x47EFFFFFE0000000, %509 ], [ %506, %505 ]
  %606 = phi i32 [ %368, %455 ], [ %368, %570 ], [ %368, %578 ], [ %368, %598 ], [ 0, %509 ], [ %368, %505 ]
  %607 = phi i32 [ %437, %455 ], [ %573, %570 ], [ %581, %578 ], [ %603, %598 ], [ %437, %509 ], [ %437, %505 ]
  %608 = icmp ne i32 %606, 0
  %609 = zext i1 %608 to i32
  %610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %611 = extractvalue %dx.types.CBufRet.f32 %610, 2
  %612 = call float @dx.op.binary.f32(i32 35, float %605, float %611)  ; FMax(a,b)
  %613 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %612)  ; FMin(a,b)
  br label %614

; <label>:614                                     ; preds = %604, %418
  %615 = phi i32 [ %609, %604 ], [ 0, %418 ]
  %616 = phi float [ %613, %604 ], [ 0x47EFFFFFE0000000, %418 ]
  %617 = phi i32 [ %607, %604 ], [ %437, %418 ]
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 0
  %620 = extractvalue %dx.types.CBufRet.f32 %618, 1
  %621 = fsub fast float %432, %619
  %622 = fsub fast float %433, %620
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 2
  %625 = extractvalue %dx.types.CBufRet.f32 %623, 3
  %626 = fmul fast float %621, %624
  %627 = fmul fast float %622, %625
  %628 = call float @dx.op.binary.f32(i32 36, float %626, float %627)  ; FMin(a,b)
  %629 = fcmp fast olt float %628, 0.000000e+00
  %630 = call float @dx.op.binary.f32(i32 35, float %626, float %627)  ; FMax(a,b)
  %631 = fcmp fast ogt float %630, 1.000000e+00
  %632 = or i1 %629, %631
  %633 = extractvalue %dx.types.CBufRet.f32 %618, 2
  %634 = fcmp fast olt float %434, %633
  %635 = or i1 %632, %634
  %636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %637 = extractvalue %dx.types.CBufRet.f32 %636, 3
  %638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %639 = extractvalue %dx.types.CBufRet.f32 %638, 0
  %640 = fadd fast float %639, %637
  %641 = fcmp fast ogt float %434, %640
  %642 = or i1 %635, %641
  br i1 %642, label %643, label %672, !dx.controlflow.hints !45

; <label>:643                                     ; preds = %614
  %644 = extractvalue %dx.types.CBufRet.f32 %623, 0
  %645 = extractvalue %dx.types.CBufRet.f32 %623, 1
  %646 = fsub fast float %619, %432
  %647 = fmul fast float %646, %392
  %648 = fadd fast float %646, %644
  %649 = fmul fast float %648, %392
  %650 = call float @dx.op.binary.f32(i32 36, float %647, float %649)  ; FMin(a,b)
  %651 = call float @dx.op.binary.f32(i32 35, float %647, float %649)  ; FMax(a,b)
  %652 = fsub fast float %620, %433
  %653 = fmul fast float %652, %393
  %654 = fadd fast float %652, %645
  %655 = fmul fast float %654, %393
  %656 = call float @dx.op.binary.f32(i32 36, float %653, float %655)  ; FMin(a,b)
  %657 = call float @dx.op.binary.f32(i32 35, float %650, float %656)  ; FMax(a,b)
  %658 = call float @dx.op.binary.f32(i32 35, float %653, float %655)  ; FMax(a,b)
  %659 = call float @dx.op.binary.f32(i32 36, float %651, float %658)  ; FMin(a,b)
  %660 = fsub fast float %633, %434
  %661 = fmul fast float %660, %394
  %662 = fsub fast float %637, %434
  %663 = fadd fast float %662, %639
  %664 = fmul fast float %663, %394
  %665 = call float @dx.op.binary.f32(i32 36, float %661, float %664)  ; FMin(a,b)
  %666 = call float @dx.op.binary.f32(i32 35, float %657, float %665)  ; FMax(a,b)
  %667 = call float @dx.op.binary.f32(i32 35, float %661, float %664)  ; FMax(a,b)
  %668 = call float @dx.op.binary.f32(i32 36, float %659, float %667)  ; FMin(a,b)
  %669 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %666)  ; FMax(a,b)
  %670 = fcmp fast oge float %668, %669
  %671 = select i1 %670, float %666, float 1.000000e+07
  br label %718

; <label>:672                                     ; preds = %614
  %673 = fsub fast float 1.000000e+00, %627
  %674 = icmp eq i32 %436, 0
  br i1 %674, label %703, label %675

; <label>:675                                     ; preds = %672
  br label %676

; <label>:676                                     ; preds = %699, %675
  %677 = phi i32 [ %700, %699 ], [ %436, %675 ]
  %678 = uitofp i32 %677 to float
  %679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %626, float %673, float undef, float undef, i32 0, i32 0, i32 undef, float %678)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %680 = extractvalue %dx.types.ResRet.f32 %679, 0
  %681 = extractvalue %dx.types.ResRet.f32 %679, 1
  %682 = extractvalue %dx.types.ResRet.f32 %679, 2
  %683 = fcmp fast oeq float %680, 0.000000e+00
  %684 = fcmp ule float %434, %682
  %685 = fcmp uge float %434, %681
  %686 = or i1 %685, %684
  %687 = or i1 %683, %686
  br i1 %687, label %688, label %699, !dx.controlflow.hints !46

; <label>:688                                     ; preds = %676
  %689 = extractvalue %dx.types.ResRet.f32 %679, 3
  %690 = extractvalue %dx.types.CBufRet.f32 %623, 0
  %691 = and i32 %677, 31
  %692 = lshr i32 1024, %691
  %693 = uitofp i32 %692 to float
  %694 = fdiv fast float %690, %693
  %695 = add i32 %677, 1
  %696 = uitofp i32 %695 to float
  %697 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %696)  ; FMin(a,b)
  %698 = fptosi float %697 to i32
  br label %718

; <label>:699                                     ; preds = %676
  %700 = add i32 %677, -1
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %702, label %676, !llvm.loop !47

; <label>:702                                     ; preds = %699
  br label %703

; <label>:703                                     ; preds = %702, %672
  %704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %626, float %673, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %705 = extractvalue %dx.types.ResRet.f32 %704, 0
  %706 = extractvalue %dx.types.ResRet.f32 %704, 1
  %707 = extractvalue %dx.types.ResRet.f32 %704, 2
  %708 = extractvalue %dx.types.ResRet.f32 %704, 3
  %709 = extractvalue %dx.types.CBufRet.f32 %623, 0
  %710 = fmul fast float %709, 9.765625e-04
  %711 = fcmp fast oeq float %705, 0.000000e+00
  %712 = fcmp ule float %434, %707
  %713 = fcmp uge float %434, %706
  %714 = or i1 %713, %712
  %715 = or i1 %711, %714
  %716 = zext i1 %715 to i32
  %717 = xor i32 %716, 1
  br label %718

; <label>:718                                     ; preds = %703, %688, %643
  %719 = phi float [ %671, %643 ], [ %694, %688 ], [ %710, %703 ]
  %720 = phi float [ %423, %643 ], [ %680, %688 ], [ %705, %703 ]
  %721 = phi float [ %424, %643 ], [ %681, %688 ], [ %706, %703 ]
  %722 = phi float [ %425, %643 ], [ %682, %688 ], [ %707, %703 ]
  %723 = phi float [ %426, %643 ], [ %689, %688 ], [ %708, %703 ]
  %724 = phi i32 [ 0, %643 ], [ 0, %688 ], [ %717, %703 ]
  %725 = phi i32 [ 10, %643 ], [ %698, %688 ], [ 1, %703 ]
  %726 = icmp eq i32 %724, 0
  %727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.f32 %727, 2
  %729 = call float @dx.op.binary.f32(i32 35, float %719, float %728)  ; FMax(a,b)
  %730 = call float @dx.op.binary.f32(i32 36, float %616, float %729)  ; FMin(a,b)
  %731 = extractvalue %dx.types.CBufRet.f32 %446, 2
  %732 = fmul fast float %731, %435
  %733 = call float @dx.op.unary.f32(i32 23, float %732)  ; Log(value)
  %734 = fmul fast float %733, 0x3FE62E4300000000
  %735 = call float @dx.op.binary.f32(i32 35, float %734, float 1.000000e+00)  ; FMax(a,b)
  %736 = fmul fast float %735, 0x47EFFFFFE0000000
  %737 = call float @dx.op.binary.f32(i32 36, float %736, float %730)  ; FMin(a,b)
  %738 = call float @dx.op.binary.f32(i32 35, float %737, float %447)  ; FMax(a,b)
  %739 = fsub fast float %395, %435
  %740 = fadd fast float %739, 0x3F1A36E2E0000000
  %741 = call float @dx.op.binary.f32(i32 36, float %740, float %738)  ; FMin(a,b)
  %742 = icmp eq i32 %615, 0
  br i1 %742, label %848, label %743, !dx.controlflow.hints !49

; <label>:743                                     ; preds = %718
  %744 = fcmp fast olt float %740, %738
  %745 = fmul fast float %281, %224
  %746 = fmul fast float %745, %741
  %747 = fadd fast float %746, %434
  %748 = fmul fast float %281, %225
  %749 = fmul fast float %748, %741
  %750 = fadd fast float %749, %434
  %751 = fmul fast float %281, %226
  %752 = fmul fast float %751, %741
  %753 = fadd fast float %752, %434
  br i1 %744, label %754, label %759, !dx.controlflow.hints !50

; <label>:754                                     ; preds = %743
  %755 = fmul fast float %741, %279
  %756 = fmul fast float %741, %280
  %757 = fadd fast float %755, %432
  %758 = fadd fast float %756, %433
  br label %759

; <label>:759                                     ; preds = %754, %743
  %760 = phi float [ %757, %754 ], [ %432, %743 ]
  %761 = phi float [ %758, %754 ], [ %433, %743 ]
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 0
  %764 = extractvalue %dx.types.CBufRet.f32 %762, 1
  %765 = fsub fast float %760, %763
  %766 = fsub fast float %761, %764
  %767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.f32 %767, 0
  %769 = extractvalue %dx.types.CBufRet.f32 %767, 1
  %770 = fmul fast float %765, %768
  %771 = fmul fast float %766, %769
  %772 = fsub fast float 1.000000e+00, %771
  %773 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.i32 %773, 3
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %782, label %776, !dx.controlflow.hints !40

; <label>:776                                     ; preds = %759
  %777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %770, float %772, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  %779 = extractvalue %dx.types.ResRet.f32 %777, 1
  %780 = extractvalue %dx.types.ResRet.f32 %777, 2
  %781 = extractvalue %dx.types.ResRet.f32 %777, 3
  br label %788

; <label>:782                                     ; preds = %759
  %783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %770, float %772, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %784 = extractvalue %dx.types.ResRet.f32 %783, 0
  %785 = extractvalue %dx.types.ResRet.f32 %783, 1
  %786 = extractvalue %dx.types.ResRet.f32 %783, 2
  %787 = extractvalue %dx.types.ResRet.f32 %783, 3
  br label %788

; <label>:788                                     ; preds = %782, %776
  %789 = phi float [ %778, %776 ], [ %784, %782 ]
  %790 = phi float [ %779, %776 ], [ %785, %782 ]
  %791 = phi float [ %780, %776 ], [ %786, %782 ]
  %792 = phi float [ %781, %776 ], [ %787, %782 ]
  %793 = extractvalue %dx.types.CBufRet.f32 %767, 3
  %794 = fmul fast float %793, %790
  %795 = fmul fast float %794, %789
  %796 = fsub fast float %794, %795
  %797 = fcmp fast ole float %796, 0.000000e+00
  %798 = extractvalue %dx.types.CBufRet.f32 %762, 2
  %799 = fadd fast float %795, %798
  %800 = fmul fast float %793, %791
  %801 = fadd fast float %800, %798
  %802 = fdiv fast float 1.000000e+00, %796
  %803 = select i1 %797, float 1.000000e+06, float %802
  %804 = fsub fast float %747, %799
  %805 = fmul fast float %803, %804
  %806 = call float @dx.op.unary.f32(i32 7, float %805)  ; Saturate(value)
  %807 = extractvalue %dx.types.CBufRet.f32 %767, 2
  %808 = fmul fast float %807, %806
  %809 = fsub fast float %807, %808
  %810 = fcmp fast olt float %747, %801
  %811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %812 = extractvalue %dx.types.CBufRet.f32 %811, 3
  %813 = select i1 %810, float %812, float 1.000000e+00
  %814 = fmul fast float %809, %813
  %815 = fsub fast float %750, %799
  %816 = fmul fast float %803, %815
  %817 = call float @dx.op.unary.f32(i32 7, float %816)  ; Saturate(value)
  %818 = fmul fast float %807, %817
  %819 = fsub fast float %807, %818
  %820 = fcmp fast olt float %750, %801
  %821 = select i1 %820, float %812, float 1.000000e+00
  %822 = fmul fast float %819, %821
  %823 = fadd fast float %822, %814
  %824 = fsub fast float %753, %799
  %825 = fmul fast float %803, %824
  %826 = call float @dx.op.unary.f32(i32 7, float %825)  ; Saturate(value)
  %827 = fmul fast float %807, %826
  %828 = fsub fast float %807, %827
  %829 = fcmp fast olt float %753, %801
  %830 = select i1 %829, float %812, float 1.000000e+00
  %831 = fmul fast float %828, %830
  %832 = fadd fast float %823, %831
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 2
  %835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %836 = extractvalue %dx.types.CBufRet.f32 %835, 0
  %837 = extractvalue %dx.types.CBufRet.f32 %835, 1
  %838 = extractvalue %dx.types.CBufRet.f32 %835, 2
  %839 = fmul fast float %741, 0x3FD5555560000000
  %840 = fmul fast float %839, %792
  %841 = fmul fast float %840, %834
  %842 = fmul fast float %841, %832
  %843 = extractvalue %dx.types.CBufRet.f32 %811, 0
  %844 = fmul fast float %842, %836
  %845 = fmul fast float %842, %837
  %846 = fmul fast float %842, %838
  %847 = fmul fast float %842, %843
  br label %848

; <label>:848                                     ; preds = %788, %718
  %849 = phi float [ %842, %788 ], [ 0.000000e+00, %718 ]
  %850 = phi float [ %847, %788 ], [ 0.000000e+00, %718 ]
  %851 = phi float [ %844, %788 ], [ 0.000000e+00, %718 ]
  %852 = phi float [ %845, %788 ], [ 0.000000e+00, %718 ]
  %853 = phi float [ %846, %788 ], [ 0.000000e+00, %718 ]
  br i1 %726, label %996, label %854, !dx.controlflow.hints !51

; <label>:854                                     ; preds = %848
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %857 = extractvalue %dx.types.CBufRet.f32 %855, 1
  %858 = extractvalue %dx.types.CBufRet.f32 %855, 2
  %859 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.i32 %859, 0
  %861 = icmp ne i32 %860, 0
  %862 = zext i1 %861 to i32
  %863 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.i32 %863, 0
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %899, label %866

; <label>:866                                     ; preds = %854
  br label %867

; <label>:867                                     ; preds = %894, %866
  %868 = phi i32 [ %895, %894 ], [ 0, %866 ]
  %869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %868, i32 0)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.f32 %869, 0
  %871 = extractvalue %dx.types.ResRet.f32 %869, 1
  %872 = extractvalue %dx.types.ResRet.f32 %869, 2
  %873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %868, i32 16)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.f32 %873, 0
  %875 = extractvalue %dx.types.ResRet.f32 %873, 1
  %876 = extractvalue %dx.types.ResRet.f32 %873, 2
  %877 = fsub fast float %870, %874
  %878 = fsub fast float %871, %875
  %879 = fsub fast float %872, %876
  %880 = fadd fast float %874, %870
  %881 = fadd fast float %875, %871
  %882 = fadd fast float %876, %872
  %883 = fcmp fast olt float %432, %877
  %884 = fcmp fast olt float %433, %878
  %885 = fcmp fast olt float %434, %879
  %886 = or i1 %883, %884
  %887 = or i1 %885, %886
  %888 = fcmp fast ogt float %432, %880
  %889 = fcmp fast ogt float %433, %881
  %890 = fcmp fast ogt float %434, %882
  %891 = or i1 %888, %889
  %892 = or i1 %890, %891
  %893 = or i1 %887, %892
  br i1 %893, label %894, label %897, !dx.controlflow.hints !52

; <label>:894                                     ; preds = %867
  %895 = add nuw i32 %868, 1
  %896 = icmp ult i32 %895, %864
  br i1 %896, label %867, label %897

; <label>:897                                     ; preds = %894, %867
  %898 = phi i32 [ 255, %894 ], [ %868, %867 ]
  br label %899

; <label>:899                                     ; preds = %897, %854
  %900 = phi i32 [ 255, %854 ], [ %898, %897 ]
  %901 = icmp eq i32 %900, 255
  br i1 %901, label %911, label %902, !dx.controlflow.hints !53

; <label>:902                                     ; preds = %899
  %903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %900, i32 32)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.f32 %903, 0
  %905 = extractvalue %dx.types.ResRet.f32 %903, 1
  %906 = extractvalue %dx.types.ResRet.f32 %903, 2
  %907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %900, i32 156)  ; BufferLoad(srv,index,wot)
  %908 = extractvalue %dx.types.ResRet.i32 %907, 0
  %909 = icmp ne i32 %908, 0
  %910 = zext i1 %909 to i32
  br label %911

; <label>:911                                     ; preds = %902, %899
  %912 = phi float [ %904, %902 ], [ %856, %899 ]
  %913 = phi float [ %905, %902 ], [ %857, %899 ]
  %914 = phi float [ %906, %902 ], [ %858, %899 ]
  %915 = phi i32 [ %910, %902 ], [ %862, %899 ]
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %917, label %986, !dx.controlflow.hints !54

; <label>:917                                     ; preds = %911
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 3
  %920 = extractvalue %dx.types.CBufRet.f32 %636, 0
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 2
  %923 = extractvalue %dx.types.CBufRet.f32 %921, 3
  br i1 %901, label %934, label %924, !dx.controlflow.hints !55

; <label>:924                                     ; preds = %917
  %925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %900, i32 60)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.f32 %925, 0
  %927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %900, i32 64)  ; BufferLoad(srv,index,wot)
  %928 = extractvalue %dx.types.ResRet.f32 %927, 0
  %929 = extractvalue %dx.types.ResRet.f32 %927, 1
  %930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %900, i32 72)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.f32 %930, 0
  %932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %900, i32 96)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.f32 %932, 0
  br label %934

; <label>:934                                     ; preds = %924, %917
  %935 = phi float [ %926, %924 ], [ %639, %917 ]
  %936 = phi float [ %931, %924 ], [ %637, %917 ]
  %937 = phi float [ %933, %924 ], [ %920, %917 ]
  %938 = phi float [ %928, %924 ], [ %922, %917 ]
  %939 = phi float [ %929, %924 ], [ %923, %917 ]
  %940 = call float @dx.op.binary.f32(i32 35, float %720, float 0.000000e+00)  ; FMax(a,b)
  %941 = call float @dx.op.binary.f32(i32 36, float %940, float 1.000000e+00)  ; FMin(a,b)
  %942 = call float @dx.op.unary.f32(i32 24, float %941)  ; Sqrt(value)
  %943 = call float @dx.op.binary.f32(i32 35, float %723, float 0x3F847AE140000000)  ; FMax(a,b)
  %944 = fsub fast float %721, %434
  %945 = fsub fast float %434, %722
  %946 = call float @dx.op.binary.f32(i32 36, float %945, float %944)  ; FMin(a,b)
  %947 = fdiv fast float %946, %943
  %948 = call float @dx.op.unary.f32(i32 7, float %947)  ; Saturate(value)
  %949 = fsub fast float %434, %936
  %950 = fdiv fast float %949, %935
  %951 = call float @dx.op.unary.f32(i32 7, float %950)  ; Saturate(value)
  %952 = fsub fast float 1.000000e+00, %951
  %953 = fmul float %948, %952
  %954 = fmul float %953, %953
  %955 = fmul fast float %942, %919
  %956 = fmul fast float %955, %954
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 2
  %959 = extractvalue %dx.types.CBufRet.f32 %957, 1
  %960 = fsub fast float %956, %959
  %961 = fsub fast float %958, %959
  %962 = fdiv fast float %960, %961
  %963 = call float @dx.op.unary.f32(i32 7, float %962)  ; Saturate(value)
  %964 = fmul fast float %963, %937
  %965 = fcmp fast ogt float %939, 0.000000e+00
  br i1 %965, label %966, label %986, !dx.controlflow.hints !56

; <label>:966                                     ; preds = %934
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 0
  %969 = extractvalue %dx.types.CBufRet.f32 %967, 1
  %970 = extractvalue %dx.types.CBufRet.f32 %967, 2
  %971 = fsub fast float %432, %968
  %972 = fsub fast float %433, %969
  %973 = fsub fast float %434, %970
  %974 = fmul fast float %971, %971
  %975 = fmul fast float %972, %972
  %976 = fadd fast float %974, %975
  %977 = fmul fast float %973, %973
  %978 = fadd fast float %976, %977
  %979 = call float @dx.op.unary.f32(i32 24, float %978)  ; Sqrt(value)
  %980 = fsub fast float %979, %938
  %981 = fsub fast float %939, %938
  %982 = fdiv fast float %980, %981
  %983 = call float @dx.op.unary.f32(i32 7, float %982)  ; Saturate(value)
  %984 = fmul fast float %983, %983
  %985 = fmul fast float %984, %964
  br label %986

; <label>:986                                     ; preds = %966, %934, %911
  %987 = phi float [ 0.000000e+00, %911 ], [ %985, %966 ], [ %964, %934 ]
  %988 = fmul fast float %987, %741
  %989 = fmul fast float %988, %912
  %990 = fmul fast float %988, %913
  %991 = fmul fast float %988, %914
  %992 = fadd fast float %989, %851
  %993 = fadd fast float %990, %852
  %994 = fadd fast float %991, %853
  %995 = fadd fast float %988, %849
  br label %996

; <label>:996                                     ; preds = %986, %848
  %997 = phi float [ %995, %986 ], [ %849, %848 ]
  %998 = phi float [ %992, %986 ], [ %851, %848 ]
  %999 = phi float [ %993, %986 ], [ %852, %848 ]
  %1000 = phi float [ %994, %986 ], [ %853, %848 ]
  %1001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1002 = extractvalue %dx.types.CBufRet.f32 %1001, 1
  %1003 = fcmp fast ogt float %997, %1002
  br i1 %1003, label %1004, label %1010, !dx.controlflow.hints !57

; <label>:1004                                    ; preds = %996
  %1005 = fdiv fast float 1.000000e+00, %997
  %1006 = fmul fast float %1005, %998
  %1007 = fmul fast float %1005, %999
  %1008 = fmul fast float %1005, %1000
  %1009 = fmul fast float %1005, %850
  br label %1010

; <label>:1010                                    ; preds = %1004, %996
  %1011 = phi float [ %1009, %1004 ], [ %850, %996 ]
  %1012 = phi float [ %1006, %1004 ], [ %998, %996 ]
  %1013 = phi float [ %1007, %1004 ], [ %999, %996 ]
  %1014 = phi float [ %1008, %1004 ], [ %1000, %996 ]
  br i1 %1003, label %1017, label %1015, !dx.controlflow.hints !58

; <label>:1015                                    ; preds = %1010
  %1016 = fadd fast float %741, %435
  br label %1480

; <label>:1017                                    ; preds = %1010
  %1018 = fmul fast float %997, 0xBFF7154760000000
  %1019 = call float @dx.op.unary.f32(i32 21, float %1018)  ; Exp(value)
  %1020 = call float @dx.op.unary.f32(i32 7, float %1019)  ; Saturate(value)
  %1021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1021, 3
  %1023 = fcmp fast une float %1022, 0.000000e+00
  %1024 = extractvalue %dx.types.CBufRet.f32 %1021, 0
  %1025 = extractvalue %dx.types.CBufRet.f32 %1021, 1
  %1026 = extractvalue %dx.types.CBufRet.f32 %1021, 2
  br i1 %1023, label %1027, label %1049, !dx.controlflow.hints !59

; <label>:1027                                    ; preds = %1017
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 0
  %1030 = extractvalue %dx.types.CBufRet.f32 %1028, 1
  %1031 = extractvalue %dx.types.CBufRet.f32 %1028, 2
  %1032 = call float @dx.op.dot3.f32(i32 55, float %1024, float %1025, float %1026, float %279, float %280, float %281)  ; Dot3(ax,ay,az,bx,by,bz)
  %1033 = fcmp fast ogt float %1011, 0.000000e+00
  %1034 = select i1 %1033, float 1.000000e+00, float -1.000000e+00
  %1035 = fmul fast float %1034, 5.000000e-01
  %1036 = fmul fast float %1035, %1032
  %1037 = fmul fast float %1034, %1011
  %1038 = fadd fast float %1036, 4.921875e-01
  %1039 = fadd fast float %1037, -3.125000e-02
  %1040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %1038, float 0x3FB25F3060000000, float %1039, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 0
  %1042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1043 = extractvalue %dx.types.CBufRet.f32 %1042, 0
  %1044 = fmul fast float %1041, 0x400921FB60000000
  %1045 = fmul fast float %1044, %1043
  %1046 = fmul fast float %1045, %1029
  %1047 = fmul fast float %1045, %1030
  %1048 = fmul fast float %1045, %1031
  br label %1049

; <label>:1049                                    ; preds = %1027, %1017
  %1050 = phi float [ %1046, %1027 ], [ 0.000000e+00, %1017 ]
  %1051 = phi float [ %1047, %1027 ], [ 0.000000e+00, %1017 ]
  %1052 = phi float [ %1048, %1027 ], [ 0.000000e+00, %1017 ]
  %1053 = fdiv fast float 1.000000e+00, %1024
  %1054 = fdiv fast float 1.000000e+00, %1025
  %1055 = fdiv fast float 1.000000e+00, %1026
  %1056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1057 = extractvalue %dx.types.CBufRet.f32 %1056, 0
  %1058 = fmul fast float %1057, %1024
  %1059 = fmul fast float %1057, %1025
  %1060 = fmul fast float %1057, %1026
  %1061 = fadd fast float %1058, %432
  %1062 = fsub fast float -0.000000e+00, %1061
  %1063 = fadd fast float %1059, %433
  %1064 = fsub fast float -0.000000e+00, %1063
  %1065 = fadd fast float %1060, %434
  br i1 %448, label %1137, label %1066, !dx.controlflow.hints !36

; <label>:1066                                    ; preds = %1049
  %1067 = extractvalue %dx.types.CBufRet.f32 %1056, 1
  %1068 = fcmp fast ogt float %1067, %1057
  br i1 %1068, label %1069, label %1071, !dx.controlflow.hints !37

; <label>:1069                                    ; preds = %1066
  %1070 = fsub fast float %1067, %1057
  br label %1128

; <label>:1071                                    ; preds = %1066
  %1072 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1073 = extractvalue %dx.types.CBufRet.i32 %1072, 3
  %1074 = icmp eq i32 %1073, 0
  %1075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1076 = extractvalue %dx.types.CBufRet.f32 %1075, 2
  %1077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1078 = extractvalue %dx.types.CBufRet.f32 %1077, 2
  %1079 = fsub fast float %1076, %1065
  %1080 = fadd fast float %1079, %1078
  %1081 = fsub fast float 0xC7EFFFFFE0000000, %1065
  br i1 %1074, label %1091, label %1082, !dx.controlflow.hints !33

; <label>:1082                                    ; preds = %1071
  %1083 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1062, float %1064, float %1080)  ; Dot3(ax,ay,az,bx,by,bz)
  %1084 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1024, float %1025, float %1026)  ; Dot3(ax,ay,az,bx,by,bz)
  %1085 = fdiv fast float 1.000000e+00, %1084
  %1086 = fmul fast float %1085, %1083
  %1087 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1062, float %1064, float %1081)  ; Dot3(ax,ay,az,bx,by,bz)
  %1088 = fmul fast float %1085, %1087
  %1089 = call float @dx.op.binary.f32(i32 36, float %1086, float %1088)  ; FMin(a,b)
  %1090 = call float @dx.op.binary.f32(i32 35, float %1086, float %1088)  ; FMax(a,b)
  br label %1121

; <label>:1091                                    ; preds = %1071
  %1092 = extractvalue %dx.types.CBufRet.f32 %1075, 0
  %1093 = extractvalue %dx.types.CBufRet.f32 %1075, 1
  %1094 = extractvalue %dx.types.CBufRet.f32 %1077, 0
  %1095 = extractvalue %dx.types.CBufRet.f32 %1077, 1
  %1096 = fsub fast float %1092, %1061
  %1097 = fmul fast float %1053, %1096
  %1098 = fadd fast float %1096, %1094
  %1099 = fmul fast float %1098, %1053
  %1100 = call float @dx.op.binary.f32(i32 36, float %1097, float %1099)  ; FMin(a,b)
  %1101 = call float @dx.op.binary.f32(i32 35, float %1097, float %1099)  ; FMax(a,b)
  %1102 = fsub fast float %1093, %1063
  %1103 = fmul fast float %1054, %1102
  %1104 = fadd fast float %1102, %1095
  %1105 = fmul fast float %1104, %1054
  %1106 = call float @dx.op.binary.f32(i32 36, float %1103, float %1105)  ; FMin(a,b)
  %1107 = call float @dx.op.binary.f32(i32 35, float %1100, float %1106)  ; FMax(a,b)
  %1108 = call float @dx.op.binary.f32(i32 35, float %1103, float %1105)  ; FMax(a,b)
  %1109 = call float @dx.op.binary.f32(i32 36, float %1101, float %1108)  ; FMin(a,b)
  %1110 = fmul fast float %1055, %1081
  %1111 = fmul fast float %1055, %1080
  %1112 = call float @dx.op.binary.f32(i32 36, float %1110, float %1111)  ; FMin(a,b)
  %1113 = call float @dx.op.binary.f32(i32 35, float %1107, float %1112)  ; FMax(a,b)
  %1114 = call float @dx.op.binary.f32(i32 35, float %1110, float %1111)  ; FMax(a,b)
  %1115 = call float @dx.op.binary.f32(i32 36, float %1109, float %1114)  ; FMin(a,b)
  %1116 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1113)  ; FMax(a,b)
  %1117 = fcmp fast ult float %1115, %1116
  br i1 %1117, label %1121, label %1118, !dx.controlflow.hints !34

; <label>:1118                                    ; preds = %1091
  %1119 = call float @dx.op.binary.f32(i32 36, float %1113, float %1115)  ; FMin(a,b)
  %1120 = call float @dx.op.binary.f32(i32 35, float %1113, float %1115)  ; FMax(a,b)
  br label %1121

; <label>:1121                                    ; preds = %1118, %1091, %1082
  %1122 = phi float [ %1089, %1082 ], [ %1119, %1118 ], [ 0.000000e+00, %1091 ]
  %1123 = phi float [ %1090, %1082 ], [ %1120, %1118 ], [ 0.000000e+00, %1091 ]
  %1124 = fcmp fast ogt float %1122, 0.000000e+00
  br i1 %1124, label %1128, label %1125, !dx.controlflow.hints !38

; <label>:1125                                    ; preds = %1121
  %1126 = fcmp fast ugt float %1123, 0.000000e+00
  br i1 %1126, label %1127, label %1128, !dx.controlflow.hints !39

; <label>:1127                                    ; preds = %1125
  br label %1128

; <label>:1128                                    ; preds = %1127, %1125, %1121, %1069
  %1129 = phi float [ %1070, %1069 ], [ 0.000000e+00, %1127 ], [ 0x47EFFFFFE0000000, %1125 ], [ %1122, %1121 ]
  %1130 = phi i32 [ %368, %1069 ], [ %368, %1127 ], [ 0, %1125 ], [ %368, %1121 ]
  %1131 = icmp ne i32 %1130, 0
  %1132 = zext i1 %1131 to i32
  %1133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.f32 %1133, 2
  %1135 = call float @dx.op.binary.f32(i32 35, float %1129, float %1134)  ; FMax(a,b)
  %1136 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1135)  ; FMin(a,b)
  br label %1137

; <label>:1137                                    ; preds = %1128, %1049
  %1138 = phi float [ %1136, %1128 ], [ 0x47EFFFFFE0000000, %1049 ]
  %1139 = phi i32 [ %1132, %1128 ], [ 0, %1049 ]
  %1140 = fsub fast float %1061, %619
  %1141 = fsub fast float %1063, %620
  %1142 = fmul fast float %1140, %624
  %1143 = fmul fast float %1141, %625
  %1144 = call float @dx.op.binary.f32(i32 36, float %1142, float %1143)  ; FMin(a,b)
  %1145 = fcmp fast olt float %1144, 0.000000e+00
  %1146 = call float @dx.op.binary.f32(i32 35, float %1142, float %1143)  ; FMax(a,b)
  %1147 = fcmp fast ogt float %1146, 1.000000e+00
  %1148 = or i1 %1145, %1147
  %1149 = fcmp fast olt float %1065, %633
  %1150 = or i1 %1148, %1149
  %1151 = fcmp fast ogt float %1065, %640
  %1152 = or i1 %1150, %1151
  %1153 = extractvalue %dx.types.CBufRet.f32 %623, 0
  br i1 %1152, label %1154, label %1182, !dx.controlflow.hints !45

; <label>:1154                                    ; preds = %1137
  %1155 = extractvalue %dx.types.CBufRet.f32 %623, 1
  %1156 = fsub fast float %619, %1061
  %1157 = fmul fast float %1156, %1053
  %1158 = fadd fast float %1156, %1153
  %1159 = fmul fast float %1158, %1053
  %1160 = call float @dx.op.binary.f32(i32 36, float %1157, float %1159)  ; FMin(a,b)
  %1161 = call float @dx.op.binary.f32(i32 35, float %1157, float %1159)  ; FMax(a,b)
  %1162 = fsub fast float %620, %1063
  %1163 = fmul fast float %1162, %1054
  %1164 = fadd fast float %1162, %1155
  %1165 = fmul fast float %1164, %1054
  %1166 = call float @dx.op.binary.f32(i32 36, float %1163, float %1165)  ; FMin(a,b)
  %1167 = call float @dx.op.binary.f32(i32 35, float %1160, float %1166)  ; FMax(a,b)
  %1168 = call float @dx.op.binary.f32(i32 35, float %1163, float %1165)  ; FMax(a,b)
  %1169 = call float @dx.op.binary.f32(i32 36, float %1161, float %1168)  ; FMin(a,b)
  %1170 = fsub fast float %633, %1065
  %1171 = fmul fast float %1170, %1055
  %1172 = fsub fast float %637, %1065
  %1173 = fadd fast float %1172, %639
  %1174 = fmul fast float %1173, %1055
  %1175 = call float @dx.op.binary.f32(i32 36, float %1171, float %1174)  ; FMin(a,b)
  %1176 = call float @dx.op.binary.f32(i32 35, float %1167, float %1175)  ; FMax(a,b)
  %1177 = call float @dx.op.binary.f32(i32 35, float %1171, float %1174)  ; FMax(a,b)
  %1178 = call float @dx.op.binary.f32(i32 36, float %1169, float %1177)  ; FMin(a,b)
  %1179 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1176)  ; FMax(a,b)
  %1180 = fcmp fast oge float %1178, %1179
  %1181 = select i1 %1180, float %1176, float 1.000000e+07
  br label %1197

; <label>:1182                                    ; preds = %1137
  %1183 = fsub fast float 1.000000e+00, %1143
  %1184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %1142, float %1183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1185 = extractvalue %dx.types.ResRet.f32 %1184, 0
  %1186 = extractvalue %dx.types.ResRet.f32 %1184, 1
  %1187 = extractvalue %dx.types.ResRet.f32 %1184, 2
  %1188 = extractvalue %dx.types.ResRet.f32 %1184, 3
  %1189 = fmul fast float %1153, 9.765625e-04
  %1190 = fcmp fast oeq float %1185, 0.000000e+00
  %1191 = fcmp ule float %1065, %1187
  %1192 = fcmp uge float %1065, %1186
  %1193 = or i1 %1192, %1191
  %1194 = or i1 %1190, %1193
  %1195 = zext i1 %1194 to i32
  %1196 = xor i32 %1195, 1
  br label %1197

; <label>:1197                                    ; preds = %1182, %1154
  %1198 = phi float [ %1181, %1154 ], [ %1189, %1182 ]
  %1199 = phi float [ %419, %1154 ], [ %1185, %1182 ]
  %1200 = phi float [ %420, %1154 ], [ %1186, %1182 ]
  %1201 = phi float [ %421, %1154 ], [ %1187, %1182 ]
  %1202 = phi float [ %422, %1154 ], [ %1188, %1182 ]
  %1203 = phi i32 [ 0, %1154 ], [ %1196, %1182 ]
  %1204 = icmp eq i32 %1203, 0
  %1205 = icmp eq i32 %1139, 0
  br i1 %1205, label %1281, label %1206, !dx.controlflow.hints !49

; <label>:1206                                    ; preds = %1197
  %1207 = fmul fast float %731, %1057
  %1208 = call float @dx.op.unary.f32(i32 23, float %1207)  ; Log(value)
  %1209 = fmul fast float %1208, 0x3FE62E4300000000
  %1210 = call float @dx.op.binary.f32(i32 35, float %1209, float 1.000000e+00)  ; FMax(a,b)
  %1211 = fmul fast float %1210, 0x47EFFFFFE0000000
  %1212 = call float @dx.op.binary.f32(i32 35, float %1198, float %728)  ; FMax(a,b)
  %1213 = call float @dx.op.binary.f32(i32 36, float %1138, float %1212)  ; FMin(a,b)
  %1214 = call float @dx.op.binary.f32(i32 36, float %1211, float %1213)  ; FMin(a,b)
  %1215 = call float @dx.op.binary.f32(i32 35, float %1214, float 0.000000e+00)  ; FMax(a,b)
  %1216 = fcmp fast ogt float %1215, 0x3F1A36E2E0000000
  %1217 = fadd fast float %1058, %1061
  %1218 = fadd fast float %1059, %1063
  %1219 = select i1 %1216, float %1217, float %1061
  %1220 = select i1 %1216, float %1218, float %1063
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 0
  %1223 = extractvalue %dx.types.CBufRet.f32 %1221, 1
  %1224 = fsub fast float %1219, %1222
  %1225 = fsub fast float %1220, %1223
  %1226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %1227 = extractvalue %dx.types.CBufRet.f32 %1226, 0
  %1228 = extractvalue %dx.types.CBufRet.f32 %1226, 1
  %1229 = fmul fast float %1224, %1227
  %1230 = fmul fast float %1225, %1228
  %1231 = fsub fast float 1.000000e+00, %1230
  %1232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1233 = extractvalue %dx.types.CBufRet.i32 %1232, 3
  %1234 = icmp eq i32 %1233, 0
  br i1 %1234, label %1241, label %1235, !dx.controlflow.hints !40

; <label>:1235                                    ; preds = %1206
  %1236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1229, float %1231, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1237 = extractvalue %dx.types.ResRet.f32 %1236, 0
  %1238 = extractvalue %dx.types.ResRet.f32 %1236, 1
  %1239 = extractvalue %dx.types.ResRet.f32 %1236, 2
  %1240 = extractvalue %dx.types.ResRet.f32 %1236, 3
  br label %1247

; <label>:1241                                    ; preds = %1206
  %1242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %1229, float %1231, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1243 = extractvalue %dx.types.ResRet.f32 %1242, 0
  %1244 = extractvalue %dx.types.ResRet.f32 %1242, 1
  %1245 = extractvalue %dx.types.ResRet.f32 %1242, 2
  %1246 = extractvalue %dx.types.ResRet.f32 %1242, 3
  br label %1247

; <label>:1247                                    ; preds = %1241, %1235
  %1248 = phi float [ %1237, %1235 ], [ %1243, %1241 ]
  %1249 = phi float [ %1238, %1235 ], [ %1244, %1241 ]
  %1250 = phi float [ %1239, %1235 ], [ %1245, %1241 ]
  %1251 = phi float [ %1240, %1235 ], [ %1246, %1241 ]
  %1252 = extractvalue %dx.types.CBufRet.f32 %1226, 3
  %1253 = fmul fast float %1252, %1249
  %1254 = fmul fast float %1253, %1248
  %1255 = fsub fast float %1253, %1254
  %1256 = fcmp fast ole float %1255, 0.000000e+00
  %1257 = extractvalue %dx.types.CBufRet.f32 %1221, 2
  %1258 = fadd fast float %1254, %1257
  %1259 = fmul fast float %1252, %1250
  %1260 = fadd fast float %1259, %1257
  %1261 = fdiv fast float 1.000000e+00, %1255
  %1262 = select i1 %1256, float 1.000000e+06, float %1261
  %1263 = fsub fast float %1065, %1258
  %1264 = fmul fast float %1262, %1263
  %1265 = call float @dx.op.unary.f32(i32 7, float %1264)  ; Saturate(value)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1226, 2
  %1267 = fmul fast float %1266, %1265
  %1268 = fsub fast float %1266, %1267
  %1269 = fcmp fast olt float %1065, %1260
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 3
  %1272 = fmul fast float %1271, 3.000000e+00
  %1273 = select i1 %1269, float %1272, float 3.000000e+00
  %1274 = fmul fast float %1268, %1273
  %1275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1276 = extractvalue %dx.types.CBufRet.f32 %1275, 2
  %1277 = fmul fast float %1057, 0x3FD5555560000000
  %1278 = fmul fast float %1277, %1251
  %1279 = fmul fast float %1278, %1276
  %1280 = fmul fast float %1279, %1274
  br label %1281

; <label>:1281                                    ; preds = %1247, %1197
  %1282 = phi float [ %1280, %1247 ], [ 0.000000e+00, %1197 ]
  br i1 %1204, label %1408, label %1283, !dx.controlflow.hints !51

; <label>:1283                                    ; preds = %1281
  %1284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1285 = extractvalue %dx.types.CBufRet.i32 %1284, 0
  %1286 = icmp ne i32 %1285, 0
  %1287 = zext i1 %1286 to i32
  %1288 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.i32 %1288, 0
  %1290 = icmp eq i32 %1289, 0
  br i1 %1290, label %1324, label %1291

; <label>:1291                                    ; preds = %1283
  br label %1292

; <label>:1292                                    ; preds = %1319, %1291
  %1293 = phi i32 [ %1320, %1319 ], [ 0, %1291 ]
  %1294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1293, i32 0)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.f32 %1294, 0
  %1296 = extractvalue %dx.types.ResRet.f32 %1294, 1
  %1297 = extractvalue %dx.types.ResRet.f32 %1294, 2
  %1298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1293, i32 16)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.f32 %1298, 0
  %1300 = extractvalue %dx.types.ResRet.f32 %1298, 1
  %1301 = extractvalue %dx.types.ResRet.f32 %1298, 2
  %1302 = fsub fast float %1295, %1299
  %1303 = fsub fast float %1296, %1300
  %1304 = fsub fast float %1297, %1301
  %1305 = fadd fast float %1299, %1295
  %1306 = fadd fast float %1300, %1296
  %1307 = fadd fast float %1301, %1297
  %1308 = fcmp fast olt float %1061, %1302
  %1309 = fcmp fast olt float %1063, %1303
  %1310 = fcmp fast olt float %1065, %1304
  %1311 = or i1 %1308, %1309
  %1312 = or i1 %1310, %1311
  %1313 = fcmp fast ogt float %1061, %1305
  %1314 = fcmp fast ogt float %1063, %1306
  %1315 = fcmp fast ogt float %1065, %1307
  %1316 = or i1 %1313, %1314
  %1317 = or i1 %1315, %1316
  %1318 = or i1 %1312, %1317
  br i1 %1318, label %1319, label %1322, !dx.controlflow.hints !52

; <label>:1319                                    ; preds = %1292
  %1320 = add nuw i32 %1293, 1
  %1321 = icmp ult i32 %1320, %1289
  br i1 %1321, label %1292, label %1322

; <label>:1322                                    ; preds = %1319, %1292
  %1323 = phi i32 [ 255, %1319 ], [ %1293, %1292 ]
  br label %1324

; <label>:1324                                    ; preds = %1322, %1283
  %1325 = phi i32 [ 255, %1283 ], [ %1323, %1322 ]
  %1326 = icmp eq i32 %1325, 255
  br i1 %1326, label %1332, label %1327, !dx.controlflow.hints !53

; <label>:1327                                    ; preds = %1324
  %1328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1325, i32 156)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.i32 %1328, 0
  %1330 = icmp ne i32 %1329, 0
  %1331 = zext i1 %1330 to i32
  br label %1332

; <label>:1332                                    ; preds = %1327, %1324
  %1333 = phi i32 [ %1331, %1327 ], [ %1287, %1324 ]
  %1334 = icmp eq i32 %1333, 0
  br i1 %1334, label %1335, label %1404, !dx.controlflow.hints !54

; <label>:1335                                    ; preds = %1332
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 3
  %1338 = extractvalue %dx.types.CBufRet.f32 %636, 0
  %1339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1339, 2
  %1341 = extractvalue %dx.types.CBufRet.f32 %1339, 3
  br i1 %1326, label %1352, label %1342, !dx.controlflow.hints !55

; <label>:1342                                    ; preds = %1335
  %1343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1325, i32 60)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.f32 %1343, 0
  %1345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1325, i32 64)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.f32 %1345, 0
  %1347 = extractvalue %dx.types.ResRet.f32 %1345, 1
  %1348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1325, i32 72)  ; BufferLoad(srv,index,wot)
  %1349 = extractvalue %dx.types.ResRet.f32 %1348, 0
  %1350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1325, i32 96)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.f32 %1350, 0
  br label %1352

; <label>:1352                                    ; preds = %1342, %1335
  %1353 = phi float [ %1344, %1342 ], [ %639, %1335 ]
  %1354 = phi float [ %1349, %1342 ], [ %637, %1335 ]
  %1355 = phi float [ %1351, %1342 ], [ %1338, %1335 ]
  %1356 = phi float [ %1346, %1342 ], [ %1340, %1335 ]
  %1357 = phi float [ %1347, %1342 ], [ %1341, %1335 ]
  %1358 = call float @dx.op.binary.f32(i32 35, float %1199, float 0.000000e+00)  ; FMax(a,b)
  %1359 = call float @dx.op.binary.f32(i32 36, float %1358, float 1.000000e+00)  ; FMin(a,b)
  %1360 = call float @dx.op.unary.f32(i32 24, float %1359)  ; Sqrt(value)
  %1361 = call float @dx.op.binary.f32(i32 35, float %1202, float 0x3F847AE140000000)  ; FMax(a,b)
  %1362 = fsub fast float %1200, %1065
  %1363 = fsub fast float %1065, %1201
  %1364 = call float @dx.op.binary.f32(i32 36, float %1363, float %1362)  ; FMin(a,b)
  %1365 = fdiv fast float %1364, %1361
  %1366 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1367 = fsub fast float %1065, %1354
  %1368 = fdiv fast float %1367, %1353
  %1369 = call float @dx.op.unary.f32(i32 7, float %1368)  ; Saturate(value)
  %1370 = fsub fast float 1.000000e+00, %1369
  %1371 = fmul float %1366, %1370
  %1372 = fmul float %1371, %1371
  %1373 = fmul fast float %1360, %1337
  %1374 = fmul fast float %1373, %1372
  %1375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1376 = extractvalue %dx.types.CBufRet.f32 %1375, 2
  %1377 = extractvalue %dx.types.CBufRet.f32 %1375, 1
  %1378 = fsub fast float %1374, %1377
  %1379 = fsub fast float %1376, %1377
  %1380 = fdiv fast float %1378, %1379
  %1381 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  %1382 = fmul fast float %1381, %1355
  %1383 = fcmp fast ogt float %1357, 0.000000e+00
  br i1 %1383, label %1384, label %1404, !dx.controlflow.hints !56

; <label>:1384                                    ; preds = %1352
  %1385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1386 = extractvalue %dx.types.CBufRet.f32 %1385, 0
  %1387 = extractvalue %dx.types.CBufRet.f32 %1385, 1
  %1388 = extractvalue %dx.types.CBufRet.f32 %1385, 2
  %1389 = fsub fast float %1061, %1386
  %1390 = fsub fast float %1063, %1387
  %1391 = fsub fast float %1065, %1388
  %1392 = fmul fast float %1389, %1389
  %1393 = fmul fast float %1390, %1390
  %1394 = fadd fast float %1392, %1393
  %1395 = fmul fast float %1391, %1391
  %1396 = fadd fast float %1394, %1395
  %1397 = call float @dx.op.unary.f32(i32 24, float %1396)  ; Sqrt(value)
  %1398 = fsub fast float %1397, %1356
  %1399 = fsub fast float %1357, %1356
  %1400 = fdiv fast float %1398, %1399
  %1401 = call float @dx.op.unary.f32(i32 7, float %1400)  ; Saturate(value)
  %1402 = fmul fast float %1401, %1401
  %1403 = fmul fast float %1402, %1382
  br label %1404

; <label>:1404                                    ; preds = %1384, %1352, %1332
  %1405 = phi float [ 0.000000e+00, %1332 ], [ %1403, %1384 ], [ %1382, %1352 ]
  %1406 = fmul fast float %1405, %1057
  %1407 = fadd fast float %1406, %1282
  br label %1408

; <label>:1408                                    ; preds = %1404, %1281
  %1409 = phi float [ %1407, %1404 ], [ %1282, %1281 ]
  %1410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1411 = extractvalue %dx.types.CBufRet.f32 %1410, 3
  %1412 = fmul fast float %1409, 0xBFF7154760000000
  %1413 = fmul fast float %1412, %1411
  %1414 = call float @dx.op.unary.f32(i32 21, float %1413)  ; Exp(value)
  %1415 = call float @dx.op.unary.f32(i32 7, float %1414)  ; Saturate(value)
  %1416 = fmul fast float %1415, %1050
  %1417 = fmul fast float %1415, %1051
  %1418 = fmul fast float %1415, %1052
  %1419 = fadd fast float %1416, %203
  %1420 = fadd fast float %1417, %204
  %1421 = fadd fast float %1418, %205
  %1422 = fsub fast float 1.000000e+00, %1020
  %1423 = fmul fast float %1012, %428
  %1424 = fmul fast float %1423, %1422
  %1425 = fmul fast float %1424, %1419
  %1426 = fmul fast float %1013, %428
  %1427 = fmul fast float %1426, %1422
  %1428 = fmul fast float %1427, %1420
  %1429 = fmul fast float %1014, %428
  %1430 = fmul fast float %1429, %1422
  %1431 = fmul fast float %1430, %1421
  %1432 = fadd fast float %1425, %429
  %1433 = fadd fast float %1428, %430
  %1434 = fadd fast float %1431, %431
  %1435 = fdiv fast float %997, %741
  %1436 = fadd fast float %741, %435
  %1437 = fmul fast float %435, %435
  %1438 = fmul fast float %1436, %1436
  %1439 = fsub fast float %1437, %1438
  %1440 = fmul fast float %1439, -5.000000e-01
  %1441 = fmul fast float %1440, %1435
  %1442 = fadd fast float %1441, %427
  %1443 = fadd fast float %997, %438
  %1444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1445 = extractvalue %dx.types.CBufRet.i32 %1444, 0
  %1446 = icmp eq i32 %1445, 0
  br i1 %1446, label %1473, label %1447, !dx.controlflow.hints !60

; <label>:1447                                    ; preds = %1408
  %1448 = icmp ne i32 %443, 0
  %1449 = zext i1 %1448 to i32
  %1450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1451 = extractvalue %dx.types.CBufRet.f32 %1450, 2
  %1452 = extractvalue %dx.types.CBufRet.f32 %1450, 0
  %1453 = fsub fast float %1436, %1452
  %1454 = fmul fast float %1453, %1451
  %1455 = call float @dx.op.unary.f32(i32 7, float %1454)  ; Saturate(value)
  %1456 = fadd fast float %1455, -5.000000e-01
  %1457 = fmul fast float %1456, 2.000000e+00
  %1458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1459 = extractvalue %dx.types.CBufRet.f32 %1458, 2
  %1460 = fcmp fast olt float %1457, %1459
  br i1 %1460, label %1461, label %1473, !dx.controlflow.hints !61

; <label>:1461                                    ; preds = %1447
  %1462 = fmul fast float %1457, %1457
  %1463 = fmul fast float %1422, %428
  %1464 = fmul fast float %1457, %1463
  %1465 = fmul fast float %1462, %1463
  %1466 = fmul fast float %1464, %1462
  %1467 = fmul fast float %1462, %1462
  %1468 = fmul fast float %1467, %1463
  %1469 = fadd fast float %1464, %439
  %1470 = fadd fast float %1465, %440
  %1471 = fadd fast float %1466, %441
  %1472 = fadd fast float %1468, %442
  br label %1473

; <label>:1473                                    ; preds = %1461, %1447, %1408
  %1474 = phi float [ %439, %1408 ], [ %1469, %1461 ], [ %439, %1447 ]
  %1475 = phi float [ %440, %1408 ], [ %1470, %1461 ], [ %440, %1447 ]
  %1476 = phi float [ %441, %1408 ], [ %1471, %1461 ], [ %441, %1447 ]
  %1477 = phi float [ %442, %1408 ], [ %1472, %1461 ], [ %442, %1447 ]
  %1478 = phi i32 [ %443, %1408 ], [ 1, %1461 ], [ %1449, %1447 ]
  %1479 = fmul fast float %1020, %428
  br label %1480

; <label>:1480                                    ; preds = %1473, %1015
  %1481 = phi float [ %1016, %1015 ], [ %1436, %1473 ]
  %1482 = phi float [ %419, %1015 ], [ %1199, %1473 ]
  %1483 = phi float [ %420, %1015 ], [ %1200, %1473 ]
  %1484 = phi float [ %421, %1015 ], [ %1201, %1473 ]
  %1485 = phi float [ %422, %1015 ], [ %1202, %1473 ]
  %1486 = phi float [ %427, %1015 ], [ %1442, %1473 ]
  %1487 = phi float [ %428, %1015 ], [ %1479, %1473 ]
  %1488 = phi float [ %429, %1015 ], [ %1432, %1473 ]
  %1489 = phi float [ %430, %1015 ], [ %1433, %1473 ]
  %1490 = phi float [ %431, %1015 ], [ %1434, %1473 ]
  %1491 = phi float [ %438, %1015 ], [ %1443, %1473 ]
  %1492 = phi float [ %439, %1015 ], [ %1474, %1473 ]
  %1493 = phi float [ %440, %1015 ], [ %1475, %1473 ]
  %1494 = phi float [ %441, %1015 ], [ %1476, %1473 ]
  %1495 = phi float [ %442, %1015 ], [ %1477, %1473 ]
  %1496 = phi i32 [ %443, %1015 ], [ %1478, %1473 ]
  %1497 = fmul fast float %741, %279
  %1498 = fmul fast float %741, %280
  %1499 = fmul fast float %741, %281
  %1500 = fadd fast float %1497, %432
  %1501 = fadd fast float %1498, %433
  %1502 = fadd fast float %1499, %434
  %1503 = fcmp fast olt float %1481, %395
  %1504 = extractvalue %dx.types.CBufRet.f32 %1001, 2
  %1505 = fcmp fast olt float %1504, %1487
  %1506 = and i1 %1503, %1505
  br i1 %1506, label %418, label %1507

; <label>:1507                                    ; preds = %1480
  br label %1508

; <label>:1508                                    ; preds = %1507, %367
  %1509 = phi float [ 0.000000e+00, %367 ], [ %1486, %1507 ]
  %1510 = phi float [ 1.000000e+00, %367 ], [ %1487, %1507 ]
  %1511 = phi float [ 0.000000e+00, %367 ], [ %1488, %1507 ]
  %1512 = phi float [ 0.000000e+00, %367 ], [ %1489, %1507 ]
  %1513 = phi float [ 0.000000e+00, %367 ], [ %1490, %1507 ]
  %1514 = phi float [ 0.000000e+00, %367 ], [ %1491, %1507 ]
  %1515 = phi float [ 0.000000e+00, %367 ], [ %1492, %1507 ]
  %1516 = phi float [ 0.000000e+00, %367 ], [ %1493, %1507 ]
  %1517 = phi float [ 0.000000e+00, %367 ], [ %1494, %1507 ]
  %1518 = phi float [ 0.000000e+00, %367 ], [ %1495, %1507 ]
  %1519 = phi i32 [ 0, %367 ], [ %1496, %1507 ]
  %1520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1521 = extractvalue %dx.types.CBufRet.i32 %1520, 0
  %1522 = icmp eq i32 %1521, 0
  br i1 %1522, label %1564, label %1523, !dx.controlflow.hints !62

; <label>:1523                                    ; preds = %1508
  %1524 = icmp eq i32 %1519, 0
  br i1 %1524, label %1563, label %1525, !dx.controlflow.hints !63

; <label>:1525                                    ; preds = %1523
  %1526 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1527 = extractvalue %dx.types.CBufRet.i32 %1526, 2
  %1528 = icmp eq i32 %1527, 0
  br i1 %1528, label %1535, label %1529, !dx.controlflow.hints !64

; <label>:1529                                    ; preds = %1525
  %1530 = fsub fast float 1.000000e+00, %1510
  %1531 = fdiv fast float %1515, %1530
  %1532 = fdiv fast float %1516, %1530
  %1533 = fdiv fast float %1517, %1530
  %1534 = fdiv fast float %1518, %1530
  br label %1540

; <label>:1535                                    ; preds = %1525
  %1536 = fadd fast float %1515, %1510
  %1537 = fadd fast float %1516, %1510
  %1538 = fadd fast float %1517, %1510
  %1539 = fadd fast float %1518, %1510
  br label %1540

; <label>:1540                                    ; preds = %1535, %1529
  %1541 = phi float [ %1531, %1529 ], [ %1536, %1535 ]
  %1542 = phi float [ %1532, %1529 ], [ %1537, %1535 ]
  %1543 = phi float [ %1533, %1529 ], [ %1538, %1535 ]
  %1544 = phi float [ %1534, %1529 ], [ %1539, %1535 ]
  %1545 = call float @dx.op.binary.f32(i32 35, float %1541, float -1.000000e+00)  ; FMax(a,b)
  %1546 = call float @dx.op.binary.f32(i32 35, float %1542, float -1.000000e+00)  ; FMax(a,b)
  %1547 = call float @dx.op.binary.f32(i32 35, float %1543, float -1.000000e+00)  ; FMax(a,b)
  %1548 = call float @dx.op.binary.f32(i32 35, float %1544, float -1.000000e+00)  ; FMax(a,b)
  %1549 = call float @dx.op.binary.f32(i32 36, float %1545, float 1.000000e+00)  ; FMin(a,b)
  %1550 = call float @dx.op.binary.f32(i32 36, float %1546, float 1.000000e+00)  ; FMin(a,b)
  %1551 = call float @dx.op.binary.f32(i32 36, float %1547, float 1.000000e+00)  ; FMin(a,b)
  %1552 = call float @dx.op.binary.f32(i32 36, float %1548, float 1.000000e+00)  ; FMin(a,b)
  %1553 = fmul fast float %1549, 1.500000e+00
  %1554 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1551, float %1553)  ; FMad(a,b,c)
  %1555 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1550, float 0.000000e+00)  ; FMad(a,b,c)
  %1556 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1552, float %1555)  ; FMad(a,b,c)
  %1557 = fmul fast float %1549, 0x3FEBB67AE0000000
  %1558 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1551, float %1557)  ; FMad(a,b,c)
  %1559 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1550, float 0.000000e+00)  ; FMad(a,b,c)
  %1560 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1552, float %1559)  ; FMad(a,b,c)
  %1561 = fadd fast float %1554, 5.000000e-01
  %1562 = fadd fast float %1558, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %18, i32 %19, i32 0, float %1561, float %1556, float %1562, float %1560, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1564

; <label>:1563                                    ; preds = %1523
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %18, i32 %19, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1564

; <label>:1564                                    ; preds = %1563, %1540, %1508
  %1565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1566 = extractvalue %dx.types.CBufRet.f32 %1565, 2
  %1567 = fsub fast float %1510, %1566
  %1568 = fdiv fast float %1567, %1566
  %1569 = call float @dx.op.unary.f32(i32 7, float %1568)  ; Saturate(value)
  %1570 = fmul fast float %1569, 2.000000e+00
  %1571 = fsub fast float 3.000000e+00, %1570
  %1572 = fmul fast float %1569, %1569
  %1573 = fmul fast float %1572, %1510
  %1574 = fmul fast float %1573, %1571
  %1575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1576 = extractvalue %dx.types.CBufRet.f32 %1575, 0
  %1577 = extractvalue %dx.types.CBufRet.f32 %1575, 1
  %1578 = extractvalue %dx.types.CBufRet.f32 %1575, 2
  %1579 = call float @dx.op.dot3.f32(i32 55, float %279, float %280, float %281, float %1576, float %1577, float %1578)  ; Dot3(ax,ay,az,bx,by,bz)
  %1580 = fmul fast float %1579, %1509
  %1581 = fcmp fast ogt float %1514, 0.000000e+00
  %1582 = fdiv fast float 1.000000e+00, %1514
  %1583 = fmul fast float %1580, %1582
  %1584 = select i1 %1581, float %1583, float %290
  %1585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1586 = extractvalue %dx.types.CBufRet.f32 %1585, 0
  %1587 = extractvalue %dx.types.CBufRet.f32 %1585, 1
  %1588 = extractvalue %dx.types.CBufRet.f32 %1585, 2
  %1589 = fmul fast float %1586, %243
  %1590 = fmul fast float %1587, %243
  %1591 = fmul fast float %1588, %243
  %1592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1593 = extractvalue %dx.types.CBufRet.f32 %1592, 0
  %1594 = extractvalue %dx.types.CBufRet.f32 %1592, 1
  %1595 = extractvalue %dx.types.CBufRet.f32 %1592, 2
  %1596 = fmul fast float %1593, %244
  %1597 = fmul fast float %1594, %244
  %1598 = fmul fast float %1595, %244
  %1599 = fadd fast float %1596, %1589
  %1600 = fadd fast float %1597, %1590
  %1601 = fadd fast float %1598, %1591
  %1602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1603 = extractvalue %dx.types.CBufRet.f32 %1602, 0
  %1604 = extractvalue %dx.types.CBufRet.f32 %1602, 1
  %1605 = extractvalue %dx.types.CBufRet.f32 %1602, 2
  %1606 = fadd fast float %1599, %1603
  %1607 = fadd fast float %1600, %1604
  %1608 = fadd fast float %1601, %1605
  %1609 = fmul fast float %1606, %1584
  %1610 = fmul fast float %1607, %1584
  %1611 = fmul fast float %1608, %1584
  %1612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1613 = extractvalue %dx.types.CBufRet.f32 %1612, 0
  %1614 = extractvalue %dx.types.CBufRet.f32 %1612, 1
  %1615 = extractvalue %dx.types.CBufRet.f32 %1612, 2
  %1616 = extractvalue %dx.types.CBufRet.f32 %1612, 3
  %1617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.f32 %1617, 0
  %1619 = extractvalue %dx.types.CBufRet.f32 %1617, 1
  %1620 = extractvalue %dx.types.CBufRet.f32 %1617, 2
  %1621 = extractvalue %dx.types.CBufRet.f32 %1617, 3
  %1622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.f32 %1622, 0
  %1624 = extractvalue %dx.types.CBufRet.f32 %1622, 1
  %1625 = extractvalue %dx.types.CBufRet.f32 %1622, 2
  %1626 = extractvalue %dx.types.CBufRet.f32 %1622, 3
  %1627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1628 = extractvalue %dx.types.CBufRet.f32 %1627, 0
  %1629 = extractvalue %dx.types.CBufRet.f32 %1627, 1
  %1630 = extractvalue %dx.types.CBufRet.f32 %1627, 2
  %1631 = extractvalue %dx.types.CBufRet.f32 %1627, 3
  %1632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1633 = extractvalue %dx.types.CBufRet.f32 %1632, 3
  %1634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1635 = extractvalue %dx.types.CBufRet.f32 %1634, 3
  %1636 = extractvalue %dx.types.CBufRet.f32 %1634, 0
  %1637 = extractvalue %dx.types.CBufRet.f32 %1634, 1
  %1638 = extractvalue %dx.types.CBufRet.f32 %1634, 2
  %1639 = fcmp fast olt float %1638, -5.000000e-01
  %1640 = call float @dx.op.dot3.f32(i32 55, float %1609, float %1610, float %1611, float %1609, float %1610, float %1611)  ; Dot3(ax,ay,az,bx,by,bz)
  %1641 = call float @dx.op.unary.f32(i32 25, float %1640)  ; Rsqrt(value)
  %1642 = fmul fast float %1641, %1640
  %1643 = fmul fast float %1641, %1609
  %1644 = fmul fast float %1641, %1610
  %1645 = fmul fast float %1641, %1611
  %1646 = fadd fast float %1642, %1616
  %1647 = call float @dx.op.dot3.f32(i32 55, float %1643, float %1644, float %1645, float %1613, float %1614, float %1615)  ; Dot3(ax,ay,az,bx,by,bz)
  %1648 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1649 = extractvalue %dx.types.CBufRet.i32 %1648, 1
  %1650 = and i32 %1649, 1
  %1651 = icmp ne i32 %1650, 0
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1652, 2
  %1654 = fcmp fast ogt float %1653, 0.000000e+00
  %1655 = and i1 %1651, %1654
  br i1 %1655, label %1656, label %2062, !dx.controlflow.hints !65

; <label>:1656                                    ; preds = %1564
  %1657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1658 = extractvalue %dx.types.CBufRet.f32 %1657, 3
  %1659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1660 = extractvalue %dx.types.CBufRet.f32 %1659, 2
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 2
  %1663 = fsub fast float %1660, %1662
  %1664 = and i32 %1649, 2
  %1665 = extractvalue %dx.types.CBufRet.i32 %1648, 0
  %1666 = call i32 @dx.op.binary.i32(i32 40, i32 %1665, i32 3)  ; UMin(a,b)
  %1667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.f32 %1667, 0
  %1669 = extractvalue %dx.types.CBufRet.f32 %1667, 1
  %1670 = extractvalue %dx.types.CBufRet.f32 %1661, 0
  %1671 = extractvalue %dx.types.CBufRet.f32 %1661, 1
  %1672 = fsub fast float %1668, %1670
  %1673 = fsub fast float %1669, %1671
  %1674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1675 = extractvalue %dx.types.CBufRet.f32 %1674, 0
  %1676 = fcmp fast ogt float %1675, 0.000000e+00
  %1677 = fsub fast float -0.000000e+00, %1672
  %1678 = fsub fast float -0.000000e+00, %1673
  %1679 = call float @dx.op.dot2.f32(i32 54, float %1643, float %1644, float %1643, float %1644)  ; Dot2(ax,ay,bx,by)
  %1680 = call float @dx.op.dot2.f32(i32 54, float %1643, float %1644, float %1677, float %1678)  ; Dot2(ax,ay,bx,by)
  %1681 = fmul fast float %1680, 2.000000e+00
  %1682 = call float @dx.op.dot2.f32(i32 54, float %1677, float %1678, float %1677, float %1678)  ; Dot2(ax,ay,bx,by)
  %1683 = fmul fast float %1675, %1675
  %1684 = fsub fast float %1682, %1683
  %1685 = fmul fast float %1681, %1681
  %1686 = fmul fast float %1679, 4.000000e+00
  %1687 = fmul fast float %1686, %1684
  %1688 = fsub fast float %1685, %1687
  %1689 = fcmp fast ogt float %1688, 0.000000e+00
  br i1 %1689, label %1690, label %1705, !dx.controlflow.hints !66

; <label>:1690                                    ; preds = %1656
  %1691 = fcmp fast ogt float %1681, 0.000000e+00
  %1692 = call float @dx.op.unary.f32(i32 24, float %1688)  ; Sqrt(value)
  %1693 = fsub fast float -0.000000e+00, %1692
  %1694 = select i1 %1691, float %1692, float %1693
  %1695 = fadd fast float %1694, %1681
  %1696 = fmul float %1695, -5.000000e-01
  %1697 = fdiv fast float %1696, %1679
  %1698 = call float @dx.op.binary.f32(i32 35, float %1697, float 0.000000e+00)  ; FMax(a,b)
  %1699 = call float @dx.op.binary.f32(i32 36, float %1642, float %1698)  ; FMin(a,b)
  %1700 = fdiv fast float %1684, %1696
  %1701 = call float @dx.op.binary.f32(i32 35, float %1700, float 0.000000e+00)  ; FMax(a,b)
  %1702 = call float @dx.op.binary.f32(i32 36, float %1642, float %1701)  ; FMin(a,b)
  %1703 = call float @dx.op.binary.f32(i32 36, float %1699, float %1702)  ; FMin(a,b)
  %1704 = call float @dx.op.binary.f32(i32 35, float %1699, float %1702)  ; FMax(a,b)
  br label %1705

; <label>:1705                                    ; preds = %1690, %1656
  %1706 = phi float [ %1704, %1690 ], [ -1.000000e+00, %1656 ]
  %1707 = phi float [ %1703, %1690 ], [ -1.000000e+00, %1656 ]
  %1708 = phi i1 [ true, %1690 ], [ false, %1656 ]
  %1709 = and i1 %1676, %1708
  br i1 %1709, label %1710, label %1712, !dx.controlflow.hints !67

; <label>:1710                                    ; preds = %1705
  %1711 = fcmp fast oeq float %1707, %1706
  br i1 %1711, label %2015, label %1713, !dx.controlflow.hints !68

; <label>:1712                                    ; preds = %1705
  br i1 %1676, label %2015, label %1713, !dx.controlflow.hints !69

; <label>:1713                                    ; preds = %1712, %1710
  %1714 = phi float [ %1642, %1712 ], [ %1706, %1710 ]
  %1715 = phi float [ 0.000000e+00, %1712 ], [ %1707, %1710 ]
  %1716 = icmp ne i32 %1664, 0
  %1717 = fmul fast float %1714, %1645
  %1718 = fadd fast float %1717, %1658
  %1719 = fmul fast float %1718, %1714
  %1720 = select i1 %1716, float 0.000000e+00, float %1719
  %1721 = fcmp fast oeq float %1645, 0.000000e+00
  %1722 = fdiv fast float %1663, %1645
  %1723 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1722)  ; FMax(a,b)
  %1724 = select i1 %1721, float %1714, float %1723
  %1725 = call float @dx.op.binary.f32(i32 36, float %1714, float %1724)  ; FMin(a,b)
  %1726 = fcmp fast ogt float %1645, 0.000000e+00
  %1727 = fcmp fast olt float %1663, 0.000000e+00
  br i1 %1726, label %1728, label %1785, !dx.controlflow.hints !70

; <label>:1728                                    ; preds = %1713
  %1729 = icmp eq i32 %1664, 0
  br i1 %1727, label %1730, label %1774, !dx.controlflow.hints !71

; <label>:1730                                    ; preds = %1728
  %1731 = select i1 %1729, float %1714, float 0.000000e+00
  %1732 = fsub fast float -0.000000e+00, %1731
  %1733 = call float @dx.op.unary.f32(i32 6, float %1732)  ; FAbs(value)
  %1734 = fmul fast float %1731, %1645
  %1735 = fadd fast float %1734, %1658
  %1736 = fmul fast float %1733, %1735
  %1737 = fsub fast float %1720, %1736
  %1738 = fsub fast float %1714, %1733
  %1739 = select i1 %1729, float %1738, float 0.000000e+00
  %1740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1741 = extractvalue %dx.types.CBufRet.f32 %1740, 0
  %1742 = extractvalue %dx.types.CBufRet.f32 %1740, 1
  %1743 = extractvalue %dx.types.CBufRet.f32 %1740, 2
  %1744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1745 = extractvalue %dx.types.CBufRet.f32 %1744, 0
  %1746 = extractvalue %dx.types.CBufRet.f32 %1744, 1
  %1747 = extractvalue %dx.types.CBufRet.f32 %1744, 2
  %1748 = extractvalue %dx.types.CBufRet.f32 %1744, 3
  %1749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1750 = extractvalue %dx.types.CBufRet.f32 %1749, 3
  %1751 = call float @dx.op.binary.f32(i32 36, float %1737, float %1750)  ; FMin(a,b)
  %1752 = fmul fast float %1748, %1739
  %1753 = call float @dx.op.unary.f32(i32 7, float %1752)  ; Saturate(value)
  %1754 = fsub fast float %1745, %1741
  %1755 = fsub fast float %1746, %1742
  %1756 = fsub fast float %1747, %1743
  %1757 = fmul fast float %1753, %1754
  %1758 = fmul fast float %1753, %1755
  %1759 = fmul fast float %1753, %1756
  %1760 = fadd fast float %1757, %1741
  %1761 = fadd fast float %1758, %1742
  %1762 = fadd fast float %1759, %1743
  %1763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1764 = extractvalue %dx.types.CBufRet.f32 %1763, 0
  %1765 = extractvalue %dx.types.CBufRet.f32 %1763, 1
  %1766 = fadd fast float %1765, %1764
  %1767 = call float @dx.op.unary.f32(i32 7, float %1766)  ; Saturate(value)
  %1768 = extractvalue %dx.types.CBufRet.f32 %1763, 2
  %1769 = extractvalue %dx.types.CBufRet.f32 %1763, 3
  %1770 = fadd fast float %1769, %1768
  %1771 = call float @dx.op.unary.f32(i32 7, float %1770)  ; Saturate(value)
  %1772 = fmul fast float %1767, %1751
  %1773 = fmul fast float %1772, %1771
  br label %2015

; <label>:1774                                    ; preds = %1728
  br i1 %1729, label %1775, label %1796, !dx.controlflow.hints !72

; <label>:1775                                    ; preds = %1774
  %1776 = call float @dx.op.binary.f32(i32 36, float %1725, float %1715)  ; FMin(a,b)
  %1777 = fsub fast float %1725, %1776
  %1778 = fsub fast float %1777, %1714
  %1779 = call float @dx.op.unary.f32(i32 6, float %1778)  ; FAbs(value)
  %1780 = fadd fast float %1777, %1714
  %1781 = fmul fast float %1780, %1645
  %1782 = fadd fast float %1781, %1658
  %1783 = fmul fast float %1782, %1779
  %1784 = fsub fast float %1720, %1783
  br label %1796

; <label>:1785                                    ; preds = %1713
  br i1 %1727, label %1786, label %1796, !dx.controlflow.hints !73

; <label>:1786                                    ; preds = %1785
  %1787 = call float @dx.op.binary.f32(i32 35, float %1715, float %1725)  ; FMax(a,b)
  %1788 = icmp eq i32 %1664, 0
  %1789 = select i1 %1788, float %1725, float 0.000000e+00
  %1790 = fsub fast float -0.000000e+00, %1789
  %1791 = call float @dx.op.unary.f32(i32 6, float %1790)  ; FAbs(value)
  %1792 = fmul fast float %1789, %1645
  %1793 = fadd fast float %1792, %1658
  %1794 = fmul fast float %1791, %1793
  %1795 = fsub fast float %1720, %1794
  br label %1796

; <label>:1796                                    ; preds = %1786, %1785, %1775, %1774
  %1797 = phi float [ %1715, %1774 ], [ %1715, %1775 ], [ %1787, %1786 ], [ %1715, %1785 ]
  %1798 = phi float [ 0.000000e+00, %1774 ], [ %1779, %1775 ], [ %1791, %1786 ], [ 0.000000e+00, %1785 ]
  %1799 = phi float [ %1720, %1774 ], [ %1784, %1775 ], [ %1795, %1786 ], [ %1720, %1785 ]
  %1800 = phi float [ %1725, %1774 ], [ %1725, %1775 ], [ %1714, %1786 ], [ %1714, %1785 ]
  %1801 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 0
  store float -1.000000e+00, float* %1801, align 4, !tbaa !74, !noalias !78
  %1802 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 1
  store float -1.000000e+00, float* %1802, align 4, !tbaa !74, !noalias !78
  %1803 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 2
  store float -1.000000e+00, float* %1803, align 4, !tbaa !74, !noalias !78
  %1804 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 0
  store float -1.000000e+00, float* %1804, align 4, !tbaa !74, !noalias !78
  %1805 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 1
  store float -1.000000e+00, float* %1805, align 4, !tbaa !74, !noalias !78
  %1806 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 2
  store float -1.000000e+00, float* %1806, align 4, !tbaa !74, !noalias !78
  %1807 = icmp sgt i32 %1666, 0
  br i1 %1807, label %1808, label %1869

; <label>:1808                                    ; preds = %1796
  br label %1809

; <label>:1809                                    ; preds = %1858, %1808
  %1810 = phi i32 [ %1859, %1858 ], [ 0, %1808 ]
  %1811 = phi i32 [ %1860, %1858 ], [ 0, %1808 ]
  %1812 = add nuw i32 %1811, 171
  %1813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %1812)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.f32 %1813, 0
  %1815 = extractvalue %dx.types.CBufRet.f32 %1813, 1
  %1816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1817 = extractvalue %dx.types.CBufRet.f32 %1816, 0
  %1818 = extractvalue %dx.types.CBufRet.f32 %1816, 1
  %1819 = fsub fast float %1814, %1817
  %1820 = fsub fast float %1815, %1818
  %1821 = extractvalue %dx.types.CBufRet.f32 %1813, 2
  %1822 = fsub fast float -0.000000e+00, %1819
  %1823 = fsub fast float -0.000000e+00, %1820
  %1824 = call float @dx.op.dot2.f32(i32 54, float %1643, float %1644, float %1822, float %1823)  ; Dot2(ax,ay,bx,by)
  %1825 = fmul fast float %1824, 2.000000e+00
  %1826 = call float @dx.op.dot2.f32(i32 54, float %1822, float %1823, float %1822, float %1823)  ; Dot2(ax,ay,bx,by)
  %1827 = fmul fast float %1821, %1821
  %1828 = fsub fast float %1826, %1827
  %1829 = fmul fast float %1825, %1825
  %1830 = fmul fast float %1686, %1828
  %1831 = fsub fast float %1829, %1830
  %1832 = fcmp fast ogt float %1831, 0.000000e+00
  br i1 %1832, label %1833, label %1848, !dx.controlflow.hints !66

; <label>:1833                                    ; preds = %1809
  %1834 = fcmp fast ogt float %1825, 0.000000e+00
  %1835 = call float @dx.op.unary.f32(i32 24, float %1831)  ; Sqrt(value)
  %1836 = fsub fast float -0.000000e+00, %1835
  %1837 = select i1 %1834, float %1835, float %1836
  %1838 = fadd fast float %1837, %1825
  %1839 = fmul float %1838, -5.000000e-01
  %1840 = fdiv fast float %1839, %1679
  %1841 = call float @dx.op.binary.f32(i32 35, float %1840, float 0.000000e+00)  ; FMax(a,b)
  %1842 = call float @dx.op.binary.f32(i32 36, float %1714, float %1841)  ; FMin(a,b)
  %1843 = fdiv fast float %1828, %1839
  %1844 = call float @dx.op.binary.f32(i32 35, float %1843, float 0.000000e+00)  ; FMax(a,b)
  %1845 = call float @dx.op.binary.f32(i32 36, float %1714, float %1844)  ; FMin(a,b)
  %1846 = call float @dx.op.binary.f32(i32 36, float %1842, float %1845)  ; FMin(a,b)
  %1847 = call float @dx.op.binary.f32(i32 35, float %1842, float %1845)  ; FMax(a,b)
  br label %1848

; <label>:1848                                    ; preds = %1833, %1809
  %1849 = phi float [ %1847, %1833 ], [ -1.000000e+00, %1809 ]
  %1850 = phi float [ %1846, %1833 ], [ -1.000000e+00, %1809 ]
  %1851 = phi i1 [ true, %1833 ], [ false, %1809 ]
  br i1 %1851, label %1852, label %1858, !dx.controlflow.hints !89

; <label>:1852                                    ; preds = %1848
  %1853 = call float @dx.op.binary.f32(i32 35, float %1797, float %1850)  ; FMax(a,b)
  %1854 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 %1811
  store float %1853, float* %1854, align 4, !tbaa !74, !noalias !78
  %1855 = call float @dx.op.binary.f32(i32 35, float %1797, float %1849)  ; FMax(a,b)
  %1856 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %1811
  store float %1855, float* %1856, align 4, !tbaa !74, !noalias !78
  %1857 = add nsw i32 %1810, 1
  br label %1858

; <label>:1858                                    ; preds = %1852, %1848
  %1859 = phi i32 [ %1857, %1852 ], [ %1810, %1848 ]
  %1860 = add nuw nsw i32 %1811, 1
  %1861 = icmp eq i32 %1860, %1666
  br i1 %1861, label %1862, label %1809

; <label>:1862                                    ; preds = %1858
  %1863 = load float, float* %1803, align 4, !tbaa !74, !alias.scope !90, !noalias !93
  %1864 = load float, float* %1802, align 4, !tbaa !74, !alias.scope !96, !noalias !97
  %1865 = load float, float* %1801, align 4, !tbaa !74, !alias.scope !98, !noalias !99
  %1866 = load float, float* %1806, align 4, !tbaa !74, !alias.scope !100, !noalias !103
  %1867 = load float, float* %1805, align 4, !tbaa !74, !alias.scope !106, !noalias !107
  %1868 = load float, float* %1804, align 4, !tbaa !74, !alias.scope !108, !noalias !109
  br label %1869

; <label>:1869                                    ; preds = %1862, %1796
  %1870 = phi float [ -1.000000e+00, %1796 ], [ %1868, %1862 ]
  %1871 = phi float [ -1.000000e+00, %1796 ], [ %1867, %1862 ]
  %1872 = phi float [ -1.000000e+00, %1796 ], [ %1866, %1862 ]
  %1873 = phi float [ -1.000000e+00, %1796 ], [ %1865, %1862 ]
  %1874 = phi float [ -1.000000e+00, %1796 ], [ %1864, %1862 ]
  %1875 = phi float [ -1.000000e+00, %1796 ], [ %1863, %1862 ]
  %1876 = phi i32 [ 0, %1796 ], [ %1859, %1862 ]
  %1877 = call float @dx.op.binary.f32(i32 36, float %1874, float %1875)  ; FMin(a,b)
  %1878 = call float @dx.op.binary.f32(i32 36, float %1873, float %1877)  ; FMin(a,b)
  %1879 = call float @dx.op.binary.f32(i32 35, float %1873, float %1874)  ; FMax(a,b)
  %1880 = call float @dx.op.binary.f32(i32 36, float %1879, float %1875)  ; FMin(a,b)
  %1881 = call float @dx.op.binary.f32(i32 36, float %1873, float %1874)  ; FMin(a,b)
  %1882 = call float @dx.op.binary.f32(i32 35, float %1881, float %1880)  ; FMax(a,b)
  %1883 = call float @dx.op.binary.f32(i32 35, float %1874, float %1875)  ; FMax(a,b)
  %1884 = call float @dx.op.binary.f32(i32 35, float %1873, float %1883)  ; FMax(a,b)
  store float %1878, float* %1801, align 4, !tbaa !74, !alias.scope !98, !noalias !99
  store float %1882, float* %1802, align 4, !tbaa !74, !alias.scope !96, !noalias !97
  store float %1884, float* %1803, align 4, !tbaa !74, !alias.scope !90, !noalias !93
  %1885 = call float @dx.op.binary.f32(i32 36, float %1871, float %1872)  ; FMin(a,b)
  %1886 = call float @dx.op.binary.f32(i32 36, float %1870, float %1885)  ; FMin(a,b)
  %1887 = call float @dx.op.binary.f32(i32 35, float %1870, float %1871)  ; FMax(a,b)
  %1888 = call float @dx.op.binary.f32(i32 36, float %1887, float %1872)  ; FMin(a,b)
  %1889 = call float @dx.op.binary.f32(i32 36, float %1870, float %1871)  ; FMin(a,b)
  %1890 = call float @dx.op.binary.f32(i32 35, float %1889, float %1888)  ; FMax(a,b)
  %1891 = call float @dx.op.binary.f32(i32 35, float %1871, float %1872)  ; FMax(a,b)
  %1892 = call float @dx.op.binary.f32(i32 35, float %1870, float %1891)  ; FMax(a,b)
  store float %1886, float* %1804, align 4, !tbaa !74, !alias.scope !108, !noalias !109
  store float %1890, float* %1805, align 4, !tbaa !74, !alias.scope !106, !noalias !107
  store float %1892, float* %1806, align 4, !tbaa !74, !alias.scope !100, !noalias !103
  %1893 = sub nsw i32 3, %1876
  %1894 = icmp sgt i32 %1893, 2
  br i1 %1894, label %1895, label %1933, !dx.controlflow.hints !110

; <label>:1895                                    ; preds = %1869
  %1896 = icmp eq i32 %1664, 0
  %1897 = fsub fast float %1714, %1798
  %1898 = select i1 %1896, float %1897, float %1798
  %1899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1900 = extractvalue %dx.types.CBufRet.f32 %1899, 0
  %1901 = extractvalue %dx.types.CBufRet.f32 %1899, 1
  %1902 = extractvalue %dx.types.CBufRet.f32 %1899, 2
  %1903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1904 = extractvalue %dx.types.CBufRet.f32 %1903, 0
  %1905 = extractvalue %dx.types.CBufRet.f32 %1903, 1
  %1906 = extractvalue %dx.types.CBufRet.f32 %1903, 2
  %1907 = extractvalue %dx.types.CBufRet.f32 %1903, 3
  %1908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1909 = extractvalue %dx.types.CBufRet.f32 %1908, 3
  %1910 = call float @dx.op.binary.f32(i32 36, float %1799, float %1909)  ; FMin(a,b)
  %1911 = fmul fast float %1907, %1898
  %1912 = call float @dx.op.unary.f32(i32 7, float %1911)  ; Saturate(value)
  %1913 = fsub fast float %1904, %1900
  %1914 = fsub fast float %1905, %1901
  %1915 = fsub fast float %1906, %1902
  %1916 = fmul fast float %1912, %1913
  %1917 = fmul fast float %1912, %1914
  %1918 = fmul fast float %1912, %1915
  %1919 = fadd fast float %1916, %1900
  %1920 = fadd fast float %1917, %1901
  %1921 = fadd fast float %1918, %1902
  %1922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1923 = extractvalue %dx.types.CBufRet.f32 %1922, 0
  %1924 = extractvalue %dx.types.CBufRet.f32 %1922, 1
  %1925 = fadd fast float %1924, %1923
  %1926 = call float @dx.op.unary.f32(i32 7, float %1925)  ; Saturate(value)
  %1927 = extractvalue %dx.types.CBufRet.f32 %1922, 2
  %1928 = extractvalue %dx.types.CBufRet.f32 %1922, 3
  %1929 = fadd fast float %1928, %1927
  %1930 = call float @dx.op.unary.f32(i32 7, float %1929)  ; Saturate(value)
  %1931 = fmul fast float %1926, %1910
  %1932 = fmul fast float %1931, %1930
  br label %2015

; <label>:1933                                    ; preds = %1869
  %1934 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 %1893
  %1935 = load float, float* %1934, align 4, !tbaa !74, !noalias !78
  %1936 = fcmp fast olt float %1935, %1800
  %1937 = icmp sgt i32 %1876, 0
  %1938 = and i1 %1937, %1936
  br i1 %1938, label %1939, label %1976

; <label>:1939                                    ; preds = %1933
  br label %1940

; <label>:1940                                    ; preds = %1969, %1939
  %1941 = phi float [ %1970, %1969 ], [ %1798, %1939 ]
  %1942 = phi float [ %1971, %1969 ], [ %1799, %1939 ]
  %1943 = phi float [ %1951, %1969 ], [ %1935, %1939 ]
  %1944 = phi i32 [ %1948, %1969 ], [ %1893, %1939 ]
  %1945 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %1944
  %1946 = load float, float* %1945, align 4, !tbaa !74, !noalias !78
  %1947 = icmp slt i32 %1944, 2
  %1948 = add nsw i32 %1944, 1
  %1949 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 %1948
  %1950 = load float, float* %1949, align 4, !tbaa !74, !noalias !78
  %1951 = select i1 %1947, float %1950, float %1714
  %1952 = call float @dx.op.binary.f32(i32 36, float %1951, float %1946)  ; FMin(a,b)
  %1953 = call float @dx.op.binary.f32(i32 36, float %1800, float %1952)  ; FMin(a,b)
  %1954 = icmp eq i32 %1664, 0
  %1955 = fadd fast float %1953, %1943
  %1956 = fmul fast float %1955, %1645
  %1957 = fadd fast float %1956, %1658
  br i1 %1954, label %1963, label %1958, !dx.controlflow.hints !111

; <label>:1958                                    ; preds = %1940
  %1959 = fsub fast float %1953, %1943
  %1960 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1959)  ; FMax(a,b)
  %1961 = fmul fast float %1960, %1957
  %1962 = fadd fast float %1961, %1942
  br label %1969

; <label>:1963                                    ; preds = %1940
  %1964 = fsub fast float %1943, %1953
  %1965 = call float @dx.op.unary.f32(i32 6, float %1964)  ; FAbs(value)
  %1966 = fadd fast float %1965, %1941
  %1967 = fmul fast float %1965, %1957
  %1968 = fsub fast float %1942, %1967
  br label %1969

; <label>:1969                                    ; preds = %1963, %1958
  %1970 = phi float [ %1960, %1958 ], [ %1966, %1963 ]
  %1971 = phi float [ %1962, %1958 ], [ %1968, %1963 ]
  %1972 = fcmp fast olt float %1951, %1800
  %1973 = icmp slt i32 %1948, 3
  %1974 = and i1 %1973, %1972
  br i1 %1974, label %1940, label %1975

; <label>:1975                                    ; preds = %1969
  br label %1976

; <label>:1976                                    ; preds = %1975, %1933
  %1977 = phi float [ %1798, %1933 ], [ %1970, %1975 ]
  %1978 = phi float [ %1799, %1933 ], [ %1971, %1975 ]
  %1979 = fsub fast float %1714, %1977
  %1980 = select i1 %1716, float %1977, float %1979
  %1981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1982 = extractvalue %dx.types.CBufRet.f32 %1981, 0
  %1983 = extractvalue %dx.types.CBufRet.f32 %1981, 1
  %1984 = extractvalue %dx.types.CBufRet.f32 %1981, 2
  %1985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1986 = extractvalue %dx.types.CBufRet.f32 %1985, 0
  %1987 = extractvalue %dx.types.CBufRet.f32 %1985, 1
  %1988 = extractvalue %dx.types.CBufRet.f32 %1985, 2
  %1989 = extractvalue %dx.types.CBufRet.f32 %1985, 3
  %1990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1991 = extractvalue %dx.types.CBufRet.f32 %1990, 3
  %1992 = call float @dx.op.binary.f32(i32 36, float %1978, float %1991)  ; FMin(a,b)
  %1993 = fmul fast float %1989, %1980
  %1994 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1995 = fsub fast float %1986, %1982
  %1996 = fsub fast float %1987, %1983
  %1997 = fsub fast float %1988, %1984
  %1998 = fmul fast float %1994, %1995
  %1999 = fmul fast float %1994, %1996
  %2000 = fmul fast float %1994, %1997
  %2001 = fadd fast float %1998, %1982
  %2002 = fadd fast float %1999, %1983
  %2003 = fadd fast float %2000, %1984
  %2004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2005 = extractvalue %dx.types.CBufRet.f32 %2004, 0
  %2006 = extractvalue %dx.types.CBufRet.f32 %2004, 1
  %2007 = fadd fast float %2006, %2005
  %2008 = call float @dx.op.unary.f32(i32 7, float %2007)  ; Saturate(value)
  %2009 = extractvalue %dx.types.CBufRet.f32 %2004, 2
  %2010 = extractvalue %dx.types.CBufRet.f32 %2004, 3
  %2011 = fadd fast float %2010, %2009
  %2012 = call float @dx.op.unary.f32(i32 7, float %2011)  ; Saturate(value)
  %2013 = fmul fast float %2008, %1992
  %2014 = fmul fast float %2013, %2012
  br label %2015

; <label>:2015                                    ; preds = %1976, %1895, %1730, %1712, %1710
  %2016 = phi float [ %1739, %1730 ], [ %1898, %1895 ], [ %1980, %1976 ], [ 0.000000e+00, %1710 ], [ 0.000000e+00, %1712 ]
  %2017 = phi float [ %1773, %1730 ], [ %1932, %1895 ], [ %2014, %1976 ], [ 0.000000e+00, %1710 ], [ 0.000000e+00, %1712 ]
  %2018 = phi float [ %1760, %1730 ], [ %1919, %1895 ], [ %2001, %1976 ], [ 0.000000e+00, %1710 ], [ 0.000000e+00, %1712 ]
  %2019 = phi float [ %1761, %1730 ], [ %1920, %1895 ], [ %2002, %1976 ], [ 0.000000e+00, %1710 ], [ 0.000000e+00, %1712 ]
  %2020 = phi float [ %1762, %1730 ], [ %1921, %1895 ], [ %2003, %1976 ], [ 0.000000e+00, %1710 ], [ 0.000000e+00, %1712 ]
  %2021 = fmul fast float %1653, %2017
  %2022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2023 = extractvalue %dx.types.CBufRet.f32 %2022, 2
  %2024 = fsub fast float %1660, %2023
  %2025 = fcmp fast olt float %2021, -2.000000e+01
  %2026 = call float @dx.op.unary.f32(i32 21, float %2021)  ; Exp(value)
  %2027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2028 = extractvalue %dx.types.CBufRet.f32 %2027, 2
  %2029 = extractvalue %dx.types.CBufRet.f32 %2027, 3
  %2030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2031 = extractvalue %dx.types.CBufRet.f32 %2030, 2
  %2032 = fmul fast float %2029, %2024
  %2033 = call float @dx.op.unary.f32(i32 7, float %2032)  ; Saturate(value)
  %2034 = fsub fast float 1.000000e+00, %2033
  %2035 = fmul fast float %1645, 5.000000e-01
  %2036 = fadd fast float %2035, 5.000000e-01
  %2037 = call float @dx.op.unary.f32(i32 7, float %2036)  ; Saturate(value)
  %2038 = fsub fast float 1.000000e+00, %2037
  %2039 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2034)  ; FMax(a,b)
  %2040 = fdiv fast float %2038, %2039
  %2041 = fsub fast float %2024, %1611
  %2042 = call float @dx.op.unary.f32(i32 6, float %2041)  ; FAbs(value)
  %2043 = fmul fast float %2042, %2028
  %2044 = call float @dx.op.unary.f32(i32 7, float %2040)  ; Saturate(value)
  %2045 = fsub fast float 1.000000e+00, %2043
  %2046 = fmul fast float %2045, %2044
  %2047 = fadd fast float %2046, %2043
  %2048 = fmul fast float %2031, %2024
  %2049 = call float @dx.op.unary.f32(i32 7, float %2048)  ; Saturate(value)
  %2050 = fsub fast float 1.000000e+00, %2047
  %2051 = fmul fast float %2050, %2049
  %2052 = fadd fast float %2051, %2047
  %2053 = call float @dx.op.unary.f32(i32 7, float %2052)  ; Saturate(value)
  %2054 = fadd fast float %2026, -1.000000e+00
  %2055 = select i1 %2025, float -1.000000e+00, float %2054
  %2056 = fmul fast float %2053, %2055
  %2057 = fadd fast float %2056, 1.000000e+00
  %2058 = fsub fast float -0.000000e+00, %2056
  %2059 = fmul fast float %2018, %2058
  %2060 = fmul fast float %2019, %2058
  %2061 = fmul fast float %2020, %2058
  br label %2062

; <label>:2062                                    ; preds = %2015, %1564
  %2063 = phi float [ %2016, %2015 ], [ 0.000000e+00, %1564 ]
  %2064 = phi float [ %2057, %2015 ], [ 1.000000e+00, %1564 ]
  %2065 = phi float [ %2059, %2015 ], [ 0.000000e+00, %1564 ]
  %2066 = phi float [ %2060, %2015 ], [ 0.000000e+00, %1564 ]
  %2067 = phi float [ %2061, %2015 ], [ 0.000000e+00, %1564 ]
  %2068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2069 = extractvalue %dx.types.CBufRet.f32 %2068, 1
  %2070 = fsub fast float 1.000000e+00, %2064
  %2071 = fmul fast float %2070, %1646
  %2072 = fmul fast float %2071, %2069
  %2073 = fsub fast float %1646, %2072
  br i1 %1639, label %2074, label %2103, !dx.controlflow.hints !112

; <label>:2074                                    ; preds = %2062
  %2075 = fmul fast float %1647, %1636
  %2076 = fadd fast float %2075, %1637
  %2077 = call float @dx.op.unary.f32(i32 7, float %2076)  ; Saturate(value)
  %2078 = fmul fast float %1618, %2073
  %2079 = fsub fast float -0.000000e+00, %2078
  %2080 = fmul fast float %1619, %2073
  %2081 = fsub fast float -0.000000e+00, %2080
  %2082 = call float @dx.op.unary.f32(i32 21, float %2079)  ; Exp(value)
  %2083 = call float @dx.op.unary.f32(i32 21, float %2081)  ; Exp(value)
  %2084 = call float @dx.op.binary.f32(i32 35, float %1626, float %2082)  ; FMax(a,b)
  %2085 = call float @dx.op.binary.f32(i32 35, float %1626, float %2083)  ; FMax(a,b)
  %2086 = fsub fast float %2085, %2084
  %2087 = fmul fast float %2086, %2077
  %2088 = fadd fast float %2087, %2084
  %2089 = call float @dx.op.unary.f32(i32 7, float %2088)  ; Saturate(value)
  %2090 = fsub fast float %1623, %1628
  %2091 = fsub fast float %1624, %1629
  %2092 = fsub fast float %1625, %1630
  %2093 = fmul fast float %2077, %2090
  %2094 = fmul fast float %2077, %2091
  %2095 = fmul fast float %2077, %2092
  %2096 = fadd fast float %2093, %1628
  %2097 = fadd fast float %2094, %1629
  %2098 = fadd fast float %2095, %1630
  %2099 = fsub fast float 1.000000e+00, %2089
  %2100 = fmul fast float %2099, %2096
  %2101 = fmul fast float %2099, %2097
  %2102 = fmul fast float %2099, %2098
  br label %2162

; <label>:2103                                    ; preds = %2062
  %2104 = fmul fast float %2073, %1635
  %2105 = call float @dx.op.unary.f32(i32 7, float %2104)  ; Saturate(value)
  %2106 = fsub fast float 2.000000e+00, %2105
  %2107 = fmul fast float %2105, 9.921875e-01
  %2108 = fmul fast float %2107, %2106
  %2109 = fadd fast float %2108, 3.906250e-03
  %2110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %2109, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2111 = extractvalue %dx.types.ResRet.f32 %2110, 0
  %2112 = fsub fast float %2105, %2111
  %2113 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2112)  ; FMax(a,b)
  %2114 = fmul fast float %1621, %1611
  %2115 = call float @dx.op.unary.f32(i32 6, float %2114)  ; FAbs(value)
  %2116 = fcmp fast ogt float %2115, 0x3EB0C6F7A0000000
  br i1 %2116, label %2117, label %2123, !dx.controlflow.hints !113

; <label>:2117                                    ; preds = %2103
  %2118 = fmul fast float %2114, 0xBFF7154760000000
  %2119 = call float @dx.op.unary.f32(i32 21, float %2118)  ; Exp(value)
  %2120 = fsub fast float 1.000000e+00, %2119
  %2121 = fdiv fast float %2120, %2114
  %2122 = fmul fast float %2121, %1631
  br label %2123

; <label>:2123                                    ; preds = %2117, %2103
  %2124 = phi float [ %2122, %2117 ], [ %1631, %2103 ]
  %2125 = fadd fast float %2124, %1633
  %2126 = fmul fast float %2125, %2113
  %2127 = fmul fast float %1618, %2126
  %2128 = fsub fast float -0.000000e+00, %2127
  %2129 = fmul fast float %1619, %2126
  %2130 = fsub fast float -0.000000e+00, %2129
  %2131 = fmul fast float %1620, %2126
  %2132 = fsub fast float -0.000000e+00, %2131
  %2133 = call float @dx.op.unary.f32(i32 21, float %2128)  ; Exp(value)
  %2134 = call float @dx.op.unary.f32(i32 21, float %2130)  ; Exp(value)
  %2135 = call float @dx.op.unary.f32(i32 21, float %2132)  ; Exp(value)
  %2136 = fmul fast float %1647, %1647
  %2137 = fadd fast float %2136, 1.000000e+00
  %2138 = fmul fast float %2137, 0x3FAE8EC8A0000000
  %2139 = fmul fast float %2138, %1628
  %2140 = fmul fast float %2138, %1629
  %2141 = fmul fast float %2138, %1630
  %2142 = fmul fast float %1647, %1626
  %2143 = fsub fast float 1.000000e+00, %2142
  %2144 = fmul fast float %1626, %1626
  %2145 = fsub fast float 1.000000e+00, %2144
  %2146 = fmul fast float %2145, 0x3FB45F3060000000
  %2147 = fmul fast float %2143, %2143
  %2148 = fdiv fast float 1.000000e+00, %2147
  %2149 = fmul fast float %2146, %2148
  %2150 = fmul fast float %2149, %1623
  %2151 = fmul fast float %2149, %1624
  %2152 = fmul fast float %2149, %1625
  %2153 = fadd fast float %2150, %2139
  %2154 = fadd fast float %2151, %2140
  %2155 = fadd fast float %2152, %2141
  %2156 = fsub fast float 1.000000e+00, %2133
  %2157 = fsub fast float 1.000000e+00, %2134
  %2158 = fsub fast float 1.000000e+00, %2135
  %2159 = fmul fast float %2153, %2156
  %2160 = fmul fast float %2154, %2157
  %2161 = fmul fast float %2155, %2158
  br label %2162

; <label>:2162                                    ; preds = %2123, %2074
  %2163 = phi float [ %2100, %2074 ], [ %2159, %2123 ]
  %2164 = phi float [ %2101, %2074 ], [ %2160, %2123 ]
  %2165 = phi float [ %2102, %2074 ], [ %2161, %2123 ]
  %2166 = phi float [ %2089, %2074 ], [ %2133, %2123 ]
  %2167 = phi float [ %2089, %2074 ], [ %2134, %2123 ]
  %2168 = phi float [ %2089, %2074 ], [ %2135, %2123 ]
  br i1 %1655, label %2169, label %2367, !dx.controlflow.hints !114

; <label>:2169                                    ; preds = %2162
  %2170 = extractvalue %dx.types.CBufRet.f32 %2068, 0
  %2171 = fmul fast float %2170, %2070
  %2172 = fsub fast float %2065, %2163
  %2173 = fsub fast float %2066, %2164
  %2174 = fsub fast float %2067, %2165
  %2175 = fmul fast float %2171, %2172
  %2176 = fmul fast float %2171, %2173
  %2177 = fmul fast float %2171, %2174
  %2178 = fadd fast float %2175, %2163
  %2179 = fadd fast float %2176, %2164
  %2180 = fadd fast float %2177, %2165
  %2181 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2166)  ; FMax(a,b)
  %2182 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2167)  ; FMax(a,b)
  %2183 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2168)  ; FMax(a,b)
  %2184 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2064)  ; FMax(a,b)
  %2185 = call float @dx.op.binary.f32(i32 35, float %2063, float %2073)  ; FMax(a,b)
  %2186 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2185)  ; FMax(a,b)
  %2187 = fdiv fast float %2063, %2186
  %2188 = call float @dx.op.unary.f32(i32 7, float %2187)  ; Saturate(value)
  %2189 = fdiv fast float %2073, %2186
  %2190 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2191 = fcmp fast une float %2184, 1.000000e+00
  br i1 %2191, label %2192, label %2205, !dx.controlflow.hints !115

; <label>:2192                                    ; preds = %2169
  %2193 = call float @dx.op.unary.f32(i32 23, float %2184)  ; Log(value)
  %2194 = fmul fast float %2193, 0x3FE62E4300000000
  %2195 = fmul fast float %2065, %2194
  %2196 = fsub fast float -0.000000e+00, %2195
  %2197 = fmul fast float %2066, %2194
  %2198 = fsub fast float -0.000000e+00, %2197
  %2199 = fmul fast float %2067, %2194
  %2200 = fsub fast float -0.000000e+00, %2199
  %2201 = fsub fast float 1.000000e+00, %2184
  %2202 = fdiv fast float %2196, %2201
  %2203 = fdiv fast float %2198, %2201
  %2204 = fdiv fast float %2200, %2201
  br label %2205

; <label>:2205                                    ; preds = %2192, %2169
  %2206 = phi float [ %2202, %2192 ], [ %2065, %2169 ]
  %2207 = phi float [ %2203, %2192 ], [ %2066, %2169 ]
  %2208 = phi float [ %2204, %2192 ], [ %2067, %2169 ]
  %2209 = phi float [ %2194, %2192 ], [ 0.000000e+00, %2169 ]
  %2210 = fcmp fast une float %2181, 1.000000e+00
  br i1 %2210, label %2211, label %2218, !dx.controlflow.hints !116

; <label>:2211                                    ; preds = %2205
  %2212 = call float @dx.op.unary.f32(i32 23, float %2181)  ; Log(value)
  %2213 = fmul fast float %2212, 0x3FE62E4300000000
  %2214 = fmul fast float %2178, %2213
  %2215 = fsub fast float -0.000000e+00, %2214
  %2216 = fsub fast float 1.000000e+00, %2181
  %2217 = fdiv fast float %2215, %2216
  br label %2218

; <label>:2218                                    ; preds = %2211, %2205
  %2219 = phi float [ %2217, %2211 ], [ %2178, %2205 ]
  %2220 = phi float [ %2213, %2211 ], [ 0.000000e+00, %2205 ]
  %2221 = fcmp fast une float %2182, 1.000000e+00
  br i1 %2221, label %2222, label %2229, !dx.controlflow.hints !116

; <label>:2222                                    ; preds = %2218
  %2223 = call float @dx.op.unary.f32(i32 23, float %2182)  ; Log(value)
  %2224 = fmul fast float %2223, 0x3FE62E4300000000
  %2225 = fmul fast float %2179, %2224
  %2226 = fsub fast float -0.000000e+00, %2225
  %2227 = fsub fast float 1.000000e+00, %2182
  %2228 = fdiv fast float %2226, %2227
  br label %2229

; <label>:2229                                    ; preds = %2222, %2218
  %2230 = phi float [ %2228, %2222 ], [ %2179, %2218 ]
  %2231 = phi float [ %2224, %2222 ], [ 0.000000e+00, %2218 ]
  %2232 = fcmp fast une float %2183, 1.000000e+00
  br i1 %2232, label %2233, label %2240, !dx.controlflow.hints !116

; <label>:2233                                    ; preds = %2229
  %2234 = call float @dx.op.unary.f32(i32 23, float %2183)  ; Log(value)
  %2235 = fmul fast float %2234, 0x3FE62E4300000000
  %2236 = fmul fast float %2180, %2235
  %2237 = fsub fast float -0.000000e+00, %2236
  %2238 = fsub fast float 1.000000e+00, %2183
  %2239 = fdiv fast float %2237, %2238
  br label %2240

; <label>:2240                                    ; preds = %2233, %2229
  %2241 = phi float [ %2239, %2233 ], [ %2180, %2229 ]
  %2242 = phi float [ %2235, %2233 ], [ 0.000000e+00, %2229 ]
  %2243 = fmul fast float %2206, %2190
  %2244 = fmul fast float %2207, %2190
  %2245 = fmul fast float %2208, %2190
  %2246 = fmul fast float %2209, %2190
  %2247 = fmul fast float %2219, %2188
  %2248 = fmul fast float %2230, %2188
  %2249 = fmul fast float %2241, %2188
  %2250 = fmul fast float %2220, %2188
  %2251 = fmul fast float %2231, %2188
  %2252 = fmul fast float %2242, %2188
  %2253 = fadd fast float %2247, %2243
  %2254 = fadd fast float %2248, %2244
  %2255 = fadd fast float %2249, %2245
  %2256 = fadd fast float %2250, %2246
  %2257 = fadd fast float %2251, %2246
  %2258 = fadd fast float %2252, %2246
  %2259 = fcmp fast une float %2256, 0.000000e+00
  br i1 %2259, label %2260, label %2267, !dx.controlflow.hints !117

; <label>:2260                                    ; preds = %2240
  %2261 = fmul fast float %2256, 0x3FF7154760000000
  %2262 = call float @dx.op.unary.f32(i32 21, float %2261)  ; Exp(value)
  %2263 = fsub fast float 1.000000e+00, %2262
  %2264 = fmul fast float %2253, %2263
  %2265 = fsub fast float -0.000000e+00, %2264
  %2266 = fdiv fast float %2265, %2256
  br label %2267

; <label>:2267                                    ; preds = %2260, %2240
  %2268 = phi float [ %2262, %2260 ], [ 1.000000e+00, %2240 ]
  %2269 = phi float [ %2266, %2260 ], [ %2253, %2240 ]
  %2270 = fcmp fast une float %2257, 0.000000e+00
  br i1 %2270, label %2271, label %2278, !dx.controlflow.hints !117

; <label>:2271                                    ; preds = %2267
  %2272 = fmul fast float %2257, 0x3FF7154760000000
  %2273 = call float @dx.op.unary.f32(i32 21, float %2272)  ; Exp(value)
  %2274 = fsub fast float 1.000000e+00, %2273
  %2275 = fmul fast float %2254, %2274
  %2276 = fsub fast float -0.000000e+00, %2275
  %2277 = fdiv fast float %2276, %2257
  br label %2278

; <label>:2278                                    ; preds = %2271, %2267
  %2279 = phi float [ %2273, %2271 ], [ 1.000000e+00, %2267 ]
  %2280 = phi float [ %2277, %2271 ], [ %2254, %2267 ]
  %2281 = fcmp fast une float %2258, 0.000000e+00
  br i1 %2281, label %2282, label %2289, !dx.controlflow.hints !117

; <label>:2282                                    ; preds = %2278
  %2283 = fmul fast float %2258, 0x3FF7154760000000
  %2284 = call float @dx.op.unary.f32(i32 21, float %2283)  ; Exp(value)
  %2285 = fsub fast float 1.000000e+00, %2284
  %2286 = fmul fast float %2255, %2285
  %2287 = fsub fast float -0.000000e+00, %2286
  %2288 = fdiv fast float %2287, %2258
  br label %2289

; <label>:2289                                    ; preds = %2282, %2278
  %2290 = phi float [ %2284, %2282 ], [ 1.000000e+00, %2278 ]
  %2291 = phi float [ %2288, %2282 ], [ %2255, %2278 ]
  %2292 = fcmp fast ogt float %2188, %2190
  br i1 %2292, label %2293, label %2313, !dx.controlflow.hints !118

; <label>:2293                                    ; preds = %2289
  %2294 = fsub fast float 1.000000e+00, %2190
  %2295 = fmul fast float %2206, %2294
  %2296 = fmul fast float %2207, %2294
  %2297 = fmul fast float %2208, %2294
  %2298 = fmul fast float %2209, %2294
  %2299 = fcmp fast une float %2298, 0.000000e+00
  br i1 %2299, label %2300, label %2351, !dx.controlflow.hints !119

; <label>:2300                                    ; preds = %2293
  %2301 = fmul fast float %2298, 0x3FF7154760000000
  %2302 = call float @dx.op.unary.f32(i32 21, float %2301)  ; Exp(value)
  %2303 = fsub fast float 1.000000e+00, %2302
  %2304 = fmul fast float %2295, %2303
  %2305 = fsub fast float -0.000000e+00, %2304
  %2306 = fmul fast float %2296, %2303
  %2307 = fsub fast float -0.000000e+00, %2306
  %2308 = fmul fast float %2297, %2303
  %2309 = fsub fast float -0.000000e+00, %2308
  %2310 = fdiv fast float %2305, %2298
  %2311 = fdiv fast float %2307, %2298
  %2312 = fdiv fast float %2309, %2298
  br label %2351

; <label>:2313                                    ; preds = %2289
  %2314 = fsub fast float 1.000000e+00, %2188
  %2315 = fmul fast float %2219, %2314
  %2316 = fmul fast float %2230, %2314
  %2317 = fmul fast float %2241, %2314
  %2318 = fmul fast float %2220, %2314
  %2319 = fmul fast float %2231, %2314
  %2320 = fmul fast float %2242, %2314
  %2321 = fcmp fast une float %2318, 0.000000e+00
  br i1 %2321, label %2322, label %2329, !dx.controlflow.hints !117

; <label>:2322                                    ; preds = %2313
  %2323 = fmul fast float %2318, 0x3FF7154760000000
  %2324 = call float @dx.op.unary.f32(i32 21, float %2323)  ; Exp(value)
  %2325 = fsub fast float 1.000000e+00, %2324
  %2326 = fmul fast float %2315, %2325
  %2327 = fsub fast float -0.000000e+00, %2326
  %2328 = fdiv fast float %2327, %2318
  br label %2329

; <label>:2329                                    ; preds = %2322, %2313
  %2330 = phi float [ %2328, %2322 ], [ %2315, %2313 ]
  %2331 = phi float [ %2324, %2322 ], [ 1.000000e+00, %2313 ]
  %2332 = fcmp fast une float %2319, 0.000000e+00
  br i1 %2332, label %2333, label %2340, !dx.controlflow.hints !117

; <label>:2333                                    ; preds = %2329
  %2334 = fmul fast float %2319, 0x3FF7154760000000
  %2335 = call float @dx.op.unary.f32(i32 21, float %2334)  ; Exp(value)
  %2336 = fsub fast float 1.000000e+00, %2335
  %2337 = fmul fast float %2316, %2336
  %2338 = fsub fast float -0.000000e+00, %2337
  %2339 = fdiv fast float %2338, %2319
  br label %2340

; <label>:2340                                    ; preds = %2333, %2329
  %2341 = phi float [ %2339, %2333 ], [ %2316, %2329 ]
  %2342 = phi float [ %2335, %2333 ], [ 1.000000e+00, %2329 ]
  %2343 = fcmp fast une float %2320, 0.000000e+00
  br i1 %2343, label %2344, label %2351, !dx.controlflow.hints !117

; <label>:2344                                    ; preds = %2340
  %2345 = fmul fast float %2320, 0x3FF7154760000000
  %2346 = call float @dx.op.unary.f32(i32 21, float %2345)  ; Exp(value)
  %2347 = fsub fast float 1.000000e+00, %2346
  %2348 = fmul fast float %2317, %2347
  %2349 = fsub fast float -0.000000e+00, %2348
  %2350 = fdiv fast float %2349, %2320
  br label %2351

; <label>:2351                                    ; preds = %2344, %2340, %2300, %2293
  %2352 = phi float [ %2350, %2344 ], [ %2312, %2300 ], [ %2297, %2293 ], [ %2317, %2340 ]
  %2353 = phi float [ %2341, %2344 ], [ %2311, %2300 ], [ %2296, %2293 ], [ %2341, %2340 ]
  %2354 = phi float [ %2330, %2344 ], [ %2310, %2300 ], [ %2295, %2293 ], [ %2330, %2340 ]
  %2355 = phi float [ %2346, %2344 ], [ %2302, %2300 ], [ 1.000000e+00, %2293 ], [ 1.000000e+00, %2340 ]
  %2356 = phi float [ %2342, %2344 ], [ %2302, %2300 ], [ 1.000000e+00, %2293 ], [ %2342, %2340 ]
  %2357 = phi float [ %2331, %2344 ], [ %2302, %2300 ], [ 1.000000e+00, %2293 ], [ %2331, %2340 ]
  %2358 = fmul fast float %2357, %2269
  %2359 = fmul fast float %2356, %2280
  %2360 = fmul fast float %2355, %2291
  %2361 = fadd fast float %2358, %2354
  %2362 = fadd fast float %2359, %2353
  %2363 = fadd fast float %2360, %2352
  %2364 = fmul fast float %2357, %2268
  %2365 = fmul fast float %2356, %2279
  %2366 = fmul fast float %2355, %2290
  br label %2367

; <label>:2367                                    ; preds = %2351, %2162
  %2368 = phi float [ %2168, %2162 ], [ %2366, %2351 ]
  %2369 = phi float [ %2167, %2162 ], [ %2365, %2351 ]
  %2370 = phi float [ %2166, %2162 ], [ %2364, %2351 ]
  %2371 = phi float [ %2165, %2162 ], [ %2363, %2351 ]
  %2372 = phi float [ %2164, %2162 ], [ %2362, %2351 ]
  %2373 = phi float [ %2163, %2162 ], [ %2361, %2351 ]
  %2374 = fmul fast float %2370, %1511
  %2375 = fmul fast float %2369, %1512
  %2376 = fmul fast float %2368, %1513
  %2377 = fsub fast float 1.000000e+00, %1574
  %2378 = fmul fast float %2373, %2377
  %2379 = fmul fast float %2372, %2377
  %2380 = fmul fast float %2371, %2377
  %2381 = fadd fast float %2378, %2374
  %2382 = fadd fast float %2379, %2375
  %2383 = fadd fast float %2380, %2376
  %2384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2385 = extractvalue %dx.types.CBufRet.f32 %2384, 2
  %2386 = fmul fast float %2385, %1584
  %2387 = call float @dx.op.unary.f32(i32 7, float %2386)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %18, i32 %19, i32 undef, float %1574, float %1574, float %1574, float %1574, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2389 = extractvalue %dx.types.CBufRet.f32 %2388, 0
  %2390 = fmul fast float %2389, %2381
  %2391 = fmul fast float %2389, %2382
  %2392 = fmul fast float %2389, %2383
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %18, i32 %19, i32 undef, float %2390, float %2391, float %2392, float %2390, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %18, i32 %19, i32 undef, float %2387, float %2387, float %2387, float %2387, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!29 = !{void ()* @cs_fog_raymarching_heightmap_particles, !"cs_fog_raymarching_heightmap_particles", null, !4, !30}
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
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = !{!75, !75, i64 0}
!75 = !{!"float", !76, i64 0}
!76 = !{!"omnipotent char", !77, i64 0}
!77 = !{!"Simple C/C++ TBAA"}
!78 = !{!79, !81, !83, !84, !86, !87, !88}
!79 = distinct !{!79, !80, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!80 = distinct !{!80, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!81 = distinct !{!81, !82, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!82 = distinct !{!82, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!83 = distinct !{!83, !82, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!84 = distinct !{!84, !85, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!85 = distinct !{!85, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!86 = distinct !{!86, !85, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!87 = distinct !{!87, !85, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!88 = distinct !{!88, !85, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = !{!91}
!91 = distinct !{!91, !92, !"\01?sort@@YAXAIAM00@Z: %c"}
!92 = distinct !{!92, !"\01?sort@@YAXAIAM00@Z"}
!93 = !{!94, !95, !79, !81, !83, !84, !86, !87, !88}
!94 = distinct !{!94, !92, !"\01?sort@@YAXAIAM00@Z: %a"}
!95 = distinct !{!95, !92, !"\01?sort@@YAXAIAM00@Z: %b"}
!96 = !{!95}
!97 = !{!94, !91, !79, !81, !83, !84, !86, !87, !88}
!98 = !{!94}
!99 = !{!95, !91, !79, !81, !83, !84, !86, !87, !88}
!100 = !{!101}
!101 = distinct !{!101, !102, !"\01?sort@@YAXAIAM00@Z: %c"}
!102 = distinct !{!102, !"\01?sort@@YAXAIAM00@Z"}
!103 = !{!104, !105, !79, !81, !83, !84, !86, !87, !88}
!104 = distinct !{!104, !102, !"\01?sort@@YAXAIAM00@Z: %a"}
!105 = distinct !{!105, !102, !"\01?sort@@YAXAIAM00@Z: %b"}
!106 = !{!105}
!107 = !{!104, !101, !79, !81, !83, !84, !86, !87, !88}
!108 = !{!104}
!109 = !{!105, !101, !79, !81, !83, !84, !86, !87, !88}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 2}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}

