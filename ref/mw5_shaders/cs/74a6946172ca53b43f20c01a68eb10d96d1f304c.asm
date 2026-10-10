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
; shader hash: 680408943ede83c4fa51b6fa7cdeb283
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
;                                   texture     f32          2d      T2            t27     1
;                                   texture     f32          2d      T3            t18     1
;                                   texture  struct         r/o      T4            t25     1
;                                   texture     f32          1d      T5            t14     1
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

define void @cs_fog_raymarching_air_heightmap_particles_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %20 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %21 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x float], align 4
  %24 = add i32 %20, %19
  %25 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.i32 %25, 1
  %27 = add i32 %24, %26
  %28 = lshr i32 %27, 1
  %29 = and i32 %28, 1
  %30 = and i32 %27, 1
  %31 = xor i32 %29, %30
  %32 = shl i32 %19, 1
  %33 = shl i32 %20, 1
  %34 = or i32 %31, %32
  %35 = or i32 %29, %33
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = extractvalue %dx.types.ResRet.i32 %38, 1
  %41 = extractvalue %dx.types.ResRet.i32 %38, 2
  %42 = extractvalue %dx.types.ResRet.i32 %38, 3
  %43 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.i32 %43, 0
  %45 = extractvalue %dx.types.ResRet.i32 %43, 1
  %46 = extractvalue %dx.types.ResRet.i32 %43, 2
  %47 = extractvalue %dx.types.ResRet.i32 %43, 3
  %48 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %49 = extractvalue %dx.types.ResRet.i32 %48, 0
  %50 = extractvalue %dx.types.ResRet.i32 %48, 1
  %51 = extractvalue %dx.types.ResRet.i32 %48, 2
  %52 = extractvalue %dx.types.ResRet.i32 %48, 3
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %55 = fmul fast float %54, %54
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 1
  %59 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %60 = fmul fast float %59, 0x3FF17B1420000000
  %61 = icmp eq i32 %21, 0
  br i1 %61, label %62, label %203, !dx.controlflow.hints !33

; <label>:62                                      ; preds = %0
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 3
  %67 = extractvalue %dx.types.ResRet.i32 %36, 1
  %68 = and i32 %67, 65535
  %69 = call float @dx.op.legacyF16ToF32(i32 131, i32 %68)  ; LegacyF16ToF32(value)
  %70 = lshr i32 %37, 16
  %71 = call float @dx.op.legacyF16ToF32(i32 131, i32 %70)  ; LegacyF16ToF32(value)
  %72 = and i32 %37, 65535
  %73 = call float @dx.op.legacyF16ToF32(i32 131, i32 %72)  ; LegacyF16ToF32(value)
  %74 = lshr i32 %42, 16
  %75 = call float @dx.op.legacyF16ToF32(i32 131, i32 %74)  ; LegacyF16ToF32(value)
  %76 = and i32 %42, 65535
  %77 = call float @dx.op.legacyF16ToF32(i32 131, i32 %76)  ; LegacyF16ToF32(value)
  %78 = lshr i32 %41, 16
  %79 = call float @dx.op.legacyF16ToF32(i32 131, i32 %78)  ; LegacyF16ToF32(value)
  %80 = and i32 %41, 65535
  %81 = call float @dx.op.legacyF16ToF32(i32 131, i32 %80)  ; LegacyF16ToF32(value)
  %82 = lshr i32 %40, 16
  %83 = call float @dx.op.legacyF16ToF32(i32 131, i32 %82)  ; LegacyF16ToF32(value)
  %84 = lshr i32 %39, 16
  %85 = call float @dx.op.legacyF16ToF32(i32 131, i32 %84)  ; LegacyF16ToF32(value)
  %86 = and i32 %39, 65535
  %87 = call float @dx.op.legacyF16ToF32(i32 131, i32 %86)  ; LegacyF16ToF32(value)
  %88 = lshr i32 %47, 16
  %89 = call float @dx.op.legacyF16ToF32(i32 131, i32 %88)  ; LegacyF16ToF32(value)
  %90 = and i32 %47, 65535
  %91 = call float @dx.op.legacyF16ToF32(i32 131, i32 %90)  ; LegacyF16ToF32(value)
  %92 = lshr i32 %46, 16
  %93 = call float @dx.op.legacyF16ToF32(i32 131, i32 %92)  ; LegacyF16ToF32(value)
  %94 = and i32 %46, 65535
  %95 = call float @dx.op.legacyF16ToF32(i32 131, i32 %94)  ; LegacyF16ToF32(value)
  %96 = lshr i32 %45, 16
  %97 = call float @dx.op.legacyF16ToF32(i32 131, i32 %96)  ; LegacyF16ToF32(value)
  %98 = and i32 %45, 65535
  %99 = call float @dx.op.legacyF16ToF32(i32 131, i32 %98)  ; LegacyF16ToF32(value)
  %100 = and i32 %44, 65535
  %101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %100)  ; LegacyF16ToF32(value)
  %102 = lshr i32 %52, 16
  %103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %102)  ; LegacyF16ToF32(value)
  %104 = and i32 %52, 65535
  %105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %104)  ; LegacyF16ToF32(value)
  %106 = lshr i32 %51, 16
  %107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %106)  ; LegacyF16ToF32(value)
  %108 = and i32 %51, 65535
  %109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %108)  ; LegacyF16ToF32(value)
  %110 = lshr i32 %50, 16
  %111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %110)  ; LegacyF16ToF32(value)
  %112 = and i32 %50, 65535
  %113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %112)  ; LegacyF16ToF32(value)
  %114 = lshr i32 %49, 16
  %115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %114)  ; LegacyF16ToF32(value)
  %116 = and i32 %40, 65535
  %117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %116)  ; LegacyF16ToF32(value)
  %118 = lshr i32 %44, 16
  %119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %118)  ; LegacyF16ToF32(value)
  %120 = and i32 %49, 65535
  %121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %120)  ; LegacyF16ToF32(value)
  %122 = fmul fast float %117, 0x3FD20DD760000000
  %123 = fmul fast float %59, %54
  %124 = fmul fast float %123, %81
  %125 = fmul fast float %59, %59
  %126 = fmul fast float %125, 0x3FEE471020000000
  %127 = fadd fast float %126, 0xBFD42F6020000000
  %128 = fmul fast float %73, %127
  %129 = fmul fast float %79, %57
  %130 = fmul fast float %83, %58
  %131 = fmul fast float %57, %55
  %132 = fmul fast float %131, %60
  %133 = fmul fast float %132, %71
  %134 = fsub fast float -0.000000e+00, %133
  %135 = fmul fast float %58, %55
  %136 = fmul fast float %135, %60
  %137 = fmul fast float %136, %75
  %138 = fmul fast float %57, %57
  %139 = fmul fast float %58, %58
  %140 = fsub fast float %138, %139
  %141 = fmul fast float %140, 0x3FE17B1420000000
  %142 = fmul fast float %141, %69
  %143 = fmul fast float %58, 0x3FF17B1420000000
  %144 = fmul fast float %143, %57
  %145 = fmul fast float %144, %77
  %146 = fadd fast float %130, %129
  %147 = fmul fast float %146, %54
  %148 = fsub fast float %147, %124
  %149 = fmul fast float %148, 0x3FDF454380000000
  %150 = fadd fast float %128, %142
  %151 = fadd fast float %150, %145
  %152 = fmul fast float %151, %55
  %153 = fsub fast float %134, %137
  %154 = fadd fast float %153, %122
  %155 = fadd fast float %154, %149
  %156 = fadd fast float %155, %152
  %157 = fmul fast float %64, %66
  %158 = fmul fast float %157, %156
  %159 = fmul fast float %119, 0x3FD20DD760000000
  %160 = fmul fast float %123, %97
  %161 = fmul fast float %89, %127
  %162 = fmul fast float %95, %57
  %163 = fmul fast float %99, %58
  %164 = fmul fast float %132, %87
  %165 = fsub fast float -0.000000e+00, %164
  %166 = fmul fast float %136, %91
  %167 = fmul fast float %141, %85
  %168 = fmul fast float %144, %93
  %169 = fadd fast float %163, %162
  %170 = fmul fast float %169, %54
  %171 = fsub fast float %170, %160
  %172 = fmul fast float %171, 0x3FDF454380000000
  %173 = fadd fast float %161, %167
  %174 = fadd fast float %173, %168
  %175 = fmul fast float %174, %55
  %176 = fsub fast float %165, %166
  %177 = fadd fast float %176, %159
  %178 = fadd fast float %177, %172
  %179 = fadd fast float %178, %175
  %180 = fmul fast float %157, %179
  %181 = fmul fast float %121, 0x3FD20DD760000000
  %182 = fmul fast float %123, %113
  %183 = fmul fast float %105, %127
  %184 = fmul fast float %111, %57
  %185 = fmul fast float %115, %58
  %186 = fmul fast float %132, %103
  %187 = fsub fast float -0.000000e+00, %186
  %188 = fmul fast float %136, %107
  %189 = fmul fast float %141, %101
  %190 = fmul fast float %144, %109
  %191 = fadd fast float %185, %184
  %192 = fmul fast float %191, %54
  %193 = fsub fast float %192, %182
  %194 = fmul fast float %193, 0x3FDF454380000000
  %195 = fadd fast float %183, %189
  %196 = fadd fast float %195, %190
  %197 = fmul fast float %196, %55
  %198 = fsub fast float %187, %188
  %199 = fadd fast float %198, %181
  %200 = fadd fast float %199, %194
  %201 = fadd fast float %200, %197
  %202 = fmul fast float %157, %201
  store float %202, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  store float %180, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  store float %158, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  br label %203

; <label>:203                                     ; preds = %62, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %204 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  %205 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  %206 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  %207 = uitofp i32 %34 to float
  %208 = uitofp i32 %35 to float
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 2
  %211 = fmul fast float %210, 0x3FE3C6EF40000000
  %212 = frem fast float %207, 2.560000e+02
  %213 = frem fast float %208, 2.560000e+02
  %214 = fptoui float %212 to i32
  %215 = fptoui float %213 to i32
  %216 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %214, i32 %215, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = extractvalue %dx.types.ResRet.f32 %216, 1
  %219 = extractvalue %dx.types.ResRet.f32 %216, 2
  %220 = extractvalue %dx.types.ResRet.f32 %216, 3
  %221 = fadd fast float %217, %211
  %222 = fadd fast float %218, %211
  %223 = fadd fast float %219, %211
  %224 = fadd fast float %220, %211
  %225 = call float @dx.op.unary.f32(i32 22, float %221)  ; Frc(value)
  %226 = call float @dx.op.unary.f32(i32 22, float %222)  ; Frc(value)
  %227 = call float @dx.op.unary.f32(i32 22, float %223)  ; Frc(value)
  %228 = call float @dx.op.unary.f32(i32 22, float %224)  ; Frc(value)
  %229 = fadd fast float %227, %207
  %230 = fadd fast float %228, %208
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %233 = extractvalue %dx.types.CBufRet.f32 %231, 3
  %234 = fmul fast float %232, %229
  %235 = fmul fast float %233, %230
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 0
  %238 = extractvalue %dx.types.CBufRet.f32 %236, 1
  %239 = extractvalue %dx.types.CBufRet.f32 %236, 2
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 1
  %242 = fmul fast float %234, 2.000000e+00
  %243 = fmul fast float %235, 2.000000e+00
  %244 = fsub fast float 1.000000e+00, %242
  %245 = fsub fast float 1.000000e+00, %243
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 0
  %248 = extractvalue %dx.types.CBufRet.f32 %246, 1
  %249 = extractvalue %dx.types.CBufRet.f32 %246, 2
  %250 = fmul fast float %247, %244
  %251 = fmul fast float %248, %244
  %252 = fmul fast float %249, %244
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 0
  %255 = extractvalue %dx.types.CBufRet.f32 %253, 1
  %256 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %257 = fmul fast float %254, %245
  %258 = fmul fast float %255, %245
  %259 = fmul fast float %256, %245
  %260 = fadd fast float %257, %250
  %261 = fadd fast float %258, %251
  %262 = fadd fast float %259, %252
  %263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = extractvalue %dx.types.CBufRet.f32 %263, 0
  %265 = extractvalue %dx.types.CBufRet.f32 %263, 1
  %266 = extractvalue %dx.types.CBufRet.f32 %263, 2
  %267 = fadd fast float %260, %264
  %268 = fadd fast float %261, %265
  %269 = fadd fast float %262, %266
  %270 = fmul fast float %267, %241
  %271 = fmul fast float %268, %241
  %272 = fmul fast float %269, %241
  %273 = fmul fast float %270, %270
  %274 = fmul fast float %271, %271
  %275 = fadd fast float %273, %274
  %276 = fmul fast float %272, %272
  %277 = fadd fast float %275, %276
  %278 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %279 = fdiv fast float 1.000000e+00, %278
  %280 = fmul fast float %270, %279
  %281 = fmul fast float %271, %279
  %282 = fmul fast float %272, %279
  %283 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %34, i32 %35, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = fcmp fast ogt float %284, -1.000000e+00
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 1
  %288 = select i1 %285, float %287, float 1.000000e+00
  %289 = fadd fast float %284, 1.000000e+00
  %290 = fmul fast float %288, %289
  %291 = call float @dx.op.unary.f32(i32 6, float %290)  ; FAbs(value)
  %292 = fdiv fast float 1.000000e+00, %241
  %293 = fmul fast float %292, %278
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 1
  %296 = fmul fast float %295, %293
  %297 = fmul fast float %293, %291
  %298 = extractvalue %dx.types.CBufRet.f32 %286, 3
  %299 = fcmp fast oge float %291, %298
  %300 = call float @dx.op.binary.f32(i32 36, float %297, float %296)  ; FMin(a,b)
  %301 = select i1 %299, float %296, float %300
  %302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.i32 %302, 3
  %304 = icmp eq i32 %303, 0
  %305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.f32 %305, 2
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 2
  %309 = fsub fast float %306, %239
  %310 = fadd fast float %309, %308
  %311 = fsub fast float 0xC7EFFFFFE0000000, %239
  br i1 %304, label %323, label %312, !dx.controlflow.hints !34

; <label>:312                                     ; preds = %203
  %313 = fsub fast float -0.000000e+00, %238
  %314 = fsub fast float -0.000000e+00, %237
  %315 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %314, float %313, float %310)  ; Dot3(ax,ay,az,bx,by,bz)
  %316 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %317 = fdiv fast float 1.000000e+00, %316
  %318 = fmul fast float %317, %315
  %319 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %314, float %313, float %311)  ; Dot3(ax,ay,az,bx,by,bz)
  %320 = fmul fast float %317, %319
  %321 = call float @dx.op.binary.f32(i32 36, float %318, float %320)  ; FMin(a,b)
  %322 = call float @dx.op.binary.f32(i32 35, float %318, float %320)  ; FMax(a,b)
  br label %356

; <label>:323                                     ; preds = %203
  %324 = extractvalue %dx.types.CBufRet.f32 %305, 0
  %325 = extractvalue %dx.types.CBufRet.f32 %305, 1
  %326 = extractvalue %dx.types.CBufRet.f32 %307, 0
  %327 = extractvalue %dx.types.CBufRet.f32 %307, 1
  %328 = fdiv fast float 1.000000e+00, %280
  %329 = fdiv fast float 1.000000e+00, %281
  %330 = fdiv fast float 1.000000e+00, %282
  %331 = fsub fast float %324, %237
  %332 = fmul fast float %328, %331
  %333 = fadd fast float %331, %326
  %334 = fmul fast float %333, %328
  %335 = call float @dx.op.binary.f32(i32 36, float %332, float %334)  ; FMin(a,b)
  %336 = call float @dx.op.binary.f32(i32 35, float %332, float %334)  ; FMax(a,b)
  %337 = fsub fast float %325, %238
  %338 = fmul fast float %329, %337
  %339 = fadd fast float %337, %327
  %340 = fmul fast float %339, %329
  %341 = call float @dx.op.binary.f32(i32 36, float %338, float %340)  ; FMin(a,b)
  %342 = call float @dx.op.binary.f32(i32 35, float %335, float %341)  ; FMax(a,b)
  %343 = call float @dx.op.binary.f32(i32 35, float %338, float %340)  ; FMax(a,b)
  %344 = call float @dx.op.binary.f32(i32 36, float %336, float %343)  ; FMin(a,b)
  %345 = fmul fast float %330, %311
  %346 = fmul fast float %330, %310
  %347 = call float @dx.op.binary.f32(i32 36, float %345, float %346)  ; FMin(a,b)
  %348 = call float @dx.op.binary.f32(i32 35, float %342, float %347)  ; FMax(a,b)
  %349 = call float @dx.op.binary.f32(i32 35, float %345, float %346)  ; FMax(a,b)
  %350 = call float @dx.op.binary.f32(i32 36, float %344, float %349)  ; FMin(a,b)
  %351 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %348)  ; FMax(a,b)
  %352 = fcmp fast ult float %350, %351
  br i1 %352, label %356, label %353, !dx.controlflow.hints !35

; <label>:353                                     ; preds = %323
  %354 = call float @dx.op.binary.f32(i32 36, float %348, float %350)  ; FMin(a,b)
  %355 = call float @dx.op.binary.f32(i32 35, float %348, float %350)  ; FMax(a,b)
  br label %356

; <label>:356                                     ; preds = %353, %323, %312
  %357 = phi float [ %321, %312 ], [ %354, %353 ], [ 0.000000e+00, %323 ]
  %358 = phi float [ %322, %312 ], [ %355, %353 ], [ 0.000000e+00, %323 ]
  %359 = fcmp fast oeq float %358, 0.000000e+00
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %362 = fcmp fast olt float %358, %361
  %363 = or i1 %359, %362
  br i1 %363, label %368, label %364, !dx.controlflow.hints !36

; <label>:364                                     ; preds = %356
  %365 = call float @dx.op.binary.f32(i32 35, float %361, float %357)  ; FMax(a,b)
  %366 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %365)  ; FMin(a,b)
  %367 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %358)  ; FMax(a,b)
  br label %368

; <label>:368                                     ; preds = %364, %356
  %369 = phi i32 [ 1, %364 ], [ 0, %356 ]
  %370 = phi float [ %367, %364 ], [ -1.000000e+00, %356 ]
  %371 = phi float [ %366, %364 ], [ 0x47EFFFFFE0000000, %356 ]
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 3
  %374 = fsub fast float -0.000000e+00, %237
  %375 = fsub fast float -0.000000e+00, %238
  %376 = fsub fast float %373, %239
  %377 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %374, float %375, float %376)  ; Dot3(ax,ay,az,bx,by,bz)
  %378 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %379 = fdiv fast float 1.000000e+00, %378
  %380 = fmul fast float %379, %377
  %381 = fcmp fast olt float %380, 0.000000e+00
  %382 = fcmp fast ogt float %282, 0.000000e+00
  %383 = and i1 %382, %381
  br i1 %383, label %388, label %384, !dx.controlflow.hints !37

; <label>:384                                     ; preds = %368
  %385 = fcmp fast olt float %282, 0.000000e+00
  br i1 %385, label %386, label %388, !dx.controlflow.hints !38

; <label>:386                                     ; preds = %384
  %387 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %380)  ; FMax(a,b)
  br label %388

; <label>:388                                     ; preds = %386, %384, %368
  %389 = phi float [ 0.000000e+00, %368 ], [ %387, %386 ], [ 0.000000e+00, %384 ]
  %390 = phi float [ 0.000000e+00, %368 ], [ 0x47EFFFFFE0000000, %386 ], [ %380, %384 ]
  %391 = fcmp fast oeq float %390, 0.000000e+00
  br i1 %391, label %395, label %392, !dx.controlflow.hints !39

; <label>:392                                     ; preds = %388
  %393 = call float @dx.op.binary.f32(i32 36, float %371, float %389)  ; FMin(a,b)
  %394 = call float @dx.op.binary.f32(i32 35, float %370, float %390)  ; FMax(a,b)
  br label %395

; <label>:395                                     ; preds = %392, %388
  %396 = phi i32 [ 1, %392 ], [ 0, %388 ]
  %397 = phi float [ %394, %392 ], [ %370, %388 ]
  %398 = phi float [ %393, %392 ], [ %371, %388 ]
  %399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.f32 %399, 3
  %401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.f32 %401, 0
  %403 = fsub fast float %400, %239
  %404 = fadd fast float %403, %402
  %405 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %374, float %375, float %404)  ; Dot3(ax,ay,az,bx,by,bz)
  %406 = fmul fast float %379, %405
  %407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %408 = extractvalue %dx.types.CBufRet.f32 %407, 2
  %409 = fsub fast float %408, %239
  %410 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %374, float %375, float %409)  ; Dot3(ax,ay,az,bx,by,bz)
  %411 = fmul fast float %379, %410
  %412 = call float @dx.op.binary.f32(i32 36, float %406, float %411)  ; FMin(a,b)
  %413 = call float @dx.op.binary.f32(i32 35, float %406, float %411)  ; FMax(a,b)
  %414 = call float @dx.op.binary.f32(i32 36, float %398, float %412)  ; FMin(a,b)
  %415 = call float @dx.op.binary.f32(i32 35, float %397, float %413)  ; FMax(a,b)
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 2
  %418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.f32 %418, 3
  %420 = fsub fast float %417, %239
  %421 = fadd fast float %420, %419
  %422 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %374, float %375, float %421)  ; Dot3(ax,ay,az,bx,by,bz)
  %423 = fmul fast float %379, %422
  %424 = fcmp fast olt float %423, 0.000000e+00
  %425 = and i1 %382, %424
  br i1 %425, label %430, label %426, !dx.controlflow.hints !40

; <label>:426                                     ; preds = %395
  %427 = fcmp fast olt float %282, 0.000000e+00
  br i1 %427, label %428, label %430, !dx.controlflow.hints !41

; <label>:428                                     ; preds = %426
  %429 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %423)  ; FMax(a,b)
  br label %430

; <label>:430                                     ; preds = %428, %426, %395
  %431 = phi float [ 0.000000e+00, %395 ], [ %429, %428 ], [ 0.000000e+00, %426 ]
  %432 = phi float [ 0.000000e+00, %395 ], [ 0x47EFFFFFE0000000, %428 ], [ %423, %426 ]
  %433 = fcmp fast oeq float %432, 0.000000e+00
  br i1 %433, label %437, label %434, !dx.controlflow.hints !42

; <label>:434                                     ; preds = %430
  %435 = call float @dx.op.binary.f32(i32 36, float %414, float %431)  ; FMin(a,b)
  %436 = call float @dx.op.binary.f32(i32 35, float %415, float %432)  ; FMax(a,b)
  br label %437

; <label>:437                                     ; preds = %434, %430
  %438 = phi i32 [ 1, %434 ], [ 0, %430 ]
  %439 = phi float [ %436, %434 ], [ %415, %430 ]
  %440 = phi float [ %435, %434 ], [ %414, %430 ]
  %441 = fdiv fast float 1.000000e+00, %280
  %442 = fdiv fast float 1.000000e+00, %281
  %443 = fdiv fast float 1.000000e+00, %282
  %444 = call float @dx.op.binary.f32(i32 36, float %301, float %439)  ; FMin(a,b)
  %445 = call float @dx.op.binary.f32(i32 35, float %278, float %440)  ; FMax(a,b)
  %446 = extractvalue %dx.types.CBufRet.f32 %372, 0
  %447 = fmul fast float %226, 2.000000e+00
  %448 = fadd fast float %447, -1.000000e+00
  %449 = fmul fast float %446, %448
  %450 = fadd fast float %449, %445
  %451 = fcmp fast olt float %450, %444
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 2
  %454 = fcmp fast olt float %453, 1.000000e+00
  %455 = and i1 %451, %454
  br i1 %455, label %456, label %2143

; <label>:456                                     ; preds = %437
  %457 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %458 = extractvalue %dx.types.CBufRet.i32 %457, 1
  %459 = add i32 %458, -1
  %460 = fmul fast float %450, %282
  %461 = fadd fast float %460, %239
  %462 = fmul fast float %450, %281
  %463 = fadd fast float %462, %238
  %464 = fmul fast float %450, %280
  %465 = fadd fast float %464, %237
  br label %466

; <label>:466                                     ; preds = %2113, %456
  %467 = phi i32 [ %2115, %2113 ], [ undef, %456 ]
  %468 = phi float [ %2116, %2113 ], [ undef, %456 ]
  %469 = phi float [ %2117, %2113 ], [ undef, %456 ]
  %470 = phi float [ %2118, %2113 ], [ undef, %456 ]
  %471 = phi float [ %2119, %2113 ], [ undef, %456 ]
  %472 = phi float [ %2120, %2113 ], [ undef, %456 ]
  %473 = phi i32 [ %971, %2113 ], [ undef, %456 ]
  %474 = phi float [ %973, %2113 ], [ undef, %456 ]
  %475 = phi float [ %772, %2113 ], [ undef, %456 ]
  %476 = phi float [ %773, %2113 ], [ undef, %456 ]
  %477 = phi float [ %774, %2113 ], [ undef, %456 ]
  %478 = phi float [ %775, %2113 ], [ undef, %456 ]
  %479 = phi float [ %2121, %2113 ], [ 0.000000e+00, %456 ]
  %480 = phi float [ %2122, %2113 ], [ 1.000000e+00, %456 ]
  %481 = phi float [ %2123, %2113 ], [ 0.000000e+00, %456 ]
  %482 = phi float [ %2124, %2113 ], [ 0.000000e+00, %456 ]
  %483 = phi float [ %2125, %2113 ], [ 0.000000e+00, %456 ]
  %484 = phi float [ %2135, %2113 ], [ %465, %456 ]
  %485 = phi float [ %2136, %2113 ], [ %463, %456 ]
  %486 = phi float [ %2137, %2113 ], [ %461, %456 ]
  %487 = phi float [ %2114, %2113 ], [ %450, %456 ]
  %488 = phi i32 [ %777, %2113 ], [ 10, %456 ]
  %489 = phi i32 [ %669, %2113 ], [ %459, %456 ]
  %490 = phi float [ %2126, %2113 ], [ 0.000000e+00, %456 ]
  %491 = phi float [ %2127, %2113 ], [ 0.000000e+00, %456 ]
  %492 = phi float [ %2128, %2113 ], [ 0.000000e+00, %456 ]
  %493 = phi float [ %2129, %2113 ], [ 0.000000e+00, %456 ]
  %494 = phi float [ %2130, %2113 ], [ 0.000000e+00, %456 ]
  %495 = phi i32 [ %2131, %2113 ], [ 0, %456 ]
  %496 = fsub fast float -0.000000e+00, %485
  %497 = fsub fast float -0.000000e+00, %484
  %498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %499 = extractvalue %dx.types.CBufRet.f32 %498, 0
  %500 = icmp eq i32 %369, 0
  br i1 %500, label %666, label %501, !dx.controlflow.hints !43

; <label>:501                                     ; preds = %466
  %502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.i32 %502, 1
  %504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %505 = extractvalue %dx.types.CBufRet.f32 %504, 1
  %506 = fcmp fast ogt float %505, %487
  br i1 %506, label %507, label %509, !dx.controlflow.hints !44

; <label>:507                                     ; preds = %501
  %508 = fsub fast float %505, %487
  br label %656

; <label>:509                                     ; preds = %501
  %510 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.i32 %510, 3
  %512 = icmp eq i32 %511, 0
  %513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.f32 %513, 2
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 2
  %517 = fsub fast float %514, %486
  %518 = fadd fast float %517, %516
  %519 = fsub fast float 0xC7EFFFFFE0000000, %486
  br i1 %512, label %527, label %520, !dx.controlflow.hints !34

; <label>:520                                     ; preds = %509
  %521 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %497, float %496, float %518)  ; Dot3(ax,ay,az,bx,by,bz)
  %522 = fmul fast float %379, %521
  %523 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %497, float %496, float %519)  ; Dot3(ax,ay,az,bx,by,bz)
  %524 = fmul fast float %379, %523
  %525 = call float @dx.op.binary.f32(i32 36, float %522, float %524)  ; FMin(a,b)
  %526 = call float @dx.op.binary.f32(i32 35, float %522, float %524)  ; FMax(a,b)
  br label %557

; <label>:527                                     ; preds = %509
  %528 = extractvalue %dx.types.CBufRet.f32 %513, 0
  %529 = extractvalue %dx.types.CBufRet.f32 %513, 1
  %530 = extractvalue %dx.types.CBufRet.f32 %515, 0
  %531 = extractvalue %dx.types.CBufRet.f32 %515, 1
  %532 = fsub fast float %528, %484
  %533 = fmul fast float %441, %532
  %534 = fadd fast float %532, %530
  %535 = fmul fast float %534, %441
  %536 = call float @dx.op.binary.f32(i32 36, float %533, float %535)  ; FMin(a,b)
  %537 = call float @dx.op.binary.f32(i32 35, float %533, float %535)  ; FMax(a,b)
  %538 = fsub fast float %529, %485
  %539 = fmul fast float %442, %538
  %540 = fadd fast float %538, %531
  %541 = fmul fast float %540, %442
  %542 = call float @dx.op.binary.f32(i32 36, float %539, float %541)  ; FMin(a,b)
  %543 = call float @dx.op.binary.f32(i32 35, float %536, float %542)  ; FMax(a,b)
  %544 = call float @dx.op.binary.f32(i32 35, float %539, float %541)  ; FMax(a,b)
  %545 = call float @dx.op.binary.f32(i32 36, float %537, float %544)  ; FMin(a,b)
  %546 = fmul fast float %443, %519
  %547 = fmul fast float %443, %518
  %548 = call float @dx.op.binary.f32(i32 36, float %546, float %547)  ; FMin(a,b)
  %549 = call float @dx.op.binary.f32(i32 35, float %543, float %548)  ; FMax(a,b)
  %550 = call float @dx.op.binary.f32(i32 35, float %546, float %547)  ; FMax(a,b)
  %551 = call float @dx.op.binary.f32(i32 36, float %545, float %550)  ; FMin(a,b)
  %552 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %549)  ; FMax(a,b)
  %553 = fcmp fast ult float %551, %552
  br i1 %553, label %557, label %554, !dx.controlflow.hints !35

; <label>:554                                     ; preds = %527
  %555 = call float @dx.op.binary.f32(i32 36, float %549, float %551)  ; FMin(a,b)
  %556 = call float @dx.op.binary.f32(i32 35, float %549, float %551)  ; FMax(a,b)
  br label %557

; <label>:557                                     ; preds = %554, %527, %520
  %558 = phi float [ %525, %520 ], [ %555, %554 ], [ 0.000000e+00, %527 ]
  %559 = phi float [ %526, %520 ], [ %556, %554 ], [ 0.000000e+00, %527 ]
  %560 = fcmp fast ogt float %558, 0.000000e+00
  br i1 %560, label %656, label %561, !dx.controlflow.hints !45

; <label>:561                                     ; preds = %557
  %562 = fcmp fast ugt float %559, 0.000000e+00
  br i1 %562, label %563, label %656, !dx.controlflow.hints !46

; <label>:563                                     ; preds = %561
  %564 = icmp sgt i32 %489, 0
  br i1 %564, label %565, label %650

; <label>:565                                     ; preds = %563
  br label %566

; <label>:566                                     ; preds = %646, %565
  %567 = phi i32 [ %647, %646 ], [ %489, %565 ]
  %568 = sitofp i32 %567 to float
  %569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %570 = extractvalue %dx.types.CBufRet.f32 %569, 0
  %571 = extractvalue %dx.types.CBufRet.f32 %569, 1
  %572 = fsub fast float %484, %570
  %573 = fsub fast float %485, %571
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 0
  %576 = extractvalue %dx.types.CBufRet.f32 %574, 1
  %577 = fmul fast float %572, %575
  %578 = fmul fast float %573, %576
  %579 = fsub fast float 1.000000e+00, %578
  %580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.i32 %580, 3
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %589, label %583, !dx.controlflow.hints !47

; <label>:583                                     ; preds = %566
  %584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %577, float %579, float undef, float undef, i32 0, i32 0, i32 undef, float %568)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %585 = extractvalue %dx.types.ResRet.f32 %584, 0
  %586 = extractvalue %dx.types.ResRet.f32 %584, 1
  %587 = extractvalue %dx.types.ResRet.f32 %584, 2
  %588 = extractvalue %dx.types.ResRet.f32 %584, 3
  br label %595

; <label>:589                                     ; preds = %566
  %590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %577, float %579, float undef, float undef, i32 0, i32 0, i32 undef, float %568)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %591 = extractvalue %dx.types.ResRet.f32 %590, 0
  %592 = extractvalue %dx.types.ResRet.f32 %590, 1
  %593 = extractvalue %dx.types.ResRet.f32 %590, 2
  %594 = extractvalue %dx.types.ResRet.f32 %590, 3
  br label %595

; <label>:595                                     ; preds = %589, %583
  %596 = phi float [ %585, %583 ], [ %591, %589 ]
  %597 = phi float [ %586, %583 ], [ %592, %589 ]
  %598 = phi float [ %587, %583 ], [ %593, %589 ]
  %599 = phi float [ %588, %583 ], [ %594, %589 ]
  %600 = extractvalue %dx.types.CBufRet.f32 %574, 3
  %601 = fmul fast float %600, %596
  %602 = extractvalue %dx.types.CBufRet.f32 %569, 2
  %603 = fadd fast float %601, %602
  %604 = fmul fast float %600, %597
  %605 = fadd fast float %604, %602
  %606 = fmul fast float %600, %598
  %607 = fadd fast float %606, %602
  %608 = and i32 %567, 31
  %609 = shl i32 1, %608
  %610 = uitofp i32 %609 to float
  %611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %612 = extractvalue %dx.types.CBufRet.f32 %611, 3
  %613 = fdiv fast float 1.000000e+00, %612
  %614 = fmul fast float %613, %610
  %615 = fmul fast float %614, %282
  %616 = fadd fast float %615, %486
  %617 = fcmp fast oeq float %599, 0.000000e+00
  %618 = fcmp fast ogt float %486, %605
  %619 = fcmp fast ogt float %616, %605
  %620 = and i1 %618, %619
  %621 = or i1 %617, %620
  br i1 %621, label %622, label %626, !dx.controlflow.hints !48

; <label>:622                                     ; preds = %595
  %623 = add nsw i32 %567, 1
  %624 = add nsw i32 %503, -1
  %625 = call i32 @dx.op.binary.i32(i32 38, i32 %623, i32 %624)  ; IMin(a,b)
  br label %656

; <label>:626                                     ; preds = %595
  %627 = fcmp fast olt float %486, %607
  %628 = fcmp fast olt float %616, %607
  %629 = and i1 %627, %628
  br i1 %629, label %630, label %634, !dx.controlflow.hints !49

; <label>:630                                     ; preds = %626
  %631 = add nsw i32 %567, 1
  %632 = add nsw i32 %503, -1
  %633 = call i32 @dx.op.binary.i32(i32 38, i32 %631, i32 %632)  ; IMin(a,b)
  br label %656

; <label>:634                                     ; preds = %626
  %635 = fcmp fast olt float %486, %603
  %636 = fcmp fast olt float %616, %603
  %637 = and i1 %635, %636
  br i1 %637, label %638, label %646, !dx.controlflow.hints !50

; <label>:638                                     ; preds = %634
  %639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.f32 %639, 3
  %641 = extractvalue %dx.types.CBufRet.f32 %574, 2
  %642 = fcmp fast une float %640, %641
  br i1 %642, label %643, label %650, !dx.controlflow.hints !51

; <label>:643                                     ; preds = %638
  %644 = fsub fast float %486, %607
  %645 = call float @dx.op.binary.f32(i32 36, float %614, float %644)  ; FMin(a,b)
  br label %650

; <label>:646                                     ; preds = %634
  %647 = add nsw i32 %567, -1
  %648 = icmp sgt i32 %567, 1
  br i1 %648, label %566, label %649

; <label>:649                                     ; preds = %646
  br label %650

; <label>:650                                     ; preds = %649, %643, %638, %563
  %651 = phi float [ %645, %643 ], [ %614, %638 ], [ 0.000000e+00, %563 ], [ 0.000000e+00, %649 ]
  %652 = phi i32 [ %567, %643 ], [ %567, %638 ], [ %489, %563 ], [ %647, %649 ]
  %653 = add nsw i32 %652, 1
  %654 = add nsw i32 %503, -1
  %655 = call i32 @dx.op.binary.i32(i32 38, i32 %653, i32 %654)  ; IMin(a,b)
  br label %656

; <label>:656                                     ; preds = %650, %630, %622, %561, %557, %507
  %657 = phi float [ %508, %507 ], [ %614, %622 ], [ %614, %630 ], [ %651, %650 ], [ 0x47EFFFFFE0000000, %561 ], [ %558, %557 ]
  %658 = phi i32 [ %369, %507 ], [ %369, %622 ], [ %369, %630 ], [ %369, %650 ], [ 0, %561 ], [ %369, %557 ]
  %659 = phi i32 [ %489, %507 ], [ %625, %622 ], [ %633, %630 ], [ %655, %650 ], [ %489, %561 ], [ %489, %557 ]
  %660 = icmp ne i32 %658, 0
  %661 = zext i1 %660 to i32
  %662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.f32 %662, 2
  %664 = call float @dx.op.binary.f32(i32 35, float %657, float %663)  ; FMax(a,b)
  %665 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %664)  ; FMin(a,b)
  br label %666

; <label>:666                                     ; preds = %656, %466
  %667 = phi i32 [ %661, %656 ], [ 0, %466 ]
  %668 = phi float [ %665, %656 ], [ 0x47EFFFFFE0000000, %466 ]
  %669 = phi i32 [ %659, %656 ], [ %489, %466 ]
  %670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %671 = extractvalue %dx.types.CBufRet.f32 %670, 0
  %672 = extractvalue %dx.types.CBufRet.f32 %670, 1
  %673 = fsub fast float %484, %671
  %674 = fsub fast float %485, %672
  %675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.f32 %675, 2
  %677 = extractvalue %dx.types.CBufRet.f32 %675, 3
  %678 = fmul fast float %673, %676
  %679 = fmul fast float %674, %677
  %680 = call float @dx.op.binary.f32(i32 36, float %678, float %679)  ; FMin(a,b)
  %681 = fcmp fast olt float %680, 0.000000e+00
  %682 = call float @dx.op.binary.f32(i32 35, float %678, float %679)  ; FMax(a,b)
  %683 = fcmp fast ogt float %682, 1.000000e+00
  %684 = or i1 %681, %683
  %685 = extractvalue %dx.types.CBufRet.f32 %670, 2
  %686 = fcmp fast olt float %486, %685
  %687 = or i1 %684, %686
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 3
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 0
  %692 = fadd fast float %691, %689
  %693 = fcmp fast ogt float %486, %692
  %694 = or i1 %687, %693
  br i1 %694, label %695, label %724, !dx.controlflow.hints !52

; <label>:695                                     ; preds = %666
  %696 = extractvalue %dx.types.CBufRet.f32 %675, 0
  %697 = extractvalue %dx.types.CBufRet.f32 %675, 1
  %698 = fsub fast float %671, %484
  %699 = fmul fast float %698, %441
  %700 = fadd fast float %698, %696
  %701 = fmul fast float %700, %441
  %702 = call float @dx.op.binary.f32(i32 36, float %699, float %701)  ; FMin(a,b)
  %703 = call float @dx.op.binary.f32(i32 35, float %699, float %701)  ; FMax(a,b)
  %704 = fsub fast float %672, %485
  %705 = fmul fast float %704, %442
  %706 = fadd fast float %704, %697
  %707 = fmul fast float %706, %442
  %708 = call float @dx.op.binary.f32(i32 36, float %705, float %707)  ; FMin(a,b)
  %709 = call float @dx.op.binary.f32(i32 35, float %702, float %708)  ; FMax(a,b)
  %710 = call float @dx.op.binary.f32(i32 35, float %705, float %707)  ; FMax(a,b)
  %711 = call float @dx.op.binary.f32(i32 36, float %703, float %710)  ; FMin(a,b)
  %712 = fsub fast float %685, %486
  %713 = fmul fast float %712, %443
  %714 = fsub fast float %689, %486
  %715 = fadd fast float %714, %691
  %716 = fmul fast float %715, %443
  %717 = call float @dx.op.binary.f32(i32 36, float %713, float %716)  ; FMin(a,b)
  %718 = call float @dx.op.binary.f32(i32 35, float %709, float %717)  ; FMax(a,b)
  %719 = call float @dx.op.binary.f32(i32 35, float %713, float %716)  ; FMax(a,b)
  %720 = call float @dx.op.binary.f32(i32 36, float %711, float %719)  ; FMin(a,b)
  %721 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %718)  ; FMax(a,b)
  %722 = fcmp fast oge float %720, %721
  %723 = select i1 %722, float %718, float 1.000000e+07
  br label %770

; <label>:724                                     ; preds = %666
  %725 = fsub fast float 1.000000e+00, %679
  %726 = icmp eq i32 %488, 0
  br i1 %726, label %755, label %727

; <label>:727                                     ; preds = %724
  br label %728

; <label>:728                                     ; preds = %751, %727
  %729 = phi i32 [ %752, %751 ], [ %488, %727 ]
  %730 = uitofp i32 %729 to float
  %731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %678, float %725, float undef, float undef, i32 0, i32 0, i32 undef, float %730)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %732 = extractvalue %dx.types.ResRet.f32 %731, 0
  %733 = extractvalue %dx.types.ResRet.f32 %731, 1
  %734 = extractvalue %dx.types.ResRet.f32 %731, 2
  %735 = fcmp fast oeq float %732, 0.000000e+00
  %736 = fcmp ule float %486, %734
  %737 = fcmp uge float %486, %733
  %738 = or i1 %737, %736
  %739 = or i1 %735, %738
  br i1 %739, label %740, label %751, !dx.controlflow.hints !53

; <label>:740                                     ; preds = %728
  %741 = extractvalue %dx.types.ResRet.f32 %731, 3
  %742 = extractvalue %dx.types.CBufRet.f32 %675, 0
  %743 = and i32 %729, 31
  %744 = lshr i32 1024, %743
  %745 = uitofp i32 %744 to float
  %746 = fdiv fast float %742, %745
  %747 = add i32 %729, 1
  %748 = uitofp i32 %747 to float
  %749 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %748)  ; FMin(a,b)
  %750 = fptosi float %749 to i32
  br label %770

; <label>:751                                     ; preds = %728
  %752 = add i32 %729, -1
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %754, label %728, !llvm.loop !54

; <label>:754                                     ; preds = %751
  br label %755

; <label>:755                                     ; preds = %754, %724
  %756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %678, float %725, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %757 = extractvalue %dx.types.ResRet.f32 %756, 0
  %758 = extractvalue %dx.types.ResRet.f32 %756, 1
  %759 = extractvalue %dx.types.ResRet.f32 %756, 2
  %760 = extractvalue %dx.types.ResRet.f32 %756, 3
  %761 = extractvalue %dx.types.CBufRet.f32 %675, 0
  %762 = fmul fast float %761, 9.765625e-04
  %763 = fcmp fast oeq float %757, 0.000000e+00
  %764 = fcmp ule float %486, %759
  %765 = fcmp uge float %486, %758
  %766 = or i1 %765, %764
  %767 = or i1 %763, %766
  %768 = zext i1 %767 to i32
  %769 = xor i32 %768, 1
  br label %770

; <label>:770                                     ; preds = %755, %740, %695
  %771 = phi float [ %723, %695 ], [ %746, %740 ], [ %762, %755 ]
  %772 = phi float [ %475, %695 ], [ %732, %740 ], [ %757, %755 ]
  %773 = phi float [ %476, %695 ], [ %733, %740 ], [ %758, %755 ]
  %774 = phi float [ %477, %695 ], [ %734, %740 ], [ %759, %755 ]
  %775 = phi float [ %478, %695 ], [ %741, %740 ], [ %760, %755 ]
  %776 = phi i32 [ 0, %695 ], [ 0, %740 ], [ %769, %755 ]
  %777 = phi i32 [ 10, %695 ], [ %750, %740 ], [ 1, %755 ]
  %778 = icmp eq i32 %776, 0
  %779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %780 = extractvalue %dx.types.CBufRet.f32 %779, 2
  %781 = call float @dx.op.binary.f32(i32 35, float %771, float %780)  ; FMax(a,b)
  %782 = call float @dx.op.binary.f32(i32 36, float %668, float %781)  ; FMin(a,b)
  %783 = icmp eq i32 %396, 0
  br i1 %783, label %796, label %784, !dx.controlflow.hints !56

; <label>:784                                     ; preds = %770
  %785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %786 = extractvalue %dx.types.CBufRet.f32 %785, 3
  %787 = extractvalue %dx.types.CBufRet.f32 %785, 2
  %788 = fmul fast float %786, %487
  %789 = fdiv fast float %788, %444
  %790 = fadd fast float %789, 1.000000e+00
  %791 = call float @dx.op.unary.f32(i32 23, float %790)  ; Log(value)
  %792 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %791)  ; FMin(a,b)
  %793 = fmul fast float %787, %444
  %794 = fmul fast float %793, %792
  %795 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %794)  ; FMin(a,b)
  br label %796

; <label>:796                                     ; preds = %784, %770
  %797 = phi float [ %795, %784 ], [ 0x47EFFFFFE0000000, %770 ]
  %798 = icmp eq i32 %438, 0
  br i1 %798, label %970, label %799, !dx.controlflow.hints !57

; <label>:799                                     ; preds = %796
  %800 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %801 = extractvalue %dx.types.CBufRet.i32 %800, 1
  %802 = and i32 %801, 1
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %804, label %961, !dx.controlflow.hints !58

; <label>:804                                     ; preds = %799
  %805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %806 = extractvalue %dx.types.CBufRet.f32 %805, 2
  %807 = extractvalue %dx.types.CBufRet.f32 %805, 3
  %808 = fmul fast float %806, %484
  %809 = fmul fast float %807, %485
  %810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %811 = extractvalue %dx.types.CBufRet.f32 %810, 0
  %812 = extractvalue %dx.types.CBufRet.f32 %810, 1
  %813 = fadd fast float %808, %811
  %814 = fadd fast float %809, %812
  %815 = call float @dx.op.unary.f32(i32 7, float %813)  ; Saturate(value)
  %816 = call float @dx.op.unary.f32(i32 7, float %814)  ; Saturate(value)
  %817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %818 = extractvalue %dx.types.ResRet.f32 %817, 0
  %819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %820 = extractvalue %dx.types.CBufRet.f32 %819, 0
  %821 = fmul fast float %820, %818
  %822 = fsub fast float %813, %815
  %823 = fsub fast float %814, %816
  %824 = extractvalue %dx.types.CBufRet.f32 %805, 0
  %825 = extractvalue %dx.types.CBufRet.f32 %805, 1
  %826 = fmul fast float %824, %822
  %827 = fmul fast float %825, %823
  %828 = fmul fast float %826, %826
  %829 = fmul fast float %827, %827
  %830 = fadd fast float %828, %829
  %831 = call float @dx.op.unary.f32(i32 24, float %830)  ; Sqrt(value)
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 3
  %834 = fmul fast float %833, %831
  %835 = call float @dx.op.unary.f32(i32 7, float %834)  ; Saturate(value)
  %836 = extractvalue %dx.types.CBufRet.f32 %832, 2
  %837 = fsub fast float %836, %821
  %838 = fmul fast float %837, %835
  %839 = extractvalue %dx.types.CBufRet.f32 %819, 1
  %840 = fsub fast float %486, %821
  %841 = fsub fast float %840, %839
  %842 = fsub fast float %841, %838
  %843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %844 = extractvalue %dx.types.CBufRet.f32 %843, 2
  %845 = fsub fast float %842, %844
  %846 = fcmp fast olt float %845, 0.000000e+00
  %847 = call float @dx.op.unary.f32(i32 6, float %845)  ; FAbs(value)
  %848 = extractvalue %dx.types.CBufRet.i32 %800, 0
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %903, label %850

; <label>:850                                     ; preds = %804
  br label %851

; <label>:851                                     ; preds = %890, %850
  %852 = phi i32 [ %896, %890 ], [ 1, %850 ]
  %853 = phi float [ %898, %890 ], [ 0x47EFFFFFE0000000, %850 ]
  %854 = phi i32 [ %899, %890 ], [ 0, %850 ]
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 1
  %857 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.i32 %857, 1
  %859 = and i32 %858, 8
  %860 = icmp eq i32 %859, 0
  %861 = fcmp fast ogt float %856, %842
  %862 = or i1 %861, %860
  %863 = add i32 %854, 171
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %863)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 0
  %866 = extractvalue %dx.types.CBufRet.f32 %864, 1
  %867 = extractvalue %dx.types.CBufRet.f32 %864, 2
  br i1 %862, label %868, label %874, !dx.controlflow.hints !59

; <label>:868                                     ; preds = %851
  %869 = fsub fast float %865, %484
  %870 = fsub fast float %866, %485
  %871 = fmul fast float %869, %869
  %872 = fmul fast float %870, %870
  %873 = fadd fast float %871, %872
  br label %890

; <label>:874                                     ; preds = %851
  %875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.f32 %875, 2
  %877 = extractvalue %dx.types.CBufRet.f32 %855, 2
  %878 = fmul fast float %877, %876
  %879 = fsub fast float %878, %856
  %880 = fdiv fast float %867, %879
  %881 = fsub fast float %484, %865
  %882 = fsub fast float %485, %866
  %883 = fsub fast float %842, %856
  %884 = fmul fast float %880, %883
  %885 = fmul fast float %881, %881
  %886 = fmul fast float %882, %882
  %887 = fadd fast float %885, %886
  %888 = fmul fast float %884, %884
  %889 = fadd fast float %887, %888
  br label %890

; <label>:890                                     ; preds = %874, %868
  %891 = phi float [ %873, %868 ], [ %889, %874 ]
  %892 = call float @dx.op.unary.f32(i32 24, float %891)  ; Sqrt(value)
  %893 = fsub float %867, %892
  %894 = fcmp fast olt float %893, 0.000000e+00
  %895 = zext i1 %894 to i32
  %896 = and i32 %895, %852
  %897 = call float @dx.op.unary.f32(i32 6, float %893)  ; FAbs(value)
  %898 = call float @dx.op.binary.f32(i32 36, float %853, float %897)  ; FMin(a,b)
  %899 = add i32 %854, 1
  %900 = extractvalue %dx.types.CBufRet.i32 %857, 0
  %901 = icmp ult i32 %899, %900
  br i1 %901, label %851, label %902

; <label>:902                                     ; preds = %890
  br label %903

; <label>:903                                     ; preds = %902, %804
  %904 = phi i32 [ 1, %804 ], [ %896, %902 ]
  %905 = phi float [ 0x47EFFFFFE0000000, %804 ], [ %898, %902 ]
  br label %906

; <label>:906                                     ; preds = %906, %903
  %907 = phi i32 [ %904, %903 ], [ %946, %906 ]
  %908 = phi float [ 0x47EFFFFFE0000000, %903 ], [ %948, %906 ]
  %909 = phi i32 [ 0, %903 ], [ %949, %906 ]
  %910 = add nuw nsw i32 %909, 191
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %910)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 0
  %913 = extractvalue %dx.types.CBufRet.f32 %911, 1
  %914 = extractvalue %dx.types.CBufRet.f32 %911, 2
  %915 = add nuw nsw i32 %909, 195
  %916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %915)  ; CBufferLoadLegacy(handle,regIndex)
  %917 = extractvalue %dx.types.CBufRet.f32 %916, 0
  %918 = extractvalue %dx.types.CBufRet.f32 %916, 1
  %919 = extractvalue %dx.types.CBufRet.f32 %916, 2
  %920 = fsub fast float %484, %912
  %921 = fsub fast float %485, %913
  %922 = fsub fast float %842, %914
  %923 = call float @dx.op.unary.f32(i32 6, float %920)  ; FAbs(value)
  %924 = call float @dx.op.unary.f32(i32 6, float %921)  ; FAbs(value)
  %925 = call float @dx.op.unary.f32(i32 6, float %922)  ; FAbs(value)
  %926 = fsub fast float %923, %917
  %927 = fsub fast float %924, %918
  %928 = fsub fast float %925, %919
  %929 = call float @dx.op.binary.f32(i32 35, float %926, float 0.000000e+00)  ; FMax(a,b)
  %930 = call float @dx.op.binary.f32(i32 35, float %927, float 0.000000e+00)  ; FMax(a,b)
  %931 = call float @dx.op.binary.f32(i32 35, float %928, float 0.000000e+00)  ; FMax(a,b)
  %932 = fmul fast float %929, %929
  %933 = fmul fast float %930, %930
  %934 = fadd fast float %933, %932
  %935 = fmul fast float %931, %931
  %936 = fadd fast float %934, %935
  %937 = call float @dx.op.unary.f32(i32 24, float %936)  ; Sqrt(value)
  %938 = call float @dx.op.binary.f32(i32 35, float %927, float %928)  ; FMax(a,b)
  %939 = call float @dx.op.binary.f32(i32 35, float %926, float %938)  ; FMax(a,b)
  %940 = call float @dx.op.binary.f32(i32 36, float %939, float 0.000000e+00)  ; FMin(a,b)
  %941 = fadd fast float %940, %937
  %942 = fsub fast float -0.000000e+00, %941
  %943 = fcmp ogt float %941, -0.000000e+00
  %944 = icmp ne i32 %907, 0
  %945 = and i1 %944, %943
  %946 = zext i1 %945 to i32
  %947 = call float @dx.op.unary.f32(i32 6, float %942)  ; FAbs(value)
  %948 = call float @dx.op.binary.f32(i32 36, float %908, float %947)  ; FMin(a,b)
  %949 = add nuw nsw i32 %909, 1
  %950 = icmp eq i32 %949, 4
  br i1 %950, label %951, label %906

; <label>:951                                     ; preds = %906
  %952 = call float @dx.op.binary.f32(i32 36, float %847, float %948)  ; FMin(a,b)
  %953 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.i32 %953, 1
  %955 = and i32 %954, 2
  %956 = icmp ne i32 %955, 0
  %957 = xor i1 %945, %956
  %958 = call float @dx.op.binary.f32(i32 36, float %952, float %905)  ; FMin(a,b)
  %959 = and i1 %957, %846
  %960 = zext i1 %959 to i32
  br label %961

; <label>:961                                     ; preds = %951, %799
  %962 = phi i32 [ %473, %799 ], [ %960, %951 ]
  %963 = phi float [ 0.000000e+00, %799 ], [ %958, %951 ]
  %964 = phi float [ %486, %799 ], [ %842, %951 ]
  %965 = icmp ne i32 %962, 0
  %966 = extractvalue %dx.types.CBufRet.f32 %779, 3
  %967 = call float @dx.op.binary.f32(i32 35, float %963, float %966)  ; FMax(a,b)
  %968 = call float @dx.op.binary.f32(i32 36, float %797, float %967)  ; FMin(a,b)
  %969 = zext i1 %965 to i32
  br label %970

; <label>:970                                     ; preds = %961, %796
  %971 = phi i32 [ %962, %961 ], [ %473, %796 ]
  %972 = phi i32 [ %969, %961 ], [ 0, %796 ]
  %973 = phi float [ %964, %961 ], [ %474, %796 ]
  %974 = phi float [ %968, %961 ], [ %797, %796 ]
  %975 = extractvalue %dx.types.CBufRet.f32 %498, 2
  %976 = fmul fast float %975, %487
  %977 = call float @dx.op.unary.f32(i32 23, float %976)  ; Log(value)
  %978 = fmul fast float %977, 0x3FE62E4300000000
  %979 = call float @dx.op.binary.f32(i32 35, float %978, float 1.000000e+00)  ; FMax(a,b)
  %980 = fmul fast float %979, %974
  %981 = call float @dx.op.binary.f32(i32 36, float %980, float %782)  ; FMin(a,b)
  %982 = call float @dx.op.binary.f32(i32 35, float %981, float %499)  ; FMax(a,b)
  %983 = fsub fast float %444, %487
  %984 = fadd fast float %983, 0x3F1A36E2E0000000
  %985 = call float @dx.op.binary.f32(i32 36, float %984, float %982)  ; FMin(a,b)
  %986 = icmp eq i32 %667, 0
  br i1 %986, label %1092, label %987, !dx.controlflow.hints !60

; <label>:987                                     ; preds = %970
  %988 = fcmp fast olt float %984, %982
  %989 = fmul fast float %282, %225
  %990 = fmul fast float %989, %985
  %991 = fadd fast float %990, %486
  %992 = fmul fast float %282, %226
  %993 = fmul fast float %992, %985
  %994 = fadd fast float %993, %486
  %995 = fmul fast float %282, %227
  %996 = fmul fast float %995, %985
  %997 = fadd fast float %996, %486
  br i1 %988, label %998, label %1003, !dx.controlflow.hints !61

; <label>:998                                     ; preds = %987
  %999 = fmul fast float %985, %280
  %1000 = fmul fast float %985, %281
  %1001 = fadd fast float %999, %484
  %1002 = fadd fast float %1000, %485
  br label %1003

; <label>:1003                                    ; preds = %998, %987
  %1004 = phi float [ %1001, %998 ], [ %484, %987 ]
  %1005 = phi float [ %1002, %998 ], [ %485, %987 ]
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 0
  %1008 = extractvalue %dx.types.CBufRet.f32 %1006, 1
  %1009 = fsub fast float %1004, %1007
  %1010 = fsub fast float %1005, %1008
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.CBufRet.f32 %1011, 1
  %1014 = fmul fast float %1009, %1012
  %1015 = fmul fast float %1010, %1013
  %1016 = fsub fast float 1.000000e+00, %1015
  %1017 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.i32 %1017, 3
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1026, label %1020, !dx.controlflow.hints !47

; <label>:1020                                    ; preds = %1003
  %1021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %1014, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 0
  %1023 = extractvalue %dx.types.ResRet.f32 %1021, 1
  %1024 = extractvalue %dx.types.ResRet.f32 %1021, 2
  %1025 = extractvalue %dx.types.ResRet.f32 %1021, 3
  br label %1032

; <label>:1026                                    ; preds = %1003
  %1027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %1014, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1028 = extractvalue %dx.types.ResRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.ResRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.ResRet.f32 %1027, 2
  %1031 = extractvalue %dx.types.ResRet.f32 %1027, 3
  br label %1032

; <label>:1032                                    ; preds = %1026, %1020
  %1033 = phi float [ %1022, %1020 ], [ %1028, %1026 ]
  %1034 = phi float [ %1023, %1020 ], [ %1029, %1026 ]
  %1035 = phi float [ %1024, %1020 ], [ %1030, %1026 ]
  %1036 = phi float [ %1025, %1020 ], [ %1031, %1026 ]
  %1037 = extractvalue %dx.types.CBufRet.f32 %1011, 3
  %1038 = fmul fast float %1037, %1034
  %1039 = fmul fast float %1038, %1033
  %1040 = fsub fast float %1038, %1039
  %1041 = fcmp fast ole float %1040, 0.000000e+00
  %1042 = extractvalue %dx.types.CBufRet.f32 %1006, 2
  %1043 = fadd fast float %1039, %1042
  %1044 = fmul fast float %1037, %1035
  %1045 = fadd fast float %1044, %1042
  %1046 = fdiv fast float 1.000000e+00, %1040
  %1047 = select i1 %1041, float 1.000000e+06, float %1046
  %1048 = fsub fast float %991, %1043
  %1049 = fmul fast float %1047, %1048
  %1050 = call float @dx.op.unary.f32(i32 7, float %1049)  ; Saturate(value)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1011, 2
  %1052 = fmul fast float %1051, %1050
  %1053 = fsub fast float %1051, %1052
  %1054 = fcmp fast olt float %991, %1045
  %1055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1056 = extractvalue %dx.types.CBufRet.f32 %1055, 3
  %1057 = select i1 %1054, float %1056, float 1.000000e+00
  %1058 = fmul fast float %1053, %1057
  %1059 = fsub fast float %994, %1043
  %1060 = fmul fast float %1047, %1059
  %1061 = call float @dx.op.unary.f32(i32 7, float %1060)  ; Saturate(value)
  %1062 = fmul fast float %1051, %1061
  %1063 = fsub fast float %1051, %1062
  %1064 = fcmp fast olt float %994, %1045
  %1065 = select i1 %1064, float %1056, float 1.000000e+00
  %1066 = fmul fast float %1063, %1065
  %1067 = fadd fast float %1066, %1058
  %1068 = fsub fast float %997, %1043
  %1069 = fmul fast float %1047, %1068
  %1070 = call float @dx.op.unary.f32(i32 7, float %1069)  ; Saturate(value)
  %1071 = fmul fast float %1051, %1070
  %1072 = fsub fast float %1051, %1071
  %1073 = fcmp fast olt float %997, %1045
  %1074 = select i1 %1073, float %1056, float 1.000000e+00
  %1075 = fmul fast float %1072, %1074
  %1076 = fadd fast float %1067, %1075
  %1077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1078 = extractvalue %dx.types.CBufRet.f32 %1077, 2
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.CBufRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.CBufRet.f32 %1079, 2
  %1083 = fmul fast float %985, 0x3FD5555560000000
  %1084 = fmul fast float %1083, %1036
  %1085 = fmul fast float %1084, %1078
  %1086 = fmul fast float %1085, %1076
  %1087 = extractvalue %dx.types.CBufRet.f32 %1055, 0
  %1088 = fmul fast float %1086, %1080
  %1089 = fmul fast float %1086, %1081
  %1090 = fmul fast float %1086, %1082
  %1091 = fmul fast float %1086, %1087
  br label %1092

; <label>:1092                                    ; preds = %1032, %970
  %1093 = phi float [ %1086, %1032 ], [ 0.000000e+00, %970 ]
  %1094 = phi float [ %1091, %1032 ], [ 0.000000e+00, %970 ]
  %1095 = phi float [ %1088, %1032 ], [ 0.000000e+00, %970 ]
  %1096 = phi float [ %1089, %1032 ], [ 0.000000e+00, %970 ]
  %1097 = phi float [ %1090, %1032 ], [ 0.000000e+00, %970 ]
  br i1 %783, label %1157, label %1098, !dx.controlflow.hints !62

; <label>:1098                                    ; preds = %1092
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1101 = fsub fast float %1100, %486
  %1102 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %497, float %496, float %1101)  ; Dot3(ax,ay,az,bx,by,bz)
  %1103 = fmul fast float %379, %1102
  %1104 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1103)  ; FMax(a,b)
  %1105 = fcmp fast olt float %282, 0.000000e+00
  %1106 = call float @dx.op.binary.f32(i32 36, float %985, float %1104)  ; FMin(a,b)
  br i1 %1105, label %1108, label %1107, !dx.controlflow.hints !63

; <label>:1107                                    ; preds = %1098
  br label %1108

; <label>:1108                                    ; preds = %1107, %1098
  %1109 = phi float [ 0.000000e+00, %1107 ], [ %1106, %1098 ]
  %1110 = phi float [ %1106, %1107 ], [ %985, %1098 ]
  %1111 = phi float [ %1106, %1107 ], [ 0.000000e+00, %1098 ]
  %1112 = phi float [ %985, %1107 ], [ %1106, %1098 ]
  %1113 = fsub fast float %1110, %1109
  %1114 = extractvalue %dx.types.CBufRet.f32 %1099, 1
  %1115 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1114)  ; FMin(a,b)
  %1116 = fsub fast float %486, %1100
  %1117 = fmul fast float %1115, 0x3FF7154760000000
  %1118 = fmul fast float %1117, %1116
  %1119 = call float @dx.op.unary.f32(i32 21, float %1118)  ; Exp(value)
  %1120 = fmul fast float %282, 0x3FF7154760000000
  %1121 = fmul fast float %1120, %1112
  %1122 = fmul fast float %1121, %1115
  %1123 = call float @dx.op.unary.f32(i32 21, float %1122)  ; Exp(value)
  %1124 = fmul fast float %1120, %1111
  %1125 = fmul fast float %1124, %1115
  %1126 = call float @dx.op.unary.f32(i32 21, float %1125)  ; Exp(value)
  %1127 = fsub fast float %1123, %1126
  %1128 = fmul fast float %1127, %1119
  %1129 = fmul fast float %1115, %282
  %1130 = fdiv fast float %1128, %1129
  %1131 = fadd fast float %1113, %1130
  %1132 = call float @dx.op.unary.f32(i32 6, float %282)  ; FAbs(value)
  %1133 = fcmp fast olt float %1132, 0x3F0FFB4800000000
  %1134 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1116)  ; FMax(a,b)
  %1135 = fmul fast float %1134, 0x3FF7154760000000
  %1136 = fmul fast float %1135, %1114
  %1137 = call float @dx.op.unary.f32(i32 21, float %1136)  ; Exp(value)
  %1138 = fmul fast float %1137, %985
  %1139 = select i1 %1133, float %1138, float %1131
  %1140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.f32 %1140, 1
  %1142 = fmul fast float %1139, %1141
  %1143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %1144 = extractvalue %dx.types.CBufRet.f32 %1143, 0
  %1145 = extractvalue %dx.types.CBufRet.f32 %1143, 1
  %1146 = extractvalue %dx.types.CBufRet.f32 %1143, 2
  %1147 = extractvalue %dx.types.CBufRet.f32 %1140, 2
  %1148 = fmul fast float %1144, %1142
  %1149 = fmul fast float %1145, %1142
  %1150 = fmul fast float %1146, %1142
  %1151 = fadd fast float %1148, %1095
  %1152 = fadd fast float %1149, %1096
  %1153 = fadd fast float %1150, %1097
  %1154 = fmul fast float %1147, %1142
  %1155 = fadd fast float %1154, %1094
  %1156 = fadd fast float %1142, %1093
  br label %1157

; <label>:1157                                    ; preds = %1108, %1092
  %1158 = phi float [ %1156, %1108 ], [ %1093, %1092 ]
  %1159 = phi float [ %1155, %1108 ], [ %1094, %1092 ]
  %1160 = phi float [ %1151, %1108 ], [ %1095, %1092 ]
  %1161 = phi float [ %1152, %1108 ], [ %1096, %1092 ]
  %1162 = phi float [ %1153, %1108 ], [ %1097, %1092 ]
  br i1 %778, label %1305, label %1163, !dx.controlflow.hints !64

; <label>:1163                                    ; preds = %1157
  %1164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1165 = extractvalue %dx.types.CBufRet.f32 %1164, 0
  %1166 = extractvalue %dx.types.CBufRet.f32 %1164, 1
  %1167 = extractvalue %dx.types.CBufRet.f32 %1164, 2
  %1168 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.i32 %1168, 0
  %1170 = icmp ne i32 %1169, 0
  %1171 = zext i1 %1170 to i32
  %1172 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1173 = extractvalue %dx.types.CBufRet.i32 %1172, 0
  %1174 = icmp eq i32 %1173, 0
  br i1 %1174, label %1208, label %1175

; <label>:1175                                    ; preds = %1163
  br label %1176

; <label>:1176                                    ; preds = %1203, %1175
  %1177 = phi i32 [ %1204, %1203 ], [ 0, %1175 ]
  %1178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1177, i32 0)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 0
  %1180 = extractvalue %dx.types.ResRet.f32 %1178, 1
  %1181 = extractvalue %dx.types.ResRet.f32 %1178, 2
  %1182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1177, i32 16)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.f32 %1182, 0
  %1184 = extractvalue %dx.types.ResRet.f32 %1182, 1
  %1185 = extractvalue %dx.types.ResRet.f32 %1182, 2
  %1186 = fsub fast float %1179, %1183
  %1187 = fsub fast float %1180, %1184
  %1188 = fsub fast float %1181, %1185
  %1189 = fadd fast float %1183, %1179
  %1190 = fadd fast float %1184, %1180
  %1191 = fadd fast float %1185, %1181
  %1192 = fcmp fast olt float %484, %1186
  %1193 = fcmp fast olt float %485, %1187
  %1194 = fcmp fast olt float %486, %1188
  %1195 = or i1 %1192, %1193
  %1196 = or i1 %1194, %1195
  %1197 = fcmp fast ogt float %484, %1189
  %1198 = fcmp fast ogt float %485, %1190
  %1199 = fcmp fast ogt float %486, %1191
  %1200 = or i1 %1197, %1198
  %1201 = or i1 %1199, %1200
  %1202 = or i1 %1196, %1201
  br i1 %1202, label %1203, label %1206, !dx.controlflow.hints !65

; <label>:1203                                    ; preds = %1176
  %1204 = add nuw i32 %1177, 1
  %1205 = icmp ult i32 %1204, %1173
  br i1 %1205, label %1176, label %1206

; <label>:1206                                    ; preds = %1203, %1176
  %1207 = phi i32 [ 255, %1203 ], [ %1177, %1176 ]
  br label %1208

; <label>:1208                                    ; preds = %1206, %1163
  %1209 = phi i32 [ 255, %1163 ], [ %1207, %1206 ]
  %1210 = icmp eq i32 %1209, 255
  br i1 %1210, label %1220, label %1211, !dx.controlflow.hints !66

; <label>:1211                                    ; preds = %1208
  %1212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1209, i32 32)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = extractvalue %dx.types.ResRet.f32 %1212, 1
  %1215 = extractvalue %dx.types.ResRet.f32 %1212, 2
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1209, i32 156)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = icmp ne i32 %1217, 0
  %1219 = zext i1 %1218 to i32
  br label %1220

; <label>:1220                                    ; preds = %1211, %1208
  %1221 = phi float [ %1213, %1211 ], [ %1165, %1208 ]
  %1222 = phi float [ %1214, %1211 ], [ %1166, %1208 ]
  %1223 = phi float [ %1215, %1211 ], [ %1167, %1208 ]
  %1224 = phi i32 [ %1219, %1211 ], [ %1171, %1208 ]
  %1225 = icmp eq i32 %1224, 0
  br i1 %1225, label %1226, label %1295, !dx.controlflow.hints !67

; <label>:1226                                    ; preds = %1220
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 3
  %1229 = extractvalue %dx.types.CBufRet.f32 %688, 0
  %1230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1230, 2
  %1232 = extractvalue %dx.types.CBufRet.f32 %1230, 3
  br i1 %1210, label %1243, label %1233, !dx.controlflow.hints !68

; <label>:1233                                    ; preds = %1226
  %1234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1209, i32 60)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.f32 %1234, 0
  %1236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1209, i32 64)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.f32 %1236, 0
  %1238 = extractvalue %dx.types.ResRet.f32 %1236, 1
  %1239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1209, i32 72)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.f32 %1239, 0
  %1241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1209, i32 96)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 0
  br label %1243

; <label>:1243                                    ; preds = %1233, %1226
  %1244 = phi float [ %1235, %1233 ], [ %691, %1226 ]
  %1245 = phi float [ %1240, %1233 ], [ %689, %1226 ]
  %1246 = phi float [ %1242, %1233 ], [ %1229, %1226 ]
  %1247 = phi float [ %1237, %1233 ], [ %1231, %1226 ]
  %1248 = phi float [ %1238, %1233 ], [ %1232, %1226 ]
  %1249 = call float @dx.op.binary.f32(i32 35, float %772, float 0.000000e+00)  ; FMax(a,b)
  %1250 = call float @dx.op.binary.f32(i32 36, float %1249, float 1.000000e+00)  ; FMin(a,b)
  %1251 = call float @dx.op.unary.f32(i32 24, float %1250)  ; Sqrt(value)
  %1252 = call float @dx.op.binary.f32(i32 35, float %775, float 0x3F847AE140000000)  ; FMax(a,b)
  %1253 = fsub fast float %773, %486
  %1254 = fsub fast float %486, %774
  %1255 = call float @dx.op.binary.f32(i32 36, float %1254, float %1253)  ; FMin(a,b)
  %1256 = fdiv fast float %1255, %1252
  %1257 = call float @dx.op.unary.f32(i32 7, float %1256)  ; Saturate(value)
  %1258 = fsub fast float %486, %1245
  %1259 = fdiv fast float %1258, %1244
  %1260 = call float @dx.op.unary.f32(i32 7, float %1259)  ; Saturate(value)
  %1261 = fsub fast float 1.000000e+00, %1260
  %1262 = fmul float %1257, %1261
  %1263 = fmul float %1262, %1262
  %1264 = fmul fast float %1251, %1228
  %1265 = fmul fast float %1264, %1263
  %1266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.f32 %1266, 2
  %1268 = extractvalue %dx.types.CBufRet.f32 %1266, 1
  %1269 = fsub fast float %1265, %1268
  %1270 = fsub fast float %1267, %1268
  %1271 = fdiv fast float %1269, %1270
  %1272 = call float @dx.op.unary.f32(i32 7, float %1271)  ; Saturate(value)
  %1273 = fmul fast float %1272, %1246
  %1274 = fcmp fast ogt float %1248, 0.000000e+00
  br i1 %1274, label %1275, label %1295, !dx.controlflow.hints !69

; <label>:1275                                    ; preds = %1243
  %1276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1277 = extractvalue %dx.types.CBufRet.f32 %1276, 0
  %1278 = extractvalue %dx.types.CBufRet.f32 %1276, 1
  %1279 = extractvalue %dx.types.CBufRet.f32 %1276, 2
  %1280 = fsub fast float %484, %1277
  %1281 = fsub fast float %485, %1278
  %1282 = fsub fast float %486, %1279
  %1283 = fmul fast float %1280, %1280
  %1284 = fmul fast float %1281, %1281
  %1285 = fadd fast float %1283, %1284
  %1286 = fmul fast float %1282, %1282
  %1287 = fadd fast float %1285, %1286
  %1288 = call float @dx.op.unary.f32(i32 24, float %1287)  ; Sqrt(value)
  %1289 = fsub fast float %1288, %1247
  %1290 = fsub fast float %1248, %1247
  %1291 = fdiv fast float %1289, %1290
  %1292 = call float @dx.op.unary.f32(i32 7, float %1291)  ; Saturate(value)
  %1293 = fmul fast float %1292, %1292
  %1294 = fmul fast float %1293, %1273
  br label %1295

; <label>:1295                                    ; preds = %1275, %1243, %1220
  %1296 = phi float [ 0.000000e+00, %1220 ], [ %1294, %1275 ], [ %1273, %1243 ]
  %1297 = fmul fast float %1296, %985
  %1298 = fmul fast float %1297, %1221
  %1299 = fmul fast float %1297, %1222
  %1300 = fmul fast float %1297, %1223
  %1301 = fadd fast float %1298, %1160
  %1302 = fadd fast float %1299, %1161
  %1303 = fadd fast float %1300, %1162
  %1304 = fadd fast float %1297, %1158
  br label %1305

; <label>:1305                                    ; preds = %1295, %1157
  %1306 = phi float [ %1304, %1295 ], [ %1158, %1157 ]
  %1307 = phi float [ %1301, %1295 ], [ %1160, %1157 ]
  %1308 = phi float [ %1302, %1295 ], [ %1161, %1157 ]
  %1309 = phi float [ %1303, %1295 ], [ %1162, %1157 ]
  %1310 = icmp eq i32 %972, 0
  br i1 %1310, label %1354, label %1311, !dx.controlflow.hints !70

; <label>:1311                                    ; preds = %1305
  %1312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1313 = extractvalue %dx.types.CBufRet.f32 %1312, 1
  %1314 = fsub fast float %985, %1313
  %1315 = extractvalue %dx.types.CBufRet.f32 %1312, 3
  %1316 = fmul fast float %1314, %1315
  %1317 = call float @dx.op.unary.f32(i32 7, float %1316)  ; Saturate(value)
  %1318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1319 = extractvalue %dx.types.CBufRet.f32 %1318, 3
  %1320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1321 = extractvalue %dx.types.CBufRet.f32 %1320, 2
  %1322 = fsub fast float %1321, %973
  %1323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.f32 %1323, 3
  %1325 = fmul fast float %1322, %1324
  %1326 = call float @dx.op.unary.f32(i32 7, float %1325)  ; Saturate(value)
  %1327 = fmul fast float %1326, %1319
  %1328 = extractvalue %dx.types.CBufRet.f32 %1323, 0
  %1329 = fsub fast float %487, %1328
  %1330 = extractvalue %dx.types.CBufRet.f32 %1323, 1
  %1331 = fmul fast float %1329, %1330
  %1332 = call float @dx.op.unary.f32(i32 7, float %1331)  ; Saturate(value)
  %1333 = fsub fast float 1.000000e+00, %1317
  %1334 = fmul fast float %1332, %1333
  %1335 = fadd fast float %1334, %1317
  %1336 = extractvalue %dx.types.CBufRet.f32 %1312, 0
  %1337 = fsub fast float %1327, %1336
  %1338 = fmul fast float %1337, %1335
  %1339 = fadd fast float %1338, %1336
  %1340 = extractvalue %dx.types.CBufRet.f32 %1318, 0
  %1341 = extractvalue %dx.types.CBufRet.f32 %1318, 1
  %1342 = extractvalue %dx.types.CBufRet.f32 %1318, 2
  %1343 = fmul fast float %1339, %985
  %1344 = extractvalue %dx.types.CBufRet.f32 %1323, 2
  %1345 = fmul fast float %1343, %1340
  %1346 = fmul fast float %1343, %1341
  %1347 = fmul fast float %1343, %1342
  %1348 = fadd fast float %1345, %1307
  %1349 = fadd fast float %1346, %1308
  %1350 = fadd fast float %1347, %1309
  %1351 = fmul fast float %1343, %1344
  %1352 = fadd fast float %1351, %1159
  %1353 = fadd fast float %1343, %1306
  br label %1354

; <label>:1354                                    ; preds = %1311, %1305
  %1355 = phi float [ %1353, %1311 ], [ %1306, %1305 ]
  %1356 = phi float [ %1352, %1311 ], [ %1159, %1305 ]
  %1357 = phi float [ %1348, %1311 ], [ %1307, %1305 ]
  %1358 = phi float [ %1349, %1311 ], [ %1308, %1305 ]
  %1359 = phi float [ %1350, %1311 ], [ %1309, %1305 ]
  %1360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1361 = extractvalue %dx.types.CBufRet.f32 %1360, 1
  %1362 = fcmp fast ogt float %1355, %1361
  br i1 %1362, label %1363, label %1369, !dx.controlflow.hints !71

; <label>:1363                                    ; preds = %1354
  %1364 = fdiv fast float 1.000000e+00, %1355
  %1365 = fmul fast float %1364, %1357
  %1366 = fmul fast float %1364, %1358
  %1367 = fmul fast float %1364, %1359
  %1368 = fmul fast float %1364, %1356
  br label %1369

; <label>:1369                                    ; preds = %1363, %1354
  %1370 = phi float [ %1368, %1363 ], [ %1356, %1354 ]
  %1371 = phi float [ %1365, %1363 ], [ %1357, %1354 ]
  %1372 = phi float [ %1366, %1363 ], [ %1358, %1354 ]
  %1373 = phi float [ %1367, %1363 ], [ %1359, %1354 ]
  br i1 %1362, label %1376, label %1374, !dx.controlflow.hints !72

; <label>:1374                                    ; preds = %1369
  %1375 = fadd fast float %985, %487
  br label %2113

; <label>:1376                                    ; preds = %1369
  %1377 = fmul fast float %1355, 0xBFF7154760000000
  %1378 = call float @dx.op.unary.f32(i32 21, float %1377)  ; Exp(value)
  %1379 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  %1380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1381 = extractvalue %dx.types.CBufRet.f32 %1380, 3
  %1382 = fcmp fast une float %1381, 0.000000e+00
  %1383 = extractvalue %dx.types.CBufRet.f32 %1380, 0
  %1384 = extractvalue %dx.types.CBufRet.f32 %1380, 1
  %1385 = extractvalue %dx.types.CBufRet.f32 %1380, 2
  br i1 %1382, label %1386, label %1408, !dx.controlflow.hints !73

; <label>:1386                                    ; preds = %1376
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 0
  %1389 = extractvalue %dx.types.CBufRet.f32 %1387, 1
  %1390 = extractvalue %dx.types.CBufRet.f32 %1387, 2
  %1391 = call float @dx.op.dot3.f32(i32 55, float %1383, float %1384, float %1385, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %1392 = fcmp fast ogt float %1370, 0.000000e+00
  %1393 = select i1 %1392, float 1.000000e+00, float -1.000000e+00
  %1394 = fmul fast float %1393, 5.000000e-01
  %1395 = fmul fast float %1394, %1391
  %1396 = fmul fast float %1393, %1370
  %1397 = fadd fast float %1395, 4.921875e-01
  %1398 = fadd fast float %1396, -3.125000e-02
  %1399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %1397, float 0x3FB25F3060000000, float %1398, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1400 = extractvalue %dx.types.ResRet.f32 %1399, 0
  %1401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1402 = extractvalue %dx.types.CBufRet.f32 %1401, 0
  %1403 = fmul fast float %1400, 0x400921FB60000000
  %1404 = fmul fast float %1403, %1402
  %1405 = fmul fast float %1404, %1388
  %1406 = fmul fast float %1404, %1389
  %1407 = fmul fast float %1404, %1390
  br label %1408

; <label>:1408                                    ; preds = %1386, %1376
  %1409 = phi float [ %1405, %1386 ], [ 0.000000e+00, %1376 ]
  %1410 = phi float [ %1406, %1386 ], [ 0.000000e+00, %1376 ]
  %1411 = phi float [ %1407, %1386 ], [ 0.000000e+00, %1376 ]
  %1412 = fdiv fast float 1.000000e+00, %1383
  %1413 = fdiv fast float 1.000000e+00, %1384
  %1414 = fdiv fast float 1.000000e+00, %1385
  %1415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.f32 %1415, 0
  %1417 = fmul fast float %1416, %1383
  %1418 = fmul fast float %1416, %1384
  %1419 = fmul fast float %1416, %1385
  %1420 = fadd fast float %1417, %484
  %1421 = fsub fast float -0.000000e+00, %1420
  %1422 = fadd fast float %1418, %485
  %1423 = fsub fast float -0.000000e+00, %1422
  %1424 = fadd fast float %1419, %486
  br i1 %500, label %1496, label %1425, !dx.controlflow.hints !43

; <label>:1425                                    ; preds = %1408
  %1426 = extractvalue %dx.types.CBufRet.f32 %1415, 1
  %1427 = fcmp fast ogt float %1426, %1416
  br i1 %1427, label %1428, label %1430, !dx.controlflow.hints !44

; <label>:1428                                    ; preds = %1425
  %1429 = fsub fast float %1426, %1416
  br label %1487

; <label>:1430                                    ; preds = %1425
  %1431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1432 = extractvalue %dx.types.CBufRet.i32 %1431, 3
  %1433 = icmp eq i32 %1432, 0
  %1434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1435 = extractvalue %dx.types.CBufRet.f32 %1434, 2
  %1436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1437 = extractvalue %dx.types.CBufRet.f32 %1436, 2
  %1438 = fsub fast float %1435, %1424
  %1439 = fadd fast float %1438, %1437
  %1440 = fsub fast float 0xC7EFFFFFE0000000, %1424
  br i1 %1433, label %1450, label %1441, !dx.controlflow.hints !34

; <label>:1441                                    ; preds = %1430
  %1442 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1421, float %1423, float %1439)  ; Dot3(ax,ay,az,bx,by,bz)
  %1443 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1383, float %1384, float %1385)  ; Dot3(ax,ay,az,bx,by,bz)
  %1444 = fdiv fast float 1.000000e+00, %1443
  %1445 = fmul fast float %1444, %1442
  %1446 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1421, float %1423, float %1440)  ; Dot3(ax,ay,az,bx,by,bz)
  %1447 = fmul fast float %1444, %1446
  %1448 = call float @dx.op.binary.f32(i32 36, float %1445, float %1447)  ; FMin(a,b)
  %1449 = call float @dx.op.binary.f32(i32 35, float %1445, float %1447)  ; FMax(a,b)
  br label %1480

; <label>:1450                                    ; preds = %1430
  %1451 = extractvalue %dx.types.CBufRet.f32 %1434, 0
  %1452 = extractvalue %dx.types.CBufRet.f32 %1434, 1
  %1453 = extractvalue %dx.types.CBufRet.f32 %1436, 0
  %1454 = extractvalue %dx.types.CBufRet.f32 %1436, 1
  %1455 = fsub fast float %1451, %1420
  %1456 = fmul fast float %1412, %1455
  %1457 = fadd fast float %1455, %1453
  %1458 = fmul fast float %1457, %1412
  %1459 = call float @dx.op.binary.f32(i32 36, float %1456, float %1458)  ; FMin(a,b)
  %1460 = call float @dx.op.binary.f32(i32 35, float %1456, float %1458)  ; FMax(a,b)
  %1461 = fsub fast float %1452, %1422
  %1462 = fmul fast float %1413, %1461
  %1463 = fadd fast float %1461, %1454
  %1464 = fmul fast float %1463, %1413
  %1465 = call float @dx.op.binary.f32(i32 36, float %1462, float %1464)  ; FMin(a,b)
  %1466 = call float @dx.op.binary.f32(i32 35, float %1459, float %1465)  ; FMax(a,b)
  %1467 = call float @dx.op.binary.f32(i32 35, float %1462, float %1464)  ; FMax(a,b)
  %1468 = call float @dx.op.binary.f32(i32 36, float %1460, float %1467)  ; FMin(a,b)
  %1469 = fmul fast float %1414, %1440
  %1470 = fmul fast float %1414, %1439
  %1471 = call float @dx.op.binary.f32(i32 36, float %1469, float %1470)  ; FMin(a,b)
  %1472 = call float @dx.op.binary.f32(i32 35, float %1466, float %1471)  ; FMax(a,b)
  %1473 = call float @dx.op.binary.f32(i32 35, float %1469, float %1470)  ; FMax(a,b)
  %1474 = call float @dx.op.binary.f32(i32 36, float %1468, float %1473)  ; FMin(a,b)
  %1475 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1472)  ; FMax(a,b)
  %1476 = fcmp fast ult float %1474, %1475
  br i1 %1476, label %1480, label %1477, !dx.controlflow.hints !35

; <label>:1477                                    ; preds = %1450
  %1478 = call float @dx.op.binary.f32(i32 36, float %1472, float %1474)  ; FMin(a,b)
  %1479 = call float @dx.op.binary.f32(i32 35, float %1472, float %1474)  ; FMax(a,b)
  br label %1480

; <label>:1480                                    ; preds = %1477, %1450, %1441
  %1481 = phi float [ %1448, %1441 ], [ %1478, %1477 ], [ 0.000000e+00, %1450 ]
  %1482 = phi float [ %1449, %1441 ], [ %1479, %1477 ], [ 0.000000e+00, %1450 ]
  %1483 = fcmp fast ogt float %1481, 0.000000e+00
  br i1 %1483, label %1487, label %1484, !dx.controlflow.hints !45

; <label>:1484                                    ; preds = %1480
  %1485 = fcmp fast ugt float %1482, 0.000000e+00
  br i1 %1485, label %1486, label %1487, !dx.controlflow.hints !46

; <label>:1486                                    ; preds = %1484
  br label %1487

; <label>:1487                                    ; preds = %1486, %1484, %1480, %1428
  %1488 = phi float [ %1429, %1428 ], [ 0.000000e+00, %1486 ], [ 0x47EFFFFFE0000000, %1484 ], [ %1481, %1480 ]
  %1489 = phi i32 [ %369, %1428 ], [ %369, %1486 ], [ 0, %1484 ], [ %369, %1480 ]
  %1490 = icmp ne i32 %1489, 0
  %1491 = zext i1 %1490 to i32
  %1492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1493 = extractvalue %dx.types.CBufRet.f32 %1492, 2
  %1494 = call float @dx.op.binary.f32(i32 35, float %1488, float %1493)  ; FMax(a,b)
  %1495 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1494)  ; FMin(a,b)
  br label %1496

; <label>:1496                                    ; preds = %1487, %1408
  %1497 = phi float [ %1495, %1487 ], [ 0x47EFFFFFE0000000, %1408 ]
  %1498 = phi i32 [ %1491, %1487 ], [ 0, %1408 ]
  %1499 = fsub fast float %1420, %671
  %1500 = fsub fast float %1422, %672
  %1501 = fmul fast float %1499, %676
  %1502 = fmul fast float %1500, %677
  %1503 = call float @dx.op.binary.f32(i32 36, float %1501, float %1502)  ; FMin(a,b)
  %1504 = fcmp fast olt float %1503, 0.000000e+00
  %1505 = call float @dx.op.binary.f32(i32 35, float %1501, float %1502)  ; FMax(a,b)
  %1506 = fcmp fast ogt float %1505, 1.000000e+00
  %1507 = or i1 %1504, %1506
  %1508 = fcmp fast olt float %1424, %685
  %1509 = or i1 %1507, %1508
  %1510 = fcmp fast ogt float %1424, %692
  %1511 = or i1 %1509, %1510
  %1512 = extractvalue %dx.types.CBufRet.f32 %675, 0
  br i1 %1511, label %1513, label %1541, !dx.controlflow.hints !52

; <label>:1513                                    ; preds = %1496
  %1514 = extractvalue %dx.types.CBufRet.f32 %675, 1
  %1515 = fsub fast float %671, %1420
  %1516 = fmul fast float %1515, %1412
  %1517 = fadd fast float %1515, %1512
  %1518 = fmul fast float %1517, %1412
  %1519 = call float @dx.op.binary.f32(i32 36, float %1516, float %1518)  ; FMin(a,b)
  %1520 = call float @dx.op.binary.f32(i32 35, float %1516, float %1518)  ; FMax(a,b)
  %1521 = fsub fast float %672, %1422
  %1522 = fmul fast float %1521, %1413
  %1523 = fadd fast float %1521, %1514
  %1524 = fmul fast float %1523, %1413
  %1525 = call float @dx.op.binary.f32(i32 36, float %1522, float %1524)  ; FMin(a,b)
  %1526 = call float @dx.op.binary.f32(i32 35, float %1519, float %1525)  ; FMax(a,b)
  %1527 = call float @dx.op.binary.f32(i32 35, float %1522, float %1524)  ; FMax(a,b)
  %1528 = call float @dx.op.binary.f32(i32 36, float %1520, float %1527)  ; FMin(a,b)
  %1529 = fsub fast float %685, %1424
  %1530 = fmul fast float %1529, %1414
  %1531 = fsub fast float %689, %1424
  %1532 = fadd fast float %1531, %691
  %1533 = fmul fast float %1532, %1414
  %1534 = call float @dx.op.binary.f32(i32 36, float %1530, float %1533)  ; FMin(a,b)
  %1535 = call float @dx.op.binary.f32(i32 35, float %1526, float %1534)  ; FMax(a,b)
  %1536 = call float @dx.op.binary.f32(i32 35, float %1530, float %1533)  ; FMax(a,b)
  %1537 = call float @dx.op.binary.f32(i32 36, float %1528, float %1536)  ; FMin(a,b)
  %1538 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1535)  ; FMax(a,b)
  %1539 = fcmp fast oge float %1537, %1538
  %1540 = select i1 %1539, float %1535, float 1.000000e+07
  br label %1556

; <label>:1541                                    ; preds = %1496
  %1542 = fsub fast float 1.000000e+00, %1502
  %1543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %1501, float %1542, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1544 = extractvalue %dx.types.ResRet.f32 %1543, 0
  %1545 = extractvalue %dx.types.ResRet.f32 %1543, 1
  %1546 = extractvalue %dx.types.ResRet.f32 %1543, 2
  %1547 = extractvalue %dx.types.ResRet.f32 %1543, 3
  %1548 = fmul fast float %1512, 9.765625e-04
  %1549 = fcmp fast oeq float %1544, 0.000000e+00
  %1550 = fcmp ule float %1424, %1546
  %1551 = fcmp uge float %1424, %1545
  %1552 = or i1 %1551, %1550
  %1553 = or i1 %1549, %1552
  %1554 = zext i1 %1553 to i32
  %1555 = xor i32 %1554, 1
  br label %1556

; <label>:1556                                    ; preds = %1541, %1513
  %1557 = phi float [ %1540, %1513 ], [ %1548, %1541 ]
  %1558 = phi float [ %469, %1513 ], [ %1544, %1541 ]
  %1559 = phi float [ %470, %1513 ], [ %1545, %1541 ]
  %1560 = phi float [ %471, %1513 ], [ %1546, %1541 ]
  %1561 = phi float [ %472, %1513 ], [ %1547, %1541 ]
  %1562 = phi i32 [ 0, %1513 ], [ %1555, %1541 ]
  %1563 = icmp eq i32 %1562, 0
  %1564 = call float @dx.op.binary.f32(i32 35, float %1557, float %780)  ; FMax(a,b)
  %1565 = call float @dx.op.binary.f32(i32 36, float %1497, float %1564)  ; FMin(a,b)
  br i1 %783, label %1578, label %1566, !dx.controlflow.hints !56

; <label>:1566                                    ; preds = %1556
  %1567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1568 = extractvalue %dx.types.CBufRet.f32 %1567, 3
  %1569 = extractvalue %dx.types.CBufRet.f32 %1567, 2
  %1570 = fmul fast float %1568, %1416
  %1571 = fdiv fast float %1570, %1416
  %1572 = fadd fast float %1571, 1.000000e+00
  %1573 = call float @dx.op.unary.f32(i32 23, float %1572)  ; Log(value)
  %1574 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1573)  ; FMin(a,b)
  %1575 = fmul fast float %1569, %1416
  %1576 = fmul fast float %1575, %1574
  %1577 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1576)  ; FMin(a,b)
  br label %1578

; <label>:1578                                    ; preds = %1566, %1556
  %1579 = phi float [ %1577, %1566 ], [ 0x47EFFFFFE0000000, %1556 ]
  br i1 %798, label %1751, label %1580, !dx.controlflow.hints !57

; <label>:1580                                    ; preds = %1578
  %1581 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1582 = extractvalue %dx.types.CBufRet.i32 %1581, 1
  %1583 = and i32 %1582, 1
  %1584 = icmp eq i32 %1583, 0
  br i1 %1584, label %1585, label %1742, !dx.controlflow.hints !58

; <label>:1585                                    ; preds = %1580
  %1586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1587 = extractvalue %dx.types.CBufRet.f32 %1586, 2
  %1588 = extractvalue %dx.types.CBufRet.f32 %1586, 3
  %1589 = fmul fast float %1587, %1420
  %1590 = fmul fast float %1588, %1422
  %1591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1592 = extractvalue %dx.types.CBufRet.f32 %1591, 0
  %1593 = extractvalue %dx.types.CBufRet.f32 %1591, 1
  %1594 = fadd fast float %1589, %1592
  %1595 = fadd fast float %1590, %1593
  %1596 = call float @dx.op.unary.f32(i32 7, float %1594)  ; Saturate(value)
  %1597 = call float @dx.op.unary.f32(i32 7, float %1595)  ; Saturate(value)
  %1598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1596, float %1597, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1599 = extractvalue %dx.types.ResRet.f32 %1598, 0
  %1600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1601 = extractvalue %dx.types.CBufRet.f32 %1600, 0
  %1602 = fmul fast float %1601, %1599
  %1603 = fsub fast float %1594, %1596
  %1604 = fsub fast float %1595, %1597
  %1605 = extractvalue %dx.types.CBufRet.f32 %1586, 0
  %1606 = extractvalue %dx.types.CBufRet.f32 %1586, 1
  %1607 = fmul fast float %1605, %1603
  %1608 = fmul fast float %1606, %1604
  %1609 = fmul fast float %1607, %1607
  %1610 = fmul fast float %1608, %1608
  %1611 = fadd fast float %1609, %1610
  %1612 = call float @dx.op.unary.f32(i32 24, float %1611)  ; Sqrt(value)
  %1613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1614 = extractvalue %dx.types.CBufRet.f32 %1613, 3
  %1615 = fmul fast float %1614, %1612
  %1616 = call float @dx.op.unary.f32(i32 7, float %1615)  ; Saturate(value)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1613, 2
  %1618 = fsub fast float %1617, %1602
  %1619 = fmul fast float %1618, %1616
  %1620 = extractvalue %dx.types.CBufRet.f32 %1600, 1
  %1621 = fsub fast float %1424, %1602
  %1622 = fsub fast float %1621, %1620
  %1623 = fsub fast float %1622, %1619
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 2
  %1626 = fsub fast float %1623, %1625
  %1627 = fcmp fast olt float %1626, 0.000000e+00
  %1628 = call float @dx.op.unary.f32(i32 6, float %1626)  ; FAbs(value)
  %1629 = extractvalue %dx.types.CBufRet.i32 %1581, 0
  %1630 = icmp eq i32 %1629, 0
  br i1 %1630, label %1684, label %1631

; <label>:1631                                    ; preds = %1585
  br label %1632

; <label>:1632                                    ; preds = %1671, %1631
  %1633 = phi i32 [ %1677, %1671 ], [ 1, %1631 ]
  %1634 = phi float [ %1679, %1671 ], [ 0x47EFFFFFE0000000, %1631 ]
  %1635 = phi i32 [ %1680, %1671 ], [ 0, %1631 ]
  %1636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1637 = extractvalue %dx.types.CBufRet.f32 %1636, 1
  %1638 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1639 = extractvalue %dx.types.CBufRet.i32 %1638, 1
  %1640 = and i32 %1639, 8
  %1641 = icmp eq i32 %1640, 0
  %1642 = fcmp fast ogt float %1637, %1623
  %1643 = or i1 %1642, %1641
  %1644 = add i32 %1635, 171
  %1645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %1644)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.f32 %1645, 0
  %1647 = extractvalue %dx.types.CBufRet.f32 %1645, 1
  %1648 = extractvalue %dx.types.CBufRet.f32 %1645, 2
  br i1 %1643, label %1649, label %1655, !dx.controlflow.hints !59

; <label>:1649                                    ; preds = %1632
  %1650 = fsub fast float %1646, %1420
  %1651 = fsub fast float %1647, %1422
  %1652 = fmul fast float %1650, %1650
  %1653 = fmul fast float %1651, %1651
  %1654 = fadd fast float %1652, %1653
  br label %1671

; <label>:1655                                    ; preds = %1632
  %1656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1657 = extractvalue %dx.types.CBufRet.f32 %1656, 2
  %1658 = extractvalue %dx.types.CBufRet.f32 %1636, 2
  %1659 = fmul fast float %1658, %1657
  %1660 = fsub fast float %1659, %1637
  %1661 = fdiv fast float %1648, %1660
  %1662 = fsub fast float %1420, %1646
  %1663 = fsub fast float %1422, %1647
  %1664 = fsub fast float %1623, %1637
  %1665 = fmul fast float %1661, %1664
  %1666 = fmul fast float %1662, %1662
  %1667 = fmul fast float %1663, %1663
  %1668 = fadd fast float %1666, %1667
  %1669 = fmul fast float %1665, %1665
  %1670 = fadd fast float %1668, %1669
  br label %1671

; <label>:1671                                    ; preds = %1655, %1649
  %1672 = phi float [ %1654, %1649 ], [ %1670, %1655 ]
  %1673 = call float @dx.op.unary.f32(i32 24, float %1672)  ; Sqrt(value)
  %1674 = fsub float %1648, %1673
  %1675 = fcmp fast olt float %1674, 0.000000e+00
  %1676 = zext i1 %1675 to i32
  %1677 = and i32 %1676, %1633
  %1678 = call float @dx.op.unary.f32(i32 6, float %1674)  ; FAbs(value)
  %1679 = call float @dx.op.binary.f32(i32 36, float %1634, float %1678)  ; FMin(a,b)
  %1680 = add i32 %1635, 1
  %1681 = extractvalue %dx.types.CBufRet.i32 %1638, 0
  %1682 = icmp ult i32 %1680, %1681
  br i1 %1682, label %1632, label %1683

; <label>:1683                                    ; preds = %1671
  br label %1684

; <label>:1684                                    ; preds = %1683, %1585
  %1685 = phi i32 [ 1, %1585 ], [ %1677, %1683 ]
  %1686 = phi float [ 0x47EFFFFFE0000000, %1585 ], [ %1679, %1683 ]
  br label %1687

; <label>:1687                                    ; preds = %1687, %1684
  %1688 = phi i32 [ %1685, %1684 ], [ %1727, %1687 ]
  %1689 = phi float [ 0x47EFFFFFE0000000, %1684 ], [ %1729, %1687 ]
  %1690 = phi i32 [ 0, %1684 ], [ %1730, %1687 ]
  %1691 = add nuw nsw i32 %1690, 191
  %1692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %1691)  ; CBufferLoadLegacy(handle,regIndex)
  %1693 = extractvalue %dx.types.CBufRet.f32 %1692, 0
  %1694 = extractvalue %dx.types.CBufRet.f32 %1692, 1
  %1695 = extractvalue %dx.types.CBufRet.f32 %1692, 2
  %1696 = add nuw nsw i32 %1690, 195
  %1697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %1696)  ; CBufferLoadLegacy(handle,regIndex)
  %1698 = extractvalue %dx.types.CBufRet.f32 %1697, 0
  %1699 = extractvalue %dx.types.CBufRet.f32 %1697, 1
  %1700 = extractvalue %dx.types.CBufRet.f32 %1697, 2
  %1701 = fsub fast float %1420, %1693
  %1702 = fsub fast float %1422, %1694
  %1703 = fsub fast float %1623, %1695
  %1704 = call float @dx.op.unary.f32(i32 6, float %1701)  ; FAbs(value)
  %1705 = call float @dx.op.unary.f32(i32 6, float %1702)  ; FAbs(value)
  %1706 = call float @dx.op.unary.f32(i32 6, float %1703)  ; FAbs(value)
  %1707 = fsub fast float %1704, %1698
  %1708 = fsub fast float %1705, %1699
  %1709 = fsub fast float %1706, %1700
  %1710 = call float @dx.op.binary.f32(i32 35, float %1707, float 0.000000e+00)  ; FMax(a,b)
  %1711 = call float @dx.op.binary.f32(i32 35, float %1708, float 0.000000e+00)  ; FMax(a,b)
  %1712 = call float @dx.op.binary.f32(i32 35, float %1709, float 0.000000e+00)  ; FMax(a,b)
  %1713 = fmul fast float %1710, %1710
  %1714 = fmul fast float %1711, %1711
  %1715 = fadd fast float %1714, %1713
  %1716 = fmul fast float %1712, %1712
  %1717 = fadd fast float %1715, %1716
  %1718 = call float @dx.op.unary.f32(i32 24, float %1717)  ; Sqrt(value)
  %1719 = call float @dx.op.binary.f32(i32 35, float %1708, float %1709)  ; FMax(a,b)
  %1720 = call float @dx.op.binary.f32(i32 35, float %1707, float %1719)  ; FMax(a,b)
  %1721 = call float @dx.op.binary.f32(i32 36, float %1720, float 0.000000e+00)  ; FMin(a,b)
  %1722 = fadd fast float %1721, %1718
  %1723 = fsub fast float -0.000000e+00, %1722
  %1724 = fcmp ogt float %1722, -0.000000e+00
  %1725 = icmp ne i32 %1688, 0
  %1726 = and i1 %1725, %1724
  %1727 = zext i1 %1726 to i32
  %1728 = call float @dx.op.unary.f32(i32 6, float %1723)  ; FAbs(value)
  %1729 = call float @dx.op.binary.f32(i32 36, float %1689, float %1728)  ; FMin(a,b)
  %1730 = add nuw nsw i32 %1690, 1
  %1731 = icmp eq i32 %1730, 4
  br i1 %1731, label %1732, label %1687

; <label>:1732                                    ; preds = %1687
  %1733 = call float @dx.op.binary.f32(i32 36, float %1628, float %1729)  ; FMin(a,b)
  %1734 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1735 = extractvalue %dx.types.CBufRet.i32 %1734, 1
  %1736 = and i32 %1735, 2
  %1737 = icmp ne i32 %1736, 0
  %1738 = xor i1 %1726, %1737
  %1739 = call float @dx.op.binary.f32(i32 36, float %1733, float %1686)  ; FMin(a,b)
  %1740 = and i1 %1738, %1627
  %1741 = zext i1 %1740 to i32
  br label %1742

; <label>:1742                                    ; preds = %1732, %1580
  %1743 = phi i32 [ %467, %1580 ], [ %1741, %1732 ]
  %1744 = phi float [ 0.000000e+00, %1580 ], [ %1739, %1732 ]
  %1745 = phi float [ %1424, %1580 ], [ %1623, %1732 ]
  %1746 = icmp ne i32 %1743, 0
  %1747 = extractvalue %dx.types.CBufRet.f32 %779, 3
  %1748 = call float @dx.op.binary.f32(i32 35, float %1744, float %1747)  ; FMax(a,b)
  %1749 = call float @dx.op.binary.f32(i32 36, float %1579, float %1748)  ; FMin(a,b)
  %1750 = zext i1 %1746 to i32
  br label %1751

; <label>:1751                                    ; preds = %1742, %1578
  %1752 = phi i32 [ %1743, %1742 ], [ %467, %1578 ]
  %1753 = phi float [ %1745, %1742 ], [ %468, %1578 ]
  %1754 = phi float [ %1749, %1742 ], [ %1579, %1578 ]
  %1755 = phi i32 [ %1750, %1742 ], [ 0, %1578 ]
  %1756 = icmp eq i32 %1498, 0
  br i1 %1756, label %1830, label %1757, !dx.controlflow.hints !60

; <label>:1757                                    ; preds = %1751
  %1758 = fmul fast float %975, %1416
  %1759 = call float @dx.op.unary.f32(i32 23, float %1758)  ; Log(value)
  %1760 = fmul fast float %1759, 0x3FE62E4300000000
  %1761 = call float @dx.op.binary.f32(i32 35, float %1760, float 1.000000e+00)  ; FMax(a,b)
  %1762 = fmul fast float %1761, %1754
  %1763 = call float @dx.op.binary.f32(i32 36, float %1762, float %1565)  ; FMin(a,b)
  %1764 = call float @dx.op.binary.f32(i32 35, float %1763, float 0.000000e+00)  ; FMax(a,b)
  %1765 = fcmp fast ogt float %1764, 0x3F1A36E2E0000000
  %1766 = fadd fast float %1417, %1420
  %1767 = fadd fast float %1418, %1422
  %1768 = select i1 %1765, float %1766, float %1420
  %1769 = select i1 %1765, float %1767, float %1422
  %1770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1771 = extractvalue %dx.types.CBufRet.f32 %1770, 0
  %1772 = extractvalue %dx.types.CBufRet.f32 %1770, 1
  %1773 = fsub fast float %1768, %1771
  %1774 = fsub fast float %1769, %1772
  %1775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %1776 = extractvalue %dx.types.CBufRet.f32 %1775, 0
  %1777 = extractvalue %dx.types.CBufRet.f32 %1775, 1
  %1778 = fmul fast float %1773, %1776
  %1779 = fmul fast float %1774, %1777
  %1780 = fsub fast float 1.000000e+00, %1779
  %1781 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1782 = extractvalue %dx.types.CBufRet.i32 %1781, 3
  %1783 = icmp eq i32 %1782, 0
  br i1 %1783, label %1790, label %1784, !dx.controlflow.hints !47

; <label>:1784                                    ; preds = %1757
  %1785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %1778, float %1780, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1786 = extractvalue %dx.types.ResRet.f32 %1785, 0
  %1787 = extractvalue %dx.types.ResRet.f32 %1785, 1
  %1788 = extractvalue %dx.types.ResRet.f32 %1785, 2
  %1789 = extractvalue %dx.types.ResRet.f32 %1785, 3
  br label %1796

; <label>:1790                                    ; preds = %1757
  %1791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %1778, float %1780, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1792 = extractvalue %dx.types.ResRet.f32 %1791, 0
  %1793 = extractvalue %dx.types.ResRet.f32 %1791, 1
  %1794 = extractvalue %dx.types.ResRet.f32 %1791, 2
  %1795 = extractvalue %dx.types.ResRet.f32 %1791, 3
  br label %1796

; <label>:1796                                    ; preds = %1790, %1784
  %1797 = phi float [ %1786, %1784 ], [ %1792, %1790 ]
  %1798 = phi float [ %1787, %1784 ], [ %1793, %1790 ]
  %1799 = phi float [ %1788, %1784 ], [ %1794, %1790 ]
  %1800 = phi float [ %1789, %1784 ], [ %1795, %1790 ]
  %1801 = extractvalue %dx.types.CBufRet.f32 %1775, 3
  %1802 = fmul fast float %1801, %1798
  %1803 = fmul fast float %1802, %1797
  %1804 = fsub fast float %1802, %1803
  %1805 = fcmp fast ole float %1804, 0.000000e+00
  %1806 = extractvalue %dx.types.CBufRet.f32 %1770, 2
  %1807 = fadd fast float %1803, %1806
  %1808 = fmul fast float %1801, %1799
  %1809 = fadd fast float %1808, %1806
  %1810 = fdiv fast float 1.000000e+00, %1804
  %1811 = select i1 %1805, float 1.000000e+06, float %1810
  %1812 = fsub fast float %1424, %1807
  %1813 = fmul fast float %1811, %1812
  %1814 = call float @dx.op.unary.f32(i32 7, float %1813)  ; Saturate(value)
  %1815 = extractvalue %dx.types.CBufRet.f32 %1775, 2
  %1816 = fmul fast float %1815, %1814
  %1817 = fsub fast float %1815, %1816
  %1818 = fcmp fast olt float %1424, %1809
  %1819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1820 = extractvalue %dx.types.CBufRet.f32 %1819, 3
  %1821 = fmul fast float %1820, 3.000000e+00
  %1822 = select i1 %1818, float %1821, float 3.000000e+00
  %1823 = fmul fast float %1817, %1822
  %1824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1825 = extractvalue %dx.types.CBufRet.f32 %1824, 2
  %1826 = fmul fast float %1416, 0x3FD5555560000000
  %1827 = fmul fast float %1826, %1800
  %1828 = fmul fast float %1827, %1825
  %1829 = fmul fast float %1828, %1823
  br label %1830

; <label>:1830                                    ; preds = %1796, %1751
  %1831 = phi float [ %1829, %1796 ], [ 0.000000e+00, %1751 ]
  br i1 %783, label %1880, label %1832, !dx.controlflow.hints !62

; <label>:1832                                    ; preds = %1830
  %1833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1834 = extractvalue %dx.types.CBufRet.f32 %1833, 0
  %1835 = fsub fast float %1834, %1424
  %1836 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1421, float %1423, float %1835)  ; Dot3(ax,ay,az,bx,by,bz)
  %1837 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1383, float %1384, float %1385)  ; Dot3(ax,ay,az,bx,by,bz)
  %1838 = fdiv fast float 1.000000e+00, %1837
  %1839 = fmul fast float %1838, %1836
  %1840 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1839)  ; FMax(a,b)
  %1841 = fcmp fast olt float %1385, 0.000000e+00
  %1842 = call float @dx.op.binary.f32(i32 36, float %1416, float %1840)  ; FMin(a,b)
  br i1 %1841, label %1844, label %1843, !dx.controlflow.hints !63

; <label>:1843                                    ; preds = %1832
  br label %1844

; <label>:1844                                    ; preds = %1843, %1832
  %1845 = phi float [ 0.000000e+00, %1843 ], [ %1842, %1832 ]
  %1846 = phi float [ %1842, %1843 ], [ %1416, %1832 ]
  %1847 = phi float [ %1842, %1843 ], [ 0.000000e+00, %1832 ]
  %1848 = phi float [ %1416, %1843 ], [ %1842, %1832 ]
  %1849 = fsub fast float %1846, %1845
  %1850 = extractvalue %dx.types.CBufRet.f32 %1833, 1
  %1851 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1850)  ; FMin(a,b)
  %1852 = fsub fast float %1424, %1834
  %1853 = fmul fast float %1851, 0x3FF7154760000000
  %1854 = fmul fast float %1853, %1852
  %1855 = call float @dx.op.unary.f32(i32 21, float %1854)  ; Exp(value)
  %1856 = fmul fast float %1385, 0x3FF7154760000000
  %1857 = fmul fast float %1856, %1848
  %1858 = fmul fast float %1857, %1851
  %1859 = call float @dx.op.unary.f32(i32 21, float %1858)  ; Exp(value)
  %1860 = fmul fast float %1856, %1847
  %1861 = fmul fast float %1860, %1851
  %1862 = call float @dx.op.unary.f32(i32 21, float %1861)  ; Exp(value)
  %1863 = fsub fast float %1859, %1862
  %1864 = fmul fast float %1863, %1855
  %1865 = fmul fast float %1851, %1385
  %1866 = fdiv fast float %1864, %1865
  %1867 = fadd fast float %1849, %1866
  %1868 = call float @dx.op.unary.f32(i32 6, float %1385)  ; FAbs(value)
  %1869 = fcmp fast olt float %1868, 0x3F0FFB4800000000
  %1870 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1852)  ; FMax(a,b)
  %1871 = fmul fast float %1870, 0x3FF7154760000000
  %1872 = fmul fast float %1871, %1850
  %1873 = call float @dx.op.unary.f32(i32 21, float %1872)  ; Exp(value)
  %1874 = fmul fast float %1873, %1416
  %1875 = select i1 %1869, float %1874, float %1867
  %1876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1877 = extractvalue %dx.types.CBufRet.f32 %1876, 1
  %1878 = fmul fast float %1875, %1877
  %1879 = fadd fast float %1878, %1831
  br label %1880

; <label>:1880                                    ; preds = %1844, %1830
  %1881 = phi float [ %1879, %1844 ], [ %1831, %1830 ]
  br i1 %1563, label %2007, label %1882, !dx.controlflow.hints !64

; <label>:1882                                    ; preds = %1880
  %1883 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1884 = extractvalue %dx.types.CBufRet.i32 %1883, 0
  %1885 = icmp ne i32 %1884, 0
  %1886 = zext i1 %1885 to i32
  %1887 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1888 = extractvalue %dx.types.CBufRet.i32 %1887, 0
  %1889 = icmp eq i32 %1888, 0
  br i1 %1889, label %1923, label %1890

; <label>:1890                                    ; preds = %1882
  br label %1891

; <label>:1891                                    ; preds = %1918, %1890
  %1892 = phi i32 [ %1919, %1918 ], [ 0, %1890 ]
  %1893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1892, i32 0)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.f32 %1893, 0
  %1895 = extractvalue %dx.types.ResRet.f32 %1893, 1
  %1896 = extractvalue %dx.types.ResRet.f32 %1893, 2
  %1897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1892, i32 16)  ; BufferLoad(srv,index,wot)
  %1898 = extractvalue %dx.types.ResRet.f32 %1897, 0
  %1899 = extractvalue %dx.types.ResRet.f32 %1897, 1
  %1900 = extractvalue %dx.types.ResRet.f32 %1897, 2
  %1901 = fsub fast float %1894, %1898
  %1902 = fsub fast float %1895, %1899
  %1903 = fsub fast float %1896, %1900
  %1904 = fadd fast float %1898, %1894
  %1905 = fadd fast float %1899, %1895
  %1906 = fadd fast float %1900, %1896
  %1907 = fcmp fast olt float %1420, %1901
  %1908 = fcmp fast olt float %1422, %1902
  %1909 = fcmp fast olt float %1424, %1903
  %1910 = or i1 %1907, %1908
  %1911 = or i1 %1909, %1910
  %1912 = fcmp fast ogt float %1420, %1904
  %1913 = fcmp fast ogt float %1422, %1905
  %1914 = fcmp fast ogt float %1424, %1906
  %1915 = or i1 %1912, %1913
  %1916 = or i1 %1914, %1915
  %1917 = or i1 %1911, %1916
  br i1 %1917, label %1918, label %1921, !dx.controlflow.hints !65

; <label>:1918                                    ; preds = %1891
  %1919 = add nuw i32 %1892, 1
  %1920 = icmp ult i32 %1919, %1888
  br i1 %1920, label %1891, label %1921

; <label>:1921                                    ; preds = %1918, %1891
  %1922 = phi i32 [ 255, %1918 ], [ %1892, %1891 ]
  br label %1923

; <label>:1923                                    ; preds = %1921, %1882
  %1924 = phi i32 [ 255, %1882 ], [ %1922, %1921 ]
  %1925 = icmp eq i32 %1924, 255
  br i1 %1925, label %1931, label %1926, !dx.controlflow.hints !66

; <label>:1926                                    ; preds = %1923
  %1927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1924, i32 156)  ; BufferLoad(srv,index,wot)
  %1928 = extractvalue %dx.types.ResRet.i32 %1927, 0
  %1929 = icmp ne i32 %1928, 0
  %1930 = zext i1 %1929 to i32
  br label %1931

; <label>:1931                                    ; preds = %1926, %1923
  %1932 = phi i32 [ %1930, %1926 ], [ %1886, %1923 ]
  %1933 = icmp eq i32 %1932, 0
  br i1 %1933, label %1934, label %2003, !dx.controlflow.hints !67

; <label>:1934                                    ; preds = %1931
  %1935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1936 = extractvalue %dx.types.CBufRet.f32 %1935, 3
  %1937 = extractvalue %dx.types.CBufRet.f32 %688, 0
  %1938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1939 = extractvalue %dx.types.CBufRet.f32 %1938, 2
  %1940 = extractvalue %dx.types.CBufRet.f32 %1938, 3
  br i1 %1925, label %1951, label %1941, !dx.controlflow.hints !68

; <label>:1941                                    ; preds = %1934
  %1942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1924, i32 60)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.f32 %1942, 0
  %1944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1924, i32 64)  ; BufferLoad(srv,index,wot)
  %1945 = extractvalue %dx.types.ResRet.f32 %1944, 0
  %1946 = extractvalue %dx.types.ResRet.f32 %1944, 1
  %1947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1924, i32 72)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.f32 %1947, 0
  %1949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1924, i32 96)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.f32 %1949, 0
  br label %1951

; <label>:1951                                    ; preds = %1941, %1934
  %1952 = phi float [ %1943, %1941 ], [ %691, %1934 ]
  %1953 = phi float [ %1948, %1941 ], [ %689, %1934 ]
  %1954 = phi float [ %1950, %1941 ], [ %1937, %1934 ]
  %1955 = phi float [ %1945, %1941 ], [ %1939, %1934 ]
  %1956 = phi float [ %1946, %1941 ], [ %1940, %1934 ]
  %1957 = call float @dx.op.binary.f32(i32 35, float %1558, float 0.000000e+00)  ; FMax(a,b)
  %1958 = call float @dx.op.binary.f32(i32 36, float %1957, float 1.000000e+00)  ; FMin(a,b)
  %1959 = call float @dx.op.unary.f32(i32 24, float %1958)  ; Sqrt(value)
  %1960 = call float @dx.op.binary.f32(i32 35, float %1561, float 0x3F847AE140000000)  ; FMax(a,b)
  %1961 = fsub fast float %1559, %1424
  %1962 = fsub fast float %1424, %1560
  %1963 = call float @dx.op.binary.f32(i32 36, float %1962, float %1961)  ; FMin(a,b)
  %1964 = fdiv fast float %1963, %1960
  %1965 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  %1966 = fsub fast float %1424, %1953
  %1967 = fdiv fast float %1966, %1952
  %1968 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1969 = fsub fast float 1.000000e+00, %1968
  %1970 = fmul float %1965, %1969
  %1971 = fmul float %1970, %1970
  %1972 = fmul fast float %1959, %1936
  %1973 = fmul fast float %1972, %1971
  %1974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1975 = extractvalue %dx.types.CBufRet.f32 %1974, 2
  %1976 = extractvalue %dx.types.CBufRet.f32 %1974, 1
  %1977 = fsub fast float %1973, %1976
  %1978 = fsub fast float %1975, %1976
  %1979 = fdiv fast float %1977, %1978
  %1980 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  %1981 = fmul fast float %1980, %1954
  %1982 = fcmp fast ogt float %1956, 0.000000e+00
  br i1 %1982, label %1983, label %2003, !dx.controlflow.hints !69

; <label>:1983                                    ; preds = %1951
  %1984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1985 = extractvalue %dx.types.CBufRet.f32 %1984, 0
  %1986 = extractvalue %dx.types.CBufRet.f32 %1984, 1
  %1987 = extractvalue %dx.types.CBufRet.f32 %1984, 2
  %1988 = fsub fast float %1420, %1985
  %1989 = fsub fast float %1422, %1986
  %1990 = fsub fast float %1424, %1987
  %1991 = fmul fast float %1988, %1988
  %1992 = fmul fast float %1989, %1989
  %1993 = fadd fast float %1991, %1992
  %1994 = fmul fast float %1990, %1990
  %1995 = fadd fast float %1993, %1994
  %1996 = call float @dx.op.unary.f32(i32 24, float %1995)  ; Sqrt(value)
  %1997 = fsub fast float %1996, %1955
  %1998 = fsub fast float %1956, %1955
  %1999 = fdiv fast float %1997, %1998
  %2000 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  %2001 = fmul fast float %2000, %2000
  %2002 = fmul fast float %2001, %1981
  br label %2003

; <label>:2003                                    ; preds = %1983, %1951, %1931
  %2004 = phi float [ 0.000000e+00, %1931 ], [ %2002, %1983 ], [ %1981, %1951 ]
  %2005 = fmul fast float %2004, %1416
  %2006 = fadd fast float %2005, %1881
  br label %2007

; <label>:2007                                    ; preds = %2003, %1880
  %2008 = phi float [ %2006, %2003 ], [ %1881, %1880 ]
  %2009 = icmp eq i32 %1755, 0
  br i1 %2009, label %2041, label %2010, !dx.controlflow.hints !70

; <label>:2010                                    ; preds = %2007
  %2011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %2012 = extractvalue %dx.types.CBufRet.f32 %2011, 1
  %2013 = fsub fast float %1416, %2012
  %2014 = extractvalue %dx.types.CBufRet.f32 %2011, 3
  %2015 = fmul fast float %2013, %2014
  %2016 = call float @dx.op.unary.f32(i32 7, float %2015)  ; Saturate(value)
  %2017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %2018 = extractvalue %dx.types.CBufRet.f32 %2017, 3
  %2019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2020 = extractvalue %dx.types.CBufRet.f32 %2019, 2
  %2021 = fsub fast float %2020, %1753
  %2022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %2023 = extractvalue %dx.types.CBufRet.f32 %2022, 3
  %2024 = fmul fast float %2021, %2023
  %2025 = call float @dx.op.unary.f32(i32 7, float %2024)  ; Saturate(value)
  %2026 = fmul fast float %2025, %2018
  %2027 = extractvalue %dx.types.CBufRet.f32 %2022, 0
  %2028 = fsub fast float %1416, %2027
  %2029 = extractvalue %dx.types.CBufRet.f32 %2022, 1
  %2030 = fmul fast float %2028, %2029
  %2031 = call float @dx.op.unary.f32(i32 7, float %2030)  ; Saturate(value)
  %2032 = fsub fast float 1.000000e+00, %2016
  %2033 = fmul fast float %2031, %2032
  %2034 = fadd fast float %2033, %2016
  %2035 = extractvalue %dx.types.CBufRet.f32 %2011, 0
  %2036 = fsub fast float %2026, %2035
  %2037 = fmul fast float %2036, %2034
  %2038 = fadd fast float %2037, %2035
  %2039 = fmul fast float %2038, %1416
  %2040 = fadd fast float %2039, %2008
  br label %2041

; <label>:2041                                    ; preds = %2010, %2007
  %2042 = phi float [ %2040, %2010 ], [ %2008, %2007 ]
  %2043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2044 = extractvalue %dx.types.CBufRet.f32 %2043, 3
  %2045 = fmul fast float %2042, 0xBFF7154760000000
  %2046 = fmul fast float %2045, %2044
  %2047 = call float @dx.op.unary.f32(i32 21, float %2046)  ; Exp(value)
  %2048 = call float @dx.op.unary.f32(i32 7, float %2047)  ; Saturate(value)
  %2049 = fmul fast float %2048, %1409
  %2050 = fmul fast float %2048, %1410
  %2051 = fmul fast float %2048, %1411
  %2052 = fadd fast float %2049, %204
  %2053 = fadd fast float %2050, %205
  %2054 = fadd fast float %2051, %206
  %2055 = fsub fast float 1.000000e+00, %1379
  %2056 = fmul fast float %1371, %480
  %2057 = fmul fast float %2056, %2055
  %2058 = fmul fast float %2057, %2052
  %2059 = fmul fast float %1372, %480
  %2060 = fmul fast float %2059, %2055
  %2061 = fmul fast float %2060, %2053
  %2062 = fmul fast float %1373, %480
  %2063 = fmul fast float %2062, %2055
  %2064 = fmul fast float %2063, %2054
  %2065 = fadd fast float %2058, %481
  %2066 = fadd fast float %2061, %482
  %2067 = fadd fast float %2064, %483
  %2068 = fdiv fast float %1355, %985
  %2069 = fadd fast float %985, %487
  %2070 = fmul fast float %487, %487
  %2071 = fmul fast float %2069, %2069
  %2072 = fsub fast float %2070, %2071
  %2073 = fmul fast float %2072, -5.000000e-01
  %2074 = fmul fast float %2073, %2068
  %2075 = fadd fast float %2074, %479
  %2076 = fadd fast float %1355, %490
  %2077 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2078 = extractvalue %dx.types.CBufRet.i32 %2077, 0
  %2079 = icmp eq i32 %2078, 0
  br i1 %2079, label %2106, label %2080, !dx.controlflow.hints !74

; <label>:2080                                    ; preds = %2041
  %2081 = icmp ne i32 %495, 0
  %2082 = zext i1 %2081 to i32
  %2083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2084 = extractvalue %dx.types.CBufRet.f32 %2083, 2
  %2085 = extractvalue %dx.types.CBufRet.f32 %2083, 0
  %2086 = fsub fast float %2069, %2085
  %2087 = fmul fast float %2086, %2084
  %2088 = call float @dx.op.unary.f32(i32 7, float %2087)  ; Saturate(value)
  %2089 = fadd fast float %2088, -5.000000e-01
  %2090 = fmul fast float %2089, 2.000000e+00
  %2091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2092 = extractvalue %dx.types.CBufRet.f32 %2091, 2
  %2093 = fcmp fast olt float %2090, %2092
  br i1 %2093, label %2094, label %2106, !dx.controlflow.hints !75

; <label>:2094                                    ; preds = %2080
  %2095 = fmul fast float %2090, %2090
  %2096 = fmul fast float %2055, %480
  %2097 = fmul fast float %2090, %2096
  %2098 = fmul fast float %2095, %2096
  %2099 = fmul fast float %2097, %2095
  %2100 = fmul fast float %2095, %2095
  %2101 = fmul fast float %2100, %2096
  %2102 = fadd fast float %2097, %491
  %2103 = fadd fast float %2098, %492
  %2104 = fadd fast float %2099, %493
  %2105 = fadd fast float %2101, %494
  br label %2106

; <label>:2106                                    ; preds = %2094, %2080, %2041
  %2107 = phi float [ %491, %2041 ], [ %2102, %2094 ], [ %491, %2080 ]
  %2108 = phi float [ %492, %2041 ], [ %2103, %2094 ], [ %492, %2080 ]
  %2109 = phi float [ %493, %2041 ], [ %2104, %2094 ], [ %493, %2080 ]
  %2110 = phi float [ %494, %2041 ], [ %2105, %2094 ], [ %494, %2080 ]
  %2111 = phi i32 [ %495, %2041 ], [ 1, %2094 ], [ %2082, %2080 ]
  %2112 = fmul fast float %1379, %480
  br label %2113

; <label>:2113                                    ; preds = %2106, %1374
  %2114 = phi float [ %1375, %1374 ], [ %2069, %2106 ]
  %2115 = phi i32 [ %467, %1374 ], [ %1752, %2106 ]
  %2116 = phi float [ %468, %1374 ], [ %1753, %2106 ]
  %2117 = phi float [ %469, %1374 ], [ %1558, %2106 ]
  %2118 = phi float [ %470, %1374 ], [ %1559, %2106 ]
  %2119 = phi float [ %471, %1374 ], [ %1560, %2106 ]
  %2120 = phi float [ %472, %1374 ], [ %1561, %2106 ]
  %2121 = phi float [ %479, %1374 ], [ %2075, %2106 ]
  %2122 = phi float [ %480, %1374 ], [ %2112, %2106 ]
  %2123 = phi float [ %481, %1374 ], [ %2065, %2106 ]
  %2124 = phi float [ %482, %1374 ], [ %2066, %2106 ]
  %2125 = phi float [ %483, %1374 ], [ %2067, %2106 ]
  %2126 = phi float [ %490, %1374 ], [ %2076, %2106 ]
  %2127 = phi float [ %491, %1374 ], [ %2107, %2106 ]
  %2128 = phi float [ %492, %1374 ], [ %2108, %2106 ]
  %2129 = phi float [ %493, %1374 ], [ %2109, %2106 ]
  %2130 = phi float [ %494, %1374 ], [ %2110, %2106 ]
  %2131 = phi i32 [ %495, %1374 ], [ %2111, %2106 ]
  %2132 = fmul fast float %985, %280
  %2133 = fmul fast float %985, %281
  %2134 = fmul fast float %985, %282
  %2135 = fadd fast float %2132, %484
  %2136 = fadd fast float %2133, %485
  %2137 = fadd fast float %2134, %486
  %2138 = fcmp fast olt float %2114, %444
  %2139 = extractvalue %dx.types.CBufRet.f32 %1360, 2
  %2140 = fcmp fast olt float %2139, %2122
  %2141 = and i1 %2138, %2140
  br i1 %2141, label %466, label %2142

; <label>:2142                                    ; preds = %2113
  br label %2143

; <label>:2143                                    ; preds = %2142, %437
  %2144 = phi float [ 0.000000e+00, %437 ], [ %2121, %2142 ]
  %2145 = phi float [ 1.000000e+00, %437 ], [ %2122, %2142 ]
  %2146 = phi float [ 0.000000e+00, %437 ], [ %2123, %2142 ]
  %2147 = phi float [ 0.000000e+00, %437 ], [ %2124, %2142 ]
  %2148 = phi float [ 0.000000e+00, %437 ], [ %2125, %2142 ]
  %2149 = phi float [ 0.000000e+00, %437 ], [ %2126, %2142 ]
  %2150 = phi float [ 0.000000e+00, %437 ], [ %2127, %2142 ]
  %2151 = phi float [ 0.000000e+00, %437 ], [ %2128, %2142 ]
  %2152 = phi float [ 0.000000e+00, %437 ], [ %2129, %2142 ]
  %2153 = phi float [ 0.000000e+00, %437 ], [ %2130, %2142 ]
  %2154 = phi i32 [ 0, %437 ], [ %2131, %2142 ]
  %2155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2156 = extractvalue %dx.types.CBufRet.i32 %2155, 0
  %2157 = icmp eq i32 %2156, 0
  br i1 %2157, label %2199, label %2158, !dx.controlflow.hints !76

; <label>:2158                                    ; preds = %2143
  %2159 = icmp eq i32 %2154, 0
  br i1 %2159, label %2198, label %2160, !dx.controlflow.hints !77

; <label>:2160                                    ; preds = %2158
  %2161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2162 = extractvalue %dx.types.CBufRet.i32 %2161, 2
  %2163 = icmp eq i32 %2162, 0
  br i1 %2163, label %2170, label %2164, !dx.controlflow.hints !78

; <label>:2164                                    ; preds = %2160
  %2165 = fsub fast float 1.000000e+00, %2145
  %2166 = fdiv fast float %2150, %2165
  %2167 = fdiv fast float %2151, %2165
  %2168 = fdiv fast float %2152, %2165
  %2169 = fdiv fast float %2153, %2165
  br label %2175

; <label>:2170                                    ; preds = %2160
  %2171 = fadd fast float %2150, %2145
  %2172 = fadd fast float %2151, %2145
  %2173 = fadd fast float %2152, %2145
  %2174 = fadd fast float %2153, %2145
  br label %2175

; <label>:2175                                    ; preds = %2170, %2164
  %2176 = phi float [ %2166, %2164 ], [ %2171, %2170 ]
  %2177 = phi float [ %2167, %2164 ], [ %2172, %2170 ]
  %2178 = phi float [ %2168, %2164 ], [ %2173, %2170 ]
  %2179 = phi float [ %2169, %2164 ], [ %2174, %2170 ]
  %2180 = call float @dx.op.binary.f32(i32 35, float %2176, float -1.000000e+00)  ; FMax(a,b)
  %2181 = call float @dx.op.binary.f32(i32 35, float %2177, float -1.000000e+00)  ; FMax(a,b)
  %2182 = call float @dx.op.binary.f32(i32 35, float %2178, float -1.000000e+00)  ; FMax(a,b)
  %2183 = call float @dx.op.binary.f32(i32 35, float %2179, float -1.000000e+00)  ; FMax(a,b)
  %2184 = call float @dx.op.binary.f32(i32 36, float %2180, float 1.000000e+00)  ; FMin(a,b)
  %2185 = call float @dx.op.binary.f32(i32 36, float %2181, float 1.000000e+00)  ; FMin(a,b)
  %2186 = call float @dx.op.binary.f32(i32 36, float %2182, float 1.000000e+00)  ; FMin(a,b)
  %2187 = call float @dx.op.binary.f32(i32 36, float %2183, float 1.000000e+00)  ; FMin(a,b)
  %2188 = fmul fast float %2184, 1.500000e+00
  %2189 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2186, float %2188)  ; FMad(a,b,c)
  %2190 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2185, float 0.000000e+00)  ; FMad(a,b,c)
  %2191 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2187, float %2190)  ; FMad(a,b,c)
  %2192 = fmul fast float %2184, 0x3FEBB67AE0000000
  %2193 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2186, float %2192)  ; FMad(a,b,c)
  %2194 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2185, float 0.000000e+00)  ; FMad(a,b,c)
  %2195 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2187, float %2194)  ; FMad(a,b,c)
  %2196 = fadd fast float %2189, 5.000000e-01
  %2197 = fadd fast float %2193, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %19, i32 %20, i32 0, float %2196, float %2191, float %2197, float %2195, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2199

; <label>:2198                                    ; preds = %2158
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %19, i32 %20, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2199

; <label>:2199                                    ; preds = %2198, %2175, %2143
  %2200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2201 = extractvalue %dx.types.CBufRet.f32 %2200, 2
  %2202 = fsub fast float %2145, %2201
  %2203 = fdiv fast float %2202, %2201
  %2204 = call float @dx.op.unary.f32(i32 7, float %2203)  ; Saturate(value)
  %2205 = fmul fast float %2204, 2.000000e+00
  %2206 = fsub fast float 3.000000e+00, %2205
  %2207 = fmul fast float %2204, %2204
  %2208 = fmul fast float %2207, %2145
  %2209 = fmul fast float %2208, %2206
  %2210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2211 = extractvalue %dx.types.CBufRet.f32 %2210, 0
  %2212 = extractvalue %dx.types.CBufRet.f32 %2210, 1
  %2213 = extractvalue %dx.types.CBufRet.f32 %2210, 2
  %2214 = call float @dx.op.dot3.f32(i32 55, float %280, float %281, float %282, float %2211, float %2212, float %2213)  ; Dot3(ax,ay,az,bx,by,bz)
  %2215 = fmul fast float %2214, %2144
  %2216 = fcmp fast ogt float %2149, 0.000000e+00
  %2217 = fdiv fast float 1.000000e+00, %2149
  %2218 = fmul fast float %2215, %2217
  %2219 = select i1 %2216, float %2218, float %291
  %2220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2221 = extractvalue %dx.types.CBufRet.f32 %2220, 0
  %2222 = extractvalue %dx.types.CBufRet.f32 %2220, 1
  %2223 = extractvalue %dx.types.CBufRet.f32 %2220, 2
  %2224 = fmul fast float %2221, %244
  %2225 = fmul fast float %2222, %244
  %2226 = fmul fast float %2223, %244
  %2227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2228 = extractvalue %dx.types.CBufRet.f32 %2227, 0
  %2229 = extractvalue %dx.types.CBufRet.f32 %2227, 1
  %2230 = extractvalue %dx.types.CBufRet.f32 %2227, 2
  %2231 = fmul fast float %2228, %245
  %2232 = fmul fast float %2229, %245
  %2233 = fmul fast float %2230, %245
  %2234 = fadd fast float %2231, %2224
  %2235 = fadd fast float %2232, %2225
  %2236 = fadd fast float %2233, %2226
  %2237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2238 = extractvalue %dx.types.CBufRet.f32 %2237, 0
  %2239 = extractvalue %dx.types.CBufRet.f32 %2237, 1
  %2240 = extractvalue %dx.types.CBufRet.f32 %2237, 2
  %2241 = fadd fast float %2234, %2238
  %2242 = fadd fast float %2235, %2239
  %2243 = fadd fast float %2236, %2240
  %2244 = fmul fast float %2241, %2219
  %2245 = fmul fast float %2242, %2219
  %2246 = fmul fast float %2243, %2219
  %2247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2248 = extractvalue %dx.types.CBufRet.f32 %2247, 0
  %2249 = extractvalue %dx.types.CBufRet.f32 %2247, 1
  %2250 = extractvalue %dx.types.CBufRet.f32 %2247, 2
  %2251 = extractvalue %dx.types.CBufRet.f32 %2247, 3
  %2252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2253 = extractvalue %dx.types.CBufRet.f32 %2252, 0
  %2254 = extractvalue %dx.types.CBufRet.f32 %2252, 1
  %2255 = extractvalue %dx.types.CBufRet.f32 %2252, 2
  %2256 = extractvalue %dx.types.CBufRet.f32 %2252, 3
  %2257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2258 = extractvalue %dx.types.CBufRet.f32 %2257, 0
  %2259 = extractvalue %dx.types.CBufRet.f32 %2257, 1
  %2260 = extractvalue %dx.types.CBufRet.f32 %2257, 2
  %2261 = extractvalue %dx.types.CBufRet.f32 %2257, 3
  %2262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2263 = extractvalue %dx.types.CBufRet.f32 %2262, 0
  %2264 = extractvalue %dx.types.CBufRet.f32 %2262, 1
  %2265 = extractvalue %dx.types.CBufRet.f32 %2262, 2
  %2266 = extractvalue %dx.types.CBufRet.f32 %2262, 3
  %2267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2268 = extractvalue %dx.types.CBufRet.f32 %2267, 3
  %2269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2270 = extractvalue %dx.types.CBufRet.f32 %2269, 3
  %2271 = extractvalue %dx.types.CBufRet.f32 %2269, 0
  %2272 = extractvalue %dx.types.CBufRet.f32 %2269, 1
  %2273 = extractvalue %dx.types.CBufRet.f32 %2269, 2
  %2274 = fcmp fast olt float %2273, -5.000000e-01
  %2275 = call float @dx.op.dot3.f32(i32 55, float %2244, float %2245, float %2246, float %2244, float %2245, float %2246)  ; Dot3(ax,ay,az,bx,by,bz)
  %2276 = call float @dx.op.unary.f32(i32 25, float %2275)  ; Rsqrt(value)
  %2277 = fmul fast float %2276, %2275
  %2278 = fmul fast float %2276, %2244
  %2279 = fmul fast float %2276, %2245
  %2280 = fmul fast float %2276, %2246
  %2281 = fadd fast float %2277, %2251
  %2282 = call float @dx.op.dot3.f32(i32 55, float %2278, float %2279, float %2280, float %2248, float %2249, float %2250)  ; Dot3(ax,ay,az,bx,by,bz)
  %2283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2284 = extractvalue %dx.types.CBufRet.i32 %2283, 1
  %2285 = and i32 %2284, 1
  %2286 = icmp ne i32 %2285, 0
  %2287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2288 = extractvalue %dx.types.CBufRet.f32 %2287, 2
  %2289 = fcmp fast ogt float %2288, 0.000000e+00
  %2290 = and i1 %2286, %2289
  br i1 %2290, label %2291, label %2697, !dx.controlflow.hints !79

; <label>:2291                                    ; preds = %2199
  %2292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2293 = extractvalue %dx.types.CBufRet.f32 %2292, 3
  %2294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2295 = extractvalue %dx.types.CBufRet.f32 %2294, 2
  %2296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2297 = extractvalue %dx.types.CBufRet.f32 %2296, 2
  %2298 = fsub fast float %2295, %2297
  %2299 = and i32 %2284, 2
  %2300 = extractvalue %dx.types.CBufRet.i32 %2283, 0
  %2301 = call i32 @dx.op.binary.i32(i32 40, i32 %2300, i32 3)  ; UMin(a,b)
  %2302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2303 = extractvalue %dx.types.CBufRet.f32 %2302, 0
  %2304 = extractvalue %dx.types.CBufRet.f32 %2302, 1
  %2305 = extractvalue %dx.types.CBufRet.f32 %2296, 0
  %2306 = extractvalue %dx.types.CBufRet.f32 %2296, 1
  %2307 = fsub fast float %2303, %2305
  %2308 = fsub fast float %2304, %2306
  %2309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2310 = extractvalue %dx.types.CBufRet.f32 %2309, 0
  %2311 = fcmp fast ogt float %2310, 0.000000e+00
  %2312 = fsub fast float -0.000000e+00, %2307
  %2313 = fsub fast float -0.000000e+00, %2308
  %2314 = call float @dx.op.dot2.f32(i32 54, float %2278, float %2279, float %2278, float %2279)  ; Dot2(ax,ay,bx,by)
  %2315 = call float @dx.op.dot2.f32(i32 54, float %2278, float %2279, float %2312, float %2313)  ; Dot2(ax,ay,bx,by)
  %2316 = fmul fast float %2315, 2.000000e+00
  %2317 = call float @dx.op.dot2.f32(i32 54, float %2312, float %2313, float %2312, float %2313)  ; Dot2(ax,ay,bx,by)
  %2318 = fmul fast float %2310, %2310
  %2319 = fsub fast float %2317, %2318
  %2320 = fmul fast float %2316, %2316
  %2321 = fmul fast float %2314, 4.000000e+00
  %2322 = fmul fast float %2321, %2319
  %2323 = fsub fast float %2320, %2322
  %2324 = fcmp fast ogt float %2323, 0.000000e+00
  br i1 %2324, label %2325, label %2340, !dx.controlflow.hints !80

; <label>:2325                                    ; preds = %2291
  %2326 = fcmp fast ogt float %2316, 0.000000e+00
  %2327 = call float @dx.op.unary.f32(i32 24, float %2323)  ; Sqrt(value)
  %2328 = fsub fast float -0.000000e+00, %2327
  %2329 = select i1 %2326, float %2327, float %2328
  %2330 = fadd fast float %2329, %2316
  %2331 = fmul float %2330, -5.000000e-01
  %2332 = fdiv fast float %2331, %2314
  %2333 = call float @dx.op.binary.f32(i32 35, float %2332, float 0.000000e+00)  ; FMax(a,b)
  %2334 = call float @dx.op.binary.f32(i32 36, float %2277, float %2333)  ; FMin(a,b)
  %2335 = fdiv fast float %2319, %2331
  %2336 = call float @dx.op.binary.f32(i32 35, float %2335, float 0.000000e+00)  ; FMax(a,b)
  %2337 = call float @dx.op.binary.f32(i32 36, float %2277, float %2336)  ; FMin(a,b)
  %2338 = call float @dx.op.binary.f32(i32 36, float %2334, float %2337)  ; FMin(a,b)
  %2339 = call float @dx.op.binary.f32(i32 35, float %2334, float %2337)  ; FMax(a,b)
  br label %2340

; <label>:2340                                    ; preds = %2325, %2291
  %2341 = phi float [ %2339, %2325 ], [ -1.000000e+00, %2291 ]
  %2342 = phi float [ %2338, %2325 ], [ -1.000000e+00, %2291 ]
  %2343 = phi i1 [ true, %2325 ], [ false, %2291 ]
  %2344 = and i1 %2311, %2343
  br i1 %2344, label %2345, label %2347, !dx.controlflow.hints !81

; <label>:2345                                    ; preds = %2340
  %2346 = fcmp fast oeq float %2342, %2341
  br i1 %2346, label %2650, label %2348, !dx.controlflow.hints !82

; <label>:2347                                    ; preds = %2340
  br i1 %2311, label %2650, label %2348, !dx.controlflow.hints !83

; <label>:2348                                    ; preds = %2347, %2345
  %2349 = phi float [ %2277, %2347 ], [ %2341, %2345 ]
  %2350 = phi float [ 0.000000e+00, %2347 ], [ %2342, %2345 ]
  %2351 = icmp ne i32 %2299, 0
  %2352 = fmul fast float %2349, %2280
  %2353 = fadd fast float %2352, %2293
  %2354 = fmul fast float %2353, %2349
  %2355 = select i1 %2351, float 0.000000e+00, float %2354
  %2356 = fcmp fast oeq float %2280, 0.000000e+00
  %2357 = fdiv fast float %2298, %2280
  %2358 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2357)  ; FMax(a,b)
  %2359 = select i1 %2356, float %2349, float %2358
  %2360 = call float @dx.op.binary.f32(i32 36, float %2349, float %2359)  ; FMin(a,b)
  %2361 = fcmp fast ogt float %2280, 0.000000e+00
  %2362 = fcmp fast olt float %2298, 0.000000e+00
  br i1 %2361, label %2363, label %2420, !dx.controlflow.hints !84

; <label>:2363                                    ; preds = %2348
  %2364 = icmp eq i32 %2299, 0
  br i1 %2362, label %2365, label %2409, !dx.controlflow.hints !85

; <label>:2365                                    ; preds = %2363
  %2366 = select i1 %2364, float %2349, float 0.000000e+00
  %2367 = fsub fast float -0.000000e+00, %2366
  %2368 = call float @dx.op.unary.f32(i32 6, float %2367)  ; FAbs(value)
  %2369 = fmul fast float %2366, %2280
  %2370 = fadd fast float %2369, %2293
  %2371 = fmul fast float %2368, %2370
  %2372 = fsub fast float %2355, %2371
  %2373 = fsub fast float %2349, %2368
  %2374 = select i1 %2364, float %2373, float 0.000000e+00
  %2375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2376 = extractvalue %dx.types.CBufRet.f32 %2375, 0
  %2377 = extractvalue %dx.types.CBufRet.f32 %2375, 1
  %2378 = extractvalue %dx.types.CBufRet.f32 %2375, 2
  %2379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2380 = extractvalue %dx.types.CBufRet.f32 %2379, 0
  %2381 = extractvalue %dx.types.CBufRet.f32 %2379, 1
  %2382 = extractvalue %dx.types.CBufRet.f32 %2379, 2
  %2383 = extractvalue %dx.types.CBufRet.f32 %2379, 3
  %2384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2385 = extractvalue %dx.types.CBufRet.f32 %2384, 3
  %2386 = call float @dx.op.binary.f32(i32 36, float %2372, float %2385)  ; FMin(a,b)
  %2387 = fmul fast float %2383, %2374
  %2388 = call float @dx.op.unary.f32(i32 7, float %2387)  ; Saturate(value)
  %2389 = fsub fast float %2380, %2376
  %2390 = fsub fast float %2381, %2377
  %2391 = fsub fast float %2382, %2378
  %2392 = fmul fast float %2388, %2389
  %2393 = fmul fast float %2388, %2390
  %2394 = fmul fast float %2388, %2391
  %2395 = fadd fast float %2392, %2376
  %2396 = fadd fast float %2393, %2377
  %2397 = fadd fast float %2394, %2378
  %2398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2399 = extractvalue %dx.types.CBufRet.f32 %2398, 0
  %2400 = extractvalue %dx.types.CBufRet.f32 %2398, 1
  %2401 = fadd fast float %2400, %2399
  %2402 = call float @dx.op.unary.f32(i32 7, float %2401)  ; Saturate(value)
  %2403 = extractvalue %dx.types.CBufRet.f32 %2398, 2
  %2404 = extractvalue %dx.types.CBufRet.f32 %2398, 3
  %2405 = fadd fast float %2404, %2403
  %2406 = call float @dx.op.unary.f32(i32 7, float %2405)  ; Saturate(value)
  %2407 = fmul fast float %2402, %2386
  %2408 = fmul fast float %2407, %2406
  br label %2650

; <label>:2409                                    ; preds = %2363
  br i1 %2364, label %2410, label %2431, !dx.controlflow.hints !86

; <label>:2410                                    ; preds = %2409
  %2411 = call float @dx.op.binary.f32(i32 36, float %2360, float %2350)  ; FMin(a,b)
  %2412 = fsub fast float %2360, %2411
  %2413 = fsub fast float %2412, %2349
  %2414 = call float @dx.op.unary.f32(i32 6, float %2413)  ; FAbs(value)
  %2415 = fadd fast float %2412, %2349
  %2416 = fmul fast float %2415, %2280
  %2417 = fadd fast float %2416, %2293
  %2418 = fmul fast float %2417, %2414
  %2419 = fsub fast float %2355, %2418
  br label %2431

; <label>:2420                                    ; preds = %2348
  br i1 %2362, label %2421, label %2431, !dx.controlflow.hints !87

; <label>:2421                                    ; preds = %2420
  %2422 = call float @dx.op.binary.f32(i32 35, float %2350, float %2360)  ; FMax(a,b)
  %2423 = icmp eq i32 %2299, 0
  %2424 = select i1 %2423, float %2360, float 0.000000e+00
  %2425 = fsub fast float -0.000000e+00, %2424
  %2426 = call float @dx.op.unary.f32(i32 6, float %2425)  ; FAbs(value)
  %2427 = fmul fast float %2424, %2280
  %2428 = fadd fast float %2427, %2293
  %2429 = fmul fast float %2426, %2428
  %2430 = fsub fast float %2355, %2429
  br label %2431

; <label>:2431                                    ; preds = %2421, %2420, %2410, %2409
  %2432 = phi float [ %2350, %2409 ], [ %2350, %2410 ], [ %2422, %2421 ], [ %2350, %2420 ]
  %2433 = phi float [ 0.000000e+00, %2409 ], [ %2414, %2410 ], [ %2426, %2421 ], [ 0.000000e+00, %2420 ]
  %2434 = phi float [ %2355, %2409 ], [ %2419, %2410 ], [ %2430, %2421 ], [ %2355, %2420 ]
  %2435 = phi float [ %2360, %2409 ], [ %2360, %2410 ], [ %2349, %2421 ], [ %2349, %2420 ]
  %2436 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 0
  store float -1.000000e+00, float* %2436, align 4, !tbaa !88, !noalias !92
  %2437 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 1
  store float -1.000000e+00, float* %2437, align 4, !tbaa !88, !noalias !92
  %2438 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 2
  store float -1.000000e+00, float* %2438, align 4, !tbaa !88, !noalias !92
  %2439 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 0
  store float -1.000000e+00, float* %2439, align 4, !tbaa !88, !noalias !92
  %2440 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 1
  store float -1.000000e+00, float* %2440, align 4, !tbaa !88, !noalias !92
  %2441 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 2
  store float -1.000000e+00, float* %2441, align 4, !tbaa !88, !noalias !92
  %2442 = icmp sgt i32 %2301, 0
  br i1 %2442, label %2443, label %2504

; <label>:2443                                    ; preds = %2431
  br label %2444

; <label>:2444                                    ; preds = %2493, %2443
  %2445 = phi i32 [ %2494, %2493 ], [ 0, %2443 ]
  %2446 = phi i32 [ %2495, %2493 ], [ 0, %2443 ]
  %2447 = add nuw i32 %2446, 171
  %2448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %2447)  ; CBufferLoadLegacy(handle,regIndex)
  %2449 = extractvalue %dx.types.CBufRet.f32 %2448, 0
  %2450 = extractvalue %dx.types.CBufRet.f32 %2448, 1
  %2451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2452 = extractvalue %dx.types.CBufRet.f32 %2451, 0
  %2453 = extractvalue %dx.types.CBufRet.f32 %2451, 1
  %2454 = fsub fast float %2449, %2452
  %2455 = fsub fast float %2450, %2453
  %2456 = extractvalue %dx.types.CBufRet.f32 %2448, 2
  %2457 = fsub fast float -0.000000e+00, %2454
  %2458 = fsub fast float -0.000000e+00, %2455
  %2459 = call float @dx.op.dot2.f32(i32 54, float %2278, float %2279, float %2457, float %2458)  ; Dot2(ax,ay,bx,by)
  %2460 = fmul fast float %2459, 2.000000e+00
  %2461 = call float @dx.op.dot2.f32(i32 54, float %2457, float %2458, float %2457, float %2458)  ; Dot2(ax,ay,bx,by)
  %2462 = fmul fast float %2456, %2456
  %2463 = fsub fast float %2461, %2462
  %2464 = fmul fast float %2460, %2460
  %2465 = fmul fast float %2321, %2463
  %2466 = fsub fast float %2464, %2465
  %2467 = fcmp fast ogt float %2466, 0.000000e+00
  br i1 %2467, label %2468, label %2483, !dx.controlflow.hints !80

; <label>:2468                                    ; preds = %2444
  %2469 = fcmp fast ogt float %2460, 0.000000e+00
  %2470 = call float @dx.op.unary.f32(i32 24, float %2466)  ; Sqrt(value)
  %2471 = fsub fast float -0.000000e+00, %2470
  %2472 = select i1 %2469, float %2470, float %2471
  %2473 = fadd fast float %2472, %2460
  %2474 = fmul float %2473, -5.000000e-01
  %2475 = fdiv fast float %2474, %2314
  %2476 = call float @dx.op.binary.f32(i32 35, float %2475, float 0.000000e+00)  ; FMax(a,b)
  %2477 = call float @dx.op.binary.f32(i32 36, float %2349, float %2476)  ; FMin(a,b)
  %2478 = fdiv fast float %2463, %2474
  %2479 = call float @dx.op.binary.f32(i32 35, float %2478, float 0.000000e+00)  ; FMax(a,b)
  %2480 = call float @dx.op.binary.f32(i32 36, float %2349, float %2479)  ; FMin(a,b)
  %2481 = call float @dx.op.binary.f32(i32 36, float %2477, float %2480)  ; FMin(a,b)
  %2482 = call float @dx.op.binary.f32(i32 35, float %2477, float %2480)  ; FMax(a,b)
  br label %2483

; <label>:2483                                    ; preds = %2468, %2444
  %2484 = phi float [ %2482, %2468 ], [ -1.000000e+00, %2444 ]
  %2485 = phi float [ %2481, %2468 ], [ -1.000000e+00, %2444 ]
  %2486 = phi i1 [ true, %2468 ], [ false, %2444 ]
  br i1 %2486, label %2487, label %2493, !dx.controlflow.hints !103

; <label>:2487                                    ; preds = %2483
  %2488 = call float @dx.op.binary.f32(i32 35, float %2432, float %2485)  ; FMax(a,b)
  %2489 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %2446
  store float %2488, float* %2489, align 4, !tbaa !88, !noalias !92
  %2490 = call float @dx.op.binary.f32(i32 35, float %2432, float %2484)  ; FMax(a,b)
  %2491 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %2446
  store float %2490, float* %2491, align 4, !tbaa !88, !noalias !92
  %2492 = add nsw i32 %2445, 1
  br label %2493

; <label>:2493                                    ; preds = %2487, %2483
  %2494 = phi i32 [ %2492, %2487 ], [ %2445, %2483 ]
  %2495 = add nuw nsw i32 %2446, 1
  %2496 = icmp eq i32 %2495, %2301
  br i1 %2496, label %2497, label %2444

; <label>:2497                                    ; preds = %2493
  %2498 = load float, float* %2438, align 4, !tbaa !88, !alias.scope !104, !noalias !107
  %2499 = load float, float* %2437, align 4, !tbaa !88, !alias.scope !110, !noalias !111
  %2500 = load float, float* %2436, align 4, !tbaa !88, !alias.scope !112, !noalias !113
  %2501 = load float, float* %2441, align 4, !tbaa !88, !alias.scope !114, !noalias !117
  %2502 = load float, float* %2440, align 4, !tbaa !88, !alias.scope !120, !noalias !121
  %2503 = load float, float* %2439, align 4, !tbaa !88, !alias.scope !122, !noalias !123
  br label %2504

; <label>:2504                                    ; preds = %2497, %2431
  %2505 = phi float [ -1.000000e+00, %2431 ], [ %2503, %2497 ]
  %2506 = phi float [ -1.000000e+00, %2431 ], [ %2502, %2497 ]
  %2507 = phi float [ -1.000000e+00, %2431 ], [ %2501, %2497 ]
  %2508 = phi float [ -1.000000e+00, %2431 ], [ %2500, %2497 ]
  %2509 = phi float [ -1.000000e+00, %2431 ], [ %2499, %2497 ]
  %2510 = phi float [ -1.000000e+00, %2431 ], [ %2498, %2497 ]
  %2511 = phi i32 [ 0, %2431 ], [ %2494, %2497 ]
  %2512 = call float @dx.op.binary.f32(i32 36, float %2509, float %2510)  ; FMin(a,b)
  %2513 = call float @dx.op.binary.f32(i32 36, float %2508, float %2512)  ; FMin(a,b)
  %2514 = call float @dx.op.binary.f32(i32 35, float %2508, float %2509)  ; FMax(a,b)
  %2515 = call float @dx.op.binary.f32(i32 36, float %2514, float %2510)  ; FMin(a,b)
  %2516 = call float @dx.op.binary.f32(i32 36, float %2508, float %2509)  ; FMin(a,b)
  %2517 = call float @dx.op.binary.f32(i32 35, float %2516, float %2515)  ; FMax(a,b)
  %2518 = call float @dx.op.binary.f32(i32 35, float %2509, float %2510)  ; FMax(a,b)
  %2519 = call float @dx.op.binary.f32(i32 35, float %2508, float %2518)  ; FMax(a,b)
  store float %2513, float* %2436, align 4, !tbaa !88, !alias.scope !112, !noalias !113
  store float %2517, float* %2437, align 4, !tbaa !88, !alias.scope !110, !noalias !111
  store float %2519, float* %2438, align 4, !tbaa !88, !alias.scope !104, !noalias !107
  %2520 = call float @dx.op.binary.f32(i32 36, float %2506, float %2507)  ; FMin(a,b)
  %2521 = call float @dx.op.binary.f32(i32 36, float %2505, float %2520)  ; FMin(a,b)
  %2522 = call float @dx.op.binary.f32(i32 35, float %2505, float %2506)  ; FMax(a,b)
  %2523 = call float @dx.op.binary.f32(i32 36, float %2522, float %2507)  ; FMin(a,b)
  %2524 = call float @dx.op.binary.f32(i32 36, float %2505, float %2506)  ; FMin(a,b)
  %2525 = call float @dx.op.binary.f32(i32 35, float %2524, float %2523)  ; FMax(a,b)
  %2526 = call float @dx.op.binary.f32(i32 35, float %2506, float %2507)  ; FMax(a,b)
  %2527 = call float @dx.op.binary.f32(i32 35, float %2505, float %2526)  ; FMax(a,b)
  store float %2521, float* %2439, align 4, !tbaa !88, !alias.scope !122, !noalias !123
  store float %2525, float* %2440, align 4, !tbaa !88, !alias.scope !120, !noalias !121
  store float %2527, float* %2441, align 4, !tbaa !88, !alias.scope !114, !noalias !117
  %2528 = sub nsw i32 3, %2511
  %2529 = icmp sgt i32 %2528, 2
  br i1 %2529, label %2530, label %2568, !dx.controlflow.hints !124

; <label>:2530                                    ; preds = %2504
  %2531 = icmp eq i32 %2299, 0
  %2532 = fsub fast float %2349, %2433
  %2533 = select i1 %2531, float %2532, float %2433
  %2534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2535 = extractvalue %dx.types.CBufRet.f32 %2534, 0
  %2536 = extractvalue %dx.types.CBufRet.f32 %2534, 1
  %2537 = extractvalue %dx.types.CBufRet.f32 %2534, 2
  %2538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2539 = extractvalue %dx.types.CBufRet.f32 %2538, 0
  %2540 = extractvalue %dx.types.CBufRet.f32 %2538, 1
  %2541 = extractvalue %dx.types.CBufRet.f32 %2538, 2
  %2542 = extractvalue %dx.types.CBufRet.f32 %2538, 3
  %2543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2544 = extractvalue %dx.types.CBufRet.f32 %2543, 3
  %2545 = call float @dx.op.binary.f32(i32 36, float %2434, float %2544)  ; FMin(a,b)
  %2546 = fmul fast float %2542, %2533
  %2547 = call float @dx.op.unary.f32(i32 7, float %2546)  ; Saturate(value)
  %2548 = fsub fast float %2539, %2535
  %2549 = fsub fast float %2540, %2536
  %2550 = fsub fast float %2541, %2537
  %2551 = fmul fast float %2547, %2548
  %2552 = fmul fast float %2547, %2549
  %2553 = fmul fast float %2547, %2550
  %2554 = fadd fast float %2551, %2535
  %2555 = fadd fast float %2552, %2536
  %2556 = fadd fast float %2553, %2537
  %2557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2558 = extractvalue %dx.types.CBufRet.f32 %2557, 0
  %2559 = extractvalue %dx.types.CBufRet.f32 %2557, 1
  %2560 = fadd fast float %2559, %2558
  %2561 = call float @dx.op.unary.f32(i32 7, float %2560)  ; Saturate(value)
  %2562 = extractvalue %dx.types.CBufRet.f32 %2557, 2
  %2563 = extractvalue %dx.types.CBufRet.f32 %2557, 3
  %2564 = fadd fast float %2563, %2562
  %2565 = call float @dx.op.unary.f32(i32 7, float %2564)  ; Saturate(value)
  %2566 = fmul fast float %2561, %2545
  %2567 = fmul fast float %2566, %2565
  br label %2650

; <label>:2568                                    ; preds = %2504
  %2569 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %2528
  %2570 = load float, float* %2569, align 4, !tbaa !88, !noalias !92
  %2571 = fcmp fast olt float %2570, %2435
  %2572 = icmp sgt i32 %2511, 0
  %2573 = and i1 %2572, %2571
  br i1 %2573, label %2574, label %2611

; <label>:2574                                    ; preds = %2568
  br label %2575

; <label>:2575                                    ; preds = %2604, %2574
  %2576 = phi float [ %2605, %2604 ], [ %2433, %2574 ]
  %2577 = phi float [ %2606, %2604 ], [ %2434, %2574 ]
  %2578 = phi float [ %2586, %2604 ], [ %2570, %2574 ]
  %2579 = phi i32 [ %2583, %2604 ], [ %2528, %2574 ]
  %2580 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %2579
  %2581 = load float, float* %2580, align 4, !tbaa !88, !noalias !92
  %2582 = icmp slt i32 %2579, 2
  %2583 = add nsw i32 %2579, 1
  %2584 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %2583
  %2585 = load float, float* %2584, align 4, !tbaa !88, !noalias !92
  %2586 = select i1 %2582, float %2585, float %2349
  %2587 = call float @dx.op.binary.f32(i32 36, float %2586, float %2581)  ; FMin(a,b)
  %2588 = call float @dx.op.binary.f32(i32 36, float %2435, float %2587)  ; FMin(a,b)
  %2589 = icmp eq i32 %2299, 0
  %2590 = fadd fast float %2588, %2578
  %2591 = fmul fast float %2590, %2280
  %2592 = fadd fast float %2591, %2293
  br i1 %2589, label %2598, label %2593, !dx.controlflow.hints !125

; <label>:2593                                    ; preds = %2575
  %2594 = fsub fast float %2588, %2578
  %2595 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2594)  ; FMax(a,b)
  %2596 = fmul fast float %2595, %2592
  %2597 = fadd fast float %2596, %2577
  br label %2604

; <label>:2598                                    ; preds = %2575
  %2599 = fsub fast float %2578, %2588
  %2600 = call float @dx.op.unary.f32(i32 6, float %2599)  ; FAbs(value)
  %2601 = fadd fast float %2600, %2576
  %2602 = fmul fast float %2600, %2592
  %2603 = fsub fast float %2577, %2602
  br label %2604

; <label>:2604                                    ; preds = %2598, %2593
  %2605 = phi float [ %2595, %2593 ], [ %2601, %2598 ]
  %2606 = phi float [ %2597, %2593 ], [ %2603, %2598 ]
  %2607 = fcmp fast olt float %2586, %2435
  %2608 = icmp slt i32 %2583, 3
  %2609 = and i1 %2608, %2607
  br i1 %2609, label %2575, label %2610

; <label>:2610                                    ; preds = %2604
  br label %2611

; <label>:2611                                    ; preds = %2610, %2568
  %2612 = phi float [ %2433, %2568 ], [ %2605, %2610 ]
  %2613 = phi float [ %2434, %2568 ], [ %2606, %2610 ]
  %2614 = fsub fast float %2349, %2612
  %2615 = select i1 %2351, float %2612, float %2614
  %2616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2617 = extractvalue %dx.types.CBufRet.f32 %2616, 0
  %2618 = extractvalue %dx.types.CBufRet.f32 %2616, 1
  %2619 = extractvalue %dx.types.CBufRet.f32 %2616, 2
  %2620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2621 = extractvalue %dx.types.CBufRet.f32 %2620, 0
  %2622 = extractvalue %dx.types.CBufRet.f32 %2620, 1
  %2623 = extractvalue %dx.types.CBufRet.f32 %2620, 2
  %2624 = extractvalue %dx.types.CBufRet.f32 %2620, 3
  %2625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2626 = extractvalue %dx.types.CBufRet.f32 %2625, 3
  %2627 = call float @dx.op.binary.f32(i32 36, float %2613, float %2626)  ; FMin(a,b)
  %2628 = fmul fast float %2624, %2615
  %2629 = call float @dx.op.unary.f32(i32 7, float %2628)  ; Saturate(value)
  %2630 = fsub fast float %2621, %2617
  %2631 = fsub fast float %2622, %2618
  %2632 = fsub fast float %2623, %2619
  %2633 = fmul fast float %2629, %2630
  %2634 = fmul fast float %2629, %2631
  %2635 = fmul fast float %2629, %2632
  %2636 = fadd fast float %2633, %2617
  %2637 = fadd fast float %2634, %2618
  %2638 = fadd fast float %2635, %2619
  %2639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2640 = extractvalue %dx.types.CBufRet.f32 %2639, 0
  %2641 = extractvalue %dx.types.CBufRet.f32 %2639, 1
  %2642 = fadd fast float %2641, %2640
  %2643 = call float @dx.op.unary.f32(i32 7, float %2642)  ; Saturate(value)
  %2644 = extractvalue %dx.types.CBufRet.f32 %2639, 2
  %2645 = extractvalue %dx.types.CBufRet.f32 %2639, 3
  %2646 = fadd fast float %2645, %2644
  %2647 = call float @dx.op.unary.f32(i32 7, float %2646)  ; Saturate(value)
  %2648 = fmul fast float %2643, %2627
  %2649 = fmul fast float %2648, %2647
  br label %2650

; <label>:2650                                    ; preds = %2611, %2530, %2365, %2347, %2345
  %2651 = phi float [ %2374, %2365 ], [ %2533, %2530 ], [ %2615, %2611 ], [ 0.000000e+00, %2345 ], [ 0.000000e+00, %2347 ]
  %2652 = phi float [ %2408, %2365 ], [ %2567, %2530 ], [ %2649, %2611 ], [ 0.000000e+00, %2345 ], [ 0.000000e+00, %2347 ]
  %2653 = phi float [ %2395, %2365 ], [ %2554, %2530 ], [ %2636, %2611 ], [ 0.000000e+00, %2345 ], [ 0.000000e+00, %2347 ]
  %2654 = phi float [ %2396, %2365 ], [ %2555, %2530 ], [ %2637, %2611 ], [ 0.000000e+00, %2345 ], [ 0.000000e+00, %2347 ]
  %2655 = phi float [ %2397, %2365 ], [ %2556, %2530 ], [ %2638, %2611 ], [ 0.000000e+00, %2345 ], [ 0.000000e+00, %2347 ]
  %2656 = fmul fast float %2288, %2652
  %2657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2658 = extractvalue %dx.types.CBufRet.f32 %2657, 2
  %2659 = fsub fast float %2295, %2658
  %2660 = fcmp fast olt float %2656, -2.000000e+01
  %2661 = call float @dx.op.unary.f32(i32 21, float %2656)  ; Exp(value)
  %2662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2663 = extractvalue %dx.types.CBufRet.f32 %2662, 2
  %2664 = extractvalue %dx.types.CBufRet.f32 %2662, 3
  %2665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2666 = extractvalue %dx.types.CBufRet.f32 %2665, 2
  %2667 = fmul fast float %2664, %2659
  %2668 = call float @dx.op.unary.f32(i32 7, float %2667)  ; Saturate(value)
  %2669 = fsub fast float 1.000000e+00, %2668
  %2670 = fmul fast float %2280, 5.000000e-01
  %2671 = fadd fast float %2670, 5.000000e-01
  %2672 = call float @dx.op.unary.f32(i32 7, float %2671)  ; Saturate(value)
  %2673 = fsub fast float 1.000000e+00, %2672
  %2674 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2669)  ; FMax(a,b)
  %2675 = fdiv fast float %2673, %2674
  %2676 = fsub fast float %2659, %2246
  %2677 = call float @dx.op.unary.f32(i32 6, float %2676)  ; FAbs(value)
  %2678 = fmul fast float %2677, %2663
  %2679 = call float @dx.op.unary.f32(i32 7, float %2675)  ; Saturate(value)
  %2680 = fsub fast float 1.000000e+00, %2678
  %2681 = fmul fast float %2680, %2679
  %2682 = fadd fast float %2681, %2678
  %2683 = fmul fast float %2666, %2659
  %2684 = call float @dx.op.unary.f32(i32 7, float %2683)  ; Saturate(value)
  %2685 = fsub fast float 1.000000e+00, %2682
  %2686 = fmul fast float %2685, %2684
  %2687 = fadd fast float %2686, %2682
  %2688 = call float @dx.op.unary.f32(i32 7, float %2687)  ; Saturate(value)
  %2689 = fadd fast float %2661, -1.000000e+00
  %2690 = select i1 %2660, float -1.000000e+00, float %2689
  %2691 = fmul fast float %2688, %2690
  %2692 = fadd fast float %2691, 1.000000e+00
  %2693 = fsub fast float -0.000000e+00, %2691
  %2694 = fmul fast float %2653, %2693
  %2695 = fmul fast float %2654, %2693
  %2696 = fmul fast float %2655, %2693
  br label %2697

; <label>:2697                                    ; preds = %2650, %2199
  %2698 = phi float [ %2651, %2650 ], [ 0.000000e+00, %2199 ]
  %2699 = phi float [ %2692, %2650 ], [ 1.000000e+00, %2199 ]
  %2700 = phi float [ %2694, %2650 ], [ 0.000000e+00, %2199 ]
  %2701 = phi float [ %2695, %2650 ], [ 0.000000e+00, %2199 ]
  %2702 = phi float [ %2696, %2650 ], [ 0.000000e+00, %2199 ]
  %2703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2704 = extractvalue %dx.types.CBufRet.f32 %2703, 1
  %2705 = fsub fast float 1.000000e+00, %2699
  %2706 = fmul fast float %2705, %2281
  %2707 = fmul fast float %2706, %2704
  %2708 = fsub fast float %2281, %2707
  br i1 %2274, label %2709, label %2738, !dx.controlflow.hints !126

; <label>:2709                                    ; preds = %2697
  %2710 = fmul fast float %2282, %2271
  %2711 = fadd fast float %2710, %2272
  %2712 = call float @dx.op.unary.f32(i32 7, float %2711)  ; Saturate(value)
  %2713 = fmul fast float %2253, %2708
  %2714 = fsub fast float -0.000000e+00, %2713
  %2715 = fmul fast float %2254, %2708
  %2716 = fsub fast float -0.000000e+00, %2715
  %2717 = call float @dx.op.unary.f32(i32 21, float %2714)  ; Exp(value)
  %2718 = call float @dx.op.unary.f32(i32 21, float %2716)  ; Exp(value)
  %2719 = call float @dx.op.binary.f32(i32 35, float %2261, float %2717)  ; FMax(a,b)
  %2720 = call float @dx.op.binary.f32(i32 35, float %2261, float %2718)  ; FMax(a,b)
  %2721 = fsub fast float %2720, %2719
  %2722 = fmul fast float %2721, %2712
  %2723 = fadd fast float %2722, %2719
  %2724 = call float @dx.op.unary.f32(i32 7, float %2723)  ; Saturate(value)
  %2725 = fsub fast float %2258, %2263
  %2726 = fsub fast float %2259, %2264
  %2727 = fsub fast float %2260, %2265
  %2728 = fmul fast float %2712, %2725
  %2729 = fmul fast float %2712, %2726
  %2730 = fmul fast float %2712, %2727
  %2731 = fadd fast float %2728, %2263
  %2732 = fadd fast float %2729, %2264
  %2733 = fadd fast float %2730, %2265
  %2734 = fsub fast float 1.000000e+00, %2724
  %2735 = fmul fast float %2734, %2731
  %2736 = fmul fast float %2734, %2732
  %2737 = fmul fast float %2734, %2733
  br label %2797

; <label>:2738                                    ; preds = %2697
  %2739 = fmul fast float %2708, %2270
  %2740 = call float @dx.op.unary.f32(i32 7, float %2739)  ; Saturate(value)
  %2741 = fsub fast float 2.000000e+00, %2740
  %2742 = fmul fast float %2740, 9.921875e-01
  %2743 = fmul fast float %2742, %2741
  %2744 = fadd fast float %2743, 3.906250e-03
  %2745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %2744, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2746 = extractvalue %dx.types.ResRet.f32 %2745, 0
  %2747 = fsub fast float %2740, %2746
  %2748 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2747)  ; FMax(a,b)
  %2749 = fmul fast float %2256, %2246
  %2750 = call float @dx.op.unary.f32(i32 6, float %2749)  ; FAbs(value)
  %2751 = fcmp fast ogt float %2750, 0x3EB0C6F7A0000000
  br i1 %2751, label %2752, label %2758, !dx.controlflow.hints !127

; <label>:2752                                    ; preds = %2738
  %2753 = fmul fast float %2749, 0xBFF7154760000000
  %2754 = call float @dx.op.unary.f32(i32 21, float %2753)  ; Exp(value)
  %2755 = fsub fast float 1.000000e+00, %2754
  %2756 = fdiv fast float %2755, %2749
  %2757 = fmul fast float %2756, %2266
  br label %2758

; <label>:2758                                    ; preds = %2752, %2738
  %2759 = phi float [ %2757, %2752 ], [ %2266, %2738 ]
  %2760 = fadd fast float %2759, %2268
  %2761 = fmul fast float %2760, %2748
  %2762 = fmul fast float %2253, %2761
  %2763 = fsub fast float -0.000000e+00, %2762
  %2764 = fmul fast float %2254, %2761
  %2765 = fsub fast float -0.000000e+00, %2764
  %2766 = fmul fast float %2255, %2761
  %2767 = fsub fast float -0.000000e+00, %2766
  %2768 = call float @dx.op.unary.f32(i32 21, float %2763)  ; Exp(value)
  %2769 = call float @dx.op.unary.f32(i32 21, float %2765)  ; Exp(value)
  %2770 = call float @dx.op.unary.f32(i32 21, float %2767)  ; Exp(value)
  %2771 = fmul fast float %2282, %2282
  %2772 = fadd fast float %2771, 1.000000e+00
  %2773 = fmul fast float %2772, 0x3FAE8EC8A0000000
  %2774 = fmul fast float %2773, %2263
  %2775 = fmul fast float %2773, %2264
  %2776 = fmul fast float %2773, %2265
  %2777 = fmul fast float %2282, %2261
  %2778 = fsub fast float 1.000000e+00, %2777
  %2779 = fmul fast float %2261, %2261
  %2780 = fsub fast float 1.000000e+00, %2779
  %2781 = fmul fast float %2780, 0x3FB45F3060000000
  %2782 = fmul fast float %2778, %2778
  %2783 = fdiv fast float 1.000000e+00, %2782
  %2784 = fmul fast float %2781, %2783
  %2785 = fmul fast float %2784, %2258
  %2786 = fmul fast float %2784, %2259
  %2787 = fmul fast float %2784, %2260
  %2788 = fadd fast float %2785, %2774
  %2789 = fadd fast float %2786, %2775
  %2790 = fadd fast float %2787, %2776
  %2791 = fsub fast float 1.000000e+00, %2768
  %2792 = fsub fast float 1.000000e+00, %2769
  %2793 = fsub fast float 1.000000e+00, %2770
  %2794 = fmul fast float %2788, %2791
  %2795 = fmul fast float %2789, %2792
  %2796 = fmul fast float %2790, %2793
  br label %2797

; <label>:2797                                    ; preds = %2758, %2709
  %2798 = phi float [ %2735, %2709 ], [ %2794, %2758 ]
  %2799 = phi float [ %2736, %2709 ], [ %2795, %2758 ]
  %2800 = phi float [ %2737, %2709 ], [ %2796, %2758 ]
  %2801 = phi float [ %2724, %2709 ], [ %2768, %2758 ]
  %2802 = phi float [ %2724, %2709 ], [ %2769, %2758 ]
  %2803 = phi float [ %2724, %2709 ], [ %2770, %2758 ]
  br i1 %2290, label %2804, label %3002, !dx.controlflow.hints !128

; <label>:2804                                    ; preds = %2797
  %2805 = extractvalue %dx.types.CBufRet.f32 %2703, 0
  %2806 = fmul fast float %2805, %2705
  %2807 = fsub fast float %2700, %2798
  %2808 = fsub fast float %2701, %2799
  %2809 = fsub fast float %2702, %2800
  %2810 = fmul fast float %2806, %2807
  %2811 = fmul fast float %2806, %2808
  %2812 = fmul fast float %2806, %2809
  %2813 = fadd fast float %2810, %2798
  %2814 = fadd fast float %2811, %2799
  %2815 = fadd fast float %2812, %2800
  %2816 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2801)  ; FMax(a,b)
  %2817 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2802)  ; FMax(a,b)
  %2818 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2803)  ; FMax(a,b)
  %2819 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2699)  ; FMax(a,b)
  %2820 = call float @dx.op.binary.f32(i32 35, float %2698, float %2708)  ; FMax(a,b)
  %2821 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2820)  ; FMax(a,b)
  %2822 = fdiv fast float %2698, %2821
  %2823 = call float @dx.op.unary.f32(i32 7, float %2822)  ; Saturate(value)
  %2824 = fdiv fast float %2708, %2821
  %2825 = call float @dx.op.unary.f32(i32 7, float %2824)  ; Saturate(value)
  %2826 = fcmp fast une float %2819, 1.000000e+00
  br i1 %2826, label %2827, label %2840, !dx.controlflow.hints !129

; <label>:2827                                    ; preds = %2804
  %2828 = call float @dx.op.unary.f32(i32 23, float %2819)  ; Log(value)
  %2829 = fmul fast float %2828, 0x3FE62E4300000000
  %2830 = fmul fast float %2700, %2829
  %2831 = fsub fast float -0.000000e+00, %2830
  %2832 = fmul fast float %2701, %2829
  %2833 = fsub fast float -0.000000e+00, %2832
  %2834 = fmul fast float %2702, %2829
  %2835 = fsub fast float -0.000000e+00, %2834
  %2836 = fsub fast float 1.000000e+00, %2819
  %2837 = fdiv fast float %2831, %2836
  %2838 = fdiv fast float %2833, %2836
  %2839 = fdiv fast float %2835, %2836
  br label %2840

; <label>:2840                                    ; preds = %2827, %2804
  %2841 = phi float [ %2837, %2827 ], [ %2700, %2804 ]
  %2842 = phi float [ %2838, %2827 ], [ %2701, %2804 ]
  %2843 = phi float [ %2839, %2827 ], [ %2702, %2804 ]
  %2844 = phi float [ %2829, %2827 ], [ 0.000000e+00, %2804 ]
  %2845 = fcmp fast une float %2816, 1.000000e+00
  br i1 %2845, label %2846, label %2853, !dx.controlflow.hints !130

; <label>:2846                                    ; preds = %2840
  %2847 = call float @dx.op.unary.f32(i32 23, float %2816)  ; Log(value)
  %2848 = fmul fast float %2847, 0x3FE62E4300000000
  %2849 = fmul fast float %2813, %2848
  %2850 = fsub fast float -0.000000e+00, %2849
  %2851 = fsub fast float 1.000000e+00, %2816
  %2852 = fdiv fast float %2850, %2851
  br label %2853

; <label>:2853                                    ; preds = %2846, %2840
  %2854 = phi float [ %2852, %2846 ], [ %2813, %2840 ]
  %2855 = phi float [ %2848, %2846 ], [ 0.000000e+00, %2840 ]
  %2856 = fcmp fast une float %2817, 1.000000e+00
  br i1 %2856, label %2857, label %2864, !dx.controlflow.hints !130

; <label>:2857                                    ; preds = %2853
  %2858 = call float @dx.op.unary.f32(i32 23, float %2817)  ; Log(value)
  %2859 = fmul fast float %2858, 0x3FE62E4300000000
  %2860 = fmul fast float %2814, %2859
  %2861 = fsub fast float -0.000000e+00, %2860
  %2862 = fsub fast float 1.000000e+00, %2817
  %2863 = fdiv fast float %2861, %2862
  br label %2864

; <label>:2864                                    ; preds = %2857, %2853
  %2865 = phi float [ %2863, %2857 ], [ %2814, %2853 ]
  %2866 = phi float [ %2859, %2857 ], [ 0.000000e+00, %2853 ]
  %2867 = fcmp fast une float %2818, 1.000000e+00
  br i1 %2867, label %2868, label %2875, !dx.controlflow.hints !130

; <label>:2868                                    ; preds = %2864
  %2869 = call float @dx.op.unary.f32(i32 23, float %2818)  ; Log(value)
  %2870 = fmul fast float %2869, 0x3FE62E4300000000
  %2871 = fmul fast float %2815, %2870
  %2872 = fsub fast float -0.000000e+00, %2871
  %2873 = fsub fast float 1.000000e+00, %2818
  %2874 = fdiv fast float %2872, %2873
  br label %2875

; <label>:2875                                    ; preds = %2868, %2864
  %2876 = phi float [ %2874, %2868 ], [ %2815, %2864 ]
  %2877 = phi float [ %2870, %2868 ], [ 0.000000e+00, %2864 ]
  %2878 = fmul fast float %2841, %2825
  %2879 = fmul fast float %2842, %2825
  %2880 = fmul fast float %2843, %2825
  %2881 = fmul fast float %2844, %2825
  %2882 = fmul fast float %2854, %2823
  %2883 = fmul fast float %2865, %2823
  %2884 = fmul fast float %2876, %2823
  %2885 = fmul fast float %2855, %2823
  %2886 = fmul fast float %2866, %2823
  %2887 = fmul fast float %2877, %2823
  %2888 = fadd fast float %2882, %2878
  %2889 = fadd fast float %2883, %2879
  %2890 = fadd fast float %2884, %2880
  %2891 = fadd fast float %2885, %2881
  %2892 = fadd fast float %2886, %2881
  %2893 = fadd fast float %2887, %2881
  %2894 = fcmp fast une float %2891, 0.000000e+00
  br i1 %2894, label %2895, label %2902, !dx.controlflow.hints !131

; <label>:2895                                    ; preds = %2875
  %2896 = fmul fast float %2891, 0x3FF7154760000000
  %2897 = call float @dx.op.unary.f32(i32 21, float %2896)  ; Exp(value)
  %2898 = fsub fast float 1.000000e+00, %2897
  %2899 = fmul fast float %2888, %2898
  %2900 = fsub fast float -0.000000e+00, %2899
  %2901 = fdiv fast float %2900, %2891
  br label %2902

; <label>:2902                                    ; preds = %2895, %2875
  %2903 = phi float [ %2897, %2895 ], [ 1.000000e+00, %2875 ]
  %2904 = phi float [ %2901, %2895 ], [ %2888, %2875 ]
  %2905 = fcmp fast une float %2892, 0.000000e+00
  br i1 %2905, label %2906, label %2913, !dx.controlflow.hints !131

; <label>:2906                                    ; preds = %2902
  %2907 = fmul fast float %2892, 0x3FF7154760000000
  %2908 = call float @dx.op.unary.f32(i32 21, float %2907)  ; Exp(value)
  %2909 = fsub fast float 1.000000e+00, %2908
  %2910 = fmul fast float %2889, %2909
  %2911 = fsub fast float -0.000000e+00, %2910
  %2912 = fdiv fast float %2911, %2892
  br label %2913

; <label>:2913                                    ; preds = %2906, %2902
  %2914 = phi float [ %2908, %2906 ], [ 1.000000e+00, %2902 ]
  %2915 = phi float [ %2912, %2906 ], [ %2889, %2902 ]
  %2916 = fcmp fast une float %2893, 0.000000e+00
  br i1 %2916, label %2917, label %2924, !dx.controlflow.hints !131

; <label>:2917                                    ; preds = %2913
  %2918 = fmul fast float %2893, 0x3FF7154760000000
  %2919 = call float @dx.op.unary.f32(i32 21, float %2918)  ; Exp(value)
  %2920 = fsub fast float 1.000000e+00, %2919
  %2921 = fmul fast float %2890, %2920
  %2922 = fsub fast float -0.000000e+00, %2921
  %2923 = fdiv fast float %2922, %2893
  br label %2924

; <label>:2924                                    ; preds = %2917, %2913
  %2925 = phi float [ %2919, %2917 ], [ 1.000000e+00, %2913 ]
  %2926 = phi float [ %2923, %2917 ], [ %2890, %2913 ]
  %2927 = fcmp fast ogt float %2823, %2825
  br i1 %2927, label %2928, label %2948, !dx.controlflow.hints !132

; <label>:2928                                    ; preds = %2924
  %2929 = fsub fast float 1.000000e+00, %2825
  %2930 = fmul fast float %2841, %2929
  %2931 = fmul fast float %2842, %2929
  %2932 = fmul fast float %2843, %2929
  %2933 = fmul fast float %2844, %2929
  %2934 = fcmp fast une float %2933, 0.000000e+00
  br i1 %2934, label %2935, label %2986, !dx.controlflow.hints !133

; <label>:2935                                    ; preds = %2928
  %2936 = fmul fast float %2933, 0x3FF7154760000000
  %2937 = call float @dx.op.unary.f32(i32 21, float %2936)  ; Exp(value)
  %2938 = fsub fast float 1.000000e+00, %2937
  %2939 = fmul fast float %2930, %2938
  %2940 = fsub fast float -0.000000e+00, %2939
  %2941 = fmul fast float %2931, %2938
  %2942 = fsub fast float -0.000000e+00, %2941
  %2943 = fmul fast float %2932, %2938
  %2944 = fsub fast float -0.000000e+00, %2943
  %2945 = fdiv fast float %2940, %2933
  %2946 = fdiv fast float %2942, %2933
  %2947 = fdiv fast float %2944, %2933
  br label %2986

; <label>:2948                                    ; preds = %2924
  %2949 = fsub fast float 1.000000e+00, %2823
  %2950 = fmul fast float %2854, %2949
  %2951 = fmul fast float %2865, %2949
  %2952 = fmul fast float %2876, %2949
  %2953 = fmul fast float %2855, %2949
  %2954 = fmul fast float %2866, %2949
  %2955 = fmul fast float %2877, %2949
  %2956 = fcmp fast une float %2953, 0.000000e+00
  br i1 %2956, label %2957, label %2964, !dx.controlflow.hints !131

; <label>:2957                                    ; preds = %2948
  %2958 = fmul fast float %2953, 0x3FF7154760000000
  %2959 = call float @dx.op.unary.f32(i32 21, float %2958)  ; Exp(value)
  %2960 = fsub fast float 1.000000e+00, %2959
  %2961 = fmul fast float %2950, %2960
  %2962 = fsub fast float -0.000000e+00, %2961
  %2963 = fdiv fast float %2962, %2953
  br label %2964

; <label>:2964                                    ; preds = %2957, %2948
  %2965 = phi float [ %2963, %2957 ], [ %2950, %2948 ]
  %2966 = phi float [ %2959, %2957 ], [ 1.000000e+00, %2948 ]
  %2967 = fcmp fast une float %2954, 0.000000e+00
  br i1 %2967, label %2968, label %2975, !dx.controlflow.hints !131

; <label>:2968                                    ; preds = %2964
  %2969 = fmul fast float %2954, 0x3FF7154760000000
  %2970 = call float @dx.op.unary.f32(i32 21, float %2969)  ; Exp(value)
  %2971 = fsub fast float 1.000000e+00, %2970
  %2972 = fmul fast float %2951, %2971
  %2973 = fsub fast float -0.000000e+00, %2972
  %2974 = fdiv fast float %2973, %2954
  br label %2975

; <label>:2975                                    ; preds = %2968, %2964
  %2976 = phi float [ %2974, %2968 ], [ %2951, %2964 ]
  %2977 = phi float [ %2970, %2968 ], [ 1.000000e+00, %2964 ]
  %2978 = fcmp fast une float %2955, 0.000000e+00
  br i1 %2978, label %2979, label %2986, !dx.controlflow.hints !131

; <label>:2979                                    ; preds = %2975
  %2980 = fmul fast float %2955, 0x3FF7154760000000
  %2981 = call float @dx.op.unary.f32(i32 21, float %2980)  ; Exp(value)
  %2982 = fsub fast float 1.000000e+00, %2981
  %2983 = fmul fast float %2952, %2982
  %2984 = fsub fast float -0.000000e+00, %2983
  %2985 = fdiv fast float %2984, %2955
  br label %2986

; <label>:2986                                    ; preds = %2979, %2975, %2935, %2928
  %2987 = phi float [ %2985, %2979 ], [ %2947, %2935 ], [ %2932, %2928 ], [ %2952, %2975 ]
  %2988 = phi float [ %2976, %2979 ], [ %2946, %2935 ], [ %2931, %2928 ], [ %2976, %2975 ]
  %2989 = phi float [ %2965, %2979 ], [ %2945, %2935 ], [ %2930, %2928 ], [ %2965, %2975 ]
  %2990 = phi float [ %2981, %2979 ], [ %2937, %2935 ], [ 1.000000e+00, %2928 ], [ 1.000000e+00, %2975 ]
  %2991 = phi float [ %2977, %2979 ], [ %2937, %2935 ], [ 1.000000e+00, %2928 ], [ %2977, %2975 ]
  %2992 = phi float [ %2966, %2979 ], [ %2937, %2935 ], [ 1.000000e+00, %2928 ], [ %2966, %2975 ]
  %2993 = fmul fast float %2992, %2904
  %2994 = fmul fast float %2991, %2915
  %2995 = fmul fast float %2990, %2926
  %2996 = fadd fast float %2993, %2989
  %2997 = fadd fast float %2994, %2988
  %2998 = fadd fast float %2995, %2987
  %2999 = fmul fast float %2992, %2903
  %3000 = fmul fast float %2991, %2914
  %3001 = fmul fast float %2990, %2925
  br label %3002

; <label>:3002                                    ; preds = %2986, %2797
  %3003 = phi float [ %2803, %2797 ], [ %3001, %2986 ]
  %3004 = phi float [ %2802, %2797 ], [ %3000, %2986 ]
  %3005 = phi float [ %2801, %2797 ], [ %2999, %2986 ]
  %3006 = phi float [ %2800, %2797 ], [ %2998, %2986 ]
  %3007 = phi float [ %2799, %2797 ], [ %2997, %2986 ]
  %3008 = phi float [ %2798, %2797 ], [ %2996, %2986 ]
  %3009 = fmul fast float %3005, %2146
  %3010 = fmul fast float %3004, %2147
  %3011 = fmul fast float %3003, %2148
  %3012 = fsub fast float 1.000000e+00, %2209
  %3013 = fmul fast float %3008, %3012
  %3014 = fmul fast float %3007, %3012
  %3015 = fmul fast float %3006, %3012
  %3016 = fadd fast float %3013, %3009
  %3017 = fadd fast float %3014, %3010
  %3018 = fadd fast float %3015, %3011
  %3019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3020 = extractvalue %dx.types.CBufRet.f32 %3019, 2
  %3021 = fmul fast float %3020, %2219
  %3022 = call float @dx.op.unary.f32(i32 7, float %3021)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %19, i32 %20, i32 undef, float %2209, float %2209, float %2209, float %2209, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3024 = extractvalue %dx.types.CBufRet.f32 %3023, 0
  %3025 = fmul fast float %3024, %3016
  %3026 = fmul fast float %3024, %3017
  %3027 = fmul fast float %3024, %3018
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %19, i32 %20, i32 undef, float %3025, float %3026, float %3027, float %3025, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %19, i32 %20, i32 undef, float %3022, float %3022, float %3022, float %3022, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!30}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !17, !23, !26}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !12}
!12 = !{i32 1, i32 164}
!13 = !{i32 5, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
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
!26 = !{!27, !28, !29}
!27 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!28 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!29 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!30 = !{void ()* @cs_fog_raymarching_air_heightmap_particles_brfog, !"cs_fog_raymarching_air_heightmap_particles_brfog", null, !4, !31}
!31 = !{i32 0, i64 272, i32 4, !32}
!32 = !{i32 8, i32 8, i32 1}
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
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = !{!89, !89, i64 0}
!89 = !{!"float", !90, i64 0}
!90 = !{!"omnipotent char", !91, i64 0}
!91 = !{!"Simple C/C++ TBAA"}
!92 = !{!93, !95, !97, !98, !100, !101, !102}
!93 = distinct !{!93, !94, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!94 = distinct !{!94, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!95 = distinct !{!95, !96, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!96 = distinct !{!96, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!97 = distinct !{!97, !96, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!98 = distinct !{!98, !99, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!99 = distinct !{!99, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!100 = distinct !{!100, !99, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!101 = distinct !{!101, !99, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!102 = distinct !{!102, !99, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = !{!105}
!105 = distinct !{!105, !106, !"\01?sort@@YAXAIAM00@Z: %c"}
!106 = distinct !{!106, !"\01?sort@@YAXAIAM00@Z"}
!107 = !{!108, !109, !93, !95, !97, !98, !100, !101, !102}
!108 = distinct !{!108, !106, !"\01?sort@@YAXAIAM00@Z: %a"}
!109 = distinct !{!109, !106, !"\01?sort@@YAXAIAM00@Z: %b"}
!110 = !{!109}
!111 = !{!108, !105, !93, !95, !97, !98, !100, !101, !102}
!112 = !{!108}
!113 = !{!109, !105, !93, !95, !97, !98, !100, !101, !102}
!114 = !{!115}
!115 = distinct !{!115, !116, !"\01?sort@@YAXAIAM00@Z: %c"}
!116 = distinct !{!116, !"\01?sort@@YAXAIAM00@Z"}
!117 = !{!118, !119, !93, !95, !97, !98, !100, !101, !102}
!118 = distinct !{!118, !116, !"\01?sort@@YAXAIAM00@Z: %a"}
!119 = distinct !{!119, !116, !"\01?sort@@YAXAIAM00@Z: %b"}
!120 = !{!119}
!121 = !{!118, !115, !93, !95, !97, !98, !100, !101, !102}
!122 = !{!118}
!123 = !{!119, !115, !93, !95, !97, !98, !100, !101, !102}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 2}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 2}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 2}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 2}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}

