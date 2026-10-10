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
; shader hash: ef132c4ef35a03a9e1eb9a7b7c99a0c0
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
;                                   texture     f32          3d      T0             t3     1
;                                   texture     f32          2d      T1            t16     1
;                                   texture     f32          2d      T2            t27     1
;                                   texture     f32          3d      T3             t1     1
;                                   texture     f32          3d      T4             t2     1
;                                   texture     f32          2d      T5             t8     1
;                                   texture     f32          2d      T6             t9     1
;                                   texture     f32          2d      T7            t18     1
;                                   texture  struct         r/o      T8            t25     1
;                                   texture     f32          1d      T9            t14     1
;                                   texture     f32          2d     T10            t13     1
;                                   texture     f32          2d     T11             t0     1
;                                   texture    byte         r/o     T12            t17     1
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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

define void @cs_fog_raymarching_clouds_heightmap_particles_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %26 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %27 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %28 = alloca [3 x float], align 4
  %29 = alloca [3 x float], align 4
  %30 = add i32 %26, %25
  %31 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.i32 %31, 1
  %33 = add i32 %30, %32
  %34 = lshr i32 %33, 1
  %35 = and i32 %34, 1
  %36 = and i32 %33, 1
  %37 = xor i32 %35, %36
  %38 = shl i32 %25, 1
  %39 = shl i32 %26, 1
  %40 = or i32 %37, %38
  %41 = or i32 %35, %39
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %45 = extractvalue %dx.types.ResRet.i32 %44, 0
  %46 = extractvalue %dx.types.ResRet.i32 %44, 1
  %47 = extractvalue %dx.types.ResRet.i32 %44, 2
  %48 = extractvalue %dx.types.ResRet.i32 %44, 3
  %49 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.i32 %49, 0
  %51 = extractvalue %dx.types.ResRet.i32 %49, 1
  %52 = extractvalue %dx.types.ResRet.i32 %49, 2
  %53 = extractvalue %dx.types.ResRet.i32 %49, 3
  %54 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %55 = extractvalue %dx.types.ResRet.i32 %54, 0
  %56 = extractvalue %dx.types.ResRet.i32 %54, 1
  %57 = extractvalue %dx.types.ResRet.i32 %54, 2
  %58 = extractvalue %dx.types.ResRet.i32 %54, 3
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %61 = fmul fast float %60, %60
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %65 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %66 = fmul fast float %65, 0x3FF17B1420000000
  %67 = icmp eq i32 %27, 0
  br i1 %67, label %68, label %209, !dx.controlflow.hints !39

; <label>:68                                      ; preds = %0
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 3
  %73 = extractvalue %dx.types.ResRet.i32 %42, 1
  %74 = and i32 %73, 65535
  %75 = call float @dx.op.legacyF16ToF32(i32 131, i32 %74)  ; LegacyF16ToF32(value)
  %76 = lshr i32 %43, 16
  %77 = call float @dx.op.legacyF16ToF32(i32 131, i32 %76)  ; LegacyF16ToF32(value)
  %78 = and i32 %43, 65535
  %79 = call float @dx.op.legacyF16ToF32(i32 131, i32 %78)  ; LegacyF16ToF32(value)
  %80 = lshr i32 %48, 16
  %81 = call float @dx.op.legacyF16ToF32(i32 131, i32 %80)  ; LegacyF16ToF32(value)
  %82 = and i32 %48, 65535
  %83 = call float @dx.op.legacyF16ToF32(i32 131, i32 %82)  ; LegacyF16ToF32(value)
  %84 = lshr i32 %47, 16
  %85 = call float @dx.op.legacyF16ToF32(i32 131, i32 %84)  ; LegacyF16ToF32(value)
  %86 = and i32 %47, 65535
  %87 = call float @dx.op.legacyF16ToF32(i32 131, i32 %86)  ; LegacyF16ToF32(value)
  %88 = lshr i32 %46, 16
  %89 = call float @dx.op.legacyF16ToF32(i32 131, i32 %88)  ; LegacyF16ToF32(value)
  %90 = lshr i32 %45, 16
  %91 = call float @dx.op.legacyF16ToF32(i32 131, i32 %90)  ; LegacyF16ToF32(value)
  %92 = and i32 %45, 65535
  %93 = call float @dx.op.legacyF16ToF32(i32 131, i32 %92)  ; LegacyF16ToF32(value)
  %94 = lshr i32 %53, 16
  %95 = call float @dx.op.legacyF16ToF32(i32 131, i32 %94)  ; LegacyF16ToF32(value)
  %96 = and i32 %53, 65535
  %97 = call float @dx.op.legacyF16ToF32(i32 131, i32 %96)  ; LegacyF16ToF32(value)
  %98 = lshr i32 %52, 16
  %99 = call float @dx.op.legacyF16ToF32(i32 131, i32 %98)  ; LegacyF16ToF32(value)
  %100 = and i32 %52, 65535
  %101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %100)  ; LegacyF16ToF32(value)
  %102 = lshr i32 %51, 16
  %103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %102)  ; LegacyF16ToF32(value)
  %104 = and i32 %51, 65535
  %105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %104)  ; LegacyF16ToF32(value)
  %106 = and i32 %50, 65535
  %107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %106)  ; LegacyF16ToF32(value)
  %108 = lshr i32 %58, 16
  %109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %108)  ; LegacyF16ToF32(value)
  %110 = and i32 %58, 65535
  %111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %110)  ; LegacyF16ToF32(value)
  %112 = lshr i32 %57, 16
  %113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %112)  ; LegacyF16ToF32(value)
  %114 = and i32 %57, 65535
  %115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %114)  ; LegacyF16ToF32(value)
  %116 = lshr i32 %56, 16
  %117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %116)  ; LegacyF16ToF32(value)
  %118 = and i32 %56, 65535
  %119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %118)  ; LegacyF16ToF32(value)
  %120 = lshr i32 %55, 16
  %121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %120)  ; LegacyF16ToF32(value)
  %122 = and i32 %46, 65535
  %123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %122)  ; LegacyF16ToF32(value)
  %124 = lshr i32 %50, 16
  %125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %124)  ; LegacyF16ToF32(value)
  %126 = and i32 %55, 65535
  %127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %126)  ; LegacyF16ToF32(value)
  %128 = fmul fast float %123, 0x3FD20DD760000000
  %129 = fmul fast float %65, %60
  %130 = fmul fast float %129, %87
  %131 = fmul fast float %65, %65
  %132 = fmul fast float %131, 0x3FEE471020000000
  %133 = fadd fast float %132, 0xBFD42F6020000000
  %134 = fmul fast float %79, %133
  %135 = fmul fast float %85, %63
  %136 = fmul fast float %89, %64
  %137 = fmul fast float %63, %61
  %138 = fmul fast float %137, %66
  %139 = fmul fast float %138, %77
  %140 = fsub fast float -0.000000e+00, %139
  %141 = fmul fast float %64, %61
  %142 = fmul fast float %141, %66
  %143 = fmul fast float %142, %81
  %144 = fmul fast float %63, %63
  %145 = fmul fast float %64, %64
  %146 = fsub fast float %144, %145
  %147 = fmul fast float %146, 0x3FE17B1420000000
  %148 = fmul fast float %147, %75
  %149 = fmul fast float %64, 0x3FF17B1420000000
  %150 = fmul fast float %149, %63
  %151 = fmul fast float %150, %83
  %152 = fadd fast float %136, %135
  %153 = fmul fast float %152, %60
  %154 = fsub fast float %153, %130
  %155 = fmul fast float %154, 0x3FDF454380000000
  %156 = fadd fast float %134, %148
  %157 = fadd fast float %156, %151
  %158 = fmul fast float %157, %61
  %159 = fsub fast float %140, %143
  %160 = fadd fast float %159, %128
  %161 = fadd fast float %160, %155
  %162 = fadd fast float %161, %158
  %163 = fmul fast float %70, %72
  %164 = fmul fast float %163, %162
  %165 = fmul fast float %125, 0x3FD20DD760000000
  %166 = fmul fast float %129, %103
  %167 = fmul fast float %95, %133
  %168 = fmul fast float %101, %63
  %169 = fmul fast float %105, %64
  %170 = fmul fast float %138, %93
  %171 = fsub fast float -0.000000e+00, %170
  %172 = fmul fast float %142, %97
  %173 = fmul fast float %147, %91
  %174 = fmul fast float %150, %99
  %175 = fadd fast float %169, %168
  %176 = fmul fast float %175, %60
  %177 = fsub fast float %176, %166
  %178 = fmul fast float %177, 0x3FDF454380000000
  %179 = fadd fast float %167, %173
  %180 = fadd fast float %179, %174
  %181 = fmul fast float %180, %61
  %182 = fsub fast float %171, %172
  %183 = fadd fast float %182, %165
  %184 = fadd fast float %183, %178
  %185 = fadd fast float %184, %181
  %186 = fmul fast float %163, %185
  %187 = fmul fast float %127, 0x3FD20DD760000000
  %188 = fmul fast float %129, %119
  %189 = fmul fast float %111, %133
  %190 = fmul fast float %117, %63
  %191 = fmul fast float %121, %64
  %192 = fmul fast float %138, %109
  %193 = fsub fast float -0.000000e+00, %192
  %194 = fmul fast float %142, %113
  %195 = fmul fast float %147, %107
  %196 = fmul fast float %150, %115
  %197 = fadd fast float %191, %190
  %198 = fmul fast float %197, %60
  %199 = fsub fast float %198, %188
  %200 = fmul fast float %199, 0x3FDF454380000000
  %201 = fadd fast float %189, %195
  %202 = fadd fast float %201, %196
  %203 = fmul fast float %202, %61
  %204 = fsub fast float %193, %194
  %205 = fadd fast float %204, %187
  %206 = fadd fast float %205, %200
  %207 = fadd fast float %206, %203
  %208 = fmul fast float %163, %207
  store float %208, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  store float %186, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  store float %164, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  br label %209

; <label>:209                                     ; preds = %68, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %210 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  %211 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  %212 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  %213 = uitofp i32 %40 to float
  %214 = uitofp i32 %41 to float
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 2
  %217 = fmul fast float %216, 0x3FE3C6EF40000000
  %218 = frem fast float %213, 2.560000e+02
  %219 = frem fast float %214, 2.560000e+02
  %220 = fptoui float %218 to i32
  %221 = fptoui float %219 to i32
  %222 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %220, i32 %221, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = extractvalue %dx.types.ResRet.f32 %222, 1
  %225 = extractvalue %dx.types.ResRet.f32 %222, 2
  %226 = extractvalue %dx.types.ResRet.f32 %222, 3
  %227 = fadd fast float %223, %217
  %228 = fadd fast float %224, %217
  %229 = fadd fast float %225, %217
  %230 = fadd fast float %226, %217
  %231 = call float @dx.op.unary.f32(i32 22, float %227)  ; Frc(value)
  %232 = call float @dx.op.unary.f32(i32 22, float %228)  ; Frc(value)
  %233 = call float @dx.op.unary.f32(i32 22, float %229)  ; Frc(value)
  %234 = call float @dx.op.unary.f32(i32 22, float %230)  ; Frc(value)
  %235 = fadd fast float %233, %213
  %236 = fadd fast float %234, %214
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %239 = extractvalue %dx.types.CBufRet.f32 %237, 3
  %240 = fmul fast float %238, %235
  %241 = fmul fast float %239, %236
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %244 = extractvalue %dx.types.CBufRet.f32 %242, 1
  %245 = extractvalue %dx.types.CBufRet.f32 %242, 2
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 1
  %248 = fmul fast float %240, 2.000000e+00
  %249 = fmul fast float %241, 2.000000e+00
  %250 = fsub fast float 1.000000e+00, %248
  %251 = fsub fast float 1.000000e+00, %249
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 0
  %254 = extractvalue %dx.types.CBufRet.f32 %252, 1
  %255 = extractvalue %dx.types.CBufRet.f32 %252, 2
  %256 = fmul fast float %253, %250
  %257 = fmul fast float %254, %250
  %258 = fmul fast float %255, %250
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 0
  %261 = extractvalue %dx.types.CBufRet.f32 %259, 1
  %262 = extractvalue %dx.types.CBufRet.f32 %259, 2
  %263 = fmul fast float %260, %251
  %264 = fmul fast float %261, %251
  %265 = fmul fast float %262, %251
  %266 = fadd fast float %263, %256
  %267 = fadd fast float %264, %257
  %268 = fadd fast float %265, %258
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 0
  %271 = extractvalue %dx.types.CBufRet.f32 %269, 1
  %272 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %273 = fadd fast float %266, %270
  %274 = fadd fast float %267, %271
  %275 = fadd fast float %268, %272
  %276 = fmul fast float %273, %247
  %277 = fmul fast float %274, %247
  %278 = fmul fast float %275, %247
  %279 = fmul fast float %276, %276
  %280 = fmul fast float %277, %277
  %281 = fadd fast float %279, %280
  %282 = fmul fast float %278, %278
  %283 = fadd fast float %281, %282
  %284 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %285 = fdiv fast float 1.000000e+00, %284
  %286 = fmul fast float %276, %285
  %287 = fmul fast float %277, %285
  %288 = fmul fast float %278, %285
  %289 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %40, i32 %41, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  %291 = fcmp fast ogt float %290, -1.000000e+00
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 1
  %294 = select i1 %291, float %293, float 1.000000e+00
  %295 = fadd fast float %290, 1.000000e+00
  %296 = fmul fast float %294, %295
  %297 = call float @dx.op.unary.f32(i32 6, float %296)  ; FAbs(value)
  %298 = fdiv fast float 1.000000e+00, %247
  %299 = fmul fast float %298, %284
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 1
  %302 = fmul fast float %301, %299
  %303 = fmul fast float %299, %297
  %304 = extractvalue %dx.types.CBufRet.f32 %292, 3
  %305 = fcmp fast oge float %297, %304
  %306 = call float @dx.op.binary.f32(i32 36, float %303, float %302)  ; FMin(a,b)
  %307 = select i1 %305, float %302, float %306
  %308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.i32 %308, 3
  %310 = icmp eq i32 %309, 0
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 2
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 2
  %315 = fsub fast float %312, %245
  %316 = fadd fast float %315, %314
  %317 = fsub fast float 0xC7EFFFFFE0000000, %245
  br i1 %310, label %329, label %318, !dx.controlflow.hints !40

; <label>:318                                     ; preds = %209
  %319 = fsub fast float -0.000000e+00, %244
  %320 = fsub fast float -0.000000e+00, %243
  %321 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %320, float %319, float %316)  ; Dot3(ax,ay,az,bx,by,bz)
  %322 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %286, float %287, float %288)  ; Dot3(ax,ay,az,bx,by,bz)
  %323 = fdiv fast float 1.000000e+00, %322
  %324 = fmul fast float %323, %321
  %325 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %320, float %319, float %317)  ; Dot3(ax,ay,az,bx,by,bz)
  %326 = fmul fast float %323, %325
  %327 = call float @dx.op.binary.f32(i32 36, float %324, float %326)  ; FMin(a,b)
  %328 = call float @dx.op.binary.f32(i32 35, float %324, float %326)  ; FMax(a,b)
  br label %362

; <label>:329                                     ; preds = %209
  %330 = extractvalue %dx.types.CBufRet.f32 %311, 0
  %331 = extractvalue %dx.types.CBufRet.f32 %311, 1
  %332 = extractvalue %dx.types.CBufRet.f32 %313, 0
  %333 = extractvalue %dx.types.CBufRet.f32 %313, 1
  %334 = fdiv fast float 1.000000e+00, %286
  %335 = fdiv fast float 1.000000e+00, %287
  %336 = fdiv fast float 1.000000e+00, %288
  %337 = fsub fast float %330, %243
  %338 = fmul fast float %334, %337
  %339 = fadd fast float %337, %332
  %340 = fmul fast float %339, %334
  %341 = call float @dx.op.binary.f32(i32 36, float %338, float %340)  ; FMin(a,b)
  %342 = call float @dx.op.binary.f32(i32 35, float %338, float %340)  ; FMax(a,b)
  %343 = fsub fast float %331, %244
  %344 = fmul fast float %335, %343
  %345 = fadd fast float %343, %333
  %346 = fmul fast float %345, %335
  %347 = call float @dx.op.binary.f32(i32 36, float %344, float %346)  ; FMin(a,b)
  %348 = call float @dx.op.binary.f32(i32 35, float %341, float %347)  ; FMax(a,b)
  %349 = call float @dx.op.binary.f32(i32 35, float %344, float %346)  ; FMax(a,b)
  %350 = call float @dx.op.binary.f32(i32 36, float %342, float %349)  ; FMin(a,b)
  %351 = fmul fast float %336, %317
  %352 = fmul fast float %336, %316
  %353 = call float @dx.op.binary.f32(i32 36, float %351, float %352)  ; FMin(a,b)
  %354 = call float @dx.op.binary.f32(i32 35, float %348, float %353)  ; FMax(a,b)
  %355 = call float @dx.op.binary.f32(i32 35, float %351, float %352)  ; FMax(a,b)
  %356 = call float @dx.op.binary.f32(i32 36, float %350, float %355)  ; FMin(a,b)
  %357 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %354)  ; FMax(a,b)
  %358 = fcmp fast ult float %356, %357
  br i1 %358, label %362, label %359, !dx.controlflow.hints !41

; <label>:359                                     ; preds = %329
  %360 = call float @dx.op.binary.f32(i32 36, float %354, float %356)  ; FMin(a,b)
  %361 = call float @dx.op.binary.f32(i32 35, float %354, float %356)  ; FMax(a,b)
  br label %362

; <label>:362                                     ; preds = %359, %329, %318
  %363 = phi float [ %327, %318 ], [ %360, %359 ], [ 0.000000e+00, %329 ]
  %364 = phi float [ %328, %318 ], [ %361, %359 ], [ 0.000000e+00, %329 ]
  %365 = fcmp fast oeq float %364, 0.000000e+00
  %366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.f32 %366, 1
  %368 = fcmp fast olt float %364, %367
  %369 = or i1 %365, %368
  br i1 %369, label %374, label %370, !dx.controlflow.hints !42

; <label>:370                                     ; preds = %362
  %371 = call float @dx.op.binary.f32(i32 35, float %367, float %363)  ; FMax(a,b)
  %372 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %371)  ; FMin(a,b)
  %373 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %364)  ; FMax(a,b)
  br label %374

; <label>:374                                     ; preds = %370, %362
  %375 = phi i32 [ 1, %370 ], [ 0, %362 ]
  %376 = phi float [ %373, %370 ], [ -1.000000e+00, %362 ]
  %377 = phi float [ %372, %370 ], [ 0x47EFFFFFE0000000, %362 ]
  %378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.i32 %378, 3
  %380 = icmp eq i32 %379, 0
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 2
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 2
  %385 = fsub fast float %382, %245
  %386 = fadd fast float %385, %384
  br i1 %380, label %398, label %387, !dx.controlflow.hints !43

; <label>:387                                     ; preds = %374
  %388 = fsub fast float -0.000000e+00, %243
  %389 = fsub fast float -0.000000e+00, %244
  %390 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %388, float %389, float %386)  ; Dot3(ax,ay,az,bx,by,bz)
  %391 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %286, float %287, float %288)  ; Dot3(ax,ay,az,bx,by,bz)
  %392 = fdiv fast float 1.000000e+00, %391
  %393 = fmul fast float %392, %390
  %394 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %388, float %389, float %385)  ; Dot3(ax,ay,az,bx,by,bz)
  %395 = fmul fast float %392, %394
  %396 = call float @dx.op.binary.f32(i32 36, float %393, float %395)  ; FMin(a,b)
  %397 = call float @dx.op.binary.f32(i32 35, float %393, float %395)  ; FMax(a,b)
  br label %431

; <label>:398                                     ; preds = %374
  %399 = fdiv fast float 1.000000e+00, %286
  %400 = fdiv fast float 1.000000e+00, %287
  %401 = fdiv fast float 1.000000e+00, %288
  %402 = extractvalue %dx.types.CBufRet.f32 %381, 0
  %403 = extractvalue %dx.types.CBufRet.f32 %381, 1
  %404 = extractvalue %dx.types.CBufRet.f32 %383, 0
  %405 = extractvalue %dx.types.CBufRet.f32 %383, 1
  %406 = fsub fast float %402, %243
  %407 = fmul fast float %406, %399
  %408 = fadd fast float %406, %404
  %409 = fmul fast float %408, %399
  %410 = call float @dx.op.binary.f32(i32 36, float %407, float %409)  ; FMin(a,b)
  %411 = call float @dx.op.binary.f32(i32 35, float %407, float %409)  ; FMax(a,b)
  %412 = fsub fast float %403, %244
  %413 = fmul fast float %412, %400
  %414 = fadd fast float %412, %405
  %415 = fmul fast float %414, %400
  %416 = call float @dx.op.binary.f32(i32 36, float %413, float %415)  ; FMin(a,b)
  %417 = call float @dx.op.binary.f32(i32 35, float %410, float %416)  ; FMax(a,b)
  %418 = call float @dx.op.binary.f32(i32 35, float %413, float %415)  ; FMax(a,b)
  %419 = call float @dx.op.binary.f32(i32 36, float %411, float %418)  ; FMin(a,b)
  %420 = fmul fast float %385, %401
  %421 = fmul fast float %386, %401
  %422 = call float @dx.op.binary.f32(i32 36, float %420, float %421)  ; FMin(a,b)
  %423 = call float @dx.op.binary.f32(i32 35, float %417, float %422)  ; FMax(a,b)
  %424 = call float @dx.op.binary.f32(i32 35, float %420, float %421)  ; FMax(a,b)
  %425 = call float @dx.op.binary.f32(i32 36, float %419, float %424)  ; FMin(a,b)
  %426 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %423)  ; FMax(a,b)
  %427 = fcmp fast ult float %425, %426
  br i1 %427, label %431, label %428, !dx.controlflow.hints !44

; <label>:428                                     ; preds = %398
  %429 = call float @dx.op.binary.f32(i32 36, float %423, float %425)  ; FMin(a,b)
  %430 = call float @dx.op.binary.f32(i32 35, float %423, float %425)  ; FMax(a,b)
  br label %431

; <label>:431                                     ; preds = %428, %398, %387
  %432 = phi float [ %396, %387 ], [ %429, %428 ], [ 0.000000e+00, %398 ]
  %433 = phi float [ %397, %387 ], [ %430, %428 ], [ 0.000000e+00, %398 ]
  %434 = fcmp fast oeq float %433, 0.000000e+00
  br i1 %434, label %438, label %435, !dx.controlflow.hints !45

; <label>:435                                     ; preds = %431
  %436 = call float @dx.op.binary.f32(i32 36, float %377, float %432)  ; FMin(a,b)
  %437 = call float @dx.op.binary.f32(i32 35, float %376, float %433)  ; FMax(a,b)
  br label %438

; <label>:438                                     ; preds = %435, %431
  %439 = phi i32 [ 1, %435 ], [ 0, %431 ]
  %440 = phi float [ %437, %435 ], [ %376, %431 ]
  %441 = phi float [ %436, %435 ], [ %377, %431 ]
  %442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.f32 %442, 3
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 0
  %446 = fsub fast float -0.000000e+00, %243
  %447 = fsub fast float -0.000000e+00, %244
  %448 = fsub fast float %443, %245
  %449 = fadd fast float %448, %445
  %450 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %446, float %447, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %451 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %286, float %287, float %288)  ; Dot3(ax,ay,az,bx,by,bz)
  %452 = fdiv fast float 1.000000e+00, %451
  %453 = fmul fast float %452, %450
  %454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.f32 %454, 2
  %456 = fsub fast float %455, %245
  %457 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %446, float %447, float %456)  ; Dot3(ax,ay,az,bx,by,bz)
  %458 = fmul fast float %452, %457
  %459 = call float @dx.op.binary.f32(i32 36, float %453, float %458)  ; FMin(a,b)
  %460 = call float @dx.op.binary.f32(i32 35, float %453, float %458)  ; FMax(a,b)
  %461 = call float @dx.op.binary.f32(i32 36, float %441, float %459)  ; FMin(a,b)
  %462 = call float @dx.op.binary.f32(i32 35, float %440, float %460)  ; FMax(a,b)
  %463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %464 = extractvalue %dx.types.CBufRet.f32 %463, 2
  %465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.f32 %465, 3
  %467 = fsub fast float %464, %245
  %468 = fadd fast float %467, %466
  %469 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %446, float %447, float %468)  ; Dot3(ax,ay,az,bx,by,bz)
  %470 = fmul fast float %452, %469
  %471 = fcmp fast olt float %470, 0.000000e+00
  %472 = fcmp fast ogt float %288, 0.000000e+00
  %473 = and i1 %472, %471
  br i1 %473, label %478, label %474, !dx.controlflow.hints !46

; <label>:474                                     ; preds = %438
  %475 = fcmp fast olt float %288, 0.000000e+00
  br i1 %475, label %476, label %478, !dx.controlflow.hints !47

; <label>:476                                     ; preds = %474
  %477 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %470)  ; FMax(a,b)
  br label %478

; <label>:478                                     ; preds = %476, %474, %438
  %479 = phi float [ 0.000000e+00, %438 ], [ %477, %476 ], [ 0.000000e+00, %474 ]
  %480 = phi float [ 0.000000e+00, %438 ], [ 0x47EFFFFFE0000000, %476 ], [ %470, %474 ]
  %481 = fcmp fast oeq float %480, 0.000000e+00
  br i1 %481, label %485, label %482, !dx.controlflow.hints !48

; <label>:482                                     ; preds = %478
  %483 = call float @dx.op.binary.f32(i32 36, float %461, float %479)  ; FMin(a,b)
  %484 = call float @dx.op.binary.f32(i32 35, float %462, float %480)  ; FMax(a,b)
  br label %485

; <label>:485                                     ; preds = %482, %478
  %486 = phi i32 [ 1, %482 ], [ 0, %478 ]
  %487 = phi float [ %484, %482 ], [ %462, %478 ]
  %488 = phi float [ %483, %482 ], [ %461, %478 ]
  %489 = fdiv fast float 1.000000e+00, %286
  %490 = fdiv fast float 1.000000e+00, %287
  %491 = fdiv fast float 1.000000e+00, %288
  %492 = call float @dx.op.binary.f32(i32 36, float %307, float %487)  ; FMin(a,b)
  %493 = call float @dx.op.binary.f32(i32 35, float %284, float %488)  ; FMax(a,b)
  %494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %495 = extractvalue %dx.types.CBufRet.f32 %494, 0
  %496 = fmul fast float %232, 2.000000e+00
  %497 = fadd fast float %496, -1.000000e+00
  %498 = fmul fast float %495, %497
  %499 = fadd fast float %498, %493
  %500 = fcmp fast olt float %499, %492
  %501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.f32 %501, 2
  %503 = fcmp fast olt float %502, 1.000000e+00
  %504 = and i1 %500, %503
  br i1 %504, label %505, label %2549

; <label>:505                                     ; preds = %485
  %506 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.i32 %506, 1
  %508 = add i32 %507, -1
  %509 = fmul fast float %499, %288
  %510 = fadd fast float %509, %245
  %511 = fmul fast float %499, %287
  %512 = fadd fast float %511, %244
  %513 = fmul fast float %499, %286
  %514 = fadd fast float %513, %243
  br label %515

; <label>:515                                     ; preds = %2519, %505
  %516 = phi i32 [ %2521, %2519 ], [ undef, %505 ]
  %517 = phi float [ %2522, %2519 ], [ undef, %505 ]
  %518 = phi float [ %2523, %2519 ], [ undef, %505 ]
  %519 = phi float [ %2524, %2519 ], [ undef, %505 ]
  %520 = phi float [ %2525, %2519 ], [ undef, %505 ]
  %521 = phi float [ %2526, %2519 ], [ undef, %505 ]
  %522 = phi i32 [ %1064, %2519 ], [ undef, %505 ]
  %523 = phi float [ %1066, %2519 ], [ undef, %505 ]
  %524 = phi float [ %821, %2519 ], [ undef, %505 ]
  %525 = phi float [ %822, %2519 ], [ undef, %505 ]
  %526 = phi float [ %823, %2519 ], [ undef, %505 ]
  %527 = phi float [ %824, %2519 ], [ undef, %505 ]
  %528 = phi float [ %2527, %2519 ], [ 0.000000e+00, %505 ]
  %529 = phi float [ %2528, %2519 ], [ 1.000000e+00, %505 ]
  %530 = phi float [ %2529, %2519 ], [ 0.000000e+00, %505 ]
  %531 = phi float [ %2530, %2519 ], [ 0.000000e+00, %505 ]
  %532 = phi float [ %2531, %2519 ], [ 0.000000e+00, %505 ]
  %533 = phi float [ %2541, %2519 ], [ %514, %505 ]
  %534 = phi float [ %2542, %2519 ], [ %512, %505 ]
  %535 = phi float [ %2543, %2519 ], [ %510, %505 ]
  %536 = phi float [ %2520, %2519 ], [ %499, %505 ]
  %537 = phi i32 [ %826, %2519 ], [ 10, %505 ]
  %538 = phi i32 [ %718, %2519 ], [ %508, %505 ]
  %539 = phi float [ %2532, %2519 ], [ 0.000000e+00, %505 ]
  %540 = phi float [ %2533, %2519 ], [ 0.000000e+00, %505 ]
  %541 = phi float [ %2534, %2519 ], [ 0.000000e+00, %505 ]
  %542 = phi float [ %2535, %2519 ], [ 0.000000e+00, %505 ]
  %543 = phi float [ %2536, %2519 ], [ 0.000000e+00, %505 ]
  %544 = phi i32 [ %2537, %2519 ], [ 0, %505 ]
  %545 = fsub fast float -0.000000e+00, %534
  %546 = fsub fast float -0.000000e+00, %533
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 0
  %549 = icmp eq i32 %375, 0
  br i1 %549, label %715, label %550, !dx.controlflow.hints !49

; <label>:550                                     ; preds = %515
  %551 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.i32 %551, 1
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 1
  %555 = fcmp fast ogt float %554, %536
  br i1 %555, label %556, label %558, !dx.controlflow.hints !50

; <label>:556                                     ; preds = %550
  %557 = fsub fast float %554, %536
  br label %705

; <label>:558                                     ; preds = %550
  %559 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = extractvalue %dx.types.CBufRet.i32 %559, 3
  %561 = icmp eq i32 %560, 0
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 2
  %564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %565 = extractvalue %dx.types.CBufRet.f32 %564, 2
  %566 = fsub fast float %563, %535
  %567 = fadd fast float %566, %565
  %568 = fsub fast float 0xC7EFFFFFE0000000, %535
  br i1 %561, label %576, label %569, !dx.controlflow.hints !40

; <label>:569                                     ; preds = %558
  %570 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %546, float %545, float %567)  ; Dot3(ax,ay,az,bx,by,bz)
  %571 = fmul fast float %452, %570
  %572 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %546, float %545, float %568)  ; Dot3(ax,ay,az,bx,by,bz)
  %573 = fmul fast float %452, %572
  %574 = call float @dx.op.binary.f32(i32 36, float %571, float %573)  ; FMin(a,b)
  %575 = call float @dx.op.binary.f32(i32 35, float %571, float %573)  ; FMax(a,b)
  br label %606

; <label>:576                                     ; preds = %558
  %577 = extractvalue %dx.types.CBufRet.f32 %562, 0
  %578 = extractvalue %dx.types.CBufRet.f32 %562, 1
  %579 = extractvalue %dx.types.CBufRet.f32 %564, 0
  %580 = extractvalue %dx.types.CBufRet.f32 %564, 1
  %581 = fsub fast float %577, %533
  %582 = fmul fast float %489, %581
  %583 = fadd fast float %581, %579
  %584 = fmul fast float %583, %489
  %585 = call float @dx.op.binary.f32(i32 36, float %582, float %584)  ; FMin(a,b)
  %586 = call float @dx.op.binary.f32(i32 35, float %582, float %584)  ; FMax(a,b)
  %587 = fsub fast float %578, %534
  %588 = fmul fast float %490, %587
  %589 = fadd fast float %587, %580
  %590 = fmul fast float %589, %490
  %591 = call float @dx.op.binary.f32(i32 36, float %588, float %590)  ; FMin(a,b)
  %592 = call float @dx.op.binary.f32(i32 35, float %585, float %591)  ; FMax(a,b)
  %593 = call float @dx.op.binary.f32(i32 35, float %588, float %590)  ; FMax(a,b)
  %594 = call float @dx.op.binary.f32(i32 36, float %586, float %593)  ; FMin(a,b)
  %595 = fmul fast float %491, %568
  %596 = fmul fast float %491, %567
  %597 = call float @dx.op.binary.f32(i32 36, float %595, float %596)  ; FMin(a,b)
  %598 = call float @dx.op.binary.f32(i32 35, float %592, float %597)  ; FMax(a,b)
  %599 = call float @dx.op.binary.f32(i32 35, float %595, float %596)  ; FMax(a,b)
  %600 = call float @dx.op.binary.f32(i32 36, float %594, float %599)  ; FMin(a,b)
  %601 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %598)  ; FMax(a,b)
  %602 = fcmp fast ult float %600, %601
  br i1 %602, label %606, label %603, !dx.controlflow.hints !41

; <label>:603                                     ; preds = %576
  %604 = call float @dx.op.binary.f32(i32 36, float %598, float %600)  ; FMin(a,b)
  %605 = call float @dx.op.binary.f32(i32 35, float %598, float %600)  ; FMax(a,b)
  br label %606

; <label>:606                                     ; preds = %603, %576, %569
  %607 = phi float [ %574, %569 ], [ %604, %603 ], [ 0.000000e+00, %576 ]
  %608 = phi float [ %575, %569 ], [ %605, %603 ], [ 0.000000e+00, %576 ]
  %609 = fcmp fast ogt float %607, 0.000000e+00
  br i1 %609, label %705, label %610, !dx.controlflow.hints !51

; <label>:610                                     ; preds = %606
  %611 = fcmp fast ugt float %608, 0.000000e+00
  br i1 %611, label %612, label %705, !dx.controlflow.hints !52

; <label>:612                                     ; preds = %610
  %613 = icmp sgt i32 %538, 0
  br i1 %613, label %614, label %699

; <label>:614                                     ; preds = %612
  br label %615

; <label>:615                                     ; preds = %695, %614
  %616 = phi i32 [ %696, %695 ], [ %538, %614 ]
  %617 = sitofp i32 %616 to float
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 0
  %620 = extractvalue %dx.types.CBufRet.f32 %618, 1
  %621 = fsub fast float %533, %619
  %622 = fsub fast float %534, %620
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 0
  %625 = extractvalue %dx.types.CBufRet.f32 %623, 1
  %626 = fmul fast float %621, %624
  %627 = fmul fast float %622, %625
  %628 = fsub fast float 1.000000e+00, %627
  %629 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %630 = extractvalue %dx.types.CBufRet.i32 %629, 3
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %638, label %632, !dx.controlflow.hints !53

; <label>:632                                     ; preds = %615
  %633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %20, float %626, float %628, float undef, float undef, i32 0, i32 0, i32 undef, float %617)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %634 = extractvalue %dx.types.ResRet.f32 %633, 0
  %635 = extractvalue %dx.types.ResRet.f32 %633, 1
  %636 = extractvalue %dx.types.ResRet.f32 %633, 2
  %637 = extractvalue %dx.types.ResRet.f32 %633, 3
  br label %644

; <label>:638                                     ; preds = %615
  %639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %21, float %626, float %628, float undef, float undef, i32 0, i32 0, i32 undef, float %617)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = extractvalue %dx.types.ResRet.f32 %639, 1
  %642 = extractvalue %dx.types.ResRet.f32 %639, 2
  %643 = extractvalue %dx.types.ResRet.f32 %639, 3
  br label %644

; <label>:644                                     ; preds = %638, %632
  %645 = phi float [ %634, %632 ], [ %640, %638 ]
  %646 = phi float [ %635, %632 ], [ %641, %638 ]
  %647 = phi float [ %636, %632 ], [ %642, %638 ]
  %648 = phi float [ %637, %632 ], [ %643, %638 ]
  %649 = extractvalue %dx.types.CBufRet.f32 %623, 3
  %650 = fmul fast float %649, %645
  %651 = extractvalue %dx.types.CBufRet.f32 %618, 2
  %652 = fadd fast float %650, %651
  %653 = fmul fast float %649, %646
  %654 = fadd fast float %653, %651
  %655 = fmul fast float %649, %647
  %656 = fadd fast float %655, %651
  %657 = and i32 %616, 31
  %658 = shl i32 1, %657
  %659 = uitofp i32 %658 to float
  %660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %661 = extractvalue %dx.types.CBufRet.f32 %660, 3
  %662 = fdiv fast float 1.000000e+00, %661
  %663 = fmul fast float %662, %659
  %664 = fmul fast float %663, %288
  %665 = fadd fast float %664, %535
  %666 = fcmp fast oeq float %648, 0.000000e+00
  %667 = fcmp fast ogt float %535, %654
  %668 = fcmp fast ogt float %665, %654
  %669 = and i1 %667, %668
  %670 = or i1 %666, %669
  br i1 %670, label %671, label %675, !dx.controlflow.hints !54

; <label>:671                                     ; preds = %644
  %672 = add nsw i32 %616, 1
  %673 = add nsw i32 %552, -1
  %674 = call i32 @dx.op.binary.i32(i32 38, i32 %672, i32 %673)  ; IMin(a,b)
  br label %705

; <label>:675                                     ; preds = %644
  %676 = fcmp fast olt float %535, %656
  %677 = fcmp fast olt float %665, %656
  %678 = and i1 %676, %677
  br i1 %678, label %679, label %683, !dx.controlflow.hints !55

; <label>:679                                     ; preds = %675
  %680 = add nsw i32 %616, 1
  %681 = add nsw i32 %552, -1
  %682 = call i32 @dx.op.binary.i32(i32 38, i32 %680, i32 %681)  ; IMin(a,b)
  br label %705

; <label>:683                                     ; preds = %675
  %684 = fcmp fast olt float %535, %652
  %685 = fcmp fast olt float %665, %652
  %686 = and i1 %684, %685
  br i1 %686, label %687, label %695, !dx.controlflow.hints !56

; <label>:687                                     ; preds = %683
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 3
  %690 = extractvalue %dx.types.CBufRet.f32 %623, 2
  %691 = fcmp fast une float %689, %690
  br i1 %691, label %692, label %699, !dx.controlflow.hints !57

; <label>:692                                     ; preds = %687
  %693 = fsub fast float %535, %656
  %694 = call float @dx.op.binary.f32(i32 36, float %663, float %693)  ; FMin(a,b)
  br label %699

; <label>:695                                     ; preds = %683
  %696 = add nsw i32 %616, -1
  %697 = icmp sgt i32 %616, 1
  br i1 %697, label %615, label %698

; <label>:698                                     ; preds = %695
  br label %699

; <label>:699                                     ; preds = %698, %692, %687, %612
  %700 = phi float [ %694, %692 ], [ %663, %687 ], [ 0.000000e+00, %612 ], [ 0.000000e+00, %698 ]
  %701 = phi i32 [ %616, %692 ], [ %616, %687 ], [ %538, %612 ], [ %696, %698 ]
  %702 = add nsw i32 %701, 1
  %703 = add nsw i32 %552, -1
  %704 = call i32 @dx.op.binary.i32(i32 38, i32 %702, i32 %703)  ; IMin(a,b)
  br label %705

; <label>:705                                     ; preds = %699, %679, %671, %610, %606, %556
  %706 = phi float [ %557, %556 ], [ %663, %671 ], [ %663, %679 ], [ %700, %699 ], [ 0x47EFFFFFE0000000, %610 ], [ %607, %606 ]
  %707 = phi i32 [ %375, %556 ], [ %375, %671 ], [ %375, %679 ], [ %375, %699 ], [ 0, %610 ], [ %375, %606 ]
  %708 = phi i32 [ %538, %556 ], [ %674, %671 ], [ %682, %679 ], [ %704, %699 ], [ %538, %610 ], [ %538, %606 ]
  %709 = icmp ne i32 %707, 0
  %710 = zext i1 %709 to i32
  %711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %712 = extractvalue %dx.types.CBufRet.f32 %711, 2
  %713 = call float @dx.op.binary.f32(i32 35, float %706, float %712)  ; FMax(a,b)
  %714 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %713)  ; FMin(a,b)
  br label %715

; <label>:715                                     ; preds = %705, %515
  %716 = phi i32 [ %710, %705 ], [ 0, %515 ]
  %717 = phi float [ %714, %705 ], [ 0x47EFFFFFE0000000, %515 ]
  %718 = phi i32 [ %708, %705 ], [ %538, %515 ]
  %719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %720 = extractvalue %dx.types.CBufRet.f32 %719, 0
  %721 = extractvalue %dx.types.CBufRet.f32 %719, 1
  %722 = fsub fast float %533, %720
  %723 = fsub fast float %534, %721
  %724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.f32 %724, 2
  %726 = extractvalue %dx.types.CBufRet.f32 %724, 3
  %727 = fmul fast float %722, %725
  %728 = fmul fast float %723, %726
  %729 = call float @dx.op.binary.f32(i32 36, float %727, float %728)  ; FMin(a,b)
  %730 = fcmp fast olt float %729, 0.000000e+00
  %731 = call float @dx.op.binary.f32(i32 35, float %727, float %728)  ; FMax(a,b)
  %732 = fcmp fast ogt float %731, 1.000000e+00
  %733 = or i1 %730, %732
  %734 = extractvalue %dx.types.CBufRet.f32 %719, 2
  %735 = fcmp fast olt float %535, %734
  %736 = or i1 %733, %735
  %737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %738 = extractvalue %dx.types.CBufRet.f32 %737, 3
  %739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.f32 %739, 0
  %741 = fadd fast float %740, %738
  %742 = fcmp fast ogt float %535, %741
  %743 = or i1 %736, %742
  br i1 %743, label %744, label %773, !dx.controlflow.hints !58

; <label>:744                                     ; preds = %715
  %745 = extractvalue %dx.types.CBufRet.f32 %724, 0
  %746 = extractvalue %dx.types.CBufRet.f32 %724, 1
  %747 = fsub fast float %720, %533
  %748 = fmul fast float %747, %489
  %749 = fadd fast float %747, %745
  %750 = fmul fast float %749, %489
  %751 = call float @dx.op.binary.f32(i32 36, float %748, float %750)  ; FMin(a,b)
  %752 = call float @dx.op.binary.f32(i32 35, float %748, float %750)  ; FMax(a,b)
  %753 = fsub fast float %721, %534
  %754 = fmul fast float %753, %490
  %755 = fadd fast float %753, %746
  %756 = fmul fast float %755, %490
  %757 = call float @dx.op.binary.f32(i32 36, float %754, float %756)  ; FMin(a,b)
  %758 = call float @dx.op.binary.f32(i32 35, float %751, float %757)  ; FMax(a,b)
  %759 = call float @dx.op.binary.f32(i32 35, float %754, float %756)  ; FMax(a,b)
  %760 = call float @dx.op.binary.f32(i32 36, float %752, float %759)  ; FMin(a,b)
  %761 = fsub fast float %734, %535
  %762 = fmul fast float %761, %491
  %763 = fsub fast float %738, %535
  %764 = fadd fast float %763, %740
  %765 = fmul fast float %764, %491
  %766 = call float @dx.op.binary.f32(i32 36, float %762, float %765)  ; FMin(a,b)
  %767 = call float @dx.op.binary.f32(i32 35, float %758, float %766)  ; FMax(a,b)
  %768 = call float @dx.op.binary.f32(i32 35, float %762, float %765)  ; FMax(a,b)
  %769 = call float @dx.op.binary.f32(i32 36, float %760, float %768)  ; FMin(a,b)
  %770 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %767)  ; FMax(a,b)
  %771 = fcmp fast oge float %769, %770
  %772 = select i1 %771, float %767, float 1.000000e+07
  br label %819

; <label>:773                                     ; preds = %715
  %774 = fsub fast float 1.000000e+00, %728
  %775 = icmp eq i32 %537, 0
  br i1 %775, label %804, label %776

; <label>:776                                     ; preds = %773
  br label %777

; <label>:777                                     ; preds = %800, %776
  %778 = phi i32 [ %801, %800 ], [ %537, %776 ]
  %779 = uitofp i32 %778 to float
  %780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %22, float %727, float %774, float undef, float undef, i32 0, i32 0, i32 undef, float %779)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %781 = extractvalue %dx.types.ResRet.f32 %780, 0
  %782 = extractvalue %dx.types.ResRet.f32 %780, 1
  %783 = extractvalue %dx.types.ResRet.f32 %780, 2
  %784 = fcmp fast oeq float %781, 0.000000e+00
  %785 = fcmp ule float %535, %783
  %786 = fcmp uge float %535, %782
  %787 = or i1 %786, %785
  %788 = or i1 %784, %787
  br i1 %788, label %789, label %800, !dx.controlflow.hints !59

; <label>:789                                     ; preds = %777
  %790 = extractvalue %dx.types.ResRet.f32 %780, 3
  %791 = extractvalue %dx.types.CBufRet.f32 %724, 0
  %792 = and i32 %778, 31
  %793 = lshr i32 1024, %792
  %794 = uitofp i32 %793 to float
  %795 = fdiv fast float %791, %794
  %796 = add i32 %778, 1
  %797 = uitofp i32 %796 to float
  %798 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %797)  ; FMin(a,b)
  %799 = fptosi float %798 to i32
  br label %819

; <label>:800                                     ; preds = %777
  %801 = add i32 %778, -1
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %803, label %777, !llvm.loop !60

; <label>:803                                     ; preds = %800
  br label %804

; <label>:804                                     ; preds = %803, %773
  %805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %727, float %774, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  %807 = extractvalue %dx.types.ResRet.f32 %805, 1
  %808 = extractvalue %dx.types.ResRet.f32 %805, 2
  %809 = extractvalue %dx.types.ResRet.f32 %805, 3
  %810 = extractvalue %dx.types.CBufRet.f32 %724, 0
  %811 = fmul fast float %810, 9.765625e-04
  %812 = fcmp fast oeq float %806, 0.000000e+00
  %813 = fcmp ule float %535, %808
  %814 = fcmp uge float %535, %807
  %815 = or i1 %814, %813
  %816 = or i1 %812, %815
  %817 = zext i1 %816 to i32
  %818 = xor i32 %817, 1
  br label %819

; <label>:819                                     ; preds = %804, %789, %744
  %820 = phi float [ %772, %744 ], [ %795, %789 ], [ %811, %804 ]
  %821 = phi float [ %524, %744 ], [ %781, %789 ], [ %806, %804 ]
  %822 = phi float [ %525, %744 ], [ %782, %789 ], [ %807, %804 ]
  %823 = phi float [ %526, %744 ], [ %783, %789 ], [ %808, %804 ]
  %824 = phi float [ %527, %744 ], [ %790, %789 ], [ %809, %804 ]
  %825 = phi i32 [ 0, %744 ], [ 0, %789 ], [ %818, %804 ]
  %826 = phi i32 [ 10, %744 ], [ %799, %789 ], [ 1, %804 ]
  %827 = icmp eq i32 %825, 0
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 2
  %830 = call float @dx.op.binary.f32(i32 35, float %820, float %829)  ; FMax(a,b)
  %831 = call float @dx.op.binary.f32(i32 36, float %717, float %830)  ; FMin(a,b)
  %832 = icmp eq i32 %439, 0
  br i1 %832, label %888, label %833, !dx.controlflow.hints !62

; <label>:833                                     ; preds = %819
  %834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %835 = extractvalue %dx.types.CBufRet.f32 %834, 0
  %836 = extractvalue %dx.types.CBufRet.f32 %834, 1
  %837 = extractvalue %dx.types.CBufRet.f32 %834, 2
  %838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.f32 %838, 0
  %840 = extractvalue %dx.types.CBufRet.f32 %838, 1
  %841 = extractvalue %dx.types.CBufRet.f32 %838, 2
  %842 = fsub fast float %533, %839
  %843 = fsub fast float %534, %840
  %844 = fsub fast float %535, %841
  %845 = fmul fast float %842, %835
  %846 = fmul fast float %843, %836
  %847 = fmul fast float %844, %837
  %848 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.i32 %848, 3
  %850 = icmp eq i32 %849, 0
  br i1 %850, label %854, label %851, !dx.controlflow.hints !63

; <label>:851                                     ; preds = %833
  %852 = call float @dx.op.unary.f32(i32 22, float %845)  ; Frc(value)
  %853 = call float @dx.op.unary.f32(i32 22, float %846)  ; Frc(value)
  br label %854

; <label>:854                                     ; preds = %851, %833
  %855 = phi float [ %852, %851 ], [ %845, %833 ]
  %856 = phi float [ %853, %851 ], [ %846, %833 ]
  %857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %855, float %856, float %847, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %858 = extractvalue %dx.types.ResRet.f32 %857, 0
  %859 = fmul fast float %858, 2.000000e+00
  %860 = fadd fast float %859, -1.000000e+00
  %861 = extractvalue %dx.types.CBufRet.f32 %834, 3
  %862 = fmul fast float %860, %861
  %863 = fcmp fast olt float %862, 0.000000e+00
  %864 = fcmp fast oge float %847, 0.000000e+00
  %865 = fcmp fast ole float %847, 1.000000e+00
  br i1 %850, label %868, label %866, !dx.controlflow.hints !64

; <label>:866                                     ; preds = %854
  %867 = and i1 %864, %865
  br label %878

; <label>:868                                     ; preds = %854
  %869 = fcmp fast oge float %845, 0.000000e+00
  %870 = fcmp fast oge float %846, 0.000000e+00
  %871 = and i1 %869, %870
  %872 = and i1 %864, %871
  %873 = fcmp fast ole float %845, 1.000000e+00
  %874 = fcmp fast ole float %846, 1.000000e+00
  %875 = and i1 %873, %874
  %876 = and i1 %865, %875
  %877 = and i1 %872, %876
  br label %878

; <label>:878                                     ; preds = %868, %866
  %879 = phi i1 [ %867, %866 ], [ %877, %868 ]
  %880 = and i1 %863, %879
  %881 = call float @dx.op.unary.f32(i32 6, float %862)  ; FAbs(value)
  %882 = extractvalue %dx.types.CBufRet.f32 %828, 1
  %883 = extractvalue %dx.types.CBufRet.f32 %828, 0
  %884 = call float @dx.op.binary.f32(i32 35, float %881, float %883)  ; FMax(a,b)
  %885 = select i1 %880, float %882, float %884
  %886 = zext i1 %880 to i32
  %887 = call float @dx.op.binary.f32(i32 36, float %831, float %885)  ; FMin(a,b)
  br label %888

; <label>:888                                     ; preds = %878, %819
  %889 = phi i32 [ %886, %878 ], [ 0, %819 ]
  %890 = phi float [ %887, %878 ], [ %831, %819 ]
  %891 = icmp eq i32 %486, 0
  br i1 %891, label %1063, label %892, !dx.controlflow.hints !65

; <label>:892                                     ; preds = %888
  %893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.i32 %893, 1
  %895 = and i32 %894, 1
  %896 = icmp eq i32 %895, 0
  br i1 %896, label %897, label %1054, !dx.controlflow.hints !66

; <label>:897                                     ; preds = %892
  %898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.f32 %898, 2
  %900 = extractvalue %dx.types.CBufRet.f32 %898, 3
  %901 = fmul fast float %899, %533
  %902 = fmul fast float %900, %534
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 0
  %905 = extractvalue %dx.types.CBufRet.f32 %903, 1
  %906 = fadd fast float %901, %904
  %907 = fadd fast float %902, %905
  %908 = call float @dx.op.unary.f32(i32 7, float %906)  ; Saturate(value)
  %909 = call float @dx.op.unary.f32(i32 7, float %907)  ; Saturate(value)
  %910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %21, float %908, float %909, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %911 = extractvalue %dx.types.ResRet.f32 %910, 0
  %912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %913 = extractvalue %dx.types.CBufRet.f32 %912, 0
  %914 = fmul fast float %913, %911
  %915 = fsub fast float %906, %908
  %916 = fsub fast float %907, %909
  %917 = extractvalue %dx.types.CBufRet.f32 %898, 0
  %918 = extractvalue %dx.types.CBufRet.f32 %898, 1
  %919 = fmul fast float %917, %915
  %920 = fmul fast float %918, %916
  %921 = fmul fast float %919, %919
  %922 = fmul fast float %920, %920
  %923 = fadd fast float %921, %922
  %924 = call float @dx.op.unary.f32(i32 24, float %923)  ; Sqrt(value)
  %925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.f32 %925, 3
  %927 = fmul fast float %926, %924
  %928 = call float @dx.op.unary.f32(i32 7, float %927)  ; Saturate(value)
  %929 = extractvalue %dx.types.CBufRet.f32 %925, 2
  %930 = fsub fast float %929, %914
  %931 = fmul fast float %930, %928
  %932 = extractvalue %dx.types.CBufRet.f32 %912, 1
  %933 = fsub fast float %535, %914
  %934 = fsub fast float %933, %932
  %935 = fsub fast float %934, %931
  %936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %937 = extractvalue %dx.types.CBufRet.f32 %936, 2
  %938 = fsub fast float %935, %937
  %939 = fcmp fast olt float %938, 0.000000e+00
  %940 = call float @dx.op.unary.f32(i32 6, float %938)  ; FAbs(value)
  %941 = extractvalue %dx.types.CBufRet.i32 %893, 0
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %996, label %943

; <label>:943                                     ; preds = %897
  br label %944

; <label>:944                                     ; preds = %983, %943
  %945 = phi i32 [ %989, %983 ], [ 1, %943 ]
  %946 = phi float [ %991, %983 ], [ 0x47EFFFFFE0000000, %943 ]
  %947 = phi i32 [ %992, %983 ], [ 0, %943 ]
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 1
  %950 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %951 = extractvalue %dx.types.CBufRet.i32 %950, 1
  %952 = and i32 %951, 8
  %953 = icmp eq i32 %952, 0
  %954 = fcmp fast ogt float %949, %935
  %955 = or i1 %954, %953
  %956 = add i32 %947, 171
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %956)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 0
  %959 = extractvalue %dx.types.CBufRet.f32 %957, 1
  %960 = extractvalue %dx.types.CBufRet.f32 %957, 2
  br i1 %955, label %961, label %967, !dx.controlflow.hints !67

; <label>:961                                     ; preds = %944
  %962 = fsub fast float %958, %533
  %963 = fsub fast float %959, %534
  %964 = fmul fast float %962, %962
  %965 = fmul fast float %963, %963
  %966 = fadd fast float %964, %965
  br label %983

; <label>:967                                     ; preds = %944
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %970 = extractvalue %dx.types.CBufRet.f32 %948, 2
  %971 = fmul fast float %970, %969
  %972 = fsub fast float %971, %949
  %973 = fdiv fast float %960, %972
  %974 = fsub fast float %533, %958
  %975 = fsub fast float %534, %959
  %976 = fsub fast float %935, %949
  %977 = fmul fast float %973, %976
  %978 = fmul fast float %974, %974
  %979 = fmul fast float %975, %975
  %980 = fadd fast float %978, %979
  %981 = fmul fast float %977, %977
  %982 = fadd fast float %980, %981
  br label %983

; <label>:983                                     ; preds = %967, %961
  %984 = phi float [ %966, %961 ], [ %982, %967 ]
  %985 = call float @dx.op.unary.f32(i32 24, float %984)  ; Sqrt(value)
  %986 = fsub float %960, %985
  %987 = fcmp fast olt float %986, 0.000000e+00
  %988 = zext i1 %987 to i32
  %989 = and i32 %988, %945
  %990 = call float @dx.op.unary.f32(i32 6, float %986)  ; FAbs(value)
  %991 = call float @dx.op.binary.f32(i32 36, float %946, float %990)  ; FMin(a,b)
  %992 = add i32 %947, 1
  %993 = extractvalue %dx.types.CBufRet.i32 %950, 0
  %994 = icmp ult i32 %992, %993
  br i1 %994, label %944, label %995

; <label>:995                                     ; preds = %983
  br label %996

; <label>:996                                     ; preds = %995, %897
  %997 = phi i32 [ 1, %897 ], [ %989, %995 ]
  %998 = phi float [ 0x47EFFFFFE0000000, %897 ], [ %991, %995 ]
  br label %999

; <label>:999                                     ; preds = %999, %996
  %1000 = phi i32 [ %997, %996 ], [ %1039, %999 ]
  %1001 = phi float [ 0x47EFFFFFE0000000, %996 ], [ %1041, %999 ]
  %1002 = phi i32 [ 0, %996 ], [ %1042, %999 ]
  %1003 = add nuw nsw i32 %1002, 191
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %1003)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 0
  %1006 = extractvalue %dx.types.CBufRet.f32 %1004, 1
  %1007 = extractvalue %dx.types.CBufRet.f32 %1004, 2
  %1008 = add nuw nsw i32 %1002, 195
  %1009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %1008)  ; CBufferLoadLegacy(handle,regIndex)
  %1010 = extractvalue %dx.types.CBufRet.f32 %1009, 0
  %1011 = extractvalue %dx.types.CBufRet.f32 %1009, 1
  %1012 = extractvalue %dx.types.CBufRet.f32 %1009, 2
  %1013 = fsub fast float %533, %1005
  %1014 = fsub fast float %534, %1006
  %1015 = fsub fast float %935, %1007
  %1016 = call float @dx.op.unary.f32(i32 6, float %1013)  ; FAbs(value)
  %1017 = call float @dx.op.unary.f32(i32 6, float %1014)  ; FAbs(value)
  %1018 = call float @dx.op.unary.f32(i32 6, float %1015)  ; FAbs(value)
  %1019 = fsub fast float %1016, %1010
  %1020 = fsub fast float %1017, %1011
  %1021 = fsub fast float %1018, %1012
  %1022 = call float @dx.op.binary.f32(i32 35, float %1019, float 0.000000e+00)  ; FMax(a,b)
  %1023 = call float @dx.op.binary.f32(i32 35, float %1020, float 0.000000e+00)  ; FMax(a,b)
  %1024 = call float @dx.op.binary.f32(i32 35, float %1021, float 0.000000e+00)  ; FMax(a,b)
  %1025 = fmul fast float %1022, %1022
  %1026 = fmul fast float %1023, %1023
  %1027 = fadd fast float %1026, %1025
  %1028 = fmul fast float %1024, %1024
  %1029 = fadd fast float %1027, %1028
  %1030 = call float @dx.op.unary.f32(i32 24, float %1029)  ; Sqrt(value)
  %1031 = call float @dx.op.binary.f32(i32 35, float %1020, float %1021)  ; FMax(a,b)
  %1032 = call float @dx.op.binary.f32(i32 35, float %1019, float %1031)  ; FMax(a,b)
  %1033 = call float @dx.op.binary.f32(i32 36, float %1032, float 0.000000e+00)  ; FMin(a,b)
  %1034 = fadd fast float %1033, %1030
  %1035 = fsub fast float -0.000000e+00, %1034
  %1036 = fcmp ogt float %1034, -0.000000e+00
  %1037 = icmp ne i32 %1000, 0
  %1038 = and i1 %1037, %1036
  %1039 = zext i1 %1038 to i32
  %1040 = call float @dx.op.unary.f32(i32 6, float %1035)  ; FAbs(value)
  %1041 = call float @dx.op.binary.f32(i32 36, float %1001, float %1040)  ; FMin(a,b)
  %1042 = add nuw nsw i32 %1002, 1
  %1043 = icmp eq i32 %1042, 4
  br i1 %1043, label %1044, label %999

; <label>:1044                                    ; preds = %999
  %1045 = call float @dx.op.binary.f32(i32 36, float %940, float %1041)  ; FMin(a,b)
  %1046 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1047 = extractvalue %dx.types.CBufRet.i32 %1046, 1
  %1048 = and i32 %1047, 2
  %1049 = icmp ne i32 %1048, 0
  %1050 = xor i1 %1038, %1049
  %1051 = call float @dx.op.binary.f32(i32 36, float %1045, float %998)  ; FMin(a,b)
  %1052 = and i1 %1050, %939
  %1053 = zext i1 %1052 to i32
  br label %1054

; <label>:1054                                    ; preds = %1044, %892
  %1055 = phi i32 [ %522, %892 ], [ %1053, %1044 ]
  %1056 = phi float [ 0.000000e+00, %892 ], [ %1051, %1044 ]
  %1057 = phi float [ %535, %892 ], [ %935, %1044 ]
  %1058 = icmp ne i32 %1055, 0
  %1059 = extractvalue %dx.types.CBufRet.f32 %828, 3
  %1060 = call float @dx.op.binary.f32(i32 35, float %1056, float %1059)  ; FMax(a,b)
  %1061 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1060)  ; FMin(a,b)
  %1062 = zext i1 %1058 to i32
  br label %1063

; <label>:1063                                    ; preds = %1054, %888
  %1064 = phi i32 [ %1055, %1054 ], [ %522, %888 ]
  %1065 = phi i32 [ %1062, %1054 ], [ 0, %888 ]
  %1066 = phi float [ %1057, %1054 ], [ %523, %888 ]
  %1067 = phi float [ %1061, %1054 ], [ 0x47EFFFFFE0000000, %888 ]
  %1068 = extractvalue %dx.types.CBufRet.f32 %547, 2
  %1069 = fmul fast float %1068, %536
  %1070 = call float @dx.op.unary.f32(i32 23, float %1069)  ; Log(value)
  %1071 = fmul fast float %1070, 0x3FE62E4300000000
  %1072 = call float @dx.op.binary.f32(i32 35, float %1071, float 1.000000e+00)  ; FMax(a,b)
  %1073 = fmul fast float %1072, %1067
  %1074 = call float @dx.op.binary.f32(i32 36, float %1073, float %890)  ; FMin(a,b)
  %1075 = call float @dx.op.binary.f32(i32 35, float %1074, float %548)  ; FMax(a,b)
  %1076 = fsub fast float %492, %536
  %1077 = fadd fast float %1076, 0x3F1A36E2E0000000
  %1078 = call float @dx.op.binary.f32(i32 36, float %1077, float %1075)  ; FMin(a,b)
  %1079 = icmp eq i32 %716, 0
  br i1 %1079, label %1185, label %1080, !dx.controlflow.hints !68

; <label>:1080                                    ; preds = %1063
  %1081 = fcmp fast olt float %1077, %1075
  %1082 = fmul fast float %288, %231
  %1083 = fmul fast float %1082, %1078
  %1084 = fadd fast float %1083, %535
  %1085 = fmul fast float %288, %232
  %1086 = fmul fast float %1085, %1078
  %1087 = fadd fast float %1086, %535
  %1088 = fmul fast float %288, %233
  %1089 = fmul fast float %1088, %1078
  %1090 = fadd fast float %1089, %535
  br i1 %1081, label %1091, label %1096, !dx.controlflow.hints !69

; <label>:1091                                    ; preds = %1080
  %1092 = fmul fast float %1078, %286
  %1093 = fmul fast float %1078, %287
  %1094 = fadd fast float %1092, %533
  %1095 = fadd fast float %1093, %534
  br label %1096

; <label>:1096                                    ; preds = %1091, %1080
  %1097 = phi float [ %1094, %1091 ], [ %533, %1080 ]
  %1098 = phi float [ %1095, %1091 ], [ %534, %1080 ]
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1101 = extractvalue %dx.types.CBufRet.f32 %1099, 1
  %1102 = fsub fast float %1097, %1100
  %1103 = fsub fast float %1098, %1101
  %1104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.f32 %1104, 0
  %1106 = extractvalue %dx.types.CBufRet.f32 %1104, 1
  %1107 = fmul fast float %1102, %1105
  %1108 = fmul fast float %1103, %1106
  %1109 = fsub fast float 1.000000e+00, %1108
  %1110 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1111 = extractvalue %dx.types.CBufRet.i32 %1110, 3
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1119, label %1113, !dx.controlflow.hints !53

; <label>:1113                                    ; preds = %1096
  %1114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %20, float %1107, float %1109, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = extractvalue %dx.types.ResRet.f32 %1114, 3
  br label %1125

; <label>:1119                                    ; preds = %1096
  %1120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %21, float %1107, float %1109, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.ResRet.f32 %1120, 1
  %1123 = extractvalue %dx.types.ResRet.f32 %1120, 2
  %1124 = extractvalue %dx.types.ResRet.f32 %1120, 3
  br label %1125

; <label>:1125                                    ; preds = %1119, %1113
  %1126 = phi float [ %1115, %1113 ], [ %1121, %1119 ]
  %1127 = phi float [ %1116, %1113 ], [ %1122, %1119 ]
  %1128 = phi float [ %1117, %1113 ], [ %1123, %1119 ]
  %1129 = phi float [ %1118, %1113 ], [ %1124, %1119 ]
  %1130 = extractvalue %dx.types.CBufRet.f32 %1104, 3
  %1131 = fmul fast float %1130, %1127
  %1132 = fmul fast float %1131, %1126
  %1133 = fsub fast float %1131, %1132
  %1134 = fcmp fast ole float %1133, 0.000000e+00
  %1135 = extractvalue %dx.types.CBufRet.f32 %1099, 2
  %1136 = fadd fast float %1132, %1135
  %1137 = fmul fast float %1130, %1128
  %1138 = fadd fast float %1137, %1135
  %1139 = fdiv fast float 1.000000e+00, %1133
  %1140 = select i1 %1134, float 1.000000e+06, float %1139
  %1141 = fsub fast float %1084, %1136
  %1142 = fmul fast float %1140, %1141
  %1143 = call float @dx.op.unary.f32(i32 7, float %1142)  ; Saturate(value)
  %1144 = extractvalue %dx.types.CBufRet.f32 %1104, 2
  %1145 = fmul fast float %1144, %1143
  %1146 = fsub fast float %1144, %1145
  %1147 = fcmp fast olt float %1084, %1138
  %1148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1148, 3
  %1150 = select i1 %1147, float %1149, float 1.000000e+00
  %1151 = fmul fast float %1146, %1150
  %1152 = fsub fast float %1087, %1136
  %1153 = fmul fast float %1140, %1152
  %1154 = call float @dx.op.unary.f32(i32 7, float %1153)  ; Saturate(value)
  %1155 = fmul fast float %1144, %1154
  %1156 = fsub fast float %1144, %1155
  %1157 = fcmp fast olt float %1087, %1138
  %1158 = select i1 %1157, float %1149, float 1.000000e+00
  %1159 = fmul fast float %1156, %1158
  %1160 = fadd fast float %1159, %1151
  %1161 = fsub fast float %1090, %1136
  %1162 = fmul fast float %1140, %1161
  %1163 = call float @dx.op.unary.f32(i32 7, float %1162)  ; Saturate(value)
  %1164 = fmul fast float %1144, %1163
  %1165 = fsub fast float %1144, %1164
  %1166 = fcmp fast olt float %1090, %1138
  %1167 = select i1 %1166, float %1149, float 1.000000e+00
  %1168 = fmul fast float %1165, %1167
  %1169 = fadd fast float %1160, %1168
  %1170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1171 = extractvalue %dx.types.CBufRet.f32 %1170, 2
  %1172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %1173 = extractvalue %dx.types.CBufRet.f32 %1172, 0
  %1174 = extractvalue %dx.types.CBufRet.f32 %1172, 1
  %1175 = extractvalue %dx.types.CBufRet.f32 %1172, 2
  %1176 = fmul fast float %1078, 0x3FD5555560000000
  %1177 = fmul fast float %1176, %1129
  %1178 = fmul fast float %1177, %1171
  %1179 = fmul fast float %1178, %1169
  %1180 = extractvalue %dx.types.CBufRet.f32 %1148, 0
  %1181 = fmul fast float %1179, %1173
  %1182 = fmul fast float %1179, %1174
  %1183 = fmul fast float %1179, %1175
  %1184 = fmul fast float %1179, %1180
  br label %1185

; <label>:1185                                    ; preds = %1125, %1063
  %1186 = phi float [ %1179, %1125 ], [ 0.000000e+00, %1063 ]
  %1187 = phi float [ %1184, %1125 ], [ 0.000000e+00, %1063 ]
  %1188 = phi float [ %1181, %1125 ], [ 0.000000e+00, %1063 ]
  %1189 = phi float [ %1182, %1125 ], [ 0.000000e+00, %1063 ]
  %1190 = phi float [ %1183, %1125 ], [ 0.000000e+00, %1063 ]
  %1191 = icmp eq i32 %889, 0
  br i1 %1191, label %1386, label %1192, !dx.controlflow.hints !70

; <label>:1192                                    ; preds = %1185
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 3
  %1195 = fmul fast float %1194, %536
  %1196 = fcmp fast oeq float %1195, 0.000000e+00
  br i1 %1196, label %1211, label %1197, !dx.controlflow.hints !71

; <label>:1197                                    ; preds = %1192
  %1198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.f32 %1198, 3
  %1200 = fmul fast float %1199, %1195
  %1201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1201, 0
  %1203 = extractvalue %dx.types.CBufRet.f32 %1201, 1
  %1204 = extractvalue %dx.types.CBufRet.f32 %1201, 2
  %1205 = fmul fast float %1202, %1200
  %1206 = fmul fast float %1203, %1200
  %1207 = fmul fast float %1204, %1200
  %1208 = call float @dx.op.unary.f32(i32 23, float %1205)  ; Log(value)
  %1209 = call float @dx.op.unary.f32(i32 23, float %1206)  ; Log(value)
  %1210 = call float @dx.op.unary.f32(i32 23, float %1207)  ; Log(value)
  br label %1211

; <label>:1211                                    ; preds = %1197, %1192
  %1212 = phi float [ %1208, %1197 ], [ 0.000000e+00, %1192 ]
  %1213 = phi float [ %1209, %1197 ], [ 0.000000e+00, %1192 ]
  %1214 = phi float [ %1210, %1197 ], [ 0.000000e+00, %1192 ]
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 0
  %1217 = extractvalue %dx.types.CBufRet.f32 %1215, 1
  %1218 = extractvalue %dx.types.CBufRet.f32 %1215, 2
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 0
  %1221 = extractvalue %dx.types.CBufRet.f32 %1219, 1
  %1222 = extractvalue %dx.types.CBufRet.f32 %1219, 2
  %1223 = fsub fast float %533, %1220
  %1224 = fsub fast float %534, %1221
  %1225 = fsub fast float %535, %1222
  %1226 = fmul fast float %1223, %1216
  %1227 = fmul fast float %1224, %1217
  %1228 = fmul fast float %1225, %1218
  %1229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.i32 %1229, 0
  %1231 = extractvalue %dx.types.CBufRet.i32 %1229, 1
  %1232 = uitofp i32 %1230 to float
  %1233 = uitofp i32 %1231 to float
  %1234 = fmul fast float %1226, %1232
  %1235 = fmul fast float %1227, %1233
  %1236 = fadd fast float %1234, 5.000000e-01
  %1237 = fadd fast float %1235, 5.000000e-01
  %1238 = call float @dx.op.unary.f32(i32 22, float %1236)  ; Frc(value)
  %1239 = call float @dx.op.unary.f32(i32 22, float %1237)  ; Frc(value)
  %1240 = call float @dx.op.unary.f32(i32 27, float %1236)  ; Round_ni(value)
  %1241 = call float @dx.op.unary.f32(i32 27, float %1237)  ; Round_ni(value)
  %1242 = fadd fast float %1240, 1.000000e+00
  %1243 = fadd fast float %1241, 1.000000e+00
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 0
  %1246 = extractvalue %dx.types.CBufRet.f32 %1244, 1
  %1247 = fmul fast float %1245, %1242
  %1248 = fmul fast float %1246, %1243
  %1249 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %20, float %1247, float %1248, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1250 = extractvalue %dx.types.ResRet.f32 %1249, 0
  %1251 = extractvalue %dx.types.ResRet.f32 %1249, 1
  %1252 = extractvalue %dx.types.ResRet.f32 %1249, 2
  %1253 = extractvalue %dx.types.ResRet.f32 %1249, 3
  %1254 = extractvalue %dx.types.CBufRet.i32 %1229, 2
  %1255 = extractvalue %dx.types.CBufRet.f32 %1244, 2
  %1256 = uitofp i32 %1254 to float
  %1257 = fadd fast float %1256, -1.000000e+00
  %1258 = fmul fast float %1257, %1250
  %1259 = fmul fast float %1257, %1251
  %1260 = fmul fast float %1257, %1252
  %1261 = fmul fast float %1257, %1253
  %1262 = fadd fast float %1258, 5.000000e-01
  %1263 = fadd fast float %1259, 5.000000e-01
  %1264 = fadd fast float %1260, 5.000000e-01
  %1265 = fadd fast float %1261, 5.000000e-01
  %1266 = fptoui float %1262 to i32
  %1267 = fptoui float %1263 to i32
  %1268 = fptoui float %1264 to i32
  %1269 = fptoui float %1265 to i32
  %1270 = uitofp i32 %1266 to float
  %1271 = uitofp i32 %1267 to float
  %1272 = uitofp i32 %1268 to float
  %1273 = uitofp i32 %1269 to float
  %1274 = fadd fast float %1270, 5.000000e-01
  %1275 = fadd fast float %1271, 5.000000e-01
  %1276 = fadd fast float %1272, 5.000000e-01
  %1277 = fadd fast float %1273, 5.000000e-01
  %1278 = fmul fast float %1274, %1255
  %1279 = fmul fast float %1275, %1255
  %1280 = fmul fast float %1276, %1255
  %1281 = fmul fast float %1277, %1255
  %1282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %1278, float %1228, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1283 = extractvalue %dx.types.ResRet.f32 %1282, 0
  %1284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %1279, float %1228, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %1280, float %1228, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1287 = extractvalue %dx.types.ResRet.f32 %1286, 0
  %1288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %1281, float %1228, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1289 = extractvalue %dx.types.ResRet.f32 %1288, 0
  %1290 = fsub fast float %1287, %1289
  %1291 = fmul fast float %1290, %1238
  %1292 = fadd fast float %1291, %1289
  %1293 = fsub fast float %1285, %1283
  %1294 = fmul fast float %1293, %1238
  %1295 = fadd fast float %1294, %1283
  %1296 = fsub fast float %1295, %1292
  %1297 = fmul fast float %1296, %1239
  %1298 = fadd fast float %1297, %1292
  %1299 = fcmp fast ogt float %1298, 0.000000e+00
  br i1 %1299, label %1300, label %1368, !dx.controlflow.hints !72

; <label>:1300                                    ; preds = %1211
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1303 = extractvalue %dx.types.CBufRet.f32 %1301, 1
  %1304 = extractvalue %dx.types.CBufRet.f32 %1301, 2
  %1305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1306 = extractvalue %dx.types.CBufRet.f32 %1305, 0
  %1307 = extractvalue %dx.types.CBufRet.f32 %1305, 1
  %1308 = extractvalue %dx.types.CBufRet.f32 %1305, 2
  %1309 = fmul fast float %1224, %1216
  %1310 = fmul fast float %1225, %1216
  %1311 = fadd fast float %1226, %1306
  %1312 = fadd fast float %1309, %1307
  %1313 = fadd fast float %1310, %1308
  %1314 = fmul fast float %1311, %1302
  %1315 = fmul fast float %1312, %1302
  %1316 = fmul fast float %1313, %1302
  %1317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %1314, float %1315, float %1316, float undef, i32 0, i32 0, i32 0, float %1212)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1318 = extractvalue %dx.types.ResRet.f32 %1317, 0
  %1319 = fmul fast float %1311, %1303
  %1320 = fmul fast float %1312, %1303
  %1321 = fmul fast float %1313, %1303
  %1322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %1319, float %1320, float %1321, float undef, i32 0, i32 0, i32 0, float %1213)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1323 = extractvalue %dx.types.ResRet.f32 %1322, 1
  %1324 = fmul fast float %1311, %1304
  %1325 = fmul fast float %1312, %1304
  %1326 = fmul fast float %1313, %1304
  %1327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %1324, float %1325, float %1326, float undef, i32 0, i32 0, i32 0, float %1214)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1328 = extractvalue %dx.types.ResRet.f32 %1327, 2
  %1329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.f32 %1329, 1
  %1331 = fmul fast float %1323, %1318
  %1332 = fmul fast float %1331, %1328
  %1333 = call float @dx.op.unary.f32(i32 23, float %1332)  ; Log(value)
  %1334 = fmul fast float %1333, %1330
  %1335 = call float @dx.op.unary.f32(i32 21, float %1334)  ; Exp(value)
  %1336 = extractvalue %dx.types.CBufRet.f32 %1329, 2
  %1337 = fmul fast float %1298, %1298
  %1338 = fmul fast float %1337, %1335
  %1339 = fmul fast float %1338, %1336
  %1340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1341 = extractvalue %dx.types.CBufRet.f32 %1340, 3
  %1342 = fmul fast float %1341, %1339
  %1343 = bitcast float %1342 to i32
  %1344 = sitofp i32 %1343 to float
  %1345 = fptosi float %1344 to i32
  %1346 = bitcast i32 %1345 to float
  %1347 = fsub fast float 1.000000e+00, %1339
  %1348 = bitcast float %1347 to i32
  %1349 = sitofp i32 %1348 to float
  %1350 = fptosi float %1349 to i32
  %1351 = bitcast i32 %1350 to float
  %1352 = fadd fast float %1346, %1351
  %1353 = bitcast float %1352 to i32
  %1354 = sub nsw i32 2129859010, %1353
  %1355 = bitcast i32 %1354 to float
  %1356 = fmul fast float %1355, %1346
  %1357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1357, 2
  %1359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1360 = extractvalue %dx.types.CBufRet.f32 %1359, 0
  %1361 = fmul fast float %1356, %1360
  %1362 = fadd fast float %1361, 1.000000e+00
  %1363 = bitcast float %1362 to i32
  %1364 = sub nsw i32 2129859010, %1363
  %1365 = bitcast i32 %1364 to float
  %1366 = fmul fast float %1356, %1358
  %1367 = fmul fast float %1366, %1365
  br label %1368

; <label>:1368                                    ; preds = %1300, %1211
  %1369 = phi float [ %1367, %1300 ], [ %1298, %1211 ]
  %1370 = fmul fast float %1369, %1078
  %1371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1372 = extractvalue %dx.types.CBufRet.f32 %1371, 0
  %1373 = extractvalue %dx.types.CBufRet.f32 %1371, 1
  %1374 = extractvalue %dx.types.CBufRet.f32 %1371, 2
  %1375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1376 = extractvalue %dx.types.CBufRet.f32 %1375, 1
  %1377 = fmul fast float %1372, %1370
  %1378 = fmul fast float %1373, %1370
  %1379 = fmul fast float %1374, %1370
  %1380 = fadd fast float %1377, %1188
  %1381 = fadd fast float %1378, %1189
  %1382 = fadd fast float %1379, %1190
  %1383 = fmul fast float %1376, %1370
  %1384 = fadd fast float %1383, %1187
  %1385 = fadd fast float %1370, %1186
  br label %1386

; <label>:1386                                    ; preds = %1368, %1185
  %1387 = phi float [ %1385, %1368 ], [ %1186, %1185 ]
  %1388 = phi float [ %1384, %1368 ], [ %1187, %1185 ]
  %1389 = phi float [ %1380, %1368 ], [ %1188, %1185 ]
  %1390 = phi float [ %1381, %1368 ], [ %1189, %1185 ]
  %1391 = phi float [ %1382, %1368 ], [ %1190, %1185 ]
  br i1 %827, label %1534, label %1392, !dx.controlflow.hints !73

; <label>:1392                                    ; preds = %1386
  %1393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1394 = extractvalue %dx.types.CBufRet.f32 %1393, 0
  %1395 = extractvalue %dx.types.CBufRet.f32 %1393, 1
  %1396 = extractvalue %dx.types.CBufRet.f32 %1393, 2
  %1397 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1398 = extractvalue %dx.types.CBufRet.i32 %1397, 0
  %1399 = icmp ne i32 %1398, 0
  %1400 = zext i1 %1399 to i32
  %1401 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1402 = extractvalue %dx.types.CBufRet.i32 %1401, 0
  %1403 = icmp eq i32 %1402, 0
  br i1 %1403, label %1437, label %1404

; <label>:1404                                    ; preds = %1392
  br label %1405

; <label>:1405                                    ; preds = %1432, %1404
  %1406 = phi i32 [ %1433, %1432 ], [ 0, %1404 ]
  %1407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1406, i32 0)  ; BufferLoad(srv,index,wot)
  %1408 = extractvalue %dx.types.ResRet.f32 %1407, 0
  %1409 = extractvalue %dx.types.ResRet.f32 %1407, 1
  %1410 = extractvalue %dx.types.ResRet.f32 %1407, 2
  %1411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1406, i32 16)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.f32 %1411, 0
  %1413 = extractvalue %dx.types.ResRet.f32 %1411, 1
  %1414 = extractvalue %dx.types.ResRet.f32 %1411, 2
  %1415 = fsub fast float %1408, %1412
  %1416 = fsub fast float %1409, %1413
  %1417 = fsub fast float %1410, %1414
  %1418 = fadd fast float %1412, %1408
  %1419 = fadd fast float %1413, %1409
  %1420 = fadd fast float %1414, %1410
  %1421 = fcmp fast olt float %533, %1415
  %1422 = fcmp fast olt float %534, %1416
  %1423 = fcmp fast olt float %535, %1417
  %1424 = or i1 %1421, %1422
  %1425 = or i1 %1423, %1424
  %1426 = fcmp fast ogt float %533, %1418
  %1427 = fcmp fast ogt float %534, %1419
  %1428 = fcmp fast ogt float %535, %1420
  %1429 = or i1 %1426, %1427
  %1430 = or i1 %1428, %1429
  %1431 = or i1 %1425, %1430
  br i1 %1431, label %1432, label %1435, !dx.controlflow.hints !74

; <label>:1432                                    ; preds = %1405
  %1433 = add nuw i32 %1406, 1
  %1434 = icmp ult i32 %1433, %1402
  br i1 %1434, label %1405, label %1435

; <label>:1435                                    ; preds = %1432, %1405
  %1436 = phi i32 [ 255, %1432 ], [ %1406, %1405 ]
  br label %1437

; <label>:1437                                    ; preds = %1435, %1392
  %1438 = phi i32 [ 255, %1392 ], [ %1436, %1435 ]
  %1439 = icmp eq i32 %1438, 255
  br i1 %1439, label %1449, label %1440, !dx.controlflow.hints !75

; <label>:1440                                    ; preds = %1437
  %1441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1438, i32 32)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.f32 %1441, 0
  %1443 = extractvalue %dx.types.ResRet.f32 %1441, 1
  %1444 = extractvalue %dx.types.ResRet.f32 %1441, 2
  %1445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1438, i32 156)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.i32 %1445, 0
  %1447 = icmp ne i32 %1446, 0
  %1448 = zext i1 %1447 to i32
  br label %1449

; <label>:1449                                    ; preds = %1440, %1437
  %1450 = phi float [ %1442, %1440 ], [ %1394, %1437 ]
  %1451 = phi float [ %1443, %1440 ], [ %1395, %1437 ]
  %1452 = phi float [ %1444, %1440 ], [ %1396, %1437 ]
  %1453 = phi i32 [ %1448, %1440 ], [ %1400, %1437 ]
  %1454 = icmp eq i32 %1453, 0
  br i1 %1454, label %1455, label %1524, !dx.controlflow.hints !76

; <label>:1455                                    ; preds = %1449
  %1456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.f32 %1456, 3
  %1458 = extractvalue %dx.types.CBufRet.f32 %737, 0
  %1459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1460 = extractvalue %dx.types.CBufRet.f32 %1459, 2
  %1461 = extractvalue %dx.types.CBufRet.f32 %1459, 3
  br i1 %1439, label %1472, label %1462, !dx.controlflow.hints !77

; <label>:1462                                    ; preds = %1455
  %1463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1438, i32 60)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.f32 %1463, 0
  %1465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1438, i32 64)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.f32 %1465, 0
  %1467 = extractvalue %dx.types.ResRet.f32 %1465, 1
  %1468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1438, i32 72)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.f32 %1468, 0
  %1470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1438, i32 96)  ; BufferLoad(srv,index,wot)
  %1471 = extractvalue %dx.types.ResRet.f32 %1470, 0
  br label %1472

; <label>:1472                                    ; preds = %1462, %1455
  %1473 = phi float [ %1464, %1462 ], [ %740, %1455 ]
  %1474 = phi float [ %1469, %1462 ], [ %738, %1455 ]
  %1475 = phi float [ %1471, %1462 ], [ %1458, %1455 ]
  %1476 = phi float [ %1466, %1462 ], [ %1460, %1455 ]
  %1477 = phi float [ %1467, %1462 ], [ %1461, %1455 ]
  %1478 = call float @dx.op.binary.f32(i32 35, float %821, float 0.000000e+00)  ; FMax(a,b)
  %1479 = call float @dx.op.binary.f32(i32 36, float %1478, float 1.000000e+00)  ; FMin(a,b)
  %1480 = call float @dx.op.unary.f32(i32 24, float %1479)  ; Sqrt(value)
  %1481 = call float @dx.op.binary.f32(i32 35, float %824, float 0x3F847AE140000000)  ; FMax(a,b)
  %1482 = fsub fast float %822, %535
  %1483 = fsub fast float %535, %823
  %1484 = call float @dx.op.binary.f32(i32 36, float %1483, float %1482)  ; FMin(a,b)
  %1485 = fdiv fast float %1484, %1481
  %1486 = call float @dx.op.unary.f32(i32 7, float %1485)  ; Saturate(value)
  %1487 = fsub fast float %535, %1474
  %1488 = fdiv fast float %1487, %1473
  %1489 = call float @dx.op.unary.f32(i32 7, float %1488)  ; Saturate(value)
  %1490 = fsub fast float 1.000000e+00, %1489
  %1491 = fmul float %1486, %1490
  %1492 = fmul float %1491, %1491
  %1493 = fmul fast float %1480, %1457
  %1494 = fmul fast float %1493, %1492
  %1495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1496 = extractvalue %dx.types.CBufRet.f32 %1495, 2
  %1497 = extractvalue %dx.types.CBufRet.f32 %1495, 1
  %1498 = fsub fast float %1494, %1497
  %1499 = fsub fast float %1496, %1497
  %1500 = fdiv fast float %1498, %1499
  %1501 = call float @dx.op.unary.f32(i32 7, float %1500)  ; Saturate(value)
  %1502 = fmul fast float %1501, %1475
  %1503 = fcmp fast ogt float %1477, 0.000000e+00
  br i1 %1503, label %1504, label %1524, !dx.controlflow.hints !78

; <label>:1504                                    ; preds = %1472
  %1505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.f32 %1505, 0
  %1507 = extractvalue %dx.types.CBufRet.f32 %1505, 1
  %1508 = extractvalue %dx.types.CBufRet.f32 %1505, 2
  %1509 = fsub fast float %533, %1506
  %1510 = fsub fast float %534, %1507
  %1511 = fsub fast float %535, %1508
  %1512 = fmul fast float %1509, %1509
  %1513 = fmul fast float %1510, %1510
  %1514 = fadd fast float %1512, %1513
  %1515 = fmul fast float %1511, %1511
  %1516 = fadd fast float %1514, %1515
  %1517 = call float @dx.op.unary.f32(i32 24, float %1516)  ; Sqrt(value)
  %1518 = fsub fast float %1517, %1476
  %1519 = fsub fast float %1477, %1476
  %1520 = fdiv fast float %1518, %1519
  %1521 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  %1522 = fmul fast float %1521, %1521
  %1523 = fmul fast float %1522, %1502
  br label %1524

; <label>:1524                                    ; preds = %1504, %1472, %1449
  %1525 = phi float [ 0.000000e+00, %1449 ], [ %1523, %1504 ], [ %1502, %1472 ]
  %1526 = fmul fast float %1525, %1078
  %1527 = fmul fast float %1526, %1450
  %1528 = fmul fast float %1526, %1451
  %1529 = fmul fast float %1526, %1452
  %1530 = fadd fast float %1527, %1389
  %1531 = fadd fast float %1528, %1390
  %1532 = fadd fast float %1529, %1391
  %1533 = fadd fast float %1526, %1387
  br label %1534

; <label>:1534                                    ; preds = %1524, %1386
  %1535 = phi float [ %1533, %1524 ], [ %1387, %1386 ]
  %1536 = phi float [ %1530, %1524 ], [ %1389, %1386 ]
  %1537 = phi float [ %1531, %1524 ], [ %1390, %1386 ]
  %1538 = phi float [ %1532, %1524 ], [ %1391, %1386 ]
  %1539 = icmp eq i32 %1065, 0
  br i1 %1539, label %1583, label %1540, !dx.controlflow.hints !79

; <label>:1540                                    ; preds = %1534
  %1541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1542 = extractvalue %dx.types.CBufRet.f32 %1541, 1
  %1543 = fsub fast float %1078, %1542
  %1544 = extractvalue %dx.types.CBufRet.f32 %1541, 3
  %1545 = fmul fast float %1543, %1544
  %1546 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  %1547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1548 = extractvalue %dx.types.CBufRet.f32 %1547, 3
  %1549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1550 = extractvalue %dx.types.CBufRet.f32 %1549, 2
  %1551 = fsub fast float %1550, %1066
  %1552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1553 = extractvalue %dx.types.CBufRet.f32 %1552, 3
  %1554 = fmul fast float %1551, %1553
  %1555 = call float @dx.op.unary.f32(i32 7, float %1554)  ; Saturate(value)
  %1556 = fmul fast float %1555, %1548
  %1557 = extractvalue %dx.types.CBufRet.f32 %1552, 0
  %1558 = fsub fast float %536, %1557
  %1559 = extractvalue %dx.types.CBufRet.f32 %1552, 1
  %1560 = fmul fast float %1558, %1559
  %1561 = call float @dx.op.unary.f32(i32 7, float %1560)  ; Saturate(value)
  %1562 = fsub fast float 1.000000e+00, %1546
  %1563 = fmul fast float %1561, %1562
  %1564 = fadd fast float %1563, %1546
  %1565 = extractvalue %dx.types.CBufRet.f32 %1541, 0
  %1566 = fsub fast float %1556, %1565
  %1567 = fmul fast float %1566, %1564
  %1568 = fadd fast float %1567, %1565
  %1569 = extractvalue %dx.types.CBufRet.f32 %1547, 0
  %1570 = extractvalue %dx.types.CBufRet.f32 %1547, 1
  %1571 = extractvalue %dx.types.CBufRet.f32 %1547, 2
  %1572 = fmul fast float %1568, %1078
  %1573 = extractvalue %dx.types.CBufRet.f32 %1552, 2
  %1574 = fmul fast float %1572, %1569
  %1575 = fmul fast float %1572, %1570
  %1576 = fmul fast float %1572, %1571
  %1577 = fadd fast float %1574, %1536
  %1578 = fadd fast float %1575, %1537
  %1579 = fadd fast float %1576, %1538
  %1580 = fmul fast float %1572, %1573
  %1581 = fadd fast float %1580, %1388
  %1582 = fadd fast float %1572, %1535
  br label %1583

; <label>:1583                                    ; preds = %1540, %1534
  %1584 = phi float [ %1582, %1540 ], [ %1535, %1534 ]
  %1585 = phi float [ %1581, %1540 ], [ %1388, %1534 ]
  %1586 = phi float [ %1577, %1540 ], [ %1536, %1534 ]
  %1587 = phi float [ %1578, %1540 ], [ %1537, %1534 ]
  %1588 = phi float [ %1579, %1540 ], [ %1538, %1534 ]
  %1589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1590 = extractvalue %dx.types.CBufRet.f32 %1589, 1
  %1591 = fcmp fast ogt float %1584, %1590
  br i1 %1591, label %1592, label %1598, !dx.controlflow.hints !80

; <label>:1592                                    ; preds = %1583
  %1593 = fdiv fast float 1.000000e+00, %1584
  %1594 = fmul fast float %1593, %1586
  %1595 = fmul fast float %1593, %1587
  %1596 = fmul fast float %1593, %1588
  %1597 = fmul fast float %1593, %1585
  br label %1598

; <label>:1598                                    ; preds = %1592, %1583
  %1599 = phi float [ %1597, %1592 ], [ %1585, %1583 ]
  %1600 = phi float [ %1594, %1592 ], [ %1586, %1583 ]
  %1601 = phi float [ %1595, %1592 ], [ %1587, %1583 ]
  %1602 = phi float [ %1596, %1592 ], [ %1588, %1583 ]
  br i1 %1591, label %1605, label %1603, !dx.controlflow.hints !81

; <label>:1603                                    ; preds = %1598
  %1604 = fadd fast float %1078, %536
  br label %2519

; <label>:1605                                    ; preds = %1598
  %1606 = fmul fast float %1584, 0xBFF7154760000000
  %1607 = call float @dx.op.unary.f32(i32 21, float %1606)  ; Exp(value)
  %1608 = call float @dx.op.unary.f32(i32 7, float %1607)  ; Saturate(value)
  %1609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1610 = extractvalue %dx.types.CBufRet.f32 %1609, 3
  %1611 = fcmp fast une float %1610, 0.000000e+00
  %1612 = extractvalue %dx.types.CBufRet.f32 %1609, 0
  %1613 = extractvalue %dx.types.CBufRet.f32 %1609, 1
  %1614 = extractvalue %dx.types.CBufRet.f32 %1609, 2
  br i1 %1611, label %1615, label %1637, !dx.controlflow.hints !82

; <label>:1615                                    ; preds = %1605
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 0
  %1618 = extractvalue %dx.types.CBufRet.f32 %1616, 1
  %1619 = extractvalue %dx.types.CBufRet.f32 %1616, 2
  %1620 = call float @dx.op.dot3.f32(i32 55, float %1612, float %1613, float %1614, float %286, float %287, float %288)  ; Dot3(ax,ay,az,bx,by,bz)
  %1621 = fcmp fast ogt float %1599, 0.000000e+00
  %1622 = select i1 %1621, float 1.000000e+00, float -1.000000e+00
  %1623 = fmul fast float %1622, 5.000000e-01
  %1624 = fmul fast float %1623, %1620
  %1625 = fmul fast float %1622, %1599
  %1626 = fadd fast float %1624, 4.921875e-01
  %1627 = fadd fast float %1625, -3.125000e-02
  %1628 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %1626, float 0x3FB25F3060000000, float %1627, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1629 = extractvalue %dx.types.ResRet.f32 %1628, 0
  %1630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1631 = extractvalue %dx.types.CBufRet.f32 %1630, 0
  %1632 = fmul fast float %1629, 0x400921FB60000000
  %1633 = fmul fast float %1632, %1631
  %1634 = fmul fast float %1633, %1617
  %1635 = fmul fast float %1633, %1618
  %1636 = fmul fast float %1633, %1619
  br label %1637

; <label>:1637                                    ; preds = %1615, %1605
  %1638 = phi float [ %1634, %1615 ], [ 0.000000e+00, %1605 ]
  %1639 = phi float [ %1635, %1615 ], [ 0.000000e+00, %1605 ]
  %1640 = phi float [ %1636, %1615 ], [ 0.000000e+00, %1605 ]
  %1641 = fdiv fast float 1.000000e+00, %1612
  %1642 = fdiv fast float 1.000000e+00, %1613
  %1643 = fdiv fast float 1.000000e+00, %1614
  %1644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.f32 %1644, 0
  %1646 = fmul fast float %1645, %1612
  %1647 = fmul fast float %1645, %1613
  %1648 = fmul fast float %1645, %1614
  %1649 = fadd fast float %1646, %533
  %1650 = fsub fast float -0.000000e+00, %1649
  %1651 = fadd fast float %1647, %534
  %1652 = fsub fast float -0.000000e+00, %1651
  %1653 = fadd fast float %1648, %535
  br i1 %549, label %1725, label %1654, !dx.controlflow.hints !49

; <label>:1654                                    ; preds = %1637
  %1655 = extractvalue %dx.types.CBufRet.f32 %1644, 1
  %1656 = fcmp fast ogt float %1655, %1645
  br i1 %1656, label %1657, label %1659, !dx.controlflow.hints !50

; <label>:1657                                    ; preds = %1654
  %1658 = fsub fast float %1655, %1645
  br label %1716

; <label>:1659                                    ; preds = %1654
  %1660 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1661 = extractvalue %dx.types.CBufRet.i32 %1660, 3
  %1662 = icmp eq i32 %1661, 0
  %1663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1664 = extractvalue %dx.types.CBufRet.f32 %1663, 2
  %1665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1666 = extractvalue %dx.types.CBufRet.f32 %1665, 2
  %1667 = fsub fast float %1664, %1653
  %1668 = fadd fast float %1667, %1666
  %1669 = fsub fast float 0xC7EFFFFFE0000000, %1653
  br i1 %1662, label %1679, label %1670, !dx.controlflow.hints !40

; <label>:1670                                    ; preds = %1659
  %1671 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1650, float %1652, float %1668)  ; Dot3(ax,ay,az,bx,by,bz)
  %1672 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1612, float %1613, float %1614)  ; Dot3(ax,ay,az,bx,by,bz)
  %1673 = fdiv fast float 1.000000e+00, %1672
  %1674 = fmul fast float %1673, %1671
  %1675 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1650, float %1652, float %1669)  ; Dot3(ax,ay,az,bx,by,bz)
  %1676 = fmul fast float %1673, %1675
  %1677 = call float @dx.op.binary.f32(i32 36, float %1674, float %1676)  ; FMin(a,b)
  %1678 = call float @dx.op.binary.f32(i32 35, float %1674, float %1676)  ; FMax(a,b)
  br label %1709

; <label>:1679                                    ; preds = %1659
  %1680 = extractvalue %dx.types.CBufRet.f32 %1663, 0
  %1681 = extractvalue %dx.types.CBufRet.f32 %1663, 1
  %1682 = extractvalue %dx.types.CBufRet.f32 %1665, 0
  %1683 = extractvalue %dx.types.CBufRet.f32 %1665, 1
  %1684 = fsub fast float %1680, %1649
  %1685 = fmul fast float %1641, %1684
  %1686 = fadd fast float %1684, %1682
  %1687 = fmul fast float %1686, %1641
  %1688 = call float @dx.op.binary.f32(i32 36, float %1685, float %1687)  ; FMin(a,b)
  %1689 = call float @dx.op.binary.f32(i32 35, float %1685, float %1687)  ; FMax(a,b)
  %1690 = fsub fast float %1681, %1651
  %1691 = fmul fast float %1642, %1690
  %1692 = fadd fast float %1690, %1683
  %1693 = fmul fast float %1692, %1642
  %1694 = call float @dx.op.binary.f32(i32 36, float %1691, float %1693)  ; FMin(a,b)
  %1695 = call float @dx.op.binary.f32(i32 35, float %1688, float %1694)  ; FMax(a,b)
  %1696 = call float @dx.op.binary.f32(i32 35, float %1691, float %1693)  ; FMax(a,b)
  %1697 = call float @dx.op.binary.f32(i32 36, float %1689, float %1696)  ; FMin(a,b)
  %1698 = fmul fast float %1643, %1669
  %1699 = fmul fast float %1643, %1668
  %1700 = call float @dx.op.binary.f32(i32 36, float %1698, float %1699)  ; FMin(a,b)
  %1701 = call float @dx.op.binary.f32(i32 35, float %1695, float %1700)  ; FMax(a,b)
  %1702 = call float @dx.op.binary.f32(i32 35, float %1698, float %1699)  ; FMax(a,b)
  %1703 = call float @dx.op.binary.f32(i32 36, float %1697, float %1702)  ; FMin(a,b)
  %1704 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1701)  ; FMax(a,b)
  %1705 = fcmp fast ult float %1703, %1704
  br i1 %1705, label %1709, label %1706, !dx.controlflow.hints !41

; <label>:1706                                    ; preds = %1679
  %1707 = call float @dx.op.binary.f32(i32 36, float %1701, float %1703)  ; FMin(a,b)
  %1708 = call float @dx.op.binary.f32(i32 35, float %1701, float %1703)  ; FMax(a,b)
  br label %1709

; <label>:1709                                    ; preds = %1706, %1679, %1670
  %1710 = phi float [ %1677, %1670 ], [ %1707, %1706 ], [ 0.000000e+00, %1679 ]
  %1711 = phi float [ %1678, %1670 ], [ %1708, %1706 ], [ 0.000000e+00, %1679 ]
  %1712 = fcmp fast ogt float %1710, 0.000000e+00
  br i1 %1712, label %1716, label %1713, !dx.controlflow.hints !51

; <label>:1713                                    ; preds = %1709
  %1714 = fcmp fast ugt float %1711, 0.000000e+00
  br i1 %1714, label %1715, label %1716, !dx.controlflow.hints !52

; <label>:1715                                    ; preds = %1713
  br label %1716

; <label>:1716                                    ; preds = %1715, %1713, %1709, %1657
  %1717 = phi float [ %1658, %1657 ], [ 0.000000e+00, %1715 ], [ 0x47EFFFFFE0000000, %1713 ], [ %1710, %1709 ]
  %1718 = phi i32 [ %375, %1657 ], [ %375, %1715 ], [ 0, %1713 ], [ %375, %1709 ]
  %1719 = icmp ne i32 %1718, 0
  %1720 = zext i1 %1719 to i32
  %1721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1722 = extractvalue %dx.types.CBufRet.f32 %1721, 2
  %1723 = call float @dx.op.binary.f32(i32 35, float %1717, float %1722)  ; FMax(a,b)
  %1724 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1723)  ; FMin(a,b)
  br label %1725

; <label>:1725                                    ; preds = %1716, %1637
  %1726 = phi float [ %1724, %1716 ], [ 0x47EFFFFFE0000000, %1637 ]
  %1727 = phi i32 [ %1720, %1716 ], [ 0, %1637 ]
  %1728 = fsub fast float %1649, %720
  %1729 = fsub fast float %1651, %721
  %1730 = fmul fast float %1728, %725
  %1731 = fmul fast float %1729, %726
  %1732 = call float @dx.op.binary.f32(i32 36, float %1730, float %1731)  ; FMin(a,b)
  %1733 = fcmp fast olt float %1732, 0.000000e+00
  %1734 = call float @dx.op.binary.f32(i32 35, float %1730, float %1731)  ; FMax(a,b)
  %1735 = fcmp fast ogt float %1734, 1.000000e+00
  %1736 = or i1 %1733, %1735
  %1737 = fcmp fast olt float %1653, %734
  %1738 = or i1 %1736, %1737
  %1739 = fcmp fast ogt float %1653, %741
  %1740 = or i1 %1738, %1739
  %1741 = extractvalue %dx.types.CBufRet.f32 %724, 0
  br i1 %1740, label %1742, label %1770, !dx.controlflow.hints !58

; <label>:1742                                    ; preds = %1725
  %1743 = extractvalue %dx.types.CBufRet.f32 %724, 1
  %1744 = fsub fast float %720, %1649
  %1745 = fmul fast float %1744, %1641
  %1746 = fadd fast float %1744, %1741
  %1747 = fmul fast float %1746, %1641
  %1748 = call float @dx.op.binary.f32(i32 36, float %1745, float %1747)  ; FMin(a,b)
  %1749 = call float @dx.op.binary.f32(i32 35, float %1745, float %1747)  ; FMax(a,b)
  %1750 = fsub fast float %721, %1651
  %1751 = fmul fast float %1750, %1642
  %1752 = fadd fast float %1750, %1743
  %1753 = fmul fast float %1752, %1642
  %1754 = call float @dx.op.binary.f32(i32 36, float %1751, float %1753)  ; FMin(a,b)
  %1755 = call float @dx.op.binary.f32(i32 35, float %1748, float %1754)  ; FMax(a,b)
  %1756 = call float @dx.op.binary.f32(i32 35, float %1751, float %1753)  ; FMax(a,b)
  %1757 = call float @dx.op.binary.f32(i32 36, float %1749, float %1756)  ; FMin(a,b)
  %1758 = fsub fast float %734, %1653
  %1759 = fmul fast float %1758, %1643
  %1760 = fsub fast float %738, %1653
  %1761 = fadd fast float %1760, %740
  %1762 = fmul fast float %1761, %1643
  %1763 = call float @dx.op.binary.f32(i32 36, float %1759, float %1762)  ; FMin(a,b)
  %1764 = call float @dx.op.binary.f32(i32 35, float %1755, float %1763)  ; FMax(a,b)
  %1765 = call float @dx.op.binary.f32(i32 35, float %1759, float %1762)  ; FMax(a,b)
  %1766 = call float @dx.op.binary.f32(i32 36, float %1757, float %1765)  ; FMin(a,b)
  %1767 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1764)  ; FMax(a,b)
  %1768 = fcmp fast oge float %1766, %1767
  %1769 = select i1 %1768, float %1764, float 1.000000e+07
  br label %1785

; <label>:1770                                    ; preds = %1725
  %1771 = fsub fast float 1.000000e+00, %1731
  %1772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1730, float %1771, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1773 = extractvalue %dx.types.ResRet.f32 %1772, 0
  %1774 = extractvalue %dx.types.ResRet.f32 %1772, 1
  %1775 = extractvalue %dx.types.ResRet.f32 %1772, 2
  %1776 = extractvalue %dx.types.ResRet.f32 %1772, 3
  %1777 = fmul fast float %1741, 9.765625e-04
  %1778 = fcmp fast oeq float %1773, 0.000000e+00
  %1779 = fcmp ule float %1653, %1775
  %1780 = fcmp uge float %1653, %1774
  %1781 = or i1 %1780, %1779
  %1782 = or i1 %1778, %1781
  %1783 = zext i1 %1782 to i32
  %1784 = xor i32 %1783, 1
  br label %1785

; <label>:1785                                    ; preds = %1770, %1742
  %1786 = phi float [ %1769, %1742 ], [ %1777, %1770 ]
  %1787 = phi float [ %518, %1742 ], [ %1773, %1770 ]
  %1788 = phi float [ %519, %1742 ], [ %1774, %1770 ]
  %1789 = phi float [ %520, %1742 ], [ %1775, %1770 ]
  %1790 = phi float [ %521, %1742 ], [ %1776, %1770 ]
  %1791 = phi i32 [ 0, %1742 ], [ %1784, %1770 ]
  %1792 = icmp eq i32 %1791, 0
  %1793 = call float @dx.op.binary.f32(i32 35, float %1786, float %829)  ; FMax(a,b)
  %1794 = call float @dx.op.binary.f32(i32 36, float %1726, float %1793)  ; FMin(a,b)
  br i1 %832, label %1850, label %1795, !dx.controlflow.hints !62

; <label>:1795                                    ; preds = %1785
  %1796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1797 = extractvalue %dx.types.CBufRet.f32 %1796, 0
  %1798 = extractvalue %dx.types.CBufRet.f32 %1796, 1
  %1799 = extractvalue %dx.types.CBufRet.f32 %1796, 2
  %1800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1801 = extractvalue %dx.types.CBufRet.f32 %1800, 0
  %1802 = extractvalue %dx.types.CBufRet.f32 %1800, 1
  %1803 = extractvalue %dx.types.CBufRet.f32 %1800, 2
  %1804 = fsub fast float %1649, %1801
  %1805 = fsub fast float %1651, %1802
  %1806 = fsub fast float %1653, %1803
  %1807 = fmul fast float %1804, %1797
  %1808 = fmul fast float %1805, %1798
  %1809 = fmul fast float %1806, %1799
  %1810 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1811 = extractvalue %dx.types.CBufRet.i32 %1810, 3
  %1812 = icmp eq i32 %1811, 0
  br i1 %1812, label %1816, label %1813, !dx.controlflow.hints !63

; <label>:1813                                    ; preds = %1795
  %1814 = call float @dx.op.unary.f32(i32 22, float %1807)  ; Frc(value)
  %1815 = call float @dx.op.unary.f32(i32 22, float %1808)  ; Frc(value)
  br label %1816

; <label>:1816                                    ; preds = %1813, %1795
  %1817 = phi float [ %1814, %1813 ], [ %1807, %1795 ]
  %1818 = phi float [ %1815, %1813 ], [ %1808, %1795 ]
  %1819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1817, float %1818, float %1809, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1820 = extractvalue %dx.types.ResRet.f32 %1819, 0
  %1821 = fmul fast float %1820, 2.000000e+00
  %1822 = fadd fast float %1821, -1.000000e+00
  %1823 = extractvalue %dx.types.CBufRet.f32 %1796, 3
  %1824 = fmul fast float %1822, %1823
  %1825 = fcmp fast olt float %1824, 0.000000e+00
  %1826 = fcmp fast oge float %1809, 0.000000e+00
  %1827 = fcmp fast ole float %1809, 1.000000e+00
  br i1 %1812, label %1830, label %1828, !dx.controlflow.hints !64

; <label>:1828                                    ; preds = %1816
  %1829 = and i1 %1826, %1827
  br label %1840

; <label>:1830                                    ; preds = %1816
  %1831 = fcmp fast oge float %1807, 0.000000e+00
  %1832 = fcmp fast oge float %1808, 0.000000e+00
  %1833 = and i1 %1831, %1832
  %1834 = and i1 %1826, %1833
  %1835 = fcmp fast ole float %1807, 1.000000e+00
  %1836 = fcmp fast ole float %1808, 1.000000e+00
  %1837 = and i1 %1835, %1836
  %1838 = and i1 %1827, %1837
  %1839 = and i1 %1834, %1838
  br label %1840

; <label>:1840                                    ; preds = %1830, %1828
  %1841 = phi i1 [ %1829, %1828 ], [ %1839, %1830 ]
  %1842 = and i1 %1825, %1841
  %1843 = call float @dx.op.unary.f32(i32 6, float %1824)  ; FAbs(value)
  %1844 = extractvalue %dx.types.CBufRet.f32 %828, 1
  %1845 = extractvalue %dx.types.CBufRet.f32 %828, 0
  %1846 = call float @dx.op.binary.f32(i32 35, float %1843, float %1845)  ; FMax(a,b)
  %1847 = select i1 %1842, float %1844, float %1846
  %1848 = zext i1 %1842 to i32
  %1849 = call float @dx.op.binary.f32(i32 36, float %1794, float %1847)  ; FMin(a,b)
  br label %1850

; <label>:1850                                    ; preds = %1840, %1785
  %1851 = phi float [ %1849, %1840 ], [ %1794, %1785 ]
  %1852 = phi i32 [ %1848, %1840 ], [ 0, %1785 ]
  br i1 %891, label %2024, label %1853, !dx.controlflow.hints !65

; <label>:1853                                    ; preds = %1850
  %1854 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1855 = extractvalue %dx.types.CBufRet.i32 %1854, 1
  %1856 = and i32 %1855, 1
  %1857 = icmp eq i32 %1856, 0
  br i1 %1857, label %1858, label %2015, !dx.controlflow.hints !66

; <label>:1858                                    ; preds = %1853
  %1859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.f32 %1859, 2
  %1861 = extractvalue %dx.types.CBufRet.f32 %1859, 3
  %1862 = fmul fast float %1860, %1649
  %1863 = fmul fast float %1861, %1651
  %1864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1865 = extractvalue %dx.types.CBufRet.f32 %1864, 0
  %1866 = extractvalue %dx.types.CBufRet.f32 %1864, 1
  %1867 = fadd fast float %1862, %1865
  %1868 = fadd fast float %1863, %1866
  %1869 = call float @dx.op.unary.f32(i32 7, float %1867)  ; Saturate(value)
  %1870 = call float @dx.op.unary.f32(i32 7, float %1868)  ; Saturate(value)
  %1871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %21, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1872 = extractvalue %dx.types.ResRet.f32 %1871, 0
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 0
  %1875 = fmul fast float %1874, %1872
  %1876 = fsub fast float %1867, %1869
  %1877 = fsub fast float %1868, %1870
  %1878 = extractvalue %dx.types.CBufRet.f32 %1859, 0
  %1879 = extractvalue %dx.types.CBufRet.f32 %1859, 1
  %1880 = fmul fast float %1878, %1876
  %1881 = fmul fast float %1879, %1877
  %1882 = fmul fast float %1880, %1880
  %1883 = fmul fast float %1881, %1881
  %1884 = fadd fast float %1882, %1883
  %1885 = call float @dx.op.unary.f32(i32 24, float %1884)  ; Sqrt(value)
  %1886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1887 = extractvalue %dx.types.CBufRet.f32 %1886, 3
  %1888 = fmul fast float %1887, %1885
  %1889 = call float @dx.op.unary.f32(i32 7, float %1888)  ; Saturate(value)
  %1890 = extractvalue %dx.types.CBufRet.f32 %1886, 2
  %1891 = fsub fast float %1890, %1875
  %1892 = fmul fast float %1891, %1889
  %1893 = extractvalue %dx.types.CBufRet.f32 %1873, 1
  %1894 = fsub fast float %1653, %1875
  %1895 = fsub fast float %1894, %1893
  %1896 = fsub fast float %1895, %1892
  %1897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1898 = extractvalue %dx.types.CBufRet.f32 %1897, 2
  %1899 = fsub fast float %1896, %1898
  %1900 = fcmp fast olt float %1899, 0.000000e+00
  %1901 = call float @dx.op.unary.f32(i32 6, float %1899)  ; FAbs(value)
  %1902 = extractvalue %dx.types.CBufRet.i32 %1854, 0
  %1903 = icmp eq i32 %1902, 0
  br i1 %1903, label %1957, label %1904

; <label>:1904                                    ; preds = %1858
  br label %1905

; <label>:1905                                    ; preds = %1944, %1904
  %1906 = phi i32 [ %1950, %1944 ], [ 1, %1904 ]
  %1907 = phi float [ %1952, %1944 ], [ 0x47EFFFFFE0000000, %1904 ]
  %1908 = phi i32 [ %1953, %1944 ], [ 0, %1904 ]
  %1909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1910 = extractvalue %dx.types.CBufRet.f32 %1909, 1
  %1911 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.i32 %1911, 1
  %1913 = and i32 %1912, 8
  %1914 = icmp eq i32 %1913, 0
  %1915 = fcmp fast ogt float %1910, %1896
  %1916 = or i1 %1915, %1914
  %1917 = add i32 %1908, 171
  %1918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %1917)  ; CBufferLoadLegacy(handle,regIndex)
  %1919 = extractvalue %dx.types.CBufRet.f32 %1918, 0
  %1920 = extractvalue %dx.types.CBufRet.f32 %1918, 1
  %1921 = extractvalue %dx.types.CBufRet.f32 %1918, 2
  br i1 %1916, label %1922, label %1928, !dx.controlflow.hints !67

; <label>:1922                                    ; preds = %1905
  %1923 = fsub fast float %1919, %1649
  %1924 = fsub fast float %1920, %1651
  %1925 = fmul fast float %1923, %1923
  %1926 = fmul fast float %1924, %1924
  %1927 = fadd fast float %1925, %1926
  br label %1944

; <label>:1928                                    ; preds = %1905
  %1929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1930 = extractvalue %dx.types.CBufRet.f32 %1929, 2
  %1931 = extractvalue %dx.types.CBufRet.f32 %1909, 2
  %1932 = fmul fast float %1931, %1930
  %1933 = fsub fast float %1932, %1910
  %1934 = fdiv fast float %1921, %1933
  %1935 = fsub fast float %1649, %1919
  %1936 = fsub fast float %1651, %1920
  %1937 = fsub fast float %1896, %1910
  %1938 = fmul fast float %1934, %1937
  %1939 = fmul fast float %1935, %1935
  %1940 = fmul fast float %1936, %1936
  %1941 = fadd fast float %1939, %1940
  %1942 = fmul fast float %1938, %1938
  %1943 = fadd fast float %1941, %1942
  br label %1944

; <label>:1944                                    ; preds = %1928, %1922
  %1945 = phi float [ %1927, %1922 ], [ %1943, %1928 ]
  %1946 = call float @dx.op.unary.f32(i32 24, float %1945)  ; Sqrt(value)
  %1947 = fsub float %1921, %1946
  %1948 = fcmp fast olt float %1947, 0.000000e+00
  %1949 = zext i1 %1948 to i32
  %1950 = and i32 %1949, %1906
  %1951 = call float @dx.op.unary.f32(i32 6, float %1947)  ; FAbs(value)
  %1952 = call float @dx.op.binary.f32(i32 36, float %1907, float %1951)  ; FMin(a,b)
  %1953 = add i32 %1908, 1
  %1954 = extractvalue %dx.types.CBufRet.i32 %1911, 0
  %1955 = icmp ult i32 %1953, %1954
  br i1 %1955, label %1905, label %1956

; <label>:1956                                    ; preds = %1944
  br label %1957

; <label>:1957                                    ; preds = %1956, %1858
  %1958 = phi i32 [ 1, %1858 ], [ %1950, %1956 ]
  %1959 = phi float [ 0x47EFFFFFE0000000, %1858 ], [ %1952, %1956 ]
  br label %1960

; <label>:1960                                    ; preds = %1960, %1957
  %1961 = phi i32 [ %1958, %1957 ], [ %2000, %1960 ]
  %1962 = phi float [ 0x47EFFFFFE0000000, %1957 ], [ %2002, %1960 ]
  %1963 = phi i32 [ 0, %1957 ], [ %2003, %1960 ]
  %1964 = add nuw nsw i32 %1963, 191
  %1965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %1964)  ; CBufferLoadLegacy(handle,regIndex)
  %1966 = extractvalue %dx.types.CBufRet.f32 %1965, 0
  %1967 = extractvalue %dx.types.CBufRet.f32 %1965, 1
  %1968 = extractvalue %dx.types.CBufRet.f32 %1965, 2
  %1969 = add nuw nsw i32 %1963, 195
  %1970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %1969)  ; CBufferLoadLegacy(handle,regIndex)
  %1971 = extractvalue %dx.types.CBufRet.f32 %1970, 0
  %1972 = extractvalue %dx.types.CBufRet.f32 %1970, 1
  %1973 = extractvalue %dx.types.CBufRet.f32 %1970, 2
  %1974 = fsub fast float %1649, %1966
  %1975 = fsub fast float %1651, %1967
  %1976 = fsub fast float %1896, %1968
  %1977 = call float @dx.op.unary.f32(i32 6, float %1974)  ; FAbs(value)
  %1978 = call float @dx.op.unary.f32(i32 6, float %1975)  ; FAbs(value)
  %1979 = call float @dx.op.unary.f32(i32 6, float %1976)  ; FAbs(value)
  %1980 = fsub fast float %1977, %1971
  %1981 = fsub fast float %1978, %1972
  %1982 = fsub fast float %1979, %1973
  %1983 = call float @dx.op.binary.f32(i32 35, float %1980, float 0.000000e+00)  ; FMax(a,b)
  %1984 = call float @dx.op.binary.f32(i32 35, float %1981, float 0.000000e+00)  ; FMax(a,b)
  %1985 = call float @dx.op.binary.f32(i32 35, float %1982, float 0.000000e+00)  ; FMax(a,b)
  %1986 = fmul fast float %1983, %1983
  %1987 = fmul fast float %1984, %1984
  %1988 = fadd fast float %1987, %1986
  %1989 = fmul fast float %1985, %1985
  %1990 = fadd fast float %1988, %1989
  %1991 = call float @dx.op.unary.f32(i32 24, float %1990)  ; Sqrt(value)
  %1992 = call float @dx.op.binary.f32(i32 35, float %1981, float %1982)  ; FMax(a,b)
  %1993 = call float @dx.op.binary.f32(i32 35, float %1980, float %1992)  ; FMax(a,b)
  %1994 = call float @dx.op.binary.f32(i32 36, float %1993, float 0.000000e+00)  ; FMin(a,b)
  %1995 = fadd fast float %1994, %1991
  %1996 = fsub fast float -0.000000e+00, %1995
  %1997 = fcmp ogt float %1995, -0.000000e+00
  %1998 = icmp ne i32 %1961, 0
  %1999 = and i1 %1998, %1997
  %2000 = zext i1 %1999 to i32
  %2001 = call float @dx.op.unary.f32(i32 6, float %1996)  ; FAbs(value)
  %2002 = call float @dx.op.binary.f32(i32 36, float %1962, float %2001)  ; FMin(a,b)
  %2003 = add nuw nsw i32 %1963, 1
  %2004 = icmp eq i32 %2003, 4
  br i1 %2004, label %2005, label %1960

; <label>:2005                                    ; preds = %1960
  %2006 = call float @dx.op.binary.f32(i32 36, float %1901, float %2002)  ; FMin(a,b)
  %2007 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2008 = extractvalue %dx.types.CBufRet.i32 %2007, 1
  %2009 = and i32 %2008, 2
  %2010 = icmp ne i32 %2009, 0
  %2011 = xor i1 %1999, %2010
  %2012 = call float @dx.op.binary.f32(i32 36, float %2006, float %1959)  ; FMin(a,b)
  %2013 = and i1 %2011, %1900
  %2014 = zext i1 %2013 to i32
  br label %2015

; <label>:2015                                    ; preds = %2005, %1853
  %2016 = phi i32 [ %516, %1853 ], [ %2014, %2005 ]
  %2017 = phi float [ 0.000000e+00, %1853 ], [ %2012, %2005 ]
  %2018 = phi float [ %1653, %1853 ], [ %1896, %2005 ]
  %2019 = icmp ne i32 %2016, 0
  %2020 = extractvalue %dx.types.CBufRet.f32 %828, 3
  %2021 = call float @dx.op.binary.f32(i32 35, float %2017, float %2020)  ; FMax(a,b)
  %2022 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %2021)  ; FMin(a,b)
  %2023 = zext i1 %2019 to i32
  br label %2024

; <label>:2024                                    ; preds = %2015, %1850
  %2025 = phi i32 [ %2016, %2015 ], [ %516, %1850 ]
  %2026 = phi float [ %2018, %2015 ], [ %517, %1850 ]
  %2027 = phi float [ %2022, %2015 ], [ 0x47EFFFFFE0000000, %1850 ]
  %2028 = phi i32 [ %2023, %2015 ], [ 0, %1850 ]
  %2029 = icmp eq i32 %1727, 0
  br i1 %2029, label %2103, label %2030, !dx.controlflow.hints !68

; <label>:2030                                    ; preds = %2024
  %2031 = fmul fast float %1068, %1645
  %2032 = call float @dx.op.unary.f32(i32 23, float %2031)  ; Log(value)
  %2033 = fmul fast float %2032, 0x3FE62E4300000000
  %2034 = call float @dx.op.binary.f32(i32 35, float %2033, float 1.000000e+00)  ; FMax(a,b)
  %2035 = fmul fast float %2034, %2027
  %2036 = call float @dx.op.binary.f32(i32 36, float %2035, float %1851)  ; FMin(a,b)
  %2037 = call float @dx.op.binary.f32(i32 35, float %2036, float 0.000000e+00)  ; FMax(a,b)
  %2038 = fcmp fast ogt float %2037, 0x3F1A36E2E0000000
  %2039 = fadd fast float %1646, %1649
  %2040 = fadd fast float %1647, %1651
  %2041 = select i1 %2038, float %2039, float %1649
  %2042 = select i1 %2038, float %2040, float %1651
  %2043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2044 = extractvalue %dx.types.CBufRet.f32 %2043, 0
  %2045 = extractvalue %dx.types.CBufRet.f32 %2043, 1
  %2046 = fsub fast float %2041, %2044
  %2047 = fsub fast float %2042, %2045
  %2048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %2049 = extractvalue %dx.types.CBufRet.f32 %2048, 0
  %2050 = extractvalue %dx.types.CBufRet.f32 %2048, 1
  %2051 = fmul fast float %2046, %2049
  %2052 = fmul fast float %2047, %2050
  %2053 = fsub fast float 1.000000e+00, %2052
  %2054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2055 = extractvalue %dx.types.CBufRet.i32 %2054, 3
  %2056 = icmp eq i32 %2055, 0
  br i1 %2056, label %2063, label %2057, !dx.controlflow.hints !53

; <label>:2057                                    ; preds = %2030
  %2058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %20, float %2051, float %2053, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2059 = extractvalue %dx.types.ResRet.f32 %2058, 0
  %2060 = extractvalue %dx.types.ResRet.f32 %2058, 1
  %2061 = extractvalue %dx.types.ResRet.f32 %2058, 2
  %2062 = extractvalue %dx.types.ResRet.f32 %2058, 3
  br label %2069

; <label>:2063                                    ; preds = %2030
  %2064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %21, float %2051, float %2053, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2065 = extractvalue %dx.types.ResRet.f32 %2064, 0
  %2066 = extractvalue %dx.types.ResRet.f32 %2064, 1
  %2067 = extractvalue %dx.types.ResRet.f32 %2064, 2
  %2068 = extractvalue %dx.types.ResRet.f32 %2064, 3
  br label %2069

; <label>:2069                                    ; preds = %2063, %2057
  %2070 = phi float [ %2059, %2057 ], [ %2065, %2063 ]
  %2071 = phi float [ %2060, %2057 ], [ %2066, %2063 ]
  %2072 = phi float [ %2061, %2057 ], [ %2067, %2063 ]
  %2073 = phi float [ %2062, %2057 ], [ %2068, %2063 ]
  %2074 = extractvalue %dx.types.CBufRet.f32 %2048, 3
  %2075 = fmul fast float %2074, %2071
  %2076 = fmul fast float %2075, %2070
  %2077 = fsub fast float %2075, %2076
  %2078 = fcmp fast ole float %2077, 0.000000e+00
  %2079 = extractvalue %dx.types.CBufRet.f32 %2043, 2
  %2080 = fadd fast float %2076, %2079
  %2081 = fmul fast float %2074, %2072
  %2082 = fadd fast float %2081, %2079
  %2083 = fdiv fast float 1.000000e+00, %2077
  %2084 = select i1 %2078, float 1.000000e+06, float %2083
  %2085 = fsub fast float %1653, %2080
  %2086 = fmul fast float %2084, %2085
  %2087 = call float @dx.op.unary.f32(i32 7, float %2086)  ; Saturate(value)
  %2088 = extractvalue %dx.types.CBufRet.f32 %2048, 2
  %2089 = fmul fast float %2088, %2087
  %2090 = fsub fast float %2088, %2089
  %2091 = fcmp fast olt float %1653, %2082
  %2092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %2093 = extractvalue %dx.types.CBufRet.f32 %2092, 3
  %2094 = fmul fast float %2093, 3.000000e+00
  %2095 = select i1 %2091, float %2094, float 3.000000e+00
  %2096 = fmul fast float %2090, %2095
  %2097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2098 = extractvalue %dx.types.CBufRet.f32 %2097, 2
  %2099 = fmul fast float %1645, 0x3FD5555560000000
  %2100 = fmul fast float %2099, %2073
  %2101 = fmul fast float %2100, %2098
  %2102 = fmul fast float %2101, %2096
  br label %2103

; <label>:2103                                    ; preds = %2069, %2024
  %2104 = phi float [ %2102, %2069 ], [ 0.000000e+00, %2024 ]
  %2105 = icmp eq i32 %1852, 0
  br i1 %2105, label %2286, label %2106, !dx.controlflow.hints !70

; <label>:2106                                    ; preds = %2103
  %2107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2108 = extractvalue %dx.types.CBufRet.f32 %2107, 3
  %2109 = fmul fast float %2108, %1645
  %2110 = fcmp fast oeq float %2109, 0.000000e+00
  br i1 %2110, label %2125, label %2111, !dx.controlflow.hints !71

; <label>:2111                                    ; preds = %2106
  %2112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2113 = extractvalue %dx.types.CBufRet.f32 %2112, 3
  %2114 = fmul fast float %2113, %2109
  %2115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2116 = extractvalue %dx.types.CBufRet.f32 %2115, 0
  %2117 = extractvalue %dx.types.CBufRet.f32 %2115, 1
  %2118 = extractvalue %dx.types.CBufRet.f32 %2115, 2
  %2119 = fmul fast float %2116, %2114
  %2120 = fmul fast float %2117, %2114
  %2121 = fmul fast float %2118, %2114
  %2122 = call float @dx.op.unary.f32(i32 23, float %2119)  ; Log(value)
  %2123 = call float @dx.op.unary.f32(i32 23, float %2120)  ; Log(value)
  %2124 = call float @dx.op.unary.f32(i32 23, float %2121)  ; Log(value)
  br label %2125

; <label>:2125                                    ; preds = %2111, %2106
  %2126 = phi float [ %2122, %2111 ], [ 0.000000e+00, %2106 ]
  %2127 = phi float [ %2123, %2111 ], [ 0.000000e+00, %2106 ]
  %2128 = phi float [ %2124, %2111 ], [ 0.000000e+00, %2106 ]
  %2129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2130 = extractvalue %dx.types.CBufRet.f32 %2129, 0
  %2131 = extractvalue %dx.types.CBufRet.f32 %2129, 1
  %2132 = extractvalue %dx.types.CBufRet.f32 %2129, 2
  %2133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2134 = extractvalue %dx.types.CBufRet.f32 %2133, 0
  %2135 = extractvalue %dx.types.CBufRet.f32 %2133, 1
  %2136 = extractvalue %dx.types.CBufRet.f32 %2133, 2
  %2137 = fsub fast float %1649, %2134
  %2138 = fsub fast float %1651, %2135
  %2139 = fsub fast float %1653, %2136
  %2140 = fmul fast float %2137, %2130
  %2141 = fmul fast float %2138, %2131
  %2142 = fmul fast float %2139, %2132
  %2143 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %2144 = extractvalue %dx.types.CBufRet.i32 %2143, 0
  %2145 = extractvalue %dx.types.CBufRet.i32 %2143, 1
  %2146 = uitofp i32 %2144 to float
  %2147 = uitofp i32 %2145 to float
  %2148 = fmul fast float %2140, %2146
  %2149 = fmul fast float %2141, %2147
  %2150 = fadd fast float %2148, 5.000000e-01
  %2151 = fadd fast float %2149, 5.000000e-01
  %2152 = call float @dx.op.unary.f32(i32 22, float %2150)  ; Frc(value)
  %2153 = call float @dx.op.unary.f32(i32 22, float %2151)  ; Frc(value)
  %2154 = call float @dx.op.unary.f32(i32 27, float %2150)  ; Round_ni(value)
  %2155 = call float @dx.op.unary.f32(i32 27, float %2151)  ; Round_ni(value)
  %2156 = fadd fast float %2154, 1.000000e+00
  %2157 = fadd fast float %2155, 1.000000e+00
  %2158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %2159 = extractvalue %dx.types.CBufRet.f32 %2158, 0
  %2160 = extractvalue %dx.types.CBufRet.f32 %2158, 1
  %2161 = fmul fast float %2159, %2156
  %2162 = fmul fast float %2160, %2157
  %2163 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %20, float %2161, float %2162, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2164 = extractvalue %dx.types.ResRet.f32 %2163, 0
  %2165 = extractvalue %dx.types.ResRet.f32 %2163, 1
  %2166 = extractvalue %dx.types.ResRet.f32 %2163, 2
  %2167 = extractvalue %dx.types.ResRet.f32 %2163, 3
  %2168 = extractvalue %dx.types.CBufRet.i32 %2143, 2
  %2169 = extractvalue %dx.types.CBufRet.f32 %2158, 2
  %2170 = uitofp i32 %2168 to float
  %2171 = fadd fast float %2170, -1.000000e+00
  %2172 = fmul fast float %2171, %2164
  %2173 = fmul fast float %2171, %2165
  %2174 = fmul fast float %2171, %2166
  %2175 = fmul fast float %2171, %2167
  %2176 = fadd fast float %2172, 5.000000e-01
  %2177 = fadd fast float %2173, 5.000000e-01
  %2178 = fadd fast float %2174, 5.000000e-01
  %2179 = fadd fast float %2175, 5.000000e-01
  %2180 = fptoui float %2176 to i32
  %2181 = fptoui float %2177 to i32
  %2182 = fptoui float %2178 to i32
  %2183 = fptoui float %2179 to i32
  %2184 = uitofp i32 %2180 to float
  %2185 = uitofp i32 %2181 to float
  %2186 = uitofp i32 %2182 to float
  %2187 = uitofp i32 %2183 to float
  %2188 = fadd fast float %2184, 5.000000e-01
  %2189 = fadd fast float %2185, 5.000000e-01
  %2190 = fadd fast float %2186, 5.000000e-01
  %2191 = fadd fast float %2187, 5.000000e-01
  %2192 = fmul fast float %2188, %2169
  %2193 = fmul fast float %2189, %2169
  %2194 = fmul fast float %2190, %2169
  %2195 = fmul fast float %2191, %2169
  %2196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %2192, float %2142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2197 = extractvalue %dx.types.ResRet.f32 %2196, 0
  %2198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %2193, float %2142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2199 = extractvalue %dx.types.ResRet.f32 %2198, 0
  %2200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %2194, float %2142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2201 = extractvalue %dx.types.ResRet.f32 %2200, 0
  %2202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %2195, float %2142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2203 = extractvalue %dx.types.ResRet.f32 %2202, 0
  %2204 = fsub fast float %2201, %2203
  %2205 = fmul fast float %2204, %2152
  %2206 = fadd fast float %2205, %2203
  %2207 = fsub fast float %2199, %2197
  %2208 = fmul fast float %2207, %2152
  %2209 = fadd fast float %2208, %2197
  %2210 = fsub fast float %2209, %2206
  %2211 = fmul fast float %2210, %2153
  %2212 = fadd fast float %2211, %2206
  %2213 = fcmp fast ogt float %2212, 0.000000e+00
  br i1 %2213, label %2214, label %2282, !dx.controlflow.hints !72

; <label>:2214                                    ; preds = %2125
  %2215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2216 = extractvalue %dx.types.CBufRet.f32 %2215, 0
  %2217 = extractvalue %dx.types.CBufRet.f32 %2215, 1
  %2218 = extractvalue %dx.types.CBufRet.f32 %2215, 2
  %2219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2220 = extractvalue %dx.types.CBufRet.f32 %2219, 0
  %2221 = extractvalue %dx.types.CBufRet.f32 %2219, 1
  %2222 = extractvalue %dx.types.CBufRet.f32 %2219, 2
  %2223 = fmul fast float %2138, %2130
  %2224 = fmul fast float %2139, %2130
  %2225 = fadd fast float %2140, %2220
  %2226 = fadd fast float %2223, %2221
  %2227 = fadd fast float %2224, %2222
  %2228 = fmul fast float %2225, %2216
  %2229 = fmul fast float %2226, %2216
  %2230 = fmul fast float %2227, %2216
  %2231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %2228, float %2229, float %2230, float undef, i32 0, i32 0, i32 0, float %2126)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2232 = extractvalue %dx.types.ResRet.f32 %2231, 0
  %2233 = fmul fast float %2225, %2217
  %2234 = fmul fast float %2226, %2217
  %2235 = fmul fast float %2227, %2217
  %2236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %2233, float %2234, float %2235, float undef, i32 0, i32 0, i32 0, float %2127)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2237 = extractvalue %dx.types.ResRet.f32 %2236, 1
  %2238 = fmul fast float %2225, %2218
  %2239 = fmul fast float %2226, %2218
  %2240 = fmul fast float %2227, %2218
  %2241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %2238, float %2239, float %2240, float undef, i32 0, i32 0, i32 0, float %2128)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2242 = extractvalue %dx.types.ResRet.f32 %2241, 2
  %2243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %2244 = extractvalue %dx.types.CBufRet.f32 %2243, 1
  %2245 = fmul fast float %2237, %2232
  %2246 = fmul fast float %2245, %2242
  %2247 = call float @dx.op.unary.f32(i32 23, float %2246)  ; Log(value)
  %2248 = fmul fast float %2247, %2244
  %2249 = call float @dx.op.unary.f32(i32 21, float %2248)  ; Exp(value)
  %2250 = extractvalue %dx.types.CBufRet.f32 %2243, 2
  %2251 = fmul fast float %2212, %2212
  %2252 = fmul fast float %2251, %2249
  %2253 = fmul fast float %2252, %2250
  %2254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %2255 = extractvalue %dx.types.CBufRet.f32 %2254, 3
  %2256 = fmul fast float %2255, %2253
  %2257 = bitcast float %2256 to i32
  %2258 = sitofp i32 %2257 to float
  %2259 = fptosi float %2258 to i32
  %2260 = bitcast i32 %2259 to float
  %2261 = fsub fast float 1.000000e+00, %2253
  %2262 = bitcast float %2261 to i32
  %2263 = sitofp i32 %2262 to float
  %2264 = fptosi float %2263 to i32
  %2265 = bitcast i32 %2264 to float
  %2266 = fadd fast float %2260, %2265
  %2267 = bitcast float %2266 to i32
  %2268 = sub nsw i32 2129859010, %2267
  %2269 = bitcast i32 %2268 to float
  %2270 = fmul fast float %2269, %2260
  %2271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2272 = extractvalue %dx.types.CBufRet.f32 %2271, 2
  %2273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %2274 = extractvalue %dx.types.CBufRet.f32 %2273, 0
  %2275 = fmul fast float %2270, %2274
  %2276 = fadd fast float %2275, 1.000000e+00
  %2277 = bitcast float %2276 to i32
  %2278 = sub nsw i32 2129859010, %2277
  %2279 = bitcast i32 %2278 to float
  %2280 = fmul fast float %2270, %2272
  %2281 = fmul fast float %2280, %2279
  br label %2282

; <label>:2282                                    ; preds = %2214, %2125
  %2283 = phi float [ %2281, %2214 ], [ %2212, %2125 ]
  %2284 = fmul fast float %2283, %1645
  %2285 = fadd fast float %2284, %2104
  br label %2286

; <label>:2286                                    ; preds = %2282, %2103
  %2287 = phi float [ %2285, %2282 ], [ %2104, %2103 ]
  br i1 %1792, label %2413, label %2288, !dx.controlflow.hints !73

; <label>:2288                                    ; preds = %2286
  %2289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2290 = extractvalue %dx.types.CBufRet.i32 %2289, 0
  %2291 = icmp ne i32 %2290, 0
  %2292 = zext i1 %2291 to i32
  %2293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2294 = extractvalue %dx.types.CBufRet.i32 %2293, 0
  %2295 = icmp eq i32 %2294, 0
  br i1 %2295, label %2329, label %2296

; <label>:2296                                    ; preds = %2288
  br label %2297

; <label>:2297                                    ; preds = %2324, %2296
  %2298 = phi i32 [ %2325, %2324 ], [ 0, %2296 ]
  %2299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2298, i32 0)  ; BufferLoad(srv,index,wot)
  %2300 = extractvalue %dx.types.ResRet.f32 %2299, 0
  %2301 = extractvalue %dx.types.ResRet.f32 %2299, 1
  %2302 = extractvalue %dx.types.ResRet.f32 %2299, 2
  %2303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2298, i32 16)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.f32 %2303, 0
  %2305 = extractvalue %dx.types.ResRet.f32 %2303, 1
  %2306 = extractvalue %dx.types.ResRet.f32 %2303, 2
  %2307 = fsub fast float %2300, %2304
  %2308 = fsub fast float %2301, %2305
  %2309 = fsub fast float %2302, %2306
  %2310 = fadd fast float %2304, %2300
  %2311 = fadd fast float %2305, %2301
  %2312 = fadd fast float %2306, %2302
  %2313 = fcmp fast olt float %1649, %2307
  %2314 = fcmp fast olt float %1651, %2308
  %2315 = fcmp fast olt float %1653, %2309
  %2316 = or i1 %2313, %2314
  %2317 = or i1 %2315, %2316
  %2318 = fcmp fast ogt float %1649, %2310
  %2319 = fcmp fast ogt float %1651, %2311
  %2320 = fcmp fast ogt float %1653, %2312
  %2321 = or i1 %2318, %2319
  %2322 = or i1 %2320, %2321
  %2323 = or i1 %2317, %2322
  br i1 %2323, label %2324, label %2327, !dx.controlflow.hints !74

; <label>:2324                                    ; preds = %2297
  %2325 = add nuw i32 %2298, 1
  %2326 = icmp ult i32 %2325, %2294
  br i1 %2326, label %2297, label %2327

; <label>:2327                                    ; preds = %2324, %2297
  %2328 = phi i32 [ 255, %2324 ], [ %2298, %2297 ]
  br label %2329

; <label>:2329                                    ; preds = %2327, %2288
  %2330 = phi i32 [ 255, %2288 ], [ %2328, %2327 ]
  %2331 = icmp eq i32 %2330, 255
  br i1 %2331, label %2337, label %2332, !dx.controlflow.hints !75

; <label>:2332                                    ; preds = %2329
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2330, i32 156)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = icmp ne i32 %2334, 0
  %2336 = zext i1 %2335 to i32
  br label %2337

; <label>:2337                                    ; preds = %2332, %2329
  %2338 = phi i32 [ %2336, %2332 ], [ %2292, %2329 ]
  %2339 = icmp eq i32 %2338, 0
  br i1 %2339, label %2340, label %2409, !dx.controlflow.hints !76

; <label>:2340                                    ; preds = %2337
  %2341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2342 = extractvalue %dx.types.CBufRet.f32 %2341, 3
  %2343 = extractvalue %dx.types.CBufRet.f32 %737, 0
  %2344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2345 = extractvalue %dx.types.CBufRet.f32 %2344, 2
  %2346 = extractvalue %dx.types.CBufRet.f32 %2344, 3
  br i1 %2331, label %2357, label %2347, !dx.controlflow.hints !77

; <label>:2347                                    ; preds = %2340
  %2348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2330, i32 60)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.f32 %2348, 0
  %2350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2330, i32 64)  ; BufferLoad(srv,index,wot)
  %2351 = extractvalue %dx.types.ResRet.f32 %2350, 0
  %2352 = extractvalue %dx.types.ResRet.f32 %2350, 1
  %2353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2330, i32 72)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.f32 %2353, 0
  %2355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2330, i32 96)  ; BufferLoad(srv,index,wot)
  %2356 = extractvalue %dx.types.ResRet.f32 %2355, 0
  br label %2357

; <label>:2357                                    ; preds = %2347, %2340
  %2358 = phi float [ %2349, %2347 ], [ %740, %2340 ]
  %2359 = phi float [ %2354, %2347 ], [ %738, %2340 ]
  %2360 = phi float [ %2356, %2347 ], [ %2343, %2340 ]
  %2361 = phi float [ %2351, %2347 ], [ %2345, %2340 ]
  %2362 = phi float [ %2352, %2347 ], [ %2346, %2340 ]
  %2363 = call float @dx.op.binary.f32(i32 35, float %1787, float 0.000000e+00)  ; FMax(a,b)
  %2364 = call float @dx.op.binary.f32(i32 36, float %2363, float 1.000000e+00)  ; FMin(a,b)
  %2365 = call float @dx.op.unary.f32(i32 24, float %2364)  ; Sqrt(value)
  %2366 = call float @dx.op.binary.f32(i32 35, float %1790, float 0x3F847AE140000000)  ; FMax(a,b)
  %2367 = fsub fast float %1788, %1653
  %2368 = fsub fast float %1653, %1789
  %2369 = call float @dx.op.binary.f32(i32 36, float %2368, float %2367)  ; FMin(a,b)
  %2370 = fdiv fast float %2369, %2366
  %2371 = call float @dx.op.unary.f32(i32 7, float %2370)  ; Saturate(value)
  %2372 = fsub fast float %1653, %2359
  %2373 = fdiv fast float %2372, %2358
  %2374 = call float @dx.op.unary.f32(i32 7, float %2373)  ; Saturate(value)
  %2375 = fsub fast float 1.000000e+00, %2374
  %2376 = fmul float %2371, %2375
  %2377 = fmul float %2376, %2376
  %2378 = fmul fast float %2365, %2342
  %2379 = fmul fast float %2378, %2377
  %2380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %2381 = extractvalue %dx.types.CBufRet.f32 %2380, 2
  %2382 = extractvalue %dx.types.CBufRet.f32 %2380, 1
  %2383 = fsub fast float %2379, %2382
  %2384 = fsub fast float %2381, %2382
  %2385 = fdiv fast float %2383, %2384
  %2386 = call float @dx.op.unary.f32(i32 7, float %2385)  ; Saturate(value)
  %2387 = fmul fast float %2386, %2360
  %2388 = fcmp fast ogt float %2362, 0.000000e+00
  br i1 %2388, label %2389, label %2409, !dx.controlflow.hints !78

; <label>:2389                                    ; preds = %2357
  %2390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2391 = extractvalue %dx.types.CBufRet.f32 %2390, 0
  %2392 = extractvalue %dx.types.CBufRet.f32 %2390, 1
  %2393 = extractvalue %dx.types.CBufRet.f32 %2390, 2
  %2394 = fsub fast float %1649, %2391
  %2395 = fsub fast float %1651, %2392
  %2396 = fsub fast float %1653, %2393
  %2397 = fmul fast float %2394, %2394
  %2398 = fmul fast float %2395, %2395
  %2399 = fadd fast float %2397, %2398
  %2400 = fmul fast float %2396, %2396
  %2401 = fadd fast float %2399, %2400
  %2402 = call float @dx.op.unary.f32(i32 24, float %2401)  ; Sqrt(value)
  %2403 = fsub fast float %2402, %2361
  %2404 = fsub fast float %2362, %2361
  %2405 = fdiv fast float %2403, %2404
  %2406 = call float @dx.op.unary.f32(i32 7, float %2405)  ; Saturate(value)
  %2407 = fmul fast float %2406, %2406
  %2408 = fmul fast float %2407, %2387
  br label %2409

; <label>:2409                                    ; preds = %2389, %2357, %2337
  %2410 = phi float [ 0.000000e+00, %2337 ], [ %2408, %2389 ], [ %2387, %2357 ]
  %2411 = fmul fast float %2410, %1645
  %2412 = fadd fast float %2411, %2287
  br label %2413

; <label>:2413                                    ; preds = %2409, %2286
  %2414 = phi float [ %2412, %2409 ], [ %2287, %2286 ]
  %2415 = icmp eq i32 %2028, 0
  br i1 %2415, label %2447, label %2416, !dx.controlflow.hints !79

; <label>:2416                                    ; preds = %2413
  %2417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %2418 = extractvalue %dx.types.CBufRet.f32 %2417, 1
  %2419 = fsub fast float %1645, %2418
  %2420 = extractvalue %dx.types.CBufRet.f32 %2417, 3
  %2421 = fmul fast float %2419, %2420
  %2422 = call float @dx.op.unary.f32(i32 7, float %2421)  ; Saturate(value)
  %2423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %2424 = extractvalue %dx.types.CBufRet.f32 %2423, 3
  %2425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2426 = extractvalue %dx.types.CBufRet.f32 %2425, 2
  %2427 = fsub fast float %2426, %2026
  %2428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %2429 = extractvalue %dx.types.CBufRet.f32 %2428, 3
  %2430 = fmul fast float %2427, %2429
  %2431 = call float @dx.op.unary.f32(i32 7, float %2430)  ; Saturate(value)
  %2432 = fmul fast float %2431, %2424
  %2433 = extractvalue %dx.types.CBufRet.f32 %2428, 0
  %2434 = fsub fast float %1645, %2433
  %2435 = extractvalue %dx.types.CBufRet.f32 %2428, 1
  %2436 = fmul fast float %2434, %2435
  %2437 = call float @dx.op.unary.f32(i32 7, float %2436)  ; Saturate(value)
  %2438 = fsub fast float 1.000000e+00, %2422
  %2439 = fmul fast float %2437, %2438
  %2440 = fadd fast float %2439, %2422
  %2441 = extractvalue %dx.types.CBufRet.f32 %2417, 0
  %2442 = fsub fast float %2432, %2441
  %2443 = fmul fast float %2442, %2440
  %2444 = fadd fast float %2443, %2441
  %2445 = fmul fast float %2444, %1645
  %2446 = fadd fast float %2445, %2414
  br label %2447

; <label>:2447                                    ; preds = %2416, %2413
  %2448 = phi float [ %2446, %2416 ], [ %2414, %2413 ]
  %2449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2450 = extractvalue %dx.types.CBufRet.f32 %2449, 3
  %2451 = fmul fast float %2448, 0xBFF7154760000000
  %2452 = fmul fast float %2451, %2450
  %2453 = call float @dx.op.unary.f32(i32 21, float %2452)  ; Exp(value)
  %2454 = call float @dx.op.unary.f32(i32 7, float %2453)  ; Saturate(value)
  %2455 = fmul fast float %2454, %1638
  %2456 = fmul fast float %2454, %1639
  %2457 = fmul fast float %2454, %1640
  %2458 = fadd fast float %2455, %210
  %2459 = fadd fast float %2456, %211
  %2460 = fadd fast float %2457, %212
  %2461 = fsub fast float 1.000000e+00, %1608
  %2462 = fmul fast float %1600, %529
  %2463 = fmul fast float %2462, %2461
  %2464 = fmul fast float %2463, %2458
  %2465 = fmul fast float %1601, %529
  %2466 = fmul fast float %2465, %2461
  %2467 = fmul fast float %2466, %2459
  %2468 = fmul fast float %1602, %529
  %2469 = fmul fast float %2468, %2461
  %2470 = fmul fast float %2469, %2460
  %2471 = fadd fast float %2464, %530
  %2472 = fadd fast float %2467, %531
  %2473 = fadd fast float %2470, %532
  %2474 = fdiv fast float %1584, %1078
  %2475 = fadd fast float %1078, %536
  %2476 = fmul fast float %536, %536
  %2477 = fmul fast float %2475, %2475
  %2478 = fsub fast float %2476, %2477
  %2479 = fmul fast float %2478, -5.000000e-01
  %2480 = fmul fast float %2479, %2474
  %2481 = fadd fast float %2480, %528
  %2482 = fadd fast float %1584, %539
  %2483 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2484 = extractvalue %dx.types.CBufRet.i32 %2483, 0
  %2485 = icmp eq i32 %2484, 0
  br i1 %2485, label %2512, label %2486, !dx.controlflow.hints !83

; <label>:2486                                    ; preds = %2447
  %2487 = icmp ne i32 %544, 0
  %2488 = zext i1 %2487 to i32
  %2489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2490 = extractvalue %dx.types.CBufRet.f32 %2489, 2
  %2491 = extractvalue %dx.types.CBufRet.f32 %2489, 0
  %2492 = fsub fast float %2475, %2491
  %2493 = fmul fast float %2492, %2490
  %2494 = call float @dx.op.unary.f32(i32 7, float %2493)  ; Saturate(value)
  %2495 = fadd fast float %2494, -5.000000e-01
  %2496 = fmul fast float %2495, 2.000000e+00
  %2497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2498 = extractvalue %dx.types.CBufRet.f32 %2497, 2
  %2499 = fcmp fast olt float %2496, %2498
  br i1 %2499, label %2500, label %2512, !dx.controlflow.hints !84

; <label>:2500                                    ; preds = %2486
  %2501 = fmul fast float %2496, %2496
  %2502 = fmul fast float %2461, %529
  %2503 = fmul fast float %2496, %2502
  %2504 = fmul fast float %2501, %2502
  %2505 = fmul fast float %2503, %2501
  %2506 = fmul fast float %2501, %2501
  %2507 = fmul fast float %2506, %2502
  %2508 = fadd fast float %2503, %540
  %2509 = fadd fast float %2504, %541
  %2510 = fadd fast float %2505, %542
  %2511 = fadd fast float %2507, %543
  br label %2512

; <label>:2512                                    ; preds = %2500, %2486, %2447
  %2513 = phi float [ %540, %2447 ], [ %2508, %2500 ], [ %540, %2486 ]
  %2514 = phi float [ %541, %2447 ], [ %2509, %2500 ], [ %541, %2486 ]
  %2515 = phi float [ %542, %2447 ], [ %2510, %2500 ], [ %542, %2486 ]
  %2516 = phi float [ %543, %2447 ], [ %2511, %2500 ], [ %543, %2486 ]
  %2517 = phi i32 [ %544, %2447 ], [ 1, %2500 ], [ %2488, %2486 ]
  %2518 = fmul fast float %1608, %529
  br label %2519

; <label>:2519                                    ; preds = %2512, %1603
  %2520 = phi float [ %1604, %1603 ], [ %2475, %2512 ]
  %2521 = phi i32 [ %516, %1603 ], [ %2025, %2512 ]
  %2522 = phi float [ %517, %1603 ], [ %2026, %2512 ]
  %2523 = phi float [ %518, %1603 ], [ %1787, %2512 ]
  %2524 = phi float [ %519, %1603 ], [ %1788, %2512 ]
  %2525 = phi float [ %520, %1603 ], [ %1789, %2512 ]
  %2526 = phi float [ %521, %1603 ], [ %1790, %2512 ]
  %2527 = phi float [ %528, %1603 ], [ %2481, %2512 ]
  %2528 = phi float [ %529, %1603 ], [ %2518, %2512 ]
  %2529 = phi float [ %530, %1603 ], [ %2471, %2512 ]
  %2530 = phi float [ %531, %1603 ], [ %2472, %2512 ]
  %2531 = phi float [ %532, %1603 ], [ %2473, %2512 ]
  %2532 = phi float [ %539, %1603 ], [ %2482, %2512 ]
  %2533 = phi float [ %540, %1603 ], [ %2513, %2512 ]
  %2534 = phi float [ %541, %1603 ], [ %2514, %2512 ]
  %2535 = phi float [ %542, %1603 ], [ %2515, %2512 ]
  %2536 = phi float [ %543, %1603 ], [ %2516, %2512 ]
  %2537 = phi i32 [ %544, %1603 ], [ %2517, %2512 ]
  %2538 = fmul fast float %1078, %286
  %2539 = fmul fast float %1078, %287
  %2540 = fmul fast float %1078, %288
  %2541 = fadd fast float %2538, %533
  %2542 = fadd fast float %2539, %534
  %2543 = fadd fast float %2540, %535
  %2544 = fcmp fast olt float %2520, %492
  %2545 = extractvalue %dx.types.CBufRet.f32 %1589, 2
  %2546 = fcmp fast olt float %2545, %2528
  %2547 = and i1 %2544, %2546
  br i1 %2547, label %515, label %2548

; <label>:2548                                    ; preds = %2519
  br label %2549

; <label>:2549                                    ; preds = %2548, %485
  %2550 = phi float [ 0.000000e+00, %485 ], [ %2527, %2548 ]
  %2551 = phi float [ 1.000000e+00, %485 ], [ %2528, %2548 ]
  %2552 = phi float [ 0.000000e+00, %485 ], [ %2529, %2548 ]
  %2553 = phi float [ 0.000000e+00, %485 ], [ %2530, %2548 ]
  %2554 = phi float [ 0.000000e+00, %485 ], [ %2531, %2548 ]
  %2555 = phi float [ 0.000000e+00, %485 ], [ %2532, %2548 ]
  %2556 = phi float [ 0.000000e+00, %485 ], [ %2533, %2548 ]
  %2557 = phi float [ 0.000000e+00, %485 ], [ %2534, %2548 ]
  %2558 = phi float [ 0.000000e+00, %485 ], [ %2535, %2548 ]
  %2559 = phi float [ 0.000000e+00, %485 ], [ %2536, %2548 ]
  %2560 = phi i32 [ 0, %485 ], [ %2537, %2548 ]
  %2561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2562 = extractvalue %dx.types.CBufRet.i32 %2561, 0
  %2563 = icmp eq i32 %2562, 0
  br i1 %2563, label %2605, label %2564, !dx.controlflow.hints !85

; <label>:2564                                    ; preds = %2549
  %2565 = icmp eq i32 %2560, 0
  br i1 %2565, label %2604, label %2566, !dx.controlflow.hints !86

; <label>:2566                                    ; preds = %2564
  %2567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2568 = extractvalue %dx.types.CBufRet.i32 %2567, 2
  %2569 = icmp eq i32 %2568, 0
  br i1 %2569, label %2576, label %2570, !dx.controlflow.hints !87

; <label>:2570                                    ; preds = %2566
  %2571 = fsub fast float 1.000000e+00, %2551
  %2572 = fdiv fast float %2556, %2571
  %2573 = fdiv fast float %2557, %2571
  %2574 = fdiv fast float %2558, %2571
  %2575 = fdiv fast float %2559, %2571
  br label %2581

; <label>:2576                                    ; preds = %2566
  %2577 = fadd fast float %2556, %2551
  %2578 = fadd fast float %2557, %2551
  %2579 = fadd fast float %2558, %2551
  %2580 = fadd fast float %2559, %2551
  br label %2581

; <label>:2581                                    ; preds = %2576, %2570
  %2582 = phi float [ %2572, %2570 ], [ %2577, %2576 ]
  %2583 = phi float [ %2573, %2570 ], [ %2578, %2576 ]
  %2584 = phi float [ %2574, %2570 ], [ %2579, %2576 ]
  %2585 = phi float [ %2575, %2570 ], [ %2580, %2576 ]
  %2586 = call float @dx.op.binary.f32(i32 35, float %2582, float -1.000000e+00)  ; FMax(a,b)
  %2587 = call float @dx.op.binary.f32(i32 35, float %2583, float -1.000000e+00)  ; FMax(a,b)
  %2588 = call float @dx.op.binary.f32(i32 35, float %2584, float -1.000000e+00)  ; FMax(a,b)
  %2589 = call float @dx.op.binary.f32(i32 35, float %2585, float -1.000000e+00)  ; FMax(a,b)
  %2590 = call float @dx.op.binary.f32(i32 36, float %2586, float 1.000000e+00)  ; FMin(a,b)
  %2591 = call float @dx.op.binary.f32(i32 36, float %2587, float 1.000000e+00)  ; FMin(a,b)
  %2592 = call float @dx.op.binary.f32(i32 36, float %2588, float 1.000000e+00)  ; FMin(a,b)
  %2593 = call float @dx.op.binary.f32(i32 36, float %2589, float 1.000000e+00)  ; FMin(a,b)
  %2594 = fmul fast float %2590, 1.500000e+00
  %2595 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2592, float %2594)  ; FMad(a,b,c)
  %2596 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2591, float 0.000000e+00)  ; FMad(a,b,c)
  %2597 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2593, float %2596)  ; FMad(a,b,c)
  %2598 = fmul fast float %2590, 0x3FEBB67AE0000000
  %2599 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2592, float %2598)  ; FMad(a,b,c)
  %2600 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2591, float 0.000000e+00)  ; FMad(a,b,c)
  %2601 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2593, float %2600)  ; FMad(a,b,c)
  %2602 = fadd fast float %2595, 5.000000e-01
  %2603 = fadd fast float %2599, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %25, i32 %26, i32 0, float %2602, float %2597, float %2603, float %2601, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2605

; <label>:2604                                    ; preds = %2564
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %25, i32 %26, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2605

; <label>:2605                                    ; preds = %2604, %2581, %2549
  %2606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2607 = extractvalue %dx.types.CBufRet.f32 %2606, 2
  %2608 = fsub fast float %2551, %2607
  %2609 = fdiv fast float %2608, %2607
  %2610 = call float @dx.op.unary.f32(i32 7, float %2609)  ; Saturate(value)
  %2611 = fmul fast float %2610, 2.000000e+00
  %2612 = fsub fast float 3.000000e+00, %2611
  %2613 = fmul fast float %2610, %2610
  %2614 = fmul fast float %2613, %2551
  %2615 = fmul fast float %2614, %2612
  %2616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2617 = extractvalue %dx.types.CBufRet.f32 %2616, 0
  %2618 = extractvalue %dx.types.CBufRet.f32 %2616, 1
  %2619 = extractvalue %dx.types.CBufRet.f32 %2616, 2
  %2620 = call float @dx.op.dot3.f32(i32 55, float %286, float %287, float %288, float %2617, float %2618, float %2619)  ; Dot3(ax,ay,az,bx,by,bz)
  %2621 = fmul fast float %2620, %2550
  %2622 = fcmp fast ogt float %2555, 0.000000e+00
  %2623 = fdiv fast float 1.000000e+00, %2555
  %2624 = fmul fast float %2621, %2623
  %2625 = select i1 %2622, float %2624, float %297
  %2626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2627 = extractvalue %dx.types.CBufRet.f32 %2626, 0
  %2628 = extractvalue %dx.types.CBufRet.f32 %2626, 1
  %2629 = extractvalue %dx.types.CBufRet.f32 %2626, 2
  %2630 = fmul fast float %2627, %250
  %2631 = fmul fast float %2628, %250
  %2632 = fmul fast float %2629, %250
  %2633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2634 = extractvalue %dx.types.CBufRet.f32 %2633, 0
  %2635 = extractvalue %dx.types.CBufRet.f32 %2633, 1
  %2636 = extractvalue %dx.types.CBufRet.f32 %2633, 2
  %2637 = fmul fast float %2634, %251
  %2638 = fmul fast float %2635, %251
  %2639 = fmul fast float %2636, %251
  %2640 = fadd fast float %2637, %2630
  %2641 = fadd fast float %2638, %2631
  %2642 = fadd fast float %2639, %2632
  %2643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2644 = extractvalue %dx.types.CBufRet.f32 %2643, 0
  %2645 = extractvalue %dx.types.CBufRet.f32 %2643, 1
  %2646 = extractvalue %dx.types.CBufRet.f32 %2643, 2
  %2647 = fadd fast float %2640, %2644
  %2648 = fadd fast float %2641, %2645
  %2649 = fadd fast float %2642, %2646
  %2650 = fmul fast float %2647, %2625
  %2651 = fmul fast float %2648, %2625
  %2652 = fmul fast float %2649, %2625
  %2653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2654 = extractvalue %dx.types.CBufRet.f32 %2653, 0
  %2655 = extractvalue %dx.types.CBufRet.f32 %2653, 1
  %2656 = extractvalue %dx.types.CBufRet.f32 %2653, 2
  %2657 = extractvalue %dx.types.CBufRet.f32 %2653, 3
  %2658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2659 = extractvalue %dx.types.CBufRet.f32 %2658, 0
  %2660 = extractvalue %dx.types.CBufRet.f32 %2658, 1
  %2661 = extractvalue %dx.types.CBufRet.f32 %2658, 2
  %2662 = extractvalue %dx.types.CBufRet.f32 %2658, 3
  %2663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2664 = extractvalue %dx.types.CBufRet.f32 %2663, 0
  %2665 = extractvalue %dx.types.CBufRet.f32 %2663, 1
  %2666 = extractvalue %dx.types.CBufRet.f32 %2663, 2
  %2667 = extractvalue %dx.types.CBufRet.f32 %2663, 3
  %2668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2669 = extractvalue %dx.types.CBufRet.f32 %2668, 0
  %2670 = extractvalue %dx.types.CBufRet.f32 %2668, 1
  %2671 = extractvalue %dx.types.CBufRet.f32 %2668, 2
  %2672 = extractvalue %dx.types.CBufRet.f32 %2668, 3
  %2673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2674 = extractvalue %dx.types.CBufRet.f32 %2673, 3
  %2675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2676 = extractvalue %dx.types.CBufRet.f32 %2675, 3
  %2677 = extractvalue %dx.types.CBufRet.f32 %2675, 0
  %2678 = extractvalue %dx.types.CBufRet.f32 %2675, 1
  %2679 = extractvalue %dx.types.CBufRet.f32 %2675, 2
  %2680 = fcmp fast olt float %2679, -5.000000e-01
  %2681 = call float @dx.op.dot3.f32(i32 55, float %2650, float %2651, float %2652, float %2650, float %2651, float %2652)  ; Dot3(ax,ay,az,bx,by,bz)
  %2682 = call float @dx.op.unary.f32(i32 25, float %2681)  ; Rsqrt(value)
  %2683 = fmul fast float %2682, %2681
  %2684 = fmul fast float %2682, %2650
  %2685 = fmul fast float %2682, %2651
  %2686 = fmul fast float %2682, %2652
  %2687 = fadd fast float %2683, %2657
  %2688 = call float @dx.op.dot3.f32(i32 55, float %2684, float %2685, float %2686, float %2654, float %2655, float %2656)  ; Dot3(ax,ay,az,bx,by,bz)
  %2689 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2690 = extractvalue %dx.types.CBufRet.i32 %2689, 1
  %2691 = and i32 %2690, 1
  %2692 = icmp ne i32 %2691, 0
  %2693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2694 = extractvalue %dx.types.CBufRet.f32 %2693, 2
  %2695 = fcmp fast ogt float %2694, 0.000000e+00
  %2696 = and i1 %2692, %2695
  br i1 %2696, label %2697, label %3103, !dx.controlflow.hints !88

; <label>:2697                                    ; preds = %2605
  %2698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2699 = extractvalue %dx.types.CBufRet.f32 %2698, 3
  %2700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2701 = extractvalue %dx.types.CBufRet.f32 %2700, 2
  %2702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2703 = extractvalue %dx.types.CBufRet.f32 %2702, 2
  %2704 = fsub fast float %2701, %2703
  %2705 = and i32 %2690, 2
  %2706 = extractvalue %dx.types.CBufRet.i32 %2689, 0
  %2707 = call i32 @dx.op.binary.i32(i32 40, i32 %2706, i32 3)  ; UMin(a,b)
  %2708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2709 = extractvalue %dx.types.CBufRet.f32 %2708, 0
  %2710 = extractvalue %dx.types.CBufRet.f32 %2708, 1
  %2711 = extractvalue %dx.types.CBufRet.f32 %2702, 0
  %2712 = extractvalue %dx.types.CBufRet.f32 %2702, 1
  %2713 = fsub fast float %2709, %2711
  %2714 = fsub fast float %2710, %2712
  %2715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2716 = extractvalue %dx.types.CBufRet.f32 %2715, 0
  %2717 = fcmp fast ogt float %2716, 0.000000e+00
  %2718 = fsub fast float -0.000000e+00, %2713
  %2719 = fsub fast float -0.000000e+00, %2714
  %2720 = call float @dx.op.dot2.f32(i32 54, float %2684, float %2685, float %2684, float %2685)  ; Dot2(ax,ay,bx,by)
  %2721 = call float @dx.op.dot2.f32(i32 54, float %2684, float %2685, float %2718, float %2719)  ; Dot2(ax,ay,bx,by)
  %2722 = fmul fast float %2721, 2.000000e+00
  %2723 = call float @dx.op.dot2.f32(i32 54, float %2718, float %2719, float %2718, float %2719)  ; Dot2(ax,ay,bx,by)
  %2724 = fmul fast float %2716, %2716
  %2725 = fsub fast float %2723, %2724
  %2726 = fmul fast float %2722, %2722
  %2727 = fmul fast float %2720, 4.000000e+00
  %2728 = fmul fast float %2727, %2725
  %2729 = fsub fast float %2726, %2728
  %2730 = fcmp fast ogt float %2729, 0.000000e+00
  br i1 %2730, label %2731, label %2746, !dx.controlflow.hints !89

; <label>:2731                                    ; preds = %2697
  %2732 = fcmp fast ogt float %2722, 0.000000e+00
  %2733 = call float @dx.op.unary.f32(i32 24, float %2729)  ; Sqrt(value)
  %2734 = fsub fast float -0.000000e+00, %2733
  %2735 = select i1 %2732, float %2733, float %2734
  %2736 = fadd fast float %2735, %2722
  %2737 = fmul float %2736, -5.000000e-01
  %2738 = fdiv fast float %2737, %2720
  %2739 = call float @dx.op.binary.f32(i32 35, float %2738, float 0.000000e+00)  ; FMax(a,b)
  %2740 = call float @dx.op.binary.f32(i32 36, float %2683, float %2739)  ; FMin(a,b)
  %2741 = fdiv fast float %2725, %2737
  %2742 = call float @dx.op.binary.f32(i32 35, float %2741, float 0.000000e+00)  ; FMax(a,b)
  %2743 = call float @dx.op.binary.f32(i32 36, float %2683, float %2742)  ; FMin(a,b)
  %2744 = call float @dx.op.binary.f32(i32 36, float %2740, float %2743)  ; FMin(a,b)
  %2745 = call float @dx.op.binary.f32(i32 35, float %2740, float %2743)  ; FMax(a,b)
  br label %2746

; <label>:2746                                    ; preds = %2731, %2697
  %2747 = phi float [ %2745, %2731 ], [ -1.000000e+00, %2697 ]
  %2748 = phi float [ %2744, %2731 ], [ -1.000000e+00, %2697 ]
  %2749 = phi i1 [ true, %2731 ], [ false, %2697 ]
  %2750 = and i1 %2717, %2749
  br i1 %2750, label %2751, label %2753, !dx.controlflow.hints !90

; <label>:2751                                    ; preds = %2746
  %2752 = fcmp fast oeq float %2748, %2747
  br i1 %2752, label %3056, label %2754, !dx.controlflow.hints !91

; <label>:2753                                    ; preds = %2746
  br i1 %2717, label %3056, label %2754, !dx.controlflow.hints !92

; <label>:2754                                    ; preds = %2753, %2751
  %2755 = phi float [ %2683, %2753 ], [ %2747, %2751 ]
  %2756 = phi float [ 0.000000e+00, %2753 ], [ %2748, %2751 ]
  %2757 = icmp ne i32 %2705, 0
  %2758 = fmul fast float %2755, %2686
  %2759 = fadd fast float %2758, %2699
  %2760 = fmul fast float %2759, %2755
  %2761 = select i1 %2757, float 0.000000e+00, float %2760
  %2762 = fcmp fast oeq float %2686, 0.000000e+00
  %2763 = fdiv fast float %2704, %2686
  %2764 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2763)  ; FMax(a,b)
  %2765 = select i1 %2762, float %2755, float %2764
  %2766 = call float @dx.op.binary.f32(i32 36, float %2755, float %2765)  ; FMin(a,b)
  %2767 = fcmp fast ogt float %2686, 0.000000e+00
  %2768 = fcmp fast olt float %2704, 0.000000e+00
  br i1 %2767, label %2769, label %2826, !dx.controlflow.hints !93

; <label>:2769                                    ; preds = %2754
  %2770 = icmp eq i32 %2705, 0
  br i1 %2768, label %2771, label %2815, !dx.controlflow.hints !94

; <label>:2771                                    ; preds = %2769
  %2772 = select i1 %2770, float %2755, float 0.000000e+00
  %2773 = fsub fast float -0.000000e+00, %2772
  %2774 = call float @dx.op.unary.f32(i32 6, float %2773)  ; FAbs(value)
  %2775 = fmul fast float %2772, %2686
  %2776 = fadd fast float %2775, %2699
  %2777 = fmul fast float %2774, %2776
  %2778 = fsub fast float %2761, %2777
  %2779 = fsub fast float %2755, %2774
  %2780 = select i1 %2770, float %2779, float 0.000000e+00
  %2781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2782 = extractvalue %dx.types.CBufRet.f32 %2781, 0
  %2783 = extractvalue %dx.types.CBufRet.f32 %2781, 1
  %2784 = extractvalue %dx.types.CBufRet.f32 %2781, 2
  %2785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2786 = extractvalue %dx.types.CBufRet.f32 %2785, 0
  %2787 = extractvalue %dx.types.CBufRet.f32 %2785, 1
  %2788 = extractvalue %dx.types.CBufRet.f32 %2785, 2
  %2789 = extractvalue %dx.types.CBufRet.f32 %2785, 3
  %2790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2791 = extractvalue %dx.types.CBufRet.f32 %2790, 3
  %2792 = call float @dx.op.binary.f32(i32 36, float %2778, float %2791)  ; FMin(a,b)
  %2793 = fmul fast float %2789, %2780
  %2794 = call float @dx.op.unary.f32(i32 7, float %2793)  ; Saturate(value)
  %2795 = fsub fast float %2786, %2782
  %2796 = fsub fast float %2787, %2783
  %2797 = fsub fast float %2788, %2784
  %2798 = fmul fast float %2794, %2795
  %2799 = fmul fast float %2794, %2796
  %2800 = fmul fast float %2794, %2797
  %2801 = fadd fast float %2798, %2782
  %2802 = fadd fast float %2799, %2783
  %2803 = fadd fast float %2800, %2784
  %2804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2805 = extractvalue %dx.types.CBufRet.f32 %2804, 0
  %2806 = extractvalue %dx.types.CBufRet.f32 %2804, 1
  %2807 = fadd fast float %2806, %2805
  %2808 = call float @dx.op.unary.f32(i32 7, float %2807)  ; Saturate(value)
  %2809 = extractvalue %dx.types.CBufRet.f32 %2804, 2
  %2810 = extractvalue %dx.types.CBufRet.f32 %2804, 3
  %2811 = fadd fast float %2810, %2809
  %2812 = call float @dx.op.unary.f32(i32 7, float %2811)  ; Saturate(value)
  %2813 = fmul fast float %2808, %2792
  %2814 = fmul fast float %2813, %2812
  br label %3056

; <label>:2815                                    ; preds = %2769
  br i1 %2770, label %2816, label %2837, !dx.controlflow.hints !95

; <label>:2816                                    ; preds = %2815
  %2817 = call float @dx.op.binary.f32(i32 36, float %2766, float %2756)  ; FMin(a,b)
  %2818 = fsub fast float %2766, %2817
  %2819 = fsub fast float %2818, %2755
  %2820 = call float @dx.op.unary.f32(i32 6, float %2819)  ; FAbs(value)
  %2821 = fadd fast float %2818, %2755
  %2822 = fmul fast float %2821, %2686
  %2823 = fadd fast float %2822, %2699
  %2824 = fmul fast float %2823, %2820
  %2825 = fsub fast float %2761, %2824
  br label %2837

; <label>:2826                                    ; preds = %2754
  br i1 %2768, label %2827, label %2837, !dx.controlflow.hints !96

; <label>:2827                                    ; preds = %2826
  %2828 = call float @dx.op.binary.f32(i32 35, float %2756, float %2766)  ; FMax(a,b)
  %2829 = icmp eq i32 %2705, 0
  %2830 = select i1 %2829, float %2766, float 0.000000e+00
  %2831 = fsub fast float -0.000000e+00, %2830
  %2832 = call float @dx.op.unary.f32(i32 6, float %2831)  ; FAbs(value)
  %2833 = fmul fast float %2830, %2686
  %2834 = fadd fast float %2833, %2699
  %2835 = fmul fast float %2832, %2834
  %2836 = fsub fast float %2761, %2835
  br label %2837

; <label>:2837                                    ; preds = %2827, %2826, %2816, %2815
  %2838 = phi float [ %2756, %2815 ], [ %2756, %2816 ], [ %2828, %2827 ], [ %2756, %2826 ]
  %2839 = phi float [ 0.000000e+00, %2815 ], [ %2820, %2816 ], [ %2832, %2827 ], [ 0.000000e+00, %2826 ]
  %2840 = phi float [ %2761, %2815 ], [ %2825, %2816 ], [ %2836, %2827 ], [ %2761, %2826 ]
  %2841 = phi float [ %2766, %2815 ], [ %2766, %2816 ], [ %2755, %2827 ], [ %2755, %2826 ]
  %2842 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 0
  store float -1.000000e+00, float* %2842, align 4, !tbaa !97, !noalias !101
  %2843 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 1
  store float -1.000000e+00, float* %2843, align 4, !tbaa !97, !noalias !101
  %2844 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 2
  store float -1.000000e+00, float* %2844, align 4, !tbaa !97, !noalias !101
  %2845 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 0
  store float -1.000000e+00, float* %2845, align 4, !tbaa !97, !noalias !101
  %2846 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 1
  store float -1.000000e+00, float* %2846, align 4, !tbaa !97, !noalias !101
  %2847 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 2
  store float -1.000000e+00, float* %2847, align 4, !tbaa !97, !noalias !101
  %2848 = icmp sgt i32 %2707, 0
  br i1 %2848, label %2849, label %2910

; <label>:2849                                    ; preds = %2837
  br label %2850

; <label>:2850                                    ; preds = %2899, %2849
  %2851 = phi i32 [ %2900, %2899 ], [ 0, %2849 ]
  %2852 = phi i32 [ %2901, %2899 ], [ 0, %2849 ]
  %2853 = add nuw i32 %2852, 171
  %2854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %2853)  ; CBufferLoadLegacy(handle,regIndex)
  %2855 = extractvalue %dx.types.CBufRet.f32 %2854, 0
  %2856 = extractvalue %dx.types.CBufRet.f32 %2854, 1
  %2857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2858 = extractvalue %dx.types.CBufRet.f32 %2857, 0
  %2859 = extractvalue %dx.types.CBufRet.f32 %2857, 1
  %2860 = fsub fast float %2855, %2858
  %2861 = fsub fast float %2856, %2859
  %2862 = extractvalue %dx.types.CBufRet.f32 %2854, 2
  %2863 = fsub fast float -0.000000e+00, %2860
  %2864 = fsub fast float -0.000000e+00, %2861
  %2865 = call float @dx.op.dot2.f32(i32 54, float %2684, float %2685, float %2863, float %2864)  ; Dot2(ax,ay,bx,by)
  %2866 = fmul fast float %2865, 2.000000e+00
  %2867 = call float @dx.op.dot2.f32(i32 54, float %2863, float %2864, float %2863, float %2864)  ; Dot2(ax,ay,bx,by)
  %2868 = fmul fast float %2862, %2862
  %2869 = fsub fast float %2867, %2868
  %2870 = fmul fast float %2866, %2866
  %2871 = fmul fast float %2727, %2869
  %2872 = fsub fast float %2870, %2871
  %2873 = fcmp fast ogt float %2872, 0.000000e+00
  br i1 %2873, label %2874, label %2889, !dx.controlflow.hints !89

; <label>:2874                                    ; preds = %2850
  %2875 = fcmp fast ogt float %2866, 0.000000e+00
  %2876 = call float @dx.op.unary.f32(i32 24, float %2872)  ; Sqrt(value)
  %2877 = fsub fast float -0.000000e+00, %2876
  %2878 = select i1 %2875, float %2876, float %2877
  %2879 = fadd fast float %2878, %2866
  %2880 = fmul float %2879, -5.000000e-01
  %2881 = fdiv fast float %2880, %2720
  %2882 = call float @dx.op.binary.f32(i32 35, float %2881, float 0.000000e+00)  ; FMax(a,b)
  %2883 = call float @dx.op.binary.f32(i32 36, float %2755, float %2882)  ; FMin(a,b)
  %2884 = fdiv fast float %2869, %2880
  %2885 = call float @dx.op.binary.f32(i32 35, float %2884, float 0.000000e+00)  ; FMax(a,b)
  %2886 = call float @dx.op.binary.f32(i32 36, float %2755, float %2885)  ; FMin(a,b)
  %2887 = call float @dx.op.binary.f32(i32 36, float %2883, float %2886)  ; FMin(a,b)
  %2888 = call float @dx.op.binary.f32(i32 35, float %2883, float %2886)  ; FMax(a,b)
  br label %2889

; <label>:2889                                    ; preds = %2874, %2850
  %2890 = phi float [ %2888, %2874 ], [ -1.000000e+00, %2850 ]
  %2891 = phi float [ %2887, %2874 ], [ -1.000000e+00, %2850 ]
  %2892 = phi i1 [ true, %2874 ], [ false, %2850 ]
  br i1 %2892, label %2893, label %2899, !dx.controlflow.hints !112

; <label>:2893                                    ; preds = %2889
  %2894 = call float @dx.op.binary.f32(i32 35, float %2838, float %2891)  ; FMax(a,b)
  %2895 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %2852
  store float %2894, float* %2895, align 4, !tbaa !97, !noalias !101
  %2896 = call float @dx.op.binary.f32(i32 35, float %2838, float %2890)  ; FMax(a,b)
  %2897 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %2852
  store float %2896, float* %2897, align 4, !tbaa !97, !noalias !101
  %2898 = add nsw i32 %2851, 1
  br label %2899

; <label>:2899                                    ; preds = %2893, %2889
  %2900 = phi i32 [ %2898, %2893 ], [ %2851, %2889 ]
  %2901 = add nuw nsw i32 %2852, 1
  %2902 = icmp eq i32 %2901, %2707
  br i1 %2902, label %2903, label %2850

; <label>:2903                                    ; preds = %2899
  %2904 = load float, float* %2844, align 4, !tbaa !97, !alias.scope !113, !noalias !116
  %2905 = load float, float* %2843, align 4, !tbaa !97, !alias.scope !119, !noalias !120
  %2906 = load float, float* %2842, align 4, !tbaa !97, !alias.scope !121, !noalias !122
  %2907 = load float, float* %2847, align 4, !tbaa !97, !alias.scope !123, !noalias !126
  %2908 = load float, float* %2846, align 4, !tbaa !97, !alias.scope !129, !noalias !130
  %2909 = load float, float* %2845, align 4, !tbaa !97, !alias.scope !131, !noalias !132
  br label %2910

; <label>:2910                                    ; preds = %2903, %2837
  %2911 = phi float [ -1.000000e+00, %2837 ], [ %2909, %2903 ]
  %2912 = phi float [ -1.000000e+00, %2837 ], [ %2908, %2903 ]
  %2913 = phi float [ -1.000000e+00, %2837 ], [ %2907, %2903 ]
  %2914 = phi float [ -1.000000e+00, %2837 ], [ %2906, %2903 ]
  %2915 = phi float [ -1.000000e+00, %2837 ], [ %2905, %2903 ]
  %2916 = phi float [ -1.000000e+00, %2837 ], [ %2904, %2903 ]
  %2917 = phi i32 [ 0, %2837 ], [ %2900, %2903 ]
  %2918 = call float @dx.op.binary.f32(i32 36, float %2915, float %2916)  ; FMin(a,b)
  %2919 = call float @dx.op.binary.f32(i32 36, float %2914, float %2918)  ; FMin(a,b)
  %2920 = call float @dx.op.binary.f32(i32 35, float %2914, float %2915)  ; FMax(a,b)
  %2921 = call float @dx.op.binary.f32(i32 36, float %2920, float %2916)  ; FMin(a,b)
  %2922 = call float @dx.op.binary.f32(i32 36, float %2914, float %2915)  ; FMin(a,b)
  %2923 = call float @dx.op.binary.f32(i32 35, float %2922, float %2921)  ; FMax(a,b)
  %2924 = call float @dx.op.binary.f32(i32 35, float %2915, float %2916)  ; FMax(a,b)
  %2925 = call float @dx.op.binary.f32(i32 35, float %2914, float %2924)  ; FMax(a,b)
  store float %2919, float* %2842, align 4, !tbaa !97, !alias.scope !121, !noalias !122
  store float %2923, float* %2843, align 4, !tbaa !97, !alias.scope !119, !noalias !120
  store float %2925, float* %2844, align 4, !tbaa !97, !alias.scope !113, !noalias !116
  %2926 = call float @dx.op.binary.f32(i32 36, float %2912, float %2913)  ; FMin(a,b)
  %2927 = call float @dx.op.binary.f32(i32 36, float %2911, float %2926)  ; FMin(a,b)
  %2928 = call float @dx.op.binary.f32(i32 35, float %2911, float %2912)  ; FMax(a,b)
  %2929 = call float @dx.op.binary.f32(i32 36, float %2928, float %2913)  ; FMin(a,b)
  %2930 = call float @dx.op.binary.f32(i32 36, float %2911, float %2912)  ; FMin(a,b)
  %2931 = call float @dx.op.binary.f32(i32 35, float %2930, float %2929)  ; FMax(a,b)
  %2932 = call float @dx.op.binary.f32(i32 35, float %2912, float %2913)  ; FMax(a,b)
  %2933 = call float @dx.op.binary.f32(i32 35, float %2911, float %2932)  ; FMax(a,b)
  store float %2927, float* %2845, align 4, !tbaa !97, !alias.scope !131, !noalias !132
  store float %2931, float* %2846, align 4, !tbaa !97, !alias.scope !129, !noalias !130
  store float %2933, float* %2847, align 4, !tbaa !97, !alias.scope !123, !noalias !126
  %2934 = sub nsw i32 3, %2917
  %2935 = icmp sgt i32 %2934, 2
  br i1 %2935, label %2936, label %2974, !dx.controlflow.hints !133

; <label>:2936                                    ; preds = %2910
  %2937 = icmp eq i32 %2705, 0
  %2938 = fsub fast float %2755, %2839
  %2939 = select i1 %2937, float %2938, float %2839
  %2940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2941 = extractvalue %dx.types.CBufRet.f32 %2940, 0
  %2942 = extractvalue %dx.types.CBufRet.f32 %2940, 1
  %2943 = extractvalue %dx.types.CBufRet.f32 %2940, 2
  %2944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2945 = extractvalue %dx.types.CBufRet.f32 %2944, 0
  %2946 = extractvalue %dx.types.CBufRet.f32 %2944, 1
  %2947 = extractvalue %dx.types.CBufRet.f32 %2944, 2
  %2948 = extractvalue %dx.types.CBufRet.f32 %2944, 3
  %2949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2950 = extractvalue %dx.types.CBufRet.f32 %2949, 3
  %2951 = call float @dx.op.binary.f32(i32 36, float %2840, float %2950)  ; FMin(a,b)
  %2952 = fmul fast float %2948, %2939
  %2953 = call float @dx.op.unary.f32(i32 7, float %2952)  ; Saturate(value)
  %2954 = fsub fast float %2945, %2941
  %2955 = fsub fast float %2946, %2942
  %2956 = fsub fast float %2947, %2943
  %2957 = fmul fast float %2953, %2954
  %2958 = fmul fast float %2953, %2955
  %2959 = fmul fast float %2953, %2956
  %2960 = fadd fast float %2957, %2941
  %2961 = fadd fast float %2958, %2942
  %2962 = fadd fast float %2959, %2943
  %2963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2964 = extractvalue %dx.types.CBufRet.f32 %2963, 0
  %2965 = extractvalue %dx.types.CBufRet.f32 %2963, 1
  %2966 = fadd fast float %2965, %2964
  %2967 = call float @dx.op.unary.f32(i32 7, float %2966)  ; Saturate(value)
  %2968 = extractvalue %dx.types.CBufRet.f32 %2963, 2
  %2969 = extractvalue %dx.types.CBufRet.f32 %2963, 3
  %2970 = fadd fast float %2969, %2968
  %2971 = call float @dx.op.unary.f32(i32 7, float %2970)  ; Saturate(value)
  %2972 = fmul fast float %2967, %2951
  %2973 = fmul fast float %2972, %2971
  br label %3056

; <label>:2974                                    ; preds = %2910
  %2975 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %2934
  %2976 = load float, float* %2975, align 4, !tbaa !97, !noalias !101
  %2977 = fcmp fast olt float %2976, %2841
  %2978 = icmp sgt i32 %2917, 0
  %2979 = and i1 %2978, %2977
  br i1 %2979, label %2980, label %3017

; <label>:2980                                    ; preds = %2974
  br label %2981

; <label>:2981                                    ; preds = %3010, %2980
  %2982 = phi float [ %3011, %3010 ], [ %2839, %2980 ]
  %2983 = phi float [ %3012, %3010 ], [ %2840, %2980 ]
  %2984 = phi float [ %2992, %3010 ], [ %2976, %2980 ]
  %2985 = phi i32 [ %2989, %3010 ], [ %2934, %2980 ]
  %2986 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %2985
  %2987 = load float, float* %2986, align 4, !tbaa !97, !noalias !101
  %2988 = icmp slt i32 %2985, 2
  %2989 = add nsw i32 %2985, 1
  %2990 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %2989
  %2991 = load float, float* %2990, align 4, !tbaa !97, !noalias !101
  %2992 = select i1 %2988, float %2991, float %2755
  %2993 = call float @dx.op.binary.f32(i32 36, float %2992, float %2987)  ; FMin(a,b)
  %2994 = call float @dx.op.binary.f32(i32 36, float %2841, float %2993)  ; FMin(a,b)
  %2995 = icmp eq i32 %2705, 0
  %2996 = fadd fast float %2994, %2984
  %2997 = fmul fast float %2996, %2686
  %2998 = fadd fast float %2997, %2699
  br i1 %2995, label %3004, label %2999, !dx.controlflow.hints !134

; <label>:2999                                    ; preds = %2981
  %3000 = fsub fast float %2994, %2984
  %3001 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3000)  ; FMax(a,b)
  %3002 = fmul fast float %3001, %2998
  %3003 = fadd fast float %3002, %2983
  br label %3010

; <label>:3004                                    ; preds = %2981
  %3005 = fsub fast float %2984, %2994
  %3006 = call float @dx.op.unary.f32(i32 6, float %3005)  ; FAbs(value)
  %3007 = fadd fast float %3006, %2982
  %3008 = fmul fast float %3006, %2998
  %3009 = fsub fast float %2983, %3008
  br label %3010

; <label>:3010                                    ; preds = %3004, %2999
  %3011 = phi float [ %3001, %2999 ], [ %3007, %3004 ]
  %3012 = phi float [ %3003, %2999 ], [ %3009, %3004 ]
  %3013 = fcmp fast olt float %2992, %2841
  %3014 = icmp slt i32 %2989, 3
  %3015 = and i1 %3014, %3013
  br i1 %3015, label %2981, label %3016

; <label>:3016                                    ; preds = %3010
  br label %3017

; <label>:3017                                    ; preds = %3016, %2974
  %3018 = phi float [ %2839, %2974 ], [ %3011, %3016 ]
  %3019 = phi float [ %2840, %2974 ], [ %3012, %3016 ]
  %3020 = fsub fast float %2755, %3018
  %3021 = select i1 %2757, float %3018, float %3020
  %3022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3023 = extractvalue %dx.types.CBufRet.f32 %3022, 0
  %3024 = extractvalue %dx.types.CBufRet.f32 %3022, 1
  %3025 = extractvalue %dx.types.CBufRet.f32 %3022, 2
  %3026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3027 = extractvalue %dx.types.CBufRet.f32 %3026, 0
  %3028 = extractvalue %dx.types.CBufRet.f32 %3026, 1
  %3029 = extractvalue %dx.types.CBufRet.f32 %3026, 2
  %3030 = extractvalue %dx.types.CBufRet.f32 %3026, 3
  %3031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3032 = extractvalue %dx.types.CBufRet.f32 %3031, 3
  %3033 = call float @dx.op.binary.f32(i32 36, float %3019, float %3032)  ; FMin(a,b)
  %3034 = fmul fast float %3030, %3021
  %3035 = call float @dx.op.unary.f32(i32 7, float %3034)  ; Saturate(value)
  %3036 = fsub fast float %3027, %3023
  %3037 = fsub fast float %3028, %3024
  %3038 = fsub fast float %3029, %3025
  %3039 = fmul fast float %3035, %3036
  %3040 = fmul fast float %3035, %3037
  %3041 = fmul fast float %3035, %3038
  %3042 = fadd fast float %3039, %3023
  %3043 = fadd fast float %3040, %3024
  %3044 = fadd fast float %3041, %3025
  %3045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3046 = extractvalue %dx.types.CBufRet.f32 %3045, 0
  %3047 = extractvalue %dx.types.CBufRet.f32 %3045, 1
  %3048 = fadd fast float %3047, %3046
  %3049 = call float @dx.op.unary.f32(i32 7, float %3048)  ; Saturate(value)
  %3050 = extractvalue %dx.types.CBufRet.f32 %3045, 2
  %3051 = extractvalue %dx.types.CBufRet.f32 %3045, 3
  %3052 = fadd fast float %3051, %3050
  %3053 = call float @dx.op.unary.f32(i32 7, float %3052)  ; Saturate(value)
  %3054 = fmul fast float %3049, %3033
  %3055 = fmul fast float %3054, %3053
  br label %3056

; <label>:3056                                    ; preds = %3017, %2936, %2771, %2753, %2751
  %3057 = phi float [ %2780, %2771 ], [ %2939, %2936 ], [ %3021, %3017 ], [ 0.000000e+00, %2751 ], [ 0.000000e+00, %2753 ]
  %3058 = phi float [ %2814, %2771 ], [ %2973, %2936 ], [ %3055, %3017 ], [ 0.000000e+00, %2751 ], [ 0.000000e+00, %2753 ]
  %3059 = phi float [ %2801, %2771 ], [ %2960, %2936 ], [ %3042, %3017 ], [ 0.000000e+00, %2751 ], [ 0.000000e+00, %2753 ]
  %3060 = phi float [ %2802, %2771 ], [ %2961, %2936 ], [ %3043, %3017 ], [ 0.000000e+00, %2751 ], [ 0.000000e+00, %2753 ]
  %3061 = phi float [ %2803, %2771 ], [ %2962, %2936 ], [ %3044, %3017 ], [ 0.000000e+00, %2751 ], [ 0.000000e+00, %2753 ]
  %3062 = fmul fast float %2694, %3058
  %3063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3064 = extractvalue %dx.types.CBufRet.f32 %3063, 2
  %3065 = fsub fast float %2701, %3064
  %3066 = fcmp fast olt float %3062, -2.000000e+01
  %3067 = call float @dx.op.unary.f32(i32 21, float %3062)  ; Exp(value)
  %3068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3069 = extractvalue %dx.types.CBufRet.f32 %3068, 2
  %3070 = extractvalue %dx.types.CBufRet.f32 %3068, 3
  %3071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3072 = extractvalue %dx.types.CBufRet.f32 %3071, 2
  %3073 = fmul fast float %3070, %3065
  %3074 = call float @dx.op.unary.f32(i32 7, float %3073)  ; Saturate(value)
  %3075 = fsub fast float 1.000000e+00, %3074
  %3076 = fmul fast float %2686, 5.000000e-01
  %3077 = fadd fast float %3076, 5.000000e-01
  %3078 = call float @dx.op.unary.f32(i32 7, float %3077)  ; Saturate(value)
  %3079 = fsub fast float 1.000000e+00, %3078
  %3080 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3075)  ; FMax(a,b)
  %3081 = fdiv fast float %3079, %3080
  %3082 = fsub fast float %3065, %2652
  %3083 = call float @dx.op.unary.f32(i32 6, float %3082)  ; FAbs(value)
  %3084 = fmul fast float %3083, %3069
  %3085 = call float @dx.op.unary.f32(i32 7, float %3081)  ; Saturate(value)
  %3086 = fsub fast float 1.000000e+00, %3084
  %3087 = fmul fast float %3086, %3085
  %3088 = fadd fast float %3087, %3084
  %3089 = fmul fast float %3072, %3065
  %3090 = call float @dx.op.unary.f32(i32 7, float %3089)  ; Saturate(value)
  %3091 = fsub fast float 1.000000e+00, %3088
  %3092 = fmul fast float %3091, %3090
  %3093 = fadd fast float %3092, %3088
  %3094 = call float @dx.op.unary.f32(i32 7, float %3093)  ; Saturate(value)
  %3095 = fadd fast float %3067, -1.000000e+00
  %3096 = select i1 %3066, float -1.000000e+00, float %3095
  %3097 = fmul fast float %3094, %3096
  %3098 = fadd fast float %3097, 1.000000e+00
  %3099 = fsub fast float -0.000000e+00, %3097
  %3100 = fmul fast float %3059, %3099
  %3101 = fmul fast float %3060, %3099
  %3102 = fmul fast float %3061, %3099
  br label %3103

; <label>:3103                                    ; preds = %3056, %2605
  %3104 = phi float [ %3057, %3056 ], [ 0.000000e+00, %2605 ]
  %3105 = phi float [ %3098, %3056 ], [ 1.000000e+00, %2605 ]
  %3106 = phi float [ %3100, %3056 ], [ 0.000000e+00, %2605 ]
  %3107 = phi float [ %3101, %3056 ], [ 0.000000e+00, %2605 ]
  %3108 = phi float [ %3102, %3056 ], [ 0.000000e+00, %2605 ]
  %3109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3110 = extractvalue %dx.types.CBufRet.f32 %3109, 1
  %3111 = fsub fast float 1.000000e+00, %3105
  %3112 = fmul fast float %3111, %2687
  %3113 = fmul fast float %3112, %3110
  %3114 = fsub fast float %2687, %3113
  br i1 %2680, label %3115, label %3144, !dx.controlflow.hints !135

; <label>:3115                                    ; preds = %3103
  %3116 = fmul fast float %2688, %2677
  %3117 = fadd fast float %3116, %2678
  %3118 = call float @dx.op.unary.f32(i32 7, float %3117)  ; Saturate(value)
  %3119 = fmul fast float %2659, %3114
  %3120 = fsub fast float -0.000000e+00, %3119
  %3121 = fmul fast float %2660, %3114
  %3122 = fsub fast float -0.000000e+00, %3121
  %3123 = call float @dx.op.unary.f32(i32 21, float %3120)  ; Exp(value)
  %3124 = call float @dx.op.unary.f32(i32 21, float %3122)  ; Exp(value)
  %3125 = call float @dx.op.binary.f32(i32 35, float %2667, float %3123)  ; FMax(a,b)
  %3126 = call float @dx.op.binary.f32(i32 35, float %2667, float %3124)  ; FMax(a,b)
  %3127 = fsub fast float %3126, %3125
  %3128 = fmul fast float %3127, %3118
  %3129 = fadd fast float %3128, %3125
  %3130 = call float @dx.op.unary.f32(i32 7, float %3129)  ; Saturate(value)
  %3131 = fsub fast float %2664, %2669
  %3132 = fsub fast float %2665, %2670
  %3133 = fsub fast float %2666, %2671
  %3134 = fmul fast float %3118, %3131
  %3135 = fmul fast float %3118, %3132
  %3136 = fmul fast float %3118, %3133
  %3137 = fadd fast float %3134, %2669
  %3138 = fadd fast float %3135, %2670
  %3139 = fadd fast float %3136, %2671
  %3140 = fsub fast float 1.000000e+00, %3130
  %3141 = fmul fast float %3140, %3137
  %3142 = fmul fast float %3140, %3138
  %3143 = fmul fast float %3140, %3139
  br label %3203

; <label>:3144                                    ; preds = %3103
  %3145 = fmul fast float %3114, %2676
  %3146 = call float @dx.op.unary.f32(i32 7, float %3145)  ; Saturate(value)
  %3147 = fsub fast float 2.000000e+00, %3146
  %3148 = fmul fast float %3146, 9.921875e-01
  %3149 = fmul fast float %3148, %3147
  %3150 = fadd fast float %3149, 3.906250e-03
  %3151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %21, float %3150, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3152 = extractvalue %dx.types.ResRet.f32 %3151, 0
  %3153 = fsub fast float %3146, %3152
  %3154 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3153)  ; FMax(a,b)
  %3155 = fmul fast float %2662, %2652
  %3156 = call float @dx.op.unary.f32(i32 6, float %3155)  ; FAbs(value)
  %3157 = fcmp fast ogt float %3156, 0x3EB0C6F7A0000000
  br i1 %3157, label %3158, label %3164, !dx.controlflow.hints !136

; <label>:3158                                    ; preds = %3144
  %3159 = fmul fast float %3155, 0xBFF7154760000000
  %3160 = call float @dx.op.unary.f32(i32 21, float %3159)  ; Exp(value)
  %3161 = fsub fast float 1.000000e+00, %3160
  %3162 = fdiv fast float %3161, %3155
  %3163 = fmul fast float %3162, %2672
  br label %3164

; <label>:3164                                    ; preds = %3158, %3144
  %3165 = phi float [ %3163, %3158 ], [ %2672, %3144 ]
  %3166 = fadd fast float %3165, %2674
  %3167 = fmul fast float %3166, %3154
  %3168 = fmul fast float %2659, %3167
  %3169 = fsub fast float -0.000000e+00, %3168
  %3170 = fmul fast float %2660, %3167
  %3171 = fsub fast float -0.000000e+00, %3170
  %3172 = fmul fast float %2661, %3167
  %3173 = fsub fast float -0.000000e+00, %3172
  %3174 = call float @dx.op.unary.f32(i32 21, float %3169)  ; Exp(value)
  %3175 = call float @dx.op.unary.f32(i32 21, float %3171)  ; Exp(value)
  %3176 = call float @dx.op.unary.f32(i32 21, float %3173)  ; Exp(value)
  %3177 = fmul fast float %2688, %2688
  %3178 = fadd fast float %3177, 1.000000e+00
  %3179 = fmul fast float %3178, 0x3FAE8EC8A0000000
  %3180 = fmul fast float %3179, %2669
  %3181 = fmul fast float %3179, %2670
  %3182 = fmul fast float %3179, %2671
  %3183 = fmul fast float %2688, %2667
  %3184 = fsub fast float 1.000000e+00, %3183
  %3185 = fmul fast float %2667, %2667
  %3186 = fsub fast float 1.000000e+00, %3185
  %3187 = fmul fast float %3186, 0x3FB45F3060000000
  %3188 = fmul fast float %3184, %3184
  %3189 = fdiv fast float 1.000000e+00, %3188
  %3190 = fmul fast float %3187, %3189
  %3191 = fmul fast float %3190, %2664
  %3192 = fmul fast float %3190, %2665
  %3193 = fmul fast float %3190, %2666
  %3194 = fadd fast float %3191, %3180
  %3195 = fadd fast float %3192, %3181
  %3196 = fadd fast float %3193, %3182
  %3197 = fsub fast float 1.000000e+00, %3174
  %3198 = fsub fast float 1.000000e+00, %3175
  %3199 = fsub fast float 1.000000e+00, %3176
  %3200 = fmul fast float %3194, %3197
  %3201 = fmul fast float %3195, %3198
  %3202 = fmul fast float %3196, %3199
  br label %3203

; <label>:3203                                    ; preds = %3164, %3115
  %3204 = phi float [ %3141, %3115 ], [ %3200, %3164 ]
  %3205 = phi float [ %3142, %3115 ], [ %3201, %3164 ]
  %3206 = phi float [ %3143, %3115 ], [ %3202, %3164 ]
  %3207 = phi float [ %3130, %3115 ], [ %3174, %3164 ]
  %3208 = phi float [ %3130, %3115 ], [ %3175, %3164 ]
  %3209 = phi float [ %3130, %3115 ], [ %3176, %3164 ]
  br i1 %2696, label %3210, label %3408, !dx.controlflow.hints !137

; <label>:3210                                    ; preds = %3203
  %3211 = extractvalue %dx.types.CBufRet.f32 %3109, 0
  %3212 = fmul fast float %3211, %3111
  %3213 = fsub fast float %3106, %3204
  %3214 = fsub fast float %3107, %3205
  %3215 = fsub fast float %3108, %3206
  %3216 = fmul fast float %3212, %3213
  %3217 = fmul fast float %3212, %3214
  %3218 = fmul fast float %3212, %3215
  %3219 = fadd fast float %3216, %3204
  %3220 = fadd fast float %3217, %3205
  %3221 = fadd fast float %3218, %3206
  %3222 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3207)  ; FMax(a,b)
  %3223 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3208)  ; FMax(a,b)
  %3224 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3209)  ; FMax(a,b)
  %3225 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3105)  ; FMax(a,b)
  %3226 = call float @dx.op.binary.f32(i32 35, float %3104, float %3114)  ; FMax(a,b)
  %3227 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3226)  ; FMax(a,b)
  %3228 = fdiv fast float %3104, %3227
  %3229 = call float @dx.op.unary.f32(i32 7, float %3228)  ; Saturate(value)
  %3230 = fdiv fast float %3114, %3227
  %3231 = call float @dx.op.unary.f32(i32 7, float %3230)  ; Saturate(value)
  %3232 = fcmp fast une float %3225, 1.000000e+00
  br i1 %3232, label %3233, label %3246, !dx.controlflow.hints !138

; <label>:3233                                    ; preds = %3210
  %3234 = call float @dx.op.unary.f32(i32 23, float %3225)  ; Log(value)
  %3235 = fmul fast float %3234, 0x3FE62E4300000000
  %3236 = fmul fast float %3106, %3235
  %3237 = fsub fast float -0.000000e+00, %3236
  %3238 = fmul fast float %3107, %3235
  %3239 = fsub fast float -0.000000e+00, %3238
  %3240 = fmul fast float %3108, %3235
  %3241 = fsub fast float -0.000000e+00, %3240
  %3242 = fsub fast float 1.000000e+00, %3225
  %3243 = fdiv fast float %3237, %3242
  %3244 = fdiv fast float %3239, %3242
  %3245 = fdiv fast float %3241, %3242
  br label %3246

; <label>:3246                                    ; preds = %3233, %3210
  %3247 = phi float [ %3243, %3233 ], [ %3106, %3210 ]
  %3248 = phi float [ %3244, %3233 ], [ %3107, %3210 ]
  %3249 = phi float [ %3245, %3233 ], [ %3108, %3210 ]
  %3250 = phi float [ %3235, %3233 ], [ 0.000000e+00, %3210 ]
  %3251 = fcmp fast une float %3222, 1.000000e+00
  br i1 %3251, label %3252, label %3259, !dx.controlflow.hints !139

; <label>:3252                                    ; preds = %3246
  %3253 = call float @dx.op.unary.f32(i32 23, float %3222)  ; Log(value)
  %3254 = fmul fast float %3253, 0x3FE62E4300000000
  %3255 = fmul fast float %3219, %3254
  %3256 = fsub fast float -0.000000e+00, %3255
  %3257 = fsub fast float 1.000000e+00, %3222
  %3258 = fdiv fast float %3256, %3257
  br label %3259

; <label>:3259                                    ; preds = %3252, %3246
  %3260 = phi float [ %3258, %3252 ], [ %3219, %3246 ]
  %3261 = phi float [ %3254, %3252 ], [ 0.000000e+00, %3246 ]
  %3262 = fcmp fast une float %3223, 1.000000e+00
  br i1 %3262, label %3263, label %3270, !dx.controlflow.hints !139

; <label>:3263                                    ; preds = %3259
  %3264 = call float @dx.op.unary.f32(i32 23, float %3223)  ; Log(value)
  %3265 = fmul fast float %3264, 0x3FE62E4300000000
  %3266 = fmul fast float %3220, %3265
  %3267 = fsub fast float -0.000000e+00, %3266
  %3268 = fsub fast float 1.000000e+00, %3223
  %3269 = fdiv fast float %3267, %3268
  br label %3270

; <label>:3270                                    ; preds = %3263, %3259
  %3271 = phi float [ %3269, %3263 ], [ %3220, %3259 ]
  %3272 = phi float [ %3265, %3263 ], [ 0.000000e+00, %3259 ]
  %3273 = fcmp fast une float %3224, 1.000000e+00
  br i1 %3273, label %3274, label %3281, !dx.controlflow.hints !139

; <label>:3274                                    ; preds = %3270
  %3275 = call float @dx.op.unary.f32(i32 23, float %3224)  ; Log(value)
  %3276 = fmul fast float %3275, 0x3FE62E4300000000
  %3277 = fmul fast float %3221, %3276
  %3278 = fsub fast float -0.000000e+00, %3277
  %3279 = fsub fast float 1.000000e+00, %3224
  %3280 = fdiv fast float %3278, %3279
  br label %3281

; <label>:3281                                    ; preds = %3274, %3270
  %3282 = phi float [ %3280, %3274 ], [ %3221, %3270 ]
  %3283 = phi float [ %3276, %3274 ], [ 0.000000e+00, %3270 ]
  %3284 = fmul fast float %3247, %3231
  %3285 = fmul fast float %3248, %3231
  %3286 = fmul fast float %3249, %3231
  %3287 = fmul fast float %3250, %3231
  %3288 = fmul fast float %3260, %3229
  %3289 = fmul fast float %3271, %3229
  %3290 = fmul fast float %3282, %3229
  %3291 = fmul fast float %3261, %3229
  %3292 = fmul fast float %3272, %3229
  %3293 = fmul fast float %3283, %3229
  %3294 = fadd fast float %3288, %3284
  %3295 = fadd fast float %3289, %3285
  %3296 = fadd fast float %3290, %3286
  %3297 = fadd fast float %3291, %3287
  %3298 = fadd fast float %3292, %3287
  %3299 = fadd fast float %3293, %3287
  %3300 = fcmp fast une float %3297, 0.000000e+00
  br i1 %3300, label %3301, label %3308, !dx.controlflow.hints !140

; <label>:3301                                    ; preds = %3281
  %3302 = fmul fast float %3297, 0x3FF7154760000000
  %3303 = call float @dx.op.unary.f32(i32 21, float %3302)  ; Exp(value)
  %3304 = fsub fast float 1.000000e+00, %3303
  %3305 = fmul fast float %3294, %3304
  %3306 = fsub fast float -0.000000e+00, %3305
  %3307 = fdiv fast float %3306, %3297
  br label %3308

; <label>:3308                                    ; preds = %3301, %3281
  %3309 = phi float [ %3303, %3301 ], [ 1.000000e+00, %3281 ]
  %3310 = phi float [ %3307, %3301 ], [ %3294, %3281 ]
  %3311 = fcmp fast une float %3298, 0.000000e+00
  br i1 %3311, label %3312, label %3319, !dx.controlflow.hints !140

; <label>:3312                                    ; preds = %3308
  %3313 = fmul fast float %3298, 0x3FF7154760000000
  %3314 = call float @dx.op.unary.f32(i32 21, float %3313)  ; Exp(value)
  %3315 = fsub fast float 1.000000e+00, %3314
  %3316 = fmul fast float %3295, %3315
  %3317 = fsub fast float -0.000000e+00, %3316
  %3318 = fdiv fast float %3317, %3298
  br label %3319

; <label>:3319                                    ; preds = %3312, %3308
  %3320 = phi float [ %3314, %3312 ], [ 1.000000e+00, %3308 ]
  %3321 = phi float [ %3318, %3312 ], [ %3295, %3308 ]
  %3322 = fcmp fast une float %3299, 0.000000e+00
  br i1 %3322, label %3323, label %3330, !dx.controlflow.hints !140

; <label>:3323                                    ; preds = %3319
  %3324 = fmul fast float %3299, 0x3FF7154760000000
  %3325 = call float @dx.op.unary.f32(i32 21, float %3324)  ; Exp(value)
  %3326 = fsub fast float 1.000000e+00, %3325
  %3327 = fmul fast float %3296, %3326
  %3328 = fsub fast float -0.000000e+00, %3327
  %3329 = fdiv fast float %3328, %3299
  br label %3330

; <label>:3330                                    ; preds = %3323, %3319
  %3331 = phi float [ %3325, %3323 ], [ 1.000000e+00, %3319 ]
  %3332 = phi float [ %3329, %3323 ], [ %3296, %3319 ]
  %3333 = fcmp fast ogt float %3229, %3231
  br i1 %3333, label %3334, label %3354, !dx.controlflow.hints !141

; <label>:3334                                    ; preds = %3330
  %3335 = fsub fast float 1.000000e+00, %3231
  %3336 = fmul fast float %3247, %3335
  %3337 = fmul fast float %3248, %3335
  %3338 = fmul fast float %3249, %3335
  %3339 = fmul fast float %3250, %3335
  %3340 = fcmp fast une float %3339, 0.000000e+00
  br i1 %3340, label %3341, label %3392, !dx.controlflow.hints !142

; <label>:3341                                    ; preds = %3334
  %3342 = fmul fast float %3339, 0x3FF7154760000000
  %3343 = call float @dx.op.unary.f32(i32 21, float %3342)  ; Exp(value)
  %3344 = fsub fast float 1.000000e+00, %3343
  %3345 = fmul fast float %3336, %3344
  %3346 = fsub fast float -0.000000e+00, %3345
  %3347 = fmul fast float %3337, %3344
  %3348 = fsub fast float -0.000000e+00, %3347
  %3349 = fmul fast float %3338, %3344
  %3350 = fsub fast float -0.000000e+00, %3349
  %3351 = fdiv fast float %3346, %3339
  %3352 = fdiv fast float %3348, %3339
  %3353 = fdiv fast float %3350, %3339
  br label %3392

; <label>:3354                                    ; preds = %3330
  %3355 = fsub fast float 1.000000e+00, %3229
  %3356 = fmul fast float %3260, %3355
  %3357 = fmul fast float %3271, %3355
  %3358 = fmul fast float %3282, %3355
  %3359 = fmul fast float %3261, %3355
  %3360 = fmul fast float %3272, %3355
  %3361 = fmul fast float %3283, %3355
  %3362 = fcmp fast une float %3359, 0.000000e+00
  br i1 %3362, label %3363, label %3370, !dx.controlflow.hints !140

; <label>:3363                                    ; preds = %3354
  %3364 = fmul fast float %3359, 0x3FF7154760000000
  %3365 = call float @dx.op.unary.f32(i32 21, float %3364)  ; Exp(value)
  %3366 = fsub fast float 1.000000e+00, %3365
  %3367 = fmul fast float %3356, %3366
  %3368 = fsub fast float -0.000000e+00, %3367
  %3369 = fdiv fast float %3368, %3359
  br label %3370

; <label>:3370                                    ; preds = %3363, %3354
  %3371 = phi float [ %3369, %3363 ], [ %3356, %3354 ]
  %3372 = phi float [ %3365, %3363 ], [ 1.000000e+00, %3354 ]
  %3373 = fcmp fast une float %3360, 0.000000e+00
  br i1 %3373, label %3374, label %3381, !dx.controlflow.hints !140

; <label>:3374                                    ; preds = %3370
  %3375 = fmul fast float %3360, 0x3FF7154760000000
  %3376 = call float @dx.op.unary.f32(i32 21, float %3375)  ; Exp(value)
  %3377 = fsub fast float 1.000000e+00, %3376
  %3378 = fmul fast float %3357, %3377
  %3379 = fsub fast float -0.000000e+00, %3378
  %3380 = fdiv fast float %3379, %3360
  br label %3381

; <label>:3381                                    ; preds = %3374, %3370
  %3382 = phi float [ %3380, %3374 ], [ %3357, %3370 ]
  %3383 = phi float [ %3376, %3374 ], [ 1.000000e+00, %3370 ]
  %3384 = fcmp fast une float %3361, 0.000000e+00
  br i1 %3384, label %3385, label %3392, !dx.controlflow.hints !140

; <label>:3385                                    ; preds = %3381
  %3386 = fmul fast float %3361, 0x3FF7154760000000
  %3387 = call float @dx.op.unary.f32(i32 21, float %3386)  ; Exp(value)
  %3388 = fsub fast float 1.000000e+00, %3387
  %3389 = fmul fast float %3358, %3388
  %3390 = fsub fast float -0.000000e+00, %3389
  %3391 = fdiv fast float %3390, %3361
  br label %3392

; <label>:3392                                    ; preds = %3385, %3381, %3341, %3334
  %3393 = phi float [ %3391, %3385 ], [ %3353, %3341 ], [ %3338, %3334 ], [ %3358, %3381 ]
  %3394 = phi float [ %3382, %3385 ], [ %3352, %3341 ], [ %3337, %3334 ], [ %3382, %3381 ]
  %3395 = phi float [ %3371, %3385 ], [ %3351, %3341 ], [ %3336, %3334 ], [ %3371, %3381 ]
  %3396 = phi float [ %3387, %3385 ], [ %3343, %3341 ], [ 1.000000e+00, %3334 ], [ 1.000000e+00, %3381 ]
  %3397 = phi float [ %3383, %3385 ], [ %3343, %3341 ], [ 1.000000e+00, %3334 ], [ %3383, %3381 ]
  %3398 = phi float [ %3372, %3385 ], [ %3343, %3341 ], [ 1.000000e+00, %3334 ], [ %3372, %3381 ]
  %3399 = fmul fast float %3398, %3310
  %3400 = fmul fast float %3397, %3321
  %3401 = fmul fast float %3396, %3332
  %3402 = fadd fast float %3399, %3395
  %3403 = fadd fast float %3400, %3394
  %3404 = fadd fast float %3401, %3393
  %3405 = fmul fast float %3398, %3309
  %3406 = fmul fast float %3397, %3320
  %3407 = fmul fast float %3396, %3331
  br label %3408

; <label>:3408                                    ; preds = %3392, %3203
  %3409 = phi float [ %3209, %3203 ], [ %3407, %3392 ]
  %3410 = phi float [ %3208, %3203 ], [ %3406, %3392 ]
  %3411 = phi float [ %3207, %3203 ], [ %3405, %3392 ]
  %3412 = phi float [ %3206, %3203 ], [ %3404, %3392 ]
  %3413 = phi float [ %3205, %3203 ], [ %3403, %3392 ]
  %3414 = phi float [ %3204, %3203 ], [ %3402, %3392 ]
  %3415 = fmul fast float %3411, %2552
  %3416 = fmul fast float %3410, %2553
  %3417 = fmul fast float %3409, %2554
  %3418 = fsub fast float 1.000000e+00, %2615
  %3419 = fmul fast float %3414, %3418
  %3420 = fmul fast float %3413, %3418
  %3421 = fmul fast float %3412, %3418
  %3422 = fadd fast float %3419, %3415
  %3423 = fadd fast float %3420, %3416
  %3424 = fadd fast float %3421, %3417
  %3425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3426 = extractvalue %dx.types.CBufRet.f32 %3425, 2
  %3427 = fmul fast float %3426, %2625
  %3428 = call float @dx.op.unary.f32(i32 7, float %3427)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %25, i32 %26, i32 undef, float %2615, float %2615, float %2615, float %2615, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3430 = extractvalue %dx.types.CBufRet.f32 %3429, 0
  %3431 = fmul fast float %3430, %3422
  %3432 = fmul fast float %3430, %3423
  %3433 = fmul fast float %3430, %3424
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %25, i32 %26, i32 undef, float %3431, float %3432, float %3433, float %3431, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %25, i32 %26, i32 undef, float %3428, float %3428, float %3428, float %3428, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!36}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !21, !27, !30}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !16}
!16 = !{i32 1, i32 164}
!17 = !{i32 9, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!18 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!21 = !{!22, !23, !24, !25}
!22 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!23 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!24 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!25 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !26}
!26 = !{i32 0, i32 14}
!27 = !{!28, !29}
!28 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!30 = !{!31, !32, !33, !34, !35}
!31 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!32 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!33 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!34 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!35 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!36 = !{void ()* @cs_fog_raymarching_clouds_heightmap_particles_brfog, !"cs_fog_raymarching_clouds_heightmap_particles_brfog", null, !4, !37}
!37 = !{i32 0, i64 272, i32 4, !38}
!38 = !{i32 8, i32 8, i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
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
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = !{!98, !98, i64 0}
!98 = !{!"float", !99, i64 0}
!99 = !{!"omnipotent char", !100, i64 0}
!100 = !{!"Simple C/C++ TBAA"}
!101 = !{!102, !104, !106, !107, !109, !110, !111}
!102 = distinct !{!102, !103, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!103 = distinct !{!103, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!104 = distinct !{!104, !105, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!105 = distinct !{!105, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!106 = distinct !{!106, !105, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!107 = distinct !{!107, !108, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!108 = distinct !{!108, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!109 = distinct !{!109, !108, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!110 = distinct !{!110, !108, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!111 = distinct !{!111, !108, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = !{!114}
!114 = distinct !{!114, !115, !"\01?sort@@YAXAIAM00@Z: %c"}
!115 = distinct !{!115, !"\01?sort@@YAXAIAM00@Z"}
!116 = !{!117, !118, !102, !104, !106, !107, !109, !110, !111}
!117 = distinct !{!117, !115, !"\01?sort@@YAXAIAM00@Z: %a"}
!118 = distinct !{!118, !115, !"\01?sort@@YAXAIAM00@Z: %b"}
!119 = !{!118}
!120 = !{!117, !114, !102, !104, !106, !107, !109, !110, !111}
!121 = !{!117}
!122 = !{!118, !114, !102, !104, !106, !107, !109, !110, !111}
!123 = !{!124}
!124 = distinct !{!124, !125, !"\01?sort@@YAXAIAM00@Z: %c"}
!125 = distinct !{!125, !"\01?sort@@YAXAIAM00@Z"}
!126 = !{!127, !128, !102, !104, !106, !107, !109, !110, !111}
!127 = distinct !{!127, !125, !"\01?sort@@YAXAIAM00@Z: %a"}
!128 = distinct !{!128, !125, !"\01?sort@@YAXAIAM00@Z: %b"}
!129 = !{!128}
!130 = !{!127, !124, !102, !104, !106, !107, !109, !110, !111}
!131 = !{!127}
!132 = !{!128, !124, !102, !104, !106, !107, !109, !110, !111}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 2}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 2}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 2}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 2}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}

