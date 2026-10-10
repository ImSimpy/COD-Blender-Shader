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
; shader hash: 1d1c5d67170bd530c98fb0aee9874b1a
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

define void @cs_fog_raymarching_clouds_heightmap_particles() {
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
  %377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.i32 %377, 3
  %379 = icmp eq i32 %378, 0
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 2
  %382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %383 = extractvalue %dx.types.CBufRet.f32 %382, 2
  %384 = fsub fast float %381, %244
  %385 = fadd fast float %384, %383
  br i1 %379, label %397, label %386, !dx.controlflow.hints !42

; <label>:386                                     ; preds = %373
  %387 = fsub fast float -0.000000e+00, %242
  %388 = fsub fast float -0.000000e+00, %243
  %389 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %387, float %388, float %385)  ; Dot3(ax,ay,az,bx,by,bz)
  %390 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %285, float %286, float %287)  ; Dot3(ax,ay,az,bx,by,bz)
  %391 = fdiv fast float 1.000000e+00, %390
  %392 = fmul fast float %391, %389
  %393 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %387, float %388, float %384)  ; Dot3(ax,ay,az,bx,by,bz)
  %394 = fmul fast float %391, %393
  %395 = call float @dx.op.binary.f32(i32 36, float %392, float %394)  ; FMin(a,b)
  %396 = call float @dx.op.binary.f32(i32 35, float %392, float %394)  ; FMax(a,b)
  br label %430

; <label>:397                                     ; preds = %373
  %398 = fdiv fast float 1.000000e+00, %285
  %399 = fdiv fast float 1.000000e+00, %286
  %400 = fdiv fast float 1.000000e+00, %287
  %401 = extractvalue %dx.types.CBufRet.f32 %380, 0
  %402 = extractvalue %dx.types.CBufRet.f32 %380, 1
  %403 = extractvalue %dx.types.CBufRet.f32 %382, 0
  %404 = extractvalue %dx.types.CBufRet.f32 %382, 1
  %405 = fsub fast float %401, %242
  %406 = fmul fast float %405, %398
  %407 = fadd fast float %405, %403
  %408 = fmul fast float %407, %398
  %409 = call float @dx.op.binary.f32(i32 36, float %406, float %408)  ; FMin(a,b)
  %410 = call float @dx.op.binary.f32(i32 35, float %406, float %408)  ; FMax(a,b)
  %411 = fsub fast float %402, %243
  %412 = fmul fast float %411, %399
  %413 = fadd fast float %411, %404
  %414 = fmul fast float %413, %399
  %415 = call float @dx.op.binary.f32(i32 36, float %412, float %414)  ; FMin(a,b)
  %416 = call float @dx.op.binary.f32(i32 35, float %409, float %415)  ; FMax(a,b)
  %417 = call float @dx.op.binary.f32(i32 35, float %412, float %414)  ; FMax(a,b)
  %418 = call float @dx.op.binary.f32(i32 36, float %410, float %417)  ; FMin(a,b)
  %419 = fmul fast float %384, %400
  %420 = fmul fast float %385, %400
  %421 = call float @dx.op.binary.f32(i32 36, float %419, float %420)  ; FMin(a,b)
  %422 = call float @dx.op.binary.f32(i32 35, float %416, float %421)  ; FMax(a,b)
  %423 = call float @dx.op.binary.f32(i32 35, float %419, float %420)  ; FMax(a,b)
  %424 = call float @dx.op.binary.f32(i32 36, float %418, float %423)  ; FMin(a,b)
  %425 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %422)  ; FMax(a,b)
  %426 = fcmp fast ult float %424, %425
  br i1 %426, label %430, label %427, !dx.controlflow.hints !43

; <label>:427                                     ; preds = %397
  %428 = call float @dx.op.binary.f32(i32 36, float %422, float %424)  ; FMin(a,b)
  %429 = call float @dx.op.binary.f32(i32 35, float %422, float %424)  ; FMax(a,b)
  br label %430

; <label>:430                                     ; preds = %427, %397, %386
  %431 = phi float [ %395, %386 ], [ %428, %427 ], [ 0.000000e+00, %397 ]
  %432 = phi float [ %396, %386 ], [ %429, %427 ], [ 0.000000e+00, %397 ]
  %433 = fcmp fast oeq float %432, 0.000000e+00
  br i1 %433, label %437, label %434, !dx.controlflow.hints !44

; <label>:434                                     ; preds = %430
  %435 = call float @dx.op.binary.f32(i32 36, float %376, float %431)  ; FMin(a,b)
  %436 = call float @dx.op.binary.f32(i32 35, float %375, float %432)  ; FMax(a,b)
  br label %437

; <label>:437                                     ; preds = %434, %430
  %438 = phi i32 [ 1, %434 ], [ 0, %430 ]
  %439 = phi float [ %436, %434 ], [ %375, %430 ]
  %440 = phi float [ %435, %434 ], [ %376, %430 ]
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 3
  %443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %444 = extractvalue %dx.types.CBufRet.f32 %443, 0
  %445 = fsub fast float -0.000000e+00, %242
  %446 = fsub fast float -0.000000e+00, %243
  %447 = fsub fast float %442, %244
  %448 = fadd fast float %447, %444
  %449 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %445, float %446, float %448)  ; Dot3(ax,ay,az,bx,by,bz)
  %450 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %285, float %286, float %287)  ; Dot3(ax,ay,az,bx,by,bz)
  %451 = fdiv fast float 1.000000e+00, %450
  %452 = fmul fast float %451, %449
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 2
  %455 = fsub fast float %454, %244
  %456 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %445, float %446, float %455)  ; Dot3(ax,ay,az,bx,by,bz)
  %457 = fmul fast float %451, %456
  %458 = call float @dx.op.binary.f32(i32 36, float %452, float %457)  ; FMin(a,b)
  %459 = call float @dx.op.binary.f32(i32 35, float %452, float %457)  ; FMax(a,b)
  %460 = call float @dx.op.binary.f32(i32 36, float %440, float %458)  ; FMin(a,b)
  %461 = call float @dx.op.binary.f32(i32 35, float %439, float %459)  ; FMax(a,b)
  %462 = fdiv fast float 1.000000e+00, %285
  %463 = fdiv fast float 1.000000e+00, %286
  %464 = fdiv fast float 1.000000e+00, %287
  %465 = call float @dx.op.binary.f32(i32 36, float %306, float %461)  ; FMin(a,b)
  %466 = call float @dx.op.binary.f32(i32 35, float %283, float %460)  ; FMax(a,b)
  %467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %468 = extractvalue %dx.types.CBufRet.f32 %467, 0
  %469 = fmul fast float %231, 2.000000e+00
  %470 = fadd fast float %469, -1.000000e+00
  %471 = fmul fast float %468, %470
  %472 = fadd fast float %471, %466
  %473 = fcmp fast olt float %472, %465
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 2
  %476 = fcmp fast olt float %475, 1.000000e+00
  %477 = and i1 %473, %476
  br i1 %477, label %478, label %2079

; <label>:478                                     ; preds = %437
  %479 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %480 = extractvalue %dx.types.CBufRet.i32 %479, 1
  %481 = add i32 %480, -1
  %482 = fmul fast float %472, %287
  %483 = fadd fast float %482, %244
  %484 = fmul fast float %472, %286
  %485 = fadd fast float %484, %243
  %486 = fmul fast float %472, %285
  %487 = fadd fast float %486, %242
  br label %488

; <label>:488                                     ; preds = %2051, %478
  %489 = phi float [ %2053, %2051 ], [ undef, %478 ]
  %490 = phi float [ %2054, %2051 ], [ undef, %478 ]
  %491 = phi float [ %2055, %2051 ], [ undef, %478 ]
  %492 = phi float [ %2056, %2051 ], [ undef, %478 ]
  %493 = phi float [ %790, %2051 ], [ undef, %478 ]
  %494 = phi float [ %791, %2051 ], [ undef, %478 ]
  %495 = phi float [ %792, %2051 ], [ undef, %478 ]
  %496 = phi float [ %793, %2051 ], [ undef, %478 ]
  %497 = phi float [ %2057, %2051 ], [ 0.000000e+00, %478 ]
  %498 = phi float [ %2058, %2051 ], [ 1.000000e+00, %478 ]
  %499 = phi float [ %2059, %2051 ], [ 0.000000e+00, %478 ]
  %500 = phi float [ %2060, %2051 ], [ 0.000000e+00, %478 ]
  %501 = phi float [ %2061, %2051 ], [ 0.000000e+00, %478 ]
  %502 = phi float [ %2071, %2051 ], [ %487, %478 ]
  %503 = phi float [ %2072, %2051 ], [ %485, %478 ]
  %504 = phi float [ %2073, %2051 ], [ %483, %478 ]
  %505 = phi float [ %2052, %2051 ], [ %472, %478 ]
  %506 = phi i32 [ %795, %2051 ], [ 10, %478 ]
  %507 = phi i32 [ %687, %2051 ], [ %481, %478 ]
  %508 = phi float [ %2062, %2051 ], [ 0.000000e+00, %478 ]
  %509 = phi float [ %2063, %2051 ], [ 0.000000e+00, %478 ]
  %510 = phi float [ %2064, %2051 ], [ 0.000000e+00, %478 ]
  %511 = phi float [ %2065, %2051 ], [ 0.000000e+00, %478 ]
  %512 = phi float [ %2066, %2051 ], [ 0.000000e+00, %478 ]
  %513 = phi i32 [ %2067, %2051 ], [ 0, %478 ]
  %514 = fsub fast float -0.000000e+00, %503
  %515 = fsub fast float -0.000000e+00, %502
  %516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %517 = extractvalue %dx.types.CBufRet.f32 %516, 0
  %518 = icmp eq i32 %374, 0
  br i1 %518, label %684, label %519, !dx.controlflow.hints !45

; <label>:519                                     ; preds = %488
  %520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.i32 %520, 1
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 1
  %524 = fcmp fast ogt float %523, %505
  br i1 %524, label %525, label %527, !dx.controlflow.hints !46

; <label>:525                                     ; preds = %519
  %526 = fsub fast float %523, %505
  br label %674

; <label>:527                                     ; preds = %519
  %528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.i32 %528, 3
  %530 = icmp eq i32 %529, 0
  %531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %532 = extractvalue %dx.types.CBufRet.f32 %531, 2
  %533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %534 = extractvalue %dx.types.CBufRet.f32 %533, 2
  %535 = fsub fast float %532, %504
  %536 = fadd fast float %535, %534
  %537 = fsub fast float 0xC7EFFFFFE0000000, %504
  br i1 %530, label %545, label %538, !dx.controlflow.hints !39

; <label>:538                                     ; preds = %527
  %539 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %515, float %514, float %536)  ; Dot3(ax,ay,az,bx,by,bz)
  %540 = fmul fast float %451, %539
  %541 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %515, float %514, float %537)  ; Dot3(ax,ay,az,bx,by,bz)
  %542 = fmul fast float %451, %541
  %543 = call float @dx.op.binary.f32(i32 36, float %540, float %542)  ; FMin(a,b)
  %544 = call float @dx.op.binary.f32(i32 35, float %540, float %542)  ; FMax(a,b)
  br label %575

; <label>:545                                     ; preds = %527
  %546 = extractvalue %dx.types.CBufRet.f32 %531, 0
  %547 = extractvalue %dx.types.CBufRet.f32 %531, 1
  %548 = extractvalue %dx.types.CBufRet.f32 %533, 0
  %549 = extractvalue %dx.types.CBufRet.f32 %533, 1
  %550 = fsub fast float %546, %502
  %551 = fmul fast float %462, %550
  %552 = fadd fast float %550, %548
  %553 = fmul fast float %552, %462
  %554 = call float @dx.op.binary.f32(i32 36, float %551, float %553)  ; FMin(a,b)
  %555 = call float @dx.op.binary.f32(i32 35, float %551, float %553)  ; FMax(a,b)
  %556 = fsub fast float %547, %503
  %557 = fmul fast float %463, %556
  %558 = fadd fast float %556, %549
  %559 = fmul fast float %558, %463
  %560 = call float @dx.op.binary.f32(i32 36, float %557, float %559)  ; FMin(a,b)
  %561 = call float @dx.op.binary.f32(i32 35, float %554, float %560)  ; FMax(a,b)
  %562 = call float @dx.op.binary.f32(i32 35, float %557, float %559)  ; FMax(a,b)
  %563 = call float @dx.op.binary.f32(i32 36, float %555, float %562)  ; FMin(a,b)
  %564 = fmul fast float %464, %537
  %565 = fmul fast float %464, %536
  %566 = call float @dx.op.binary.f32(i32 36, float %564, float %565)  ; FMin(a,b)
  %567 = call float @dx.op.binary.f32(i32 35, float %561, float %566)  ; FMax(a,b)
  %568 = call float @dx.op.binary.f32(i32 35, float %564, float %565)  ; FMax(a,b)
  %569 = call float @dx.op.binary.f32(i32 36, float %563, float %568)  ; FMin(a,b)
  %570 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %567)  ; FMax(a,b)
  %571 = fcmp fast ult float %569, %570
  br i1 %571, label %575, label %572, !dx.controlflow.hints !40

; <label>:572                                     ; preds = %545
  %573 = call float @dx.op.binary.f32(i32 36, float %567, float %569)  ; FMin(a,b)
  %574 = call float @dx.op.binary.f32(i32 35, float %567, float %569)  ; FMax(a,b)
  br label %575

; <label>:575                                     ; preds = %572, %545, %538
  %576 = phi float [ %543, %538 ], [ %573, %572 ], [ 0.000000e+00, %545 ]
  %577 = phi float [ %544, %538 ], [ %574, %572 ], [ 0.000000e+00, %545 ]
  %578 = fcmp fast ogt float %576, 0.000000e+00
  br i1 %578, label %674, label %579, !dx.controlflow.hints !47

; <label>:579                                     ; preds = %575
  %580 = fcmp fast ugt float %577, 0.000000e+00
  br i1 %580, label %581, label %674, !dx.controlflow.hints !48

; <label>:581                                     ; preds = %579
  %582 = icmp sgt i32 %507, 0
  br i1 %582, label %583, label %668

; <label>:583                                     ; preds = %581
  br label %584

; <label>:584                                     ; preds = %664, %583
  %585 = phi i32 [ %665, %664 ], [ %507, %583 ]
  %586 = sitofp i32 %585 to float
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 0
  %589 = extractvalue %dx.types.CBufRet.f32 %587, 1
  %590 = fsub fast float %502, %588
  %591 = fsub fast float %503, %589
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 0
  %594 = extractvalue %dx.types.CBufRet.f32 %592, 1
  %595 = fmul fast float %590, %593
  %596 = fmul fast float %591, %594
  %597 = fsub fast float 1.000000e+00, %596
  %598 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.i32 %598, 3
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %607, label %601, !dx.controlflow.hints !49

; <label>:601                                     ; preds = %584
  %602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %595, float %597, float undef, float undef, i32 0, i32 0, i32 undef, float %586)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %603 = extractvalue %dx.types.ResRet.f32 %602, 0
  %604 = extractvalue %dx.types.ResRet.f32 %602, 1
  %605 = extractvalue %dx.types.ResRet.f32 %602, 2
  %606 = extractvalue %dx.types.ResRet.f32 %602, 3
  br label %613

; <label>:607                                     ; preds = %584
  %608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %20, float %595, float %597, float undef, float undef, i32 0, i32 0, i32 undef, float %586)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %609 = extractvalue %dx.types.ResRet.f32 %608, 0
  %610 = extractvalue %dx.types.ResRet.f32 %608, 1
  %611 = extractvalue %dx.types.ResRet.f32 %608, 2
  %612 = extractvalue %dx.types.ResRet.f32 %608, 3
  br label %613

; <label>:613                                     ; preds = %607, %601
  %614 = phi float [ %603, %601 ], [ %609, %607 ]
  %615 = phi float [ %604, %601 ], [ %610, %607 ]
  %616 = phi float [ %605, %601 ], [ %611, %607 ]
  %617 = phi float [ %606, %601 ], [ %612, %607 ]
  %618 = extractvalue %dx.types.CBufRet.f32 %592, 3
  %619 = fmul fast float %618, %614
  %620 = extractvalue %dx.types.CBufRet.f32 %587, 2
  %621 = fadd fast float %619, %620
  %622 = fmul fast float %618, %615
  %623 = fadd fast float %622, %620
  %624 = fmul fast float %618, %616
  %625 = fadd fast float %624, %620
  %626 = and i32 %585, 31
  %627 = shl i32 1, %626
  %628 = uitofp i32 %627 to float
  %629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %630 = extractvalue %dx.types.CBufRet.f32 %629, 3
  %631 = fdiv fast float 1.000000e+00, %630
  %632 = fmul fast float %631, %628
  %633 = fmul fast float %632, %287
  %634 = fadd fast float %633, %504
  %635 = fcmp fast oeq float %617, 0.000000e+00
  %636 = fcmp fast ogt float %504, %623
  %637 = fcmp fast ogt float %634, %623
  %638 = and i1 %636, %637
  %639 = or i1 %635, %638
  br i1 %639, label %640, label %644, !dx.controlflow.hints !50

; <label>:640                                     ; preds = %613
  %641 = add nsw i32 %585, 1
  %642 = add nsw i32 %521, -1
  %643 = call i32 @dx.op.binary.i32(i32 38, i32 %641, i32 %642)  ; IMin(a,b)
  br label %674

; <label>:644                                     ; preds = %613
  %645 = fcmp fast olt float %504, %625
  %646 = fcmp fast olt float %634, %625
  %647 = and i1 %645, %646
  br i1 %647, label %648, label %652, !dx.controlflow.hints !51

; <label>:648                                     ; preds = %644
  %649 = add nsw i32 %585, 1
  %650 = add nsw i32 %521, -1
  %651 = call i32 @dx.op.binary.i32(i32 38, i32 %649, i32 %650)  ; IMin(a,b)
  br label %674

; <label>:652                                     ; preds = %644
  %653 = fcmp fast olt float %504, %621
  %654 = fcmp fast olt float %634, %621
  %655 = and i1 %653, %654
  br i1 %655, label %656, label %664, !dx.controlflow.hints !52

; <label>:656                                     ; preds = %652
  %657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.f32 %657, 3
  %659 = extractvalue %dx.types.CBufRet.f32 %592, 2
  %660 = fcmp fast une float %658, %659
  br i1 %660, label %661, label %668, !dx.controlflow.hints !53

; <label>:661                                     ; preds = %656
  %662 = fsub fast float %504, %625
  %663 = call float @dx.op.binary.f32(i32 36, float %632, float %662)  ; FMin(a,b)
  br label %668

; <label>:664                                     ; preds = %652
  %665 = add nsw i32 %585, -1
  %666 = icmp sgt i32 %585, 1
  br i1 %666, label %584, label %667

; <label>:667                                     ; preds = %664
  br label %668

; <label>:668                                     ; preds = %667, %661, %656, %581
  %669 = phi float [ %663, %661 ], [ %632, %656 ], [ 0.000000e+00, %581 ], [ 0.000000e+00, %667 ]
  %670 = phi i32 [ %585, %661 ], [ %585, %656 ], [ %507, %581 ], [ %665, %667 ]
  %671 = add nsw i32 %670, 1
  %672 = add nsw i32 %521, -1
  %673 = call i32 @dx.op.binary.i32(i32 38, i32 %671, i32 %672)  ; IMin(a,b)
  br label %674

; <label>:674                                     ; preds = %668, %648, %640, %579, %575, %525
  %675 = phi float [ %526, %525 ], [ %632, %640 ], [ %632, %648 ], [ %669, %668 ], [ 0x47EFFFFFE0000000, %579 ], [ %576, %575 ]
  %676 = phi i32 [ %374, %525 ], [ %374, %640 ], [ %374, %648 ], [ %374, %668 ], [ 0, %579 ], [ %374, %575 ]
  %677 = phi i32 [ %507, %525 ], [ %643, %640 ], [ %651, %648 ], [ %673, %668 ], [ %507, %579 ], [ %507, %575 ]
  %678 = icmp ne i32 %676, 0
  %679 = zext i1 %678 to i32
  %680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %681 = extractvalue %dx.types.CBufRet.f32 %680, 2
  %682 = call float @dx.op.binary.f32(i32 35, float %675, float %681)  ; FMax(a,b)
  %683 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %682)  ; FMin(a,b)
  br label %684

; <label>:684                                     ; preds = %674, %488
  %685 = phi i32 [ %679, %674 ], [ 0, %488 ]
  %686 = phi float [ %683, %674 ], [ 0x47EFFFFFE0000000, %488 ]
  %687 = phi i32 [ %677, %674 ], [ %507, %488 ]
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 0
  %690 = extractvalue %dx.types.CBufRet.f32 %688, 1
  %691 = fsub fast float %502, %689
  %692 = fsub fast float %503, %690
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 2
  %695 = extractvalue %dx.types.CBufRet.f32 %693, 3
  %696 = fmul fast float %691, %694
  %697 = fmul fast float %692, %695
  %698 = call float @dx.op.binary.f32(i32 36, float %696, float %697)  ; FMin(a,b)
  %699 = fcmp fast olt float %698, 0.000000e+00
  %700 = call float @dx.op.binary.f32(i32 35, float %696, float %697)  ; FMax(a,b)
  %701 = fcmp fast ogt float %700, 1.000000e+00
  %702 = or i1 %699, %701
  %703 = extractvalue %dx.types.CBufRet.f32 %688, 2
  %704 = fcmp fast olt float %504, %703
  %705 = or i1 %702, %704
  %706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %707 = extractvalue %dx.types.CBufRet.f32 %706, 3
  %708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %709 = extractvalue %dx.types.CBufRet.f32 %708, 0
  %710 = fadd fast float %709, %707
  %711 = fcmp fast ogt float %504, %710
  %712 = or i1 %705, %711
  br i1 %712, label %713, label %742, !dx.controlflow.hints !54

; <label>:713                                     ; preds = %684
  %714 = extractvalue %dx.types.CBufRet.f32 %693, 0
  %715 = extractvalue %dx.types.CBufRet.f32 %693, 1
  %716 = fsub fast float %689, %502
  %717 = fmul fast float %716, %462
  %718 = fadd fast float %716, %714
  %719 = fmul fast float %718, %462
  %720 = call float @dx.op.binary.f32(i32 36, float %717, float %719)  ; FMin(a,b)
  %721 = call float @dx.op.binary.f32(i32 35, float %717, float %719)  ; FMax(a,b)
  %722 = fsub fast float %690, %503
  %723 = fmul fast float %722, %463
  %724 = fadd fast float %722, %715
  %725 = fmul fast float %724, %463
  %726 = call float @dx.op.binary.f32(i32 36, float %723, float %725)  ; FMin(a,b)
  %727 = call float @dx.op.binary.f32(i32 35, float %720, float %726)  ; FMax(a,b)
  %728 = call float @dx.op.binary.f32(i32 35, float %723, float %725)  ; FMax(a,b)
  %729 = call float @dx.op.binary.f32(i32 36, float %721, float %728)  ; FMin(a,b)
  %730 = fsub fast float %703, %504
  %731 = fmul fast float %730, %464
  %732 = fsub fast float %707, %504
  %733 = fadd fast float %732, %709
  %734 = fmul fast float %733, %464
  %735 = call float @dx.op.binary.f32(i32 36, float %731, float %734)  ; FMin(a,b)
  %736 = call float @dx.op.binary.f32(i32 35, float %727, float %735)  ; FMax(a,b)
  %737 = call float @dx.op.binary.f32(i32 35, float %731, float %734)  ; FMax(a,b)
  %738 = call float @dx.op.binary.f32(i32 36, float %729, float %737)  ; FMin(a,b)
  %739 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %736)  ; FMax(a,b)
  %740 = fcmp fast oge float %738, %739
  %741 = select i1 %740, float %736, float 1.000000e+07
  br label %788

; <label>:742                                     ; preds = %684
  %743 = fsub fast float 1.000000e+00, %697
  %744 = icmp eq i32 %506, 0
  br i1 %744, label %773, label %745

; <label>:745                                     ; preds = %742
  br label %746

; <label>:746                                     ; preds = %769, %745
  %747 = phi i32 [ %770, %769 ], [ %506, %745 ]
  %748 = uitofp i32 %747 to float
  %749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %696, float %743, float undef, float undef, i32 0, i32 0, i32 undef, float %748)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 0
  %751 = extractvalue %dx.types.ResRet.f32 %749, 1
  %752 = extractvalue %dx.types.ResRet.f32 %749, 2
  %753 = fcmp fast oeq float %750, 0.000000e+00
  %754 = fcmp ule float %504, %752
  %755 = fcmp uge float %504, %751
  %756 = or i1 %755, %754
  %757 = or i1 %753, %756
  br i1 %757, label %758, label %769, !dx.controlflow.hints !55

; <label>:758                                     ; preds = %746
  %759 = extractvalue %dx.types.ResRet.f32 %749, 3
  %760 = extractvalue %dx.types.CBufRet.f32 %693, 0
  %761 = and i32 %747, 31
  %762 = lshr i32 1024, %761
  %763 = uitofp i32 %762 to float
  %764 = fdiv fast float %760, %763
  %765 = add i32 %747, 1
  %766 = uitofp i32 %765 to float
  %767 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %766)  ; FMin(a,b)
  %768 = fptosi float %767 to i32
  br label %788

; <label>:769                                     ; preds = %746
  %770 = add i32 %747, -1
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %772, label %746, !llvm.loop !56

; <label>:772                                     ; preds = %769
  br label %773

; <label>:773                                     ; preds = %772, %742
  %774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %20, float %696, float %743, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %775 = extractvalue %dx.types.ResRet.f32 %774, 0
  %776 = extractvalue %dx.types.ResRet.f32 %774, 1
  %777 = extractvalue %dx.types.ResRet.f32 %774, 2
  %778 = extractvalue %dx.types.ResRet.f32 %774, 3
  %779 = extractvalue %dx.types.CBufRet.f32 %693, 0
  %780 = fmul fast float %779, 9.765625e-04
  %781 = fcmp fast oeq float %775, 0.000000e+00
  %782 = fcmp ule float %504, %777
  %783 = fcmp uge float %504, %776
  %784 = or i1 %783, %782
  %785 = or i1 %781, %784
  %786 = zext i1 %785 to i32
  %787 = xor i32 %786, 1
  br label %788

; <label>:788                                     ; preds = %773, %758, %713
  %789 = phi float [ %741, %713 ], [ %764, %758 ], [ %780, %773 ]
  %790 = phi float [ %493, %713 ], [ %750, %758 ], [ %775, %773 ]
  %791 = phi float [ %494, %713 ], [ %751, %758 ], [ %776, %773 ]
  %792 = phi float [ %495, %713 ], [ %752, %758 ], [ %777, %773 ]
  %793 = phi float [ %496, %713 ], [ %759, %758 ], [ %778, %773 ]
  %794 = phi i32 [ 0, %713 ], [ 0, %758 ], [ %787, %773 ]
  %795 = phi i32 [ 10, %713 ], [ %768, %758 ], [ 1, %773 ]
  %796 = icmp eq i32 %794, 0
  %797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %798 = extractvalue %dx.types.CBufRet.f32 %797, 2
  %799 = call float @dx.op.binary.f32(i32 35, float %789, float %798)  ; FMax(a,b)
  %800 = call float @dx.op.binary.f32(i32 36, float %686, float %799)  ; FMin(a,b)
  %801 = icmp eq i32 %438, 0
  br i1 %801, label %857, label %802, !dx.controlflow.hints !58

; <label>:802                                     ; preds = %788
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 0
  %805 = extractvalue %dx.types.CBufRet.f32 %803, 1
  %806 = extractvalue %dx.types.CBufRet.f32 %803, 2
  %807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %808 = extractvalue %dx.types.CBufRet.f32 %807, 0
  %809 = extractvalue %dx.types.CBufRet.f32 %807, 1
  %810 = extractvalue %dx.types.CBufRet.f32 %807, 2
  %811 = fsub fast float %502, %808
  %812 = fsub fast float %503, %809
  %813 = fsub fast float %504, %810
  %814 = fmul fast float %811, %804
  %815 = fmul fast float %812, %805
  %816 = fmul fast float %813, %806
  %817 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %818 = extractvalue %dx.types.CBufRet.i32 %817, 3
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %823, label %820, !dx.controlflow.hints !59

; <label>:820                                     ; preds = %802
  %821 = call float @dx.op.unary.f32(i32 22, float %814)  ; Frc(value)
  %822 = call float @dx.op.unary.f32(i32 22, float %815)  ; Frc(value)
  br label %823

; <label>:823                                     ; preds = %820, %802
  %824 = phi float [ %821, %820 ], [ %814, %802 ]
  %825 = phi float [ %822, %820 ], [ %815, %802 ]
  %826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %824, float %825, float %816, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %827 = extractvalue %dx.types.ResRet.f32 %826, 0
  %828 = fmul fast float %827, 2.000000e+00
  %829 = fadd fast float %828, -1.000000e+00
  %830 = extractvalue %dx.types.CBufRet.f32 %803, 3
  %831 = fmul fast float %829, %830
  %832 = fcmp fast olt float %831, 0.000000e+00
  %833 = fcmp fast oge float %816, 0.000000e+00
  %834 = fcmp fast ole float %816, 1.000000e+00
  br i1 %819, label %837, label %835, !dx.controlflow.hints !60

; <label>:835                                     ; preds = %823
  %836 = and i1 %833, %834
  br label %847

; <label>:837                                     ; preds = %823
  %838 = fcmp fast oge float %814, 0.000000e+00
  %839 = fcmp fast oge float %815, 0.000000e+00
  %840 = and i1 %838, %839
  %841 = and i1 %833, %840
  %842 = fcmp fast ole float %814, 1.000000e+00
  %843 = fcmp fast ole float %815, 1.000000e+00
  %844 = and i1 %842, %843
  %845 = and i1 %834, %844
  %846 = and i1 %841, %845
  br label %847

; <label>:847                                     ; preds = %837, %835
  %848 = phi i1 [ %836, %835 ], [ %846, %837 ]
  %849 = and i1 %832, %848
  %850 = call float @dx.op.unary.f32(i32 6, float %831)  ; FAbs(value)
  %851 = extractvalue %dx.types.CBufRet.f32 %797, 1
  %852 = extractvalue %dx.types.CBufRet.f32 %797, 0
  %853 = call float @dx.op.binary.f32(i32 35, float %850, float %852)  ; FMax(a,b)
  %854 = select i1 %849, float %851, float %853
  %855 = zext i1 %849 to i32
  %856 = call float @dx.op.binary.f32(i32 36, float %800, float %854)  ; FMin(a,b)
  br label %857

; <label>:857                                     ; preds = %847, %788
  %858 = phi i32 [ %855, %847 ], [ 0, %788 ]
  %859 = phi float [ %856, %847 ], [ %800, %788 ]
  %860 = extractvalue %dx.types.CBufRet.f32 %516, 2
  %861 = fmul fast float %860, %505
  %862 = call float @dx.op.unary.f32(i32 23, float %861)  ; Log(value)
  %863 = fmul fast float %862, 0x3FE62E4300000000
  %864 = call float @dx.op.binary.f32(i32 35, float %863, float 1.000000e+00)  ; FMax(a,b)
  %865 = fmul fast float %864, 0x47EFFFFFE0000000
  %866 = call float @dx.op.binary.f32(i32 36, float %865, float %859)  ; FMin(a,b)
  %867 = call float @dx.op.binary.f32(i32 35, float %866, float %517)  ; FMax(a,b)
  %868 = fsub fast float %465, %505
  %869 = fadd fast float %868, 0x3F1A36E2E0000000
  %870 = call float @dx.op.binary.f32(i32 36, float %869, float %867)  ; FMin(a,b)
  %871 = icmp eq i32 %685, 0
  br i1 %871, label %977, label %872, !dx.controlflow.hints !61

; <label>:872                                     ; preds = %857
  %873 = fcmp fast olt float %869, %867
  %874 = fmul fast float %287, %230
  %875 = fmul fast float %874, %870
  %876 = fadd fast float %875, %504
  %877 = fmul fast float %287, %231
  %878 = fmul fast float %877, %870
  %879 = fadd fast float %878, %504
  %880 = fmul fast float %287, %232
  %881 = fmul fast float %880, %870
  %882 = fadd fast float %881, %504
  br i1 %873, label %883, label %888, !dx.controlflow.hints !62

; <label>:883                                     ; preds = %872
  %884 = fmul fast float %870, %285
  %885 = fmul fast float %870, %286
  %886 = fadd fast float %884, %502
  %887 = fadd fast float %885, %503
  br label %888

; <label>:888                                     ; preds = %883, %872
  %889 = phi float [ %886, %883 ], [ %502, %872 ]
  %890 = phi float [ %887, %883 ], [ %503, %872 ]
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %893 = extractvalue %dx.types.CBufRet.f32 %891, 1
  %894 = fsub fast float %889, %892
  %895 = fsub fast float %890, %893
  %896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %897 = extractvalue %dx.types.CBufRet.f32 %896, 0
  %898 = extractvalue %dx.types.CBufRet.f32 %896, 1
  %899 = fmul fast float %894, %897
  %900 = fmul fast float %895, %898
  %901 = fsub fast float 1.000000e+00, %900
  %902 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.i32 %902, 3
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %911, label %905, !dx.controlflow.hints !49

; <label>:905                                     ; preds = %888
  %906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %899, float %901, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %907 = extractvalue %dx.types.ResRet.f32 %906, 0
  %908 = extractvalue %dx.types.ResRet.f32 %906, 1
  %909 = extractvalue %dx.types.ResRet.f32 %906, 2
  %910 = extractvalue %dx.types.ResRet.f32 %906, 3
  br label %917

; <label>:911                                     ; preds = %888
  %912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %20, float %899, float %901, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %913 = extractvalue %dx.types.ResRet.f32 %912, 0
  %914 = extractvalue %dx.types.ResRet.f32 %912, 1
  %915 = extractvalue %dx.types.ResRet.f32 %912, 2
  %916 = extractvalue %dx.types.ResRet.f32 %912, 3
  br label %917

; <label>:917                                     ; preds = %911, %905
  %918 = phi float [ %907, %905 ], [ %913, %911 ]
  %919 = phi float [ %908, %905 ], [ %914, %911 ]
  %920 = phi float [ %909, %905 ], [ %915, %911 ]
  %921 = phi float [ %910, %905 ], [ %916, %911 ]
  %922 = extractvalue %dx.types.CBufRet.f32 %896, 3
  %923 = fmul fast float %922, %919
  %924 = fmul fast float %923, %918
  %925 = fsub fast float %923, %924
  %926 = fcmp fast ole float %925, 0.000000e+00
  %927 = extractvalue %dx.types.CBufRet.f32 %891, 2
  %928 = fadd fast float %924, %927
  %929 = fmul fast float %922, %920
  %930 = fadd fast float %929, %927
  %931 = fdiv fast float 1.000000e+00, %925
  %932 = select i1 %926, float 1.000000e+06, float %931
  %933 = fsub fast float %876, %928
  %934 = fmul fast float %932, %933
  %935 = call float @dx.op.unary.f32(i32 7, float %934)  ; Saturate(value)
  %936 = extractvalue %dx.types.CBufRet.f32 %896, 2
  %937 = fmul fast float %936, %935
  %938 = fsub fast float %936, %937
  %939 = fcmp fast olt float %876, %930
  %940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %941 = extractvalue %dx.types.CBufRet.f32 %940, 3
  %942 = select i1 %939, float %941, float 1.000000e+00
  %943 = fmul fast float %938, %942
  %944 = fsub fast float %879, %928
  %945 = fmul fast float %932, %944
  %946 = call float @dx.op.unary.f32(i32 7, float %945)  ; Saturate(value)
  %947 = fmul fast float %936, %946
  %948 = fsub fast float %936, %947
  %949 = fcmp fast olt float %879, %930
  %950 = select i1 %949, float %941, float 1.000000e+00
  %951 = fmul fast float %948, %950
  %952 = fadd fast float %951, %943
  %953 = fsub fast float %882, %928
  %954 = fmul fast float %932, %953
  %955 = call float @dx.op.unary.f32(i32 7, float %954)  ; Saturate(value)
  %956 = fmul fast float %936, %955
  %957 = fsub fast float %936, %956
  %958 = fcmp fast olt float %882, %930
  %959 = select i1 %958, float %941, float 1.000000e+00
  %960 = fmul fast float %957, %959
  %961 = fadd fast float %952, %960
  %962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.f32 %962, 2
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 0
  %966 = extractvalue %dx.types.CBufRet.f32 %964, 1
  %967 = extractvalue %dx.types.CBufRet.f32 %964, 2
  %968 = fmul fast float %870, 0x3FD5555560000000
  %969 = fmul fast float %968, %921
  %970 = fmul fast float %969, %963
  %971 = fmul fast float %970, %961
  %972 = extractvalue %dx.types.CBufRet.f32 %940, 0
  %973 = fmul fast float %971, %965
  %974 = fmul fast float %971, %966
  %975 = fmul fast float %971, %967
  %976 = fmul fast float %971, %972
  br label %977

; <label>:977                                     ; preds = %917, %857
  %978 = phi float [ %971, %917 ], [ 0.000000e+00, %857 ]
  %979 = phi float [ %976, %917 ], [ 0.000000e+00, %857 ]
  %980 = phi float [ %973, %917 ], [ 0.000000e+00, %857 ]
  %981 = phi float [ %974, %917 ], [ 0.000000e+00, %857 ]
  %982 = phi float [ %975, %917 ], [ 0.000000e+00, %857 ]
  %983 = icmp eq i32 %858, 0
  br i1 %983, label %1178, label %984, !dx.controlflow.hints !63

; <label>:984                                     ; preds = %977
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 3
  %987 = fmul fast float %986, %505
  %988 = fcmp fast oeq float %987, 0.000000e+00
  br i1 %988, label %1003, label %989, !dx.controlflow.hints !64

; <label>:989                                     ; preds = %984
  %990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %991 = extractvalue %dx.types.CBufRet.f32 %990, 3
  %992 = fmul fast float %991, %987
  %993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %994 = extractvalue %dx.types.CBufRet.f32 %993, 0
  %995 = extractvalue %dx.types.CBufRet.f32 %993, 1
  %996 = extractvalue %dx.types.CBufRet.f32 %993, 2
  %997 = fmul fast float %994, %992
  %998 = fmul fast float %995, %992
  %999 = fmul fast float %996, %992
  %1000 = call float @dx.op.unary.f32(i32 23, float %997)  ; Log(value)
  %1001 = call float @dx.op.unary.f32(i32 23, float %998)  ; Log(value)
  %1002 = call float @dx.op.unary.f32(i32 23, float %999)  ; Log(value)
  br label %1003

; <label>:1003                                    ; preds = %989, %984
  %1004 = phi float [ %1000, %989 ], [ 0.000000e+00, %984 ]
  %1005 = phi float [ %1001, %989 ], [ 0.000000e+00, %984 ]
  %1006 = phi float [ %1002, %989 ], [ 0.000000e+00, %984 ]
  %1007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1008 = extractvalue %dx.types.CBufRet.f32 %1007, 0
  %1009 = extractvalue %dx.types.CBufRet.f32 %1007, 1
  %1010 = extractvalue %dx.types.CBufRet.f32 %1007, 2
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.CBufRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.CBufRet.f32 %1011, 2
  %1015 = fsub fast float %502, %1012
  %1016 = fsub fast float %503, %1013
  %1017 = fsub fast float %504, %1014
  %1018 = fmul fast float %1015, %1008
  %1019 = fmul fast float %1016, %1009
  %1020 = fmul fast float %1017, %1010
  %1021 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.i32 %1021, 0
  %1023 = extractvalue %dx.types.CBufRet.i32 %1021, 1
  %1024 = uitofp i32 %1022 to float
  %1025 = uitofp i32 %1023 to float
  %1026 = fmul fast float %1018, %1024
  %1027 = fmul fast float %1019, %1025
  %1028 = fadd fast float %1026, 5.000000e-01
  %1029 = fadd fast float %1027, 5.000000e-01
  %1030 = call float @dx.op.unary.f32(i32 22, float %1028)  ; Frc(value)
  %1031 = call float @dx.op.unary.f32(i32 22, float %1029)  ; Frc(value)
  %1032 = call float @dx.op.unary.f32(i32 27, float %1028)  ; Round_ni(value)
  %1033 = call float @dx.op.unary.f32(i32 27, float %1029)  ; Round_ni(value)
  %1034 = fadd fast float %1032, 1.000000e+00
  %1035 = fadd fast float %1033, 1.000000e+00
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.CBufRet.f32 %1036, 1
  %1039 = fmul fast float %1037, %1034
  %1040 = fmul fast float %1038, %1035
  %1041 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %19, float %1039, float %1040, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1042 = extractvalue %dx.types.ResRet.f32 %1041, 0
  %1043 = extractvalue %dx.types.ResRet.f32 %1041, 1
  %1044 = extractvalue %dx.types.ResRet.f32 %1041, 2
  %1045 = extractvalue %dx.types.ResRet.f32 %1041, 3
  %1046 = extractvalue %dx.types.CBufRet.i32 %1021, 2
  %1047 = extractvalue %dx.types.CBufRet.f32 %1036, 2
  %1048 = uitofp i32 %1046 to float
  %1049 = fadd fast float %1048, -1.000000e+00
  %1050 = fmul fast float %1049, %1042
  %1051 = fmul fast float %1049, %1043
  %1052 = fmul fast float %1049, %1044
  %1053 = fmul fast float %1049, %1045
  %1054 = fadd fast float %1050, 5.000000e-01
  %1055 = fadd fast float %1051, 5.000000e-01
  %1056 = fadd fast float %1052, 5.000000e-01
  %1057 = fadd fast float %1053, 5.000000e-01
  %1058 = fptoui float %1054 to i32
  %1059 = fptoui float %1055 to i32
  %1060 = fptoui float %1056 to i32
  %1061 = fptoui float %1057 to i32
  %1062 = uitofp i32 %1058 to float
  %1063 = uitofp i32 %1059 to float
  %1064 = uitofp i32 %1060 to float
  %1065 = uitofp i32 %1061 to float
  %1066 = fadd fast float %1062, 5.000000e-01
  %1067 = fadd fast float %1063, 5.000000e-01
  %1068 = fadd fast float %1064, 5.000000e-01
  %1069 = fadd fast float %1065, 5.000000e-01
  %1070 = fmul fast float %1066, %1047
  %1071 = fmul fast float %1067, %1047
  %1072 = fmul fast float %1068, %1047
  %1073 = fmul fast float %1069, %1047
  %1074 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1070, float %1020, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1075 = extractvalue %dx.types.ResRet.f32 %1074, 0
  %1076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1071, float %1020, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1072, float %1020, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 0
  %1080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1073, float %1020, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  %1082 = fsub fast float %1079, %1081
  %1083 = fmul fast float %1082, %1030
  %1084 = fadd fast float %1083, %1081
  %1085 = fsub fast float %1077, %1075
  %1086 = fmul fast float %1085, %1030
  %1087 = fadd fast float %1086, %1075
  %1088 = fsub fast float %1087, %1084
  %1089 = fmul fast float %1088, %1031
  %1090 = fadd fast float %1089, %1084
  %1091 = fcmp fast ogt float %1090, 0.000000e+00
  br i1 %1091, label %1092, label %1160, !dx.controlflow.hints !65

; <label>:1092                                    ; preds = %1003
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 0
  %1095 = extractvalue %dx.types.CBufRet.f32 %1093, 1
  %1096 = extractvalue %dx.types.CBufRet.f32 %1093, 2
  %1097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.f32 %1097, 0
  %1099 = extractvalue %dx.types.CBufRet.f32 %1097, 1
  %1100 = extractvalue %dx.types.CBufRet.f32 %1097, 2
  %1101 = fmul fast float %1016, %1008
  %1102 = fmul fast float %1017, %1008
  %1103 = fadd fast float %1018, %1098
  %1104 = fadd fast float %1101, %1099
  %1105 = fadd fast float %1102, %1100
  %1106 = fmul fast float %1103, %1094
  %1107 = fmul fast float %1104, %1094
  %1108 = fmul fast float %1105, %1094
  %1109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1106, float %1107, float %1108, float undef, i32 0, i32 0, i32 0, float %1004)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1110 = extractvalue %dx.types.ResRet.f32 %1109, 0
  %1111 = fmul fast float %1103, %1095
  %1112 = fmul fast float %1104, %1095
  %1113 = fmul fast float %1105, %1095
  %1114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1111, float %1112, float %1113, float undef, i32 0, i32 0, i32 0, float %1005)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1116 = fmul fast float %1103, %1096
  %1117 = fmul fast float %1104, %1096
  %1118 = fmul fast float %1105, %1096
  %1119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1116, float %1117, float %1118, float undef, i32 0, i32 0, i32 0, float %1006)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1120 = extractvalue %dx.types.ResRet.f32 %1119, 2
  %1121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.f32 %1121, 1
  %1123 = fmul fast float %1115, %1110
  %1124 = fmul fast float %1123, %1120
  %1125 = call float @dx.op.unary.f32(i32 23, float %1124)  ; Log(value)
  %1126 = fmul fast float %1125, %1122
  %1127 = call float @dx.op.unary.f32(i32 21, float %1126)  ; Exp(value)
  %1128 = extractvalue %dx.types.CBufRet.f32 %1121, 2
  %1129 = fmul fast float %1090, %1090
  %1130 = fmul fast float %1129, %1127
  %1131 = fmul fast float %1130, %1128
  %1132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1133 = extractvalue %dx.types.CBufRet.f32 %1132, 3
  %1134 = fmul fast float %1133, %1131
  %1135 = bitcast float %1134 to i32
  %1136 = sitofp i32 %1135 to float
  %1137 = fptosi float %1136 to i32
  %1138 = bitcast i32 %1137 to float
  %1139 = fsub fast float 1.000000e+00, %1131
  %1140 = bitcast float %1139 to i32
  %1141 = sitofp i32 %1140 to float
  %1142 = fptosi float %1141 to i32
  %1143 = bitcast i32 %1142 to float
  %1144 = fadd fast float %1138, %1143
  %1145 = bitcast float %1144 to i32
  %1146 = sub nsw i32 2129859010, %1145
  %1147 = bitcast i32 %1146 to float
  %1148 = fmul fast float %1147, %1138
  %1149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1150 = extractvalue %dx.types.CBufRet.f32 %1149, 2
  %1151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1152 = extractvalue %dx.types.CBufRet.f32 %1151, 0
  %1153 = fmul fast float %1148, %1152
  %1154 = fadd fast float %1153, 1.000000e+00
  %1155 = bitcast float %1154 to i32
  %1156 = sub nsw i32 2129859010, %1155
  %1157 = bitcast i32 %1156 to float
  %1158 = fmul fast float %1148, %1150
  %1159 = fmul fast float %1158, %1157
  br label %1160

; <label>:1160                                    ; preds = %1092, %1003
  %1161 = phi float [ %1159, %1092 ], [ %1090, %1003 ]
  %1162 = fmul fast float %1161, %870
  %1163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1164 = extractvalue %dx.types.CBufRet.f32 %1163, 0
  %1165 = extractvalue %dx.types.CBufRet.f32 %1163, 1
  %1166 = extractvalue %dx.types.CBufRet.f32 %1163, 2
  %1167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1168 = extractvalue %dx.types.CBufRet.f32 %1167, 1
  %1169 = fmul fast float %1164, %1162
  %1170 = fmul fast float %1165, %1162
  %1171 = fmul fast float %1166, %1162
  %1172 = fadd fast float %1169, %980
  %1173 = fadd fast float %1170, %981
  %1174 = fadd fast float %1171, %982
  %1175 = fmul fast float %1168, %1162
  %1176 = fadd fast float %1175, %979
  %1177 = fadd fast float %1162, %978
  br label %1178

; <label>:1178                                    ; preds = %1160, %977
  %1179 = phi float [ %1177, %1160 ], [ %978, %977 ]
  %1180 = phi float [ %1176, %1160 ], [ %979, %977 ]
  %1181 = phi float [ %1172, %1160 ], [ %980, %977 ]
  %1182 = phi float [ %1173, %1160 ], [ %981, %977 ]
  %1183 = phi float [ %1174, %1160 ], [ %982, %977 ]
  br i1 %796, label %1326, label %1184, !dx.controlflow.hints !66

; <label>:1184                                    ; preds = %1178
  %1185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.f32 %1185, 0
  %1187 = extractvalue %dx.types.CBufRet.f32 %1185, 1
  %1188 = extractvalue %dx.types.CBufRet.f32 %1185, 2
  %1189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1190 = extractvalue %dx.types.CBufRet.i32 %1189, 0
  %1191 = icmp ne i32 %1190, 0
  %1192 = zext i1 %1191 to i32
  %1193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.i32 %1193, 0
  %1195 = icmp eq i32 %1194, 0
  br i1 %1195, label %1229, label %1196

; <label>:1196                                    ; preds = %1184
  br label %1197

; <label>:1197                                    ; preds = %1224, %1196
  %1198 = phi i32 [ %1225, %1224 ], [ 0, %1196 ]
  %1199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1198, i32 0)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.f32 %1199, 0
  %1201 = extractvalue %dx.types.ResRet.f32 %1199, 1
  %1202 = extractvalue %dx.types.ResRet.f32 %1199, 2
  %1203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1198, i32 16)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 0
  %1205 = extractvalue %dx.types.ResRet.f32 %1203, 1
  %1206 = extractvalue %dx.types.ResRet.f32 %1203, 2
  %1207 = fsub fast float %1200, %1204
  %1208 = fsub fast float %1201, %1205
  %1209 = fsub fast float %1202, %1206
  %1210 = fadd fast float %1204, %1200
  %1211 = fadd fast float %1205, %1201
  %1212 = fadd fast float %1206, %1202
  %1213 = fcmp fast olt float %502, %1207
  %1214 = fcmp fast olt float %503, %1208
  %1215 = fcmp fast olt float %504, %1209
  %1216 = or i1 %1213, %1214
  %1217 = or i1 %1215, %1216
  %1218 = fcmp fast ogt float %502, %1210
  %1219 = fcmp fast ogt float %503, %1211
  %1220 = fcmp fast ogt float %504, %1212
  %1221 = or i1 %1218, %1219
  %1222 = or i1 %1220, %1221
  %1223 = or i1 %1217, %1222
  br i1 %1223, label %1224, label %1227, !dx.controlflow.hints !67

; <label>:1224                                    ; preds = %1197
  %1225 = add nuw i32 %1198, 1
  %1226 = icmp ult i32 %1225, %1194
  br i1 %1226, label %1197, label %1227

; <label>:1227                                    ; preds = %1224, %1197
  %1228 = phi i32 [ 255, %1224 ], [ %1198, %1197 ]
  br label %1229

; <label>:1229                                    ; preds = %1227, %1184
  %1230 = phi i32 [ 255, %1184 ], [ %1228, %1227 ]
  %1231 = icmp eq i32 %1230, 255
  br i1 %1231, label %1241, label %1232, !dx.controlflow.hints !68

; <label>:1232                                    ; preds = %1229
  %1233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1230, i32 32)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.f32 %1233, 0
  %1235 = extractvalue %dx.types.ResRet.f32 %1233, 1
  %1236 = extractvalue %dx.types.ResRet.f32 %1233, 2
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1230, i32 156)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = icmp ne i32 %1238, 0
  %1240 = zext i1 %1239 to i32
  br label %1241

; <label>:1241                                    ; preds = %1232, %1229
  %1242 = phi float [ %1234, %1232 ], [ %1186, %1229 ]
  %1243 = phi float [ %1235, %1232 ], [ %1187, %1229 ]
  %1244 = phi float [ %1236, %1232 ], [ %1188, %1229 ]
  %1245 = phi i32 [ %1240, %1232 ], [ %1192, %1229 ]
  %1246 = icmp eq i32 %1245, 0
  br i1 %1246, label %1247, label %1316, !dx.controlflow.hints !69

; <label>:1247                                    ; preds = %1241
  %1248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1249 = extractvalue %dx.types.CBufRet.f32 %1248, 3
  %1250 = extractvalue %dx.types.CBufRet.f32 %706, 0
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 2
  %1253 = extractvalue %dx.types.CBufRet.f32 %1251, 3
  br i1 %1231, label %1264, label %1254, !dx.controlflow.hints !70

; <label>:1254                                    ; preds = %1247
  %1255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1230, i32 60)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.f32 %1255, 0
  %1257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1230, i32 64)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.f32 %1257, 0
  %1259 = extractvalue %dx.types.ResRet.f32 %1257, 1
  %1260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1230, i32 72)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.f32 %1260, 0
  %1262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1230, i32 96)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.f32 %1262, 0
  br label %1264

; <label>:1264                                    ; preds = %1254, %1247
  %1265 = phi float [ %1256, %1254 ], [ %709, %1247 ]
  %1266 = phi float [ %1261, %1254 ], [ %707, %1247 ]
  %1267 = phi float [ %1263, %1254 ], [ %1250, %1247 ]
  %1268 = phi float [ %1258, %1254 ], [ %1252, %1247 ]
  %1269 = phi float [ %1259, %1254 ], [ %1253, %1247 ]
  %1270 = call float @dx.op.binary.f32(i32 35, float %790, float 0.000000e+00)  ; FMax(a,b)
  %1271 = call float @dx.op.binary.f32(i32 36, float %1270, float 1.000000e+00)  ; FMin(a,b)
  %1272 = call float @dx.op.unary.f32(i32 24, float %1271)  ; Sqrt(value)
  %1273 = call float @dx.op.binary.f32(i32 35, float %793, float 0x3F847AE140000000)  ; FMax(a,b)
  %1274 = fsub fast float %791, %504
  %1275 = fsub fast float %504, %792
  %1276 = call float @dx.op.binary.f32(i32 36, float %1275, float %1274)  ; FMin(a,b)
  %1277 = fdiv fast float %1276, %1273
  %1278 = call float @dx.op.unary.f32(i32 7, float %1277)  ; Saturate(value)
  %1279 = fsub fast float %504, %1266
  %1280 = fdiv fast float %1279, %1265
  %1281 = call float @dx.op.unary.f32(i32 7, float %1280)  ; Saturate(value)
  %1282 = fsub fast float 1.000000e+00, %1281
  %1283 = fmul float %1278, %1282
  %1284 = fmul float %1283, %1283
  %1285 = fmul fast float %1272, %1249
  %1286 = fmul fast float %1285, %1284
  %1287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1288 = extractvalue %dx.types.CBufRet.f32 %1287, 2
  %1289 = extractvalue %dx.types.CBufRet.f32 %1287, 1
  %1290 = fsub fast float %1286, %1289
  %1291 = fsub fast float %1288, %1289
  %1292 = fdiv fast float %1290, %1291
  %1293 = call float @dx.op.unary.f32(i32 7, float %1292)  ; Saturate(value)
  %1294 = fmul fast float %1293, %1267
  %1295 = fcmp fast ogt float %1269, 0.000000e+00
  br i1 %1295, label %1296, label %1316, !dx.controlflow.hints !71

; <label>:1296                                    ; preds = %1264
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 0
  %1299 = extractvalue %dx.types.CBufRet.f32 %1297, 1
  %1300 = extractvalue %dx.types.CBufRet.f32 %1297, 2
  %1301 = fsub fast float %502, %1298
  %1302 = fsub fast float %503, %1299
  %1303 = fsub fast float %504, %1300
  %1304 = fmul fast float %1301, %1301
  %1305 = fmul fast float %1302, %1302
  %1306 = fadd fast float %1304, %1305
  %1307 = fmul fast float %1303, %1303
  %1308 = fadd fast float %1306, %1307
  %1309 = call float @dx.op.unary.f32(i32 24, float %1308)  ; Sqrt(value)
  %1310 = fsub fast float %1309, %1268
  %1311 = fsub fast float %1269, %1268
  %1312 = fdiv fast float %1310, %1311
  %1313 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  %1314 = fmul fast float %1313, %1313
  %1315 = fmul fast float %1314, %1294
  br label %1316

; <label>:1316                                    ; preds = %1296, %1264, %1241
  %1317 = phi float [ 0.000000e+00, %1241 ], [ %1315, %1296 ], [ %1294, %1264 ]
  %1318 = fmul fast float %1317, %870
  %1319 = fmul fast float %1318, %1242
  %1320 = fmul fast float %1318, %1243
  %1321 = fmul fast float %1318, %1244
  %1322 = fadd fast float %1319, %1181
  %1323 = fadd fast float %1320, %1182
  %1324 = fadd fast float %1321, %1183
  %1325 = fadd fast float %1318, %1179
  br label %1326

; <label>:1326                                    ; preds = %1316, %1178
  %1327 = phi float [ %1325, %1316 ], [ %1179, %1178 ]
  %1328 = phi float [ %1322, %1316 ], [ %1181, %1178 ]
  %1329 = phi float [ %1323, %1316 ], [ %1182, %1178 ]
  %1330 = phi float [ %1324, %1316 ], [ %1183, %1178 ]
  %1331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1332 = extractvalue %dx.types.CBufRet.f32 %1331, 1
  %1333 = fcmp fast ogt float %1327, %1332
  br i1 %1333, label %1334, label %1340, !dx.controlflow.hints !72

; <label>:1334                                    ; preds = %1326
  %1335 = fdiv fast float 1.000000e+00, %1327
  %1336 = fmul fast float %1335, %1328
  %1337 = fmul fast float %1335, %1329
  %1338 = fmul fast float %1335, %1330
  %1339 = fmul fast float %1335, %1180
  br label %1340

; <label>:1340                                    ; preds = %1334, %1326
  %1341 = phi float [ %1339, %1334 ], [ %1180, %1326 ]
  %1342 = phi float [ %1336, %1334 ], [ %1328, %1326 ]
  %1343 = phi float [ %1337, %1334 ], [ %1329, %1326 ]
  %1344 = phi float [ %1338, %1334 ], [ %1330, %1326 ]
  br i1 %1333, label %1347, label %1345, !dx.controlflow.hints !73

; <label>:1345                                    ; preds = %1340
  %1346 = fadd fast float %870, %505
  br label %2051

; <label>:1347                                    ; preds = %1340
  %1348 = fmul fast float %1327, 0xBFF7154760000000
  %1349 = call float @dx.op.unary.f32(i32 21, float %1348)  ; Exp(value)
  %1350 = call float @dx.op.unary.f32(i32 7, float %1349)  ; Saturate(value)
  %1351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1352 = extractvalue %dx.types.CBufRet.f32 %1351, 3
  %1353 = fcmp fast une float %1352, 0.000000e+00
  %1354 = extractvalue %dx.types.CBufRet.f32 %1351, 0
  %1355 = extractvalue %dx.types.CBufRet.f32 %1351, 1
  %1356 = extractvalue %dx.types.CBufRet.f32 %1351, 2
  br i1 %1353, label %1357, label %1379, !dx.controlflow.hints !74

; <label>:1357                                    ; preds = %1347
  %1358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1359 = extractvalue %dx.types.CBufRet.f32 %1358, 0
  %1360 = extractvalue %dx.types.CBufRet.f32 %1358, 1
  %1361 = extractvalue %dx.types.CBufRet.f32 %1358, 2
  %1362 = call float @dx.op.dot3.f32(i32 55, float %1354, float %1355, float %1356, float %285, float %286, float %287)  ; Dot3(ax,ay,az,bx,by,bz)
  %1363 = fcmp fast ogt float %1341, 0.000000e+00
  %1364 = select i1 %1363, float 1.000000e+00, float -1.000000e+00
  %1365 = fmul fast float %1364, 5.000000e-01
  %1366 = fmul fast float %1365, %1362
  %1367 = fmul fast float %1364, %1341
  %1368 = fadd fast float %1366, 4.921875e-01
  %1369 = fadd fast float %1367, -3.125000e-02
  %1370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %20, float %1368, float 0x3FB25F3060000000, float %1369, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1371 = extractvalue %dx.types.ResRet.f32 %1370, 0
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 0
  %1374 = fmul fast float %1371, 0x400921FB60000000
  %1375 = fmul fast float %1374, %1373
  %1376 = fmul fast float %1375, %1359
  %1377 = fmul fast float %1375, %1360
  %1378 = fmul fast float %1375, %1361
  br label %1379

; <label>:1379                                    ; preds = %1357, %1347
  %1380 = phi float [ %1376, %1357 ], [ 0.000000e+00, %1347 ]
  %1381 = phi float [ %1377, %1357 ], [ 0.000000e+00, %1347 ]
  %1382 = phi float [ %1378, %1357 ], [ 0.000000e+00, %1347 ]
  %1383 = fdiv fast float 1.000000e+00, %1354
  %1384 = fdiv fast float 1.000000e+00, %1355
  %1385 = fdiv fast float 1.000000e+00, %1356
  %1386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1387 = extractvalue %dx.types.CBufRet.f32 %1386, 0
  %1388 = fmul fast float %1387, %1354
  %1389 = fmul fast float %1387, %1355
  %1390 = fmul fast float %1387, %1356
  %1391 = fadd fast float %1388, %502
  %1392 = fsub fast float -0.000000e+00, %1391
  %1393 = fadd fast float %1389, %503
  %1394 = fsub fast float -0.000000e+00, %1393
  %1395 = fadd fast float %1390, %504
  br i1 %518, label %1467, label %1396, !dx.controlflow.hints !45

; <label>:1396                                    ; preds = %1379
  %1397 = extractvalue %dx.types.CBufRet.f32 %1386, 1
  %1398 = fcmp fast ogt float %1397, %1387
  br i1 %1398, label %1399, label %1401, !dx.controlflow.hints !46

; <label>:1399                                    ; preds = %1396
  %1400 = fsub fast float %1397, %1387
  br label %1458

; <label>:1401                                    ; preds = %1396
  %1402 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.i32 %1402, 3
  %1404 = icmp eq i32 %1403, 0
  %1405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1406 = extractvalue %dx.types.CBufRet.f32 %1405, 2
  %1407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1408 = extractvalue %dx.types.CBufRet.f32 %1407, 2
  %1409 = fsub fast float %1406, %1395
  %1410 = fadd fast float %1409, %1408
  %1411 = fsub fast float 0xC7EFFFFFE0000000, %1395
  br i1 %1404, label %1421, label %1412, !dx.controlflow.hints !39

; <label>:1412                                    ; preds = %1401
  %1413 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1392, float %1394, float %1410)  ; Dot3(ax,ay,az,bx,by,bz)
  %1414 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1354, float %1355, float %1356)  ; Dot3(ax,ay,az,bx,by,bz)
  %1415 = fdiv fast float 1.000000e+00, %1414
  %1416 = fmul fast float %1415, %1413
  %1417 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1392, float %1394, float %1411)  ; Dot3(ax,ay,az,bx,by,bz)
  %1418 = fmul fast float %1415, %1417
  %1419 = call float @dx.op.binary.f32(i32 36, float %1416, float %1418)  ; FMin(a,b)
  %1420 = call float @dx.op.binary.f32(i32 35, float %1416, float %1418)  ; FMax(a,b)
  br label %1451

; <label>:1421                                    ; preds = %1401
  %1422 = extractvalue %dx.types.CBufRet.f32 %1405, 0
  %1423 = extractvalue %dx.types.CBufRet.f32 %1405, 1
  %1424 = extractvalue %dx.types.CBufRet.f32 %1407, 0
  %1425 = extractvalue %dx.types.CBufRet.f32 %1407, 1
  %1426 = fsub fast float %1422, %1391
  %1427 = fmul fast float %1383, %1426
  %1428 = fadd fast float %1426, %1424
  %1429 = fmul fast float %1428, %1383
  %1430 = call float @dx.op.binary.f32(i32 36, float %1427, float %1429)  ; FMin(a,b)
  %1431 = call float @dx.op.binary.f32(i32 35, float %1427, float %1429)  ; FMax(a,b)
  %1432 = fsub fast float %1423, %1393
  %1433 = fmul fast float %1384, %1432
  %1434 = fadd fast float %1432, %1425
  %1435 = fmul fast float %1434, %1384
  %1436 = call float @dx.op.binary.f32(i32 36, float %1433, float %1435)  ; FMin(a,b)
  %1437 = call float @dx.op.binary.f32(i32 35, float %1430, float %1436)  ; FMax(a,b)
  %1438 = call float @dx.op.binary.f32(i32 35, float %1433, float %1435)  ; FMax(a,b)
  %1439 = call float @dx.op.binary.f32(i32 36, float %1431, float %1438)  ; FMin(a,b)
  %1440 = fmul fast float %1385, %1411
  %1441 = fmul fast float %1385, %1410
  %1442 = call float @dx.op.binary.f32(i32 36, float %1440, float %1441)  ; FMin(a,b)
  %1443 = call float @dx.op.binary.f32(i32 35, float %1437, float %1442)  ; FMax(a,b)
  %1444 = call float @dx.op.binary.f32(i32 35, float %1440, float %1441)  ; FMax(a,b)
  %1445 = call float @dx.op.binary.f32(i32 36, float %1439, float %1444)  ; FMin(a,b)
  %1446 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1443)  ; FMax(a,b)
  %1447 = fcmp fast ult float %1445, %1446
  br i1 %1447, label %1451, label %1448, !dx.controlflow.hints !40

; <label>:1448                                    ; preds = %1421
  %1449 = call float @dx.op.binary.f32(i32 36, float %1443, float %1445)  ; FMin(a,b)
  %1450 = call float @dx.op.binary.f32(i32 35, float %1443, float %1445)  ; FMax(a,b)
  br label %1451

; <label>:1451                                    ; preds = %1448, %1421, %1412
  %1452 = phi float [ %1419, %1412 ], [ %1449, %1448 ], [ 0.000000e+00, %1421 ]
  %1453 = phi float [ %1420, %1412 ], [ %1450, %1448 ], [ 0.000000e+00, %1421 ]
  %1454 = fcmp fast ogt float %1452, 0.000000e+00
  br i1 %1454, label %1458, label %1455, !dx.controlflow.hints !47

; <label>:1455                                    ; preds = %1451
  %1456 = fcmp fast ugt float %1453, 0.000000e+00
  br i1 %1456, label %1457, label %1458, !dx.controlflow.hints !48

; <label>:1457                                    ; preds = %1455
  br label %1458

; <label>:1458                                    ; preds = %1457, %1455, %1451, %1399
  %1459 = phi float [ %1400, %1399 ], [ 0.000000e+00, %1457 ], [ 0x47EFFFFFE0000000, %1455 ], [ %1452, %1451 ]
  %1460 = phi i32 [ %374, %1399 ], [ %374, %1457 ], [ 0, %1455 ], [ %374, %1451 ]
  %1461 = icmp ne i32 %1460, 0
  %1462 = zext i1 %1461 to i32
  %1463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1464 = extractvalue %dx.types.CBufRet.f32 %1463, 2
  %1465 = call float @dx.op.binary.f32(i32 35, float %1459, float %1464)  ; FMax(a,b)
  %1466 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1465)  ; FMin(a,b)
  br label %1467

; <label>:1467                                    ; preds = %1458, %1379
  %1468 = phi float [ %1466, %1458 ], [ 0x47EFFFFFE0000000, %1379 ]
  %1469 = phi i32 [ %1462, %1458 ], [ 0, %1379 ]
  %1470 = fsub fast float %1391, %689
  %1471 = fsub fast float %1393, %690
  %1472 = fmul fast float %1470, %694
  %1473 = fmul fast float %1471, %695
  %1474 = call float @dx.op.binary.f32(i32 36, float %1472, float %1473)  ; FMin(a,b)
  %1475 = fcmp fast olt float %1474, 0.000000e+00
  %1476 = call float @dx.op.binary.f32(i32 35, float %1472, float %1473)  ; FMax(a,b)
  %1477 = fcmp fast ogt float %1476, 1.000000e+00
  %1478 = or i1 %1475, %1477
  %1479 = fcmp fast olt float %1395, %703
  %1480 = or i1 %1478, %1479
  %1481 = fcmp fast ogt float %1395, %710
  %1482 = or i1 %1480, %1481
  %1483 = extractvalue %dx.types.CBufRet.f32 %693, 0
  br i1 %1482, label %1484, label %1512, !dx.controlflow.hints !54

; <label>:1484                                    ; preds = %1467
  %1485 = extractvalue %dx.types.CBufRet.f32 %693, 1
  %1486 = fsub fast float %689, %1391
  %1487 = fmul fast float %1486, %1383
  %1488 = fadd fast float %1486, %1483
  %1489 = fmul fast float %1488, %1383
  %1490 = call float @dx.op.binary.f32(i32 36, float %1487, float %1489)  ; FMin(a,b)
  %1491 = call float @dx.op.binary.f32(i32 35, float %1487, float %1489)  ; FMax(a,b)
  %1492 = fsub fast float %690, %1393
  %1493 = fmul fast float %1492, %1384
  %1494 = fadd fast float %1492, %1485
  %1495 = fmul fast float %1494, %1384
  %1496 = call float @dx.op.binary.f32(i32 36, float %1493, float %1495)  ; FMin(a,b)
  %1497 = call float @dx.op.binary.f32(i32 35, float %1490, float %1496)  ; FMax(a,b)
  %1498 = call float @dx.op.binary.f32(i32 35, float %1493, float %1495)  ; FMax(a,b)
  %1499 = call float @dx.op.binary.f32(i32 36, float %1491, float %1498)  ; FMin(a,b)
  %1500 = fsub fast float %703, %1395
  %1501 = fmul fast float %1500, %1385
  %1502 = fsub fast float %707, %1395
  %1503 = fadd fast float %1502, %709
  %1504 = fmul fast float %1503, %1385
  %1505 = call float @dx.op.binary.f32(i32 36, float %1501, float %1504)  ; FMin(a,b)
  %1506 = call float @dx.op.binary.f32(i32 35, float %1497, float %1505)  ; FMax(a,b)
  %1507 = call float @dx.op.binary.f32(i32 35, float %1501, float %1504)  ; FMax(a,b)
  %1508 = call float @dx.op.binary.f32(i32 36, float %1499, float %1507)  ; FMin(a,b)
  %1509 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1506)  ; FMax(a,b)
  %1510 = fcmp fast oge float %1508, %1509
  %1511 = select i1 %1510, float %1506, float 1.000000e+07
  br label %1527

; <label>:1512                                    ; preds = %1467
  %1513 = fsub fast float 1.000000e+00, %1473
  %1514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %20, float %1472, float %1513, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1515 = extractvalue %dx.types.ResRet.f32 %1514, 0
  %1516 = extractvalue %dx.types.ResRet.f32 %1514, 1
  %1517 = extractvalue %dx.types.ResRet.f32 %1514, 2
  %1518 = extractvalue %dx.types.ResRet.f32 %1514, 3
  %1519 = fmul fast float %1483, 9.765625e-04
  %1520 = fcmp fast oeq float %1515, 0.000000e+00
  %1521 = fcmp ule float %1395, %1517
  %1522 = fcmp uge float %1395, %1516
  %1523 = or i1 %1522, %1521
  %1524 = or i1 %1520, %1523
  %1525 = zext i1 %1524 to i32
  %1526 = xor i32 %1525, 1
  br label %1527

; <label>:1527                                    ; preds = %1512, %1484
  %1528 = phi float [ %1511, %1484 ], [ %1519, %1512 ]
  %1529 = phi float [ %489, %1484 ], [ %1515, %1512 ]
  %1530 = phi float [ %490, %1484 ], [ %1516, %1512 ]
  %1531 = phi float [ %491, %1484 ], [ %1517, %1512 ]
  %1532 = phi float [ %492, %1484 ], [ %1518, %1512 ]
  %1533 = phi i32 [ 0, %1484 ], [ %1526, %1512 ]
  %1534 = icmp eq i32 %1533, 0
  %1535 = call float @dx.op.binary.f32(i32 35, float %1528, float %798)  ; FMax(a,b)
  %1536 = call float @dx.op.binary.f32(i32 36, float %1468, float %1535)  ; FMin(a,b)
  br i1 %801, label %1592, label %1537, !dx.controlflow.hints !58

; <label>:1537                                    ; preds = %1527
  %1538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.f32 %1538, 0
  %1540 = extractvalue %dx.types.CBufRet.f32 %1538, 1
  %1541 = extractvalue %dx.types.CBufRet.f32 %1538, 2
  %1542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.f32 %1542, 0
  %1544 = extractvalue %dx.types.CBufRet.f32 %1542, 1
  %1545 = extractvalue %dx.types.CBufRet.f32 %1542, 2
  %1546 = fsub fast float %1391, %1543
  %1547 = fsub fast float %1393, %1544
  %1548 = fsub fast float %1395, %1545
  %1549 = fmul fast float %1546, %1539
  %1550 = fmul fast float %1547, %1540
  %1551 = fmul fast float %1548, %1541
  %1552 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1553 = extractvalue %dx.types.CBufRet.i32 %1552, 3
  %1554 = icmp eq i32 %1553, 0
  br i1 %1554, label %1558, label %1555, !dx.controlflow.hints !59

; <label>:1555                                    ; preds = %1537
  %1556 = call float @dx.op.unary.f32(i32 22, float %1549)  ; Frc(value)
  %1557 = call float @dx.op.unary.f32(i32 22, float %1550)  ; Frc(value)
  br label %1558

; <label>:1558                                    ; preds = %1555, %1537
  %1559 = phi float [ %1556, %1555 ], [ %1549, %1537 ]
  %1560 = phi float [ %1557, %1555 ], [ %1550, %1537 ]
  %1561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %1559, float %1560, float %1551, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1562 = extractvalue %dx.types.ResRet.f32 %1561, 0
  %1563 = fmul fast float %1562, 2.000000e+00
  %1564 = fadd fast float %1563, -1.000000e+00
  %1565 = extractvalue %dx.types.CBufRet.f32 %1538, 3
  %1566 = fmul fast float %1564, %1565
  %1567 = fcmp fast olt float %1566, 0.000000e+00
  %1568 = fcmp fast oge float %1551, 0.000000e+00
  %1569 = fcmp fast ole float %1551, 1.000000e+00
  br i1 %1554, label %1572, label %1570, !dx.controlflow.hints !60

; <label>:1570                                    ; preds = %1558
  %1571 = and i1 %1568, %1569
  br label %1582

; <label>:1572                                    ; preds = %1558
  %1573 = fcmp fast oge float %1549, 0.000000e+00
  %1574 = fcmp fast oge float %1550, 0.000000e+00
  %1575 = and i1 %1573, %1574
  %1576 = and i1 %1568, %1575
  %1577 = fcmp fast ole float %1549, 1.000000e+00
  %1578 = fcmp fast ole float %1550, 1.000000e+00
  %1579 = and i1 %1577, %1578
  %1580 = and i1 %1569, %1579
  %1581 = and i1 %1576, %1580
  br label %1582

; <label>:1582                                    ; preds = %1572, %1570
  %1583 = phi i1 [ %1571, %1570 ], [ %1581, %1572 ]
  %1584 = and i1 %1567, %1583
  %1585 = call float @dx.op.unary.f32(i32 6, float %1566)  ; FAbs(value)
  %1586 = extractvalue %dx.types.CBufRet.f32 %797, 1
  %1587 = extractvalue %dx.types.CBufRet.f32 %797, 0
  %1588 = call float @dx.op.binary.f32(i32 35, float %1585, float %1587)  ; FMax(a,b)
  %1589 = select i1 %1584, float %1586, float %1588
  %1590 = zext i1 %1584 to i32
  %1591 = call float @dx.op.binary.f32(i32 36, float %1536, float %1589)  ; FMin(a,b)
  br label %1592

; <label>:1592                                    ; preds = %1582, %1527
  %1593 = phi float [ %1591, %1582 ], [ %1536, %1527 ]
  %1594 = phi i32 [ %1590, %1582 ], [ 0, %1527 ]
  %1595 = icmp eq i32 %1469, 0
  br i1 %1595, label %1669, label %1596, !dx.controlflow.hints !61

; <label>:1596                                    ; preds = %1592
  %1597 = fmul fast float %860, %1387
  %1598 = call float @dx.op.unary.f32(i32 23, float %1597)  ; Log(value)
  %1599 = fmul fast float %1598, 0x3FE62E4300000000
  %1600 = call float @dx.op.binary.f32(i32 35, float %1599, float 1.000000e+00)  ; FMax(a,b)
  %1601 = fmul fast float %1600, 0x47EFFFFFE0000000
  %1602 = call float @dx.op.binary.f32(i32 36, float %1601, float %1593)  ; FMin(a,b)
  %1603 = call float @dx.op.binary.f32(i32 35, float %1602, float 0.000000e+00)  ; FMax(a,b)
  %1604 = fcmp fast ogt float %1603, 0x3F1A36E2E0000000
  %1605 = fadd fast float %1388, %1391
  %1606 = fadd fast float %1389, %1393
  %1607 = select i1 %1604, float %1605, float %1391
  %1608 = select i1 %1604, float %1606, float %1393
  %1609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1610 = extractvalue %dx.types.CBufRet.f32 %1609, 0
  %1611 = extractvalue %dx.types.CBufRet.f32 %1609, 1
  %1612 = fsub fast float %1607, %1610
  %1613 = fsub fast float %1608, %1611
  %1614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %1615 = extractvalue %dx.types.CBufRet.f32 %1614, 0
  %1616 = extractvalue %dx.types.CBufRet.f32 %1614, 1
  %1617 = fmul fast float %1612, %1615
  %1618 = fmul fast float %1613, %1616
  %1619 = fsub fast float 1.000000e+00, %1618
  %1620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1621 = extractvalue %dx.types.CBufRet.i32 %1620, 3
  %1622 = icmp eq i32 %1621, 0
  br i1 %1622, label %1629, label %1623, !dx.controlflow.hints !49

; <label>:1623                                    ; preds = %1596
  %1624 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %1617, float %1619, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1625 = extractvalue %dx.types.ResRet.f32 %1624, 0
  %1626 = extractvalue %dx.types.ResRet.f32 %1624, 1
  %1627 = extractvalue %dx.types.ResRet.f32 %1624, 2
  %1628 = extractvalue %dx.types.ResRet.f32 %1624, 3
  br label %1635

; <label>:1629                                    ; preds = %1596
  %1630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %20, float %1617, float %1619, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1631 = extractvalue %dx.types.ResRet.f32 %1630, 0
  %1632 = extractvalue %dx.types.ResRet.f32 %1630, 1
  %1633 = extractvalue %dx.types.ResRet.f32 %1630, 2
  %1634 = extractvalue %dx.types.ResRet.f32 %1630, 3
  br label %1635

; <label>:1635                                    ; preds = %1629, %1623
  %1636 = phi float [ %1625, %1623 ], [ %1631, %1629 ]
  %1637 = phi float [ %1626, %1623 ], [ %1632, %1629 ]
  %1638 = phi float [ %1627, %1623 ], [ %1633, %1629 ]
  %1639 = phi float [ %1628, %1623 ], [ %1634, %1629 ]
  %1640 = extractvalue %dx.types.CBufRet.f32 %1614, 3
  %1641 = fmul fast float %1640, %1637
  %1642 = fmul fast float %1641, %1636
  %1643 = fsub fast float %1641, %1642
  %1644 = fcmp fast ole float %1643, 0.000000e+00
  %1645 = extractvalue %dx.types.CBufRet.f32 %1609, 2
  %1646 = fadd fast float %1642, %1645
  %1647 = fmul fast float %1640, %1638
  %1648 = fadd fast float %1647, %1645
  %1649 = fdiv fast float 1.000000e+00, %1643
  %1650 = select i1 %1644, float 1.000000e+06, float %1649
  %1651 = fsub fast float %1395, %1646
  %1652 = fmul fast float %1650, %1651
  %1653 = call float @dx.op.unary.f32(i32 7, float %1652)  ; Saturate(value)
  %1654 = extractvalue %dx.types.CBufRet.f32 %1614, 2
  %1655 = fmul fast float %1654, %1653
  %1656 = fsub fast float %1654, %1655
  %1657 = fcmp fast olt float %1395, %1648
  %1658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1659 = extractvalue %dx.types.CBufRet.f32 %1658, 3
  %1660 = fmul fast float %1659, 3.000000e+00
  %1661 = select i1 %1657, float %1660, float 3.000000e+00
  %1662 = fmul fast float %1656, %1661
  %1663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1664 = extractvalue %dx.types.CBufRet.f32 %1663, 2
  %1665 = fmul fast float %1387, 0x3FD5555560000000
  %1666 = fmul fast float %1665, %1639
  %1667 = fmul fast float %1666, %1664
  %1668 = fmul fast float %1667, %1662
  br label %1669

; <label>:1669                                    ; preds = %1635, %1592
  %1670 = phi float [ %1668, %1635 ], [ 0.000000e+00, %1592 ]
  %1671 = icmp eq i32 %1594, 0
  br i1 %1671, label %1852, label %1672, !dx.controlflow.hints !63

; <label>:1672                                    ; preds = %1669
  %1673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1674 = extractvalue %dx.types.CBufRet.f32 %1673, 3
  %1675 = fmul fast float %1674, %1387
  %1676 = fcmp fast oeq float %1675, 0.000000e+00
  br i1 %1676, label %1691, label %1677, !dx.controlflow.hints !64

; <label>:1677                                    ; preds = %1672
  %1678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1679 = extractvalue %dx.types.CBufRet.f32 %1678, 3
  %1680 = fmul fast float %1679, %1675
  %1681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1682 = extractvalue %dx.types.CBufRet.f32 %1681, 0
  %1683 = extractvalue %dx.types.CBufRet.f32 %1681, 1
  %1684 = extractvalue %dx.types.CBufRet.f32 %1681, 2
  %1685 = fmul fast float %1682, %1680
  %1686 = fmul fast float %1683, %1680
  %1687 = fmul fast float %1684, %1680
  %1688 = call float @dx.op.unary.f32(i32 23, float %1685)  ; Log(value)
  %1689 = call float @dx.op.unary.f32(i32 23, float %1686)  ; Log(value)
  %1690 = call float @dx.op.unary.f32(i32 23, float %1687)  ; Log(value)
  br label %1691

; <label>:1691                                    ; preds = %1677, %1672
  %1692 = phi float [ %1688, %1677 ], [ 0.000000e+00, %1672 ]
  %1693 = phi float [ %1689, %1677 ], [ 0.000000e+00, %1672 ]
  %1694 = phi float [ %1690, %1677 ], [ 0.000000e+00, %1672 ]
  %1695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1696 = extractvalue %dx.types.CBufRet.f32 %1695, 0
  %1697 = extractvalue %dx.types.CBufRet.f32 %1695, 1
  %1698 = extractvalue %dx.types.CBufRet.f32 %1695, 2
  %1699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1700 = extractvalue %dx.types.CBufRet.f32 %1699, 0
  %1701 = extractvalue %dx.types.CBufRet.f32 %1699, 1
  %1702 = extractvalue %dx.types.CBufRet.f32 %1699, 2
  %1703 = fsub fast float %1391, %1700
  %1704 = fsub fast float %1393, %1701
  %1705 = fsub fast float %1395, %1702
  %1706 = fmul fast float %1703, %1696
  %1707 = fmul fast float %1704, %1697
  %1708 = fmul fast float %1705, %1698
  %1709 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.i32 %1709, 0
  %1711 = extractvalue %dx.types.CBufRet.i32 %1709, 1
  %1712 = uitofp i32 %1710 to float
  %1713 = uitofp i32 %1711 to float
  %1714 = fmul fast float %1706, %1712
  %1715 = fmul fast float %1707, %1713
  %1716 = fadd fast float %1714, 5.000000e-01
  %1717 = fadd fast float %1715, 5.000000e-01
  %1718 = call float @dx.op.unary.f32(i32 22, float %1716)  ; Frc(value)
  %1719 = call float @dx.op.unary.f32(i32 22, float %1717)  ; Frc(value)
  %1720 = call float @dx.op.unary.f32(i32 27, float %1716)  ; Round_ni(value)
  %1721 = call float @dx.op.unary.f32(i32 27, float %1717)  ; Round_ni(value)
  %1722 = fadd fast float %1720, 1.000000e+00
  %1723 = fadd fast float %1721, 1.000000e+00
  %1724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.f32 %1724, 0
  %1726 = extractvalue %dx.types.CBufRet.f32 %1724, 1
  %1727 = fmul fast float %1725, %1722
  %1728 = fmul fast float %1726, %1723
  %1729 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %19, float %1727, float %1728, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1730 = extractvalue %dx.types.ResRet.f32 %1729, 0
  %1731 = extractvalue %dx.types.ResRet.f32 %1729, 1
  %1732 = extractvalue %dx.types.ResRet.f32 %1729, 2
  %1733 = extractvalue %dx.types.ResRet.f32 %1729, 3
  %1734 = extractvalue %dx.types.CBufRet.i32 %1709, 2
  %1735 = extractvalue %dx.types.CBufRet.f32 %1724, 2
  %1736 = uitofp i32 %1734 to float
  %1737 = fadd fast float %1736, -1.000000e+00
  %1738 = fmul fast float %1737, %1730
  %1739 = fmul fast float %1737, %1731
  %1740 = fmul fast float %1737, %1732
  %1741 = fmul fast float %1737, %1733
  %1742 = fadd fast float %1738, 5.000000e-01
  %1743 = fadd fast float %1739, 5.000000e-01
  %1744 = fadd fast float %1740, 5.000000e-01
  %1745 = fadd fast float %1741, 5.000000e-01
  %1746 = fptoui float %1742 to i32
  %1747 = fptoui float %1743 to i32
  %1748 = fptoui float %1744 to i32
  %1749 = fptoui float %1745 to i32
  %1750 = uitofp i32 %1746 to float
  %1751 = uitofp i32 %1747 to float
  %1752 = uitofp i32 %1748 to float
  %1753 = uitofp i32 %1749 to float
  %1754 = fadd fast float %1750, 5.000000e-01
  %1755 = fadd fast float %1751, 5.000000e-01
  %1756 = fadd fast float %1752, 5.000000e-01
  %1757 = fadd fast float %1753, 5.000000e-01
  %1758 = fmul fast float %1754, %1735
  %1759 = fmul fast float %1755, %1735
  %1760 = fmul fast float %1756, %1735
  %1761 = fmul fast float %1757, %1735
  %1762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1758, float %1708, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1763 = extractvalue %dx.types.ResRet.f32 %1762, 0
  %1764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1759, float %1708, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1765 = extractvalue %dx.types.ResRet.f32 %1764, 0
  %1766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1760, float %1708, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1767 = extractvalue %dx.types.ResRet.f32 %1766, 0
  %1768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1761, float %1708, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1769 = extractvalue %dx.types.ResRet.f32 %1768, 0
  %1770 = fsub fast float %1767, %1769
  %1771 = fmul fast float %1770, %1718
  %1772 = fadd fast float %1771, %1769
  %1773 = fsub fast float %1765, %1763
  %1774 = fmul fast float %1773, %1718
  %1775 = fadd fast float %1774, %1763
  %1776 = fsub fast float %1775, %1772
  %1777 = fmul fast float %1776, %1719
  %1778 = fadd fast float %1777, %1772
  %1779 = fcmp fast ogt float %1778, 0.000000e+00
  br i1 %1779, label %1780, label %1848, !dx.controlflow.hints !65

; <label>:1780                                    ; preds = %1691
  %1781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1782 = extractvalue %dx.types.CBufRet.f32 %1781, 0
  %1783 = extractvalue %dx.types.CBufRet.f32 %1781, 1
  %1784 = extractvalue %dx.types.CBufRet.f32 %1781, 2
  %1785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1785, 0
  %1787 = extractvalue %dx.types.CBufRet.f32 %1785, 1
  %1788 = extractvalue %dx.types.CBufRet.f32 %1785, 2
  %1789 = fmul fast float %1704, %1696
  %1790 = fmul fast float %1705, %1696
  %1791 = fadd fast float %1706, %1786
  %1792 = fadd fast float %1789, %1787
  %1793 = fadd fast float %1790, %1788
  %1794 = fmul fast float %1791, %1782
  %1795 = fmul fast float %1792, %1782
  %1796 = fmul fast float %1793, %1782
  %1797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1794, float %1795, float %1796, float undef, i32 0, i32 0, i32 0, float %1692)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1798 = extractvalue %dx.types.ResRet.f32 %1797, 0
  %1799 = fmul fast float %1791, %1783
  %1800 = fmul fast float %1792, %1783
  %1801 = fmul fast float %1793, %1783
  %1802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1799, float %1800, float %1801, float undef, i32 0, i32 0, i32 0, float %1693)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1803 = extractvalue %dx.types.ResRet.f32 %1802, 1
  %1804 = fmul fast float %1791, %1784
  %1805 = fmul fast float %1792, %1784
  %1806 = fmul fast float %1793, %1784
  %1807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1804, float %1805, float %1806, float undef, i32 0, i32 0, i32 0, float %1694)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1808 = extractvalue %dx.types.ResRet.f32 %1807, 2
  %1809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1810 = extractvalue %dx.types.CBufRet.f32 %1809, 1
  %1811 = fmul fast float %1803, %1798
  %1812 = fmul fast float %1811, %1808
  %1813 = call float @dx.op.unary.f32(i32 23, float %1812)  ; Log(value)
  %1814 = fmul fast float %1813, %1810
  %1815 = call float @dx.op.unary.f32(i32 21, float %1814)  ; Exp(value)
  %1816 = extractvalue %dx.types.CBufRet.f32 %1809, 2
  %1817 = fmul fast float %1778, %1778
  %1818 = fmul fast float %1817, %1815
  %1819 = fmul fast float %1818, %1816
  %1820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1821 = extractvalue %dx.types.CBufRet.f32 %1820, 3
  %1822 = fmul fast float %1821, %1819
  %1823 = bitcast float %1822 to i32
  %1824 = sitofp i32 %1823 to float
  %1825 = fptosi float %1824 to i32
  %1826 = bitcast i32 %1825 to float
  %1827 = fsub fast float 1.000000e+00, %1819
  %1828 = bitcast float %1827 to i32
  %1829 = sitofp i32 %1828 to float
  %1830 = fptosi float %1829 to i32
  %1831 = bitcast i32 %1830 to float
  %1832 = fadd fast float %1826, %1831
  %1833 = bitcast float %1832 to i32
  %1834 = sub nsw i32 2129859010, %1833
  %1835 = bitcast i32 %1834 to float
  %1836 = fmul fast float %1835, %1826
  %1837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1838 = extractvalue %dx.types.CBufRet.f32 %1837, 2
  %1839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1840 = extractvalue %dx.types.CBufRet.f32 %1839, 0
  %1841 = fmul fast float %1836, %1840
  %1842 = fadd fast float %1841, 1.000000e+00
  %1843 = bitcast float %1842 to i32
  %1844 = sub nsw i32 2129859010, %1843
  %1845 = bitcast i32 %1844 to float
  %1846 = fmul fast float %1836, %1838
  %1847 = fmul fast float %1846, %1845
  br label %1848

; <label>:1848                                    ; preds = %1780, %1691
  %1849 = phi float [ %1847, %1780 ], [ %1778, %1691 ]
  %1850 = fmul fast float %1849, %1387
  %1851 = fadd fast float %1850, %1670
  br label %1852

; <label>:1852                                    ; preds = %1848, %1669
  %1853 = phi float [ %1851, %1848 ], [ %1670, %1669 ]
  br i1 %1534, label %1979, label %1854, !dx.controlflow.hints !66

; <label>:1854                                    ; preds = %1852
  %1855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1856 = extractvalue %dx.types.CBufRet.i32 %1855, 0
  %1857 = icmp ne i32 %1856, 0
  %1858 = zext i1 %1857 to i32
  %1859 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.i32 %1859, 0
  %1861 = icmp eq i32 %1860, 0
  br i1 %1861, label %1895, label %1862

; <label>:1862                                    ; preds = %1854
  br label %1863

; <label>:1863                                    ; preds = %1890, %1862
  %1864 = phi i32 [ %1891, %1890 ], [ 0, %1862 ]
  %1865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1864, i32 0)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.f32 %1865, 0
  %1867 = extractvalue %dx.types.ResRet.f32 %1865, 1
  %1868 = extractvalue %dx.types.ResRet.f32 %1865, 2
  %1869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1864, i32 16)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.f32 %1869, 0
  %1871 = extractvalue %dx.types.ResRet.f32 %1869, 1
  %1872 = extractvalue %dx.types.ResRet.f32 %1869, 2
  %1873 = fsub fast float %1866, %1870
  %1874 = fsub fast float %1867, %1871
  %1875 = fsub fast float %1868, %1872
  %1876 = fadd fast float %1870, %1866
  %1877 = fadd fast float %1871, %1867
  %1878 = fadd fast float %1872, %1868
  %1879 = fcmp fast olt float %1391, %1873
  %1880 = fcmp fast olt float %1393, %1874
  %1881 = fcmp fast olt float %1395, %1875
  %1882 = or i1 %1879, %1880
  %1883 = or i1 %1881, %1882
  %1884 = fcmp fast ogt float %1391, %1876
  %1885 = fcmp fast ogt float %1393, %1877
  %1886 = fcmp fast ogt float %1395, %1878
  %1887 = or i1 %1884, %1885
  %1888 = or i1 %1886, %1887
  %1889 = or i1 %1883, %1888
  br i1 %1889, label %1890, label %1893, !dx.controlflow.hints !67

; <label>:1890                                    ; preds = %1863
  %1891 = add nuw i32 %1864, 1
  %1892 = icmp ult i32 %1891, %1860
  br i1 %1892, label %1863, label %1893

; <label>:1893                                    ; preds = %1890, %1863
  %1894 = phi i32 [ 255, %1890 ], [ %1864, %1863 ]
  br label %1895

; <label>:1895                                    ; preds = %1893, %1854
  %1896 = phi i32 [ 255, %1854 ], [ %1894, %1893 ]
  %1897 = icmp eq i32 %1896, 255
  br i1 %1897, label %1903, label %1898, !dx.controlflow.hints !68

; <label>:1898                                    ; preds = %1895
  %1899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1896, i32 156)  ; BufferLoad(srv,index,wot)
  %1900 = extractvalue %dx.types.ResRet.i32 %1899, 0
  %1901 = icmp ne i32 %1900, 0
  %1902 = zext i1 %1901 to i32
  br label %1903

; <label>:1903                                    ; preds = %1898, %1895
  %1904 = phi i32 [ %1902, %1898 ], [ %1858, %1895 ]
  %1905 = icmp eq i32 %1904, 0
  br i1 %1905, label %1906, label %1975, !dx.controlflow.hints !69

; <label>:1906                                    ; preds = %1903
  %1907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.f32 %1907, 3
  %1909 = extractvalue %dx.types.CBufRet.f32 %706, 0
  %1910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.f32 %1910, 2
  %1912 = extractvalue %dx.types.CBufRet.f32 %1910, 3
  br i1 %1897, label %1923, label %1913, !dx.controlflow.hints !70

; <label>:1913                                    ; preds = %1906
  %1914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1896, i32 60)  ; BufferLoad(srv,index,wot)
  %1915 = extractvalue %dx.types.ResRet.f32 %1914, 0
  %1916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1896, i32 64)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.f32 %1916, 0
  %1918 = extractvalue %dx.types.ResRet.f32 %1916, 1
  %1919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1896, i32 72)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.f32 %1919, 0
  %1921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1896, i32 96)  ; BufferLoad(srv,index,wot)
  %1922 = extractvalue %dx.types.ResRet.f32 %1921, 0
  br label %1923

; <label>:1923                                    ; preds = %1913, %1906
  %1924 = phi float [ %1915, %1913 ], [ %709, %1906 ]
  %1925 = phi float [ %1920, %1913 ], [ %707, %1906 ]
  %1926 = phi float [ %1922, %1913 ], [ %1909, %1906 ]
  %1927 = phi float [ %1917, %1913 ], [ %1911, %1906 ]
  %1928 = phi float [ %1918, %1913 ], [ %1912, %1906 ]
  %1929 = call float @dx.op.binary.f32(i32 35, float %1529, float 0.000000e+00)  ; FMax(a,b)
  %1930 = call float @dx.op.binary.f32(i32 36, float %1929, float 1.000000e+00)  ; FMin(a,b)
  %1931 = call float @dx.op.unary.f32(i32 24, float %1930)  ; Sqrt(value)
  %1932 = call float @dx.op.binary.f32(i32 35, float %1532, float 0x3F847AE140000000)  ; FMax(a,b)
  %1933 = fsub fast float %1530, %1395
  %1934 = fsub fast float %1395, %1531
  %1935 = call float @dx.op.binary.f32(i32 36, float %1934, float %1933)  ; FMin(a,b)
  %1936 = fdiv fast float %1935, %1932
  %1937 = call float @dx.op.unary.f32(i32 7, float %1936)  ; Saturate(value)
  %1938 = fsub fast float %1395, %1925
  %1939 = fdiv fast float %1938, %1924
  %1940 = call float @dx.op.unary.f32(i32 7, float %1939)  ; Saturate(value)
  %1941 = fsub fast float 1.000000e+00, %1940
  %1942 = fmul float %1937, %1941
  %1943 = fmul float %1942, %1942
  %1944 = fmul fast float %1931, %1908
  %1945 = fmul fast float %1944, %1943
  %1946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1947 = extractvalue %dx.types.CBufRet.f32 %1946, 2
  %1948 = extractvalue %dx.types.CBufRet.f32 %1946, 1
  %1949 = fsub fast float %1945, %1948
  %1950 = fsub fast float %1947, %1948
  %1951 = fdiv fast float %1949, %1950
  %1952 = call float @dx.op.unary.f32(i32 7, float %1951)  ; Saturate(value)
  %1953 = fmul fast float %1952, %1926
  %1954 = fcmp fast ogt float %1928, 0.000000e+00
  br i1 %1954, label %1955, label %1975, !dx.controlflow.hints !71

; <label>:1955                                    ; preds = %1923
  %1956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1957 = extractvalue %dx.types.CBufRet.f32 %1956, 0
  %1958 = extractvalue %dx.types.CBufRet.f32 %1956, 1
  %1959 = extractvalue %dx.types.CBufRet.f32 %1956, 2
  %1960 = fsub fast float %1391, %1957
  %1961 = fsub fast float %1393, %1958
  %1962 = fsub fast float %1395, %1959
  %1963 = fmul fast float %1960, %1960
  %1964 = fmul fast float %1961, %1961
  %1965 = fadd fast float %1963, %1964
  %1966 = fmul fast float %1962, %1962
  %1967 = fadd fast float %1965, %1966
  %1968 = call float @dx.op.unary.f32(i32 24, float %1967)  ; Sqrt(value)
  %1969 = fsub fast float %1968, %1927
  %1970 = fsub fast float %1928, %1927
  %1971 = fdiv fast float %1969, %1970
  %1972 = call float @dx.op.unary.f32(i32 7, float %1971)  ; Saturate(value)
  %1973 = fmul fast float %1972, %1972
  %1974 = fmul fast float %1973, %1953
  br label %1975

; <label>:1975                                    ; preds = %1955, %1923, %1903
  %1976 = phi float [ 0.000000e+00, %1903 ], [ %1974, %1955 ], [ %1953, %1923 ]
  %1977 = fmul fast float %1976, %1387
  %1978 = fadd fast float %1977, %1853
  br label %1979

; <label>:1979                                    ; preds = %1975, %1852
  %1980 = phi float [ %1978, %1975 ], [ %1853, %1852 ]
  %1981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1982 = extractvalue %dx.types.CBufRet.f32 %1981, 3
  %1983 = fmul fast float %1980, 0xBFF7154760000000
  %1984 = fmul fast float %1983, %1982
  %1985 = call float @dx.op.unary.f32(i32 21, float %1984)  ; Exp(value)
  %1986 = call float @dx.op.unary.f32(i32 7, float %1985)  ; Saturate(value)
  %1987 = fmul fast float %1986, %1380
  %1988 = fmul fast float %1986, %1381
  %1989 = fmul fast float %1986, %1382
  %1990 = fadd fast float %1987, %209
  %1991 = fadd fast float %1988, %210
  %1992 = fadd fast float %1989, %211
  %1993 = fsub fast float 1.000000e+00, %1350
  %1994 = fmul fast float %1342, %498
  %1995 = fmul fast float %1994, %1993
  %1996 = fmul fast float %1995, %1990
  %1997 = fmul fast float %1343, %498
  %1998 = fmul fast float %1997, %1993
  %1999 = fmul fast float %1998, %1991
  %2000 = fmul fast float %1344, %498
  %2001 = fmul fast float %2000, %1993
  %2002 = fmul fast float %2001, %1992
  %2003 = fadd fast float %1996, %499
  %2004 = fadd fast float %1999, %500
  %2005 = fadd fast float %2002, %501
  %2006 = fdiv fast float %1327, %870
  %2007 = fadd fast float %870, %505
  %2008 = fmul fast float %505, %505
  %2009 = fmul fast float %2007, %2007
  %2010 = fsub fast float %2008, %2009
  %2011 = fmul fast float %2010, -5.000000e-01
  %2012 = fmul fast float %2011, %2006
  %2013 = fadd fast float %2012, %497
  %2014 = fadd fast float %1327, %508
  %2015 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2016 = extractvalue %dx.types.CBufRet.i32 %2015, 0
  %2017 = icmp eq i32 %2016, 0
  br i1 %2017, label %2044, label %2018, !dx.controlflow.hints !75

; <label>:2018                                    ; preds = %1979
  %2019 = icmp ne i32 %513, 0
  %2020 = zext i1 %2019 to i32
  %2021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2022 = extractvalue %dx.types.CBufRet.f32 %2021, 2
  %2023 = extractvalue %dx.types.CBufRet.f32 %2021, 0
  %2024 = fsub fast float %2007, %2023
  %2025 = fmul fast float %2024, %2022
  %2026 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  %2027 = fadd fast float %2026, -5.000000e-01
  %2028 = fmul fast float %2027, 2.000000e+00
  %2029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2030 = extractvalue %dx.types.CBufRet.f32 %2029, 2
  %2031 = fcmp fast olt float %2028, %2030
  br i1 %2031, label %2032, label %2044, !dx.controlflow.hints !76

; <label>:2032                                    ; preds = %2018
  %2033 = fmul fast float %2028, %2028
  %2034 = fmul fast float %1993, %498
  %2035 = fmul fast float %2028, %2034
  %2036 = fmul fast float %2033, %2034
  %2037 = fmul fast float %2035, %2033
  %2038 = fmul fast float %2033, %2033
  %2039 = fmul fast float %2038, %2034
  %2040 = fadd fast float %2035, %509
  %2041 = fadd fast float %2036, %510
  %2042 = fadd fast float %2037, %511
  %2043 = fadd fast float %2039, %512
  br label %2044

; <label>:2044                                    ; preds = %2032, %2018, %1979
  %2045 = phi float [ %509, %1979 ], [ %2040, %2032 ], [ %509, %2018 ]
  %2046 = phi float [ %510, %1979 ], [ %2041, %2032 ], [ %510, %2018 ]
  %2047 = phi float [ %511, %1979 ], [ %2042, %2032 ], [ %511, %2018 ]
  %2048 = phi float [ %512, %1979 ], [ %2043, %2032 ], [ %512, %2018 ]
  %2049 = phi i32 [ %513, %1979 ], [ 1, %2032 ], [ %2020, %2018 ]
  %2050 = fmul fast float %1350, %498
  br label %2051

; <label>:2051                                    ; preds = %2044, %1345
  %2052 = phi float [ %1346, %1345 ], [ %2007, %2044 ]
  %2053 = phi float [ %489, %1345 ], [ %1529, %2044 ]
  %2054 = phi float [ %490, %1345 ], [ %1530, %2044 ]
  %2055 = phi float [ %491, %1345 ], [ %1531, %2044 ]
  %2056 = phi float [ %492, %1345 ], [ %1532, %2044 ]
  %2057 = phi float [ %497, %1345 ], [ %2013, %2044 ]
  %2058 = phi float [ %498, %1345 ], [ %2050, %2044 ]
  %2059 = phi float [ %499, %1345 ], [ %2003, %2044 ]
  %2060 = phi float [ %500, %1345 ], [ %2004, %2044 ]
  %2061 = phi float [ %501, %1345 ], [ %2005, %2044 ]
  %2062 = phi float [ %508, %1345 ], [ %2014, %2044 ]
  %2063 = phi float [ %509, %1345 ], [ %2045, %2044 ]
  %2064 = phi float [ %510, %1345 ], [ %2046, %2044 ]
  %2065 = phi float [ %511, %1345 ], [ %2047, %2044 ]
  %2066 = phi float [ %512, %1345 ], [ %2048, %2044 ]
  %2067 = phi i32 [ %513, %1345 ], [ %2049, %2044 ]
  %2068 = fmul fast float %870, %285
  %2069 = fmul fast float %870, %286
  %2070 = fmul fast float %870, %287
  %2071 = fadd fast float %2068, %502
  %2072 = fadd fast float %2069, %503
  %2073 = fadd fast float %2070, %504
  %2074 = fcmp fast olt float %2052, %465
  %2075 = extractvalue %dx.types.CBufRet.f32 %1331, 2
  %2076 = fcmp fast olt float %2075, %2058
  %2077 = and i1 %2074, %2076
  br i1 %2077, label %488, label %2078

; <label>:2078                                    ; preds = %2051
  br label %2079

; <label>:2079                                    ; preds = %2078, %437
  %2080 = phi float [ 0.000000e+00, %437 ], [ %2057, %2078 ]
  %2081 = phi float [ 1.000000e+00, %437 ], [ %2058, %2078 ]
  %2082 = phi float [ 0.000000e+00, %437 ], [ %2059, %2078 ]
  %2083 = phi float [ 0.000000e+00, %437 ], [ %2060, %2078 ]
  %2084 = phi float [ 0.000000e+00, %437 ], [ %2061, %2078 ]
  %2085 = phi float [ 0.000000e+00, %437 ], [ %2062, %2078 ]
  %2086 = phi float [ 0.000000e+00, %437 ], [ %2063, %2078 ]
  %2087 = phi float [ 0.000000e+00, %437 ], [ %2064, %2078 ]
  %2088 = phi float [ 0.000000e+00, %437 ], [ %2065, %2078 ]
  %2089 = phi float [ 0.000000e+00, %437 ], [ %2066, %2078 ]
  %2090 = phi i32 [ 0, %437 ], [ %2067, %2078 ]
  %2091 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2092 = extractvalue %dx.types.CBufRet.i32 %2091, 0
  %2093 = icmp eq i32 %2092, 0
  br i1 %2093, label %2135, label %2094, !dx.controlflow.hints !77

; <label>:2094                                    ; preds = %2079
  %2095 = icmp eq i32 %2090, 0
  br i1 %2095, label %2134, label %2096, !dx.controlflow.hints !78

; <label>:2096                                    ; preds = %2094
  %2097 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2098 = extractvalue %dx.types.CBufRet.i32 %2097, 2
  %2099 = icmp eq i32 %2098, 0
  br i1 %2099, label %2106, label %2100, !dx.controlflow.hints !79

; <label>:2100                                    ; preds = %2096
  %2101 = fsub fast float 1.000000e+00, %2081
  %2102 = fdiv fast float %2086, %2101
  %2103 = fdiv fast float %2087, %2101
  %2104 = fdiv fast float %2088, %2101
  %2105 = fdiv fast float %2089, %2101
  br label %2111

; <label>:2106                                    ; preds = %2096
  %2107 = fadd fast float %2086, %2081
  %2108 = fadd fast float %2087, %2081
  %2109 = fadd fast float %2088, %2081
  %2110 = fadd fast float %2089, %2081
  br label %2111

; <label>:2111                                    ; preds = %2106, %2100
  %2112 = phi float [ %2102, %2100 ], [ %2107, %2106 ]
  %2113 = phi float [ %2103, %2100 ], [ %2108, %2106 ]
  %2114 = phi float [ %2104, %2100 ], [ %2109, %2106 ]
  %2115 = phi float [ %2105, %2100 ], [ %2110, %2106 ]
  %2116 = call float @dx.op.binary.f32(i32 35, float %2112, float -1.000000e+00)  ; FMax(a,b)
  %2117 = call float @dx.op.binary.f32(i32 35, float %2113, float -1.000000e+00)  ; FMax(a,b)
  %2118 = call float @dx.op.binary.f32(i32 35, float %2114, float -1.000000e+00)  ; FMax(a,b)
  %2119 = call float @dx.op.binary.f32(i32 35, float %2115, float -1.000000e+00)  ; FMax(a,b)
  %2120 = call float @dx.op.binary.f32(i32 36, float %2116, float 1.000000e+00)  ; FMin(a,b)
  %2121 = call float @dx.op.binary.f32(i32 36, float %2117, float 1.000000e+00)  ; FMin(a,b)
  %2122 = call float @dx.op.binary.f32(i32 36, float %2118, float 1.000000e+00)  ; FMin(a,b)
  %2123 = call float @dx.op.binary.f32(i32 36, float %2119, float 1.000000e+00)  ; FMin(a,b)
  %2124 = fmul fast float %2120, 1.500000e+00
  %2125 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2122, float %2124)  ; FMad(a,b,c)
  %2126 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2121, float 0.000000e+00)  ; FMad(a,b,c)
  %2127 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2123, float %2126)  ; FMad(a,b,c)
  %2128 = fmul fast float %2120, 0x3FEBB67AE0000000
  %2129 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2122, float %2128)  ; FMad(a,b,c)
  %2130 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2121, float 0.000000e+00)  ; FMad(a,b,c)
  %2131 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2123, float %2130)  ; FMad(a,b,c)
  %2132 = fadd fast float %2125, 5.000000e-01
  %2133 = fadd fast float %2129, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %24, i32 %25, i32 0, float %2132, float %2127, float %2133, float %2131, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2135

; <label>:2134                                    ; preds = %2094
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %24, i32 %25, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2135

; <label>:2135                                    ; preds = %2134, %2111, %2079
  %2136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2137 = extractvalue %dx.types.CBufRet.f32 %2136, 2
  %2138 = fsub fast float %2081, %2137
  %2139 = fdiv fast float %2138, %2137
  %2140 = call float @dx.op.unary.f32(i32 7, float %2139)  ; Saturate(value)
  %2141 = fmul fast float %2140, 2.000000e+00
  %2142 = fsub fast float 3.000000e+00, %2141
  %2143 = fmul fast float %2140, %2140
  %2144 = fmul fast float %2143, %2081
  %2145 = fmul fast float %2144, %2142
  %2146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2147 = extractvalue %dx.types.CBufRet.f32 %2146, 0
  %2148 = extractvalue %dx.types.CBufRet.f32 %2146, 1
  %2149 = extractvalue %dx.types.CBufRet.f32 %2146, 2
  %2150 = call float @dx.op.dot3.f32(i32 55, float %285, float %286, float %287, float %2147, float %2148, float %2149)  ; Dot3(ax,ay,az,bx,by,bz)
  %2151 = fmul fast float %2150, %2080
  %2152 = fcmp fast ogt float %2085, 0.000000e+00
  %2153 = fdiv fast float 1.000000e+00, %2085
  %2154 = fmul fast float %2151, %2153
  %2155 = select i1 %2152, float %2154, float %296
  %2156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2157 = extractvalue %dx.types.CBufRet.f32 %2156, 0
  %2158 = extractvalue %dx.types.CBufRet.f32 %2156, 1
  %2159 = extractvalue %dx.types.CBufRet.f32 %2156, 2
  %2160 = fmul fast float %2157, %249
  %2161 = fmul fast float %2158, %249
  %2162 = fmul fast float %2159, %249
  %2163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2164 = extractvalue %dx.types.CBufRet.f32 %2163, 0
  %2165 = extractvalue %dx.types.CBufRet.f32 %2163, 1
  %2166 = extractvalue %dx.types.CBufRet.f32 %2163, 2
  %2167 = fmul fast float %2164, %250
  %2168 = fmul fast float %2165, %250
  %2169 = fmul fast float %2166, %250
  %2170 = fadd fast float %2167, %2160
  %2171 = fadd fast float %2168, %2161
  %2172 = fadd fast float %2169, %2162
  %2173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2174 = extractvalue %dx.types.CBufRet.f32 %2173, 0
  %2175 = extractvalue %dx.types.CBufRet.f32 %2173, 1
  %2176 = extractvalue %dx.types.CBufRet.f32 %2173, 2
  %2177 = fadd fast float %2170, %2174
  %2178 = fadd fast float %2171, %2175
  %2179 = fadd fast float %2172, %2176
  %2180 = fmul fast float %2177, %2155
  %2181 = fmul fast float %2178, %2155
  %2182 = fmul fast float %2179, %2155
  %2183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2184 = extractvalue %dx.types.CBufRet.f32 %2183, 0
  %2185 = extractvalue %dx.types.CBufRet.f32 %2183, 1
  %2186 = extractvalue %dx.types.CBufRet.f32 %2183, 2
  %2187 = extractvalue %dx.types.CBufRet.f32 %2183, 3
  %2188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2189 = extractvalue %dx.types.CBufRet.f32 %2188, 0
  %2190 = extractvalue %dx.types.CBufRet.f32 %2188, 1
  %2191 = extractvalue %dx.types.CBufRet.f32 %2188, 2
  %2192 = extractvalue %dx.types.CBufRet.f32 %2188, 3
  %2193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2194 = extractvalue %dx.types.CBufRet.f32 %2193, 0
  %2195 = extractvalue %dx.types.CBufRet.f32 %2193, 1
  %2196 = extractvalue %dx.types.CBufRet.f32 %2193, 2
  %2197 = extractvalue %dx.types.CBufRet.f32 %2193, 3
  %2198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.f32 %2198, 0
  %2200 = extractvalue %dx.types.CBufRet.f32 %2198, 1
  %2201 = extractvalue %dx.types.CBufRet.f32 %2198, 2
  %2202 = extractvalue %dx.types.CBufRet.f32 %2198, 3
  %2203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2204 = extractvalue %dx.types.CBufRet.f32 %2203, 3
  %2205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2206 = extractvalue %dx.types.CBufRet.f32 %2205, 3
  %2207 = extractvalue %dx.types.CBufRet.f32 %2205, 0
  %2208 = extractvalue %dx.types.CBufRet.f32 %2205, 1
  %2209 = extractvalue %dx.types.CBufRet.f32 %2205, 2
  %2210 = fcmp fast olt float %2209, -5.000000e-01
  %2211 = call float @dx.op.dot3.f32(i32 55, float %2180, float %2181, float %2182, float %2180, float %2181, float %2182)  ; Dot3(ax,ay,az,bx,by,bz)
  %2212 = call float @dx.op.unary.f32(i32 25, float %2211)  ; Rsqrt(value)
  %2213 = fmul fast float %2212, %2211
  %2214 = fmul fast float %2212, %2180
  %2215 = fmul fast float %2212, %2181
  %2216 = fmul fast float %2212, %2182
  %2217 = fadd fast float %2213, %2187
  %2218 = call float @dx.op.dot3.f32(i32 55, float %2214, float %2215, float %2216, float %2184, float %2185, float %2186)  ; Dot3(ax,ay,az,bx,by,bz)
  %2219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2220 = extractvalue %dx.types.CBufRet.i32 %2219, 1
  %2221 = and i32 %2220, 1
  %2222 = icmp ne i32 %2221, 0
  %2223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2224 = extractvalue %dx.types.CBufRet.f32 %2223, 2
  %2225 = fcmp fast ogt float %2224, 0.000000e+00
  %2226 = and i1 %2222, %2225
  br i1 %2226, label %2227, label %2633, !dx.controlflow.hints !80

; <label>:2227                                    ; preds = %2135
  %2228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2229 = extractvalue %dx.types.CBufRet.f32 %2228, 3
  %2230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2231 = extractvalue %dx.types.CBufRet.f32 %2230, 2
  %2232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2233 = extractvalue %dx.types.CBufRet.f32 %2232, 2
  %2234 = fsub fast float %2231, %2233
  %2235 = and i32 %2220, 2
  %2236 = extractvalue %dx.types.CBufRet.i32 %2219, 0
  %2237 = call i32 @dx.op.binary.i32(i32 40, i32 %2236, i32 3)  ; UMin(a,b)
  %2238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2239 = extractvalue %dx.types.CBufRet.f32 %2238, 0
  %2240 = extractvalue %dx.types.CBufRet.f32 %2238, 1
  %2241 = extractvalue %dx.types.CBufRet.f32 %2232, 0
  %2242 = extractvalue %dx.types.CBufRet.f32 %2232, 1
  %2243 = fsub fast float %2239, %2241
  %2244 = fsub fast float %2240, %2242
  %2245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2246 = extractvalue %dx.types.CBufRet.f32 %2245, 0
  %2247 = fcmp fast ogt float %2246, 0.000000e+00
  %2248 = fsub fast float -0.000000e+00, %2243
  %2249 = fsub fast float -0.000000e+00, %2244
  %2250 = call float @dx.op.dot2.f32(i32 54, float %2214, float %2215, float %2214, float %2215)  ; Dot2(ax,ay,bx,by)
  %2251 = call float @dx.op.dot2.f32(i32 54, float %2214, float %2215, float %2248, float %2249)  ; Dot2(ax,ay,bx,by)
  %2252 = fmul fast float %2251, 2.000000e+00
  %2253 = call float @dx.op.dot2.f32(i32 54, float %2248, float %2249, float %2248, float %2249)  ; Dot2(ax,ay,bx,by)
  %2254 = fmul fast float %2246, %2246
  %2255 = fsub fast float %2253, %2254
  %2256 = fmul fast float %2252, %2252
  %2257 = fmul fast float %2250, 4.000000e+00
  %2258 = fmul fast float %2257, %2255
  %2259 = fsub fast float %2256, %2258
  %2260 = fcmp fast ogt float %2259, 0.000000e+00
  br i1 %2260, label %2261, label %2276, !dx.controlflow.hints !81

; <label>:2261                                    ; preds = %2227
  %2262 = fcmp fast ogt float %2252, 0.000000e+00
  %2263 = call float @dx.op.unary.f32(i32 24, float %2259)  ; Sqrt(value)
  %2264 = fsub fast float -0.000000e+00, %2263
  %2265 = select i1 %2262, float %2263, float %2264
  %2266 = fadd fast float %2265, %2252
  %2267 = fmul float %2266, -5.000000e-01
  %2268 = fdiv fast float %2267, %2250
  %2269 = call float @dx.op.binary.f32(i32 35, float %2268, float 0.000000e+00)  ; FMax(a,b)
  %2270 = call float @dx.op.binary.f32(i32 36, float %2213, float %2269)  ; FMin(a,b)
  %2271 = fdiv fast float %2255, %2267
  %2272 = call float @dx.op.binary.f32(i32 35, float %2271, float 0.000000e+00)  ; FMax(a,b)
  %2273 = call float @dx.op.binary.f32(i32 36, float %2213, float %2272)  ; FMin(a,b)
  %2274 = call float @dx.op.binary.f32(i32 36, float %2270, float %2273)  ; FMin(a,b)
  %2275 = call float @dx.op.binary.f32(i32 35, float %2270, float %2273)  ; FMax(a,b)
  br label %2276

; <label>:2276                                    ; preds = %2261, %2227
  %2277 = phi float [ %2275, %2261 ], [ -1.000000e+00, %2227 ]
  %2278 = phi float [ %2274, %2261 ], [ -1.000000e+00, %2227 ]
  %2279 = phi i1 [ true, %2261 ], [ false, %2227 ]
  %2280 = and i1 %2247, %2279
  br i1 %2280, label %2281, label %2283, !dx.controlflow.hints !82

; <label>:2281                                    ; preds = %2276
  %2282 = fcmp fast oeq float %2278, %2277
  br i1 %2282, label %2586, label %2284, !dx.controlflow.hints !83

; <label>:2283                                    ; preds = %2276
  br i1 %2247, label %2586, label %2284, !dx.controlflow.hints !84

; <label>:2284                                    ; preds = %2283, %2281
  %2285 = phi float [ %2213, %2283 ], [ %2277, %2281 ]
  %2286 = phi float [ 0.000000e+00, %2283 ], [ %2278, %2281 ]
  %2287 = icmp ne i32 %2235, 0
  %2288 = fmul fast float %2285, %2216
  %2289 = fadd fast float %2288, %2229
  %2290 = fmul fast float %2289, %2285
  %2291 = select i1 %2287, float 0.000000e+00, float %2290
  %2292 = fcmp fast oeq float %2216, 0.000000e+00
  %2293 = fdiv fast float %2234, %2216
  %2294 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2293)  ; FMax(a,b)
  %2295 = select i1 %2292, float %2285, float %2294
  %2296 = call float @dx.op.binary.f32(i32 36, float %2285, float %2295)  ; FMin(a,b)
  %2297 = fcmp fast ogt float %2216, 0.000000e+00
  %2298 = fcmp fast olt float %2234, 0.000000e+00
  br i1 %2297, label %2299, label %2356, !dx.controlflow.hints !85

; <label>:2299                                    ; preds = %2284
  %2300 = icmp eq i32 %2235, 0
  br i1 %2298, label %2301, label %2345, !dx.controlflow.hints !86

; <label>:2301                                    ; preds = %2299
  %2302 = select i1 %2300, float %2285, float 0.000000e+00
  %2303 = fsub fast float -0.000000e+00, %2302
  %2304 = call float @dx.op.unary.f32(i32 6, float %2303)  ; FAbs(value)
  %2305 = fmul fast float %2302, %2216
  %2306 = fadd fast float %2305, %2229
  %2307 = fmul fast float %2304, %2306
  %2308 = fsub fast float %2291, %2307
  %2309 = fsub fast float %2285, %2304
  %2310 = select i1 %2300, float %2309, float 0.000000e+00
  %2311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2312 = extractvalue %dx.types.CBufRet.f32 %2311, 0
  %2313 = extractvalue %dx.types.CBufRet.f32 %2311, 1
  %2314 = extractvalue %dx.types.CBufRet.f32 %2311, 2
  %2315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2316 = extractvalue %dx.types.CBufRet.f32 %2315, 0
  %2317 = extractvalue %dx.types.CBufRet.f32 %2315, 1
  %2318 = extractvalue %dx.types.CBufRet.f32 %2315, 2
  %2319 = extractvalue %dx.types.CBufRet.f32 %2315, 3
  %2320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2321 = extractvalue %dx.types.CBufRet.f32 %2320, 3
  %2322 = call float @dx.op.binary.f32(i32 36, float %2308, float %2321)  ; FMin(a,b)
  %2323 = fmul fast float %2319, %2310
  %2324 = call float @dx.op.unary.f32(i32 7, float %2323)  ; Saturate(value)
  %2325 = fsub fast float %2316, %2312
  %2326 = fsub fast float %2317, %2313
  %2327 = fsub fast float %2318, %2314
  %2328 = fmul fast float %2324, %2325
  %2329 = fmul fast float %2324, %2326
  %2330 = fmul fast float %2324, %2327
  %2331 = fadd fast float %2328, %2312
  %2332 = fadd fast float %2329, %2313
  %2333 = fadd fast float %2330, %2314
  %2334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2335 = extractvalue %dx.types.CBufRet.f32 %2334, 0
  %2336 = extractvalue %dx.types.CBufRet.f32 %2334, 1
  %2337 = fadd fast float %2336, %2335
  %2338 = call float @dx.op.unary.f32(i32 7, float %2337)  ; Saturate(value)
  %2339 = extractvalue %dx.types.CBufRet.f32 %2334, 2
  %2340 = extractvalue %dx.types.CBufRet.f32 %2334, 3
  %2341 = fadd fast float %2340, %2339
  %2342 = call float @dx.op.unary.f32(i32 7, float %2341)  ; Saturate(value)
  %2343 = fmul fast float %2338, %2322
  %2344 = fmul fast float %2343, %2342
  br label %2586

; <label>:2345                                    ; preds = %2299
  br i1 %2300, label %2346, label %2367, !dx.controlflow.hints !87

; <label>:2346                                    ; preds = %2345
  %2347 = call float @dx.op.binary.f32(i32 36, float %2296, float %2286)  ; FMin(a,b)
  %2348 = fsub fast float %2296, %2347
  %2349 = fsub fast float %2348, %2285
  %2350 = call float @dx.op.unary.f32(i32 6, float %2349)  ; FAbs(value)
  %2351 = fadd fast float %2348, %2285
  %2352 = fmul fast float %2351, %2216
  %2353 = fadd fast float %2352, %2229
  %2354 = fmul fast float %2353, %2350
  %2355 = fsub fast float %2291, %2354
  br label %2367

; <label>:2356                                    ; preds = %2284
  br i1 %2298, label %2357, label %2367, !dx.controlflow.hints !88

; <label>:2357                                    ; preds = %2356
  %2358 = call float @dx.op.binary.f32(i32 35, float %2286, float %2296)  ; FMax(a,b)
  %2359 = icmp eq i32 %2235, 0
  %2360 = select i1 %2359, float %2296, float 0.000000e+00
  %2361 = fsub fast float -0.000000e+00, %2360
  %2362 = call float @dx.op.unary.f32(i32 6, float %2361)  ; FAbs(value)
  %2363 = fmul fast float %2360, %2216
  %2364 = fadd fast float %2363, %2229
  %2365 = fmul fast float %2362, %2364
  %2366 = fsub fast float %2291, %2365
  br label %2367

; <label>:2367                                    ; preds = %2357, %2356, %2346, %2345
  %2368 = phi float [ %2286, %2345 ], [ %2286, %2346 ], [ %2358, %2357 ], [ %2286, %2356 ]
  %2369 = phi float [ 0.000000e+00, %2345 ], [ %2350, %2346 ], [ %2362, %2357 ], [ 0.000000e+00, %2356 ]
  %2370 = phi float [ %2291, %2345 ], [ %2355, %2346 ], [ %2366, %2357 ], [ %2291, %2356 ]
  %2371 = phi float [ %2296, %2345 ], [ %2296, %2346 ], [ %2285, %2357 ], [ %2285, %2356 ]
  %2372 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  store float -1.000000e+00, float* %2372, align 4, !tbaa !89, !noalias !93
  %2373 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 1
  store float -1.000000e+00, float* %2373, align 4, !tbaa !89, !noalias !93
  %2374 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 2
  store float -1.000000e+00, float* %2374, align 4, !tbaa !89, !noalias !93
  %2375 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 0
  store float -1.000000e+00, float* %2375, align 4, !tbaa !89, !noalias !93
  %2376 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 1
  store float -1.000000e+00, float* %2376, align 4, !tbaa !89, !noalias !93
  %2377 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 2
  store float -1.000000e+00, float* %2377, align 4, !tbaa !89, !noalias !93
  %2378 = icmp sgt i32 %2237, 0
  br i1 %2378, label %2379, label %2440

; <label>:2379                                    ; preds = %2367
  br label %2380

; <label>:2380                                    ; preds = %2429, %2379
  %2381 = phi i32 [ %2430, %2429 ], [ 0, %2379 ]
  %2382 = phi i32 [ %2431, %2429 ], [ 0, %2379 ]
  %2383 = add nuw i32 %2382, 171
  %2384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %2383)  ; CBufferLoadLegacy(handle,regIndex)
  %2385 = extractvalue %dx.types.CBufRet.f32 %2384, 0
  %2386 = extractvalue %dx.types.CBufRet.f32 %2384, 1
  %2387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2388 = extractvalue %dx.types.CBufRet.f32 %2387, 0
  %2389 = extractvalue %dx.types.CBufRet.f32 %2387, 1
  %2390 = fsub fast float %2385, %2388
  %2391 = fsub fast float %2386, %2389
  %2392 = extractvalue %dx.types.CBufRet.f32 %2384, 2
  %2393 = fsub fast float -0.000000e+00, %2390
  %2394 = fsub fast float -0.000000e+00, %2391
  %2395 = call float @dx.op.dot2.f32(i32 54, float %2214, float %2215, float %2393, float %2394)  ; Dot2(ax,ay,bx,by)
  %2396 = fmul fast float %2395, 2.000000e+00
  %2397 = call float @dx.op.dot2.f32(i32 54, float %2393, float %2394, float %2393, float %2394)  ; Dot2(ax,ay,bx,by)
  %2398 = fmul fast float %2392, %2392
  %2399 = fsub fast float %2397, %2398
  %2400 = fmul fast float %2396, %2396
  %2401 = fmul fast float %2257, %2399
  %2402 = fsub fast float %2400, %2401
  %2403 = fcmp fast ogt float %2402, 0.000000e+00
  br i1 %2403, label %2404, label %2419, !dx.controlflow.hints !81

; <label>:2404                                    ; preds = %2380
  %2405 = fcmp fast ogt float %2396, 0.000000e+00
  %2406 = call float @dx.op.unary.f32(i32 24, float %2402)  ; Sqrt(value)
  %2407 = fsub fast float -0.000000e+00, %2406
  %2408 = select i1 %2405, float %2406, float %2407
  %2409 = fadd fast float %2408, %2396
  %2410 = fmul float %2409, -5.000000e-01
  %2411 = fdiv fast float %2410, %2250
  %2412 = call float @dx.op.binary.f32(i32 35, float %2411, float 0.000000e+00)  ; FMax(a,b)
  %2413 = call float @dx.op.binary.f32(i32 36, float %2285, float %2412)  ; FMin(a,b)
  %2414 = fdiv fast float %2399, %2410
  %2415 = call float @dx.op.binary.f32(i32 35, float %2414, float 0.000000e+00)  ; FMax(a,b)
  %2416 = call float @dx.op.binary.f32(i32 36, float %2285, float %2415)  ; FMin(a,b)
  %2417 = call float @dx.op.binary.f32(i32 36, float %2413, float %2416)  ; FMin(a,b)
  %2418 = call float @dx.op.binary.f32(i32 35, float %2413, float %2416)  ; FMax(a,b)
  br label %2419

; <label>:2419                                    ; preds = %2404, %2380
  %2420 = phi float [ %2418, %2404 ], [ -1.000000e+00, %2380 ]
  %2421 = phi float [ %2417, %2404 ], [ -1.000000e+00, %2380 ]
  %2422 = phi i1 [ true, %2404 ], [ false, %2380 ]
  br i1 %2422, label %2423, label %2429, !dx.controlflow.hints !104

; <label>:2423                                    ; preds = %2419
  %2424 = call float @dx.op.binary.f32(i32 35, float %2368, float %2421)  ; FMax(a,b)
  %2425 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %2382
  store float %2424, float* %2425, align 4, !tbaa !89, !noalias !93
  %2426 = call float @dx.op.binary.f32(i32 35, float %2368, float %2420)  ; FMax(a,b)
  %2427 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %2382
  store float %2426, float* %2427, align 4, !tbaa !89, !noalias !93
  %2428 = add nsw i32 %2381, 1
  br label %2429

; <label>:2429                                    ; preds = %2423, %2419
  %2430 = phi i32 [ %2428, %2423 ], [ %2381, %2419 ]
  %2431 = add nuw nsw i32 %2382, 1
  %2432 = icmp eq i32 %2431, %2237
  br i1 %2432, label %2433, label %2380

; <label>:2433                                    ; preds = %2429
  %2434 = load float, float* %2374, align 4, !tbaa !89, !alias.scope !105, !noalias !108
  %2435 = load float, float* %2373, align 4, !tbaa !89, !alias.scope !111, !noalias !112
  %2436 = load float, float* %2372, align 4, !tbaa !89, !alias.scope !113, !noalias !114
  %2437 = load float, float* %2377, align 4, !tbaa !89, !alias.scope !115, !noalias !118
  %2438 = load float, float* %2376, align 4, !tbaa !89, !alias.scope !121, !noalias !122
  %2439 = load float, float* %2375, align 4, !tbaa !89, !alias.scope !123, !noalias !124
  br label %2440

; <label>:2440                                    ; preds = %2433, %2367
  %2441 = phi float [ -1.000000e+00, %2367 ], [ %2439, %2433 ]
  %2442 = phi float [ -1.000000e+00, %2367 ], [ %2438, %2433 ]
  %2443 = phi float [ -1.000000e+00, %2367 ], [ %2437, %2433 ]
  %2444 = phi float [ -1.000000e+00, %2367 ], [ %2436, %2433 ]
  %2445 = phi float [ -1.000000e+00, %2367 ], [ %2435, %2433 ]
  %2446 = phi float [ -1.000000e+00, %2367 ], [ %2434, %2433 ]
  %2447 = phi i32 [ 0, %2367 ], [ %2430, %2433 ]
  %2448 = call float @dx.op.binary.f32(i32 36, float %2445, float %2446)  ; FMin(a,b)
  %2449 = call float @dx.op.binary.f32(i32 36, float %2444, float %2448)  ; FMin(a,b)
  %2450 = call float @dx.op.binary.f32(i32 35, float %2444, float %2445)  ; FMax(a,b)
  %2451 = call float @dx.op.binary.f32(i32 36, float %2450, float %2446)  ; FMin(a,b)
  %2452 = call float @dx.op.binary.f32(i32 36, float %2444, float %2445)  ; FMin(a,b)
  %2453 = call float @dx.op.binary.f32(i32 35, float %2452, float %2451)  ; FMax(a,b)
  %2454 = call float @dx.op.binary.f32(i32 35, float %2445, float %2446)  ; FMax(a,b)
  %2455 = call float @dx.op.binary.f32(i32 35, float %2444, float %2454)  ; FMax(a,b)
  store float %2449, float* %2372, align 4, !tbaa !89, !alias.scope !113, !noalias !114
  store float %2453, float* %2373, align 4, !tbaa !89, !alias.scope !111, !noalias !112
  store float %2455, float* %2374, align 4, !tbaa !89, !alias.scope !105, !noalias !108
  %2456 = call float @dx.op.binary.f32(i32 36, float %2442, float %2443)  ; FMin(a,b)
  %2457 = call float @dx.op.binary.f32(i32 36, float %2441, float %2456)  ; FMin(a,b)
  %2458 = call float @dx.op.binary.f32(i32 35, float %2441, float %2442)  ; FMax(a,b)
  %2459 = call float @dx.op.binary.f32(i32 36, float %2458, float %2443)  ; FMin(a,b)
  %2460 = call float @dx.op.binary.f32(i32 36, float %2441, float %2442)  ; FMin(a,b)
  %2461 = call float @dx.op.binary.f32(i32 35, float %2460, float %2459)  ; FMax(a,b)
  %2462 = call float @dx.op.binary.f32(i32 35, float %2442, float %2443)  ; FMax(a,b)
  %2463 = call float @dx.op.binary.f32(i32 35, float %2441, float %2462)  ; FMax(a,b)
  store float %2457, float* %2375, align 4, !tbaa !89, !alias.scope !123, !noalias !124
  store float %2461, float* %2376, align 4, !tbaa !89, !alias.scope !121, !noalias !122
  store float %2463, float* %2377, align 4, !tbaa !89, !alias.scope !115, !noalias !118
  %2464 = sub nsw i32 3, %2447
  %2465 = icmp sgt i32 %2464, 2
  br i1 %2465, label %2466, label %2504, !dx.controlflow.hints !125

; <label>:2466                                    ; preds = %2440
  %2467 = icmp eq i32 %2235, 0
  %2468 = fsub fast float %2285, %2369
  %2469 = select i1 %2467, float %2468, float %2369
  %2470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2471 = extractvalue %dx.types.CBufRet.f32 %2470, 0
  %2472 = extractvalue %dx.types.CBufRet.f32 %2470, 1
  %2473 = extractvalue %dx.types.CBufRet.f32 %2470, 2
  %2474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2475 = extractvalue %dx.types.CBufRet.f32 %2474, 0
  %2476 = extractvalue %dx.types.CBufRet.f32 %2474, 1
  %2477 = extractvalue %dx.types.CBufRet.f32 %2474, 2
  %2478 = extractvalue %dx.types.CBufRet.f32 %2474, 3
  %2479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2480 = extractvalue %dx.types.CBufRet.f32 %2479, 3
  %2481 = call float @dx.op.binary.f32(i32 36, float %2370, float %2480)  ; FMin(a,b)
  %2482 = fmul fast float %2478, %2469
  %2483 = call float @dx.op.unary.f32(i32 7, float %2482)  ; Saturate(value)
  %2484 = fsub fast float %2475, %2471
  %2485 = fsub fast float %2476, %2472
  %2486 = fsub fast float %2477, %2473
  %2487 = fmul fast float %2483, %2484
  %2488 = fmul fast float %2483, %2485
  %2489 = fmul fast float %2483, %2486
  %2490 = fadd fast float %2487, %2471
  %2491 = fadd fast float %2488, %2472
  %2492 = fadd fast float %2489, %2473
  %2493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2494 = extractvalue %dx.types.CBufRet.f32 %2493, 0
  %2495 = extractvalue %dx.types.CBufRet.f32 %2493, 1
  %2496 = fadd fast float %2495, %2494
  %2497 = call float @dx.op.unary.f32(i32 7, float %2496)  ; Saturate(value)
  %2498 = extractvalue %dx.types.CBufRet.f32 %2493, 2
  %2499 = extractvalue %dx.types.CBufRet.f32 %2493, 3
  %2500 = fadd fast float %2499, %2498
  %2501 = call float @dx.op.unary.f32(i32 7, float %2500)  ; Saturate(value)
  %2502 = fmul fast float %2497, %2481
  %2503 = fmul fast float %2502, %2501
  br label %2586

; <label>:2504                                    ; preds = %2440
  %2505 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %2464
  %2506 = load float, float* %2505, align 4, !tbaa !89, !noalias !93
  %2507 = fcmp fast olt float %2506, %2371
  %2508 = icmp sgt i32 %2447, 0
  %2509 = and i1 %2508, %2507
  br i1 %2509, label %2510, label %2547

; <label>:2510                                    ; preds = %2504
  br label %2511

; <label>:2511                                    ; preds = %2540, %2510
  %2512 = phi float [ %2541, %2540 ], [ %2369, %2510 ]
  %2513 = phi float [ %2542, %2540 ], [ %2370, %2510 ]
  %2514 = phi float [ %2522, %2540 ], [ %2506, %2510 ]
  %2515 = phi i32 [ %2519, %2540 ], [ %2464, %2510 ]
  %2516 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %2515
  %2517 = load float, float* %2516, align 4, !tbaa !89, !noalias !93
  %2518 = icmp slt i32 %2515, 2
  %2519 = add nsw i32 %2515, 1
  %2520 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %2519
  %2521 = load float, float* %2520, align 4, !tbaa !89, !noalias !93
  %2522 = select i1 %2518, float %2521, float %2285
  %2523 = call float @dx.op.binary.f32(i32 36, float %2522, float %2517)  ; FMin(a,b)
  %2524 = call float @dx.op.binary.f32(i32 36, float %2371, float %2523)  ; FMin(a,b)
  %2525 = icmp eq i32 %2235, 0
  %2526 = fadd fast float %2524, %2514
  %2527 = fmul fast float %2526, %2216
  %2528 = fadd fast float %2527, %2229
  br i1 %2525, label %2534, label %2529, !dx.controlflow.hints !126

; <label>:2529                                    ; preds = %2511
  %2530 = fsub fast float %2524, %2514
  %2531 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2530)  ; FMax(a,b)
  %2532 = fmul fast float %2531, %2528
  %2533 = fadd fast float %2532, %2513
  br label %2540

; <label>:2534                                    ; preds = %2511
  %2535 = fsub fast float %2514, %2524
  %2536 = call float @dx.op.unary.f32(i32 6, float %2535)  ; FAbs(value)
  %2537 = fadd fast float %2536, %2512
  %2538 = fmul fast float %2536, %2528
  %2539 = fsub fast float %2513, %2538
  br label %2540

; <label>:2540                                    ; preds = %2534, %2529
  %2541 = phi float [ %2531, %2529 ], [ %2537, %2534 ]
  %2542 = phi float [ %2533, %2529 ], [ %2539, %2534 ]
  %2543 = fcmp fast olt float %2522, %2371
  %2544 = icmp slt i32 %2519, 3
  %2545 = and i1 %2544, %2543
  br i1 %2545, label %2511, label %2546

; <label>:2546                                    ; preds = %2540
  br label %2547

; <label>:2547                                    ; preds = %2546, %2504
  %2548 = phi float [ %2369, %2504 ], [ %2541, %2546 ]
  %2549 = phi float [ %2370, %2504 ], [ %2542, %2546 ]
  %2550 = fsub fast float %2285, %2548
  %2551 = select i1 %2287, float %2548, float %2550
  %2552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2553 = extractvalue %dx.types.CBufRet.f32 %2552, 0
  %2554 = extractvalue %dx.types.CBufRet.f32 %2552, 1
  %2555 = extractvalue %dx.types.CBufRet.f32 %2552, 2
  %2556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2557 = extractvalue %dx.types.CBufRet.f32 %2556, 0
  %2558 = extractvalue %dx.types.CBufRet.f32 %2556, 1
  %2559 = extractvalue %dx.types.CBufRet.f32 %2556, 2
  %2560 = extractvalue %dx.types.CBufRet.f32 %2556, 3
  %2561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2562 = extractvalue %dx.types.CBufRet.f32 %2561, 3
  %2563 = call float @dx.op.binary.f32(i32 36, float %2549, float %2562)  ; FMin(a,b)
  %2564 = fmul fast float %2560, %2551
  %2565 = call float @dx.op.unary.f32(i32 7, float %2564)  ; Saturate(value)
  %2566 = fsub fast float %2557, %2553
  %2567 = fsub fast float %2558, %2554
  %2568 = fsub fast float %2559, %2555
  %2569 = fmul fast float %2565, %2566
  %2570 = fmul fast float %2565, %2567
  %2571 = fmul fast float %2565, %2568
  %2572 = fadd fast float %2569, %2553
  %2573 = fadd fast float %2570, %2554
  %2574 = fadd fast float %2571, %2555
  %2575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2576 = extractvalue %dx.types.CBufRet.f32 %2575, 0
  %2577 = extractvalue %dx.types.CBufRet.f32 %2575, 1
  %2578 = fadd fast float %2577, %2576
  %2579 = call float @dx.op.unary.f32(i32 7, float %2578)  ; Saturate(value)
  %2580 = extractvalue %dx.types.CBufRet.f32 %2575, 2
  %2581 = extractvalue %dx.types.CBufRet.f32 %2575, 3
  %2582 = fadd fast float %2581, %2580
  %2583 = call float @dx.op.unary.f32(i32 7, float %2582)  ; Saturate(value)
  %2584 = fmul fast float %2579, %2563
  %2585 = fmul fast float %2584, %2583
  br label %2586

; <label>:2586                                    ; preds = %2547, %2466, %2301, %2283, %2281
  %2587 = phi float [ %2310, %2301 ], [ %2469, %2466 ], [ %2551, %2547 ], [ 0.000000e+00, %2281 ], [ 0.000000e+00, %2283 ]
  %2588 = phi float [ %2344, %2301 ], [ %2503, %2466 ], [ %2585, %2547 ], [ 0.000000e+00, %2281 ], [ 0.000000e+00, %2283 ]
  %2589 = phi float [ %2331, %2301 ], [ %2490, %2466 ], [ %2572, %2547 ], [ 0.000000e+00, %2281 ], [ 0.000000e+00, %2283 ]
  %2590 = phi float [ %2332, %2301 ], [ %2491, %2466 ], [ %2573, %2547 ], [ 0.000000e+00, %2281 ], [ 0.000000e+00, %2283 ]
  %2591 = phi float [ %2333, %2301 ], [ %2492, %2466 ], [ %2574, %2547 ], [ 0.000000e+00, %2281 ], [ 0.000000e+00, %2283 ]
  %2592 = fmul fast float %2224, %2588
  %2593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2594 = extractvalue %dx.types.CBufRet.f32 %2593, 2
  %2595 = fsub fast float %2231, %2594
  %2596 = fcmp fast olt float %2592, -2.000000e+01
  %2597 = call float @dx.op.unary.f32(i32 21, float %2592)  ; Exp(value)
  %2598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2599 = extractvalue %dx.types.CBufRet.f32 %2598, 2
  %2600 = extractvalue %dx.types.CBufRet.f32 %2598, 3
  %2601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2602 = extractvalue %dx.types.CBufRet.f32 %2601, 2
  %2603 = fmul fast float %2600, %2595
  %2604 = call float @dx.op.unary.f32(i32 7, float %2603)  ; Saturate(value)
  %2605 = fsub fast float 1.000000e+00, %2604
  %2606 = fmul fast float %2216, 5.000000e-01
  %2607 = fadd fast float %2606, 5.000000e-01
  %2608 = call float @dx.op.unary.f32(i32 7, float %2607)  ; Saturate(value)
  %2609 = fsub fast float 1.000000e+00, %2608
  %2610 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2605)  ; FMax(a,b)
  %2611 = fdiv fast float %2609, %2610
  %2612 = fsub fast float %2595, %2182
  %2613 = call float @dx.op.unary.f32(i32 6, float %2612)  ; FAbs(value)
  %2614 = fmul fast float %2613, %2599
  %2615 = call float @dx.op.unary.f32(i32 7, float %2611)  ; Saturate(value)
  %2616 = fsub fast float 1.000000e+00, %2614
  %2617 = fmul fast float %2616, %2615
  %2618 = fadd fast float %2617, %2614
  %2619 = fmul fast float %2602, %2595
  %2620 = call float @dx.op.unary.f32(i32 7, float %2619)  ; Saturate(value)
  %2621 = fsub fast float 1.000000e+00, %2618
  %2622 = fmul fast float %2621, %2620
  %2623 = fadd fast float %2622, %2618
  %2624 = call float @dx.op.unary.f32(i32 7, float %2623)  ; Saturate(value)
  %2625 = fadd fast float %2597, -1.000000e+00
  %2626 = select i1 %2596, float -1.000000e+00, float %2625
  %2627 = fmul fast float %2624, %2626
  %2628 = fadd fast float %2627, 1.000000e+00
  %2629 = fsub fast float -0.000000e+00, %2627
  %2630 = fmul fast float %2589, %2629
  %2631 = fmul fast float %2590, %2629
  %2632 = fmul fast float %2591, %2629
  br label %2633

; <label>:2633                                    ; preds = %2586, %2135
  %2634 = phi float [ %2587, %2586 ], [ 0.000000e+00, %2135 ]
  %2635 = phi float [ %2628, %2586 ], [ 1.000000e+00, %2135 ]
  %2636 = phi float [ %2630, %2586 ], [ 0.000000e+00, %2135 ]
  %2637 = phi float [ %2631, %2586 ], [ 0.000000e+00, %2135 ]
  %2638 = phi float [ %2632, %2586 ], [ 0.000000e+00, %2135 ]
  %2639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2640 = extractvalue %dx.types.CBufRet.f32 %2639, 1
  %2641 = fsub fast float 1.000000e+00, %2635
  %2642 = fmul fast float %2641, %2217
  %2643 = fmul fast float %2642, %2640
  %2644 = fsub fast float %2217, %2643
  br i1 %2210, label %2645, label %2674, !dx.controlflow.hints !127

; <label>:2645                                    ; preds = %2633
  %2646 = fmul fast float %2218, %2207
  %2647 = fadd fast float %2646, %2208
  %2648 = call float @dx.op.unary.f32(i32 7, float %2647)  ; Saturate(value)
  %2649 = fmul fast float %2189, %2644
  %2650 = fsub fast float -0.000000e+00, %2649
  %2651 = fmul fast float %2190, %2644
  %2652 = fsub fast float -0.000000e+00, %2651
  %2653 = call float @dx.op.unary.f32(i32 21, float %2650)  ; Exp(value)
  %2654 = call float @dx.op.unary.f32(i32 21, float %2652)  ; Exp(value)
  %2655 = call float @dx.op.binary.f32(i32 35, float %2197, float %2653)  ; FMax(a,b)
  %2656 = call float @dx.op.binary.f32(i32 35, float %2197, float %2654)  ; FMax(a,b)
  %2657 = fsub fast float %2656, %2655
  %2658 = fmul fast float %2657, %2648
  %2659 = fadd fast float %2658, %2655
  %2660 = call float @dx.op.unary.f32(i32 7, float %2659)  ; Saturate(value)
  %2661 = fsub fast float %2194, %2199
  %2662 = fsub fast float %2195, %2200
  %2663 = fsub fast float %2196, %2201
  %2664 = fmul fast float %2648, %2661
  %2665 = fmul fast float %2648, %2662
  %2666 = fmul fast float %2648, %2663
  %2667 = fadd fast float %2664, %2199
  %2668 = fadd fast float %2665, %2200
  %2669 = fadd fast float %2666, %2201
  %2670 = fsub fast float 1.000000e+00, %2660
  %2671 = fmul fast float %2670, %2667
  %2672 = fmul fast float %2670, %2668
  %2673 = fmul fast float %2670, %2669
  br label %2733

; <label>:2674                                    ; preds = %2633
  %2675 = fmul fast float %2644, %2206
  %2676 = call float @dx.op.unary.f32(i32 7, float %2675)  ; Saturate(value)
  %2677 = fsub fast float 2.000000e+00, %2676
  %2678 = fmul fast float %2676, 9.921875e-01
  %2679 = fmul fast float %2678, %2677
  %2680 = fadd fast float %2679, 3.906250e-03
  %2681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %20, float %2680, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2682 = extractvalue %dx.types.ResRet.f32 %2681, 0
  %2683 = fsub fast float %2676, %2682
  %2684 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2683)  ; FMax(a,b)
  %2685 = fmul fast float %2192, %2182
  %2686 = call float @dx.op.unary.f32(i32 6, float %2685)  ; FAbs(value)
  %2687 = fcmp fast ogt float %2686, 0x3EB0C6F7A0000000
  br i1 %2687, label %2688, label %2694, !dx.controlflow.hints !128

; <label>:2688                                    ; preds = %2674
  %2689 = fmul fast float %2685, 0xBFF7154760000000
  %2690 = call float @dx.op.unary.f32(i32 21, float %2689)  ; Exp(value)
  %2691 = fsub fast float 1.000000e+00, %2690
  %2692 = fdiv fast float %2691, %2685
  %2693 = fmul fast float %2692, %2202
  br label %2694

; <label>:2694                                    ; preds = %2688, %2674
  %2695 = phi float [ %2693, %2688 ], [ %2202, %2674 ]
  %2696 = fadd fast float %2695, %2204
  %2697 = fmul fast float %2696, %2684
  %2698 = fmul fast float %2189, %2697
  %2699 = fsub fast float -0.000000e+00, %2698
  %2700 = fmul fast float %2190, %2697
  %2701 = fsub fast float -0.000000e+00, %2700
  %2702 = fmul fast float %2191, %2697
  %2703 = fsub fast float -0.000000e+00, %2702
  %2704 = call float @dx.op.unary.f32(i32 21, float %2699)  ; Exp(value)
  %2705 = call float @dx.op.unary.f32(i32 21, float %2701)  ; Exp(value)
  %2706 = call float @dx.op.unary.f32(i32 21, float %2703)  ; Exp(value)
  %2707 = fmul fast float %2218, %2218
  %2708 = fadd fast float %2707, 1.000000e+00
  %2709 = fmul fast float %2708, 0x3FAE8EC8A0000000
  %2710 = fmul fast float %2709, %2199
  %2711 = fmul fast float %2709, %2200
  %2712 = fmul fast float %2709, %2201
  %2713 = fmul fast float %2218, %2197
  %2714 = fsub fast float 1.000000e+00, %2713
  %2715 = fmul fast float %2197, %2197
  %2716 = fsub fast float 1.000000e+00, %2715
  %2717 = fmul fast float %2716, 0x3FB45F3060000000
  %2718 = fmul fast float %2714, %2714
  %2719 = fdiv fast float 1.000000e+00, %2718
  %2720 = fmul fast float %2717, %2719
  %2721 = fmul fast float %2720, %2194
  %2722 = fmul fast float %2720, %2195
  %2723 = fmul fast float %2720, %2196
  %2724 = fadd fast float %2721, %2710
  %2725 = fadd fast float %2722, %2711
  %2726 = fadd fast float %2723, %2712
  %2727 = fsub fast float 1.000000e+00, %2704
  %2728 = fsub fast float 1.000000e+00, %2705
  %2729 = fsub fast float 1.000000e+00, %2706
  %2730 = fmul fast float %2724, %2727
  %2731 = fmul fast float %2725, %2728
  %2732 = fmul fast float %2726, %2729
  br label %2733

; <label>:2733                                    ; preds = %2694, %2645
  %2734 = phi float [ %2671, %2645 ], [ %2730, %2694 ]
  %2735 = phi float [ %2672, %2645 ], [ %2731, %2694 ]
  %2736 = phi float [ %2673, %2645 ], [ %2732, %2694 ]
  %2737 = phi float [ %2660, %2645 ], [ %2704, %2694 ]
  %2738 = phi float [ %2660, %2645 ], [ %2705, %2694 ]
  %2739 = phi float [ %2660, %2645 ], [ %2706, %2694 ]
  br i1 %2226, label %2740, label %2938, !dx.controlflow.hints !129

; <label>:2740                                    ; preds = %2733
  %2741 = extractvalue %dx.types.CBufRet.f32 %2639, 0
  %2742 = fmul fast float %2741, %2641
  %2743 = fsub fast float %2636, %2734
  %2744 = fsub fast float %2637, %2735
  %2745 = fsub fast float %2638, %2736
  %2746 = fmul fast float %2742, %2743
  %2747 = fmul fast float %2742, %2744
  %2748 = fmul fast float %2742, %2745
  %2749 = fadd fast float %2746, %2734
  %2750 = fadd fast float %2747, %2735
  %2751 = fadd fast float %2748, %2736
  %2752 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2737)  ; FMax(a,b)
  %2753 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2738)  ; FMax(a,b)
  %2754 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2739)  ; FMax(a,b)
  %2755 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2635)  ; FMax(a,b)
  %2756 = call float @dx.op.binary.f32(i32 35, float %2634, float %2644)  ; FMax(a,b)
  %2757 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2756)  ; FMax(a,b)
  %2758 = fdiv fast float %2634, %2757
  %2759 = call float @dx.op.unary.f32(i32 7, float %2758)  ; Saturate(value)
  %2760 = fdiv fast float %2644, %2757
  %2761 = call float @dx.op.unary.f32(i32 7, float %2760)  ; Saturate(value)
  %2762 = fcmp fast une float %2755, 1.000000e+00
  br i1 %2762, label %2763, label %2776, !dx.controlflow.hints !130

; <label>:2763                                    ; preds = %2740
  %2764 = call float @dx.op.unary.f32(i32 23, float %2755)  ; Log(value)
  %2765 = fmul fast float %2764, 0x3FE62E4300000000
  %2766 = fmul fast float %2636, %2765
  %2767 = fsub fast float -0.000000e+00, %2766
  %2768 = fmul fast float %2637, %2765
  %2769 = fsub fast float -0.000000e+00, %2768
  %2770 = fmul fast float %2638, %2765
  %2771 = fsub fast float -0.000000e+00, %2770
  %2772 = fsub fast float 1.000000e+00, %2755
  %2773 = fdiv fast float %2767, %2772
  %2774 = fdiv fast float %2769, %2772
  %2775 = fdiv fast float %2771, %2772
  br label %2776

; <label>:2776                                    ; preds = %2763, %2740
  %2777 = phi float [ %2773, %2763 ], [ %2636, %2740 ]
  %2778 = phi float [ %2774, %2763 ], [ %2637, %2740 ]
  %2779 = phi float [ %2775, %2763 ], [ %2638, %2740 ]
  %2780 = phi float [ %2765, %2763 ], [ 0.000000e+00, %2740 ]
  %2781 = fcmp fast une float %2752, 1.000000e+00
  br i1 %2781, label %2782, label %2789, !dx.controlflow.hints !131

; <label>:2782                                    ; preds = %2776
  %2783 = call float @dx.op.unary.f32(i32 23, float %2752)  ; Log(value)
  %2784 = fmul fast float %2783, 0x3FE62E4300000000
  %2785 = fmul fast float %2749, %2784
  %2786 = fsub fast float -0.000000e+00, %2785
  %2787 = fsub fast float 1.000000e+00, %2752
  %2788 = fdiv fast float %2786, %2787
  br label %2789

; <label>:2789                                    ; preds = %2782, %2776
  %2790 = phi float [ %2788, %2782 ], [ %2749, %2776 ]
  %2791 = phi float [ %2784, %2782 ], [ 0.000000e+00, %2776 ]
  %2792 = fcmp fast une float %2753, 1.000000e+00
  br i1 %2792, label %2793, label %2800, !dx.controlflow.hints !131

; <label>:2793                                    ; preds = %2789
  %2794 = call float @dx.op.unary.f32(i32 23, float %2753)  ; Log(value)
  %2795 = fmul fast float %2794, 0x3FE62E4300000000
  %2796 = fmul fast float %2750, %2795
  %2797 = fsub fast float -0.000000e+00, %2796
  %2798 = fsub fast float 1.000000e+00, %2753
  %2799 = fdiv fast float %2797, %2798
  br label %2800

; <label>:2800                                    ; preds = %2793, %2789
  %2801 = phi float [ %2799, %2793 ], [ %2750, %2789 ]
  %2802 = phi float [ %2795, %2793 ], [ 0.000000e+00, %2789 ]
  %2803 = fcmp fast une float %2754, 1.000000e+00
  br i1 %2803, label %2804, label %2811, !dx.controlflow.hints !131

; <label>:2804                                    ; preds = %2800
  %2805 = call float @dx.op.unary.f32(i32 23, float %2754)  ; Log(value)
  %2806 = fmul fast float %2805, 0x3FE62E4300000000
  %2807 = fmul fast float %2751, %2806
  %2808 = fsub fast float -0.000000e+00, %2807
  %2809 = fsub fast float 1.000000e+00, %2754
  %2810 = fdiv fast float %2808, %2809
  br label %2811

; <label>:2811                                    ; preds = %2804, %2800
  %2812 = phi float [ %2810, %2804 ], [ %2751, %2800 ]
  %2813 = phi float [ %2806, %2804 ], [ 0.000000e+00, %2800 ]
  %2814 = fmul fast float %2777, %2761
  %2815 = fmul fast float %2778, %2761
  %2816 = fmul fast float %2779, %2761
  %2817 = fmul fast float %2780, %2761
  %2818 = fmul fast float %2790, %2759
  %2819 = fmul fast float %2801, %2759
  %2820 = fmul fast float %2812, %2759
  %2821 = fmul fast float %2791, %2759
  %2822 = fmul fast float %2802, %2759
  %2823 = fmul fast float %2813, %2759
  %2824 = fadd fast float %2818, %2814
  %2825 = fadd fast float %2819, %2815
  %2826 = fadd fast float %2820, %2816
  %2827 = fadd fast float %2821, %2817
  %2828 = fadd fast float %2822, %2817
  %2829 = fadd fast float %2823, %2817
  %2830 = fcmp fast une float %2827, 0.000000e+00
  br i1 %2830, label %2831, label %2838, !dx.controlflow.hints !132

; <label>:2831                                    ; preds = %2811
  %2832 = fmul fast float %2827, 0x3FF7154760000000
  %2833 = call float @dx.op.unary.f32(i32 21, float %2832)  ; Exp(value)
  %2834 = fsub fast float 1.000000e+00, %2833
  %2835 = fmul fast float %2824, %2834
  %2836 = fsub fast float -0.000000e+00, %2835
  %2837 = fdiv fast float %2836, %2827
  br label %2838

; <label>:2838                                    ; preds = %2831, %2811
  %2839 = phi float [ %2833, %2831 ], [ 1.000000e+00, %2811 ]
  %2840 = phi float [ %2837, %2831 ], [ %2824, %2811 ]
  %2841 = fcmp fast une float %2828, 0.000000e+00
  br i1 %2841, label %2842, label %2849, !dx.controlflow.hints !132

; <label>:2842                                    ; preds = %2838
  %2843 = fmul fast float %2828, 0x3FF7154760000000
  %2844 = call float @dx.op.unary.f32(i32 21, float %2843)  ; Exp(value)
  %2845 = fsub fast float 1.000000e+00, %2844
  %2846 = fmul fast float %2825, %2845
  %2847 = fsub fast float -0.000000e+00, %2846
  %2848 = fdiv fast float %2847, %2828
  br label %2849

; <label>:2849                                    ; preds = %2842, %2838
  %2850 = phi float [ %2844, %2842 ], [ 1.000000e+00, %2838 ]
  %2851 = phi float [ %2848, %2842 ], [ %2825, %2838 ]
  %2852 = fcmp fast une float %2829, 0.000000e+00
  br i1 %2852, label %2853, label %2860, !dx.controlflow.hints !132

; <label>:2853                                    ; preds = %2849
  %2854 = fmul fast float %2829, 0x3FF7154760000000
  %2855 = call float @dx.op.unary.f32(i32 21, float %2854)  ; Exp(value)
  %2856 = fsub fast float 1.000000e+00, %2855
  %2857 = fmul fast float %2826, %2856
  %2858 = fsub fast float -0.000000e+00, %2857
  %2859 = fdiv fast float %2858, %2829
  br label %2860

; <label>:2860                                    ; preds = %2853, %2849
  %2861 = phi float [ %2855, %2853 ], [ 1.000000e+00, %2849 ]
  %2862 = phi float [ %2859, %2853 ], [ %2826, %2849 ]
  %2863 = fcmp fast ogt float %2759, %2761
  br i1 %2863, label %2864, label %2884, !dx.controlflow.hints !133

; <label>:2864                                    ; preds = %2860
  %2865 = fsub fast float 1.000000e+00, %2761
  %2866 = fmul fast float %2777, %2865
  %2867 = fmul fast float %2778, %2865
  %2868 = fmul fast float %2779, %2865
  %2869 = fmul fast float %2780, %2865
  %2870 = fcmp fast une float %2869, 0.000000e+00
  br i1 %2870, label %2871, label %2922, !dx.controlflow.hints !134

; <label>:2871                                    ; preds = %2864
  %2872 = fmul fast float %2869, 0x3FF7154760000000
  %2873 = call float @dx.op.unary.f32(i32 21, float %2872)  ; Exp(value)
  %2874 = fsub fast float 1.000000e+00, %2873
  %2875 = fmul fast float %2866, %2874
  %2876 = fsub fast float -0.000000e+00, %2875
  %2877 = fmul fast float %2867, %2874
  %2878 = fsub fast float -0.000000e+00, %2877
  %2879 = fmul fast float %2868, %2874
  %2880 = fsub fast float -0.000000e+00, %2879
  %2881 = fdiv fast float %2876, %2869
  %2882 = fdiv fast float %2878, %2869
  %2883 = fdiv fast float %2880, %2869
  br label %2922

; <label>:2884                                    ; preds = %2860
  %2885 = fsub fast float 1.000000e+00, %2759
  %2886 = fmul fast float %2790, %2885
  %2887 = fmul fast float %2801, %2885
  %2888 = fmul fast float %2812, %2885
  %2889 = fmul fast float %2791, %2885
  %2890 = fmul fast float %2802, %2885
  %2891 = fmul fast float %2813, %2885
  %2892 = fcmp fast une float %2889, 0.000000e+00
  br i1 %2892, label %2893, label %2900, !dx.controlflow.hints !132

; <label>:2893                                    ; preds = %2884
  %2894 = fmul fast float %2889, 0x3FF7154760000000
  %2895 = call float @dx.op.unary.f32(i32 21, float %2894)  ; Exp(value)
  %2896 = fsub fast float 1.000000e+00, %2895
  %2897 = fmul fast float %2886, %2896
  %2898 = fsub fast float -0.000000e+00, %2897
  %2899 = fdiv fast float %2898, %2889
  br label %2900

; <label>:2900                                    ; preds = %2893, %2884
  %2901 = phi float [ %2899, %2893 ], [ %2886, %2884 ]
  %2902 = phi float [ %2895, %2893 ], [ 1.000000e+00, %2884 ]
  %2903 = fcmp fast une float %2890, 0.000000e+00
  br i1 %2903, label %2904, label %2911, !dx.controlflow.hints !132

; <label>:2904                                    ; preds = %2900
  %2905 = fmul fast float %2890, 0x3FF7154760000000
  %2906 = call float @dx.op.unary.f32(i32 21, float %2905)  ; Exp(value)
  %2907 = fsub fast float 1.000000e+00, %2906
  %2908 = fmul fast float %2887, %2907
  %2909 = fsub fast float -0.000000e+00, %2908
  %2910 = fdiv fast float %2909, %2890
  br label %2911

; <label>:2911                                    ; preds = %2904, %2900
  %2912 = phi float [ %2910, %2904 ], [ %2887, %2900 ]
  %2913 = phi float [ %2906, %2904 ], [ 1.000000e+00, %2900 ]
  %2914 = fcmp fast une float %2891, 0.000000e+00
  br i1 %2914, label %2915, label %2922, !dx.controlflow.hints !132

; <label>:2915                                    ; preds = %2911
  %2916 = fmul fast float %2891, 0x3FF7154760000000
  %2917 = call float @dx.op.unary.f32(i32 21, float %2916)  ; Exp(value)
  %2918 = fsub fast float 1.000000e+00, %2917
  %2919 = fmul fast float %2888, %2918
  %2920 = fsub fast float -0.000000e+00, %2919
  %2921 = fdiv fast float %2920, %2891
  br label %2922

; <label>:2922                                    ; preds = %2915, %2911, %2871, %2864
  %2923 = phi float [ %2921, %2915 ], [ %2883, %2871 ], [ %2868, %2864 ], [ %2888, %2911 ]
  %2924 = phi float [ %2912, %2915 ], [ %2882, %2871 ], [ %2867, %2864 ], [ %2912, %2911 ]
  %2925 = phi float [ %2901, %2915 ], [ %2881, %2871 ], [ %2866, %2864 ], [ %2901, %2911 ]
  %2926 = phi float [ %2917, %2915 ], [ %2873, %2871 ], [ 1.000000e+00, %2864 ], [ 1.000000e+00, %2911 ]
  %2927 = phi float [ %2913, %2915 ], [ %2873, %2871 ], [ 1.000000e+00, %2864 ], [ %2913, %2911 ]
  %2928 = phi float [ %2902, %2915 ], [ %2873, %2871 ], [ 1.000000e+00, %2864 ], [ %2902, %2911 ]
  %2929 = fmul fast float %2928, %2840
  %2930 = fmul fast float %2927, %2851
  %2931 = fmul fast float %2926, %2862
  %2932 = fadd fast float %2929, %2925
  %2933 = fadd fast float %2930, %2924
  %2934 = fadd fast float %2931, %2923
  %2935 = fmul fast float %2928, %2839
  %2936 = fmul fast float %2927, %2850
  %2937 = fmul fast float %2926, %2861
  br label %2938

; <label>:2938                                    ; preds = %2922, %2733
  %2939 = phi float [ %2739, %2733 ], [ %2937, %2922 ]
  %2940 = phi float [ %2738, %2733 ], [ %2936, %2922 ]
  %2941 = phi float [ %2737, %2733 ], [ %2935, %2922 ]
  %2942 = phi float [ %2736, %2733 ], [ %2934, %2922 ]
  %2943 = phi float [ %2735, %2733 ], [ %2933, %2922 ]
  %2944 = phi float [ %2734, %2733 ], [ %2932, %2922 ]
  %2945 = fmul fast float %2941, %2082
  %2946 = fmul fast float %2940, %2083
  %2947 = fmul fast float %2939, %2084
  %2948 = fsub fast float 1.000000e+00, %2145
  %2949 = fmul fast float %2944, %2948
  %2950 = fmul fast float %2943, %2948
  %2951 = fmul fast float %2942, %2948
  %2952 = fadd fast float %2949, %2945
  %2953 = fadd fast float %2950, %2946
  %2954 = fadd fast float %2951, %2947
  %2955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2956 = extractvalue %dx.types.CBufRet.f32 %2955, 2
  %2957 = fmul fast float %2956, %2155
  %2958 = call float @dx.op.unary.f32(i32 7, float %2957)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %24, i32 %25, i32 undef, float %2145, float %2145, float %2145, float %2145, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2960 = extractvalue %dx.types.CBufRet.f32 %2959, 0
  %2961 = fmul fast float %2960, %2952
  %2962 = fmul fast float %2960, %2953
  %2963 = fmul fast float %2960, %2954
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %24, i32 %25, i32 undef, float %2961, float %2962, float %2963, float %2961, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %24, i32 %25, i32 undef, float %2958, float %2958, float %2958, float %2958, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!35 = !{void ()* @cs_fog_raymarching_clouds_heightmap_particles, !"cs_fog_raymarching_clouds_heightmap_particles", null, !4, !36}
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
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
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
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = !{!90, !90, i64 0}
!90 = !{!"float", !91, i64 0}
!91 = !{!"omnipotent char", !92, i64 0}
!92 = !{!"Simple C/C++ TBAA"}
!93 = !{!94, !96, !98, !99, !101, !102, !103}
!94 = distinct !{!94, !95, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!95 = distinct !{!95, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!96 = distinct !{!96, !97, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!97 = distinct !{!97, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!98 = distinct !{!98, !97, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!99 = distinct !{!99, !100, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!100 = distinct !{!100, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!101 = distinct !{!101, !100, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!102 = distinct !{!102, !100, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!103 = distinct !{!103, !100, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = !{!106}
!106 = distinct !{!106, !107, !"\01?sort@@YAXAIAM00@Z: %c"}
!107 = distinct !{!107, !"\01?sort@@YAXAIAM00@Z"}
!108 = !{!109, !110, !94, !96, !98, !99, !101, !102, !103}
!109 = distinct !{!109, !107, !"\01?sort@@YAXAIAM00@Z: %a"}
!110 = distinct !{!110, !107, !"\01?sort@@YAXAIAM00@Z: %b"}
!111 = !{!110}
!112 = !{!109, !106, !94, !96, !98, !99, !101, !102, !103}
!113 = !{!109}
!114 = !{!110, !106, !94, !96, !98, !99, !101, !102, !103}
!115 = !{!116}
!116 = distinct !{!116, !117, !"\01?sort@@YAXAIAM00@Z: %c"}
!117 = distinct !{!117, !"\01?sort@@YAXAIAM00@Z"}
!118 = !{!119, !120, !94, !96, !98, !99, !101, !102, !103}
!119 = distinct !{!119, !117, !"\01?sort@@YAXAIAM00@Z: %a"}
!120 = distinct !{!120, !117, !"\01?sort@@YAXAIAM00@Z: %b"}
!121 = !{!120}
!122 = !{!119, !116, !94, !96, !98, !99, !101, !102, !103}
!123 = !{!119}
!124 = !{!120, !116, !94, !96, !98, !99, !101, !102, !103}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 2}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 2}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 2}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 2}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}

