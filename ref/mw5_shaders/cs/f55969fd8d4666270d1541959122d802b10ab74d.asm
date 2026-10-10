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
; shader hash: 2cb0a986bb35d9aafeae4b2e0061e441
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
;                                   texture     f32          2d      T1            t27     1
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

define void @cs_fog_raymarching_air_particles_brfog() {
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
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  store float %200, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  store float %178, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  store float %156, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  br label %201

; <label>:201                                     ; preds = %60, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %202 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  %203 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  %204 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  %205 = uitofp i32 %32 to float
  %206 = uitofp i32 %33 to float
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %209 = fmul fast float %208, 0x3FE3C6EF40000000
  %210 = frem fast float %205, 2.560000e+02
  %211 = frem fast float %206, 2.560000e+02
  %212 = fptoui float %210 to i32
  %213 = fptoui float %211 to i32
  %214 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %212, i32 %213, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 1
  %216 = extractvalue %dx.types.ResRet.f32 %214, 2
  %217 = extractvalue %dx.types.ResRet.f32 %214, 3
  %218 = fadd fast float %215, %209
  %219 = fadd fast float %216, %209
  %220 = fadd fast float %217, %209
  %221 = call float @dx.op.unary.f32(i32 22, float %218)  ; Frc(value)
  %222 = call float @dx.op.unary.f32(i32 22, float %219)  ; Frc(value)
  %223 = call float @dx.op.unary.f32(i32 22, float %220)  ; Frc(value)
  %224 = fadd fast float %222, %205
  %225 = fadd fast float %223, %206
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
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 3
  %299 = fsub fast float -0.000000e+00, %232
  %300 = fsub fast float -0.000000e+00, %233
  %301 = fsub fast float %298, %234
  %302 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %299, float %300, float %301)  ; Dot3(ax,ay,az,bx,by,bz)
  %303 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %275, float %276, float %277)  ; Dot3(ax,ay,az,bx,by,bz)
  %304 = fdiv fast float 1.000000e+00, %303
  %305 = fmul fast float %304, %302
  %306 = fcmp fast olt float %305, 0.000000e+00
  %307 = fcmp fast ogt float %277, 0.000000e+00
  %308 = and i1 %307, %306
  br i1 %308, label %313, label %309, !dx.controlflow.hints !32

; <label>:309                                     ; preds = %201
  %310 = fcmp fast olt float %277, 0.000000e+00
  br i1 %310, label %311, label %313, !dx.controlflow.hints !33

; <label>:311                                     ; preds = %309
  %312 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %305)  ; FMax(a,b)
  br label %313

; <label>:313                                     ; preds = %311, %309, %201
  %314 = phi float [ 0.000000e+00, %201 ], [ %312, %311 ], [ 0.000000e+00, %309 ]
  %315 = phi float [ 0.000000e+00, %201 ], [ 0x47EFFFFFE0000000, %311 ], [ %305, %309 ]
  %316 = fcmp fast oeq float %315, 0.000000e+00
  br i1 %316, label %320, label %317, !dx.controlflow.hints !34

; <label>:317                                     ; preds = %313
  %318 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %314)  ; FMin(a,b)
  %319 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %315)  ; FMax(a,b)
  br label %320

; <label>:320                                     ; preds = %317, %313
  %321 = phi i32 [ 1, %317 ], [ 0, %313 ]
  %322 = phi float [ %319, %317 ], [ -1.000000e+00, %313 ]
  %323 = phi float [ %318, %317 ], [ 0x47EFFFFFE0000000, %313 ]
  %324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.f32 %324, 3
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 0
  %328 = fsub fast float %325, %234
  %329 = fadd fast float %328, %327
  %330 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %299, float %300, float %329)  ; Dot3(ax,ay,az,bx,by,bz)
  %331 = fmul fast float %304, %330
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 2
  %334 = fsub fast float %333, %234
  %335 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %299, float %300, float %334)  ; Dot3(ax,ay,az,bx,by,bz)
  %336 = fmul fast float %304, %335
  %337 = call float @dx.op.binary.f32(i32 36, float %331, float %336)  ; FMin(a,b)
  %338 = call float @dx.op.binary.f32(i32 35, float %331, float %336)  ; FMax(a,b)
  %339 = call float @dx.op.binary.f32(i32 36, float %323, float %337)  ; FMin(a,b)
  %340 = call float @dx.op.binary.f32(i32 35, float %322, float %338)  ; FMax(a,b)
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 2
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 3
  %345 = fsub fast float %342, %234
  %346 = fadd fast float %345, %344
  %347 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %299, float %300, float %346)  ; Dot3(ax,ay,az,bx,by,bz)
  %348 = fmul fast float %304, %347
  %349 = fcmp fast olt float %348, 0.000000e+00
  %350 = and i1 %307, %349
  br i1 %350, label %355, label %351, !dx.controlflow.hints !35

; <label>:351                                     ; preds = %320
  %352 = fcmp fast olt float %277, 0.000000e+00
  br i1 %352, label %353, label %355, !dx.controlflow.hints !36

; <label>:353                                     ; preds = %351
  %354 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %348)  ; FMax(a,b)
  br label %355

; <label>:355                                     ; preds = %353, %351, %320
  %356 = phi float [ 0.000000e+00, %320 ], [ %354, %353 ], [ 0.000000e+00, %351 ]
  %357 = phi float [ 0.000000e+00, %320 ], [ 0x47EFFFFFE0000000, %353 ], [ %348, %351 ]
  %358 = fcmp fast oeq float %357, 0.000000e+00
  br i1 %358, label %362, label %359, !dx.controlflow.hints !37

; <label>:359                                     ; preds = %355
  %360 = call float @dx.op.binary.f32(i32 36, float %339, float %356)  ; FMin(a,b)
  %361 = call float @dx.op.binary.f32(i32 35, float %340, float %357)  ; FMax(a,b)
  br label %362

; <label>:362                                     ; preds = %359, %355
  %363 = phi i32 [ 1, %359 ], [ 0, %355 ]
  %364 = phi float [ %361, %359 ], [ %340, %355 ]
  %365 = phi float [ %360, %359 ], [ %339, %355 ]
  %366 = fdiv fast float 1.000000e+00, %275
  %367 = fdiv fast float 1.000000e+00, %276
  %368 = fdiv fast float 1.000000e+00, %277
  %369 = call float @dx.op.binary.f32(i32 36, float %296, float %364)  ; FMin(a,b)
  %370 = call float @dx.op.binary.f32(i32 35, float %273, float %365)  ; FMax(a,b)
  %371 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %372 = fmul fast float %221, 2.000000e+00
  %373 = fadd fast float %372, -1.000000e+00
  %374 = fmul fast float %371, %373
  %375 = fadd fast float %374, %370
  %376 = fcmp fast olt float %375, %369
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 2
  %379 = fcmp fast olt float %378, 1.000000e+00
  %380 = and i1 %379, %376
  br i1 %380, label %381, label %1558

; <label>:381                                     ; preds = %362
  %382 = fmul fast float %375, %277
  %383 = fadd fast float %382, %234
  %384 = fmul fast float %375, %276
  %385 = fadd fast float %384, %233
  %386 = fmul fast float %375, %275
  %387 = fadd fast float %386, %232
  br label %388

; <label>:388                                     ; preds = %1528, %381
  %389 = phi i32 [ %1530, %1528 ], [ undef, %381 ]
  %390 = phi float [ %1531, %1528 ], [ undef, %381 ]
  %391 = phi float [ %1532, %1528 ], [ undef, %381 ]
  %392 = phi float [ %1533, %1528 ], [ undef, %381 ]
  %393 = phi float [ %1534, %1528 ], [ undef, %381 ]
  %394 = phi float [ %1535, %1528 ], [ undef, %381 ]
  %395 = phi i32 [ %722, %1528 ], [ undef, %381 ]
  %396 = phi float [ %724, %1528 ], [ undef, %381 ]
  %397 = phi float [ %523, %1528 ], [ undef, %381 ]
  %398 = phi float [ %524, %1528 ], [ undef, %381 ]
  %399 = phi float [ %525, %1528 ], [ undef, %381 ]
  %400 = phi float [ %526, %1528 ], [ undef, %381 ]
  %401 = phi float [ %1536, %1528 ], [ 0.000000e+00, %381 ]
  %402 = phi float [ %1537, %1528 ], [ 1.000000e+00, %381 ]
  %403 = phi float [ %1538, %1528 ], [ 0.000000e+00, %381 ]
  %404 = phi float [ %1539, %1528 ], [ 0.000000e+00, %381 ]
  %405 = phi float [ %1540, %1528 ], [ 0.000000e+00, %381 ]
  %406 = phi float [ %1550, %1528 ], [ %387, %381 ]
  %407 = phi float [ %1551, %1528 ], [ %385, %381 ]
  %408 = phi float [ %1552, %1528 ], [ %383, %381 ]
  %409 = phi float [ %1529, %1528 ], [ %375, %381 ]
  %410 = phi i32 [ %528, %1528 ], [ 10, %381 ]
  %411 = phi float [ %1541, %1528 ], [ 0.000000e+00, %381 ]
  %412 = phi float [ %1542, %1528 ], [ 0.000000e+00, %381 ]
  %413 = phi float [ %1543, %1528 ], [ 0.000000e+00, %381 ]
  %414 = phi float [ %1544, %1528 ], [ 0.000000e+00, %381 ]
  %415 = phi float [ %1545, %1528 ], [ 0.000000e+00, %381 ]
  %416 = phi i32 [ %1546, %1528 ], [ 0, %381 ]
  %417 = fsub fast float -0.000000e+00, %407
  %418 = fsub fast float -0.000000e+00, %406
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 0
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 0
  %423 = extractvalue %dx.types.CBufRet.f32 %421, 1
  %424 = fsub fast float %406, %422
  %425 = fsub fast float %407, %423
  %426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %427 = extractvalue %dx.types.CBufRet.f32 %426, 2
  %428 = extractvalue %dx.types.CBufRet.f32 %426, 3
  %429 = fmul fast float %424, %427
  %430 = fmul fast float %425, %428
  %431 = call float @dx.op.binary.f32(i32 36, float %429, float %430)  ; FMin(a,b)
  %432 = fcmp fast olt float %431, 0.000000e+00
  %433 = call float @dx.op.binary.f32(i32 35, float %429, float %430)  ; FMax(a,b)
  %434 = fcmp fast ogt float %433, 1.000000e+00
  %435 = or i1 %432, %434
  %436 = extractvalue %dx.types.CBufRet.f32 %421, 2
  %437 = fcmp fast olt float %408, %436
  %438 = or i1 %435, %437
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 3
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 0
  %443 = fadd fast float %442, %440
  %444 = fcmp fast ogt float %408, %443
  %445 = or i1 %438, %444
  br i1 %445, label %446, label %475, !dx.controlflow.hints !38

; <label>:446                                     ; preds = %388
  %447 = extractvalue %dx.types.CBufRet.f32 %426, 0
  %448 = extractvalue %dx.types.CBufRet.f32 %426, 1
  %449 = fsub fast float %422, %406
  %450 = fmul fast float %449, %366
  %451 = fadd fast float %449, %447
  %452 = fmul fast float %451, %366
  %453 = call float @dx.op.binary.f32(i32 36, float %450, float %452)  ; FMin(a,b)
  %454 = call float @dx.op.binary.f32(i32 35, float %450, float %452)  ; FMax(a,b)
  %455 = fsub fast float %423, %407
  %456 = fmul fast float %455, %367
  %457 = fadd fast float %455, %448
  %458 = fmul fast float %457, %367
  %459 = call float @dx.op.binary.f32(i32 36, float %456, float %458)  ; FMin(a,b)
  %460 = call float @dx.op.binary.f32(i32 35, float %453, float %459)  ; FMax(a,b)
  %461 = call float @dx.op.binary.f32(i32 35, float %456, float %458)  ; FMax(a,b)
  %462 = call float @dx.op.binary.f32(i32 36, float %454, float %461)  ; FMin(a,b)
  %463 = fsub fast float %436, %408
  %464 = fmul fast float %463, %368
  %465 = fsub fast float %440, %408
  %466 = fadd fast float %465, %442
  %467 = fmul fast float %466, %368
  %468 = call float @dx.op.binary.f32(i32 36, float %464, float %467)  ; FMin(a,b)
  %469 = call float @dx.op.binary.f32(i32 35, float %460, float %468)  ; FMax(a,b)
  %470 = call float @dx.op.binary.f32(i32 35, float %464, float %467)  ; FMax(a,b)
  %471 = call float @dx.op.binary.f32(i32 36, float %462, float %470)  ; FMin(a,b)
  %472 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %469)  ; FMax(a,b)
  %473 = fcmp fast oge float %471, %472
  %474 = select i1 %473, float %469, float 1.000000e+07
  br label %521

; <label>:475                                     ; preds = %388
  %476 = fsub fast float 1.000000e+00, %430
  %477 = icmp eq i32 %410, 0
  br i1 %477, label %506, label %478

; <label>:478                                     ; preds = %475
  br label %479

; <label>:479                                     ; preds = %502, %478
  %480 = phi i32 [ %503, %502 ], [ %410, %478 ]
  %481 = uitofp i32 %480 to float
  %482 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %429, float %476, float undef, float undef, i32 0, i32 0, i32 undef, float %481)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %483 = extractvalue %dx.types.ResRet.f32 %482, 0
  %484 = extractvalue %dx.types.ResRet.f32 %482, 1
  %485 = extractvalue %dx.types.ResRet.f32 %482, 2
  %486 = fcmp fast oeq float %483, 0.000000e+00
  %487 = fcmp ule float %408, %485
  %488 = fcmp uge float %408, %484
  %489 = or i1 %488, %487
  %490 = or i1 %486, %489
  br i1 %490, label %491, label %502, !dx.controlflow.hints !39

; <label>:491                                     ; preds = %479
  %492 = extractvalue %dx.types.ResRet.f32 %482, 3
  %493 = extractvalue %dx.types.CBufRet.f32 %426, 0
  %494 = and i32 %480, 31
  %495 = lshr i32 1024, %494
  %496 = uitofp i32 %495 to float
  %497 = fdiv fast float %493, %496
  %498 = add i32 %480, 1
  %499 = uitofp i32 %498 to float
  %500 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %499)  ; FMin(a,b)
  %501 = fptosi float %500 to i32
  br label %521

; <label>:502                                     ; preds = %479
  %503 = add i32 %480, -1
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %479, !llvm.loop !40

; <label>:505                                     ; preds = %502
  br label %506

; <label>:506                                     ; preds = %505, %475
  %507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %429, float %476, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  %509 = extractvalue %dx.types.ResRet.f32 %507, 1
  %510 = extractvalue %dx.types.ResRet.f32 %507, 2
  %511 = extractvalue %dx.types.ResRet.f32 %507, 3
  %512 = extractvalue %dx.types.CBufRet.f32 %426, 0
  %513 = fmul fast float %512, 9.765625e-04
  %514 = fcmp fast oeq float %508, 0.000000e+00
  %515 = fcmp ule float %408, %510
  %516 = fcmp uge float %408, %509
  %517 = or i1 %516, %515
  %518 = or i1 %514, %517
  %519 = zext i1 %518 to i32
  %520 = xor i32 %519, 1
  br label %521

; <label>:521                                     ; preds = %506, %491, %446
  %522 = phi float [ %474, %446 ], [ %497, %491 ], [ %513, %506 ]
  %523 = phi float [ %397, %446 ], [ %483, %491 ], [ %508, %506 ]
  %524 = phi float [ %398, %446 ], [ %484, %491 ], [ %509, %506 ]
  %525 = phi float [ %399, %446 ], [ %485, %491 ], [ %510, %506 ]
  %526 = phi float [ %400, %446 ], [ %492, %491 ], [ %511, %506 ]
  %527 = phi i32 [ 0, %446 ], [ 0, %491 ], [ %520, %506 ]
  %528 = phi i32 [ 10, %446 ], [ %501, %491 ], [ 1, %506 ]
  %529 = icmp eq i32 %527, 0
  %530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.f32 %530, 2
  %532 = call float @dx.op.binary.f32(i32 35, float %522, float %531)  ; FMax(a,b)
  %533 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %532)  ; FMin(a,b)
  %534 = icmp eq i32 %321, 0
  br i1 %534, label %547, label %535, !dx.controlflow.hints !42

; <label>:535                                     ; preds = %521
  %536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.f32 %536, 3
  %538 = extractvalue %dx.types.CBufRet.f32 %536, 2
  %539 = fmul fast float %537, %409
  %540 = fdiv fast float %539, %369
  %541 = fadd fast float %540, 1.000000e+00
  %542 = call float @dx.op.unary.f32(i32 23, float %541)  ; Log(value)
  %543 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %542)  ; FMin(a,b)
  %544 = fmul fast float %538, %369
  %545 = fmul fast float %544, %543
  %546 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %545)  ; FMin(a,b)
  br label %547

; <label>:547                                     ; preds = %535, %521
  %548 = phi float [ %546, %535 ], [ 0x47EFFFFFE0000000, %521 ]
  %549 = icmp eq i32 %363, 0
  br i1 %549, label %721, label %550, !dx.controlflow.hints !43

; <label>:550                                     ; preds = %547
  %551 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.i32 %551, 1
  %553 = and i32 %552, 1
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %712, !dx.controlflow.hints !44

; <label>:555                                     ; preds = %550
  %556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.f32 %556, 2
  %558 = extractvalue %dx.types.CBufRet.f32 %556, 3
  %559 = fmul fast float %557, %406
  %560 = fmul fast float %558, %407
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.f32 %561, 0
  %563 = extractvalue %dx.types.CBufRet.f32 %561, 1
  %564 = fadd fast float %559, %562
  %565 = fadd fast float %560, %563
  %566 = call float @dx.op.unary.f32(i32 7, float %564)  ; Saturate(value)
  %567 = call float @dx.op.unary.f32(i32 7, float %565)  ; Saturate(value)
  %568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 0
  %572 = fmul fast float %571, %569
  %573 = fsub fast float %564, %566
  %574 = fsub fast float %565, %567
  %575 = extractvalue %dx.types.CBufRet.f32 %556, 0
  %576 = extractvalue %dx.types.CBufRet.f32 %556, 1
  %577 = fmul fast float %575, %573
  %578 = fmul fast float %576, %574
  %579 = fmul fast float %577, %577
  %580 = fmul fast float %578, %578
  %581 = fadd fast float %579, %580
  %582 = call float @dx.op.unary.f32(i32 24, float %581)  ; Sqrt(value)
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 3
  %585 = fmul fast float %584, %582
  %586 = call float @dx.op.unary.f32(i32 7, float %585)  ; Saturate(value)
  %587 = extractvalue %dx.types.CBufRet.f32 %583, 2
  %588 = fsub fast float %587, %572
  %589 = fmul fast float %588, %586
  %590 = extractvalue %dx.types.CBufRet.f32 %570, 1
  %591 = fsub fast float %408, %572
  %592 = fsub fast float %591, %590
  %593 = fsub fast float %592, %589
  %594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.f32 %594, 2
  %596 = fsub fast float %593, %595
  %597 = fcmp fast olt float %596, 0.000000e+00
  %598 = call float @dx.op.unary.f32(i32 6, float %596)  ; FAbs(value)
  %599 = extractvalue %dx.types.CBufRet.i32 %551, 0
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %654, label %601

; <label>:601                                     ; preds = %555
  br label %602

; <label>:602                                     ; preds = %641, %601
  %603 = phi i32 [ %647, %641 ], [ 1, %601 ]
  %604 = phi float [ %649, %641 ], [ 0x47EFFFFFE0000000, %601 ]
  %605 = phi i32 [ %650, %641 ], [ 0, %601 ]
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 1
  %608 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %609 = extractvalue %dx.types.CBufRet.i32 %608, 1
  %610 = and i32 %609, 8
  %611 = icmp eq i32 %610, 0
  %612 = fcmp fast ogt float %607, %593
  %613 = or i1 %612, %611
  %614 = add i32 %605, 171
  %615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %614)  ; CBufferLoadLegacy(handle,regIndex)
  %616 = extractvalue %dx.types.CBufRet.f32 %615, 0
  %617 = extractvalue %dx.types.CBufRet.f32 %615, 1
  %618 = extractvalue %dx.types.CBufRet.f32 %615, 2
  br i1 %613, label %619, label %625, !dx.controlflow.hints !45

; <label>:619                                     ; preds = %602
  %620 = fsub fast float %616, %406
  %621 = fsub fast float %617, %407
  %622 = fmul fast float %620, %620
  %623 = fmul fast float %621, %621
  %624 = fadd fast float %622, %623
  br label %641

; <label>:625                                     ; preds = %602
  %626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %627 = extractvalue %dx.types.CBufRet.f32 %626, 2
  %628 = extractvalue %dx.types.CBufRet.f32 %606, 2
  %629 = fmul fast float %628, %627
  %630 = fsub fast float %629, %607
  %631 = fdiv fast float %618, %630
  %632 = fsub fast float %406, %616
  %633 = fsub fast float %407, %617
  %634 = fsub fast float %593, %607
  %635 = fmul fast float %631, %634
  %636 = fmul fast float %632, %632
  %637 = fmul fast float %633, %633
  %638 = fadd fast float %636, %637
  %639 = fmul fast float %635, %635
  %640 = fadd fast float %638, %639
  br label %641

; <label>:641                                     ; preds = %625, %619
  %642 = phi float [ %624, %619 ], [ %640, %625 ]
  %643 = call float @dx.op.unary.f32(i32 24, float %642)  ; Sqrt(value)
  %644 = fsub float %618, %643
  %645 = fcmp fast olt float %644, 0.000000e+00
  %646 = zext i1 %645 to i32
  %647 = and i32 %646, %603
  %648 = call float @dx.op.unary.f32(i32 6, float %644)  ; FAbs(value)
  %649 = call float @dx.op.binary.f32(i32 36, float %604, float %648)  ; FMin(a,b)
  %650 = add i32 %605, 1
  %651 = extractvalue %dx.types.CBufRet.i32 %608, 0
  %652 = icmp ult i32 %650, %651
  br i1 %652, label %602, label %653

; <label>:653                                     ; preds = %641
  br label %654

; <label>:654                                     ; preds = %653, %555
  %655 = phi i32 [ 1, %555 ], [ %647, %653 ]
  %656 = phi float [ 0x47EFFFFFE0000000, %555 ], [ %649, %653 ]
  br label %657

; <label>:657                                     ; preds = %657, %654
  %658 = phi i32 [ %655, %654 ], [ %697, %657 ]
  %659 = phi float [ 0x47EFFFFFE0000000, %654 ], [ %699, %657 ]
  %660 = phi i32 [ 0, %654 ], [ %700, %657 ]
  %661 = add nuw nsw i32 %660, 191
  %662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %661)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.f32 %662, 0
  %664 = extractvalue %dx.types.CBufRet.f32 %662, 1
  %665 = extractvalue %dx.types.CBufRet.f32 %662, 2
  %666 = add nuw nsw i32 %660, 195
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %666)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 0
  %669 = extractvalue %dx.types.CBufRet.f32 %667, 1
  %670 = extractvalue %dx.types.CBufRet.f32 %667, 2
  %671 = fsub fast float %406, %663
  %672 = fsub fast float %407, %664
  %673 = fsub fast float %593, %665
  %674 = call float @dx.op.unary.f32(i32 6, float %671)  ; FAbs(value)
  %675 = call float @dx.op.unary.f32(i32 6, float %672)  ; FAbs(value)
  %676 = call float @dx.op.unary.f32(i32 6, float %673)  ; FAbs(value)
  %677 = fsub fast float %674, %668
  %678 = fsub fast float %675, %669
  %679 = fsub fast float %676, %670
  %680 = call float @dx.op.binary.f32(i32 35, float %677, float 0.000000e+00)  ; FMax(a,b)
  %681 = call float @dx.op.binary.f32(i32 35, float %678, float 0.000000e+00)  ; FMax(a,b)
  %682 = call float @dx.op.binary.f32(i32 35, float %679, float 0.000000e+00)  ; FMax(a,b)
  %683 = fmul fast float %680, %680
  %684 = fmul fast float %681, %681
  %685 = fadd fast float %684, %683
  %686 = fmul fast float %682, %682
  %687 = fadd fast float %685, %686
  %688 = call float @dx.op.unary.f32(i32 24, float %687)  ; Sqrt(value)
  %689 = call float @dx.op.binary.f32(i32 35, float %678, float %679)  ; FMax(a,b)
  %690 = call float @dx.op.binary.f32(i32 35, float %677, float %689)  ; FMax(a,b)
  %691 = call float @dx.op.binary.f32(i32 36, float %690, float 0.000000e+00)  ; FMin(a,b)
  %692 = fadd fast float %691, %688
  %693 = fsub fast float -0.000000e+00, %692
  %694 = fcmp ogt float %692, -0.000000e+00
  %695 = icmp ne i32 %658, 0
  %696 = and i1 %695, %694
  %697 = zext i1 %696 to i32
  %698 = call float @dx.op.unary.f32(i32 6, float %693)  ; FAbs(value)
  %699 = call float @dx.op.binary.f32(i32 36, float %659, float %698)  ; FMin(a,b)
  %700 = add nuw nsw i32 %660, 1
  %701 = icmp eq i32 %700, 4
  br i1 %701, label %702, label %657

; <label>:702                                     ; preds = %657
  %703 = call float @dx.op.binary.f32(i32 36, float %598, float %699)  ; FMin(a,b)
  %704 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.i32 %704, 1
  %706 = and i32 %705, 2
  %707 = icmp ne i32 %706, 0
  %708 = xor i1 %696, %707
  %709 = call float @dx.op.binary.f32(i32 36, float %703, float %656)  ; FMin(a,b)
  %710 = and i1 %708, %597
  %711 = zext i1 %710 to i32
  br label %712

; <label>:712                                     ; preds = %702, %550
  %713 = phi i32 [ %395, %550 ], [ %711, %702 ]
  %714 = phi float [ 0.000000e+00, %550 ], [ %709, %702 ]
  %715 = phi float [ %408, %550 ], [ %593, %702 ]
  %716 = icmp ne i32 %713, 0
  %717 = extractvalue %dx.types.CBufRet.f32 %530, 3
  %718 = call float @dx.op.binary.f32(i32 35, float %714, float %717)  ; FMax(a,b)
  %719 = call float @dx.op.binary.f32(i32 36, float %548, float %718)  ; FMin(a,b)
  %720 = zext i1 %716 to i32
  br label %721

; <label>:721                                     ; preds = %712, %547
  %722 = phi i32 [ %713, %712 ], [ %395, %547 ]
  %723 = phi i32 [ %720, %712 ], [ 0, %547 ]
  %724 = phi float [ %715, %712 ], [ %396, %547 ]
  %725 = phi float [ %719, %712 ], [ %548, %547 ]
  %726 = extractvalue %dx.types.CBufRet.f32 %419, 2
  %727 = fmul fast float %726, %409
  %728 = call float @dx.op.unary.f32(i32 23, float %727)  ; Log(value)
  %729 = fmul fast float %728, 0x3FE62E4300000000
  %730 = call float @dx.op.binary.f32(i32 35, float %729, float 1.000000e+00)  ; FMax(a,b)
  %731 = fmul fast float %730, %725
  %732 = call float @dx.op.binary.f32(i32 36, float %731, float %533)  ; FMin(a,b)
  %733 = call float @dx.op.binary.f32(i32 35, float %732, float %420)  ; FMax(a,b)
  %734 = fadd fast float %369, 0x3F1A36E2E0000000
  %735 = fsub fast float %734, %409
  %736 = call float @dx.op.binary.f32(i32 36, float %735, float %733)  ; FMin(a,b)
  br i1 %534, label %791, label %737, !dx.controlflow.hints !46

; <label>:737                                     ; preds = %721
  %738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %739 = extractvalue %dx.types.CBufRet.f32 %738, 0
  %740 = fsub fast float %739, %408
  %741 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %418, float %417, float %740)  ; Dot3(ax,ay,az,bx,by,bz)
  %742 = fmul fast float %304, %741
  %743 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %742)  ; FMax(a,b)
  %744 = fcmp fast olt float %277, 0.000000e+00
  %745 = call float @dx.op.binary.f32(i32 36, float %736, float %743)  ; FMin(a,b)
  br i1 %744, label %747, label %746, !dx.controlflow.hints !47

; <label>:746                                     ; preds = %737
  br label %747

; <label>:747                                     ; preds = %746, %737
  %748 = phi float [ 0.000000e+00, %746 ], [ %745, %737 ]
  %749 = phi float [ %745, %746 ], [ %736, %737 ]
  %750 = phi float [ %745, %746 ], [ 0.000000e+00, %737 ]
  %751 = phi float [ %736, %746 ], [ %745, %737 ]
  %752 = fsub fast float %749, %748
  %753 = extractvalue %dx.types.CBufRet.f32 %738, 1
  %754 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %753)  ; FMin(a,b)
  %755 = fsub fast float %408, %739
  %756 = fmul fast float %754, 0x3FF7154760000000
  %757 = fmul fast float %756, %755
  %758 = call float @dx.op.unary.f32(i32 21, float %757)  ; Exp(value)
  %759 = fmul fast float %277, 0x3FF7154760000000
  %760 = fmul fast float %759, %751
  %761 = fmul fast float %760, %754
  %762 = call float @dx.op.unary.f32(i32 21, float %761)  ; Exp(value)
  %763 = fmul fast float %759, %750
  %764 = fmul fast float %763, %754
  %765 = call float @dx.op.unary.f32(i32 21, float %764)  ; Exp(value)
  %766 = fsub fast float %762, %765
  %767 = fmul fast float %766, %758
  %768 = fmul fast float %754, %277
  %769 = fdiv fast float %767, %768
  %770 = fadd fast float %752, %769
  %771 = call float @dx.op.unary.f32(i32 6, float %277)  ; FAbs(value)
  %772 = fcmp fast olt float %771, 0x3F0FFB4800000000
  %773 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %755)  ; FMax(a,b)
  %774 = fmul fast float %773, 0x3FF7154760000000
  %775 = fmul fast float %774, %753
  %776 = call float @dx.op.unary.f32(i32 21, float %775)  ; Exp(value)
  %777 = fmul fast float %776, %736
  %778 = select i1 %772, float %777, float %770
  %779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %780 = extractvalue %dx.types.CBufRet.f32 %779, 1
  %781 = fmul fast float %778, %780
  %782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.f32 %782, 0
  %784 = extractvalue %dx.types.CBufRet.f32 %782, 1
  %785 = extractvalue %dx.types.CBufRet.f32 %782, 2
  %786 = extractvalue %dx.types.CBufRet.f32 %779, 2
  %787 = fmul fast float %783, %781
  %788 = fmul fast float %784, %781
  %789 = fmul fast float %785, %781
  %790 = fmul fast float %786, %781
  br label %791

; <label>:791                                     ; preds = %747, %721
  %792 = phi float [ %781, %747 ], [ 0.000000e+00, %721 ]
  %793 = phi float [ %790, %747 ], [ 0.000000e+00, %721 ]
  %794 = phi float [ %787, %747 ], [ 0.000000e+00, %721 ]
  %795 = phi float [ %788, %747 ], [ 0.000000e+00, %721 ]
  %796 = phi float [ %789, %747 ], [ 0.000000e+00, %721 ]
  br i1 %529, label %939, label %797, !dx.controlflow.hints !48

; <label>:797                                     ; preds = %791
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 0
  %800 = extractvalue %dx.types.CBufRet.f32 %798, 1
  %801 = extractvalue %dx.types.CBufRet.f32 %798, 2
  %802 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.i32 %802, 0
  %804 = icmp ne i32 %803, 0
  %805 = zext i1 %804 to i32
  %806 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %807 = extractvalue %dx.types.CBufRet.i32 %806, 0
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %842, label %809

; <label>:809                                     ; preds = %797
  br label %810

; <label>:810                                     ; preds = %837, %809
  %811 = phi i32 [ %838, %837 ], [ 0, %809 ]
  %812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %811, i32 0)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.f32 %812, 0
  %814 = extractvalue %dx.types.ResRet.f32 %812, 1
  %815 = extractvalue %dx.types.ResRet.f32 %812, 2
  %816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %811, i32 16)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.f32 %816, 0
  %818 = extractvalue %dx.types.ResRet.f32 %816, 1
  %819 = extractvalue %dx.types.ResRet.f32 %816, 2
  %820 = fsub fast float %813, %817
  %821 = fsub fast float %814, %818
  %822 = fsub fast float %815, %819
  %823 = fadd fast float %817, %813
  %824 = fadd fast float %818, %814
  %825 = fadd fast float %819, %815
  %826 = fcmp fast olt float %406, %820
  %827 = fcmp fast olt float %407, %821
  %828 = fcmp fast olt float %408, %822
  %829 = or i1 %826, %827
  %830 = or i1 %828, %829
  %831 = fcmp fast ogt float %406, %823
  %832 = fcmp fast ogt float %407, %824
  %833 = fcmp fast ogt float %408, %825
  %834 = or i1 %831, %832
  %835 = or i1 %833, %834
  %836 = or i1 %830, %835
  br i1 %836, label %837, label %840, !dx.controlflow.hints !49

; <label>:837                                     ; preds = %810
  %838 = add nuw i32 %811, 1
  %839 = icmp ult i32 %838, %807
  br i1 %839, label %810, label %840

; <label>:840                                     ; preds = %837, %810
  %841 = phi i32 [ 255, %837 ], [ %811, %810 ]
  br label %842

; <label>:842                                     ; preds = %840, %797
  %843 = phi i32 [ 255, %797 ], [ %841, %840 ]
  %844 = icmp eq i32 %843, 255
  br i1 %844, label %854, label %845, !dx.controlflow.hints !50

; <label>:845                                     ; preds = %842
  %846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %843, i32 32)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.f32 %846, 0
  %848 = extractvalue %dx.types.ResRet.f32 %846, 1
  %849 = extractvalue %dx.types.ResRet.f32 %846, 2
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %843, i32 156)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = icmp ne i32 %851, 0
  %853 = zext i1 %852 to i32
  br label %854

; <label>:854                                     ; preds = %845, %842
  %855 = phi float [ %847, %845 ], [ %799, %842 ]
  %856 = phi float [ %848, %845 ], [ %800, %842 ]
  %857 = phi float [ %849, %845 ], [ %801, %842 ]
  %858 = phi i32 [ %853, %845 ], [ %805, %842 ]
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %860, label %929, !dx.controlflow.hints !51

; <label>:860                                     ; preds = %854
  %861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %862 = extractvalue %dx.types.CBufRet.f32 %861, 3
  %863 = extractvalue %dx.types.CBufRet.f32 %439, 0
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 2
  %866 = extractvalue %dx.types.CBufRet.f32 %864, 3
  br i1 %844, label %877, label %867, !dx.controlflow.hints !52

; <label>:867                                     ; preds = %860
  %868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %843, i32 60)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 0
  %870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %843, i32 64)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.f32 %870, 0
  %872 = extractvalue %dx.types.ResRet.f32 %870, 1
  %873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %843, i32 72)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.f32 %873, 0
  %875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %843, i32 96)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.f32 %875, 0
  br label %877

; <label>:877                                     ; preds = %867, %860
  %878 = phi float [ %869, %867 ], [ %442, %860 ]
  %879 = phi float [ %874, %867 ], [ %440, %860 ]
  %880 = phi float [ %876, %867 ], [ %863, %860 ]
  %881 = phi float [ %871, %867 ], [ %865, %860 ]
  %882 = phi float [ %872, %867 ], [ %866, %860 ]
  %883 = call float @dx.op.binary.f32(i32 35, float %523, float 0.000000e+00)  ; FMax(a,b)
  %884 = call float @dx.op.binary.f32(i32 36, float %883, float 1.000000e+00)  ; FMin(a,b)
  %885 = call float @dx.op.unary.f32(i32 24, float %884)  ; Sqrt(value)
  %886 = call float @dx.op.binary.f32(i32 35, float %526, float 0x3F847AE140000000)  ; FMax(a,b)
  %887 = fsub fast float %524, %408
  %888 = fsub fast float %408, %525
  %889 = call float @dx.op.binary.f32(i32 36, float %888, float %887)  ; FMin(a,b)
  %890 = fdiv fast float %889, %886
  %891 = call float @dx.op.unary.f32(i32 7, float %890)  ; Saturate(value)
  %892 = fsub fast float %408, %879
  %893 = fdiv fast float %892, %878
  %894 = call float @dx.op.unary.f32(i32 7, float %893)  ; Saturate(value)
  %895 = fsub fast float 1.000000e+00, %894
  %896 = fmul float %891, %895
  %897 = fmul float %896, %896
  %898 = fmul fast float %885, %862
  %899 = fmul fast float %898, %897
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 2
  %902 = extractvalue %dx.types.CBufRet.f32 %900, 1
  %903 = fsub fast float %899, %902
  %904 = fsub fast float %901, %902
  %905 = fdiv fast float %903, %904
  %906 = call float @dx.op.unary.f32(i32 7, float %905)  ; Saturate(value)
  %907 = fmul fast float %906, %880
  %908 = fcmp fast ogt float %882, 0.000000e+00
  br i1 %908, label %909, label %929, !dx.controlflow.hints !53

; <label>:909                                     ; preds = %877
  %910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %911 = extractvalue %dx.types.CBufRet.f32 %910, 0
  %912 = extractvalue %dx.types.CBufRet.f32 %910, 1
  %913 = extractvalue %dx.types.CBufRet.f32 %910, 2
  %914 = fsub fast float %406, %911
  %915 = fsub fast float %407, %912
  %916 = fsub fast float %408, %913
  %917 = fmul fast float %914, %914
  %918 = fmul fast float %915, %915
  %919 = fadd fast float %917, %918
  %920 = fmul fast float %916, %916
  %921 = fadd fast float %919, %920
  %922 = call float @dx.op.unary.f32(i32 24, float %921)  ; Sqrt(value)
  %923 = fsub fast float %922, %881
  %924 = fsub fast float %882, %881
  %925 = fdiv fast float %923, %924
  %926 = call float @dx.op.unary.f32(i32 7, float %925)  ; Saturate(value)
  %927 = fmul fast float %926, %926
  %928 = fmul fast float %927, %907
  br label %929

; <label>:929                                     ; preds = %909, %877, %854
  %930 = phi float [ 0.000000e+00, %854 ], [ %928, %909 ], [ %907, %877 ]
  %931 = fmul fast float %930, %736
  %932 = fmul fast float %931, %855
  %933 = fmul fast float %931, %856
  %934 = fmul fast float %931, %857
  %935 = fadd fast float %932, %794
  %936 = fadd fast float %933, %795
  %937 = fadd fast float %934, %796
  %938 = fadd fast float %931, %792
  br label %939

; <label>:939                                     ; preds = %929, %791
  %940 = phi float [ %938, %929 ], [ %792, %791 ]
  %941 = phi float [ %935, %929 ], [ %794, %791 ]
  %942 = phi float [ %936, %929 ], [ %795, %791 ]
  %943 = phi float [ %937, %929 ], [ %796, %791 ]
  %944 = icmp eq i32 %723, 0
  br i1 %944, label %988, label %945, !dx.controlflow.hints !54

; <label>:945                                     ; preds = %939
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 1
  %948 = fsub fast float %736, %947
  %949 = extractvalue %dx.types.CBufRet.f32 %946, 3
  %950 = fmul fast float %948, %949
  %951 = call float @dx.op.unary.f32(i32 7, float %950)  ; Saturate(value)
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 3
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 2
  %956 = fsub fast float %955, %724
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 3
  %959 = fmul fast float %956, %958
  %960 = call float @dx.op.unary.f32(i32 7, float %959)  ; Saturate(value)
  %961 = fmul fast float %960, %953
  %962 = extractvalue %dx.types.CBufRet.f32 %957, 0
  %963 = fsub fast float %409, %962
  %964 = extractvalue %dx.types.CBufRet.f32 %957, 1
  %965 = fmul fast float %963, %964
  %966 = call float @dx.op.unary.f32(i32 7, float %965)  ; Saturate(value)
  %967 = fsub fast float 1.000000e+00, %951
  %968 = fmul fast float %966, %967
  %969 = fadd fast float %968, %951
  %970 = extractvalue %dx.types.CBufRet.f32 %946, 0
  %971 = fsub fast float %961, %970
  %972 = fmul fast float %971, %969
  %973 = fadd fast float %972, %970
  %974 = extractvalue %dx.types.CBufRet.f32 %952, 0
  %975 = extractvalue %dx.types.CBufRet.f32 %952, 1
  %976 = extractvalue %dx.types.CBufRet.f32 %952, 2
  %977 = fmul fast float %973, %736
  %978 = extractvalue %dx.types.CBufRet.f32 %957, 2
  %979 = fmul fast float %977, %974
  %980 = fmul fast float %977, %975
  %981 = fmul fast float %977, %976
  %982 = fadd fast float %979, %941
  %983 = fadd fast float %980, %942
  %984 = fadd fast float %981, %943
  %985 = fmul fast float %977, %978
  %986 = fadd fast float %985, %793
  %987 = fadd fast float %977, %940
  br label %988

; <label>:988                                     ; preds = %945, %939
  %989 = phi float [ %987, %945 ], [ %940, %939 ]
  %990 = phi float [ %986, %945 ], [ %793, %939 ]
  %991 = phi float [ %982, %945 ], [ %941, %939 ]
  %992 = phi float [ %983, %945 ], [ %942, %939 ]
  %993 = phi float [ %984, %945 ], [ %943, %939 ]
  %994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.f32 %994, 1
  %996 = fcmp fast ogt float %989, %995
  br i1 %996, label %997, label %1003, !dx.controlflow.hints !55

; <label>:997                                     ; preds = %988
  %998 = fdiv fast float 1.000000e+00, %989
  %999 = fmul fast float %998, %991
  %1000 = fmul fast float %998, %992
  %1001 = fmul fast float %998, %993
  %1002 = fmul fast float %998, %990
  br label %1003

; <label>:1003                                    ; preds = %997, %988
  %1004 = phi float [ %1002, %997 ], [ %990, %988 ]
  %1005 = phi float [ %999, %997 ], [ %991, %988 ]
  %1006 = phi float [ %1000, %997 ], [ %992, %988 ]
  %1007 = phi float [ %1001, %997 ], [ %993, %988 ]
  br i1 %996, label %1010, label %1008, !dx.controlflow.hints !56

; <label>:1008                                    ; preds = %1003
  %1009 = fadd fast float %736, %409
  br label %1528

; <label>:1010                                    ; preds = %1003
  %1011 = fmul fast float %989, 0xBFF7154760000000
  %1012 = call float @dx.op.unary.f32(i32 21, float %1011)  ; Exp(value)
  %1013 = call float @dx.op.unary.f32(i32 7, float %1012)  ; Saturate(value)
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 3
  %1016 = fcmp fast une float %1015, 0.000000e+00
  %1017 = extractvalue %dx.types.CBufRet.f32 %1014, 0
  %1018 = extractvalue %dx.types.CBufRet.f32 %1014, 1
  %1019 = extractvalue %dx.types.CBufRet.f32 %1014, 2
  br i1 %1016, label %1020, label %1042, !dx.controlflow.hints !57

; <label>:1020                                    ; preds = %1010
  %1021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1021, 0
  %1023 = extractvalue %dx.types.CBufRet.f32 %1021, 1
  %1024 = extractvalue %dx.types.CBufRet.f32 %1021, 2
  %1025 = call float @dx.op.dot3.f32(i32 55, float %1017, float %1018, float %1019, float %275, float %276, float %277)  ; Dot3(ax,ay,az,bx,by,bz)
  %1026 = fcmp fast ogt float %1004, 0.000000e+00
  %1027 = select i1 %1026, float 1.000000e+00, float -1.000000e+00
  %1028 = fmul fast float %1027, 5.000000e-01
  %1029 = fmul fast float %1028, %1025
  %1030 = fmul fast float %1027, %1004
  %1031 = fadd fast float %1029, 4.921875e-01
  %1032 = fadd fast float %1030, -3.125000e-02
  %1033 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %13, float %1031, float 0x3FB25F3060000000, float %1032, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 0
  %1037 = fmul fast float %1034, 0x400921FB60000000
  %1038 = fmul fast float %1037, %1036
  %1039 = fmul fast float %1038, %1022
  %1040 = fmul fast float %1038, %1023
  %1041 = fmul fast float %1038, %1024
  br label %1042

; <label>:1042                                    ; preds = %1020, %1010
  %1043 = phi float [ %1039, %1020 ], [ 0.000000e+00, %1010 ]
  %1044 = phi float [ %1040, %1020 ], [ 0.000000e+00, %1010 ]
  %1045 = phi float [ %1041, %1020 ], [ 0.000000e+00, %1010 ]
  %1046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1047 = extractvalue %dx.types.CBufRet.f32 %1046, 0
  %1048 = fmul fast float %1047, %1017
  %1049 = fmul fast float %1047, %1018
  %1050 = fmul fast float %1047, %1019
  %1051 = fadd fast float %1048, %406
  %1052 = fadd fast float %1049, %407
  %1053 = fadd fast float %1050, %408
  %1054 = fsub fast float %1051, %422
  %1055 = fsub fast float %1052, %423
  %1056 = fmul fast float %1054, %427
  %1057 = fmul fast float %1055, %428
  %1058 = call float @dx.op.binary.f32(i32 36, float %1056, float %1057)  ; FMin(a,b)
  %1059 = fcmp fast olt float %1058, 0.000000e+00
  %1060 = call float @dx.op.binary.f32(i32 35, float %1056, float %1057)  ; FMax(a,b)
  %1061 = fcmp fast ogt float %1060, 1.000000e+00
  %1062 = or i1 %1059, %1061
  %1063 = fcmp fast olt float %1053, %436
  %1064 = or i1 %1062, %1063
  %1065 = fcmp fast ogt float %1053, %443
  %1066 = or i1 %1064, %1065
  br i1 %1066, label %1081, label %1067, !dx.controlflow.hints !38

; <label>:1067                                    ; preds = %1042
  %1068 = fsub fast float 1.000000e+00, %1057
  %1069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1056, float %1068, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1070 = extractvalue %dx.types.ResRet.f32 %1069, 0
  %1071 = extractvalue %dx.types.ResRet.f32 %1069, 1
  %1072 = extractvalue %dx.types.ResRet.f32 %1069, 2
  %1073 = extractvalue %dx.types.ResRet.f32 %1069, 3
  %1074 = fcmp fast oeq float %1070, 0.000000e+00
  %1075 = fcmp ule float %1053, %1072
  %1076 = fcmp uge float %1053, %1071
  %1077 = or i1 %1076, %1075
  %1078 = or i1 %1074, %1077
  %1079 = zext i1 %1078 to i32
  %1080 = xor i32 %1079, 1
  br label %1081

; <label>:1081                                    ; preds = %1067, %1042
  %1082 = phi float [ %1070, %1067 ], [ %391, %1042 ]
  %1083 = phi float [ %1071, %1067 ], [ %392, %1042 ]
  %1084 = phi float [ %1072, %1067 ], [ %393, %1042 ]
  %1085 = phi float [ %1073, %1067 ], [ %394, %1042 ]
  %1086 = phi i32 [ %1080, %1067 ], [ 0, %1042 ]
  %1087 = icmp eq i32 %1086, 0
  br i1 %549, label %1242, label %1088, !dx.controlflow.hints !43

; <label>:1088                                    ; preds = %1081
  %1089 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.i32 %1089, 1
  %1091 = and i32 %1090, 1
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %1093, label %1237, !dx.controlflow.hints !44

; <label>:1093                                    ; preds = %1088
  %1094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1095 = extractvalue %dx.types.CBufRet.f32 %1094, 2
  %1096 = extractvalue %dx.types.CBufRet.f32 %1094, 3
  %1097 = fmul fast float %1095, %1051
  %1098 = fmul fast float %1096, %1052
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1101 = extractvalue %dx.types.CBufRet.f32 %1099, 1
  %1102 = fadd fast float %1097, %1100
  %1103 = fadd fast float %1098, %1101
  %1104 = call float @dx.op.unary.f32(i32 7, float %1102)  ; Saturate(value)
  %1105 = call float @dx.op.unary.f32(i32 7, float %1103)  ; Saturate(value)
  %1106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1104, float %1105, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1107 = extractvalue %dx.types.ResRet.f32 %1106, 0
  %1108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1109 = extractvalue %dx.types.CBufRet.f32 %1108, 0
  %1110 = fmul fast float %1109, %1107
  %1111 = fsub fast float %1102, %1104
  %1112 = fsub fast float %1103, %1105
  %1113 = extractvalue %dx.types.CBufRet.f32 %1094, 0
  %1114 = extractvalue %dx.types.CBufRet.f32 %1094, 1
  %1115 = fmul fast float %1113, %1111
  %1116 = fmul fast float %1114, %1112
  %1117 = fmul fast float %1115, %1115
  %1118 = fmul fast float %1116, %1116
  %1119 = fadd fast float %1117, %1118
  %1120 = call float @dx.op.unary.f32(i32 24, float %1119)  ; Sqrt(value)
  %1121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.f32 %1121, 3
  %1123 = fmul fast float %1122, %1120
  %1124 = call float @dx.op.unary.f32(i32 7, float %1123)  ; Saturate(value)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1121, 2
  %1126 = fsub fast float %1125, %1110
  %1127 = fmul fast float %1126, %1124
  %1128 = extractvalue %dx.types.CBufRet.f32 %1108, 1
  %1129 = fsub fast float %1053, %1110
  %1130 = fsub fast float %1129, %1128
  %1131 = fsub fast float %1130, %1127
  %1132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1133 = extractvalue %dx.types.CBufRet.f32 %1132, 2
  %1134 = fsub fast float %1131, %1133
  %1135 = fcmp fast olt float %1134, 0.000000e+00
  %1136 = extractvalue %dx.types.CBufRet.i32 %1089, 0
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %1188, label %1138

; <label>:1138                                    ; preds = %1093
  br label %1139

; <label>:1139                                    ; preds = %1177, %1138
  %1140 = phi i32 [ %1183, %1177 ], [ 1, %1138 ]
  %1141 = phi i32 [ %1184, %1177 ], [ 0, %1138 ]
  %1142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1143 = extractvalue %dx.types.CBufRet.f32 %1142, 1
  %1144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1145 = extractvalue %dx.types.CBufRet.i32 %1144, 1
  %1146 = and i32 %1145, 8
  %1147 = icmp eq i32 %1146, 0
  %1148 = fcmp fast ogt float %1143, %1131
  %1149 = or i1 %1148, %1147
  %1150 = add i32 %1141, 171
  %1151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %1150)  ; CBufferLoadLegacy(handle,regIndex)
  %1152 = extractvalue %dx.types.CBufRet.f32 %1151, 0
  %1153 = extractvalue %dx.types.CBufRet.f32 %1151, 1
  %1154 = extractvalue %dx.types.CBufRet.f32 %1151, 2
  br i1 %1149, label %1155, label %1161, !dx.controlflow.hints !45

; <label>:1155                                    ; preds = %1139
  %1156 = fsub fast float %1152, %1051
  %1157 = fsub fast float %1153, %1052
  %1158 = fmul fast float %1156, %1156
  %1159 = fmul fast float %1157, %1157
  %1160 = fadd fast float %1158, %1159
  br label %1177

; <label>:1161                                    ; preds = %1139
  %1162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1163 = extractvalue %dx.types.CBufRet.f32 %1162, 2
  %1164 = extractvalue %dx.types.CBufRet.f32 %1142, 2
  %1165 = fmul fast float %1164, %1163
  %1166 = fsub fast float %1165, %1143
  %1167 = fdiv fast float %1154, %1166
  %1168 = fsub fast float %1051, %1152
  %1169 = fsub fast float %1052, %1153
  %1170 = fsub fast float %1131, %1143
  %1171 = fmul fast float %1167, %1170
  %1172 = fmul fast float %1168, %1168
  %1173 = fmul fast float %1169, %1169
  %1174 = fadd fast float %1172, %1173
  %1175 = fmul fast float %1171, %1171
  %1176 = fadd fast float %1174, %1175
  br label %1177

; <label>:1177                                    ; preds = %1161, %1155
  %1178 = phi float [ %1160, %1155 ], [ %1176, %1161 ]
  %1179 = call float @dx.op.unary.f32(i32 24, float %1178)  ; Sqrt(value)
  %1180 = fsub float %1154, %1179
  %1181 = fcmp fast olt float %1180, 0.000000e+00
  %1182 = zext i1 %1181 to i32
  %1183 = and i32 %1182, %1140
  %1184 = add i32 %1141, 1
  %1185 = extractvalue %dx.types.CBufRet.i32 %1144, 0
  %1186 = icmp ult i32 %1184, %1185
  br i1 %1186, label %1139, label %1187

; <label>:1187                                    ; preds = %1177
  br label %1188

; <label>:1188                                    ; preds = %1187, %1093
  %1189 = phi i32 [ 1, %1093 ], [ %1183, %1187 ]
  br label %1190

; <label>:1190                                    ; preds = %1190, %1188
  %1191 = phi i32 [ %1227, %1190 ], [ %1189, %1188 ]
  %1192 = phi i32 [ %1228, %1190 ], [ 0, %1188 ]
  %1193 = add nuw nsw i32 %1192, 191
  %1194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %1193)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.CBufRet.f32 %1194, 1
  %1197 = extractvalue %dx.types.CBufRet.f32 %1194, 2
  %1198 = add nuw nsw i32 %1192, 195
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %1198)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 0
  %1201 = extractvalue %dx.types.CBufRet.f32 %1199, 1
  %1202 = extractvalue %dx.types.CBufRet.f32 %1199, 2
  %1203 = fsub fast float %1051, %1195
  %1204 = fsub fast float %1052, %1196
  %1205 = fsub fast float %1131, %1197
  %1206 = call float @dx.op.unary.f32(i32 6, float %1203)  ; FAbs(value)
  %1207 = call float @dx.op.unary.f32(i32 6, float %1204)  ; FAbs(value)
  %1208 = call float @dx.op.unary.f32(i32 6, float %1205)  ; FAbs(value)
  %1209 = fsub fast float %1206, %1200
  %1210 = fsub fast float %1207, %1201
  %1211 = fsub fast float %1208, %1202
  %1212 = call float @dx.op.binary.f32(i32 35, float %1209, float 0.000000e+00)  ; FMax(a,b)
  %1213 = call float @dx.op.binary.f32(i32 35, float %1210, float 0.000000e+00)  ; FMax(a,b)
  %1214 = call float @dx.op.binary.f32(i32 35, float %1211, float 0.000000e+00)  ; FMax(a,b)
  %1215 = fmul fast float %1212, %1212
  %1216 = fmul fast float %1213, %1213
  %1217 = fadd fast float %1216, %1215
  %1218 = fmul fast float %1214, %1214
  %1219 = fadd fast float %1217, %1218
  %1220 = call float @dx.op.unary.f32(i32 24, float %1219)  ; Sqrt(value)
  %1221 = call float @dx.op.binary.f32(i32 35, float %1210, float %1211)  ; FMax(a,b)
  %1222 = call float @dx.op.binary.f32(i32 35, float %1209, float %1221)  ; FMax(a,b)
  %1223 = call float @dx.op.binary.f32(i32 36, float %1222, float 0.000000e+00)  ; FMin(a,b)
  %1224 = fadd fast float %1223, %1220
  %1225 = fcmp ogt float %1224, -0.000000e+00
  %1226 = zext i1 %1225 to i32
  %1227 = and i32 %1226, %1191
  %1228 = add nuw nsw i32 %1192, 1
  %1229 = icmp eq i32 %1228, 4
  br i1 %1229, label %1230, label %1190

; <label>:1230                                    ; preds = %1190
  %1231 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.i32 %1231, 1
  %1233 = lshr i32 %1232, 1
  %1234 = xor i32 %1233, %1227
  %1235 = zext i1 %1135 to i32
  %1236 = and i32 %1234, %1235
  br label %1237

; <label>:1237                                    ; preds = %1230, %1088
  %1238 = phi i32 [ %389, %1088 ], [ %1236, %1230 ]
  %1239 = phi float [ %1053, %1088 ], [ %1131, %1230 ]
  %1240 = icmp ne i32 %1238, 0
  %1241 = zext i1 %1240 to i32
  br label %1242

; <label>:1242                                    ; preds = %1237, %1081
  %1243 = phi i32 [ %1238, %1237 ], [ %389, %1081 ]
  %1244 = phi float [ %1239, %1237 ], [ %390, %1081 ]
  %1245 = phi i32 [ %1241, %1237 ], [ 0, %1081 ]
  br i1 %534, label %1295, label %1246, !dx.controlflow.hints !46

; <label>:1246                                    ; preds = %1242
  %1247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1248 = extractvalue %dx.types.CBufRet.f32 %1247, 0
  %1249 = fsub fast float -0.000000e+00, %1051
  %1250 = fsub fast float -0.000000e+00, %1052
  %1251 = fsub fast float %1248, %1053
  %1252 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1249, float %1250, float %1251)  ; Dot3(ax,ay,az,bx,by,bz)
  %1253 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1017, float %1018, float %1019)  ; Dot3(ax,ay,az,bx,by,bz)
  %1254 = fdiv fast float 1.000000e+00, %1253
  %1255 = fmul fast float %1254, %1252
  %1256 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1255)  ; FMax(a,b)
  %1257 = fcmp fast olt float %1019, 0.000000e+00
  %1258 = call float @dx.op.binary.f32(i32 36, float %1047, float %1256)  ; FMin(a,b)
  br i1 %1257, label %1260, label %1259, !dx.controlflow.hints !47

; <label>:1259                                    ; preds = %1246
  br label %1260

; <label>:1260                                    ; preds = %1259, %1246
  %1261 = phi float [ 0.000000e+00, %1259 ], [ %1258, %1246 ]
  %1262 = phi float [ %1258, %1259 ], [ %1047, %1246 ]
  %1263 = phi float [ %1258, %1259 ], [ 0.000000e+00, %1246 ]
  %1264 = phi float [ %1047, %1259 ], [ %1258, %1246 ]
  %1265 = fsub fast float %1262, %1261
  %1266 = extractvalue %dx.types.CBufRet.f32 %1247, 1
  %1267 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1266)  ; FMin(a,b)
  %1268 = fsub fast float %1053, %1248
  %1269 = fmul fast float %1267, 0x3FF7154760000000
  %1270 = fmul fast float %1269, %1268
  %1271 = call float @dx.op.unary.f32(i32 21, float %1270)  ; Exp(value)
  %1272 = fmul fast float %1019, 0x3FF7154760000000
  %1273 = fmul fast float %1272, %1264
  %1274 = fmul fast float %1273, %1267
  %1275 = call float @dx.op.unary.f32(i32 21, float %1274)  ; Exp(value)
  %1276 = fmul fast float %1272, %1263
  %1277 = fmul fast float %1276, %1267
  %1278 = call float @dx.op.unary.f32(i32 21, float %1277)  ; Exp(value)
  %1279 = fsub fast float %1275, %1278
  %1280 = fmul fast float %1279, %1271
  %1281 = fmul fast float %1267, %1019
  %1282 = fdiv fast float %1280, %1281
  %1283 = fadd fast float %1265, %1282
  %1284 = call float @dx.op.unary.f32(i32 6, float %1019)  ; FAbs(value)
  %1285 = fcmp fast olt float %1284, 0x3F0FFB4800000000
  %1286 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1268)  ; FMax(a,b)
  %1287 = fmul fast float %1286, 0x3FF7154760000000
  %1288 = fmul fast float %1287, %1266
  %1289 = call float @dx.op.unary.f32(i32 21, float %1288)  ; Exp(value)
  %1290 = fmul fast float %1289, %1047
  %1291 = select i1 %1285, float %1290, float %1283
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 1
  %1294 = fmul fast float %1291, %1293
  br label %1295

; <label>:1295                                    ; preds = %1260, %1242
  %1296 = phi float [ %1294, %1260 ], [ 0.000000e+00, %1242 ]
  br i1 %1087, label %1422, label %1297, !dx.controlflow.hints !48

; <label>:1297                                    ; preds = %1295
  %1298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1299 = extractvalue %dx.types.CBufRet.i32 %1298, 0
  %1300 = icmp ne i32 %1299, 0
  %1301 = zext i1 %1300 to i32
  %1302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1303 = extractvalue %dx.types.CBufRet.i32 %1302, 0
  %1304 = icmp eq i32 %1303, 0
  br i1 %1304, label %1338, label %1305

; <label>:1305                                    ; preds = %1297
  br label %1306

; <label>:1306                                    ; preds = %1333, %1305
  %1307 = phi i32 [ %1334, %1333 ], [ 0, %1305 ]
  %1308 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1307, i32 0)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.f32 %1308, 0
  %1310 = extractvalue %dx.types.ResRet.f32 %1308, 1
  %1311 = extractvalue %dx.types.ResRet.f32 %1308, 2
  %1312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1307, i32 16)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.f32 %1312, 0
  %1314 = extractvalue %dx.types.ResRet.f32 %1312, 1
  %1315 = extractvalue %dx.types.ResRet.f32 %1312, 2
  %1316 = fsub fast float %1309, %1313
  %1317 = fsub fast float %1310, %1314
  %1318 = fsub fast float %1311, %1315
  %1319 = fadd fast float %1313, %1309
  %1320 = fadd fast float %1314, %1310
  %1321 = fadd fast float %1315, %1311
  %1322 = fcmp fast olt float %1051, %1316
  %1323 = fcmp fast olt float %1052, %1317
  %1324 = fcmp fast olt float %1053, %1318
  %1325 = or i1 %1322, %1323
  %1326 = or i1 %1324, %1325
  %1327 = fcmp fast ogt float %1051, %1319
  %1328 = fcmp fast ogt float %1052, %1320
  %1329 = fcmp fast ogt float %1053, %1321
  %1330 = or i1 %1327, %1328
  %1331 = or i1 %1329, %1330
  %1332 = or i1 %1326, %1331
  br i1 %1332, label %1333, label %1336, !dx.controlflow.hints !49

; <label>:1333                                    ; preds = %1306
  %1334 = add nuw i32 %1307, 1
  %1335 = icmp ult i32 %1334, %1303
  br i1 %1335, label %1306, label %1336

; <label>:1336                                    ; preds = %1333, %1306
  %1337 = phi i32 [ 255, %1333 ], [ %1307, %1306 ]
  br label %1338

; <label>:1338                                    ; preds = %1336, %1297
  %1339 = phi i32 [ 255, %1297 ], [ %1337, %1336 ]
  %1340 = icmp eq i32 %1339, 255
  br i1 %1340, label %1346, label %1341, !dx.controlflow.hints !50

; <label>:1341                                    ; preds = %1338
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1339, i32 156)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = icmp ne i32 %1343, 0
  %1345 = zext i1 %1344 to i32
  br label %1346

; <label>:1346                                    ; preds = %1341, %1338
  %1347 = phi i32 [ %1345, %1341 ], [ %1301, %1338 ]
  %1348 = icmp eq i32 %1347, 0
  br i1 %1348, label %1349, label %1418, !dx.controlflow.hints !51

; <label>:1349                                    ; preds = %1346
  %1350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1351 = extractvalue %dx.types.CBufRet.f32 %1350, 3
  %1352 = extractvalue %dx.types.CBufRet.f32 %439, 0
  %1353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1354 = extractvalue %dx.types.CBufRet.f32 %1353, 2
  %1355 = extractvalue %dx.types.CBufRet.f32 %1353, 3
  br i1 %1340, label %1366, label %1356, !dx.controlflow.hints !52

; <label>:1356                                    ; preds = %1349
  %1357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1339, i32 60)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.f32 %1357, 0
  %1359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1339, i32 64)  ; BufferLoad(srv,index,wot)
  %1360 = extractvalue %dx.types.ResRet.f32 %1359, 0
  %1361 = extractvalue %dx.types.ResRet.f32 %1359, 1
  %1362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1339, i32 72)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.f32 %1362, 0
  %1364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1339, i32 96)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.f32 %1364, 0
  br label %1366

; <label>:1366                                    ; preds = %1356, %1349
  %1367 = phi float [ %1358, %1356 ], [ %442, %1349 ]
  %1368 = phi float [ %1363, %1356 ], [ %440, %1349 ]
  %1369 = phi float [ %1365, %1356 ], [ %1352, %1349 ]
  %1370 = phi float [ %1360, %1356 ], [ %1354, %1349 ]
  %1371 = phi float [ %1361, %1356 ], [ %1355, %1349 ]
  %1372 = call float @dx.op.binary.f32(i32 35, float %1082, float 0.000000e+00)  ; FMax(a,b)
  %1373 = call float @dx.op.binary.f32(i32 36, float %1372, float 1.000000e+00)  ; FMin(a,b)
  %1374 = call float @dx.op.unary.f32(i32 24, float %1373)  ; Sqrt(value)
  %1375 = call float @dx.op.binary.f32(i32 35, float %1085, float 0x3F847AE140000000)  ; FMax(a,b)
  %1376 = fsub fast float %1083, %1053
  %1377 = fsub fast float %1053, %1084
  %1378 = call float @dx.op.binary.f32(i32 36, float %1377, float %1376)  ; FMin(a,b)
  %1379 = fdiv fast float %1378, %1375
  %1380 = call float @dx.op.unary.f32(i32 7, float %1379)  ; Saturate(value)
  %1381 = fsub fast float %1053, %1368
  %1382 = fdiv fast float %1381, %1367
  %1383 = call float @dx.op.unary.f32(i32 7, float %1382)  ; Saturate(value)
  %1384 = fsub fast float 1.000000e+00, %1383
  %1385 = fmul float %1380, %1384
  %1386 = fmul float %1385, %1385
  %1387 = fmul fast float %1374, %1351
  %1388 = fmul fast float %1387, %1386
  %1389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1390 = extractvalue %dx.types.CBufRet.f32 %1389, 2
  %1391 = extractvalue %dx.types.CBufRet.f32 %1389, 1
  %1392 = fsub fast float %1388, %1391
  %1393 = fsub fast float %1390, %1391
  %1394 = fdiv fast float %1392, %1393
  %1395 = call float @dx.op.unary.f32(i32 7, float %1394)  ; Saturate(value)
  %1396 = fmul fast float %1395, %1369
  %1397 = fcmp fast ogt float %1371, 0.000000e+00
  br i1 %1397, label %1398, label %1418, !dx.controlflow.hints !53

; <label>:1398                                    ; preds = %1366
  %1399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1400 = extractvalue %dx.types.CBufRet.f32 %1399, 0
  %1401 = extractvalue %dx.types.CBufRet.f32 %1399, 1
  %1402 = extractvalue %dx.types.CBufRet.f32 %1399, 2
  %1403 = fsub fast float %1051, %1400
  %1404 = fsub fast float %1052, %1401
  %1405 = fsub fast float %1053, %1402
  %1406 = fmul fast float %1403, %1403
  %1407 = fmul fast float %1404, %1404
  %1408 = fadd fast float %1406, %1407
  %1409 = fmul fast float %1405, %1405
  %1410 = fadd fast float %1408, %1409
  %1411 = call float @dx.op.unary.f32(i32 24, float %1410)  ; Sqrt(value)
  %1412 = fsub fast float %1411, %1370
  %1413 = fsub fast float %1371, %1370
  %1414 = fdiv fast float %1412, %1413
  %1415 = call float @dx.op.unary.f32(i32 7, float %1414)  ; Saturate(value)
  %1416 = fmul fast float %1415, %1415
  %1417 = fmul fast float %1416, %1396
  br label %1418

; <label>:1418                                    ; preds = %1398, %1366, %1346
  %1419 = phi float [ 0.000000e+00, %1346 ], [ %1417, %1398 ], [ %1396, %1366 ]
  %1420 = fmul fast float %1419, %1047
  %1421 = fadd fast float %1420, %1296
  br label %1422

; <label>:1422                                    ; preds = %1418, %1295
  %1423 = phi float [ %1421, %1418 ], [ %1296, %1295 ]
  %1424 = icmp eq i32 %1245, 0
  br i1 %1424, label %1456, label %1425, !dx.controlflow.hints !54

; <label>:1425                                    ; preds = %1422
  %1426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1427 = extractvalue %dx.types.CBufRet.f32 %1426, 1
  %1428 = fsub fast float %1047, %1427
  %1429 = extractvalue %dx.types.CBufRet.f32 %1426, 3
  %1430 = fmul fast float %1428, %1429
  %1431 = call float @dx.op.unary.f32(i32 7, float %1430)  ; Saturate(value)
  %1432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1433 = extractvalue %dx.types.CBufRet.f32 %1432, 3
  %1434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1435 = extractvalue %dx.types.CBufRet.f32 %1434, 2
  %1436 = fsub fast float %1435, %1244
  %1437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1438 = extractvalue %dx.types.CBufRet.f32 %1437, 3
  %1439 = fmul fast float %1436, %1438
  %1440 = call float @dx.op.unary.f32(i32 7, float %1439)  ; Saturate(value)
  %1441 = fmul fast float %1440, %1433
  %1442 = extractvalue %dx.types.CBufRet.f32 %1437, 0
  %1443 = fsub fast float %1047, %1442
  %1444 = extractvalue %dx.types.CBufRet.f32 %1437, 1
  %1445 = fmul fast float %1443, %1444
  %1446 = call float @dx.op.unary.f32(i32 7, float %1445)  ; Saturate(value)
  %1447 = fsub fast float 1.000000e+00, %1431
  %1448 = fmul fast float %1446, %1447
  %1449 = fadd fast float %1448, %1431
  %1450 = extractvalue %dx.types.CBufRet.f32 %1426, 0
  %1451 = fsub fast float %1441, %1450
  %1452 = fmul fast float %1451, %1449
  %1453 = fadd fast float %1452, %1450
  %1454 = fmul fast float %1453, %1047
  %1455 = fadd fast float %1454, %1423
  br label %1456

; <label>:1456                                    ; preds = %1425, %1422
  %1457 = phi float [ %1455, %1425 ], [ %1423, %1422 ]
  %1458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1459 = extractvalue %dx.types.CBufRet.f32 %1458, 3
  %1460 = fmul fast float %1457, 0xBFF7154760000000
  %1461 = fmul fast float %1460, %1459
  %1462 = call float @dx.op.unary.f32(i32 21, float %1461)  ; Exp(value)
  %1463 = call float @dx.op.unary.f32(i32 7, float %1462)  ; Saturate(value)
  %1464 = fmul fast float %1463, %1043
  %1465 = fmul fast float %1463, %1044
  %1466 = fmul fast float %1463, %1045
  %1467 = fadd fast float %1464, %202
  %1468 = fadd fast float %1465, %203
  %1469 = fadd fast float %1466, %204
  %1470 = fsub fast float 1.000000e+00, %1013
  %1471 = fmul fast float %1005, %402
  %1472 = fmul fast float %1471, %1470
  %1473 = fmul fast float %1472, %1467
  %1474 = fmul fast float %1006, %402
  %1475 = fmul fast float %1474, %1470
  %1476 = fmul fast float %1475, %1468
  %1477 = fmul fast float %1007, %402
  %1478 = fmul fast float %1477, %1470
  %1479 = fmul fast float %1478, %1469
  %1480 = fadd fast float %1473, %403
  %1481 = fadd fast float %1476, %404
  %1482 = fadd fast float %1479, %405
  %1483 = fdiv fast float %989, %736
  %1484 = fadd fast float %736, %409
  %1485 = fmul fast float %409, %409
  %1486 = fmul fast float %1484, %1484
  %1487 = fsub fast float %1485, %1486
  %1488 = fmul fast float %1487, -5.000000e-01
  %1489 = fmul fast float %1488, %1483
  %1490 = fadd fast float %1489, %401
  %1491 = fadd fast float %989, %411
  %1492 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1493 = extractvalue %dx.types.CBufRet.i32 %1492, 0
  %1494 = icmp eq i32 %1493, 0
  br i1 %1494, label %1521, label %1495, !dx.controlflow.hints !58

; <label>:1495                                    ; preds = %1456
  %1496 = icmp ne i32 %416, 0
  %1497 = zext i1 %1496 to i32
  %1498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1499 = extractvalue %dx.types.CBufRet.f32 %1498, 2
  %1500 = extractvalue %dx.types.CBufRet.f32 %1498, 0
  %1501 = fsub fast float %1484, %1500
  %1502 = fmul fast float %1501, %1499
  %1503 = call float @dx.op.unary.f32(i32 7, float %1502)  ; Saturate(value)
  %1504 = fadd fast float %1503, -5.000000e-01
  %1505 = fmul fast float %1504, 2.000000e+00
  %1506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1507 = extractvalue %dx.types.CBufRet.f32 %1506, 2
  %1508 = fcmp fast olt float %1505, %1507
  br i1 %1508, label %1509, label %1521, !dx.controlflow.hints !59

; <label>:1509                                    ; preds = %1495
  %1510 = fmul fast float %1505, %1505
  %1511 = fmul fast float %1470, %402
  %1512 = fmul fast float %1505, %1511
  %1513 = fmul fast float %1510, %1511
  %1514 = fmul fast float %1512, %1510
  %1515 = fmul fast float %1510, %1510
  %1516 = fmul fast float %1515, %1511
  %1517 = fadd fast float %1512, %412
  %1518 = fadd fast float %1513, %413
  %1519 = fadd fast float %1514, %414
  %1520 = fadd fast float %1516, %415
  br label %1521

; <label>:1521                                    ; preds = %1509, %1495, %1456
  %1522 = phi float [ %412, %1456 ], [ %1517, %1509 ], [ %412, %1495 ]
  %1523 = phi float [ %413, %1456 ], [ %1518, %1509 ], [ %413, %1495 ]
  %1524 = phi float [ %414, %1456 ], [ %1519, %1509 ], [ %414, %1495 ]
  %1525 = phi float [ %415, %1456 ], [ %1520, %1509 ], [ %415, %1495 ]
  %1526 = phi i32 [ %416, %1456 ], [ 1, %1509 ], [ %1497, %1495 ]
  %1527 = fmul fast float %1013, %402
  br label %1528

; <label>:1528                                    ; preds = %1521, %1008
  %1529 = phi float [ %1009, %1008 ], [ %1484, %1521 ]
  %1530 = phi i32 [ %389, %1008 ], [ %1243, %1521 ]
  %1531 = phi float [ %390, %1008 ], [ %1244, %1521 ]
  %1532 = phi float [ %391, %1008 ], [ %1082, %1521 ]
  %1533 = phi float [ %392, %1008 ], [ %1083, %1521 ]
  %1534 = phi float [ %393, %1008 ], [ %1084, %1521 ]
  %1535 = phi float [ %394, %1008 ], [ %1085, %1521 ]
  %1536 = phi float [ %401, %1008 ], [ %1490, %1521 ]
  %1537 = phi float [ %402, %1008 ], [ %1527, %1521 ]
  %1538 = phi float [ %403, %1008 ], [ %1480, %1521 ]
  %1539 = phi float [ %404, %1008 ], [ %1481, %1521 ]
  %1540 = phi float [ %405, %1008 ], [ %1482, %1521 ]
  %1541 = phi float [ %411, %1008 ], [ %1491, %1521 ]
  %1542 = phi float [ %412, %1008 ], [ %1522, %1521 ]
  %1543 = phi float [ %413, %1008 ], [ %1523, %1521 ]
  %1544 = phi float [ %414, %1008 ], [ %1524, %1521 ]
  %1545 = phi float [ %415, %1008 ], [ %1525, %1521 ]
  %1546 = phi i32 [ %416, %1008 ], [ %1526, %1521 ]
  %1547 = fmul fast float %736, %275
  %1548 = fmul fast float %736, %276
  %1549 = fmul fast float %736, %277
  %1550 = fadd fast float %1547, %406
  %1551 = fadd fast float %1548, %407
  %1552 = fadd fast float %1549, %408
  %1553 = fcmp fast olt float %1529, %369
  %1554 = extractvalue %dx.types.CBufRet.f32 %994, 2
  %1555 = fcmp fast olt float %1554, %1537
  %1556 = and i1 %1553, %1555
  br i1 %1556, label %388, label %1557

; <label>:1557                                    ; preds = %1528
  br label %1558

; <label>:1558                                    ; preds = %1557, %362
  %1559 = phi float [ 0.000000e+00, %362 ], [ %1536, %1557 ]
  %1560 = phi float [ 1.000000e+00, %362 ], [ %1537, %1557 ]
  %1561 = phi float [ 0.000000e+00, %362 ], [ %1538, %1557 ]
  %1562 = phi float [ 0.000000e+00, %362 ], [ %1539, %1557 ]
  %1563 = phi float [ 0.000000e+00, %362 ], [ %1540, %1557 ]
  %1564 = phi float [ 0.000000e+00, %362 ], [ %1541, %1557 ]
  %1565 = phi float [ 0.000000e+00, %362 ], [ %1542, %1557 ]
  %1566 = phi float [ 0.000000e+00, %362 ], [ %1543, %1557 ]
  %1567 = phi float [ 0.000000e+00, %362 ], [ %1544, %1557 ]
  %1568 = phi float [ 0.000000e+00, %362 ], [ %1545, %1557 ]
  %1569 = phi i32 [ 0, %362 ], [ %1546, %1557 ]
  %1570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1571 = extractvalue %dx.types.CBufRet.i32 %1570, 0
  %1572 = icmp eq i32 %1571, 0
  br i1 %1572, label %1614, label %1573, !dx.controlflow.hints !60

; <label>:1573                                    ; preds = %1558
  %1574 = icmp eq i32 %1569, 0
  br i1 %1574, label %1613, label %1575, !dx.controlflow.hints !61

; <label>:1575                                    ; preds = %1573
  %1576 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1577 = extractvalue %dx.types.CBufRet.i32 %1576, 2
  %1578 = icmp eq i32 %1577, 0
  br i1 %1578, label %1585, label %1579, !dx.controlflow.hints !62

; <label>:1579                                    ; preds = %1575
  %1580 = fsub fast float 1.000000e+00, %1560
  %1581 = fdiv fast float %1565, %1580
  %1582 = fdiv fast float %1566, %1580
  %1583 = fdiv fast float %1567, %1580
  %1584 = fdiv fast float %1568, %1580
  br label %1590

; <label>:1585                                    ; preds = %1575
  %1586 = fadd fast float %1565, %1560
  %1587 = fadd fast float %1566, %1560
  %1588 = fadd fast float %1567, %1560
  %1589 = fadd fast float %1568, %1560
  br label %1590

; <label>:1590                                    ; preds = %1585, %1579
  %1591 = phi float [ %1581, %1579 ], [ %1586, %1585 ]
  %1592 = phi float [ %1582, %1579 ], [ %1587, %1585 ]
  %1593 = phi float [ %1583, %1579 ], [ %1588, %1585 ]
  %1594 = phi float [ %1584, %1579 ], [ %1589, %1585 ]
  %1595 = call float @dx.op.binary.f32(i32 35, float %1591, float -1.000000e+00)  ; FMax(a,b)
  %1596 = call float @dx.op.binary.f32(i32 35, float %1592, float -1.000000e+00)  ; FMax(a,b)
  %1597 = call float @dx.op.binary.f32(i32 35, float %1593, float -1.000000e+00)  ; FMax(a,b)
  %1598 = call float @dx.op.binary.f32(i32 35, float %1594, float -1.000000e+00)  ; FMax(a,b)
  %1599 = call float @dx.op.binary.f32(i32 36, float %1595, float 1.000000e+00)  ; FMin(a,b)
  %1600 = call float @dx.op.binary.f32(i32 36, float %1596, float 1.000000e+00)  ; FMin(a,b)
  %1601 = call float @dx.op.binary.f32(i32 36, float %1597, float 1.000000e+00)  ; FMin(a,b)
  %1602 = call float @dx.op.binary.f32(i32 36, float %1598, float 1.000000e+00)  ; FMin(a,b)
  %1603 = fmul fast float %1599, 1.500000e+00
  %1604 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1601, float %1603)  ; FMad(a,b,c)
  %1605 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1600, float 0.000000e+00)  ; FMad(a,b,c)
  %1606 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1602, float %1605)  ; FMad(a,b,c)
  %1607 = fmul fast float %1599, 0x3FEBB67AE0000000
  %1608 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1601, float %1607)  ; FMad(a,b,c)
  %1609 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1600, float 0.000000e+00)  ; FMad(a,b,c)
  %1610 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1602, float %1609)  ; FMad(a,b,c)
  %1611 = fadd fast float %1604, 5.000000e-01
  %1612 = fadd fast float %1608, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 0, float %1611, float %1606, float %1612, float %1610, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1614

; <label>:1613                                    ; preds = %1573
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1614

; <label>:1614                                    ; preds = %1613, %1590, %1558
  %1615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1616 = extractvalue %dx.types.CBufRet.f32 %1615, 2
  %1617 = fsub fast float %1560, %1616
  %1618 = fdiv fast float %1617, %1616
  %1619 = call float @dx.op.unary.f32(i32 7, float %1618)  ; Saturate(value)
  %1620 = fmul fast float %1619, 2.000000e+00
  %1621 = fsub fast float 3.000000e+00, %1620
  %1622 = fmul fast float %1619, %1619
  %1623 = fmul fast float %1622, %1560
  %1624 = fmul fast float %1623, %1621
  %1625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1626 = extractvalue %dx.types.CBufRet.f32 %1625, 0
  %1627 = extractvalue %dx.types.CBufRet.f32 %1625, 1
  %1628 = extractvalue %dx.types.CBufRet.f32 %1625, 2
  %1629 = call float @dx.op.dot3.f32(i32 55, float %275, float %276, float %277, float %1626, float %1627, float %1628)  ; Dot3(ax,ay,az,bx,by,bz)
  %1630 = fmul fast float %1629, %1559
  %1631 = fcmp fast ogt float %1564, 0.000000e+00
  %1632 = fdiv fast float 1.000000e+00, %1564
  %1633 = fmul fast float %1630, %1632
  %1634 = select i1 %1631, float %1633, float %286
  %1635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1636 = extractvalue %dx.types.CBufRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.CBufRet.f32 %1635, 1
  %1638 = extractvalue %dx.types.CBufRet.f32 %1635, 2
  %1639 = fmul fast float %1636, %239
  %1640 = fmul fast float %1637, %239
  %1641 = fmul fast float %1638, %239
  %1642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1643 = extractvalue %dx.types.CBufRet.f32 %1642, 0
  %1644 = extractvalue %dx.types.CBufRet.f32 %1642, 1
  %1645 = extractvalue %dx.types.CBufRet.f32 %1642, 2
  %1646 = fmul fast float %1643, %240
  %1647 = fmul fast float %1644, %240
  %1648 = fmul fast float %1645, %240
  %1649 = fadd fast float %1646, %1639
  %1650 = fadd fast float %1647, %1640
  %1651 = fadd fast float %1648, %1641
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1652, 0
  %1654 = extractvalue %dx.types.CBufRet.f32 %1652, 1
  %1655 = extractvalue %dx.types.CBufRet.f32 %1652, 2
  %1656 = fadd fast float %1649, %1653
  %1657 = fadd fast float %1650, %1654
  %1658 = fadd fast float %1651, %1655
  %1659 = fmul fast float %1656, %1634
  %1660 = fmul fast float %1657, %1634
  %1661 = fmul fast float %1658, %1634
  %1662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1663 = extractvalue %dx.types.CBufRet.f32 %1662, 0
  %1664 = extractvalue %dx.types.CBufRet.f32 %1662, 1
  %1665 = extractvalue %dx.types.CBufRet.f32 %1662, 2
  %1666 = extractvalue %dx.types.CBufRet.f32 %1662, 3
  %1667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.f32 %1667, 0
  %1669 = extractvalue %dx.types.CBufRet.f32 %1667, 1
  %1670 = extractvalue %dx.types.CBufRet.f32 %1667, 2
  %1671 = extractvalue %dx.types.CBufRet.f32 %1667, 3
  %1672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1673 = extractvalue %dx.types.CBufRet.f32 %1672, 0
  %1674 = extractvalue %dx.types.CBufRet.f32 %1672, 1
  %1675 = extractvalue %dx.types.CBufRet.f32 %1672, 2
  %1676 = extractvalue %dx.types.CBufRet.f32 %1672, 3
  %1677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1678 = extractvalue %dx.types.CBufRet.f32 %1677, 0
  %1679 = extractvalue %dx.types.CBufRet.f32 %1677, 1
  %1680 = extractvalue %dx.types.CBufRet.f32 %1677, 2
  %1681 = extractvalue %dx.types.CBufRet.f32 %1677, 3
  %1682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1683 = extractvalue %dx.types.CBufRet.f32 %1682, 3
  %1684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1685 = extractvalue %dx.types.CBufRet.f32 %1684, 3
  %1686 = extractvalue %dx.types.CBufRet.f32 %1684, 0
  %1687 = extractvalue %dx.types.CBufRet.f32 %1684, 1
  %1688 = extractvalue %dx.types.CBufRet.f32 %1684, 2
  %1689 = fcmp fast olt float %1688, -5.000000e-01
  %1690 = call float @dx.op.dot3.f32(i32 55, float %1659, float %1660, float %1661, float %1659, float %1660, float %1661)  ; Dot3(ax,ay,az,bx,by,bz)
  %1691 = call float @dx.op.unary.f32(i32 25, float %1690)  ; Rsqrt(value)
  %1692 = fmul fast float %1691, %1690
  %1693 = fmul fast float %1691, %1659
  %1694 = fmul fast float %1691, %1660
  %1695 = fmul fast float %1691, %1661
  %1696 = fadd fast float %1692, %1666
  %1697 = call float @dx.op.dot3.f32(i32 55, float %1693, float %1694, float %1695, float %1663, float %1664, float %1665)  ; Dot3(ax,ay,az,bx,by,bz)
  %1698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1699 = extractvalue %dx.types.CBufRet.i32 %1698, 1
  %1700 = and i32 %1699, 1
  %1701 = icmp ne i32 %1700, 0
  %1702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1703 = extractvalue %dx.types.CBufRet.f32 %1702, 2
  %1704 = fcmp fast ogt float %1703, 0.000000e+00
  %1705 = and i1 %1701, %1704
  br i1 %1705, label %1706, label %2112, !dx.controlflow.hints !63

; <label>:1706                                    ; preds = %1614
  %1707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1708 = extractvalue %dx.types.CBufRet.f32 %1707, 3
  %1709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.f32 %1709, 2
  %1711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1712 = extractvalue %dx.types.CBufRet.f32 %1711, 2
  %1713 = fsub fast float %1710, %1712
  %1714 = and i32 %1699, 2
  %1715 = extractvalue %dx.types.CBufRet.i32 %1698, 0
  %1716 = call i32 @dx.op.binary.i32(i32 40, i32 %1715, i32 3)  ; UMin(a,b)
  %1717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1718 = extractvalue %dx.types.CBufRet.f32 %1717, 0
  %1719 = extractvalue %dx.types.CBufRet.f32 %1717, 1
  %1720 = extractvalue %dx.types.CBufRet.f32 %1711, 0
  %1721 = extractvalue %dx.types.CBufRet.f32 %1711, 1
  %1722 = fsub fast float %1718, %1720
  %1723 = fsub fast float %1719, %1721
  %1724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.f32 %1724, 0
  %1726 = fcmp fast ogt float %1725, 0.000000e+00
  %1727 = fsub fast float -0.000000e+00, %1722
  %1728 = fsub fast float -0.000000e+00, %1723
  %1729 = call float @dx.op.dot2.f32(i32 54, float %1693, float %1694, float %1693, float %1694)  ; Dot2(ax,ay,bx,by)
  %1730 = call float @dx.op.dot2.f32(i32 54, float %1693, float %1694, float %1727, float %1728)  ; Dot2(ax,ay,bx,by)
  %1731 = fmul fast float %1730, 2.000000e+00
  %1732 = call float @dx.op.dot2.f32(i32 54, float %1727, float %1728, float %1727, float %1728)  ; Dot2(ax,ay,bx,by)
  %1733 = fmul fast float %1725, %1725
  %1734 = fsub fast float %1732, %1733
  %1735 = fmul fast float %1731, %1731
  %1736 = fmul fast float %1729, 4.000000e+00
  %1737 = fmul fast float %1736, %1734
  %1738 = fsub fast float %1735, %1737
  %1739 = fcmp fast ogt float %1738, 0.000000e+00
  br i1 %1739, label %1740, label %1755, !dx.controlflow.hints !64

; <label>:1740                                    ; preds = %1706
  %1741 = fcmp fast ogt float %1731, 0.000000e+00
  %1742 = call float @dx.op.unary.f32(i32 24, float %1738)  ; Sqrt(value)
  %1743 = fsub fast float -0.000000e+00, %1742
  %1744 = select i1 %1741, float %1742, float %1743
  %1745 = fadd fast float %1744, %1731
  %1746 = fmul float %1745, -5.000000e-01
  %1747 = fdiv fast float %1746, %1729
  %1748 = call float @dx.op.binary.f32(i32 35, float %1747, float 0.000000e+00)  ; FMax(a,b)
  %1749 = call float @dx.op.binary.f32(i32 36, float %1692, float %1748)  ; FMin(a,b)
  %1750 = fdiv fast float %1734, %1746
  %1751 = call float @dx.op.binary.f32(i32 35, float %1750, float 0.000000e+00)  ; FMax(a,b)
  %1752 = call float @dx.op.binary.f32(i32 36, float %1692, float %1751)  ; FMin(a,b)
  %1753 = call float @dx.op.binary.f32(i32 36, float %1749, float %1752)  ; FMin(a,b)
  %1754 = call float @dx.op.binary.f32(i32 35, float %1749, float %1752)  ; FMax(a,b)
  br label %1755

; <label>:1755                                    ; preds = %1740, %1706
  %1756 = phi float [ %1754, %1740 ], [ -1.000000e+00, %1706 ]
  %1757 = phi float [ %1753, %1740 ], [ -1.000000e+00, %1706 ]
  %1758 = phi i1 [ true, %1740 ], [ false, %1706 ]
  %1759 = and i1 %1726, %1758
  br i1 %1759, label %1760, label %1762, !dx.controlflow.hints !65

; <label>:1760                                    ; preds = %1755
  %1761 = fcmp fast oeq float %1757, %1756
  br i1 %1761, label %2065, label %1763, !dx.controlflow.hints !66

; <label>:1762                                    ; preds = %1755
  br i1 %1726, label %2065, label %1763, !dx.controlflow.hints !67

; <label>:1763                                    ; preds = %1762, %1760
  %1764 = phi float [ %1692, %1762 ], [ %1756, %1760 ]
  %1765 = phi float [ 0.000000e+00, %1762 ], [ %1757, %1760 ]
  %1766 = icmp ne i32 %1714, 0
  %1767 = fmul fast float %1764, %1695
  %1768 = fadd fast float %1767, %1708
  %1769 = fmul fast float %1768, %1764
  %1770 = select i1 %1766, float 0.000000e+00, float %1769
  %1771 = fcmp fast oeq float %1695, 0.000000e+00
  %1772 = fdiv fast float %1713, %1695
  %1773 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1772)  ; FMax(a,b)
  %1774 = select i1 %1771, float %1764, float %1773
  %1775 = call float @dx.op.binary.f32(i32 36, float %1764, float %1774)  ; FMin(a,b)
  %1776 = fcmp fast ogt float %1695, 0.000000e+00
  %1777 = fcmp fast olt float %1713, 0.000000e+00
  br i1 %1776, label %1778, label %1835, !dx.controlflow.hints !68

; <label>:1778                                    ; preds = %1763
  %1779 = icmp eq i32 %1714, 0
  br i1 %1777, label %1780, label %1824, !dx.controlflow.hints !69

; <label>:1780                                    ; preds = %1778
  %1781 = select i1 %1779, float %1764, float 0.000000e+00
  %1782 = fsub fast float -0.000000e+00, %1781
  %1783 = call float @dx.op.unary.f32(i32 6, float %1782)  ; FAbs(value)
  %1784 = fmul fast float %1781, %1695
  %1785 = fadd fast float %1784, %1708
  %1786 = fmul fast float %1783, %1785
  %1787 = fsub fast float %1770, %1786
  %1788 = fsub fast float %1764, %1783
  %1789 = select i1 %1779, float %1788, float 0.000000e+00
  %1790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1790, 0
  %1792 = extractvalue %dx.types.CBufRet.f32 %1790, 1
  %1793 = extractvalue %dx.types.CBufRet.f32 %1790, 2
  %1794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1795 = extractvalue %dx.types.CBufRet.f32 %1794, 0
  %1796 = extractvalue %dx.types.CBufRet.f32 %1794, 1
  %1797 = extractvalue %dx.types.CBufRet.f32 %1794, 2
  %1798 = extractvalue %dx.types.CBufRet.f32 %1794, 3
  %1799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1800 = extractvalue %dx.types.CBufRet.f32 %1799, 3
  %1801 = call float @dx.op.binary.f32(i32 36, float %1787, float %1800)  ; FMin(a,b)
  %1802 = fmul fast float %1798, %1789
  %1803 = call float @dx.op.unary.f32(i32 7, float %1802)  ; Saturate(value)
  %1804 = fsub fast float %1795, %1791
  %1805 = fsub fast float %1796, %1792
  %1806 = fsub fast float %1797, %1793
  %1807 = fmul fast float %1803, %1804
  %1808 = fmul fast float %1803, %1805
  %1809 = fmul fast float %1803, %1806
  %1810 = fadd fast float %1807, %1791
  %1811 = fadd fast float %1808, %1792
  %1812 = fadd fast float %1809, %1793
  %1813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.f32 %1813, 0
  %1815 = extractvalue %dx.types.CBufRet.f32 %1813, 1
  %1816 = fadd fast float %1815, %1814
  %1817 = call float @dx.op.unary.f32(i32 7, float %1816)  ; Saturate(value)
  %1818 = extractvalue %dx.types.CBufRet.f32 %1813, 2
  %1819 = extractvalue %dx.types.CBufRet.f32 %1813, 3
  %1820 = fadd fast float %1819, %1818
  %1821 = call float @dx.op.unary.f32(i32 7, float %1820)  ; Saturate(value)
  %1822 = fmul fast float %1817, %1801
  %1823 = fmul fast float %1822, %1821
  br label %2065

; <label>:1824                                    ; preds = %1778
  br i1 %1779, label %1825, label %1846, !dx.controlflow.hints !70

; <label>:1825                                    ; preds = %1824
  %1826 = call float @dx.op.binary.f32(i32 36, float %1775, float %1765)  ; FMin(a,b)
  %1827 = fsub fast float %1775, %1826
  %1828 = fsub fast float %1827, %1764
  %1829 = call float @dx.op.unary.f32(i32 6, float %1828)  ; FAbs(value)
  %1830 = fadd fast float %1827, %1764
  %1831 = fmul fast float %1830, %1695
  %1832 = fadd fast float %1831, %1708
  %1833 = fmul fast float %1832, %1829
  %1834 = fsub fast float %1770, %1833
  br label %1846

; <label>:1835                                    ; preds = %1763
  br i1 %1777, label %1836, label %1846, !dx.controlflow.hints !71

; <label>:1836                                    ; preds = %1835
  %1837 = call float @dx.op.binary.f32(i32 35, float %1765, float %1775)  ; FMax(a,b)
  %1838 = icmp eq i32 %1714, 0
  %1839 = select i1 %1838, float %1775, float 0.000000e+00
  %1840 = fsub fast float -0.000000e+00, %1839
  %1841 = call float @dx.op.unary.f32(i32 6, float %1840)  ; FAbs(value)
  %1842 = fmul fast float %1839, %1695
  %1843 = fadd fast float %1842, %1708
  %1844 = fmul fast float %1841, %1843
  %1845 = fsub fast float %1770, %1844
  br label %1846

; <label>:1846                                    ; preds = %1836, %1835, %1825, %1824
  %1847 = phi float [ %1765, %1824 ], [ %1765, %1825 ], [ %1837, %1836 ], [ %1765, %1835 ]
  %1848 = phi float [ 0.000000e+00, %1824 ], [ %1829, %1825 ], [ %1841, %1836 ], [ 0.000000e+00, %1835 ]
  %1849 = phi float [ %1770, %1824 ], [ %1834, %1825 ], [ %1845, %1836 ], [ %1770, %1835 ]
  %1850 = phi float [ %1775, %1824 ], [ %1775, %1825 ], [ %1764, %1836 ], [ %1764, %1835 ]
  %1851 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 0
  store float -1.000000e+00, float* %1851, align 4, !tbaa !72, !noalias !76
  %1852 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 1
  store float -1.000000e+00, float* %1852, align 4, !tbaa !72, !noalias !76
  %1853 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 2
  store float -1.000000e+00, float* %1853, align 4, !tbaa !72, !noalias !76
  %1854 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 0
  store float -1.000000e+00, float* %1854, align 4, !tbaa !72, !noalias !76
  %1855 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 1
  store float -1.000000e+00, float* %1855, align 4, !tbaa !72, !noalias !76
  %1856 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 2
  store float -1.000000e+00, float* %1856, align 4, !tbaa !72, !noalias !76
  %1857 = icmp sgt i32 %1716, 0
  br i1 %1857, label %1858, label %1919

; <label>:1858                                    ; preds = %1846
  br label %1859

; <label>:1859                                    ; preds = %1908, %1858
  %1860 = phi i32 [ %1909, %1908 ], [ 0, %1858 ]
  %1861 = phi i32 [ %1910, %1908 ], [ 0, %1858 ]
  %1862 = add nuw i32 %1861, 171
  %1863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %1862)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.f32 %1863, 0
  %1865 = extractvalue %dx.types.CBufRet.f32 %1863, 1
  %1866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.f32 %1866, 0
  %1868 = extractvalue %dx.types.CBufRet.f32 %1866, 1
  %1869 = fsub fast float %1864, %1867
  %1870 = fsub fast float %1865, %1868
  %1871 = extractvalue %dx.types.CBufRet.f32 %1863, 2
  %1872 = fsub fast float -0.000000e+00, %1869
  %1873 = fsub fast float -0.000000e+00, %1870
  %1874 = call float @dx.op.dot2.f32(i32 54, float %1693, float %1694, float %1872, float %1873)  ; Dot2(ax,ay,bx,by)
  %1875 = fmul fast float %1874, 2.000000e+00
  %1876 = call float @dx.op.dot2.f32(i32 54, float %1872, float %1873, float %1872, float %1873)  ; Dot2(ax,ay,bx,by)
  %1877 = fmul fast float %1871, %1871
  %1878 = fsub fast float %1876, %1877
  %1879 = fmul fast float %1875, %1875
  %1880 = fmul fast float %1736, %1878
  %1881 = fsub fast float %1879, %1880
  %1882 = fcmp fast ogt float %1881, 0.000000e+00
  br i1 %1882, label %1883, label %1898, !dx.controlflow.hints !64

; <label>:1883                                    ; preds = %1859
  %1884 = fcmp fast ogt float %1875, 0.000000e+00
  %1885 = call float @dx.op.unary.f32(i32 24, float %1881)  ; Sqrt(value)
  %1886 = fsub fast float -0.000000e+00, %1885
  %1887 = select i1 %1884, float %1885, float %1886
  %1888 = fadd fast float %1887, %1875
  %1889 = fmul float %1888, -5.000000e-01
  %1890 = fdiv fast float %1889, %1729
  %1891 = call float @dx.op.binary.f32(i32 35, float %1890, float 0.000000e+00)  ; FMax(a,b)
  %1892 = call float @dx.op.binary.f32(i32 36, float %1764, float %1891)  ; FMin(a,b)
  %1893 = fdiv fast float %1878, %1889
  %1894 = call float @dx.op.binary.f32(i32 35, float %1893, float 0.000000e+00)  ; FMax(a,b)
  %1895 = call float @dx.op.binary.f32(i32 36, float %1764, float %1894)  ; FMin(a,b)
  %1896 = call float @dx.op.binary.f32(i32 36, float %1892, float %1895)  ; FMin(a,b)
  %1897 = call float @dx.op.binary.f32(i32 35, float %1892, float %1895)  ; FMax(a,b)
  br label %1898

; <label>:1898                                    ; preds = %1883, %1859
  %1899 = phi float [ %1897, %1883 ], [ -1.000000e+00, %1859 ]
  %1900 = phi float [ %1896, %1883 ], [ -1.000000e+00, %1859 ]
  %1901 = phi i1 [ true, %1883 ], [ false, %1859 ]
  br i1 %1901, label %1902, label %1908, !dx.controlflow.hints !87

; <label>:1902                                    ; preds = %1898
  %1903 = call float @dx.op.binary.f32(i32 35, float %1847, float %1900)  ; FMax(a,b)
  %1904 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %1861
  store float %1903, float* %1904, align 4, !tbaa !72, !noalias !76
  %1905 = call float @dx.op.binary.f32(i32 35, float %1847, float %1899)  ; FMax(a,b)
  %1906 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 %1861
  store float %1905, float* %1906, align 4, !tbaa !72, !noalias !76
  %1907 = add nsw i32 %1860, 1
  br label %1908

; <label>:1908                                    ; preds = %1902, %1898
  %1909 = phi i32 [ %1907, %1902 ], [ %1860, %1898 ]
  %1910 = add nuw nsw i32 %1861, 1
  %1911 = icmp eq i32 %1910, %1716
  br i1 %1911, label %1912, label %1859

; <label>:1912                                    ; preds = %1908
  %1913 = load float, float* %1853, align 4, !tbaa !72, !alias.scope !88, !noalias !91
  %1914 = load float, float* %1852, align 4, !tbaa !72, !alias.scope !94, !noalias !95
  %1915 = load float, float* %1851, align 4, !tbaa !72, !alias.scope !96, !noalias !97
  %1916 = load float, float* %1856, align 4, !tbaa !72, !alias.scope !98, !noalias !101
  %1917 = load float, float* %1855, align 4, !tbaa !72, !alias.scope !104, !noalias !105
  %1918 = load float, float* %1854, align 4, !tbaa !72, !alias.scope !106, !noalias !107
  br label %1919

; <label>:1919                                    ; preds = %1912, %1846
  %1920 = phi float [ -1.000000e+00, %1846 ], [ %1918, %1912 ]
  %1921 = phi float [ -1.000000e+00, %1846 ], [ %1917, %1912 ]
  %1922 = phi float [ -1.000000e+00, %1846 ], [ %1916, %1912 ]
  %1923 = phi float [ -1.000000e+00, %1846 ], [ %1915, %1912 ]
  %1924 = phi float [ -1.000000e+00, %1846 ], [ %1914, %1912 ]
  %1925 = phi float [ -1.000000e+00, %1846 ], [ %1913, %1912 ]
  %1926 = phi i32 [ 0, %1846 ], [ %1909, %1912 ]
  %1927 = call float @dx.op.binary.f32(i32 36, float %1924, float %1925)  ; FMin(a,b)
  %1928 = call float @dx.op.binary.f32(i32 36, float %1923, float %1927)  ; FMin(a,b)
  %1929 = call float @dx.op.binary.f32(i32 35, float %1923, float %1924)  ; FMax(a,b)
  %1930 = call float @dx.op.binary.f32(i32 36, float %1929, float %1925)  ; FMin(a,b)
  %1931 = call float @dx.op.binary.f32(i32 36, float %1923, float %1924)  ; FMin(a,b)
  %1932 = call float @dx.op.binary.f32(i32 35, float %1931, float %1930)  ; FMax(a,b)
  %1933 = call float @dx.op.binary.f32(i32 35, float %1924, float %1925)  ; FMax(a,b)
  %1934 = call float @dx.op.binary.f32(i32 35, float %1923, float %1933)  ; FMax(a,b)
  store float %1928, float* %1851, align 4, !tbaa !72, !alias.scope !96, !noalias !97
  store float %1932, float* %1852, align 4, !tbaa !72, !alias.scope !94, !noalias !95
  store float %1934, float* %1853, align 4, !tbaa !72, !alias.scope !88, !noalias !91
  %1935 = call float @dx.op.binary.f32(i32 36, float %1921, float %1922)  ; FMin(a,b)
  %1936 = call float @dx.op.binary.f32(i32 36, float %1920, float %1935)  ; FMin(a,b)
  %1937 = call float @dx.op.binary.f32(i32 35, float %1920, float %1921)  ; FMax(a,b)
  %1938 = call float @dx.op.binary.f32(i32 36, float %1937, float %1922)  ; FMin(a,b)
  %1939 = call float @dx.op.binary.f32(i32 36, float %1920, float %1921)  ; FMin(a,b)
  %1940 = call float @dx.op.binary.f32(i32 35, float %1939, float %1938)  ; FMax(a,b)
  %1941 = call float @dx.op.binary.f32(i32 35, float %1921, float %1922)  ; FMax(a,b)
  %1942 = call float @dx.op.binary.f32(i32 35, float %1920, float %1941)  ; FMax(a,b)
  store float %1936, float* %1854, align 4, !tbaa !72, !alias.scope !106, !noalias !107
  store float %1940, float* %1855, align 4, !tbaa !72, !alias.scope !104, !noalias !105
  store float %1942, float* %1856, align 4, !tbaa !72, !alias.scope !98, !noalias !101
  %1943 = sub nsw i32 3, %1926
  %1944 = icmp sgt i32 %1943, 2
  br i1 %1944, label %1945, label %1983, !dx.controlflow.hints !108

; <label>:1945                                    ; preds = %1919
  %1946 = icmp eq i32 %1714, 0
  %1947 = fsub fast float %1764, %1848
  %1948 = select i1 %1946, float %1947, float %1848
  %1949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1950 = extractvalue %dx.types.CBufRet.f32 %1949, 0
  %1951 = extractvalue %dx.types.CBufRet.f32 %1949, 1
  %1952 = extractvalue %dx.types.CBufRet.f32 %1949, 2
  %1953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1954 = extractvalue %dx.types.CBufRet.f32 %1953, 0
  %1955 = extractvalue %dx.types.CBufRet.f32 %1953, 1
  %1956 = extractvalue %dx.types.CBufRet.f32 %1953, 2
  %1957 = extractvalue %dx.types.CBufRet.f32 %1953, 3
  %1958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1959 = extractvalue %dx.types.CBufRet.f32 %1958, 3
  %1960 = call float @dx.op.binary.f32(i32 36, float %1849, float %1959)  ; FMin(a,b)
  %1961 = fmul fast float %1957, %1948
  %1962 = call float @dx.op.unary.f32(i32 7, float %1961)  ; Saturate(value)
  %1963 = fsub fast float %1954, %1950
  %1964 = fsub fast float %1955, %1951
  %1965 = fsub fast float %1956, %1952
  %1966 = fmul fast float %1962, %1963
  %1967 = fmul fast float %1962, %1964
  %1968 = fmul fast float %1962, %1965
  %1969 = fadd fast float %1966, %1950
  %1970 = fadd fast float %1967, %1951
  %1971 = fadd fast float %1968, %1952
  %1972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1973 = extractvalue %dx.types.CBufRet.f32 %1972, 0
  %1974 = extractvalue %dx.types.CBufRet.f32 %1972, 1
  %1975 = fadd fast float %1974, %1973
  %1976 = call float @dx.op.unary.f32(i32 7, float %1975)  ; Saturate(value)
  %1977 = extractvalue %dx.types.CBufRet.f32 %1972, 2
  %1978 = extractvalue %dx.types.CBufRet.f32 %1972, 3
  %1979 = fadd fast float %1978, %1977
  %1980 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  %1981 = fmul fast float %1976, %1960
  %1982 = fmul fast float %1981, %1980
  br label %2065

; <label>:1983                                    ; preds = %1919
  %1984 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %1943
  %1985 = load float, float* %1984, align 4, !tbaa !72, !noalias !76
  %1986 = fcmp fast olt float %1985, %1850
  %1987 = icmp sgt i32 %1926, 0
  %1988 = and i1 %1987, %1986
  br i1 %1988, label %1989, label %2026

; <label>:1989                                    ; preds = %1983
  br label %1990

; <label>:1990                                    ; preds = %2019, %1989
  %1991 = phi float [ %2020, %2019 ], [ %1848, %1989 ]
  %1992 = phi float [ %2021, %2019 ], [ %1849, %1989 ]
  %1993 = phi float [ %2001, %2019 ], [ %1985, %1989 ]
  %1994 = phi i32 [ %1998, %2019 ], [ %1943, %1989 ]
  %1995 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 %1994
  %1996 = load float, float* %1995, align 4, !tbaa !72, !noalias !76
  %1997 = icmp slt i32 %1994, 2
  %1998 = add nsw i32 %1994, 1
  %1999 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %1998
  %2000 = load float, float* %1999, align 4, !tbaa !72, !noalias !76
  %2001 = select i1 %1997, float %2000, float %1764
  %2002 = call float @dx.op.binary.f32(i32 36, float %2001, float %1996)  ; FMin(a,b)
  %2003 = call float @dx.op.binary.f32(i32 36, float %1850, float %2002)  ; FMin(a,b)
  %2004 = icmp eq i32 %1714, 0
  %2005 = fadd fast float %2003, %1993
  %2006 = fmul fast float %2005, %1695
  %2007 = fadd fast float %2006, %1708
  br i1 %2004, label %2013, label %2008, !dx.controlflow.hints !109

; <label>:2008                                    ; preds = %1990
  %2009 = fsub fast float %2003, %1993
  %2010 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2009)  ; FMax(a,b)
  %2011 = fmul fast float %2010, %2007
  %2012 = fadd fast float %2011, %1992
  br label %2019

; <label>:2013                                    ; preds = %1990
  %2014 = fsub fast float %1993, %2003
  %2015 = call float @dx.op.unary.f32(i32 6, float %2014)  ; FAbs(value)
  %2016 = fadd fast float %2015, %1991
  %2017 = fmul fast float %2015, %2007
  %2018 = fsub fast float %1992, %2017
  br label %2019

; <label>:2019                                    ; preds = %2013, %2008
  %2020 = phi float [ %2010, %2008 ], [ %2016, %2013 ]
  %2021 = phi float [ %2012, %2008 ], [ %2018, %2013 ]
  %2022 = fcmp fast olt float %2001, %1850
  %2023 = icmp slt i32 %1998, 3
  %2024 = and i1 %2023, %2022
  br i1 %2024, label %1990, label %2025

; <label>:2025                                    ; preds = %2019
  br label %2026

; <label>:2026                                    ; preds = %2025, %1983
  %2027 = phi float [ %1848, %1983 ], [ %2020, %2025 ]
  %2028 = phi float [ %1849, %1983 ], [ %2021, %2025 ]
  %2029 = fsub fast float %1764, %2027
  %2030 = select i1 %1766, float %2027, float %2029
  %2031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2032 = extractvalue %dx.types.CBufRet.f32 %2031, 0
  %2033 = extractvalue %dx.types.CBufRet.f32 %2031, 1
  %2034 = extractvalue %dx.types.CBufRet.f32 %2031, 2
  %2035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2036 = extractvalue %dx.types.CBufRet.f32 %2035, 0
  %2037 = extractvalue %dx.types.CBufRet.f32 %2035, 1
  %2038 = extractvalue %dx.types.CBufRet.f32 %2035, 2
  %2039 = extractvalue %dx.types.CBufRet.f32 %2035, 3
  %2040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2041 = extractvalue %dx.types.CBufRet.f32 %2040, 3
  %2042 = call float @dx.op.binary.f32(i32 36, float %2028, float %2041)  ; FMin(a,b)
  %2043 = fmul fast float %2039, %2030
  %2044 = call float @dx.op.unary.f32(i32 7, float %2043)  ; Saturate(value)
  %2045 = fsub fast float %2036, %2032
  %2046 = fsub fast float %2037, %2033
  %2047 = fsub fast float %2038, %2034
  %2048 = fmul fast float %2044, %2045
  %2049 = fmul fast float %2044, %2046
  %2050 = fmul fast float %2044, %2047
  %2051 = fadd fast float %2048, %2032
  %2052 = fadd fast float %2049, %2033
  %2053 = fadd fast float %2050, %2034
  %2054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2055 = extractvalue %dx.types.CBufRet.f32 %2054, 0
  %2056 = extractvalue %dx.types.CBufRet.f32 %2054, 1
  %2057 = fadd fast float %2056, %2055
  %2058 = call float @dx.op.unary.f32(i32 7, float %2057)  ; Saturate(value)
  %2059 = extractvalue %dx.types.CBufRet.f32 %2054, 2
  %2060 = extractvalue %dx.types.CBufRet.f32 %2054, 3
  %2061 = fadd fast float %2060, %2059
  %2062 = call float @dx.op.unary.f32(i32 7, float %2061)  ; Saturate(value)
  %2063 = fmul fast float %2058, %2042
  %2064 = fmul fast float %2063, %2062
  br label %2065

; <label>:2065                                    ; preds = %2026, %1945, %1780, %1762, %1760
  %2066 = phi float [ %1789, %1780 ], [ %1948, %1945 ], [ %2030, %2026 ], [ 0.000000e+00, %1760 ], [ 0.000000e+00, %1762 ]
  %2067 = phi float [ %1823, %1780 ], [ %1982, %1945 ], [ %2064, %2026 ], [ 0.000000e+00, %1760 ], [ 0.000000e+00, %1762 ]
  %2068 = phi float [ %1810, %1780 ], [ %1969, %1945 ], [ %2051, %2026 ], [ 0.000000e+00, %1760 ], [ 0.000000e+00, %1762 ]
  %2069 = phi float [ %1811, %1780 ], [ %1970, %1945 ], [ %2052, %2026 ], [ 0.000000e+00, %1760 ], [ 0.000000e+00, %1762 ]
  %2070 = phi float [ %1812, %1780 ], [ %1971, %1945 ], [ %2053, %2026 ], [ 0.000000e+00, %1760 ], [ 0.000000e+00, %1762 ]
  %2071 = fmul fast float %1703, %2067
  %2072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2073 = extractvalue %dx.types.CBufRet.f32 %2072, 2
  %2074 = fsub fast float %1710, %2073
  %2075 = fcmp fast olt float %2071, -2.000000e+01
  %2076 = call float @dx.op.unary.f32(i32 21, float %2071)  ; Exp(value)
  %2077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2078 = extractvalue %dx.types.CBufRet.f32 %2077, 2
  %2079 = extractvalue %dx.types.CBufRet.f32 %2077, 3
  %2080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2081 = extractvalue %dx.types.CBufRet.f32 %2080, 2
  %2082 = fmul fast float %2079, %2074
  %2083 = call float @dx.op.unary.f32(i32 7, float %2082)  ; Saturate(value)
  %2084 = fsub fast float 1.000000e+00, %2083
  %2085 = fmul fast float %1695, 5.000000e-01
  %2086 = fadd fast float %2085, 5.000000e-01
  %2087 = call float @dx.op.unary.f32(i32 7, float %2086)  ; Saturate(value)
  %2088 = fsub fast float 1.000000e+00, %2087
  %2089 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2084)  ; FMax(a,b)
  %2090 = fdiv fast float %2088, %2089
  %2091 = fsub fast float %2074, %1661
  %2092 = call float @dx.op.unary.f32(i32 6, float %2091)  ; FAbs(value)
  %2093 = fmul fast float %2092, %2078
  %2094 = call float @dx.op.unary.f32(i32 7, float %2090)  ; Saturate(value)
  %2095 = fsub fast float 1.000000e+00, %2093
  %2096 = fmul fast float %2095, %2094
  %2097 = fadd fast float %2096, %2093
  %2098 = fmul fast float %2081, %2074
  %2099 = call float @dx.op.unary.f32(i32 7, float %2098)  ; Saturate(value)
  %2100 = fsub fast float 1.000000e+00, %2097
  %2101 = fmul fast float %2100, %2099
  %2102 = fadd fast float %2101, %2097
  %2103 = call float @dx.op.unary.f32(i32 7, float %2102)  ; Saturate(value)
  %2104 = fadd fast float %2076, -1.000000e+00
  %2105 = select i1 %2075, float -1.000000e+00, float %2104
  %2106 = fmul fast float %2103, %2105
  %2107 = fadd fast float %2106, 1.000000e+00
  %2108 = fsub fast float -0.000000e+00, %2106
  %2109 = fmul fast float %2068, %2108
  %2110 = fmul fast float %2069, %2108
  %2111 = fmul fast float %2070, %2108
  br label %2112

; <label>:2112                                    ; preds = %2065, %1614
  %2113 = phi float [ %2066, %2065 ], [ 0.000000e+00, %1614 ]
  %2114 = phi float [ %2107, %2065 ], [ 1.000000e+00, %1614 ]
  %2115 = phi float [ %2109, %2065 ], [ 0.000000e+00, %1614 ]
  %2116 = phi float [ %2110, %2065 ], [ 0.000000e+00, %1614 ]
  %2117 = phi float [ %2111, %2065 ], [ 0.000000e+00, %1614 ]
  %2118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2119 = extractvalue %dx.types.CBufRet.f32 %2118, 1
  %2120 = fsub fast float 1.000000e+00, %2114
  %2121 = fmul fast float %2120, %1696
  %2122 = fmul fast float %2121, %2119
  %2123 = fsub fast float %1696, %2122
  br i1 %1689, label %2124, label %2153, !dx.controlflow.hints !110

; <label>:2124                                    ; preds = %2112
  %2125 = fmul fast float %1697, %1686
  %2126 = fadd fast float %2125, %1687
  %2127 = call float @dx.op.unary.f32(i32 7, float %2126)  ; Saturate(value)
  %2128 = fmul fast float %1668, %2123
  %2129 = fsub fast float -0.000000e+00, %2128
  %2130 = fmul fast float %1669, %2123
  %2131 = fsub fast float -0.000000e+00, %2130
  %2132 = call float @dx.op.unary.f32(i32 21, float %2129)  ; Exp(value)
  %2133 = call float @dx.op.unary.f32(i32 21, float %2131)  ; Exp(value)
  %2134 = call float @dx.op.binary.f32(i32 35, float %1676, float %2132)  ; FMax(a,b)
  %2135 = call float @dx.op.binary.f32(i32 35, float %1676, float %2133)  ; FMax(a,b)
  %2136 = fsub fast float %2135, %2134
  %2137 = fmul fast float %2136, %2127
  %2138 = fadd fast float %2137, %2134
  %2139 = call float @dx.op.unary.f32(i32 7, float %2138)  ; Saturate(value)
  %2140 = fsub fast float %1673, %1678
  %2141 = fsub fast float %1674, %1679
  %2142 = fsub fast float %1675, %1680
  %2143 = fmul fast float %2127, %2140
  %2144 = fmul fast float %2127, %2141
  %2145 = fmul fast float %2127, %2142
  %2146 = fadd fast float %2143, %1678
  %2147 = fadd fast float %2144, %1679
  %2148 = fadd fast float %2145, %1680
  %2149 = fsub fast float 1.000000e+00, %2139
  %2150 = fmul fast float %2149, %2146
  %2151 = fmul fast float %2149, %2147
  %2152 = fmul fast float %2149, %2148
  br label %2212

; <label>:2153                                    ; preds = %2112
  %2154 = fmul fast float %2123, %1685
  %2155 = call float @dx.op.unary.f32(i32 7, float %2154)  ; Saturate(value)
  %2156 = fsub fast float 2.000000e+00, %2155
  %2157 = fmul fast float %2155, 9.921875e-01
  %2158 = fmul fast float %2157, %2156
  %2159 = fadd fast float %2158, 3.906250e-03
  %2160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %13, float %2159, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2161 = extractvalue %dx.types.ResRet.f32 %2160, 0
  %2162 = fsub fast float %2155, %2161
  %2163 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2162)  ; FMax(a,b)
  %2164 = fmul fast float %1671, %1661
  %2165 = call float @dx.op.unary.f32(i32 6, float %2164)  ; FAbs(value)
  %2166 = fcmp fast ogt float %2165, 0x3EB0C6F7A0000000
  br i1 %2166, label %2167, label %2173, !dx.controlflow.hints !111

; <label>:2167                                    ; preds = %2153
  %2168 = fmul fast float %2164, 0xBFF7154760000000
  %2169 = call float @dx.op.unary.f32(i32 21, float %2168)  ; Exp(value)
  %2170 = fsub fast float 1.000000e+00, %2169
  %2171 = fdiv fast float %2170, %2164
  %2172 = fmul fast float %2171, %1681
  br label %2173

; <label>:2173                                    ; preds = %2167, %2153
  %2174 = phi float [ %2172, %2167 ], [ %1681, %2153 ]
  %2175 = fadd fast float %2174, %1683
  %2176 = fmul fast float %2175, %2163
  %2177 = fmul fast float %1668, %2176
  %2178 = fsub fast float -0.000000e+00, %2177
  %2179 = fmul fast float %1669, %2176
  %2180 = fsub fast float -0.000000e+00, %2179
  %2181 = fmul fast float %1670, %2176
  %2182 = fsub fast float -0.000000e+00, %2181
  %2183 = call float @dx.op.unary.f32(i32 21, float %2178)  ; Exp(value)
  %2184 = call float @dx.op.unary.f32(i32 21, float %2180)  ; Exp(value)
  %2185 = call float @dx.op.unary.f32(i32 21, float %2182)  ; Exp(value)
  %2186 = fmul fast float %1697, %1697
  %2187 = fadd fast float %2186, 1.000000e+00
  %2188 = fmul fast float %2187, 0x3FAE8EC8A0000000
  %2189 = fmul fast float %2188, %1678
  %2190 = fmul fast float %2188, %1679
  %2191 = fmul fast float %2188, %1680
  %2192 = fmul fast float %1697, %1676
  %2193 = fsub fast float 1.000000e+00, %2192
  %2194 = fmul fast float %1676, %1676
  %2195 = fsub fast float 1.000000e+00, %2194
  %2196 = fmul fast float %2195, 0x3FB45F3060000000
  %2197 = fmul fast float %2193, %2193
  %2198 = fdiv fast float 1.000000e+00, %2197
  %2199 = fmul fast float %2196, %2198
  %2200 = fmul fast float %2199, %1673
  %2201 = fmul fast float %2199, %1674
  %2202 = fmul fast float %2199, %1675
  %2203 = fadd fast float %2200, %2189
  %2204 = fadd fast float %2201, %2190
  %2205 = fadd fast float %2202, %2191
  %2206 = fsub fast float 1.000000e+00, %2183
  %2207 = fsub fast float 1.000000e+00, %2184
  %2208 = fsub fast float 1.000000e+00, %2185
  %2209 = fmul fast float %2203, %2206
  %2210 = fmul fast float %2204, %2207
  %2211 = fmul fast float %2205, %2208
  br label %2212

; <label>:2212                                    ; preds = %2173, %2124
  %2213 = phi float [ %2150, %2124 ], [ %2209, %2173 ]
  %2214 = phi float [ %2151, %2124 ], [ %2210, %2173 ]
  %2215 = phi float [ %2152, %2124 ], [ %2211, %2173 ]
  %2216 = phi float [ %2139, %2124 ], [ %2183, %2173 ]
  %2217 = phi float [ %2139, %2124 ], [ %2184, %2173 ]
  %2218 = phi float [ %2139, %2124 ], [ %2185, %2173 ]
  br i1 %1705, label %2219, label %2417, !dx.controlflow.hints !112

; <label>:2219                                    ; preds = %2212
  %2220 = extractvalue %dx.types.CBufRet.f32 %2118, 0
  %2221 = fmul fast float %2220, %2120
  %2222 = fsub fast float %2115, %2213
  %2223 = fsub fast float %2116, %2214
  %2224 = fsub fast float %2117, %2215
  %2225 = fmul fast float %2221, %2222
  %2226 = fmul fast float %2221, %2223
  %2227 = fmul fast float %2221, %2224
  %2228 = fadd fast float %2225, %2213
  %2229 = fadd fast float %2226, %2214
  %2230 = fadd fast float %2227, %2215
  %2231 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2216)  ; FMax(a,b)
  %2232 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2217)  ; FMax(a,b)
  %2233 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2218)  ; FMax(a,b)
  %2234 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2114)  ; FMax(a,b)
  %2235 = call float @dx.op.binary.f32(i32 35, float %2113, float %2123)  ; FMax(a,b)
  %2236 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2235)  ; FMax(a,b)
  %2237 = fdiv fast float %2113, %2236
  %2238 = call float @dx.op.unary.f32(i32 7, float %2237)  ; Saturate(value)
  %2239 = fdiv fast float %2123, %2236
  %2240 = call float @dx.op.unary.f32(i32 7, float %2239)  ; Saturate(value)
  %2241 = fcmp fast une float %2234, 1.000000e+00
  br i1 %2241, label %2242, label %2255, !dx.controlflow.hints !113

; <label>:2242                                    ; preds = %2219
  %2243 = call float @dx.op.unary.f32(i32 23, float %2234)  ; Log(value)
  %2244 = fmul fast float %2243, 0x3FE62E4300000000
  %2245 = fmul fast float %2115, %2244
  %2246 = fsub fast float -0.000000e+00, %2245
  %2247 = fmul fast float %2116, %2244
  %2248 = fsub fast float -0.000000e+00, %2247
  %2249 = fmul fast float %2117, %2244
  %2250 = fsub fast float -0.000000e+00, %2249
  %2251 = fsub fast float 1.000000e+00, %2234
  %2252 = fdiv fast float %2246, %2251
  %2253 = fdiv fast float %2248, %2251
  %2254 = fdiv fast float %2250, %2251
  br label %2255

; <label>:2255                                    ; preds = %2242, %2219
  %2256 = phi float [ %2252, %2242 ], [ %2115, %2219 ]
  %2257 = phi float [ %2253, %2242 ], [ %2116, %2219 ]
  %2258 = phi float [ %2254, %2242 ], [ %2117, %2219 ]
  %2259 = phi float [ %2244, %2242 ], [ 0.000000e+00, %2219 ]
  %2260 = fcmp fast une float %2231, 1.000000e+00
  br i1 %2260, label %2261, label %2268, !dx.controlflow.hints !114

; <label>:2261                                    ; preds = %2255
  %2262 = call float @dx.op.unary.f32(i32 23, float %2231)  ; Log(value)
  %2263 = fmul fast float %2262, 0x3FE62E4300000000
  %2264 = fmul fast float %2228, %2263
  %2265 = fsub fast float -0.000000e+00, %2264
  %2266 = fsub fast float 1.000000e+00, %2231
  %2267 = fdiv fast float %2265, %2266
  br label %2268

; <label>:2268                                    ; preds = %2261, %2255
  %2269 = phi float [ %2267, %2261 ], [ %2228, %2255 ]
  %2270 = phi float [ %2263, %2261 ], [ 0.000000e+00, %2255 ]
  %2271 = fcmp fast une float %2232, 1.000000e+00
  br i1 %2271, label %2272, label %2279, !dx.controlflow.hints !114

; <label>:2272                                    ; preds = %2268
  %2273 = call float @dx.op.unary.f32(i32 23, float %2232)  ; Log(value)
  %2274 = fmul fast float %2273, 0x3FE62E4300000000
  %2275 = fmul fast float %2229, %2274
  %2276 = fsub fast float -0.000000e+00, %2275
  %2277 = fsub fast float 1.000000e+00, %2232
  %2278 = fdiv fast float %2276, %2277
  br label %2279

; <label>:2279                                    ; preds = %2272, %2268
  %2280 = phi float [ %2278, %2272 ], [ %2229, %2268 ]
  %2281 = phi float [ %2274, %2272 ], [ 0.000000e+00, %2268 ]
  %2282 = fcmp fast une float %2233, 1.000000e+00
  br i1 %2282, label %2283, label %2290, !dx.controlflow.hints !114

; <label>:2283                                    ; preds = %2279
  %2284 = call float @dx.op.unary.f32(i32 23, float %2233)  ; Log(value)
  %2285 = fmul fast float %2284, 0x3FE62E4300000000
  %2286 = fmul fast float %2230, %2285
  %2287 = fsub fast float -0.000000e+00, %2286
  %2288 = fsub fast float 1.000000e+00, %2233
  %2289 = fdiv fast float %2287, %2288
  br label %2290

; <label>:2290                                    ; preds = %2283, %2279
  %2291 = phi float [ %2289, %2283 ], [ %2230, %2279 ]
  %2292 = phi float [ %2285, %2283 ], [ 0.000000e+00, %2279 ]
  %2293 = fmul fast float %2256, %2240
  %2294 = fmul fast float %2257, %2240
  %2295 = fmul fast float %2258, %2240
  %2296 = fmul fast float %2259, %2240
  %2297 = fmul fast float %2269, %2238
  %2298 = fmul fast float %2280, %2238
  %2299 = fmul fast float %2291, %2238
  %2300 = fmul fast float %2270, %2238
  %2301 = fmul fast float %2281, %2238
  %2302 = fmul fast float %2292, %2238
  %2303 = fadd fast float %2297, %2293
  %2304 = fadd fast float %2298, %2294
  %2305 = fadd fast float %2299, %2295
  %2306 = fadd fast float %2300, %2296
  %2307 = fadd fast float %2301, %2296
  %2308 = fadd fast float %2302, %2296
  %2309 = fcmp fast une float %2306, 0.000000e+00
  br i1 %2309, label %2310, label %2317, !dx.controlflow.hints !115

; <label>:2310                                    ; preds = %2290
  %2311 = fmul fast float %2306, 0x3FF7154760000000
  %2312 = call float @dx.op.unary.f32(i32 21, float %2311)  ; Exp(value)
  %2313 = fsub fast float 1.000000e+00, %2312
  %2314 = fmul fast float %2303, %2313
  %2315 = fsub fast float -0.000000e+00, %2314
  %2316 = fdiv fast float %2315, %2306
  br label %2317

; <label>:2317                                    ; preds = %2310, %2290
  %2318 = phi float [ %2312, %2310 ], [ 1.000000e+00, %2290 ]
  %2319 = phi float [ %2316, %2310 ], [ %2303, %2290 ]
  %2320 = fcmp fast une float %2307, 0.000000e+00
  br i1 %2320, label %2321, label %2328, !dx.controlflow.hints !115

; <label>:2321                                    ; preds = %2317
  %2322 = fmul fast float %2307, 0x3FF7154760000000
  %2323 = call float @dx.op.unary.f32(i32 21, float %2322)  ; Exp(value)
  %2324 = fsub fast float 1.000000e+00, %2323
  %2325 = fmul fast float %2304, %2324
  %2326 = fsub fast float -0.000000e+00, %2325
  %2327 = fdiv fast float %2326, %2307
  br label %2328

; <label>:2328                                    ; preds = %2321, %2317
  %2329 = phi float [ %2323, %2321 ], [ 1.000000e+00, %2317 ]
  %2330 = phi float [ %2327, %2321 ], [ %2304, %2317 ]
  %2331 = fcmp fast une float %2308, 0.000000e+00
  br i1 %2331, label %2332, label %2339, !dx.controlflow.hints !115

; <label>:2332                                    ; preds = %2328
  %2333 = fmul fast float %2308, 0x3FF7154760000000
  %2334 = call float @dx.op.unary.f32(i32 21, float %2333)  ; Exp(value)
  %2335 = fsub fast float 1.000000e+00, %2334
  %2336 = fmul fast float %2305, %2335
  %2337 = fsub fast float -0.000000e+00, %2336
  %2338 = fdiv fast float %2337, %2308
  br label %2339

; <label>:2339                                    ; preds = %2332, %2328
  %2340 = phi float [ %2334, %2332 ], [ 1.000000e+00, %2328 ]
  %2341 = phi float [ %2338, %2332 ], [ %2305, %2328 ]
  %2342 = fcmp fast ogt float %2238, %2240
  br i1 %2342, label %2343, label %2363, !dx.controlflow.hints !116

; <label>:2343                                    ; preds = %2339
  %2344 = fsub fast float 1.000000e+00, %2240
  %2345 = fmul fast float %2256, %2344
  %2346 = fmul fast float %2257, %2344
  %2347 = fmul fast float %2258, %2344
  %2348 = fmul fast float %2259, %2344
  %2349 = fcmp fast une float %2348, 0.000000e+00
  br i1 %2349, label %2350, label %2401, !dx.controlflow.hints !117

; <label>:2350                                    ; preds = %2343
  %2351 = fmul fast float %2348, 0x3FF7154760000000
  %2352 = call float @dx.op.unary.f32(i32 21, float %2351)  ; Exp(value)
  %2353 = fsub fast float 1.000000e+00, %2352
  %2354 = fmul fast float %2345, %2353
  %2355 = fsub fast float -0.000000e+00, %2354
  %2356 = fmul fast float %2346, %2353
  %2357 = fsub fast float -0.000000e+00, %2356
  %2358 = fmul fast float %2347, %2353
  %2359 = fsub fast float -0.000000e+00, %2358
  %2360 = fdiv fast float %2355, %2348
  %2361 = fdiv fast float %2357, %2348
  %2362 = fdiv fast float %2359, %2348
  br label %2401

; <label>:2363                                    ; preds = %2339
  %2364 = fsub fast float 1.000000e+00, %2238
  %2365 = fmul fast float %2269, %2364
  %2366 = fmul fast float %2280, %2364
  %2367 = fmul fast float %2291, %2364
  %2368 = fmul fast float %2270, %2364
  %2369 = fmul fast float %2281, %2364
  %2370 = fmul fast float %2292, %2364
  %2371 = fcmp fast une float %2368, 0.000000e+00
  br i1 %2371, label %2372, label %2379, !dx.controlflow.hints !115

; <label>:2372                                    ; preds = %2363
  %2373 = fmul fast float %2368, 0x3FF7154760000000
  %2374 = call float @dx.op.unary.f32(i32 21, float %2373)  ; Exp(value)
  %2375 = fsub fast float 1.000000e+00, %2374
  %2376 = fmul fast float %2365, %2375
  %2377 = fsub fast float -0.000000e+00, %2376
  %2378 = fdiv fast float %2377, %2368
  br label %2379

; <label>:2379                                    ; preds = %2372, %2363
  %2380 = phi float [ %2378, %2372 ], [ %2365, %2363 ]
  %2381 = phi float [ %2374, %2372 ], [ 1.000000e+00, %2363 ]
  %2382 = fcmp fast une float %2369, 0.000000e+00
  br i1 %2382, label %2383, label %2390, !dx.controlflow.hints !115

; <label>:2383                                    ; preds = %2379
  %2384 = fmul fast float %2369, 0x3FF7154760000000
  %2385 = call float @dx.op.unary.f32(i32 21, float %2384)  ; Exp(value)
  %2386 = fsub fast float 1.000000e+00, %2385
  %2387 = fmul fast float %2366, %2386
  %2388 = fsub fast float -0.000000e+00, %2387
  %2389 = fdiv fast float %2388, %2369
  br label %2390

; <label>:2390                                    ; preds = %2383, %2379
  %2391 = phi float [ %2389, %2383 ], [ %2366, %2379 ]
  %2392 = phi float [ %2385, %2383 ], [ 1.000000e+00, %2379 ]
  %2393 = fcmp fast une float %2370, 0.000000e+00
  br i1 %2393, label %2394, label %2401, !dx.controlflow.hints !115

; <label>:2394                                    ; preds = %2390
  %2395 = fmul fast float %2370, 0x3FF7154760000000
  %2396 = call float @dx.op.unary.f32(i32 21, float %2395)  ; Exp(value)
  %2397 = fsub fast float 1.000000e+00, %2396
  %2398 = fmul fast float %2367, %2397
  %2399 = fsub fast float -0.000000e+00, %2398
  %2400 = fdiv fast float %2399, %2370
  br label %2401

; <label>:2401                                    ; preds = %2394, %2390, %2350, %2343
  %2402 = phi float [ %2400, %2394 ], [ %2362, %2350 ], [ %2347, %2343 ], [ %2367, %2390 ]
  %2403 = phi float [ %2391, %2394 ], [ %2361, %2350 ], [ %2346, %2343 ], [ %2391, %2390 ]
  %2404 = phi float [ %2380, %2394 ], [ %2360, %2350 ], [ %2345, %2343 ], [ %2380, %2390 ]
  %2405 = phi float [ %2396, %2394 ], [ %2352, %2350 ], [ 1.000000e+00, %2343 ], [ 1.000000e+00, %2390 ]
  %2406 = phi float [ %2392, %2394 ], [ %2352, %2350 ], [ 1.000000e+00, %2343 ], [ %2392, %2390 ]
  %2407 = phi float [ %2381, %2394 ], [ %2352, %2350 ], [ 1.000000e+00, %2343 ], [ %2381, %2390 ]
  %2408 = fmul fast float %2407, %2319
  %2409 = fmul fast float %2406, %2330
  %2410 = fmul fast float %2405, %2341
  %2411 = fadd fast float %2408, %2404
  %2412 = fadd fast float %2409, %2403
  %2413 = fadd fast float %2410, %2402
  %2414 = fmul fast float %2407, %2318
  %2415 = fmul fast float %2406, %2329
  %2416 = fmul fast float %2405, %2340
  br label %2417

; <label>:2417                                    ; preds = %2401, %2212
  %2418 = phi float [ %2218, %2212 ], [ %2416, %2401 ]
  %2419 = phi float [ %2217, %2212 ], [ %2415, %2401 ]
  %2420 = phi float [ %2216, %2212 ], [ %2414, %2401 ]
  %2421 = phi float [ %2215, %2212 ], [ %2413, %2401 ]
  %2422 = phi float [ %2214, %2212 ], [ %2412, %2401 ]
  %2423 = phi float [ %2213, %2212 ], [ %2411, %2401 ]
  %2424 = fmul fast float %2420, %1561
  %2425 = fmul fast float %2419, %1562
  %2426 = fmul fast float %2418, %1563
  %2427 = fsub fast float 1.000000e+00, %1624
  %2428 = fmul fast float %2423, %2427
  %2429 = fmul fast float %2422, %2427
  %2430 = fmul fast float %2421, %2427
  %2431 = fadd fast float %2428, %2424
  %2432 = fadd fast float %2429, %2425
  %2433 = fadd fast float %2430, %2426
  %2434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2435 = extractvalue %dx.types.CBufRet.f32 %2434, 2
  %2436 = fmul fast float %2435, %1634
  %2437 = call float @dx.op.unary.f32(i32 7, float %2436)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %17, i32 %18, i32 undef, float %1624, float %1624, float %1624, float %1624, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2439 = extractvalue %dx.types.CBufRet.f32 %2438, 0
  %2440 = fmul fast float %2439, %2431
  %2441 = fmul fast float %2439, %2432
  %2442 = fmul fast float %2439, %2433
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %17, i32 %18, i32 undef, float %2440, float %2441, float %2442, float %2440, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %17, i32 %18, i32 undef, float %2437, float %2437, float %2437, float %2437, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!4 = !{!5, !16, !22, !25}
!5 = !{!6, !8, !9, !10, !12, !13, !14, !15}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
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
!25 = !{!26, !27}
!26 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!27 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!28 = !{void ()* @cs_fog_raymarching_air_particles_brfog, !"cs_fog_raymarching_air_particles_brfog", null, !4, !29}
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
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 1}
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
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
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
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = !{!73, !73, i64 0}
!73 = !{!"float", !74, i64 0}
!74 = !{!"omnipotent char", !75, i64 0}
!75 = !{!"Simple C/C++ TBAA"}
!76 = !{!77, !79, !81, !82, !84, !85, !86}
!77 = distinct !{!77, !78, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!78 = distinct !{!78, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!79 = distinct !{!79, !80, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!80 = distinct !{!80, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!81 = distinct !{!81, !80, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!82 = distinct !{!82, !83, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!83 = distinct !{!83, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!84 = distinct !{!84, !83, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!85 = distinct !{!85, !83, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!86 = distinct !{!86, !83, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = !{!89}
!89 = distinct !{!89, !90, !"\01?sort@@YAXAIAM00@Z: %c"}
!90 = distinct !{!90, !"\01?sort@@YAXAIAM00@Z"}
!91 = !{!92, !93, !77, !79, !81, !82, !84, !85, !86}
!92 = distinct !{!92, !90, !"\01?sort@@YAXAIAM00@Z: %a"}
!93 = distinct !{!93, !90, !"\01?sort@@YAXAIAM00@Z: %b"}
!94 = !{!93}
!95 = !{!92, !89, !77, !79, !81, !82, !84, !85, !86}
!96 = !{!92}
!97 = !{!93, !89, !77, !79, !81, !82, !84, !85, !86}
!98 = !{!99}
!99 = distinct !{!99, !100, !"\01?sort@@YAXAIAM00@Z: %c"}
!100 = distinct !{!100, !"\01?sort@@YAXAIAM00@Z"}
!101 = !{!102, !103, !77, !79, !81, !82, !84, !85, !86}
!102 = distinct !{!102, !100, !"\01?sort@@YAXAIAM00@Z: %a"}
!103 = distinct !{!103, !100, !"\01?sort@@YAXAIAM00@Z: %b"}
!104 = !{!103}
!105 = !{!102, !99, !77, !79, !81, !82, !84, !85, !86}
!106 = !{!102}
!107 = !{!103, !99, !77, !79, !81, !82, !84, !85, !86}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 2}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}

