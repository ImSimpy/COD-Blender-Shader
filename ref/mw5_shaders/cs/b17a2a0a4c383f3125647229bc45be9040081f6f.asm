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
; shader hash: b0c5d479f3a5a38b881f90b4414e60ac
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

define void @cs_fog_raymarching_heightmap_particles_brfog() {
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
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 3
  %374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.f32 %374, 0
  %376 = fsub fast float -0.000000e+00, %237
  %377 = fsub fast float -0.000000e+00, %238
  %378 = fsub fast float %373, %239
  %379 = fadd fast float %378, %375
  %380 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %376, float %377, float %379)  ; Dot3(ax,ay,az,bx,by,bz)
  %381 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %382 = fdiv fast float 1.000000e+00, %381
  %383 = fmul fast float %382, %380
  %384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.f32 %384, 2
  %386 = fsub fast float %385, %239
  %387 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %376, float %377, float %386)  ; Dot3(ax,ay,az,bx,by,bz)
  %388 = fmul fast float %382, %387
  %389 = call float @dx.op.binary.f32(i32 36, float %383, float %388)  ; FMin(a,b)
  %390 = call float @dx.op.binary.f32(i32 35, float %383, float %388)  ; FMax(a,b)
  %391 = call float @dx.op.binary.f32(i32 36, float %371, float %389)  ; FMin(a,b)
  %392 = call float @dx.op.binary.f32(i32 35, float %370, float %390)  ; FMax(a,b)
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.f32 %393, 2
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 3
  %397 = fsub fast float %394, %239
  %398 = fadd fast float %397, %396
  %399 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %376, float %377, float %398)  ; Dot3(ax,ay,az,bx,by,bz)
  %400 = fmul fast float %382, %399
  %401 = fcmp fast olt float %400, 0.000000e+00
  %402 = fcmp fast ogt float %282, 0.000000e+00
  %403 = and i1 %402, %401
  br i1 %403, label %408, label %404, !dx.controlflow.hints !37

; <label>:404                                     ; preds = %368
  %405 = fcmp fast olt float %282, 0.000000e+00
  br i1 %405, label %406, label %408, !dx.controlflow.hints !38

; <label>:406                                     ; preds = %404
  %407 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %400)  ; FMax(a,b)
  br label %408

; <label>:408                                     ; preds = %406, %404, %368
  %409 = phi float [ 0.000000e+00, %368 ], [ %407, %406 ], [ 0.000000e+00, %404 ]
  %410 = phi float [ 0.000000e+00, %368 ], [ 0x47EFFFFFE0000000, %406 ], [ %400, %404 ]
  %411 = fcmp fast oeq float %410, 0.000000e+00
  br i1 %411, label %415, label %412, !dx.controlflow.hints !39

; <label>:412                                     ; preds = %408
  %413 = call float @dx.op.binary.f32(i32 36, float %391, float %409)  ; FMin(a,b)
  %414 = call float @dx.op.binary.f32(i32 35, float %392, float %410)  ; FMax(a,b)
  br label %415

; <label>:415                                     ; preds = %412, %408
  %416 = phi i32 [ 1, %412 ], [ 0, %408 ]
  %417 = phi float [ %414, %412 ], [ %392, %408 ]
  %418 = phi float [ %413, %412 ], [ %391, %408 ]
  %419 = fdiv fast float 1.000000e+00, %280
  %420 = fdiv fast float 1.000000e+00, %281
  %421 = fdiv fast float 1.000000e+00, %282
  %422 = call float @dx.op.binary.f32(i32 36, float %301, float %417)  ; FMin(a,b)
  %423 = call float @dx.op.binary.f32(i32 35, float %278, float %418)  ; FMax(a,b)
  %424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.f32 %424, 0
  %426 = fmul fast float %226, 2.000000e+00
  %427 = fadd fast float %426, -1.000000e+00
  %428 = fmul fast float %425, %427
  %429 = fadd fast float %428, %423
  %430 = fcmp fast olt float %429, %422
  %431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %432 = extractvalue %dx.types.CBufRet.f32 %431, 2
  %433 = fcmp fast olt float %432, 1.000000e+00
  %434 = and i1 %430, %433
  br i1 %434, label %435, label %1978

; <label>:435                                     ; preds = %415
  %436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.i32 %436, 1
  %438 = add i32 %437, -1
  %439 = fmul fast float %429, %282
  %440 = fadd fast float %439, %239
  %441 = fmul fast float %429, %281
  %442 = fadd fast float %441, %238
  %443 = fmul fast float %429, %280
  %444 = fadd fast float %443, %237
  br label %445

; <label>:445                                     ; preds = %1948, %435
  %446 = phi i32 [ %1950, %1948 ], [ undef, %435 ]
  %447 = phi float [ %1951, %1948 ], [ undef, %435 ]
  %448 = phi float [ %1952, %1948 ], [ undef, %435 ]
  %449 = phi float [ %1953, %1948 ], [ undef, %435 ]
  %450 = phi float [ %1954, %1948 ], [ undef, %435 ]
  %451 = phi float [ %1955, %1948 ], [ undef, %435 ]
  %452 = phi i32 [ %935, %1948 ], [ undef, %435 ]
  %453 = phi float [ %937, %1948 ], [ undef, %435 ]
  %454 = phi float [ %751, %1948 ], [ undef, %435 ]
  %455 = phi float [ %752, %1948 ], [ undef, %435 ]
  %456 = phi float [ %753, %1948 ], [ undef, %435 ]
  %457 = phi float [ %754, %1948 ], [ undef, %435 ]
  %458 = phi float [ %1956, %1948 ], [ 0.000000e+00, %435 ]
  %459 = phi float [ %1957, %1948 ], [ 1.000000e+00, %435 ]
  %460 = phi float [ %1958, %1948 ], [ 0.000000e+00, %435 ]
  %461 = phi float [ %1959, %1948 ], [ 0.000000e+00, %435 ]
  %462 = phi float [ %1960, %1948 ], [ 0.000000e+00, %435 ]
  %463 = phi float [ %1970, %1948 ], [ %444, %435 ]
  %464 = phi float [ %1971, %1948 ], [ %442, %435 ]
  %465 = phi float [ %1972, %1948 ], [ %440, %435 ]
  %466 = phi float [ %1949, %1948 ], [ %429, %435 ]
  %467 = phi i32 [ %756, %1948 ], [ 10, %435 ]
  %468 = phi i32 [ %648, %1948 ], [ %438, %435 ]
  %469 = phi float [ %1961, %1948 ], [ 0.000000e+00, %435 ]
  %470 = phi float [ %1962, %1948 ], [ 0.000000e+00, %435 ]
  %471 = phi float [ %1963, %1948 ], [ 0.000000e+00, %435 ]
  %472 = phi float [ %1964, %1948 ], [ 0.000000e+00, %435 ]
  %473 = phi float [ %1965, %1948 ], [ 0.000000e+00, %435 ]
  %474 = phi i32 [ %1966, %1948 ], [ 0, %435 ]
  %475 = fsub fast float -0.000000e+00, %464
  %476 = fsub fast float -0.000000e+00, %463
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.f32 %477, 0
  %479 = icmp eq i32 %369, 0
  br i1 %479, label %645, label %480, !dx.controlflow.hints !40

; <label>:480                                     ; preds = %445
  %481 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.i32 %481, 1
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 1
  %485 = fcmp fast ogt float %484, %466
  br i1 %485, label %486, label %488, !dx.controlflow.hints !41

; <label>:486                                     ; preds = %480
  %487 = fsub fast float %484, %466
  br label %635

; <label>:488                                     ; preds = %480
  %489 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %490 = extractvalue %dx.types.CBufRet.i32 %489, 3
  %491 = icmp eq i32 %490, 0
  %492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %493 = extractvalue %dx.types.CBufRet.f32 %492, 2
  %494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %495 = extractvalue %dx.types.CBufRet.f32 %494, 2
  %496 = fsub fast float %493, %465
  %497 = fadd fast float %496, %495
  %498 = fsub fast float 0xC7EFFFFFE0000000, %465
  br i1 %491, label %506, label %499, !dx.controlflow.hints !34

; <label>:499                                     ; preds = %488
  %500 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %476, float %475, float %497)  ; Dot3(ax,ay,az,bx,by,bz)
  %501 = fmul fast float %382, %500
  %502 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %476, float %475, float %498)  ; Dot3(ax,ay,az,bx,by,bz)
  %503 = fmul fast float %382, %502
  %504 = call float @dx.op.binary.f32(i32 36, float %501, float %503)  ; FMin(a,b)
  %505 = call float @dx.op.binary.f32(i32 35, float %501, float %503)  ; FMax(a,b)
  br label %536

; <label>:506                                     ; preds = %488
  %507 = extractvalue %dx.types.CBufRet.f32 %492, 0
  %508 = extractvalue %dx.types.CBufRet.f32 %492, 1
  %509 = extractvalue %dx.types.CBufRet.f32 %494, 0
  %510 = extractvalue %dx.types.CBufRet.f32 %494, 1
  %511 = fsub fast float %507, %463
  %512 = fmul fast float %419, %511
  %513 = fadd fast float %511, %509
  %514 = fmul fast float %513, %419
  %515 = call float @dx.op.binary.f32(i32 36, float %512, float %514)  ; FMin(a,b)
  %516 = call float @dx.op.binary.f32(i32 35, float %512, float %514)  ; FMax(a,b)
  %517 = fsub fast float %508, %464
  %518 = fmul fast float %420, %517
  %519 = fadd fast float %517, %510
  %520 = fmul fast float %519, %420
  %521 = call float @dx.op.binary.f32(i32 36, float %518, float %520)  ; FMin(a,b)
  %522 = call float @dx.op.binary.f32(i32 35, float %515, float %521)  ; FMax(a,b)
  %523 = call float @dx.op.binary.f32(i32 35, float %518, float %520)  ; FMax(a,b)
  %524 = call float @dx.op.binary.f32(i32 36, float %516, float %523)  ; FMin(a,b)
  %525 = fmul fast float %421, %498
  %526 = fmul fast float %421, %497
  %527 = call float @dx.op.binary.f32(i32 36, float %525, float %526)  ; FMin(a,b)
  %528 = call float @dx.op.binary.f32(i32 35, float %522, float %527)  ; FMax(a,b)
  %529 = call float @dx.op.binary.f32(i32 35, float %525, float %526)  ; FMax(a,b)
  %530 = call float @dx.op.binary.f32(i32 36, float %524, float %529)  ; FMin(a,b)
  %531 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %528)  ; FMax(a,b)
  %532 = fcmp fast ult float %530, %531
  br i1 %532, label %536, label %533, !dx.controlflow.hints !35

; <label>:533                                     ; preds = %506
  %534 = call float @dx.op.binary.f32(i32 36, float %528, float %530)  ; FMin(a,b)
  %535 = call float @dx.op.binary.f32(i32 35, float %528, float %530)  ; FMax(a,b)
  br label %536

; <label>:536                                     ; preds = %533, %506, %499
  %537 = phi float [ %504, %499 ], [ %534, %533 ], [ 0.000000e+00, %506 ]
  %538 = phi float [ %505, %499 ], [ %535, %533 ], [ 0.000000e+00, %506 ]
  %539 = fcmp fast ogt float %537, 0.000000e+00
  br i1 %539, label %635, label %540, !dx.controlflow.hints !42

; <label>:540                                     ; preds = %536
  %541 = fcmp fast ugt float %538, 0.000000e+00
  br i1 %541, label %542, label %635, !dx.controlflow.hints !43

; <label>:542                                     ; preds = %540
  %543 = icmp sgt i32 %468, 0
  br i1 %543, label %544, label %629

; <label>:544                                     ; preds = %542
  br label %545

; <label>:545                                     ; preds = %625, %544
  %546 = phi i32 [ %626, %625 ], [ %468, %544 ]
  %547 = sitofp i32 %546 to float
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 0
  %550 = extractvalue %dx.types.CBufRet.f32 %548, 1
  %551 = fsub fast float %463, %549
  %552 = fsub fast float %464, %550
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 0
  %555 = extractvalue %dx.types.CBufRet.f32 %553, 1
  %556 = fmul fast float %551, %554
  %557 = fmul fast float %552, %555
  %558 = fsub fast float 1.000000e+00, %557
  %559 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = extractvalue %dx.types.CBufRet.i32 %559, 3
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %568, label %562, !dx.controlflow.hints !44

; <label>:562                                     ; preds = %545
  %563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %556, float %558, float undef, float undef, i32 0, i32 0, i32 undef, float %547)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %564 = extractvalue %dx.types.ResRet.f32 %563, 0
  %565 = extractvalue %dx.types.ResRet.f32 %563, 1
  %566 = extractvalue %dx.types.ResRet.f32 %563, 2
  %567 = extractvalue %dx.types.ResRet.f32 %563, 3
  br label %574

; <label>:568                                     ; preds = %545
  %569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %556, float %558, float undef, float undef, i32 0, i32 0, i32 undef, float %547)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %570 = extractvalue %dx.types.ResRet.f32 %569, 0
  %571 = extractvalue %dx.types.ResRet.f32 %569, 1
  %572 = extractvalue %dx.types.ResRet.f32 %569, 2
  %573 = extractvalue %dx.types.ResRet.f32 %569, 3
  br label %574

; <label>:574                                     ; preds = %568, %562
  %575 = phi float [ %564, %562 ], [ %570, %568 ]
  %576 = phi float [ %565, %562 ], [ %571, %568 ]
  %577 = phi float [ %566, %562 ], [ %572, %568 ]
  %578 = phi float [ %567, %562 ], [ %573, %568 ]
  %579 = extractvalue %dx.types.CBufRet.f32 %553, 3
  %580 = fmul fast float %579, %575
  %581 = extractvalue %dx.types.CBufRet.f32 %548, 2
  %582 = fadd fast float %580, %581
  %583 = fmul fast float %579, %576
  %584 = fadd fast float %583, %581
  %585 = fmul fast float %579, %577
  %586 = fadd fast float %585, %581
  %587 = and i32 %546, 31
  %588 = shl i32 1, %587
  %589 = uitofp i32 %588 to float
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 3
  %592 = fdiv fast float 1.000000e+00, %591
  %593 = fmul fast float %592, %589
  %594 = fmul fast float %593, %282
  %595 = fadd fast float %594, %465
  %596 = fcmp fast oeq float %578, 0.000000e+00
  %597 = fcmp fast ogt float %465, %584
  %598 = fcmp fast ogt float %595, %584
  %599 = and i1 %597, %598
  %600 = or i1 %596, %599
  br i1 %600, label %601, label %605, !dx.controlflow.hints !45

; <label>:601                                     ; preds = %574
  %602 = add nsw i32 %546, 1
  %603 = add nsw i32 %482, -1
  %604 = call i32 @dx.op.binary.i32(i32 38, i32 %602, i32 %603)  ; IMin(a,b)
  br label %635

; <label>:605                                     ; preds = %574
  %606 = fcmp fast olt float %465, %586
  %607 = fcmp fast olt float %595, %586
  %608 = and i1 %606, %607
  br i1 %608, label %609, label %613, !dx.controlflow.hints !46

; <label>:609                                     ; preds = %605
  %610 = add nsw i32 %546, 1
  %611 = add nsw i32 %482, -1
  %612 = call i32 @dx.op.binary.i32(i32 38, i32 %610, i32 %611)  ; IMin(a,b)
  br label %635

; <label>:613                                     ; preds = %605
  %614 = fcmp fast olt float %465, %582
  %615 = fcmp fast olt float %595, %582
  %616 = and i1 %614, %615
  br i1 %616, label %617, label %625, !dx.controlflow.hints !47

; <label>:617                                     ; preds = %613
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 3
  %620 = extractvalue %dx.types.CBufRet.f32 %553, 2
  %621 = fcmp fast une float %619, %620
  br i1 %621, label %622, label %629, !dx.controlflow.hints !48

; <label>:622                                     ; preds = %617
  %623 = fsub fast float %465, %586
  %624 = call float @dx.op.binary.f32(i32 36, float %593, float %623)  ; FMin(a,b)
  br label %629

; <label>:625                                     ; preds = %613
  %626 = add nsw i32 %546, -1
  %627 = icmp sgt i32 %546, 1
  br i1 %627, label %545, label %628

; <label>:628                                     ; preds = %625
  br label %629

; <label>:629                                     ; preds = %628, %622, %617, %542
  %630 = phi float [ %624, %622 ], [ %593, %617 ], [ 0.000000e+00, %542 ], [ 0.000000e+00, %628 ]
  %631 = phi i32 [ %546, %622 ], [ %546, %617 ], [ %468, %542 ], [ %626, %628 ]
  %632 = add nsw i32 %631, 1
  %633 = add nsw i32 %482, -1
  %634 = call i32 @dx.op.binary.i32(i32 38, i32 %632, i32 %633)  ; IMin(a,b)
  br label %635

; <label>:635                                     ; preds = %629, %609, %601, %540, %536, %486
  %636 = phi float [ %487, %486 ], [ %593, %601 ], [ %593, %609 ], [ %630, %629 ], [ 0x47EFFFFFE0000000, %540 ], [ %537, %536 ]
  %637 = phi i32 [ %369, %486 ], [ %369, %601 ], [ %369, %609 ], [ %369, %629 ], [ 0, %540 ], [ %369, %536 ]
  %638 = phi i32 [ %468, %486 ], [ %604, %601 ], [ %612, %609 ], [ %634, %629 ], [ %468, %540 ], [ %468, %536 ]
  %639 = icmp ne i32 %637, 0
  %640 = zext i1 %639 to i32
  %641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %642 = extractvalue %dx.types.CBufRet.f32 %641, 2
  %643 = call float @dx.op.binary.f32(i32 35, float %636, float %642)  ; FMax(a,b)
  %644 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %643)  ; FMin(a,b)
  br label %645

; <label>:645                                     ; preds = %635, %445
  %646 = phi i32 [ %640, %635 ], [ 0, %445 ]
  %647 = phi float [ %644, %635 ], [ 0x47EFFFFFE0000000, %445 ]
  %648 = phi i32 [ %638, %635 ], [ %468, %445 ]
  %649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %650 = extractvalue %dx.types.CBufRet.f32 %649, 0
  %651 = extractvalue %dx.types.CBufRet.f32 %649, 1
  %652 = fsub fast float %463, %650
  %653 = fsub fast float %464, %651
  %654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %655 = extractvalue %dx.types.CBufRet.f32 %654, 2
  %656 = extractvalue %dx.types.CBufRet.f32 %654, 3
  %657 = fmul fast float %652, %655
  %658 = fmul fast float %653, %656
  %659 = call float @dx.op.binary.f32(i32 36, float %657, float %658)  ; FMin(a,b)
  %660 = fcmp fast olt float %659, 0.000000e+00
  %661 = call float @dx.op.binary.f32(i32 35, float %657, float %658)  ; FMax(a,b)
  %662 = fcmp fast ogt float %661, 1.000000e+00
  %663 = or i1 %660, %662
  %664 = extractvalue %dx.types.CBufRet.f32 %649, 2
  %665 = fcmp fast olt float %465, %664
  %666 = or i1 %663, %665
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 3
  %669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.f32 %669, 0
  %671 = fadd fast float %670, %668
  %672 = fcmp fast ogt float %465, %671
  %673 = or i1 %666, %672
  br i1 %673, label %674, label %703, !dx.controlflow.hints !49

; <label>:674                                     ; preds = %645
  %675 = extractvalue %dx.types.CBufRet.f32 %654, 0
  %676 = extractvalue %dx.types.CBufRet.f32 %654, 1
  %677 = fsub fast float %650, %463
  %678 = fmul fast float %677, %419
  %679 = fadd fast float %677, %675
  %680 = fmul fast float %679, %419
  %681 = call float @dx.op.binary.f32(i32 36, float %678, float %680)  ; FMin(a,b)
  %682 = call float @dx.op.binary.f32(i32 35, float %678, float %680)  ; FMax(a,b)
  %683 = fsub fast float %651, %464
  %684 = fmul fast float %683, %420
  %685 = fadd fast float %683, %676
  %686 = fmul fast float %685, %420
  %687 = call float @dx.op.binary.f32(i32 36, float %684, float %686)  ; FMin(a,b)
  %688 = call float @dx.op.binary.f32(i32 35, float %681, float %687)  ; FMax(a,b)
  %689 = call float @dx.op.binary.f32(i32 35, float %684, float %686)  ; FMax(a,b)
  %690 = call float @dx.op.binary.f32(i32 36, float %682, float %689)  ; FMin(a,b)
  %691 = fsub fast float %664, %465
  %692 = fmul fast float %691, %421
  %693 = fsub fast float %668, %465
  %694 = fadd fast float %693, %670
  %695 = fmul fast float %694, %421
  %696 = call float @dx.op.binary.f32(i32 36, float %692, float %695)  ; FMin(a,b)
  %697 = call float @dx.op.binary.f32(i32 35, float %688, float %696)  ; FMax(a,b)
  %698 = call float @dx.op.binary.f32(i32 35, float %692, float %695)  ; FMax(a,b)
  %699 = call float @dx.op.binary.f32(i32 36, float %690, float %698)  ; FMin(a,b)
  %700 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %697)  ; FMax(a,b)
  %701 = fcmp fast oge float %699, %700
  %702 = select i1 %701, float %697, float 1.000000e+07
  br label %749

; <label>:703                                     ; preds = %645
  %704 = fsub fast float 1.000000e+00, %658
  %705 = icmp eq i32 %467, 0
  br i1 %705, label %734, label %706

; <label>:706                                     ; preds = %703
  br label %707

; <label>:707                                     ; preds = %730, %706
  %708 = phi i32 [ %731, %730 ], [ %467, %706 ]
  %709 = uitofp i32 %708 to float
  %710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %657, float %704, float undef, float undef, i32 0, i32 0, i32 undef, float %709)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %711 = extractvalue %dx.types.ResRet.f32 %710, 0
  %712 = extractvalue %dx.types.ResRet.f32 %710, 1
  %713 = extractvalue %dx.types.ResRet.f32 %710, 2
  %714 = fcmp fast oeq float %711, 0.000000e+00
  %715 = fcmp ule float %465, %713
  %716 = fcmp uge float %465, %712
  %717 = or i1 %716, %715
  %718 = or i1 %714, %717
  br i1 %718, label %719, label %730, !dx.controlflow.hints !50

; <label>:719                                     ; preds = %707
  %720 = extractvalue %dx.types.ResRet.f32 %710, 3
  %721 = extractvalue %dx.types.CBufRet.f32 %654, 0
  %722 = and i32 %708, 31
  %723 = lshr i32 1024, %722
  %724 = uitofp i32 %723 to float
  %725 = fdiv fast float %721, %724
  %726 = add i32 %708, 1
  %727 = uitofp i32 %726 to float
  %728 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %727)  ; FMin(a,b)
  %729 = fptosi float %728 to i32
  br label %749

; <label>:730                                     ; preds = %707
  %731 = add i32 %708, -1
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %733, label %707, !llvm.loop !51

; <label>:733                                     ; preds = %730
  br label %734

; <label>:734                                     ; preds = %733, %703
  %735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %657, float %704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %736 = extractvalue %dx.types.ResRet.f32 %735, 0
  %737 = extractvalue %dx.types.ResRet.f32 %735, 1
  %738 = extractvalue %dx.types.ResRet.f32 %735, 2
  %739 = extractvalue %dx.types.ResRet.f32 %735, 3
  %740 = extractvalue %dx.types.CBufRet.f32 %654, 0
  %741 = fmul fast float %740, 9.765625e-04
  %742 = fcmp fast oeq float %736, 0.000000e+00
  %743 = fcmp ule float %465, %738
  %744 = fcmp uge float %465, %737
  %745 = or i1 %744, %743
  %746 = or i1 %742, %745
  %747 = zext i1 %746 to i32
  %748 = xor i32 %747, 1
  br label %749

; <label>:749                                     ; preds = %734, %719, %674
  %750 = phi float [ %702, %674 ], [ %725, %719 ], [ %741, %734 ]
  %751 = phi float [ %454, %674 ], [ %711, %719 ], [ %736, %734 ]
  %752 = phi float [ %455, %674 ], [ %712, %719 ], [ %737, %734 ]
  %753 = phi float [ %456, %674 ], [ %713, %719 ], [ %738, %734 ]
  %754 = phi float [ %457, %674 ], [ %720, %719 ], [ %739, %734 ]
  %755 = phi i32 [ 0, %674 ], [ 0, %719 ], [ %748, %734 ]
  %756 = phi i32 [ 10, %674 ], [ %729, %719 ], [ 1, %734 ]
  %757 = icmp eq i32 %755, 0
  %758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %759 = extractvalue %dx.types.CBufRet.f32 %758, 2
  %760 = call float @dx.op.binary.f32(i32 35, float %750, float %759)  ; FMax(a,b)
  %761 = call float @dx.op.binary.f32(i32 36, float %647, float %760)  ; FMin(a,b)
  %762 = icmp eq i32 %416, 0
  br i1 %762, label %934, label %763, !dx.controlflow.hints !53

; <label>:763                                     ; preds = %749
  %764 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.i32 %764, 1
  %766 = and i32 %765, 1
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %768, label %925, !dx.controlflow.hints !54

; <label>:768                                     ; preds = %763
  %769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.f32 %769, 2
  %771 = extractvalue %dx.types.CBufRet.f32 %769, 3
  %772 = fmul fast float %770, %463
  %773 = fmul fast float %771, %464
  %774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %775 = extractvalue %dx.types.CBufRet.f32 %774, 0
  %776 = extractvalue %dx.types.CBufRet.f32 %774, 1
  %777 = fadd fast float %772, %775
  %778 = fadd fast float %773, %776
  %779 = call float @dx.op.unary.f32(i32 7, float %777)  ; Saturate(value)
  %780 = call float @dx.op.unary.f32(i32 7, float %778)  ; Saturate(value)
  %781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %779, float %780, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %782 = extractvalue %dx.types.ResRet.f32 %781, 0
  %783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %784 = extractvalue %dx.types.CBufRet.f32 %783, 0
  %785 = fmul fast float %784, %782
  %786 = fsub fast float %777, %779
  %787 = fsub fast float %778, %780
  %788 = extractvalue %dx.types.CBufRet.f32 %769, 0
  %789 = extractvalue %dx.types.CBufRet.f32 %769, 1
  %790 = fmul fast float %788, %786
  %791 = fmul fast float %789, %787
  %792 = fmul fast float %790, %790
  %793 = fmul fast float %791, %791
  %794 = fadd fast float %792, %793
  %795 = call float @dx.op.unary.f32(i32 24, float %794)  ; Sqrt(value)
  %796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %797 = extractvalue %dx.types.CBufRet.f32 %796, 3
  %798 = fmul fast float %797, %795
  %799 = call float @dx.op.unary.f32(i32 7, float %798)  ; Saturate(value)
  %800 = extractvalue %dx.types.CBufRet.f32 %796, 2
  %801 = fsub fast float %800, %785
  %802 = fmul fast float %801, %799
  %803 = extractvalue %dx.types.CBufRet.f32 %783, 1
  %804 = fsub fast float %465, %785
  %805 = fsub fast float %804, %803
  %806 = fsub fast float %805, %802
  %807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %808 = extractvalue %dx.types.CBufRet.f32 %807, 2
  %809 = fsub fast float %806, %808
  %810 = fcmp fast olt float %809, 0.000000e+00
  %811 = call float @dx.op.unary.f32(i32 6, float %809)  ; FAbs(value)
  %812 = extractvalue %dx.types.CBufRet.i32 %764, 0
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %867, label %814

; <label>:814                                     ; preds = %768
  br label %815

; <label>:815                                     ; preds = %854, %814
  %816 = phi i32 [ %860, %854 ], [ 1, %814 ]
  %817 = phi float [ %862, %854 ], [ 0x47EFFFFFE0000000, %814 ]
  %818 = phi i32 [ %863, %854 ], [ 0, %814 ]
  %819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %820 = extractvalue %dx.types.CBufRet.f32 %819, 1
  %821 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %822 = extractvalue %dx.types.CBufRet.i32 %821, 1
  %823 = and i32 %822, 8
  %824 = icmp eq i32 %823, 0
  %825 = fcmp fast ogt float %820, %806
  %826 = or i1 %825, %824
  %827 = add i32 %818, 171
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %827)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 0
  %830 = extractvalue %dx.types.CBufRet.f32 %828, 1
  %831 = extractvalue %dx.types.CBufRet.f32 %828, 2
  br i1 %826, label %832, label %838, !dx.controlflow.hints !55

; <label>:832                                     ; preds = %815
  %833 = fsub fast float %829, %463
  %834 = fsub fast float %830, %464
  %835 = fmul fast float %833, %833
  %836 = fmul fast float %834, %834
  %837 = fadd fast float %835, %836
  br label %854

; <label>:838                                     ; preds = %815
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 2
  %841 = extractvalue %dx.types.CBufRet.f32 %819, 2
  %842 = fmul fast float %841, %840
  %843 = fsub fast float %842, %820
  %844 = fdiv fast float %831, %843
  %845 = fsub fast float %463, %829
  %846 = fsub fast float %464, %830
  %847 = fsub fast float %806, %820
  %848 = fmul fast float %844, %847
  %849 = fmul fast float %845, %845
  %850 = fmul fast float %846, %846
  %851 = fadd fast float %849, %850
  %852 = fmul fast float %848, %848
  %853 = fadd fast float %851, %852
  br label %854

; <label>:854                                     ; preds = %838, %832
  %855 = phi float [ %837, %832 ], [ %853, %838 ]
  %856 = call float @dx.op.unary.f32(i32 24, float %855)  ; Sqrt(value)
  %857 = fsub float %831, %856
  %858 = fcmp fast olt float %857, 0.000000e+00
  %859 = zext i1 %858 to i32
  %860 = and i32 %859, %816
  %861 = call float @dx.op.unary.f32(i32 6, float %857)  ; FAbs(value)
  %862 = call float @dx.op.binary.f32(i32 36, float %817, float %861)  ; FMin(a,b)
  %863 = add i32 %818, 1
  %864 = extractvalue %dx.types.CBufRet.i32 %821, 0
  %865 = icmp ult i32 %863, %864
  br i1 %865, label %815, label %866

; <label>:866                                     ; preds = %854
  br label %867

; <label>:867                                     ; preds = %866, %768
  %868 = phi i32 [ 1, %768 ], [ %860, %866 ]
  %869 = phi float [ 0x47EFFFFFE0000000, %768 ], [ %862, %866 ]
  br label %870

; <label>:870                                     ; preds = %870, %867
  %871 = phi i32 [ %868, %867 ], [ %910, %870 ]
  %872 = phi float [ 0x47EFFFFFE0000000, %867 ], [ %912, %870 ]
  %873 = phi i32 [ 0, %867 ], [ %913, %870 ]
  %874 = add nuw nsw i32 %873, 191
  %875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %874)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.f32 %875, 0
  %877 = extractvalue %dx.types.CBufRet.f32 %875, 1
  %878 = extractvalue %dx.types.CBufRet.f32 %875, 2
  %879 = add nuw nsw i32 %873, 195
  %880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %879)  ; CBufferLoadLegacy(handle,regIndex)
  %881 = extractvalue %dx.types.CBufRet.f32 %880, 0
  %882 = extractvalue %dx.types.CBufRet.f32 %880, 1
  %883 = extractvalue %dx.types.CBufRet.f32 %880, 2
  %884 = fsub fast float %463, %876
  %885 = fsub fast float %464, %877
  %886 = fsub fast float %806, %878
  %887 = call float @dx.op.unary.f32(i32 6, float %884)  ; FAbs(value)
  %888 = call float @dx.op.unary.f32(i32 6, float %885)  ; FAbs(value)
  %889 = call float @dx.op.unary.f32(i32 6, float %886)  ; FAbs(value)
  %890 = fsub fast float %887, %881
  %891 = fsub fast float %888, %882
  %892 = fsub fast float %889, %883
  %893 = call float @dx.op.binary.f32(i32 35, float %890, float 0.000000e+00)  ; FMax(a,b)
  %894 = call float @dx.op.binary.f32(i32 35, float %891, float 0.000000e+00)  ; FMax(a,b)
  %895 = call float @dx.op.binary.f32(i32 35, float %892, float 0.000000e+00)  ; FMax(a,b)
  %896 = fmul fast float %893, %893
  %897 = fmul fast float %894, %894
  %898 = fadd fast float %897, %896
  %899 = fmul fast float %895, %895
  %900 = fadd fast float %898, %899
  %901 = call float @dx.op.unary.f32(i32 24, float %900)  ; Sqrt(value)
  %902 = call float @dx.op.binary.f32(i32 35, float %891, float %892)  ; FMax(a,b)
  %903 = call float @dx.op.binary.f32(i32 35, float %890, float %902)  ; FMax(a,b)
  %904 = call float @dx.op.binary.f32(i32 36, float %903, float 0.000000e+00)  ; FMin(a,b)
  %905 = fadd fast float %904, %901
  %906 = fsub fast float -0.000000e+00, %905
  %907 = fcmp ogt float %905, -0.000000e+00
  %908 = icmp ne i32 %871, 0
  %909 = and i1 %908, %907
  %910 = zext i1 %909 to i32
  %911 = call float @dx.op.unary.f32(i32 6, float %906)  ; FAbs(value)
  %912 = call float @dx.op.binary.f32(i32 36, float %872, float %911)  ; FMin(a,b)
  %913 = add nuw nsw i32 %873, 1
  %914 = icmp eq i32 %913, 4
  br i1 %914, label %915, label %870

; <label>:915                                     ; preds = %870
  %916 = call float @dx.op.binary.f32(i32 36, float %811, float %912)  ; FMin(a,b)
  %917 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.i32 %917, 1
  %919 = and i32 %918, 2
  %920 = icmp ne i32 %919, 0
  %921 = xor i1 %909, %920
  %922 = call float @dx.op.binary.f32(i32 36, float %916, float %869)  ; FMin(a,b)
  %923 = and i1 %921, %810
  %924 = zext i1 %923 to i32
  br label %925

; <label>:925                                     ; preds = %915, %763
  %926 = phi i32 [ %452, %763 ], [ %924, %915 ]
  %927 = phi float [ 0.000000e+00, %763 ], [ %922, %915 ]
  %928 = phi float [ %465, %763 ], [ %806, %915 ]
  %929 = icmp ne i32 %926, 0
  %930 = extractvalue %dx.types.CBufRet.f32 %758, 3
  %931 = call float @dx.op.binary.f32(i32 35, float %927, float %930)  ; FMax(a,b)
  %932 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %931)  ; FMin(a,b)
  %933 = zext i1 %929 to i32
  br label %934

; <label>:934                                     ; preds = %925, %749
  %935 = phi i32 [ %926, %925 ], [ %452, %749 ]
  %936 = phi i32 [ %933, %925 ], [ 0, %749 ]
  %937 = phi float [ %928, %925 ], [ %453, %749 ]
  %938 = phi float [ %932, %925 ], [ 0x47EFFFFFE0000000, %749 ]
  %939 = extractvalue %dx.types.CBufRet.f32 %477, 2
  %940 = fmul fast float %939, %466
  %941 = call float @dx.op.unary.f32(i32 23, float %940)  ; Log(value)
  %942 = fmul fast float %941, 0x3FE62E4300000000
  %943 = call float @dx.op.binary.f32(i32 35, float %942, float 1.000000e+00)  ; FMax(a,b)
  %944 = fmul fast float %943, %938
  %945 = call float @dx.op.binary.f32(i32 36, float %944, float %761)  ; FMin(a,b)
  %946 = call float @dx.op.binary.f32(i32 35, float %945, float %478)  ; FMax(a,b)
  %947 = fsub fast float %422, %466
  %948 = fadd fast float %947, 0x3F1A36E2E0000000
  %949 = call float @dx.op.binary.f32(i32 36, float %948, float %946)  ; FMin(a,b)
  %950 = icmp eq i32 %646, 0
  br i1 %950, label %1056, label %951, !dx.controlflow.hints !56

; <label>:951                                     ; preds = %934
  %952 = fcmp fast olt float %948, %946
  %953 = fmul fast float %282, %225
  %954 = fmul fast float %953, %949
  %955 = fadd fast float %954, %465
  %956 = fmul fast float %282, %226
  %957 = fmul fast float %956, %949
  %958 = fadd fast float %957, %465
  %959 = fmul fast float %282, %227
  %960 = fmul fast float %959, %949
  %961 = fadd fast float %960, %465
  br i1 %952, label %962, label %967, !dx.controlflow.hints !57

; <label>:962                                     ; preds = %951
  %963 = fmul fast float %949, %280
  %964 = fmul fast float %949, %281
  %965 = fadd fast float %963, %463
  %966 = fadd fast float %964, %464
  br label %967

; <label>:967                                     ; preds = %962, %951
  %968 = phi float [ %965, %962 ], [ %463, %951 ]
  %969 = phi float [ %966, %962 ], [ %464, %951 ]
  %970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %971 = extractvalue %dx.types.CBufRet.f32 %970, 0
  %972 = extractvalue %dx.types.CBufRet.f32 %970, 1
  %973 = fsub fast float %968, %971
  %974 = fsub fast float %969, %972
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 0
  %977 = extractvalue %dx.types.CBufRet.f32 %975, 1
  %978 = fmul fast float %973, %976
  %979 = fmul fast float %974, %977
  %980 = fsub fast float 1.000000e+00, %979
  %981 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.i32 %981, 3
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %990, label %984, !dx.controlflow.hints !44

; <label>:984                                     ; preds = %967
  %985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %978, float %980, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %986 = extractvalue %dx.types.ResRet.f32 %985, 0
  %987 = extractvalue %dx.types.ResRet.f32 %985, 1
  %988 = extractvalue %dx.types.ResRet.f32 %985, 2
  %989 = extractvalue %dx.types.ResRet.f32 %985, 3
  br label %996

; <label>:990                                     ; preds = %967
  %991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %978, float %980, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %992 = extractvalue %dx.types.ResRet.f32 %991, 0
  %993 = extractvalue %dx.types.ResRet.f32 %991, 1
  %994 = extractvalue %dx.types.ResRet.f32 %991, 2
  %995 = extractvalue %dx.types.ResRet.f32 %991, 3
  br label %996

; <label>:996                                     ; preds = %990, %984
  %997 = phi float [ %986, %984 ], [ %992, %990 ]
  %998 = phi float [ %987, %984 ], [ %993, %990 ]
  %999 = phi float [ %988, %984 ], [ %994, %990 ]
  %1000 = phi float [ %989, %984 ], [ %995, %990 ]
  %1001 = extractvalue %dx.types.CBufRet.f32 %975, 3
  %1002 = fmul fast float %1001, %998
  %1003 = fmul fast float %1002, %997
  %1004 = fsub fast float %1002, %1003
  %1005 = fcmp fast ole float %1004, 0.000000e+00
  %1006 = extractvalue %dx.types.CBufRet.f32 %970, 2
  %1007 = fadd fast float %1003, %1006
  %1008 = fmul fast float %1001, %999
  %1009 = fadd fast float %1008, %1006
  %1010 = fdiv fast float 1.000000e+00, %1004
  %1011 = select i1 %1005, float 1.000000e+06, float %1010
  %1012 = fsub fast float %955, %1007
  %1013 = fmul fast float %1011, %1012
  %1014 = call float @dx.op.unary.f32(i32 7, float %1013)  ; Saturate(value)
  %1015 = extractvalue %dx.types.CBufRet.f32 %975, 2
  %1016 = fmul fast float %1015, %1014
  %1017 = fsub fast float %1015, %1016
  %1018 = fcmp fast olt float %955, %1009
  %1019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1020 = extractvalue %dx.types.CBufRet.f32 %1019, 3
  %1021 = select i1 %1018, float %1020, float 1.000000e+00
  %1022 = fmul fast float %1017, %1021
  %1023 = fsub fast float %958, %1007
  %1024 = fmul fast float %1011, %1023
  %1025 = call float @dx.op.unary.f32(i32 7, float %1024)  ; Saturate(value)
  %1026 = fmul fast float %1015, %1025
  %1027 = fsub fast float %1015, %1026
  %1028 = fcmp fast olt float %958, %1009
  %1029 = select i1 %1028, float %1020, float 1.000000e+00
  %1030 = fmul fast float %1027, %1029
  %1031 = fadd fast float %1030, %1022
  %1032 = fsub fast float %961, %1007
  %1033 = fmul fast float %1011, %1032
  %1034 = call float @dx.op.unary.f32(i32 7, float %1033)  ; Saturate(value)
  %1035 = fmul fast float %1015, %1034
  %1036 = fsub fast float %1015, %1035
  %1037 = fcmp fast olt float %961, %1009
  %1038 = select i1 %1037, float %1020, float 1.000000e+00
  %1039 = fmul fast float %1036, %1038
  %1040 = fadd fast float %1031, %1039
  %1041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.f32 %1041, 2
  %1043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %1044 = extractvalue %dx.types.CBufRet.f32 %1043, 0
  %1045 = extractvalue %dx.types.CBufRet.f32 %1043, 1
  %1046 = extractvalue %dx.types.CBufRet.f32 %1043, 2
  %1047 = fmul fast float %949, 0x3FD5555560000000
  %1048 = fmul fast float %1047, %1000
  %1049 = fmul fast float %1048, %1042
  %1050 = fmul fast float %1049, %1040
  %1051 = extractvalue %dx.types.CBufRet.f32 %1019, 0
  %1052 = fmul fast float %1050, %1044
  %1053 = fmul fast float %1050, %1045
  %1054 = fmul fast float %1050, %1046
  %1055 = fmul fast float %1050, %1051
  br label %1056

; <label>:1056                                    ; preds = %996, %934
  %1057 = phi float [ %1050, %996 ], [ 0.000000e+00, %934 ]
  %1058 = phi float [ %1055, %996 ], [ 0.000000e+00, %934 ]
  %1059 = phi float [ %1052, %996 ], [ 0.000000e+00, %934 ]
  %1060 = phi float [ %1053, %996 ], [ 0.000000e+00, %934 ]
  %1061 = phi float [ %1054, %996 ], [ 0.000000e+00, %934 ]
  br i1 %757, label %1204, label %1062, !dx.controlflow.hints !58

; <label>:1062                                    ; preds = %1056
  %1063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1064 = extractvalue %dx.types.CBufRet.f32 %1063, 0
  %1065 = extractvalue %dx.types.CBufRet.f32 %1063, 1
  %1066 = extractvalue %dx.types.CBufRet.f32 %1063, 2
  %1067 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1068 = extractvalue %dx.types.CBufRet.i32 %1067, 0
  %1069 = icmp ne i32 %1068, 0
  %1070 = zext i1 %1069 to i32
  %1071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.i32 %1071, 0
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1107, label %1074

; <label>:1074                                    ; preds = %1062
  br label %1075

; <label>:1075                                    ; preds = %1102, %1074
  %1076 = phi i32 [ %1103, %1102 ], [ 0, %1074 ]
  %1077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1076, i32 0)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.f32 %1077, 0
  %1079 = extractvalue %dx.types.ResRet.f32 %1077, 1
  %1080 = extractvalue %dx.types.ResRet.f32 %1077, 2
  %1081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1076, i32 16)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.ResRet.f32 %1081, 2
  %1085 = fsub fast float %1078, %1082
  %1086 = fsub fast float %1079, %1083
  %1087 = fsub fast float %1080, %1084
  %1088 = fadd fast float %1082, %1078
  %1089 = fadd fast float %1083, %1079
  %1090 = fadd fast float %1084, %1080
  %1091 = fcmp fast olt float %463, %1085
  %1092 = fcmp fast olt float %464, %1086
  %1093 = fcmp fast olt float %465, %1087
  %1094 = or i1 %1091, %1092
  %1095 = or i1 %1093, %1094
  %1096 = fcmp fast ogt float %463, %1088
  %1097 = fcmp fast ogt float %464, %1089
  %1098 = fcmp fast ogt float %465, %1090
  %1099 = or i1 %1096, %1097
  %1100 = or i1 %1098, %1099
  %1101 = or i1 %1095, %1100
  br i1 %1101, label %1102, label %1105, !dx.controlflow.hints !59

; <label>:1102                                    ; preds = %1075
  %1103 = add nuw i32 %1076, 1
  %1104 = icmp ult i32 %1103, %1072
  br i1 %1104, label %1075, label %1105

; <label>:1105                                    ; preds = %1102, %1075
  %1106 = phi i32 [ 255, %1102 ], [ %1076, %1075 ]
  br label %1107

; <label>:1107                                    ; preds = %1105, %1062
  %1108 = phi i32 [ 255, %1062 ], [ %1106, %1105 ]
  %1109 = icmp eq i32 %1108, 255
  br i1 %1109, label %1119, label %1110, !dx.controlflow.hints !60

; <label>:1110                                    ; preds = %1107
  %1111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1108, i32 32)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.f32 %1111, 0
  %1113 = extractvalue %dx.types.ResRet.f32 %1111, 1
  %1114 = extractvalue %dx.types.ResRet.f32 %1111, 2
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1108, i32 156)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = icmp ne i32 %1116, 0
  %1118 = zext i1 %1117 to i32
  br label %1119

; <label>:1119                                    ; preds = %1110, %1107
  %1120 = phi float [ %1112, %1110 ], [ %1064, %1107 ]
  %1121 = phi float [ %1113, %1110 ], [ %1065, %1107 ]
  %1122 = phi float [ %1114, %1110 ], [ %1066, %1107 ]
  %1123 = phi i32 [ %1118, %1110 ], [ %1070, %1107 ]
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1125, label %1194, !dx.controlflow.hints !61

; <label>:1125                                    ; preds = %1119
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 3
  %1128 = extractvalue %dx.types.CBufRet.f32 %667, 0
  %1129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1129, 2
  %1131 = extractvalue %dx.types.CBufRet.f32 %1129, 3
  br i1 %1109, label %1142, label %1132, !dx.controlflow.hints !62

; <label>:1132                                    ; preds = %1125
  %1133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1108, i32 60)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.f32 %1133, 0
  %1135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1108, i32 64)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.f32 %1135, 0
  %1137 = extractvalue %dx.types.ResRet.f32 %1135, 1
  %1138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1108, i32 72)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1108, i32 96)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 0
  br label %1142

; <label>:1142                                    ; preds = %1132, %1125
  %1143 = phi float [ %1134, %1132 ], [ %670, %1125 ]
  %1144 = phi float [ %1139, %1132 ], [ %668, %1125 ]
  %1145 = phi float [ %1141, %1132 ], [ %1128, %1125 ]
  %1146 = phi float [ %1136, %1132 ], [ %1130, %1125 ]
  %1147 = phi float [ %1137, %1132 ], [ %1131, %1125 ]
  %1148 = call float @dx.op.binary.f32(i32 35, float %751, float 0.000000e+00)  ; FMax(a,b)
  %1149 = call float @dx.op.binary.f32(i32 36, float %1148, float 1.000000e+00)  ; FMin(a,b)
  %1150 = call float @dx.op.unary.f32(i32 24, float %1149)  ; Sqrt(value)
  %1151 = call float @dx.op.binary.f32(i32 35, float %754, float 0x3F847AE140000000)  ; FMax(a,b)
  %1152 = fsub fast float %752, %465
  %1153 = fsub fast float %465, %753
  %1154 = call float @dx.op.binary.f32(i32 36, float %1153, float %1152)  ; FMin(a,b)
  %1155 = fdiv fast float %1154, %1151
  %1156 = call float @dx.op.unary.f32(i32 7, float %1155)  ; Saturate(value)
  %1157 = fsub fast float %465, %1144
  %1158 = fdiv fast float %1157, %1143
  %1159 = call float @dx.op.unary.f32(i32 7, float %1158)  ; Saturate(value)
  %1160 = fsub fast float 1.000000e+00, %1159
  %1161 = fmul float %1156, %1160
  %1162 = fmul float %1161, %1161
  %1163 = fmul fast float %1150, %1127
  %1164 = fmul fast float %1163, %1162
  %1165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1166 = extractvalue %dx.types.CBufRet.f32 %1165, 2
  %1167 = extractvalue %dx.types.CBufRet.f32 %1165, 1
  %1168 = fsub fast float %1164, %1167
  %1169 = fsub fast float %1166, %1167
  %1170 = fdiv fast float %1168, %1169
  %1171 = call float @dx.op.unary.f32(i32 7, float %1170)  ; Saturate(value)
  %1172 = fmul fast float %1171, %1145
  %1173 = fcmp fast ogt float %1147, 0.000000e+00
  br i1 %1173, label %1174, label %1194, !dx.controlflow.hints !63

; <label>:1174                                    ; preds = %1142
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.CBufRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.CBufRet.f32 %1175, 2
  %1179 = fsub fast float %463, %1176
  %1180 = fsub fast float %464, %1177
  %1181 = fsub fast float %465, %1178
  %1182 = fmul fast float %1179, %1179
  %1183 = fmul fast float %1180, %1180
  %1184 = fadd fast float %1182, %1183
  %1185 = fmul fast float %1181, %1181
  %1186 = fadd fast float %1184, %1185
  %1187 = call float @dx.op.unary.f32(i32 24, float %1186)  ; Sqrt(value)
  %1188 = fsub fast float %1187, %1146
  %1189 = fsub fast float %1147, %1146
  %1190 = fdiv fast float %1188, %1189
  %1191 = call float @dx.op.unary.f32(i32 7, float %1190)  ; Saturate(value)
  %1192 = fmul fast float %1191, %1191
  %1193 = fmul fast float %1192, %1172
  br label %1194

; <label>:1194                                    ; preds = %1174, %1142, %1119
  %1195 = phi float [ 0.000000e+00, %1119 ], [ %1193, %1174 ], [ %1172, %1142 ]
  %1196 = fmul fast float %1195, %949
  %1197 = fmul fast float %1196, %1120
  %1198 = fmul fast float %1196, %1121
  %1199 = fmul fast float %1196, %1122
  %1200 = fadd fast float %1197, %1059
  %1201 = fadd fast float %1198, %1060
  %1202 = fadd fast float %1199, %1061
  %1203 = fadd fast float %1196, %1057
  br label %1204

; <label>:1204                                    ; preds = %1194, %1056
  %1205 = phi float [ %1203, %1194 ], [ %1057, %1056 ]
  %1206 = phi float [ %1200, %1194 ], [ %1059, %1056 ]
  %1207 = phi float [ %1201, %1194 ], [ %1060, %1056 ]
  %1208 = phi float [ %1202, %1194 ], [ %1061, %1056 ]
  %1209 = icmp eq i32 %936, 0
  br i1 %1209, label %1253, label %1210, !dx.controlflow.hints !64

; <label>:1210                                    ; preds = %1204
  %1211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1212 = extractvalue %dx.types.CBufRet.f32 %1211, 1
  %1213 = fsub fast float %949, %1212
  %1214 = extractvalue %dx.types.CBufRet.f32 %1211, 3
  %1215 = fmul fast float %1213, %1214
  %1216 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1217, 3
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 2
  %1221 = fsub fast float %1220, %937
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 3
  %1224 = fmul fast float %1221, %1223
  %1225 = call float @dx.op.unary.f32(i32 7, float %1224)  ; Saturate(value)
  %1226 = fmul fast float %1225, %1218
  %1227 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1228 = fsub fast float %466, %1227
  %1229 = extractvalue %dx.types.CBufRet.f32 %1222, 1
  %1230 = fmul fast float %1228, %1229
  %1231 = call float @dx.op.unary.f32(i32 7, float %1230)  ; Saturate(value)
  %1232 = fsub fast float 1.000000e+00, %1216
  %1233 = fmul fast float %1231, %1232
  %1234 = fadd fast float %1233, %1216
  %1235 = extractvalue %dx.types.CBufRet.f32 %1211, 0
  %1236 = fsub fast float %1226, %1235
  %1237 = fmul fast float %1236, %1234
  %1238 = fadd fast float %1237, %1235
  %1239 = extractvalue %dx.types.CBufRet.f32 %1217, 0
  %1240 = extractvalue %dx.types.CBufRet.f32 %1217, 1
  %1241 = extractvalue %dx.types.CBufRet.f32 %1217, 2
  %1242 = fmul fast float %1238, %949
  %1243 = extractvalue %dx.types.CBufRet.f32 %1222, 2
  %1244 = fmul fast float %1242, %1239
  %1245 = fmul fast float %1242, %1240
  %1246 = fmul fast float %1242, %1241
  %1247 = fadd fast float %1244, %1206
  %1248 = fadd fast float %1245, %1207
  %1249 = fadd fast float %1246, %1208
  %1250 = fmul fast float %1242, %1243
  %1251 = fadd fast float %1250, %1058
  %1252 = fadd fast float %1242, %1205
  br label %1253

; <label>:1253                                    ; preds = %1210, %1204
  %1254 = phi float [ %1252, %1210 ], [ %1205, %1204 ]
  %1255 = phi float [ %1251, %1210 ], [ %1058, %1204 ]
  %1256 = phi float [ %1247, %1210 ], [ %1206, %1204 ]
  %1257 = phi float [ %1248, %1210 ], [ %1207, %1204 ]
  %1258 = phi float [ %1249, %1210 ], [ %1208, %1204 ]
  %1259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1260 = extractvalue %dx.types.CBufRet.f32 %1259, 1
  %1261 = fcmp fast ogt float %1254, %1260
  br i1 %1261, label %1262, label %1268, !dx.controlflow.hints !65

; <label>:1262                                    ; preds = %1253
  %1263 = fdiv fast float 1.000000e+00, %1254
  %1264 = fmul fast float %1263, %1256
  %1265 = fmul fast float %1263, %1257
  %1266 = fmul fast float %1263, %1258
  %1267 = fmul fast float %1263, %1255
  br label %1268

; <label>:1268                                    ; preds = %1262, %1253
  %1269 = phi float [ %1267, %1262 ], [ %1255, %1253 ]
  %1270 = phi float [ %1264, %1262 ], [ %1256, %1253 ]
  %1271 = phi float [ %1265, %1262 ], [ %1257, %1253 ]
  %1272 = phi float [ %1266, %1262 ], [ %1258, %1253 ]
  br i1 %1261, label %1275, label %1273, !dx.controlflow.hints !66

; <label>:1273                                    ; preds = %1268
  %1274 = fadd fast float %949, %466
  br label %1948

; <label>:1275                                    ; preds = %1268
  %1276 = fmul fast float %1254, 0xBFF7154760000000
  %1277 = call float @dx.op.unary.f32(i32 21, float %1276)  ; Exp(value)
  %1278 = call float @dx.op.unary.f32(i32 7, float %1277)  ; Saturate(value)
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 3
  %1281 = fcmp fast une float %1280, 0.000000e+00
  %1282 = extractvalue %dx.types.CBufRet.f32 %1279, 0
  %1283 = extractvalue %dx.types.CBufRet.f32 %1279, 1
  %1284 = extractvalue %dx.types.CBufRet.f32 %1279, 2
  br i1 %1281, label %1285, label %1307, !dx.controlflow.hints !67

; <label>:1285                                    ; preds = %1275
  %1286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1287 = extractvalue %dx.types.CBufRet.f32 %1286, 0
  %1288 = extractvalue %dx.types.CBufRet.f32 %1286, 1
  %1289 = extractvalue %dx.types.CBufRet.f32 %1286, 2
  %1290 = call float @dx.op.dot3.f32(i32 55, float %1282, float %1283, float %1284, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %1291 = fcmp fast ogt float %1269, 0.000000e+00
  %1292 = select i1 %1291, float 1.000000e+00, float -1.000000e+00
  %1293 = fmul fast float %1292, 5.000000e-01
  %1294 = fmul fast float %1293, %1290
  %1295 = fmul fast float %1292, %1269
  %1296 = fadd fast float %1294, 4.921875e-01
  %1297 = fadd fast float %1295, -3.125000e-02
  %1298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %15, float %1296, float 0x3FB25F3060000000, float %1297, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1299 = extractvalue %dx.types.ResRet.f32 %1298, 0
  %1300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1300, 0
  %1302 = fmul fast float %1299, 0x400921FB60000000
  %1303 = fmul fast float %1302, %1301
  %1304 = fmul fast float %1303, %1287
  %1305 = fmul fast float %1303, %1288
  %1306 = fmul fast float %1303, %1289
  br label %1307

; <label>:1307                                    ; preds = %1285, %1275
  %1308 = phi float [ %1304, %1285 ], [ 0.000000e+00, %1275 ]
  %1309 = phi float [ %1305, %1285 ], [ 0.000000e+00, %1275 ]
  %1310 = phi float [ %1306, %1285 ], [ 0.000000e+00, %1275 ]
  %1311 = fdiv fast float 1.000000e+00, %1282
  %1312 = fdiv fast float 1.000000e+00, %1283
  %1313 = fdiv fast float 1.000000e+00, %1284
  %1314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.f32 %1314, 0
  %1316 = fmul fast float %1315, %1282
  %1317 = fmul fast float %1315, %1283
  %1318 = fmul fast float %1315, %1284
  %1319 = fadd fast float %1316, %463
  %1320 = fsub fast float -0.000000e+00, %1319
  %1321 = fadd fast float %1317, %464
  %1322 = fsub fast float -0.000000e+00, %1321
  %1323 = fadd fast float %1318, %465
  br i1 %479, label %1395, label %1324, !dx.controlflow.hints !40

; <label>:1324                                    ; preds = %1307
  %1325 = extractvalue %dx.types.CBufRet.f32 %1314, 1
  %1326 = fcmp fast ogt float %1325, %1315
  br i1 %1326, label %1327, label %1329, !dx.controlflow.hints !41

; <label>:1327                                    ; preds = %1324
  %1328 = fsub fast float %1325, %1315
  br label %1386

; <label>:1329                                    ; preds = %1324
  %1330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1331 = extractvalue %dx.types.CBufRet.i32 %1330, 3
  %1332 = icmp eq i32 %1331, 0
  %1333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1334 = extractvalue %dx.types.CBufRet.f32 %1333, 2
  %1335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1336 = extractvalue %dx.types.CBufRet.f32 %1335, 2
  %1337 = fsub fast float %1334, %1323
  %1338 = fadd fast float %1337, %1336
  %1339 = fsub fast float 0xC7EFFFFFE0000000, %1323
  br i1 %1332, label %1349, label %1340, !dx.controlflow.hints !34

; <label>:1340                                    ; preds = %1329
  %1341 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1320, float %1322, float %1338)  ; Dot3(ax,ay,az,bx,by,bz)
  %1342 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1282, float %1283, float %1284)  ; Dot3(ax,ay,az,bx,by,bz)
  %1343 = fdiv fast float 1.000000e+00, %1342
  %1344 = fmul fast float %1343, %1341
  %1345 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1320, float %1322, float %1339)  ; Dot3(ax,ay,az,bx,by,bz)
  %1346 = fmul fast float %1343, %1345
  %1347 = call float @dx.op.binary.f32(i32 36, float %1344, float %1346)  ; FMin(a,b)
  %1348 = call float @dx.op.binary.f32(i32 35, float %1344, float %1346)  ; FMax(a,b)
  br label %1379

; <label>:1349                                    ; preds = %1329
  %1350 = extractvalue %dx.types.CBufRet.f32 %1333, 0
  %1351 = extractvalue %dx.types.CBufRet.f32 %1333, 1
  %1352 = extractvalue %dx.types.CBufRet.f32 %1335, 0
  %1353 = extractvalue %dx.types.CBufRet.f32 %1335, 1
  %1354 = fsub fast float %1350, %1319
  %1355 = fmul fast float %1311, %1354
  %1356 = fadd fast float %1354, %1352
  %1357 = fmul fast float %1356, %1311
  %1358 = call float @dx.op.binary.f32(i32 36, float %1355, float %1357)  ; FMin(a,b)
  %1359 = call float @dx.op.binary.f32(i32 35, float %1355, float %1357)  ; FMax(a,b)
  %1360 = fsub fast float %1351, %1321
  %1361 = fmul fast float %1312, %1360
  %1362 = fadd fast float %1360, %1353
  %1363 = fmul fast float %1362, %1312
  %1364 = call float @dx.op.binary.f32(i32 36, float %1361, float %1363)  ; FMin(a,b)
  %1365 = call float @dx.op.binary.f32(i32 35, float %1358, float %1364)  ; FMax(a,b)
  %1366 = call float @dx.op.binary.f32(i32 35, float %1361, float %1363)  ; FMax(a,b)
  %1367 = call float @dx.op.binary.f32(i32 36, float %1359, float %1366)  ; FMin(a,b)
  %1368 = fmul fast float %1313, %1339
  %1369 = fmul fast float %1313, %1338
  %1370 = call float @dx.op.binary.f32(i32 36, float %1368, float %1369)  ; FMin(a,b)
  %1371 = call float @dx.op.binary.f32(i32 35, float %1365, float %1370)  ; FMax(a,b)
  %1372 = call float @dx.op.binary.f32(i32 35, float %1368, float %1369)  ; FMax(a,b)
  %1373 = call float @dx.op.binary.f32(i32 36, float %1367, float %1372)  ; FMin(a,b)
  %1374 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1371)  ; FMax(a,b)
  %1375 = fcmp fast ult float %1373, %1374
  br i1 %1375, label %1379, label %1376, !dx.controlflow.hints !35

; <label>:1376                                    ; preds = %1349
  %1377 = call float @dx.op.binary.f32(i32 36, float %1371, float %1373)  ; FMin(a,b)
  %1378 = call float @dx.op.binary.f32(i32 35, float %1371, float %1373)  ; FMax(a,b)
  br label %1379

; <label>:1379                                    ; preds = %1376, %1349, %1340
  %1380 = phi float [ %1347, %1340 ], [ %1377, %1376 ], [ 0.000000e+00, %1349 ]
  %1381 = phi float [ %1348, %1340 ], [ %1378, %1376 ], [ 0.000000e+00, %1349 ]
  %1382 = fcmp fast ogt float %1380, 0.000000e+00
  br i1 %1382, label %1386, label %1383, !dx.controlflow.hints !42

; <label>:1383                                    ; preds = %1379
  %1384 = fcmp fast ugt float %1381, 0.000000e+00
  br i1 %1384, label %1385, label %1386, !dx.controlflow.hints !43

; <label>:1385                                    ; preds = %1383
  br label %1386

; <label>:1386                                    ; preds = %1385, %1383, %1379, %1327
  %1387 = phi float [ %1328, %1327 ], [ 0.000000e+00, %1385 ], [ 0x47EFFFFFE0000000, %1383 ], [ %1380, %1379 ]
  %1388 = phi i32 [ %369, %1327 ], [ %369, %1385 ], [ 0, %1383 ], [ %369, %1379 ]
  %1389 = icmp ne i32 %1388, 0
  %1390 = zext i1 %1389 to i32
  %1391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.f32 %1391, 2
  %1393 = call float @dx.op.binary.f32(i32 35, float %1387, float %1392)  ; FMax(a,b)
  %1394 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1393)  ; FMin(a,b)
  br label %1395

; <label>:1395                                    ; preds = %1386, %1307
  %1396 = phi float [ %1394, %1386 ], [ 0x47EFFFFFE0000000, %1307 ]
  %1397 = phi i32 [ %1390, %1386 ], [ 0, %1307 ]
  %1398 = fsub fast float %1319, %650
  %1399 = fsub fast float %1321, %651
  %1400 = fmul fast float %1398, %655
  %1401 = fmul fast float %1399, %656
  %1402 = call float @dx.op.binary.f32(i32 36, float %1400, float %1401)  ; FMin(a,b)
  %1403 = fcmp fast olt float %1402, 0.000000e+00
  %1404 = call float @dx.op.binary.f32(i32 35, float %1400, float %1401)  ; FMax(a,b)
  %1405 = fcmp fast ogt float %1404, 1.000000e+00
  %1406 = or i1 %1403, %1405
  %1407 = fcmp fast olt float %1323, %664
  %1408 = or i1 %1406, %1407
  %1409 = fcmp fast ogt float %1323, %671
  %1410 = or i1 %1408, %1409
  %1411 = extractvalue %dx.types.CBufRet.f32 %654, 0
  br i1 %1410, label %1412, label %1440, !dx.controlflow.hints !49

; <label>:1412                                    ; preds = %1395
  %1413 = extractvalue %dx.types.CBufRet.f32 %654, 1
  %1414 = fsub fast float %650, %1319
  %1415 = fmul fast float %1414, %1311
  %1416 = fadd fast float %1414, %1411
  %1417 = fmul fast float %1416, %1311
  %1418 = call float @dx.op.binary.f32(i32 36, float %1415, float %1417)  ; FMin(a,b)
  %1419 = call float @dx.op.binary.f32(i32 35, float %1415, float %1417)  ; FMax(a,b)
  %1420 = fsub fast float %651, %1321
  %1421 = fmul fast float %1420, %1312
  %1422 = fadd fast float %1420, %1413
  %1423 = fmul fast float %1422, %1312
  %1424 = call float @dx.op.binary.f32(i32 36, float %1421, float %1423)  ; FMin(a,b)
  %1425 = call float @dx.op.binary.f32(i32 35, float %1418, float %1424)  ; FMax(a,b)
  %1426 = call float @dx.op.binary.f32(i32 35, float %1421, float %1423)  ; FMax(a,b)
  %1427 = call float @dx.op.binary.f32(i32 36, float %1419, float %1426)  ; FMin(a,b)
  %1428 = fsub fast float %664, %1323
  %1429 = fmul fast float %1428, %1313
  %1430 = fsub fast float %668, %1323
  %1431 = fadd fast float %1430, %670
  %1432 = fmul fast float %1431, %1313
  %1433 = call float @dx.op.binary.f32(i32 36, float %1429, float %1432)  ; FMin(a,b)
  %1434 = call float @dx.op.binary.f32(i32 35, float %1425, float %1433)  ; FMax(a,b)
  %1435 = call float @dx.op.binary.f32(i32 35, float %1429, float %1432)  ; FMax(a,b)
  %1436 = call float @dx.op.binary.f32(i32 36, float %1427, float %1435)  ; FMin(a,b)
  %1437 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1434)  ; FMax(a,b)
  %1438 = fcmp fast oge float %1436, %1437
  %1439 = select i1 %1438, float %1434, float 1.000000e+07
  br label %1455

; <label>:1440                                    ; preds = %1395
  %1441 = fsub fast float 1.000000e+00, %1401
  %1442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %1400, float %1441, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1443 = extractvalue %dx.types.ResRet.f32 %1442, 0
  %1444 = extractvalue %dx.types.ResRet.f32 %1442, 1
  %1445 = extractvalue %dx.types.ResRet.f32 %1442, 2
  %1446 = extractvalue %dx.types.ResRet.f32 %1442, 3
  %1447 = fmul fast float %1411, 9.765625e-04
  %1448 = fcmp fast oeq float %1443, 0.000000e+00
  %1449 = fcmp ule float %1323, %1445
  %1450 = fcmp uge float %1323, %1444
  %1451 = or i1 %1450, %1449
  %1452 = or i1 %1448, %1451
  %1453 = zext i1 %1452 to i32
  %1454 = xor i32 %1453, 1
  br label %1455

; <label>:1455                                    ; preds = %1440, %1412
  %1456 = phi float [ %1439, %1412 ], [ %1447, %1440 ]
  %1457 = phi float [ %448, %1412 ], [ %1443, %1440 ]
  %1458 = phi float [ %449, %1412 ], [ %1444, %1440 ]
  %1459 = phi float [ %450, %1412 ], [ %1445, %1440 ]
  %1460 = phi float [ %451, %1412 ], [ %1446, %1440 ]
  %1461 = phi i32 [ 0, %1412 ], [ %1454, %1440 ]
  %1462 = icmp eq i32 %1461, 0
  %1463 = call float @dx.op.binary.f32(i32 35, float %1456, float %759)  ; FMax(a,b)
  %1464 = call float @dx.op.binary.f32(i32 36, float %1396, float %1463)  ; FMin(a,b)
  br i1 %762, label %1636, label %1465, !dx.controlflow.hints !53

; <label>:1465                                    ; preds = %1455
  %1466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.i32 %1466, 1
  %1468 = and i32 %1467, 1
  %1469 = icmp eq i32 %1468, 0
  br i1 %1469, label %1470, label %1627, !dx.controlflow.hints !54

; <label>:1470                                    ; preds = %1465
  %1471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1472 = extractvalue %dx.types.CBufRet.f32 %1471, 2
  %1473 = extractvalue %dx.types.CBufRet.f32 %1471, 3
  %1474 = fmul fast float %1472, %1319
  %1475 = fmul fast float %1473, %1321
  %1476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1477 = extractvalue %dx.types.CBufRet.f32 %1476, 0
  %1478 = extractvalue %dx.types.CBufRet.f32 %1476, 1
  %1479 = fadd fast float %1474, %1477
  %1480 = fadd fast float %1475, %1478
  %1481 = call float @dx.op.unary.f32(i32 7, float %1479)  ; Saturate(value)
  %1482 = call float @dx.op.unary.f32(i32 7, float %1480)  ; Saturate(value)
  %1483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1481, float %1482, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1484 = extractvalue %dx.types.ResRet.f32 %1483, 0
  %1485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1486 = extractvalue %dx.types.CBufRet.f32 %1485, 0
  %1487 = fmul fast float %1486, %1484
  %1488 = fsub fast float %1479, %1481
  %1489 = fsub fast float %1480, %1482
  %1490 = extractvalue %dx.types.CBufRet.f32 %1471, 0
  %1491 = extractvalue %dx.types.CBufRet.f32 %1471, 1
  %1492 = fmul fast float %1490, %1488
  %1493 = fmul fast float %1491, %1489
  %1494 = fmul fast float %1492, %1492
  %1495 = fmul fast float %1493, %1493
  %1496 = fadd fast float %1494, %1495
  %1497 = call float @dx.op.unary.f32(i32 24, float %1496)  ; Sqrt(value)
  %1498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1499 = extractvalue %dx.types.CBufRet.f32 %1498, 3
  %1500 = fmul fast float %1499, %1497
  %1501 = call float @dx.op.unary.f32(i32 7, float %1500)  ; Saturate(value)
  %1502 = extractvalue %dx.types.CBufRet.f32 %1498, 2
  %1503 = fsub fast float %1502, %1487
  %1504 = fmul fast float %1503, %1501
  %1505 = extractvalue %dx.types.CBufRet.f32 %1485, 1
  %1506 = fsub fast float %1323, %1487
  %1507 = fsub fast float %1506, %1505
  %1508 = fsub fast float %1507, %1504
  %1509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1510 = extractvalue %dx.types.CBufRet.f32 %1509, 2
  %1511 = fsub fast float %1508, %1510
  %1512 = fcmp fast olt float %1511, 0.000000e+00
  %1513 = call float @dx.op.unary.f32(i32 6, float %1511)  ; FAbs(value)
  %1514 = extractvalue %dx.types.CBufRet.i32 %1466, 0
  %1515 = icmp eq i32 %1514, 0
  br i1 %1515, label %1569, label %1516

; <label>:1516                                    ; preds = %1470
  br label %1517

; <label>:1517                                    ; preds = %1556, %1516
  %1518 = phi i32 [ %1562, %1556 ], [ 1, %1516 ]
  %1519 = phi float [ %1564, %1556 ], [ 0x47EFFFFFE0000000, %1516 ]
  %1520 = phi i32 [ %1565, %1556 ], [ 0, %1516 ]
  %1521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1522 = extractvalue %dx.types.CBufRet.f32 %1521, 1
  %1523 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1524 = extractvalue %dx.types.CBufRet.i32 %1523, 1
  %1525 = and i32 %1524, 8
  %1526 = icmp eq i32 %1525, 0
  %1527 = fcmp fast ogt float %1522, %1508
  %1528 = or i1 %1527, %1526
  %1529 = add i32 %1520, 171
  %1530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %1529)  ; CBufferLoadLegacy(handle,regIndex)
  %1531 = extractvalue %dx.types.CBufRet.f32 %1530, 0
  %1532 = extractvalue %dx.types.CBufRet.f32 %1530, 1
  %1533 = extractvalue %dx.types.CBufRet.f32 %1530, 2
  br i1 %1528, label %1534, label %1540, !dx.controlflow.hints !55

; <label>:1534                                    ; preds = %1517
  %1535 = fsub fast float %1531, %1319
  %1536 = fsub fast float %1532, %1321
  %1537 = fmul fast float %1535, %1535
  %1538 = fmul fast float %1536, %1536
  %1539 = fadd fast float %1537, %1538
  br label %1556

; <label>:1540                                    ; preds = %1517
  %1541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1542 = extractvalue %dx.types.CBufRet.f32 %1541, 2
  %1543 = extractvalue %dx.types.CBufRet.f32 %1521, 2
  %1544 = fmul fast float %1543, %1542
  %1545 = fsub fast float %1544, %1522
  %1546 = fdiv fast float %1533, %1545
  %1547 = fsub fast float %1319, %1531
  %1548 = fsub fast float %1321, %1532
  %1549 = fsub fast float %1508, %1522
  %1550 = fmul fast float %1546, %1549
  %1551 = fmul fast float %1547, %1547
  %1552 = fmul fast float %1548, %1548
  %1553 = fadd fast float %1551, %1552
  %1554 = fmul fast float %1550, %1550
  %1555 = fadd fast float %1553, %1554
  br label %1556

; <label>:1556                                    ; preds = %1540, %1534
  %1557 = phi float [ %1539, %1534 ], [ %1555, %1540 ]
  %1558 = call float @dx.op.unary.f32(i32 24, float %1557)  ; Sqrt(value)
  %1559 = fsub float %1533, %1558
  %1560 = fcmp fast olt float %1559, 0.000000e+00
  %1561 = zext i1 %1560 to i32
  %1562 = and i32 %1561, %1518
  %1563 = call float @dx.op.unary.f32(i32 6, float %1559)  ; FAbs(value)
  %1564 = call float @dx.op.binary.f32(i32 36, float %1519, float %1563)  ; FMin(a,b)
  %1565 = add i32 %1520, 1
  %1566 = extractvalue %dx.types.CBufRet.i32 %1523, 0
  %1567 = icmp ult i32 %1565, %1566
  br i1 %1567, label %1517, label %1568

; <label>:1568                                    ; preds = %1556
  br label %1569

; <label>:1569                                    ; preds = %1568, %1470
  %1570 = phi i32 [ 1, %1470 ], [ %1562, %1568 ]
  %1571 = phi float [ 0x47EFFFFFE0000000, %1470 ], [ %1564, %1568 ]
  br label %1572

; <label>:1572                                    ; preds = %1572, %1569
  %1573 = phi i32 [ %1570, %1569 ], [ %1612, %1572 ]
  %1574 = phi float [ 0x47EFFFFFE0000000, %1569 ], [ %1614, %1572 ]
  %1575 = phi i32 [ 0, %1569 ], [ %1615, %1572 ]
  %1576 = add nuw nsw i32 %1575, 191
  %1577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %1576)  ; CBufferLoadLegacy(handle,regIndex)
  %1578 = extractvalue %dx.types.CBufRet.f32 %1577, 0
  %1579 = extractvalue %dx.types.CBufRet.f32 %1577, 1
  %1580 = extractvalue %dx.types.CBufRet.f32 %1577, 2
  %1581 = add nuw nsw i32 %1575, 195
  %1582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %1581)  ; CBufferLoadLegacy(handle,regIndex)
  %1583 = extractvalue %dx.types.CBufRet.f32 %1582, 0
  %1584 = extractvalue %dx.types.CBufRet.f32 %1582, 1
  %1585 = extractvalue %dx.types.CBufRet.f32 %1582, 2
  %1586 = fsub fast float %1319, %1578
  %1587 = fsub fast float %1321, %1579
  %1588 = fsub fast float %1508, %1580
  %1589 = call float @dx.op.unary.f32(i32 6, float %1586)  ; FAbs(value)
  %1590 = call float @dx.op.unary.f32(i32 6, float %1587)  ; FAbs(value)
  %1591 = call float @dx.op.unary.f32(i32 6, float %1588)  ; FAbs(value)
  %1592 = fsub fast float %1589, %1583
  %1593 = fsub fast float %1590, %1584
  %1594 = fsub fast float %1591, %1585
  %1595 = call float @dx.op.binary.f32(i32 35, float %1592, float 0.000000e+00)  ; FMax(a,b)
  %1596 = call float @dx.op.binary.f32(i32 35, float %1593, float 0.000000e+00)  ; FMax(a,b)
  %1597 = call float @dx.op.binary.f32(i32 35, float %1594, float 0.000000e+00)  ; FMax(a,b)
  %1598 = fmul fast float %1595, %1595
  %1599 = fmul fast float %1596, %1596
  %1600 = fadd fast float %1599, %1598
  %1601 = fmul fast float %1597, %1597
  %1602 = fadd fast float %1600, %1601
  %1603 = call float @dx.op.unary.f32(i32 24, float %1602)  ; Sqrt(value)
  %1604 = call float @dx.op.binary.f32(i32 35, float %1593, float %1594)  ; FMax(a,b)
  %1605 = call float @dx.op.binary.f32(i32 35, float %1592, float %1604)  ; FMax(a,b)
  %1606 = call float @dx.op.binary.f32(i32 36, float %1605, float 0.000000e+00)  ; FMin(a,b)
  %1607 = fadd fast float %1606, %1603
  %1608 = fsub fast float -0.000000e+00, %1607
  %1609 = fcmp ogt float %1607, -0.000000e+00
  %1610 = icmp ne i32 %1573, 0
  %1611 = and i1 %1610, %1609
  %1612 = zext i1 %1611 to i32
  %1613 = call float @dx.op.unary.f32(i32 6, float %1608)  ; FAbs(value)
  %1614 = call float @dx.op.binary.f32(i32 36, float %1574, float %1613)  ; FMin(a,b)
  %1615 = add nuw nsw i32 %1575, 1
  %1616 = icmp eq i32 %1615, 4
  br i1 %1616, label %1617, label %1572

; <label>:1617                                    ; preds = %1572
  %1618 = call float @dx.op.binary.f32(i32 36, float %1513, float %1614)  ; FMin(a,b)
  %1619 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1620 = extractvalue %dx.types.CBufRet.i32 %1619, 1
  %1621 = and i32 %1620, 2
  %1622 = icmp ne i32 %1621, 0
  %1623 = xor i1 %1611, %1622
  %1624 = call float @dx.op.binary.f32(i32 36, float %1618, float %1571)  ; FMin(a,b)
  %1625 = and i1 %1623, %1512
  %1626 = zext i1 %1625 to i32
  br label %1627

; <label>:1627                                    ; preds = %1617, %1465
  %1628 = phi i32 [ %446, %1465 ], [ %1626, %1617 ]
  %1629 = phi float [ 0.000000e+00, %1465 ], [ %1624, %1617 ]
  %1630 = phi float [ %1323, %1465 ], [ %1508, %1617 ]
  %1631 = icmp ne i32 %1628, 0
  %1632 = extractvalue %dx.types.CBufRet.f32 %758, 3
  %1633 = call float @dx.op.binary.f32(i32 35, float %1629, float %1632)  ; FMax(a,b)
  %1634 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1633)  ; FMin(a,b)
  %1635 = zext i1 %1631 to i32
  br label %1636

; <label>:1636                                    ; preds = %1627, %1455
  %1637 = phi i32 [ %1628, %1627 ], [ %446, %1455 ]
  %1638 = phi float [ %1630, %1627 ], [ %447, %1455 ]
  %1639 = phi float [ %1634, %1627 ], [ 0x47EFFFFFE0000000, %1455 ]
  %1640 = phi i32 [ %1635, %1627 ], [ 0, %1455 ]
  %1641 = icmp eq i32 %1397, 0
  br i1 %1641, label %1715, label %1642, !dx.controlflow.hints !56

; <label>:1642                                    ; preds = %1636
  %1643 = fmul fast float %939, %1315
  %1644 = call float @dx.op.unary.f32(i32 23, float %1643)  ; Log(value)
  %1645 = fmul fast float %1644, 0x3FE62E4300000000
  %1646 = call float @dx.op.binary.f32(i32 35, float %1645, float 1.000000e+00)  ; FMax(a,b)
  %1647 = fmul fast float %1646, %1639
  %1648 = call float @dx.op.binary.f32(i32 36, float %1647, float %1464)  ; FMin(a,b)
  %1649 = call float @dx.op.binary.f32(i32 35, float %1648, float 0.000000e+00)  ; FMax(a,b)
  %1650 = fcmp fast ogt float %1649, 0x3F1A36E2E0000000
  %1651 = fadd fast float %1316, %1319
  %1652 = fadd fast float %1317, %1321
  %1653 = select i1 %1650, float %1651, float %1319
  %1654 = select i1 %1650, float %1652, float %1321
  %1655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1656 = extractvalue %dx.types.CBufRet.f32 %1655, 0
  %1657 = extractvalue %dx.types.CBufRet.f32 %1655, 1
  %1658 = fsub fast float %1653, %1656
  %1659 = fsub fast float %1654, %1657
  %1660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %1661 = extractvalue %dx.types.CBufRet.f32 %1660, 0
  %1662 = extractvalue %dx.types.CBufRet.f32 %1660, 1
  %1663 = fmul fast float %1658, %1661
  %1664 = fmul fast float %1659, %1662
  %1665 = fsub fast float 1.000000e+00, %1664
  %1666 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1667 = extractvalue %dx.types.CBufRet.i32 %1666, 3
  %1668 = icmp eq i32 %1667, 0
  br i1 %1668, label %1675, label %1669, !dx.controlflow.hints !44

; <label>:1669                                    ; preds = %1642
  %1670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %1663, float %1665, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1671 = extractvalue %dx.types.ResRet.f32 %1670, 0
  %1672 = extractvalue %dx.types.ResRet.f32 %1670, 1
  %1673 = extractvalue %dx.types.ResRet.f32 %1670, 2
  %1674 = extractvalue %dx.types.ResRet.f32 %1670, 3
  br label %1681

; <label>:1675                                    ; preds = %1642
  %1676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %1663, float %1665, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1677 = extractvalue %dx.types.ResRet.f32 %1676, 0
  %1678 = extractvalue %dx.types.ResRet.f32 %1676, 1
  %1679 = extractvalue %dx.types.ResRet.f32 %1676, 2
  %1680 = extractvalue %dx.types.ResRet.f32 %1676, 3
  br label %1681

; <label>:1681                                    ; preds = %1675, %1669
  %1682 = phi float [ %1671, %1669 ], [ %1677, %1675 ]
  %1683 = phi float [ %1672, %1669 ], [ %1678, %1675 ]
  %1684 = phi float [ %1673, %1669 ], [ %1679, %1675 ]
  %1685 = phi float [ %1674, %1669 ], [ %1680, %1675 ]
  %1686 = extractvalue %dx.types.CBufRet.f32 %1660, 3
  %1687 = fmul fast float %1686, %1683
  %1688 = fmul fast float %1687, %1682
  %1689 = fsub fast float %1687, %1688
  %1690 = fcmp fast ole float %1689, 0.000000e+00
  %1691 = extractvalue %dx.types.CBufRet.f32 %1655, 2
  %1692 = fadd fast float %1688, %1691
  %1693 = fmul fast float %1686, %1684
  %1694 = fadd fast float %1693, %1691
  %1695 = fdiv fast float 1.000000e+00, %1689
  %1696 = select i1 %1690, float 1.000000e+06, float %1695
  %1697 = fsub fast float %1323, %1692
  %1698 = fmul fast float %1696, %1697
  %1699 = call float @dx.op.unary.f32(i32 7, float %1698)  ; Saturate(value)
  %1700 = extractvalue %dx.types.CBufRet.f32 %1660, 2
  %1701 = fmul fast float %1700, %1699
  %1702 = fsub fast float %1700, %1701
  %1703 = fcmp fast olt float %1323, %1694
  %1704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1705 = extractvalue %dx.types.CBufRet.f32 %1704, 3
  %1706 = fmul fast float %1705, 3.000000e+00
  %1707 = select i1 %1703, float %1706, float 3.000000e+00
  %1708 = fmul fast float %1702, %1707
  %1709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.f32 %1709, 2
  %1711 = fmul fast float %1315, 0x3FD5555560000000
  %1712 = fmul fast float %1711, %1685
  %1713 = fmul fast float %1712, %1710
  %1714 = fmul fast float %1713, %1708
  br label %1715

; <label>:1715                                    ; preds = %1681, %1636
  %1716 = phi float [ %1714, %1681 ], [ 0.000000e+00, %1636 ]
  br i1 %1462, label %1842, label %1717, !dx.controlflow.hints !58

; <label>:1717                                    ; preds = %1715
  %1718 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1719 = extractvalue %dx.types.CBufRet.i32 %1718, 0
  %1720 = icmp ne i32 %1719, 0
  %1721 = zext i1 %1720 to i32
  %1722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1723 = extractvalue %dx.types.CBufRet.i32 %1722, 0
  %1724 = icmp eq i32 %1723, 0
  br i1 %1724, label %1758, label %1725

; <label>:1725                                    ; preds = %1717
  br label %1726

; <label>:1726                                    ; preds = %1753, %1725
  %1727 = phi i32 [ %1754, %1753 ], [ 0, %1725 ]
  %1728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1727, i32 0)  ; BufferLoad(srv,index,wot)
  %1729 = extractvalue %dx.types.ResRet.f32 %1728, 0
  %1730 = extractvalue %dx.types.ResRet.f32 %1728, 1
  %1731 = extractvalue %dx.types.ResRet.f32 %1728, 2
  %1732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1727, i32 16)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.f32 %1732, 0
  %1734 = extractvalue %dx.types.ResRet.f32 %1732, 1
  %1735 = extractvalue %dx.types.ResRet.f32 %1732, 2
  %1736 = fsub fast float %1729, %1733
  %1737 = fsub fast float %1730, %1734
  %1738 = fsub fast float %1731, %1735
  %1739 = fadd fast float %1733, %1729
  %1740 = fadd fast float %1734, %1730
  %1741 = fadd fast float %1735, %1731
  %1742 = fcmp fast olt float %1319, %1736
  %1743 = fcmp fast olt float %1321, %1737
  %1744 = fcmp fast olt float %1323, %1738
  %1745 = or i1 %1742, %1743
  %1746 = or i1 %1744, %1745
  %1747 = fcmp fast ogt float %1319, %1739
  %1748 = fcmp fast ogt float %1321, %1740
  %1749 = fcmp fast ogt float %1323, %1741
  %1750 = or i1 %1747, %1748
  %1751 = or i1 %1749, %1750
  %1752 = or i1 %1746, %1751
  br i1 %1752, label %1753, label %1756, !dx.controlflow.hints !59

; <label>:1753                                    ; preds = %1726
  %1754 = add nuw i32 %1727, 1
  %1755 = icmp ult i32 %1754, %1723
  br i1 %1755, label %1726, label %1756

; <label>:1756                                    ; preds = %1753, %1726
  %1757 = phi i32 [ 255, %1753 ], [ %1727, %1726 ]
  br label %1758

; <label>:1758                                    ; preds = %1756, %1717
  %1759 = phi i32 [ 255, %1717 ], [ %1757, %1756 ]
  %1760 = icmp eq i32 %1759, 255
  br i1 %1760, label %1766, label %1761, !dx.controlflow.hints !60

; <label>:1761                                    ; preds = %1758
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1759, i32 156)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = icmp ne i32 %1763, 0
  %1765 = zext i1 %1764 to i32
  br label %1766

; <label>:1766                                    ; preds = %1761, %1758
  %1767 = phi i32 [ %1765, %1761 ], [ %1721, %1758 ]
  %1768 = icmp eq i32 %1767, 0
  br i1 %1768, label %1769, label %1838, !dx.controlflow.hints !61

; <label>:1769                                    ; preds = %1766
  %1770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1771 = extractvalue %dx.types.CBufRet.f32 %1770, 3
  %1772 = extractvalue %dx.types.CBufRet.f32 %667, 0
  %1773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1774 = extractvalue %dx.types.CBufRet.f32 %1773, 2
  %1775 = extractvalue %dx.types.CBufRet.f32 %1773, 3
  br i1 %1760, label %1786, label %1776, !dx.controlflow.hints !62

; <label>:1776                                    ; preds = %1769
  %1777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1759, i32 60)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.f32 %1777, 0
  %1779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1759, i32 64)  ; BufferLoad(srv,index,wot)
  %1780 = extractvalue %dx.types.ResRet.f32 %1779, 0
  %1781 = extractvalue %dx.types.ResRet.f32 %1779, 1
  %1782 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1759, i32 72)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.f32 %1782, 0
  %1784 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1759, i32 96)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.f32 %1784, 0
  br label %1786

; <label>:1786                                    ; preds = %1776, %1769
  %1787 = phi float [ %1778, %1776 ], [ %670, %1769 ]
  %1788 = phi float [ %1783, %1776 ], [ %668, %1769 ]
  %1789 = phi float [ %1785, %1776 ], [ %1772, %1769 ]
  %1790 = phi float [ %1780, %1776 ], [ %1774, %1769 ]
  %1791 = phi float [ %1781, %1776 ], [ %1775, %1769 ]
  %1792 = call float @dx.op.binary.f32(i32 35, float %1457, float 0.000000e+00)  ; FMax(a,b)
  %1793 = call float @dx.op.binary.f32(i32 36, float %1792, float 1.000000e+00)  ; FMin(a,b)
  %1794 = call float @dx.op.unary.f32(i32 24, float %1793)  ; Sqrt(value)
  %1795 = call float @dx.op.binary.f32(i32 35, float %1460, float 0x3F847AE140000000)  ; FMax(a,b)
  %1796 = fsub fast float %1458, %1323
  %1797 = fsub fast float %1323, %1459
  %1798 = call float @dx.op.binary.f32(i32 36, float %1797, float %1796)  ; FMin(a,b)
  %1799 = fdiv fast float %1798, %1795
  %1800 = call float @dx.op.unary.f32(i32 7, float %1799)  ; Saturate(value)
  %1801 = fsub fast float %1323, %1788
  %1802 = fdiv fast float %1801, %1787
  %1803 = call float @dx.op.unary.f32(i32 7, float %1802)  ; Saturate(value)
  %1804 = fsub fast float 1.000000e+00, %1803
  %1805 = fmul float %1800, %1804
  %1806 = fmul float %1805, %1805
  %1807 = fmul fast float %1794, %1771
  %1808 = fmul fast float %1807, %1806
  %1809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1810 = extractvalue %dx.types.CBufRet.f32 %1809, 2
  %1811 = extractvalue %dx.types.CBufRet.f32 %1809, 1
  %1812 = fsub fast float %1808, %1811
  %1813 = fsub fast float %1810, %1811
  %1814 = fdiv fast float %1812, %1813
  %1815 = call float @dx.op.unary.f32(i32 7, float %1814)  ; Saturate(value)
  %1816 = fmul fast float %1815, %1789
  %1817 = fcmp fast ogt float %1791, 0.000000e+00
  br i1 %1817, label %1818, label %1838, !dx.controlflow.hints !63

; <label>:1818                                    ; preds = %1786
  %1819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1820 = extractvalue %dx.types.CBufRet.f32 %1819, 0
  %1821 = extractvalue %dx.types.CBufRet.f32 %1819, 1
  %1822 = extractvalue %dx.types.CBufRet.f32 %1819, 2
  %1823 = fsub fast float %1319, %1820
  %1824 = fsub fast float %1321, %1821
  %1825 = fsub fast float %1323, %1822
  %1826 = fmul fast float %1823, %1823
  %1827 = fmul fast float %1824, %1824
  %1828 = fadd fast float %1826, %1827
  %1829 = fmul fast float %1825, %1825
  %1830 = fadd fast float %1828, %1829
  %1831 = call float @dx.op.unary.f32(i32 24, float %1830)  ; Sqrt(value)
  %1832 = fsub fast float %1831, %1790
  %1833 = fsub fast float %1791, %1790
  %1834 = fdiv fast float %1832, %1833
  %1835 = call float @dx.op.unary.f32(i32 7, float %1834)  ; Saturate(value)
  %1836 = fmul fast float %1835, %1835
  %1837 = fmul fast float %1836, %1816
  br label %1838

; <label>:1838                                    ; preds = %1818, %1786, %1766
  %1839 = phi float [ 0.000000e+00, %1766 ], [ %1837, %1818 ], [ %1816, %1786 ]
  %1840 = fmul fast float %1839, %1315
  %1841 = fadd fast float %1840, %1716
  br label %1842

; <label>:1842                                    ; preds = %1838, %1715
  %1843 = phi float [ %1841, %1838 ], [ %1716, %1715 ]
  %1844 = icmp eq i32 %1640, 0
  br i1 %1844, label %1876, label %1845, !dx.controlflow.hints !64

; <label>:1845                                    ; preds = %1842
  %1846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1847 = extractvalue %dx.types.CBufRet.f32 %1846, 1
  %1848 = fsub fast float %1315, %1847
  %1849 = extractvalue %dx.types.CBufRet.f32 %1846, 3
  %1850 = fmul fast float %1848, %1849
  %1851 = call float @dx.op.unary.f32(i32 7, float %1850)  ; Saturate(value)
  %1852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1853 = extractvalue %dx.types.CBufRet.f32 %1852, 3
  %1854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1855 = extractvalue %dx.types.CBufRet.f32 %1854, 2
  %1856 = fsub fast float %1855, %1638
  %1857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1858 = extractvalue %dx.types.CBufRet.f32 %1857, 3
  %1859 = fmul fast float %1856, %1858
  %1860 = call float @dx.op.unary.f32(i32 7, float %1859)  ; Saturate(value)
  %1861 = fmul fast float %1860, %1853
  %1862 = extractvalue %dx.types.CBufRet.f32 %1857, 0
  %1863 = fsub fast float %1315, %1862
  %1864 = extractvalue %dx.types.CBufRet.f32 %1857, 1
  %1865 = fmul fast float %1863, %1864
  %1866 = call float @dx.op.unary.f32(i32 7, float %1865)  ; Saturate(value)
  %1867 = fsub fast float 1.000000e+00, %1851
  %1868 = fmul fast float %1866, %1867
  %1869 = fadd fast float %1868, %1851
  %1870 = extractvalue %dx.types.CBufRet.f32 %1846, 0
  %1871 = fsub fast float %1861, %1870
  %1872 = fmul fast float %1871, %1869
  %1873 = fadd fast float %1872, %1870
  %1874 = fmul fast float %1873, %1315
  %1875 = fadd fast float %1874, %1843
  br label %1876

; <label>:1876                                    ; preds = %1845, %1842
  %1877 = phi float [ %1875, %1845 ], [ %1843, %1842 ]
  %1878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1879 = extractvalue %dx.types.CBufRet.f32 %1878, 3
  %1880 = fmul fast float %1877, 0xBFF7154760000000
  %1881 = fmul fast float %1880, %1879
  %1882 = call float @dx.op.unary.f32(i32 21, float %1881)  ; Exp(value)
  %1883 = call float @dx.op.unary.f32(i32 7, float %1882)  ; Saturate(value)
  %1884 = fmul fast float %1883, %1308
  %1885 = fmul fast float %1883, %1309
  %1886 = fmul fast float %1883, %1310
  %1887 = fadd fast float %1884, %204
  %1888 = fadd fast float %1885, %205
  %1889 = fadd fast float %1886, %206
  %1890 = fsub fast float 1.000000e+00, %1278
  %1891 = fmul fast float %1270, %459
  %1892 = fmul fast float %1891, %1890
  %1893 = fmul fast float %1892, %1887
  %1894 = fmul fast float %1271, %459
  %1895 = fmul fast float %1894, %1890
  %1896 = fmul fast float %1895, %1888
  %1897 = fmul fast float %1272, %459
  %1898 = fmul fast float %1897, %1890
  %1899 = fmul fast float %1898, %1889
  %1900 = fadd fast float %1893, %460
  %1901 = fadd fast float %1896, %461
  %1902 = fadd fast float %1899, %462
  %1903 = fdiv fast float %1254, %949
  %1904 = fadd fast float %949, %466
  %1905 = fmul fast float %466, %466
  %1906 = fmul fast float %1904, %1904
  %1907 = fsub fast float %1905, %1906
  %1908 = fmul fast float %1907, -5.000000e-01
  %1909 = fmul fast float %1908, %1903
  %1910 = fadd fast float %1909, %458
  %1911 = fadd fast float %1254, %469
  %1912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1913 = extractvalue %dx.types.CBufRet.i32 %1912, 0
  %1914 = icmp eq i32 %1913, 0
  br i1 %1914, label %1941, label %1915, !dx.controlflow.hints !68

; <label>:1915                                    ; preds = %1876
  %1916 = icmp ne i32 %474, 0
  %1917 = zext i1 %1916 to i32
  %1918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1919 = extractvalue %dx.types.CBufRet.f32 %1918, 2
  %1920 = extractvalue %dx.types.CBufRet.f32 %1918, 0
  %1921 = fsub fast float %1904, %1920
  %1922 = fmul fast float %1921, %1919
  %1923 = call float @dx.op.unary.f32(i32 7, float %1922)  ; Saturate(value)
  %1924 = fadd fast float %1923, -5.000000e-01
  %1925 = fmul fast float %1924, 2.000000e+00
  %1926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1927 = extractvalue %dx.types.CBufRet.f32 %1926, 2
  %1928 = fcmp fast olt float %1925, %1927
  br i1 %1928, label %1929, label %1941, !dx.controlflow.hints !69

; <label>:1929                                    ; preds = %1915
  %1930 = fmul fast float %1925, %1925
  %1931 = fmul fast float %1890, %459
  %1932 = fmul fast float %1925, %1931
  %1933 = fmul fast float %1930, %1931
  %1934 = fmul fast float %1932, %1930
  %1935 = fmul fast float %1930, %1930
  %1936 = fmul fast float %1935, %1931
  %1937 = fadd fast float %1932, %470
  %1938 = fadd fast float %1933, %471
  %1939 = fadd fast float %1934, %472
  %1940 = fadd fast float %1936, %473
  br label %1941

; <label>:1941                                    ; preds = %1929, %1915, %1876
  %1942 = phi float [ %470, %1876 ], [ %1937, %1929 ], [ %470, %1915 ]
  %1943 = phi float [ %471, %1876 ], [ %1938, %1929 ], [ %471, %1915 ]
  %1944 = phi float [ %472, %1876 ], [ %1939, %1929 ], [ %472, %1915 ]
  %1945 = phi float [ %473, %1876 ], [ %1940, %1929 ], [ %473, %1915 ]
  %1946 = phi i32 [ %474, %1876 ], [ 1, %1929 ], [ %1917, %1915 ]
  %1947 = fmul fast float %1278, %459
  br label %1948

; <label>:1948                                    ; preds = %1941, %1273
  %1949 = phi float [ %1274, %1273 ], [ %1904, %1941 ]
  %1950 = phi i32 [ %446, %1273 ], [ %1637, %1941 ]
  %1951 = phi float [ %447, %1273 ], [ %1638, %1941 ]
  %1952 = phi float [ %448, %1273 ], [ %1457, %1941 ]
  %1953 = phi float [ %449, %1273 ], [ %1458, %1941 ]
  %1954 = phi float [ %450, %1273 ], [ %1459, %1941 ]
  %1955 = phi float [ %451, %1273 ], [ %1460, %1941 ]
  %1956 = phi float [ %458, %1273 ], [ %1910, %1941 ]
  %1957 = phi float [ %459, %1273 ], [ %1947, %1941 ]
  %1958 = phi float [ %460, %1273 ], [ %1900, %1941 ]
  %1959 = phi float [ %461, %1273 ], [ %1901, %1941 ]
  %1960 = phi float [ %462, %1273 ], [ %1902, %1941 ]
  %1961 = phi float [ %469, %1273 ], [ %1911, %1941 ]
  %1962 = phi float [ %470, %1273 ], [ %1942, %1941 ]
  %1963 = phi float [ %471, %1273 ], [ %1943, %1941 ]
  %1964 = phi float [ %472, %1273 ], [ %1944, %1941 ]
  %1965 = phi float [ %473, %1273 ], [ %1945, %1941 ]
  %1966 = phi i32 [ %474, %1273 ], [ %1946, %1941 ]
  %1967 = fmul fast float %949, %280
  %1968 = fmul fast float %949, %281
  %1969 = fmul fast float %949, %282
  %1970 = fadd fast float %1967, %463
  %1971 = fadd fast float %1968, %464
  %1972 = fadd fast float %1969, %465
  %1973 = fcmp fast olt float %1949, %422
  %1974 = extractvalue %dx.types.CBufRet.f32 %1259, 2
  %1975 = fcmp fast olt float %1974, %1957
  %1976 = and i1 %1973, %1975
  br i1 %1976, label %445, label %1977

; <label>:1977                                    ; preds = %1948
  br label %1978

; <label>:1978                                    ; preds = %1977, %415
  %1979 = phi float [ 0.000000e+00, %415 ], [ %1956, %1977 ]
  %1980 = phi float [ 1.000000e+00, %415 ], [ %1957, %1977 ]
  %1981 = phi float [ 0.000000e+00, %415 ], [ %1958, %1977 ]
  %1982 = phi float [ 0.000000e+00, %415 ], [ %1959, %1977 ]
  %1983 = phi float [ 0.000000e+00, %415 ], [ %1960, %1977 ]
  %1984 = phi float [ 0.000000e+00, %415 ], [ %1961, %1977 ]
  %1985 = phi float [ 0.000000e+00, %415 ], [ %1962, %1977 ]
  %1986 = phi float [ 0.000000e+00, %415 ], [ %1963, %1977 ]
  %1987 = phi float [ 0.000000e+00, %415 ], [ %1964, %1977 ]
  %1988 = phi float [ 0.000000e+00, %415 ], [ %1965, %1977 ]
  %1989 = phi i32 [ 0, %415 ], [ %1966, %1977 ]
  %1990 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1991 = extractvalue %dx.types.CBufRet.i32 %1990, 0
  %1992 = icmp eq i32 %1991, 0
  br i1 %1992, label %2034, label %1993, !dx.controlflow.hints !70

; <label>:1993                                    ; preds = %1978
  %1994 = icmp eq i32 %1989, 0
  br i1 %1994, label %2033, label %1995, !dx.controlflow.hints !71

; <label>:1995                                    ; preds = %1993
  %1996 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1997 = extractvalue %dx.types.CBufRet.i32 %1996, 2
  %1998 = icmp eq i32 %1997, 0
  br i1 %1998, label %2005, label %1999, !dx.controlflow.hints !72

; <label>:1999                                    ; preds = %1995
  %2000 = fsub fast float 1.000000e+00, %1980
  %2001 = fdiv fast float %1985, %2000
  %2002 = fdiv fast float %1986, %2000
  %2003 = fdiv fast float %1987, %2000
  %2004 = fdiv fast float %1988, %2000
  br label %2010

; <label>:2005                                    ; preds = %1995
  %2006 = fadd fast float %1985, %1980
  %2007 = fadd fast float %1986, %1980
  %2008 = fadd fast float %1987, %1980
  %2009 = fadd fast float %1988, %1980
  br label %2010

; <label>:2010                                    ; preds = %2005, %1999
  %2011 = phi float [ %2001, %1999 ], [ %2006, %2005 ]
  %2012 = phi float [ %2002, %1999 ], [ %2007, %2005 ]
  %2013 = phi float [ %2003, %1999 ], [ %2008, %2005 ]
  %2014 = phi float [ %2004, %1999 ], [ %2009, %2005 ]
  %2015 = call float @dx.op.binary.f32(i32 35, float %2011, float -1.000000e+00)  ; FMax(a,b)
  %2016 = call float @dx.op.binary.f32(i32 35, float %2012, float -1.000000e+00)  ; FMax(a,b)
  %2017 = call float @dx.op.binary.f32(i32 35, float %2013, float -1.000000e+00)  ; FMax(a,b)
  %2018 = call float @dx.op.binary.f32(i32 35, float %2014, float -1.000000e+00)  ; FMax(a,b)
  %2019 = call float @dx.op.binary.f32(i32 36, float %2015, float 1.000000e+00)  ; FMin(a,b)
  %2020 = call float @dx.op.binary.f32(i32 36, float %2016, float 1.000000e+00)  ; FMin(a,b)
  %2021 = call float @dx.op.binary.f32(i32 36, float %2017, float 1.000000e+00)  ; FMin(a,b)
  %2022 = call float @dx.op.binary.f32(i32 36, float %2018, float 1.000000e+00)  ; FMin(a,b)
  %2023 = fmul fast float %2019, 1.500000e+00
  %2024 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2021, float %2023)  ; FMad(a,b,c)
  %2025 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2020, float 0.000000e+00)  ; FMad(a,b,c)
  %2026 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2022, float %2025)  ; FMad(a,b,c)
  %2027 = fmul fast float %2019, 0x3FEBB67AE0000000
  %2028 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2021, float %2027)  ; FMad(a,b,c)
  %2029 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2020, float 0.000000e+00)  ; FMad(a,b,c)
  %2030 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2022, float %2029)  ; FMad(a,b,c)
  %2031 = fadd fast float %2024, 5.000000e-01
  %2032 = fadd fast float %2028, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %19, i32 %20, i32 0, float %2031, float %2026, float %2032, float %2030, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2034

; <label>:2033                                    ; preds = %1993
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %19, i32 %20, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2034

; <label>:2034                                    ; preds = %2033, %2010, %1978
  %2035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2036 = extractvalue %dx.types.CBufRet.f32 %2035, 2
  %2037 = fsub fast float %1980, %2036
  %2038 = fdiv fast float %2037, %2036
  %2039 = call float @dx.op.unary.f32(i32 7, float %2038)  ; Saturate(value)
  %2040 = fmul fast float %2039, 2.000000e+00
  %2041 = fsub fast float 3.000000e+00, %2040
  %2042 = fmul fast float %2039, %2039
  %2043 = fmul fast float %2042, %1980
  %2044 = fmul fast float %2043, %2041
  %2045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2046 = extractvalue %dx.types.CBufRet.f32 %2045, 0
  %2047 = extractvalue %dx.types.CBufRet.f32 %2045, 1
  %2048 = extractvalue %dx.types.CBufRet.f32 %2045, 2
  %2049 = call float @dx.op.dot3.f32(i32 55, float %280, float %281, float %282, float %2046, float %2047, float %2048)  ; Dot3(ax,ay,az,bx,by,bz)
  %2050 = fmul fast float %2049, %1979
  %2051 = fcmp fast ogt float %1984, 0.000000e+00
  %2052 = fdiv fast float 1.000000e+00, %1984
  %2053 = fmul fast float %2050, %2052
  %2054 = select i1 %2051, float %2053, float %291
  %2055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2056 = extractvalue %dx.types.CBufRet.f32 %2055, 0
  %2057 = extractvalue %dx.types.CBufRet.f32 %2055, 1
  %2058 = extractvalue %dx.types.CBufRet.f32 %2055, 2
  %2059 = fmul fast float %2056, %244
  %2060 = fmul fast float %2057, %244
  %2061 = fmul fast float %2058, %244
  %2062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2063 = extractvalue %dx.types.CBufRet.f32 %2062, 0
  %2064 = extractvalue %dx.types.CBufRet.f32 %2062, 1
  %2065 = extractvalue %dx.types.CBufRet.f32 %2062, 2
  %2066 = fmul fast float %2063, %245
  %2067 = fmul fast float %2064, %245
  %2068 = fmul fast float %2065, %245
  %2069 = fadd fast float %2066, %2059
  %2070 = fadd fast float %2067, %2060
  %2071 = fadd fast float %2068, %2061
  %2072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2073 = extractvalue %dx.types.CBufRet.f32 %2072, 0
  %2074 = extractvalue %dx.types.CBufRet.f32 %2072, 1
  %2075 = extractvalue %dx.types.CBufRet.f32 %2072, 2
  %2076 = fadd fast float %2069, %2073
  %2077 = fadd fast float %2070, %2074
  %2078 = fadd fast float %2071, %2075
  %2079 = fmul fast float %2076, %2054
  %2080 = fmul fast float %2077, %2054
  %2081 = fmul fast float %2078, %2054
  %2082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2083 = extractvalue %dx.types.CBufRet.f32 %2082, 0
  %2084 = extractvalue %dx.types.CBufRet.f32 %2082, 1
  %2085 = extractvalue %dx.types.CBufRet.f32 %2082, 2
  %2086 = extractvalue %dx.types.CBufRet.f32 %2082, 3
  %2087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2088 = extractvalue %dx.types.CBufRet.f32 %2087, 0
  %2089 = extractvalue %dx.types.CBufRet.f32 %2087, 1
  %2090 = extractvalue %dx.types.CBufRet.f32 %2087, 2
  %2091 = extractvalue %dx.types.CBufRet.f32 %2087, 3
  %2092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2093 = extractvalue %dx.types.CBufRet.f32 %2092, 0
  %2094 = extractvalue %dx.types.CBufRet.f32 %2092, 1
  %2095 = extractvalue %dx.types.CBufRet.f32 %2092, 2
  %2096 = extractvalue %dx.types.CBufRet.f32 %2092, 3
  %2097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2098 = extractvalue %dx.types.CBufRet.f32 %2097, 0
  %2099 = extractvalue %dx.types.CBufRet.f32 %2097, 1
  %2100 = extractvalue %dx.types.CBufRet.f32 %2097, 2
  %2101 = extractvalue %dx.types.CBufRet.f32 %2097, 3
  %2102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2103 = extractvalue %dx.types.CBufRet.f32 %2102, 3
  %2104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2105 = extractvalue %dx.types.CBufRet.f32 %2104, 3
  %2106 = extractvalue %dx.types.CBufRet.f32 %2104, 0
  %2107 = extractvalue %dx.types.CBufRet.f32 %2104, 1
  %2108 = extractvalue %dx.types.CBufRet.f32 %2104, 2
  %2109 = fcmp fast olt float %2108, -5.000000e-01
  %2110 = call float @dx.op.dot3.f32(i32 55, float %2079, float %2080, float %2081, float %2079, float %2080, float %2081)  ; Dot3(ax,ay,az,bx,by,bz)
  %2111 = call float @dx.op.unary.f32(i32 25, float %2110)  ; Rsqrt(value)
  %2112 = fmul fast float %2111, %2110
  %2113 = fmul fast float %2111, %2079
  %2114 = fmul fast float %2111, %2080
  %2115 = fmul fast float %2111, %2081
  %2116 = fadd fast float %2112, %2086
  %2117 = call float @dx.op.dot3.f32(i32 55, float %2113, float %2114, float %2115, float %2083, float %2084, float %2085)  ; Dot3(ax,ay,az,bx,by,bz)
  %2118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2119 = extractvalue %dx.types.CBufRet.i32 %2118, 1
  %2120 = and i32 %2119, 1
  %2121 = icmp ne i32 %2120, 0
  %2122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2123 = extractvalue %dx.types.CBufRet.f32 %2122, 2
  %2124 = fcmp fast ogt float %2123, 0.000000e+00
  %2125 = and i1 %2121, %2124
  br i1 %2125, label %2126, label %2532, !dx.controlflow.hints !73

; <label>:2126                                    ; preds = %2034
  %2127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2128 = extractvalue %dx.types.CBufRet.f32 %2127, 3
  %2129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2130 = extractvalue %dx.types.CBufRet.f32 %2129, 2
  %2131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2132 = extractvalue %dx.types.CBufRet.f32 %2131, 2
  %2133 = fsub fast float %2130, %2132
  %2134 = and i32 %2119, 2
  %2135 = extractvalue %dx.types.CBufRet.i32 %2118, 0
  %2136 = call i32 @dx.op.binary.i32(i32 40, i32 %2135, i32 3)  ; UMin(a,b)
  %2137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2138 = extractvalue %dx.types.CBufRet.f32 %2137, 0
  %2139 = extractvalue %dx.types.CBufRet.f32 %2137, 1
  %2140 = extractvalue %dx.types.CBufRet.f32 %2131, 0
  %2141 = extractvalue %dx.types.CBufRet.f32 %2131, 1
  %2142 = fsub fast float %2138, %2140
  %2143 = fsub fast float %2139, %2141
  %2144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2145 = extractvalue %dx.types.CBufRet.f32 %2144, 0
  %2146 = fcmp fast ogt float %2145, 0.000000e+00
  %2147 = fsub fast float -0.000000e+00, %2142
  %2148 = fsub fast float -0.000000e+00, %2143
  %2149 = call float @dx.op.dot2.f32(i32 54, float %2113, float %2114, float %2113, float %2114)  ; Dot2(ax,ay,bx,by)
  %2150 = call float @dx.op.dot2.f32(i32 54, float %2113, float %2114, float %2147, float %2148)  ; Dot2(ax,ay,bx,by)
  %2151 = fmul fast float %2150, 2.000000e+00
  %2152 = call float @dx.op.dot2.f32(i32 54, float %2147, float %2148, float %2147, float %2148)  ; Dot2(ax,ay,bx,by)
  %2153 = fmul fast float %2145, %2145
  %2154 = fsub fast float %2152, %2153
  %2155 = fmul fast float %2151, %2151
  %2156 = fmul fast float %2149, 4.000000e+00
  %2157 = fmul fast float %2156, %2154
  %2158 = fsub fast float %2155, %2157
  %2159 = fcmp fast ogt float %2158, 0.000000e+00
  br i1 %2159, label %2160, label %2175, !dx.controlflow.hints !74

; <label>:2160                                    ; preds = %2126
  %2161 = fcmp fast ogt float %2151, 0.000000e+00
  %2162 = call float @dx.op.unary.f32(i32 24, float %2158)  ; Sqrt(value)
  %2163 = fsub fast float -0.000000e+00, %2162
  %2164 = select i1 %2161, float %2162, float %2163
  %2165 = fadd fast float %2164, %2151
  %2166 = fmul float %2165, -5.000000e-01
  %2167 = fdiv fast float %2166, %2149
  %2168 = call float @dx.op.binary.f32(i32 35, float %2167, float 0.000000e+00)  ; FMax(a,b)
  %2169 = call float @dx.op.binary.f32(i32 36, float %2112, float %2168)  ; FMin(a,b)
  %2170 = fdiv fast float %2154, %2166
  %2171 = call float @dx.op.binary.f32(i32 35, float %2170, float 0.000000e+00)  ; FMax(a,b)
  %2172 = call float @dx.op.binary.f32(i32 36, float %2112, float %2171)  ; FMin(a,b)
  %2173 = call float @dx.op.binary.f32(i32 36, float %2169, float %2172)  ; FMin(a,b)
  %2174 = call float @dx.op.binary.f32(i32 35, float %2169, float %2172)  ; FMax(a,b)
  br label %2175

; <label>:2175                                    ; preds = %2160, %2126
  %2176 = phi float [ %2174, %2160 ], [ -1.000000e+00, %2126 ]
  %2177 = phi float [ %2173, %2160 ], [ -1.000000e+00, %2126 ]
  %2178 = phi i1 [ true, %2160 ], [ false, %2126 ]
  %2179 = and i1 %2146, %2178
  br i1 %2179, label %2180, label %2182, !dx.controlflow.hints !75

; <label>:2180                                    ; preds = %2175
  %2181 = fcmp fast oeq float %2177, %2176
  br i1 %2181, label %2485, label %2183, !dx.controlflow.hints !76

; <label>:2182                                    ; preds = %2175
  br i1 %2146, label %2485, label %2183, !dx.controlflow.hints !77

; <label>:2183                                    ; preds = %2182, %2180
  %2184 = phi float [ %2112, %2182 ], [ %2176, %2180 ]
  %2185 = phi float [ 0.000000e+00, %2182 ], [ %2177, %2180 ]
  %2186 = icmp ne i32 %2134, 0
  %2187 = fmul fast float %2184, %2115
  %2188 = fadd fast float %2187, %2128
  %2189 = fmul fast float %2188, %2184
  %2190 = select i1 %2186, float 0.000000e+00, float %2189
  %2191 = fcmp fast oeq float %2115, 0.000000e+00
  %2192 = fdiv fast float %2133, %2115
  %2193 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2192)  ; FMax(a,b)
  %2194 = select i1 %2191, float %2184, float %2193
  %2195 = call float @dx.op.binary.f32(i32 36, float %2184, float %2194)  ; FMin(a,b)
  %2196 = fcmp fast ogt float %2115, 0.000000e+00
  %2197 = fcmp fast olt float %2133, 0.000000e+00
  br i1 %2196, label %2198, label %2255, !dx.controlflow.hints !78

; <label>:2198                                    ; preds = %2183
  %2199 = icmp eq i32 %2134, 0
  br i1 %2197, label %2200, label %2244, !dx.controlflow.hints !79

; <label>:2200                                    ; preds = %2198
  %2201 = select i1 %2199, float %2184, float 0.000000e+00
  %2202 = fsub fast float -0.000000e+00, %2201
  %2203 = call float @dx.op.unary.f32(i32 6, float %2202)  ; FAbs(value)
  %2204 = fmul fast float %2201, %2115
  %2205 = fadd fast float %2204, %2128
  %2206 = fmul fast float %2203, %2205
  %2207 = fsub fast float %2190, %2206
  %2208 = fsub fast float %2184, %2203
  %2209 = select i1 %2199, float %2208, float 0.000000e+00
  %2210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2211 = extractvalue %dx.types.CBufRet.f32 %2210, 0
  %2212 = extractvalue %dx.types.CBufRet.f32 %2210, 1
  %2213 = extractvalue %dx.types.CBufRet.f32 %2210, 2
  %2214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2215 = extractvalue %dx.types.CBufRet.f32 %2214, 0
  %2216 = extractvalue %dx.types.CBufRet.f32 %2214, 1
  %2217 = extractvalue %dx.types.CBufRet.f32 %2214, 2
  %2218 = extractvalue %dx.types.CBufRet.f32 %2214, 3
  %2219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2220 = extractvalue %dx.types.CBufRet.f32 %2219, 3
  %2221 = call float @dx.op.binary.f32(i32 36, float %2207, float %2220)  ; FMin(a,b)
  %2222 = fmul fast float %2218, %2209
  %2223 = call float @dx.op.unary.f32(i32 7, float %2222)  ; Saturate(value)
  %2224 = fsub fast float %2215, %2211
  %2225 = fsub fast float %2216, %2212
  %2226 = fsub fast float %2217, %2213
  %2227 = fmul fast float %2223, %2224
  %2228 = fmul fast float %2223, %2225
  %2229 = fmul fast float %2223, %2226
  %2230 = fadd fast float %2227, %2211
  %2231 = fadd fast float %2228, %2212
  %2232 = fadd fast float %2229, %2213
  %2233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2234 = extractvalue %dx.types.CBufRet.f32 %2233, 0
  %2235 = extractvalue %dx.types.CBufRet.f32 %2233, 1
  %2236 = fadd fast float %2235, %2234
  %2237 = call float @dx.op.unary.f32(i32 7, float %2236)  ; Saturate(value)
  %2238 = extractvalue %dx.types.CBufRet.f32 %2233, 2
  %2239 = extractvalue %dx.types.CBufRet.f32 %2233, 3
  %2240 = fadd fast float %2239, %2238
  %2241 = call float @dx.op.unary.f32(i32 7, float %2240)  ; Saturate(value)
  %2242 = fmul fast float %2237, %2221
  %2243 = fmul fast float %2242, %2241
  br label %2485

; <label>:2244                                    ; preds = %2198
  br i1 %2199, label %2245, label %2266, !dx.controlflow.hints !80

; <label>:2245                                    ; preds = %2244
  %2246 = call float @dx.op.binary.f32(i32 36, float %2195, float %2185)  ; FMin(a,b)
  %2247 = fsub fast float %2195, %2246
  %2248 = fsub fast float %2247, %2184
  %2249 = call float @dx.op.unary.f32(i32 6, float %2248)  ; FAbs(value)
  %2250 = fadd fast float %2247, %2184
  %2251 = fmul fast float %2250, %2115
  %2252 = fadd fast float %2251, %2128
  %2253 = fmul fast float %2252, %2249
  %2254 = fsub fast float %2190, %2253
  br label %2266

; <label>:2255                                    ; preds = %2183
  br i1 %2197, label %2256, label %2266, !dx.controlflow.hints !81

; <label>:2256                                    ; preds = %2255
  %2257 = call float @dx.op.binary.f32(i32 35, float %2185, float %2195)  ; FMax(a,b)
  %2258 = icmp eq i32 %2134, 0
  %2259 = select i1 %2258, float %2195, float 0.000000e+00
  %2260 = fsub fast float -0.000000e+00, %2259
  %2261 = call float @dx.op.unary.f32(i32 6, float %2260)  ; FAbs(value)
  %2262 = fmul fast float %2259, %2115
  %2263 = fadd fast float %2262, %2128
  %2264 = fmul fast float %2261, %2263
  %2265 = fsub fast float %2190, %2264
  br label %2266

; <label>:2266                                    ; preds = %2256, %2255, %2245, %2244
  %2267 = phi float [ %2185, %2244 ], [ %2185, %2245 ], [ %2257, %2256 ], [ %2185, %2255 ]
  %2268 = phi float [ 0.000000e+00, %2244 ], [ %2249, %2245 ], [ %2261, %2256 ], [ 0.000000e+00, %2255 ]
  %2269 = phi float [ %2190, %2244 ], [ %2254, %2245 ], [ %2265, %2256 ], [ %2190, %2255 ]
  %2270 = phi float [ %2195, %2244 ], [ %2195, %2245 ], [ %2184, %2256 ], [ %2184, %2255 ]
  %2271 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 0
  store float -1.000000e+00, float* %2271, align 4, !tbaa !82, !noalias !86
  %2272 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 1
  store float -1.000000e+00, float* %2272, align 4, !tbaa !82, !noalias !86
  %2273 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 2
  store float -1.000000e+00, float* %2273, align 4, !tbaa !82, !noalias !86
  %2274 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 0
  store float -1.000000e+00, float* %2274, align 4, !tbaa !82, !noalias !86
  %2275 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 1
  store float -1.000000e+00, float* %2275, align 4, !tbaa !82, !noalias !86
  %2276 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 2
  store float -1.000000e+00, float* %2276, align 4, !tbaa !82, !noalias !86
  %2277 = icmp sgt i32 %2136, 0
  br i1 %2277, label %2278, label %2339

; <label>:2278                                    ; preds = %2266
  br label %2279

; <label>:2279                                    ; preds = %2328, %2278
  %2280 = phi i32 [ %2329, %2328 ], [ 0, %2278 ]
  %2281 = phi i32 [ %2330, %2328 ], [ 0, %2278 ]
  %2282 = add nuw i32 %2281, 171
  %2283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %2282)  ; CBufferLoadLegacy(handle,regIndex)
  %2284 = extractvalue %dx.types.CBufRet.f32 %2283, 0
  %2285 = extractvalue %dx.types.CBufRet.f32 %2283, 1
  %2286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2287 = extractvalue %dx.types.CBufRet.f32 %2286, 0
  %2288 = extractvalue %dx.types.CBufRet.f32 %2286, 1
  %2289 = fsub fast float %2284, %2287
  %2290 = fsub fast float %2285, %2288
  %2291 = extractvalue %dx.types.CBufRet.f32 %2283, 2
  %2292 = fsub fast float -0.000000e+00, %2289
  %2293 = fsub fast float -0.000000e+00, %2290
  %2294 = call float @dx.op.dot2.f32(i32 54, float %2113, float %2114, float %2292, float %2293)  ; Dot2(ax,ay,bx,by)
  %2295 = fmul fast float %2294, 2.000000e+00
  %2296 = call float @dx.op.dot2.f32(i32 54, float %2292, float %2293, float %2292, float %2293)  ; Dot2(ax,ay,bx,by)
  %2297 = fmul fast float %2291, %2291
  %2298 = fsub fast float %2296, %2297
  %2299 = fmul fast float %2295, %2295
  %2300 = fmul fast float %2156, %2298
  %2301 = fsub fast float %2299, %2300
  %2302 = fcmp fast ogt float %2301, 0.000000e+00
  br i1 %2302, label %2303, label %2318, !dx.controlflow.hints !74

; <label>:2303                                    ; preds = %2279
  %2304 = fcmp fast ogt float %2295, 0.000000e+00
  %2305 = call float @dx.op.unary.f32(i32 24, float %2301)  ; Sqrt(value)
  %2306 = fsub fast float -0.000000e+00, %2305
  %2307 = select i1 %2304, float %2305, float %2306
  %2308 = fadd fast float %2307, %2295
  %2309 = fmul float %2308, -5.000000e-01
  %2310 = fdiv fast float %2309, %2149
  %2311 = call float @dx.op.binary.f32(i32 35, float %2310, float 0.000000e+00)  ; FMax(a,b)
  %2312 = call float @dx.op.binary.f32(i32 36, float %2184, float %2311)  ; FMin(a,b)
  %2313 = fdiv fast float %2298, %2309
  %2314 = call float @dx.op.binary.f32(i32 35, float %2313, float 0.000000e+00)  ; FMax(a,b)
  %2315 = call float @dx.op.binary.f32(i32 36, float %2184, float %2314)  ; FMin(a,b)
  %2316 = call float @dx.op.binary.f32(i32 36, float %2312, float %2315)  ; FMin(a,b)
  %2317 = call float @dx.op.binary.f32(i32 35, float %2312, float %2315)  ; FMax(a,b)
  br label %2318

; <label>:2318                                    ; preds = %2303, %2279
  %2319 = phi float [ %2317, %2303 ], [ -1.000000e+00, %2279 ]
  %2320 = phi float [ %2316, %2303 ], [ -1.000000e+00, %2279 ]
  %2321 = phi i1 [ true, %2303 ], [ false, %2279 ]
  br i1 %2321, label %2322, label %2328, !dx.controlflow.hints !97

; <label>:2322                                    ; preds = %2318
  %2323 = call float @dx.op.binary.f32(i32 35, float %2267, float %2320)  ; FMax(a,b)
  %2324 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %2281
  store float %2323, float* %2324, align 4, !tbaa !82, !noalias !86
  %2325 = call float @dx.op.binary.f32(i32 35, float %2267, float %2319)  ; FMax(a,b)
  %2326 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %2281
  store float %2325, float* %2326, align 4, !tbaa !82, !noalias !86
  %2327 = add nsw i32 %2280, 1
  br label %2328

; <label>:2328                                    ; preds = %2322, %2318
  %2329 = phi i32 [ %2327, %2322 ], [ %2280, %2318 ]
  %2330 = add nuw nsw i32 %2281, 1
  %2331 = icmp eq i32 %2330, %2136
  br i1 %2331, label %2332, label %2279

; <label>:2332                                    ; preds = %2328
  %2333 = load float, float* %2273, align 4, !tbaa !82, !alias.scope !98, !noalias !101
  %2334 = load float, float* %2272, align 4, !tbaa !82, !alias.scope !104, !noalias !105
  %2335 = load float, float* %2271, align 4, !tbaa !82, !alias.scope !106, !noalias !107
  %2336 = load float, float* %2276, align 4, !tbaa !82, !alias.scope !108, !noalias !111
  %2337 = load float, float* %2275, align 4, !tbaa !82, !alias.scope !114, !noalias !115
  %2338 = load float, float* %2274, align 4, !tbaa !82, !alias.scope !116, !noalias !117
  br label %2339

; <label>:2339                                    ; preds = %2332, %2266
  %2340 = phi float [ -1.000000e+00, %2266 ], [ %2338, %2332 ]
  %2341 = phi float [ -1.000000e+00, %2266 ], [ %2337, %2332 ]
  %2342 = phi float [ -1.000000e+00, %2266 ], [ %2336, %2332 ]
  %2343 = phi float [ -1.000000e+00, %2266 ], [ %2335, %2332 ]
  %2344 = phi float [ -1.000000e+00, %2266 ], [ %2334, %2332 ]
  %2345 = phi float [ -1.000000e+00, %2266 ], [ %2333, %2332 ]
  %2346 = phi i32 [ 0, %2266 ], [ %2329, %2332 ]
  %2347 = call float @dx.op.binary.f32(i32 36, float %2344, float %2345)  ; FMin(a,b)
  %2348 = call float @dx.op.binary.f32(i32 36, float %2343, float %2347)  ; FMin(a,b)
  %2349 = call float @dx.op.binary.f32(i32 35, float %2343, float %2344)  ; FMax(a,b)
  %2350 = call float @dx.op.binary.f32(i32 36, float %2349, float %2345)  ; FMin(a,b)
  %2351 = call float @dx.op.binary.f32(i32 36, float %2343, float %2344)  ; FMin(a,b)
  %2352 = call float @dx.op.binary.f32(i32 35, float %2351, float %2350)  ; FMax(a,b)
  %2353 = call float @dx.op.binary.f32(i32 35, float %2344, float %2345)  ; FMax(a,b)
  %2354 = call float @dx.op.binary.f32(i32 35, float %2343, float %2353)  ; FMax(a,b)
  store float %2348, float* %2271, align 4, !tbaa !82, !alias.scope !106, !noalias !107
  store float %2352, float* %2272, align 4, !tbaa !82, !alias.scope !104, !noalias !105
  store float %2354, float* %2273, align 4, !tbaa !82, !alias.scope !98, !noalias !101
  %2355 = call float @dx.op.binary.f32(i32 36, float %2341, float %2342)  ; FMin(a,b)
  %2356 = call float @dx.op.binary.f32(i32 36, float %2340, float %2355)  ; FMin(a,b)
  %2357 = call float @dx.op.binary.f32(i32 35, float %2340, float %2341)  ; FMax(a,b)
  %2358 = call float @dx.op.binary.f32(i32 36, float %2357, float %2342)  ; FMin(a,b)
  %2359 = call float @dx.op.binary.f32(i32 36, float %2340, float %2341)  ; FMin(a,b)
  %2360 = call float @dx.op.binary.f32(i32 35, float %2359, float %2358)  ; FMax(a,b)
  %2361 = call float @dx.op.binary.f32(i32 35, float %2341, float %2342)  ; FMax(a,b)
  %2362 = call float @dx.op.binary.f32(i32 35, float %2340, float %2361)  ; FMax(a,b)
  store float %2356, float* %2274, align 4, !tbaa !82, !alias.scope !116, !noalias !117
  store float %2360, float* %2275, align 4, !tbaa !82, !alias.scope !114, !noalias !115
  store float %2362, float* %2276, align 4, !tbaa !82, !alias.scope !108, !noalias !111
  %2363 = sub nsw i32 3, %2346
  %2364 = icmp sgt i32 %2363, 2
  br i1 %2364, label %2365, label %2403, !dx.controlflow.hints !118

; <label>:2365                                    ; preds = %2339
  %2366 = icmp eq i32 %2134, 0
  %2367 = fsub fast float %2184, %2268
  %2368 = select i1 %2366, float %2367, float %2268
  %2369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2370 = extractvalue %dx.types.CBufRet.f32 %2369, 0
  %2371 = extractvalue %dx.types.CBufRet.f32 %2369, 1
  %2372 = extractvalue %dx.types.CBufRet.f32 %2369, 2
  %2373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2374 = extractvalue %dx.types.CBufRet.f32 %2373, 0
  %2375 = extractvalue %dx.types.CBufRet.f32 %2373, 1
  %2376 = extractvalue %dx.types.CBufRet.f32 %2373, 2
  %2377 = extractvalue %dx.types.CBufRet.f32 %2373, 3
  %2378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2379 = extractvalue %dx.types.CBufRet.f32 %2378, 3
  %2380 = call float @dx.op.binary.f32(i32 36, float %2269, float %2379)  ; FMin(a,b)
  %2381 = fmul fast float %2377, %2368
  %2382 = call float @dx.op.unary.f32(i32 7, float %2381)  ; Saturate(value)
  %2383 = fsub fast float %2374, %2370
  %2384 = fsub fast float %2375, %2371
  %2385 = fsub fast float %2376, %2372
  %2386 = fmul fast float %2382, %2383
  %2387 = fmul fast float %2382, %2384
  %2388 = fmul fast float %2382, %2385
  %2389 = fadd fast float %2386, %2370
  %2390 = fadd fast float %2387, %2371
  %2391 = fadd fast float %2388, %2372
  %2392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2393 = extractvalue %dx.types.CBufRet.f32 %2392, 0
  %2394 = extractvalue %dx.types.CBufRet.f32 %2392, 1
  %2395 = fadd fast float %2394, %2393
  %2396 = call float @dx.op.unary.f32(i32 7, float %2395)  ; Saturate(value)
  %2397 = extractvalue %dx.types.CBufRet.f32 %2392, 2
  %2398 = extractvalue %dx.types.CBufRet.f32 %2392, 3
  %2399 = fadd fast float %2398, %2397
  %2400 = call float @dx.op.unary.f32(i32 7, float %2399)  ; Saturate(value)
  %2401 = fmul fast float %2396, %2380
  %2402 = fmul fast float %2401, %2400
  br label %2485

; <label>:2403                                    ; preds = %2339
  %2404 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %2363
  %2405 = load float, float* %2404, align 4, !tbaa !82, !noalias !86
  %2406 = fcmp fast olt float %2405, %2270
  %2407 = icmp sgt i32 %2346, 0
  %2408 = and i1 %2407, %2406
  br i1 %2408, label %2409, label %2446

; <label>:2409                                    ; preds = %2403
  br label %2410

; <label>:2410                                    ; preds = %2439, %2409
  %2411 = phi float [ %2440, %2439 ], [ %2268, %2409 ]
  %2412 = phi float [ %2441, %2439 ], [ %2269, %2409 ]
  %2413 = phi float [ %2421, %2439 ], [ %2405, %2409 ]
  %2414 = phi i32 [ %2418, %2439 ], [ %2363, %2409 ]
  %2415 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %2414
  %2416 = load float, float* %2415, align 4, !tbaa !82, !noalias !86
  %2417 = icmp slt i32 %2414, 2
  %2418 = add nsw i32 %2414, 1
  %2419 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %2418
  %2420 = load float, float* %2419, align 4, !tbaa !82, !noalias !86
  %2421 = select i1 %2417, float %2420, float %2184
  %2422 = call float @dx.op.binary.f32(i32 36, float %2421, float %2416)  ; FMin(a,b)
  %2423 = call float @dx.op.binary.f32(i32 36, float %2270, float %2422)  ; FMin(a,b)
  %2424 = icmp eq i32 %2134, 0
  %2425 = fadd fast float %2423, %2413
  %2426 = fmul fast float %2425, %2115
  %2427 = fadd fast float %2426, %2128
  br i1 %2424, label %2433, label %2428, !dx.controlflow.hints !119

; <label>:2428                                    ; preds = %2410
  %2429 = fsub fast float %2423, %2413
  %2430 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2429)  ; FMax(a,b)
  %2431 = fmul fast float %2430, %2427
  %2432 = fadd fast float %2431, %2412
  br label %2439

; <label>:2433                                    ; preds = %2410
  %2434 = fsub fast float %2413, %2423
  %2435 = call float @dx.op.unary.f32(i32 6, float %2434)  ; FAbs(value)
  %2436 = fadd fast float %2435, %2411
  %2437 = fmul fast float %2435, %2427
  %2438 = fsub fast float %2412, %2437
  br label %2439

; <label>:2439                                    ; preds = %2433, %2428
  %2440 = phi float [ %2430, %2428 ], [ %2436, %2433 ]
  %2441 = phi float [ %2432, %2428 ], [ %2438, %2433 ]
  %2442 = fcmp fast olt float %2421, %2270
  %2443 = icmp slt i32 %2418, 3
  %2444 = and i1 %2443, %2442
  br i1 %2444, label %2410, label %2445

; <label>:2445                                    ; preds = %2439
  br label %2446

; <label>:2446                                    ; preds = %2445, %2403
  %2447 = phi float [ %2268, %2403 ], [ %2440, %2445 ]
  %2448 = phi float [ %2269, %2403 ], [ %2441, %2445 ]
  %2449 = fsub fast float %2184, %2447
  %2450 = select i1 %2186, float %2447, float %2449
  %2451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2452 = extractvalue %dx.types.CBufRet.f32 %2451, 0
  %2453 = extractvalue %dx.types.CBufRet.f32 %2451, 1
  %2454 = extractvalue %dx.types.CBufRet.f32 %2451, 2
  %2455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2456 = extractvalue %dx.types.CBufRet.f32 %2455, 0
  %2457 = extractvalue %dx.types.CBufRet.f32 %2455, 1
  %2458 = extractvalue %dx.types.CBufRet.f32 %2455, 2
  %2459 = extractvalue %dx.types.CBufRet.f32 %2455, 3
  %2460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2461 = extractvalue %dx.types.CBufRet.f32 %2460, 3
  %2462 = call float @dx.op.binary.f32(i32 36, float %2448, float %2461)  ; FMin(a,b)
  %2463 = fmul fast float %2459, %2450
  %2464 = call float @dx.op.unary.f32(i32 7, float %2463)  ; Saturate(value)
  %2465 = fsub fast float %2456, %2452
  %2466 = fsub fast float %2457, %2453
  %2467 = fsub fast float %2458, %2454
  %2468 = fmul fast float %2464, %2465
  %2469 = fmul fast float %2464, %2466
  %2470 = fmul fast float %2464, %2467
  %2471 = fadd fast float %2468, %2452
  %2472 = fadd fast float %2469, %2453
  %2473 = fadd fast float %2470, %2454
  %2474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2475 = extractvalue %dx.types.CBufRet.f32 %2474, 0
  %2476 = extractvalue %dx.types.CBufRet.f32 %2474, 1
  %2477 = fadd fast float %2476, %2475
  %2478 = call float @dx.op.unary.f32(i32 7, float %2477)  ; Saturate(value)
  %2479 = extractvalue %dx.types.CBufRet.f32 %2474, 2
  %2480 = extractvalue %dx.types.CBufRet.f32 %2474, 3
  %2481 = fadd fast float %2480, %2479
  %2482 = call float @dx.op.unary.f32(i32 7, float %2481)  ; Saturate(value)
  %2483 = fmul fast float %2478, %2462
  %2484 = fmul fast float %2483, %2482
  br label %2485

; <label>:2485                                    ; preds = %2446, %2365, %2200, %2182, %2180
  %2486 = phi float [ %2209, %2200 ], [ %2368, %2365 ], [ %2450, %2446 ], [ 0.000000e+00, %2180 ], [ 0.000000e+00, %2182 ]
  %2487 = phi float [ %2243, %2200 ], [ %2402, %2365 ], [ %2484, %2446 ], [ 0.000000e+00, %2180 ], [ 0.000000e+00, %2182 ]
  %2488 = phi float [ %2230, %2200 ], [ %2389, %2365 ], [ %2471, %2446 ], [ 0.000000e+00, %2180 ], [ 0.000000e+00, %2182 ]
  %2489 = phi float [ %2231, %2200 ], [ %2390, %2365 ], [ %2472, %2446 ], [ 0.000000e+00, %2180 ], [ 0.000000e+00, %2182 ]
  %2490 = phi float [ %2232, %2200 ], [ %2391, %2365 ], [ %2473, %2446 ], [ 0.000000e+00, %2180 ], [ 0.000000e+00, %2182 ]
  %2491 = fmul fast float %2123, %2487
  %2492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2493 = extractvalue %dx.types.CBufRet.f32 %2492, 2
  %2494 = fsub fast float %2130, %2493
  %2495 = fcmp fast olt float %2491, -2.000000e+01
  %2496 = call float @dx.op.unary.f32(i32 21, float %2491)  ; Exp(value)
  %2497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2498 = extractvalue %dx.types.CBufRet.f32 %2497, 2
  %2499 = extractvalue %dx.types.CBufRet.f32 %2497, 3
  %2500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.f32 %2500, 2
  %2502 = fmul fast float %2499, %2494
  %2503 = call float @dx.op.unary.f32(i32 7, float %2502)  ; Saturate(value)
  %2504 = fsub fast float 1.000000e+00, %2503
  %2505 = fmul fast float %2115, 5.000000e-01
  %2506 = fadd fast float %2505, 5.000000e-01
  %2507 = call float @dx.op.unary.f32(i32 7, float %2506)  ; Saturate(value)
  %2508 = fsub fast float 1.000000e+00, %2507
  %2509 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2504)  ; FMax(a,b)
  %2510 = fdiv fast float %2508, %2509
  %2511 = fsub fast float %2494, %2081
  %2512 = call float @dx.op.unary.f32(i32 6, float %2511)  ; FAbs(value)
  %2513 = fmul fast float %2512, %2498
  %2514 = call float @dx.op.unary.f32(i32 7, float %2510)  ; Saturate(value)
  %2515 = fsub fast float 1.000000e+00, %2513
  %2516 = fmul fast float %2515, %2514
  %2517 = fadd fast float %2516, %2513
  %2518 = fmul fast float %2501, %2494
  %2519 = call float @dx.op.unary.f32(i32 7, float %2518)  ; Saturate(value)
  %2520 = fsub fast float 1.000000e+00, %2517
  %2521 = fmul fast float %2520, %2519
  %2522 = fadd fast float %2521, %2517
  %2523 = call float @dx.op.unary.f32(i32 7, float %2522)  ; Saturate(value)
  %2524 = fadd fast float %2496, -1.000000e+00
  %2525 = select i1 %2495, float -1.000000e+00, float %2524
  %2526 = fmul fast float %2523, %2525
  %2527 = fadd fast float %2526, 1.000000e+00
  %2528 = fsub fast float -0.000000e+00, %2526
  %2529 = fmul fast float %2488, %2528
  %2530 = fmul fast float %2489, %2528
  %2531 = fmul fast float %2490, %2528
  br label %2532

; <label>:2532                                    ; preds = %2485, %2034
  %2533 = phi float [ %2486, %2485 ], [ 0.000000e+00, %2034 ]
  %2534 = phi float [ %2527, %2485 ], [ 1.000000e+00, %2034 ]
  %2535 = phi float [ %2529, %2485 ], [ 0.000000e+00, %2034 ]
  %2536 = phi float [ %2530, %2485 ], [ 0.000000e+00, %2034 ]
  %2537 = phi float [ %2531, %2485 ], [ 0.000000e+00, %2034 ]
  %2538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2539 = extractvalue %dx.types.CBufRet.f32 %2538, 1
  %2540 = fsub fast float 1.000000e+00, %2534
  %2541 = fmul fast float %2540, %2116
  %2542 = fmul fast float %2541, %2539
  %2543 = fsub fast float %2116, %2542
  br i1 %2109, label %2544, label %2573, !dx.controlflow.hints !120

; <label>:2544                                    ; preds = %2532
  %2545 = fmul fast float %2117, %2106
  %2546 = fadd fast float %2545, %2107
  %2547 = call float @dx.op.unary.f32(i32 7, float %2546)  ; Saturate(value)
  %2548 = fmul fast float %2088, %2543
  %2549 = fsub fast float -0.000000e+00, %2548
  %2550 = fmul fast float %2089, %2543
  %2551 = fsub fast float -0.000000e+00, %2550
  %2552 = call float @dx.op.unary.f32(i32 21, float %2549)  ; Exp(value)
  %2553 = call float @dx.op.unary.f32(i32 21, float %2551)  ; Exp(value)
  %2554 = call float @dx.op.binary.f32(i32 35, float %2096, float %2552)  ; FMax(a,b)
  %2555 = call float @dx.op.binary.f32(i32 35, float %2096, float %2553)  ; FMax(a,b)
  %2556 = fsub fast float %2555, %2554
  %2557 = fmul fast float %2556, %2547
  %2558 = fadd fast float %2557, %2554
  %2559 = call float @dx.op.unary.f32(i32 7, float %2558)  ; Saturate(value)
  %2560 = fsub fast float %2093, %2098
  %2561 = fsub fast float %2094, %2099
  %2562 = fsub fast float %2095, %2100
  %2563 = fmul fast float %2547, %2560
  %2564 = fmul fast float %2547, %2561
  %2565 = fmul fast float %2547, %2562
  %2566 = fadd fast float %2563, %2098
  %2567 = fadd fast float %2564, %2099
  %2568 = fadd fast float %2565, %2100
  %2569 = fsub fast float 1.000000e+00, %2559
  %2570 = fmul fast float %2569, %2566
  %2571 = fmul fast float %2569, %2567
  %2572 = fmul fast float %2569, %2568
  br label %2632

; <label>:2573                                    ; preds = %2532
  %2574 = fmul fast float %2543, %2105
  %2575 = call float @dx.op.unary.f32(i32 7, float %2574)  ; Saturate(value)
  %2576 = fsub fast float 2.000000e+00, %2575
  %2577 = fmul fast float %2575, 9.921875e-01
  %2578 = fmul fast float %2577, %2576
  %2579 = fadd fast float %2578, 3.906250e-03
  %2580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %2579, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2581 = extractvalue %dx.types.ResRet.f32 %2580, 0
  %2582 = fsub fast float %2575, %2581
  %2583 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2582)  ; FMax(a,b)
  %2584 = fmul fast float %2091, %2081
  %2585 = call float @dx.op.unary.f32(i32 6, float %2584)  ; FAbs(value)
  %2586 = fcmp fast ogt float %2585, 0x3EB0C6F7A0000000
  br i1 %2586, label %2587, label %2593, !dx.controlflow.hints !121

; <label>:2587                                    ; preds = %2573
  %2588 = fmul fast float %2584, 0xBFF7154760000000
  %2589 = call float @dx.op.unary.f32(i32 21, float %2588)  ; Exp(value)
  %2590 = fsub fast float 1.000000e+00, %2589
  %2591 = fdiv fast float %2590, %2584
  %2592 = fmul fast float %2591, %2101
  br label %2593

; <label>:2593                                    ; preds = %2587, %2573
  %2594 = phi float [ %2592, %2587 ], [ %2101, %2573 ]
  %2595 = fadd fast float %2594, %2103
  %2596 = fmul fast float %2595, %2583
  %2597 = fmul fast float %2088, %2596
  %2598 = fsub fast float -0.000000e+00, %2597
  %2599 = fmul fast float %2089, %2596
  %2600 = fsub fast float -0.000000e+00, %2599
  %2601 = fmul fast float %2090, %2596
  %2602 = fsub fast float -0.000000e+00, %2601
  %2603 = call float @dx.op.unary.f32(i32 21, float %2598)  ; Exp(value)
  %2604 = call float @dx.op.unary.f32(i32 21, float %2600)  ; Exp(value)
  %2605 = call float @dx.op.unary.f32(i32 21, float %2602)  ; Exp(value)
  %2606 = fmul fast float %2117, %2117
  %2607 = fadd fast float %2606, 1.000000e+00
  %2608 = fmul fast float %2607, 0x3FAE8EC8A0000000
  %2609 = fmul fast float %2608, %2098
  %2610 = fmul fast float %2608, %2099
  %2611 = fmul fast float %2608, %2100
  %2612 = fmul fast float %2117, %2096
  %2613 = fsub fast float 1.000000e+00, %2612
  %2614 = fmul fast float %2096, %2096
  %2615 = fsub fast float 1.000000e+00, %2614
  %2616 = fmul fast float %2615, 0x3FB45F3060000000
  %2617 = fmul fast float %2613, %2613
  %2618 = fdiv fast float 1.000000e+00, %2617
  %2619 = fmul fast float %2616, %2618
  %2620 = fmul fast float %2619, %2093
  %2621 = fmul fast float %2619, %2094
  %2622 = fmul fast float %2619, %2095
  %2623 = fadd fast float %2620, %2609
  %2624 = fadd fast float %2621, %2610
  %2625 = fadd fast float %2622, %2611
  %2626 = fsub fast float 1.000000e+00, %2603
  %2627 = fsub fast float 1.000000e+00, %2604
  %2628 = fsub fast float 1.000000e+00, %2605
  %2629 = fmul fast float %2623, %2626
  %2630 = fmul fast float %2624, %2627
  %2631 = fmul fast float %2625, %2628
  br label %2632

; <label>:2632                                    ; preds = %2593, %2544
  %2633 = phi float [ %2570, %2544 ], [ %2629, %2593 ]
  %2634 = phi float [ %2571, %2544 ], [ %2630, %2593 ]
  %2635 = phi float [ %2572, %2544 ], [ %2631, %2593 ]
  %2636 = phi float [ %2559, %2544 ], [ %2603, %2593 ]
  %2637 = phi float [ %2559, %2544 ], [ %2604, %2593 ]
  %2638 = phi float [ %2559, %2544 ], [ %2605, %2593 ]
  br i1 %2125, label %2639, label %2837, !dx.controlflow.hints !122

; <label>:2639                                    ; preds = %2632
  %2640 = extractvalue %dx.types.CBufRet.f32 %2538, 0
  %2641 = fmul fast float %2640, %2540
  %2642 = fsub fast float %2535, %2633
  %2643 = fsub fast float %2536, %2634
  %2644 = fsub fast float %2537, %2635
  %2645 = fmul fast float %2641, %2642
  %2646 = fmul fast float %2641, %2643
  %2647 = fmul fast float %2641, %2644
  %2648 = fadd fast float %2645, %2633
  %2649 = fadd fast float %2646, %2634
  %2650 = fadd fast float %2647, %2635
  %2651 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2636)  ; FMax(a,b)
  %2652 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2637)  ; FMax(a,b)
  %2653 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2638)  ; FMax(a,b)
  %2654 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2534)  ; FMax(a,b)
  %2655 = call float @dx.op.binary.f32(i32 35, float %2533, float %2543)  ; FMax(a,b)
  %2656 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2655)  ; FMax(a,b)
  %2657 = fdiv fast float %2533, %2656
  %2658 = call float @dx.op.unary.f32(i32 7, float %2657)  ; Saturate(value)
  %2659 = fdiv fast float %2543, %2656
  %2660 = call float @dx.op.unary.f32(i32 7, float %2659)  ; Saturate(value)
  %2661 = fcmp fast une float %2654, 1.000000e+00
  br i1 %2661, label %2662, label %2675, !dx.controlflow.hints !123

; <label>:2662                                    ; preds = %2639
  %2663 = call float @dx.op.unary.f32(i32 23, float %2654)  ; Log(value)
  %2664 = fmul fast float %2663, 0x3FE62E4300000000
  %2665 = fmul fast float %2535, %2664
  %2666 = fsub fast float -0.000000e+00, %2665
  %2667 = fmul fast float %2536, %2664
  %2668 = fsub fast float -0.000000e+00, %2667
  %2669 = fmul fast float %2537, %2664
  %2670 = fsub fast float -0.000000e+00, %2669
  %2671 = fsub fast float 1.000000e+00, %2654
  %2672 = fdiv fast float %2666, %2671
  %2673 = fdiv fast float %2668, %2671
  %2674 = fdiv fast float %2670, %2671
  br label %2675

; <label>:2675                                    ; preds = %2662, %2639
  %2676 = phi float [ %2672, %2662 ], [ %2535, %2639 ]
  %2677 = phi float [ %2673, %2662 ], [ %2536, %2639 ]
  %2678 = phi float [ %2674, %2662 ], [ %2537, %2639 ]
  %2679 = phi float [ %2664, %2662 ], [ 0.000000e+00, %2639 ]
  %2680 = fcmp fast une float %2651, 1.000000e+00
  br i1 %2680, label %2681, label %2688, !dx.controlflow.hints !124

; <label>:2681                                    ; preds = %2675
  %2682 = call float @dx.op.unary.f32(i32 23, float %2651)  ; Log(value)
  %2683 = fmul fast float %2682, 0x3FE62E4300000000
  %2684 = fmul fast float %2648, %2683
  %2685 = fsub fast float -0.000000e+00, %2684
  %2686 = fsub fast float 1.000000e+00, %2651
  %2687 = fdiv fast float %2685, %2686
  br label %2688

; <label>:2688                                    ; preds = %2681, %2675
  %2689 = phi float [ %2687, %2681 ], [ %2648, %2675 ]
  %2690 = phi float [ %2683, %2681 ], [ 0.000000e+00, %2675 ]
  %2691 = fcmp fast une float %2652, 1.000000e+00
  br i1 %2691, label %2692, label %2699, !dx.controlflow.hints !124

; <label>:2692                                    ; preds = %2688
  %2693 = call float @dx.op.unary.f32(i32 23, float %2652)  ; Log(value)
  %2694 = fmul fast float %2693, 0x3FE62E4300000000
  %2695 = fmul fast float %2649, %2694
  %2696 = fsub fast float -0.000000e+00, %2695
  %2697 = fsub fast float 1.000000e+00, %2652
  %2698 = fdiv fast float %2696, %2697
  br label %2699

; <label>:2699                                    ; preds = %2692, %2688
  %2700 = phi float [ %2698, %2692 ], [ %2649, %2688 ]
  %2701 = phi float [ %2694, %2692 ], [ 0.000000e+00, %2688 ]
  %2702 = fcmp fast une float %2653, 1.000000e+00
  br i1 %2702, label %2703, label %2710, !dx.controlflow.hints !124

; <label>:2703                                    ; preds = %2699
  %2704 = call float @dx.op.unary.f32(i32 23, float %2653)  ; Log(value)
  %2705 = fmul fast float %2704, 0x3FE62E4300000000
  %2706 = fmul fast float %2650, %2705
  %2707 = fsub fast float -0.000000e+00, %2706
  %2708 = fsub fast float 1.000000e+00, %2653
  %2709 = fdiv fast float %2707, %2708
  br label %2710

; <label>:2710                                    ; preds = %2703, %2699
  %2711 = phi float [ %2709, %2703 ], [ %2650, %2699 ]
  %2712 = phi float [ %2705, %2703 ], [ 0.000000e+00, %2699 ]
  %2713 = fmul fast float %2676, %2660
  %2714 = fmul fast float %2677, %2660
  %2715 = fmul fast float %2678, %2660
  %2716 = fmul fast float %2679, %2660
  %2717 = fmul fast float %2689, %2658
  %2718 = fmul fast float %2700, %2658
  %2719 = fmul fast float %2711, %2658
  %2720 = fmul fast float %2690, %2658
  %2721 = fmul fast float %2701, %2658
  %2722 = fmul fast float %2712, %2658
  %2723 = fadd fast float %2717, %2713
  %2724 = fadd fast float %2718, %2714
  %2725 = fadd fast float %2719, %2715
  %2726 = fadd fast float %2720, %2716
  %2727 = fadd fast float %2721, %2716
  %2728 = fadd fast float %2722, %2716
  %2729 = fcmp fast une float %2726, 0.000000e+00
  br i1 %2729, label %2730, label %2737, !dx.controlflow.hints !125

; <label>:2730                                    ; preds = %2710
  %2731 = fmul fast float %2726, 0x3FF7154760000000
  %2732 = call float @dx.op.unary.f32(i32 21, float %2731)  ; Exp(value)
  %2733 = fsub fast float 1.000000e+00, %2732
  %2734 = fmul fast float %2723, %2733
  %2735 = fsub fast float -0.000000e+00, %2734
  %2736 = fdiv fast float %2735, %2726
  br label %2737

; <label>:2737                                    ; preds = %2730, %2710
  %2738 = phi float [ %2732, %2730 ], [ 1.000000e+00, %2710 ]
  %2739 = phi float [ %2736, %2730 ], [ %2723, %2710 ]
  %2740 = fcmp fast une float %2727, 0.000000e+00
  br i1 %2740, label %2741, label %2748, !dx.controlflow.hints !125

; <label>:2741                                    ; preds = %2737
  %2742 = fmul fast float %2727, 0x3FF7154760000000
  %2743 = call float @dx.op.unary.f32(i32 21, float %2742)  ; Exp(value)
  %2744 = fsub fast float 1.000000e+00, %2743
  %2745 = fmul fast float %2724, %2744
  %2746 = fsub fast float -0.000000e+00, %2745
  %2747 = fdiv fast float %2746, %2727
  br label %2748

; <label>:2748                                    ; preds = %2741, %2737
  %2749 = phi float [ %2743, %2741 ], [ 1.000000e+00, %2737 ]
  %2750 = phi float [ %2747, %2741 ], [ %2724, %2737 ]
  %2751 = fcmp fast une float %2728, 0.000000e+00
  br i1 %2751, label %2752, label %2759, !dx.controlflow.hints !125

; <label>:2752                                    ; preds = %2748
  %2753 = fmul fast float %2728, 0x3FF7154760000000
  %2754 = call float @dx.op.unary.f32(i32 21, float %2753)  ; Exp(value)
  %2755 = fsub fast float 1.000000e+00, %2754
  %2756 = fmul fast float %2725, %2755
  %2757 = fsub fast float -0.000000e+00, %2756
  %2758 = fdiv fast float %2757, %2728
  br label %2759

; <label>:2759                                    ; preds = %2752, %2748
  %2760 = phi float [ %2754, %2752 ], [ 1.000000e+00, %2748 ]
  %2761 = phi float [ %2758, %2752 ], [ %2725, %2748 ]
  %2762 = fcmp fast ogt float %2658, %2660
  br i1 %2762, label %2763, label %2783, !dx.controlflow.hints !126

; <label>:2763                                    ; preds = %2759
  %2764 = fsub fast float 1.000000e+00, %2660
  %2765 = fmul fast float %2676, %2764
  %2766 = fmul fast float %2677, %2764
  %2767 = fmul fast float %2678, %2764
  %2768 = fmul fast float %2679, %2764
  %2769 = fcmp fast une float %2768, 0.000000e+00
  br i1 %2769, label %2770, label %2821, !dx.controlflow.hints !127

; <label>:2770                                    ; preds = %2763
  %2771 = fmul fast float %2768, 0x3FF7154760000000
  %2772 = call float @dx.op.unary.f32(i32 21, float %2771)  ; Exp(value)
  %2773 = fsub fast float 1.000000e+00, %2772
  %2774 = fmul fast float %2765, %2773
  %2775 = fsub fast float -0.000000e+00, %2774
  %2776 = fmul fast float %2766, %2773
  %2777 = fsub fast float -0.000000e+00, %2776
  %2778 = fmul fast float %2767, %2773
  %2779 = fsub fast float -0.000000e+00, %2778
  %2780 = fdiv fast float %2775, %2768
  %2781 = fdiv fast float %2777, %2768
  %2782 = fdiv fast float %2779, %2768
  br label %2821

; <label>:2783                                    ; preds = %2759
  %2784 = fsub fast float 1.000000e+00, %2658
  %2785 = fmul fast float %2689, %2784
  %2786 = fmul fast float %2700, %2784
  %2787 = fmul fast float %2711, %2784
  %2788 = fmul fast float %2690, %2784
  %2789 = fmul fast float %2701, %2784
  %2790 = fmul fast float %2712, %2784
  %2791 = fcmp fast une float %2788, 0.000000e+00
  br i1 %2791, label %2792, label %2799, !dx.controlflow.hints !125

; <label>:2792                                    ; preds = %2783
  %2793 = fmul fast float %2788, 0x3FF7154760000000
  %2794 = call float @dx.op.unary.f32(i32 21, float %2793)  ; Exp(value)
  %2795 = fsub fast float 1.000000e+00, %2794
  %2796 = fmul fast float %2785, %2795
  %2797 = fsub fast float -0.000000e+00, %2796
  %2798 = fdiv fast float %2797, %2788
  br label %2799

; <label>:2799                                    ; preds = %2792, %2783
  %2800 = phi float [ %2798, %2792 ], [ %2785, %2783 ]
  %2801 = phi float [ %2794, %2792 ], [ 1.000000e+00, %2783 ]
  %2802 = fcmp fast une float %2789, 0.000000e+00
  br i1 %2802, label %2803, label %2810, !dx.controlflow.hints !125

; <label>:2803                                    ; preds = %2799
  %2804 = fmul fast float %2789, 0x3FF7154760000000
  %2805 = call float @dx.op.unary.f32(i32 21, float %2804)  ; Exp(value)
  %2806 = fsub fast float 1.000000e+00, %2805
  %2807 = fmul fast float %2786, %2806
  %2808 = fsub fast float -0.000000e+00, %2807
  %2809 = fdiv fast float %2808, %2789
  br label %2810

; <label>:2810                                    ; preds = %2803, %2799
  %2811 = phi float [ %2809, %2803 ], [ %2786, %2799 ]
  %2812 = phi float [ %2805, %2803 ], [ 1.000000e+00, %2799 ]
  %2813 = fcmp fast une float %2790, 0.000000e+00
  br i1 %2813, label %2814, label %2821, !dx.controlflow.hints !125

; <label>:2814                                    ; preds = %2810
  %2815 = fmul fast float %2790, 0x3FF7154760000000
  %2816 = call float @dx.op.unary.f32(i32 21, float %2815)  ; Exp(value)
  %2817 = fsub fast float 1.000000e+00, %2816
  %2818 = fmul fast float %2787, %2817
  %2819 = fsub fast float -0.000000e+00, %2818
  %2820 = fdiv fast float %2819, %2790
  br label %2821

; <label>:2821                                    ; preds = %2814, %2810, %2770, %2763
  %2822 = phi float [ %2820, %2814 ], [ %2782, %2770 ], [ %2767, %2763 ], [ %2787, %2810 ]
  %2823 = phi float [ %2811, %2814 ], [ %2781, %2770 ], [ %2766, %2763 ], [ %2811, %2810 ]
  %2824 = phi float [ %2800, %2814 ], [ %2780, %2770 ], [ %2765, %2763 ], [ %2800, %2810 ]
  %2825 = phi float [ %2816, %2814 ], [ %2772, %2770 ], [ 1.000000e+00, %2763 ], [ 1.000000e+00, %2810 ]
  %2826 = phi float [ %2812, %2814 ], [ %2772, %2770 ], [ 1.000000e+00, %2763 ], [ %2812, %2810 ]
  %2827 = phi float [ %2801, %2814 ], [ %2772, %2770 ], [ 1.000000e+00, %2763 ], [ %2801, %2810 ]
  %2828 = fmul fast float %2827, %2739
  %2829 = fmul fast float %2826, %2750
  %2830 = fmul fast float %2825, %2761
  %2831 = fadd fast float %2828, %2824
  %2832 = fadd fast float %2829, %2823
  %2833 = fadd fast float %2830, %2822
  %2834 = fmul fast float %2827, %2738
  %2835 = fmul fast float %2826, %2749
  %2836 = fmul fast float %2825, %2760
  br label %2837

; <label>:2837                                    ; preds = %2821, %2632
  %2838 = phi float [ %2638, %2632 ], [ %2836, %2821 ]
  %2839 = phi float [ %2637, %2632 ], [ %2835, %2821 ]
  %2840 = phi float [ %2636, %2632 ], [ %2834, %2821 ]
  %2841 = phi float [ %2635, %2632 ], [ %2833, %2821 ]
  %2842 = phi float [ %2634, %2632 ], [ %2832, %2821 ]
  %2843 = phi float [ %2633, %2632 ], [ %2831, %2821 ]
  %2844 = fmul fast float %2840, %1981
  %2845 = fmul fast float %2839, %1982
  %2846 = fmul fast float %2838, %1983
  %2847 = fsub fast float 1.000000e+00, %2044
  %2848 = fmul fast float %2843, %2847
  %2849 = fmul fast float %2842, %2847
  %2850 = fmul fast float %2841, %2847
  %2851 = fadd fast float %2848, %2844
  %2852 = fadd fast float %2849, %2845
  %2853 = fadd fast float %2850, %2846
  %2854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2855 = extractvalue %dx.types.CBufRet.f32 %2854, 2
  %2856 = fmul fast float %2855, %2054
  %2857 = call float @dx.op.unary.f32(i32 7, float %2856)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %19, i32 %20, i32 undef, float %2044, float %2044, float %2044, float %2044, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2859 = extractvalue %dx.types.CBufRet.f32 %2858, 0
  %2860 = fmul fast float %2859, %2851
  %2861 = fmul fast float %2859, %2852
  %2862 = fmul fast float %2859, %2853
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %19, i32 %20, i32 undef, float %2860, float %2861, float %2862, float %2860, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %19, i32 %20, i32 undef, float %2857, float %2857, float %2857, float %2857, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!30 = !{void ()* @cs_fog_raymarching_heightmap_particles_brfog, !"cs_fog_raymarching_heightmap_particles_brfog", null, !4, !31}
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
!44 = distinct !{!44, !"dx.controlflow.hints", i32 1}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = !{!83, !83, i64 0}
!83 = !{!"float", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C/C++ TBAA"}
!86 = !{!87, !89, !91, !92, !94, !95, !96}
!87 = distinct !{!87, !88, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!88 = distinct !{!88, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!89 = distinct !{!89, !90, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!90 = distinct !{!90, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!91 = distinct !{!91, !90, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!92 = distinct !{!92, !93, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!93 = distinct !{!93, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!94 = distinct !{!94, !93, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!95 = distinct !{!95, !93, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!96 = distinct !{!96, !93, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = !{!99}
!99 = distinct !{!99, !100, !"\01?sort@@YAXAIAM00@Z: %c"}
!100 = distinct !{!100, !"\01?sort@@YAXAIAM00@Z"}
!101 = !{!102, !103, !87, !89, !91, !92, !94, !95, !96}
!102 = distinct !{!102, !100, !"\01?sort@@YAXAIAM00@Z: %a"}
!103 = distinct !{!103, !100, !"\01?sort@@YAXAIAM00@Z: %b"}
!104 = !{!103}
!105 = !{!102, !99, !87, !89, !91, !92, !94, !95, !96}
!106 = !{!102}
!107 = !{!103, !99, !87, !89, !91, !92, !94, !95, !96}
!108 = !{!109}
!109 = distinct !{!109, !110, !"\01?sort@@YAXAIAM00@Z: %c"}
!110 = distinct !{!110, !"\01?sort@@YAXAIAM00@Z"}
!111 = !{!112, !113, !87, !89, !91, !92, !94, !95, !96}
!112 = distinct !{!112, !110, !"\01?sort@@YAXAIAM00@Z: %a"}
!113 = distinct !{!113, !110, !"\01?sort@@YAXAIAM00@Z: %b"}
!114 = !{!113}
!115 = !{!112, !109, !87, !89, !91, !92, !94, !95, !96}
!116 = !{!112}
!117 = !{!113, !109, !87, !89, !91, !92, !94, !95, !96}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 2}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 2}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 2}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 2}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}

