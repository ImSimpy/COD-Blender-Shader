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
; shader hash: ebbe6209e0039c5c643f2155b7024245
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

define void @cs_fog_raymarching_air_clouds_heightmap_particles_brfog() {
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
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 3
  %380 = fsub fast float -0.000000e+00, %243
  %381 = fsub fast float -0.000000e+00, %244
  %382 = fsub fast float %379, %245
  %383 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %380, float %381, float %382)  ; Dot3(ax,ay,az,bx,by,bz)
  %384 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %286, float %287, float %288)  ; Dot3(ax,ay,az,bx,by,bz)
  %385 = fdiv fast float 1.000000e+00, %384
  %386 = fmul fast float %385, %383
  %387 = fcmp fast olt float %386, 0.000000e+00
  %388 = fcmp fast ogt float %288, 0.000000e+00
  %389 = and i1 %388, %387
  br i1 %389, label %394, label %390, !dx.controlflow.hints !43

; <label>:390                                     ; preds = %374
  %391 = fcmp fast olt float %288, 0.000000e+00
  br i1 %391, label %392, label %394, !dx.controlflow.hints !44

; <label>:392                                     ; preds = %390
  %393 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %386)  ; FMax(a,b)
  br label %394

; <label>:394                                     ; preds = %392, %390, %374
  %395 = phi float [ 0.000000e+00, %374 ], [ %393, %392 ], [ 0.000000e+00, %390 ]
  %396 = phi float [ 0.000000e+00, %374 ], [ 0x47EFFFFFE0000000, %392 ], [ %386, %390 ]
  %397 = fcmp fast oeq float %396, 0.000000e+00
  br i1 %397, label %401, label %398, !dx.controlflow.hints !45

; <label>:398                                     ; preds = %394
  %399 = call float @dx.op.binary.f32(i32 36, float %377, float %395)  ; FMin(a,b)
  %400 = call float @dx.op.binary.f32(i32 35, float %376, float %396)  ; FMax(a,b)
  br label %401

; <label>:401                                     ; preds = %398, %394
  %402 = phi i32 [ 1, %398 ], [ 0, %394 ]
  %403 = phi float [ %400, %398 ], [ %376, %394 ]
  %404 = phi float [ %399, %398 ], [ %377, %394 ]
  %405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.i32 %405, 3
  %407 = icmp eq i32 %406, 0
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 2
  %410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.f32 %410, 2
  %412 = fsub fast float %409, %245
  %413 = fadd fast float %412, %411
  br i1 %407, label %421, label %414, !dx.controlflow.hints !46

; <label>:414                                     ; preds = %401
  %415 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %380, float %381, float %413)  ; Dot3(ax,ay,az,bx,by,bz)
  %416 = fmul fast float %385, %415
  %417 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %380, float %381, float %412)  ; Dot3(ax,ay,az,bx,by,bz)
  %418 = fmul fast float %385, %417
  %419 = call float @dx.op.binary.f32(i32 36, float %416, float %418)  ; FMin(a,b)
  %420 = call float @dx.op.binary.f32(i32 35, float %416, float %418)  ; FMax(a,b)
  br label %454

; <label>:421                                     ; preds = %401
  %422 = fdiv fast float 1.000000e+00, %286
  %423 = fdiv fast float 1.000000e+00, %287
  %424 = fdiv fast float 1.000000e+00, %288
  %425 = extractvalue %dx.types.CBufRet.f32 %408, 0
  %426 = extractvalue %dx.types.CBufRet.f32 %408, 1
  %427 = extractvalue %dx.types.CBufRet.f32 %410, 0
  %428 = extractvalue %dx.types.CBufRet.f32 %410, 1
  %429 = fsub fast float %425, %243
  %430 = fmul fast float %429, %422
  %431 = fadd fast float %429, %427
  %432 = fmul fast float %431, %422
  %433 = call float @dx.op.binary.f32(i32 36, float %430, float %432)  ; FMin(a,b)
  %434 = call float @dx.op.binary.f32(i32 35, float %430, float %432)  ; FMax(a,b)
  %435 = fsub fast float %426, %244
  %436 = fmul fast float %435, %423
  %437 = fadd fast float %435, %428
  %438 = fmul fast float %437, %423
  %439 = call float @dx.op.binary.f32(i32 36, float %436, float %438)  ; FMin(a,b)
  %440 = call float @dx.op.binary.f32(i32 35, float %433, float %439)  ; FMax(a,b)
  %441 = call float @dx.op.binary.f32(i32 35, float %436, float %438)  ; FMax(a,b)
  %442 = call float @dx.op.binary.f32(i32 36, float %434, float %441)  ; FMin(a,b)
  %443 = fmul fast float %412, %424
  %444 = fmul fast float %413, %424
  %445 = call float @dx.op.binary.f32(i32 36, float %443, float %444)  ; FMin(a,b)
  %446 = call float @dx.op.binary.f32(i32 35, float %440, float %445)  ; FMax(a,b)
  %447 = call float @dx.op.binary.f32(i32 35, float %443, float %444)  ; FMax(a,b)
  %448 = call float @dx.op.binary.f32(i32 36, float %442, float %447)  ; FMin(a,b)
  %449 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %446)  ; FMax(a,b)
  %450 = fcmp fast ult float %448, %449
  br i1 %450, label %454, label %451, !dx.controlflow.hints !47

; <label>:451                                     ; preds = %421
  %452 = call float @dx.op.binary.f32(i32 36, float %446, float %448)  ; FMin(a,b)
  %453 = call float @dx.op.binary.f32(i32 35, float %446, float %448)  ; FMax(a,b)
  br label %454

; <label>:454                                     ; preds = %451, %421, %414
  %455 = phi float [ %419, %414 ], [ %452, %451 ], [ 0.000000e+00, %421 ]
  %456 = phi float [ %420, %414 ], [ %453, %451 ], [ 0.000000e+00, %421 ]
  %457 = fcmp fast oeq float %456, 0.000000e+00
  br i1 %457, label %461, label %458, !dx.controlflow.hints !48

; <label>:458                                     ; preds = %454
  %459 = call float @dx.op.binary.f32(i32 36, float %404, float %455)  ; FMin(a,b)
  %460 = call float @dx.op.binary.f32(i32 35, float %403, float %456)  ; FMax(a,b)
  br label %461

; <label>:461                                     ; preds = %458, %454
  %462 = phi i32 [ 1, %458 ], [ 0, %454 ]
  %463 = phi float [ %460, %458 ], [ %403, %454 ]
  %464 = phi float [ %459, %458 ], [ %404, %454 ]
  %465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.f32 %465, 3
  %467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %468 = extractvalue %dx.types.CBufRet.f32 %467, 0
  %469 = fsub fast float %466, %245
  %470 = fadd fast float %469, %468
  %471 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %380, float %381, float %470)  ; Dot3(ax,ay,az,bx,by,bz)
  %472 = fmul fast float %385, %471
  %473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %474 = extractvalue %dx.types.CBufRet.f32 %473, 2
  %475 = fsub fast float %474, %245
  %476 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %380, float %381, float %475)  ; Dot3(ax,ay,az,bx,by,bz)
  %477 = fmul fast float %385, %476
  %478 = call float @dx.op.binary.f32(i32 36, float %472, float %477)  ; FMin(a,b)
  %479 = call float @dx.op.binary.f32(i32 35, float %472, float %477)  ; FMax(a,b)
  %480 = call float @dx.op.binary.f32(i32 36, float %464, float %478)  ; FMin(a,b)
  %481 = call float @dx.op.binary.f32(i32 35, float %463, float %479)  ; FMax(a,b)
  %482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %483 = extractvalue %dx.types.CBufRet.f32 %482, 2
  %484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %485 = extractvalue %dx.types.CBufRet.f32 %484, 3
  %486 = fsub fast float %483, %245
  %487 = fadd fast float %486, %485
  %488 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %380, float %381, float %487)  ; Dot3(ax,ay,az,bx,by,bz)
  %489 = fmul fast float %385, %488
  %490 = fcmp fast olt float %489, 0.000000e+00
  %491 = and i1 %388, %490
  br i1 %491, label %496, label %492, !dx.controlflow.hints !49

; <label>:492                                     ; preds = %461
  %493 = fcmp fast olt float %288, 0.000000e+00
  br i1 %493, label %494, label %496, !dx.controlflow.hints !50

; <label>:494                                     ; preds = %492
  %495 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %489)  ; FMax(a,b)
  br label %496

; <label>:496                                     ; preds = %494, %492, %461
  %497 = phi float [ 0.000000e+00, %461 ], [ %495, %494 ], [ 0.000000e+00, %492 ]
  %498 = phi float [ 0.000000e+00, %461 ], [ 0x47EFFFFFE0000000, %494 ], [ %489, %492 ]
  %499 = fcmp fast oeq float %498, 0.000000e+00
  br i1 %499, label %503, label %500, !dx.controlflow.hints !51

; <label>:500                                     ; preds = %496
  %501 = call float @dx.op.binary.f32(i32 36, float %480, float %497)  ; FMin(a,b)
  %502 = call float @dx.op.binary.f32(i32 35, float %481, float %498)  ; FMax(a,b)
  br label %503

; <label>:503                                     ; preds = %500, %496
  %504 = phi i32 [ 1, %500 ], [ 0, %496 ]
  %505 = phi float [ %502, %500 ], [ %481, %496 ]
  %506 = phi float [ %501, %500 ], [ %480, %496 ]
  %507 = fdiv fast float 1.000000e+00, %286
  %508 = fdiv fast float 1.000000e+00, %287
  %509 = fdiv fast float 1.000000e+00, %288
  %510 = call float @dx.op.binary.f32(i32 36, float %307, float %505)  ; FMin(a,b)
  %511 = call float @dx.op.binary.f32(i32 35, float %284, float %506)  ; FMax(a,b)
  %512 = extractvalue %dx.types.CBufRet.f32 %378, 0
  %513 = fmul fast float %232, 2.000000e+00
  %514 = fadd fast float %513, -1.000000e+00
  %515 = fmul fast float %512, %514
  %516 = fadd fast float %515, %511
  %517 = fcmp fast olt float %516, %510
  %518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %519 = extractvalue %dx.types.CBufRet.f32 %518, 2
  %520 = fcmp fast olt float %519, 1.000000e+00
  %521 = and i1 %517, %520
  br i1 %521, label %522, label %2710

; <label>:522                                     ; preds = %503
  %523 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.i32 %523, 1
  %525 = add i32 %524, -1
  %526 = fmul fast float %516, %288
  %527 = fadd fast float %526, %245
  %528 = fmul fast float %516, %287
  %529 = fadd fast float %528, %244
  %530 = fmul fast float %516, %286
  %531 = fadd fast float %530, %243
  br label %532

; <label>:532                                     ; preds = %2680, %522
  %533 = phi i32 [ %2682, %2680 ], [ undef, %522 ]
  %534 = phi float [ %2683, %2680 ], [ undef, %522 ]
  %535 = phi float [ %2684, %2680 ], [ undef, %522 ]
  %536 = phi float [ %2685, %2680 ], [ undef, %522 ]
  %537 = phi float [ %2686, %2680 ], [ undef, %522 ]
  %538 = phi float [ %2687, %2680 ], [ undef, %522 ]
  %539 = phi i32 [ %1096, %2680 ], [ undef, %522 ]
  %540 = phi float [ %1098, %2680 ], [ undef, %522 ]
  %541 = phi float [ %838, %2680 ], [ undef, %522 ]
  %542 = phi float [ %839, %2680 ], [ undef, %522 ]
  %543 = phi float [ %840, %2680 ], [ undef, %522 ]
  %544 = phi float [ %841, %2680 ], [ undef, %522 ]
  %545 = phi float [ %2688, %2680 ], [ 0.000000e+00, %522 ]
  %546 = phi float [ %2689, %2680 ], [ 1.000000e+00, %522 ]
  %547 = phi float [ %2690, %2680 ], [ 0.000000e+00, %522 ]
  %548 = phi float [ %2691, %2680 ], [ 0.000000e+00, %522 ]
  %549 = phi float [ %2692, %2680 ], [ 0.000000e+00, %522 ]
  %550 = phi float [ %2702, %2680 ], [ %531, %522 ]
  %551 = phi float [ %2703, %2680 ], [ %529, %522 ]
  %552 = phi float [ %2704, %2680 ], [ %527, %522 ]
  %553 = phi float [ %2681, %2680 ], [ %516, %522 ]
  %554 = phi i32 [ %843, %2680 ], [ 10, %522 ]
  %555 = phi i32 [ %735, %2680 ], [ %525, %522 ]
  %556 = phi float [ %2693, %2680 ], [ 0.000000e+00, %522 ]
  %557 = phi float [ %2694, %2680 ], [ 0.000000e+00, %522 ]
  %558 = phi float [ %2695, %2680 ], [ 0.000000e+00, %522 ]
  %559 = phi float [ %2696, %2680 ], [ 0.000000e+00, %522 ]
  %560 = phi float [ %2697, %2680 ], [ 0.000000e+00, %522 ]
  %561 = phi i32 [ %2698, %2680 ], [ 0, %522 ]
  %562 = fsub fast float -0.000000e+00, %551
  %563 = fsub fast float -0.000000e+00, %550
  %564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %565 = extractvalue %dx.types.CBufRet.f32 %564, 0
  %566 = icmp eq i32 %375, 0
  br i1 %566, label %732, label %567, !dx.controlflow.hints !52

; <label>:567                                     ; preds = %532
  %568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.i32 %568, 1
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 1
  %572 = fcmp fast ogt float %571, %553
  br i1 %572, label %573, label %575, !dx.controlflow.hints !53

; <label>:573                                     ; preds = %567
  %574 = fsub fast float %571, %553
  br label %722

; <label>:575                                     ; preds = %567
  %576 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.i32 %576, 3
  %578 = icmp eq i32 %577, 0
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 2
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 2
  %583 = fsub fast float %580, %552
  %584 = fadd fast float %583, %582
  %585 = fsub fast float 0xC7EFFFFFE0000000, %552
  br i1 %578, label %593, label %586, !dx.controlflow.hints !40

; <label>:586                                     ; preds = %575
  %587 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %563, float %562, float %584)  ; Dot3(ax,ay,az,bx,by,bz)
  %588 = fmul fast float %385, %587
  %589 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %563, float %562, float %585)  ; Dot3(ax,ay,az,bx,by,bz)
  %590 = fmul fast float %385, %589
  %591 = call float @dx.op.binary.f32(i32 36, float %588, float %590)  ; FMin(a,b)
  %592 = call float @dx.op.binary.f32(i32 35, float %588, float %590)  ; FMax(a,b)
  br label %623

; <label>:593                                     ; preds = %575
  %594 = extractvalue %dx.types.CBufRet.f32 %579, 0
  %595 = extractvalue %dx.types.CBufRet.f32 %579, 1
  %596 = extractvalue %dx.types.CBufRet.f32 %581, 0
  %597 = extractvalue %dx.types.CBufRet.f32 %581, 1
  %598 = fsub fast float %594, %550
  %599 = fmul fast float %507, %598
  %600 = fadd fast float %598, %596
  %601 = fmul fast float %600, %507
  %602 = call float @dx.op.binary.f32(i32 36, float %599, float %601)  ; FMin(a,b)
  %603 = call float @dx.op.binary.f32(i32 35, float %599, float %601)  ; FMax(a,b)
  %604 = fsub fast float %595, %551
  %605 = fmul fast float %508, %604
  %606 = fadd fast float %604, %597
  %607 = fmul fast float %606, %508
  %608 = call float @dx.op.binary.f32(i32 36, float %605, float %607)  ; FMin(a,b)
  %609 = call float @dx.op.binary.f32(i32 35, float %602, float %608)  ; FMax(a,b)
  %610 = call float @dx.op.binary.f32(i32 35, float %605, float %607)  ; FMax(a,b)
  %611 = call float @dx.op.binary.f32(i32 36, float %603, float %610)  ; FMin(a,b)
  %612 = fmul fast float %509, %585
  %613 = fmul fast float %509, %584
  %614 = call float @dx.op.binary.f32(i32 36, float %612, float %613)  ; FMin(a,b)
  %615 = call float @dx.op.binary.f32(i32 35, float %609, float %614)  ; FMax(a,b)
  %616 = call float @dx.op.binary.f32(i32 35, float %612, float %613)  ; FMax(a,b)
  %617 = call float @dx.op.binary.f32(i32 36, float %611, float %616)  ; FMin(a,b)
  %618 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %615)  ; FMax(a,b)
  %619 = fcmp fast ult float %617, %618
  br i1 %619, label %623, label %620, !dx.controlflow.hints !41

; <label>:620                                     ; preds = %593
  %621 = call float @dx.op.binary.f32(i32 36, float %615, float %617)  ; FMin(a,b)
  %622 = call float @dx.op.binary.f32(i32 35, float %615, float %617)  ; FMax(a,b)
  br label %623

; <label>:623                                     ; preds = %620, %593, %586
  %624 = phi float [ %591, %586 ], [ %621, %620 ], [ 0.000000e+00, %593 ]
  %625 = phi float [ %592, %586 ], [ %622, %620 ], [ 0.000000e+00, %593 ]
  %626 = fcmp fast ogt float %624, 0.000000e+00
  br i1 %626, label %722, label %627, !dx.controlflow.hints !54

; <label>:627                                     ; preds = %623
  %628 = fcmp fast ugt float %625, 0.000000e+00
  br i1 %628, label %629, label %722, !dx.controlflow.hints !55

; <label>:629                                     ; preds = %627
  %630 = icmp sgt i32 %555, 0
  br i1 %630, label %631, label %716

; <label>:631                                     ; preds = %629
  br label %632

; <label>:632                                     ; preds = %712, %631
  %633 = phi i32 [ %713, %712 ], [ %555, %631 ]
  %634 = sitofp i32 %633 to float
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %637 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %638 = fsub fast float %550, %636
  %639 = fsub fast float %551, %637
  %640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.f32 %640, 0
  %642 = extractvalue %dx.types.CBufRet.f32 %640, 1
  %643 = fmul fast float %638, %641
  %644 = fmul fast float %639, %642
  %645 = fsub fast float 1.000000e+00, %644
  %646 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %647 = extractvalue %dx.types.CBufRet.i32 %646, 3
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %655, label %649, !dx.controlflow.hints !56

; <label>:649                                     ; preds = %632
  %650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %20, float %643, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float %634)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %651 = extractvalue %dx.types.ResRet.f32 %650, 0
  %652 = extractvalue %dx.types.ResRet.f32 %650, 1
  %653 = extractvalue %dx.types.ResRet.f32 %650, 2
  %654 = extractvalue %dx.types.ResRet.f32 %650, 3
  br label %661

; <label>:655                                     ; preds = %632
  %656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %21, float %643, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float %634)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %657 = extractvalue %dx.types.ResRet.f32 %656, 0
  %658 = extractvalue %dx.types.ResRet.f32 %656, 1
  %659 = extractvalue %dx.types.ResRet.f32 %656, 2
  %660 = extractvalue %dx.types.ResRet.f32 %656, 3
  br label %661

; <label>:661                                     ; preds = %655, %649
  %662 = phi float [ %651, %649 ], [ %657, %655 ]
  %663 = phi float [ %652, %649 ], [ %658, %655 ]
  %664 = phi float [ %653, %649 ], [ %659, %655 ]
  %665 = phi float [ %654, %649 ], [ %660, %655 ]
  %666 = extractvalue %dx.types.CBufRet.f32 %640, 3
  %667 = fmul fast float %666, %662
  %668 = extractvalue %dx.types.CBufRet.f32 %635, 2
  %669 = fadd fast float %667, %668
  %670 = fmul fast float %666, %663
  %671 = fadd fast float %670, %668
  %672 = fmul fast float %666, %664
  %673 = fadd fast float %672, %668
  %674 = and i32 %633, 31
  %675 = shl i32 1, %674
  %676 = uitofp i32 %675 to float
  %677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %678 = extractvalue %dx.types.CBufRet.f32 %677, 3
  %679 = fdiv fast float 1.000000e+00, %678
  %680 = fmul fast float %679, %676
  %681 = fmul fast float %680, %288
  %682 = fadd fast float %681, %552
  %683 = fcmp fast oeq float %665, 0.000000e+00
  %684 = fcmp fast ogt float %552, %671
  %685 = fcmp fast ogt float %682, %671
  %686 = and i1 %684, %685
  %687 = or i1 %683, %686
  br i1 %687, label %688, label %692, !dx.controlflow.hints !57

; <label>:688                                     ; preds = %661
  %689 = add nsw i32 %633, 1
  %690 = add nsw i32 %569, -1
  %691 = call i32 @dx.op.binary.i32(i32 38, i32 %689, i32 %690)  ; IMin(a,b)
  br label %722

; <label>:692                                     ; preds = %661
  %693 = fcmp fast olt float %552, %673
  %694 = fcmp fast olt float %682, %673
  %695 = and i1 %693, %694
  br i1 %695, label %696, label %700, !dx.controlflow.hints !58

; <label>:696                                     ; preds = %692
  %697 = add nsw i32 %633, 1
  %698 = add nsw i32 %569, -1
  %699 = call i32 @dx.op.binary.i32(i32 38, i32 %697, i32 %698)  ; IMin(a,b)
  br label %722

; <label>:700                                     ; preds = %692
  %701 = fcmp fast olt float %552, %669
  %702 = fcmp fast olt float %682, %669
  %703 = and i1 %701, %702
  br i1 %703, label %704, label %712, !dx.controlflow.hints !59

; <label>:704                                     ; preds = %700
  %705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %706 = extractvalue %dx.types.CBufRet.f32 %705, 3
  %707 = extractvalue %dx.types.CBufRet.f32 %640, 2
  %708 = fcmp fast une float %706, %707
  br i1 %708, label %709, label %716, !dx.controlflow.hints !60

; <label>:709                                     ; preds = %704
  %710 = fsub fast float %552, %673
  %711 = call float @dx.op.binary.f32(i32 36, float %680, float %710)  ; FMin(a,b)
  br label %716

; <label>:712                                     ; preds = %700
  %713 = add nsw i32 %633, -1
  %714 = icmp sgt i32 %633, 1
  br i1 %714, label %632, label %715

; <label>:715                                     ; preds = %712
  br label %716

; <label>:716                                     ; preds = %715, %709, %704, %629
  %717 = phi float [ %711, %709 ], [ %680, %704 ], [ 0.000000e+00, %629 ], [ 0.000000e+00, %715 ]
  %718 = phi i32 [ %633, %709 ], [ %633, %704 ], [ %555, %629 ], [ %713, %715 ]
  %719 = add nsw i32 %718, 1
  %720 = add nsw i32 %569, -1
  %721 = call i32 @dx.op.binary.i32(i32 38, i32 %719, i32 %720)  ; IMin(a,b)
  br label %722

; <label>:722                                     ; preds = %716, %696, %688, %627, %623, %573
  %723 = phi float [ %574, %573 ], [ %680, %688 ], [ %680, %696 ], [ %717, %716 ], [ 0x47EFFFFFE0000000, %627 ], [ %624, %623 ]
  %724 = phi i32 [ %375, %573 ], [ %375, %688 ], [ %375, %696 ], [ %375, %716 ], [ 0, %627 ], [ %375, %623 ]
  %725 = phi i32 [ %555, %573 ], [ %691, %688 ], [ %699, %696 ], [ %721, %716 ], [ %555, %627 ], [ %555, %623 ]
  %726 = icmp ne i32 %724, 0
  %727 = zext i1 %726 to i32
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 2
  %730 = call float @dx.op.binary.f32(i32 35, float %723, float %729)  ; FMax(a,b)
  %731 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %730)  ; FMin(a,b)
  br label %732

; <label>:732                                     ; preds = %722, %532
  %733 = phi i32 [ %727, %722 ], [ 0, %532 ]
  %734 = phi float [ %731, %722 ], [ 0x47EFFFFFE0000000, %532 ]
  %735 = phi i32 [ %725, %722 ], [ %555, %532 ]
  %736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.f32 %736, 0
  %738 = extractvalue %dx.types.CBufRet.f32 %736, 1
  %739 = fsub fast float %550, %737
  %740 = fsub fast float %551, %738
  %741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.f32 %741, 2
  %743 = extractvalue %dx.types.CBufRet.f32 %741, 3
  %744 = fmul fast float %739, %742
  %745 = fmul fast float %740, %743
  %746 = call float @dx.op.binary.f32(i32 36, float %744, float %745)  ; FMin(a,b)
  %747 = fcmp fast olt float %746, 0.000000e+00
  %748 = call float @dx.op.binary.f32(i32 35, float %744, float %745)  ; FMax(a,b)
  %749 = fcmp fast ogt float %748, 1.000000e+00
  %750 = or i1 %747, %749
  %751 = extractvalue %dx.types.CBufRet.f32 %736, 2
  %752 = fcmp fast olt float %552, %751
  %753 = or i1 %750, %752
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 3
  %756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %757 = extractvalue %dx.types.CBufRet.f32 %756, 0
  %758 = fadd fast float %757, %755
  %759 = fcmp fast ogt float %552, %758
  %760 = or i1 %753, %759
  br i1 %760, label %761, label %790, !dx.controlflow.hints !61

; <label>:761                                     ; preds = %732
  %762 = extractvalue %dx.types.CBufRet.f32 %741, 0
  %763 = extractvalue %dx.types.CBufRet.f32 %741, 1
  %764 = fsub fast float %737, %550
  %765 = fmul fast float %764, %507
  %766 = fadd fast float %764, %762
  %767 = fmul fast float %766, %507
  %768 = call float @dx.op.binary.f32(i32 36, float %765, float %767)  ; FMin(a,b)
  %769 = call float @dx.op.binary.f32(i32 35, float %765, float %767)  ; FMax(a,b)
  %770 = fsub fast float %738, %551
  %771 = fmul fast float %770, %508
  %772 = fadd fast float %770, %763
  %773 = fmul fast float %772, %508
  %774 = call float @dx.op.binary.f32(i32 36, float %771, float %773)  ; FMin(a,b)
  %775 = call float @dx.op.binary.f32(i32 35, float %768, float %774)  ; FMax(a,b)
  %776 = call float @dx.op.binary.f32(i32 35, float %771, float %773)  ; FMax(a,b)
  %777 = call float @dx.op.binary.f32(i32 36, float %769, float %776)  ; FMin(a,b)
  %778 = fsub fast float %751, %552
  %779 = fmul fast float %778, %509
  %780 = fsub fast float %755, %552
  %781 = fadd fast float %780, %757
  %782 = fmul fast float %781, %509
  %783 = call float @dx.op.binary.f32(i32 36, float %779, float %782)  ; FMin(a,b)
  %784 = call float @dx.op.binary.f32(i32 35, float %775, float %783)  ; FMax(a,b)
  %785 = call float @dx.op.binary.f32(i32 35, float %779, float %782)  ; FMax(a,b)
  %786 = call float @dx.op.binary.f32(i32 36, float %777, float %785)  ; FMin(a,b)
  %787 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %784)  ; FMax(a,b)
  %788 = fcmp fast oge float %786, %787
  %789 = select i1 %788, float %784, float 1.000000e+07
  br label %836

; <label>:790                                     ; preds = %732
  %791 = fsub fast float 1.000000e+00, %745
  %792 = icmp eq i32 %554, 0
  br i1 %792, label %821, label %793

; <label>:793                                     ; preds = %790
  br label %794

; <label>:794                                     ; preds = %817, %793
  %795 = phi i32 [ %818, %817 ], [ %554, %793 ]
  %796 = uitofp i32 %795 to float
  %797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %22, float %744, float %791, float undef, float undef, i32 0, i32 0, i32 undef, float %796)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %798 = extractvalue %dx.types.ResRet.f32 %797, 0
  %799 = extractvalue %dx.types.ResRet.f32 %797, 1
  %800 = extractvalue %dx.types.ResRet.f32 %797, 2
  %801 = fcmp fast oeq float %798, 0.000000e+00
  %802 = fcmp ule float %552, %800
  %803 = fcmp uge float %552, %799
  %804 = or i1 %803, %802
  %805 = or i1 %801, %804
  br i1 %805, label %806, label %817, !dx.controlflow.hints !62

; <label>:806                                     ; preds = %794
  %807 = extractvalue %dx.types.ResRet.f32 %797, 3
  %808 = extractvalue %dx.types.CBufRet.f32 %741, 0
  %809 = and i32 %795, 31
  %810 = lshr i32 1024, %809
  %811 = uitofp i32 %810 to float
  %812 = fdiv fast float %808, %811
  %813 = add i32 %795, 1
  %814 = uitofp i32 %813 to float
  %815 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %814)  ; FMin(a,b)
  %816 = fptosi float %815 to i32
  br label %836

; <label>:817                                     ; preds = %794
  %818 = add i32 %795, -1
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %820, label %794, !llvm.loop !63

; <label>:820                                     ; preds = %817
  br label %821

; <label>:821                                     ; preds = %820, %790
  %822 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %744, float %791, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %823 = extractvalue %dx.types.ResRet.f32 %822, 0
  %824 = extractvalue %dx.types.ResRet.f32 %822, 1
  %825 = extractvalue %dx.types.ResRet.f32 %822, 2
  %826 = extractvalue %dx.types.ResRet.f32 %822, 3
  %827 = extractvalue %dx.types.CBufRet.f32 %741, 0
  %828 = fmul fast float %827, 9.765625e-04
  %829 = fcmp fast oeq float %823, 0.000000e+00
  %830 = fcmp ule float %552, %825
  %831 = fcmp uge float %552, %824
  %832 = or i1 %831, %830
  %833 = or i1 %829, %832
  %834 = zext i1 %833 to i32
  %835 = xor i32 %834, 1
  br label %836

; <label>:836                                     ; preds = %821, %806, %761
  %837 = phi float [ %789, %761 ], [ %812, %806 ], [ %828, %821 ]
  %838 = phi float [ %541, %761 ], [ %798, %806 ], [ %823, %821 ]
  %839 = phi float [ %542, %761 ], [ %799, %806 ], [ %824, %821 ]
  %840 = phi float [ %543, %761 ], [ %800, %806 ], [ %825, %821 ]
  %841 = phi float [ %544, %761 ], [ %807, %806 ], [ %826, %821 ]
  %842 = phi i32 [ 0, %761 ], [ 0, %806 ], [ %835, %821 ]
  %843 = phi i32 [ 10, %761 ], [ %816, %806 ], [ 1, %821 ]
  %844 = icmp eq i32 %842, 0
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 2
  %847 = call float @dx.op.binary.f32(i32 35, float %837, float %846)  ; FMax(a,b)
  %848 = call float @dx.op.binary.f32(i32 36, float %734, float %847)  ; FMin(a,b)
  %849 = icmp eq i32 %402, 0
  br i1 %849, label %862, label %850, !dx.controlflow.hints !65

; <label>:850                                     ; preds = %836
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 3
  %853 = extractvalue %dx.types.CBufRet.f32 %851, 2
  %854 = fmul fast float %852, %553
  %855 = fdiv fast float %854, %510
  %856 = fadd fast float %855, 1.000000e+00
  %857 = call float @dx.op.unary.f32(i32 23, float %856)  ; Log(value)
  %858 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %857)  ; FMin(a,b)
  %859 = fmul fast float %853, %510
  %860 = fmul fast float %859, %858
  %861 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %860)  ; FMin(a,b)
  br label %862

; <label>:862                                     ; preds = %850, %836
  %863 = phi float [ %861, %850 ], [ 0x47EFFFFFE0000000, %836 ]
  %864 = icmp eq i32 %462, 0
  br i1 %864, label %920, label %865, !dx.controlflow.hints !66

; <label>:865                                     ; preds = %862
  %866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %867 = extractvalue %dx.types.CBufRet.f32 %866, 0
  %868 = extractvalue %dx.types.CBufRet.f32 %866, 1
  %869 = extractvalue %dx.types.CBufRet.f32 %866, 2
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 0
  %872 = extractvalue %dx.types.CBufRet.f32 %870, 1
  %873 = extractvalue %dx.types.CBufRet.f32 %870, 2
  %874 = fsub fast float %550, %871
  %875 = fsub fast float %551, %872
  %876 = fsub fast float %552, %873
  %877 = fmul fast float %874, %867
  %878 = fmul fast float %875, %868
  %879 = fmul fast float %876, %869
  %880 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %881 = extractvalue %dx.types.CBufRet.i32 %880, 3
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %886, label %883, !dx.controlflow.hints !67

; <label>:883                                     ; preds = %865
  %884 = call float @dx.op.unary.f32(i32 22, float %877)  ; Frc(value)
  %885 = call float @dx.op.unary.f32(i32 22, float %878)  ; Frc(value)
  br label %886

; <label>:886                                     ; preds = %883, %865
  %887 = phi float [ %884, %883 ], [ %877, %865 ]
  %888 = phi float [ %885, %883 ], [ %878, %865 ]
  %889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %887, float %888, float %879, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %890 = extractvalue %dx.types.ResRet.f32 %889, 0
  %891 = fmul fast float %890, 2.000000e+00
  %892 = fadd fast float %891, -1.000000e+00
  %893 = extractvalue %dx.types.CBufRet.f32 %866, 3
  %894 = fmul fast float %892, %893
  %895 = fcmp fast olt float %894, 0.000000e+00
  %896 = fcmp fast oge float %879, 0.000000e+00
  %897 = fcmp fast ole float %879, 1.000000e+00
  br i1 %882, label %900, label %898, !dx.controlflow.hints !68

; <label>:898                                     ; preds = %886
  %899 = and i1 %896, %897
  br label %910

; <label>:900                                     ; preds = %886
  %901 = fcmp fast oge float %877, 0.000000e+00
  %902 = fcmp fast oge float %878, 0.000000e+00
  %903 = and i1 %901, %902
  %904 = and i1 %896, %903
  %905 = fcmp fast ole float %877, 1.000000e+00
  %906 = fcmp fast ole float %878, 1.000000e+00
  %907 = and i1 %905, %906
  %908 = and i1 %897, %907
  %909 = and i1 %904, %908
  br label %910

; <label>:910                                     ; preds = %900, %898
  %911 = phi i1 [ %899, %898 ], [ %909, %900 ]
  %912 = and i1 %895, %911
  %913 = call float @dx.op.unary.f32(i32 6, float %894)  ; FAbs(value)
  %914 = extractvalue %dx.types.CBufRet.f32 %845, 1
  %915 = extractvalue %dx.types.CBufRet.f32 %845, 0
  %916 = call float @dx.op.binary.f32(i32 35, float %913, float %915)  ; FMax(a,b)
  %917 = select i1 %912, float %914, float %916
  %918 = zext i1 %912 to i32
  %919 = call float @dx.op.binary.f32(i32 36, float %848, float %917)  ; FMin(a,b)
  br label %920

; <label>:920                                     ; preds = %910, %862
  %921 = phi i32 [ %918, %910 ], [ 0, %862 ]
  %922 = phi float [ %919, %910 ], [ %848, %862 ]
  %923 = icmp eq i32 %504, 0
  br i1 %923, label %1095, label %924, !dx.controlflow.hints !69

; <label>:924                                     ; preds = %920
  %925 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.i32 %925, 1
  %927 = and i32 %926, 1
  %928 = icmp eq i32 %927, 0
  br i1 %928, label %929, label %1086, !dx.controlflow.hints !70

; <label>:929                                     ; preds = %924
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 2
  %932 = extractvalue %dx.types.CBufRet.f32 %930, 3
  %933 = fmul fast float %931, %550
  %934 = fmul fast float %932, %551
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 0
  %937 = extractvalue %dx.types.CBufRet.f32 %935, 1
  %938 = fadd fast float %933, %936
  %939 = fadd fast float %934, %937
  %940 = call float @dx.op.unary.f32(i32 7, float %938)  ; Saturate(value)
  %941 = call float @dx.op.unary.f32(i32 7, float %939)  ; Saturate(value)
  %942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %21, float %940, float %941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %943 = extractvalue %dx.types.ResRet.f32 %942, 0
  %944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %945 = extractvalue %dx.types.CBufRet.f32 %944, 0
  %946 = fmul fast float %945, %943
  %947 = fsub fast float %938, %940
  %948 = fsub fast float %939, %941
  %949 = extractvalue %dx.types.CBufRet.f32 %930, 0
  %950 = extractvalue %dx.types.CBufRet.f32 %930, 1
  %951 = fmul fast float %949, %947
  %952 = fmul fast float %950, %948
  %953 = fmul fast float %951, %951
  %954 = fmul fast float %952, %952
  %955 = fadd fast float %953, %954
  %956 = call float @dx.op.unary.f32(i32 24, float %955)  ; Sqrt(value)
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 3
  %959 = fmul fast float %958, %956
  %960 = call float @dx.op.unary.f32(i32 7, float %959)  ; Saturate(value)
  %961 = extractvalue %dx.types.CBufRet.f32 %957, 2
  %962 = fsub fast float %961, %946
  %963 = fmul fast float %962, %960
  %964 = extractvalue %dx.types.CBufRet.f32 %944, 1
  %965 = fsub fast float %552, %946
  %966 = fsub fast float %965, %964
  %967 = fsub fast float %966, %963
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %970 = fsub fast float %967, %969
  %971 = fcmp fast olt float %970, 0.000000e+00
  %972 = call float @dx.op.unary.f32(i32 6, float %970)  ; FAbs(value)
  %973 = extractvalue %dx.types.CBufRet.i32 %925, 0
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %1028, label %975

; <label>:975                                     ; preds = %929
  br label %976

; <label>:976                                     ; preds = %1015, %975
  %977 = phi i32 [ %1021, %1015 ], [ 1, %975 ]
  %978 = phi float [ %1023, %1015 ], [ 0x47EFFFFFE0000000, %975 ]
  %979 = phi i32 [ %1024, %1015 ], [ 0, %975 ]
  %980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %981 = extractvalue %dx.types.CBufRet.f32 %980, 1
  %982 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %983 = extractvalue %dx.types.CBufRet.i32 %982, 1
  %984 = and i32 %983, 8
  %985 = icmp eq i32 %984, 0
  %986 = fcmp fast ogt float %981, %967
  %987 = or i1 %986, %985
  %988 = add i32 %979, 171
  %989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %988)  ; CBufferLoadLegacy(handle,regIndex)
  %990 = extractvalue %dx.types.CBufRet.f32 %989, 0
  %991 = extractvalue %dx.types.CBufRet.f32 %989, 1
  %992 = extractvalue %dx.types.CBufRet.f32 %989, 2
  br i1 %987, label %993, label %999, !dx.controlflow.hints !71

; <label>:993                                     ; preds = %976
  %994 = fsub fast float %990, %550
  %995 = fsub fast float %991, %551
  %996 = fmul fast float %994, %994
  %997 = fmul fast float %995, %995
  %998 = fadd fast float %996, %997
  br label %1015

; <label>:999                                     ; preds = %976
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 2
  %1002 = extractvalue %dx.types.CBufRet.f32 %980, 2
  %1003 = fmul fast float %1002, %1001
  %1004 = fsub fast float %1003, %981
  %1005 = fdiv fast float %992, %1004
  %1006 = fsub fast float %550, %990
  %1007 = fsub fast float %551, %991
  %1008 = fsub fast float %967, %981
  %1009 = fmul fast float %1005, %1008
  %1010 = fmul fast float %1006, %1006
  %1011 = fmul fast float %1007, %1007
  %1012 = fadd fast float %1010, %1011
  %1013 = fmul fast float %1009, %1009
  %1014 = fadd fast float %1012, %1013
  br label %1015

; <label>:1015                                    ; preds = %999, %993
  %1016 = phi float [ %998, %993 ], [ %1014, %999 ]
  %1017 = call float @dx.op.unary.f32(i32 24, float %1016)  ; Sqrt(value)
  %1018 = fsub float %992, %1017
  %1019 = fcmp fast olt float %1018, 0.000000e+00
  %1020 = zext i1 %1019 to i32
  %1021 = and i32 %1020, %977
  %1022 = call float @dx.op.unary.f32(i32 6, float %1018)  ; FAbs(value)
  %1023 = call float @dx.op.binary.f32(i32 36, float %978, float %1022)  ; FMin(a,b)
  %1024 = add i32 %979, 1
  %1025 = extractvalue %dx.types.CBufRet.i32 %982, 0
  %1026 = icmp ult i32 %1024, %1025
  br i1 %1026, label %976, label %1027

; <label>:1027                                    ; preds = %1015
  br label %1028

; <label>:1028                                    ; preds = %1027, %929
  %1029 = phi i32 [ 1, %929 ], [ %1021, %1027 ]
  %1030 = phi float [ 0x47EFFFFFE0000000, %929 ], [ %1023, %1027 ]
  br label %1031

; <label>:1031                                    ; preds = %1031, %1028
  %1032 = phi i32 [ %1029, %1028 ], [ %1071, %1031 ]
  %1033 = phi float [ 0x47EFFFFFE0000000, %1028 ], [ %1073, %1031 ]
  %1034 = phi i32 [ 0, %1028 ], [ %1074, %1031 ]
  %1035 = add nuw nsw i32 %1034, 191
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %1035)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.CBufRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.CBufRet.f32 %1036, 2
  %1040 = add nuw nsw i32 %1034, 195
  %1041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %1040)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.f32 %1041, 0
  %1043 = extractvalue %dx.types.CBufRet.f32 %1041, 1
  %1044 = extractvalue %dx.types.CBufRet.f32 %1041, 2
  %1045 = fsub fast float %550, %1037
  %1046 = fsub fast float %551, %1038
  %1047 = fsub fast float %967, %1039
  %1048 = call float @dx.op.unary.f32(i32 6, float %1045)  ; FAbs(value)
  %1049 = call float @dx.op.unary.f32(i32 6, float %1046)  ; FAbs(value)
  %1050 = call float @dx.op.unary.f32(i32 6, float %1047)  ; FAbs(value)
  %1051 = fsub fast float %1048, %1042
  %1052 = fsub fast float %1049, %1043
  %1053 = fsub fast float %1050, %1044
  %1054 = call float @dx.op.binary.f32(i32 35, float %1051, float 0.000000e+00)  ; FMax(a,b)
  %1055 = call float @dx.op.binary.f32(i32 35, float %1052, float 0.000000e+00)  ; FMax(a,b)
  %1056 = call float @dx.op.binary.f32(i32 35, float %1053, float 0.000000e+00)  ; FMax(a,b)
  %1057 = fmul fast float %1054, %1054
  %1058 = fmul fast float %1055, %1055
  %1059 = fadd fast float %1058, %1057
  %1060 = fmul fast float %1056, %1056
  %1061 = fadd fast float %1059, %1060
  %1062 = call float @dx.op.unary.f32(i32 24, float %1061)  ; Sqrt(value)
  %1063 = call float @dx.op.binary.f32(i32 35, float %1052, float %1053)  ; FMax(a,b)
  %1064 = call float @dx.op.binary.f32(i32 35, float %1051, float %1063)  ; FMax(a,b)
  %1065 = call float @dx.op.binary.f32(i32 36, float %1064, float 0.000000e+00)  ; FMin(a,b)
  %1066 = fadd fast float %1065, %1062
  %1067 = fsub fast float -0.000000e+00, %1066
  %1068 = fcmp ogt float %1066, -0.000000e+00
  %1069 = icmp ne i32 %1032, 0
  %1070 = and i1 %1069, %1068
  %1071 = zext i1 %1070 to i32
  %1072 = call float @dx.op.unary.f32(i32 6, float %1067)  ; FAbs(value)
  %1073 = call float @dx.op.binary.f32(i32 36, float %1033, float %1072)  ; FMin(a,b)
  %1074 = add nuw nsw i32 %1034, 1
  %1075 = icmp eq i32 %1074, 4
  br i1 %1075, label %1076, label %1031

; <label>:1076                                    ; preds = %1031
  %1077 = call float @dx.op.binary.f32(i32 36, float %972, float %1073)  ; FMin(a,b)
  %1078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1079 = extractvalue %dx.types.CBufRet.i32 %1078, 1
  %1080 = and i32 %1079, 2
  %1081 = icmp ne i32 %1080, 0
  %1082 = xor i1 %1070, %1081
  %1083 = call float @dx.op.binary.f32(i32 36, float %1077, float %1030)  ; FMin(a,b)
  %1084 = and i1 %1082, %971
  %1085 = zext i1 %1084 to i32
  br label %1086

; <label>:1086                                    ; preds = %1076, %924
  %1087 = phi i32 [ %539, %924 ], [ %1085, %1076 ]
  %1088 = phi float [ 0.000000e+00, %924 ], [ %1083, %1076 ]
  %1089 = phi float [ %552, %924 ], [ %967, %1076 ]
  %1090 = icmp ne i32 %1087, 0
  %1091 = extractvalue %dx.types.CBufRet.f32 %845, 3
  %1092 = call float @dx.op.binary.f32(i32 35, float %1088, float %1091)  ; FMax(a,b)
  %1093 = call float @dx.op.binary.f32(i32 36, float %863, float %1092)  ; FMin(a,b)
  %1094 = zext i1 %1090 to i32
  br label %1095

; <label>:1095                                    ; preds = %1086, %920
  %1096 = phi i32 [ %1087, %1086 ], [ %539, %920 ]
  %1097 = phi i32 [ %1094, %1086 ], [ 0, %920 ]
  %1098 = phi float [ %1089, %1086 ], [ %540, %920 ]
  %1099 = phi float [ %1093, %1086 ], [ %863, %920 ]
  %1100 = extractvalue %dx.types.CBufRet.f32 %564, 2
  %1101 = fmul fast float %1100, %553
  %1102 = call float @dx.op.unary.f32(i32 23, float %1101)  ; Log(value)
  %1103 = fmul fast float %1102, 0x3FE62E4300000000
  %1104 = call float @dx.op.binary.f32(i32 35, float %1103, float 1.000000e+00)  ; FMax(a,b)
  %1105 = fmul fast float %1104, %1099
  %1106 = call float @dx.op.binary.f32(i32 36, float %1105, float %922)  ; FMin(a,b)
  %1107 = call float @dx.op.binary.f32(i32 35, float %1106, float %565)  ; FMax(a,b)
  %1108 = fsub fast float %510, %553
  %1109 = fadd fast float %1108, 0x3F1A36E2E0000000
  %1110 = call float @dx.op.binary.f32(i32 36, float %1109, float %1107)  ; FMin(a,b)
  %1111 = icmp eq i32 %733, 0
  br i1 %1111, label %1217, label %1112, !dx.controlflow.hints !72

; <label>:1112                                    ; preds = %1095
  %1113 = fcmp fast olt float %1109, %1107
  %1114 = fmul fast float %288, %231
  %1115 = fmul fast float %1114, %1110
  %1116 = fadd fast float %1115, %552
  %1117 = fmul fast float %288, %232
  %1118 = fmul fast float %1117, %1110
  %1119 = fadd fast float %1118, %552
  %1120 = fmul fast float %288, %233
  %1121 = fmul fast float %1120, %1110
  %1122 = fadd fast float %1121, %552
  br i1 %1113, label %1123, label %1128, !dx.controlflow.hints !73

; <label>:1123                                    ; preds = %1112
  %1124 = fmul fast float %1110, %286
  %1125 = fmul fast float %1110, %287
  %1126 = fadd fast float %1124, %550
  %1127 = fadd fast float %1125, %551
  br label %1128

; <label>:1128                                    ; preds = %1123, %1112
  %1129 = phi float [ %1126, %1123 ], [ %550, %1112 ]
  %1130 = phi float [ %1127, %1123 ], [ %551, %1112 ]
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.CBufRet.f32 %1131, 1
  %1134 = fsub fast float %1129, %1132
  %1135 = fsub fast float %1130, %1133
  %1136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %1137 = extractvalue %dx.types.CBufRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.CBufRet.f32 %1136, 1
  %1139 = fmul fast float %1134, %1137
  %1140 = fmul fast float %1135, %1138
  %1141 = fsub fast float 1.000000e+00, %1140
  %1142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1143 = extractvalue %dx.types.CBufRet.i32 %1142, 3
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1151, label %1145, !dx.controlflow.hints !56

; <label>:1145                                    ; preds = %1128
  %1146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %20, float %1139, float %1141, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = extractvalue %dx.types.ResRet.f32 %1146, 1
  %1149 = extractvalue %dx.types.ResRet.f32 %1146, 2
  %1150 = extractvalue %dx.types.ResRet.f32 %1146, 3
  br label %1157

; <label>:1151                                    ; preds = %1128
  %1152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %21, float %1139, float %1141, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1153 = extractvalue %dx.types.ResRet.f32 %1152, 0
  %1154 = extractvalue %dx.types.ResRet.f32 %1152, 1
  %1155 = extractvalue %dx.types.ResRet.f32 %1152, 2
  %1156 = extractvalue %dx.types.ResRet.f32 %1152, 3
  br label %1157

; <label>:1157                                    ; preds = %1151, %1145
  %1158 = phi float [ %1147, %1145 ], [ %1153, %1151 ]
  %1159 = phi float [ %1148, %1145 ], [ %1154, %1151 ]
  %1160 = phi float [ %1149, %1145 ], [ %1155, %1151 ]
  %1161 = phi float [ %1150, %1145 ], [ %1156, %1151 ]
  %1162 = extractvalue %dx.types.CBufRet.f32 %1136, 3
  %1163 = fmul fast float %1162, %1159
  %1164 = fmul fast float %1163, %1158
  %1165 = fsub fast float %1163, %1164
  %1166 = fcmp fast ole float %1165, 0.000000e+00
  %1167 = extractvalue %dx.types.CBufRet.f32 %1131, 2
  %1168 = fadd fast float %1164, %1167
  %1169 = fmul fast float %1162, %1160
  %1170 = fadd fast float %1169, %1167
  %1171 = fdiv fast float 1.000000e+00, %1165
  %1172 = select i1 %1166, float 1.000000e+06, float %1171
  %1173 = fsub fast float %1116, %1168
  %1174 = fmul fast float %1172, %1173
  %1175 = call float @dx.op.unary.f32(i32 7, float %1174)  ; Saturate(value)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1136, 2
  %1177 = fmul fast float %1176, %1175
  %1178 = fsub fast float %1176, %1177
  %1179 = fcmp fast olt float %1116, %1170
  %1180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1180, 3
  %1182 = select i1 %1179, float %1181, float 1.000000e+00
  %1183 = fmul fast float %1178, %1182
  %1184 = fsub fast float %1119, %1168
  %1185 = fmul fast float %1172, %1184
  %1186 = call float @dx.op.unary.f32(i32 7, float %1185)  ; Saturate(value)
  %1187 = fmul fast float %1176, %1186
  %1188 = fsub fast float %1176, %1187
  %1189 = fcmp fast olt float %1119, %1170
  %1190 = select i1 %1189, float %1181, float 1.000000e+00
  %1191 = fmul fast float %1188, %1190
  %1192 = fadd fast float %1191, %1183
  %1193 = fsub fast float %1122, %1168
  %1194 = fmul fast float %1172, %1193
  %1195 = call float @dx.op.unary.f32(i32 7, float %1194)  ; Saturate(value)
  %1196 = fmul fast float %1176, %1195
  %1197 = fsub fast float %1176, %1196
  %1198 = fcmp fast olt float %1122, %1170
  %1199 = select i1 %1198, float %1181, float 1.000000e+00
  %1200 = fmul fast float %1197, %1199
  %1201 = fadd fast float %1192, %1200
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 2
  %1204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1204, 0
  %1206 = extractvalue %dx.types.CBufRet.f32 %1204, 1
  %1207 = extractvalue %dx.types.CBufRet.f32 %1204, 2
  %1208 = fmul fast float %1110, 0x3FD5555560000000
  %1209 = fmul fast float %1208, %1161
  %1210 = fmul fast float %1209, %1203
  %1211 = fmul fast float %1210, %1201
  %1212 = extractvalue %dx.types.CBufRet.f32 %1180, 0
  %1213 = fmul fast float %1211, %1205
  %1214 = fmul fast float %1211, %1206
  %1215 = fmul fast float %1211, %1207
  %1216 = fmul fast float %1211, %1212
  br label %1217

; <label>:1217                                    ; preds = %1157, %1095
  %1218 = phi float [ %1211, %1157 ], [ 0.000000e+00, %1095 ]
  %1219 = phi float [ %1216, %1157 ], [ 0.000000e+00, %1095 ]
  %1220 = phi float [ %1213, %1157 ], [ 0.000000e+00, %1095 ]
  %1221 = phi float [ %1214, %1157 ], [ 0.000000e+00, %1095 ]
  %1222 = phi float [ %1215, %1157 ], [ 0.000000e+00, %1095 ]
  br i1 %849, label %1282, label %1223, !dx.controlflow.hints !74

; <label>:1223                                    ; preds = %1217
  %1224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.f32 %1224, 0
  %1226 = fsub fast float %1225, %552
  %1227 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %563, float %562, float %1226)  ; Dot3(ax,ay,az,bx,by,bz)
  %1228 = fmul fast float %385, %1227
  %1229 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1228)  ; FMax(a,b)
  %1230 = fcmp fast olt float %288, 0.000000e+00
  %1231 = call float @dx.op.binary.f32(i32 36, float %1110, float %1229)  ; FMin(a,b)
  br i1 %1230, label %1233, label %1232, !dx.controlflow.hints !75

; <label>:1232                                    ; preds = %1223
  br label %1233

; <label>:1233                                    ; preds = %1232, %1223
  %1234 = phi float [ 0.000000e+00, %1232 ], [ %1231, %1223 ]
  %1235 = phi float [ %1231, %1232 ], [ %1110, %1223 ]
  %1236 = phi float [ %1231, %1232 ], [ 0.000000e+00, %1223 ]
  %1237 = phi float [ %1110, %1232 ], [ %1231, %1223 ]
  %1238 = fsub fast float %1235, %1234
  %1239 = extractvalue %dx.types.CBufRet.f32 %1224, 1
  %1240 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1239)  ; FMin(a,b)
  %1241 = fsub fast float %552, %1225
  %1242 = fmul fast float %1240, 0x3FF7154760000000
  %1243 = fmul fast float %1242, %1241
  %1244 = call float @dx.op.unary.f32(i32 21, float %1243)  ; Exp(value)
  %1245 = fmul fast float %288, 0x3FF7154760000000
  %1246 = fmul fast float %1245, %1237
  %1247 = fmul fast float %1246, %1240
  %1248 = call float @dx.op.unary.f32(i32 21, float %1247)  ; Exp(value)
  %1249 = fmul fast float %1245, %1236
  %1250 = fmul fast float %1249, %1240
  %1251 = call float @dx.op.unary.f32(i32 21, float %1250)  ; Exp(value)
  %1252 = fsub fast float %1248, %1251
  %1253 = fmul fast float %1252, %1244
  %1254 = fmul fast float %1240, %288
  %1255 = fdiv fast float %1253, %1254
  %1256 = fadd fast float %1238, %1255
  %1257 = call float @dx.op.unary.f32(i32 6, float %288)  ; FAbs(value)
  %1258 = fcmp fast olt float %1257, 0x3F0FFB4800000000
  %1259 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1241)  ; FMax(a,b)
  %1260 = fmul fast float %1259, 0x3FF7154760000000
  %1261 = fmul fast float %1260, %1239
  %1262 = call float @dx.op.unary.f32(i32 21, float %1261)  ; Exp(value)
  %1263 = fmul fast float %1262, %1110
  %1264 = select i1 %1258, float %1263, float %1256
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 1
  %1267 = fmul fast float %1264, %1266
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 0
  %1270 = extractvalue %dx.types.CBufRet.f32 %1268, 1
  %1271 = extractvalue %dx.types.CBufRet.f32 %1268, 2
  %1272 = extractvalue %dx.types.CBufRet.f32 %1265, 2
  %1273 = fmul fast float %1269, %1267
  %1274 = fmul fast float %1270, %1267
  %1275 = fmul fast float %1271, %1267
  %1276 = fadd fast float %1273, %1220
  %1277 = fadd fast float %1274, %1221
  %1278 = fadd fast float %1275, %1222
  %1279 = fmul fast float %1272, %1267
  %1280 = fadd fast float %1279, %1219
  %1281 = fadd fast float %1267, %1218
  br label %1282

; <label>:1282                                    ; preds = %1233, %1217
  %1283 = phi float [ %1281, %1233 ], [ %1218, %1217 ]
  %1284 = phi float [ %1280, %1233 ], [ %1219, %1217 ]
  %1285 = phi float [ %1276, %1233 ], [ %1220, %1217 ]
  %1286 = phi float [ %1277, %1233 ], [ %1221, %1217 ]
  %1287 = phi float [ %1278, %1233 ], [ %1222, %1217 ]
  %1288 = icmp eq i32 %921, 0
  br i1 %1288, label %1483, label %1289, !dx.controlflow.hints !76

; <label>:1289                                    ; preds = %1282
  %1290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1291 = extractvalue %dx.types.CBufRet.f32 %1290, 3
  %1292 = fmul fast float %1291, %553
  %1293 = fcmp fast oeq float %1292, 0.000000e+00
  br i1 %1293, label %1308, label %1294, !dx.controlflow.hints !77

; <label>:1294                                    ; preds = %1289
  %1295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1296 = extractvalue %dx.types.CBufRet.f32 %1295, 3
  %1297 = fmul fast float %1296, %1292
  %1298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1299 = extractvalue %dx.types.CBufRet.f32 %1298, 0
  %1300 = extractvalue %dx.types.CBufRet.f32 %1298, 1
  %1301 = extractvalue %dx.types.CBufRet.f32 %1298, 2
  %1302 = fmul fast float %1299, %1297
  %1303 = fmul fast float %1300, %1297
  %1304 = fmul fast float %1301, %1297
  %1305 = call float @dx.op.unary.f32(i32 23, float %1302)  ; Log(value)
  %1306 = call float @dx.op.unary.f32(i32 23, float %1303)  ; Log(value)
  %1307 = call float @dx.op.unary.f32(i32 23, float %1304)  ; Log(value)
  br label %1308

; <label>:1308                                    ; preds = %1294, %1289
  %1309 = phi float [ %1305, %1294 ], [ 0.000000e+00, %1289 ]
  %1310 = phi float [ %1306, %1294 ], [ 0.000000e+00, %1289 ]
  %1311 = phi float [ %1307, %1294 ], [ 0.000000e+00, %1289 ]
  %1312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1313 = extractvalue %dx.types.CBufRet.f32 %1312, 0
  %1314 = extractvalue %dx.types.CBufRet.f32 %1312, 1
  %1315 = extractvalue %dx.types.CBufRet.f32 %1312, 2
  %1316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1317 = extractvalue %dx.types.CBufRet.f32 %1316, 0
  %1318 = extractvalue %dx.types.CBufRet.f32 %1316, 1
  %1319 = extractvalue %dx.types.CBufRet.f32 %1316, 2
  %1320 = fsub fast float %550, %1317
  %1321 = fsub fast float %551, %1318
  %1322 = fsub fast float %552, %1319
  %1323 = fmul fast float %1320, %1313
  %1324 = fmul fast float %1321, %1314
  %1325 = fmul fast float %1322, %1315
  %1326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.i32 %1326, 0
  %1328 = extractvalue %dx.types.CBufRet.i32 %1326, 1
  %1329 = uitofp i32 %1327 to float
  %1330 = uitofp i32 %1328 to float
  %1331 = fmul fast float %1323, %1329
  %1332 = fmul fast float %1324, %1330
  %1333 = fadd fast float %1331, 5.000000e-01
  %1334 = fadd fast float %1332, 5.000000e-01
  %1335 = call float @dx.op.unary.f32(i32 22, float %1333)  ; Frc(value)
  %1336 = call float @dx.op.unary.f32(i32 22, float %1334)  ; Frc(value)
  %1337 = call float @dx.op.unary.f32(i32 27, float %1333)  ; Round_ni(value)
  %1338 = call float @dx.op.unary.f32(i32 27, float %1334)  ; Round_ni(value)
  %1339 = fadd fast float %1337, 1.000000e+00
  %1340 = fadd fast float %1338, 1.000000e+00
  %1341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1342 = extractvalue %dx.types.CBufRet.f32 %1341, 0
  %1343 = extractvalue %dx.types.CBufRet.f32 %1341, 1
  %1344 = fmul fast float %1342, %1339
  %1345 = fmul fast float %1343, %1340
  %1346 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %20, float %1344, float %1345, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1347 = extractvalue %dx.types.ResRet.f32 %1346, 0
  %1348 = extractvalue %dx.types.ResRet.f32 %1346, 1
  %1349 = extractvalue %dx.types.ResRet.f32 %1346, 2
  %1350 = extractvalue %dx.types.ResRet.f32 %1346, 3
  %1351 = extractvalue %dx.types.CBufRet.i32 %1326, 2
  %1352 = extractvalue %dx.types.CBufRet.f32 %1341, 2
  %1353 = uitofp i32 %1351 to float
  %1354 = fadd fast float %1353, -1.000000e+00
  %1355 = fmul fast float %1354, %1347
  %1356 = fmul fast float %1354, %1348
  %1357 = fmul fast float %1354, %1349
  %1358 = fmul fast float %1354, %1350
  %1359 = fadd fast float %1355, 5.000000e-01
  %1360 = fadd fast float %1356, 5.000000e-01
  %1361 = fadd fast float %1357, 5.000000e-01
  %1362 = fadd fast float %1358, 5.000000e-01
  %1363 = fptoui float %1359 to i32
  %1364 = fptoui float %1360 to i32
  %1365 = fptoui float %1361 to i32
  %1366 = fptoui float %1362 to i32
  %1367 = uitofp i32 %1363 to float
  %1368 = uitofp i32 %1364 to float
  %1369 = uitofp i32 %1365 to float
  %1370 = uitofp i32 %1366 to float
  %1371 = fadd fast float %1367, 5.000000e-01
  %1372 = fadd fast float %1368, 5.000000e-01
  %1373 = fadd fast float %1369, 5.000000e-01
  %1374 = fadd fast float %1370, 5.000000e-01
  %1375 = fmul fast float %1371, %1352
  %1376 = fmul fast float %1372, %1352
  %1377 = fmul fast float %1373, %1352
  %1378 = fmul fast float %1374, %1352
  %1379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %1375, float %1325, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  %1381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %1376, float %1325, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1382 = extractvalue %dx.types.ResRet.f32 %1381, 0
  %1383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %1377, float %1325, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1384 = extractvalue %dx.types.ResRet.f32 %1383, 0
  %1385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %1378, float %1325, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1386 = extractvalue %dx.types.ResRet.f32 %1385, 0
  %1387 = fsub fast float %1384, %1386
  %1388 = fmul fast float %1387, %1335
  %1389 = fadd fast float %1388, %1386
  %1390 = fsub fast float %1382, %1380
  %1391 = fmul fast float %1390, %1335
  %1392 = fadd fast float %1391, %1380
  %1393 = fsub fast float %1392, %1389
  %1394 = fmul fast float %1393, %1336
  %1395 = fadd fast float %1394, %1389
  %1396 = fcmp fast ogt float %1395, 0.000000e+00
  br i1 %1396, label %1397, label %1465, !dx.controlflow.hints !78

; <label>:1397                                    ; preds = %1308
  %1398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.CBufRet.f32 %1398, 1
  %1401 = extractvalue %dx.types.CBufRet.f32 %1398, 2
  %1402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.f32 %1402, 0
  %1404 = extractvalue %dx.types.CBufRet.f32 %1402, 1
  %1405 = extractvalue %dx.types.CBufRet.f32 %1402, 2
  %1406 = fmul fast float %1321, %1313
  %1407 = fmul fast float %1322, %1313
  %1408 = fadd fast float %1323, %1403
  %1409 = fadd fast float %1406, %1404
  %1410 = fadd fast float %1407, %1405
  %1411 = fmul fast float %1408, %1399
  %1412 = fmul fast float %1409, %1399
  %1413 = fmul fast float %1410, %1399
  %1414 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %1411, float %1412, float %1413, float undef, i32 0, i32 0, i32 0, float %1309)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1415 = extractvalue %dx.types.ResRet.f32 %1414, 0
  %1416 = fmul fast float %1408, %1400
  %1417 = fmul fast float %1409, %1400
  %1418 = fmul fast float %1410, %1400
  %1419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %1416, float %1417, float %1418, float undef, i32 0, i32 0, i32 0, float %1310)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1420 = extractvalue %dx.types.ResRet.f32 %1419, 1
  %1421 = fmul fast float %1408, %1401
  %1422 = fmul fast float %1409, %1401
  %1423 = fmul fast float %1410, %1401
  %1424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %1421, float %1422, float %1423, float undef, i32 0, i32 0, i32 0, float %1311)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 2
  %1426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1427 = extractvalue %dx.types.CBufRet.f32 %1426, 1
  %1428 = fmul fast float %1420, %1415
  %1429 = fmul fast float %1428, %1425
  %1430 = call float @dx.op.unary.f32(i32 23, float %1429)  ; Log(value)
  %1431 = fmul fast float %1430, %1427
  %1432 = call float @dx.op.unary.f32(i32 21, float %1431)  ; Exp(value)
  %1433 = extractvalue %dx.types.CBufRet.f32 %1426, 2
  %1434 = fmul fast float %1395, %1395
  %1435 = fmul fast float %1434, %1432
  %1436 = fmul fast float %1435, %1433
  %1437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1438 = extractvalue %dx.types.CBufRet.f32 %1437, 3
  %1439 = fmul fast float %1438, %1436
  %1440 = bitcast float %1439 to i32
  %1441 = sitofp i32 %1440 to float
  %1442 = fptosi float %1441 to i32
  %1443 = bitcast i32 %1442 to float
  %1444 = fsub fast float 1.000000e+00, %1436
  %1445 = bitcast float %1444 to i32
  %1446 = sitofp i32 %1445 to float
  %1447 = fptosi float %1446 to i32
  %1448 = bitcast i32 %1447 to float
  %1449 = fadd fast float %1443, %1448
  %1450 = bitcast float %1449 to i32
  %1451 = sub nsw i32 2129859010, %1450
  %1452 = bitcast i32 %1451 to float
  %1453 = fmul fast float %1452, %1443
  %1454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1455 = extractvalue %dx.types.CBufRet.f32 %1454, 2
  %1456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.f32 %1456, 0
  %1458 = fmul fast float %1453, %1457
  %1459 = fadd fast float %1458, 1.000000e+00
  %1460 = bitcast float %1459 to i32
  %1461 = sub nsw i32 2129859010, %1460
  %1462 = bitcast i32 %1461 to float
  %1463 = fmul fast float %1453, %1455
  %1464 = fmul fast float %1463, %1462
  br label %1465

; <label>:1465                                    ; preds = %1397, %1308
  %1466 = phi float [ %1464, %1397 ], [ %1395, %1308 ]
  %1467 = fmul fast float %1466, %1110
  %1468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1469 = extractvalue %dx.types.CBufRet.f32 %1468, 0
  %1470 = extractvalue %dx.types.CBufRet.f32 %1468, 1
  %1471 = extractvalue %dx.types.CBufRet.f32 %1468, 2
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.f32 %1472, 1
  %1474 = fmul fast float %1469, %1467
  %1475 = fmul fast float %1470, %1467
  %1476 = fmul fast float %1471, %1467
  %1477 = fadd fast float %1474, %1285
  %1478 = fadd fast float %1475, %1286
  %1479 = fadd fast float %1476, %1287
  %1480 = fmul fast float %1473, %1467
  %1481 = fadd fast float %1480, %1284
  %1482 = fadd fast float %1467, %1283
  br label %1483

; <label>:1483                                    ; preds = %1465, %1282
  %1484 = phi float [ %1482, %1465 ], [ %1283, %1282 ]
  %1485 = phi float [ %1481, %1465 ], [ %1284, %1282 ]
  %1486 = phi float [ %1477, %1465 ], [ %1285, %1282 ]
  %1487 = phi float [ %1478, %1465 ], [ %1286, %1282 ]
  %1488 = phi float [ %1479, %1465 ], [ %1287, %1282 ]
  br i1 %844, label %1631, label %1489, !dx.controlflow.hints !79

; <label>:1489                                    ; preds = %1483
  %1490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.f32 %1490, 0
  %1492 = extractvalue %dx.types.CBufRet.f32 %1490, 1
  %1493 = extractvalue %dx.types.CBufRet.f32 %1490, 2
  %1494 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1495 = extractvalue %dx.types.CBufRet.i32 %1494, 0
  %1496 = icmp ne i32 %1495, 0
  %1497 = zext i1 %1496 to i32
  %1498 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1499 = extractvalue %dx.types.CBufRet.i32 %1498, 0
  %1500 = icmp eq i32 %1499, 0
  br i1 %1500, label %1534, label %1501

; <label>:1501                                    ; preds = %1489
  br label %1502

; <label>:1502                                    ; preds = %1529, %1501
  %1503 = phi i32 [ %1530, %1529 ], [ 0, %1501 ]
  %1504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1503, i32 0)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.f32 %1504, 0
  %1506 = extractvalue %dx.types.ResRet.f32 %1504, 1
  %1507 = extractvalue %dx.types.ResRet.f32 %1504, 2
  %1508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1503, i32 16)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.f32 %1508, 0
  %1510 = extractvalue %dx.types.ResRet.f32 %1508, 1
  %1511 = extractvalue %dx.types.ResRet.f32 %1508, 2
  %1512 = fsub fast float %1505, %1509
  %1513 = fsub fast float %1506, %1510
  %1514 = fsub fast float %1507, %1511
  %1515 = fadd fast float %1509, %1505
  %1516 = fadd fast float %1510, %1506
  %1517 = fadd fast float %1511, %1507
  %1518 = fcmp fast olt float %550, %1512
  %1519 = fcmp fast olt float %551, %1513
  %1520 = fcmp fast olt float %552, %1514
  %1521 = or i1 %1518, %1519
  %1522 = or i1 %1520, %1521
  %1523 = fcmp fast ogt float %550, %1515
  %1524 = fcmp fast ogt float %551, %1516
  %1525 = fcmp fast ogt float %552, %1517
  %1526 = or i1 %1523, %1524
  %1527 = or i1 %1525, %1526
  %1528 = or i1 %1522, %1527
  br i1 %1528, label %1529, label %1532, !dx.controlflow.hints !80

; <label>:1529                                    ; preds = %1502
  %1530 = add nuw i32 %1503, 1
  %1531 = icmp ult i32 %1530, %1499
  br i1 %1531, label %1502, label %1532

; <label>:1532                                    ; preds = %1529, %1502
  %1533 = phi i32 [ 255, %1529 ], [ %1503, %1502 ]
  br label %1534

; <label>:1534                                    ; preds = %1532, %1489
  %1535 = phi i32 [ 255, %1489 ], [ %1533, %1532 ]
  %1536 = icmp eq i32 %1535, 255
  br i1 %1536, label %1546, label %1537, !dx.controlflow.hints !81

; <label>:1537                                    ; preds = %1534
  %1538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1535, i32 32)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.f32 %1538, 0
  %1540 = extractvalue %dx.types.ResRet.f32 %1538, 1
  %1541 = extractvalue %dx.types.ResRet.f32 %1538, 2
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1535, i32 156)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = icmp ne i32 %1543, 0
  %1545 = zext i1 %1544 to i32
  br label %1546

; <label>:1546                                    ; preds = %1537, %1534
  %1547 = phi float [ %1539, %1537 ], [ %1491, %1534 ]
  %1548 = phi float [ %1540, %1537 ], [ %1492, %1534 ]
  %1549 = phi float [ %1541, %1537 ], [ %1493, %1534 ]
  %1550 = phi i32 [ %1545, %1537 ], [ %1497, %1534 ]
  %1551 = icmp eq i32 %1550, 0
  br i1 %1551, label %1552, label %1621, !dx.controlflow.hints !82

; <label>:1552                                    ; preds = %1546
  %1553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1554 = extractvalue %dx.types.CBufRet.f32 %1553, 3
  %1555 = extractvalue %dx.types.CBufRet.f32 %754, 0
  %1556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.f32 %1556, 2
  %1558 = extractvalue %dx.types.CBufRet.f32 %1556, 3
  br i1 %1536, label %1569, label %1559, !dx.controlflow.hints !83

; <label>:1559                                    ; preds = %1552
  %1560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1535, i32 60)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.f32 %1560, 0
  %1562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1535, i32 64)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.f32 %1562, 0
  %1564 = extractvalue %dx.types.ResRet.f32 %1562, 1
  %1565 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1535, i32 72)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.f32 %1565, 0
  %1567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1535, i32 96)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.f32 %1567, 0
  br label %1569

; <label>:1569                                    ; preds = %1559, %1552
  %1570 = phi float [ %1561, %1559 ], [ %757, %1552 ]
  %1571 = phi float [ %1566, %1559 ], [ %755, %1552 ]
  %1572 = phi float [ %1568, %1559 ], [ %1555, %1552 ]
  %1573 = phi float [ %1563, %1559 ], [ %1557, %1552 ]
  %1574 = phi float [ %1564, %1559 ], [ %1558, %1552 ]
  %1575 = call float @dx.op.binary.f32(i32 35, float %838, float 0.000000e+00)  ; FMax(a,b)
  %1576 = call float @dx.op.binary.f32(i32 36, float %1575, float 1.000000e+00)  ; FMin(a,b)
  %1577 = call float @dx.op.unary.f32(i32 24, float %1576)  ; Sqrt(value)
  %1578 = call float @dx.op.binary.f32(i32 35, float %841, float 0x3F847AE140000000)  ; FMax(a,b)
  %1579 = fsub fast float %839, %552
  %1580 = fsub fast float %552, %840
  %1581 = call float @dx.op.binary.f32(i32 36, float %1580, float %1579)  ; FMin(a,b)
  %1582 = fdiv fast float %1581, %1578
  %1583 = call float @dx.op.unary.f32(i32 7, float %1582)  ; Saturate(value)
  %1584 = fsub fast float %552, %1571
  %1585 = fdiv fast float %1584, %1570
  %1586 = call float @dx.op.unary.f32(i32 7, float %1585)  ; Saturate(value)
  %1587 = fsub fast float 1.000000e+00, %1586
  %1588 = fmul float %1583, %1587
  %1589 = fmul float %1588, %1588
  %1590 = fmul fast float %1577, %1554
  %1591 = fmul fast float %1590, %1589
  %1592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1593 = extractvalue %dx.types.CBufRet.f32 %1592, 2
  %1594 = extractvalue %dx.types.CBufRet.f32 %1592, 1
  %1595 = fsub fast float %1591, %1594
  %1596 = fsub fast float %1593, %1594
  %1597 = fdiv fast float %1595, %1596
  %1598 = call float @dx.op.unary.f32(i32 7, float %1597)  ; Saturate(value)
  %1599 = fmul fast float %1598, %1572
  %1600 = fcmp fast ogt float %1574, 0.000000e+00
  br i1 %1600, label %1601, label %1621, !dx.controlflow.hints !84

; <label>:1601                                    ; preds = %1569
  %1602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1603 = extractvalue %dx.types.CBufRet.f32 %1602, 0
  %1604 = extractvalue %dx.types.CBufRet.f32 %1602, 1
  %1605 = extractvalue %dx.types.CBufRet.f32 %1602, 2
  %1606 = fsub fast float %550, %1603
  %1607 = fsub fast float %551, %1604
  %1608 = fsub fast float %552, %1605
  %1609 = fmul fast float %1606, %1606
  %1610 = fmul fast float %1607, %1607
  %1611 = fadd fast float %1609, %1610
  %1612 = fmul fast float %1608, %1608
  %1613 = fadd fast float %1611, %1612
  %1614 = call float @dx.op.unary.f32(i32 24, float %1613)  ; Sqrt(value)
  %1615 = fsub fast float %1614, %1573
  %1616 = fsub fast float %1574, %1573
  %1617 = fdiv fast float %1615, %1616
  %1618 = call float @dx.op.unary.f32(i32 7, float %1617)  ; Saturate(value)
  %1619 = fmul fast float %1618, %1618
  %1620 = fmul fast float %1619, %1599
  br label %1621

; <label>:1621                                    ; preds = %1601, %1569, %1546
  %1622 = phi float [ 0.000000e+00, %1546 ], [ %1620, %1601 ], [ %1599, %1569 ]
  %1623 = fmul fast float %1622, %1110
  %1624 = fmul fast float %1623, %1547
  %1625 = fmul fast float %1623, %1548
  %1626 = fmul fast float %1623, %1549
  %1627 = fadd fast float %1624, %1486
  %1628 = fadd fast float %1625, %1487
  %1629 = fadd fast float %1626, %1488
  %1630 = fadd fast float %1623, %1484
  br label %1631

; <label>:1631                                    ; preds = %1621, %1483
  %1632 = phi float [ %1630, %1621 ], [ %1484, %1483 ]
  %1633 = phi float [ %1627, %1621 ], [ %1486, %1483 ]
  %1634 = phi float [ %1628, %1621 ], [ %1487, %1483 ]
  %1635 = phi float [ %1629, %1621 ], [ %1488, %1483 ]
  %1636 = icmp eq i32 %1097, 0
  br i1 %1636, label %1680, label %1637, !dx.controlflow.hints !85

; <label>:1637                                    ; preds = %1631
  %1638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1639 = extractvalue %dx.types.CBufRet.f32 %1638, 1
  %1640 = fsub fast float %1110, %1639
  %1641 = extractvalue %dx.types.CBufRet.f32 %1638, 3
  %1642 = fmul fast float %1640, %1641
  %1643 = call float @dx.op.unary.f32(i32 7, float %1642)  ; Saturate(value)
  %1644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.f32 %1644, 3
  %1646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1647 = extractvalue %dx.types.CBufRet.f32 %1646, 2
  %1648 = fsub fast float %1647, %1098
  %1649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1650 = extractvalue %dx.types.CBufRet.f32 %1649, 3
  %1651 = fmul fast float %1648, %1650
  %1652 = call float @dx.op.unary.f32(i32 7, float %1651)  ; Saturate(value)
  %1653 = fmul fast float %1652, %1645
  %1654 = extractvalue %dx.types.CBufRet.f32 %1649, 0
  %1655 = fsub fast float %553, %1654
  %1656 = extractvalue %dx.types.CBufRet.f32 %1649, 1
  %1657 = fmul fast float %1655, %1656
  %1658 = call float @dx.op.unary.f32(i32 7, float %1657)  ; Saturate(value)
  %1659 = fsub fast float 1.000000e+00, %1643
  %1660 = fmul fast float %1658, %1659
  %1661 = fadd fast float %1660, %1643
  %1662 = extractvalue %dx.types.CBufRet.f32 %1638, 0
  %1663 = fsub fast float %1653, %1662
  %1664 = fmul fast float %1663, %1661
  %1665 = fadd fast float %1664, %1662
  %1666 = extractvalue %dx.types.CBufRet.f32 %1644, 0
  %1667 = extractvalue %dx.types.CBufRet.f32 %1644, 1
  %1668 = extractvalue %dx.types.CBufRet.f32 %1644, 2
  %1669 = fmul fast float %1665, %1110
  %1670 = extractvalue %dx.types.CBufRet.f32 %1649, 2
  %1671 = fmul fast float %1669, %1666
  %1672 = fmul fast float %1669, %1667
  %1673 = fmul fast float %1669, %1668
  %1674 = fadd fast float %1671, %1633
  %1675 = fadd fast float %1672, %1634
  %1676 = fadd fast float %1673, %1635
  %1677 = fmul fast float %1669, %1670
  %1678 = fadd fast float %1677, %1485
  %1679 = fadd fast float %1669, %1632
  br label %1680

; <label>:1680                                    ; preds = %1637, %1631
  %1681 = phi float [ %1679, %1637 ], [ %1632, %1631 ]
  %1682 = phi float [ %1678, %1637 ], [ %1485, %1631 ]
  %1683 = phi float [ %1674, %1637 ], [ %1633, %1631 ]
  %1684 = phi float [ %1675, %1637 ], [ %1634, %1631 ]
  %1685 = phi float [ %1676, %1637 ], [ %1635, %1631 ]
  %1686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.f32 %1686, 1
  %1688 = fcmp fast ogt float %1681, %1687
  br i1 %1688, label %1689, label %1695, !dx.controlflow.hints !86

; <label>:1689                                    ; preds = %1680
  %1690 = fdiv fast float 1.000000e+00, %1681
  %1691 = fmul fast float %1690, %1683
  %1692 = fmul fast float %1690, %1684
  %1693 = fmul fast float %1690, %1685
  %1694 = fmul fast float %1690, %1682
  br label %1695

; <label>:1695                                    ; preds = %1689, %1680
  %1696 = phi float [ %1694, %1689 ], [ %1682, %1680 ]
  %1697 = phi float [ %1691, %1689 ], [ %1683, %1680 ]
  %1698 = phi float [ %1692, %1689 ], [ %1684, %1680 ]
  %1699 = phi float [ %1693, %1689 ], [ %1685, %1680 ]
  br i1 %1688, label %1702, label %1700, !dx.controlflow.hints !87

; <label>:1700                                    ; preds = %1695
  %1701 = fadd fast float %1110, %553
  br label %2680

; <label>:1702                                    ; preds = %1695
  %1703 = fmul fast float %1681, 0xBFF7154760000000
  %1704 = call float @dx.op.unary.f32(i32 21, float %1703)  ; Exp(value)
  %1705 = call float @dx.op.unary.f32(i32 7, float %1704)  ; Saturate(value)
  %1706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1707 = extractvalue %dx.types.CBufRet.f32 %1706, 3
  %1708 = fcmp fast une float %1707, 0.000000e+00
  %1709 = extractvalue %dx.types.CBufRet.f32 %1706, 0
  %1710 = extractvalue %dx.types.CBufRet.f32 %1706, 1
  %1711 = extractvalue %dx.types.CBufRet.f32 %1706, 2
  br i1 %1708, label %1712, label %1734, !dx.controlflow.hints !88

; <label>:1712                                    ; preds = %1702
  %1713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1714 = extractvalue %dx.types.CBufRet.f32 %1713, 0
  %1715 = extractvalue %dx.types.CBufRet.f32 %1713, 1
  %1716 = extractvalue %dx.types.CBufRet.f32 %1713, 2
  %1717 = call float @dx.op.dot3.f32(i32 55, float %1709, float %1710, float %1711, float %286, float %287, float %288)  ; Dot3(ax,ay,az,bx,by,bz)
  %1718 = fcmp fast ogt float %1696, 0.000000e+00
  %1719 = select i1 %1718, float 1.000000e+00, float -1.000000e+00
  %1720 = fmul fast float %1719, 5.000000e-01
  %1721 = fmul fast float %1720, %1717
  %1722 = fmul fast float %1719, %1696
  %1723 = fadd fast float %1721, 4.921875e-01
  %1724 = fadd fast float %1722, -3.125000e-02
  %1725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %1723, float 0x3FB25F3060000000, float %1724, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1726 = extractvalue %dx.types.ResRet.f32 %1725, 0
  %1727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1728 = extractvalue %dx.types.CBufRet.f32 %1727, 0
  %1729 = fmul fast float %1726, 0x400921FB60000000
  %1730 = fmul fast float %1729, %1728
  %1731 = fmul fast float %1730, %1714
  %1732 = fmul fast float %1730, %1715
  %1733 = fmul fast float %1730, %1716
  br label %1734

; <label>:1734                                    ; preds = %1712, %1702
  %1735 = phi float [ %1731, %1712 ], [ 0.000000e+00, %1702 ]
  %1736 = phi float [ %1732, %1712 ], [ 0.000000e+00, %1702 ]
  %1737 = phi float [ %1733, %1712 ], [ 0.000000e+00, %1702 ]
  %1738 = fdiv fast float 1.000000e+00, %1709
  %1739 = fdiv fast float 1.000000e+00, %1710
  %1740 = fdiv fast float 1.000000e+00, %1711
  %1741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1742 = extractvalue %dx.types.CBufRet.f32 %1741, 0
  %1743 = fmul fast float %1742, %1709
  %1744 = fmul fast float %1742, %1710
  %1745 = fmul fast float %1742, %1711
  %1746 = fadd fast float %1743, %550
  %1747 = fsub fast float -0.000000e+00, %1746
  %1748 = fadd fast float %1744, %551
  %1749 = fsub fast float -0.000000e+00, %1748
  %1750 = fadd fast float %1745, %552
  br i1 %566, label %1822, label %1751, !dx.controlflow.hints !52

; <label>:1751                                    ; preds = %1734
  %1752 = extractvalue %dx.types.CBufRet.f32 %1741, 1
  %1753 = fcmp fast ogt float %1752, %1742
  br i1 %1753, label %1754, label %1756, !dx.controlflow.hints !53

; <label>:1754                                    ; preds = %1751
  %1755 = fsub fast float %1752, %1742
  br label %1813

; <label>:1756                                    ; preds = %1751
  %1757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1758 = extractvalue %dx.types.CBufRet.i32 %1757, 3
  %1759 = icmp eq i32 %1758, 0
  %1760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1761 = extractvalue %dx.types.CBufRet.f32 %1760, 2
  %1762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1763 = extractvalue %dx.types.CBufRet.f32 %1762, 2
  %1764 = fsub fast float %1761, %1750
  %1765 = fadd fast float %1764, %1763
  %1766 = fsub fast float 0xC7EFFFFFE0000000, %1750
  br i1 %1759, label %1776, label %1767, !dx.controlflow.hints !40

; <label>:1767                                    ; preds = %1756
  %1768 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1747, float %1749, float %1765)  ; Dot3(ax,ay,az,bx,by,bz)
  %1769 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1709, float %1710, float %1711)  ; Dot3(ax,ay,az,bx,by,bz)
  %1770 = fdiv fast float 1.000000e+00, %1769
  %1771 = fmul fast float %1770, %1768
  %1772 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1747, float %1749, float %1766)  ; Dot3(ax,ay,az,bx,by,bz)
  %1773 = fmul fast float %1770, %1772
  %1774 = call float @dx.op.binary.f32(i32 36, float %1771, float %1773)  ; FMin(a,b)
  %1775 = call float @dx.op.binary.f32(i32 35, float %1771, float %1773)  ; FMax(a,b)
  br label %1806

; <label>:1776                                    ; preds = %1756
  %1777 = extractvalue %dx.types.CBufRet.f32 %1760, 0
  %1778 = extractvalue %dx.types.CBufRet.f32 %1760, 1
  %1779 = extractvalue %dx.types.CBufRet.f32 %1762, 0
  %1780 = extractvalue %dx.types.CBufRet.f32 %1762, 1
  %1781 = fsub fast float %1777, %1746
  %1782 = fmul fast float %1738, %1781
  %1783 = fadd fast float %1781, %1779
  %1784 = fmul fast float %1783, %1738
  %1785 = call float @dx.op.binary.f32(i32 36, float %1782, float %1784)  ; FMin(a,b)
  %1786 = call float @dx.op.binary.f32(i32 35, float %1782, float %1784)  ; FMax(a,b)
  %1787 = fsub fast float %1778, %1748
  %1788 = fmul fast float %1739, %1787
  %1789 = fadd fast float %1787, %1780
  %1790 = fmul fast float %1789, %1739
  %1791 = call float @dx.op.binary.f32(i32 36, float %1788, float %1790)  ; FMin(a,b)
  %1792 = call float @dx.op.binary.f32(i32 35, float %1785, float %1791)  ; FMax(a,b)
  %1793 = call float @dx.op.binary.f32(i32 35, float %1788, float %1790)  ; FMax(a,b)
  %1794 = call float @dx.op.binary.f32(i32 36, float %1786, float %1793)  ; FMin(a,b)
  %1795 = fmul fast float %1740, %1766
  %1796 = fmul fast float %1740, %1765
  %1797 = call float @dx.op.binary.f32(i32 36, float %1795, float %1796)  ; FMin(a,b)
  %1798 = call float @dx.op.binary.f32(i32 35, float %1792, float %1797)  ; FMax(a,b)
  %1799 = call float @dx.op.binary.f32(i32 35, float %1795, float %1796)  ; FMax(a,b)
  %1800 = call float @dx.op.binary.f32(i32 36, float %1794, float %1799)  ; FMin(a,b)
  %1801 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1798)  ; FMax(a,b)
  %1802 = fcmp fast ult float %1800, %1801
  br i1 %1802, label %1806, label %1803, !dx.controlflow.hints !41

; <label>:1803                                    ; preds = %1776
  %1804 = call float @dx.op.binary.f32(i32 36, float %1798, float %1800)  ; FMin(a,b)
  %1805 = call float @dx.op.binary.f32(i32 35, float %1798, float %1800)  ; FMax(a,b)
  br label %1806

; <label>:1806                                    ; preds = %1803, %1776, %1767
  %1807 = phi float [ %1774, %1767 ], [ %1804, %1803 ], [ 0.000000e+00, %1776 ]
  %1808 = phi float [ %1775, %1767 ], [ %1805, %1803 ], [ 0.000000e+00, %1776 ]
  %1809 = fcmp fast ogt float %1807, 0.000000e+00
  br i1 %1809, label %1813, label %1810, !dx.controlflow.hints !54

; <label>:1810                                    ; preds = %1806
  %1811 = fcmp fast ugt float %1808, 0.000000e+00
  br i1 %1811, label %1812, label %1813, !dx.controlflow.hints !55

; <label>:1812                                    ; preds = %1810
  br label %1813

; <label>:1813                                    ; preds = %1812, %1810, %1806, %1754
  %1814 = phi float [ %1755, %1754 ], [ 0.000000e+00, %1812 ], [ 0x47EFFFFFE0000000, %1810 ], [ %1807, %1806 ]
  %1815 = phi i32 [ %375, %1754 ], [ %375, %1812 ], [ 0, %1810 ], [ %375, %1806 ]
  %1816 = icmp ne i32 %1815, 0
  %1817 = zext i1 %1816 to i32
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 2
  %1820 = call float @dx.op.binary.f32(i32 35, float %1814, float %1819)  ; FMax(a,b)
  %1821 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1820)  ; FMin(a,b)
  br label %1822

; <label>:1822                                    ; preds = %1813, %1734
  %1823 = phi float [ %1821, %1813 ], [ 0x47EFFFFFE0000000, %1734 ]
  %1824 = phi i32 [ %1817, %1813 ], [ 0, %1734 ]
  %1825 = fsub fast float %1746, %737
  %1826 = fsub fast float %1748, %738
  %1827 = fmul fast float %1825, %742
  %1828 = fmul fast float %1826, %743
  %1829 = call float @dx.op.binary.f32(i32 36, float %1827, float %1828)  ; FMin(a,b)
  %1830 = fcmp fast olt float %1829, 0.000000e+00
  %1831 = call float @dx.op.binary.f32(i32 35, float %1827, float %1828)  ; FMax(a,b)
  %1832 = fcmp fast ogt float %1831, 1.000000e+00
  %1833 = or i1 %1830, %1832
  %1834 = fcmp fast olt float %1750, %751
  %1835 = or i1 %1833, %1834
  %1836 = fcmp fast ogt float %1750, %758
  %1837 = or i1 %1835, %1836
  %1838 = extractvalue %dx.types.CBufRet.f32 %741, 0
  br i1 %1837, label %1839, label %1867, !dx.controlflow.hints !61

; <label>:1839                                    ; preds = %1822
  %1840 = extractvalue %dx.types.CBufRet.f32 %741, 1
  %1841 = fsub fast float %737, %1746
  %1842 = fmul fast float %1841, %1738
  %1843 = fadd fast float %1841, %1838
  %1844 = fmul fast float %1843, %1738
  %1845 = call float @dx.op.binary.f32(i32 36, float %1842, float %1844)  ; FMin(a,b)
  %1846 = call float @dx.op.binary.f32(i32 35, float %1842, float %1844)  ; FMax(a,b)
  %1847 = fsub fast float %738, %1748
  %1848 = fmul fast float %1847, %1739
  %1849 = fadd fast float %1847, %1840
  %1850 = fmul fast float %1849, %1739
  %1851 = call float @dx.op.binary.f32(i32 36, float %1848, float %1850)  ; FMin(a,b)
  %1852 = call float @dx.op.binary.f32(i32 35, float %1845, float %1851)  ; FMax(a,b)
  %1853 = call float @dx.op.binary.f32(i32 35, float %1848, float %1850)  ; FMax(a,b)
  %1854 = call float @dx.op.binary.f32(i32 36, float %1846, float %1853)  ; FMin(a,b)
  %1855 = fsub fast float %751, %1750
  %1856 = fmul fast float %1855, %1740
  %1857 = fsub fast float %755, %1750
  %1858 = fadd fast float %1857, %757
  %1859 = fmul fast float %1858, %1740
  %1860 = call float @dx.op.binary.f32(i32 36, float %1856, float %1859)  ; FMin(a,b)
  %1861 = call float @dx.op.binary.f32(i32 35, float %1852, float %1860)  ; FMax(a,b)
  %1862 = call float @dx.op.binary.f32(i32 35, float %1856, float %1859)  ; FMax(a,b)
  %1863 = call float @dx.op.binary.f32(i32 36, float %1854, float %1862)  ; FMin(a,b)
  %1864 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1861)  ; FMax(a,b)
  %1865 = fcmp fast oge float %1863, %1864
  %1866 = select i1 %1865, float %1861, float 1.000000e+07
  br label %1882

; <label>:1867                                    ; preds = %1822
  %1868 = fsub fast float 1.000000e+00, %1828
  %1869 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1827, float %1868, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1870 = extractvalue %dx.types.ResRet.f32 %1869, 0
  %1871 = extractvalue %dx.types.ResRet.f32 %1869, 1
  %1872 = extractvalue %dx.types.ResRet.f32 %1869, 2
  %1873 = extractvalue %dx.types.ResRet.f32 %1869, 3
  %1874 = fmul fast float %1838, 9.765625e-04
  %1875 = fcmp fast oeq float %1870, 0.000000e+00
  %1876 = fcmp ule float %1750, %1872
  %1877 = fcmp uge float %1750, %1871
  %1878 = or i1 %1877, %1876
  %1879 = or i1 %1875, %1878
  %1880 = zext i1 %1879 to i32
  %1881 = xor i32 %1880, 1
  br label %1882

; <label>:1882                                    ; preds = %1867, %1839
  %1883 = phi float [ %1866, %1839 ], [ %1874, %1867 ]
  %1884 = phi float [ %535, %1839 ], [ %1870, %1867 ]
  %1885 = phi float [ %536, %1839 ], [ %1871, %1867 ]
  %1886 = phi float [ %537, %1839 ], [ %1872, %1867 ]
  %1887 = phi float [ %538, %1839 ], [ %1873, %1867 ]
  %1888 = phi i32 [ 0, %1839 ], [ %1881, %1867 ]
  %1889 = icmp eq i32 %1888, 0
  %1890 = call float @dx.op.binary.f32(i32 35, float %1883, float %846)  ; FMax(a,b)
  %1891 = call float @dx.op.binary.f32(i32 36, float %1823, float %1890)  ; FMin(a,b)
  br i1 %849, label %1904, label %1892, !dx.controlflow.hints !65

; <label>:1892                                    ; preds = %1882
  %1893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1894 = extractvalue %dx.types.CBufRet.f32 %1893, 3
  %1895 = extractvalue %dx.types.CBufRet.f32 %1893, 2
  %1896 = fmul fast float %1894, %1742
  %1897 = fdiv fast float %1896, %1742
  %1898 = fadd fast float %1897, 1.000000e+00
  %1899 = call float @dx.op.unary.f32(i32 23, float %1898)  ; Log(value)
  %1900 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1899)  ; FMin(a,b)
  %1901 = fmul fast float %1895, %1742
  %1902 = fmul fast float %1901, %1900
  %1903 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1902)  ; FMin(a,b)
  br label %1904

; <label>:1904                                    ; preds = %1892, %1882
  %1905 = phi float [ %1903, %1892 ], [ 0x47EFFFFFE0000000, %1882 ]
  br i1 %864, label %1961, label %1906, !dx.controlflow.hints !66

; <label>:1906                                    ; preds = %1904
  %1907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.f32 %1907, 0
  %1909 = extractvalue %dx.types.CBufRet.f32 %1907, 1
  %1910 = extractvalue %dx.types.CBufRet.f32 %1907, 2
  %1911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.f32 %1911, 0
  %1913 = extractvalue %dx.types.CBufRet.f32 %1911, 1
  %1914 = extractvalue %dx.types.CBufRet.f32 %1911, 2
  %1915 = fsub fast float %1746, %1912
  %1916 = fsub fast float %1748, %1913
  %1917 = fsub fast float %1750, %1914
  %1918 = fmul fast float %1915, %1908
  %1919 = fmul fast float %1916, %1909
  %1920 = fmul fast float %1917, %1910
  %1921 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.i32 %1921, 3
  %1923 = icmp eq i32 %1922, 0
  br i1 %1923, label %1927, label %1924, !dx.controlflow.hints !67

; <label>:1924                                    ; preds = %1906
  %1925 = call float @dx.op.unary.f32(i32 22, float %1918)  ; Frc(value)
  %1926 = call float @dx.op.unary.f32(i32 22, float %1919)  ; Frc(value)
  br label %1927

; <label>:1927                                    ; preds = %1924, %1906
  %1928 = phi float [ %1925, %1924 ], [ %1918, %1906 ]
  %1929 = phi float [ %1926, %1924 ], [ %1919, %1906 ]
  %1930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1928, float %1929, float %1920, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1931 = extractvalue %dx.types.ResRet.f32 %1930, 0
  %1932 = fmul fast float %1931, 2.000000e+00
  %1933 = fadd fast float %1932, -1.000000e+00
  %1934 = extractvalue %dx.types.CBufRet.f32 %1907, 3
  %1935 = fmul fast float %1933, %1934
  %1936 = fcmp fast olt float %1935, 0.000000e+00
  %1937 = fcmp fast oge float %1920, 0.000000e+00
  %1938 = fcmp fast ole float %1920, 1.000000e+00
  br i1 %1923, label %1941, label %1939, !dx.controlflow.hints !68

; <label>:1939                                    ; preds = %1927
  %1940 = and i1 %1937, %1938
  br label %1951

; <label>:1941                                    ; preds = %1927
  %1942 = fcmp fast oge float %1918, 0.000000e+00
  %1943 = fcmp fast oge float %1919, 0.000000e+00
  %1944 = and i1 %1942, %1943
  %1945 = and i1 %1937, %1944
  %1946 = fcmp fast ole float %1918, 1.000000e+00
  %1947 = fcmp fast ole float %1919, 1.000000e+00
  %1948 = and i1 %1946, %1947
  %1949 = and i1 %1938, %1948
  %1950 = and i1 %1945, %1949
  br label %1951

; <label>:1951                                    ; preds = %1941, %1939
  %1952 = phi i1 [ %1940, %1939 ], [ %1950, %1941 ]
  %1953 = and i1 %1936, %1952
  %1954 = call float @dx.op.unary.f32(i32 6, float %1935)  ; FAbs(value)
  %1955 = extractvalue %dx.types.CBufRet.f32 %845, 1
  %1956 = extractvalue %dx.types.CBufRet.f32 %845, 0
  %1957 = call float @dx.op.binary.f32(i32 35, float %1954, float %1956)  ; FMax(a,b)
  %1958 = select i1 %1953, float %1955, float %1957
  %1959 = zext i1 %1953 to i32
  %1960 = call float @dx.op.binary.f32(i32 36, float %1891, float %1958)  ; FMin(a,b)
  br label %1961

; <label>:1961                                    ; preds = %1951, %1904
  %1962 = phi float [ %1960, %1951 ], [ %1891, %1904 ]
  %1963 = phi i32 [ %1959, %1951 ], [ 0, %1904 ]
  br i1 %923, label %2135, label %1964, !dx.controlflow.hints !69

; <label>:1964                                    ; preds = %1961
  %1965 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1966 = extractvalue %dx.types.CBufRet.i32 %1965, 1
  %1967 = and i32 %1966, 1
  %1968 = icmp eq i32 %1967, 0
  br i1 %1968, label %1969, label %2126, !dx.controlflow.hints !70

; <label>:1969                                    ; preds = %1964
  %1970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1971 = extractvalue %dx.types.CBufRet.f32 %1970, 2
  %1972 = extractvalue %dx.types.CBufRet.f32 %1970, 3
  %1973 = fmul fast float %1971, %1746
  %1974 = fmul fast float %1972, %1748
  %1975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1976 = extractvalue %dx.types.CBufRet.f32 %1975, 0
  %1977 = extractvalue %dx.types.CBufRet.f32 %1975, 1
  %1978 = fadd fast float %1973, %1976
  %1979 = fadd fast float %1974, %1977
  %1980 = call float @dx.op.unary.f32(i32 7, float %1978)  ; Saturate(value)
  %1981 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  %1982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %21, float %1980, float %1981, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1983 = extractvalue %dx.types.ResRet.f32 %1982, 0
  %1984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1985 = extractvalue %dx.types.CBufRet.f32 %1984, 0
  %1986 = fmul fast float %1985, %1983
  %1987 = fsub fast float %1978, %1980
  %1988 = fsub fast float %1979, %1981
  %1989 = extractvalue %dx.types.CBufRet.f32 %1970, 0
  %1990 = extractvalue %dx.types.CBufRet.f32 %1970, 1
  %1991 = fmul fast float %1989, %1987
  %1992 = fmul fast float %1990, %1988
  %1993 = fmul fast float %1991, %1991
  %1994 = fmul fast float %1992, %1992
  %1995 = fadd fast float %1993, %1994
  %1996 = call float @dx.op.unary.f32(i32 24, float %1995)  ; Sqrt(value)
  %1997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1998 = extractvalue %dx.types.CBufRet.f32 %1997, 3
  %1999 = fmul fast float %1998, %1996
  %2000 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  %2001 = extractvalue %dx.types.CBufRet.f32 %1997, 2
  %2002 = fsub fast float %2001, %1986
  %2003 = fmul fast float %2002, %2000
  %2004 = extractvalue %dx.types.CBufRet.f32 %1984, 1
  %2005 = fsub fast float %1750, %1986
  %2006 = fsub fast float %2005, %2004
  %2007 = fsub fast float %2006, %2003
  %2008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2009 = extractvalue %dx.types.CBufRet.f32 %2008, 2
  %2010 = fsub fast float %2007, %2009
  %2011 = fcmp fast olt float %2010, 0.000000e+00
  %2012 = call float @dx.op.unary.f32(i32 6, float %2010)  ; FAbs(value)
  %2013 = extractvalue %dx.types.CBufRet.i32 %1965, 0
  %2014 = icmp eq i32 %2013, 0
  br i1 %2014, label %2068, label %2015

; <label>:2015                                    ; preds = %1969
  br label %2016

; <label>:2016                                    ; preds = %2055, %2015
  %2017 = phi i32 [ %2061, %2055 ], [ 1, %2015 ]
  %2018 = phi float [ %2063, %2055 ], [ 0x47EFFFFFE0000000, %2015 ]
  %2019 = phi i32 [ %2064, %2055 ], [ 0, %2015 ]
  %2020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2021 = extractvalue %dx.types.CBufRet.f32 %2020, 1
  %2022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2023 = extractvalue %dx.types.CBufRet.i32 %2022, 1
  %2024 = and i32 %2023, 8
  %2025 = icmp eq i32 %2024, 0
  %2026 = fcmp fast ogt float %2021, %2007
  %2027 = or i1 %2026, %2025
  %2028 = add i32 %2019, 171
  %2029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %2028)  ; CBufferLoadLegacy(handle,regIndex)
  %2030 = extractvalue %dx.types.CBufRet.f32 %2029, 0
  %2031 = extractvalue %dx.types.CBufRet.f32 %2029, 1
  %2032 = extractvalue %dx.types.CBufRet.f32 %2029, 2
  br i1 %2027, label %2033, label %2039, !dx.controlflow.hints !71

; <label>:2033                                    ; preds = %2016
  %2034 = fsub fast float %2030, %1746
  %2035 = fsub fast float %2031, %1748
  %2036 = fmul fast float %2034, %2034
  %2037 = fmul fast float %2035, %2035
  %2038 = fadd fast float %2036, %2037
  br label %2055

; <label>:2039                                    ; preds = %2016
  %2040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2041 = extractvalue %dx.types.CBufRet.f32 %2040, 2
  %2042 = extractvalue %dx.types.CBufRet.f32 %2020, 2
  %2043 = fmul fast float %2042, %2041
  %2044 = fsub fast float %2043, %2021
  %2045 = fdiv fast float %2032, %2044
  %2046 = fsub fast float %1746, %2030
  %2047 = fsub fast float %1748, %2031
  %2048 = fsub fast float %2007, %2021
  %2049 = fmul fast float %2045, %2048
  %2050 = fmul fast float %2046, %2046
  %2051 = fmul fast float %2047, %2047
  %2052 = fadd fast float %2050, %2051
  %2053 = fmul fast float %2049, %2049
  %2054 = fadd fast float %2052, %2053
  br label %2055

; <label>:2055                                    ; preds = %2039, %2033
  %2056 = phi float [ %2038, %2033 ], [ %2054, %2039 ]
  %2057 = call float @dx.op.unary.f32(i32 24, float %2056)  ; Sqrt(value)
  %2058 = fsub float %2032, %2057
  %2059 = fcmp fast olt float %2058, 0.000000e+00
  %2060 = zext i1 %2059 to i32
  %2061 = and i32 %2060, %2017
  %2062 = call float @dx.op.unary.f32(i32 6, float %2058)  ; FAbs(value)
  %2063 = call float @dx.op.binary.f32(i32 36, float %2018, float %2062)  ; FMin(a,b)
  %2064 = add i32 %2019, 1
  %2065 = extractvalue %dx.types.CBufRet.i32 %2022, 0
  %2066 = icmp ult i32 %2064, %2065
  br i1 %2066, label %2016, label %2067

; <label>:2067                                    ; preds = %2055
  br label %2068

; <label>:2068                                    ; preds = %2067, %1969
  %2069 = phi i32 [ 1, %1969 ], [ %2061, %2067 ]
  %2070 = phi float [ 0x47EFFFFFE0000000, %1969 ], [ %2063, %2067 ]
  br label %2071

; <label>:2071                                    ; preds = %2071, %2068
  %2072 = phi i32 [ %2069, %2068 ], [ %2111, %2071 ]
  %2073 = phi float [ 0x47EFFFFFE0000000, %2068 ], [ %2113, %2071 ]
  %2074 = phi i32 [ 0, %2068 ], [ %2114, %2071 ]
  %2075 = add nuw nsw i32 %2074, 191
  %2076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %2075)  ; CBufferLoadLegacy(handle,regIndex)
  %2077 = extractvalue %dx.types.CBufRet.f32 %2076, 0
  %2078 = extractvalue %dx.types.CBufRet.f32 %2076, 1
  %2079 = extractvalue %dx.types.CBufRet.f32 %2076, 2
  %2080 = add nuw nsw i32 %2074, 195
  %2081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %2080)  ; CBufferLoadLegacy(handle,regIndex)
  %2082 = extractvalue %dx.types.CBufRet.f32 %2081, 0
  %2083 = extractvalue %dx.types.CBufRet.f32 %2081, 1
  %2084 = extractvalue %dx.types.CBufRet.f32 %2081, 2
  %2085 = fsub fast float %1746, %2077
  %2086 = fsub fast float %1748, %2078
  %2087 = fsub fast float %2007, %2079
  %2088 = call float @dx.op.unary.f32(i32 6, float %2085)  ; FAbs(value)
  %2089 = call float @dx.op.unary.f32(i32 6, float %2086)  ; FAbs(value)
  %2090 = call float @dx.op.unary.f32(i32 6, float %2087)  ; FAbs(value)
  %2091 = fsub fast float %2088, %2082
  %2092 = fsub fast float %2089, %2083
  %2093 = fsub fast float %2090, %2084
  %2094 = call float @dx.op.binary.f32(i32 35, float %2091, float 0.000000e+00)  ; FMax(a,b)
  %2095 = call float @dx.op.binary.f32(i32 35, float %2092, float 0.000000e+00)  ; FMax(a,b)
  %2096 = call float @dx.op.binary.f32(i32 35, float %2093, float 0.000000e+00)  ; FMax(a,b)
  %2097 = fmul fast float %2094, %2094
  %2098 = fmul fast float %2095, %2095
  %2099 = fadd fast float %2098, %2097
  %2100 = fmul fast float %2096, %2096
  %2101 = fadd fast float %2099, %2100
  %2102 = call float @dx.op.unary.f32(i32 24, float %2101)  ; Sqrt(value)
  %2103 = call float @dx.op.binary.f32(i32 35, float %2092, float %2093)  ; FMax(a,b)
  %2104 = call float @dx.op.binary.f32(i32 35, float %2091, float %2103)  ; FMax(a,b)
  %2105 = call float @dx.op.binary.f32(i32 36, float %2104, float 0.000000e+00)  ; FMin(a,b)
  %2106 = fadd fast float %2105, %2102
  %2107 = fsub fast float -0.000000e+00, %2106
  %2108 = fcmp ogt float %2106, -0.000000e+00
  %2109 = icmp ne i32 %2072, 0
  %2110 = and i1 %2109, %2108
  %2111 = zext i1 %2110 to i32
  %2112 = call float @dx.op.unary.f32(i32 6, float %2107)  ; FAbs(value)
  %2113 = call float @dx.op.binary.f32(i32 36, float %2073, float %2112)  ; FMin(a,b)
  %2114 = add nuw nsw i32 %2074, 1
  %2115 = icmp eq i32 %2114, 4
  br i1 %2115, label %2116, label %2071

; <label>:2116                                    ; preds = %2071
  %2117 = call float @dx.op.binary.f32(i32 36, float %2012, float %2113)  ; FMin(a,b)
  %2118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2119 = extractvalue %dx.types.CBufRet.i32 %2118, 1
  %2120 = and i32 %2119, 2
  %2121 = icmp ne i32 %2120, 0
  %2122 = xor i1 %2110, %2121
  %2123 = call float @dx.op.binary.f32(i32 36, float %2117, float %2070)  ; FMin(a,b)
  %2124 = and i1 %2122, %2011
  %2125 = zext i1 %2124 to i32
  br label %2126

; <label>:2126                                    ; preds = %2116, %1964
  %2127 = phi i32 [ %533, %1964 ], [ %2125, %2116 ]
  %2128 = phi float [ 0.000000e+00, %1964 ], [ %2123, %2116 ]
  %2129 = phi float [ %1750, %1964 ], [ %2007, %2116 ]
  %2130 = icmp ne i32 %2127, 0
  %2131 = extractvalue %dx.types.CBufRet.f32 %845, 3
  %2132 = call float @dx.op.binary.f32(i32 35, float %2128, float %2131)  ; FMax(a,b)
  %2133 = call float @dx.op.binary.f32(i32 36, float %1905, float %2132)  ; FMin(a,b)
  %2134 = zext i1 %2130 to i32
  br label %2135

; <label>:2135                                    ; preds = %2126, %1961
  %2136 = phi i32 [ %2127, %2126 ], [ %533, %1961 ]
  %2137 = phi float [ %2129, %2126 ], [ %534, %1961 ]
  %2138 = phi float [ %2133, %2126 ], [ %1905, %1961 ]
  %2139 = phi i32 [ %2134, %2126 ], [ 0, %1961 ]
  %2140 = icmp eq i32 %1824, 0
  br i1 %2140, label %2214, label %2141, !dx.controlflow.hints !72

; <label>:2141                                    ; preds = %2135
  %2142 = fmul fast float %1100, %1742
  %2143 = call float @dx.op.unary.f32(i32 23, float %2142)  ; Log(value)
  %2144 = fmul fast float %2143, 0x3FE62E4300000000
  %2145 = call float @dx.op.binary.f32(i32 35, float %2144, float 1.000000e+00)  ; FMax(a,b)
  %2146 = fmul fast float %2145, %2138
  %2147 = call float @dx.op.binary.f32(i32 36, float %2146, float %1962)  ; FMin(a,b)
  %2148 = call float @dx.op.binary.f32(i32 35, float %2147, float 0.000000e+00)  ; FMax(a,b)
  %2149 = fcmp fast ogt float %2148, 0x3F1A36E2E0000000
  %2150 = fadd fast float %1743, %1746
  %2151 = fadd fast float %1744, %1748
  %2152 = select i1 %2149, float %2150, float %1746
  %2153 = select i1 %2149, float %2151, float %1748
  %2154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %2155 = extractvalue %dx.types.CBufRet.f32 %2154, 0
  %2156 = extractvalue %dx.types.CBufRet.f32 %2154, 1
  %2157 = fsub fast float %2152, %2155
  %2158 = fsub fast float %2153, %2156
  %2159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %2160 = extractvalue %dx.types.CBufRet.f32 %2159, 0
  %2161 = extractvalue %dx.types.CBufRet.f32 %2159, 1
  %2162 = fmul fast float %2157, %2160
  %2163 = fmul fast float %2158, %2161
  %2164 = fsub fast float 1.000000e+00, %2163
  %2165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %2166 = extractvalue %dx.types.CBufRet.i32 %2165, 3
  %2167 = icmp eq i32 %2166, 0
  br i1 %2167, label %2174, label %2168, !dx.controlflow.hints !56

; <label>:2168                                    ; preds = %2141
  %2169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %20, float %2162, float %2164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2170 = extractvalue %dx.types.ResRet.f32 %2169, 0
  %2171 = extractvalue %dx.types.ResRet.f32 %2169, 1
  %2172 = extractvalue %dx.types.ResRet.f32 %2169, 2
  %2173 = extractvalue %dx.types.ResRet.f32 %2169, 3
  br label %2180

; <label>:2174                                    ; preds = %2141
  %2175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %21, float %2162, float %2164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2176 = extractvalue %dx.types.ResRet.f32 %2175, 0
  %2177 = extractvalue %dx.types.ResRet.f32 %2175, 1
  %2178 = extractvalue %dx.types.ResRet.f32 %2175, 2
  %2179 = extractvalue %dx.types.ResRet.f32 %2175, 3
  br label %2180

; <label>:2180                                    ; preds = %2174, %2168
  %2181 = phi float [ %2170, %2168 ], [ %2176, %2174 ]
  %2182 = phi float [ %2171, %2168 ], [ %2177, %2174 ]
  %2183 = phi float [ %2172, %2168 ], [ %2178, %2174 ]
  %2184 = phi float [ %2173, %2168 ], [ %2179, %2174 ]
  %2185 = extractvalue %dx.types.CBufRet.f32 %2159, 3
  %2186 = fmul fast float %2185, %2182
  %2187 = fmul fast float %2186, %2181
  %2188 = fsub fast float %2186, %2187
  %2189 = fcmp fast ole float %2188, 0.000000e+00
  %2190 = extractvalue %dx.types.CBufRet.f32 %2154, 2
  %2191 = fadd fast float %2187, %2190
  %2192 = fmul fast float %2185, %2183
  %2193 = fadd fast float %2192, %2190
  %2194 = fdiv fast float 1.000000e+00, %2188
  %2195 = select i1 %2189, float 1.000000e+06, float %2194
  %2196 = fsub fast float %1750, %2191
  %2197 = fmul fast float %2195, %2196
  %2198 = call float @dx.op.unary.f32(i32 7, float %2197)  ; Saturate(value)
  %2199 = extractvalue %dx.types.CBufRet.f32 %2159, 2
  %2200 = fmul fast float %2199, %2198
  %2201 = fsub fast float %2199, %2200
  %2202 = fcmp fast olt float %1750, %2193
  %2203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %2204 = extractvalue %dx.types.CBufRet.f32 %2203, 3
  %2205 = fmul fast float %2204, 3.000000e+00
  %2206 = select i1 %2202, float %2205, float 3.000000e+00
  %2207 = fmul fast float %2201, %2206
  %2208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2209 = extractvalue %dx.types.CBufRet.f32 %2208, 2
  %2210 = fmul fast float %1742, 0x3FD5555560000000
  %2211 = fmul fast float %2210, %2184
  %2212 = fmul fast float %2211, %2209
  %2213 = fmul fast float %2212, %2207
  br label %2214

; <label>:2214                                    ; preds = %2180, %2135
  %2215 = phi float [ %2213, %2180 ], [ 0.000000e+00, %2135 ]
  br i1 %849, label %2264, label %2216, !dx.controlflow.hints !74

; <label>:2216                                    ; preds = %2214
  %2217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %2218 = extractvalue %dx.types.CBufRet.f32 %2217, 0
  %2219 = fsub fast float %2218, %1750
  %2220 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1747, float %1749, float %2219)  ; Dot3(ax,ay,az,bx,by,bz)
  %2221 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1709, float %1710, float %1711)  ; Dot3(ax,ay,az,bx,by,bz)
  %2222 = fdiv fast float 1.000000e+00, %2221
  %2223 = fmul fast float %2222, %2220
  %2224 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2223)  ; FMax(a,b)
  %2225 = fcmp fast olt float %1711, 0.000000e+00
  %2226 = call float @dx.op.binary.f32(i32 36, float %1742, float %2224)  ; FMin(a,b)
  br i1 %2225, label %2228, label %2227, !dx.controlflow.hints !75

; <label>:2227                                    ; preds = %2216
  br label %2228

; <label>:2228                                    ; preds = %2227, %2216
  %2229 = phi float [ 0.000000e+00, %2227 ], [ %2226, %2216 ]
  %2230 = phi float [ %2226, %2227 ], [ %1742, %2216 ]
  %2231 = phi float [ %2226, %2227 ], [ 0.000000e+00, %2216 ]
  %2232 = phi float [ %1742, %2227 ], [ %2226, %2216 ]
  %2233 = fsub fast float %2230, %2229
  %2234 = extractvalue %dx.types.CBufRet.f32 %2217, 1
  %2235 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %2234)  ; FMin(a,b)
  %2236 = fsub fast float %1750, %2218
  %2237 = fmul fast float %2235, 0x3FF7154760000000
  %2238 = fmul fast float %2237, %2236
  %2239 = call float @dx.op.unary.f32(i32 21, float %2238)  ; Exp(value)
  %2240 = fmul fast float %1711, 0x3FF7154760000000
  %2241 = fmul fast float %2240, %2232
  %2242 = fmul fast float %2241, %2235
  %2243 = call float @dx.op.unary.f32(i32 21, float %2242)  ; Exp(value)
  %2244 = fmul fast float %2240, %2231
  %2245 = fmul fast float %2244, %2235
  %2246 = call float @dx.op.unary.f32(i32 21, float %2245)  ; Exp(value)
  %2247 = fsub fast float %2243, %2246
  %2248 = fmul fast float %2247, %2239
  %2249 = fmul fast float %2235, %1711
  %2250 = fdiv fast float %2248, %2249
  %2251 = fadd fast float %2233, %2250
  %2252 = call float @dx.op.unary.f32(i32 6, float %1711)  ; FAbs(value)
  %2253 = fcmp fast olt float %2252, 0x3F0FFB4800000000
  %2254 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2236)  ; FMax(a,b)
  %2255 = fmul fast float %2254, 0x3FF7154760000000
  %2256 = fmul fast float %2255, %2234
  %2257 = call float @dx.op.unary.f32(i32 21, float %2256)  ; Exp(value)
  %2258 = fmul fast float %2257, %1742
  %2259 = select i1 %2253, float %2258, float %2251
  %2260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %2261 = extractvalue %dx.types.CBufRet.f32 %2260, 1
  %2262 = fmul fast float %2259, %2261
  %2263 = fadd fast float %2262, %2215
  br label %2264

; <label>:2264                                    ; preds = %2228, %2214
  %2265 = phi float [ %2263, %2228 ], [ %2215, %2214 ]
  %2266 = icmp eq i32 %1963, 0
  br i1 %2266, label %2447, label %2267, !dx.controlflow.hints !76

; <label>:2267                                    ; preds = %2264
  %2268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2269 = extractvalue %dx.types.CBufRet.f32 %2268, 3
  %2270 = fmul fast float %2269, %1742
  %2271 = fcmp fast oeq float %2270, 0.000000e+00
  br i1 %2271, label %2286, label %2272, !dx.controlflow.hints !77

; <label>:2272                                    ; preds = %2267
  %2273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2274 = extractvalue %dx.types.CBufRet.f32 %2273, 3
  %2275 = fmul fast float %2274, %2270
  %2276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2277 = extractvalue %dx.types.CBufRet.f32 %2276, 0
  %2278 = extractvalue %dx.types.CBufRet.f32 %2276, 1
  %2279 = extractvalue %dx.types.CBufRet.f32 %2276, 2
  %2280 = fmul fast float %2277, %2275
  %2281 = fmul fast float %2278, %2275
  %2282 = fmul fast float %2279, %2275
  %2283 = call float @dx.op.unary.f32(i32 23, float %2280)  ; Log(value)
  %2284 = call float @dx.op.unary.f32(i32 23, float %2281)  ; Log(value)
  %2285 = call float @dx.op.unary.f32(i32 23, float %2282)  ; Log(value)
  br label %2286

; <label>:2286                                    ; preds = %2272, %2267
  %2287 = phi float [ %2283, %2272 ], [ 0.000000e+00, %2267 ]
  %2288 = phi float [ %2284, %2272 ], [ 0.000000e+00, %2267 ]
  %2289 = phi float [ %2285, %2272 ], [ 0.000000e+00, %2267 ]
  %2290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %2291 = extractvalue %dx.types.CBufRet.f32 %2290, 0
  %2292 = extractvalue %dx.types.CBufRet.f32 %2290, 1
  %2293 = extractvalue %dx.types.CBufRet.f32 %2290, 2
  %2294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %2295 = extractvalue %dx.types.CBufRet.f32 %2294, 0
  %2296 = extractvalue %dx.types.CBufRet.f32 %2294, 1
  %2297 = extractvalue %dx.types.CBufRet.f32 %2294, 2
  %2298 = fsub fast float %1746, %2295
  %2299 = fsub fast float %1748, %2296
  %2300 = fsub fast float %1750, %2297
  %2301 = fmul fast float %2298, %2291
  %2302 = fmul fast float %2299, %2292
  %2303 = fmul fast float %2300, %2293
  %2304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %2305 = extractvalue %dx.types.CBufRet.i32 %2304, 0
  %2306 = extractvalue %dx.types.CBufRet.i32 %2304, 1
  %2307 = uitofp i32 %2305 to float
  %2308 = uitofp i32 %2306 to float
  %2309 = fmul fast float %2301, %2307
  %2310 = fmul fast float %2302, %2308
  %2311 = fadd fast float %2309, 5.000000e-01
  %2312 = fadd fast float %2310, 5.000000e-01
  %2313 = call float @dx.op.unary.f32(i32 22, float %2311)  ; Frc(value)
  %2314 = call float @dx.op.unary.f32(i32 22, float %2312)  ; Frc(value)
  %2315 = call float @dx.op.unary.f32(i32 27, float %2311)  ; Round_ni(value)
  %2316 = call float @dx.op.unary.f32(i32 27, float %2312)  ; Round_ni(value)
  %2317 = fadd fast float %2315, 1.000000e+00
  %2318 = fadd fast float %2316, 1.000000e+00
  %2319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %2320 = extractvalue %dx.types.CBufRet.f32 %2319, 0
  %2321 = extractvalue %dx.types.CBufRet.f32 %2319, 1
  %2322 = fmul fast float %2320, %2317
  %2323 = fmul fast float %2321, %2318
  %2324 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %20, float %2322, float %2323, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2325 = extractvalue %dx.types.ResRet.f32 %2324, 0
  %2326 = extractvalue %dx.types.ResRet.f32 %2324, 1
  %2327 = extractvalue %dx.types.ResRet.f32 %2324, 2
  %2328 = extractvalue %dx.types.ResRet.f32 %2324, 3
  %2329 = extractvalue %dx.types.CBufRet.i32 %2304, 2
  %2330 = extractvalue %dx.types.CBufRet.f32 %2319, 2
  %2331 = uitofp i32 %2329 to float
  %2332 = fadd fast float %2331, -1.000000e+00
  %2333 = fmul fast float %2332, %2325
  %2334 = fmul fast float %2332, %2326
  %2335 = fmul fast float %2332, %2327
  %2336 = fmul fast float %2332, %2328
  %2337 = fadd fast float %2333, 5.000000e-01
  %2338 = fadd fast float %2334, 5.000000e-01
  %2339 = fadd fast float %2335, 5.000000e-01
  %2340 = fadd fast float %2336, 5.000000e-01
  %2341 = fptoui float %2337 to i32
  %2342 = fptoui float %2338 to i32
  %2343 = fptoui float %2339 to i32
  %2344 = fptoui float %2340 to i32
  %2345 = uitofp i32 %2341 to float
  %2346 = uitofp i32 %2342 to float
  %2347 = uitofp i32 %2343 to float
  %2348 = uitofp i32 %2344 to float
  %2349 = fadd fast float %2345, 5.000000e-01
  %2350 = fadd fast float %2346, 5.000000e-01
  %2351 = fadd fast float %2347, 5.000000e-01
  %2352 = fadd fast float %2348, 5.000000e-01
  %2353 = fmul fast float %2349, %2330
  %2354 = fmul fast float %2350, %2330
  %2355 = fmul fast float %2351, %2330
  %2356 = fmul fast float %2352, %2330
  %2357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %2353, float %2303, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2358 = extractvalue %dx.types.ResRet.f32 %2357, 0
  %2359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %2354, float %2303, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2360 = extractvalue %dx.types.ResRet.f32 %2359, 0
  %2361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %2355, float %2303, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2362 = extractvalue %dx.types.ResRet.f32 %2361, 0
  %2363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %21, float %2356, float %2303, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2364 = extractvalue %dx.types.ResRet.f32 %2363, 0
  %2365 = fsub fast float %2362, %2364
  %2366 = fmul fast float %2365, %2313
  %2367 = fadd fast float %2366, %2364
  %2368 = fsub fast float %2360, %2358
  %2369 = fmul fast float %2368, %2313
  %2370 = fadd fast float %2369, %2358
  %2371 = fsub fast float %2370, %2367
  %2372 = fmul fast float %2371, %2314
  %2373 = fadd fast float %2372, %2367
  %2374 = fcmp fast ogt float %2373, 0.000000e+00
  br i1 %2374, label %2375, label %2443, !dx.controlflow.hints !78

; <label>:2375                                    ; preds = %2286
  %2376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2377 = extractvalue %dx.types.CBufRet.f32 %2376, 0
  %2378 = extractvalue %dx.types.CBufRet.f32 %2376, 1
  %2379 = extractvalue %dx.types.CBufRet.f32 %2376, 2
  %2380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2381 = extractvalue %dx.types.CBufRet.f32 %2380, 0
  %2382 = extractvalue %dx.types.CBufRet.f32 %2380, 1
  %2383 = extractvalue %dx.types.CBufRet.f32 %2380, 2
  %2384 = fmul fast float %2299, %2291
  %2385 = fmul fast float %2300, %2291
  %2386 = fadd fast float %2301, %2381
  %2387 = fadd fast float %2384, %2382
  %2388 = fadd fast float %2385, %2383
  %2389 = fmul fast float %2386, %2377
  %2390 = fmul fast float %2387, %2377
  %2391 = fmul fast float %2388, %2377
  %2392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %2389, float %2390, float %2391, float undef, i32 0, i32 0, i32 0, float %2287)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2393 = extractvalue %dx.types.ResRet.f32 %2392, 0
  %2394 = fmul fast float %2386, %2378
  %2395 = fmul fast float %2387, %2378
  %2396 = fmul fast float %2388, %2378
  %2397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %2394, float %2395, float %2396, float undef, i32 0, i32 0, i32 0, float %2288)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2398 = extractvalue %dx.types.ResRet.f32 %2397, 1
  %2399 = fmul fast float %2386, %2379
  %2400 = fmul fast float %2387, %2379
  %2401 = fmul fast float %2388, %2379
  %2402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %2399, float %2400, float %2401, float undef, i32 0, i32 0, i32 0, float %2289)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2403 = extractvalue %dx.types.ResRet.f32 %2402, 2
  %2404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %2405 = extractvalue %dx.types.CBufRet.f32 %2404, 1
  %2406 = fmul fast float %2398, %2393
  %2407 = fmul fast float %2406, %2403
  %2408 = call float @dx.op.unary.f32(i32 23, float %2407)  ; Log(value)
  %2409 = fmul fast float %2408, %2405
  %2410 = call float @dx.op.unary.f32(i32 21, float %2409)  ; Exp(value)
  %2411 = extractvalue %dx.types.CBufRet.f32 %2404, 2
  %2412 = fmul fast float %2373, %2373
  %2413 = fmul fast float %2412, %2410
  %2414 = fmul fast float %2413, %2411
  %2415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %2416 = extractvalue %dx.types.CBufRet.f32 %2415, 3
  %2417 = fmul fast float %2416, %2414
  %2418 = bitcast float %2417 to i32
  %2419 = sitofp i32 %2418 to float
  %2420 = fptosi float %2419 to i32
  %2421 = bitcast i32 %2420 to float
  %2422 = fsub fast float 1.000000e+00, %2414
  %2423 = bitcast float %2422 to i32
  %2424 = sitofp i32 %2423 to float
  %2425 = fptosi float %2424 to i32
  %2426 = bitcast i32 %2425 to float
  %2427 = fadd fast float %2421, %2426
  %2428 = bitcast float %2427 to i32
  %2429 = sub nsw i32 2129859010, %2428
  %2430 = bitcast i32 %2429 to float
  %2431 = fmul fast float %2430, %2421
  %2432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2433 = extractvalue %dx.types.CBufRet.f32 %2432, 2
  %2434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %2435 = extractvalue %dx.types.CBufRet.f32 %2434, 0
  %2436 = fmul fast float %2431, %2435
  %2437 = fadd fast float %2436, 1.000000e+00
  %2438 = bitcast float %2437 to i32
  %2439 = sub nsw i32 2129859010, %2438
  %2440 = bitcast i32 %2439 to float
  %2441 = fmul fast float %2431, %2433
  %2442 = fmul fast float %2441, %2440
  br label %2443

; <label>:2443                                    ; preds = %2375, %2286
  %2444 = phi float [ %2442, %2375 ], [ %2373, %2286 ]
  %2445 = fmul fast float %2444, %1742
  %2446 = fadd fast float %2445, %2265
  br label %2447

; <label>:2447                                    ; preds = %2443, %2264
  %2448 = phi float [ %2446, %2443 ], [ %2265, %2264 ]
  br i1 %1889, label %2574, label %2449, !dx.controlflow.hints !79

; <label>:2449                                    ; preds = %2447
  %2450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2451 = extractvalue %dx.types.CBufRet.i32 %2450, 0
  %2452 = icmp ne i32 %2451, 0
  %2453 = zext i1 %2452 to i32
  %2454 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2455 = extractvalue %dx.types.CBufRet.i32 %2454, 0
  %2456 = icmp eq i32 %2455, 0
  br i1 %2456, label %2490, label %2457

; <label>:2457                                    ; preds = %2449
  br label %2458

; <label>:2458                                    ; preds = %2485, %2457
  %2459 = phi i32 [ %2486, %2485 ], [ 0, %2457 ]
  %2460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2459, i32 0)  ; BufferLoad(srv,index,wot)
  %2461 = extractvalue %dx.types.ResRet.f32 %2460, 0
  %2462 = extractvalue %dx.types.ResRet.f32 %2460, 1
  %2463 = extractvalue %dx.types.ResRet.f32 %2460, 2
  %2464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2459, i32 16)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.f32 %2464, 0
  %2466 = extractvalue %dx.types.ResRet.f32 %2464, 1
  %2467 = extractvalue %dx.types.ResRet.f32 %2464, 2
  %2468 = fsub fast float %2461, %2465
  %2469 = fsub fast float %2462, %2466
  %2470 = fsub fast float %2463, %2467
  %2471 = fadd fast float %2465, %2461
  %2472 = fadd fast float %2466, %2462
  %2473 = fadd fast float %2467, %2463
  %2474 = fcmp fast olt float %1746, %2468
  %2475 = fcmp fast olt float %1748, %2469
  %2476 = fcmp fast olt float %1750, %2470
  %2477 = or i1 %2474, %2475
  %2478 = or i1 %2476, %2477
  %2479 = fcmp fast ogt float %1746, %2471
  %2480 = fcmp fast ogt float %1748, %2472
  %2481 = fcmp fast ogt float %1750, %2473
  %2482 = or i1 %2479, %2480
  %2483 = or i1 %2481, %2482
  %2484 = or i1 %2478, %2483
  br i1 %2484, label %2485, label %2488, !dx.controlflow.hints !80

; <label>:2485                                    ; preds = %2458
  %2486 = add nuw i32 %2459, 1
  %2487 = icmp ult i32 %2486, %2455
  br i1 %2487, label %2458, label %2488

; <label>:2488                                    ; preds = %2485, %2458
  %2489 = phi i32 [ 255, %2485 ], [ %2459, %2458 ]
  br label %2490

; <label>:2490                                    ; preds = %2488, %2449
  %2491 = phi i32 [ 255, %2449 ], [ %2489, %2488 ]
  %2492 = icmp eq i32 %2491, 255
  br i1 %2492, label %2498, label %2493, !dx.controlflow.hints !81

; <label>:2493                                    ; preds = %2490
  %2494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2491, i32 156)  ; BufferLoad(srv,index,wot)
  %2495 = extractvalue %dx.types.ResRet.i32 %2494, 0
  %2496 = icmp ne i32 %2495, 0
  %2497 = zext i1 %2496 to i32
  br label %2498

; <label>:2498                                    ; preds = %2493, %2490
  %2499 = phi i32 [ %2497, %2493 ], [ %2453, %2490 ]
  %2500 = icmp eq i32 %2499, 0
  br i1 %2500, label %2501, label %2570, !dx.controlflow.hints !82

; <label>:2501                                    ; preds = %2498
  %2502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2503 = extractvalue %dx.types.CBufRet.f32 %2502, 3
  %2504 = extractvalue %dx.types.CBufRet.f32 %754, 0
  %2505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2506 = extractvalue %dx.types.CBufRet.f32 %2505, 2
  %2507 = extractvalue %dx.types.CBufRet.f32 %2505, 3
  br i1 %2492, label %2518, label %2508, !dx.controlflow.hints !83

; <label>:2508                                    ; preds = %2501
  %2509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2491, i32 60)  ; BufferLoad(srv,index,wot)
  %2510 = extractvalue %dx.types.ResRet.f32 %2509, 0
  %2511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2491, i32 64)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.f32 %2511, 0
  %2513 = extractvalue %dx.types.ResRet.f32 %2511, 1
  %2514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2491, i32 72)  ; BufferLoad(srv,index,wot)
  %2515 = extractvalue %dx.types.ResRet.f32 %2514, 0
  %2516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2491, i32 96)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.f32 %2516, 0
  br label %2518

; <label>:2518                                    ; preds = %2508, %2501
  %2519 = phi float [ %2510, %2508 ], [ %757, %2501 ]
  %2520 = phi float [ %2515, %2508 ], [ %755, %2501 ]
  %2521 = phi float [ %2517, %2508 ], [ %2504, %2501 ]
  %2522 = phi float [ %2512, %2508 ], [ %2506, %2501 ]
  %2523 = phi float [ %2513, %2508 ], [ %2507, %2501 ]
  %2524 = call float @dx.op.binary.f32(i32 35, float %1884, float 0.000000e+00)  ; FMax(a,b)
  %2525 = call float @dx.op.binary.f32(i32 36, float %2524, float 1.000000e+00)  ; FMin(a,b)
  %2526 = call float @dx.op.unary.f32(i32 24, float %2525)  ; Sqrt(value)
  %2527 = call float @dx.op.binary.f32(i32 35, float %1887, float 0x3F847AE140000000)  ; FMax(a,b)
  %2528 = fsub fast float %1885, %1750
  %2529 = fsub fast float %1750, %1886
  %2530 = call float @dx.op.binary.f32(i32 36, float %2529, float %2528)  ; FMin(a,b)
  %2531 = fdiv fast float %2530, %2527
  %2532 = call float @dx.op.unary.f32(i32 7, float %2531)  ; Saturate(value)
  %2533 = fsub fast float %1750, %2520
  %2534 = fdiv fast float %2533, %2519
  %2535 = call float @dx.op.unary.f32(i32 7, float %2534)  ; Saturate(value)
  %2536 = fsub fast float 1.000000e+00, %2535
  %2537 = fmul float %2532, %2536
  %2538 = fmul float %2537, %2537
  %2539 = fmul fast float %2526, %2503
  %2540 = fmul fast float %2539, %2538
  %2541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %2542 = extractvalue %dx.types.CBufRet.f32 %2541, 2
  %2543 = extractvalue %dx.types.CBufRet.f32 %2541, 1
  %2544 = fsub fast float %2540, %2543
  %2545 = fsub fast float %2542, %2543
  %2546 = fdiv fast float %2544, %2545
  %2547 = call float @dx.op.unary.f32(i32 7, float %2546)  ; Saturate(value)
  %2548 = fmul fast float %2547, %2521
  %2549 = fcmp fast ogt float %2523, 0.000000e+00
  br i1 %2549, label %2550, label %2570, !dx.controlflow.hints !84

; <label>:2550                                    ; preds = %2518
  %2551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2552 = extractvalue %dx.types.CBufRet.f32 %2551, 0
  %2553 = extractvalue %dx.types.CBufRet.f32 %2551, 1
  %2554 = extractvalue %dx.types.CBufRet.f32 %2551, 2
  %2555 = fsub fast float %1746, %2552
  %2556 = fsub fast float %1748, %2553
  %2557 = fsub fast float %1750, %2554
  %2558 = fmul fast float %2555, %2555
  %2559 = fmul fast float %2556, %2556
  %2560 = fadd fast float %2558, %2559
  %2561 = fmul fast float %2557, %2557
  %2562 = fadd fast float %2560, %2561
  %2563 = call float @dx.op.unary.f32(i32 24, float %2562)  ; Sqrt(value)
  %2564 = fsub fast float %2563, %2522
  %2565 = fsub fast float %2523, %2522
  %2566 = fdiv fast float %2564, %2565
  %2567 = call float @dx.op.unary.f32(i32 7, float %2566)  ; Saturate(value)
  %2568 = fmul fast float %2567, %2567
  %2569 = fmul fast float %2568, %2548
  br label %2570

; <label>:2570                                    ; preds = %2550, %2518, %2498
  %2571 = phi float [ 0.000000e+00, %2498 ], [ %2569, %2550 ], [ %2548, %2518 ]
  %2572 = fmul fast float %2571, %1742
  %2573 = fadd fast float %2572, %2448
  br label %2574

; <label>:2574                                    ; preds = %2570, %2447
  %2575 = phi float [ %2573, %2570 ], [ %2448, %2447 ]
  %2576 = icmp eq i32 %2139, 0
  br i1 %2576, label %2608, label %2577, !dx.controlflow.hints !85

; <label>:2577                                    ; preds = %2574
  %2578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %2579 = extractvalue %dx.types.CBufRet.f32 %2578, 1
  %2580 = fsub fast float %1742, %2579
  %2581 = extractvalue %dx.types.CBufRet.f32 %2578, 3
  %2582 = fmul fast float %2580, %2581
  %2583 = call float @dx.op.unary.f32(i32 7, float %2582)  ; Saturate(value)
  %2584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %2585 = extractvalue %dx.types.CBufRet.f32 %2584, 3
  %2586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2587 = extractvalue %dx.types.CBufRet.f32 %2586, 2
  %2588 = fsub fast float %2587, %2137
  %2589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %2590 = extractvalue %dx.types.CBufRet.f32 %2589, 3
  %2591 = fmul fast float %2588, %2590
  %2592 = call float @dx.op.unary.f32(i32 7, float %2591)  ; Saturate(value)
  %2593 = fmul fast float %2592, %2585
  %2594 = extractvalue %dx.types.CBufRet.f32 %2589, 0
  %2595 = fsub fast float %1742, %2594
  %2596 = extractvalue %dx.types.CBufRet.f32 %2589, 1
  %2597 = fmul fast float %2595, %2596
  %2598 = call float @dx.op.unary.f32(i32 7, float %2597)  ; Saturate(value)
  %2599 = fsub fast float 1.000000e+00, %2583
  %2600 = fmul fast float %2598, %2599
  %2601 = fadd fast float %2600, %2583
  %2602 = extractvalue %dx.types.CBufRet.f32 %2578, 0
  %2603 = fsub fast float %2593, %2602
  %2604 = fmul fast float %2603, %2601
  %2605 = fadd fast float %2604, %2602
  %2606 = fmul fast float %2605, %1742
  %2607 = fadd fast float %2606, %2575
  br label %2608

; <label>:2608                                    ; preds = %2577, %2574
  %2609 = phi float [ %2607, %2577 ], [ %2575, %2574 ]
  %2610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2611 = extractvalue %dx.types.CBufRet.f32 %2610, 3
  %2612 = fmul fast float %2609, 0xBFF7154760000000
  %2613 = fmul fast float %2612, %2611
  %2614 = call float @dx.op.unary.f32(i32 21, float %2613)  ; Exp(value)
  %2615 = call float @dx.op.unary.f32(i32 7, float %2614)  ; Saturate(value)
  %2616 = fmul fast float %2615, %1735
  %2617 = fmul fast float %2615, %1736
  %2618 = fmul fast float %2615, %1737
  %2619 = fadd fast float %2616, %210
  %2620 = fadd fast float %2617, %211
  %2621 = fadd fast float %2618, %212
  %2622 = fsub fast float 1.000000e+00, %1705
  %2623 = fmul fast float %1697, %546
  %2624 = fmul fast float %2623, %2622
  %2625 = fmul fast float %2624, %2619
  %2626 = fmul fast float %1698, %546
  %2627 = fmul fast float %2626, %2622
  %2628 = fmul fast float %2627, %2620
  %2629 = fmul fast float %1699, %546
  %2630 = fmul fast float %2629, %2622
  %2631 = fmul fast float %2630, %2621
  %2632 = fadd fast float %2625, %547
  %2633 = fadd fast float %2628, %548
  %2634 = fadd fast float %2631, %549
  %2635 = fdiv fast float %1681, %1110
  %2636 = fadd fast float %1110, %553
  %2637 = fmul fast float %553, %553
  %2638 = fmul fast float %2636, %2636
  %2639 = fsub fast float %2637, %2638
  %2640 = fmul fast float %2639, -5.000000e-01
  %2641 = fmul fast float %2640, %2635
  %2642 = fadd fast float %2641, %545
  %2643 = fadd fast float %1681, %556
  %2644 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2645 = extractvalue %dx.types.CBufRet.i32 %2644, 0
  %2646 = icmp eq i32 %2645, 0
  br i1 %2646, label %2673, label %2647, !dx.controlflow.hints !89

; <label>:2647                                    ; preds = %2608
  %2648 = icmp ne i32 %561, 0
  %2649 = zext i1 %2648 to i32
  %2650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2651 = extractvalue %dx.types.CBufRet.f32 %2650, 2
  %2652 = extractvalue %dx.types.CBufRet.f32 %2650, 0
  %2653 = fsub fast float %2636, %2652
  %2654 = fmul fast float %2653, %2651
  %2655 = call float @dx.op.unary.f32(i32 7, float %2654)  ; Saturate(value)
  %2656 = fadd fast float %2655, -5.000000e-01
  %2657 = fmul fast float %2656, 2.000000e+00
  %2658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2659 = extractvalue %dx.types.CBufRet.f32 %2658, 2
  %2660 = fcmp fast olt float %2657, %2659
  br i1 %2660, label %2661, label %2673, !dx.controlflow.hints !90

; <label>:2661                                    ; preds = %2647
  %2662 = fmul fast float %2657, %2657
  %2663 = fmul fast float %2622, %546
  %2664 = fmul fast float %2657, %2663
  %2665 = fmul fast float %2662, %2663
  %2666 = fmul fast float %2664, %2662
  %2667 = fmul fast float %2662, %2662
  %2668 = fmul fast float %2667, %2663
  %2669 = fadd fast float %2664, %557
  %2670 = fadd fast float %2665, %558
  %2671 = fadd fast float %2666, %559
  %2672 = fadd fast float %2668, %560
  br label %2673

; <label>:2673                                    ; preds = %2661, %2647, %2608
  %2674 = phi float [ %557, %2608 ], [ %2669, %2661 ], [ %557, %2647 ]
  %2675 = phi float [ %558, %2608 ], [ %2670, %2661 ], [ %558, %2647 ]
  %2676 = phi float [ %559, %2608 ], [ %2671, %2661 ], [ %559, %2647 ]
  %2677 = phi float [ %560, %2608 ], [ %2672, %2661 ], [ %560, %2647 ]
  %2678 = phi i32 [ %561, %2608 ], [ 1, %2661 ], [ %2649, %2647 ]
  %2679 = fmul fast float %1705, %546
  br label %2680

; <label>:2680                                    ; preds = %2673, %1700
  %2681 = phi float [ %1701, %1700 ], [ %2636, %2673 ]
  %2682 = phi i32 [ %533, %1700 ], [ %2136, %2673 ]
  %2683 = phi float [ %534, %1700 ], [ %2137, %2673 ]
  %2684 = phi float [ %535, %1700 ], [ %1884, %2673 ]
  %2685 = phi float [ %536, %1700 ], [ %1885, %2673 ]
  %2686 = phi float [ %537, %1700 ], [ %1886, %2673 ]
  %2687 = phi float [ %538, %1700 ], [ %1887, %2673 ]
  %2688 = phi float [ %545, %1700 ], [ %2642, %2673 ]
  %2689 = phi float [ %546, %1700 ], [ %2679, %2673 ]
  %2690 = phi float [ %547, %1700 ], [ %2632, %2673 ]
  %2691 = phi float [ %548, %1700 ], [ %2633, %2673 ]
  %2692 = phi float [ %549, %1700 ], [ %2634, %2673 ]
  %2693 = phi float [ %556, %1700 ], [ %2643, %2673 ]
  %2694 = phi float [ %557, %1700 ], [ %2674, %2673 ]
  %2695 = phi float [ %558, %1700 ], [ %2675, %2673 ]
  %2696 = phi float [ %559, %1700 ], [ %2676, %2673 ]
  %2697 = phi float [ %560, %1700 ], [ %2677, %2673 ]
  %2698 = phi i32 [ %561, %1700 ], [ %2678, %2673 ]
  %2699 = fmul fast float %1110, %286
  %2700 = fmul fast float %1110, %287
  %2701 = fmul fast float %1110, %288
  %2702 = fadd fast float %2699, %550
  %2703 = fadd fast float %2700, %551
  %2704 = fadd fast float %2701, %552
  %2705 = fcmp fast olt float %2681, %510
  %2706 = extractvalue %dx.types.CBufRet.f32 %1686, 2
  %2707 = fcmp fast olt float %2706, %2689
  %2708 = and i1 %2705, %2707
  br i1 %2708, label %532, label %2709

; <label>:2709                                    ; preds = %2680
  br label %2710

; <label>:2710                                    ; preds = %2709, %503
  %2711 = phi float [ 0.000000e+00, %503 ], [ %2688, %2709 ]
  %2712 = phi float [ 1.000000e+00, %503 ], [ %2689, %2709 ]
  %2713 = phi float [ 0.000000e+00, %503 ], [ %2690, %2709 ]
  %2714 = phi float [ 0.000000e+00, %503 ], [ %2691, %2709 ]
  %2715 = phi float [ 0.000000e+00, %503 ], [ %2692, %2709 ]
  %2716 = phi float [ 0.000000e+00, %503 ], [ %2693, %2709 ]
  %2717 = phi float [ 0.000000e+00, %503 ], [ %2694, %2709 ]
  %2718 = phi float [ 0.000000e+00, %503 ], [ %2695, %2709 ]
  %2719 = phi float [ 0.000000e+00, %503 ], [ %2696, %2709 ]
  %2720 = phi float [ 0.000000e+00, %503 ], [ %2697, %2709 ]
  %2721 = phi i32 [ 0, %503 ], [ %2698, %2709 ]
  %2722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2723 = extractvalue %dx.types.CBufRet.i32 %2722, 0
  %2724 = icmp eq i32 %2723, 0
  br i1 %2724, label %2766, label %2725, !dx.controlflow.hints !91

; <label>:2725                                    ; preds = %2710
  %2726 = icmp eq i32 %2721, 0
  br i1 %2726, label %2765, label %2727, !dx.controlflow.hints !92

; <label>:2727                                    ; preds = %2725
  %2728 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2729 = extractvalue %dx.types.CBufRet.i32 %2728, 2
  %2730 = icmp eq i32 %2729, 0
  br i1 %2730, label %2737, label %2731, !dx.controlflow.hints !93

; <label>:2731                                    ; preds = %2727
  %2732 = fsub fast float 1.000000e+00, %2712
  %2733 = fdiv fast float %2717, %2732
  %2734 = fdiv fast float %2718, %2732
  %2735 = fdiv fast float %2719, %2732
  %2736 = fdiv fast float %2720, %2732
  br label %2742

; <label>:2737                                    ; preds = %2727
  %2738 = fadd fast float %2717, %2712
  %2739 = fadd fast float %2718, %2712
  %2740 = fadd fast float %2719, %2712
  %2741 = fadd fast float %2720, %2712
  br label %2742

; <label>:2742                                    ; preds = %2737, %2731
  %2743 = phi float [ %2733, %2731 ], [ %2738, %2737 ]
  %2744 = phi float [ %2734, %2731 ], [ %2739, %2737 ]
  %2745 = phi float [ %2735, %2731 ], [ %2740, %2737 ]
  %2746 = phi float [ %2736, %2731 ], [ %2741, %2737 ]
  %2747 = call float @dx.op.binary.f32(i32 35, float %2743, float -1.000000e+00)  ; FMax(a,b)
  %2748 = call float @dx.op.binary.f32(i32 35, float %2744, float -1.000000e+00)  ; FMax(a,b)
  %2749 = call float @dx.op.binary.f32(i32 35, float %2745, float -1.000000e+00)  ; FMax(a,b)
  %2750 = call float @dx.op.binary.f32(i32 35, float %2746, float -1.000000e+00)  ; FMax(a,b)
  %2751 = call float @dx.op.binary.f32(i32 36, float %2747, float 1.000000e+00)  ; FMin(a,b)
  %2752 = call float @dx.op.binary.f32(i32 36, float %2748, float 1.000000e+00)  ; FMin(a,b)
  %2753 = call float @dx.op.binary.f32(i32 36, float %2749, float 1.000000e+00)  ; FMin(a,b)
  %2754 = call float @dx.op.binary.f32(i32 36, float %2750, float 1.000000e+00)  ; FMin(a,b)
  %2755 = fmul fast float %2751, 1.500000e+00
  %2756 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2753, float %2755)  ; FMad(a,b,c)
  %2757 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2752, float 0.000000e+00)  ; FMad(a,b,c)
  %2758 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2754, float %2757)  ; FMad(a,b,c)
  %2759 = fmul fast float %2751, 0x3FEBB67AE0000000
  %2760 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2753, float %2759)  ; FMad(a,b,c)
  %2761 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2752, float 0.000000e+00)  ; FMad(a,b,c)
  %2762 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2754, float %2761)  ; FMad(a,b,c)
  %2763 = fadd fast float %2756, 5.000000e-01
  %2764 = fadd fast float %2760, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %25, i32 %26, i32 0, float %2763, float %2758, float %2764, float %2762, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2766

; <label>:2765                                    ; preds = %2725
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %25, i32 %26, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2766

; <label>:2766                                    ; preds = %2765, %2742, %2710
  %2767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2768 = extractvalue %dx.types.CBufRet.f32 %2767, 2
  %2769 = fsub fast float %2712, %2768
  %2770 = fdiv fast float %2769, %2768
  %2771 = call float @dx.op.unary.f32(i32 7, float %2770)  ; Saturate(value)
  %2772 = fmul fast float %2771, 2.000000e+00
  %2773 = fsub fast float 3.000000e+00, %2772
  %2774 = fmul fast float %2771, %2771
  %2775 = fmul fast float %2774, %2712
  %2776 = fmul fast float %2775, %2773
  %2777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2778 = extractvalue %dx.types.CBufRet.f32 %2777, 0
  %2779 = extractvalue %dx.types.CBufRet.f32 %2777, 1
  %2780 = extractvalue %dx.types.CBufRet.f32 %2777, 2
  %2781 = call float @dx.op.dot3.f32(i32 55, float %286, float %287, float %288, float %2778, float %2779, float %2780)  ; Dot3(ax,ay,az,bx,by,bz)
  %2782 = fmul fast float %2781, %2711
  %2783 = fcmp fast ogt float %2716, 0.000000e+00
  %2784 = fdiv fast float 1.000000e+00, %2716
  %2785 = fmul fast float %2782, %2784
  %2786 = select i1 %2783, float %2785, float %297
  %2787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2788 = extractvalue %dx.types.CBufRet.f32 %2787, 0
  %2789 = extractvalue %dx.types.CBufRet.f32 %2787, 1
  %2790 = extractvalue %dx.types.CBufRet.f32 %2787, 2
  %2791 = fmul fast float %2788, %250
  %2792 = fmul fast float %2789, %250
  %2793 = fmul fast float %2790, %250
  %2794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2795 = extractvalue %dx.types.CBufRet.f32 %2794, 0
  %2796 = extractvalue %dx.types.CBufRet.f32 %2794, 1
  %2797 = extractvalue %dx.types.CBufRet.f32 %2794, 2
  %2798 = fmul fast float %2795, %251
  %2799 = fmul fast float %2796, %251
  %2800 = fmul fast float %2797, %251
  %2801 = fadd fast float %2798, %2791
  %2802 = fadd fast float %2799, %2792
  %2803 = fadd fast float %2800, %2793
  %2804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2805 = extractvalue %dx.types.CBufRet.f32 %2804, 0
  %2806 = extractvalue %dx.types.CBufRet.f32 %2804, 1
  %2807 = extractvalue %dx.types.CBufRet.f32 %2804, 2
  %2808 = fadd fast float %2801, %2805
  %2809 = fadd fast float %2802, %2806
  %2810 = fadd fast float %2803, %2807
  %2811 = fmul fast float %2808, %2786
  %2812 = fmul fast float %2809, %2786
  %2813 = fmul fast float %2810, %2786
  %2814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2815 = extractvalue %dx.types.CBufRet.f32 %2814, 0
  %2816 = extractvalue %dx.types.CBufRet.f32 %2814, 1
  %2817 = extractvalue %dx.types.CBufRet.f32 %2814, 2
  %2818 = extractvalue %dx.types.CBufRet.f32 %2814, 3
  %2819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2820 = extractvalue %dx.types.CBufRet.f32 %2819, 0
  %2821 = extractvalue %dx.types.CBufRet.f32 %2819, 1
  %2822 = extractvalue %dx.types.CBufRet.f32 %2819, 2
  %2823 = extractvalue %dx.types.CBufRet.f32 %2819, 3
  %2824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2825 = extractvalue %dx.types.CBufRet.f32 %2824, 0
  %2826 = extractvalue %dx.types.CBufRet.f32 %2824, 1
  %2827 = extractvalue %dx.types.CBufRet.f32 %2824, 2
  %2828 = extractvalue %dx.types.CBufRet.f32 %2824, 3
  %2829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2830 = extractvalue %dx.types.CBufRet.f32 %2829, 0
  %2831 = extractvalue %dx.types.CBufRet.f32 %2829, 1
  %2832 = extractvalue %dx.types.CBufRet.f32 %2829, 2
  %2833 = extractvalue %dx.types.CBufRet.f32 %2829, 3
  %2834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2835 = extractvalue %dx.types.CBufRet.f32 %2834, 3
  %2836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2837 = extractvalue %dx.types.CBufRet.f32 %2836, 3
  %2838 = extractvalue %dx.types.CBufRet.f32 %2836, 0
  %2839 = extractvalue %dx.types.CBufRet.f32 %2836, 1
  %2840 = extractvalue %dx.types.CBufRet.f32 %2836, 2
  %2841 = fcmp fast olt float %2840, -5.000000e-01
  %2842 = call float @dx.op.dot3.f32(i32 55, float %2811, float %2812, float %2813, float %2811, float %2812, float %2813)  ; Dot3(ax,ay,az,bx,by,bz)
  %2843 = call float @dx.op.unary.f32(i32 25, float %2842)  ; Rsqrt(value)
  %2844 = fmul fast float %2843, %2842
  %2845 = fmul fast float %2843, %2811
  %2846 = fmul fast float %2843, %2812
  %2847 = fmul fast float %2843, %2813
  %2848 = fadd fast float %2844, %2818
  %2849 = call float @dx.op.dot3.f32(i32 55, float %2845, float %2846, float %2847, float %2815, float %2816, float %2817)  ; Dot3(ax,ay,az,bx,by,bz)
  %2850 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2851 = extractvalue %dx.types.CBufRet.i32 %2850, 1
  %2852 = and i32 %2851, 1
  %2853 = icmp ne i32 %2852, 0
  %2854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2855 = extractvalue %dx.types.CBufRet.f32 %2854, 2
  %2856 = fcmp fast ogt float %2855, 0.000000e+00
  %2857 = and i1 %2853, %2856
  br i1 %2857, label %2858, label %3264, !dx.controlflow.hints !94

; <label>:2858                                    ; preds = %2766
  %2859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2860 = extractvalue %dx.types.CBufRet.f32 %2859, 3
  %2861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2862 = extractvalue %dx.types.CBufRet.f32 %2861, 2
  %2863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2864 = extractvalue %dx.types.CBufRet.f32 %2863, 2
  %2865 = fsub fast float %2862, %2864
  %2866 = and i32 %2851, 2
  %2867 = extractvalue %dx.types.CBufRet.i32 %2850, 0
  %2868 = call i32 @dx.op.binary.i32(i32 40, i32 %2867, i32 3)  ; UMin(a,b)
  %2869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2870 = extractvalue %dx.types.CBufRet.f32 %2869, 0
  %2871 = extractvalue %dx.types.CBufRet.f32 %2869, 1
  %2872 = extractvalue %dx.types.CBufRet.f32 %2863, 0
  %2873 = extractvalue %dx.types.CBufRet.f32 %2863, 1
  %2874 = fsub fast float %2870, %2872
  %2875 = fsub fast float %2871, %2873
  %2876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2877 = extractvalue %dx.types.CBufRet.f32 %2876, 0
  %2878 = fcmp fast ogt float %2877, 0.000000e+00
  %2879 = fsub fast float -0.000000e+00, %2874
  %2880 = fsub fast float -0.000000e+00, %2875
  %2881 = call float @dx.op.dot2.f32(i32 54, float %2845, float %2846, float %2845, float %2846)  ; Dot2(ax,ay,bx,by)
  %2882 = call float @dx.op.dot2.f32(i32 54, float %2845, float %2846, float %2879, float %2880)  ; Dot2(ax,ay,bx,by)
  %2883 = fmul fast float %2882, 2.000000e+00
  %2884 = call float @dx.op.dot2.f32(i32 54, float %2879, float %2880, float %2879, float %2880)  ; Dot2(ax,ay,bx,by)
  %2885 = fmul fast float %2877, %2877
  %2886 = fsub fast float %2884, %2885
  %2887 = fmul fast float %2883, %2883
  %2888 = fmul fast float %2881, 4.000000e+00
  %2889 = fmul fast float %2888, %2886
  %2890 = fsub fast float %2887, %2889
  %2891 = fcmp fast ogt float %2890, 0.000000e+00
  br i1 %2891, label %2892, label %2907, !dx.controlflow.hints !95

; <label>:2892                                    ; preds = %2858
  %2893 = fcmp fast ogt float %2883, 0.000000e+00
  %2894 = call float @dx.op.unary.f32(i32 24, float %2890)  ; Sqrt(value)
  %2895 = fsub fast float -0.000000e+00, %2894
  %2896 = select i1 %2893, float %2894, float %2895
  %2897 = fadd fast float %2896, %2883
  %2898 = fmul float %2897, -5.000000e-01
  %2899 = fdiv fast float %2898, %2881
  %2900 = call float @dx.op.binary.f32(i32 35, float %2899, float 0.000000e+00)  ; FMax(a,b)
  %2901 = call float @dx.op.binary.f32(i32 36, float %2844, float %2900)  ; FMin(a,b)
  %2902 = fdiv fast float %2886, %2898
  %2903 = call float @dx.op.binary.f32(i32 35, float %2902, float 0.000000e+00)  ; FMax(a,b)
  %2904 = call float @dx.op.binary.f32(i32 36, float %2844, float %2903)  ; FMin(a,b)
  %2905 = call float @dx.op.binary.f32(i32 36, float %2901, float %2904)  ; FMin(a,b)
  %2906 = call float @dx.op.binary.f32(i32 35, float %2901, float %2904)  ; FMax(a,b)
  br label %2907

; <label>:2907                                    ; preds = %2892, %2858
  %2908 = phi float [ %2906, %2892 ], [ -1.000000e+00, %2858 ]
  %2909 = phi float [ %2905, %2892 ], [ -1.000000e+00, %2858 ]
  %2910 = phi i1 [ true, %2892 ], [ false, %2858 ]
  %2911 = and i1 %2878, %2910
  br i1 %2911, label %2912, label %2914, !dx.controlflow.hints !96

; <label>:2912                                    ; preds = %2907
  %2913 = fcmp fast oeq float %2909, %2908
  br i1 %2913, label %3217, label %2915, !dx.controlflow.hints !97

; <label>:2914                                    ; preds = %2907
  br i1 %2878, label %3217, label %2915, !dx.controlflow.hints !98

; <label>:2915                                    ; preds = %2914, %2912
  %2916 = phi float [ %2844, %2914 ], [ %2908, %2912 ]
  %2917 = phi float [ 0.000000e+00, %2914 ], [ %2909, %2912 ]
  %2918 = icmp ne i32 %2866, 0
  %2919 = fmul fast float %2916, %2847
  %2920 = fadd fast float %2919, %2860
  %2921 = fmul fast float %2920, %2916
  %2922 = select i1 %2918, float 0.000000e+00, float %2921
  %2923 = fcmp fast oeq float %2847, 0.000000e+00
  %2924 = fdiv fast float %2865, %2847
  %2925 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2924)  ; FMax(a,b)
  %2926 = select i1 %2923, float %2916, float %2925
  %2927 = call float @dx.op.binary.f32(i32 36, float %2916, float %2926)  ; FMin(a,b)
  %2928 = fcmp fast ogt float %2847, 0.000000e+00
  %2929 = fcmp fast olt float %2865, 0.000000e+00
  br i1 %2928, label %2930, label %2987, !dx.controlflow.hints !99

; <label>:2930                                    ; preds = %2915
  %2931 = icmp eq i32 %2866, 0
  br i1 %2929, label %2932, label %2976, !dx.controlflow.hints !100

; <label>:2932                                    ; preds = %2930
  %2933 = select i1 %2931, float %2916, float 0.000000e+00
  %2934 = fsub fast float -0.000000e+00, %2933
  %2935 = call float @dx.op.unary.f32(i32 6, float %2934)  ; FAbs(value)
  %2936 = fmul fast float %2933, %2847
  %2937 = fadd fast float %2936, %2860
  %2938 = fmul fast float %2935, %2937
  %2939 = fsub fast float %2922, %2938
  %2940 = fsub fast float %2916, %2935
  %2941 = select i1 %2931, float %2940, float 0.000000e+00
  %2942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2943 = extractvalue %dx.types.CBufRet.f32 %2942, 0
  %2944 = extractvalue %dx.types.CBufRet.f32 %2942, 1
  %2945 = extractvalue %dx.types.CBufRet.f32 %2942, 2
  %2946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2947 = extractvalue %dx.types.CBufRet.f32 %2946, 0
  %2948 = extractvalue %dx.types.CBufRet.f32 %2946, 1
  %2949 = extractvalue %dx.types.CBufRet.f32 %2946, 2
  %2950 = extractvalue %dx.types.CBufRet.f32 %2946, 3
  %2951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2952 = extractvalue %dx.types.CBufRet.f32 %2951, 3
  %2953 = call float @dx.op.binary.f32(i32 36, float %2939, float %2952)  ; FMin(a,b)
  %2954 = fmul fast float %2950, %2941
  %2955 = call float @dx.op.unary.f32(i32 7, float %2954)  ; Saturate(value)
  %2956 = fsub fast float %2947, %2943
  %2957 = fsub fast float %2948, %2944
  %2958 = fsub fast float %2949, %2945
  %2959 = fmul fast float %2955, %2956
  %2960 = fmul fast float %2955, %2957
  %2961 = fmul fast float %2955, %2958
  %2962 = fadd fast float %2959, %2943
  %2963 = fadd fast float %2960, %2944
  %2964 = fadd fast float %2961, %2945
  %2965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2966 = extractvalue %dx.types.CBufRet.f32 %2965, 0
  %2967 = extractvalue %dx.types.CBufRet.f32 %2965, 1
  %2968 = fadd fast float %2967, %2966
  %2969 = call float @dx.op.unary.f32(i32 7, float %2968)  ; Saturate(value)
  %2970 = extractvalue %dx.types.CBufRet.f32 %2965, 2
  %2971 = extractvalue %dx.types.CBufRet.f32 %2965, 3
  %2972 = fadd fast float %2971, %2970
  %2973 = call float @dx.op.unary.f32(i32 7, float %2972)  ; Saturate(value)
  %2974 = fmul fast float %2969, %2953
  %2975 = fmul fast float %2974, %2973
  br label %3217

; <label>:2976                                    ; preds = %2930
  br i1 %2931, label %2977, label %2998, !dx.controlflow.hints !101

; <label>:2977                                    ; preds = %2976
  %2978 = call float @dx.op.binary.f32(i32 36, float %2927, float %2917)  ; FMin(a,b)
  %2979 = fsub fast float %2927, %2978
  %2980 = fsub fast float %2979, %2916
  %2981 = call float @dx.op.unary.f32(i32 6, float %2980)  ; FAbs(value)
  %2982 = fadd fast float %2979, %2916
  %2983 = fmul fast float %2982, %2847
  %2984 = fadd fast float %2983, %2860
  %2985 = fmul fast float %2984, %2981
  %2986 = fsub fast float %2922, %2985
  br label %2998

; <label>:2987                                    ; preds = %2915
  br i1 %2929, label %2988, label %2998, !dx.controlflow.hints !102

; <label>:2988                                    ; preds = %2987
  %2989 = call float @dx.op.binary.f32(i32 35, float %2917, float %2927)  ; FMax(a,b)
  %2990 = icmp eq i32 %2866, 0
  %2991 = select i1 %2990, float %2927, float 0.000000e+00
  %2992 = fsub fast float -0.000000e+00, %2991
  %2993 = call float @dx.op.unary.f32(i32 6, float %2992)  ; FAbs(value)
  %2994 = fmul fast float %2991, %2847
  %2995 = fadd fast float %2994, %2860
  %2996 = fmul fast float %2993, %2995
  %2997 = fsub fast float %2922, %2996
  br label %2998

; <label>:2998                                    ; preds = %2988, %2987, %2977, %2976
  %2999 = phi float [ %2917, %2976 ], [ %2917, %2977 ], [ %2989, %2988 ], [ %2917, %2987 ]
  %3000 = phi float [ 0.000000e+00, %2976 ], [ %2981, %2977 ], [ %2993, %2988 ], [ 0.000000e+00, %2987 ]
  %3001 = phi float [ %2922, %2976 ], [ %2986, %2977 ], [ %2997, %2988 ], [ %2922, %2987 ]
  %3002 = phi float [ %2927, %2976 ], [ %2927, %2977 ], [ %2916, %2988 ], [ %2916, %2987 ]
  %3003 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 0
  store float -1.000000e+00, float* %3003, align 4, !tbaa !103, !noalias !107
  %3004 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 1
  store float -1.000000e+00, float* %3004, align 4, !tbaa !103, !noalias !107
  %3005 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 2
  store float -1.000000e+00, float* %3005, align 4, !tbaa !103, !noalias !107
  %3006 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 0
  store float -1.000000e+00, float* %3006, align 4, !tbaa !103, !noalias !107
  %3007 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 1
  store float -1.000000e+00, float* %3007, align 4, !tbaa !103, !noalias !107
  %3008 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 2
  store float -1.000000e+00, float* %3008, align 4, !tbaa !103, !noalias !107
  %3009 = icmp sgt i32 %2868, 0
  br i1 %3009, label %3010, label %3071

; <label>:3010                                    ; preds = %2998
  br label %3011

; <label>:3011                                    ; preds = %3060, %3010
  %3012 = phi i32 [ %3061, %3060 ], [ 0, %3010 ]
  %3013 = phi i32 [ %3062, %3060 ], [ 0, %3010 ]
  %3014 = add nuw i32 %3013, 171
  %3015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 %3014)  ; CBufferLoadLegacy(handle,regIndex)
  %3016 = extractvalue %dx.types.CBufRet.f32 %3015, 0
  %3017 = extractvalue %dx.types.CBufRet.f32 %3015, 1
  %3018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3019 = extractvalue %dx.types.CBufRet.f32 %3018, 0
  %3020 = extractvalue %dx.types.CBufRet.f32 %3018, 1
  %3021 = fsub fast float %3016, %3019
  %3022 = fsub fast float %3017, %3020
  %3023 = extractvalue %dx.types.CBufRet.f32 %3015, 2
  %3024 = fsub fast float -0.000000e+00, %3021
  %3025 = fsub fast float -0.000000e+00, %3022
  %3026 = call float @dx.op.dot2.f32(i32 54, float %2845, float %2846, float %3024, float %3025)  ; Dot2(ax,ay,bx,by)
  %3027 = fmul fast float %3026, 2.000000e+00
  %3028 = call float @dx.op.dot2.f32(i32 54, float %3024, float %3025, float %3024, float %3025)  ; Dot2(ax,ay,bx,by)
  %3029 = fmul fast float %3023, %3023
  %3030 = fsub fast float %3028, %3029
  %3031 = fmul fast float %3027, %3027
  %3032 = fmul fast float %2888, %3030
  %3033 = fsub fast float %3031, %3032
  %3034 = fcmp fast ogt float %3033, 0.000000e+00
  br i1 %3034, label %3035, label %3050, !dx.controlflow.hints !95

; <label>:3035                                    ; preds = %3011
  %3036 = fcmp fast ogt float %3027, 0.000000e+00
  %3037 = call float @dx.op.unary.f32(i32 24, float %3033)  ; Sqrt(value)
  %3038 = fsub fast float -0.000000e+00, %3037
  %3039 = select i1 %3036, float %3037, float %3038
  %3040 = fadd fast float %3039, %3027
  %3041 = fmul float %3040, -5.000000e-01
  %3042 = fdiv fast float %3041, %2881
  %3043 = call float @dx.op.binary.f32(i32 35, float %3042, float 0.000000e+00)  ; FMax(a,b)
  %3044 = call float @dx.op.binary.f32(i32 36, float %2916, float %3043)  ; FMin(a,b)
  %3045 = fdiv fast float %3030, %3041
  %3046 = call float @dx.op.binary.f32(i32 35, float %3045, float 0.000000e+00)  ; FMax(a,b)
  %3047 = call float @dx.op.binary.f32(i32 36, float %2916, float %3046)  ; FMin(a,b)
  %3048 = call float @dx.op.binary.f32(i32 36, float %3044, float %3047)  ; FMin(a,b)
  %3049 = call float @dx.op.binary.f32(i32 35, float %3044, float %3047)  ; FMax(a,b)
  br label %3050

; <label>:3050                                    ; preds = %3035, %3011
  %3051 = phi float [ %3049, %3035 ], [ -1.000000e+00, %3011 ]
  %3052 = phi float [ %3048, %3035 ], [ -1.000000e+00, %3011 ]
  %3053 = phi i1 [ true, %3035 ], [ false, %3011 ]
  br i1 %3053, label %3054, label %3060, !dx.controlflow.hints !118

; <label>:3054                                    ; preds = %3050
  %3055 = call float @dx.op.binary.f32(i32 35, float %2999, float %3052)  ; FMax(a,b)
  %3056 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %3013
  store float %3055, float* %3056, align 4, !tbaa !103, !noalias !107
  %3057 = call float @dx.op.binary.f32(i32 35, float %2999, float %3051)  ; FMax(a,b)
  %3058 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %3013
  store float %3057, float* %3058, align 4, !tbaa !103, !noalias !107
  %3059 = add nsw i32 %3012, 1
  br label %3060

; <label>:3060                                    ; preds = %3054, %3050
  %3061 = phi i32 [ %3059, %3054 ], [ %3012, %3050 ]
  %3062 = add nuw nsw i32 %3013, 1
  %3063 = icmp eq i32 %3062, %2868
  br i1 %3063, label %3064, label %3011

; <label>:3064                                    ; preds = %3060
  %3065 = load float, float* %3005, align 4, !tbaa !103, !alias.scope !119, !noalias !122
  %3066 = load float, float* %3004, align 4, !tbaa !103, !alias.scope !125, !noalias !126
  %3067 = load float, float* %3003, align 4, !tbaa !103, !alias.scope !127, !noalias !128
  %3068 = load float, float* %3008, align 4, !tbaa !103, !alias.scope !129, !noalias !132
  %3069 = load float, float* %3007, align 4, !tbaa !103, !alias.scope !135, !noalias !136
  %3070 = load float, float* %3006, align 4, !tbaa !103, !alias.scope !137, !noalias !138
  br label %3071

; <label>:3071                                    ; preds = %3064, %2998
  %3072 = phi float [ -1.000000e+00, %2998 ], [ %3070, %3064 ]
  %3073 = phi float [ -1.000000e+00, %2998 ], [ %3069, %3064 ]
  %3074 = phi float [ -1.000000e+00, %2998 ], [ %3068, %3064 ]
  %3075 = phi float [ -1.000000e+00, %2998 ], [ %3067, %3064 ]
  %3076 = phi float [ -1.000000e+00, %2998 ], [ %3066, %3064 ]
  %3077 = phi float [ -1.000000e+00, %2998 ], [ %3065, %3064 ]
  %3078 = phi i32 [ 0, %2998 ], [ %3061, %3064 ]
  %3079 = call float @dx.op.binary.f32(i32 36, float %3076, float %3077)  ; FMin(a,b)
  %3080 = call float @dx.op.binary.f32(i32 36, float %3075, float %3079)  ; FMin(a,b)
  %3081 = call float @dx.op.binary.f32(i32 35, float %3075, float %3076)  ; FMax(a,b)
  %3082 = call float @dx.op.binary.f32(i32 36, float %3081, float %3077)  ; FMin(a,b)
  %3083 = call float @dx.op.binary.f32(i32 36, float %3075, float %3076)  ; FMin(a,b)
  %3084 = call float @dx.op.binary.f32(i32 35, float %3083, float %3082)  ; FMax(a,b)
  %3085 = call float @dx.op.binary.f32(i32 35, float %3076, float %3077)  ; FMax(a,b)
  %3086 = call float @dx.op.binary.f32(i32 35, float %3075, float %3085)  ; FMax(a,b)
  store float %3080, float* %3003, align 4, !tbaa !103, !alias.scope !127, !noalias !128
  store float %3084, float* %3004, align 4, !tbaa !103, !alias.scope !125, !noalias !126
  store float %3086, float* %3005, align 4, !tbaa !103, !alias.scope !119, !noalias !122
  %3087 = call float @dx.op.binary.f32(i32 36, float %3073, float %3074)  ; FMin(a,b)
  %3088 = call float @dx.op.binary.f32(i32 36, float %3072, float %3087)  ; FMin(a,b)
  %3089 = call float @dx.op.binary.f32(i32 35, float %3072, float %3073)  ; FMax(a,b)
  %3090 = call float @dx.op.binary.f32(i32 36, float %3089, float %3074)  ; FMin(a,b)
  %3091 = call float @dx.op.binary.f32(i32 36, float %3072, float %3073)  ; FMin(a,b)
  %3092 = call float @dx.op.binary.f32(i32 35, float %3091, float %3090)  ; FMax(a,b)
  %3093 = call float @dx.op.binary.f32(i32 35, float %3073, float %3074)  ; FMax(a,b)
  %3094 = call float @dx.op.binary.f32(i32 35, float %3072, float %3093)  ; FMax(a,b)
  store float %3088, float* %3006, align 4, !tbaa !103, !alias.scope !137, !noalias !138
  store float %3092, float* %3007, align 4, !tbaa !103, !alias.scope !135, !noalias !136
  store float %3094, float* %3008, align 4, !tbaa !103, !alias.scope !129, !noalias !132
  %3095 = sub nsw i32 3, %3078
  %3096 = icmp sgt i32 %3095, 2
  br i1 %3096, label %3097, label %3135, !dx.controlflow.hints !139

; <label>:3097                                    ; preds = %3071
  %3098 = icmp eq i32 %2866, 0
  %3099 = fsub fast float %2916, %3000
  %3100 = select i1 %3098, float %3099, float %3000
  %3101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3102 = extractvalue %dx.types.CBufRet.f32 %3101, 0
  %3103 = extractvalue %dx.types.CBufRet.f32 %3101, 1
  %3104 = extractvalue %dx.types.CBufRet.f32 %3101, 2
  %3105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3106 = extractvalue %dx.types.CBufRet.f32 %3105, 0
  %3107 = extractvalue %dx.types.CBufRet.f32 %3105, 1
  %3108 = extractvalue %dx.types.CBufRet.f32 %3105, 2
  %3109 = extractvalue %dx.types.CBufRet.f32 %3105, 3
  %3110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3111 = extractvalue %dx.types.CBufRet.f32 %3110, 3
  %3112 = call float @dx.op.binary.f32(i32 36, float %3001, float %3111)  ; FMin(a,b)
  %3113 = fmul fast float %3109, %3100
  %3114 = call float @dx.op.unary.f32(i32 7, float %3113)  ; Saturate(value)
  %3115 = fsub fast float %3106, %3102
  %3116 = fsub fast float %3107, %3103
  %3117 = fsub fast float %3108, %3104
  %3118 = fmul fast float %3114, %3115
  %3119 = fmul fast float %3114, %3116
  %3120 = fmul fast float %3114, %3117
  %3121 = fadd fast float %3118, %3102
  %3122 = fadd fast float %3119, %3103
  %3123 = fadd fast float %3120, %3104
  %3124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3125 = extractvalue %dx.types.CBufRet.f32 %3124, 0
  %3126 = extractvalue %dx.types.CBufRet.f32 %3124, 1
  %3127 = fadd fast float %3126, %3125
  %3128 = call float @dx.op.unary.f32(i32 7, float %3127)  ; Saturate(value)
  %3129 = extractvalue %dx.types.CBufRet.f32 %3124, 2
  %3130 = extractvalue %dx.types.CBufRet.f32 %3124, 3
  %3131 = fadd fast float %3130, %3129
  %3132 = call float @dx.op.unary.f32(i32 7, float %3131)  ; Saturate(value)
  %3133 = fmul fast float %3128, %3112
  %3134 = fmul fast float %3133, %3132
  br label %3217

; <label>:3135                                    ; preds = %3071
  %3136 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %3095
  %3137 = load float, float* %3136, align 4, !tbaa !103, !noalias !107
  %3138 = fcmp fast olt float %3137, %3002
  %3139 = icmp sgt i32 %3078, 0
  %3140 = and i1 %3139, %3138
  br i1 %3140, label %3141, label %3178

; <label>:3141                                    ; preds = %3135
  br label %3142

; <label>:3142                                    ; preds = %3171, %3141
  %3143 = phi float [ %3172, %3171 ], [ %3000, %3141 ]
  %3144 = phi float [ %3173, %3171 ], [ %3001, %3141 ]
  %3145 = phi float [ %3153, %3171 ], [ %3137, %3141 ]
  %3146 = phi i32 [ %3150, %3171 ], [ %3095, %3141 ]
  %3147 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %3146
  %3148 = load float, float* %3147, align 4, !tbaa !103, !noalias !107
  %3149 = icmp slt i32 %3146, 2
  %3150 = add nsw i32 %3146, 1
  %3151 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %3150
  %3152 = load float, float* %3151, align 4, !tbaa !103, !noalias !107
  %3153 = select i1 %3149, float %3152, float %2916
  %3154 = call float @dx.op.binary.f32(i32 36, float %3153, float %3148)  ; FMin(a,b)
  %3155 = call float @dx.op.binary.f32(i32 36, float %3002, float %3154)  ; FMin(a,b)
  %3156 = icmp eq i32 %2866, 0
  %3157 = fadd fast float %3155, %3145
  %3158 = fmul fast float %3157, %2847
  %3159 = fadd fast float %3158, %2860
  br i1 %3156, label %3165, label %3160, !dx.controlflow.hints !140

; <label>:3160                                    ; preds = %3142
  %3161 = fsub fast float %3155, %3145
  %3162 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3161)  ; FMax(a,b)
  %3163 = fmul fast float %3162, %3159
  %3164 = fadd fast float %3163, %3144
  br label %3171

; <label>:3165                                    ; preds = %3142
  %3166 = fsub fast float %3145, %3155
  %3167 = call float @dx.op.unary.f32(i32 6, float %3166)  ; FAbs(value)
  %3168 = fadd fast float %3167, %3143
  %3169 = fmul fast float %3167, %3159
  %3170 = fsub fast float %3144, %3169
  br label %3171

; <label>:3171                                    ; preds = %3165, %3160
  %3172 = phi float [ %3162, %3160 ], [ %3168, %3165 ]
  %3173 = phi float [ %3164, %3160 ], [ %3170, %3165 ]
  %3174 = fcmp fast olt float %3153, %3002
  %3175 = icmp slt i32 %3150, 3
  %3176 = and i1 %3175, %3174
  br i1 %3176, label %3142, label %3177

; <label>:3177                                    ; preds = %3171
  br label %3178

; <label>:3178                                    ; preds = %3177, %3135
  %3179 = phi float [ %3000, %3135 ], [ %3172, %3177 ]
  %3180 = phi float [ %3001, %3135 ], [ %3173, %3177 ]
  %3181 = fsub fast float %2916, %3179
  %3182 = select i1 %2918, float %3179, float %3181
  %3183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3184 = extractvalue %dx.types.CBufRet.f32 %3183, 0
  %3185 = extractvalue %dx.types.CBufRet.f32 %3183, 1
  %3186 = extractvalue %dx.types.CBufRet.f32 %3183, 2
  %3187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3188 = extractvalue %dx.types.CBufRet.f32 %3187, 0
  %3189 = extractvalue %dx.types.CBufRet.f32 %3187, 1
  %3190 = extractvalue %dx.types.CBufRet.f32 %3187, 2
  %3191 = extractvalue %dx.types.CBufRet.f32 %3187, 3
  %3192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3193 = extractvalue %dx.types.CBufRet.f32 %3192, 3
  %3194 = call float @dx.op.binary.f32(i32 36, float %3180, float %3193)  ; FMin(a,b)
  %3195 = fmul fast float %3191, %3182
  %3196 = call float @dx.op.unary.f32(i32 7, float %3195)  ; Saturate(value)
  %3197 = fsub fast float %3188, %3184
  %3198 = fsub fast float %3189, %3185
  %3199 = fsub fast float %3190, %3186
  %3200 = fmul fast float %3196, %3197
  %3201 = fmul fast float %3196, %3198
  %3202 = fmul fast float %3196, %3199
  %3203 = fadd fast float %3200, %3184
  %3204 = fadd fast float %3201, %3185
  %3205 = fadd fast float %3202, %3186
  %3206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3207 = extractvalue %dx.types.CBufRet.f32 %3206, 0
  %3208 = extractvalue %dx.types.CBufRet.f32 %3206, 1
  %3209 = fadd fast float %3208, %3207
  %3210 = call float @dx.op.unary.f32(i32 7, float %3209)  ; Saturate(value)
  %3211 = extractvalue %dx.types.CBufRet.f32 %3206, 2
  %3212 = extractvalue %dx.types.CBufRet.f32 %3206, 3
  %3213 = fadd fast float %3212, %3211
  %3214 = call float @dx.op.unary.f32(i32 7, float %3213)  ; Saturate(value)
  %3215 = fmul fast float %3210, %3194
  %3216 = fmul fast float %3215, %3214
  br label %3217

; <label>:3217                                    ; preds = %3178, %3097, %2932, %2914, %2912
  %3218 = phi float [ %2941, %2932 ], [ %3100, %3097 ], [ %3182, %3178 ], [ 0.000000e+00, %2912 ], [ 0.000000e+00, %2914 ]
  %3219 = phi float [ %2975, %2932 ], [ %3134, %3097 ], [ %3216, %3178 ], [ 0.000000e+00, %2912 ], [ 0.000000e+00, %2914 ]
  %3220 = phi float [ %2962, %2932 ], [ %3121, %3097 ], [ %3203, %3178 ], [ 0.000000e+00, %2912 ], [ 0.000000e+00, %2914 ]
  %3221 = phi float [ %2963, %2932 ], [ %3122, %3097 ], [ %3204, %3178 ], [ 0.000000e+00, %2912 ], [ 0.000000e+00, %2914 ]
  %3222 = phi float [ %2964, %2932 ], [ %3123, %3097 ], [ %3205, %3178 ], [ 0.000000e+00, %2912 ], [ 0.000000e+00, %2914 ]
  %3223 = fmul fast float %2855, %3219
  %3224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3225 = extractvalue %dx.types.CBufRet.f32 %3224, 2
  %3226 = fsub fast float %2862, %3225
  %3227 = fcmp fast olt float %3223, -2.000000e+01
  %3228 = call float @dx.op.unary.f32(i32 21, float %3223)  ; Exp(value)
  %3229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3230 = extractvalue %dx.types.CBufRet.f32 %3229, 2
  %3231 = extractvalue %dx.types.CBufRet.f32 %3229, 3
  %3232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3233 = extractvalue %dx.types.CBufRet.f32 %3232, 2
  %3234 = fmul fast float %3231, %3226
  %3235 = call float @dx.op.unary.f32(i32 7, float %3234)  ; Saturate(value)
  %3236 = fsub fast float 1.000000e+00, %3235
  %3237 = fmul fast float %2847, 5.000000e-01
  %3238 = fadd fast float %3237, 5.000000e-01
  %3239 = call float @dx.op.unary.f32(i32 7, float %3238)  ; Saturate(value)
  %3240 = fsub fast float 1.000000e+00, %3239
  %3241 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3236)  ; FMax(a,b)
  %3242 = fdiv fast float %3240, %3241
  %3243 = fsub fast float %3226, %2813
  %3244 = call float @dx.op.unary.f32(i32 6, float %3243)  ; FAbs(value)
  %3245 = fmul fast float %3244, %3230
  %3246 = call float @dx.op.unary.f32(i32 7, float %3242)  ; Saturate(value)
  %3247 = fsub fast float 1.000000e+00, %3245
  %3248 = fmul fast float %3247, %3246
  %3249 = fadd fast float %3248, %3245
  %3250 = fmul fast float %3233, %3226
  %3251 = call float @dx.op.unary.f32(i32 7, float %3250)  ; Saturate(value)
  %3252 = fsub fast float 1.000000e+00, %3249
  %3253 = fmul fast float %3252, %3251
  %3254 = fadd fast float %3253, %3249
  %3255 = call float @dx.op.unary.f32(i32 7, float %3254)  ; Saturate(value)
  %3256 = fadd fast float %3228, -1.000000e+00
  %3257 = select i1 %3227, float -1.000000e+00, float %3256
  %3258 = fmul fast float %3255, %3257
  %3259 = fadd fast float %3258, 1.000000e+00
  %3260 = fsub fast float -0.000000e+00, %3258
  %3261 = fmul fast float %3220, %3260
  %3262 = fmul fast float %3221, %3260
  %3263 = fmul fast float %3222, %3260
  br label %3264

; <label>:3264                                    ; preds = %3217, %2766
  %3265 = phi float [ %3218, %3217 ], [ 0.000000e+00, %2766 ]
  %3266 = phi float [ %3259, %3217 ], [ 1.000000e+00, %2766 ]
  %3267 = phi float [ %3261, %3217 ], [ 0.000000e+00, %2766 ]
  %3268 = phi float [ %3262, %3217 ], [ 0.000000e+00, %2766 ]
  %3269 = phi float [ %3263, %3217 ], [ 0.000000e+00, %2766 ]
  %3270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3271 = extractvalue %dx.types.CBufRet.f32 %3270, 1
  %3272 = fsub fast float 1.000000e+00, %3266
  %3273 = fmul fast float %3272, %2848
  %3274 = fmul fast float %3273, %3271
  %3275 = fsub fast float %2848, %3274
  br i1 %2841, label %3276, label %3305, !dx.controlflow.hints !141

; <label>:3276                                    ; preds = %3264
  %3277 = fmul fast float %2849, %2838
  %3278 = fadd fast float %3277, %2839
  %3279 = call float @dx.op.unary.f32(i32 7, float %3278)  ; Saturate(value)
  %3280 = fmul fast float %2820, %3275
  %3281 = fsub fast float -0.000000e+00, %3280
  %3282 = fmul fast float %2821, %3275
  %3283 = fsub fast float -0.000000e+00, %3282
  %3284 = call float @dx.op.unary.f32(i32 21, float %3281)  ; Exp(value)
  %3285 = call float @dx.op.unary.f32(i32 21, float %3283)  ; Exp(value)
  %3286 = call float @dx.op.binary.f32(i32 35, float %2828, float %3284)  ; FMax(a,b)
  %3287 = call float @dx.op.binary.f32(i32 35, float %2828, float %3285)  ; FMax(a,b)
  %3288 = fsub fast float %3287, %3286
  %3289 = fmul fast float %3288, %3279
  %3290 = fadd fast float %3289, %3286
  %3291 = call float @dx.op.unary.f32(i32 7, float %3290)  ; Saturate(value)
  %3292 = fsub fast float %2825, %2830
  %3293 = fsub fast float %2826, %2831
  %3294 = fsub fast float %2827, %2832
  %3295 = fmul fast float %3279, %3292
  %3296 = fmul fast float %3279, %3293
  %3297 = fmul fast float %3279, %3294
  %3298 = fadd fast float %3295, %2830
  %3299 = fadd fast float %3296, %2831
  %3300 = fadd fast float %3297, %2832
  %3301 = fsub fast float 1.000000e+00, %3291
  %3302 = fmul fast float %3301, %3298
  %3303 = fmul fast float %3301, %3299
  %3304 = fmul fast float %3301, %3300
  br label %3364

; <label>:3305                                    ; preds = %3264
  %3306 = fmul fast float %3275, %2837
  %3307 = call float @dx.op.unary.f32(i32 7, float %3306)  ; Saturate(value)
  %3308 = fsub fast float 2.000000e+00, %3307
  %3309 = fmul fast float %3307, 9.921875e-01
  %3310 = fmul fast float %3309, %3308
  %3311 = fadd fast float %3310, 3.906250e-03
  %3312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %21, float %3311, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3313 = extractvalue %dx.types.ResRet.f32 %3312, 0
  %3314 = fsub fast float %3307, %3313
  %3315 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3314)  ; FMax(a,b)
  %3316 = fmul fast float %2823, %2813
  %3317 = call float @dx.op.unary.f32(i32 6, float %3316)  ; FAbs(value)
  %3318 = fcmp fast ogt float %3317, 0x3EB0C6F7A0000000
  br i1 %3318, label %3319, label %3325, !dx.controlflow.hints !142

; <label>:3319                                    ; preds = %3305
  %3320 = fmul fast float %3316, 0xBFF7154760000000
  %3321 = call float @dx.op.unary.f32(i32 21, float %3320)  ; Exp(value)
  %3322 = fsub fast float 1.000000e+00, %3321
  %3323 = fdiv fast float %3322, %3316
  %3324 = fmul fast float %3323, %2833
  br label %3325

; <label>:3325                                    ; preds = %3319, %3305
  %3326 = phi float [ %3324, %3319 ], [ %2833, %3305 ]
  %3327 = fadd fast float %3326, %2835
  %3328 = fmul fast float %3327, %3315
  %3329 = fmul fast float %2820, %3328
  %3330 = fsub fast float -0.000000e+00, %3329
  %3331 = fmul fast float %2821, %3328
  %3332 = fsub fast float -0.000000e+00, %3331
  %3333 = fmul fast float %2822, %3328
  %3334 = fsub fast float -0.000000e+00, %3333
  %3335 = call float @dx.op.unary.f32(i32 21, float %3330)  ; Exp(value)
  %3336 = call float @dx.op.unary.f32(i32 21, float %3332)  ; Exp(value)
  %3337 = call float @dx.op.unary.f32(i32 21, float %3334)  ; Exp(value)
  %3338 = fmul fast float %2849, %2849
  %3339 = fadd fast float %3338, 1.000000e+00
  %3340 = fmul fast float %3339, 0x3FAE8EC8A0000000
  %3341 = fmul fast float %3340, %2830
  %3342 = fmul fast float %3340, %2831
  %3343 = fmul fast float %3340, %2832
  %3344 = fmul fast float %2849, %2828
  %3345 = fsub fast float 1.000000e+00, %3344
  %3346 = fmul fast float %2828, %2828
  %3347 = fsub fast float 1.000000e+00, %3346
  %3348 = fmul fast float %3347, 0x3FB45F3060000000
  %3349 = fmul fast float %3345, %3345
  %3350 = fdiv fast float 1.000000e+00, %3349
  %3351 = fmul fast float %3348, %3350
  %3352 = fmul fast float %3351, %2825
  %3353 = fmul fast float %3351, %2826
  %3354 = fmul fast float %3351, %2827
  %3355 = fadd fast float %3352, %3341
  %3356 = fadd fast float %3353, %3342
  %3357 = fadd fast float %3354, %3343
  %3358 = fsub fast float 1.000000e+00, %3335
  %3359 = fsub fast float 1.000000e+00, %3336
  %3360 = fsub fast float 1.000000e+00, %3337
  %3361 = fmul fast float %3355, %3358
  %3362 = fmul fast float %3356, %3359
  %3363 = fmul fast float %3357, %3360
  br label %3364

; <label>:3364                                    ; preds = %3325, %3276
  %3365 = phi float [ %3302, %3276 ], [ %3361, %3325 ]
  %3366 = phi float [ %3303, %3276 ], [ %3362, %3325 ]
  %3367 = phi float [ %3304, %3276 ], [ %3363, %3325 ]
  %3368 = phi float [ %3291, %3276 ], [ %3335, %3325 ]
  %3369 = phi float [ %3291, %3276 ], [ %3336, %3325 ]
  %3370 = phi float [ %3291, %3276 ], [ %3337, %3325 ]
  br i1 %2857, label %3371, label %3569, !dx.controlflow.hints !143

; <label>:3371                                    ; preds = %3364
  %3372 = extractvalue %dx.types.CBufRet.f32 %3270, 0
  %3373 = fmul fast float %3372, %3272
  %3374 = fsub fast float %3267, %3365
  %3375 = fsub fast float %3268, %3366
  %3376 = fsub fast float %3269, %3367
  %3377 = fmul fast float %3373, %3374
  %3378 = fmul fast float %3373, %3375
  %3379 = fmul fast float %3373, %3376
  %3380 = fadd fast float %3377, %3365
  %3381 = fadd fast float %3378, %3366
  %3382 = fadd fast float %3379, %3367
  %3383 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3368)  ; FMax(a,b)
  %3384 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3369)  ; FMax(a,b)
  %3385 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3370)  ; FMax(a,b)
  %3386 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3266)  ; FMax(a,b)
  %3387 = call float @dx.op.binary.f32(i32 35, float %3265, float %3275)  ; FMax(a,b)
  %3388 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3387)  ; FMax(a,b)
  %3389 = fdiv fast float %3265, %3388
  %3390 = call float @dx.op.unary.f32(i32 7, float %3389)  ; Saturate(value)
  %3391 = fdiv fast float %3275, %3388
  %3392 = call float @dx.op.unary.f32(i32 7, float %3391)  ; Saturate(value)
  %3393 = fcmp fast une float %3386, 1.000000e+00
  br i1 %3393, label %3394, label %3407, !dx.controlflow.hints !144

; <label>:3394                                    ; preds = %3371
  %3395 = call float @dx.op.unary.f32(i32 23, float %3386)  ; Log(value)
  %3396 = fmul fast float %3395, 0x3FE62E4300000000
  %3397 = fmul fast float %3267, %3396
  %3398 = fsub fast float -0.000000e+00, %3397
  %3399 = fmul fast float %3268, %3396
  %3400 = fsub fast float -0.000000e+00, %3399
  %3401 = fmul fast float %3269, %3396
  %3402 = fsub fast float -0.000000e+00, %3401
  %3403 = fsub fast float 1.000000e+00, %3386
  %3404 = fdiv fast float %3398, %3403
  %3405 = fdiv fast float %3400, %3403
  %3406 = fdiv fast float %3402, %3403
  br label %3407

; <label>:3407                                    ; preds = %3394, %3371
  %3408 = phi float [ %3404, %3394 ], [ %3267, %3371 ]
  %3409 = phi float [ %3405, %3394 ], [ %3268, %3371 ]
  %3410 = phi float [ %3406, %3394 ], [ %3269, %3371 ]
  %3411 = phi float [ %3396, %3394 ], [ 0.000000e+00, %3371 ]
  %3412 = fcmp fast une float %3383, 1.000000e+00
  br i1 %3412, label %3413, label %3420, !dx.controlflow.hints !145

; <label>:3413                                    ; preds = %3407
  %3414 = call float @dx.op.unary.f32(i32 23, float %3383)  ; Log(value)
  %3415 = fmul fast float %3414, 0x3FE62E4300000000
  %3416 = fmul fast float %3380, %3415
  %3417 = fsub fast float -0.000000e+00, %3416
  %3418 = fsub fast float 1.000000e+00, %3383
  %3419 = fdiv fast float %3417, %3418
  br label %3420

; <label>:3420                                    ; preds = %3413, %3407
  %3421 = phi float [ %3419, %3413 ], [ %3380, %3407 ]
  %3422 = phi float [ %3415, %3413 ], [ 0.000000e+00, %3407 ]
  %3423 = fcmp fast une float %3384, 1.000000e+00
  br i1 %3423, label %3424, label %3431, !dx.controlflow.hints !145

; <label>:3424                                    ; preds = %3420
  %3425 = call float @dx.op.unary.f32(i32 23, float %3384)  ; Log(value)
  %3426 = fmul fast float %3425, 0x3FE62E4300000000
  %3427 = fmul fast float %3381, %3426
  %3428 = fsub fast float -0.000000e+00, %3427
  %3429 = fsub fast float 1.000000e+00, %3384
  %3430 = fdiv fast float %3428, %3429
  br label %3431

; <label>:3431                                    ; preds = %3424, %3420
  %3432 = phi float [ %3430, %3424 ], [ %3381, %3420 ]
  %3433 = phi float [ %3426, %3424 ], [ 0.000000e+00, %3420 ]
  %3434 = fcmp fast une float %3385, 1.000000e+00
  br i1 %3434, label %3435, label %3442, !dx.controlflow.hints !145

; <label>:3435                                    ; preds = %3431
  %3436 = call float @dx.op.unary.f32(i32 23, float %3385)  ; Log(value)
  %3437 = fmul fast float %3436, 0x3FE62E4300000000
  %3438 = fmul fast float %3382, %3437
  %3439 = fsub fast float -0.000000e+00, %3438
  %3440 = fsub fast float 1.000000e+00, %3385
  %3441 = fdiv fast float %3439, %3440
  br label %3442

; <label>:3442                                    ; preds = %3435, %3431
  %3443 = phi float [ %3441, %3435 ], [ %3382, %3431 ]
  %3444 = phi float [ %3437, %3435 ], [ 0.000000e+00, %3431 ]
  %3445 = fmul fast float %3408, %3392
  %3446 = fmul fast float %3409, %3392
  %3447 = fmul fast float %3410, %3392
  %3448 = fmul fast float %3411, %3392
  %3449 = fmul fast float %3421, %3390
  %3450 = fmul fast float %3432, %3390
  %3451 = fmul fast float %3443, %3390
  %3452 = fmul fast float %3422, %3390
  %3453 = fmul fast float %3433, %3390
  %3454 = fmul fast float %3444, %3390
  %3455 = fadd fast float %3449, %3445
  %3456 = fadd fast float %3450, %3446
  %3457 = fadd fast float %3451, %3447
  %3458 = fadd fast float %3452, %3448
  %3459 = fadd fast float %3453, %3448
  %3460 = fadd fast float %3454, %3448
  %3461 = fcmp fast une float %3458, 0.000000e+00
  br i1 %3461, label %3462, label %3469, !dx.controlflow.hints !146

; <label>:3462                                    ; preds = %3442
  %3463 = fmul fast float %3458, 0x3FF7154760000000
  %3464 = call float @dx.op.unary.f32(i32 21, float %3463)  ; Exp(value)
  %3465 = fsub fast float 1.000000e+00, %3464
  %3466 = fmul fast float %3455, %3465
  %3467 = fsub fast float -0.000000e+00, %3466
  %3468 = fdiv fast float %3467, %3458
  br label %3469

; <label>:3469                                    ; preds = %3462, %3442
  %3470 = phi float [ %3464, %3462 ], [ 1.000000e+00, %3442 ]
  %3471 = phi float [ %3468, %3462 ], [ %3455, %3442 ]
  %3472 = fcmp fast une float %3459, 0.000000e+00
  br i1 %3472, label %3473, label %3480, !dx.controlflow.hints !146

; <label>:3473                                    ; preds = %3469
  %3474 = fmul fast float %3459, 0x3FF7154760000000
  %3475 = call float @dx.op.unary.f32(i32 21, float %3474)  ; Exp(value)
  %3476 = fsub fast float 1.000000e+00, %3475
  %3477 = fmul fast float %3456, %3476
  %3478 = fsub fast float -0.000000e+00, %3477
  %3479 = fdiv fast float %3478, %3459
  br label %3480

; <label>:3480                                    ; preds = %3473, %3469
  %3481 = phi float [ %3475, %3473 ], [ 1.000000e+00, %3469 ]
  %3482 = phi float [ %3479, %3473 ], [ %3456, %3469 ]
  %3483 = fcmp fast une float %3460, 0.000000e+00
  br i1 %3483, label %3484, label %3491, !dx.controlflow.hints !146

; <label>:3484                                    ; preds = %3480
  %3485 = fmul fast float %3460, 0x3FF7154760000000
  %3486 = call float @dx.op.unary.f32(i32 21, float %3485)  ; Exp(value)
  %3487 = fsub fast float 1.000000e+00, %3486
  %3488 = fmul fast float %3457, %3487
  %3489 = fsub fast float -0.000000e+00, %3488
  %3490 = fdiv fast float %3489, %3460
  br label %3491

; <label>:3491                                    ; preds = %3484, %3480
  %3492 = phi float [ %3486, %3484 ], [ 1.000000e+00, %3480 ]
  %3493 = phi float [ %3490, %3484 ], [ %3457, %3480 ]
  %3494 = fcmp fast ogt float %3390, %3392
  br i1 %3494, label %3495, label %3515, !dx.controlflow.hints !147

; <label>:3495                                    ; preds = %3491
  %3496 = fsub fast float 1.000000e+00, %3392
  %3497 = fmul fast float %3408, %3496
  %3498 = fmul fast float %3409, %3496
  %3499 = fmul fast float %3410, %3496
  %3500 = fmul fast float %3411, %3496
  %3501 = fcmp fast une float %3500, 0.000000e+00
  br i1 %3501, label %3502, label %3553, !dx.controlflow.hints !148

; <label>:3502                                    ; preds = %3495
  %3503 = fmul fast float %3500, 0x3FF7154760000000
  %3504 = call float @dx.op.unary.f32(i32 21, float %3503)  ; Exp(value)
  %3505 = fsub fast float 1.000000e+00, %3504
  %3506 = fmul fast float %3497, %3505
  %3507 = fsub fast float -0.000000e+00, %3506
  %3508 = fmul fast float %3498, %3505
  %3509 = fsub fast float -0.000000e+00, %3508
  %3510 = fmul fast float %3499, %3505
  %3511 = fsub fast float -0.000000e+00, %3510
  %3512 = fdiv fast float %3507, %3500
  %3513 = fdiv fast float %3509, %3500
  %3514 = fdiv fast float %3511, %3500
  br label %3553

; <label>:3515                                    ; preds = %3491
  %3516 = fsub fast float 1.000000e+00, %3390
  %3517 = fmul fast float %3421, %3516
  %3518 = fmul fast float %3432, %3516
  %3519 = fmul fast float %3443, %3516
  %3520 = fmul fast float %3422, %3516
  %3521 = fmul fast float %3433, %3516
  %3522 = fmul fast float %3444, %3516
  %3523 = fcmp fast une float %3520, 0.000000e+00
  br i1 %3523, label %3524, label %3531, !dx.controlflow.hints !146

; <label>:3524                                    ; preds = %3515
  %3525 = fmul fast float %3520, 0x3FF7154760000000
  %3526 = call float @dx.op.unary.f32(i32 21, float %3525)  ; Exp(value)
  %3527 = fsub fast float 1.000000e+00, %3526
  %3528 = fmul fast float %3517, %3527
  %3529 = fsub fast float -0.000000e+00, %3528
  %3530 = fdiv fast float %3529, %3520
  br label %3531

; <label>:3531                                    ; preds = %3524, %3515
  %3532 = phi float [ %3530, %3524 ], [ %3517, %3515 ]
  %3533 = phi float [ %3526, %3524 ], [ 1.000000e+00, %3515 ]
  %3534 = fcmp fast une float %3521, 0.000000e+00
  br i1 %3534, label %3535, label %3542, !dx.controlflow.hints !146

; <label>:3535                                    ; preds = %3531
  %3536 = fmul fast float %3521, 0x3FF7154760000000
  %3537 = call float @dx.op.unary.f32(i32 21, float %3536)  ; Exp(value)
  %3538 = fsub fast float 1.000000e+00, %3537
  %3539 = fmul fast float %3518, %3538
  %3540 = fsub fast float -0.000000e+00, %3539
  %3541 = fdiv fast float %3540, %3521
  br label %3542

; <label>:3542                                    ; preds = %3535, %3531
  %3543 = phi float [ %3541, %3535 ], [ %3518, %3531 ]
  %3544 = phi float [ %3537, %3535 ], [ 1.000000e+00, %3531 ]
  %3545 = fcmp fast une float %3522, 0.000000e+00
  br i1 %3545, label %3546, label %3553, !dx.controlflow.hints !146

; <label>:3546                                    ; preds = %3542
  %3547 = fmul fast float %3522, 0x3FF7154760000000
  %3548 = call float @dx.op.unary.f32(i32 21, float %3547)  ; Exp(value)
  %3549 = fsub fast float 1.000000e+00, %3548
  %3550 = fmul fast float %3519, %3549
  %3551 = fsub fast float -0.000000e+00, %3550
  %3552 = fdiv fast float %3551, %3522
  br label %3553

; <label>:3553                                    ; preds = %3546, %3542, %3502, %3495
  %3554 = phi float [ %3552, %3546 ], [ %3514, %3502 ], [ %3499, %3495 ], [ %3519, %3542 ]
  %3555 = phi float [ %3543, %3546 ], [ %3513, %3502 ], [ %3498, %3495 ], [ %3543, %3542 ]
  %3556 = phi float [ %3532, %3546 ], [ %3512, %3502 ], [ %3497, %3495 ], [ %3532, %3542 ]
  %3557 = phi float [ %3548, %3546 ], [ %3504, %3502 ], [ 1.000000e+00, %3495 ], [ 1.000000e+00, %3542 ]
  %3558 = phi float [ %3544, %3546 ], [ %3504, %3502 ], [ 1.000000e+00, %3495 ], [ %3544, %3542 ]
  %3559 = phi float [ %3533, %3546 ], [ %3504, %3502 ], [ 1.000000e+00, %3495 ], [ %3533, %3542 ]
  %3560 = fmul fast float %3559, %3471
  %3561 = fmul fast float %3558, %3482
  %3562 = fmul fast float %3557, %3493
  %3563 = fadd fast float %3560, %3556
  %3564 = fadd fast float %3561, %3555
  %3565 = fadd fast float %3562, %3554
  %3566 = fmul fast float %3559, %3470
  %3567 = fmul fast float %3558, %3481
  %3568 = fmul fast float %3557, %3492
  br label %3569

; <label>:3569                                    ; preds = %3553, %3364
  %3570 = phi float [ %3370, %3364 ], [ %3568, %3553 ]
  %3571 = phi float [ %3369, %3364 ], [ %3567, %3553 ]
  %3572 = phi float [ %3368, %3364 ], [ %3566, %3553 ]
  %3573 = phi float [ %3367, %3364 ], [ %3565, %3553 ]
  %3574 = phi float [ %3366, %3364 ], [ %3564, %3553 ]
  %3575 = phi float [ %3365, %3364 ], [ %3563, %3553 ]
  %3576 = fmul fast float %3572, %2713
  %3577 = fmul fast float %3571, %2714
  %3578 = fmul fast float %3570, %2715
  %3579 = fsub fast float 1.000000e+00, %2776
  %3580 = fmul fast float %3575, %3579
  %3581 = fmul fast float %3574, %3579
  %3582 = fmul fast float %3573, %3579
  %3583 = fadd fast float %3580, %3576
  %3584 = fadd fast float %3581, %3577
  %3585 = fadd fast float %3582, %3578
  %3586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3587 = extractvalue %dx.types.CBufRet.f32 %3586, 2
  %3588 = fmul fast float %3587, %2786
  %3589 = call float @dx.op.unary.f32(i32 7, float %3588)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %25, i32 %26, i32 undef, float %2776, float %2776, float %2776, float %2776, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3591 = extractvalue %dx.types.CBufRet.f32 %3590, 0
  %3592 = fmul fast float %3591, %3583
  %3593 = fmul fast float %3591, %3584
  %3594 = fmul fast float %3591, %3585
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %25, i32 %26, i32 undef, float %3592, float %3593, float %3594, float %3592, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %25, i32 %26, i32 undef, float %3589, float %3589, float %3589, float %3589, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!36 = !{void ()* @cs_fog_raymarching_air_clouds_heightmap_particles_brfog, !"cs_fog_raymarching_air_clouds_heightmap_particles_brfog", null, !4, !37}
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
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = !{!104, !104, i64 0}
!104 = !{!"float", !105, i64 0}
!105 = !{!"omnipotent char", !106, i64 0}
!106 = !{!"Simple C/C++ TBAA"}
!107 = !{!108, !110, !112, !113, !115, !116, !117}
!108 = distinct !{!108, !109, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!109 = distinct !{!109, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!110 = distinct !{!110, !111, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!111 = distinct !{!111, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!112 = distinct !{!112, !111, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!113 = distinct !{!113, !114, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!114 = distinct !{!114, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!115 = distinct !{!115, !114, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!116 = distinct !{!116, !114, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!117 = distinct !{!117, !114, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 2}
!119 = !{!120}
!120 = distinct !{!120, !121, !"\01?sort@@YAXAIAM00@Z: %c"}
!121 = distinct !{!121, !"\01?sort@@YAXAIAM00@Z"}
!122 = !{!123, !124, !108, !110, !112, !113, !115, !116, !117}
!123 = distinct !{!123, !121, !"\01?sort@@YAXAIAM00@Z: %a"}
!124 = distinct !{!124, !121, !"\01?sort@@YAXAIAM00@Z: %b"}
!125 = !{!124}
!126 = !{!123, !120, !108, !110, !112, !113, !115, !116, !117}
!127 = !{!123}
!128 = !{!124, !120, !108, !110, !112, !113, !115, !116, !117}
!129 = !{!130}
!130 = distinct !{!130, !131, !"\01?sort@@YAXAIAM00@Z: %c"}
!131 = distinct !{!131, !"\01?sort@@YAXAIAM00@Z"}
!132 = !{!133, !134, !108, !110, !112, !113, !115, !116, !117}
!133 = distinct !{!133, !131, !"\01?sort@@YAXAIAM00@Z: %a"}
!134 = distinct !{!134, !131, !"\01?sort@@YAXAIAM00@Z: %b"}
!135 = !{!134}
!136 = !{!133, !130, !108, !110, !112, !113, !115, !116, !117}
!137 = !{!133}
!138 = !{!134, !130, !108, !110, !112, !113, !115, !116, !117}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 2}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 2}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 2}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 2}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}

