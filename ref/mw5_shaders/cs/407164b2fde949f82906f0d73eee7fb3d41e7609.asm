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
; shader hash: 0dd852dc46da6af2267fce3cd504842d
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

define void @cs_fog_raymarching_particles_brfog() {
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
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 3
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %301 = fsub fast float -0.000000e+00, %232
  %302 = fsub fast float -0.000000e+00, %233
  %303 = fsub fast float %298, %234
  %304 = fadd fast float %303, %300
  %305 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %301, float %302, float %304)  ; Dot3(ax,ay,az,bx,by,bz)
  %306 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %275, float %276, float %277)  ; Dot3(ax,ay,az,bx,by,bz)
  %307 = fdiv fast float 1.000000e+00, %306
  %308 = fmul fast float %307, %305
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 2
  %311 = fsub fast float %310, %234
  %312 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %301, float %302, float %311)  ; Dot3(ax,ay,az,bx,by,bz)
  %313 = fmul fast float %307, %312
  %314 = call float @dx.op.binary.f32(i32 36, float %308, float %313)  ; FMin(a,b)
  %315 = call float @dx.op.binary.f32(i32 35, float %308, float %313)  ; FMax(a,b)
  %316 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %314)  ; FMin(a,b)
  %317 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %315)  ; FMax(a,b)
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 2
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 3
  %322 = fsub fast float %319, %234
  %323 = fadd fast float %322, %321
  %324 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %301, float %302, float %323)  ; Dot3(ax,ay,az,bx,by,bz)
  %325 = fmul fast float %307, %324
  %326 = fcmp fast olt float %325, 0.000000e+00
  %327 = fcmp fast ogt float %277, 0.000000e+00
  %328 = and i1 %327, %326
  br i1 %328, label %333, label %329, !dx.controlflow.hints !32

; <label>:329                                     ; preds = %201
  %330 = fcmp fast olt float %277, 0.000000e+00
  br i1 %330, label %331, label %333, !dx.controlflow.hints !33

; <label>:331                                     ; preds = %329
  %332 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %325)  ; FMax(a,b)
  br label %333

; <label>:333                                     ; preds = %331, %329, %201
  %334 = phi float [ 0.000000e+00, %201 ], [ %332, %331 ], [ 0.000000e+00, %329 ]
  %335 = phi float [ 0.000000e+00, %201 ], [ 0x47EFFFFFE0000000, %331 ], [ %325, %329 ]
  %336 = fcmp fast oeq float %335, 0.000000e+00
  br i1 %336, label %340, label %337, !dx.controlflow.hints !34

; <label>:337                                     ; preds = %333
  %338 = call float @dx.op.binary.f32(i32 36, float %316, float %334)  ; FMin(a,b)
  %339 = call float @dx.op.binary.f32(i32 35, float %317, float %335)  ; FMax(a,b)
  br label %340

; <label>:340                                     ; preds = %337, %333
  %341 = phi i32 [ 1, %337 ], [ 0, %333 ]
  %342 = phi float [ %339, %337 ], [ %317, %333 ]
  %343 = phi float [ %338, %337 ], [ %316, %333 ]
  %344 = fdiv fast float 1.000000e+00, %275
  %345 = fdiv fast float 1.000000e+00, %276
  %346 = fdiv fast float 1.000000e+00, %277
  %347 = call float @dx.op.binary.f32(i32 36, float %296, float %342)  ; FMin(a,b)
  %348 = call float @dx.op.binary.f32(i32 35, float %273, float %343)  ; FMax(a,b)
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 0
  %351 = fmul fast float %221, 2.000000e+00
  %352 = fadd fast float %351, -1.000000e+00
  %353 = fmul fast float %350, %352
  %354 = fadd fast float %353, %348
  %355 = fcmp fast olt float %354, %347
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 2
  %358 = fcmp fast olt float %357, 1.000000e+00
  %359 = and i1 %358, %355
  br i1 %359, label %360, label %1403

; <label>:360                                     ; preds = %340
  %361 = fmul fast float %354, %277
  %362 = fadd fast float %361, %234
  %363 = fmul fast float %354, %276
  %364 = fadd fast float %363, %233
  %365 = fmul fast float %354, %275
  %366 = fadd fast float %365, %232
  br label %367

; <label>:367                                     ; preds = %1373, %360
  %368 = phi i32 [ %1375, %1373 ], [ undef, %360 ]
  %369 = phi float [ %1376, %1373 ], [ undef, %360 ]
  %370 = phi float [ %1377, %1373 ], [ undef, %360 ]
  %371 = phi float [ %1378, %1373 ], [ undef, %360 ]
  %372 = phi float [ %1379, %1373 ], [ undef, %360 ]
  %373 = phi float [ %1380, %1373 ], [ undef, %360 ]
  %374 = phi i32 [ %684, %1373 ], [ undef, %360 ]
  %375 = phi float [ %686, %1373 ], [ undef, %360 ]
  %376 = phi float [ %500, %1373 ], [ undef, %360 ]
  %377 = phi float [ %501, %1373 ], [ undef, %360 ]
  %378 = phi float [ %502, %1373 ], [ undef, %360 ]
  %379 = phi float [ %503, %1373 ], [ undef, %360 ]
  %380 = phi float [ %1381, %1373 ], [ 0.000000e+00, %360 ]
  %381 = phi float [ %1382, %1373 ], [ 1.000000e+00, %360 ]
  %382 = phi float [ %1383, %1373 ], [ 0.000000e+00, %360 ]
  %383 = phi float [ %1384, %1373 ], [ 0.000000e+00, %360 ]
  %384 = phi float [ %1385, %1373 ], [ 0.000000e+00, %360 ]
  %385 = phi float [ %1395, %1373 ], [ %366, %360 ]
  %386 = phi float [ %1396, %1373 ], [ %364, %360 ]
  %387 = phi float [ %1397, %1373 ], [ %362, %360 ]
  %388 = phi float [ %1374, %1373 ], [ %354, %360 ]
  %389 = phi i32 [ %505, %1373 ], [ 10, %360 ]
  %390 = phi float [ %1386, %1373 ], [ 0.000000e+00, %360 ]
  %391 = phi float [ %1387, %1373 ], [ 0.000000e+00, %360 ]
  %392 = phi float [ %1388, %1373 ], [ 0.000000e+00, %360 ]
  %393 = phi float [ %1389, %1373 ], [ 0.000000e+00, %360 ]
  %394 = phi float [ %1390, %1373 ], [ 0.000000e+00, %360 ]
  %395 = phi i32 [ %1391, %1373 ], [ 0, %360 ]
  %396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %397 = extractvalue %dx.types.CBufRet.f32 %396, 0
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 0
  %400 = extractvalue %dx.types.CBufRet.f32 %398, 1
  %401 = fsub fast float %385, %399
  %402 = fsub fast float %386, %400
  %403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.f32 %403, 2
  %405 = extractvalue %dx.types.CBufRet.f32 %403, 3
  %406 = fmul fast float %401, %404
  %407 = fmul fast float %402, %405
  %408 = call float @dx.op.binary.f32(i32 36, float %406, float %407)  ; FMin(a,b)
  %409 = fcmp fast olt float %408, 0.000000e+00
  %410 = call float @dx.op.binary.f32(i32 35, float %406, float %407)  ; FMax(a,b)
  %411 = fcmp fast ogt float %410, 1.000000e+00
  %412 = or i1 %409, %411
  %413 = extractvalue %dx.types.CBufRet.f32 %398, 2
  %414 = fcmp fast olt float %387, %413
  %415 = or i1 %412, %414
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 3
  %418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.f32 %418, 0
  %420 = fadd fast float %419, %417
  %421 = fcmp fast ogt float %387, %420
  %422 = or i1 %415, %421
  br i1 %422, label %423, label %452, !dx.controlflow.hints !35

; <label>:423                                     ; preds = %367
  %424 = extractvalue %dx.types.CBufRet.f32 %403, 0
  %425 = extractvalue %dx.types.CBufRet.f32 %403, 1
  %426 = fsub fast float %399, %385
  %427 = fmul fast float %426, %344
  %428 = fadd fast float %426, %424
  %429 = fmul fast float %428, %344
  %430 = call float @dx.op.binary.f32(i32 36, float %427, float %429)  ; FMin(a,b)
  %431 = call float @dx.op.binary.f32(i32 35, float %427, float %429)  ; FMax(a,b)
  %432 = fsub fast float %400, %386
  %433 = fmul fast float %432, %345
  %434 = fadd fast float %432, %425
  %435 = fmul fast float %434, %345
  %436 = call float @dx.op.binary.f32(i32 36, float %433, float %435)  ; FMin(a,b)
  %437 = call float @dx.op.binary.f32(i32 35, float %430, float %436)  ; FMax(a,b)
  %438 = call float @dx.op.binary.f32(i32 35, float %433, float %435)  ; FMax(a,b)
  %439 = call float @dx.op.binary.f32(i32 36, float %431, float %438)  ; FMin(a,b)
  %440 = fsub fast float %413, %387
  %441 = fmul fast float %440, %346
  %442 = fsub fast float %417, %387
  %443 = fadd fast float %442, %419
  %444 = fmul fast float %443, %346
  %445 = call float @dx.op.binary.f32(i32 36, float %441, float %444)  ; FMin(a,b)
  %446 = call float @dx.op.binary.f32(i32 35, float %437, float %445)  ; FMax(a,b)
  %447 = call float @dx.op.binary.f32(i32 35, float %441, float %444)  ; FMax(a,b)
  %448 = call float @dx.op.binary.f32(i32 36, float %439, float %447)  ; FMin(a,b)
  %449 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %446)  ; FMax(a,b)
  %450 = fcmp fast oge float %448, %449
  %451 = select i1 %450, float %446, float 1.000000e+07
  br label %498

; <label>:452                                     ; preds = %367
  %453 = fsub fast float 1.000000e+00, %407
  %454 = icmp eq i32 %389, 0
  br i1 %454, label %483, label %455

; <label>:455                                     ; preds = %452
  br label %456

; <label>:456                                     ; preds = %479, %455
  %457 = phi i32 [ %480, %479 ], [ %389, %455 ]
  %458 = uitofp i32 %457 to float
  %459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %406, float %453, float undef, float undef, i32 0, i32 0, i32 undef, float %458)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = extractvalue %dx.types.ResRet.f32 %459, 1
  %462 = extractvalue %dx.types.ResRet.f32 %459, 2
  %463 = fcmp fast oeq float %460, 0.000000e+00
  %464 = fcmp ule float %387, %462
  %465 = fcmp uge float %387, %461
  %466 = or i1 %465, %464
  %467 = or i1 %463, %466
  br i1 %467, label %468, label %479, !dx.controlflow.hints !36

; <label>:468                                     ; preds = %456
  %469 = extractvalue %dx.types.ResRet.f32 %459, 3
  %470 = extractvalue %dx.types.CBufRet.f32 %403, 0
  %471 = and i32 %457, 31
  %472 = lshr i32 1024, %471
  %473 = uitofp i32 %472 to float
  %474 = fdiv fast float %470, %473
  %475 = add i32 %457, 1
  %476 = uitofp i32 %475 to float
  %477 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %476)  ; FMin(a,b)
  %478 = fptosi float %477 to i32
  br label %498

; <label>:479                                     ; preds = %456
  %480 = add i32 %457, -1
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %482, label %456, !llvm.loop !37

; <label>:482                                     ; preds = %479
  br label %483

; <label>:483                                     ; preds = %482, %452
  %484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %406, float %453, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = extractvalue %dx.types.ResRet.f32 %484, 1
  %487 = extractvalue %dx.types.ResRet.f32 %484, 2
  %488 = extractvalue %dx.types.ResRet.f32 %484, 3
  %489 = extractvalue %dx.types.CBufRet.f32 %403, 0
  %490 = fmul fast float %489, 9.765625e-04
  %491 = fcmp fast oeq float %485, 0.000000e+00
  %492 = fcmp ule float %387, %487
  %493 = fcmp uge float %387, %486
  %494 = or i1 %493, %492
  %495 = or i1 %491, %494
  %496 = zext i1 %495 to i32
  %497 = xor i32 %496, 1
  br label %498

; <label>:498                                     ; preds = %483, %468, %423
  %499 = phi float [ %451, %423 ], [ %474, %468 ], [ %490, %483 ]
  %500 = phi float [ %376, %423 ], [ %460, %468 ], [ %485, %483 ]
  %501 = phi float [ %377, %423 ], [ %461, %468 ], [ %486, %483 ]
  %502 = phi float [ %378, %423 ], [ %462, %468 ], [ %487, %483 ]
  %503 = phi float [ %379, %423 ], [ %469, %468 ], [ %488, %483 ]
  %504 = phi i32 [ 0, %423 ], [ 0, %468 ], [ %497, %483 ]
  %505 = phi i32 [ 10, %423 ], [ %478, %468 ], [ 1, %483 ]
  %506 = icmp eq i32 %504, 0
  %507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %508 = extractvalue %dx.types.CBufRet.f32 %507, 2
  %509 = call float @dx.op.binary.f32(i32 35, float %499, float %508)  ; FMax(a,b)
  %510 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %509)  ; FMin(a,b)
  %511 = icmp eq i32 %341, 0
  br i1 %511, label %683, label %512, !dx.controlflow.hints !39

; <label>:512                                     ; preds = %498
  %513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.i32 %513, 1
  %515 = and i32 %514, 1
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %674, !dx.controlflow.hints !40

; <label>:517                                     ; preds = %512
  %518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %519 = extractvalue %dx.types.CBufRet.f32 %518, 2
  %520 = extractvalue %dx.types.CBufRet.f32 %518, 3
  %521 = fmul fast float %519, %385
  %522 = fmul fast float %520, %386
  %523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.f32 %523, 0
  %525 = extractvalue %dx.types.CBufRet.f32 %523, 1
  %526 = fadd fast float %521, %524
  %527 = fadd fast float %522, %525
  %528 = call float @dx.op.unary.f32(i32 7, float %526)  ; Saturate(value)
  %529 = call float @dx.op.unary.f32(i32 7, float %527)  ; Saturate(value)
  %530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %528, float %529, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.f32 %532, 0
  %534 = fmul fast float %533, %531
  %535 = fsub fast float %526, %528
  %536 = fsub fast float %527, %529
  %537 = extractvalue %dx.types.CBufRet.f32 %518, 0
  %538 = extractvalue %dx.types.CBufRet.f32 %518, 1
  %539 = fmul fast float %537, %535
  %540 = fmul fast float %538, %536
  %541 = fmul fast float %539, %539
  %542 = fmul fast float %540, %540
  %543 = fadd fast float %541, %542
  %544 = call float @dx.op.unary.f32(i32 24, float %543)  ; Sqrt(value)
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 3
  %547 = fmul fast float %546, %544
  %548 = call float @dx.op.unary.f32(i32 7, float %547)  ; Saturate(value)
  %549 = extractvalue %dx.types.CBufRet.f32 %545, 2
  %550 = fsub fast float %549, %534
  %551 = fmul fast float %550, %548
  %552 = extractvalue %dx.types.CBufRet.f32 %532, 1
  %553 = fsub fast float %387, %534
  %554 = fsub fast float %553, %552
  %555 = fsub fast float %554, %551
  %556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.f32 %556, 2
  %558 = fsub fast float %555, %557
  %559 = fcmp fast olt float %558, 0.000000e+00
  %560 = call float @dx.op.unary.f32(i32 6, float %558)  ; FAbs(value)
  %561 = extractvalue %dx.types.CBufRet.i32 %513, 0
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %616, label %563

; <label>:563                                     ; preds = %517
  br label %564

; <label>:564                                     ; preds = %603, %563
  %565 = phi i32 [ %609, %603 ], [ 1, %563 ]
  %566 = phi float [ %611, %603 ], [ 0x47EFFFFFE0000000, %563 ]
  %567 = phi i32 [ %612, %603 ], [ 0, %563 ]
  %568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.f32 %568, 1
  %570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.i32 %570, 1
  %572 = and i32 %571, 8
  %573 = icmp eq i32 %572, 0
  %574 = fcmp fast ogt float %569, %555
  %575 = or i1 %574, %573
  %576 = add i32 %567, 171
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %576)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 0
  %579 = extractvalue %dx.types.CBufRet.f32 %577, 1
  %580 = extractvalue %dx.types.CBufRet.f32 %577, 2
  br i1 %575, label %581, label %587, !dx.controlflow.hints !41

; <label>:581                                     ; preds = %564
  %582 = fsub fast float %578, %385
  %583 = fsub fast float %579, %386
  %584 = fmul fast float %582, %582
  %585 = fmul fast float %583, %583
  %586 = fadd fast float %584, %585
  br label %603

; <label>:587                                     ; preds = %564
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.f32 %588, 2
  %590 = extractvalue %dx.types.CBufRet.f32 %568, 2
  %591 = fmul fast float %590, %589
  %592 = fsub fast float %591, %569
  %593 = fdiv fast float %580, %592
  %594 = fsub fast float %385, %578
  %595 = fsub fast float %386, %579
  %596 = fsub fast float %555, %569
  %597 = fmul fast float %593, %596
  %598 = fmul fast float %594, %594
  %599 = fmul fast float %595, %595
  %600 = fadd fast float %598, %599
  %601 = fmul fast float %597, %597
  %602 = fadd fast float %600, %601
  br label %603

; <label>:603                                     ; preds = %587, %581
  %604 = phi float [ %586, %581 ], [ %602, %587 ]
  %605 = call float @dx.op.unary.f32(i32 24, float %604)  ; Sqrt(value)
  %606 = fsub float %580, %605
  %607 = fcmp fast olt float %606, 0.000000e+00
  %608 = zext i1 %607 to i32
  %609 = and i32 %608, %565
  %610 = call float @dx.op.unary.f32(i32 6, float %606)  ; FAbs(value)
  %611 = call float @dx.op.binary.f32(i32 36, float %566, float %610)  ; FMin(a,b)
  %612 = add i32 %567, 1
  %613 = extractvalue %dx.types.CBufRet.i32 %570, 0
  %614 = icmp ult i32 %612, %613
  br i1 %614, label %564, label %615

; <label>:615                                     ; preds = %603
  br label %616

; <label>:616                                     ; preds = %615, %517
  %617 = phi i32 [ 1, %517 ], [ %609, %615 ]
  %618 = phi float [ 0x47EFFFFFE0000000, %517 ], [ %611, %615 ]
  br label %619

; <label>:619                                     ; preds = %619, %616
  %620 = phi i32 [ %617, %616 ], [ %659, %619 ]
  %621 = phi float [ 0x47EFFFFFE0000000, %616 ], [ %661, %619 ]
  %622 = phi i32 [ 0, %616 ], [ %662, %619 ]
  %623 = add nuw nsw i32 %622, 191
  %624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %623)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.f32 %624, 0
  %626 = extractvalue %dx.types.CBufRet.f32 %624, 1
  %627 = extractvalue %dx.types.CBufRet.f32 %624, 2
  %628 = add nuw nsw i32 %622, 195
  %629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %628)  ; CBufferLoadLegacy(handle,regIndex)
  %630 = extractvalue %dx.types.CBufRet.f32 %629, 0
  %631 = extractvalue %dx.types.CBufRet.f32 %629, 1
  %632 = extractvalue %dx.types.CBufRet.f32 %629, 2
  %633 = fsub fast float %385, %625
  %634 = fsub fast float %386, %626
  %635 = fsub fast float %555, %627
  %636 = call float @dx.op.unary.f32(i32 6, float %633)  ; FAbs(value)
  %637 = call float @dx.op.unary.f32(i32 6, float %634)  ; FAbs(value)
  %638 = call float @dx.op.unary.f32(i32 6, float %635)  ; FAbs(value)
  %639 = fsub fast float %636, %630
  %640 = fsub fast float %637, %631
  %641 = fsub fast float %638, %632
  %642 = call float @dx.op.binary.f32(i32 35, float %639, float 0.000000e+00)  ; FMax(a,b)
  %643 = call float @dx.op.binary.f32(i32 35, float %640, float 0.000000e+00)  ; FMax(a,b)
  %644 = call float @dx.op.binary.f32(i32 35, float %641, float 0.000000e+00)  ; FMax(a,b)
  %645 = fmul fast float %642, %642
  %646 = fmul fast float %643, %643
  %647 = fadd fast float %646, %645
  %648 = fmul fast float %644, %644
  %649 = fadd fast float %647, %648
  %650 = call float @dx.op.unary.f32(i32 24, float %649)  ; Sqrt(value)
  %651 = call float @dx.op.binary.f32(i32 35, float %640, float %641)  ; FMax(a,b)
  %652 = call float @dx.op.binary.f32(i32 35, float %639, float %651)  ; FMax(a,b)
  %653 = call float @dx.op.binary.f32(i32 36, float %652, float 0.000000e+00)  ; FMin(a,b)
  %654 = fadd fast float %653, %650
  %655 = fsub fast float -0.000000e+00, %654
  %656 = fcmp ogt float %654, -0.000000e+00
  %657 = icmp ne i32 %620, 0
  %658 = and i1 %657, %656
  %659 = zext i1 %658 to i32
  %660 = call float @dx.op.unary.f32(i32 6, float %655)  ; FAbs(value)
  %661 = call float @dx.op.binary.f32(i32 36, float %621, float %660)  ; FMin(a,b)
  %662 = add nuw nsw i32 %622, 1
  %663 = icmp eq i32 %662, 4
  br i1 %663, label %664, label %619

; <label>:664                                     ; preds = %619
  %665 = call float @dx.op.binary.f32(i32 36, float %560, float %661)  ; FMin(a,b)
  %666 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %667 = extractvalue %dx.types.CBufRet.i32 %666, 1
  %668 = and i32 %667, 2
  %669 = icmp ne i32 %668, 0
  %670 = xor i1 %658, %669
  %671 = call float @dx.op.binary.f32(i32 36, float %665, float %618)  ; FMin(a,b)
  %672 = and i1 %670, %559
  %673 = zext i1 %672 to i32
  br label %674

; <label>:674                                     ; preds = %664, %512
  %675 = phi i32 [ %374, %512 ], [ %673, %664 ]
  %676 = phi float [ 0.000000e+00, %512 ], [ %671, %664 ]
  %677 = phi float [ %387, %512 ], [ %555, %664 ]
  %678 = icmp ne i32 %675, 0
  %679 = extractvalue %dx.types.CBufRet.f32 %507, 3
  %680 = call float @dx.op.binary.f32(i32 35, float %676, float %679)  ; FMax(a,b)
  %681 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %680)  ; FMin(a,b)
  %682 = zext i1 %678 to i32
  br label %683

; <label>:683                                     ; preds = %674, %498
  %684 = phi i32 [ %675, %674 ], [ %374, %498 ]
  %685 = phi i32 [ %682, %674 ], [ 0, %498 ]
  %686 = phi float [ %677, %674 ], [ %375, %498 ]
  %687 = phi float [ %681, %674 ], [ 0x47EFFFFFE0000000, %498 ]
  %688 = extractvalue %dx.types.CBufRet.f32 %396, 2
  %689 = fmul fast float %688, %388
  %690 = call float @dx.op.unary.f32(i32 23, float %689)  ; Log(value)
  %691 = fmul fast float %690, 0x3FE62E4300000000
  %692 = call float @dx.op.binary.f32(i32 35, float %691, float 1.000000e+00)  ; FMax(a,b)
  %693 = fmul fast float %692, %687
  %694 = call float @dx.op.binary.f32(i32 36, float %693, float %510)  ; FMin(a,b)
  %695 = call float @dx.op.binary.f32(i32 35, float %694, float %397)  ; FMax(a,b)
  %696 = fadd fast float %347, 0x3F1A36E2E0000000
  %697 = fsub fast float %696, %388
  %698 = call float @dx.op.binary.f32(i32 36, float %697, float %695)  ; FMin(a,b)
  br i1 %506, label %837, label %699, !dx.controlflow.hints !42

; <label>:699                                     ; preds = %683
  %700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %701 = extractvalue %dx.types.CBufRet.f32 %700, 0
  %702 = extractvalue %dx.types.CBufRet.f32 %700, 1
  %703 = extractvalue %dx.types.CBufRet.f32 %700, 2
  %704 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.i32 %704, 0
  %706 = icmp ne i32 %705, 0
  %707 = zext i1 %706 to i32
  %708 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %709 = extractvalue %dx.types.CBufRet.i32 %708, 0
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %744, label %711

; <label>:711                                     ; preds = %699
  br label %712

; <label>:712                                     ; preds = %739, %711
  %713 = phi i32 [ %740, %739 ], [ 0, %711 ]
  %714 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %713, i32 0)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.f32 %714, 0
  %716 = extractvalue %dx.types.ResRet.f32 %714, 1
  %717 = extractvalue %dx.types.ResRet.f32 %714, 2
  %718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %713, i32 16)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.f32 %718, 0
  %720 = extractvalue %dx.types.ResRet.f32 %718, 1
  %721 = extractvalue %dx.types.ResRet.f32 %718, 2
  %722 = fsub fast float %715, %719
  %723 = fsub fast float %716, %720
  %724 = fsub fast float %717, %721
  %725 = fadd fast float %719, %715
  %726 = fadd fast float %720, %716
  %727 = fadd fast float %721, %717
  %728 = fcmp fast olt float %385, %722
  %729 = fcmp fast olt float %386, %723
  %730 = fcmp fast olt float %387, %724
  %731 = or i1 %728, %729
  %732 = or i1 %730, %731
  %733 = fcmp fast ogt float %385, %725
  %734 = fcmp fast ogt float %386, %726
  %735 = fcmp fast ogt float %387, %727
  %736 = or i1 %733, %734
  %737 = or i1 %735, %736
  %738 = or i1 %732, %737
  br i1 %738, label %739, label %742, !dx.controlflow.hints !43

; <label>:739                                     ; preds = %712
  %740 = add nuw i32 %713, 1
  %741 = icmp ult i32 %740, %709
  br i1 %741, label %712, label %742

; <label>:742                                     ; preds = %739, %712
  %743 = phi i32 [ 255, %739 ], [ %713, %712 ]
  br label %744

; <label>:744                                     ; preds = %742, %699
  %745 = phi i32 [ 255, %699 ], [ %743, %742 ]
  %746 = icmp eq i32 %745, 255
  br i1 %746, label %756, label %747, !dx.controlflow.hints !44

; <label>:747                                     ; preds = %744
  %748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %745, i32 32)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.f32 %748, 0
  %750 = extractvalue %dx.types.ResRet.f32 %748, 1
  %751 = extractvalue %dx.types.ResRet.f32 %748, 2
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %745, i32 156)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = icmp ne i32 %753, 0
  %755 = zext i1 %754 to i32
  br label %756

; <label>:756                                     ; preds = %747, %744
  %757 = phi float [ %749, %747 ], [ %701, %744 ]
  %758 = phi float [ %750, %747 ], [ %702, %744 ]
  %759 = phi float [ %751, %747 ], [ %703, %744 ]
  %760 = phi i32 [ %755, %747 ], [ %707, %744 ]
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %762, label %831, !dx.controlflow.hints !45

; <label>:762                                     ; preds = %756
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 3
  %765 = extractvalue %dx.types.CBufRet.f32 %416, 0
  %766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %767 = extractvalue %dx.types.CBufRet.f32 %766, 2
  %768 = extractvalue %dx.types.CBufRet.f32 %766, 3
  br i1 %746, label %779, label %769, !dx.controlflow.hints !46

; <label>:769                                     ; preds = %762
  %770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %745, i32 60)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.f32 %770, 0
  %772 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %745, i32 64)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.f32 %772, 0
  %774 = extractvalue %dx.types.ResRet.f32 %772, 1
  %775 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %745, i32 72)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.f32 %775, 0
  %777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %745, i32 96)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  br label %779

; <label>:779                                     ; preds = %769, %762
  %780 = phi float [ %771, %769 ], [ %419, %762 ]
  %781 = phi float [ %776, %769 ], [ %417, %762 ]
  %782 = phi float [ %778, %769 ], [ %765, %762 ]
  %783 = phi float [ %773, %769 ], [ %767, %762 ]
  %784 = phi float [ %774, %769 ], [ %768, %762 ]
  %785 = call float @dx.op.binary.f32(i32 35, float %500, float 0.000000e+00)  ; FMax(a,b)
  %786 = call float @dx.op.binary.f32(i32 36, float %785, float 1.000000e+00)  ; FMin(a,b)
  %787 = call float @dx.op.unary.f32(i32 24, float %786)  ; Sqrt(value)
  %788 = call float @dx.op.binary.f32(i32 35, float %503, float 0x3F847AE140000000)  ; FMax(a,b)
  %789 = fsub fast float %501, %387
  %790 = fsub fast float %387, %502
  %791 = call float @dx.op.binary.f32(i32 36, float %790, float %789)  ; FMin(a,b)
  %792 = fdiv fast float %791, %788
  %793 = call float @dx.op.unary.f32(i32 7, float %792)  ; Saturate(value)
  %794 = fsub fast float %387, %781
  %795 = fdiv fast float %794, %780
  %796 = call float @dx.op.unary.f32(i32 7, float %795)  ; Saturate(value)
  %797 = fsub fast float 1.000000e+00, %796
  %798 = fmul float %793, %797
  %799 = fmul float %798, %798
  %800 = fmul fast float %787, %764
  %801 = fmul fast float %800, %799
  %802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.f32 %802, 2
  %804 = extractvalue %dx.types.CBufRet.f32 %802, 1
  %805 = fsub fast float %801, %804
  %806 = fsub fast float %803, %804
  %807 = fdiv fast float %805, %806
  %808 = call float @dx.op.unary.f32(i32 7, float %807)  ; Saturate(value)
  %809 = fmul fast float %808, %782
  %810 = fcmp fast ogt float %784, 0.000000e+00
  br i1 %810, label %811, label %831, !dx.controlflow.hints !47

; <label>:811                                     ; preds = %779
  %812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.f32 %812, 0
  %814 = extractvalue %dx.types.CBufRet.f32 %812, 1
  %815 = extractvalue %dx.types.CBufRet.f32 %812, 2
  %816 = fsub fast float %385, %813
  %817 = fsub fast float %386, %814
  %818 = fsub fast float %387, %815
  %819 = fmul fast float %816, %816
  %820 = fmul fast float %817, %817
  %821 = fadd fast float %819, %820
  %822 = fmul fast float %818, %818
  %823 = fadd fast float %821, %822
  %824 = call float @dx.op.unary.f32(i32 24, float %823)  ; Sqrt(value)
  %825 = fsub fast float %824, %783
  %826 = fsub fast float %784, %783
  %827 = fdiv fast float %825, %826
  %828 = call float @dx.op.unary.f32(i32 7, float %827)  ; Saturate(value)
  %829 = fmul fast float %828, %828
  %830 = fmul fast float %829, %809
  br label %831

; <label>:831                                     ; preds = %811, %779, %756
  %832 = phi float [ 0.000000e+00, %756 ], [ %830, %811 ], [ %809, %779 ]
  %833 = fmul fast float %832, %698
  %834 = fmul fast float %833, %757
  %835 = fmul fast float %833, %758
  %836 = fmul fast float %833, %759
  br label %837

; <label>:837                                     ; preds = %831, %683
  %838 = phi float [ %833, %831 ], [ 0.000000e+00, %683 ]
  %839 = phi float [ %834, %831 ], [ 0.000000e+00, %683 ]
  %840 = phi float [ %835, %831 ], [ 0.000000e+00, %683 ]
  %841 = phi float [ %836, %831 ], [ 0.000000e+00, %683 ]
  %842 = icmp eq i32 %685, 0
  br i1 %842, label %885, label %843, !dx.controlflow.hints !48

; <label>:843                                     ; preds = %837
  %844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %845 = extractvalue %dx.types.CBufRet.f32 %844, 1
  %846 = fsub fast float %698, %845
  %847 = extractvalue %dx.types.CBufRet.f32 %844, 3
  %848 = fmul fast float %846, %847
  %849 = call float @dx.op.unary.f32(i32 7, float %848)  ; Saturate(value)
  %850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %851 = extractvalue %dx.types.CBufRet.f32 %850, 3
  %852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %853 = extractvalue %dx.types.CBufRet.f32 %852, 2
  %854 = fsub fast float %853, %686
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 3
  %857 = fmul fast float %854, %856
  %858 = call float @dx.op.unary.f32(i32 7, float %857)  ; Saturate(value)
  %859 = fmul fast float %858, %851
  %860 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %861 = fsub fast float %388, %860
  %862 = extractvalue %dx.types.CBufRet.f32 %855, 1
  %863 = fmul fast float %861, %862
  %864 = call float @dx.op.unary.f32(i32 7, float %863)  ; Saturate(value)
  %865 = fsub fast float 1.000000e+00, %849
  %866 = fmul fast float %864, %865
  %867 = fadd fast float %866, %849
  %868 = extractvalue %dx.types.CBufRet.f32 %844, 0
  %869 = fsub fast float %859, %868
  %870 = fmul fast float %869, %867
  %871 = fadd fast float %870, %868
  %872 = extractvalue %dx.types.CBufRet.f32 %850, 0
  %873 = extractvalue %dx.types.CBufRet.f32 %850, 1
  %874 = extractvalue %dx.types.CBufRet.f32 %850, 2
  %875 = fmul fast float %871, %698
  %876 = extractvalue %dx.types.CBufRet.f32 %855, 2
  %877 = fmul fast float %875, %872
  %878 = fmul fast float %875, %873
  %879 = fmul fast float %875, %874
  %880 = fadd fast float %877, %839
  %881 = fadd fast float %878, %840
  %882 = fadd fast float %879, %841
  %883 = fmul fast float %875, %876
  %884 = fadd fast float %875, %838
  br label %885

; <label>:885                                     ; preds = %843, %837
  %886 = phi float [ %884, %843 ], [ %838, %837 ]
  %887 = phi float [ %883, %843 ], [ 0.000000e+00, %837 ]
  %888 = phi float [ %880, %843 ], [ %839, %837 ]
  %889 = phi float [ %881, %843 ], [ %840, %837 ]
  %890 = phi float [ %882, %843 ], [ %841, %837 ]
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 1
  %893 = fcmp fast ogt float %886, %892
  br i1 %893, label %894, label %900, !dx.controlflow.hints !49

; <label>:894                                     ; preds = %885
  %895 = fdiv fast float 1.000000e+00, %886
  %896 = fmul fast float %895, %888
  %897 = fmul fast float %895, %889
  %898 = fmul fast float %895, %890
  %899 = fmul fast float %895, %887
  br label %900

; <label>:900                                     ; preds = %894, %885
  %901 = phi float [ %899, %894 ], [ %887, %885 ]
  %902 = phi float [ %896, %894 ], [ %888, %885 ]
  %903 = phi float [ %897, %894 ], [ %889, %885 ]
  %904 = phi float [ %898, %894 ], [ %890, %885 ]
  br i1 %893, label %907, label %905, !dx.controlflow.hints !50

; <label>:905                                     ; preds = %900
  %906 = fadd fast float %698, %388
  br label %1373

; <label>:907                                     ; preds = %900
  %908 = fmul fast float %886, 0xBFF7154760000000
  %909 = call float @dx.op.unary.f32(i32 21, float %908)  ; Exp(value)
  %910 = call float @dx.op.unary.f32(i32 7, float %909)  ; Saturate(value)
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 3
  %913 = fcmp fast une float %912, 0.000000e+00
  %914 = extractvalue %dx.types.CBufRet.f32 %911, 0
  %915 = extractvalue %dx.types.CBufRet.f32 %911, 1
  %916 = extractvalue %dx.types.CBufRet.f32 %911, 2
  br i1 %913, label %917, label %939, !dx.controlflow.hints !51

; <label>:917                                     ; preds = %907
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 0
  %920 = extractvalue %dx.types.CBufRet.f32 %918, 1
  %921 = extractvalue %dx.types.CBufRet.f32 %918, 2
  %922 = call float @dx.op.dot3.f32(i32 55, float %914, float %915, float %916, float %275, float %276, float %277)  ; Dot3(ax,ay,az,bx,by,bz)
  %923 = fcmp fast ogt float %901, 0.000000e+00
  %924 = select i1 %923, float 1.000000e+00, float -1.000000e+00
  %925 = fmul fast float %924, 5.000000e-01
  %926 = fmul fast float %925, %922
  %927 = fmul fast float %924, %901
  %928 = fadd fast float %926, 4.921875e-01
  %929 = fadd fast float %927, -3.125000e-02
  %930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %13, float %928, float 0x3FB25F3060000000, float %929, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %931 = extractvalue %dx.types.ResRet.f32 %930, 0
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 0
  %934 = fmul fast float %931, 0x400921FB60000000
  %935 = fmul fast float %934, %933
  %936 = fmul fast float %935, %919
  %937 = fmul fast float %935, %920
  %938 = fmul fast float %935, %921
  br label %939

; <label>:939                                     ; preds = %917, %907
  %940 = phi float [ %936, %917 ], [ 0.000000e+00, %907 ]
  %941 = phi float [ %937, %917 ], [ 0.000000e+00, %907 ]
  %942 = phi float [ %938, %917 ], [ 0.000000e+00, %907 ]
  %943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %944 = extractvalue %dx.types.CBufRet.f32 %943, 0
  %945 = fmul fast float %944, %914
  %946 = fmul fast float %944, %915
  %947 = fmul fast float %944, %916
  %948 = fadd fast float %945, %385
  %949 = fadd fast float %946, %386
  %950 = fadd fast float %947, %387
  %951 = fsub fast float %948, %399
  %952 = fsub fast float %949, %400
  %953 = fmul fast float %951, %404
  %954 = fmul fast float %952, %405
  %955 = call float @dx.op.binary.f32(i32 36, float %953, float %954)  ; FMin(a,b)
  %956 = fcmp fast olt float %955, 0.000000e+00
  %957 = call float @dx.op.binary.f32(i32 35, float %953, float %954)  ; FMax(a,b)
  %958 = fcmp fast ogt float %957, 1.000000e+00
  %959 = or i1 %956, %958
  %960 = fcmp fast olt float %950, %413
  %961 = or i1 %959, %960
  %962 = fcmp fast ogt float %950, %420
  %963 = or i1 %961, %962
  br i1 %963, label %978, label %964, !dx.controlflow.hints !35

; <label>:964                                     ; preds = %939
  %965 = fsub fast float 1.000000e+00, %954
  %966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %953, float %965, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %967 = extractvalue %dx.types.ResRet.f32 %966, 0
  %968 = extractvalue %dx.types.ResRet.f32 %966, 1
  %969 = extractvalue %dx.types.ResRet.f32 %966, 2
  %970 = extractvalue %dx.types.ResRet.f32 %966, 3
  %971 = fcmp fast oeq float %967, 0.000000e+00
  %972 = fcmp ule float %950, %969
  %973 = fcmp uge float %950, %968
  %974 = or i1 %973, %972
  %975 = or i1 %971, %974
  %976 = zext i1 %975 to i32
  %977 = xor i32 %976, 1
  br label %978

; <label>:978                                     ; preds = %964, %939
  %979 = phi float [ %967, %964 ], [ %370, %939 ]
  %980 = phi float [ %968, %964 ], [ %371, %939 ]
  %981 = phi float [ %969, %964 ], [ %372, %939 ]
  %982 = phi float [ %970, %964 ], [ %373, %939 ]
  %983 = phi i32 [ %977, %964 ], [ 0, %939 ]
  %984 = icmp eq i32 %983, 0
  br i1 %511, label %1139, label %985, !dx.controlflow.hints !39

; <label>:985                                     ; preds = %978
  %986 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.i32 %986, 1
  %988 = and i32 %987, 1
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %990, label %1134, !dx.controlflow.hints !40

; <label>:990                                     ; preds = %985
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 2
  %993 = extractvalue %dx.types.CBufRet.f32 %991, 3
  %994 = fmul fast float %992, %948
  %995 = fmul fast float %993, %949
  %996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.f32 %996, 0
  %998 = extractvalue %dx.types.CBufRet.f32 %996, 1
  %999 = fadd fast float %994, %997
  %1000 = fadd fast float %995, %998
  %1001 = call float @dx.op.unary.f32(i32 7, float %999)  ; Saturate(value)
  %1002 = call float @dx.op.unary.f32(i32 7, float %1000)  ; Saturate(value)
  %1003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1001, float %1002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1004 = extractvalue %dx.types.ResRet.f32 %1003, 0
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 0
  %1007 = fmul fast float %1006, %1004
  %1008 = fsub fast float %999, %1001
  %1009 = fsub fast float %1000, %1002
  %1010 = extractvalue %dx.types.CBufRet.f32 %991, 0
  %1011 = extractvalue %dx.types.CBufRet.f32 %991, 1
  %1012 = fmul fast float %1010, %1008
  %1013 = fmul fast float %1011, %1009
  %1014 = fmul fast float %1012, %1012
  %1015 = fmul fast float %1013, %1013
  %1016 = fadd fast float %1014, %1015
  %1017 = call float @dx.op.unary.f32(i32 24, float %1016)  ; Sqrt(value)
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 3
  %1020 = fmul fast float %1019, %1017
  %1021 = call float @dx.op.unary.f32(i32 7, float %1020)  ; Saturate(value)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1023 = fsub fast float %1022, %1007
  %1024 = fmul fast float %1023, %1021
  %1025 = extractvalue %dx.types.CBufRet.f32 %1005, 1
  %1026 = fsub fast float %950, %1007
  %1027 = fsub fast float %1026, %1025
  %1028 = fsub fast float %1027, %1024
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 2
  %1031 = fsub fast float %1028, %1030
  %1032 = fcmp fast olt float %1031, 0.000000e+00
  %1033 = extractvalue %dx.types.CBufRet.i32 %986, 0
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1085, label %1035

; <label>:1035                                    ; preds = %990
  br label %1036

; <label>:1036                                    ; preds = %1074, %1035
  %1037 = phi i32 [ %1080, %1074 ], [ 1, %1035 ]
  %1038 = phi i32 [ %1081, %1074 ], [ 0, %1035 ]
  %1039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1040 = extractvalue %dx.types.CBufRet.f32 %1039, 1
  %1041 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.i32 %1041, 1
  %1043 = and i32 %1042, 8
  %1044 = icmp eq i32 %1043, 0
  %1045 = fcmp fast ogt float %1040, %1028
  %1046 = or i1 %1045, %1044
  %1047 = add i32 %1038, 171
  %1048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %1047)  ; CBufferLoadLegacy(handle,regIndex)
  %1049 = extractvalue %dx.types.CBufRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.CBufRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.CBufRet.f32 %1048, 2
  br i1 %1046, label %1052, label %1058, !dx.controlflow.hints !41

; <label>:1052                                    ; preds = %1036
  %1053 = fsub fast float %1049, %948
  %1054 = fsub fast float %1050, %949
  %1055 = fmul fast float %1053, %1053
  %1056 = fmul fast float %1054, %1054
  %1057 = fadd fast float %1055, %1056
  br label %1074

; <label>:1058                                    ; preds = %1036
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 2
  %1061 = extractvalue %dx.types.CBufRet.f32 %1039, 2
  %1062 = fmul fast float %1061, %1060
  %1063 = fsub fast float %1062, %1040
  %1064 = fdiv fast float %1051, %1063
  %1065 = fsub fast float %948, %1049
  %1066 = fsub fast float %949, %1050
  %1067 = fsub fast float %1028, %1040
  %1068 = fmul fast float %1064, %1067
  %1069 = fmul fast float %1065, %1065
  %1070 = fmul fast float %1066, %1066
  %1071 = fadd fast float %1069, %1070
  %1072 = fmul fast float %1068, %1068
  %1073 = fadd fast float %1071, %1072
  br label %1074

; <label>:1074                                    ; preds = %1058, %1052
  %1075 = phi float [ %1057, %1052 ], [ %1073, %1058 ]
  %1076 = call float @dx.op.unary.f32(i32 24, float %1075)  ; Sqrt(value)
  %1077 = fsub float %1051, %1076
  %1078 = fcmp fast olt float %1077, 0.000000e+00
  %1079 = zext i1 %1078 to i32
  %1080 = and i32 %1079, %1037
  %1081 = add i32 %1038, 1
  %1082 = extractvalue %dx.types.CBufRet.i32 %1041, 0
  %1083 = icmp ult i32 %1081, %1082
  br i1 %1083, label %1036, label %1084

; <label>:1084                                    ; preds = %1074
  br label %1085

; <label>:1085                                    ; preds = %1084, %990
  %1086 = phi i32 [ 1, %990 ], [ %1080, %1084 ]
  br label %1087

; <label>:1087                                    ; preds = %1087, %1085
  %1088 = phi i32 [ %1124, %1087 ], [ %1086, %1085 ]
  %1089 = phi i32 [ %1125, %1087 ], [ 0, %1085 ]
  %1090 = add nuw nsw i32 %1089, 191
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %1090)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 0
  %1093 = extractvalue %dx.types.CBufRet.f32 %1091, 1
  %1094 = extractvalue %dx.types.CBufRet.f32 %1091, 2
  %1095 = add nuw nsw i32 %1089, 195
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %1095)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 0
  %1098 = extractvalue %dx.types.CBufRet.f32 %1096, 1
  %1099 = extractvalue %dx.types.CBufRet.f32 %1096, 2
  %1100 = fsub fast float %948, %1092
  %1101 = fsub fast float %949, %1093
  %1102 = fsub fast float %1028, %1094
  %1103 = call float @dx.op.unary.f32(i32 6, float %1100)  ; FAbs(value)
  %1104 = call float @dx.op.unary.f32(i32 6, float %1101)  ; FAbs(value)
  %1105 = call float @dx.op.unary.f32(i32 6, float %1102)  ; FAbs(value)
  %1106 = fsub fast float %1103, %1097
  %1107 = fsub fast float %1104, %1098
  %1108 = fsub fast float %1105, %1099
  %1109 = call float @dx.op.binary.f32(i32 35, float %1106, float 0.000000e+00)  ; FMax(a,b)
  %1110 = call float @dx.op.binary.f32(i32 35, float %1107, float 0.000000e+00)  ; FMax(a,b)
  %1111 = call float @dx.op.binary.f32(i32 35, float %1108, float 0.000000e+00)  ; FMax(a,b)
  %1112 = fmul fast float %1109, %1109
  %1113 = fmul fast float %1110, %1110
  %1114 = fadd fast float %1113, %1112
  %1115 = fmul fast float %1111, %1111
  %1116 = fadd fast float %1114, %1115
  %1117 = call float @dx.op.unary.f32(i32 24, float %1116)  ; Sqrt(value)
  %1118 = call float @dx.op.binary.f32(i32 35, float %1107, float %1108)  ; FMax(a,b)
  %1119 = call float @dx.op.binary.f32(i32 35, float %1106, float %1118)  ; FMax(a,b)
  %1120 = call float @dx.op.binary.f32(i32 36, float %1119, float 0.000000e+00)  ; FMin(a,b)
  %1121 = fadd fast float %1120, %1117
  %1122 = fcmp ogt float %1121, -0.000000e+00
  %1123 = zext i1 %1122 to i32
  %1124 = and i32 %1123, %1088
  %1125 = add nuw nsw i32 %1089, 1
  %1126 = icmp eq i32 %1125, 4
  br i1 %1126, label %1127, label %1087

; <label>:1127                                    ; preds = %1087
  %1128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.i32 %1128, 1
  %1130 = lshr i32 %1129, 1
  %1131 = xor i32 %1130, %1124
  %1132 = zext i1 %1032 to i32
  %1133 = and i32 %1131, %1132
  br label %1134

; <label>:1134                                    ; preds = %1127, %985
  %1135 = phi i32 [ %368, %985 ], [ %1133, %1127 ]
  %1136 = phi float [ %950, %985 ], [ %1028, %1127 ]
  %1137 = icmp ne i32 %1135, 0
  %1138 = zext i1 %1137 to i32
  br label %1139

; <label>:1139                                    ; preds = %1134, %978
  %1140 = phi i32 [ %1135, %1134 ], [ %368, %978 ]
  %1141 = phi float [ %1136, %1134 ], [ %369, %978 ]
  %1142 = phi i32 [ %1138, %1134 ], [ 0, %978 ]
  br i1 %984, label %1267, label %1143, !dx.controlflow.hints !42

; <label>:1143                                    ; preds = %1139
  %1144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1145 = extractvalue %dx.types.CBufRet.i32 %1144, 0
  %1146 = icmp ne i32 %1145, 0
  %1147 = zext i1 %1146 to i32
  %1148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.i32 %1148, 0
  %1150 = icmp eq i32 %1149, 0
  br i1 %1150, label %1184, label %1151

; <label>:1151                                    ; preds = %1143
  br label %1152

; <label>:1152                                    ; preds = %1179, %1151
  %1153 = phi i32 [ %1180, %1179 ], [ 0, %1151 ]
  %1154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1153, i32 0)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.f32 %1154, 0
  %1156 = extractvalue %dx.types.ResRet.f32 %1154, 1
  %1157 = extractvalue %dx.types.ResRet.f32 %1154, 2
  %1158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1153, i32 16)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.f32 %1158, 0
  %1160 = extractvalue %dx.types.ResRet.f32 %1158, 1
  %1161 = extractvalue %dx.types.ResRet.f32 %1158, 2
  %1162 = fsub fast float %1155, %1159
  %1163 = fsub fast float %1156, %1160
  %1164 = fsub fast float %1157, %1161
  %1165 = fadd fast float %1159, %1155
  %1166 = fadd fast float %1160, %1156
  %1167 = fadd fast float %1161, %1157
  %1168 = fcmp fast olt float %948, %1162
  %1169 = fcmp fast olt float %949, %1163
  %1170 = fcmp fast olt float %950, %1164
  %1171 = or i1 %1168, %1169
  %1172 = or i1 %1170, %1171
  %1173 = fcmp fast ogt float %948, %1165
  %1174 = fcmp fast ogt float %949, %1166
  %1175 = fcmp fast ogt float %950, %1167
  %1176 = or i1 %1173, %1174
  %1177 = or i1 %1175, %1176
  %1178 = or i1 %1172, %1177
  br i1 %1178, label %1179, label %1182, !dx.controlflow.hints !43

; <label>:1179                                    ; preds = %1152
  %1180 = add nuw i32 %1153, 1
  %1181 = icmp ult i32 %1180, %1149
  br i1 %1181, label %1152, label %1182

; <label>:1182                                    ; preds = %1179, %1152
  %1183 = phi i32 [ 255, %1179 ], [ %1153, %1152 ]
  br label %1184

; <label>:1184                                    ; preds = %1182, %1143
  %1185 = phi i32 [ 255, %1143 ], [ %1183, %1182 ]
  %1186 = icmp eq i32 %1185, 255
  br i1 %1186, label %1192, label %1187, !dx.controlflow.hints !44

; <label>:1187                                    ; preds = %1184
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1185, i32 156)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = icmp ne i32 %1189, 0
  %1191 = zext i1 %1190 to i32
  br label %1192

; <label>:1192                                    ; preds = %1187, %1184
  %1193 = phi i32 [ %1191, %1187 ], [ %1147, %1184 ]
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1195, label %1264, !dx.controlflow.hints !45

; <label>:1195                                    ; preds = %1192
  %1196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.f32 %1196, 3
  %1198 = extractvalue %dx.types.CBufRet.f32 %416, 0
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 2
  %1201 = extractvalue %dx.types.CBufRet.f32 %1199, 3
  br i1 %1186, label %1212, label %1202, !dx.controlflow.hints !46

; <label>:1202                                    ; preds = %1195
  %1203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1185, i32 60)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 0
  %1205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1185, i32 64)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = extractvalue %dx.types.ResRet.f32 %1205, 1
  %1208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1185, i32 72)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.f32 %1208, 0
  %1210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1185, i32 96)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  br label %1212

; <label>:1212                                    ; preds = %1202, %1195
  %1213 = phi float [ %1204, %1202 ], [ %419, %1195 ]
  %1214 = phi float [ %1209, %1202 ], [ %417, %1195 ]
  %1215 = phi float [ %1211, %1202 ], [ %1198, %1195 ]
  %1216 = phi float [ %1206, %1202 ], [ %1200, %1195 ]
  %1217 = phi float [ %1207, %1202 ], [ %1201, %1195 ]
  %1218 = call float @dx.op.binary.f32(i32 35, float %979, float 0.000000e+00)  ; FMax(a,b)
  %1219 = call float @dx.op.binary.f32(i32 36, float %1218, float 1.000000e+00)  ; FMin(a,b)
  %1220 = call float @dx.op.unary.f32(i32 24, float %1219)  ; Sqrt(value)
  %1221 = call float @dx.op.binary.f32(i32 35, float %982, float 0x3F847AE140000000)  ; FMax(a,b)
  %1222 = fsub fast float %980, %950
  %1223 = fsub fast float %950, %981
  %1224 = call float @dx.op.binary.f32(i32 36, float %1223, float %1222)  ; FMin(a,b)
  %1225 = fdiv fast float %1224, %1221
  %1226 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  %1227 = fsub fast float %950, %1214
  %1228 = fdiv fast float %1227, %1213
  %1229 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  %1230 = fsub fast float 1.000000e+00, %1229
  %1231 = fmul float %1226, %1230
  %1232 = fmul float %1231, %1231
  %1233 = fmul fast float %1220, %1197
  %1234 = fmul fast float %1233, %1232
  %1235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1236 = extractvalue %dx.types.CBufRet.f32 %1235, 2
  %1237 = extractvalue %dx.types.CBufRet.f32 %1235, 1
  %1238 = fsub fast float %1234, %1237
  %1239 = fsub fast float %1236, %1237
  %1240 = fdiv fast float %1238, %1239
  %1241 = call float @dx.op.unary.f32(i32 7, float %1240)  ; Saturate(value)
  %1242 = fmul fast float %1241, %1215
  %1243 = fcmp fast ogt float %1217, 0.000000e+00
  br i1 %1243, label %1244, label %1264, !dx.controlflow.hints !47

; <label>:1244                                    ; preds = %1212
  %1245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1246 = extractvalue %dx.types.CBufRet.f32 %1245, 0
  %1247 = extractvalue %dx.types.CBufRet.f32 %1245, 1
  %1248 = extractvalue %dx.types.CBufRet.f32 %1245, 2
  %1249 = fsub fast float %948, %1246
  %1250 = fsub fast float %949, %1247
  %1251 = fsub fast float %950, %1248
  %1252 = fmul fast float %1249, %1249
  %1253 = fmul fast float %1250, %1250
  %1254 = fadd fast float %1252, %1253
  %1255 = fmul fast float %1251, %1251
  %1256 = fadd fast float %1254, %1255
  %1257 = call float @dx.op.unary.f32(i32 24, float %1256)  ; Sqrt(value)
  %1258 = fsub fast float %1257, %1216
  %1259 = fsub fast float %1217, %1216
  %1260 = fdiv fast float %1258, %1259
  %1261 = call float @dx.op.unary.f32(i32 7, float %1260)  ; Saturate(value)
  %1262 = fmul fast float %1261, %1261
  %1263 = fmul fast float %1262, %1242
  br label %1264

; <label>:1264                                    ; preds = %1244, %1212, %1192
  %1265 = phi float [ 0.000000e+00, %1192 ], [ %1263, %1244 ], [ %1242, %1212 ]
  %1266 = fmul fast float %1265, %944
  br label %1267

; <label>:1267                                    ; preds = %1264, %1139
  %1268 = phi float [ %1266, %1264 ], [ 0.000000e+00, %1139 ]
  %1269 = icmp eq i32 %1142, 0
  br i1 %1269, label %1301, label %1270, !dx.controlflow.hints !48

; <label>:1270                                    ; preds = %1267
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 1
  %1273 = fsub fast float %944, %1272
  %1274 = extractvalue %dx.types.CBufRet.f32 %1271, 3
  %1275 = fmul fast float %1273, %1274
  %1276 = call float @dx.op.unary.f32(i32 7, float %1275)  ; Saturate(value)
  %1277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1278 = extractvalue %dx.types.CBufRet.f32 %1277, 3
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 2
  %1281 = fsub fast float %1280, %1141
  %1282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1283 = extractvalue %dx.types.CBufRet.f32 %1282, 3
  %1284 = fmul fast float %1281, %1283
  %1285 = call float @dx.op.unary.f32(i32 7, float %1284)  ; Saturate(value)
  %1286 = fmul fast float %1285, %1278
  %1287 = extractvalue %dx.types.CBufRet.f32 %1282, 0
  %1288 = fsub fast float %944, %1287
  %1289 = extractvalue %dx.types.CBufRet.f32 %1282, 1
  %1290 = fmul fast float %1288, %1289
  %1291 = call float @dx.op.unary.f32(i32 7, float %1290)  ; Saturate(value)
  %1292 = fsub fast float 1.000000e+00, %1276
  %1293 = fmul fast float %1291, %1292
  %1294 = fadd fast float %1293, %1276
  %1295 = extractvalue %dx.types.CBufRet.f32 %1271, 0
  %1296 = fsub fast float %1286, %1295
  %1297 = fmul fast float %1296, %1294
  %1298 = fadd fast float %1297, %1295
  %1299 = fmul fast float %1298, %944
  %1300 = fadd fast float %1299, %1268
  br label %1301

; <label>:1301                                    ; preds = %1270, %1267
  %1302 = phi float [ %1300, %1270 ], [ %1268, %1267 ]
  %1303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1304 = extractvalue %dx.types.CBufRet.f32 %1303, 3
  %1305 = fmul fast float %1302, 0xBFF7154760000000
  %1306 = fmul fast float %1305, %1304
  %1307 = call float @dx.op.unary.f32(i32 21, float %1306)  ; Exp(value)
  %1308 = call float @dx.op.unary.f32(i32 7, float %1307)  ; Saturate(value)
  %1309 = fmul fast float %1308, %940
  %1310 = fmul fast float %1308, %941
  %1311 = fmul fast float %1308, %942
  %1312 = fadd fast float %1309, %202
  %1313 = fadd fast float %1310, %203
  %1314 = fadd fast float %1311, %204
  %1315 = fsub fast float 1.000000e+00, %910
  %1316 = fmul fast float %902, %381
  %1317 = fmul fast float %1316, %1315
  %1318 = fmul fast float %1317, %1312
  %1319 = fmul fast float %903, %381
  %1320 = fmul fast float %1319, %1315
  %1321 = fmul fast float %1320, %1313
  %1322 = fmul fast float %904, %381
  %1323 = fmul fast float %1322, %1315
  %1324 = fmul fast float %1323, %1314
  %1325 = fadd fast float %1318, %382
  %1326 = fadd fast float %1321, %383
  %1327 = fadd fast float %1324, %384
  %1328 = fdiv fast float %886, %698
  %1329 = fadd fast float %698, %388
  %1330 = fmul fast float %388, %388
  %1331 = fmul fast float %1329, %1329
  %1332 = fsub fast float %1330, %1331
  %1333 = fmul fast float %1332, -5.000000e-01
  %1334 = fmul fast float %1333, %1328
  %1335 = fadd fast float %1334, %380
  %1336 = fadd fast float %886, %390
  %1337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1338 = extractvalue %dx.types.CBufRet.i32 %1337, 0
  %1339 = icmp eq i32 %1338, 0
  br i1 %1339, label %1366, label %1340, !dx.controlflow.hints !52

; <label>:1340                                    ; preds = %1301
  %1341 = icmp ne i32 %395, 0
  %1342 = zext i1 %1341 to i32
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 2
  %1345 = extractvalue %dx.types.CBufRet.f32 %1343, 0
  %1346 = fsub fast float %1329, %1345
  %1347 = fmul fast float %1346, %1344
  %1348 = call float @dx.op.unary.f32(i32 7, float %1347)  ; Saturate(value)
  %1349 = fadd fast float %1348, -5.000000e-01
  %1350 = fmul fast float %1349, 2.000000e+00
  %1351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1352 = extractvalue %dx.types.CBufRet.f32 %1351, 2
  %1353 = fcmp fast olt float %1350, %1352
  br i1 %1353, label %1354, label %1366, !dx.controlflow.hints !53

; <label>:1354                                    ; preds = %1340
  %1355 = fmul fast float %1350, %1350
  %1356 = fmul fast float %1315, %381
  %1357 = fmul fast float %1350, %1356
  %1358 = fmul fast float %1355, %1356
  %1359 = fmul fast float %1357, %1355
  %1360 = fmul fast float %1355, %1355
  %1361 = fmul fast float %1360, %1356
  %1362 = fadd fast float %1357, %391
  %1363 = fadd fast float %1358, %392
  %1364 = fadd fast float %1359, %393
  %1365 = fadd fast float %1361, %394
  br label %1366

; <label>:1366                                    ; preds = %1354, %1340, %1301
  %1367 = phi float [ %391, %1301 ], [ %1362, %1354 ], [ %391, %1340 ]
  %1368 = phi float [ %392, %1301 ], [ %1363, %1354 ], [ %392, %1340 ]
  %1369 = phi float [ %393, %1301 ], [ %1364, %1354 ], [ %393, %1340 ]
  %1370 = phi float [ %394, %1301 ], [ %1365, %1354 ], [ %394, %1340 ]
  %1371 = phi i32 [ %395, %1301 ], [ 1, %1354 ], [ %1342, %1340 ]
  %1372 = fmul fast float %910, %381
  br label %1373

; <label>:1373                                    ; preds = %1366, %905
  %1374 = phi float [ %906, %905 ], [ %1329, %1366 ]
  %1375 = phi i32 [ %368, %905 ], [ %1140, %1366 ]
  %1376 = phi float [ %369, %905 ], [ %1141, %1366 ]
  %1377 = phi float [ %370, %905 ], [ %979, %1366 ]
  %1378 = phi float [ %371, %905 ], [ %980, %1366 ]
  %1379 = phi float [ %372, %905 ], [ %981, %1366 ]
  %1380 = phi float [ %373, %905 ], [ %982, %1366 ]
  %1381 = phi float [ %380, %905 ], [ %1335, %1366 ]
  %1382 = phi float [ %381, %905 ], [ %1372, %1366 ]
  %1383 = phi float [ %382, %905 ], [ %1325, %1366 ]
  %1384 = phi float [ %383, %905 ], [ %1326, %1366 ]
  %1385 = phi float [ %384, %905 ], [ %1327, %1366 ]
  %1386 = phi float [ %390, %905 ], [ %1336, %1366 ]
  %1387 = phi float [ %391, %905 ], [ %1367, %1366 ]
  %1388 = phi float [ %392, %905 ], [ %1368, %1366 ]
  %1389 = phi float [ %393, %905 ], [ %1369, %1366 ]
  %1390 = phi float [ %394, %905 ], [ %1370, %1366 ]
  %1391 = phi i32 [ %395, %905 ], [ %1371, %1366 ]
  %1392 = fmul fast float %698, %275
  %1393 = fmul fast float %698, %276
  %1394 = fmul fast float %698, %277
  %1395 = fadd fast float %1392, %385
  %1396 = fadd fast float %1393, %386
  %1397 = fadd fast float %1394, %387
  %1398 = fcmp fast olt float %1374, %347
  %1399 = extractvalue %dx.types.CBufRet.f32 %891, 2
  %1400 = fcmp fast olt float %1399, %1382
  %1401 = and i1 %1398, %1400
  br i1 %1401, label %367, label %1402

; <label>:1402                                    ; preds = %1373
  br label %1403

; <label>:1403                                    ; preds = %1402, %340
  %1404 = phi float [ 0.000000e+00, %340 ], [ %1381, %1402 ]
  %1405 = phi float [ 1.000000e+00, %340 ], [ %1382, %1402 ]
  %1406 = phi float [ 0.000000e+00, %340 ], [ %1383, %1402 ]
  %1407 = phi float [ 0.000000e+00, %340 ], [ %1384, %1402 ]
  %1408 = phi float [ 0.000000e+00, %340 ], [ %1385, %1402 ]
  %1409 = phi float [ 0.000000e+00, %340 ], [ %1386, %1402 ]
  %1410 = phi float [ 0.000000e+00, %340 ], [ %1387, %1402 ]
  %1411 = phi float [ 0.000000e+00, %340 ], [ %1388, %1402 ]
  %1412 = phi float [ 0.000000e+00, %340 ], [ %1389, %1402 ]
  %1413 = phi float [ 0.000000e+00, %340 ], [ %1390, %1402 ]
  %1414 = phi i32 [ 0, %340 ], [ %1391, %1402 ]
  %1415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.i32 %1415, 0
  %1417 = icmp eq i32 %1416, 0
  br i1 %1417, label %1459, label %1418, !dx.controlflow.hints !54

; <label>:1418                                    ; preds = %1403
  %1419 = icmp eq i32 %1414, 0
  br i1 %1419, label %1458, label %1420, !dx.controlflow.hints !55

; <label>:1420                                    ; preds = %1418
  %1421 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.i32 %1421, 2
  %1423 = icmp eq i32 %1422, 0
  br i1 %1423, label %1430, label %1424, !dx.controlflow.hints !56

; <label>:1424                                    ; preds = %1420
  %1425 = fsub fast float 1.000000e+00, %1405
  %1426 = fdiv fast float %1410, %1425
  %1427 = fdiv fast float %1411, %1425
  %1428 = fdiv fast float %1412, %1425
  %1429 = fdiv fast float %1413, %1425
  br label %1435

; <label>:1430                                    ; preds = %1420
  %1431 = fadd fast float %1410, %1405
  %1432 = fadd fast float %1411, %1405
  %1433 = fadd fast float %1412, %1405
  %1434 = fadd fast float %1413, %1405
  br label %1435

; <label>:1435                                    ; preds = %1430, %1424
  %1436 = phi float [ %1426, %1424 ], [ %1431, %1430 ]
  %1437 = phi float [ %1427, %1424 ], [ %1432, %1430 ]
  %1438 = phi float [ %1428, %1424 ], [ %1433, %1430 ]
  %1439 = phi float [ %1429, %1424 ], [ %1434, %1430 ]
  %1440 = call float @dx.op.binary.f32(i32 35, float %1436, float -1.000000e+00)  ; FMax(a,b)
  %1441 = call float @dx.op.binary.f32(i32 35, float %1437, float -1.000000e+00)  ; FMax(a,b)
  %1442 = call float @dx.op.binary.f32(i32 35, float %1438, float -1.000000e+00)  ; FMax(a,b)
  %1443 = call float @dx.op.binary.f32(i32 35, float %1439, float -1.000000e+00)  ; FMax(a,b)
  %1444 = call float @dx.op.binary.f32(i32 36, float %1440, float 1.000000e+00)  ; FMin(a,b)
  %1445 = call float @dx.op.binary.f32(i32 36, float %1441, float 1.000000e+00)  ; FMin(a,b)
  %1446 = call float @dx.op.binary.f32(i32 36, float %1442, float 1.000000e+00)  ; FMin(a,b)
  %1447 = call float @dx.op.binary.f32(i32 36, float %1443, float 1.000000e+00)  ; FMin(a,b)
  %1448 = fmul fast float %1444, 1.500000e+00
  %1449 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1446, float %1448)  ; FMad(a,b,c)
  %1450 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1445, float 0.000000e+00)  ; FMad(a,b,c)
  %1451 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1447, float %1450)  ; FMad(a,b,c)
  %1452 = fmul fast float %1444, 0x3FEBB67AE0000000
  %1453 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1446, float %1452)  ; FMad(a,b,c)
  %1454 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1445, float 0.000000e+00)  ; FMad(a,b,c)
  %1455 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1447, float %1454)  ; FMad(a,b,c)
  %1456 = fadd fast float %1449, 5.000000e-01
  %1457 = fadd fast float %1453, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 0, float %1456, float %1451, float %1457, float %1455, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1459

; <label>:1458                                    ; preds = %1418
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1459

; <label>:1459                                    ; preds = %1458, %1435, %1403
  %1460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1461 = extractvalue %dx.types.CBufRet.f32 %1460, 2
  %1462 = fsub fast float %1405, %1461
  %1463 = fdiv fast float %1462, %1461
  %1464 = call float @dx.op.unary.f32(i32 7, float %1463)  ; Saturate(value)
  %1465 = fmul fast float %1464, 2.000000e+00
  %1466 = fsub fast float 3.000000e+00, %1465
  %1467 = fmul fast float %1464, %1464
  %1468 = fmul fast float %1467, %1405
  %1469 = fmul fast float %1468, %1466
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 0
  %1472 = extractvalue %dx.types.CBufRet.f32 %1470, 1
  %1473 = extractvalue %dx.types.CBufRet.f32 %1470, 2
  %1474 = call float @dx.op.dot3.f32(i32 55, float %275, float %276, float %277, float %1471, float %1472, float %1473)  ; Dot3(ax,ay,az,bx,by,bz)
  %1475 = fmul fast float %1474, %1404
  %1476 = fcmp fast ogt float %1409, 0.000000e+00
  %1477 = fdiv fast float 1.000000e+00, %1409
  %1478 = fmul fast float %1475, %1477
  %1479 = select i1 %1476, float %1478, float %286
  %1480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1481 = extractvalue %dx.types.CBufRet.f32 %1480, 0
  %1482 = extractvalue %dx.types.CBufRet.f32 %1480, 1
  %1483 = extractvalue %dx.types.CBufRet.f32 %1480, 2
  %1484 = fmul fast float %1481, %239
  %1485 = fmul fast float %1482, %239
  %1486 = fmul fast float %1483, %239
  %1487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1488 = extractvalue %dx.types.CBufRet.f32 %1487, 0
  %1489 = extractvalue %dx.types.CBufRet.f32 %1487, 1
  %1490 = extractvalue %dx.types.CBufRet.f32 %1487, 2
  %1491 = fmul fast float %1488, %240
  %1492 = fmul fast float %1489, %240
  %1493 = fmul fast float %1490, %240
  %1494 = fadd fast float %1491, %1484
  %1495 = fadd fast float %1492, %1485
  %1496 = fadd fast float %1493, %1486
  %1497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1498 = extractvalue %dx.types.CBufRet.f32 %1497, 0
  %1499 = extractvalue %dx.types.CBufRet.f32 %1497, 1
  %1500 = extractvalue %dx.types.CBufRet.f32 %1497, 2
  %1501 = fadd fast float %1494, %1498
  %1502 = fadd fast float %1495, %1499
  %1503 = fadd fast float %1496, %1500
  %1504 = fmul fast float %1501, %1479
  %1505 = fmul fast float %1502, %1479
  %1506 = fmul fast float %1503, %1479
  %1507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1508 = extractvalue %dx.types.CBufRet.f32 %1507, 0
  %1509 = extractvalue %dx.types.CBufRet.f32 %1507, 1
  %1510 = extractvalue %dx.types.CBufRet.f32 %1507, 2
  %1511 = extractvalue %dx.types.CBufRet.f32 %1507, 3
  %1512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1513 = extractvalue %dx.types.CBufRet.f32 %1512, 0
  %1514 = extractvalue %dx.types.CBufRet.f32 %1512, 1
  %1515 = extractvalue %dx.types.CBufRet.f32 %1512, 2
  %1516 = extractvalue %dx.types.CBufRet.f32 %1512, 3
  %1517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1518 = extractvalue %dx.types.CBufRet.f32 %1517, 0
  %1519 = extractvalue %dx.types.CBufRet.f32 %1517, 1
  %1520 = extractvalue %dx.types.CBufRet.f32 %1517, 2
  %1521 = extractvalue %dx.types.CBufRet.f32 %1517, 3
  %1522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1523 = extractvalue %dx.types.CBufRet.f32 %1522, 0
  %1524 = extractvalue %dx.types.CBufRet.f32 %1522, 1
  %1525 = extractvalue %dx.types.CBufRet.f32 %1522, 2
  %1526 = extractvalue %dx.types.CBufRet.f32 %1522, 3
  %1527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1528 = extractvalue %dx.types.CBufRet.f32 %1527, 3
  %1529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1530 = extractvalue %dx.types.CBufRet.f32 %1529, 3
  %1531 = extractvalue %dx.types.CBufRet.f32 %1529, 0
  %1532 = extractvalue %dx.types.CBufRet.f32 %1529, 1
  %1533 = extractvalue %dx.types.CBufRet.f32 %1529, 2
  %1534 = fcmp fast olt float %1533, -5.000000e-01
  %1535 = call float @dx.op.dot3.f32(i32 55, float %1504, float %1505, float %1506, float %1504, float %1505, float %1506)  ; Dot3(ax,ay,az,bx,by,bz)
  %1536 = call float @dx.op.unary.f32(i32 25, float %1535)  ; Rsqrt(value)
  %1537 = fmul fast float %1536, %1535
  %1538 = fmul fast float %1536, %1504
  %1539 = fmul fast float %1536, %1505
  %1540 = fmul fast float %1536, %1506
  %1541 = fadd fast float %1537, %1511
  %1542 = call float @dx.op.dot3.f32(i32 55, float %1538, float %1539, float %1540, float %1508, float %1509, float %1510)  ; Dot3(ax,ay,az,bx,by,bz)
  %1543 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1544 = extractvalue %dx.types.CBufRet.i32 %1543, 1
  %1545 = and i32 %1544, 1
  %1546 = icmp ne i32 %1545, 0
  %1547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1548 = extractvalue %dx.types.CBufRet.f32 %1547, 2
  %1549 = fcmp fast ogt float %1548, 0.000000e+00
  %1550 = and i1 %1546, %1549
  br i1 %1550, label %1551, label %1957, !dx.controlflow.hints !57

; <label>:1551                                    ; preds = %1459
  %1552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1553 = extractvalue %dx.types.CBufRet.f32 %1552, 3
  %1554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1555 = extractvalue %dx.types.CBufRet.f32 %1554, 2
  %1556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.f32 %1556, 2
  %1558 = fsub fast float %1555, %1557
  %1559 = and i32 %1544, 2
  %1560 = extractvalue %dx.types.CBufRet.i32 %1543, 0
  %1561 = call i32 @dx.op.binary.i32(i32 40, i32 %1560, i32 3)  ; UMin(a,b)
  %1562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1563 = extractvalue %dx.types.CBufRet.f32 %1562, 0
  %1564 = extractvalue %dx.types.CBufRet.f32 %1562, 1
  %1565 = extractvalue %dx.types.CBufRet.f32 %1556, 0
  %1566 = extractvalue %dx.types.CBufRet.f32 %1556, 1
  %1567 = fsub fast float %1563, %1565
  %1568 = fsub fast float %1564, %1566
  %1569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1570 = extractvalue %dx.types.CBufRet.f32 %1569, 0
  %1571 = fcmp fast ogt float %1570, 0.000000e+00
  %1572 = fsub fast float -0.000000e+00, %1567
  %1573 = fsub fast float -0.000000e+00, %1568
  %1574 = call float @dx.op.dot2.f32(i32 54, float %1538, float %1539, float %1538, float %1539)  ; Dot2(ax,ay,bx,by)
  %1575 = call float @dx.op.dot2.f32(i32 54, float %1538, float %1539, float %1572, float %1573)  ; Dot2(ax,ay,bx,by)
  %1576 = fmul fast float %1575, 2.000000e+00
  %1577 = call float @dx.op.dot2.f32(i32 54, float %1572, float %1573, float %1572, float %1573)  ; Dot2(ax,ay,bx,by)
  %1578 = fmul fast float %1570, %1570
  %1579 = fsub fast float %1577, %1578
  %1580 = fmul fast float %1576, %1576
  %1581 = fmul fast float %1574, 4.000000e+00
  %1582 = fmul fast float %1581, %1579
  %1583 = fsub fast float %1580, %1582
  %1584 = fcmp fast ogt float %1583, 0.000000e+00
  br i1 %1584, label %1585, label %1600, !dx.controlflow.hints !58

; <label>:1585                                    ; preds = %1551
  %1586 = fcmp fast ogt float %1576, 0.000000e+00
  %1587 = call float @dx.op.unary.f32(i32 24, float %1583)  ; Sqrt(value)
  %1588 = fsub fast float -0.000000e+00, %1587
  %1589 = select i1 %1586, float %1587, float %1588
  %1590 = fadd fast float %1589, %1576
  %1591 = fmul float %1590, -5.000000e-01
  %1592 = fdiv fast float %1591, %1574
  %1593 = call float @dx.op.binary.f32(i32 35, float %1592, float 0.000000e+00)  ; FMax(a,b)
  %1594 = call float @dx.op.binary.f32(i32 36, float %1537, float %1593)  ; FMin(a,b)
  %1595 = fdiv fast float %1579, %1591
  %1596 = call float @dx.op.binary.f32(i32 35, float %1595, float 0.000000e+00)  ; FMax(a,b)
  %1597 = call float @dx.op.binary.f32(i32 36, float %1537, float %1596)  ; FMin(a,b)
  %1598 = call float @dx.op.binary.f32(i32 36, float %1594, float %1597)  ; FMin(a,b)
  %1599 = call float @dx.op.binary.f32(i32 35, float %1594, float %1597)  ; FMax(a,b)
  br label %1600

; <label>:1600                                    ; preds = %1585, %1551
  %1601 = phi float [ %1599, %1585 ], [ -1.000000e+00, %1551 ]
  %1602 = phi float [ %1598, %1585 ], [ -1.000000e+00, %1551 ]
  %1603 = phi i1 [ true, %1585 ], [ false, %1551 ]
  %1604 = and i1 %1571, %1603
  br i1 %1604, label %1605, label %1607, !dx.controlflow.hints !59

; <label>:1605                                    ; preds = %1600
  %1606 = fcmp fast oeq float %1602, %1601
  br i1 %1606, label %1910, label %1608, !dx.controlflow.hints !60

; <label>:1607                                    ; preds = %1600
  br i1 %1571, label %1910, label %1608, !dx.controlflow.hints !61

; <label>:1608                                    ; preds = %1607, %1605
  %1609 = phi float [ %1537, %1607 ], [ %1601, %1605 ]
  %1610 = phi float [ 0.000000e+00, %1607 ], [ %1602, %1605 ]
  %1611 = icmp ne i32 %1559, 0
  %1612 = fmul fast float %1609, %1540
  %1613 = fadd fast float %1612, %1553
  %1614 = fmul fast float %1613, %1609
  %1615 = select i1 %1611, float 0.000000e+00, float %1614
  %1616 = fcmp fast oeq float %1540, 0.000000e+00
  %1617 = fdiv fast float %1558, %1540
  %1618 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1617)  ; FMax(a,b)
  %1619 = select i1 %1616, float %1609, float %1618
  %1620 = call float @dx.op.binary.f32(i32 36, float %1609, float %1619)  ; FMin(a,b)
  %1621 = fcmp fast ogt float %1540, 0.000000e+00
  %1622 = fcmp fast olt float %1558, 0.000000e+00
  br i1 %1621, label %1623, label %1680, !dx.controlflow.hints !62

; <label>:1623                                    ; preds = %1608
  %1624 = icmp eq i32 %1559, 0
  br i1 %1622, label %1625, label %1669, !dx.controlflow.hints !63

; <label>:1625                                    ; preds = %1623
  %1626 = select i1 %1624, float %1609, float 0.000000e+00
  %1627 = fsub fast float -0.000000e+00, %1626
  %1628 = call float @dx.op.unary.f32(i32 6, float %1627)  ; FAbs(value)
  %1629 = fmul fast float %1626, %1540
  %1630 = fadd fast float %1629, %1553
  %1631 = fmul fast float %1628, %1630
  %1632 = fsub fast float %1615, %1631
  %1633 = fsub fast float %1609, %1628
  %1634 = select i1 %1624, float %1633, float 0.000000e+00
  %1635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1636 = extractvalue %dx.types.CBufRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.CBufRet.f32 %1635, 1
  %1638 = extractvalue %dx.types.CBufRet.f32 %1635, 2
  %1639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1640 = extractvalue %dx.types.CBufRet.f32 %1639, 0
  %1641 = extractvalue %dx.types.CBufRet.f32 %1639, 1
  %1642 = extractvalue %dx.types.CBufRet.f32 %1639, 2
  %1643 = extractvalue %dx.types.CBufRet.f32 %1639, 3
  %1644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.f32 %1644, 3
  %1646 = call float @dx.op.binary.f32(i32 36, float %1632, float %1645)  ; FMin(a,b)
  %1647 = fmul fast float %1643, %1634
  %1648 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1649 = fsub fast float %1640, %1636
  %1650 = fsub fast float %1641, %1637
  %1651 = fsub fast float %1642, %1638
  %1652 = fmul fast float %1648, %1649
  %1653 = fmul fast float %1648, %1650
  %1654 = fmul fast float %1648, %1651
  %1655 = fadd fast float %1652, %1636
  %1656 = fadd fast float %1653, %1637
  %1657 = fadd fast float %1654, %1638
  %1658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1659 = extractvalue %dx.types.CBufRet.f32 %1658, 0
  %1660 = extractvalue %dx.types.CBufRet.f32 %1658, 1
  %1661 = fadd fast float %1660, %1659
  %1662 = call float @dx.op.unary.f32(i32 7, float %1661)  ; Saturate(value)
  %1663 = extractvalue %dx.types.CBufRet.f32 %1658, 2
  %1664 = extractvalue %dx.types.CBufRet.f32 %1658, 3
  %1665 = fadd fast float %1664, %1663
  %1666 = call float @dx.op.unary.f32(i32 7, float %1665)  ; Saturate(value)
  %1667 = fmul fast float %1662, %1646
  %1668 = fmul fast float %1667, %1666
  br label %1910

; <label>:1669                                    ; preds = %1623
  br i1 %1624, label %1670, label %1691, !dx.controlflow.hints !64

; <label>:1670                                    ; preds = %1669
  %1671 = call float @dx.op.binary.f32(i32 36, float %1620, float %1610)  ; FMin(a,b)
  %1672 = fsub fast float %1620, %1671
  %1673 = fsub fast float %1672, %1609
  %1674 = call float @dx.op.unary.f32(i32 6, float %1673)  ; FAbs(value)
  %1675 = fadd fast float %1672, %1609
  %1676 = fmul fast float %1675, %1540
  %1677 = fadd fast float %1676, %1553
  %1678 = fmul fast float %1677, %1674
  %1679 = fsub fast float %1615, %1678
  br label %1691

; <label>:1680                                    ; preds = %1608
  br i1 %1622, label %1681, label %1691, !dx.controlflow.hints !65

; <label>:1681                                    ; preds = %1680
  %1682 = call float @dx.op.binary.f32(i32 35, float %1610, float %1620)  ; FMax(a,b)
  %1683 = icmp eq i32 %1559, 0
  %1684 = select i1 %1683, float %1620, float 0.000000e+00
  %1685 = fsub fast float -0.000000e+00, %1684
  %1686 = call float @dx.op.unary.f32(i32 6, float %1685)  ; FAbs(value)
  %1687 = fmul fast float %1684, %1540
  %1688 = fadd fast float %1687, %1553
  %1689 = fmul fast float %1686, %1688
  %1690 = fsub fast float %1615, %1689
  br label %1691

; <label>:1691                                    ; preds = %1681, %1680, %1670, %1669
  %1692 = phi float [ %1610, %1669 ], [ %1610, %1670 ], [ %1682, %1681 ], [ %1610, %1680 ]
  %1693 = phi float [ 0.000000e+00, %1669 ], [ %1674, %1670 ], [ %1686, %1681 ], [ 0.000000e+00, %1680 ]
  %1694 = phi float [ %1615, %1669 ], [ %1679, %1670 ], [ %1690, %1681 ], [ %1615, %1680 ]
  %1695 = phi float [ %1620, %1669 ], [ %1620, %1670 ], [ %1609, %1681 ], [ %1609, %1680 ]
  %1696 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 0
  store float -1.000000e+00, float* %1696, align 4, !tbaa !66, !noalias !70
  %1697 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 1
  store float -1.000000e+00, float* %1697, align 4, !tbaa !66, !noalias !70
  %1698 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 2
  store float -1.000000e+00, float* %1698, align 4, !tbaa !66, !noalias !70
  %1699 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 0
  store float -1.000000e+00, float* %1699, align 4, !tbaa !66, !noalias !70
  %1700 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 1
  store float -1.000000e+00, float* %1700, align 4, !tbaa !66, !noalias !70
  %1701 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 2
  store float -1.000000e+00, float* %1701, align 4, !tbaa !66, !noalias !70
  %1702 = icmp sgt i32 %1561, 0
  br i1 %1702, label %1703, label %1764

; <label>:1703                                    ; preds = %1691
  br label %1704

; <label>:1704                                    ; preds = %1753, %1703
  %1705 = phi i32 [ %1754, %1753 ], [ 0, %1703 ]
  %1706 = phi i32 [ %1755, %1753 ], [ 0, %1703 ]
  %1707 = add nuw i32 %1706, 171
  %1708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 %1707)  ; CBufferLoadLegacy(handle,regIndex)
  %1709 = extractvalue %dx.types.CBufRet.f32 %1708, 0
  %1710 = extractvalue %dx.types.CBufRet.f32 %1708, 1
  %1711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1712 = extractvalue %dx.types.CBufRet.f32 %1711, 0
  %1713 = extractvalue %dx.types.CBufRet.f32 %1711, 1
  %1714 = fsub fast float %1709, %1712
  %1715 = fsub fast float %1710, %1713
  %1716 = extractvalue %dx.types.CBufRet.f32 %1708, 2
  %1717 = fsub fast float -0.000000e+00, %1714
  %1718 = fsub fast float -0.000000e+00, %1715
  %1719 = call float @dx.op.dot2.f32(i32 54, float %1538, float %1539, float %1717, float %1718)  ; Dot2(ax,ay,bx,by)
  %1720 = fmul fast float %1719, 2.000000e+00
  %1721 = call float @dx.op.dot2.f32(i32 54, float %1717, float %1718, float %1717, float %1718)  ; Dot2(ax,ay,bx,by)
  %1722 = fmul fast float %1716, %1716
  %1723 = fsub fast float %1721, %1722
  %1724 = fmul fast float %1720, %1720
  %1725 = fmul fast float %1581, %1723
  %1726 = fsub fast float %1724, %1725
  %1727 = fcmp fast ogt float %1726, 0.000000e+00
  br i1 %1727, label %1728, label %1743, !dx.controlflow.hints !58

; <label>:1728                                    ; preds = %1704
  %1729 = fcmp fast ogt float %1720, 0.000000e+00
  %1730 = call float @dx.op.unary.f32(i32 24, float %1726)  ; Sqrt(value)
  %1731 = fsub fast float -0.000000e+00, %1730
  %1732 = select i1 %1729, float %1730, float %1731
  %1733 = fadd fast float %1732, %1720
  %1734 = fmul float %1733, -5.000000e-01
  %1735 = fdiv fast float %1734, %1574
  %1736 = call float @dx.op.binary.f32(i32 35, float %1735, float 0.000000e+00)  ; FMax(a,b)
  %1737 = call float @dx.op.binary.f32(i32 36, float %1609, float %1736)  ; FMin(a,b)
  %1738 = fdiv fast float %1723, %1734
  %1739 = call float @dx.op.binary.f32(i32 35, float %1738, float 0.000000e+00)  ; FMax(a,b)
  %1740 = call float @dx.op.binary.f32(i32 36, float %1609, float %1739)  ; FMin(a,b)
  %1741 = call float @dx.op.binary.f32(i32 36, float %1737, float %1740)  ; FMin(a,b)
  %1742 = call float @dx.op.binary.f32(i32 35, float %1737, float %1740)  ; FMax(a,b)
  br label %1743

; <label>:1743                                    ; preds = %1728, %1704
  %1744 = phi float [ %1742, %1728 ], [ -1.000000e+00, %1704 ]
  %1745 = phi float [ %1741, %1728 ], [ -1.000000e+00, %1704 ]
  %1746 = phi i1 [ true, %1728 ], [ false, %1704 ]
  br i1 %1746, label %1747, label %1753, !dx.controlflow.hints !81

; <label>:1747                                    ; preds = %1743
  %1748 = call float @dx.op.binary.f32(i32 35, float %1692, float %1745)  ; FMax(a,b)
  %1749 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %1706
  store float %1748, float* %1749, align 4, !tbaa !66, !noalias !70
  %1750 = call float @dx.op.binary.f32(i32 35, float %1692, float %1744)  ; FMax(a,b)
  %1751 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 %1706
  store float %1750, float* %1751, align 4, !tbaa !66, !noalias !70
  %1752 = add nsw i32 %1705, 1
  br label %1753

; <label>:1753                                    ; preds = %1747, %1743
  %1754 = phi i32 [ %1752, %1747 ], [ %1705, %1743 ]
  %1755 = add nuw nsw i32 %1706, 1
  %1756 = icmp eq i32 %1755, %1561
  br i1 %1756, label %1757, label %1704

; <label>:1757                                    ; preds = %1753
  %1758 = load float, float* %1698, align 4, !tbaa !66, !alias.scope !82, !noalias !85
  %1759 = load float, float* %1697, align 4, !tbaa !66, !alias.scope !88, !noalias !89
  %1760 = load float, float* %1696, align 4, !tbaa !66, !alias.scope !90, !noalias !91
  %1761 = load float, float* %1701, align 4, !tbaa !66, !alias.scope !92, !noalias !95
  %1762 = load float, float* %1700, align 4, !tbaa !66, !alias.scope !98, !noalias !99
  %1763 = load float, float* %1699, align 4, !tbaa !66, !alias.scope !100, !noalias !101
  br label %1764

; <label>:1764                                    ; preds = %1757, %1691
  %1765 = phi float [ -1.000000e+00, %1691 ], [ %1763, %1757 ]
  %1766 = phi float [ -1.000000e+00, %1691 ], [ %1762, %1757 ]
  %1767 = phi float [ -1.000000e+00, %1691 ], [ %1761, %1757 ]
  %1768 = phi float [ -1.000000e+00, %1691 ], [ %1760, %1757 ]
  %1769 = phi float [ -1.000000e+00, %1691 ], [ %1759, %1757 ]
  %1770 = phi float [ -1.000000e+00, %1691 ], [ %1758, %1757 ]
  %1771 = phi i32 [ 0, %1691 ], [ %1754, %1757 ]
  %1772 = call float @dx.op.binary.f32(i32 36, float %1769, float %1770)  ; FMin(a,b)
  %1773 = call float @dx.op.binary.f32(i32 36, float %1768, float %1772)  ; FMin(a,b)
  %1774 = call float @dx.op.binary.f32(i32 35, float %1768, float %1769)  ; FMax(a,b)
  %1775 = call float @dx.op.binary.f32(i32 36, float %1774, float %1770)  ; FMin(a,b)
  %1776 = call float @dx.op.binary.f32(i32 36, float %1768, float %1769)  ; FMin(a,b)
  %1777 = call float @dx.op.binary.f32(i32 35, float %1776, float %1775)  ; FMax(a,b)
  %1778 = call float @dx.op.binary.f32(i32 35, float %1769, float %1770)  ; FMax(a,b)
  %1779 = call float @dx.op.binary.f32(i32 35, float %1768, float %1778)  ; FMax(a,b)
  store float %1773, float* %1696, align 4, !tbaa !66, !alias.scope !90, !noalias !91
  store float %1777, float* %1697, align 4, !tbaa !66, !alias.scope !88, !noalias !89
  store float %1779, float* %1698, align 4, !tbaa !66, !alias.scope !82, !noalias !85
  %1780 = call float @dx.op.binary.f32(i32 36, float %1766, float %1767)  ; FMin(a,b)
  %1781 = call float @dx.op.binary.f32(i32 36, float %1765, float %1780)  ; FMin(a,b)
  %1782 = call float @dx.op.binary.f32(i32 35, float %1765, float %1766)  ; FMax(a,b)
  %1783 = call float @dx.op.binary.f32(i32 36, float %1782, float %1767)  ; FMin(a,b)
  %1784 = call float @dx.op.binary.f32(i32 36, float %1765, float %1766)  ; FMin(a,b)
  %1785 = call float @dx.op.binary.f32(i32 35, float %1784, float %1783)  ; FMax(a,b)
  %1786 = call float @dx.op.binary.f32(i32 35, float %1766, float %1767)  ; FMax(a,b)
  %1787 = call float @dx.op.binary.f32(i32 35, float %1765, float %1786)  ; FMax(a,b)
  store float %1781, float* %1699, align 4, !tbaa !66, !alias.scope !100, !noalias !101
  store float %1785, float* %1700, align 4, !tbaa !66, !alias.scope !98, !noalias !99
  store float %1787, float* %1701, align 4, !tbaa !66, !alias.scope !92, !noalias !95
  %1788 = sub nsw i32 3, %1771
  %1789 = icmp sgt i32 %1788, 2
  br i1 %1789, label %1790, label %1828, !dx.controlflow.hints !102

; <label>:1790                                    ; preds = %1764
  %1791 = icmp eq i32 %1559, 0
  %1792 = fsub fast float %1609, %1693
  %1793 = select i1 %1791, float %1792, float %1693
  %1794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1795 = extractvalue %dx.types.CBufRet.f32 %1794, 0
  %1796 = extractvalue %dx.types.CBufRet.f32 %1794, 1
  %1797 = extractvalue %dx.types.CBufRet.f32 %1794, 2
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 0
  %1800 = extractvalue %dx.types.CBufRet.f32 %1798, 1
  %1801 = extractvalue %dx.types.CBufRet.f32 %1798, 2
  %1802 = extractvalue %dx.types.CBufRet.f32 %1798, 3
  %1803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1804 = extractvalue %dx.types.CBufRet.f32 %1803, 3
  %1805 = call float @dx.op.binary.f32(i32 36, float %1694, float %1804)  ; FMin(a,b)
  %1806 = fmul fast float %1802, %1793
  %1807 = call float @dx.op.unary.f32(i32 7, float %1806)  ; Saturate(value)
  %1808 = fsub fast float %1799, %1795
  %1809 = fsub fast float %1800, %1796
  %1810 = fsub fast float %1801, %1797
  %1811 = fmul fast float %1807, %1808
  %1812 = fmul fast float %1807, %1809
  %1813 = fmul fast float %1807, %1810
  %1814 = fadd fast float %1811, %1795
  %1815 = fadd fast float %1812, %1796
  %1816 = fadd fast float %1813, %1797
  %1817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1818 = extractvalue %dx.types.CBufRet.f32 %1817, 0
  %1819 = extractvalue %dx.types.CBufRet.f32 %1817, 1
  %1820 = fadd fast float %1819, %1818
  %1821 = call float @dx.op.unary.f32(i32 7, float %1820)  ; Saturate(value)
  %1822 = extractvalue %dx.types.CBufRet.f32 %1817, 2
  %1823 = extractvalue %dx.types.CBufRet.f32 %1817, 3
  %1824 = fadd fast float %1823, %1822
  %1825 = call float @dx.op.unary.f32(i32 7, float %1824)  ; Saturate(value)
  %1826 = fmul fast float %1821, %1805
  %1827 = fmul fast float %1826, %1825
  br label %1910

; <label>:1828                                    ; preds = %1764
  %1829 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %1788
  %1830 = load float, float* %1829, align 4, !tbaa !66, !noalias !70
  %1831 = fcmp fast olt float %1830, %1695
  %1832 = icmp sgt i32 %1771, 0
  %1833 = and i1 %1832, %1831
  br i1 %1833, label %1834, label %1871

; <label>:1834                                    ; preds = %1828
  br label %1835

; <label>:1835                                    ; preds = %1864, %1834
  %1836 = phi float [ %1865, %1864 ], [ %1693, %1834 ]
  %1837 = phi float [ %1866, %1864 ], [ %1694, %1834 ]
  %1838 = phi float [ %1846, %1864 ], [ %1830, %1834 ]
  %1839 = phi i32 [ %1843, %1864 ], [ %1788, %1834 ]
  %1840 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 %1839
  %1841 = load float, float* %1840, align 4, !tbaa !66, !noalias !70
  %1842 = icmp slt i32 %1839, 2
  %1843 = add nsw i32 %1839, 1
  %1844 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %1843
  %1845 = load float, float* %1844, align 4, !tbaa !66, !noalias !70
  %1846 = select i1 %1842, float %1845, float %1609
  %1847 = call float @dx.op.binary.f32(i32 36, float %1846, float %1841)  ; FMin(a,b)
  %1848 = call float @dx.op.binary.f32(i32 36, float %1695, float %1847)  ; FMin(a,b)
  %1849 = icmp eq i32 %1559, 0
  %1850 = fadd fast float %1848, %1838
  %1851 = fmul fast float %1850, %1540
  %1852 = fadd fast float %1851, %1553
  br i1 %1849, label %1858, label %1853, !dx.controlflow.hints !103

; <label>:1853                                    ; preds = %1835
  %1854 = fsub fast float %1848, %1838
  %1855 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1854)  ; FMax(a,b)
  %1856 = fmul fast float %1855, %1852
  %1857 = fadd fast float %1856, %1837
  br label %1864

; <label>:1858                                    ; preds = %1835
  %1859 = fsub fast float %1838, %1848
  %1860 = call float @dx.op.unary.f32(i32 6, float %1859)  ; FAbs(value)
  %1861 = fadd fast float %1860, %1836
  %1862 = fmul fast float %1860, %1852
  %1863 = fsub fast float %1837, %1862
  br label %1864

; <label>:1864                                    ; preds = %1858, %1853
  %1865 = phi float [ %1855, %1853 ], [ %1861, %1858 ]
  %1866 = phi float [ %1857, %1853 ], [ %1863, %1858 ]
  %1867 = fcmp fast olt float %1846, %1695
  %1868 = icmp slt i32 %1843, 3
  %1869 = and i1 %1868, %1867
  br i1 %1869, label %1835, label %1870

; <label>:1870                                    ; preds = %1864
  br label %1871

; <label>:1871                                    ; preds = %1870, %1828
  %1872 = phi float [ %1693, %1828 ], [ %1865, %1870 ]
  %1873 = phi float [ %1694, %1828 ], [ %1866, %1870 ]
  %1874 = fsub fast float %1609, %1872
  %1875 = select i1 %1611, float %1872, float %1874
  %1876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1877 = extractvalue %dx.types.CBufRet.f32 %1876, 0
  %1878 = extractvalue %dx.types.CBufRet.f32 %1876, 1
  %1879 = extractvalue %dx.types.CBufRet.f32 %1876, 2
  %1880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1881 = extractvalue %dx.types.CBufRet.f32 %1880, 0
  %1882 = extractvalue %dx.types.CBufRet.f32 %1880, 1
  %1883 = extractvalue %dx.types.CBufRet.f32 %1880, 2
  %1884 = extractvalue %dx.types.CBufRet.f32 %1880, 3
  %1885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.f32 %1885, 3
  %1887 = call float @dx.op.binary.f32(i32 36, float %1873, float %1886)  ; FMin(a,b)
  %1888 = fmul fast float %1884, %1875
  %1889 = call float @dx.op.unary.f32(i32 7, float %1888)  ; Saturate(value)
  %1890 = fsub fast float %1881, %1877
  %1891 = fsub fast float %1882, %1878
  %1892 = fsub fast float %1883, %1879
  %1893 = fmul fast float %1889, %1890
  %1894 = fmul fast float %1889, %1891
  %1895 = fmul fast float %1889, %1892
  %1896 = fadd fast float %1893, %1877
  %1897 = fadd fast float %1894, %1878
  %1898 = fadd fast float %1895, %1879
  %1899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1900 = extractvalue %dx.types.CBufRet.f32 %1899, 0
  %1901 = extractvalue %dx.types.CBufRet.f32 %1899, 1
  %1902 = fadd fast float %1901, %1900
  %1903 = call float @dx.op.unary.f32(i32 7, float %1902)  ; Saturate(value)
  %1904 = extractvalue %dx.types.CBufRet.f32 %1899, 2
  %1905 = extractvalue %dx.types.CBufRet.f32 %1899, 3
  %1906 = fadd fast float %1905, %1904
  %1907 = call float @dx.op.unary.f32(i32 7, float %1906)  ; Saturate(value)
  %1908 = fmul fast float %1903, %1887
  %1909 = fmul fast float %1908, %1907
  br label %1910

; <label>:1910                                    ; preds = %1871, %1790, %1625, %1607, %1605
  %1911 = phi float [ %1634, %1625 ], [ %1793, %1790 ], [ %1875, %1871 ], [ 0.000000e+00, %1605 ], [ 0.000000e+00, %1607 ]
  %1912 = phi float [ %1668, %1625 ], [ %1827, %1790 ], [ %1909, %1871 ], [ 0.000000e+00, %1605 ], [ 0.000000e+00, %1607 ]
  %1913 = phi float [ %1655, %1625 ], [ %1814, %1790 ], [ %1896, %1871 ], [ 0.000000e+00, %1605 ], [ 0.000000e+00, %1607 ]
  %1914 = phi float [ %1656, %1625 ], [ %1815, %1790 ], [ %1897, %1871 ], [ 0.000000e+00, %1605 ], [ 0.000000e+00, %1607 ]
  %1915 = phi float [ %1657, %1625 ], [ %1816, %1790 ], [ %1898, %1871 ], [ 0.000000e+00, %1605 ], [ 0.000000e+00, %1607 ]
  %1916 = fmul fast float %1548, %1912
  %1917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1918 = extractvalue %dx.types.CBufRet.f32 %1917, 2
  %1919 = fsub fast float %1555, %1918
  %1920 = fcmp fast olt float %1916, -2.000000e+01
  %1921 = call float @dx.op.unary.f32(i32 21, float %1916)  ; Exp(value)
  %1922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1923 = extractvalue %dx.types.CBufRet.f32 %1922, 2
  %1924 = extractvalue %dx.types.CBufRet.f32 %1922, 3
  %1925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1926 = extractvalue %dx.types.CBufRet.f32 %1925, 2
  %1927 = fmul fast float %1924, %1919
  %1928 = call float @dx.op.unary.f32(i32 7, float %1927)  ; Saturate(value)
  %1929 = fsub fast float 1.000000e+00, %1928
  %1930 = fmul fast float %1540, 5.000000e-01
  %1931 = fadd fast float %1930, 5.000000e-01
  %1932 = call float @dx.op.unary.f32(i32 7, float %1931)  ; Saturate(value)
  %1933 = fsub fast float 1.000000e+00, %1932
  %1934 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1929)  ; FMax(a,b)
  %1935 = fdiv fast float %1933, %1934
  %1936 = fsub fast float %1919, %1506
  %1937 = call float @dx.op.unary.f32(i32 6, float %1936)  ; FAbs(value)
  %1938 = fmul fast float %1937, %1923
  %1939 = call float @dx.op.unary.f32(i32 7, float %1935)  ; Saturate(value)
  %1940 = fsub fast float 1.000000e+00, %1938
  %1941 = fmul fast float %1940, %1939
  %1942 = fadd fast float %1941, %1938
  %1943 = fmul fast float %1926, %1919
  %1944 = call float @dx.op.unary.f32(i32 7, float %1943)  ; Saturate(value)
  %1945 = fsub fast float 1.000000e+00, %1942
  %1946 = fmul fast float %1945, %1944
  %1947 = fadd fast float %1946, %1942
  %1948 = call float @dx.op.unary.f32(i32 7, float %1947)  ; Saturate(value)
  %1949 = fadd fast float %1921, -1.000000e+00
  %1950 = select i1 %1920, float -1.000000e+00, float %1949
  %1951 = fmul fast float %1948, %1950
  %1952 = fadd fast float %1951, 1.000000e+00
  %1953 = fsub fast float -0.000000e+00, %1951
  %1954 = fmul fast float %1913, %1953
  %1955 = fmul fast float %1914, %1953
  %1956 = fmul fast float %1915, %1953
  br label %1957

; <label>:1957                                    ; preds = %1910, %1459
  %1958 = phi float [ %1911, %1910 ], [ 0.000000e+00, %1459 ]
  %1959 = phi float [ %1952, %1910 ], [ 1.000000e+00, %1459 ]
  %1960 = phi float [ %1954, %1910 ], [ 0.000000e+00, %1459 ]
  %1961 = phi float [ %1955, %1910 ], [ 0.000000e+00, %1459 ]
  %1962 = phi float [ %1956, %1910 ], [ 0.000000e+00, %1459 ]
  %1963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1964 = extractvalue %dx.types.CBufRet.f32 %1963, 1
  %1965 = fsub fast float 1.000000e+00, %1959
  %1966 = fmul fast float %1965, %1541
  %1967 = fmul fast float %1966, %1964
  %1968 = fsub fast float %1541, %1967
  br i1 %1534, label %1969, label %1998, !dx.controlflow.hints !104

; <label>:1969                                    ; preds = %1957
  %1970 = fmul fast float %1542, %1531
  %1971 = fadd fast float %1970, %1532
  %1972 = call float @dx.op.unary.f32(i32 7, float %1971)  ; Saturate(value)
  %1973 = fmul fast float %1513, %1968
  %1974 = fsub fast float -0.000000e+00, %1973
  %1975 = fmul fast float %1514, %1968
  %1976 = fsub fast float -0.000000e+00, %1975
  %1977 = call float @dx.op.unary.f32(i32 21, float %1974)  ; Exp(value)
  %1978 = call float @dx.op.unary.f32(i32 21, float %1976)  ; Exp(value)
  %1979 = call float @dx.op.binary.f32(i32 35, float %1521, float %1977)  ; FMax(a,b)
  %1980 = call float @dx.op.binary.f32(i32 35, float %1521, float %1978)  ; FMax(a,b)
  %1981 = fsub fast float %1980, %1979
  %1982 = fmul fast float %1981, %1972
  %1983 = fadd fast float %1982, %1979
  %1984 = call float @dx.op.unary.f32(i32 7, float %1983)  ; Saturate(value)
  %1985 = fsub fast float %1518, %1523
  %1986 = fsub fast float %1519, %1524
  %1987 = fsub fast float %1520, %1525
  %1988 = fmul fast float %1972, %1985
  %1989 = fmul fast float %1972, %1986
  %1990 = fmul fast float %1972, %1987
  %1991 = fadd fast float %1988, %1523
  %1992 = fadd fast float %1989, %1524
  %1993 = fadd fast float %1990, %1525
  %1994 = fsub fast float 1.000000e+00, %1984
  %1995 = fmul fast float %1994, %1991
  %1996 = fmul fast float %1994, %1992
  %1997 = fmul fast float %1994, %1993
  br label %2057

; <label>:1998                                    ; preds = %1957
  %1999 = fmul fast float %1968, %1530
  %2000 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  %2001 = fsub fast float 2.000000e+00, %2000
  %2002 = fmul fast float %2000, 9.921875e-01
  %2003 = fmul fast float %2002, %2001
  %2004 = fadd fast float %2003, 3.906250e-03
  %2005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %13, float %2004, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2006 = extractvalue %dx.types.ResRet.f32 %2005, 0
  %2007 = fsub fast float %2000, %2006
  %2008 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2007)  ; FMax(a,b)
  %2009 = fmul fast float %1516, %1506
  %2010 = call float @dx.op.unary.f32(i32 6, float %2009)  ; FAbs(value)
  %2011 = fcmp fast ogt float %2010, 0x3EB0C6F7A0000000
  br i1 %2011, label %2012, label %2018, !dx.controlflow.hints !105

; <label>:2012                                    ; preds = %1998
  %2013 = fmul fast float %2009, 0xBFF7154760000000
  %2014 = call float @dx.op.unary.f32(i32 21, float %2013)  ; Exp(value)
  %2015 = fsub fast float 1.000000e+00, %2014
  %2016 = fdiv fast float %2015, %2009
  %2017 = fmul fast float %2016, %1526
  br label %2018

; <label>:2018                                    ; preds = %2012, %1998
  %2019 = phi float [ %2017, %2012 ], [ %1526, %1998 ]
  %2020 = fadd fast float %2019, %1528
  %2021 = fmul fast float %2020, %2008
  %2022 = fmul fast float %1513, %2021
  %2023 = fsub fast float -0.000000e+00, %2022
  %2024 = fmul fast float %1514, %2021
  %2025 = fsub fast float -0.000000e+00, %2024
  %2026 = fmul fast float %1515, %2021
  %2027 = fsub fast float -0.000000e+00, %2026
  %2028 = call float @dx.op.unary.f32(i32 21, float %2023)  ; Exp(value)
  %2029 = call float @dx.op.unary.f32(i32 21, float %2025)  ; Exp(value)
  %2030 = call float @dx.op.unary.f32(i32 21, float %2027)  ; Exp(value)
  %2031 = fmul fast float %1542, %1542
  %2032 = fadd fast float %2031, 1.000000e+00
  %2033 = fmul fast float %2032, 0x3FAE8EC8A0000000
  %2034 = fmul fast float %2033, %1523
  %2035 = fmul fast float %2033, %1524
  %2036 = fmul fast float %2033, %1525
  %2037 = fmul fast float %1542, %1521
  %2038 = fsub fast float 1.000000e+00, %2037
  %2039 = fmul fast float %1521, %1521
  %2040 = fsub fast float 1.000000e+00, %2039
  %2041 = fmul fast float %2040, 0x3FB45F3060000000
  %2042 = fmul fast float %2038, %2038
  %2043 = fdiv fast float 1.000000e+00, %2042
  %2044 = fmul fast float %2041, %2043
  %2045 = fmul fast float %2044, %1518
  %2046 = fmul fast float %2044, %1519
  %2047 = fmul fast float %2044, %1520
  %2048 = fadd fast float %2045, %2034
  %2049 = fadd fast float %2046, %2035
  %2050 = fadd fast float %2047, %2036
  %2051 = fsub fast float 1.000000e+00, %2028
  %2052 = fsub fast float 1.000000e+00, %2029
  %2053 = fsub fast float 1.000000e+00, %2030
  %2054 = fmul fast float %2048, %2051
  %2055 = fmul fast float %2049, %2052
  %2056 = fmul fast float %2050, %2053
  br label %2057

; <label>:2057                                    ; preds = %2018, %1969
  %2058 = phi float [ %1995, %1969 ], [ %2054, %2018 ]
  %2059 = phi float [ %1996, %1969 ], [ %2055, %2018 ]
  %2060 = phi float [ %1997, %1969 ], [ %2056, %2018 ]
  %2061 = phi float [ %1984, %1969 ], [ %2028, %2018 ]
  %2062 = phi float [ %1984, %1969 ], [ %2029, %2018 ]
  %2063 = phi float [ %1984, %1969 ], [ %2030, %2018 ]
  br i1 %1550, label %2064, label %2262, !dx.controlflow.hints !106

; <label>:2064                                    ; preds = %2057
  %2065 = extractvalue %dx.types.CBufRet.f32 %1963, 0
  %2066 = fmul fast float %2065, %1965
  %2067 = fsub fast float %1960, %2058
  %2068 = fsub fast float %1961, %2059
  %2069 = fsub fast float %1962, %2060
  %2070 = fmul fast float %2066, %2067
  %2071 = fmul fast float %2066, %2068
  %2072 = fmul fast float %2066, %2069
  %2073 = fadd fast float %2070, %2058
  %2074 = fadd fast float %2071, %2059
  %2075 = fadd fast float %2072, %2060
  %2076 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2061)  ; FMax(a,b)
  %2077 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2062)  ; FMax(a,b)
  %2078 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2063)  ; FMax(a,b)
  %2079 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1959)  ; FMax(a,b)
  %2080 = call float @dx.op.binary.f32(i32 35, float %1958, float %1968)  ; FMax(a,b)
  %2081 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2080)  ; FMax(a,b)
  %2082 = fdiv fast float %1958, %2081
  %2083 = call float @dx.op.unary.f32(i32 7, float %2082)  ; Saturate(value)
  %2084 = fdiv fast float %1968, %2081
  %2085 = call float @dx.op.unary.f32(i32 7, float %2084)  ; Saturate(value)
  %2086 = fcmp fast une float %2079, 1.000000e+00
  br i1 %2086, label %2087, label %2100, !dx.controlflow.hints !107

; <label>:2087                                    ; preds = %2064
  %2088 = call float @dx.op.unary.f32(i32 23, float %2079)  ; Log(value)
  %2089 = fmul fast float %2088, 0x3FE62E4300000000
  %2090 = fmul fast float %1960, %2089
  %2091 = fsub fast float -0.000000e+00, %2090
  %2092 = fmul fast float %1961, %2089
  %2093 = fsub fast float -0.000000e+00, %2092
  %2094 = fmul fast float %1962, %2089
  %2095 = fsub fast float -0.000000e+00, %2094
  %2096 = fsub fast float 1.000000e+00, %2079
  %2097 = fdiv fast float %2091, %2096
  %2098 = fdiv fast float %2093, %2096
  %2099 = fdiv fast float %2095, %2096
  br label %2100

; <label>:2100                                    ; preds = %2087, %2064
  %2101 = phi float [ %2097, %2087 ], [ %1960, %2064 ]
  %2102 = phi float [ %2098, %2087 ], [ %1961, %2064 ]
  %2103 = phi float [ %2099, %2087 ], [ %1962, %2064 ]
  %2104 = phi float [ %2089, %2087 ], [ 0.000000e+00, %2064 ]
  %2105 = fcmp fast une float %2076, 1.000000e+00
  br i1 %2105, label %2106, label %2113, !dx.controlflow.hints !108

; <label>:2106                                    ; preds = %2100
  %2107 = call float @dx.op.unary.f32(i32 23, float %2076)  ; Log(value)
  %2108 = fmul fast float %2107, 0x3FE62E4300000000
  %2109 = fmul fast float %2073, %2108
  %2110 = fsub fast float -0.000000e+00, %2109
  %2111 = fsub fast float 1.000000e+00, %2076
  %2112 = fdiv fast float %2110, %2111
  br label %2113

; <label>:2113                                    ; preds = %2106, %2100
  %2114 = phi float [ %2112, %2106 ], [ %2073, %2100 ]
  %2115 = phi float [ %2108, %2106 ], [ 0.000000e+00, %2100 ]
  %2116 = fcmp fast une float %2077, 1.000000e+00
  br i1 %2116, label %2117, label %2124, !dx.controlflow.hints !108

; <label>:2117                                    ; preds = %2113
  %2118 = call float @dx.op.unary.f32(i32 23, float %2077)  ; Log(value)
  %2119 = fmul fast float %2118, 0x3FE62E4300000000
  %2120 = fmul fast float %2074, %2119
  %2121 = fsub fast float -0.000000e+00, %2120
  %2122 = fsub fast float 1.000000e+00, %2077
  %2123 = fdiv fast float %2121, %2122
  br label %2124

; <label>:2124                                    ; preds = %2117, %2113
  %2125 = phi float [ %2123, %2117 ], [ %2074, %2113 ]
  %2126 = phi float [ %2119, %2117 ], [ 0.000000e+00, %2113 ]
  %2127 = fcmp fast une float %2078, 1.000000e+00
  br i1 %2127, label %2128, label %2135, !dx.controlflow.hints !108

; <label>:2128                                    ; preds = %2124
  %2129 = call float @dx.op.unary.f32(i32 23, float %2078)  ; Log(value)
  %2130 = fmul fast float %2129, 0x3FE62E4300000000
  %2131 = fmul fast float %2075, %2130
  %2132 = fsub fast float -0.000000e+00, %2131
  %2133 = fsub fast float 1.000000e+00, %2078
  %2134 = fdiv fast float %2132, %2133
  br label %2135

; <label>:2135                                    ; preds = %2128, %2124
  %2136 = phi float [ %2134, %2128 ], [ %2075, %2124 ]
  %2137 = phi float [ %2130, %2128 ], [ 0.000000e+00, %2124 ]
  %2138 = fmul fast float %2101, %2085
  %2139 = fmul fast float %2102, %2085
  %2140 = fmul fast float %2103, %2085
  %2141 = fmul fast float %2104, %2085
  %2142 = fmul fast float %2114, %2083
  %2143 = fmul fast float %2125, %2083
  %2144 = fmul fast float %2136, %2083
  %2145 = fmul fast float %2115, %2083
  %2146 = fmul fast float %2126, %2083
  %2147 = fmul fast float %2137, %2083
  %2148 = fadd fast float %2142, %2138
  %2149 = fadd fast float %2143, %2139
  %2150 = fadd fast float %2144, %2140
  %2151 = fadd fast float %2145, %2141
  %2152 = fadd fast float %2146, %2141
  %2153 = fadd fast float %2147, %2141
  %2154 = fcmp fast une float %2151, 0.000000e+00
  br i1 %2154, label %2155, label %2162, !dx.controlflow.hints !109

; <label>:2155                                    ; preds = %2135
  %2156 = fmul fast float %2151, 0x3FF7154760000000
  %2157 = call float @dx.op.unary.f32(i32 21, float %2156)  ; Exp(value)
  %2158 = fsub fast float 1.000000e+00, %2157
  %2159 = fmul fast float %2148, %2158
  %2160 = fsub fast float -0.000000e+00, %2159
  %2161 = fdiv fast float %2160, %2151
  br label %2162

; <label>:2162                                    ; preds = %2155, %2135
  %2163 = phi float [ %2157, %2155 ], [ 1.000000e+00, %2135 ]
  %2164 = phi float [ %2161, %2155 ], [ %2148, %2135 ]
  %2165 = fcmp fast une float %2152, 0.000000e+00
  br i1 %2165, label %2166, label %2173, !dx.controlflow.hints !109

; <label>:2166                                    ; preds = %2162
  %2167 = fmul fast float %2152, 0x3FF7154760000000
  %2168 = call float @dx.op.unary.f32(i32 21, float %2167)  ; Exp(value)
  %2169 = fsub fast float 1.000000e+00, %2168
  %2170 = fmul fast float %2149, %2169
  %2171 = fsub fast float -0.000000e+00, %2170
  %2172 = fdiv fast float %2171, %2152
  br label %2173

; <label>:2173                                    ; preds = %2166, %2162
  %2174 = phi float [ %2168, %2166 ], [ 1.000000e+00, %2162 ]
  %2175 = phi float [ %2172, %2166 ], [ %2149, %2162 ]
  %2176 = fcmp fast une float %2153, 0.000000e+00
  br i1 %2176, label %2177, label %2184, !dx.controlflow.hints !109

; <label>:2177                                    ; preds = %2173
  %2178 = fmul fast float %2153, 0x3FF7154760000000
  %2179 = call float @dx.op.unary.f32(i32 21, float %2178)  ; Exp(value)
  %2180 = fsub fast float 1.000000e+00, %2179
  %2181 = fmul fast float %2150, %2180
  %2182 = fsub fast float -0.000000e+00, %2181
  %2183 = fdiv fast float %2182, %2153
  br label %2184

; <label>:2184                                    ; preds = %2177, %2173
  %2185 = phi float [ %2179, %2177 ], [ 1.000000e+00, %2173 ]
  %2186 = phi float [ %2183, %2177 ], [ %2150, %2173 ]
  %2187 = fcmp fast ogt float %2083, %2085
  br i1 %2187, label %2188, label %2208, !dx.controlflow.hints !110

; <label>:2188                                    ; preds = %2184
  %2189 = fsub fast float 1.000000e+00, %2085
  %2190 = fmul fast float %2101, %2189
  %2191 = fmul fast float %2102, %2189
  %2192 = fmul fast float %2103, %2189
  %2193 = fmul fast float %2104, %2189
  %2194 = fcmp fast une float %2193, 0.000000e+00
  br i1 %2194, label %2195, label %2246, !dx.controlflow.hints !111

; <label>:2195                                    ; preds = %2188
  %2196 = fmul fast float %2193, 0x3FF7154760000000
  %2197 = call float @dx.op.unary.f32(i32 21, float %2196)  ; Exp(value)
  %2198 = fsub fast float 1.000000e+00, %2197
  %2199 = fmul fast float %2190, %2198
  %2200 = fsub fast float -0.000000e+00, %2199
  %2201 = fmul fast float %2191, %2198
  %2202 = fsub fast float -0.000000e+00, %2201
  %2203 = fmul fast float %2192, %2198
  %2204 = fsub fast float -0.000000e+00, %2203
  %2205 = fdiv fast float %2200, %2193
  %2206 = fdiv fast float %2202, %2193
  %2207 = fdiv fast float %2204, %2193
  br label %2246

; <label>:2208                                    ; preds = %2184
  %2209 = fsub fast float 1.000000e+00, %2083
  %2210 = fmul fast float %2114, %2209
  %2211 = fmul fast float %2125, %2209
  %2212 = fmul fast float %2136, %2209
  %2213 = fmul fast float %2115, %2209
  %2214 = fmul fast float %2126, %2209
  %2215 = fmul fast float %2137, %2209
  %2216 = fcmp fast une float %2213, 0.000000e+00
  br i1 %2216, label %2217, label %2224, !dx.controlflow.hints !109

; <label>:2217                                    ; preds = %2208
  %2218 = fmul fast float %2213, 0x3FF7154760000000
  %2219 = call float @dx.op.unary.f32(i32 21, float %2218)  ; Exp(value)
  %2220 = fsub fast float 1.000000e+00, %2219
  %2221 = fmul fast float %2210, %2220
  %2222 = fsub fast float -0.000000e+00, %2221
  %2223 = fdiv fast float %2222, %2213
  br label %2224

; <label>:2224                                    ; preds = %2217, %2208
  %2225 = phi float [ %2223, %2217 ], [ %2210, %2208 ]
  %2226 = phi float [ %2219, %2217 ], [ 1.000000e+00, %2208 ]
  %2227 = fcmp fast une float %2214, 0.000000e+00
  br i1 %2227, label %2228, label %2235, !dx.controlflow.hints !109

; <label>:2228                                    ; preds = %2224
  %2229 = fmul fast float %2214, 0x3FF7154760000000
  %2230 = call float @dx.op.unary.f32(i32 21, float %2229)  ; Exp(value)
  %2231 = fsub fast float 1.000000e+00, %2230
  %2232 = fmul fast float %2211, %2231
  %2233 = fsub fast float -0.000000e+00, %2232
  %2234 = fdiv fast float %2233, %2214
  br label %2235

; <label>:2235                                    ; preds = %2228, %2224
  %2236 = phi float [ %2234, %2228 ], [ %2211, %2224 ]
  %2237 = phi float [ %2230, %2228 ], [ 1.000000e+00, %2224 ]
  %2238 = fcmp fast une float %2215, 0.000000e+00
  br i1 %2238, label %2239, label %2246, !dx.controlflow.hints !109

; <label>:2239                                    ; preds = %2235
  %2240 = fmul fast float %2215, 0x3FF7154760000000
  %2241 = call float @dx.op.unary.f32(i32 21, float %2240)  ; Exp(value)
  %2242 = fsub fast float 1.000000e+00, %2241
  %2243 = fmul fast float %2212, %2242
  %2244 = fsub fast float -0.000000e+00, %2243
  %2245 = fdiv fast float %2244, %2215
  br label %2246

; <label>:2246                                    ; preds = %2239, %2235, %2195, %2188
  %2247 = phi float [ %2245, %2239 ], [ %2207, %2195 ], [ %2192, %2188 ], [ %2212, %2235 ]
  %2248 = phi float [ %2236, %2239 ], [ %2206, %2195 ], [ %2191, %2188 ], [ %2236, %2235 ]
  %2249 = phi float [ %2225, %2239 ], [ %2205, %2195 ], [ %2190, %2188 ], [ %2225, %2235 ]
  %2250 = phi float [ %2241, %2239 ], [ %2197, %2195 ], [ 1.000000e+00, %2188 ], [ 1.000000e+00, %2235 ]
  %2251 = phi float [ %2237, %2239 ], [ %2197, %2195 ], [ 1.000000e+00, %2188 ], [ %2237, %2235 ]
  %2252 = phi float [ %2226, %2239 ], [ %2197, %2195 ], [ 1.000000e+00, %2188 ], [ %2226, %2235 ]
  %2253 = fmul fast float %2252, %2164
  %2254 = fmul fast float %2251, %2175
  %2255 = fmul fast float %2250, %2186
  %2256 = fadd fast float %2253, %2249
  %2257 = fadd fast float %2254, %2248
  %2258 = fadd fast float %2255, %2247
  %2259 = fmul fast float %2252, %2163
  %2260 = fmul fast float %2251, %2174
  %2261 = fmul fast float %2250, %2185
  br label %2262

; <label>:2262                                    ; preds = %2246, %2057
  %2263 = phi float [ %2063, %2057 ], [ %2261, %2246 ]
  %2264 = phi float [ %2062, %2057 ], [ %2260, %2246 ]
  %2265 = phi float [ %2061, %2057 ], [ %2259, %2246 ]
  %2266 = phi float [ %2060, %2057 ], [ %2258, %2246 ]
  %2267 = phi float [ %2059, %2057 ], [ %2257, %2246 ]
  %2268 = phi float [ %2058, %2057 ], [ %2256, %2246 ]
  %2269 = fmul fast float %2265, %1406
  %2270 = fmul fast float %2264, %1407
  %2271 = fmul fast float %2263, %1408
  %2272 = fsub fast float 1.000000e+00, %1469
  %2273 = fmul fast float %2268, %2272
  %2274 = fmul fast float %2267, %2272
  %2275 = fmul fast float %2266, %2272
  %2276 = fadd fast float %2273, %2269
  %2277 = fadd fast float %2274, %2270
  %2278 = fadd fast float %2275, %2271
  %2279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2280 = extractvalue %dx.types.CBufRet.f32 %2279, 2
  %2281 = fmul fast float %2280, %1479
  %2282 = call float @dx.op.unary.f32(i32 7, float %2281)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %17, i32 %18, i32 undef, float %1469, float %1469, float %1469, float %1469, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2284 = extractvalue %dx.types.CBufRet.f32 %2283, 0
  %2285 = fmul fast float %2284, %2276
  %2286 = fmul fast float %2284, %2277
  %2287 = fmul fast float %2284, %2278
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %17, i32 %18, i32 undef, float %2285, float %2286, float %2287, float %2285, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %17, i32 %18, i32 undef, float %2282, float %2282, float %2282, float %2282, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!28 = !{void ()* @cs_fog_raymarching_particles_brfog, !"cs_fog_raymarching_particles_brfog", null, !4, !29}
!29 = !{i32 0, i64 272, i32 4, !30}
!30 = !{i32 8, i32 8, i32 1}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = !{!67, !67, i64 0}
!67 = !{!"float", !68, i64 0}
!68 = !{!"omnipotent char", !69, i64 0}
!69 = !{!"Simple C/C++ TBAA"}
!70 = !{!71, !73, !75, !76, !78, !79, !80}
!71 = distinct !{!71, !72, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!72 = distinct !{!72, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!73 = distinct !{!73, !74, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!74 = distinct !{!74, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!75 = distinct !{!75, !74, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!76 = distinct !{!76, !77, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!77 = distinct !{!77, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!78 = distinct !{!78, !77, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!79 = distinct !{!79, !77, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!80 = distinct !{!80, !77, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = !{!83}
!83 = distinct !{!83, !84, !"\01?sort@@YAXAIAM00@Z: %c"}
!84 = distinct !{!84, !"\01?sort@@YAXAIAM00@Z"}
!85 = !{!86, !87, !71, !73, !75, !76, !78, !79, !80}
!86 = distinct !{!86, !84, !"\01?sort@@YAXAIAM00@Z: %a"}
!87 = distinct !{!87, !84, !"\01?sort@@YAXAIAM00@Z: %b"}
!88 = !{!87}
!89 = !{!86, !83, !71, !73, !75, !76, !78, !79, !80}
!90 = !{!86}
!91 = !{!87, !83, !71, !73, !75, !76, !78, !79, !80}
!92 = !{!93}
!93 = distinct !{!93, !94, !"\01?sort@@YAXAIAM00@Z: %c"}
!94 = distinct !{!94, !"\01?sort@@YAXAIAM00@Z"}
!95 = !{!96, !97, !71, !73, !75, !76, !78, !79, !80}
!96 = distinct !{!96, !94, !"\01?sort@@YAXAIAM00@Z: %a"}
!97 = distinct !{!97, !94, !"\01?sort@@YAXAIAM00@Z: %b"}
!98 = !{!97}
!99 = !{!96, !93, !71, !73, !75, !76, !78, !79, !80}
!100 = !{!96}
!101 = !{!97, !93, !71, !73, !75, !76, !78, !79, !80}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}

