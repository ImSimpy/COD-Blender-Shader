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
; shader hash: 3766b991a555301a4b4da53f0c78bb19
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
;                                   texture     f32          3d      T2             t1     1
;                                   texture     f32          3d      T3             t2     1
;                                   texture     f32          2d      T4             t8     1
;                                   texture     f32          2d      T5             t9     1
;                                   texture     f32          2d      T6            t18     1
;                                   texture  struct         r/o      T7            t25     1
;                                   texture     f32          1d      T8            t14     1
;                                   texture     f32          2d      T9            t13     1
;                                   texture     f32          2d     T10             t0     1
;                                   texture    byte         r/o     T11            t17     1
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

define void @cs_fog_raymarching_air_clouds_heightmap_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %25 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %26 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %27 = alloca [3 x float], align 4
  %28 = alloca [3 x float], align 4
  %29 = add i32 %25, %24
  %30 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.i32 %30, 1
  %32 = add i32 %29, %31
  %33 = lshr i32 %32, 1
  %34 = and i32 %33, 1
  %35 = and i32 %32, 1
  %36 = xor i32 %34, %35
  %37 = shl i32 %24, 1
  %38 = shl i32 %25, 1
  %39 = or i32 %36, %37
  %40 = or i32 %34, %38
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.i32 %43, 0
  %45 = extractvalue %dx.types.ResRet.i32 %43, 1
  %46 = extractvalue %dx.types.ResRet.i32 %43, 2
  %47 = extractvalue %dx.types.ResRet.i32 %43, 3
  %48 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %49 = extractvalue %dx.types.ResRet.i32 %48, 0
  %50 = extractvalue %dx.types.ResRet.i32 %48, 1
  %51 = extractvalue %dx.types.ResRet.i32 %48, 2
  %52 = extractvalue %dx.types.ResRet.i32 %48, 3
  %53 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %54 = extractvalue %dx.types.ResRet.i32 %53, 0
  %55 = extractvalue %dx.types.ResRet.i32 %53, 1
  %56 = extractvalue %dx.types.ResRet.i32 %53, 2
  %57 = extractvalue %dx.types.ResRet.i32 %53, 3
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %60 = fmul fast float %59, %59
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %64 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %65 = fmul fast float %64, 0x3FF17B1420000000
  %66 = icmp eq i32 %26, 0
  br i1 %66, label %67, label %208, !dx.controlflow.hints !38

; <label>:67                                      ; preds = %0
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 3
  %72 = extractvalue %dx.types.ResRet.i32 %41, 1
  %73 = and i32 %72, 65535
  %74 = call float @dx.op.legacyF16ToF32(i32 131, i32 %73)  ; LegacyF16ToF32(value)
  %75 = lshr i32 %42, 16
  %76 = call float @dx.op.legacyF16ToF32(i32 131, i32 %75)  ; LegacyF16ToF32(value)
  %77 = and i32 %42, 65535
  %78 = call float @dx.op.legacyF16ToF32(i32 131, i32 %77)  ; LegacyF16ToF32(value)
  %79 = lshr i32 %47, 16
  %80 = call float @dx.op.legacyF16ToF32(i32 131, i32 %79)  ; LegacyF16ToF32(value)
  %81 = and i32 %47, 65535
  %82 = call float @dx.op.legacyF16ToF32(i32 131, i32 %81)  ; LegacyF16ToF32(value)
  %83 = lshr i32 %46, 16
  %84 = call float @dx.op.legacyF16ToF32(i32 131, i32 %83)  ; LegacyF16ToF32(value)
  %85 = and i32 %46, 65535
  %86 = call float @dx.op.legacyF16ToF32(i32 131, i32 %85)  ; LegacyF16ToF32(value)
  %87 = lshr i32 %45, 16
  %88 = call float @dx.op.legacyF16ToF32(i32 131, i32 %87)  ; LegacyF16ToF32(value)
  %89 = lshr i32 %44, 16
  %90 = call float @dx.op.legacyF16ToF32(i32 131, i32 %89)  ; LegacyF16ToF32(value)
  %91 = and i32 %44, 65535
  %92 = call float @dx.op.legacyF16ToF32(i32 131, i32 %91)  ; LegacyF16ToF32(value)
  %93 = lshr i32 %52, 16
  %94 = call float @dx.op.legacyF16ToF32(i32 131, i32 %93)  ; LegacyF16ToF32(value)
  %95 = and i32 %52, 65535
  %96 = call float @dx.op.legacyF16ToF32(i32 131, i32 %95)  ; LegacyF16ToF32(value)
  %97 = lshr i32 %51, 16
  %98 = call float @dx.op.legacyF16ToF32(i32 131, i32 %97)  ; LegacyF16ToF32(value)
  %99 = and i32 %51, 65535
  %100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %99)  ; LegacyF16ToF32(value)
  %101 = lshr i32 %50, 16
  %102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %101)  ; LegacyF16ToF32(value)
  %103 = and i32 %50, 65535
  %104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %103)  ; LegacyF16ToF32(value)
  %105 = and i32 %49, 65535
  %106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %105)  ; LegacyF16ToF32(value)
  %107 = lshr i32 %57, 16
  %108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %107)  ; LegacyF16ToF32(value)
  %109 = and i32 %57, 65535
  %110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %109)  ; LegacyF16ToF32(value)
  %111 = lshr i32 %56, 16
  %112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %111)  ; LegacyF16ToF32(value)
  %113 = and i32 %56, 65535
  %114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %113)  ; LegacyF16ToF32(value)
  %115 = lshr i32 %55, 16
  %116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %115)  ; LegacyF16ToF32(value)
  %117 = and i32 %55, 65535
  %118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %117)  ; LegacyF16ToF32(value)
  %119 = lshr i32 %54, 16
  %120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %119)  ; LegacyF16ToF32(value)
  %121 = and i32 %45, 65535
  %122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %121)  ; LegacyF16ToF32(value)
  %123 = lshr i32 %49, 16
  %124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %123)  ; LegacyF16ToF32(value)
  %125 = and i32 %54, 65535
  %126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %125)  ; LegacyF16ToF32(value)
  %127 = fmul fast float %122, 0x3FD20DD760000000
  %128 = fmul fast float %64, %59
  %129 = fmul fast float %128, %86
  %130 = fmul fast float %64, %64
  %131 = fmul fast float %130, 0x3FEE471020000000
  %132 = fadd fast float %131, 0xBFD42F6020000000
  %133 = fmul fast float %78, %132
  %134 = fmul fast float %84, %62
  %135 = fmul fast float %88, %63
  %136 = fmul fast float %62, %60
  %137 = fmul fast float %136, %65
  %138 = fmul fast float %137, %76
  %139 = fsub fast float -0.000000e+00, %138
  %140 = fmul fast float %63, %60
  %141 = fmul fast float %140, %65
  %142 = fmul fast float %141, %80
  %143 = fmul fast float %62, %62
  %144 = fmul fast float %63, %63
  %145 = fsub fast float %143, %144
  %146 = fmul fast float %145, 0x3FE17B1420000000
  %147 = fmul fast float %146, %74
  %148 = fmul fast float %63, 0x3FF17B1420000000
  %149 = fmul fast float %148, %62
  %150 = fmul fast float %149, %82
  %151 = fadd fast float %135, %134
  %152 = fmul fast float %151, %59
  %153 = fsub fast float %152, %129
  %154 = fmul fast float %153, 0x3FDF454380000000
  %155 = fadd fast float %133, %147
  %156 = fadd fast float %155, %150
  %157 = fmul fast float %156, %60
  %158 = fsub fast float %139, %142
  %159 = fadd fast float %158, %127
  %160 = fadd fast float %159, %154
  %161 = fadd fast float %160, %157
  %162 = fmul fast float %69, %71
  %163 = fmul fast float %162, %161
  %164 = fmul fast float %124, 0x3FD20DD760000000
  %165 = fmul fast float %128, %102
  %166 = fmul fast float %94, %132
  %167 = fmul fast float %100, %62
  %168 = fmul fast float %104, %63
  %169 = fmul fast float %137, %92
  %170 = fsub fast float -0.000000e+00, %169
  %171 = fmul fast float %141, %96
  %172 = fmul fast float %146, %90
  %173 = fmul fast float %149, %98
  %174 = fadd fast float %168, %167
  %175 = fmul fast float %174, %59
  %176 = fsub fast float %175, %165
  %177 = fmul fast float %176, 0x3FDF454380000000
  %178 = fadd fast float %166, %172
  %179 = fadd fast float %178, %173
  %180 = fmul fast float %179, %60
  %181 = fsub fast float %170, %171
  %182 = fadd fast float %181, %164
  %183 = fadd fast float %182, %177
  %184 = fadd fast float %183, %180
  %185 = fmul fast float %162, %184
  %186 = fmul fast float %126, 0x3FD20DD760000000
  %187 = fmul fast float %128, %118
  %188 = fmul fast float %110, %132
  %189 = fmul fast float %116, %62
  %190 = fmul fast float %120, %63
  %191 = fmul fast float %137, %108
  %192 = fsub fast float -0.000000e+00, %191
  %193 = fmul fast float %141, %112
  %194 = fmul fast float %146, %106
  %195 = fmul fast float %149, %114
  %196 = fadd fast float %190, %189
  %197 = fmul fast float %196, %59
  %198 = fsub fast float %197, %187
  %199 = fmul fast float %198, 0x3FDF454380000000
  %200 = fadd fast float %188, %194
  %201 = fadd fast float %200, %195
  %202 = fmul fast float %201, %60
  %203 = fsub fast float %192, %193
  %204 = fadd fast float %203, %186
  %205 = fadd fast float %204, %199
  %206 = fadd fast float %205, %202
  %207 = fmul fast float %162, %206
  store float %207, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  store float %185, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  store float %163, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  br label %208

; <label>:208                                     ; preds = %67, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %209 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  %210 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  %211 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  %212 = uitofp i32 %39 to float
  %213 = uitofp i32 %40 to float
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %216 = fmul fast float %215, 0x3FE3C6EF40000000
  %217 = frem fast float %212, 2.560000e+02
  %218 = frem fast float %213, 2.560000e+02
  %219 = fptoui float %217 to i32
  %220 = fptoui float %218 to i32
  %221 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %219, i32 %220, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %222 = extractvalue %dx.types.ResRet.f32 %221, 0
  %223 = extractvalue %dx.types.ResRet.f32 %221, 1
  %224 = extractvalue %dx.types.ResRet.f32 %221, 2
  %225 = extractvalue %dx.types.ResRet.f32 %221, 3
  %226 = fadd fast float %222, %216
  %227 = fadd fast float %223, %216
  %228 = fadd fast float %224, %216
  %229 = fadd fast float %225, %216
  %230 = call float @dx.op.unary.f32(i32 22, float %226)  ; Frc(value)
  %231 = call float @dx.op.unary.f32(i32 22, float %227)  ; Frc(value)
  %232 = call float @dx.op.unary.f32(i32 22, float %228)  ; Frc(value)
  %233 = call float @dx.op.unary.f32(i32 22, float %229)  ; Frc(value)
  %234 = fadd fast float %232, %212
  %235 = fadd fast float %233, %213
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 2
  %238 = extractvalue %dx.types.CBufRet.f32 %236, 3
  %239 = fmul fast float %237, %234
  %240 = fmul fast float %238, %235
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 0
  %243 = extractvalue %dx.types.CBufRet.f32 %241, 1
  %244 = extractvalue %dx.types.CBufRet.f32 %241, 2
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 1
  %247 = fmul fast float %239, 2.000000e+00
  %248 = fmul fast float %240, 2.000000e+00
  %249 = fsub fast float 1.000000e+00, %247
  %250 = fsub fast float 1.000000e+00, %248
  %251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.f32 %251, 0
  %253 = extractvalue %dx.types.CBufRet.f32 %251, 1
  %254 = extractvalue %dx.types.CBufRet.f32 %251, 2
  %255 = fmul fast float %252, %249
  %256 = fmul fast float %253, %249
  %257 = fmul fast float %254, %249
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 0
  %260 = extractvalue %dx.types.CBufRet.f32 %258, 1
  %261 = extractvalue %dx.types.CBufRet.f32 %258, 2
  %262 = fmul fast float %259, %250
  %263 = fmul fast float %260, %250
  %264 = fmul fast float %261, %250
  %265 = fadd fast float %262, %255
  %266 = fadd fast float %263, %256
  %267 = fadd fast float %264, %257
  %268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.f32 %268, 0
  %270 = extractvalue %dx.types.CBufRet.f32 %268, 1
  %271 = extractvalue %dx.types.CBufRet.f32 %268, 2
  %272 = fadd fast float %265, %269
  %273 = fadd fast float %266, %270
  %274 = fadd fast float %267, %271
  %275 = fmul fast float %272, %246
  %276 = fmul fast float %273, %246
  %277 = fmul fast float %274, %246
  %278 = fmul fast float %275, %275
  %279 = fmul fast float %276, %276
  %280 = fadd fast float %278, %279
  %281 = fmul fast float %277, %277
  %282 = fadd fast float %280, %281
  %283 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %284 = fdiv fast float 1.000000e+00, %283
  %285 = fmul fast float %275, %284
  %286 = fmul fast float %276, %284
  %287 = fmul fast float %277, %284
  %288 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %39, i32 %40, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = fcmp fast ogt float %289, -1.000000e+00
  %291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.f32 %291, 1
  %293 = select i1 %290, float %292, float 1.000000e+00
  %294 = fadd fast float %289, 1.000000e+00
  %295 = fmul fast float %293, %294
  %296 = call float @dx.op.unary.f32(i32 6, float %295)  ; FAbs(value)
  %297 = fdiv fast float 1.000000e+00, %246
  %298 = fmul fast float %297, %283
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %301 = fmul fast float %300, %298
  %302 = fmul fast float %298, %296
  %303 = extractvalue %dx.types.CBufRet.f32 %291, 3
  %304 = fcmp fast oge float %296, %303
  %305 = call float @dx.op.binary.f32(i32 36, float %302, float %301)  ; FMin(a,b)
  %306 = select i1 %304, float %301, float %305
  %307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.i32 %307, 3
  %309 = icmp eq i32 %308, 0
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 2
  %314 = fsub fast float %311, %244
  %315 = fadd fast float %314, %313
  %316 = fsub fast float 0xC7EFFFFFE0000000, %244
  br i1 %309, label %328, label %317, !dx.controlflow.hints !39

; <label>:317                                     ; preds = %208
  %318 = fsub fast float -0.000000e+00, %243
  %319 = fsub fast float -0.000000e+00, %242
  %320 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %319, float %318, float %315)  ; Dot3(ax,ay,az,bx,by,bz)
  %321 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %285, float %286, float %287)  ; Dot3(ax,ay,az,bx,by,bz)
  %322 = fdiv fast float 1.000000e+00, %321
  %323 = fmul fast float %322, %320
  %324 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %319, float %318, float %316)  ; Dot3(ax,ay,az,bx,by,bz)
  %325 = fmul fast float %322, %324
  %326 = call float @dx.op.binary.f32(i32 36, float %323, float %325)  ; FMin(a,b)
  %327 = call float @dx.op.binary.f32(i32 35, float %323, float %325)  ; FMax(a,b)
  br label %361

; <label>:328                                     ; preds = %208
  %329 = extractvalue %dx.types.CBufRet.f32 %310, 0
  %330 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %331 = extractvalue %dx.types.CBufRet.f32 %312, 0
  %332 = extractvalue %dx.types.CBufRet.f32 %312, 1
  %333 = fdiv fast float 1.000000e+00, %285
  %334 = fdiv fast float 1.000000e+00, %286
  %335 = fdiv fast float 1.000000e+00, %287
  %336 = fsub fast float %329, %242
  %337 = fmul fast float %333, %336
  %338 = fadd fast float %336, %331
  %339 = fmul fast float %338, %333
  %340 = call float @dx.op.binary.f32(i32 36, float %337, float %339)  ; FMin(a,b)
  %341 = call float @dx.op.binary.f32(i32 35, float %337, float %339)  ; FMax(a,b)
  %342 = fsub fast float %330, %243
  %343 = fmul fast float %334, %342
  %344 = fadd fast float %342, %332
  %345 = fmul fast float %344, %334
  %346 = call float @dx.op.binary.f32(i32 36, float %343, float %345)  ; FMin(a,b)
  %347 = call float @dx.op.binary.f32(i32 35, float %340, float %346)  ; FMax(a,b)
  %348 = call float @dx.op.binary.f32(i32 35, float %343, float %345)  ; FMax(a,b)
  %349 = call float @dx.op.binary.f32(i32 36, float %341, float %348)  ; FMin(a,b)
  %350 = fmul fast float %335, %316
  %351 = fmul fast float %335, %315
  %352 = call float @dx.op.binary.f32(i32 36, float %350, float %351)  ; FMin(a,b)
  %353 = call float @dx.op.binary.f32(i32 35, float %347, float %352)  ; FMax(a,b)
  %354 = call float @dx.op.binary.f32(i32 35, float %350, float %351)  ; FMax(a,b)
  %355 = call float @dx.op.binary.f32(i32 36, float %349, float %354)  ; FMin(a,b)
  %356 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %353)  ; FMax(a,b)
  %357 = fcmp fast ult float %355, %356
  br i1 %357, label %361, label %358, !dx.controlflow.hints !40

; <label>:358                                     ; preds = %328
  %359 = call float @dx.op.binary.f32(i32 36, float %353, float %355)  ; FMin(a,b)
  %360 = call float @dx.op.binary.f32(i32 35, float %353, float %355)  ; FMax(a,b)
  br label %361

; <label>:361                                     ; preds = %358, %328, %317
  %362 = phi float [ %326, %317 ], [ %359, %358 ], [ 0.000000e+00, %328 ]
  %363 = phi float [ %327, %317 ], [ %360, %358 ], [ 0.000000e+00, %328 ]
  %364 = fcmp fast oeq float %363, 0.000000e+00
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 1
  %367 = fcmp fast olt float %363, %366
  %368 = or i1 %364, %367
  br i1 %368, label %373, label %369, !dx.controlflow.hints !41

; <label>:369                                     ; preds = %361
  %370 = call float @dx.op.binary.f32(i32 35, float %366, float %362)  ; FMax(a,b)
  %371 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %370)  ; FMin(a,b)
  %372 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %363)  ; FMax(a,b)
  br label %373

; <label>:373                                     ; preds = %369, %361
  %374 = phi i32 [ 1, %369 ], [ 0, %361 ]
  %375 = phi float [ %372, %369 ], [ -1.000000e+00, %361 ]
  %376 = phi float [ %371, %369 ], [ 0x47EFFFFFE0000000, %361 ]
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 3
  %379 = fsub fast float -0.000000e+00, %242
  %380 = fsub fast float -0.000000e+00, %243
  %381 = fsub fast float %378, %244
  %382 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %379, float %380, float %381)  ; Dot3(ax,ay,az,bx,by,bz)
  %383 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %285, float %286, float %287)  ; Dot3(ax,ay,az,bx,by,bz)
  %384 = fdiv fast float 1.000000e+00, %383
  %385 = fmul fast float %384, %382
  %386 = fcmp fast olt float %385, 0.000000e+00
  %387 = fcmp fast ogt float %287, 0.000000e+00
  %388 = and i1 %387, %386
  br i1 %388, label %393, label %389, !dx.controlflow.hints !42

; <label>:389                                     ; preds = %373
  %390 = fcmp fast olt float %287, 0.000000e+00
  br i1 %390, label %391, label %393, !dx.controlflow.hints !43

; <label>:391                                     ; preds = %389
  %392 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %385)  ; FMax(a,b)
  br label %393

; <label>:393                                     ; preds = %391, %389, %373
  %394 = phi float [ 0.000000e+00, %373 ], [ %392, %391 ], [ 0.000000e+00, %389 ]
  %395 = phi float [ 0.000000e+00, %373 ], [ 0x47EFFFFFE0000000, %391 ], [ %385, %389 ]
  %396 = fcmp fast oeq float %395, 0.000000e+00
  br i1 %396, label %400, label %397, !dx.controlflow.hints !44

; <label>:397                                     ; preds = %393
  %398 = call float @dx.op.binary.f32(i32 36, float %376, float %394)  ; FMin(a,b)
  %399 = call float @dx.op.binary.f32(i32 35, float %375, float %395)  ; FMax(a,b)
  br label %400

; <label>:400                                     ; preds = %397, %393
  %401 = phi i32 [ 1, %397 ], [ 0, %393 ]
  %402 = phi float [ %399, %397 ], [ %375, %393 ]
  %403 = phi float [ %398, %397 ], [ %376, %393 ]
  %404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.i32 %404, 3
  %406 = icmp eq i32 %405, 0
  %407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %408 = extractvalue %dx.types.CBufRet.f32 %407, 2
  %409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.f32 %409, 2
  %411 = fsub fast float %408, %244
  %412 = fadd fast float %411, %410
  br i1 %406, label %420, label %413, !dx.controlflow.hints !45

; <label>:413                                     ; preds = %400
  %414 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %379, float %380, float %412)  ; Dot3(ax,ay,az,bx,by,bz)
  %415 = fmul fast float %384, %414
  %416 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %379, float %380, float %411)  ; Dot3(ax,ay,az,bx,by,bz)
  %417 = fmul fast float %384, %416
  %418 = call float @dx.op.binary.f32(i32 36, float %415, float %417)  ; FMin(a,b)
  %419 = call float @dx.op.binary.f32(i32 35, float %415, float %417)  ; FMax(a,b)
  br label %453

; <label>:420                                     ; preds = %400
  %421 = fdiv fast float 1.000000e+00, %285
  %422 = fdiv fast float 1.000000e+00, %286
  %423 = fdiv fast float 1.000000e+00, %287
  %424 = extractvalue %dx.types.CBufRet.f32 %407, 0
  %425 = extractvalue %dx.types.CBufRet.f32 %407, 1
  %426 = extractvalue %dx.types.CBufRet.f32 %409, 0
  %427 = extractvalue %dx.types.CBufRet.f32 %409, 1
  %428 = fsub fast float %424, %242
  %429 = fmul fast float %428, %421
  %430 = fadd fast float %428, %426
  %431 = fmul fast float %430, %421
  %432 = call float @dx.op.binary.f32(i32 36, float %429, float %431)  ; FMin(a,b)
  %433 = call float @dx.op.binary.f32(i32 35, float %429, float %431)  ; FMax(a,b)
  %434 = fsub fast float %425, %243
  %435 = fmul fast float %434, %422
  %436 = fadd fast float %434, %427
  %437 = fmul fast float %436, %422
  %438 = call float @dx.op.binary.f32(i32 36, float %435, float %437)  ; FMin(a,b)
  %439 = call float @dx.op.binary.f32(i32 35, float %432, float %438)  ; FMax(a,b)
  %440 = call float @dx.op.binary.f32(i32 35, float %435, float %437)  ; FMax(a,b)
  %441 = call float @dx.op.binary.f32(i32 36, float %433, float %440)  ; FMin(a,b)
  %442 = fmul fast float %411, %423
  %443 = fmul fast float %412, %423
  %444 = call float @dx.op.binary.f32(i32 36, float %442, float %443)  ; FMin(a,b)
  %445 = call float @dx.op.binary.f32(i32 35, float %439, float %444)  ; FMax(a,b)
  %446 = call float @dx.op.binary.f32(i32 35, float %442, float %443)  ; FMax(a,b)
  %447 = call float @dx.op.binary.f32(i32 36, float %441, float %446)  ; FMin(a,b)
  %448 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %445)  ; FMax(a,b)
  %449 = fcmp fast ult float %447, %448
  br i1 %449, label %453, label %450, !dx.controlflow.hints !46

; <label>:450                                     ; preds = %420
  %451 = call float @dx.op.binary.f32(i32 36, float %445, float %447)  ; FMin(a,b)
  %452 = call float @dx.op.binary.f32(i32 35, float %445, float %447)  ; FMax(a,b)
  br label %453

; <label>:453                                     ; preds = %450, %420, %413
  %454 = phi float [ %418, %413 ], [ %451, %450 ], [ 0.000000e+00, %420 ]
  %455 = phi float [ %419, %413 ], [ %452, %450 ], [ 0.000000e+00, %420 ]
  %456 = fcmp fast oeq float %455, 0.000000e+00
  br i1 %456, label %460, label %457, !dx.controlflow.hints !47

; <label>:457                                     ; preds = %453
  %458 = call float @dx.op.binary.f32(i32 36, float %403, float %454)  ; FMin(a,b)
  %459 = call float @dx.op.binary.f32(i32 35, float %402, float %455)  ; FMax(a,b)
  br label %460

; <label>:460                                     ; preds = %457, %453
  %461 = phi i32 [ 1, %457 ], [ 0, %453 ]
  %462 = phi float [ %459, %457 ], [ %402, %453 ]
  %463 = phi float [ %458, %457 ], [ %403, %453 ]
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 3
  %466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.f32 %466, 0
  %468 = fsub fast float %465, %244
  %469 = fadd fast float %468, %467
  %470 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %379, float %380, float %469)  ; Dot3(ax,ay,az,bx,by,bz)
  %471 = fmul fast float %384, %470
  %472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.f32 %472, 2
  %474 = fsub fast float %473, %244
  %475 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %379, float %380, float %474)  ; Dot3(ax,ay,az,bx,by,bz)
  %476 = fmul fast float %384, %475
  %477 = call float @dx.op.binary.f32(i32 36, float %471, float %476)  ; FMin(a,b)
  %478 = call float @dx.op.binary.f32(i32 35, float %471, float %476)  ; FMax(a,b)
  %479 = call float @dx.op.binary.f32(i32 36, float %463, float %477)  ; FMin(a,b)
  %480 = call float @dx.op.binary.f32(i32 35, float %462, float %478)  ; FMax(a,b)
  %481 = fdiv fast float 1.000000e+00, %285
  %482 = fdiv fast float 1.000000e+00, %286
  %483 = fdiv fast float 1.000000e+00, %287
  %484 = call float @dx.op.binary.f32(i32 36, float %306, float %480)  ; FMin(a,b)
  %485 = call float @dx.op.binary.f32(i32 35, float %283, float %479)  ; FMax(a,b)
  %486 = extractvalue %dx.types.CBufRet.f32 %377, 0
  %487 = fmul fast float %231, 2.000000e+00
  %488 = fadd fast float %487, -1.000000e+00
  %489 = fmul fast float %486, %488
  %490 = fadd fast float %489, %485
  %491 = fcmp fast olt float %490, %484
  %492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %493 = extractvalue %dx.types.CBufRet.f32 %492, 2
  %494 = fcmp fast olt float %493, 1.000000e+00
  %495 = and i1 %491, %494
  br i1 %495, label %496, label %2241

; <label>:496                                     ; preds = %460
  %497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %498 = extractvalue %dx.types.CBufRet.i32 %497, 1
  %499 = add i32 %498, -1
  %500 = fmul fast float %490, %287
  %501 = fadd fast float %500, %244
  %502 = fmul fast float %490, %286
  %503 = fadd fast float %502, %243
  %504 = fmul fast float %490, %285
  %505 = fadd fast float %504, %242
  br label %506

; <label>:506                                     ; preds = %2213, %496
  %507 = phi float [ %2215, %2213 ], [ undef, %496 ]
  %508 = phi float [ %2216, %2213 ], [ undef, %496 ]
  %509 = phi float [ %2217, %2213 ], [ undef, %496 ]
  %510 = phi float [ %2218, %2213 ], [ undef, %496 ]
  %511 = phi float [ %808, %2213 ], [ undef, %496 ]
  %512 = phi float [ %809, %2213 ], [ undef, %496 ]
  %513 = phi float [ %810, %2213 ], [ undef, %496 ]
  %514 = phi float [ %811, %2213 ], [ undef, %496 ]
  %515 = phi float [ %2219, %2213 ], [ 0.000000e+00, %496 ]
  %516 = phi float [ %2220, %2213 ], [ 1.000000e+00, %496 ]
  %517 = phi float [ %2221, %2213 ], [ 0.000000e+00, %496 ]
  %518 = phi float [ %2222, %2213 ], [ 0.000000e+00, %496 ]
  %519 = phi float [ %2223, %2213 ], [ 0.000000e+00, %496 ]
  %520 = phi float [ %2233, %2213 ], [ %505, %496 ]
  %521 = phi float [ %2234, %2213 ], [ %503, %496 ]
  %522 = phi float [ %2235, %2213 ], [ %501, %496 ]
  %523 = phi float [ %2214, %2213 ], [ %490, %496 ]
  %524 = phi i32 [ %813, %2213 ], [ 10, %496 ]
  %525 = phi i32 [ %705, %2213 ], [ %499, %496 ]
  %526 = phi float [ %2224, %2213 ], [ 0.000000e+00, %496 ]
  %527 = phi float [ %2225, %2213 ], [ 0.000000e+00, %496 ]
  %528 = phi float [ %2226, %2213 ], [ 0.000000e+00, %496 ]
  %529 = phi float [ %2227, %2213 ], [ 0.000000e+00, %496 ]
  %530 = phi float [ %2228, %2213 ], [ 0.000000e+00, %496 ]
  %531 = phi i32 [ %2229, %2213 ], [ 0, %496 ]
  %532 = fsub fast float -0.000000e+00, %521
  %533 = fsub fast float -0.000000e+00, %520
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 0
  %536 = icmp eq i32 %374, 0
  br i1 %536, label %702, label %537, !dx.controlflow.hints !48

; <label>:537                                     ; preds = %506
  %538 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %539 = extractvalue %dx.types.CBufRet.i32 %538, 1
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 1
  %542 = fcmp fast ogt float %541, %523
  br i1 %542, label %543, label %545, !dx.controlflow.hints !49

; <label>:543                                     ; preds = %537
  %544 = fsub fast float %541, %523
  br label %692

; <label>:545                                     ; preds = %537
  %546 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %547 = extractvalue %dx.types.CBufRet.i32 %546, 3
  %548 = icmp eq i32 %547, 0
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 2
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 2
  %553 = fsub fast float %550, %522
  %554 = fadd fast float %553, %552
  %555 = fsub fast float 0xC7EFFFFFE0000000, %522
  br i1 %548, label %563, label %556, !dx.controlflow.hints !39

; <label>:556                                     ; preds = %545
  %557 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %533, float %532, float %554)  ; Dot3(ax,ay,az,bx,by,bz)
  %558 = fmul fast float %384, %557
  %559 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %533, float %532, float %555)  ; Dot3(ax,ay,az,bx,by,bz)
  %560 = fmul fast float %384, %559
  %561 = call float @dx.op.binary.f32(i32 36, float %558, float %560)  ; FMin(a,b)
  %562 = call float @dx.op.binary.f32(i32 35, float %558, float %560)  ; FMax(a,b)
  br label %593

; <label>:563                                     ; preds = %545
  %564 = extractvalue %dx.types.CBufRet.f32 %549, 0
  %565 = extractvalue %dx.types.CBufRet.f32 %549, 1
  %566 = extractvalue %dx.types.CBufRet.f32 %551, 0
  %567 = extractvalue %dx.types.CBufRet.f32 %551, 1
  %568 = fsub fast float %564, %520
  %569 = fmul fast float %481, %568
  %570 = fadd fast float %568, %566
  %571 = fmul fast float %570, %481
  %572 = call float @dx.op.binary.f32(i32 36, float %569, float %571)  ; FMin(a,b)
  %573 = call float @dx.op.binary.f32(i32 35, float %569, float %571)  ; FMax(a,b)
  %574 = fsub fast float %565, %521
  %575 = fmul fast float %482, %574
  %576 = fadd fast float %574, %567
  %577 = fmul fast float %576, %482
  %578 = call float @dx.op.binary.f32(i32 36, float %575, float %577)  ; FMin(a,b)
  %579 = call float @dx.op.binary.f32(i32 35, float %572, float %578)  ; FMax(a,b)
  %580 = call float @dx.op.binary.f32(i32 35, float %575, float %577)  ; FMax(a,b)
  %581 = call float @dx.op.binary.f32(i32 36, float %573, float %580)  ; FMin(a,b)
  %582 = fmul fast float %483, %555
  %583 = fmul fast float %483, %554
  %584 = call float @dx.op.binary.f32(i32 36, float %582, float %583)  ; FMin(a,b)
  %585 = call float @dx.op.binary.f32(i32 35, float %579, float %584)  ; FMax(a,b)
  %586 = call float @dx.op.binary.f32(i32 35, float %582, float %583)  ; FMax(a,b)
  %587 = call float @dx.op.binary.f32(i32 36, float %581, float %586)  ; FMin(a,b)
  %588 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %585)  ; FMax(a,b)
  %589 = fcmp fast ult float %587, %588
  br i1 %589, label %593, label %590, !dx.controlflow.hints !40

; <label>:590                                     ; preds = %563
  %591 = call float @dx.op.binary.f32(i32 36, float %585, float %587)  ; FMin(a,b)
  %592 = call float @dx.op.binary.f32(i32 35, float %585, float %587)  ; FMax(a,b)
  br label %593

; <label>:593                                     ; preds = %590, %563, %556
  %594 = phi float [ %561, %556 ], [ %591, %590 ], [ 0.000000e+00, %563 ]
  %595 = phi float [ %562, %556 ], [ %592, %590 ], [ 0.000000e+00, %563 ]
  %596 = fcmp fast ogt float %594, 0.000000e+00
  br i1 %596, label %692, label %597, !dx.controlflow.hints !50

; <label>:597                                     ; preds = %593
  %598 = fcmp fast ugt float %595, 0.000000e+00
  br i1 %598, label %599, label %692, !dx.controlflow.hints !51

; <label>:599                                     ; preds = %597
  %600 = icmp sgt i32 %525, 0
  br i1 %600, label %601, label %686

; <label>:601                                     ; preds = %599
  br label %602

; <label>:602                                     ; preds = %682, %601
  %603 = phi i32 [ %683, %682 ], [ %525, %601 ]
  %604 = sitofp i32 %603 to float
  %605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.f32 %605, 0
  %607 = extractvalue %dx.types.CBufRet.f32 %605, 1
  %608 = fsub fast float %520, %606
  %609 = fsub fast float %521, %607
  %610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %611 = extractvalue %dx.types.CBufRet.f32 %610, 0
  %612 = extractvalue %dx.types.CBufRet.f32 %610, 1
  %613 = fmul fast float %608, %611
  %614 = fmul fast float %609, %612
  %615 = fsub fast float 1.000000e+00, %614
  %616 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %617 = extractvalue %dx.types.CBufRet.i32 %616, 3
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %625, label %619, !dx.controlflow.hints !52

; <label>:619                                     ; preds = %602
  %620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %613, float %615, float undef, float undef, i32 0, i32 0, i32 undef, float %604)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = extractvalue %dx.types.ResRet.f32 %620, 1
  %623 = extractvalue %dx.types.ResRet.f32 %620, 2
  %624 = extractvalue %dx.types.ResRet.f32 %620, 3
  br label %631

; <label>:625                                     ; preds = %602
  %626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %20, float %613, float %615, float undef, float undef, i32 0, i32 0, i32 undef, float %604)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %627 = extractvalue %dx.types.ResRet.f32 %626, 0
  %628 = extractvalue %dx.types.ResRet.f32 %626, 1
  %629 = extractvalue %dx.types.ResRet.f32 %626, 2
  %630 = extractvalue %dx.types.ResRet.f32 %626, 3
  br label %631

; <label>:631                                     ; preds = %625, %619
  %632 = phi float [ %621, %619 ], [ %627, %625 ]
  %633 = phi float [ %622, %619 ], [ %628, %625 ]
  %634 = phi float [ %623, %619 ], [ %629, %625 ]
  %635 = phi float [ %624, %619 ], [ %630, %625 ]
  %636 = extractvalue %dx.types.CBufRet.f32 %610, 3
  %637 = fmul fast float %636, %632
  %638 = extractvalue %dx.types.CBufRet.f32 %605, 2
  %639 = fadd fast float %637, %638
  %640 = fmul fast float %636, %633
  %641 = fadd fast float %640, %638
  %642 = fmul fast float %636, %634
  %643 = fadd fast float %642, %638
  %644 = and i32 %603, 31
  %645 = shl i32 1, %644
  %646 = uitofp i32 %645 to float
  %647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %648 = extractvalue %dx.types.CBufRet.f32 %647, 3
  %649 = fdiv fast float 1.000000e+00, %648
  %650 = fmul fast float %649, %646
  %651 = fmul fast float %650, %287
  %652 = fadd fast float %651, %522
  %653 = fcmp fast oeq float %635, 0.000000e+00
  %654 = fcmp fast ogt float %522, %641
  %655 = fcmp fast ogt float %652, %641
  %656 = and i1 %654, %655
  %657 = or i1 %653, %656
  br i1 %657, label %658, label %662, !dx.controlflow.hints !53

; <label>:658                                     ; preds = %631
  %659 = add nsw i32 %603, 1
  %660 = add nsw i32 %539, -1
  %661 = call i32 @dx.op.binary.i32(i32 38, i32 %659, i32 %660)  ; IMin(a,b)
  br label %692

; <label>:662                                     ; preds = %631
  %663 = fcmp fast olt float %522, %643
  %664 = fcmp fast olt float %652, %643
  %665 = and i1 %663, %664
  br i1 %665, label %666, label %670, !dx.controlflow.hints !54

; <label>:666                                     ; preds = %662
  %667 = add nsw i32 %603, 1
  %668 = add nsw i32 %539, -1
  %669 = call i32 @dx.op.binary.i32(i32 38, i32 %667, i32 %668)  ; IMin(a,b)
  br label %692

; <label>:670                                     ; preds = %662
  %671 = fcmp fast olt float %522, %639
  %672 = fcmp fast olt float %652, %639
  %673 = and i1 %671, %672
  br i1 %673, label %674, label %682, !dx.controlflow.hints !55

; <label>:674                                     ; preds = %670
  %675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.f32 %675, 3
  %677 = extractvalue %dx.types.CBufRet.f32 %610, 2
  %678 = fcmp fast une float %676, %677
  br i1 %678, label %679, label %686, !dx.controlflow.hints !56

; <label>:679                                     ; preds = %674
  %680 = fsub fast float %522, %643
  %681 = call float @dx.op.binary.f32(i32 36, float %650, float %680)  ; FMin(a,b)
  br label %686

; <label>:682                                     ; preds = %670
  %683 = add nsw i32 %603, -1
  %684 = icmp sgt i32 %603, 1
  br i1 %684, label %602, label %685

; <label>:685                                     ; preds = %682
  br label %686

; <label>:686                                     ; preds = %685, %679, %674, %599
  %687 = phi float [ %681, %679 ], [ %650, %674 ], [ 0.000000e+00, %599 ], [ 0.000000e+00, %685 ]
  %688 = phi i32 [ %603, %679 ], [ %603, %674 ], [ %525, %599 ], [ %683, %685 ]
  %689 = add nsw i32 %688, 1
  %690 = add nsw i32 %539, -1
  %691 = call i32 @dx.op.binary.i32(i32 38, i32 %689, i32 %690)  ; IMin(a,b)
  br label %692

; <label>:692                                     ; preds = %686, %666, %658, %597, %593, %543
  %693 = phi float [ %544, %543 ], [ %650, %658 ], [ %650, %666 ], [ %687, %686 ], [ 0x47EFFFFFE0000000, %597 ], [ %594, %593 ]
  %694 = phi i32 [ %374, %543 ], [ %374, %658 ], [ %374, %666 ], [ %374, %686 ], [ 0, %597 ], [ %374, %593 ]
  %695 = phi i32 [ %525, %543 ], [ %661, %658 ], [ %669, %666 ], [ %691, %686 ], [ %525, %597 ], [ %525, %593 ]
  %696 = icmp ne i32 %694, 0
  %697 = zext i1 %696 to i32
  %698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.f32 %698, 2
  %700 = call float @dx.op.binary.f32(i32 35, float %693, float %699)  ; FMax(a,b)
  %701 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %700)  ; FMin(a,b)
  br label %702

; <label>:702                                     ; preds = %692, %506
  %703 = phi i32 [ %697, %692 ], [ 0, %506 ]
  %704 = phi float [ %701, %692 ], [ 0x47EFFFFFE0000000, %506 ]
  %705 = phi i32 [ %695, %692 ], [ %525, %506 ]
  %706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %707 = extractvalue %dx.types.CBufRet.f32 %706, 0
  %708 = extractvalue %dx.types.CBufRet.f32 %706, 1
  %709 = fsub fast float %520, %707
  %710 = fsub fast float %521, %708
  %711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %712 = extractvalue %dx.types.CBufRet.f32 %711, 2
  %713 = extractvalue %dx.types.CBufRet.f32 %711, 3
  %714 = fmul fast float %709, %712
  %715 = fmul fast float %710, %713
  %716 = call float @dx.op.binary.f32(i32 36, float %714, float %715)  ; FMin(a,b)
  %717 = fcmp fast olt float %716, 0.000000e+00
  %718 = call float @dx.op.binary.f32(i32 35, float %714, float %715)  ; FMax(a,b)
  %719 = fcmp fast ogt float %718, 1.000000e+00
  %720 = or i1 %717, %719
  %721 = extractvalue %dx.types.CBufRet.f32 %706, 2
  %722 = fcmp fast olt float %522, %721
  %723 = or i1 %720, %722
  %724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.f32 %724, 3
  %726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %727 = extractvalue %dx.types.CBufRet.f32 %726, 0
  %728 = fadd fast float %727, %725
  %729 = fcmp fast ogt float %522, %728
  %730 = or i1 %723, %729
  br i1 %730, label %731, label %760, !dx.controlflow.hints !57

; <label>:731                                     ; preds = %702
  %732 = extractvalue %dx.types.CBufRet.f32 %711, 0
  %733 = extractvalue %dx.types.CBufRet.f32 %711, 1
  %734 = fsub fast float %707, %520
  %735 = fmul fast float %734, %481
  %736 = fadd fast float %734, %732
  %737 = fmul fast float %736, %481
  %738 = call float @dx.op.binary.f32(i32 36, float %735, float %737)  ; FMin(a,b)
  %739 = call float @dx.op.binary.f32(i32 35, float %735, float %737)  ; FMax(a,b)
  %740 = fsub fast float %708, %521
  %741 = fmul fast float %740, %482
  %742 = fadd fast float %740, %733
  %743 = fmul fast float %742, %482
  %744 = call float @dx.op.binary.f32(i32 36, float %741, float %743)  ; FMin(a,b)
  %745 = call float @dx.op.binary.f32(i32 35, float %738, float %744)  ; FMax(a,b)
  %746 = call float @dx.op.binary.f32(i32 35, float %741, float %743)  ; FMax(a,b)
  %747 = call float @dx.op.binary.f32(i32 36, float %739, float %746)  ; FMin(a,b)
  %748 = fsub fast float %721, %522
  %749 = fmul fast float %748, %483
  %750 = fsub fast float %725, %522
  %751 = fadd fast float %750, %727
  %752 = fmul fast float %751, %483
  %753 = call float @dx.op.binary.f32(i32 36, float %749, float %752)  ; FMin(a,b)
  %754 = call float @dx.op.binary.f32(i32 35, float %745, float %753)  ; FMax(a,b)
  %755 = call float @dx.op.binary.f32(i32 35, float %749, float %752)  ; FMax(a,b)
  %756 = call float @dx.op.binary.f32(i32 36, float %747, float %755)  ; FMin(a,b)
  %757 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %754)  ; FMax(a,b)
  %758 = fcmp fast oge float %756, %757
  %759 = select i1 %758, float %754, float 1.000000e+07
  br label %806

; <label>:760                                     ; preds = %702
  %761 = fsub fast float 1.000000e+00, %715
  %762 = icmp eq i32 %524, 0
  br i1 %762, label %791, label %763

; <label>:763                                     ; preds = %760
  br label %764

; <label>:764                                     ; preds = %787, %763
  %765 = phi i32 [ %788, %787 ], [ %524, %763 ]
  %766 = uitofp i32 %765 to float
  %767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %714, float %761, float undef, float undef, i32 0, i32 0, i32 undef, float %766)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %768 = extractvalue %dx.types.ResRet.f32 %767, 0
  %769 = extractvalue %dx.types.ResRet.f32 %767, 1
  %770 = extractvalue %dx.types.ResRet.f32 %767, 2
  %771 = fcmp fast oeq float %768, 0.000000e+00
  %772 = fcmp ule float %522, %770
  %773 = fcmp uge float %522, %769
  %774 = or i1 %773, %772
  %775 = or i1 %771, %774
  br i1 %775, label %776, label %787, !dx.controlflow.hints !58

; <label>:776                                     ; preds = %764
  %777 = extractvalue %dx.types.ResRet.f32 %767, 3
  %778 = extractvalue %dx.types.CBufRet.f32 %711, 0
  %779 = and i32 %765, 31
  %780 = lshr i32 1024, %779
  %781 = uitofp i32 %780 to float
  %782 = fdiv fast float %778, %781
  %783 = add i32 %765, 1
  %784 = uitofp i32 %783 to float
  %785 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %784)  ; FMin(a,b)
  %786 = fptosi float %785 to i32
  br label %806

; <label>:787                                     ; preds = %764
  %788 = add i32 %765, -1
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %790, label %764, !llvm.loop !59

; <label>:790                                     ; preds = %787
  br label %791

; <label>:791                                     ; preds = %790, %760
  %792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %20, float %714, float %761, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  %794 = extractvalue %dx.types.ResRet.f32 %792, 1
  %795 = extractvalue %dx.types.ResRet.f32 %792, 2
  %796 = extractvalue %dx.types.ResRet.f32 %792, 3
  %797 = extractvalue %dx.types.CBufRet.f32 %711, 0
  %798 = fmul fast float %797, 9.765625e-04
  %799 = fcmp fast oeq float %793, 0.000000e+00
  %800 = fcmp ule float %522, %795
  %801 = fcmp uge float %522, %794
  %802 = or i1 %801, %800
  %803 = or i1 %799, %802
  %804 = zext i1 %803 to i32
  %805 = xor i32 %804, 1
  br label %806

; <label>:806                                     ; preds = %791, %776, %731
  %807 = phi float [ %759, %731 ], [ %782, %776 ], [ %798, %791 ]
  %808 = phi float [ %511, %731 ], [ %768, %776 ], [ %793, %791 ]
  %809 = phi float [ %512, %731 ], [ %769, %776 ], [ %794, %791 ]
  %810 = phi float [ %513, %731 ], [ %770, %776 ], [ %795, %791 ]
  %811 = phi float [ %514, %731 ], [ %777, %776 ], [ %796, %791 ]
  %812 = phi i32 [ 0, %731 ], [ 0, %776 ], [ %805, %791 ]
  %813 = phi i32 [ 10, %731 ], [ %786, %776 ], [ 1, %791 ]
  %814 = icmp eq i32 %812, 0
  %815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %816 = extractvalue %dx.types.CBufRet.f32 %815, 2
  %817 = call float @dx.op.binary.f32(i32 35, float %807, float %816)  ; FMax(a,b)
  %818 = call float @dx.op.binary.f32(i32 36, float %704, float %817)  ; FMin(a,b)
  %819 = icmp eq i32 %401, 0
  br i1 %819, label %832, label %820, !dx.controlflow.hints !61

; <label>:820                                     ; preds = %806
  %821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %822 = extractvalue %dx.types.CBufRet.f32 %821, 3
  %823 = extractvalue %dx.types.CBufRet.f32 %821, 2
  %824 = fmul fast float %822, %523
  %825 = fdiv fast float %824, %484
  %826 = fadd fast float %825, 1.000000e+00
  %827 = call float @dx.op.unary.f32(i32 23, float %826)  ; Log(value)
  %828 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %827)  ; FMin(a,b)
  %829 = fmul fast float %823, %484
  %830 = fmul fast float %829, %828
  %831 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %830)  ; FMin(a,b)
  br label %832

; <label>:832                                     ; preds = %820, %806
  %833 = phi float [ %831, %820 ], [ 0x47EFFFFFE0000000, %806 ]
  %834 = icmp eq i32 %461, 0
  br i1 %834, label %890, label %835, !dx.controlflow.hints !62

; <label>:835                                     ; preds = %832
  %836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %837 = extractvalue %dx.types.CBufRet.f32 %836, 0
  %838 = extractvalue %dx.types.CBufRet.f32 %836, 1
  %839 = extractvalue %dx.types.CBufRet.f32 %836, 2
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 0
  %842 = extractvalue %dx.types.CBufRet.f32 %840, 1
  %843 = extractvalue %dx.types.CBufRet.f32 %840, 2
  %844 = fsub fast float %520, %841
  %845 = fsub fast float %521, %842
  %846 = fsub fast float %522, %843
  %847 = fmul fast float %844, %837
  %848 = fmul fast float %845, %838
  %849 = fmul fast float %846, %839
  %850 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %851 = extractvalue %dx.types.CBufRet.i32 %850, 3
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %856, label %853, !dx.controlflow.hints !63

; <label>:853                                     ; preds = %835
  %854 = call float @dx.op.unary.f32(i32 22, float %847)  ; Frc(value)
  %855 = call float @dx.op.unary.f32(i32 22, float %848)  ; Frc(value)
  br label %856

; <label>:856                                     ; preds = %853, %835
  %857 = phi float [ %854, %853 ], [ %847, %835 ]
  %858 = phi float [ %855, %853 ], [ %848, %835 ]
  %859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %857, float %858, float %849, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %860 = extractvalue %dx.types.ResRet.f32 %859, 0
  %861 = fmul fast float %860, 2.000000e+00
  %862 = fadd fast float %861, -1.000000e+00
  %863 = extractvalue %dx.types.CBufRet.f32 %836, 3
  %864 = fmul fast float %862, %863
  %865 = fcmp fast olt float %864, 0.000000e+00
  %866 = fcmp fast oge float %849, 0.000000e+00
  %867 = fcmp fast ole float %849, 1.000000e+00
  br i1 %852, label %870, label %868, !dx.controlflow.hints !64

; <label>:868                                     ; preds = %856
  %869 = and i1 %866, %867
  br label %880

; <label>:870                                     ; preds = %856
  %871 = fcmp fast oge float %847, 0.000000e+00
  %872 = fcmp fast oge float %848, 0.000000e+00
  %873 = and i1 %871, %872
  %874 = and i1 %866, %873
  %875 = fcmp fast ole float %847, 1.000000e+00
  %876 = fcmp fast ole float %848, 1.000000e+00
  %877 = and i1 %875, %876
  %878 = and i1 %867, %877
  %879 = and i1 %874, %878
  br label %880

; <label>:880                                     ; preds = %870, %868
  %881 = phi i1 [ %869, %868 ], [ %879, %870 ]
  %882 = and i1 %865, %881
  %883 = call float @dx.op.unary.f32(i32 6, float %864)  ; FAbs(value)
  %884 = extractvalue %dx.types.CBufRet.f32 %815, 1
  %885 = extractvalue %dx.types.CBufRet.f32 %815, 0
  %886 = call float @dx.op.binary.f32(i32 35, float %883, float %885)  ; FMax(a,b)
  %887 = select i1 %882, float %884, float %886
  %888 = zext i1 %882 to i32
  %889 = call float @dx.op.binary.f32(i32 36, float %818, float %887)  ; FMin(a,b)
  br label %890

; <label>:890                                     ; preds = %880, %832
  %891 = phi i32 [ %888, %880 ], [ 0, %832 ]
  %892 = phi float [ %889, %880 ], [ %818, %832 ]
  %893 = extractvalue %dx.types.CBufRet.f32 %534, 2
  %894 = fmul fast float %893, %523
  %895 = call float @dx.op.unary.f32(i32 23, float %894)  ; Log(value)
  %896 = fmul fast float %895, 0x3FE62E4300000000
  %897 = call float @dx.op.binary.f32(i32 35, float %896, float 1.000000e+00)  ; FMax(a,b)
  %898 = fmul fast float %897, %833
  %899 = call float @dx.op.binary.f32(i32 36, float %898, float %892)  ; FMin(a,b)
  %900 = call float @dx.op.binary.f32(i32 35, float %899, float %535)  ; FMax(a,b)
  %901 = fsub fast float %484, %523
  %902 = fadd fast float %901, 0x3F1A36E2E0000000
  %903 = call float @dx.op.binary.f32(i32 36, float %902, float %900)  ; FMin(a,b)
  %904 = icmp eq i32 %703, 0
  br i1 %904, label %1010, label %905, !dx.controlflow.hints !65

; <label>:905                                     ; preds = %890
  %906 = fcmp fast olt float %902, %900
  %907 = fmul fast float %287, %230
  %908 = fmul fast float %907, %903
  %909 = fadd fast float %908, %522
  %910 = fmul fast float %287, %231
  %911 = fmul fast float %910, %903
  %912 = fadd fast float %911, %522
  %913 = fmul fast float %287, %232
  %914 = fmul fast float %913, %903
  %915 = fadd fast float %914, %522
  br i1 %906, label %916, label %921, !dx.controlflow.hints !66

; <label>:916                                     ; preds = %905
  %917 = fmul fast float %903, %285
  %918 = fmul fast float %903, %286
  %919 = fadd fast float %917, %520
  %920 = fadd fast float %918, %521
  br label %921

; <label>:921                                     ; preds = %916, %905
  %922 = phi float [ %919, %916 ], [ %520, %905 ]
  %923 = phi float [ %920, %916 ], [ %521, %905 ]
  %924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %925 = extractvalue %dx.types.CBufRet.f32 %924, 0
  %926 = extractvalue %dx.types.CBufRet.f32 %924, 1
  %927 = fsub fast float %922, %925
  %928 = fsub fast float %923, %926
  %929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %930 = extractvalue %dx.types.CBufRet.f32 %929, 0
  %931 = extractvalue %dx.types.CBufRet.f32 %929, 1
  %932 = fmul fast float %927, %930
  %933 = fmul fast float %928, %931
  %934 = fsub fast float 1.000000e+00, %933
  %935 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.i32 %935, 3
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %944, label %938, !dx.controlflow.hints !52

; <label>:938                                     ; preds = %921
  %939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %932, float %934, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %940 = extractvalue %dx.types.ResRet.f32 %939, 0
  %941 = extractvalue %dx.types.ResRet.f32 %939, 1
  %942 = extractvalue %dx.types.ResRet.f32 %939, 2
  %943 = extractvalue %dx.types.ResRet.f32 %939, 3
  br label %950

; <label>:944                                     ; preds = %921
  %945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %20, float %932, float %934, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %946 = extractvalue %dx.types.ResRet.f32 %945, 0
  %947 = extractvalue %dx.types.ResRet.f32 %945, 1
  %948 = extractvalue %dx.types.ResRet.f32 %945, 2
  %949 = extractvalue %dx.types.ResRet.f32 %945, 3
  br label %950

; <label>:950                                     ; preds = %944, %938
  %951 = phi float [ %940, %938 ], [ %946, %944 ]
  %952 = phi float [ %941, %938 ], [ %947, %944 ]
  %953 = phi float [ %942, %938 ], [ %948, %944 ]
  %954 = phi float [ %943, %938 ], [ %949, %944 ]
  %955 = extractvalue %dx.types.CBufRet.f32 %929, 3
  %956 = fmul fast float %955, %952
  %957 = fmul fast float %956, %951
  %958 = fsub fast float %956, %957
  %959 = fcmp fast ole float %958, 0.000000e+00
  %960 = extractvalue %dx.types.CBufRet.f32 %924, 2
  %961 = fadd fast float %957, %960
  %962 = fmul fast float %955, %953
  %963 = fadd fast float %962, %960
  %964 = fdiv fast float 1.000000e+00, %958
  %965 = select i1 %959, float 1.000000e+06, float %964
  %966 = fsub fast float %909, %961
  %967 = fmul fast float %965, %966
  %968 = call float @dx.op.unary.f32(i32 7, float %967)  ; Saturate(value)
  %969 = extractvalue %dx.types.CBufRet.f32 %929, 2
  %970 = fmul fast float %969, %968
  %971 = fsub fast float %969, %970
  %972 = fcmp fast olt float %909, %963
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 3
  %975 = select i1 %972, float %974, float 1.000000e+00
  %976 = fmul fast float %971, %975
  %977 = fsub fast float %912, %961
  %978 = fmul fast float %965, %977
  %979 = call float @dx.op.unary.f32(i32 7, float %978)  ; Saturate(value)
  %980 = fmul fast float %969, %979
  %981 = fsub fast float %969, %980
  %982 = fcmp fast olt float %912, %963
  %983 = select i1 %982, float %974, float 1.000000e+00
  %984 = fmul fast float %981, %983
  %985 = fadd fast float %984, %976
  %986 = fsub fast float %915, %961
  %987 = fmul fast float %965, %986
  %988 = call float @dx.op.unary.f32(i32 7, float %987)  ; Saturate(value)
  %989 = fmul fast float %969, %988
  %990 = fsub fast float %969, %989
  %991 = fcmp fast olt float %915, %963
  %992 = select i1 %991, float %974, float 1.000000e+00
  %993 = fmul fast float %990, %992
  %994 = fadd fast float %985, %993
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 2
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 0
  %999 = extractvalue %dx.types.CBufRet.f32 %997, 1
  %1000 = extractvalue %dx.types.CBufRet.f32 %997, 2
  %1001 = fmul fast float %903, 0x3FD5555560000000
  %1002 = fmul fast float %1001, %954
  %1003 = fmul fast float %1002, %996
  %1004 = fmul fast float %1003, %994
  %1005 = extractvalue %dx.types.CBufRet.f32 %973, 0
  %1006 = fmul fast float %1004, %998
  %1007 = fmul fast float %1004, %999
  %1008 = fmul fast float %1004, %1000
  %1009 = fmul fast float %1004, %1005
  br label %1010

; <label>:1010                                    ; preds = %950, %890
  %1011 = phi float [ %1004, %950 ], [ 0.000000e+00, %890 ]
  %1012 = phi float [ %1009, %950 ], [ 0.000000e+00, %890 ]
  %1013 = phi float [ %1006, %950 ], [ 0.000000e+00, %890 ]
  %1014 = phi float [ %1007, %950 ], [ 0.000000e+00, %890 ]
  %1015 = phi float [ %1008, %950 ], [ 0.000000e+00, %890 ]
  br i1 %819, label %1075, label %1016, !dx.controlflow.hints !67

; <label>:1016                                    ; preds = %1010
  %1017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.f32 %1017, 0
  %1019 = fsub fast float %1018, %522
  %1020 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %533, float %532, float %1019)  ; Dot3(ax,ay,az,bx,by,bz)
  %1021 = fmul fast float %384, %1020
  %1022 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1021)  ; FMax(a,b)
  %1023 = fcmp fast olt float %287, 0.000000e+00
  %1024 = call float @dx.op.binary.f32(i32 36, float %903, float %1022)  ; FMin(a,b)
  br i1 %1023, label %1026, label %1025, !dx.controlflow.hints !68

; <label>:1025                                    ; preds = %1016
  br label %1026

; <label>:1026                                    ; preds = %1025, %1016
  %1027 = phi float [ 0.000000e+00, %1025 ], [ %1024, %1016 ]
  %1028 = phi float [ %1024, %1025 ], [ %903, %1016 ]
  %1029 = phi float [ %1024, %1025 ], [ 0.000000e+00, %1016 ]
  %1030 = phi float [ %903, %1025 ], [ %1024, %1016 ]
  %1031 = fsub fast float %1028, %1027
  %1032 = extractvalue %dx.types.CBufRet.f32 %1017, 1
  %1033 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1032)  ; FMin(a,b)
  %1034 = fsub fast float %522, %1018
  %1035 = fmul fast float %1033, 0x3FF7154760000000
  %1036 = fmul fast float %1035, %1034
  %1037 = call float @dx.op.unary.f32(i32 21, float %1036)  ; Exp(value)
  %1038 = fmul fast float %287, 0x3FF7154760000000
  %1039 = fmul fast float %1038, %1030
  %1040 = fmul fast float %1039, %1033
  %1041 = call float @dx.op.unary.f32(i32 21, float %1040)  ; Exp(value)
  %1042 = fmul fast float %1038, %1029
  %1043 = fmul fast float %1042, %1033
  %1044 = call float @dx.op.unary.f32(i32 21, float %1043)  ; Exp(value)
  %1045 = fsub fast float %1041, %1044
  %1046 = fmul fast float %1045, %1037
  %1047 = fmul fast float %1033, %287
  %1048 = fdiv fast float %1046, %1047
  %1049 = fadd fast float %1031, %1048
  %1050 = call float @dx.op.unary.f32(i32 6, float %287)  ; FAbs(value)
  %1051 = fcmp fast olt float %1050, 0x3F0FFB4800000000
  %1052 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1034)  ; FMax(a,b)
  %1053 = fmul fast float %1052, 0x3FF7154760000000
  %1054 = fmul fast float %1053, %1032
  %1055 = call float @dx.op.unary.f32(i32 21, float %1054)  ; Exp(value)
  %1056 = fmul fast float %1055, %903
  %1057 = select i1 %1051, float %1056, float %1049
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1058, 1
  %1060 = fmul fast float %1057, %1059
  %1061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.f32 %1061, 0
  %1063 = extractvalue %dx.types.CBufRet.f32 %1061, 1
  %1064 = extractvalue %dx.types.CBufRet.f32 %1061, 2
  %1065 = extractvalue %dx.types.CBufRet.f32 %1058, 2
  %1066 = fmul fast float %1062, %1060
  %1067 = fmul fast float %1063, %1060
  %1068 = fmul fast float %1064, %1060
  %1069 = fadd fast float %1066, %1013
  %1070 = fadd fast float %1067, %1014
  %1071 = fadd fast float %1068, %1015
  %1072 = fmul fast float %1065, %1060
  %1073 = fadd fast float %1072, %1012
  %1074 = fadd fast float %1060, %1011
  br label %1075

; <label>:1075                                    ; preds = %1026, %1010
  %1076 = phi float [ %1074, %1026 ], [ %1011, %1010 ]
  %1077 = phi float [ %1073, %1026 ], [ %1012, %1010 ]
  %1078 = phi float [ %1069, %1026 ], [ %1013, %1010 ]
  %1079 = phi float [ %1070, %1026 ], [ %1014, %1010 ]
  %1080 = phi float [ %1071, %1026 ], [ %1015, %1010 ]
  %1081 = icmp eq i32 %891, 0
  br i1 %1081, label %1276, label %1082, !dx.controlflow.hints !69

; <label>:1082                                    ; preds = %1075
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 3
  %1085 = fmul fast float %1084, %523
  %1086 = fcmp fast oeq float %1085, 0.000000e+00
  br i1 %1086, label %1101, label %1087, !dx.controlflow.hints !70

; <label>:1087                                    ; preds = %1082
  %1088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1089 = extractvalue %dx.types.CBufRet.f32 %1088, 3
  %1090 = fmul fast float %1089, %1085
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 0
  %1093 = extractvalue %dx.types.CBufRet.f32 %1091, 1
  %1094 = extractvalue %dx.types.CBufRet.f32 %1091, 2
  %1095 = fmul fast float %1092, %1090
  %1096 = fmul fast float %1093, %1090
  %1097 = fmul fast float %1094, %1090
  %1098 = call float @dx.op.unary.f32(i32 23, float %1095)  ; Log(value)
  %1099 = call float @dx.op.unary.f32(i32 23, float %1096)  ; Log(value)
  %1100 = call float @dx.op.unary.f32(i32 23, float %1097)  ; Log(value)
  br label %1101

; <label>:1101                                    ; preds = %1087, %1082
  %1102 = phi float [ %1098, %1087 ], [ 0.000000e+00, %1082 ]
  %1103 = phi float [ %1099, %1087 ], [ 0.000000e+00, %1082 ]
  %1104 = phi float [ %1100, %1087 ], [ 0.000000e+00, %1082 ]
  %1105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1106 = extractvalue %dx.types.CBufRet.f32 %1105, 0
  %1107 = extractvalue %dx.types.CBufRet.f32 %1105, 1
  %1108 = extractvalue %dx.types.CBufRet.f32 %1105, 2
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 0
  %1111 = extractvalue %dx.types.CBufRet.f32 %1109, 1
  %1112 = extractvalue %dx.types.CBufRet.f32 %1109, 2
  %1113 = fsub fast float %520, %1110
  %1114 = fsub fast float %521, %1111
  %1115 = fsub fast float %522, %1112
  %1116 = fmul fast float %1113, %1106
  %1117 = fmul fast float %1114, %1107
  %1118 = fmul fast float %1115, %1108
  %1119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.i32 %1119, 0
  %1121 = extractvalue %dx.types.CBufRet.i32 %1119, 1
  %1122 = uitofp i32 %1120 to float
  %1123 = uitofp i32 %1121 to float
  %1124 = fmul fast float %1116, %1122
  %1125 = fmul fast float %1117, %1123
  %1126 = fadd fast float %1124, 5.000000e-01
  %1127 = fadd fast float %1125, 5.000000e-01
  %1128 = call float @dx.op.unary.f32(i32 22, float %1126)  ; Frc(value)
  %1129 = call float @dx.op.unary.f32(i32 22, float %1127)  ; Frc(value)
  %1130 = call float @dx.op.unary.f32(i32 27, float %1126)  ; Round_ni(value)
  %1131 = call float @dx.op.unary.f32(i32 27, float %1127)  ; Round_ni(value)
  %1132 = fadd fast float %1130, 1.000000e+00
  %1133 = fadd fast float %1131, 1.000000e+00
  %1134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1135 = extractvalue %dx.types.CBufRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.CBufRet.f32 %1134, 1
  %1137 = fmul fast float %1135, %1132
  %1138 = fmul fast float %1136, %1133
  %1139 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %19, float %1137, float %1138, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.ResRet.f32 %1139, 2
  %1143 = extractvalue %dx.types.ResRet.f32 %1139, 3
  %1144 = extractvalue %dx.types.CBufRet.i32 %1119, 2
  %1145 = extractvalue %dx.types.CBufRet.f32 %1134, 2
  %1146 = uitofp i32 %1144 to float
  %1147 = fadd fast float %1146, -1.000000e+00
  %1148 = fmul fast float %1147, %1140
  %1149 = fmul fast float %1147, %1141
  %1150 = fmul fast float %1147, %1142
  %1151 = fmul fast float %1147, %1143
  %1152 = fadd fast float %1148, 5.000000e-01
  %1153 = fadd fast float %1149, 5.000000e-01
  %1154 = fadd fast float %1150, 5.000000e-01
  %1155 = fadd fast float %1151, 5.000000e-01
  %1156 = fptoui float %1152 to i32
  %1157 = fptoui float %1153 to i32
  %1158 = fptoui float %1154 to i32
  %1159 = fptoui float %1155 to i32
  %1160 = uitofp i32 %1156 to float
  %1161 = uitofp i32 %1157 to float
  %1162 = uitofp i32 %1158 to float
  %1163 = uitofp i32 %1159 to float
  %1164 = fadd fast float %1160, 5.000000e-01
  %1165 = fadd fast float %1161, 5.000000e-01
  %1166 = fadd fast float %1162, 5.000000e-01
  %1167 = fadd fast float %1163, 5.000000e-01
  %1168 = fmul fast float %1164, %1145
  %1169 = fmul fast float %1165, %1145
  %1170 = fmul fast float %1166, %1145
  %1171 = fmul fast float %1167, %1145
  %1172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1168, float %1118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1173 = extractvalue %dx.types.ResRet.f32 %1172, 0
  %1174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1169, float %1118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1175 = extractvalue %dx.types.ResRet.f32 %1174, 0
  %1176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1170, float %1118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1177 = extractvalue %dx.types.ResRet.f32 %1176, 0
  %1178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1171, float %1118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 0
  %1180 = fsub fast float %1177, %1179
  %1181 = fmul fast float %1180, %1128
  %1182 = fadd fast float %1181, %1179
  %1183 = fsub fast float %1175, %1173
  %1184 = fmul fast float %1183, %1128
  %1185 = fadd fast float %1184, %1173
  %1186 = fsub fast float %1185, %1182
  %1187 = fmul fast float %1186, %1129
  %1188 = fadd fast float %1187, %1182
  %1189 = fcmp fast ogt float %1188, 0.000000e+00
  br i1 %1189, label %1190, label %1258, !dx.controlflow.hints !71

; <label>:1190                                    ; preds = %1101
  %1191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1192 = extractvalue %dx.types.CBufRet.f32 %1191, 0
  %1193 = extractvalue %dx.types.CBufRet.f32 %1191, 1
  %1194 = extractvalue %dx.types.CBufRet.f32 %1191, 2
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.CBufRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.CBufRet.f32 %1195, 2
  %1199 = fmul fast float %1114, %1106
  %1200 = fmul fast float %1115, %1106
  %1201 = fadd fast float %1116, %1196
  %1202 = fadd fast float %1199, %1197
  %1203 = fadd fast float %1200, %1198
  %1204 = fmul fast float %1201, %1192
  %1205 = fmul fast float %1202, %1192
  %1206 = fmul fast float %1203, %1192
  %1207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1204, float %1205, float %1206, float undef, i32 0, i32 0, i32 0, float %1102)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1208 = extractvalue %dx.types.ResRet.f32 %1207, 0
  %1209 = fmul fast float %1201, %1193
  %1210 = fmul fast float %1202, %1193
  %1211 = fmul fast float %1203, %1193
  %1212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1209, float %1210, float %1211, float undef, i32 0, i32 0, i32 0, float %1103)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 1
  %1214 = fmul fast float %1201, %1194
  %1215 = fmul fast float %1202, %1194
  %1216 = fmul fast float %1203, %1194
  %1217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1214, float %1215, float %1216, float undef, i32 0, i32 0, i32 0, float %1104)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1218 = extractvalue %dx.types.ResRet.f32 %1217, 2
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 1
  %1221 = fmul fast float %1213, %1208
  %1222 = fmul fast float %1221, %1218
  %1223 = call float @dx.op.unary.f32(i32 23, float %1222)  ; Log(value)
  %1224 = fmul fast float %1223, %1220
  %1225 = call float @dx.op.unary.f32(i32 21, float %1224)  ; Exp(value)
  %1226 = extractvalue %dx.types.CBufRet.f32 %1219, 2
  %1227 = fmul fast float %1188, %1188
  %1228 = fmul fast float %1227, %1225
  %1229 = fmul fast float %1228, %1226
  %1230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1230, 3
  %1232 = fmul fast float %1231, %1229
  %1233 = bitcast float %1232 to i32
  %1234 = sitofp i32 %1233 to float
  %1235 = fptosi float %1234 to i32
  %1236 = bitcast i32 %1235 to float
  %1237 = fsub fast float 1.000000e+00, %1229
  %1238 = bitcast float %1237 to i32
  %1239 = sitofp i32 %1238 to float
  %1240 = fptosi float %1239 to i32
  %1241 = bitcast i32 %1240 to float
  %1242 = fadd fast float %1236, %1241
  %1243 = bitcast float %1242 to i32
  %1244 = sub nsw i32 2129859010, %1243
  %1245 = bitcast i32 %1244 to float
  %1246 = fmul fast float %1245, %1236
  %1247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1248 = extractvalue %dx.types.CBufRet.f32 %1247, 2
  %1249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.f32 %1249, 0
  %1251 = fmul fast float %1246, %1250
  %1252 = fadd fast float %1251, 1.000000e+00
  %1253 = bitcast float %1252 to i32
  %1254 = sub nsw i32 2129859010, %1253
  %1255 = bitcast i32 %1254 to float
  %1256 = fmul fast float %1246, %1248
  %1257 = fmul fast float %1256, %1255
  br label %1258

; <label>:1258                                    ; preds = %1190, %1101
  %1259 = phi float [ %1257, %1190 ], [ %1188, %1101 ]
  %1260 = fmul fast float %1259, %903
  %1261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1262 = extractvalue %dx.types.CBufRet.f32 %1261, 0
  %1263 = extractvalue %dx.types.CBufRet.f32 %1261, 1
  %1264 = extractvalue %dx.types.CBufRet.f32 %1261, 2
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 1
  %1267 = fmul fast float %1262, %1260
  %1268 = fmul fast float %1263, %1260
  %1269 = fmul fast float %1264, %1260
  %1270 = fadd fast float %1267, %1078
  %1271 = fadd fast float %1268, %1079
  %1272 = fadd fast float %1269, %1080
  %1273 = fmul fast float %1266, %1260
  %1274 = fadd fast float %1273, %1077
  %1275 = fadd fast float %1260, %1076
  br label %1276

; <label>:1276                                    ; preds = %1258, %1075
  %1277 = phi float [ %1275, %1258 ], [ %1076, %1075 ]
  %1278 = phi float [ %1274, %1258 ], [ %1077, %1075 ]
  %1279 = phi float [ %1270, %1258 ], [ %1078, %1075 ]
  %1280 = phi float [ %1271, %1258 ], [ %1079, %1075 ]
  %1281 = phi float [ %1272, %1258 ], [ %1080, %1075 ]
  br i1 %814, label %1424, label %1282, !dx.controlflow.hints !72

; <label>:1282                                    ; preds = %1276
  %1283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1284 = extractvalue %dx.types.CBufRet.f32 %1283, 0
  %1285 = extractvalue %dx.types.CBufRet.f32 %1283, 1
  %1286 = extractvalue %dx.types.CBufRet.f32 %1283, 2
  %1287 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1288 = extractvalue %dx.types.CBufRet.i32 %1287, 0
  %1289 = icmp ne i32 %1288, 0
  %1290 = zext i1 %1289 to i32
  %1291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1292 = extractvalue %dx.types.CBufRet.i32 %1291, 0
  %1293 = icmp eq i32 %1292, 0
  br i1 %1293, label %1327, label %1294

; <label>:1294                                    ; preds = %1282
  br label %1295

; <label>:1295                                    ; preds = %1322, %1294
  %1296 = phi i32 [ %1323, %1322 ], [ 0, %1294 ]
  %1297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1296, i32 0)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.f32 %1297, 0
  %1299 = extractvalue %dx.types.ResRet.f32 %1297, 1
  %1300 = extractvalue %dx.types.ResRet.f32 %1297, 2
  %1301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1296, i32 16)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.f32 %1301, 0
  %1303 = extractvalue %dx.types.ResRet.f32 %1301, 1
  %1304 = extractvalue %dx.types.ResRet.f32 %1301, 2
  %1305 = fsub fast float %1298, %1302
  %1306 = fsub fast float %1299, %1303
  %1307 = fsub fast float %1300, %1304
  %1308 = fadd fast float %1302, %1298
  %1309 = fadd fast float %1303, %1299
  %1310 = fadd fast float %1304, %1300
  %1311 = fcmp fast olt float %520, %1305
  %1312 = fcmp fast olt float %521, %1306
  %1313 = fcmp fast olt float %522, %1307
  %1314 = or i1 %1311, %1312
  %1315 = or i1 %1313, %1314
  %1316 = fcmp fast ogt float %520, %1308
  %1317 = fcmp fast ogt float %521, %1309
  %1318 = fcmp fast ogt float %522, %1310
  %1319 = or i1 %1316, %1317
  %1320 = or i1 %1318, %1319
  %1321 = or i1 %1315, %1320
  br i1 %1321, label %1322, label %1325, !dx.controlflow.hints !73

; <label>:1322                                    ; preds = %1295
  %1323 = add nuw i32 %1296, 1
  %1324 = icmp ult i32 %1323, %1292
  br i1 %1324, label %1295, label %1325

; <label>:1325                                    ; preds = %1322, %1295
  %1326 = phi i32 [ 255, %1322 ], [ %1296, %1295 ]
  br label %1327

; <label>:1327                                    ; preds = %1325, %1282
  %1328 = phi i32 [ 255, %1282 ], [ %1326, %1325 ]
  %1329 = icmp eq i32 %1328, 255
  br i1 %1329, label %1339, label %1330, !dx.controlflow.hints !74

; <label>:1330                                    ; preds = %1327
  %1331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1328, i32 32)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.f32 %1331, 0
  %1333 = extractvalue %dx.types.ResRet.f32 %1331, 1
  %1334 = extractvalue %dx.types.ResRet.f32 %1331, 2
  %1335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1328, i32 156)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.i32 %1335, 0
  %1337 = icmp ne i32 %1336, 0
  %1338 = zext i1 %1337 to i32
  br label %1339

; <label>:1339                                    ; preds = %1330, %1327
  %1340 = phi float [ %1332, %1330 ], [ %1284, %1327 ]
  %1341 = phi float [ %1333, %1330 ], [ %1285, %1327 ]
  %1342 = phi float [ %1334, %1330 ], [ %1286, %1327 ]
  %1343 = phi i32 [ %1338, %1330 ], [ %1290, %1327 ]
  %1344 = icmp eq i32 %1343, 0
  br i1 %1344, label %1345, label %1414, !dx.controlflow.hints !75

; <label>:1345                                    ; preds = %1339
  %1346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.f32 %1346, 3
  %1348 = extractvalue %dx.types.CBufRet.f32 %724, 0
  %1349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1350 = extractvalue %dx.types.CBufRet.f32 %1349, 2
  %1351 = extractvalue %dx.types.CBufRet.f32 %1349, 3
  br i1 %1329, label %1362, label %1352, !dx.controlflow.hints !76

; <label>:1352                                    ; preds = %1345
  %1353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1328, i32 60)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.f32 %1353, 0
  %1355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1328, i32 64)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.f32 %1355, 0
  %1357 = extractvalue %dx.types.ResRet.f32 %1355, 1
  %1358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1328, i32 72)  ; BufferLoad(srv,index,wot)
  %1359 = extractvalue %dx.types.ResRet.f32 %1358, 0
  %1360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1328, i32 96)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.f32 %1360, 0
  br label %1362

; <label>:1362                                    ; preds = %1352, %1345
  %1363 = phi float [ %1354, %1352 ], [ %727, %1345 ]
  %1364 = phi float [ %1359, %1352 ], [ %725, %1345 ]
  %1365 = phi float [ %1361, %1352 ], [ %1348, %1345 ]
  %1366 = phi float [ %1356, %1352 ], [ %1350, %1345 ]
  %1367 = phi float [ %1357, %1352 ], [ %1351, %1345 ]
  %1368 = call float @dx.op.binary.f32(i32 35, float %808, float 0.000000e+00)  ; FMax(a,b)
  %1369 = call float @dx.op.binary.f32(i32 36, float %1368, float 1.000000e+00)  ; FMin(a,b)
  %1370 = call float @dx.op.unary.f32(i32 24, float %1369)  ; Sqrt(value)
  %1371 = call float @dx.op.binary.f32(i32 35, float %811, float 0x3F847AE140000000)  ; FMax(a,b)
  %1372 = fsub fast float %809, %522
  %1373 = fsub fast float %522, %810
  %1374 = call float @dx.op.binary.f32(i32 36, float %1373, float %1372)  ; FMin(a,b)
  %1375 = fdiv fast float %1374, %1371
  %1376 = call float @dx.op.unary.f32(i32 7, float %1375)  ; Saturate(value)
  %1377 = fsub fast float %522, %1364
  %1378 = fdiv fast float %1377, %1363
  %1379 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  %1380 = fsub fast float 1.000000e+00, %1379
  %1381 = fmul float %1376, %1380
  %1382 = fmul float %1381, %1381
  %1383 = fmul fast float %1370, %1347
  %1384 = fmul fast float %1383, %1382
  %1385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1386 = extractvalue %dx.types.CBufRet.f32 %1385, 2
  %1387 = extractvalue %dx.types.CBufRet.f32 %1385, 1
  %1388 = fsub fast float %1384, %1387
  %1389 = fsub fast float %1386, %1387
  %1390 = fdiv fast float %1388, %1389
  %1391 = call float @dx.op.unary.f32(i32 7, float %1390)  ; Saturate(value)
  %1392 = fmul fast float %1391, %1365
  %1393 = fcmp fast ogt float %1367, 0.000000e+00
  br i1 %1393, label %1394, label %1414, !dx.controlflow.hints !77

; <label>:1394                                    ; preds = %1362
  %1395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1396 = extractvalue %dx.types.CBufRet.f32 %1395, 0
  %1397 = extractvalue %dx.types.CBufRet.f32 %1395, 1
  %1398 = extractvalue %dx.types.CBufRet.f32 %1395, 2
  %1399 = fsub fast float %520, %1396
  %1400 = fsub fast float %521, %1397
  %1401 = fsub fast float %522, %1398
  %1402 = fmul fast float %1399, %1399
  %1403 = fmul fast float %1400, %1400
  %1404 = fadd fast float %1402, %1403
  %1405 = fmul fast float %1401, %1401
  %1406 = fadd fast float %1404, %1405
  %1407 = call float @dx.op.unary.f32(i32 24, float %1406)  ; Sqrt(value)
  %1408 = fsub fast float %1407, %1366
  %1409 = fsub fast float %1367, %1366
  %1410 = fdiv fast float %1408, %1409
  %1411 = call float @dx.op.unary.f32(i32 7, float %1410)  ; Saturate(value)
  %1412 = fmul fast float %1411, %1411
  %1413 = fmul fast float %1412, %1392
  br label %1414

; <label>:1414                                    ; preds = %1394, %1362, %1339
  %1415 = phi float [ 0.000000e+00, %1339 ], [ %1413, %1394 ], [ %1392, %1362 ]
  %1416 = fmul fast float %1415, %903
  %1417 = fmul fast float %1416, %1340
  %1418 = fmul fast float %1416, %1341
  %1419 = fmul fast float %1416, %1342
  %1420 = fadd fast float %1417, %1279
  %1421 = fadd fast float %1418, %1280
  %1422 = fadd fast float %1419, %1281
  %1423 = fadd fast float %1416, %1277
  br label %1424

; <label>:1424                                    ; preds = %1414, %1276
  %1425 = phi float [ %1423, %1414 ], [ %1277, %1276 ]
  %1426 = phi float [ %1420, %1414 ], [ %1279, %1276 ]
  %1427 = phi float [ %1421, %1414 ], [ %1280, %1276 ]
  %1428 = phi float [ %1422, %1414 ], [ %1281, %1276 ]
  %1429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1430 = extractvalue %dx.types.CBufRet.f32 %1429, 1
  %1431 = fcmp fast ogt float %1425, %1430
  br i1 %1431, label %1432, label %1438, !dx.controlflow.hints !78

; <label>:1432                                    ; preds = %1424
  %1433 = fdiv fast float 1.000000e+00, %1425
  %1434 = fmul fast float %1433, %1426
  %1435 = fmul fast float %1433, %1427
  %1436 = fmul fast float %1433, %1428
  %1437 = fmul fast float %1433, %1278
  br label %1438

; <label>:1438                                    ; preds = %1432, %1424
  %1439 = phi float [ %1437, %1432 ], [ %1278, %1424 ]
  %1440 = phi float [ %1434, %1432 ], [ %1426, %1424 ]
  %1441 = phi float [ %1435, %1432 ], [ %1427, %1424 ]
  %1442 = phi float [ %1436, %1432 ], [ %1428, %1424 ]
  br i1 %1431, label %1445, label %1443, !dx.controlflow.hints !79

; <label>:1443                                    ; preds = %1438
  %1444 = fadd fast float %903, %523
  br label %2213

; <label>:1445                                    ; preds = %1438
  %1446 = fmul fast float %1425, 0xBFF7154760000000
  %1447 = call float @dx.op.unary.f32(i32 21, float %1446)  ; Exp(value)
  %1448 = call float @dx.op.unary.f32(i32 7, float %1447)  ; Saturate(value)
  %1449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1450 = extractvalue %dx.types.CBufRet.f32 %1449, 3
  %1451 = fcmp fast une float %1450, 0.000000e+00
  %1452 = extractvalue %dx.types.CBufRet.f32 %1449, 0
  %1453 = extractvalue %dx.types.CBufRet.f32 %1449, 1
  %1454 = extractvalue %dx.types.CBufRet.f32 %1449, 2
  br i1 %1451, label %1455, label %1477, !dx.controlflow.hints !80

; <label>:1455                                    ; preds = %1445
  %1456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.f32 %1456, 0
  %1458 = extractvalue %dx.types.CBufRet.f32 %1456, 1
  %1459 = extractvalue %dx.types.CBufRet.f32 %1456, 2
  %1460 = call float @dx.op.dot3.f32(i32 55, float %1452, float %1453, float %1454, float %285, float %286, float %287)  ; Dot3(ax,ay,az,bx,by,bz)
  %1461 = fcmp fast ogt float %1439, 0.000000e+00
  %1462 = select i1 %1461, float 1.000000e+00, float -1.000000e+00
  %1463 = fmul fast float %1462, 5.000000e-01
  %1464 = fmul fast float %1463, %1460
  %1465 = fmul fast float %1462, %1439
  %1466 = fadd fast float %1464, 4.921875e-01
  %1467 = fadd fast float %1465, -3.125000e-02
  %1468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %20, float %1466, float 0x3FB25F3060000000, float %1467, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1469 = extractvalue %dx.types.ResRet.f32 %1468, 0
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 0
  %1472 = fmul fast float %1469, 0x400921FB60000000
  %1473 = fmul fast float %1472, %1471
  %1474 = fmul fast float %1473, %1457
  %1475 = fmul fast float %1473, %1458
  %1476 = fmul fast float %1473, %1459
  br label %1477

; <label>:1477                                    ; preds = %1455, %1445
  %1478 = phi float [ %1474, %1455 ], [ 0.000000e+00, %1445 ]
  %1479 = phi float [ %1475, %1455 ], [ 0.000000e+00, %1445 ]
  %1480 = phi float [ %1476, %1455 ], [ 0.000000e+00, %1445 ]
  %1481 = fdiv fast float 1.000000e+00, %1452
  %1482 = fdiv fast float 1.000000e+00, %1453
  %1483 = fdiv fast float 1.000000e+00, %1454
  %1484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1485 = extractvalue %dx.types.CBufRet.f32 %1484, 0
  %1486 = fmul fast float %1485, %1452
  %1487 = fmul fast float %1485, %1453
  %1488 = fmul fast float %1485, %1454
  %1489 = fadd fast float %1486, %520
  %1490 = fsub fast float -0.000000e+00, %1489
  %1491 = fadd fast float %1487, %521
  %1492 = fsub fast float -0.000000e+00, %1491
  %1493 = fadd fast float %1488, %522
  br i1 %536, label %1565, label %1494, !dx.controlflow.hints !48

; <label>:1494                                    ; preds = %1477
  %1495 = extractvalue %dx.types.CBufRet.f32 %1484, 1
  %1496 = fcmp fast ogt float %1495, %1485
  br i1 %1496, label %1497, label %1499, !dx.controlflow.hints !49

; <label>:1497                                    ; preds = %1494
  %1498 = fsub fast float %1495, %1485
  br label %1556

; <label>:1499                                    ; preds = %1494
  %1500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.i32 %1500, 3
  %1502 = icmp eq i32 %1501, 0
  %1503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1504 = extractvalue %dx.types.CBufRet.f32 %1503, 2
  %1505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.f32 %1505, 2
  %1507 = fsub fast float %1504, %1493
  %1508 = fadd fast float %1507, %1506
  %1509 = fsub fast float 0xC7EFFFFFE0000000, %1493
  br i1 %1502, label %1519, label %1510, !dx.controlflow.hints !39

; <label>:1510                                    ; preds = %1499
  %1511 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1490, float %1492, float %1508)  ; Dot3(ax,ay,az,bx,by,bz)
  %1512 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1452, float %1453, float %1454)  ; Dot3(ax,ay,az,bx,by,bz)
  %1513 = fdiv fast float 1.000000e+00, %1512
  %1514 = fmul fast float %1513, %1511
  %1515 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1490, float %1492, float %1509)  ; Dot3(ax,ay,az,bx,by,bz)
  %1516 = fmul fast float %1513, %1515
  %1517 = call float @dx.op.binary.f32(i32 36, float %1514, float %1516)  ; FMin(a,b)
  %1518 = call float @dx.op.binary.f32(i32 35, float %1514, float %1516)  ; FMax(a,b)
  br label %1549

; <label>:1519                                    ; preds = %1499
  %1520 = extractvalue %dx.types.CBufRet.f32 %1503, 0
  %1521 = extractvalue %dx.types.CBufRet.f32 %1503, 1
  %1522 = extractvalue %dx.types.CBufRet.f32 %1505, 0
  %1523 = extractvalue %dx.types.CBufRet.f32 %1505, 1
  %1524 = fsub fast float %1520, %1489
  %1525 = fmul fast float %1481, %1524
  %1526 = fadd fast float %1524, %1522
  %1527 = fmul fast float %1526, %1481
  %1528 = call float @dx.op.binary.f32(i32 36, float %1525, float %1527)  ; FMin(a,b)
  %1529 = call float @dx.op.binary.f32(i32 35, float %1525, float %1527)  ; FMax(a,b)
  %1530 = fsub fast float %1521, %1491
  %1531 = fmul fast float %1482, %1530
  %1532 = fadd fast float %1530, %1523
  %1533 = fmul fast float %1532, %1482
  %1534 = call float @dx.op.binary.f32(i32 36, float %1531, float %1533)  ; FMin(a,b)
  %1535 = call float @dx.op.binary.f32(i32 35, float %1528, float %1534)  ; FMax(a,b)
  %1536 = call float @dx.op.binary.f32(i32 35, float %1531, float %1533)  ; FMax(a,b)
  %1537 = call float @dx.op.binary.f32(i32 36, float %1529, float %1536)  ; FMin(a,b)
  %1538 = fmul fast float %1483, %1509
  %1539 = fmul fast float %1483, %1508
  %1540 = call float @dx.op.binary.f32(i32 36, float %1538, float %1539)  ; FMin(a,b)
  %1541 = call float @dx.op.binary.f32(i32 35, float %1535, float %1540)  ; FMax(a,b)
  %1542 = call float @dx.op.binary.f32(i32 35, float %1538, float %1539)  ; FMax(a,b)
  %1543 = call float @dx.op.binary.f32(i32 36, float %1537, float %1542)  ; FMin(a,b)
  %1544 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1541)  ; FMax(a,b)
  %1545 = fcmp fast ult float %1543, %1544
  br i1 %1545, label %1549, label %1546, !dx.controlflow.hints !40

; <label>:1546                                    ; preds = %1519
  %1547 = call float @dx.op.binary.f32(i32 36, float %1541, float %1543)  ; FMin(a,b)
  %1548 = call float @dx.op.binary.f32(i32 35, float %1541, float %1543)  ; FMax(a,b)
  br label %1549

; <label>:1549                                    ; preds = %1546, %1519, %1510
  %1550 = phi float [ %1517, %1510 ], [ %1547, %1546 ], [ 0.000000e+00, %1519 ]
  %1551 = phi float [ %1518, %1510 ], [ %1548, %1546 ], [ 0.000000e+00, %1519 ]
  %1552 = fcmp fast ogt float %1550, 0.000000e+00
  br i1 %1552, label %1556, label %1553, !dx.controlflow.hints !50

; <label>:1553                                    ; preds = %1549
  %1554 = fcmp fast ugt float %1551, 0.000000e+00
  br i1 %1554, label %1555, label %1556, !dx.controlflow.hints !51

; <label>:1555                                    ; preds = %1553
  br label %1556

; <label>:1556                                    ; preds = %1555, %1553, %1549, %1497
  %1557 = phi float [ %1498, %1497 ], [ 0.000000e+00, %1555 ], [ 0x47EFFFFFE0000000, %1553 ], [ %1550, %1549 ]
  %1558 = phi i32 [ %374, %1497 ], [ %374, %1555 ], [ 0, %1553 ], [ %374, %1549 ]
  %1559 = icmp ne i32 %1558, 0
  %1560 = zext i1 %1559 to i32
  %1561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1562 = extractvalue %dx.types.CBufRet.f32 %1561, 2
  %1563 = call float @dx.op.binary.f32(i32 35, float %1557, float %1562)  ; FMax(a,b)
  %1564 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1563)  ; FMin(a,b)
  br label %1565

; <label>:1565                                    ; preds = %1556, %1477
  %1566 = phi float [ %1564, %1556 ], [ 0x47EFFFFFE0000000, %1477 ]
  %1567 = phi i32 [ %1560, %1556 ], [ 0, %1477 ]
  %1568 = fsub fast float %1489, %707
  %1569 = fsub fast float %1491, %708
  %1570 = fmul fast float %1568, %712
  %1571 = fmul fast float %1569, %713
  %1572 = call float @dx.op.binary.f32(i32 36, float %1570, float %1571)  ; FMin(a,b)
  %1573 = fcmp fast olt float %1572, 0.000000e+00
  %1574 = call float @dx.op.binary.f32(i32 35, float %1570, float %1571)  ; FMax(a,b)
  %1575 = fcmp fast ogt float %1574, 1.000000e+00
  %1576 = or i1 %1573, %1575
  %1577 = fcmp fast olt float %1493, %721
  %1578 = or i1 %1576, %1577
  %1579 = fcmp fast ogt float %1493, %728
  %1580 = or i1 %1578, %1579
  %1581 = extractvalue %dx.types.CBufRet.f32 %711, 0
  br i1 %1580, label %1582, label %1610, !dx.controlflow.hints !57

; <label>:1582                                    ; preds = %1565
  %1583 = extractvalue %dx.types.CBufRet.f32 %711, 1
  %1584 = fsub fast float %707, %1489
  %1585 = fmul fast float %1584, %1481
  %1586 = fadd fast float %1584, %1581
  %1587 = fmul fast float %1586, %1481
  %1588 = call float @dx.op.binary.f32(i32 36, float %1585, float %1587)  ; FMin(a,b)
  %1589 = call float @dx.op.binary.f32(i32 35, float %1585, float %1587)  ; FMax(a,b)
  %1590 = fsub fast float %708, %1491
  %1591 = fmul fast float %1590, %1482
  %1592 = fadd fast float %1590, %1583
  %1593 = fmul fast float %1592, %1482
  %1594 = call float @dx.op.binary.f32(i32 36, float %1591, float %1593)  ; FMin(a,b)
  %1595 = call float @dx.op.binary.f32(i32 35, float %1588, float %1594)  ; FMax(a,b)
  %1596 = call float @dx.op.binary.f32(i32 35, float %1591, float %1593)  ; FMax(a,b)
  %1597 = call float @dx.op.binary.f32(i32 36, float %1589, float %1596)  ; FMin(a,b)
  %1598 = fsub fast float %721, %1493
  %1599 = fmul fast float %1598, %1483
  %1600 = fsub fast float %725, %1493
  %1601 = fadd fast float %1600, %727
  %1602 = fmul fast float %1601, %1483
  %1603 = call float @dx.op.binary.f32(i32 36, float %1599, float %1602)  ; FMin(a,b)
  %1604 = call float @dx.op.binary.f32(i32 35, float %1595, float %1603)  ; FMax(a,b)
  %1605 = call float @dx.op.binary.f32(i32 35, float %1599, float %1602)  ; FMax(a,b)
  %1606 = call float @dx.op.binary.f32(i32 36, float %1597, float %1605)  ; FMin(a,b)
  %1607 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1604)  ; FMax(a,b)
  %1608 = fcmp fast oge float %1606, %1607
  %1609 = select i1 %1608, float %1604, float 1.000000e+07
  br label %1625

; <label>:1610                                    ; preds = %1565
  %1611 = fsub fast float 1.000000e+00, %1571
  %1612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %20, float %1570, float %1611, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1613 = extractvalue %dx.types.ResRet.f32 %1612, 0
  %1614 = extractvalue %dx.types.ResRet.f32 %1612, 1
  %1615 = extractvalue %dx.types.ResRet.f32 %1612, 2
  %1616 = extractvalue %dx.types.ResRet.f32 %1612, 3
  %1617 = fmul fast float %1581, 9.765625e-04
  %1618 = fcmp fast oeq float %1613, 0.000000e+00
  %1619 = fcmp ule float %1493, %1615
  %1620 = fcmp uge float %1493, %1614
  %1621 = or i1 %1620, %1619
  %1622 = or i1 %1618, %1621
  %1623 = zext i1 %1622 to i32
  %1624 = xor i32 %1623, 1
  br label %1625

; <label>:1625                                    ; preds = %1610, %1582
  %1626 = phi float [ %1609, %1582 ], [ %1617, %1610 ]
  %1627 = phi float [ %507, %1582 ], [ %1613, %1610 ]
  %1628 = phi float [ %508, %1582 ], [ %1614, %1610 ]
  %1629 = phi float [ %509, %1582 ], [ %1615, %1610 ]
  %1630 = phi float [ %510, %1582 ], [ %1616, %1610 ]
  %1631 = phi i32 [ 0, %1582 ], [ %1624, %1610 ]
  %1632 = icmp eq i32 %1631, 0
  %1633 = call float @dx.op.binary.f32(i32 35, float %1626, float %816)  ; FMax(a,b)
  %1634 = call float @dx.op.binary.f32(i32 36, float %1566, float %1633)  ; FMin(a,b)
  br i1 %819, label %1647, label %1635, !dx.controlflow.hints !61

; <label>:1635                                    ; preds = %1625
  %1636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1637 = extractvalue %dx.types.CBufRet.f32 %1636, 3
  %1638 = extractvalue %dx.types.CBufRet.f32 %1636, 2
  %1639 = fmul fast float %1637, %1485
  %1640 = fdiv fast float %1639, %1485
  %1641 = fadd fast float %1640, 1.000000e+00
  %1642 = call float @dx.op.unary.f32(i32 23, float %1641)  ; Log(value)
  %1643 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1642)  ; FMin(a,b)
  %1644 = fmul fast float %1638, %1485
  %1645 = fmul fast float %1644, %1643
  %1646 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1645)  ; FMin(a,b)
  br label %1647

; <label>:1647                                    ; preds = %1635, %1625
  %1648 = phi float [ %1646, %1635 ], [ 0x47EFFFFFE0000000, %1625 ]
  br i1 %834, label %1704, label %1649, !dx.controlflow.hints !62

; <label>:1649                                    ; preds = %1647
  %1650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1651 = extractvalue %dx.types.CBufRet.f32 %1650, 0
  %1652 = extractvalue %dx.types.CBufRet.f32 %1650, 1
  %1653 = extractvalue %dx.types.CBufRet.f32 %1650, 2
  %1654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1655 = extractvalue %dx.types.CBufRet.f32 %1654, 0
  %1656 = extractvalue %dx.types.CBufRet.f32 %1654, 1
  %1657 = extractvalue %dx.types.CBufRet.f32 %1654, 2
  %1658 = fsub fast float %1489, %1655
  %1659 = fsub fast float %1491, %1656
  %1660 = fsub fast float %1493, %1657
  %1661 = fmul fast float %1658, %1651
  %1662 = fmul fast float %1659, %1652
  %1663 = fmul fast float %1660, %1653
  %1664 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1665 = extractvalue %dx.types.CBufRet.i32 %1664, 3
  %1666 = icmp eq i32 %1665, 0
  br i1 %1666, label %1670, label %1667, !dx.controlflow.hints !63

; <label>:1667                                    ; preds = %1649
  %1668 = call float @dx.op.unary.f32(i32 22, float %1661)  ; Frc(value)
  %1669 = call float @dx.op.unary.f32(i32 22, float %1662)  ; Frc(value)
  br label %1670

; <label>:1670                                    ; preds = %1667, %1649
  %1671 = phi float [ %1668, %1667 ], [ %1661, %1649 ]
  %1672 = phi float [ %1669, %1667 ], [ %1662, %1649 ]
  %1673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %1671, float %1672, float %1663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1674 = extractvalue %dx.types.ResRet.f32 %1673, 0
  %1675 = fmul fast float %1674, 2.000000e+00
  %1676 = fadd fast float %1675, -1.000000e+00
  %1677 = extractvalue %dx.types.CBufRet.f32 %1650, 3
  %1678 = fmul fast float %1676, %1677
  %1679 = fcmp fast olt float %1678, 0.000000e+00
  %1680 = fcmp fast oge float %1663, 0.000000e+00
  %1681 = fcmp fast ole float %1663, 1.000000e+00
  br i1 %1666, label %1684, label %1682, !dx.controlflow.hints !64

; <label>:1682                                    ; preds = %1670
  %1683 = and i1 %1680, %1681
  br label %1694

; <label>:1684                                    ; preds = %1670
  %1685 = fcmp fast oge float %1661, 0.000000e+00
  %1686 = fcmp fast oge float %1662, 0.000000e+00
  %1687 = and i1 %1685, %1686
  %1688 = and i1 %1680, %1687
  %1689 = fcmp fast ole float %1661, 1.000000e+00
  %1690 = fcmp fast ole float %1662, 1.000000e+00
  %1691 = and i1 %1689, %1690
  %1692 = and i1 %1681, %1691
  %1693 = and i1 %1688, %1692
  br label %1694

; <label>:1694                                    ; preds = %1684, %1682
  %1695 = phi i1 [ %1683, %1682 ], [ %1693, %1684 ]
  %1696 = and i1 %1679, %1695
  %1697 = call float @dx.op.unary.f32(i32 6, float %1678)  ; FAbs(value)
  %1698 = extractvalue %dx.types.CBufRet.f32 %815, 1
  %1699 = extractvalue %dx.types.CBufRet.f32 %815, 0
  %1700 = call float @dx.op.binary.f32(i32 35, float %1697, float %1699)  ; FMax(a,b)
  %1701 = select i1 %1696, float %1698, float %1700
  %1702 = zext i1 %1696 to i32
  %1703 = call float @dx.op.binary.f32(i32 36, float %1634, float %1701)  ; FMin(a,b)
  br label %1704

; <label>:1704                                    ; preds = %1694, %1647
  %1705 = phi float [ %1703, %1694 ], [ %1634, %1647 ]
  %1706 = phi i32 [ %1702, %1694 ], [ 0, %1647 ]
  %1707 = icmp eq i32 %1567, 0
  br i1 %1707, label %1781, label %1708, !dx.controlflow.hints !65

; <label>:1708                                    ; preds = %1704
  %1709 = fmul fast float %893, %1485
  %1710 = call float @dx.op.unary.f32(i32 23, float %1709)  ; Log(value)
  %1711 = fmul fast float %1710, 0x3FE62E4300000000
  %1712 = call float @dx.op.binary.f32(i32 35, float %1711, float 1.000000e+00)  ; FMax(a,b)
  %1713 = fmul fast float %1712, %1648
  %1714 = call float @dx.op.binary.f32(i32 36, float %1713, float %1705)  ; FMin(a,b)
  %1715 = call float @dx.op.binary.f32(i32 35, float %1714, float 0.000000e+00)  ; FMax(a,b)
  %1716 = fcmp fast ogt float %1715, 0x3F1A36E2E0000000
  %1717 = fadd fast float %1486, %1489
  %1718 = fadd fast float %1487, %1491
  %1719 = select i1 %1716, float %1717, float %1489
  %1720 = select i1 %1716, float %1718, float %1491
  %1721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1722 = extractvalue %dx.types.CBufRet.f32 %1721, 0
  %1723 = extractvalue %dx.types.CBufRet.f32 %1721, 1
  %1724 = fsub fast float %1719, %1722
  %1725 = fsub fast float %1720, %1723
  %1726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %1727 = extractvalue %dx.types.CBufRet.f32 %1726, 0
  %1728 = extractvalue %dx.types.CBufRet.f32 %1726, 1
  %1729 = fmul fast float %1724, %1727
  %1730 = fmul fast float %1725, %1728
  %1731 = fsub fast float 1.000000e+00, %1730
  %1732 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1733 = extractvalue %dx.types.CBufRet.i32 %1732, 3
  %1734 = icmp eq i32 %1733, 0
  br i1 %1734, label %1741, label %1735, !dx.controlflow.hints !52

; <label>:1735                                    ; preds = %1708
  %1736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %1729, float %1731, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1737 = extractvalue %dx.types.ResRet.f32 %1736, 0
  %1738 = extractvalue %dx.types.ResRet.f32 %1736, 1
  %1739 = extractvalue %dx.types.ResRet.f32 %1736, 2
  %1740 = extractvalue %dx.types.ResRet.f32 %1736, 3
  br label %1747

; <label>:1741                                    ; preds = %1708
  %1742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %20, float %1729, float %1731, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1743 = extractvalue %dx.types.ResRet.f32 %1742, 0
  %1744 = extractvalue %dx.types.ResRet.f32 %1742, 1
  %1745 = extractvalue %dx.types.ResRet.f32 %1742, 2
  %1746 = extractvalue %dx.types.ResRet.f32 %1742, 3
  br label %1747

; <label>:1747                                    ; preds = %1741, %1735
  %1748 = phi float [ %1737, %1735 ], [ %1743, %1741 ]
  %1749 = phi float [ %1738, %1735 ], [ %1744, %1741 ]
  %1750 = phi float [ %1739, %1735 ], [ %1745, %1741 ]
  %1751 = phi float [ %1740, %1735 ], [ %1746, %1741 ]
  %1752 = extractvalue %dx.types.CBufRet.f32 %1726, 3
  %1753 = fmul fast float %1752, %1749
  %1754 = fmul fast float %1753, %1748
  %1755 = fsub fast float %1753, %1754
  %1756 = fcmp fast ole float %1755, 0.000000e+00
  %1757 = extractvalue %dx.types.CBufRet.f32 %1721, 2
  %1758 = fadd fast float %1754, %1757
  %1759 = fmul fast float %1752, %1750
  %1760 = fadd fast float %1759, %1757
  %1761 = fdiv fast float 1.000000e+00, %1755
  %1762 = select i1 %1756, float 1.000000e+06, float %1761
  %1763 = fsub fast float %1493, %1758
  %1764 = fmul fast float %1762, %1763
  %1765 = call float @dx.op.unary.f32(i32 7, float %1764)  ; Saturate(value)
  %1766 = extractvalue %dx.types.CBufRet.f32 %1726, 2
  %1767 = fmul fast float %1766, %1765
  %1768 = fsub fast float %1766, %1767
  %1769 = fcmp fast olt float %1493, %1760
  %1770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1771 = extractvalue %dx.types.CBufRet.f32 %1770, 3
  %1772 = fmul fast float %1771, 3.000000e+00
  %1773 = select i1 %1769, float %1772, float 3.000000e+00
  %1774 = fmul fast float %1768, %1773
  %1775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1776 = extractvalue %dx.types.CBufRet.f32 %1775, 2
  %1777 = fmul fast float %1485, 0x3FD5555560000000
  %1778 = fmul fast float %1777, %1751
  %1779 = fmul fast float %1778, %1776
  %1780 = fmul fast float %1779, %1774
  br label %1781

; <label>:1781                                    ; preds = %1747, %1704
  %1782 = phi float [ %1780, %1747 ], [ 0.000000e+00, %1704 ]
  br i1 %819, label %1831, label %1783, !dx.controlflow.hints !67

; <label>:1783                                    ; preds = %1781
  %1784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1785 = extractvalue %dx.types.CBufRet.f32 %1784, 0
  %1786 = fsub fast float %1785, %1493
  %1787 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1490, float %1492, float %1786)  ; Dot3(ax,ay,az,bx,by,bz)
  %1788 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1452, float %1453, float %1454)  ; Dot3(ax,ay,az,bx,by,bz)
  %1789 = fdiv fast float 1.000000e+00, %1788
  %1790 = fmul fast float %1789, %1787
  %1791 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1790)  ; FMax(a,b)
  %1792 = fcmp fast olt float %1454, 0.000000e+00
  %1793 = call float @dx.op.binary.f32(i32 36, float %1485, float %1791)  ; FMin(a,b)
  br i1 %1792, label %1795, label %1794, !dx.controlflow.hints !68

; <label>:1794                                    ; preds = %1783
  br label %1795

; <label>:1795                                    ; preds = %1794, %1783
  %1796 = phi float [ 0.000000e+00, %1794 ], [ %1793, %1783 ]
  %1797 = phi float [ %1793, %1794 ], [ %1485, %1783 ]
  %1798 = phi float [ %1793, %1794 ], [ 0.000000e+00, %1783 ]
  %1799 = phi float [ %1485, %1794 ], [ %1793, %1783 ]
  %1800 = fsub fast float %1797, %1796
  %1801 = extractvalue %dx.types.CBufRet.f32 %1784, 1
  %1802 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1801)  ; FMin(a,b)
  %1803 = fsub fast float %1493, %1785
  %1804 = fmul fast float %1802, 0x3FF7154760000000
  %1805 = fmul fast float %1804, %1803
  %1806 = call float @dx.op.unary.f32(i32 21, float %1805)  ; Exp(value)
  %1807 = fmul fast float %1454, 0x3FF7154760000000
  %1808 = fmul fast float %1807, %1799
  %1809 = fmul fast float %1808, %1802
  %1810 = call float @dx.op.unary.f32(i32 21, float %1809)  ; Exp(value)
  %1811 = fmul fast float %1807, %1798
  %1812 = fmul fast float %1811, %1802
  %1813 = call float @dx.op.unary.f32(i32 21, float %1812)  ; Exp(value)
  %1814 = fsub fast float %1810, %1813
  %1815 = fmul fast float %1814, %1806
  %1816 = fmul fast float %1802, %1454
  %1817 = fdiv fast float %1815, %1816
  %1818 = fadd fast float %1800, %1817
  %1819 = call float @dx.op.unary.f32(i32 6, float %1454)  ; FAbs(value)
  %1820 = fcmp fast olt float %1819, 0x3F0FFB4800000000
  %1821 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1803)  ; FMax(a,b)
  %1822 = fmul fast float %1821, 0x3FF7154760000000
  %1823 = fmul fast float %1822, %1801
  %1824 = call float @dx.op.unary.f32(i32 21, float %1823)  ; Exp(value)
  %1825 = fmul fast float %1824, %1485
  %1826 = select i1 %1820, float %1825, float %1818
  %1827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1828 = extractvalue %dx.types.CBufRet.f32 %1827, 1
  %1829 = fmul fast float %1826, %1828
  %1830 = fadd fast float %1829, %1782
  br label %1831

; <label>:1831                                    ; preds = %1795, %1781
  %1832 = phi float [ %1830, %1795 ], [ %1782, %1781 ]
  %1833 = icmp eq i32 %1706, 0
  br i1 %1833, label %2014, label %1834, !dx.controlflow.hints !69

; <label>:1834                                    ; preds = %1831
  %1835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1836 = extractvalue %dx.types.CBufRet.f32 %1835, 3
  %1837 = fmul fast float %1836, %1485
  %1838 = fcmp fast oeq float %1837, 0.000000e+00
  br i1 %1838, label %1853, label %1839, !dx.controlflow.hints !70

; <label>:1839                                    ; preds = %1834
  %1840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.f32 %1840, 3
  %1842 = fmul fast float %1841, %1837
  %1843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1844 = extractvalue %dx.types.CBufRet.f32 %1843, 0
  %1845 = extractvalue %dx.types.CBufRet.f32 %1843, 1
  %1846 = extractvalue %dx.types.CBufRet.f32 %1843, 2
  %1847 = fmul fast float %1844, %1842
  %1848 = fmul fast float %1845, %1842
  %1849 = fmul fast float %1846, %1842
  %1850 = call float @dx.op.unary.f32(i32 23, float %1847)  ; Log(value)
  %1851 = call float @dx.op.unary.f32(i32 23, float %1848)  ; Log(value)
  %1852 = call float @dx.op.unary.f32(i32 23, float %1849)  ; Log(value)
  br label %1853

; <label>:1853                                    ; preds = %1839, %1834
  %1854 = phi float [ %1850, %1839 ], [ 0.000000e+00, %1834 ]
  %1855 = phi float [ %1851, %1839 ], [ 0.000000e+00, %1834 ]
  %1856 = phi float [ %1852, %1839 ], [ 0.000000e+00, %1834 ]
  %1857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1858 = extractvalue %dx.types.CBufRet.f32 %1857, 0
  %1859 = extractvalue %dx.types.CBufRet.f32 %1857, 1
  %1860 = extractvalue %dx.types.CBufRet.f32 %1857, 2
  %1861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1862 = extractvalue %dx.types.CBufRet.f32 %1861, 0
  %1863 = extractvalue %dx.types.CBufRet.f32 %1861, 1
  %1864 = extractvalue %dx.types.CBufRet.f32 %1861, 2
  %1865 = fsub fast float %1489, %1862
  %1866 = fsub fast float %1491, %1863
  %1867 = fsub fast float %1493, %1864
  %1868 = fmul fast float %1865, %1858
  %1869 = fmul fast float %1866, %1859
  %1870 = fmul fast float %1867, %1860
  %1871 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1872 = extractvalue %dx.types.CBufRet.i32 %1871, 0
  %1873 = extractvalue %dx.types.CBufRet.i32 %1871, 1
  %1874 = uitofp i32 %1872 to float
  %1875 = uitofp i32 %1873 to float
  %1876 = fmul fast float %1868, %1874
  %1877 = fmul fast float %1869, %1875
  %1878 = fadd fast float %1876, 5.000000e-01
  %1879 = fadd fast float %1877, 5.000000e-01
  %1880 = call float @dx.op.unary.f32(i32 22, float %1878)  ; Frc(value)
  %1881 = call float @dx.op.unary.f32(i32 22, float %1879)  ; Frc(value)
  %1882 = call float @dx.op.unary.f32(i32 27, float %1878)  ; Round_ni(value)
  %1883 = call float @dx.op.unary.f32(i32 27, float %1879)  ; Round_ni(value)
  %1884 = fadd fast float %1882, 1.000000e+00
  %1885 = fadd fast float %1883, 1.000000e+00
  %1886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1887 = extractvalue %dx.types.CBufRet.f32 %1886, 0
  %1888 = extractvalue %dx.types.CBufRet.f32 %1886, 1
  %1889 = fmul fast float %1887, %1884
  %1890 = fmul fast float %1888, %1885
  %1891 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %19, float %1889, float %1890, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1892 = extractvalue %dx.types.ResRet.f32 %1891, 0
  %1893 = extractvalue %dx.types.ResRet.f32 %1891, 1
  %1894 = extractvalue %dx.types.ResRet.f32 %1891, 2
  %1895 = extractvalue %dx.types.ResRet.f32 %1891, 3
  %1896 = extractvalue %dx.types.CBufRet.i32 %1871, 2
  %1897 = extractvalue %dx.types.CBufRet.f32 %1886, 2
  %1898 = uitofp i32 %1896 to float
  %1899 = fadd fast float %1898, -1.000000e+00
  %1900 = fmul fast float %1899, %1892
  %1901 = fmul fast float %1899, %1893
  %1902 = fmul fast float %1899, %1894
  %1903 = fmul fast float %1899, %1895
  %1904 = fadd fast float %1900, 5.000000e-01
  %1905 = fadd fast float %1901, 5.000000e-01
  %1906 = fadd fast float %1902, 5.000000e-01
  %1907 = fadd fast float %1903, 5.000000e-01
  %1908 = fptoui float %1904 to i32
  %1909 = fptoui float %1905 to i32
  %1910 = fptoui float %1906 to i32
  %1911 = fptoui float %1907 to i32
  %1912 = uitofp i32 %1908 to float
  %1913 = uitofp i32 %1909 to float
  %1914 = uitofp i32 %1910 to float
  %1915 = uitofp i32 %1911 to float
  %1916 = fadd fast float %1912, 5.000000e-01
  %1917 = fadd fast float %1913, 5.000000e-01
  %1918 = fadd fast float %1914, 5.000000e-01
  %1919 = fadd fast float %1915, 5.000000e-01
  %1920 = fmul fast float %1916, %1897
  %1921 = fmul fast float %1917, %1897
  %1922 = fmul fast float %1918, %1897
  %1923 = fmul fast float %1919, %1897
  %1924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1920, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1925 = extractvalue %dx.types.ResRet.f32 %1924, 0
  %1926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1921, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1927 = extractvalue %dx.types.ResRet.f32 %1926, 0
  %1928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1922, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1929 = extractvalue %dx.types.ResRet.f32 %1928, 0
  %1930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1923, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1931 = extractvalue %dx.types.ResRet.f32 %1930, 0
  %1932 = fsub fast float %1929, %1931
  %1933 = fmul fast float %1932, %1880
  %1934 = fadd fast float %1933, %1931
  %1935 = fsub fast float %1927, %1925
  %1936 = fmul fast float %1935, %1880
  %1937 = fadd fast float %1936, %1925
  %1938 = fsub fast float %1937, %1934
  %1939 = fmul fast float %1938, %1881
  %1940 = fadd fast float %1939, %1934
  %1941 = fcmp fast ogt float %1940, 0.000000e+00
  br i1 %1941, label %1942, label %2010, !dx.controlflow.hints !71

; <label>:1942                                    ; preds = %1853
  %1943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1944 = extractvalue %dx.types.CBufRet.f32 %1943, 0
  %1945 = extractvalue %dx.types.CBufRet.f32 %1943, 1
  %1946 = extractvalue %dx.types.CBufRet.f32 %1943, 2
  %1947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1948 = extractvalue %dx.types.CBufRet.f32 %1947, 0
  %1949 = extractvalue %dx.types.CBufRet.f32 %1947, 1
  %1950 = extractvalue %dx.types.CBufRet.f32 %1947, 2
  %1951 = fmul fast float %1866, %1858
  %1952 = fmul fast float %1867, %1858
  %1953 = fadd fast float %1868, %1948
  %1954 = fadd fast float %1951, %1949
  %1955 = fadd fast float %1952, %1950
  %1956 = fmul fast float %1953, %1944
  %1957 = fmul fast float %1954, %1944
  %1958 = fmul fast float %1955, %1944
  %1959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1956, float %1957, float %1958, float undef, i32 0, i32 0, i32 0, float %1854)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1960 = extractvalue %dx.types.ResRet.f32 %1959, 0
  %1961 = fmul fast float %1953, %1945
  %1962 = fmul fast float %1954, %1945
  %1963 = fmul fast float %1955, %1945
  %1964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1961, float %1962, float %1963, float undef, i32 0, i32 0, i32 0, float %1855)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1965 = extractvalue %dx.types.ResRet.f32 %1964, 1
  %1966 = fmul fast float %1953, %1946
  %1967 = fmul fast float %1954, %1946
  %1968 = fmul fast float %1955, %1946
  %1969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1966, float %1967, float %1968, float undef, i32 0, i32 0, i32 0, float %1856)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1970 = extractvalue %dx.types.ResRet.f32 %1969, 2
  %1971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1972 = extractvalue %dx.types.CBufRet.f32 %1971, 1
  %1973 = fmul fast float %1965, %1960
  %1974 = fmul fast float %1973, %1970
  %1975 = call float @dx.op.unary.f32(i32 23, float %1974)  ; Log(value)
  %1976 = fmul fast float %1975, %1972
  %1977 = call float @dx.op.unary.f32(i32 21, float %1976)  ; Exp(value)
  %1978 = extractvalue %dx.types.CBufRet.f32 %1971, 2
  %1979 = fmul fast float %1940, %1940
  %1980 = fmul fast float %1979, %1977
  %1981 = fmul fast float %1980, %1978
  %1982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1983 = extractvalue %dx.types.CBufRet.f32 %1982, 3
  %1984 = fmul fast float %1983, %1981
  %1985 = bitcast float %1984 to i32
  %1986 = sitofp i32 %1985 to float
  %1987 = fptosi float %1986 to i32
  %1988 = bitcast i32 %1987 to float
  %1989 = fsub fast float 1.000000e+00, %1981
  %1990 = bitcast float %1989 to i32
  %1991 = sitofp i32 %1990 to float
  %1992 = fptosi float %1991 to i32
  %1993 = bitcast i32 %1992 to float
  %1994 = fadd fast float %1988, %1993
  %1995 = bitcast float %1994 to i32
  %1996 = sub nsw i32 2129859010, %1995
  %1997 = bitcast i32 %1996 to float
  %1998 = fmul fast float %1997, %1988
  %1999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2000 = extractvalue %dx.types.CBufRet.f32 %1999, 2
  %2001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %2002 = extractvalue %dx.types.CBufRet.f32 %2001, 0
  %2003 = fmul fast float %1998, %2002
  %2004 = fadd fast float %2003, 1.000000e+00
  %2005 = bitcast float %2004 to i32
  %2006 = sub nsw i32 2129859010, %2005
  %2007 = bitcast i32 %2006 to float
  %2008 = fmul fast float %1998, %2000
  %2009 = fmul fast float %2008, %2007
  br label %2010

; <label>:2010                                    ; preds = %1942, %1853
  %2011 = phi float [ %2009, %1942 ], [ %1940, %1853 ]
  %2012 = fmul fast float %2011, %1485
  %2013 = fadd fast float %2012, %1832
  br label %2014

; <label>:2014                                    ; preds = %2010, %1831
  %2015 = phi float [ %2013, %2010 ], [ %1832, %1831 ]
  br i1 %1632, label %2141, label %2016, !dx.controlflow.hints !72

; <label>:2016                                    ; preds = %2014
  %2017 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2018 = extractvalue %dx.types.CBufRet.i32 %2017, 0
  %2019 = icmp ne i32 %2018, 0
  %2020 = zext i1 %2019 to i32
  %2021 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2022 = extractvalue %dx.types.CBufRet.i32 %2021, 0
  %2023 = icmp eq i32 %2022, 0
  br i1 %2023, label %2057, label %2024

; <label>:2024                                    ; preds = %2016
  br label %2025

; <label>:2025                                    ; preds = %2052, %2024
  %2026 = phi i32 [ %2053, %2052 ], [ 0, %2024 ]
  %2027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2026, i32 0)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.f32 %2027, 0
  %2029 = extractvalue %dx.types.ResRet.f32 %2027, 1
  %2030 = extractvalue %dx.types.ResRet.f32 %2027, 2
  %2031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2026, i32 16)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.f32 %2031, 0
  %2033 = extractvalue %dx.types.ResRet.f32 %2031, 1
  %2034 = extractvalue %dx.types.ResRet.f32 %2031, 2
  %2035 = fsub fast float %2028, %2032
  %2036 = fsub fast float %2029, %2033
  %2037 = fsub fast float %2030, %2034
  %2038 = fadd fast float %2032, %2028
  %2039 = fadd fast float %2033, %2029
  %2040 = fadd fast float %2034, %2030
  %2041 = fcmp fast olt float %1489, %2035
  %2042 = fcmp fast olt float %1491, %2036
  %2043 = fcmp fast olt float %1493, %2037
  %2044 = or i1 %2041, %2042
  %2045 = or i1 %2043, %2044
  %2046 = fcmp fast ogt float %1489, %2038
  %2047 = fcmp fast ogt float %1491, %2039
  %2048 = fcmp fast ogt float %1493, %2040
  %2049 = or i1 %2046, %2047
  %2050 = or i1 %2048, %2049
  %2051 = or i1 %2045, %2050
  br i1 %2051, label %2052, label %2055, !dx.controlflow.hints !73

; <label>:2052                                    ; preds = %2025
  %2053 = add nuw i32 %2026, 1
  %2054 = icmp ult i32 %2053, %2022
  br i1 %2054, label %2025, label %2055

; <label>:2055                                    ; preds = %2052, %2025
  %2056 = phi i32 [ 255, %2052 ], [ %2026, %2025 ]
  br label %2057

; <label>:2057                                    ; preds = %2055, %2016
  %2058 = phi i32 [ 255, %2016 ], [ %2056, %2055 ]
  %2059 = icmp eq i32 %2058, 255
  br i1 %2059, label %2065, label %2060, !dx.controlflow.hints !74

; <label>:2060                                    ; preds = %2057
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2058, i32 156)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = icmp ne i32 %2062, 0
  %2064 = zext i1 %2063 to i32
  br label %2065

; <label>:2065                                    ; preds = %2060, %2057
  %2066 = phi i32 [ %2064, %2060 ], [ %2020, %2057 ]
  %2067 = icmp eq i32 %2066, 0
  br i1 %2067, label %2068, label %2137, !dx.controlflow.hints !75

; <label>:2068                                    ; preds = %2065
  %2069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %2070 = extractvalue %dx.types.CBufRet.f32 %2069, 3
  %2071 = extractvalue %dx.types.CBufRet.f32 %724, 0
  %2072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %2073 = extractvalue %dx.types.CBufRet.f32 %2072, 2
  %2074 = extractvalue %dx.types.CBufRet.f32 %2072, 3
  br i1 %2059, label %2085, label %2075, !dx.controlflow.hints !76

; <label>:2075                                    ; preds = %2068
  %2076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2058, i32 60)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.f32 %2076, 0
  %2078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2058, i32 64)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.f32 %2078, 0
  %2080 = extractvalue %dx.types.ResRet.f32 %2078, 1
  %2081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2058, i32 72)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.f32 %2081, 0
  %2083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %2058, i32 96)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.f32 %2083, 0
  br label %2085

; <label>:2085                                    ; preds = %2075, %2068
  %2086 = phi float [ %2077, %2075 ], [ %727, %2068 ]
  %2087 = phi float [ %2082, %2075 ], [ %725, %2068 ]
  %2088 = phi float [ %2084, %2075 ], [ %2071, %2068 ]
  %2089 = phi float [ %2079, %2075 ], [ %2073, %2068 ]
  %2090 = phi float [ %2080, %2075 ], [ %2074, %2068 ]
  %2091 = call float @dx.op.binary.f32(i32 35, float %1627, float 0.000000e+00)  ; FMax(a,b)
  %2092 = call float @dx.op.binary.f32(i32 36, float %2091, float 1.000000e+00)  ; FMin(a,b)
  %2093 = call float @dx.op.unary.f32(i32 24, float %2092)  ; Sqrt(value)
  %2094 = call float @dx.op.binary.f32(i32 35, float %1630, float 0x3F847AE140000000)  ; FMax(a,b)
  %2095 = fsub fast float %1628, %1493
  %2096 = fsub fast float %1493, %1629
  %2097 = call float @dx.op.binary.f32(i32 36, float %2096, float %2095)  ; FMin(a,b)
  %2098 = fdiv fast float %2097, %2094
  %2099 = call float @dx.op.unary.f32(i32 7, float %2098)  ; Saturate(value)
  %2100 = fsub fast float %1493, %2087
  %2101 = fdiv fast float %2100, %2086
  %2102 = call float @dx.op.unary.f32(i32 7, float %2101)  ; Saturate(value)
  %2103 = fsub fast float 1.000000e+00, %2102
  %2104 = fmul float %2099, %2103
  %2105 = fmul float %2104, %2104
  %2106 = fmul fast float %2093, %2070
  %2107 = fmul fast float %2106, %2105
  %2108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %2109 = extractvalue %dx.types.CBufRet.f32 %2108, 2
  %2110 = extractvalue %dx.types.CBufRet.f32 %2108, 1
  %2111 = fsub fast float %2107, %2110
  %2112 = fsub fast float %2109, %2110
  %2113 = fdiv fast float %2111, %2112
  %2114 = call float @dx.op.unary.f32(i32 7, float %2113)  ; Saturate(value)
  %2115 = fmul fast float %2114, %2088
  %2116 = fcmp fast ogt float %2090, 0.000000e+00
  br i1 %2116, label %2117, label %2137, !dx.controlflow.hints !77

; <label>:2117                                    ; preds = %2085
  %2118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2119 = extractvalue %dx.types.CBufRet.f32 %2118, 0
  %2120 = extractvalue %dx.types.CBufRet.f32 %2118, 1
  %2121 = extractvalue %dx.types.CBufRet.f32 %2118, 2
  %2122 = fsub fast float %1489, %2119
  %2123 = fsub fast float %1491, %2120
  %2124 = fsub fast float %1493, %2121
  %2125 = fmul fast float %2122, %2122
  %2126 = fmul fast float %2123, %2123
  %2127 = fadd fast float %2125, %2126
  %2128 = fmul fast float %2124, %2124
  %2129 = fadd fast float %2127, %2128
  %2130 = call float @dx.op.unary.f32(i32 24, float %2129)  ; Sqrt(value)
  %2131 = fsub fast float %2130, %2089
  %2132 = fsub fast float %2090, %2089
  %2133 = fdiv fast float %2131, %2132
  %2134 = call float @dx.op.unary.f32(i32 7, float %2133)  ; Saturate(value)
  %2135 = fmul fast float %2134, %2134
  %2136 = fmul fast float %2135, %2115
  br label %2137

; <label>:2137                                    ; preds = %2117, %2085, %2065
  %2138 = phi float [ 0.000000e+00, %2065 ], [ %2136, %2117 ], [ %2115, %2085 ]
  %2139 = fmul fast float %2138, %1485
  %2140 = fadd fast float %2139, %2015
  br label %2141

; <label>:2141                                    ; preds = %2137, %2014
  %2142 = phi float [ %2140, %2137 ], [ %2015, %2014 ]
  %2143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2144 = extractvalue %dx.types.CBufRet.f32 %2143, 3
  %2145 = fmul fast float %2142, 0xBFF7154760000000
  %2146 = fmul fast float %2145, %2144
  %2147 = call float @dx.op.unary.f32(i32 21, float %2146)  ; Exp(value)
  %2148 = call float @dx.op.unary.f32(i32 7, float %2147)  ; Saturate(value)
  %2149 = fmul fast float %2148, %1478
  %2150 = fmul fast float %2148, %1479
  %2151 = fmul fast float %2148, %1480
  %2152 = fadd fast float %2149, %209
  %2153 = fadd fast float %2150, %210
  %2154 = fadd fast float %2151, %211
  %2155 = fsub fast float 1.000000e+00, %1448
  %2156 = fmul fast float %1440, %516
  %2157 = fmul fast float %2156, %2155
  %2158 = fmul fast float %2157, %2152
  %2159 = fmul fast float %1441, %516
  %2160 = fmul fast float %2159, %2155
  %2161 = fmul fast float %2160, %2153
  %2162 = fmul fast float %1442, %516
  %2163 = fmul fast float %2162, %2155
  %2164 = fmul fast float %2163, %2154
  %2165 = fadd fast float %2158, %517
  %2166 = fadd fast float %2161, %518
  %2167 = fadd fast float %2164, %519
  %2168 = fdiv fast float %1425, %903
  %2169 = fadd fast float %903, %523
  %2170 = fmul fast float %523, %523
  %2171 = fmul fast float %2169, %2169
  %2172 = fsub fast float %2170, %2171
  %2173 = fmul fast float %2172, -5.000000e-01
  %2174 = fmul fast float %2173, %2168
  %2175 = fadd fast float %2174, %515
  %2176 = fadd fast float %1425, %526
  %2177 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2178 = extractvalue %dx.types.CBufRet.i32 %2177, 0
  %2179 = icmp eq i32 %2178, 0
  br i1 %2179, label %2206, label %2180, !dx.controlflow.hints !81

; <label>:2180                                    ; preds = %2141
  %2181 = icmp ne i32 %531, 0
  %2182 = zext i1 %2181 to i32
  %2183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2184 = extractvalue %dx.types.CBufRet.f32 %2183, 2
  %2185 = extractvalue %dx.types.CBufRet.f32 %2183, 0
  %2186 = fsub fast float %2169, %2185
  %2187 = fmul fast float %2186, %2184
  %2188 = call float @dx.op.unary.f32(i32 7, float %2187)  ; Saturate(value)
  %2189 = fadd fast float %2188, -5.000000e-01
  %2190 = fmul fast float %2189, 2.000000e+00
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 2
  %2193 = fcmp fast olt float %2190, %2192
  br i1 %2193, label %2194, label %2206, !dx.controlflow.hints !82

; <label>:2194                                    ; preds = %2180
  %2195 = fmul fast float %2190, %2190
  %2196 = fmul fast float %2155, %516
  %2197 = fmul fast float %2190, %2196
  %2198 = fmul fast float %2195, %2196
  %2199 = fmul fast float %2197, %2195
  %2200 = fmul fast float %2195, %2195
  %2201 = fmul fast float %2200, %2196
  %2202 = fadd fast float %2197, %527
  %2203 = fadd fast float %2198, %528
  %2204 = fadd fast float %2199, %529
  %2205 = fadd fast float %2201, %530
  br label %2206

; <label>:2206                                    ; preds = %2194, %2180, %2141
  %2207 = phi float [ %527, %2141 ], [ %2202, %2194 ], [ %527, %2180 ]
  %2208 = phi float [ %528, %2141 ], [ %2203, %2194 ], [ %528, %2180 ]
  %2209 = phi float [ %529, %2141 ], [ %2204, %2194 ], [ %529, %2180 ]
  %2210 = phi float [ %530, %2141 ], [ %2205, %2194 ], [ %530, %2180 ]
  %2211 = phi i32 [ %531, %2141 ], [ 1, %2194 ], [ %2182, %2180 ]
  %2212 = fmul fast float %1448, %516
  br label %2213

; <label>:2213                                    ; preds = %2206, %1443
  %2214 = phi float [ %1444, %1443 ], [ %2169, %2206 ]
  %2215 = phi float [ %507, %1443 ], [ %1627, %2206 ]
  %2216 = phi float [ %508, %1443 ], [ %1628, %2206 ]
  %2217 = phi float [ %509, %1443 ], [ %1629, %2206 ]
  %2218 = phi float [ %510, %1443 ], [ %1630, %2206 ]
  %2219 = phi float [ %515, %1443 ], [ %2175, %2206 ]
  %2220 = phi float [ %516, %1443 ], [ %2212, %2206 ]
  %2221 = phi float [ %517, %1443 ], [ %2165, %2206 ]
  %2222 = phi float [ %518, %1443 ], [ %2166, %2206 ]
  %2223 = phi float [ %519, %1443 ], [ %2167, %2206 ]
  %2224 = phi float [ %526, %1443 ], [ %2176, %2206 ]
  %2225 = phi float [ %527, %1443 ], [ %2207, %2206 ]
  %2226 = phi float [ %528, %1443 ], [ %2208, %2206 ]
  %2227 = phi float [ %529, %1443 ], [ %2209, %2206 ]
  %2228 = phi float [ %530, %1443 ], [ %2210, %2206 ]
  %2229 = phi i32 [ %531, %1443 ], [ %2211, %2206 ]
  %2230 = fmul fast float %903, %285
  %2231 = fmul fast float %903, %286
  %2232 = fmul fast float %903, %287
  %2233 = fadd fast float %2230, %520
  %2234 = fadd fast float %2231, %521
  %2235 = fadd fast float %2232, %522
  %2236 = fcmp fast olt float %2214, %484
  %2237 = extractvalue %dx.types.CBufRet.f32 %1429, 2
  %2238 = fcmp fast olt float %2237, %2220
  %2239 = and i1 %2236, %2238
  br i1 %2239, label %506, label %2240

; <label>:2240                                    ; preds = %2213
  br label %2241

; <label>:2241                                    ; preds = %2240, %460
  %2242 = phi float [ 0.000000e+00, %460 ], [ %2219, %2240 ]
  %2243 = phi float [ 1.000000e+00, %460 ], [ %2220, %2240 ]
  %2244 = phi float [ 0.000000e+00, %460 ], [ %2221, %2240 ]
  %2245 = phi float [ 0.000000e+00, %460 ], [ %2222, %2240 ]
  %2246 = phi float [ 0.000000e+00, %460 ], [ %2223, %2240 ]
  %2247 = phi float [ 0.000000e+00, %460 ], [ %2224, %2240 ]
  %2248 = phi float [ 0.000000e+00, %460 ], [ %2225, %2240 ]
  %2249 = phi float [ 0.000000e+00, %460 ], [ %2226, %2240 ]
  %2250 = phi float [ 0.000000e+00, %460 ], [ %2227, %2240 ]
  %2251 = phi float [ 0.000000e+00, %460 ], [ %2228, %2240 ]
  %2252 = phi i32 [ 0, %460 ], [ %2229, %2240 ]
  %2253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2254 = extractvalue %dx.types.CBufRet.i32 %2253, 0
  %2255 = icmp eq i32 %2254, 0
  br i1 %2255, label %2297, label %2256, !dx.controlflow.hints !83

; <label>:2256                                    ; preds = %2241
  %2257 = icmp eq i32 %2252, 0
  br i1 %2257, label %2296, label %2258, !dx.controlflow.hints !84

; <label>:2258                                    ; preds = %2256
  %2259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2260 = extractvalue %dx.types.CBufRet.i32 %2259, 2
  %2261 = icmp eq i32 %2260, 0
  br i1 %2261, label %2268, label %2262, !dx.controlflow.hints !85

; <label>:2262                                    ; preds = %2258
  %2263 = fsub fast float 1.000000e+00, %2243
  %2264 = fdiv fast float %2248, %2263
  %2265 = fdiv fast float %2249, %2263
  %2266 = fdiv fast float %2250, %2263
  %2267 = fdiv fast float %2251, %2263
  br label %2273

; <label>:2268                                    ; preds = %2258
  %2269 = fadd fast float %2248, %2243
  %2270 = fadd fast float %2249, %2243
  %2271 = fadd fast float %2250, %2243
  %2272 = fadd fast float %2251, %2243
  br label %2273

; <label>:2273                                    ; preds = %2268, %2262
  %2274 = phi float [ %2264, %2262 ], [ %2269, %2268 ]
  %2275 = phi float [ %2265, %2262 ], [ %2270, %2268 ]
  %2276 = phi float [ %2266, %2262 ], [ %2271, %2268 ]
  %2277 = phi float [ %2267, %2262 ], [ %2272, %2268 ]
  %2278 = call float @dx.op.binary.f32(i32 35, float %2274, float -1.000000e+00)  ; FMax(a,b)
  %2279 = call float @dx.op.binary.f32(i32 35, float %2275, float -1.000000e+00)  ; FMax(a,b)
  %2280 = call float @dx.op.binary.f32(i32 35, float %2276, float -1.000000e+00)  ; FMax(a,b)
  %2281 = call float @dx.op.binary.f32(i32 35, float %2277, float -1.000000e+00)  ; FMax(a,b)
  %2282 = call float @dx.op.binary.f32(i32 36, float %2278, float 1.000000e+00)  ; FMin(a,b)
  %2283 = call float @dx.op.binary.f32(i32 36, float %2279, float 1.000000e+00)  ; FMin(a,b)
  %2284 = call float @dx.op.binary.f32(i32 36, float %2280, float 1.000000e+00)  ; FMin(a,b)
  %2285 = call float @dx.op.binary.f32(i32 36, float %2281, float 1.000000e+00)  ; FMin(a,b)
  %2286 = fmul fast float %2282, 1.500000e+00
  %2287 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2284, float %2286)  ; FMad(a,b,c)
  %2288 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2283, float 0.000000e+00)  ; FMad(a,b,c)
  %2289 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2285, float %2288)  ; FMad(a,b,c)
  %2290 = fmul fast float %2282, 0x3FEBB67AE0000000
  %2291 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2284, float %2290)  ; FMad(a,b,c)
  %2292 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2283, float 0.000000e+00)  ; FMad(a,b,c)
  %2293 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2285, float %2292)  ; FMad(a,b,c)
  %2294 = fadd fast float %2287, 5.000000e-01
  %2295 = fadd fast float %2291, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %24, i32 %25, i32 0, float %2294, float %2289, float %2295, float %2293, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2297

; <label>:2296                                    ; preds = %2256
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %24, i32 %25, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2297

; <label>:2297                                    ; preds = %2296, %2273, %2241
  %2298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2299 = extractvalue %dx.types.CBufRet.f32 %2298, 2
  %2300 = fsub fast float %2243, %2299
  %2301 = fdiv fast float %2300, %2299
  %2302 = call float @dx.op.unary.f32(i32 7, float %2301)  ; Saturate(value)
  %2303 = fmul fast float %2302, 2.000000e+00
  %2304 = fsub fast float 3.000000e+00, %2303
  %2305 = fmul fast float %2302, %2302
  %2306 = fmul fast float %2305, %2243
  %2307 = fmul fast float %2306, %2304
  %2308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2309 = extractvalue %dx.types.CBufRet.f32 %2308, 0
  %2310 = extractvalue %dx.types.CBufRet.f32 %2308, 1
  %2311 = extractvalue %dx.types.CBufRet.f32 %2308, 2
  %2312 = call float @dx.op.dot3.f32(i32 55, float %285, float %286, float %287, float %2309, float %2310, float %2311)  ; Dot3(ax,ay,az,bx,by,bz)
  %2313 = fmul fast float %2312, %2242
  %2314 = fcmp fast ogt float %2247, 0.000000e+00
  %2315 = fdiv fast float 1.000000e+00, %2247
  %2316 = fmul fast float %2313, %2315
  %2317 = select i1 %2314, float %2316, float %296
  %2318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2319 = extractvalue %dx.types.CBufRet.f32 %2318, 0
  %2320 = extractvalue %dx.types.CBufRet.f32 %2318, 1
  %2321 = extractvalue %dx.types.CBufRet.f32 %2318, 2
  %2322 = fmul fast float %2319, %249
  %2323 = fmul fast float %2320, %249
  %2324 = fmul fast float %2321, %249
  %2325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2326 = extractvalue %dx.types.CBufRet.f32 %2325, 0
  %2327 = extractvalue %dx.types.CBufRet.f32 %2325, 1
  %2328 = extractvalue %dx.types.CBufRet.f32 %2325, 2
  %2329 = fmul fast float %2326, %250
  %2330 = fmul fast float %2327, %250
  %2331 = fmul fast float %2328, %250
  %2332 = fadd fast float %2329, %2322
  %2333 = fadd fast float %2330, %2323
  %2334 = fadd fast float %2331, %2324
  %2335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2336 = extractvalue %dx.types.CBufRet.f32 %2335, 0
  %2337 = extractvalue %dx.types.CBufRet.f32 %2335, 1
  %2338 = extractvalue %dx.types.CBufRet.f32 %2335, 2
  %2339 = fadd fast float %2332, %2336
  %2340 = fadd fast float %2333, %2337
  %2341 = fadd fast float %2334, %2338
  %2342 = fmul fast float %2339, %2317
  %2343 = fmul fast float %2340, %2317
  %2344 = fmul fast float %2341, %2317
  %2345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2346 = extractvalue %dx.types.CBufRet.f32 %2345, 0
  %2347 = extractvalue %dx.types.CBufRet.f32 %2345, 1
  %2348 = extractvalue %dx.types.CBufRet.f32 %2345, 2
  %2349 = extractvalue %dx.types.CBufRet.f32 %2345, 3
  %2350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2351 = extractvalue %dx.types.CBufRet.f32 %2350, 0
  %2352 = extractvalue %dx.types.CBufRet.f32 %2350, 1
  %2353 = extractvalue %dx.types.CBufRet.f32 %2350, 2
  %2354 = extractvalue %dx.types.CBufRet.f32 %2350, 3
  %2355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2356 = extractvalue %dx.types.CBufRet.f32 %2355, 0
  %2357 = extractvalue %dx.types.CBufRet.f32 %2355, 1
  %2358 = extractvalue %dx.types.CBufRet.f32 %2355, 2
  %2359 = extractvalue %dx.types.CBufRet.f32 %2355, 3
  %2360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2361 = extractvalue %dx.types.CBufRet.f32 %2360, 0
  %2362 = extractvalue %dx.types.CBufRet.f32 %2360, 1
  %2363 = extractvalue %dx.types.CBufRet.f32 %2360, 2
  %2364 = extractvalue %dx.types.CBufRet.f32 %2360, 3
  %2365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2366 = extractvalue %dx.types.CBufRet.f32 %2365, 3
  %2367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2368 = extractvalue %dx.types.CBufRet.f32 %2367, 3
  %2369 = extractvalue %dx.types.CBufRet.f32 %2367, 0
  %2370 = extractvalue %dx.types.CBufRet.f32 %2367, 1
  %2371 = extractvalue %dx.types.CBufRet.f32 %2367, 2
  %2372 = fcmp fast olt float %2371, -5.000000e-01
  %2373 = call float @dx.op.dot3.f32(i32 55, float %2342, float %2343, float %2344, float %2342, float %2343, float %2344)  ; Dot3(ax,ay,az,bx,by,bz)
  %2374 = call float @dx.op.unary.f32(i32 25, float %2373)  ; Rsqrt(value)
  %2375 = fmul fast float %2374, %2373
  %2376 = fmul fast float %2374, %2342
  %2377 = fmul fast float %2374, %2343
  %2378 = fmul fast float %2374, %2344
  %2379 = fadd fast float %2375, %2349
  %2380 = call float @dx.op.dot3.f32(i32 55, float %2376, float %2377, float %2378, float %2346, float %2347, float %2348)  ; Dot3(ax,ay,az,bx,by,bz)
  %2381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2382 = extractvalue %dx.types.CBufRet.i32 %2381, 1
  %2383 = and i32 %2382, 1
  %2384 = icmp ne i32 %2383, 0
  %2385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2386 = extractvalue %dx.types.CBufRet.f32 %2385, 2
  %2387 = fcmp fast ogt float %2386, 0.000000e+00
  %2388 = and i1 %2384, %2387
  br i1 %2388, label %2389, label %2795, !dx.controlflow.hints !86

; <label>:2389                                    ; preds = %2297
  %2390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2391 = extractvalue %dx.types.CBufRet.f32 %2390, 3
  %2392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2393 = extractvalue %dx.types.CBufRet.f32 %2392, 2
  %2394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2395 = extractvalue %dx.types.CBufRet.f32 %2394, 2
  %2396 = fsub fast float %2393, %2395
  %2397 = and i32 %2382, 2
  %2398 = extractvalue %dx.types.CBufRet.i32 %2381, 0
  %2399 = call i32 @dx.op.binary.i32(i32 40, i32 %2398, i32 3)  ; UMin(a,b)
  %2400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2401 = extractvalue %dx.types.CBufRet.f32 %2400, 0
  %2402 = extractvalue %dx.types.CBufRet.f32 %2400, 1
  %2403 = extractvalue %dx.types.CBufRet.f32 %2394, 0
  %2404 = extractvalue %dx.types.CBufRet.f32 %2394, 1
  %2405 = fsub fast float %2401, %2403
  %2406 = fsub fast float %2402, %2404
  %2407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2408 = extractvalue %dx.types.CBufRet.f32 %2407, 0
  %2409 = fcmp fast ogt float %2408, 0.000000e+00
  %2410 = fsub fast float -0.000000e+00, %2405
  %2411 = fsub fast float -0.000000e+00, %2406
  %2412 = call float @dx.op.dot2.f32(i32 54, float %2376, float %2377, float %2376, float %2377)  ; Dot2(ax,ay,bx,by)
  %2413 = call float @dx.op.dot2.f32(i32 54, float %2376, float %2377, float %2410, float %2411)  ; Dot2(ax,ay,bx,by)
  %2414 = fmul fast float %2413, 2.000000e+00
  %2415 = call float @dx.op.dot2.f32(i32 54, float %2410, float %2411, float %2410, float %2411)  ; Dot2(ax,ay,bx,by)
  %2416 = fmul fast float %2408, %2408
  %2417 = fsub fast float %2415, %2416
  %2418 = fmul fast float %2414, %2414
  %2419 = fmul fast float %2412, 4.000000e+00
  %2420 = fmul fast float %2419, %2417
  %2421 = fsub fast float %2418, %2420
  %2422 = fcmp fast ogt float %2421, 0.000000e+00
  br i1 %2422, label %2423, label %2438, !dx.controlflow.hints !87

; <label>:2423                                    ; preds = %2389
  %2424 = fcmp fast ogt float %2414, 0.000000e+00
  %2425 = call float @dx.op.unary.f32(i32 24, float %2421)  ; Sqrt(value)
  %2426 = fsub fast float -0.000000e+00, %2425
  %2427 = select i1 %2424, float %2425, float %2426
  %2428 = fadd fast float %2427, %2414
  %2429 = fmul float %2428, -5.000000e-01
  %2430 = fdiv fast float %2429, %2412
  %2431 = call float @dx.op.binary.f32(i32 35, float %2430, float 0.000000e+00)  ; FMax(a,b)
  %2432 = call float @dx.op.binary.f32(i32 36, float %2375, float %2431)  ; FMin(a,b)
  %2433 = fdiv fast float %2417, %2429
  %2434 = call float @dx.op.binary.f32(i32 35, float %2433, float 0.000000e+00)  ; FMax(a,b)
  %2435 = call float @dx.op.binary.f32(i32 36, float %2375, float %2434)  ; FMin(a,b)
  %2436 = call float @dx.op.binary.f32(i32 36, float %2432, float %2435)  ; FMin(a,b)
  %2437 = call float @dx.op.binary.f32(i32 35, float %2432, float %2435)  ; FMax(a,b)
  br label %2438

; <label>:2438                                    ; preds = %2423, %2389
  %2439 = phi float [ %2437, %2423 ], [ -1.000000e+00, %2389 ]
  %2440 = phi float [ %2436, %2423 ], [ -1.000000e+00, %2389 ]
  %2441 = phi i1 [ true, %2423 ], [ false, %2389 ]
  %2442 = and i1 %2409, %2441
  br i1 %2442, label %2443, label %2445, !dx.controlflow.hints !88

; <label>:2443                                    ; preds = %2438
  %2444 = fcmp fast oeq float %2440, %2439
  br i1 %2444, label %2748, label %2446, !dx.controlflow.hints !89

; <label>:2445                                    ; preds = %2438
  br i1 %2409, label %2748, label %2446, !dx.controlflow.hints !90

; <label>:2446                                    ; preds = %2445, %2443
  %2447 = phi float [ %2375, %2445 ], [ %2439, %2443 ]
  %2448 = phi float [ 0.000000e+00, %2445 ], [ %2440, %2443 ]
  %2449 = icmp ne i32 %2397, 0
  %2450 = fmul fast float %2447, %2378
  %2451 = fadd fast float %2450, %2391
  %2452 = fmul fast float %2451, %2447
  %2453 = select i1 %2449, float 0.000000e+00, float %2452
  %2454 = fcmp fast oeq float %2378, 0.000000e+00
  %2455 = fdiv fast float %2396, %2378
  %2456 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2455)  ; FMax(a,b)
  %2457 = select i1 %2454, float %2447, float %2456
  %2458 = call float @dx.op.binary.f32(i32 36, float %2447, float %2457)  ; FMin(a,b)
  %2459 = fcmp fast ogt float %2378, 0.000000e+00
  %2460 = fcmp fast olt float %2396, 0.000000e+00
  br i1 %2459, label %2461, label %2518, !dx.controlflow.hints !91

; <label>:2461                                    ; preds = %2446
  %2462 = icmp eq i32 %2397, 0
  br i1 %2460, label %2463, label %2507, !dx.controlflow.hints !92

; <label>:2463                                    ; preds = %2461
  %2464 = select i1 %2462, float %2447, float 0.000000e+00
  %2465 = fsub fast float -0.000000e+00, %2464
  %2466 = call float @dx.op.unary.f32(i32 6, float %2465)  ; FAbs(value)
  %2467 = fmul fast float %2464, %2378
  %2468 = fadd fast float %2467, %2391
  %2469 = fmul fast float %2466, %2468
  %2470 = fsub fast float %2453, %2469
  %2471 = fsub fast float %2447, %2466
  %2472 = select i1 %2462, float %2471, float 0.000000e+00
  %2473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2474 = extractvalue %dx.types.CBufRet.f32 %2473, 0
  %2475 = extractvalue %dx.types.CBufRet.f32 %2473, 1
  %2476 = extractvalue %dx.types.CBufRet.f32 %2473, 2
  %2477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2478 = extractvalue %dx.types.CBufRet.f32 %2477, 0
  %2479 = extractvalue %dx.types.CBufRet.f32 %2477, 1
  %2480 = extractvalue %dx.types.CBufRet.f32 %2477, 2
  %2481 = extractvalue %dx.types.CBufRet.f32 %2477, 3
  %2482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2483 = extractvalue %dx.types.CBufRet.f32 %2482, 3
  %2484 = call float @dx.op.binary.f32(i32 36, float %2470, float %2483)  ; FMin(a,b)
  %2485 = fmul fast float %2481, %2472
  %2486 = call float @dx.op.unary.f32(i32 7, float %2485)  ; Saturate(value)
  %2487 = fsub fast float %2478, %2474
  %2488 = fsub fast float %2479, %2475
  %2489 = fsub fast float %2480, %2476
  %2490 = fmul fast float %2486, %2487
  %2491 = fmul fast float %2486, %2488
  %2492 = fmul fast float %2486, %2489
  %2493 = fadd fast float %2490, %2474
  %2494 = fadd fast float %2491, %2475
  %2495 = fadd fast float %2492, %2476
  %2496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2497 = extractvalue %dx.types.CBufRet.f32 %2496, 0
  %2498 = extractvalue %dx.types.CBufRet.f32 %2496, 1
  %2499 = fadd fast float %2498, %2497
  %2500 = call float @dx.op.unary.f32(i32 7, float %2499)  ; Saturate(value)
  %2501 = extractvalue %dx.types.CBufRet.f32 %2496, 2
  %2502 = extractvalue %dx.types.CBufRet.f32 %2496, 3
  %2503 = fadd fast float %2502, %2501
  %2504 = call float @dx.op.unary.f32(i32 7, float %2503)  ; Saturate(value)
  %2505 = fmul fast float %2500, %2484
  %2506 = fmul fast float %2505, %2504
  br label %2748

; <label>:2507                                    ; preds = %2461
  br i1 %2462, label %2508, label %2529, !dx.controlflow.hints !93

; <label>:2508                                    ; preds = %2507
  %2509 = call float @dx.op.binary.f32(i32 36, float %2458, float %2448)  ; FMin(a,b)
  %2510 = fsub fast float %2458, %2509
  %2511 = fsub fast float %2510, %2447
  %2512 = call float @dx.op.unary.f32(i32 6, float %2511)  ; FAbs(value)
  %2513 = fadd fast float %2510, %2447
  %2514 = fmul fast float %2513, %2378
  %2515 = fadd fast float %2514, %2391
  %2516 = fmul fast float %2515, %2512
  %2517 = fsub fast float %2453, %2516
  br label %2529

; <label>:2518                                    ; preds = %2446
  br i1 %2460, label %2519, label %2529, !dx.controlflow.hints !94

; <label>:2519                                    ; preds = %2518
  %2520 = call float @dx.op.binary.f32(i32 35, float %2448, float %2458)  ; FMax(a,b)
  %2521 = icmp eq i32 %2397, 0
  %2522 = select i1 %2521, float %2458, float 0.000000e+00
  %2523 = fsub fast float -0.000000e+00, %2522
  %2524 = call float @dx.op.unary.f32(i32 6, float %2523)  ; FAbs(value)
  %2525 = fmul fast float %2522, %2378
  %2526 = fadd fast float %2525, %2391
  %2527 = fmul fast float %2524, %2526
  %2528 = fsub fast float %2453, %2527
  br label %2529

; <label>:2529                                    ; preds = %2519, %2518, %2508, %2507
  %2530 = phi float [ %2448, %2507 ], [ %2448, %2508 ], [ %2520, %2519 ], [ %2448, %2518 ]
  %2531 = phi float [ 0.000000e+00, %2507 ], [ %2512, %2508 ], [ %2524, %2519 ], [ 0.000000e+00, %2518 ]
  %2532 = phi float [ %2453, %2507 ], [ %2517, %2508 ], [ %2528, %2519 ], [ %2453, %2518 ]
  %2533 = phi float [ %2458, %2507 ], [ %2458, %2508 ], [ %2447, %2519 ], [ %2447, %2518 ]
  %2534 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  store float -1.000000e+00, float* %2534, align 4, !tbaa !95, !noalias !99
  %2535 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 1
  store float -1.000000e+00, float* %2535, align 4, !tbaa !95, !noalias !99
  %2536 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 2
  store float -1.000000e+00, float* %2536, align 4, !tbaa !95, !noalias !99
  %2537 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 0
  store float -1.000000e+00, float* %2537, align 4, !tbaa !95, !noalias !99
  %2538 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 1
  store float -1.000000e+00, float* %2538, align 4, !tbaa !95, !noalias !99
  %2539 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 2
  store float -1.000000e+00, float* %2539, align 4, !tbaa !95, !noalias !99
  %2540 = icmp sgt i32 %2399, 0
  br i1 %2540, label %2541, label %2602

; <label>:2541                                    ; preds = %2529
  br label %2542

; <label>:2542                                    ; preds = %2591, %2541
  %2543 = phi i32 [ %2592, %2591 ], [ 0, %2541 ]
  %2544 = phi i32 [ %2593, %2591 ], [ 0, %2541 ]
  %2545 = add nuw i32 %2544, 171
  %2546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %2545)  ; CBufferLoadLegacy(handle,regIndex)
  %2547 = extractvalue %dx.types.CBufRet.f32 %2546, 0
  %2548 = extractvalue %dx.types.CBufRet.f32 %2546, 1
  %2549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2550 = extractvalue %dx.types.CBufRet.f32 %2549, 0
  %2551 = extractvalue %dx.types.CBufRet.f32 %2549, 1
  %2552 = fsub fast float %2547, %2550
  %2553 = fsub fast float %2548, %2551
  %2554 = extractvalue %dx.types.CBufRet.f32 %2546, 2
  %2555 = fsub fast float -0.000000e+00, %2552
  %2556 = fsub fast float -0.000000e+00, %2553
  %2557 = call float @dx.op.dot2.f32(i32 54, float %2376, float %2377, float %2555, float %2556)  ; Dot2(ax,ay,bx,by)
  %2558 = fmul fast float %2557, 2.000000e+00
  %2559 = call float @dx.op.dot2.f32(i32 54, float %2555, float %2556, float %2555, float %2556)  ; Dot2(ax,ay,bx,by)
  %2560 = fmul fast float %2554, %2554
  %2561 = fsub fast float %2559, %2560
  %2562 = fmul fast float %2558, %2558
  %2563 = fmul fast float %2419, %2561
  %2564 = fsub fast float %2562, %2563
  %2565 = fcmp fast ogt float %2564, 0.000000e+00
  br i1 %2565, label %2566, label %2581, !dx.controlflow.hints !87

; <label>:2566                                    ; preds = %2542
  %2567 = fcmp fast ogt float %2558, 0.000000e+00
  %2568 = call float @dx.op.unary.f32(i32 24, float %2564)  ; Sqrt(value)
  %2569 = fsub fast float -0.000000e+00, %2568
  %2570 = select i1 %2567, float %2568, float %2569
  %2571 = fadd fast float %2570, %2558
  %2572 = fmul float %2571, -5.000000e-01
  %2573 = fdiv fast float %2572, %2412
  %2574 = call float @dx.op.binary.f32(i32 35, float %2573, float 0.000000e+00)  ; FMax(a,b)
  %2575 = call float @dx.op.binary.f32(i32 36, float %2447, float %2574)  ; FMin(a,b)
  %2576 = fdiv fast float %2561, %2572
  %2577 = call float @dx.op.binary.f32(i32 35, float %2576, float 0.000000e+00)  ; FMax(a,b)
  %2578 = call float @dx.op.binary.f32(i32 36, float %2447, float %2577)  ; FMin(a,b)
  %2579 = call float @dx.op.binary.f32(i32 36, float %2575, float %2578)  ; FMin(a,b)
  %2580 = call float @dx.op.binary.f32(i32 35, float %2575, float %2578)  ; FMax(a,b)
  br label %2581

; <label>:2581                                    ; preds = %2566, %2542
  %2582 = phi float [ %2580, %2566 ], [ -1.000000e+00, %2542 ]
  %2583 = phi float [ %2579, %2566 ], [ -1.000000e+00, %2542 ]
  %2584 = phi i1 [ true, %2566 ], [ false, %2542 ]
  br i1 %2584, label %2585, label %2591, !dx.controlflow.hints !110

; <label>:2585                                    ; preds = %2581
  %2586 = call float @dx.op.binary.f32(i32 35, float %2530, float %2583)  ; FMax(a,b)
  %2587 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %2544
  store float %2586, float* %2587, align 4, !tbaa !95, !noalias !99
  %2588 = call float @dx.op.binary.f32(i32 35, float %2530, float %2582)  ; FMax(a,b)
  %2589 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %2544
  store float %2588, float* %2589, align 4, !tbaa !95, !noalias !99
  %2590 = add nsw i32 %2543, 1
  br label %2591

; <label>:2591                                    ; preds = %2585, %2581
  %2592 = phi i32 [ %2590, %2585 ], [ %2543, %2581 ]
  %2593 = add nuw nsw i32 %2544, 1
  %2594 = icmp eq i32 %2593, %2399
  br i1 %2594, label %2595, label %2542

; <label>:2595                                    ; preds = %2591
  %2596 = load float, float* %2536, align 4, !tbaa !95, !alias.scope !111, !noalias !114
  %2597 = load float, float* %2535, align 4, !tbaa !95, !alias.scope !117, !noalias !118
  %2598 = load float, float* %2534, align 4, !tbaa !95, !alias.scope !119, !noalias !120
  %2599 = load float, float* %2539, align 4, !tbaa !95, !alias.scope !121, !noalias !124
  %2600 = load float, float* %2538, align 4, !tbaa !95, !alias.scope !127, !noalias !128
  %2601 = load float, float* %2537, align 4, !tbaa !95, !alias.scope !129, !noalias !130
  br label %2602

; <label>:2602                                    ; preds = %2595, %2529
  %2603 = phi float [ -1.000000e+00, %2529 ], [ %2601, %2595 ]
  %2604 = phi float [ -1.000000e+00, %2529 ], [ %2600, %2595 ]
  %2605 = phi float [ -1.000000e+00, %2529 ], [ %2599, %2595 ]
  %2606 = phi float [ -1.000000e+00, %2529 ], [ %2598, %2595 ]
  %2607 = phi float [ -1.000000e+00, %2529 ], [ %2597, %2595 ]
  %2608 = phi float [ -1.000000e+00, %2529 ], [ %2596, %2595 ]
  %2609 = phi i32 [ 0, %2529 ], [ %2592, %2595 ]
  %2610 = call float @dx.op.binary.f32(i32 36, float %2607, float %2608)  ; FMin(a,b)
  %2611 = call float @dx.op.binary.f32(i32 36, float %2606, float %2610)  ; FMin(a,b)
  %2612 = call float @dx.op.binary.f32(i32 35, float %2606, float %2607)  ; FMax(a,b)
  %2613 = call float @dx.op.binary.f32(i32 36, float %2612, float %2608)  ; FMin(a,b)
  %2614 = call float @dx.op.binary.f32(i32 36, float %2606, float %2607)  ; FMin(a,b)
  %2615 = call float @dx.op.binary.f32(i32 35, float %2614, float %2613)  ; FMax(a,b)
  %2616 = call float @dx.op.binary.f32(i32 35, float %2607, float %2608)  ; FMax(a,b)
  %2617 = call float @dx.op.binary.f32(i32 35, float %2606, float %2616)  ; FMax(a,b)
  store float %2611, float* %2534, align 4, !tbaa !95, !alias.scope !119, !noalias !120
  store float %2615, float* %2535, align 4, !tbaa !95, !alias.scope !117, !noalias !118
  store float %2617, float* %2536, align 4, !tbaa !95, !alias.scope !111, !noalias !114
  %2618 = call float @dx.op.binary.f32(i32 36, float %2604, float %2605)  ; FMin(a,b)
  %2619 = call float @dx.op.binary.f32(i32 36, float %2603, float %2618)  ; FMin(a,b)
  %2620 = call float @dx.op.binary.f32(i32 35, float %2603, float %2604)  ; FMax(a,b)
  %2621 = call float @dx.op.binary.f32(i32 36, float %2620, float %2605)  ; FMin(a,b)
  %2622 = call float @dx.op.binary.f32(i32 36, float %2603, float %2604)  ; FMin(a,b)
  %2623 = call float @dx.op.binary.f32(i32 35, float %2622, float %2621)  ; FMax(a,b)
  %2624 = call float @dx.op.binary.f32(i32 35, float %2604, float %2605)  ; FMax(a,b)
  %2625 = call float @dx.op.binary.f32(i32 35, float %2603, float %2624)  ; FMax(a,b)
  store float %2619, float* %2537, align 4, !tbaa !95, !alias.scope !129, !noalias !130
  store float %2623, float* %2538, align 4, !tbaa !95, !alias.scope !127, !noalias !128
  store float %2625, float* %2539, align 4, !tbaa !95, !alias.scope !121, !noalias !124
  %2626 = sub nsw i32 3, %2609
  %2627 = icmp sgt i32 %2626, 2
  br i1 %2627, label %2628, label %2666, !dx.controlflow.hints !131

; <label>:2628                                    ; preds = %2602
  %2629 = icmp eq i32 %2397, 0
  %2630 = fsub fast float %2447, %2531
  %2631 = select i1 %2629, float %2630, float %2531
  %2632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2633 = extractvalue %dx.types.CBufRet.f32 %2632, 0
  %2634 = extractvalue %dx.types.CBufRet.f32 %2632, 1
  %2635 = extractvalue %dx.types.CBufRet.f32 %2632, 2
  %2636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2637 = extractvalue %dx.types.CBufRet.f32 %2636, 0
  %2638 = extractvalue %dx.types.CBufRet.f32 %2636, 1
  %2639 = extractvalue %dx.types.CBufRet.f32 %2636, 2
  %2640 = extractvalue %dx.types.CBufRet.f32 %2636, 3
  %2641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2642 = extractvalue %dx.types.CBufRet.f32 %2641, 3
  %2643 = call float @dx.op.binary.f32(i32 36, float %2532, float %2642)  ; FMin(a,b)
  %2644 = fmul fast float %2640, %2631
  %2645 = call float @dx.op.unary.f32(i32 7, float %2644)  ; Saturate(value)
  %2646 = fsub fast float %2637, %2633
  %2647 = fsub fast float %2638, %2634
  %2648 = fsub fast float %2639, %2635
  %2649 = fmul fast float %2645, %2646
  %2650 = fmul fast float %2645, %2647
  %2651 = fmul fast float %2645, %2648
  %2652 = fadd fast float %2649, %2633
  %2653 = fadd fast float %2650, %2634
  %2654 = fadd fast float %2651, %2635
  %2655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2656 = extractvalue %dx.types.CBufRet.f32 %2655, 0
  %2657 = extractvalue %dx.types.CBufRet.f32 %2655, 1
  %2658 = fadd fast float %2657, %2656
  %2659 = call float @dx.op.unary.f32(i32 7, float %2658)  ; Saturate(value)
  %2660 = extractvalue %dx.types.CBufRet.f32 %2655, 2
  %2661 = extractvalue %dx.types.CBufRet.f32 %2655, 3
  %2662 = fadd fast float %2661, %2660
  %2663 = call float @dx.op.unary.f32(i32 7, float %2662)  ; Saturate(value)
  %2664 = fmul fast float %2659, %2643
  %2665 = fmul fast float %2664, %2663
  br label %2748

; <label>:2666                                    ; preds = %2602
  %2667 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %2626
  %2668 = load float, float* %2667, align 4, !tbaa !95, !noalias !99
  %2669 = fcmp fast olt float %2668, %2533
  %2670 = icmp sgt i32 %2609, 0
  %2671 = and i1 %2670, %2669
  br i1 %2671, label %2672, label %2709

; <label>:2672                                    ; preds = %2666
  br label %2673

; <label>:2673                                    ; preds = %2702, %2672
  %2674 = phi float [ %2703, %2702 ], [ %2531, %2672 ]
  %2675 = phi float [ %2704, %2702 ], [ %2532, %2672 ]
  %2676 = phi float [ %2684, %2702 ], [ %2668, %2672 ]
  %2677 = phi i32 [ %2681, %2702 ], [ %2626, %2672 ]
  %2678 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %2677
  %2679 = load float, float* %2678, align 4, !tbaa !95, !noalias !99
  %2680 = icmp slt i32 %2677, 2
  %2681 = add nsw i32 %2677, 1
  %2682 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %2681
  %2683 = load float, float* %2682, align 4, !tbaa !95, !noalias !99
  %2684 = select i1 %2680, float %2683, float %2447
  %2685 = call float @dx.op.binary.f32(i32 36, float %2684, float %2679)  ; FMin(a,b)
  %2686 = call float @dx.op.binary.f32(i32 36, float %2533, float %2685)  ; FMin(a,b)
  %2687 = icmp eq i32 %2397, 0
  %2688 = fadd fast float %2686, %2676
  %2689 = fmul fast float %2688, %2378
  %2690 = fadd fast float %2689, %2391
  br i1 %2687, label %2696, label %2691, !dx.controlflow.hints !132

; <label>:2691                                    ; preds = %2673
  %2692 = fsub fast float %2686, %2676
  %2693 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2692)  ; FMax(a,b)
  %2694 = fmul fast float %2693, %2690
  %2695 = fadd fast float %2694, %2675
  br label %2702

; <label>:2696                                    ; preds = %2673
  %2697 = fsub fast float %2676, %2686
  %2698 = call float @dx.op.unary.f32(i32 6, float %2697)  ; FAbs(value)
  %2699 = fadd fast float %2698, %2674
  %2700 = fmul fast float %2698, %2690
  %2701 = fsub fast float %2675, %2700
  br label %2702

; <label>:2702                                    ; preds = %2696, %2691
  %2703 = phi float [ %2693, %2691 ], [ %2699, %2696 ]
  %2704 = phi float [ %2695, %2691 ], [ %2701, %2696 ]
  %2705 = fcmp fast olt float %2684, %2533
  %2706 = icmp slt i32 %2681, 3
  %2707 = and i1 %2706, %2705
  br i1 %2707, label %2673, label %2708

; <label>:2708                                    ; preds = %2702
  br label %2709

; <label>:2709                                    ; preds = %2708, %2666
  %2710 = phi float [ %2531, %2666 ], [ %2703, %2708 ]
  %2711 = phi float [ %2532, %2666 ], [ %2704, %2708 ]
  %2712 = fsub fast float %2447, %2710
  %2713 = select i1 %2449, float %2710, float %2712
  %2714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2715 = extractvalue %dx.types.CBufRet.f32 %2714, 0
  %2716 = extractvalue %dx.types.CBufRet.f32 %2714, 1
  %2717 = extractvalue %dx.types.CBufRet.f32 %2714, 2
  %2718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2719 = extractvalue %dx.types.CBufRet.f32 %2718, 0
  %2720 = extractvalue %dx.types.CBufRet.f32 %2718, 1
  %2721 = extractvalue %dx.types.CBufRet.f32 %2718, 2
  %2722 = extractvalue %dx.types.CBufRet.f32 %2718, 3
  %2723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2724 = extractvalue %dx.types.CBufRet.f32 %2723, 3
  %2725 = call float @dx.op.binary.f32(i32 36, float %2711, float %2724)  ; FMin(a,b)
  %2726 = fmul fast float %2722, %2713
  %2727 = call float @dx.op.unary.f32(i32 7, float %2726)  ; Saturate(value)
  %2728 = fsub fast float %2719, %2715
  %2729 = fsub fast float %2720, %2716
  %2730 = fsub fast float %2721, %2717
  %2731 = fmul fast float %2727, %2728
  %2732 = fmul fast float %2727, %2729
  %2733 = fmul fast float %2727, %2730
  %2734 = fadd fast float %2731, %2715
  %2735 = fadd fast float %2732, %2716
  %2736 = fadd fast float %2733, %2717
  %2737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2738 = extractvalue %dx.types.CBufRet.f32 %2737, 0
  %2739 = extractvalue %dx.types.CBufRet.f32 %2737, 1
  %2740 = fadd fast float %2739, %2738
  %2741 = call float @dx.op.unary.f32(i32 7, float %2740)  ; Saturate(value)
  %2742 = extractvalue %dx.types.CBufRet.f32 %2737, 2
  %2743 = extractvalue %dx.types.CBufRet.f32 %2737, 3
  %2744 = fadd fast float %2743, %2742
  %2745 = call float @dx.op.unary.f32(i32 7, float %2744)  ; Saturate(value)
  %2746 = fmul fast float %2741, %2725
  %2747 = fmul fast float %2746, %2745
  br label %2748

; <label>:2748                                    ; preds = %2709, %2628, %2463, %2445, %2443
  %2749 = phi float [ %2472, %2463 ], [ %2631, %2628 ], [ %2713, %2709 ], [ 0.000000e+00, %2443 ], [ 0.000000e+00, %2445 ]
  %2750 = phi float [ %2506, %2463 ], [ %2665, %2628 ], [ %2747, %2709 ], [ 0.000000e+00, %2443 ], [ 0.000000e+00, %2445 ]
  %2751 = phi float [ %2493, %2463 ], [ %2652, %2628 ], [ %2734, %2709 ], [ 0.000000e+00, %2443 ], [ 0.000000e+00, %2445 ]
  %2752 = phi float [ %2494, %2463 ], [ %2653, %2628 ], [ %2735, %2709 ], [ 0.000000e+00, %2443 ], [ 0.000000e+00, %2445 ]
  %2753 = phi float [ %2495, %2463 ], [ %2654, %2628 ], [ %2736, %2709 ], [ 0.000000e+00, %2443 ], [ 0.000000e+00, %2445 ]
  %2754 = fmul fast float %2386, %2750
  %2755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2756 = extractvalue %dx.types.CBufRet.f32 %2755, 2
  %2757 = fsub fast float %2393, %2756
  %2758 = fcmp fast olt float %2754, -2.000000e+01
  %2759 = call float @dx.op.unary.f32(i32 21, float %2754)  ; Exp(value)
  %2760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2761 = extractvalue %dx.types.CBufRet.f32 %2760, 2
  %2762 = extractvalue %dx.types.CBufRet.f32 %2760, 3
  %2763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2764 = extractvalue %dx.types.CBufRet.f32 %2763, 2
  %2765 = fmul fast float %2762, %2757
  %2766 = call float @dx.op.unary.f32(i32 7, float %2765)  ; Saturate(value)
  %2767 = fsub fast float 1.000000e+00, %2766
  %2768 = fmul fast float %2378, 5.000000e-01
  %2769 = fadd fast float %2768, 5.000000e-01
  %2770 = call float @dx.op.unary.f32(i32 7, float %2769)  ; Saturate(value)
  %2771 = fsub fast float 1.000000e+00, %2770
  %2772 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2767)  ; FMax(a,b)
  %2773 = fdiv fast float %2771, %2772
  %2774 = fsub fast float %2757, %2344
  %2775 = call float @dx.op.unary.f32(i32 6, float %2774)  ; FAbs(value)
  %2776 = fmul fast float %2775, %2761
  %2777 = call float @dx.op.unary.f32(i32 7, float %2773)  ; Saturate(value)
  %2778 = fsub fast float 1.000000e+00, %2776
  %2779 = fmul fast float %2778, %2777
  %2780 = fadd fast float %2779, %2776
  %2781 = fmul fast float %2764, %2757
  %2782 = call float @dx.op.unary.f32(i32 7, float %2781)  ; Saturate(value)
  %2783 = fsub fast float 1.000000e+00, %2780
  %2784 = fmul fast float %2783, %2782
  %2785 = fadd fast float %2784, %2780
  %2786 = call float @dx.op.unary.f32(i32 7, float %2785)  ; Saturate(value)
  %2787 = fadd fast float %2759, -1.000000e+00
  %2788 = select i1 %2758, float -1.000000e+00, float %2787
  %2789 = fmul fast float %2786, %2788
  %2790 = fadd fast float %2789, 1.000000e+00
  %2791 = fsub fast float -0.000000e+00, %2789
  %2792 = fmul fast float %2751, %2791
  %2793 = fmul fast float %2752, %2791
  %2794 = fmul fast float %2753, %2791
  br label %2795

; <label>:2795                                    ; preds = %2748, %2297
  %2796 = phi float [ %2749, %2748 ], [ 0.000000e+00, %2297 ]
  %2797 = phi float [ %2790, %2748 ], [ 1.000000e+00, %2297 ]
  %2798 = phi float [ %2792, %2748 ], [ 0.000000e+00, %2297 ]
  %2799 = phi float [ %2793, %2748 ], [ 0.000000e+00, %2297 ]
  %2800 = phi float [ %2794, %2748 ], [ 0.000000e+00, %2297 ]
  %2801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2802 = extractvalue %dx.types.CBufRet.f32 %2801, 1
  %2803 = fsub fast float 1.000000e+00, %2797
  %2804 = fmul fast float %2803, %2379
  %2805 = fmul fast float %2804, %2802
  %2806 = fsub fast float %2379, %2805
  br i1 %2372, label %2807, label %2836, !dx.controlflow.hints !133

; <label>:2807                                    ; preds = %2795
  %2808 = fmul fast float %2380, %2369
  %2809 = fadd fast float %2808, %2370
  %2810 = call float @dx.op.unary.f32(i32 7, float %2809)  ; Saturate(value)
  %2811 = fmul fast float %2351, %2806
  %2812 = fsub fast float -0.000000e+00, %2811
  %2813 = fmul fast float %2352, %2806
  %2814 = fsub fast float -0.000000e+00, %2813
  %2815 = call float @dx.op.unary.f32(i32 21, float %2812)  ; Exp(value)
  %2816 = call float @dx.op.unary.f32(i32 21, float %2814)  ; Exp(value)
  %2817 = call float @dx.op.binary.f32(i32 35, float %2359, float %2815)  ; FMax(a,b)
  %2818 = call float @dx.op.binary.f32(i32 35, float %2359, float %2816)  ; FMax(a,b)
  %2819 = fsub fast float %2818, %2817
  %2820 = fmul fast float %2819, %2810
  %2821 = fadd fast float %2820, %2817
  %2822 = call float @dx.op.unary.f32(i32 7, float %2821)  ; Saturate(value)
  %2823 = fsub fast float %2356, %2361
  %2824 = fsub fast float %2357, %2362
  %2825 = fsub fast float %2358, %2363
  %2826 = fmul fast float %2810, %2823
  %2827 = fmul fast float %2810, %2824
  %2828 = fmul fast float %2810, %2825
  %2829 = fadd fast float %2826, %2361
  %2830 = fadd fast float %2827, %2362
  %2831 = fadd fast float %2828, %2363
  %2832 = fsub fast float 1.000000e+00, %2822
  %2833 = fmul fast float %2832, %2829
  %2834 = fmul fast float %2832, %2830
  %2835 = fmul fast float %2832, %2831
  br label %2895

; <label>:2836                                    ; preds = %2795
  %2837 = fmul fast float %2806, %2368
  %2838 = call float @dx.op.unary.f32(i32 7, float %2837)  ; Saturate(value)
  %2839 = fsub fast float 2.000000e+00, %2838
  %2840 = fmul fast float %2838, 9.921875e-01
  %2841 = fmul fast float %2840, %2839
  %2842 = fadd fast float %2841, 3.906250e-03
  %2843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %20, float %2842, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2844 = extractvalue %dx.types.ResRet.f32 %2843, 0
  %2845 = fsub fast float %2838, %2844
  %2846 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2845)  ; FMax(a,b)
  %2847 = fmul fast float %2354, %2344
  %2848 = call float @dx.op.unary.f32(i32 6, float %2847)  ; FAbs(value)
  %2849 = fcmp fast ogt float %2848, 0x3EB0C6F7A0000000
  br i1 %2849, label %2850, label %2856, !dx.controlflow.hints !134

; <label>:2850                                    ; preds = %2836
  %2851 = fmul fast float %2847, 0xBFF7154760000000
  %2852 = call float @dx.op.unary.f32(i32 21, float %2851)  ; Exp(value)
  %2853 = fsub fast float 1.000000e+00, %2852
  %2854 = fdiv fast float %2853, %2847
  %2855 = fmul fast float %2854, %2364
  br label %2856

; <label>:2856                                    ; preds = %2850, %2836
  %2857 = phi float [ %2855, %2850 ], [ %2364, %2836 ]
  %2858 = fadd fast float %2857, %2366
  %2859 = fmul fast float %2858, %2846
  %2860 = fmul fast float %2351, %2859
  %2861 = fsub fast float -0.000000e+00, %2860
  %2862 = fmul fast float %2352, %2859
  %2863 = fsub fast float -0.000000e+00, %2862
  %2864 = fmul fast float %2353, %2859
  %2865 = fsub fast float -0.000000e+00, %2864
  %2866 = call float @dx.op.unary.f32(i32 21, float %2861)  ; Exp(value)
  %2867 = call float @dx.op.unary.f32(i32 21, float %2863)  ; Exp(value)
  %2868 = call float @dx.op.unary.f32(i32 21, float %2865)  ; Exp(value)
  %2869 = fmul fast float %2380, %2380
  %2870 = fadd fast float %2869, 1.000000e+00
  %2871 = fmul fast float %2870, 0x3FAE8EC8A0000000
  %2872 = fmul fast float %2871, %2361
  %2873 = fmul fast float %2871, %2362
  %2874 = fmul fast float %2871, %2363
  %2875 = fmul fast float %2380, %2359
  %2876 = fsub fast float 1.000000e+00, %2875
  %2877 = fmul fast float %2359, %2359
  %2878 = fsub fast float 1.000000e+00, %2877
  %2879 = fmul fast float %2878, 0x3FB45F3060000000
  %2880 = fmul fast float %2876, %2876
  %2881 = fdiv fast float 1.000000e+00, %2880
  %2882 = fmul fast float %2879, %2881
  %2883 = fmul fast float %2882, %2356
  %2884 = fmul fast float %2882, %2357
  %2885 = fmul fast float %2882, %2358
  %2886 = fadd fast float %2883, %2872
  %2887 = fadd fast float %2884, %2873
  %2888 = fadd fast float %2885, %2874
  %2889 = fsub fast float 1.000000e+00, %2866
  %2890 = fsub fast float 1.000000e+00, %2867
  %2891 = fsub fast float 1.000000e+00, %2868
  %2892 = fmul fast float %2886, %2889
  %2893 = fmul fast float %2887, %2890
  %2894 = fmul fast float %2888, %2891
  br label %2895

; <label>:2895                                    ; preds = %2856, %2807
  %2896 = phi float [ %2833, %2807 ], [ %2892, %2856 ]
  %2897 = phi float [ %2834, %2807 ], [ %2893, %2856 ]
  %2898 = phi float [ %2835, %2807 ], [ %2894, %2856 ]
  %2899 = phi float [ %2822, %2807 ], [ %2866, %2856 ]
  %2900 = phi float [ %2822, %2807 ], [ %2867, %2856 ]
  %2901 = phi float [ %2822, %2807 ], [ %2868, %2856 ]
  br i1 %2388, label %2902, label %3100, !dx.controlflow.hints !135

; <label>:2902                                    ; preds = %2895
  %2903 = extractvalue %dx.types.CBufRet.f32 %2801, 0
  %2904 = fmul fast float %2903, %2803
  %2905 = fsub fast float %2798, %2896
  %2906 = fsub fast float %2799, %2897
  %2907 = fsub fast float %2800, %2898
  %2908 = fmul fast float %2904, %2905
  %2909 = fmul fast float %2904, %2906
  %2910 = fmul fast float %2904, %2907
  %2911 = fadd fast float %2908, %2896
  %2912 = fadd fast float %2909, %2897
  %2913 = fadd fast float %2910, %2898
  %2914 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2899)  ; FMax(a,b)
  %2915 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2900)  ; FMax(a,b)
  %2916 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2901)  ; FMax(a,b)
  %2917 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2797)  ; FMax(a,b)
  %2918 = call float @dx.op.binary.f32(i32 35, float %2796, float %2806)  ; FMax(a,b)
  %2919 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2918)  ; FMax(a,b)
  %2920 = fdiv fast float %2796, %2919
  %2921 = call float @dx.op.unary.f32(i32 7, float %2920)  ; Saturate(value)
  %2922 = fdiv fast float %2806, %2919
  %2923 = call float @dx.op.unary.f32(i32 7, float %2922)  ; Saturate(value)
  %2924 = fcmp fast une float %2917, 1.000000e+00
  br i1 %2924, label %2925, label %2938, !dx.controlflow.hints !136

; <label>:2925                                    ; preds = %2902
  %2926 = call float @dx.op.unary.f32(i32 23, float %2917)  ; Log(value)
  %2927 = fmul fast float %2926, 0x3FE62E4300000000
  %2928 = fmul fast float %2798, %2927
  %2929 = fsub fast float -0.000000e+00, %2928
  %2930 = fmul fast float %2799, %2927
  %2931 = fsub fast float -0.000000e+00, %2930
  %2932 = fmul fast float %2800, %2927
  %2933 = fsub fast float -0.000000e+00, %2932
  %2934 = fsub fast float 1.000000e+00, %2917
  %2935 = fdiv fast float %2929, %2934
  %2936 = fdiv fast float %2931, %2934
  %2937 = fdiv fast float %2933, %2934
  br label %2938

; <label>:2938                                    ; preds = %2925, %2902
  %2939 = phi float [ %2935, %2925 ], [ %2798, %2902 ]
  %2940 = phi float [ %2936, %2925 ], [ %2799, %2902 ]
  %2941 = phi float [ %2937, %2925 ], [ %2800, %2902 ]
  %2942 = phi float [ %2927, %2925 ], [ 0.000000e+00, %2902 ]
  %2943 = fcmp fast une float %2914, 1.000000e+00
  br i1 %2943, label %2944, label %2951, !dx.controlflow.hints !137

; <label>:2944                                    ; preds = %2938
  %2945 = call float @dx.op.unary.f32(i32 23, float %2914)  ; Log(value)
  %2946 = fmul fast float %2945, 0x3FE62E4300000000
  %2947 = fmul fast float %2911, %2946
  %2948 = fsub fast float -0.000000e+00, %2947
  %2949 = fsub fast float 1.000000e+00, %2914
  %2950 = fdiv fast float %2948, %2949
  br label %2951

; <label>:2951                                    ; preds = %2944, %2938
  %2952 = phi float [ %2950, %2944 ], [ %2911, %2938 ]
  %2953 = phi float [ %2946, %2944 ], [ 0.000000e+00, %2938 ]
  %2954 = fcmp fast une float %2915, 1.000000e+00
  br i1 %2954, label %2955, label %2962, !dx.controlflow.hints !137

; <label>:2955                                    ; preds = %2951
  %2956 = call float @dx.op.unary.f32(i32 23, float %2915)  ; Log(value)
  %2957 = fmul fast float %2956, 0x3FE62E4300000000
  %2958 = fmul fast float %2912, %2957
  %2959 = fsub fast float -0.000000e+00, %2958
  %2960 = fsub fast float 1.000000e+00, %2915
  %2961 = fdiv fast float %2959, %2960
  br label %2962

; <label>:2962                                    ; preds = %2955, %2951
  %2963 = phi float [ %2961, %2955 ], [ %2912, %2951 ]
  %2964 = phi float [ %2957, %2955 ], [ 0.000000e+00, %2951 ]
  %2965 = fcmp fast une float %2916, 1.000000e+00
  br i1 %2965, label %2966, label %2973, !dx.controlflow.hints !137

; <label>:2966                                    ; preds = %2962
  %2967 = call float @dx.op.unary.f32(i32 23, float %2916)  ; Log(value)
  %2968 = fmul fast float %2967, 0x3FE62E4300000000
  %2969 = fmul fast float %2913, %2968
  %2970 = fsub fast float -0.000000e+00, %2969
  %2971 = fsub fast float 1.000000e+00, %2916
  %2972 = fdiv fast float %2970, %2971
  br label %2973

; <label>:2973                                    ; preds = %2966, %2962
  %2974 = phi float [ %2972, %2966 ], [ %2913, %2962 ]
  %2975 = phi float [ %2968, %2966 ], [ 0.000000e+00, %2962 ]
  %2976 = fmul fast float %2939, %2923
  %2977 = fmul fast float %2940, %2923
  %2978 = fmul fast float %2941, %2923
  %2979 = fmul fast float %2942, %2923
  %2980 = fmul fast float %2952, %2921
  %2981 = fmul fast float %2963, %2921
  %2982 = fmul fast float %2974, %2921
  %2983 = fmul fast float %2953, %2921
  %2984 = fmul fast float %2964, %2921
  %2985 = fmul fast float %2975, %2921
  %2986 = fadd fast float %2980, %2976
  %2987 = fadd fast float %2981, %2977
  %2988 = fadd fast float %2982, %2978
  %2989 = fadd fast float %2983, %2979
  %2990 = fadd fast float %2984, %2979
  %2991 = fadd fast float %2985, %2979
  %2992 = fcmp fast une float %2989, 0.000000e+00
  br i1 %2992, label %2993, label %3000, !dx.controlflow.hints !138

; <label>:2993                                    ; preds = %2973
  %2994 = fmul fast float %2989, 0x3FF7154760000000
  %2995 = call float @dx.op.unary.f32(i32 21, float %2994)  ; Exp(value)
  %2996 = fsub fast float 1.000000e+00, %2995
  %2997 = fmul fast float %2986, %2996
  %2998 = fsub fast float -0.000000e+00, %2997
  %2999 = fdiv fast float %2998, %2989
  br label %3000

; <label>:3000                                    ; preds = %2993, %2973
  %3001 = phi float [ %2995, %2993 ], [ 1.000000e+00, %2973 ]
  %3002 = phi float [ %2999, %2993 ], [ %2986, %2973 ]
  %3003 = fcmp fast une float %2990, 0.000000e+00
  br i1 %3003, label %3004, label %3011, !dx.controlflow.hints !138

; <label>:3004                                    ; preds = %3000
  %3005 = fmul fast float %2990, 0x3FF7154760000000
  %3006 = call float @dx.op.unary.f32(i32 21, float %3005)  ; Exp(value)
  %3007 = fsub fast float 1.000000e+00, %3006
  %3008 = fmul fast float %2987, %3007
  %3009 = fsub fast float -0.000000e+00, %3008
  %3010 = fdiv fast float %3009, %2990
  br label %3011

; <label>:3011                                    ; preds = %3004, %3000
  %3012 = phi float [ %3006, %3004 ], [ 1.000000e+00, %3000 ]
  %3013 = phi float [ %3010, %3004 ], [ %2987, %3000 ]
  %3014 = fcmp fast une float %2991, 0.000000e+00
  br i1 %3014, label %3015, label %3022, !dx.controlflow.hints !138

; <label>:3015                                    ; preds = %3011
  %3016 = fmul fast float %2991, 0x3FF7154760000000
  %3017 = call float @dx.op.unary.f32(i32 21, float %3016)  ; Exp(value)
  %3018 = fsub fast float 1.000000e+00, %3017
  %3019 = fmul fast float %2988, %3018
  %3020 = fsub fast float -0.000000e+00, %3019
  %3021 = fdiv fast float %3020, %2991
  br label %3022

; <label>:3022                                    ; preds = %3015, %3011
  %3023 = phi float [ %3017, %3015 ], [ 1.000000e+00, %3011 ]
  %3024 = phi float [ %3021, %3015 ], [ %2988, %3011 ]
  %3025 = fcmp fast ogt float %2921, %2923
  br i1 %3025, label %3026, label %3046, !dx.controlflow.hints !139

; <label>:3026                                    ; preds = %3022
  %3027 = fsub fast float 1.000000e+00, %2923
  %3028 = fmul fast float %2939, %3027
  %3029 = fmul fast float %2940, %3027
  %3030 = fmul fast float %2941, %3027
  %3031 = fmul fast float %2942, %3027
  %3032 = fcmp fast une float %3031, 0.000000e+00
  br i1 %3032, label %3033, label %3084, !dx.controlflow.hints !140

; <label>:3033                                    ; preds = %3026
  %3034 = fmul fast float %3031, 0x3FF7154760000000
  %3035 = call float @dx.op.unary.f32(i32 21, float %3034)  ; Exp(value)
  %3036 = fsub fast float 1.000000e+00, %3035
  %3037 = fmul fast float %3028, %3036
  %3038 = fsub fast float -0.000000e+00, %3037
  %3039 = fmul fast float %3029, %3036
  %3040 = fsub fast float -0.000000e+00, %3039
  %3041 = fmul fast float %3030, %3036
  %3042 = fsub fast float -0.000000e+00, %3041
  %3043 = fdiv fast float %3038, %3031
  %3044 = fdiv fast float %3040, %3031
  %3045 = fdiv fast float %3042, %3031
  br label %3084

; <label>:3046                                    ; preds = %3022
  %3047 = fsub fast float 1.000000e+00, %2921
  %3048 = fmul fast float %2952, %3047
  %3049 = fmul fast float %2963, %3047
  %3050 = fmul fast float %2974, %3047
  %3051 = fmul fast float %2953, %3047
  %3052 = fmul fast float %2964, %3047
  %3053 = fmul fast float %2975, %3047
  %3054 = fcmp fast une float %3051, 0.000000e+00
  br i1 %3054, label %3055, label %3062, !dx.controlflow.hints !138

; <label>:3055                                    ; preds = %3046
  %3056 = fmul fast float %3051, 0x3FF7154760000000
  %3057 = call float @dx.op.unary.f32(i32 21, float %3056)  ; Exp(value)
  %3058 = fsub fast float 1.000000e+00, %3057
  %3059 = fmul fast float %3048, %3058
  %3060 = fsub fast float -0.000000e+00, %3059
  %3061 = fdiv fast float %3060, %3051
  br label %3062

; <label>:3062                                    ; preds = %3055, %3046
  %3063 = phi float [ %3061, %3055 ], [ %3048, %3046 ]
  %3064 = phi float [ %3057, %3055 ], [ 1.000000e+00, %3046 ]
  %3065 = fcmp fast une float %3052, 0.000000e+00
  br i1 %3065, label %3066, label %3073, !dx.controlflow.hints !138

; <label>:3066                                    ; preds = %3062
  %3067 = fmul fast float %3052, 0x3FF7154760000000
  %3068 = call float @dx.op.unary.f32(i32 21, float %3067)  ; Exp(value)
  %3069 = fsub fast float 1.000000e+00, %3068
  %3070 = fmul fast float %3049, %3069
  %3071 = fsub fast float -0.000000e+00, %3070
  %3072 = fdiv fast float %3071, %3052
  br label %3073

; <label>:3073                                    ; preds = %3066, %3062
  %3074 = phi float [ %3072, %3066 ], [ %3049, %3062 ]
  %3075 = phi float [ %3068, %3066 ], [ 1.000000e+00, %3062 ]
  %3076 = fcmp fast une float %3053, 0.000000e+00
  br i1 %3076, label %3077, label %3084, !dx.controlflow.hints !138

; <label>:3077                                    ; preds = %3073
  %3078 = fmul fast float %3053, 0x3FF7154760000000
  %3079 = call float @dx.op.unary.f32(i32 21, float %3078)  ; Exp(value)
  %3080 = fsub fast float 1.000000e+00, %3079
  %3081 = fmul fast float %3050, %3080
  %3082 = fsub fast float -0.000000e+00, %3081
  %3083 = fdiv fast float %3082, %3053
  br label %3084

; <label>:3084                                    ; preds = %3077, %3073, %3033, %3026
  %3085 = phi float [ %3083, %3077 ], [ %3045, %3033 ], [ %3030, %3026 ], [ %3050, %3073 ]
  %3086 = phi float [ %3074, %3077 ], [ %3044, %3033 ], [ %3029, %3026 ], [ %3074, %3073 ]
  %3087 = phi float [ %3063, %3077 ], [ %3043, %3033 ], [ %3028, %3026 ], [ %3063, %3073 ]
  %3088 = phi float [ %3079, %3077 ], [ %3035, %3033 ], [ 1.000000e+00, %3026 ], [ 1.000000e+00, %3073 ]
  %3089 = phi float [ %3075, %3077 ], [ %3035, %3033 ], [ 1.000000e+00, %3026 ], [ %3075, %3073 ]
  %3090 = phi float [ %3064, %3077 ], [ %3035, %3033 ], [ 1.000000e+00, %3026 ], [ %3064, %3073 ]
  %3091 = fmul fast float %3090, %3002
  %3092 = fmul fast float %3089, %3013
  %3093 = fmul fast float %3088, %3024
  %3094 = fadd fast float %3091, %3087
  %3095 = fadd fast float %3092, %3086
  %3096 = fadd fast float %3093, %3085
  %3097 = fmul fast float %3090, %3001
  %3098 = fmul fast float %3089, %3012
  %3099 = fmul fast float %3088, %3023
  br label %3100

; <label>:3100                                    ; preds = %3084, %2895
  %3101 = phi float [ %2901, %2895 ], [ %3099, %3084 ]
  %3102 = phi float [ %2900, %2895 ], [ %3098, %3084 ]
  %3103 = phi float [ %2899, %2895 ], [ %3097, %3084 ]
  %3104 = phi float [ %2898, %2895 ], [ %3096, %3084 ]
  %3105 = phi float [ %2897, %2895 ], [ %3095, %3084 ]
  %3106 = phi float [ %2896, %2895 ], [ %3094, %3084 ]
  %3107 = fmul fast float %3103, %2244
  %3108 = fmul fast float %3102, %2245
  %3109 = fmul fast float %3101, %2246
  %3110 = fsub fast float 1.000000e+00, %2307
  %3111 = fmul fast float %3106, %3110
  %3112 = fmul fast float %3105, %3110
  %3113 = fmul fast float %3104, %3110
  %3114 = fadd fast float %3111, %3107
  %3115 = fadd fast float %3112, %3108
  %3116 = fadd fast float %3113, %3109
  %3117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3118 = extractvalue %dx.types.CBufRet.f32 %3117, 2
  %3119 = fmul fast float %3118, %2317
  %3120 = call float @dx.op.unary.f32(i32 7, float %3119)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %24, i32 %25, i32 undef, float %2307, float %2307, float %2307, float %2307, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3122 = extractvalue %dx.types.CBufRet.f32 %3121, 0
  %3123 = fmul fast float %3122, %3114
  %3124 = fmul fast float %3122, %3115
  %3125 = fmul fast float %3122, %3116
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %24, i32 %25, i32 undef, float %3123, float %3124, float %3125, float %3123, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %24, i32 %25, i32 undef, float %3120, float %3120, float %3120, float %3120, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!35}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !20, !26, !29}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !15}
!15 = !{i32 1, i32 164}
!16 = !{i32 8, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!20 = !{!21, !22, !23, !24}
!21 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!22 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!23 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!24 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !25}
!25 = !{i32 0, i32 14}
!26 = !{!27, !28}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!29 = !{!30, !31, !32, !33, !34}
!30 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!33 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!34 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!35 = !{void ()* @cs_fog_raymarching_air_clouds_heightmap_particles, !"cs_fog_raymarching_air_clouds_heightmap_particles", null, !4, !36}
!36 = !{i32 0, i64 272, i32 4, !37}
!37 = !{i32 8, i32 8, i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
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
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.unroll.disable"}
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
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = !{!96, !96, i64 0}
!96 = !{!"float", !97, i64 0}
!97 = !{!"omnipotent char", !98, i64 0}
!98 = !{!"Simple C/C++ TBAA"}
!99 = !{!100, !102, !104, !105, !107, !108, !109}
!100 = distinct !{!100, !101, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!101 = distinct !{!101, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!102 = distinct !{!102, !103, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!103 = distinct !{!103, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!104 = distinct !{!104, !103, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!105 = distinct !{!105, !106, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!106 = distinct !{!106, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!107 = distinct !{!107, !106, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!108 = distinct !{!108, !106, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!109 = distinct !{!109, !106, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = !{!112}
!112 = distinct !{!112, !113, !"\01?sort@@YAXAIAM00@Z: %c"}
!113 = distinct !{!113, !"\01?sort@@YAXAIAM00@Z"}
!114 = !{!115, !116, !100, !102, !104, !105, !107, !108, !109}
!115 = distinct !{!115, !113, !"\01?sort@@YAXAIAM00@Z: %a"}
!116 = distinct !{!116, !113, !"\01?sort@@YAXAIAM00@Z: %b"}
!117 = !{!116}
!118 = !{!115, !112, !100, !102, !104, !105, !107, !108, !109}
!119 = !{!115}
!120 = !{!116, !112, !100, !102, !104, !105, !107, !108, !109}
!121 = !{!122}
!122 = distinct !{!122, !123, !"\01?sort@@YAXAIAM00@Z: %c"}
!123 = distinct !{!123, !"\01?sort@@YAXAIAM00@Z"}
!124 = !{!125, !126, !100, !102, !104, !105, !107, !108, !109}
!125 = distinct !{!125, !123, !"\01?sort@@YAXAIAM00@Z: %a"}
!126 = distinct !{!126, !123, !"\01?sort@@YAXAIAM00@Z: %b"}
!127 = !{!126}
!128 = !{!125, !122, !100, !102, !104, !105, !107, !108, !109}
!129 = !{!125}
!130 = !{!126, !122, !100, !102, !104, !105, !107, !108, !109}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 2}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 2}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 2}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 2}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}

