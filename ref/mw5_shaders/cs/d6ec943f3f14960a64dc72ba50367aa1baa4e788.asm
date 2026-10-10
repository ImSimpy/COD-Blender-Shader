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
; shader hash: 1b427d3655b82173c80f8ff8170d23c3
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
;                                   texture     f32          3d      T0             t3     1
;                                   texture     f32          2d      T1            t18     1
;                                   texture  struct         r/o      T2            t25     1
;                                   texture     f32          1d      T3            t14     1
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

define void @cs_fog_raymarching_air_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  store float %199, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  store float %177, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  store float %155, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  br label %200

; <label>:200                                     ; preds = %59, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %201 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  %202 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  %203 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  %204 = uitofp i32 %31 to float
  %205 = uitofp i32 %32 to float
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 2
  %208 = fmul fast float %207, 0x3FE3C6EF40000000
  %209 = frem fast float %204, 2.560000e+02
  %210 = frem fast float %205, 2.560000e+02
  %211 = fptoui float %209 to i32
  %212 = fptoui float %210 to i32
  %213 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %211, i32 %212, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 1
  %215 = extractvalue %dx.types.ResRet.f32 %213, 2
  %216 = extractvalue %dx.types.ResRet.f32 %213, 3
  %217 = fadd fast float %214, %208
  %218 = fadd fast float %215, %208
  %219 = fadd fast float %216, %208
  %220 = call float @dx.op.unary.f32(i32 22, float %217)  ; Frc(value)
  %221 = call float @dx.op.unary.f32(i32 22, float %218)  ; Frc(value)
  %222 = call float @dx.op.unary.f32(i32 22, float %219)  ; Frc(value)
  %223 = fadd fast float %221, %204
  %224 = fadd fast float %222, %205
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
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 3
  %298 = fsub fast float -0.000000e+00, %231
  %299 = fsub fast float -0.000000e+00, %232
  %300 = fsub fast float %297, %233
  %301 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %298, float %299, float %300)  ; Dot3(ax,ay,az,bx,by,bz)
  %302 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %303 = fdiv fast float 1.000000e+00, %302
  %304 = fmul fast float %303, %301
  %305 = fcmp fast olt float %304, 0.000000e+00
  %306 = fcmp fast ogt float %276, 0.000000e+00
  %307 = and i1 %306, %305
  br i1 %307, label %312, label %308, !dx.controlflow.hints !31

; <label>:308                                     ; preds = %200
  %309 = fcmp fast olt float %276, 0.000000e+00
  br i1 %309, label %310, label %312, !dx.controlflow.hints !32

; <label>:310                                     ; preds = %308
  %311 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %304)  ; FMax(a,b)
  br label %312

; <label>:312                                     ; preds = %310, %308, %200
  %313 = phi float [ 0.000000e+00, %200 ], [ %311, %310 ], [ 0.000000e+00, %308 ]
  %314 = phi float [ 0.000000e+00, %200 ], [ 0x47EFFFFFE0000000, %310 ], [ %304, %308 ]
  %315 = fcmp fast oeq float %314, 0.000000e+00
  br i1 %315, label %319, label %316, !dx.controlflow.hints !33

; <label>:316                                     ; preds = %312
  %317 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %313)  ; FMin(a,b)
  %318 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %314)  ; FMax(a,b)
  br label %319

; <label>:319                                     ; preds = %316, %312
  %320 = phi i32 [ 1, %316 ], [ 0, %312 ]
  %321 = phi float [ %318, %316 ], [ -1.000000e+00, %312 ]
  %322 = phi float [ %317, %316 ], [ 0x47EFFFFFE0000000, %312 ]
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 3
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 0
  %327 = fsub fast float %324, %233
  %328 = fadd fast float %327, %326
  %329 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %298, float %299, float %328)  ; Dot3(ax,ay,az,bx,by,bz)
  %330 = fmul fast float %303, %329
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %333 = fsub fast float %332, %233
  %334 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %298, float %299, float %333)  ; Dot3(ax,ay,az,bx,by,bz)
  %335 = fmul fast float %303, %334
  %336 = call float @dx.op.binary.f32(i32 36, float %330, float %335)  ; FMin(a,b)
  %337 = call float @dx.op.binary.f32(i32 35, float %330, float %335)  ; FMax(a,b)
  %338 = call float @dx.op.binary.f32(i32 36, float %322, float %336)  ; FMin(a,b)
  %339 = call float @dx.op.binary.f32(i32 35, float %321, float %337)  ; FMax(a,b)
  %340 = fdiv fast float 1.000000e+00, %274
  %341 = fdiv fast float 1.000000e+00, %275
  %342 = fdiv fast float 1.000000e+00, %276
  %343 = call float @dx.op.binary.f32(i32 36, float %295, float %339)  ; FMin(a,b)
  %344 = call float @dx.op.binary.f32(i32 35, float %272, float %338)  ; FMax(a,b)
  %345 = extractvalue %dx.types.CBufRet.f32 %296, 0
  %346 = fmul fast float %220, 2.000000e+00
  %347 = fadd fast float %346, -1.000000e+00
  %348 = fmul fast float %345, %347
  %349 = fadd fast float %348, %344
  %350 = fcmp fast olt float %349, %343
  %351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.f32 %351, 2
  %353 = fcmp fast olt float %352, 1.000000e+00
  %354 = and i1 %353, %350
  br i1 %354, label %355, label %1107

; <label>:355                                     ; preds = %319
  %356 = fmul fast float %349, %276
  %357 = fadd fast float %356, %233
  %358 = fmul fast float %349, %275
  %359 = fadd fast float %358, %232
  %360 = fmul fast float %349, %274
  %361 = fadd fast float %360, %231
  br label %362

; <label>:362                                     ; preds = %1079, %355
  %363 = phi float [ %1081, %1079 ], [ undef, %355 ]
  %364 = phi float [ %1082, %1079 ], [ undef, %355 ]
  %365 = phi float [ %1083, %1079 ], [ undef, %355 ]
  %366 = phi float [ %1084, %1079 ], [ undef, %355 ]
  %367 = phi float [ %493, %1079 ], [ undef, %355 ]
  %368 = phi float [ %494, %1079 ], [ undef, %355 ]
  %369 = phi float [ %495, %1079 ], [ undef, %355 ]
  %370 = phi float [ %496, %1079 ], [ undef, %355 ]
  %371 = phi float [ %1085, %1079 ], [ 0.000000e+00, %355 ]
  %372 = phi float [ %1086, %1079 ], [ 1.000000e+00, %355 ]
  %373 = phi float [ %1087, %1079 ], [ 0.000000e+00, %355 ]
  %374 = phi float [ %1088, %1079 ], [ 0.000000e+00, %355 ]
  %375 = phi float [ %1089, %1079 ], [ 0.000000e+00, %355 ]
  %376 = phi float [ %1099, %1079 ], [ %361, %355 ]
  %377 = phi float [ %1100, %1079 ], [ %359, %355 ]
  %378 = phi float [ %1101, %1079 ], [ %357, %355 ]
  %379 = phi float [ %1080, %1079 ], [ %349, %355 ]
  %380 = phi i32 [ %498, %1079 ], [ 10, %355 ]
  %381 = phi float [ %1090, %1079 ], [ 0.000000e+00, %355 ]
  %382 = phi float [ %1091, %1079 ], [ 0.000000e+00, %355 ]
  %383 = phi float [ %1092, %1079 ], [ 0.000000e+00, %355 ]
  %384 = phi float [ %1093, %1079 ], [ 0.000000e+00, %355 ]
  %385 = phi float [ %1094, %1079 ], [ 0.000000e+00, %355 ]
  %386 = phi i32 [ %1095, %1079 ], [ 0, %355 ]
  %387 = fsub fast float -0.000000e+00, %377
  %388 = fsub fast float -0.000000e+00, %376
  %389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %390 = extractvalue %dx.types.CBufRet.f32 %389, 0
  %391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %392 = extractvalue %dx.types.CBufRet.f32 %391, 0
  %393 = extractvalue %dx.types.CBufRet.f32 %391, 1
  %394 = fsub fast float %376, %392
  %395 = fsub fast float %377, %393
  %396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %397 = extractvalue %dx.types.CBufRet.f32 %396, 2
  %398 = extractvalue %dx.types.CBufRet.f32 %396, 3
  %399 = fmul fast float %394, %397
  %400 = fmul fast float %395, %398
  %401 = call float @dx.op.binary.f32(i32 36, float %399, float %400)  ; FMin(a,b)
  %402 = fcmp fast olt float %401, 0.000000e+00
  %403 = call float @dx.op.binary.f32(i32 35, float %399, float %400)  ; FMax(a,b)
  %404 = fcmp fast ogt float %403, 1.000000e+00
  %405 = or i1 %402, %404
  %406 = extractvalue %dx.types.CBufRet.f32 %391, 2
  %407 = fcmp fast olt float %378, %406
  %408 = or i1 %405, %407
  %409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.f32 %409, 3
  %411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %412 = extractvalue %dx.types.CBufRet.f32 %411, 0
  %413 = fadd fast float %412, %410
  %414 = fcmp fast ogt float %378, %413
  %415 = or i1 %408, %414
  br i1 %415, label %416, label %445, !dx.controlflow.hints !34

; <label>:416                                     ; preds = %362
  %417 = extractvalue %dx.types.CBufRet.f32 %396, 0
  %418 = extractvalue %dx.types.CBufRet.f32 %396, 1
  %419 = fsub fast float %392, %376
  %420 = fmul fast float %419, %340
  %421 = fadd fast float %419, %417
  %422 = fmul fast float %421, %340
  %423 = call float @dx.op.binary.f32(i32 36, float %420, float %422)  ; FMin(a,b)
  %424 = call float @dx.op.binary.f32(i32 35, float %420, float %422)  ; FMax(a,b)
  %425 = fsub fast float %393, %377
  %426 = fmul fast float %425, %341
  %427 = fadd fast float %425, %418
  %428 = fmul fast float %427, %341
  %429 = call float @dx.op.binary.f32(i32 36, float %426, float %428)  ; FMin(a,b)
  %430 = call float @dx.op.binary.f32(i32 35, float %423, float %429)  ; FMax(a,b)
  %431 = call float @dx.op.binary.f32(i32 35, float %426, float %428)  ; FMax(a,b)
  %432 = call float @dx.op.binary.f32(i32 36, float %424, float %431)  ; FMin(a,b)
  %433 = fsub fast float %406, %378
  %434 = fmul fast float %433, %342
  %435 = fsub fast float %410, %378
  %436 = fadd fast float %435, %412
  %437 = fmul fast float %436, %342
  %438 = call float @dx.op.binary.f32(i32 36, float %434, float %437)  ; FMin(a,b)
  %439 = call float @dx.op.binary.f32(i32 35, float %430, float %438)  ; FMax(a,b)
  %440 = call float @dx.op.binary.f32(i32 35, float %434, float %437)  ; FMax(a,b)
  %441 = call float @dx.op.binary.f32(i32 36, float %432, float %440)  ; FMin(a,b)
  %442 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %439)  ; FMax(a,b)
  %443 = fcmp fast oge float %441, %442
  %444 = select i1 %443, float %439, float 1.000000e+07
  br label %491

; <label>:445                                     ; preds = %362
  %446 = fsub fast float 1.000000e+00, %400
  %447 = icmp eq i32 %380, 0
  br i1 %447, label %476, label %448

; <label>:448                                     ; preds = %445
  br label %449

; <label>:449                                     ; preds = %472, %448
  %450 = phi i32 [ %473, %472 ], [ %380, %448 ]
  %451 = uitofp i32 %450 to float
  %452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %399, float %446, float undef, float undef, i32 0, i32 0, i32 undef, float %451)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 0
  %454 = extractvalue %dx.types.ResRet.f32 %452, 1
  %455 = extractvalue %dx.types.ResRet.f32 %452, 2
  %456 = fcmp fast oeq float %453, 0.000000e+00
  %457 = fcmp ule float %378, %455
  %458 = fcmp uge float %378, %454
  %459 = or i1 %458, %457
  %460 = or i1 %456, %459
  br i1 %460, label %461, label %472, !dx.controlflow.hints !35

; <label>:461                                     ; preds = %449
  %462 = extractvalue %dx.types.ResRet.f32 %452, 3
  %463 = extractvalue %dx.types.CBufRet.f32 %396, 0
  %464 = and i32 %450, 31
  %465 = lshr i32 1024, %464
  %466 = uitofp i32 %465 to float
  %467 = fdiv fast float %463, %466
  %468 = add i32 %450, 1
  %469 = uitofp i32 %468 to float
  %470 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %469)  ; FMin(a,b)
  %471 = fptosi float %470 to i32
  br label %491

; <label>:472                                     ; preds = %449
  %473 = add i32 %450, -1
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %449, !llvm.loop !36

; <label>:475                                     ; preds = %472
  br label %476

; <label>:476                                     ; preds = %475, %445
  %477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %399, float %446, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = extractvalue %dx.types.ResRet.f32 %477, 1
  %480 = extractvalue %dx.types.ResRet.f32 %477, 2
  %481 = extractvalue %dx.types.ResRet.f32 %477, 3
  %482 = extractvalue %dx.types.CBufRet.f32 %396, 0
  %483 = fmul fast float %482, 9.765625e-04
  %484 = fcmp fast oeq float %478, 0.000000e+00
  %485 = fcmp ule float %378, %480
  %486 = fcmp uge float %378, %479
  %487 = or i1 %486, %485
  %488 = or i1 %484, %487
  %489 = zext i1 %488 to i32
  %490 = xor i32 %489, 1
  br label %491

; <label>:491                                     ; preds = %476, %461, %416
  %492 = phi float [ %444, %416 ], [ %467, %461 ], [ %483, %476 ]
  %493 = phi float [ %367, %416 ], [ %453, %461 ], [ %478, %476 ]
  %494 = phi float [ %368, %416 ], [ %454, %461 ], [ %479, %476 ]
  %495 = phi float [ %369, %416 ], [ %455, %461 ], [ %480, %476 ]
  %496 = phi float [ %370, %416 ], [ %462, %461 ], [ %481, %476 ]
  %497 = phi i32 [ 0, %416 ], [ 0, %461 ], [ %490, %476 ]
  %498 = phi i32 [ 10, %416 ], [ %471, %461 ], [ 1, %476 ]
  %499 = icmp eq i32 %497, 0
  %500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %501 = extractvalue %dx.types.CBufRet.f32 %500, 2
  %502 = call float @dx.op.binary.f32(i32 35, float %492, float %501)  ; FMax(a,b)
  %503 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %502)  ; FMin(a,b)
  %504 = icmp eq i32 %320, 0
  br i1 %504, label %517, label %505, !dx.controlflow.hints !38

; <label>:505                                     ; preds = %491
  %506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.f32 %506, 3
  %508 = extractvalue %dx.types.CBufRet.f32 %506, 2
  %509 = fmul fast float %507, %379
  %510 = fdiv fast float %509, %343
  %511 = fadd fast float %510, 1.000000e+00
  %512 = call float @dx.op.unary.f32(i32 23, float %511)  ; Log(value)
  %513 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %512)  ; FMin(a,b)
  %514 = fmul fast float %508, %343
  %515 = fmul fast float %514, %513
  %516 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %515)  ; FMin(a,b)
  br label %517

; <label>:517                                     ; preds = %505, %491
  %518 = phi float [ %516, %505 ], [ 0x47EFFFFFE0000000, %491 ]
  %519 = extractvalue %dx.types.CBufRet.f32 %389, 2
  %520 = fmul fast float %519, %379
  %521 = call float @dx.op.unary.f32(i32 23, float %520)  ; Log(value)
  %522 = fmul fast float %521, 0x3FE62E4300000000
  %523 = call float @dx.op.binary.f32(i32 35, float %522, float 1.000000e+00)  ; FMax(a,b)
  %524 = fmul fast float %523, %518
  %525 = call float @dx.op.binary.f32(i32 36, float %524, float %503)  ; FMin(a,b)
  %526 = call float @dx.op.binary.f32(i32 35, float %525, float %390)  ; FMax(a,b)
  %527 = fadd fast float %343, 0x3F1A36E2E0000000
  %528 = fsub fast float %527, %379
  %529 = call float @dx.op.binary.f32(i32 36, float %528, float %526)  ; FMin(a,b)
  br i1 %504, label %584, label %530, !dx.controlflow.hints !39

; <label>:530                                     ; preds = %517
  %531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %532 = extractvalue %dx.types.CBufRet.f32 %531, 0
  %533 = fsub fast float %532, %378
  %534 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %388, float %387, float %533)  ; Dot3(ax,ay,az,bx,by,bz)
  %535 = fmul fast float %303, %534
  %536 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %535)  ; FMax(a,b)
  %537 = fcmp fast olt float %276, 0.000000e+00
  %538 = call float @dx.op.binary.f32(i32 36, float %529, float %536)  ; FMin(a,b)
  br i1 %537, label %540, label %539, !dx.controlflow.hints !40

; <label>:539                                     ; preds = %530
  br label %540

; <label>:540                                     ; preds = %539, %530
  %541 = phi float [ 0.000000e+00, %539 ], [ %538, %530 ]
  %542 = phi float [ %538, %539 ], [ %529, %530 ]
  %543 = phi float [ %538, %539 ], [ 0.000000e+00, %530 ]
  %544 = phi float [ %529, %539 ], [ %538, %530 ]
  %545 = fsub fast float %542, %541
  %546 = extractvalue %dx.types.CBufRet.f32 %531, 1
  %547 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %546)  ; FMin(a,b)
  %548 = fsub fast float %378, %532
  %549 = fmul fast float %547, 0x3FF7154760000000
  %550 = fmul fast float %549, %548
  %551 = call float @dx.op.unary.f32(i32 21, float %550)  ; Exp(value)
  %552 = fmul fast float %276, 0x3FF7154760000000
  %553 = fmul fast float %552, %544
  %554 = fmul fast float %553, %547
  %555 = call float @dx.op.unary.f32(i32 21, float %554)  ; Exp(value)
  %556 = fmul fast float %552, %543
  %557 = fmul fast float %556, %547
  %558 = call float @dx.op.unary.f32(i32 21, float %557)  ; Exp(value)
  %559 = fsub fast float %555, %558
  %560 = fmul fast float %559, %551
  %561 = fmul fast float %547, %276
  %562 = fdiv fast float %560, %561
  %563 = fadd fast float %545, %562
  %564 = call float @dx.op.unary.f32(i32 6, float %276)  ; FAbs(value)
  %565 = fcmp fast olt float %564, 0x3F0FFB4800000000
  %566 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %548)  ; FMax(a,b)
  %567 = fmul fast float %566, 0x3FF7154760000000
  %568 = fmul fast float %567, %546
  %569 = call float @dx.op.unary.f32(i32 21, float %568)  ; Exp(value)
  %570 = fmul fast float %569, %529
  %571 = select i1 %565, float %570, float %563
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %574 = fmul fast float %571, %573
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 0
  %577 = extractvalue %dx.types.CBufRet.f32 %575, 1
  %578 = extractvalue %dx.types.CBufRet.f32 %575, 2
  %579 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %580 = fmul fast float %576, %574
  %581 = fmul fast float %577, %574
  %582 = fmul fast float %578, %574
  %583 = fmul fast float %579, %574
  br label %584

; <label>:584                                     ; preds = %540, %517
  %585 = phi float [ %574, %540 ], [ 0.000000e+00, %517 ]
  %586 = phi float [ %583, %540 ], [ 0.000000e+00, %517 ]
  %587 = phi float [ %580, %540 ], [ 0.000000e+00, %517 ]
  %588 = phi float [ %581, %540 ], [ 0.000000e+00, %517 ]
  %589 = phi float [ %582, %540 ], [ 0.000000e+00, %517 ]
  br i1 %499, label %732, label %590, !dx.controlflow.hints !41

; <label>:590                                     ; preds = %584
  %591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %592 = extractvalue %dx.types.CBufRet.f32 %591, 0
  %593 = extractvalue %dx.types.CBufRet.f32 %591, 1
  %594 = extractvalue %dx.types.CBufRet.f32 %591, 2
  %595 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.i32 %595, 0
  %597 = icmp ne i32 %596, 0
  %598 = zext i1 %597 to i32
  %599 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.i32 %599, 0
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %635, label %602

; <label>:602                                     ; preds = %590
  br label %603

; <label>:603                                     ; preds = %630, %602
  %604 = phi i32 [ %631, %630 ], [ 0, %602 ]
  %605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %604, i32 0)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 0
  %607 = extractvalue %dx.types.ResRet.f32 %605, 1
  %608 = extractvalue %dx.types.ResRet.f32 %605, 2
  %609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %604, i32 16)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = extractvalue %dx.types.ResRet.f32 %609, 1
  %612 = extractvalue %dx.types.ResRet.f32 %609, 2
  %613 = fsub fast float %606, %610
  %614 = fsub fast float %607, %611
  %615 = fsub fast float %608, %612
  %616 = fadd fast float %610, %606
  %617 = fadd fast float %611, %607
  %618 = fadd fast float %612, %608
  %619 = fcmp fast olt float %376, %613
  %620 = fcmp fast olt float %377, %614
  %621 = fcmp fast olt float %378, %615
  %622 = or i1 %619, %620
  %623 = or i1 %621, %622
  %624 = fcmp fast ogt float %376, %616
  %625 = fcmp fast ogt float %377, %617
  %626 = fcmp fast ogt float %378, %618
  %627 = or i1 %624, %625
  %628 = or i1 %626, %627
  %629 = or i1 %623, %628
  br i1 %629, label %630, label %633, !dx.controlflow.hints !42

; <label>:630                                     ; preds = %603
  %631 = add nuw i32 %604, 1
  %632 = icmp ult i32 %631, %600
  br i1 %632, label %603, label %633

; <label>:633                                     ; preds = %630, %603
  %634 = phi i32 [ 255, %630 ], [ %604, %603 ]
  br label %635

; <label>:635                                     ; preds = %633, %590
  %636 = phi i32 [ 255, %590 ], [ %634, %633 ]
  %637 = icmp eq i32 %636, 255
  br i1 %637, label %647, label %638, !dx.controlflow.hints !43

; <label>:638                                     ; preds = %635
  %639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %636, i32 32)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = extractvalue %dx.types.ResRet.f32 %639, 1
  %642 = extractvalue %dx.types.ResRet.f32 %639, 2
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %636, i32 156)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = icmp ne i32 %644, 0
  %646 = zext i1 %645 to i32
  br label %647

; <label>:647                                     ; preds = %638, %635
  %648 = phi float [ %640, %638 ], [ %592, %635 ]
  %649 = phi float [ %641, %638 ], [ %593, %635 ]
  %650 = phi float [ %642, %638 ], [ %594, %635 ]
  %651 = phi i32 [ %646, %638 ], [ %598, %635 ]
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %653, label %722, !dx.controlflow.hints !44

; <label>:653                                     ; preds = %647
  %654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %655 = extractvalue %dx.types.CBufRet.f32 %654, 3
  %656 = extractvalue %dx.types.CBufRet.f32 %409, 0
  %657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.f32 %657, 2
  %659 = extractvalue %dx.types.CBufRet.f32 %657, 3
  br i1 %637, label %670, label %660, !dx.controlflow.hints !45

; <label>:660                                     ; preds = %653
  %661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %636, i32 60)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.f32 %661, 0
  %663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %636, i32 64)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.f32 %663, 0
  %665 = extractvalue %dx.types.ResRet.f32 %663, 1
  %666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %636, i32 72)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.f32 %666, 0
  %668 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %636, i32 96)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.f32 %668, 0
  br label %670

; <label>:670                                     ; preds = %660, %653
  %671 = phi float [ %662, %660 ], [ %412, %653 ]
  %672 = phi float [ %667, %660 ], [ %410, %653 ]
  %673 = phi float [ %669, %660 ], [ %656, %653 ]
  %674 = phi float [ %664, %660 ], [ %658, %653 ]
  %675 = phi float [ %665, %660 ], [ %659, %653 ]
  %676 = call float @dx.op.binary.f32(i32 35, float %493, float 0.000000e+00)  ; FMax(a,b)
  %677 = call float @dx.op.binary.f32(i32 36, float %676, float 1.000000e+00)  ; FMin(a,b)
  %678 = call float @dx.op.unary.f32(i32 24, float %677)  ; Sqrt(value)
  %679 = call float @dx.op.binary.f32(i32 35, float %496, float 0x3F847AE140000000)  ; FMax(a,b)
  %680 = fsub fast float %494, %378
  %681 = fsub fast float %378, %495
  %682 = call float @dx.op.binary.f32(i32 36, float %681, float %680)  ; FMin(a,b)
  %683 = fdiv fast float %682, %679
  %684 = call float @dx.op.unary.f32(i32 7, float %683)  ; Saturate(value)
  %685 = fsub fast float %378, %672
  %686 = fdiv fast float %685, %671
  %687 = call float @dx.op.unary.f32(i32 7, float %686)  ; Saturate(value)
  %688 = fsub fast float 1.000000e+00, %687
  %689 = fmul float %684, %688
  %690 = fmul float %689, %689
  %691 = fmul fast float %678, %655
  %692 = fmul fast float %691, %690
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 2
  %695 = extractvalue %dx.types.CBufRet.f32 %693, 1
  %696 = fsub fast float %692, %695
  %697 = fsub fast float %694, %695
  %698 = fdiv fast float %696, %697
  %699 = call float @dx.op.unary.f32(i32 7, float %698)  ; Saturate(value)
  %700 = fmul fast float %699, %673
  %701 = fcmp fast ogt float %675, 0.000000e+00
  br i1 %701, label %702, label %722, !dx.controlflow.hints !46

; <label>:702                                     ; preds = %670
  %703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %704 = extractvalue %dx.types.CBufRet.f32 %703, 0
  %705 = extractvalue %dx.types.CBufRet.f32 %703, 1
  %706 = extractvalue %dx.types.CBufRet.f32 %703, 2
  %707 = fsub fast float %376, %704
  %708 = fsub fast float %377, %705
  %709 = fsub fast float %378, %706
  %710 = fmul fast float %707, %707
  %711 = fmul fast float %708, %708
  %712 = fadd fast float %710, %711
  %713 = fmul fast float %709, %709
  %714 = fadd fast float %712, %713
  %715 = call float @dx.op.unary.f32(i32 24, float %714)  ; Sqrt(value)
  %716 = fsub fast float %715, %674
  %717 = fsub fast float %675, %674
  %718 = fdiv fast float %716, %717
  %719 = call float @dx.op.unary.f32(i32 7, float %718)  ; Saturate(value)
  %720 = fmul fast float %719, %719
  %721 = fmul fast float %720, %700
  br label %722

; <label>:722                                     ; preds = %702, %670, %647
  %723 = phi float [ 0.000000e+00, %647 ], [ %721, %702 ], [ %700, %670 ]
  %724 = fmul fast float %723, %529
  %725 = fmul fast float %724, %648
  %726 = fmul fast float %724, %649
  %727 = fmul fast float %724, %650
  %728 = fadd fast float %725, %587
  %729 = fadd fast float %726, %588
  %730 = fadd fast float %727, %589
  %731 = fadd fast float %724, %585
  br label %732

; <label>:732                                     ; preds = %722, %584
  %733 = phi float [ %731, %722 ], [ %585, %584 ]
  %734 = phi float [ %728, %722 ], [ %587, %584 ]
  %735 = phi float [ %729, %722 ], [ %588, %584 ]
  %736 = phi float [ %730, %722 ], [ %589, %584 ]
  %737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %738 = extractvalue %dx.types.CBufRet.f32 %737, 1
  %739 = fcmp fast ogt float %733, %738
  br i1 %739, label %740, label %746, !dx.controlflow.hints !47

; <label>:740                                     ; preds = %732
  %741 = fdiv fast float 1.000000e+00, %733
  %742 = fmul fast float %741, %734
  %743 = fmul fast float %741, %735
  %744 = fmul fast float %741, %736
  %745 = fmul fast float %741, %586
  br label %746

; <label>:746                                     ; preds = %740, %732
  %747 = phi float [ %745, %740 ], [ %586, %732 ]
  %748 = phi float [ %742, %740 ], [ %734, %732 ]
  %749 = phi float [ %743, %740 ], [ %735, %732 ]
  %750 = phi float [ %744, %740 ], [ %736, %732 ]
  br i1 %739, label %753, label %751, !dx.controlflow.hints !48

; <label>:751                                     ; preds = %746
  %752 = fadd fast float %529, %379
  br label %1079

; <label>:753                                     ; preds = %746
  %754 = fmul fast float %733, 0xBFF7154760000000
  %755 = call float @dx.op.unary.f32(i32 21, float %754)  ; Exp(value)
  %756 = call float @dx.op.unary.f32(i32 7, float %755)  ; Saturate(value)
  %757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %758 = extractvalue %dx.types.CBufRet.f32 %757, 3
  %759 = fcmp fast une float %758, 0.000000e+00
  %760 = extractvalue %dx.types.CBufRet.f32 %757, 0
  %761 = extractvalue %dx.types.CBufRet.f32 %757, 1
  %762 = extractvalue %dx.types.CBufRet.f32 %757, 2
  br i1 %759, label %763, label %785, !dx.controlflow.hints !49

; <label>:763                                     ; preds = %753
  %764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.f32 %764, 0
  %766 = extractvalue %dx.types.CBufRet.f32 %764, 1
  %767 = extractvalue %dx.types.CBufRet.f32 %764, 2
  %768 = call float @dx.op.dot3.f32(i32 55, float %760, float %761, float %762, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %769 = fcmp fast ogt float %747, 0.000000e+00
  %770 = select i1 %769, float 1.000000e+00, float -1.000000e+00
  %771 = fmul fast float %770, 5.000000e-01
  %772 = fmul fast float %771, %768
  %773 = fmul fast float %770, %747
  %774 = fadd fast float %772, 4.921875e-01
  %775 = fadd fast float %773, -3.125000e-02
  %776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %12, float %774, float 0x3FB25F3060000000, float %775, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %777 = extractvalue %dx.types.ResRet.f32 %776, 0
  %778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %779 = extractvalue %dx.types.CBufRet.f32 %778, 0
  %780 = fmul fast float %777, 0x400921FB60000000
  %781 = fmul fast float %780, %779
  %782 = fmul fast float %781, %765
  %783 = fmul fast float %781, %766
  %784 = fmul fast float %781, %767
  br label %785

; <label>:785                                     ; preds = %763, %753
  %786 = phi float [ %782, %763 ], [ 0.000000e+00, %753 ]
  %787 = phi float [ %783, %763 ], [ 0.000000e+00, %753 ]
  %788 = phi float [ %784, %763 ], [ 0.000000e+00, %753 ]
  %789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %790 = extractvalue %dx.types.CBufRet.f32 %789, 0
  %791 = fmul fast float %790, %760
  %792 = fmul fast float %790, %761
  %793 = fmul fast float %790, %762
  %794 = fadd fast float %791, %376
  %795 = fadd fast float %792, %377
  %796 = fadd fast float %793, %378
  %797 = fsub fast float %794, %392
  %798 = fsub fast float %795, %393
  %799 = fmul fast float %797, %397
  %800 = fmul fast float %798, %398
  %801 = call float @dx.op.binary.f32(i32 36, float %799, float %800)  ; FMin(a,b)
  %802 = fcmp fast olt float %801, 0.000000e+00
  %803 = call float @dx.op.binary.f32(i32 35, float %799, float %800)  ; FMax(a,b)
  %804 = fcmp fast ogt float %803, 1.000000e+00
  %805 = or i1 %802, %804
  %806 = fcmp fast olt float %796, %406
  %807 = or i1 %805, %806
  %808 = fcmp fast ogt float %796, %413
  %809 = or i1 %807, %808
  br i1 %809, label %824, label %810, !dx.controlflow.hints !34

; <label>:810                                     ; preds = %785
  %811 = fsub fast float 1.000000e+00, %800
  %812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %799, float %811, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %813 = extractvalue %dx.types.ResRet.f32 %812, 0
  %814 = extractvalue %dx.types.ResRet.f32 %812, 1
  %815 = extractvalue %dx.types.ResRet.f32 %812, 2
  %816 = extractvalue %dx.types.ResRet.f32 %812, 3
  %817 = fcmp fast oeq float %813, 0.000000e+00
  %818 = fcmp ule float %796, %815
  %819 = fcmp uge float %796, %814
  %820 = or i1 %819, %818
  %821 = or i1 %817, %820
  %822 = zext i1 %821 to i32
  %823 = xor i32 %822, 1
  br label %824

; <label>:824                                     ; preds = %810, %785
  %825 = phi float [ %813, %810 ], [ %363, %785 ]
  %826 = phi float [ %814, %810 ], [ %364, %785 ]
  %827 = phi float [ %815, %810 ], [ %365, %785 ]
  %828 = phi float [ %816, %810 ], [ %366, %785 ]
  %829 = phi i32 [ %823, %810 ], [ 0, %785 ]
  %830 = icmp eq i32 %829, 0
  br i1 %504, label %880, label %831, !dx.controlflow.hints !39

; <label>:831                                     ; preds = %824
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 0
  %834 = fsub fast float -0.000000e+00, %794
  %835 = fsub fast float -0.000000e+00, %795
  %836 = fsub fast float %833, %796
  %837 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %834, float %835, float %836)  ; Dot3(ax,ay,az,bx,by,bz)
  %838 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %760, float %761, float %762)  ; Dot3(ax,ay,az,bx,by,bz)
  %839 = fdiv fast float 1.000000e+00, %838
  %840 = fmul fast float %839, %837
  %841 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %840)  ; FMax(a,b)
  %842 = fcmp fast olt float %762, 0.000000e+00
  %843 = call float @dx.op.binary.f32(i32 36, float %790, float %841)  ; FMin(a,b)
  br i1 %842, label %845, label %844, !dx.controlflow.hints !40

; <label>:844                                     ; preds = %831
  br label %845

; <label>:845                                     ; preds = %844, %831
  %846 = phi float [ 0.000000e+00, %844 ], [ %843, %831 ]
  %847 = phi float [ %843, %844 ], [ %790, %831 ]
  %848 = phi float [ %843, %844 ], [ 0.000000e+00, %831 ]
  %849 = phi float [ %790, %844 ], [ %843, %831 ]
  %850 = fsub fast float %847, %846
  %851 = extractvalue %dx.types.CBufRet.f32 %832, 1
  %852 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %851)  ; FMin(a,b)
  %853 = fsub fast float %796, %833
  %854 = fmul fast float %852, 0x3FF7154760000000
  %855 = fmul fast float %854, %853
  %856 = call float @dx.op.unary.f32(i32 21, float %855)  ; Exp(value)
  %857 = fmul fast float %762, 0x3FF7154760000000
  %858 = fmul fast float %857, %849
  %859 = fmul fast float %858, %852
  %860 = call float @dx.op.unary.f32(i32 21, float %859)  ; Exp(value)
  %861 = fmul fast float %857, %848
  %862 = fmul fast float %861, %852
  %863 = call float @dx.op.unary.f32(i32 21, float %862)  ; Exp(value)
  %864 = fsub fast float %860, %863
  %865 = fmul fast float %864, %856
  %866 = fmul fast float %852, %762
  %867 = fdiv fast float %865, %866
  %868 = fadd fast float %850, %867
  %869 = call float @dx.op.unary.f32(i32 6, float %762)  ; FAbs(value)
  %870 = fcmp fast olt float %869, 0x3F0FFB4800000000
  %871 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %853)  ; FMax(a,b)
  %872 = fmul fast float %871, 0x3FF7154760000000
  %873 = fmul fast float %872, %851
  %874 = call float @dx.op.unary.f32(i32 21, float %873)  ; Exp(value)
  %875 = fmul fast float %874, %790
  %876 = select i1 %870, float %875, float %868
  %877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %878 = extractvalue %dx.types.CBufRet.f32 %877, 1
  %879 = fmul fast float %876, %878
  br label %880

; <label>:880                                     ; preds = %845, %824
  %881 = phi float [ %879, %845 ], [ 0.000000e+00, %824 ]
  br i1 %830, label %1007, label %882, !dx.controlflow.hints !41

; <label>:882                                     ; preds = %880
  %883 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %884 = extractvalue %dx.types.CBufRet.i32 %883, 0
  %885 = icmp ne i32 %884, 0
  %886 = zext i1 %885 to i32
  %887 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %888 = extractvalue %dx.types.CBufRet.i32 %887, 0
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %923, label %890

; <label>:890                                     ; preds = %882
  br label %891

; <label>:891                                     ; preds = %918, %890
  %892 = phi i32 [ %919, %918 ], [ 0, %890 ]
  %893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %892, i32 0)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.f32 %893, 0
  %895 = extractvalue %dx.types.ResRet.f32 %893, 1
  %896 = extractvalue %dx.types.ResRet.f32 %893, 2
  %897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %892, i32 16)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.f32 %897, 0
  %899 = extractvalue %dx.types.ResRet.f32 %897, 1
  %900 = extractvalue %dx.types.ResRet.f32 %897, 2
  %901 = fsub fast float %894, %898
  %902 = fsub fast float %895, %899
  %903 = fsub fast float %896, %900
  %904 = fadd fast float %898, %894
  %905 = fadd fast float %899, %895
  %906 = fadd fast float %900, %896
  %907 = fcmp fast olt float %794, %901
  %908 = fcmp fast olt float %795, %902
  %909 = fcmp fast olt float %796, %903
  %910 = or i1 %907, %908
  %911 = or i1 %909, %910
  %912 = fcmp fast ogt float %794, %904
  %913 = fcmp fast ogt float %795, %905
  %914 = fcmp fast ogt float %796, %906
  %915 = or i1 %912, %913
  %916 = or i1 %914, %915
  %917 = or i1 %911, %916
  br i1 %917, label %918, label %921, !dx.controlflow.hints !42

; <label>:918                                     ; preds = %891
  %919 = add nuw i32 %892, 1
  %920 = icmp ult i32 %919, %888
  br i1 %920, label %891, label %921

; <label>:921                                     ; preds = %918, %891
  %922 = phi i32 [ 255, %918 ], [ %892, %891 ]
  br label %923

; <label>:923                                     ; preds = %921, %882
  %924 = phi i32 [ 255, %882 ], [ %922, %921 ]
  %925 = icmp eq i32 %924, 255
  br i1 %925, label %931, label %926, !dx.controlflow.hints !43

; <label>:926                                     ; preds = %923
  %927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %924, i32 156)  ; BufferLoad(srv,index,wot)
  %928 = extractvalue %dx.types.ResRet.i32 %927, 0
  %929 = icmp ne i32 %928, 0
  %930 = zext i1 %929 to i32
  br label %931

; <label>:931                                     ; preds = %926, %923
  %932 = phi i32 [ %930, %926 ], [ %886, %923 ]
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %934, label %1003, !dx.controlflow.hints !44

; <label>:934                                     ; preds = %931
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 3
  %937 = extractvalue %dx.types.CBufRet.f32 %409, 0
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 2
  %940 = extractvalue %dx.types.CBufRet.f32 %938, 3
  br i1 %925, label %951, label %941, !dx.controlflow.hints !45

; <label>:941                                     ; preds = %934
  %942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %924, i32 60)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.f32 %942, 0
  %944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %924, i32 64)  ; BufferLoad(srv,index,wot)
  %945 = extractvalue %dx.types.ResRet.f32 %944, 0
  %946 = extractvalue %dx.types.ResRet.f32 %944, 1
  %947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %924, i32 72)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.f32 %947, 0
  %949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %924, i32 96)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.f32 %949, 0
  br label %951

; <label>:951                                     ; preds = %941, %934
  %952 = phi float [ %943, %941 ], [ %412, %934 ]
  %953 = phi float [ %948, %941 ], [ %410, %934 ]
  %954 = phi float [ %950, %941 ], [ %937, %934 ]
  %955 = phi float [ %945, %941 ], [ %939, %934 ]
  %956 = phi float [ %946, %941 ], [ %940, %934 ]
  %957 = call float @dx.op.binary.f32(i32 35, float %825, float 0.000000e+00)  ; FMax(a,b)
  %958 = call float @dx.op.binary.f32(i32 36, float %957, float 1.000000e+00)  ; FMin(a,b)
  %959 = call float @dx.op.unary.f32(i32 24, float %958)  ; Sqrt(value)
  %960 = call float @dx.op.binary.f32(i32 35, float %828, float 0x3F847AE140000000)  ; FMax(a,b)
  %961 = fsub fast float %826, %796
  %962 = fsub fast float %796, %827
  %963 = call float @dx.op.binary.f32(i32 36, float %962, float %961)  ; FMin(a,b)
  %964 = fdiv fast float %963, %960
  %965 = call float @dx.op.unary.f32(i32 7, float %964)  ; Saturate(value)
  %966 = fsub fast float %796, %953
  %967 = fdiv fast float %966, %952
  %968 = call float @dx.op.unary.f32(i32 7, float %967)  ; Saturate(value)
  %969 = fsub fast float 1.000000e+00, %968
  %970 = fmul float %965, %969
  %971 = fmul float %970, %970
  %972 = fmul fast float %959, %936
  %973 = fmul fast float %972, %971
  %974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %975 = extractvalue %dx.types.CBufRet.f32 %974, 2
  %976 = extractvalue %dx.types.CBufRet.f32 %974, 1
  %977 = fsub fast float %973, %976
  %978 = fsub fast float %975, %976
  %979 = fdiv fast float %977, %978
  %980 = call float @dx.op.unary.f32(i32 7, float %979)  ; Saturate(value)
  %981 = fmul fast float %980, %954
  %982 = fcmp fast ogt float %956, 0.000000e+00
  br i1 %982, label %983, label %1003, !dx.controlflow.hints !46

; <label>:983                                     ; preds = %951
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 0
  %986 = extractvalue %dx.types.CBufRet.f32 %984, 1
  %987 = extractvalue %dx.types.CBufRet.f32 %984, 2
  %988 = fsub fast float %794, %985
  %989 = fsub fast float %795, %986
  %990 = fsub fast float %796, %987
  %991 = fmul fast float %988, %988
  %992 = fmul fast float %989, %989
  %993 = fadd fast float %991, %992
  %994 = fmul fast float %990, %990
  %995 = fadd fast float %993, %994
  %996 = call float @dx.op.unary.f32(i32 24, float %995)  ; Sqrt(value)
  %997 = fsub fast float %996, %955
  %998 = fsub fast float %956, %955
  %999 = fdiv fast float %997, %998
  %1000 = call float @dx.op.unary.f32(i32 7, float %999)  ; Saturate(value)
  %1001 = fmul fast float %1000, %1000
  %1002 = fmul fast float %1001, %981
  br label %1003

; <label>:1003                                    ; preds = %983, %951, %931
  %1004 = phi float [ 0.000000e+00, %931 ], [ %1002, %983 ], [ %981, %951 ]
  %1005 = fmul fast float %1004, %790
  %1006 = fadd fast float %1005, %881
  br label %1007

; <label>:1007                                    ; preds = %1003, %880
  %1008 = phi float [ %1006, %1003 ], [ %881, %880 ]
  %1009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1010 = extractvalue %dx.types.CBufRet.f32 %1009, 3
  %1011 = fmul fast float %1008, 0xBFF7154760000000
  %1012 = fmul fast float %1011, %1010
  %1013 = call float @dx.op.unary.f32(i32 21, float %1012)  ; Exp(value)
  %1014 = call float @dx.op.unary.f32(i32 7, float %1013)  ; Saturate(value)
  %1015 = fmul fast float %1014, %786
  %1016 = fmul fast float %1014, %787
  %1017 = fmul fast float %1014, %788
  %1018 = fadd fast float %1015, %201
  %1019 = fadd fast float %1016, %202
  %1020 = fadd fast float %1017, %203
  %1021 = fsub fast float 1.000000e+00, %756
  %1022 = fmul fast float %748, %372
  %1023 = fmul fast float %1022, %1021
  %1024 = fmul fast float %1023, %1018
  %1025 = fmul fast float %749, %372
  %1026 = fmul fast float %1025, %1021
  %1027 = fmul fast float %1026, %1019
  %1028 = fmul fast float %750, %372
  %1029 = fmul fast float %1028, %1021
  %1030 = fmul fast float %1029, %1020
  %1031 = fadd fast float %1024, %373
  %1032 = fadd fast float %1027, %374
  %1033 = fadd fast float %1030, %375
  %1034 = fdiv fast float %733, %529
  %1035 = fadd fast float %529, %379
  %1036 = fmul fast float %379, %379
  %1037 = fmul fast float %1035, %1035
  %1038 = fsub fast float %1036, %1037
  %1039 = fmul fast float %1038, -5.000000e-01
  %1040 = fmul fast float %1039, %1034
  %1041 = fadd fast float %1040, %371
  %1042 = fadd fast float %733, %381
  %1043 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1044 = extractvalue %dx.types.CBufRet.i32 %1043, 0
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1072, label %1046, !dx.controlflow.hints !50

; <label>:1046                                    ; preds = %1007
  %1047 = icmp ne i32 %386, 0
  %1048 = zext i1 %1047 to i32
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 2
  %1051 = extractvalue %dx.types.CBufRet.f32 %1049, 0
  %1052 = fsub fast float %1035, %1051
  %1053 = fmul fast float %1052, %1050
  %1054 = call float @dx.op.unary.f32(i32 7, float %1053)  ; Saturate(value)
  %1055 = fadd fast float %1054, -5.000000e-01
  %1056 = fmul fast float %1055, 2.000000e+00
  %1057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1058 = extractvalue %dx.types.CBufRet.f32 %1057, 2
  %1059 = fcmp fast olt float %1056, %1058
  br i1 %1059, label %1060, label %1072, !dx.controlflow.hints !51

; <label>:1060                                    ; preds = %1046
  %1061 = fmul fast float %1056, %1056
  %1062 = fmul fast float %1021, %372
  %1063 = fmul fast float %1056, %1062
  %1064 = fmul fast float %1061, %1062
  %1065 = fmul fast float %1063, %1061
  %1066 = fmul fast float %1061, %1061
  %1067 = fmul fast float %1066, %1062
  %1068 = fadd fast float %1063, %382
  %1069 = fadd fast float %1064, %383
  %1070 = fadd fast float %1065, %384
  %1071 = fadd fast float %1067, %385
  br label %1072

; <label>:1072                                    ; preds = %1060, %1046, %1007
  %1073 = phi float [ %382, %1007 ], [ %1068, %1060 ], [ %382, %1046 ]
  %1074 = phi float [ %383, %1007 ], [ %1069, %1060 ], [ %383, %1046 ]
  %1075 = phi float [ %384, %1007 ], [ %1070, %1060 ], [ %384, %1046 ]
  %1076 = phi float [ %385, %1007 ], [ %1071, %1060 ], [ %385, %1046 ]
  %1077 = phi i32 [ %386, %1007 ], [ 1, %1060 ], [ %1048, %1046 ]
  %1078 = fmul fast float %756, %372
  br label %1079

; <label>:1079                                    ; preds = %1072, %751
  %1080 = phi float [ %752, %751 ], [ %1035, %1072 ]
  %1081 = phi float [ %363, %751 ], [ %825, %1072 ]
  %1082 = phi float [ %364, %751 ], [ %826, %1072 ]
  %1083 = phi float [ %365, %751 ], [ %827, %1072 ]
  %1084 = phi float [ %366, %751 ], [ %828, %1072 ]
  %1085 = phi float [ %371, %751 ], [ %1041, %1072 ]
  %1086 = phi float [ %372, %751 ], [ %1078, %1072 ]
  %1087 = phi float [ %373, %751 ], [ %1031, %1072 ]
  %1088 = phi float [ %374, %751 ], [ %1032, %1072 ]
  %1089 = phi float [ %375, %751 ], [ %1033, %1072 ]
  %1090 = phi float [ %381, %751 ], [ %1042, %1072 ]
  %1091 = phi float [ %382, %751 ], [ %1073, %1072 ]
  %1092 = phi float [ %383, %751 ], [ %1074, %1072 ]
  %1093 = phi float [ %384, %751 ], [ %1075, %1072 ]
  %1094 = phi float [ %385, %751 ], [ %1076, %1072 ]
  %1095 = phi i32 [ %386, %751 ], [ %1077, %1072 ]
  %1096 = fmul fast float %529, %274
  %1097 = fmul fast float %529, %275
  %1098 = fmul fast float %529, %276
  %1099 = fadd fast float %1096, %376
  %1100 = fadd fast float %1097, %377
  %1101 = fadd fast float %1098, %378
  %1102 = fcmp fast olt float %1080, %343
  %1103 = extractvalue %dx.types.CBufRet.f32 %737, 2
  %1104 = fcmp fast olt float %1103, %1086
  %1105 = and i1 %1102, %1104
  br i1 %1105, label %362, label %1106

; <label>:1106                                    ; preds = %1079
  br label %1107

; <label>:1107                                    ; preds = %1106, %319
  %1108 = phi float [ 0.000000e+00, %319 ], [ %1085, %1106 ]
  %1109 = phi float [ 1.000000e+00, %319 ], [ %1086, %1106 ]
  %1110 = phi float [ 0.000000e+00, %319 ], [ %1087, %1106 ]
  %1111 = phi float [ 0.000000e+00, %319 ], [ %1088, %1106 ]
  %1112 = phi float [ 0.000000e+00, %319 ], [ %1089, %1106 ]
  %1113 = phi float [ 0.000000e+00, %319 ], [ %1090, %1106 ]
  %1114 = phi float [ 0.000000e+00, %319 ], [ %1091, %1106 ]
  %1115 = phi float [ 0.000000e+00, %319 ], [ %1092, %1106 ]
  %1116 = phi float [ 0.000000e+00, %319 ], [ %1093, %1106 ]
  %1117 = phi float [ 0.000000e+00, %319 ], [ %1094, %1106 ]
  %1118 = phi i32 [ 0, %319 ], [ %1095, %1106 ]
  %1119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.i32 %1119, 0
  %1121 = icmp eq i32 %1120, 0
  br i1 %1121, label %1163, label %1122, !dx.controlflow.hints !52

; <label>:1122                                    ; preds = %1107
  %1123 = icmp eq i32 %1118, 0
  br i1 %1123, label %1162, label %1124, !dx.controlflow.hints !53

; <label>:1124                                    ; preds = %1122
  %1125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.i32 %1125, 2
  %1127 = icmp eq i32 %1126, 0
  br i1 %1127, label %1134, label %1128, !dx.controlflow.hints !54

; <label>:1128                                    ; preds = %1124
  %1129 = fsub fast float 1.000000e+00, %1109
  %1130 = fdiv fast float %1114, %1129
  %1131 = fdiv fast float %1115, %1129
  %1132 = fdiv fast float %1116, %1129
  %1133 = fdiv fast float %1117, %1129
  br label %1139

; <label>:1134                                    ; preds = %1124
  %1135 = fadd fast float %1114, %1109
  %1136 = fadd fast float %1115, %1109
  %1137 = fadd fast float %1116, %1109
  %1138 = fadd fast float %1117, %1109
  br label %1139

; <label>:1139                                    ; preds = %1134, %1128
  %1140 = phi float [ %1130, %1128 ], [ %1135, %1134 ]
  %1141 = phi float [ %1131, %1128 ], [ %1136, %1134 ]
  %1142 = phi float [ %1132, %1128 ], [ %1137, %1134 ]
  %1143 = phi float [ %1133, %1128 ], [ %1138, %1134 ]
  %1144 = call float @dx.op.binary.f32(i32 35, float %1140, float -1.000000e+00)  ; FMax(a,b)
  %1145 = call float @dx.op.binary.f32(i32 35, float %1141, float -1.000000e+00)  ; FMax(a,b)
  %1146 = call float @dx.op.binary.f32(i32 35, float %1142, float -1.000000e+00)  ; FMax(a,b)
  %1147 = call float @dx.op.binary.f32(i32 35, float %1143, float -1.000000e+00)  ; FMax(a,b)
  %1148 = call float @dx.op.binary.f32(i32 36, float %1144, float 1.000000e+00)  ; FMin(a,b)
  %1149 = call float @dx.op.binary.f32(i32 36, float %1145, float 1.000000e+00)  ; FMin(a,b)
  %1150 = call float @dx.op.binary.f32(i32 36, float %1146, float 1.000000e+00)  ; FMin(a,b)
  %1151 = call float @dx.op.binary.f32(i32 36, float %1147, float 1.000000e+00)  ; FMin(a,b)
  %1152 = fmul fast float %1148, 1.500000e+00
  %1153 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1150, float %1152)  ; FMad(a,b,c)
  %1154 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1149, float 0.000000e+00)  ; FMad(a,b,c)
  %1155 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1151, float %1154)  ; FMad(a,b,c)
  %1156 = fmul fast float %1148, 0x3FEBB67AE0000000
  %1157 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1150, float %1156)  ; FMad(a,b,c)
  %1158 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1149, float 0.000000e+00)  ; FMad(a,b,c)
  %1159 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1151, float %1158)  ; FMad(a,b,c)
  %1160 = fadd fast float %1153, 5.000000e-01
  %1161 = fadd fast float %1157, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %16, i32 %17, i32 0, float %1160, float %1155, float %1161, float %1159, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1163

; <label>:1162                                    ; preds = %1122
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %16, i32 %17, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1163

; <label>:1163                                    ; preds = %1162, %1139, %1107
  %1164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1165 = extractvalue %dx.types.CBufRet.f32 %1164, 2
  %1166 = fsub fast float %1109, %1165
  %1167 = fdiv fast float %1166, %1165
  %1168 = call float @dx.op.unary.f32(i32 7, float %1167)  ; Saturate(value)
  %1169 = fmul fast float %1168, 2.000000e+00
  %1170 = fsub fast float 3.000000e+00, %1169
  %1171 = fmul fast float %1168, %1168
  %1172 = fmul fast float %1171, %1109
  %1173 = fmul fast float %1172, %1170
  %1174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1175 = extractvalue %dx.types.CBufRet.f32 %1174, 0
  %1176 = extractvalue %dx.types.CBufRet.f32 %1174, 1
  %1177 = extractvalue %dx.types.CBufRet.f32 %1174, 2
  %1178 = call float @dx.op.dot3.f32(i32 55, float %274, float %275, float %276, float %1175, float %1176, float %1177)  ; Dot3(ax,ay,az,bx,by,bz)
  %1179 = fmul fast float %1178, %1108
  %1180 = fcmp fast ogt float %1113, 0.000000e+00
  %1181 = fdiv fast float 1.000000e+00, %1113
  %1182 = fmul fast float %1179, %1181
  %1183 = select i1 %1180, float %1182, float %285
  %1184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1184, 0
  %1186 = extractvalue %dx.types.CBufRet.f32 %1184, 1
  %1187 = extractvalue %dx.types.CBufRet.f32 %1184, 2
  %1188 = fmul fast float %1185, %238
  %1189 = fmul fast float %1186, %238
  %1190 = fmul fast float %1187, %238
  %1191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1192 = extractvalue %dx.types.CBufRet.f32 %1191, 0
  %1193 = extractvalue %dx.types.CBufRet.f32 %1191, 1
  %1194 = extractvalue %dx.types.CBufRet.f32 %1191, 2
  %1195 = fmul fast float %1192, %239
  %1196 = fmul fast float %1193, %239
  %1197 = fmul fast float %1194, %239
  %1198 = fadd fast float %1195, %1188
  %1199 = fadd fast float %1196, %1189
  %1200 = fadd fast float %1197, %1190
  %1201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1201, 0
  %1203 = extractvalue %dx.types.CBufRet.f32 %1201, 1
  %1204 = extractvalue %dx.types.CBufRet.f32 %1201, 2
  %1205 = fadd fast float %1198, %1202
  %1206 = fadd fast float %1199, %1203
  %1207 = fadd fast float %1200, %1204
  %1208 = fmul fast float %1205, %1183
  %1209 = fmul fast float %1206, %1183
  %1210 = fmul fast float %1207, %1183
  %1211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1212 = extractvalue %dx.types.CBufRet.f32 %1211, 0
  %1213 = extractvalue %dx.types.CBufRet.f32 %1211, 1
  %1214 = extractvalue %dx.types.CBufRet.f32 %1211, 2
  %1215 = extractvalue %dx.types.CBufRet.f32 %1211, 3
  %1216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1216, 0
  %1218 = extractvalue %dx.types.CBufRet.f32 %1216, 1
  %1219 = extractvalue %dx.types.CBufRet.f32 %1216, 2
  %1220 = extractvalue %dx.types.CBufRet.f32 %1216, 3
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 0
  %1223 = extractvalue %dx.types.CBufRet.f32 %1221, 1
  %1224 = extractvalue %dx.types.CBufRet.f32 %1221, 2
  %1225 = extractvalue %dx.types.CBufRet.f32 %1221, 3
  %1226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1227 = extractvalue %dx.types.CBufRet.f32 %1226, 0
  %1228 = extractvalue %dx.types.CBufRet.f32 %1226, 1
  %1229 = extractvalue %dx.types.CBufRet.f32 %1226, 2
  %1230 = extractvalue %dx.types.CBufRet.f32 %1226, 3
  %1231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.f32 %1231, 3
  %1233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1234 = extractvalue %dx.types.CBufRet.f32 %1233, 3
  %1235 = extractvalue %dx.types.CBufRet.f32 %1233, 0
  %1236 = extractvalue %dx.types.CBufRet.f32 %1233, 1
  %1237 = extractvalue %dx.types.CBufRet.f32 %1233, 2
  %1238 = fcmp fast olt float %1237, -5.000000e-01
  %1239 = call float @dx.op.dot3.f32(i32 55, float %1208, float %1209, float %1210, float %1208, float %1209, float %1210)  ; Dot3(ax,ay,az,bx,by,bz)
  %1240 = call float @dx.op.unary.f32(i32 25, float %1239)  ; Rsqrt(value)
  %1241 = fmul fast float %1240, %1239
  %1242 = fmul fast float %1240, %1208
  %1243 = fmul fast float %1240, %1209
  %1244 = fmul fast float %1240, %1210
  %1245 = fadd fast float %1241, %1215
  %1246 = call float @dx.op.dot3.f32(i32 55, float %1242, float %1243, float %1244, float %1212, float %1213, float %1214)  ; Dot3(ax,ay,az,bx,by,bz)
  %1247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1248 = extractvalue %dx.types.CBufRet.i32 %1247, 1
  %1249 = and i32 %1248, 1
  %1250 = icmp ne i32 %1249, 0
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 2
  %1253 = fcmp fast ogt float %1252, 0.000000e+00
  %1254 = and i1 %1250, %1253
  br i1 %1254, label %1255, label %1661, !dx.controlflow.hints !55

; <label>:1255                                    ; preds = %1163
  %1256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.f32 %1256, 3
  %1258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.f32 %1258, 2
  %1260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1261 = extractvalue %dx.types.CBufRet.f32 %1260, 2
  %1262 = fsub fast float %1259, %1261
  %1263 = and i32 %1248, 2
  %1264 = extractvalue %dx.types.CBufRet.i32 %1247, 0
  %1265 = call i32 @dx.op.binary.i32(i32 40, i32 %1264, i32 3)  ; UMin(a,b)
  %1266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.f32 %1266, 0
  %1268 = extractvalue %dx.types.CBufRet.f32 %1266, 1
  %1269 = extractvalue %dx.types.CBufRet.f32 %1260, 0
  %1270 = extractvalue %dx.types.CBufRet.f32 %1260, 1
  %1271 = fsub fast float %1267, %1269
  %1272 = fsub fast float %1268, %1270
  %1273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1274 = extractvalue %dx.types.CBufRet.f32 %1273, 0
  %1275 = fcmp fast ogt float %1274, 0.000000e+00
  %1276 = fsub fast float -0.000000e+00, %1271
  %1277 = fsub fast float -0.000000e+00, %1272
  %1278 = call float @dx.op.dot2.f32(i32 54, float %1242, float %1243, float %1242, float %1243)  ; Dot2(ax,ay,bx,by)
  %1279 = call float @dx.op.dot2.f32(i32 54, float %1242, float %1243, float %1276, float %1277)  ; Dot2(ax,ay,bx,by)
  %1280 = fmul fast float %1279, 2.000000e+00
  %1281 = call float @dx.op.dot2.f32(i32 54, float %1276, float %1277, float %1276, float %1277)  ; Dot2(ax,ay,bx,by)
  %1282 = fmul fast float %1274, %1274
  %1283 = fsub fast float %1281, %1282
  %1284 = fmul fast float %1280, %1280
  %1285 = fmul fast float %1278, 4.000000e+00
  %1286 = fmul fast float %1285, %1283
  %1287 = fsub fast float %1284, %1286
  %1288 = fcmp fast ogt float %1287, 0.000000e+00
  br i1 %1288, label %1289, label %1304, !dx.controlflow.hints !56

; <label>:1289                                    ; preds = %1255
  %1290 = fcmp fast ogt float %1280, 0.000000e+00
  %1291 = call float @dx.op.unary.f32(i32 24, float %1287)  ; Sqrt(value)
  %1292 = fsub fast float -0.000000e+00, %1291
  %1293 = select i1 %1290, float %1291, float %1292
  %1294 = fadd fast float %1293, %1280
  %1295 = fmul float %1294, -5.000000e-01
  %1296 = fdiv fast float %1295, %1278
  %1297 = call float @dx.op.binary.f32(i32 35, float %1296, float 0.000000e+00)  ; FMax(a,b)
  %1298 = call float @dx.op.binary.f32(i32 36, float %1241, float %1297)  ; FMin(a,b)
  %1299 = fdiv fast float %1283, %1295
  %1300 = call float @dx.op.binary.f32(i32 35, float %1299, float 0.000000e+00)  ; FMax(a,b)
  %1301 = call float @dx.op.binary.f32(i32 36, float %1241, float %1300)  ; FMin(a,b)
  %1302 = call float @dx.op.binary.f32(i32 36, float %1298, float %1301)  ; FMin(a,b)
  %1303 = call float @dx.op.binary.f32(i32 35, float %1298, float %1301)  ; FMax(a,b)
  br label %1304

; <label>:1304                                    ; preds = %1289, %1255
  %1305 = phi float [ %1303, %1289 ], [ -1.000000e+00, %1255 ]
  %1306 = phi float [ %1302, %1289 ], [ -1.000000e+00, %1255 ]
  %1307 = phi i1 [ true, %1289 ], [ false, %1255 ]
  %1308 = and i1 %1275, %1307
  br i1 %1308, label %1309, label %1311, !dx.controlflow.hints !57

; <label>:1309                                    ; preds = %1304
  %1310 = fcmp fast oeq float %1306, %1305
  br i1 %1310, label %1614, label %1312, !dx.controlflow.hints !58

; <label>:1311                                    ; preds = %1304
  br i1 %1275, label %1614, label %1312, !dx.controlflow.hints !59

; <label>:1312                                    ; preds = %1311, %1309
  %1313 = phi float [ %1241, %1311 ], [ %1305, %1309 ]
  %1314 = phi float [ 0.000000e+00, %1311 ], [ %1306, %1309 ]
  %1315 = icmp ne i32 %1263, 0
  %1316 = fmul fast float %1313, %1244
  %1317 = fadd fast float %1316, %1257
  %1318 = fmul fast float %1317, %1313
  %1319 = select i1 %1315, float 0.000000e+00, float %1318
  %1320 = fcmp fast oeq float %1244, 0.000000e+00
  %1321 = fdiv fast float %1262, %1244
  %1322 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1321)  ; FMax(a,b)
  %1323 = select i1 %1320, float %1313, float %1322
  %1324 = call float @dx.op.binary.f32(i32 36, float %1313, float %1323)  ; FMin(a,b)
  %1325 = fcmp fast ogt float %1244, 0.000000e+00
  %1326 = fcmp fast olt float %1262, 0.000000e+00
  br i1 %1325, label %1327, label %1384, !dx.controlflow.hints !60

; <label>:1327                                    ; preds = %1312
  %1328 = icmp eq i32 %1263, 0
  br i1 %1326, label %1329, label %1373, !dx.controlflow.hints !61

; <label>:1329                                    ; preds = %1327
  %1330 = select i1 %1328, float %1313, float 0.000000e+00
  %1331 = fsub fast float -0.000000e+00, %1330
  %1332 = call float @dx.op.unary.f32(i32 6, float %1331)  ; FAbs(value)
  %1333 = fmul fast float %1330, %1244
  %1334 = fadd fast float %1333, %1257
  %1335 = fmul fast float %1332, %1334
  %1336 = fsub fast float %1319, %1335
  %1337 = fsub fast float %1313, %1332
  %1338 = select i1 %1328, float %1337, float 0.000000e+00
  %1339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1339, 0
  %1341 = extractvalue %dx.types.CBufRet.f32 %1339, 1
  %1342 = extractvalue %dx.types.CBufRet.f32 %1339, 2
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 0
  %1345 = extractvalue %dx.types.CBufRet.f32 %1343, 1
  %1346 = extractvalue %dx.types.CBufRet.f32 %1343, 2
  %1347 = extractvalue %dx.types.CBufRet.f32 %1343, 3
  %1348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1349 = extractvalue %dx.types.CBufRet.f32 %1348, 3
  %1350 = call float @dx.op.binary.f32(i32 36, float %1336, float %1349)  ; FMin(a,b)
  %1351 = fmul fast float %1347, %1338
  %1352 = call float @dx.op.unary.f32(i32 7, float %1351)  ; Saturate(value)
  %1353 = fsub fast float %1344, %1340
  %1354 = fsub fast float %1345, %1341
  %1355 = fsub fast float %1346, %1342
  %1356 = fmul fast float %1352, %1353
  %1357 = fmul fast float %1352, %1354
  %1358 = fmul fast float %1352, %1355
  %1359 = fadd fast float %1356, %1340
  %1360 = fadd fast float %1357, %1341
  %1361 = fadd fast float %1358, %1342
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 0
  %1364 = extractvalue %dx.types.CBufRet.f32 %1362, 1
  %1365 = fadd fast float %1364, %1363
  %1366 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1367 = extractvalue %dx.types.CBufRet.f32 %1362, 2
  %1368 = extractvalue %dx.types.CBufRet.f32 %1362, 3
  %1369 = fadd fast float %1368, %1367
  %1370 = call float @dx.op.unary.f32(i32 7, float %1369)  ; Saturate(value)
  %1371 = fmul fast float %1366, %1350
  %1372 = fmul fast float %1371, %1370
  br label %1614

; <label>:1373                                    ; preds = %1327
  br i1 %1328, label %1374, label %1395, !dx.controlflow.hints !62

; <label>:1374                                    ; preds = %1373
  %1375 = call float @dx.op.binary.f32(i32 36, float %1324, float %1314)  ; FMin(a,b)
  %1376 = fsub fast float %1324, %1375
  %1377 = fsub fast float %1376, %1313
  %1378 = call float @dx.op.unary.f32(i32 6, float %1377)  ; FAbs(value)
  %1379 = fadd fast float %1376, %1313
  %1380 = fmul fast float %1379, %1244
  %1381 = fadd fast float %1380, %1257
  %1382 = fmul fast float %1381, %1378
  %1383 = fsub fast float %1319, %1382
  br label %1395

; <label>:1384                                    ; preds = %1312
  br i1 %1326, label %1385, label %1395, !dx.controlflow.hints !63

; <label>:1385                                    ; preds = %1384
  %1386 = call float @dx.op.binary.f32(i32 35, float %1314, float %1324)  ; FMax(a,b)
  %1387 = icmp eq i32 %1263, 0
  %1388 = select i1 %1387, float %1324, float 0.000000e+00
  %1389 = fsub fast float -0.000000e+00, %1388
  %1390 = call float @dx.op.unary.f32(i32 6, float %1389)  ; FAbs(value)
  %1391 = fmul fast float %1388, %1244
  %1392 = fadd fast float %1391, %1257
  %1393 = fmul fast float %1390, %1392
  %1394 = fsub fast float %1319, %1393
  br label %1395

; <label>:1395                                    ; preds = %1385, %1384, %1374, %1373
  %1396 = phi float [ %1314, %1373 ], [ %1314, %1374 ], [ %1386, %1385 ], [ %1314, %1384 ]
  %1397 = phi float [ 0.000000e+00, %1373 ], [ %1378, %1374 ], [ %1390, %1385 ], [ 0.000000e+00, %1384 ]
  %1398 = phi float [ %1319, %1373 ], [ %1383, %1374 ], [ %1394, %1385 ], [ %1319, %1384 ]
  %1399 = phi float [ %1324, %1373 ], [ %1324, %1374 ], [ %1313, %1385 ], [ %1313, %1384 ]
  %1400 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 0
  store float -1.000000e+00, float* %1400, align 4, !tbaa !64, !noalias !68
  %1401 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 1
  store float -1.000000e+00, float* %1401, align 4, !tbaa !64, !noalias !68
  %1402 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 2
  store float -1.000000e+00, float* %1402, align 4, !tbaa !64, !noalias !68
  %1403 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 0
  store float -1.000000e+00, float* %1403, align 4, !tbaa !64, !noalias !68
  %1404 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 1
  store float -1.000000e+00, float* %1404, align 4, !tbaa !64, !noalias !68
  %1405 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 2
  store float -1.000000e+00, float* %1405, align 4, !tbaa !64, !noalias !68
  %1406 = icmp sgt i32 %1265, 0
  br i1 %1406, label %1407, label %1468

; <label>:1407                                    ; preds = %1395
  br label %1408

; <label>:1408                                    ; preds = %1457, %1407
  %1409 = phi i32 [ %1458, %1457 ], [ 0, %1407 ]
  %1410 = phi i32 [ %1459, %1457 ], [ 0, %1407 ]
  %1411 = add nuw i32 %1410, 171
  %1412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %1411)  ; CBufferLoadLegacy(handle,regIndex)
  %1413 = extractvalue %dx.types.CBufRet.f32 %1412, 0
  %1414 = extractvalue %dx.types.CBufRet.f32 %1412, 1
  %1415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.f32 %1415, 0
  %1417 = extractvalue %dx.types.CBufRet.f32 %1415, 1
  %1418 = fsub fast float %1413, %1416
  %1419 = fsub fast float %1414, %1417
  %1420 = extractvalue %dx.types.CBufRet.f32 %1412, 2
  %1421 = fsub fast float -0.000000e+00, %1418
  %1422 = fsub fast float -0.000000e+00, %1419
  %1423 = call float @dx.op.dot2.f32(i32 54, float %1242, float %1243, float %1421, float %1422)  ; Dot2(ax,ay,bx,by)
  %1424 = fmul fast float %1423, 2.000000e+00
  %1425 = call float @dx.op.dot2.f32(i32 54, float %1421, float %1422, float %1421, float %1422)  ; Dot2(ax,ay,bx,by)
  %1426 = fmul fast float %1420, %1420
  %1427 = fsub fast float %1425, %1426
  %1428 = fmul fast float %1424, %1424
  %1429 = fmul fast float %1285, %1427
  %1430 = fsub fast float %1428, %1429
  %1431 = fcmp fast ogt float %1430, 0.000000e+00
  br i1 %1431, label %1432, label %1447, !dx.controlflow.hints !56

; <label>:1432                                    ; preds = %1408
  %1433 = fcmp fast ogt float %1424, 0.000000e+00
  %1434 = call float @dx.op.unary.f32(i32 24, float %1430)  ; Sqrt(value)
  %1435 = fsub fast float -0.000000e+00, %1434
  %1436 = select i1 %1433, float %1434, float %1435
  %1437 = fadd fast float %1436, %1424
  %1438 = fmul float %1437, -5.000000e-01
  %1439 = fdiv fast float %1438, %1278
  %1440 = call float @dx.op.binary.f32(i32 35, float %1439, float 0.000000e+00)  ; FMax(a,b)
  %1441 = call float @dx.op.binary.f32(i32 36, float %1313, float %1440)  ; FMin(a,b)
  %1442 = fdiv fast float %1427, %1438
  %1443 = call float @dx.op.binary.f32(i32 35, float %1442, float 0.000000e+00)  ; FMax(a,b)
  %1444 = call float @dx.op.binary.f32(i32 36, float %1313, float %1443)  ; FMin(a,b)
  %1445 = call float @dx.op.binary.f32(i32 36, float %1441, float %1444)  ; FMin(a,b)
  %1446 = call float @dx.op.binary.f32(i32 35, float %1441, float %1444)  ; FMax(a,b)
  br label %1447

; <label>:1447                                    ; preds = %1432, %1408
  %1448 = phi float [ %1446, %1432 ], [ -1.000000e+00, %1408 ]
  %1449 = phi float [ %1445, %1432 ], [ -1.000000e+00, %1408 ]
  %1450 = phi i1 [ true, %1432 ], [ false, %1408 ]
  br i1 %1450, label %1451, label %1457, !dx.controlflow.hints !79

; <label>:1451                                    ; preds = %1447
  %1452 = call float @dx.op.binary.f32(i32 35, float %1396, float %1449)  ; FMax(a,b)
  %1453 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %1410
  store float %1452, float* %1453, align 4, !tbaa !64, !noalias !68
  %1454 = call float @dx.op.binary.f32(i32 35, float %1396, float %1448)  ; FMax(a,b)
  %1455 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %1410
  store float %1454, float* %1455, align 4, !tbaa !64, !noalias !68
  %1456 = add nsw i32 %1409, 1
  br label %1457

; <label>:1457                                    ; preds = %1451, %1447
  %1458 = phi i32 [ %1456, %1451 ], [ %1409, %1447 ]
  %1459 = add nuw nsw i32 %1410, 1
  %1460 = icmp eq i32 %1459, %1265
  br i1 %1460, label %1461, label %1408

; <label>:1461                                    ; preds = %1457
  %1462 = load float, float* %1402, align 4, !tbaa !64, !alias.scope !80, !noalias !83
  %1463 = load float, float* %1401, align 4, !tbaa !64, !alias.scope !86, !noalias !87
  %1464 = load float, float* %1400, align 4, !tbaa !64, !alias.scope !88, !noalias !89
  %1465 = load float, float* %1405, align 4, !tbaa !64, !alias.scope !90, !noalias !93
  %1466 = load float, float* %1404, align 4, !tbaa !64, !alias.scope !96, !noalias !97
  %1467 = load float, float* %1403, align 4, !tbaa !64, !alias.scope !98, !noalias !99
  br label %1468

; <label>:1468                                    ; preds = %1461, %1395
  %1469 = phi float [ -1.000000e+00, %1395 ], [ %1467, %1461 ]
  %1470 = phi float [ -1.000000e+00, %1395 ], [ %1466, %1461 ]
  %1471 = phi float [ -1.000000e+00, %1395 ], [ %1465, %1461 ]
  %1472 = phi float [ -1.000000e+00, %1395 ], [ %1464, %1461 ]
  %1473 = phi float [ -1.000000e+00, %1395 ], [ %1463, %1461 ]
  %1474 = phi float [ -1.000000e+00, %1395 ], [ %1462, %1461 ]
  %1475 = phi i32 [ 0, %1395 ], [ %1458, %1461 ]
  %1476 = call float @dx.op.binary.f32(i32 36, float %1473, float %1474)  ; FMin(a,b)
  %1477 = call float @dx.op.binary.f32(i32 36, float %1472, float %1476)  ; FMin(a,b)
  %1478 = call float @dx.op.binary.f32(i32 35, float %1472, float %1473)  ; FMax(a,b)
  %1479 = call float @dx.op.binary.f32(i32 36, float %1478, float %1474)  ; FMin(a,b)
  %1480 = call float @dx.op.binary.f32(i32 36, float %1472, float %1473)  ; FMin(a,b)
  %1481 = call float @dx.op.binary.f32(i32 35, float %1480, float %1479)  ; FMax(a,b)
  %1482 = call float @dx.op.binary.f32(i32 35, float %1473, float %1474)  ; FMax(a,b)
  %1483 = call float @dx.op.binary.f32(i32 35, float %1472, float %1482)  ; FMax(a,b)
  store float %1477, float* %1400, align 4, !tbaa !64, !alias.scope !88, !noalias !89
  store float %1481, float* %1401, align 4, !tbaa !64, !alias.scope !86, !noalias !87
  store float %1483, float* %1402, align 4, !tbaa !64, !alias.scope !80, !noalias !83
  %1484 = call float @dx.op.binary.f32(i32 36, float %1470, float %1471)  ; FMin(a,b)
  %1485 = call float @dx.op.binary.f32(i32 36, float %1469, float %1484)  ; FMin(a,b)
  %1486 = call float @dx.op.binary.f32(i32 35, float %1469, float %1470)  ; FMax(a,b)
  %1487 = call float @dx.op.binary.f32(i32 36, float %1486, float %1471)  ; FMin(a,b)
  %1488 = call float @dx.op.binary.f32(i32 36, float %1469, float %1470)  ; FMin(a,b)
  %1489 = call float @dx.op.binary.f32(i32 35, float %1488, float %1487)  ; FMax(a,b)
  %1490 = call float @dx.op.binary.f32(i32 35, float %1470, float %1471)  ; FMax(a,b)
  %1491 = call float @dx.op.binary.f32(i32 35, float %1469, float %1490)  ; FMax(a,b)
  store float %1485, float* %1403, align 4, !tbaa !64, !alias.scope !98, !noalias !99
  store float %1489, float* %1404, align 4, !tbaa !64, !alias.scope !96, !noalias !97
  store float %1491, float* %1405, align 4, !tbaa !64, !alias.scope !90, !noalias !93
  %1492 = sub nsw i32 3, %1475
  %1493 = icmp sgt i32 %1492, 2
  br i1 %1493, label %1494, label %1532, !dx.controlflow.hints !100

; <label>:1494                                    ; preds = %1468
  %1495 = icmp eq i32 %1263, 0
  %1496 = fsub fast float %1313, %1397
  %1497 = select i1 %1495, float %1496, float %1397
  %1498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1499 = extractvalue %dx.types.CBufRet.f32 %1498, 0
  %1500 = extractvalue %dx.types.CBufRet.f32 %1498, 1
  %1501 = extractvalue %dx.types.CBufRet.f32 %1498, 2
  %1502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1503 = extractvalue %dx.types.CBufRet.f32 %1502, 0
  %1504 = extractvalue %dx.types.CBufRet.f32 %1502, 1
  %1505 = extractvalue %dx.types.CBufRet.f32 %1502, 2
  %1506 = extractvalue %dx.types.CBufRet.f32 %1502, 3
  %1507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1508 = extractvalue %dx.types.CBufRet.f32 %1507, 3
  %1509 = call float @dx.op.binary.f32(i32 36, float %1398, float %1508)  ; FMin(a,b)
  %1510 = fmul fast float %1506, %1497
  %1511 = call float @dx.op.unary.f32(i32 7, float %1510)  ; Saturate(value)
  %1512 = fsub fast float %1503, %1499
  %1513 = fsub fast float %1504, %1500
  %1514 = fsub fast float %1505, %1501
  %1515 = fmul fast float %1511, %1512
  %1516 = fmul fast float %1511, %1513
  %1517 = fmul fast float %1511, %1514
  %1518 = fadd fast float %1515, %1499
  %1519 = fadd fast float %1516, %1500
  %1520 = fadd fast float %1517, %1501
  %1521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1522 = extractvalue %dx.types.CBufRet.f32 %1521, 0
  %1523 = extractvalue %dx.types.CBufRet.f32 %1521, 1
  %1524 = fadd fast float %1523, %1522
  %1525 = call float @dx.op.unary.f32(i32 7, float %1524)  ; Saturate(value)
  %1526 = extractvalue %dx.types.CBufRet.f32 %1521, 2
  %1527 = extractvalue %dx.types.CBufRet.f32 %1521, 3
  %1528 = fadd fast float %1527, %1526
  %1529 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  %1530 = fmul fast float %1525, %1509
  %1531 = fmul fast float %1530, %1529
  br label %1614

; <label>:1532                                    ; preds = %1468
  %1533 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %1492
  %1534 = load float, float* %1533, align 4, !tbaa !64, !noalias !68
  %1535 = fcmp fast olt float %1534, %1399
  %1536 = icmp sgt i32 %1475, 0
  %1537 = and i1 %1536, %1535
  br i1 %1537, label %1538, label %1575

; <label>:1538                                    ; preds = %1532
  br label %1539

; <label>:1539                                    ; preds = %1568, %1538
  %1540 = phi float [ %1569, %1568 ], [ %1397, %1538 ]
  %1541 = phi float [ %1570, %1568 ], [ %1398, %1538 ]
  %1542 = phi float [ %1550, %1568 ], [ %1534, %1538 ]
  %1543 = phi i32 [ %1547, %1568 ], [ %1492, %1538 ]
  %1544 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %1543
  %1545 = load float, float* %1544, align 4, !tbaa !64, !noalias !68
  %1546 = icmp slt i32 %1543, 2
  %1547 = add nsw i32 %1543, 1
  %1548 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %1547
  %1549 = load float, float* %1548, align 4, !tbaa !64, !noalias !68
  %1550 = select i1 %1546, float %1549, float %1313
  %1551 = call float @dx.op.binary.f32(i32 36, float %1550, float %1545)  ; FMin(a,b)
  %1552 = call float @dx.op.binary.f32(i32 36, float %1399, float %1551)  ; FMin(a,b)
  %1553 = icmp eq i32 %1263, 0
  %1554 = fadd fast float %1552, %1542
  %1555 = fmul fast float %1554, %1244
  %1556 = fadd fast float %1555, %1257
  br i1 %1553, label %1562, label %1557, !dx.controlflow.hints !101

; <label>:1557                                    ; preds = %1539
  %1558 = fsub fast float %1552, %1542
  %1559 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1558)  ; FMax(a,b)
  %1560 = fmul fast float %1559, %1556
  %1561 = fadd fast float %1560, %1541
  br label %1568

; <label>:1562                                    ; preds = %1539
  %1563 = fsub fast float %1542, %1552
  %1564 = call float @dx.op.unary.f32(i32 6, float %1563)  ; FAbs(value)
  %1565 = fadd fast float %1564, %1540
  %1566 = fmul fast float %1564, %1556
  %1567 = fsub fast float %1541, %1566
  br label %1568

; <label>:1568                                    ; preds = %1562, %1557
  %1569 = phi float [ %1559, %1557 ], [ %1565, %1562 ]
  %1570 = phi float [ %1561, %1557 ], [ %1567, %1562 ]
  %1571 = fcmp fast olt float %1550, %1399
  %1572 = icmp slt i32 %1547, 3
  %1573 = and i1 %1572, %1571
  br i1 %1573, label %1539, label %1574

; <label>:1574                                    ; preds = %1568
  br label %1575

; <label>:1575                                    ; preds = %1574, %1532
  %1576 = phi float [ %1397, %1532 ], [ %1569, %1574 ]
  %1577 = phi float [ %1398, %1532 ], [ %1570, %1574 ]
  %1578 = fsub fast float %1313, %1576
  %1579 = select i1 %1315, float %1576, float %1578
  %1580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1581 = extractvalue %dx.types.CBufRet.f32 %1580, 0
  %1582 = extractvalue %dx.types.CBufRet.f32 %1580, 1
  %1583 = extractvalue %dx.types.CBufRet.f32 %1580, 2
  %1584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1585 = extractvalue %dx.types.CBufRet.f32 %1584, 0
  %1586 = extractvalue %dx.types.CBufRet.f32 %1584, 1
  %1587 = extractvalue %dx.types.CBufRet.f32 %1584, 2
  %1588 = extractvalue %dx.types.CBufRet.f32 %1584, 3
  %1589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1590 = extractvalue %dx.types.CBufRet.f32 %1589, 3
  %1591 = call float @dx.op.binary.f32(i32 36, float %1577, float %1590)  ; FMin(a,b)
  %1592 = fmul fast float %1588, %1579
  %1593 = call float @dx.op.unary.f32(i32 7, float %1592)  ; Saturate(value)
  %1594 = fsub fast float %1585, %1581
  %1595 = fsub fast float %1586, %1582
  %1596 = fsub fast float %1587, %1583
  %1597 = fmul fast float %1593, %1594
  %1598 = fmul fast float %1593, %1595
  %1599 = fmul fast float %1593, %1596
  %1600 = fadd fast float %1597, %1581
  %1601 = fadd fast float %1598, %1582
  %1602 = fadd fast float %1599, %1583
  %1603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.f32 %1603, 0
  %1605 = extractvalue %dx.types.CBufRet.f32 %1603, 1
  %1606 = fadd fast float %1605, %1604
  %1607 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  %1608 = extractvalue %dx.types.CBufRet.f32 %1603, 2
  %1609 = extractvalue %dx.types.CBufRet.f32 %1603, 3
  %1610 = fadd fast float %1609, %1608
  %1611 = call float @dx.op.unary.f32(i32 7, float %1610)  ; Saturate(value)
  %1612 = fmul fast float %1607, %1591
  %1613 = fmul fast float %1612, %1611
  br label %1614

; <label>:1614                                    ; preds = %1575, %1494, %1329, %1311, %1309
  %1615 = phi float [ %1338, %1329 ], [ %1497, %1494 ], [ %1579, %1575 ], [ 0.000000e+00, %1309 ], [ 0.000000e+00, %1311 ]
  %1616 = phi float [ %1372, %1329 ], [ %1531, %1494 ], [ %1613, %1575 ], [ 0.000000e+00, %1309 ], [ 0.000000e+00, %1311 ]
  %1617 = phi float [ %1359, %1329 ], [ %1518, %1494 ], [ %1600, %1575 ], [ 0.000000e+00, %1309 ], [ 0.000000e+00, %1311 ]
  %1618 = phi float [ %1360, %1329 ], [ %1519, %1494 ], [ %1601, %1575 ], [ 0.000000e+00, %1309 ], [ 0.000000e+00, %1311 ]
  %1619 = phi float [ %1361, %1329 ], [ %1520, %1494 ], [ %1602, %1575 ], [ 0.000000e+00, %1309 ], [ 0.000000e+00, %1311 ]
  %1620 = fmul fast float %1252, %1616
  %1621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1622 = extractvalue %dx.types.CBufRet.f32 %1621, 2
  %1623 = fsub fast float %1259, %1622
  %1624 = fcmp fast olt float %1620, -2.000000e+01
  %1625 = call float @dx.op.unary.f32(i32 21, float %1620)  ; Exp(value)
  %1626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1626, 2
  %1628 = extractvalue %dx.types.CBufRet.f32 %1626, 3
  %1629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1630 = extractvalue %dx.types.CBufRet.f32 %1629, 2
  %1631 = fmul fast float %1628, %1623
  %1632 = call float @dx.op.unary.f32(i32 7, float %1631)  ; Saturate(value)
  %1633 = fsub fast float 1.000000e+00, %1632
  %1634 = fmul fast float %1244, 5.000000e-01
  %1635 = fadd fast float %1634, 5.000000e-01
  %1636 = call float @dx.op.unary.f32(i32 7, float %1635)  ; Saturate(value)
  %1637 = fsub fast float 1.000000e+00, %1636
  %1638 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1633)  ; FMax(a,b)
  %1639 = fdiv fast float %1637, %1638
  %1640 = fsub fast float %1623, %1210
  %1641 = call float @dx.op.unary.f32(i32 6, float %1640)  ; FAbs(value)
  %1642 = fmul fast float %1641, %1627
  %1643 = call float @dx.op.unary.f32(i32 7, float %1639)  ; Saturate(value)
  %1644 = fsub fast float 1.000000e+00, %1642
  %1645 = fmul fast float %1644, %1643
  %1646 = fadd fast float %1645, %1642
  %1647 = fmul fast float %1630, %1623
  %1648 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1649 = fsub fast float 1.000000e+00, %1646
  %1650 = fmul fast float %1649, %1648
  %1651 = fadd fast float %1650, %1646
  %1652 = call float @dx.op.unary.f32(i32 7, float %1651)  ; Saturate(value)
  %1653 = fadd fast float %1625, -1.000000e+00
  %1654 = select i1 %1624, float -1.000000e+00, float %1653
  %1655 = fmul fast float %1652, %1654
  %1656 = fadd fast float %1655, 1.000000e+00
  %1657 = fsub fast float -0.000000e+00, %1655
  %1658 = fmul fast float %1617, %1657
  %1659 = fmul fast float %1618, %1657
  %1660 = fmul fast float %1619, %1657
  br label %1661

; <label>:1661                                    ; preds = %1614, %1163
  %1662 = phi float [ %1615, %1614 ], [ 0.000000e+00, %1163 ]
  %1663 = phi float [ %1656, %1614 ], [ 1.000000e+00, %1163 ]
  %1664 = phi float [ %1658, %1614 ], [ 0.000000e+00, %1163 ]
  %1665 = phi float [ %1659, %1614 ], [ 0.000000e+00, %1163 ]
  %1666 = phi float [ %1660, %1614 ], [ 0.000000e+00, %1163 ]
  %1667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.f32 %1667, 1
  %1669 = fsub fast float 1.000000e+00, %1663
  %1670 = fmul fast float %1669, %1245
  %1671 = fmul fast float %1670, %1668
  %1672 = fsub fast float %1245, %1671
  br i1 %1238, label %1673, label %1702, !dx.controlflow.hints !102

; <label>:1673                                    ; preds = %1661
  %1674 = fmul fast float %1246, %1235
  %1675 = fadd fast float %1674, %1236
  %1676 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1677 = fmul fast float %1217, %1672
  %1678 = fsub fast float -0.000000e+00, %1677
  %1679 = fmul fast float %1218, %1672
  %1680 = fsub fast float -0.000000e+00, %1679
  %1681 = call float @dx.op.unary.f32(i32 21, float %1678)  ; Exp(value)
  %1682 = call float @dx.op.unary.f32(i32 21, float %1680)  ; Exp(value)
  %1683 = call float @dx.op.binary.f32(i32 35, float %1225, float %1681)  ; FMax(a,b)
  %1684 = call float @dx.op.binary.f32(i32 35, float %1225, float %1682)  ; FMax(a,b)
  %1685 = fsub fast float %1684, %1683
  %1686 = fmul fast float %1685, %1676
  %1687 = fadd fast float %1686, %1683
  %1688 = call float @dx.op.unary.f32(i32 7, float %1687)  ; Saturate(value)
  %1689 = fsub fast float %1222, %1227
  %1690 = fsub fast float %1223, %1228
  %1691 = fsub fast float %1224, %1229
  %1692 = fmul fast float %1676, %1689
  %1693 = fmul fast float %1676, %1690
  %1694 = fmul fast float %1676, %1691
  %1695 = fadd fast float %1692, %1227
  %1696 = fadd fast float %1693, %1228
  %1697 = fadd fast float %1694, %1229
  %1698 = fsub fast float 1.000000e+00, %1688
  %1699 = fmul fast float %1698, %1695
  %1700 = fmul fast float %1698, %1696
  %1701 = fmul fast float %1698, %1697
  br label %1761

; <label>:1702                                    ; preds = %1661
  %1703 = fmul fast float %1672, %1234
  %1704 = call float @dx.op.unary.f32(i32 7, float %1703)  ; Saturate(value)
  %1705 = fsub fast float 2.000000e+00, %1704
  %1706 = fmul fast float %1704, 9.921875e-01
  %1707 = fmul fast float %1706, %1705
  %1708 = fadd fast float %1707, 3.906250e-03
  %1709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %12, float %1708, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1710 = extractvalue %dx.types.ResRet.f32 %1709, 0
  %1711 = fsub fast float %1704, %1710
  %1712 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1711)  ; FMax(a,b)
  %1713 = fmul fast float %1220, %1210
  %1714 = call float @dx.op.unary.f32(i32 6, float %1713)  ; FAbs(value)
  %1715 = fcmp fast ogt float %1714, 0x3EB0C6F7A0000000
  br i1 %1715, label %1716, label %1722, !dx.controlflow.hints !103

; <label>:1716                                    ; preds = %1702
  %1717 = fmul fast float %1713, 0xBFF7154760000000
  %1718 = call float @dx.op.unary.f32(i32 21, float %1717)  ; Exp(value)
  %1719 = fsub fast float 1.000000e+00, %1718
  %1720 = fdiv fast float %1719, %1713
  %1721 = fmul fast float %1720, %1230
  br label %1722

; <label>:1722                                    ; preds = %1716, %1702
  %1723 = phi float [ %1721, %1716 ], [ %1230, %1702 ]
  %1724 = fadd fast float %1723, %1232
  %1725 = fmul fast float %1724, %1712
  %1726 = fmul fast float %1217, %1725
  %1727 = fsub fast float -0.000000e+00, %1726
  %1728 = fmul fast float %1218, %1725
  %1729 = fsub fast float -0.000000e+00, %1728
  %1730 = fmul fast float %1219, %1725
  %1731 = fsub fast float -0.000000e+00, %1730
  %1732 = call float @dx.op.unary.f32(i32 21, float %1727)  ; Exp(value)
  %1733 = call float @dx.op.unary.f32(i32 21, float %1729)  ; Exp(value)
  %1734 = call float @dx.op.unary.f32(i32 21, float %1731)  ; Exp(value)
  %1735 = fmul fast float %1246, %1246
  %1736 = fadd fast float %1735, 1.000000e+00
  %1737 = fmul fast float %1736, 0x3FAE8EC8A0000000
  %1738 = fmul fast float %1737, %1227
  %1739 = fmul fast float %1737, %1228
  %1740 = fmul fast float %1737, %1229
  %1741 = fmul fast float %1246, %1225
  %1742 = fsub fast float 1.000000e+00, %1741
  %1743 = fmul fast float %1225, %1225
  %1744 = fsub fast float 1.000000e+00, %1743
  %1745 = fmul fast float %1744, 0x3FB45F3060000000
  %1746 = fmul fast float %1742, %1742
  %1747 = fdiv fast float 1.000000e+00, %1746
  %1748 = fmul fast float %1745, %1747
  %1749 = fmul fast float %1748, %1222
  %1750 = fmul fast float %1748, %1223
  %1751 = fmul fast float %1748, %1224
  %1752 = fadd fast float %1749, %1738
  %1753 = fadd fast float %1750, %1739
  %1754 = fadd fast float %1751, %1740
  %1755 = fsub fast float 1.000000e+00, %1732
  %1756 = fsub fast float 1.000000e+00, %1733
  %1757 = fsub fast float 1.000000e+00, %1734
  %1758 = fmul fast float %1752, %1755
  %1759 = fmul fast float %1753, %1756
  %1760 = fmul fast float %1754, %1757
  br label %1761

; <label>:1761                                    ; preds = %1722, %1673
  %1762 = phi float [ %1699, %1673 ], [ %1758, %1722 ]
  %1763 = phi float [ %1700, %1673 ], [ %1759, %1722 ]
  %1764 = phi float [ %1701, %1673 ], [ %1760, %1722 ]
  %1765 = phi float [ %1688, %1673 ], [ %1732, %1722 ]
  %1766 = phi float [ %1688, %1673 ], [ %1733, %1722 ]
  %1767 = phi float [ %1688, %1673 ], [ %1734, %1722 ]
  br i1 %1254, label %1768, label %1966, !dx.controlflow.hints !104

; <label>:1768                                    ; preds = %1761
  %1769 = extractvalue %dx.types.CBufRet.f32 %1667, 0
  %1770 = fmul fast float %1769, %1669
  %1771 = fsub fast float %1664, %1762
  %1772 = fsub fast float %1665, %1763
  %1773 = fsub fast float %1666, %1764
  %1774 = fmul fast float %1770, %1771
  %1775 = fmul fast float %1770, %1772
  %1776 = fmul fast float %1770, %1773
  %1777 = fadd fast float %1774, %1762
  %1778 = fadd fast float %1775, %1763
  %1779 = fadd fast float %1776, %1764
  %1780 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1765)  ; FMax(a,b)
  %1781 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1766)  ; FMax(a,b)
  %1782 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1767)  ; FMax(a,b)
  %1783 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1663)  ; FMax(a,b)
  %1784 = call float @dx.op.binary.f32(i32 35, float %1662, float %1672)  ; FMax(a,b)
  %1785 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1784)  ; FMax(a,b)
  %1786 = fdiv fast float %1662, %1785
  %1787 = call float @dx.op.unary.f32(i32 7, float %1786)  ; Saturate(value)
  %1788 = fdiv fast float %1672, %1785
  %1789 = call float @dx.op.unary.f32(i32 7, float %1788)  ; Saturate(value)
  %1790 = fcmp fast une float %1783, 1.000000e+00
  br i1 %1790, label %1791, label %1804, !dx.controlflow.hints !105

; <label>:1791                                    ; preds = %1768
  %1792 = call float @dx.op.unary.f32(i32 23, float %1783)  ; Log(value)
  %1793 = fmul fast float %1792, 0x3FE62E4300000000
  %1794 = fmul fast float %1664, %1793
  %1795 = fsub fast float -0.000000e+00, %1794
  %1796 = fmul fast float %1665, %1793
  %1797 = fsub fast float -0.000000e+00, %1796
  %1798 = fmul fast float %1666, %1793
  %1799 = fsub fast float -0.000000e+00, %1798
  %1800 = fsub fast float 1.000000e+00, %1783
  %1801 = fdiv fast float %1795, %1800
  %1802 = fdiv fast float %1797, %1800
  %1803 = fdiv fast float %1799, %1800
  br label %1804

; <label>:1804                                    ; preds = %1791, %1768
  %1805 = phi float [ %1801, %1791 ], [ %1664, %1768 ]
  %1806 = phi float [ %1802, %1791 ], [ %1665, %1768 ]
  %1807 = phi float [ %1803, %1791 ], [ %1666, %1768 ]
  %1808 = phi float [ %1793, %1791 ], [ 0.000000e+00, %1768 ]
  %1809 = fcmp fast une float %1780, 1.000000e+00
  br i1 %1809, label %1810, label %1817, !dx.controlflow.hints !106

; <label>:1810                                    ; preds = %1804
  %1811 = call float @dx.op.unary.f32(i32 23, float %1780)  ; Log(value)
  %1812 = fmul fast float %1811, 0x3FE62E4300000000
  %1813 = fmul fast float %1777, %1812
  %1814 = fsub fast float -0.000000e+00, %1813
  %1815 = fsub fast float 1.000000e+00, %1780
  %1816 = fdiv fast float %1814, %1815
  br label %1817

; <label>:1817                                    ; preds = %1810, %1804
  %1818 = phi float [ %1816, %1810 ], [ %1777, %1804 ]
  %1819 = phi float [ %1812, %1810 ], [ 0.000000e+00, %1804 ]
  %1820 = fcmp fast une float %1781, 1.000000e+00
  br i1 %1820, label %1821, label %1828, !dx.controlflow.hints !106

; <label>:1821                                    ; preds = %1817
  %1822 = call float @dx.op.unary.f32(i32 23, float %1781)  ; Log(value)
  %1823 = fmul fast float %1822, 0x3FE62E4300000000
  %1824 = fmul fast float %1778, %1823
  %1825 = fsub fast float -0.000000e+00, %1824
  %1826 = fsub fast float 1.000000e+00, %1781
  %1827 = fdiv fast float %1825, %1826
  br label %1828

; <label>:1828                                    ; preds = %1821, %1817
  %1829 = phi float [ %1827, %1821 ], [ %1778, %1817 ]
  %1830 = phi float [ %1823, %1821 ], [ 0.000000e+00, %1817 ]
  %1831 = fcmp fast une float %1782, 1.000000e+00
  br i1 %1831, label %1832, label %1839, !dx.controlflow.hints !106

; <label>:1832                                    ; preds = %1828
  %1833 = call float @dx.op.unary.f32(i32 23, float %1782)  ; Log(value)
  %1834 = fmul fast float %1833, 0x3FE62E4300000000
  %1835 = fmul fast float %1779, %1834
  %1836 = fsub fast float -0.000000e+00, %1835
  %1837 = fsub fast float 1.000000e+00, %1782
  %1838 = fdiv fast float %1836, %1837
  br label %1839

; <label>:1839                                    ; preds = %1832, %1828
  %1840 = phi float [ %1838, %1832 ], [ %1779, %1828 ]
  %1841 = phi float [ %1834, %1832 ], [ 0.000000e+00, %1828 ]
  %1842 = fmul fast float %1805, %1789
  %1843 = fmul fast float %1806, %1789
  %1844 = fmul fast float %1807, %1789
  %1845 = fmul fast float %1808, %1789
  %1846 = fmul fast float %1818, %1787
  %1847 = fmul fast float %1829, %1787
  %1848 = fmul fast float %1840, %1787
  %1849 = fmul fast float %1819, %1787
  %1850 = fmul fast float %1830, %1787
  %1851 = fmul fast float %1841, %1787
  %1852 = fadd fast float %1846, %1842
  %1853 = fadd fast float %1847, %1843
  %1854 = fadd fast float %1848, %1844
  %1855 = fadd fast float %1849, %1845
  %1856 = fadd fast float %1850, %1845
  %1857 = fadd fast float %1851, %1845
  %1858 = fcmp fast une float %1855, 0.000000e+00
  br i1 %1858, label %1859, label %1866, !dx.controlflow.hints !107

; <label>:1859                                    ; preds = %1839
  %1860 = fmul fast float %1855, 0x3FF7154760000000
  %1861 = call float @dx.op.unary.f32(i32 21, float %1860)  ; Exp(value)
  %1862 = fsub fast float 1.000000e+00, %1861
  %1863 = fmul fast float %1852, %1862
  %1864 = fsub fast float -0.000000e+00, %1863
  %1865 = fdiv fast float %1864, %1855
  br label %1866

; <label>:1866                                    ; preds = %1859, %1839
  %1867 = phi float [ %1861, %1859 ], [ 1.000000e+00, %1839 ]
  %1868 = phi float [ %1865, %1859 ], [ %1852, %1839 ]
  %1869 = fcmp fast une float %1856, 0.000000e+00
  br i1 %1869, label %1870, label %1877, !dx.controlflow.hints !107

; <label>:1870                                    ; preds = %1866
  %1871 = fmul fast float %1856, 0x3FF7154760000000
  %1872 = call float @dx.op.unary.f32(i32 21, float %1871)  ; Exp(value)
  %1873 = fsub fast float 1.000000e+00, %1872
  %1874 = fmul fast float %1853, %1873
  %1875 = fsub fast float -0.000000e+00, %1874
  %1876 = fdiv fast float %1875, %1856
  br label %1877

; <label>:1877                                    ; preds = %1870, %1866
  %1878 = phi float [ %1872, %1870 ], [ 1.000000e+00, %1866 ]
  %1879 = phi float [ %1876, %1870 ], [ %1853, %1866 ]
  %1880 = fcmp fast une float %1857, 0.000000e+00
  br i1 %1880, label %1881, label %1888, !dx.controlflow.hints !107

; <label>:1881                                    ; preds = %1877
  %1882 = fmul fast float %1857, 0x3FF7154760000000
  %1883 = call float @dx.op.unary.f32(i32 21, float %1882)  ; Exp(value)
  %1884 = fsub fast float 1.000000e+00, %1883
  %1885 = fmul fast float %1854, %1884
  %1886 = fsub fast float -0.000000e+00, %1885
  %1887 = fdiv fast float %1886, %1857
  br label %1888

; <label>:1888                                    ; preds = %1881, %1877
  %1889 = phi float [ %1883, %1881 ], [ 1.000000e+00, %1877 ]
  %1890 = phi float [ %1887, %1881 ], [ %1854, %1877 ]
  %1891 = fcmp fast ogt float %1787, %1789
  br i1 %1891, label %1892, label %1912, !dx.controlflow.hints !108

; <label>:1892                                    ; preds = %1888
  %1893 = fsub fast float 1.000000e+00, %1789
  %1894 = fmul fast float %1805, %1893
  %1895 = fmul fast float %1806, %1893
  %1896 = fmul fast float %1807, %1893
  %1897 = fmul fast float %1808, %1893
  %1898 = fcmp fast une float %1897, 0.000000e+00
  br i1 %1898, label %1899, label %1950, !dx.controlflow.hints !109

; <label>:1899                                    ; preds = %1892
  %1900 = fmul fast float %1897, 0x3FF7154760000000
  %1901 = call float @dx.op.unary.f32(i32 21, float %1900)  ; Exp(value)
  %1902 = fsub fast float 1.000000e+00, %1901
  %1903 = fmul fast float %1894, %1902
  %1904 = fsub fast float -0.000000e+00, %1903
  %1905 = fmul fast float %1895, %1902
  %1906 = fsub fast float -0.000000e+00, %1905
  %1907 = fmul fast float %1896, %1902
  %1908 = fsub fast float -0.000000e+00, %1907
  %1909 = fdiv fast float %1904, %1897
  %1910 = fdiv fast float %1906, %1897
  %1911 = fdiv fast float %1908, %1897
  br label %1950

; <label>:1912                                    ; preds = %1888
  %1913 = fsub fast float 1.000000e+00, %1787
  %1914 = fmul fast float %1818, %1913
  %1915 = fmul fast float %1829, %1913
  %1916 = fmul fast float %1840, %1913
  %1917 = fmul fast float %1819, %1913
  %1918 = fmul fast float %1830, %1913
  %1919 = fmul fast float %1841, %1913
  %1920 = fcmp fast une float %1917, 0.000000e+00
  br i1 %1920, label %1921, label %1928, !dx.controlflow.hints !107

; <label>:1921                                    ; preds = %1912
  %1922 = fmul fast float %1917, 0x3FF7154760000000
  %1923 = call float @dx.op.unary.f32(i32 21, float %1922)  ; Exp(value)
  %1924 = fsub fast float 1.000000e+00, %1923
  %1925 = fmul fast float %1914, %1924
  %1926 = fsub fast float -0.000000e+00, %1925
  %1927 = fdiv fast float %1926, %1917
  br label %1928

; <label>:1928                                    ; preds = %1921, %1912
  %1929 = phi float [ %1927, %1921 ], [ %1914, %1912 ]
  %1930 = phi float [ %1923, %1921 ], [ 1.000000e+00, %1912 ]
  %1931 = fcmp fast une float %1918, 0.000000e+00
  br i1 %1931, label %1932, label %1939, !dx.controlflow.hints !107

; <label>:1932                                    ; preds = %1928
  %1933 = fmul fast float %1918, 0x3FF7154760000000
  %1934 = call float @dx.op.unary.f32(i32 21, float %1933)  ; Exp(value)
  %1935 = fsub fast float 1.000000e+00, %1934
  %1936 = fmul fast float %1915, %1935
  %1937 = fsub fast float -0.000000e+00, %1936
  %1938 = fdiv fast float %1937, %1918
  br label %1939

; <label>:1939                                    ; preds = %1932, %1928
  %1940 = phi float [ %1938, %1932 ], [ %1915, %1928 ]
  %1941 = phi float [ %1934, %1932 ], [ 1.000000e+00, %1928 ]
  %1942 = fcmp fast une float %1919, 0.000000e+00
  br i1 %1942, label %1943, label %1950, !dx.controlflow.hints !107

; <label>:1943                                    ; preds = %1939
  %1944 = fmul fast float %1919, 0x3FF7154760000000
  %1945 = call float @dx.op.unary.f32(i32 21, float %1944)  ; Exp(value)
  %1946 = fsub fast float 1.000000e+00, %1945
  %1947 = fmul fast float %1916, %1946
  %1948 = fsub fast float -0.000000e+00, %1947
  %1949 = fdiv fast float %1948, %1919
  br label %1950

; <label>:1950                                    ; preds = %1943, %1939, %1899, %1892
  %1951 = phi float [ %1949, %1943 ], [ %1911, %1899 ], [ %1896, %1892 ], [ %1916, %1939 ]
  %1952 = phi float [ %1940, %1943 ], [ %1910, %1899 ], [ %1895, %1892 ], [ %1940, %1939 ]
  %1953 = phi float [ %1929, %1943 ], [ %1909, %1899 ], [ %1894, %1892 ], [ %1929, %1939 ]
  %1954 = phi float [ %1945, %1943 ], [ %1901, %1899 ], [ 1.000000e+00, %1892 ], [ 1.000000e+00, %1939 ]
  %1955 = phi float [ %1941, %1943 ], [ %1901, %1899 ], [ 1.000000e+00, %1892 ], [ %1941, %1939 ]
  %1956 = phi float [ %1930, %1943 ], [ %1901, %1899 ], [ 1.000000e+00, %1892 ], [ %1930, %1939 ]
  %1957 = fmul fast float %1956, %1868
  %1958 = fmul fast float %1955, %1879
  %1959 = fmul fast float %1954, %1890
  %1960 = fadd fast float %1957, %1953
  %1961 = fadd fast float %1958, %1952
  %1962 = fadd fast float %1959, %1951
  %1963 = fmul fast float %1956, %1867
  %1964 = fmul fast float %1955, %1878
  %1965 = fmul fast float %1954, %1889
  br label %1966

; <label>:1966                                    ; preds = %1950, %1761
  %1967 = phi float [ %1767, %1761 ], [ %1965, %1950 ]
  %1968 = phi float [ %1766, %1761 ], [ %1964, %1950 ]
  %1969 = phi float [ %1765, %1761 ], [ %1963, %1950 ]
  %1970 = phi float [ %1764, %1761 ], [ %1962, %1950 ]
  %1971 = phi float [ %1763, %1761 ], [ %1961, %1950 ]
  %1972 = phi float [ %1762, %1761 ], [ %1960, %1950 ]
  %1973 = fmul fast float %1969, %1110
  %1974 = fmul fast float %1968, %1111
  %1975 = fmul fast float %1967, %1112
  %1976 = fsub fast float 1.000000e+00, %1173
  %1977 = fmul fast float %1972, %1976
  %1978 = fmul fast float %1971, %1976
  %1979 = fmul fast float %1970, %1976
  %1980 = fadd fast float %1977, %1973
  %1981 = fadd fast float %1978, %1974
  %1982 = fadd fast float %1979, %1975
  %1983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1984 = extractvalue %dx.types.CBufRet.f32 %1983, 2
  %1985 = fmul fast float %1984, %1183
  %1986 = call float @dx.op.unary.f32(i32 7, float %1985)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %16, i32 %17, i32 undef, float %1173, float %1173, float %1173, float %1173, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1988 = extractvalue %dx.types.CBufRet.f32 %1987, 0
  %1989 = fmul fast float %1988, %1980
  %1990 = fmul fast float %1988, %1981
  %1991 = fmul fast float %1988, %1982
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %16, i32 %17, i32 undef, float %1989, float %1990, float %1991, float %1989, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %16, i32 %17, i32 undef, float %1986, float %1986, float %1986, float %1986, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!4 = !{!5, !15, !21, !24}
!5 = !{!6, !8, !9, !11, !12, !13, !14}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !10}
!10 = !{i32 1, i32 164}
!11 = !{i32 3, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
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
!24 = !{!25, !26}
!25 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!26 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!27 = !{void ()* @cs_fog_raymarching_air_particles, !"cs_fog_raymarching_air_particles", null, !4, !28}
!28 = !{i32 0, i64 272, i32 4, !29}
!29 = !{i32 8, i32 8, i32 1}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
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
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = !{!65, !65, i64 0}
!65 = !{!"float", !66, i64 0}
!66 = !{!"omnipotent char", !67, i64 0}
!67 = !{!"Simple C/C++ TBAA"}
!68 = !{!69, !71, !73, !74, !76, !77, !78}
!69 = distinct !{!69, !70, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!70 = distinct !{!70, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!71 = distinct !{!71, !72, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!72 = distinct !{!72, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!73 = distinct !{!73, !72, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!74 = distinct !{!74, !75, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!75 = distinct !{!75, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!76 = distinct !{!76, !75, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!77 = distinct !{!77, !75, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!78 = distinct !{!78, !75, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = !{!81}
!81 = distinct !{!81, !82, !"\01?sort@@YAXAIAM00@Z: %c"}
!82 = distinct !{!82, !"\01?sort@@YAXAIAM00@Z"}
!83 = !{!84, !85, !69, !71, !73, !74, !76, !77, !78}
!84 = distinct !{!84, !82, !"\01?sort@@YAXAIAM00@Z: %a"}
!85 = distinct !{!85, !82, !"\01?sort@@YAXAIAM00@Z: %b"}
!86 = !{!85}
!87 = !{!84, !81, !69, !71, !73, !74, !76, !77, !78}
!88 = !{!84}
!89 = !{!85, !81, !69, !71, !73, !74, !76, !77, !78}
!90 = !{!91}
!91 = distinct !{!91, !92, !"\01?sort@@YAXAIAM00@Z: %c"}
!92 = distinct !{!92, !"\01?sort@@YAXAIAM00@Z"}
!93 = !{!94, !95, !69, !71, !73, !74, !76, !77, !78}
!94 = distinct !{!94, !92, !"\01?sort@@YAXAIAM00@Z: %a"}
!95 = distinct !{!95, !92, !"\01?sort@@YAXAIAM00@Z: %b"}
!96 = !{!95}
!97 = !{!94, !91, !69, !71, !73, !74, !76, !77, !78}
!98 = !{!94}
!99 = !{!95, !91, !69, !71, !73, !74, !76, !77, !78}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}

