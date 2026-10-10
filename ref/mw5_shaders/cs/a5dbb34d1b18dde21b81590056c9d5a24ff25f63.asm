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
; shader hash: f7163d63cb997a302916bed9d5234bef
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
;                                   texture     f32          2d      T1            t27     1
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

define void @cs_fog_raymarching_clouds_particles_brfog() {
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
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %222 = extractvalue %dx.types.ResRet.f32 %221, 1
  %223 = extractvalue %dx.types.ResRet.f32 %221, 2
  %224 = extractvalue %dx.types.ResRet.f32 %221, 3
  %225 = fadd fast float %222, %216
  %226 = fadd fast float %223, %216
  %227 = fadd fast float %224, %216
  %228 = call float @dx.op.unary.f32(i32 22, float %225)  ; Frc(value)
  %229 = call float @dx.op.unary.f32(i32 22, float %226)  ; Frc(value)
  %230 = call float @dx.op.unary.f32(i32 22, float %227)  ; Frc(value)
  %231 = fadd fast float %229, %212
  %232 = fadd fast float %230, %213
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %235 = extractvalue %dx.types.CBufRet.f32 %233, 3
  %236 = fmul fast float %234, %231
  %237 = fmul fast float %235, %232
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 0
  %240 = extractvalue %dx.types.CBufRet.f32 %238, 1
  %241 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 1
  %244 = fmul fast float %236, 2.000000e+00
  %245 = fmul fast float %237, 2.000000e+00
  %246 = fsub fast float 1.000000e+00, %244
  %247 = fsub fast float 1.000000e+00, %245
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 0
  %250 = extractvalue %dx.types.CBufRet.f32 %248, 1
  %251 = extractvalue %dx.types.CBufRet.f32 %248, 2
  %252 = fmul fast float %249, %246
  %253 = fmul fast float %250, %246
  %254 = fmul fast float %251, %246
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 0
  %257 = extractvalue %dx.types.CBufRet.f32 %255, 1
  %258 = extractvalue %dx.types.CBufRet.f32 %255, 2
  %259 = fmul fast float %256, %247
  %260 = fmul fast float %257, %247
  %261 = fmul fast float %258, %247
  %262 = fadd fast float %259, %252
  %263 = fadd fast float %260, %253
  %264 = fadd fast float %261, %254
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 0
  %267 = extractvalue %dx.types.CBufRet.f32 %265, 1
  %268 = extractvalue %dx.types.CBufRet.f32 %265, 2
  %269 = fadd fast float %262, %266
  %270 = fadd fast float %263, %267
  %271 = fadd fast float %264, %268
  %272 = fmul fast float %269, %243
  %273 = fmul fast float %270, %243
  %274 = fmul fast float %271, %243
  %275 = fmul fast float %272, %272
  %276 = fmul fast float %273, %273
  %277 = fadd fast float %275, %276
  %278 = fmul fast float %274, %274
  %279 = fadd fast float %277, %278
  %280 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %281 = fdiv fast float 1.000000e+00, %280
  %282 = fmul fast float %272, %281
  %283 = fmul fast float %273, %281
  %284 = fmul fast float %274, %281
  %285 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %39, i32 %40, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = fcmp fast ogt float %286, -1.000000e+00
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 1
  %290 = select i1 %287, float %289, float 1.000000e+00
  %291 = fadd fast float %286, 1.000000e+00
  %292 = fmul fast float %290, %291
  %293 = call float @dx.op.unary.f32(i32 6, float %292)  ; FAbs(value)
  %294 = fdiv fast float 1.000000e+00, %243
  %295 = fmul fast float %294, %280
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 1
  %298 = fmul fast float %297, %295
  %299 = fmul fast float %295, %293
  %300 = extractvalue %dx.types.CBufRet.f32 %288, 3
  %301 = fcmp fast oge float %293, %300
  %302 = call float @dx.op.binary.f32(i32 36, float %299, float %298)  ; FMin(a,b)
  %303 = select i1 %301, float %298, float %302
  %304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.i32 %304, 3
  %306 = icmp eq i32 %305, 0
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 2
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 2
  %311 = fsub fast float %308, %241
  %312 = fadd fast float %311, %310
  br i1 %306, label %324, label %313, !dx.controlflow.hints !39

; <label>:313                                     ; preds = %208
  %314 = fsub fast float -0.000000e+00, %240
  %315 = fsub fast float -0.000000e+00, %239
  %316 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %315, float %314, float %312)  ; Dot3(ax,ay,az,bx,by,bz)
  %317 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %282, float %283, float %284)  ; Dot3(ax,ay,az,bx,by,bz)
  %318 = fdiv fast float 1.000000e+00, %317
  %319 = fmul fast float %318, %316
  %320 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %315, float %314, float %311)  ; Dot3(ax,ay,az,bx,by,bz)
  %321 = fmul fast float %318, %320
  %322 = call float @dx.op.binary.f32(i32 36, float %319, float %321)  ; FMin(a,b)
  %323 = call float @dx.op.binary.f32(i32 35, float %319, float %321)  ; FMax(a,b)
  br label %357

; <label>:324                                     ; preds = %208
  %325 = fdiv fast float 1.000000e+00, %282
  %326 = fdiv fast float 1.000000e+00, %283
  %327 = fdiv fast float 1.000000e+00, %284
  %328 = extractvalue %dx.types.CBufRet.f32 %307, 0
  %329 = extractvalue %dx.types.CBufRet.f32 %307, 1
  %330 = extractvalue %dx.types.CBufRet.f32 %309, 0
  %331 = extractvalue %dx.types.CBufRet.f32 %309, 1
  %332 = fsub fast float %328, %239
  %333 = fmul fast float %332, %325
  %334 = fadd fast float %332, %330
  %335 = fmul fast float %334, %325
  %336 = call float @dx.op.binary.f32(i32 36, float %333, float %335)  ; FMin(a,b)
  %337 = call float @dx.op.binary.f32(i32 35, float %333, float %335)  ; FMax(a,b)
  %338 = fsub fast float %329, %240
  %339 = fmul fast float %338, %326
  %340 = fadd fast float %338, %331
  %341 = fmul fast float %340, %326
  %342 = call float @dx.op.binary.f32(i32 36, float %339, float %341)  ; FMin(a,b)
  %343 = call float @dx.op.binary.f32(i32 35, float %336, float %342)  ; FMax(a,b)
  %344 = call float @dx.op.binary.f32(i32 35, float %339, float %341)  ; FMax(a,b)
  %345 = call float @dx.op.binary.f32(i32 36, float %337, float %344)  ; FMin(a,b)
  %346 = fmul fast float %311, %327
  %347 = fmul fast float %312, %327
  %348 = call float @dx.op.binary.f32(i32 36, float %346, float %347)  ; FMin(a,b)
  %349 = call float @dx.op.binary.f32(i32 35, float %343, float %348)  ; FMax(a,b)
  %350 = call float @dx.op.binary.f32(i32 35, float %346, float %347)  ; FMax(a,b)
  %351 = call float @dx.op.binary.f32(i32 36, float %345, float %350)  ; FMin(a,b)
  %352 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %349)  ; FMax(a,b)
  %353 = fcmp fast ult float %351, %352
  br i1 %353, label %357, label %354, !dx.controlflow.hints !40

; <label>:354                                     ; preds = %324
  %355 = call float @dx.op.binary.f32(i32 36, float %349, float %351)  ; FMin(a,b)
  %356 = call float @dx.op.binary.f32(i32 35, float %349, float %351)  ; FMax(a,b)
  br label %357

; <label>:357                                     ; preds = %354, %324, %313
  %358 = phi float [ %322, %313 ], [ %355, %354 ], [ 0.000000e+00, %324 ]
  %359 = phi float [ %323, %313 ], [ %356, %354 ], [ 0.000000e+00, %324 ]
  %360 = fcmp fast oeq float %359, 0.000000e+00
  br i1 %360, label %364, label %361, !dx.controlflow.hints !41

; <label>:361                                     ; preds = %357
  %362 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %358)  ; FMin(a,b)
  %363 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %359)  ; FMax(a,b)
  br label %364

; <label>:364                                     ; preds = %361, %357
  %365 = phi i32 [ 1, %361 ], [ 0, %357 ]
  %366 = phi float [ %363, %361 ], [ -1.000000e+00, %357 ]
  %367 = phi float [ %362, %361 ], [ 0x47EFFFFFE0000000, %357 ]
  %368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.f32 %368, 3
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %372 = fsub fast float -0.000000e+00, %239
  %373 = fsub fast float -0.000000e+00, %240
  %374 = fsub fast float %369, %241
  %375 = fadd fast float %374, %371
  %376 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %372, float %373, float %375)  ; Dot3(ax,ay,az,bx,by,bz)
  %377 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %282, float %283, float %284)  ; Dot3(ax,ay,az,bx,by,bz)
  %378 = fdiv fast float 1.000000e+00, %377
  %379 = fmul fast float %378, %376
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 2
  %382 = fsub fast float %381, %241
  %383 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %372, float %373, float %382)  ; Dot3(ax,ay,az,bx,by,bz)
  %384 = fmul fast float %378, %383
  %385 = call float @dx.op.binary.f32(i32 36, float %379, float %384)  ; FMin(a,b)
  %386 = call float @dx.op.binary.f32(i32 35, float %379, float %384)  ; FMax(a,b)
  %387 = call float @dx.op.binary.f32(i32 36, float %367, float %385)  ; FMin(a,b)
  %388 = call float @dx.op.binary.f32(i32 35, float %366, float %386)  ; FMax(a,b)
  %389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %390 = extractvalue %dx.types.CBufRet.f32 %389, 2
  %391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %392 = extractvalue %dx.types.CBufRet.f32 %391, 3
  %393 = fsub fast float %390, %241
  %394 = fadd fast float %393, %392
  %395 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %372, float %373, float %394)  ; Dot3(ax,ay,az,bx,by,bz)
  %396 = fmul fast float %378, %395
  %397 = fcmp fast olt float %396, 0.000000e+00
  %398 = fcmp fast ogt float %284, 0.000000e+00
  %399 = and i1 %398, %397
  br i1 %399, label %404, label %400, !dx.controlflow.hints !42

; <label>:400                                     ; preds = %364
  %401 = fcmp fast olt float %284, 0.000000e+00
  br i1 %401, label %402, label %404, !dx.controlflow.hints !43

; <label>:402                                     ; preds = %400
  %403 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %396)  ; FMax(a,b)
  br label %404

; <label>:404                                     ; preds = %402, %400, %364
  %405 = phi float [ 0.000000e+00, %364 ], [ %403, %402 ], [ 0.000000e+00, %400 ]
  %406 = phi float [ 0.000000e+00, %364 ], [ 0x47EFFFFFE0000000, %402 ], [ %396, %400 ]
  %407 = fcmp fast oeq float %406, 0.000000e+00
  br i1 %407, label %411, label %408, !dx.controlflow.hints !44

; <label>:408                                     ; preds = %404
  %409 = call float @dx.op.binary.f32(i32 36, float %387, float %405)  ; FMin(a,b)
  %410 = call float @dx.op.binary.f32(i32 35, float %388, float %406)  ; FMax(a,b)
  br label %411

; <label>:411                                     ; preds = %408, %404
  %412 = phi i32 [ 1, %408 ], [ 0, %404 ]
  %413 = phi float [ %410, %408 ], [ %388, %404 ]
  %414 = phi float [ %409, %408 ], [ %387, %404 ]
  %415 = fdiv fast float 1.000000e+00, %282
  %416 = fdiv fast float 1.000000e+00, %283
  %417 = fdiv fast float 1.000000e+00, %284
  %418 = call float @dx.op.binary.f32(i32 36, float %303, float %413)  ; FMin(a,b)
  %419 = call float @dx.op.binary.f32(i32 35, float %280, float %414)  ; FMax(a,b)
  %420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %421 = extractvalue %dx.types.CBufRet.f32 %420, 0
  %422 = fmul fast float %228, 2.000000e+00
  %423 = fadd fast float %422, -1.000000e+00
  %424 = fmul fast float %421, %423
  %425 = fadd fast float %424, %419
  %426 = fcmp fast olt float %425, %418
  %427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.f32 %427, 2
  %429 = fcmp fast olt float %428, 1.000000e+00
  %430 = and i1 %429, %426
  br i1 %430, label %431, label %1968

; <label>:431                                     ; preds = %411
  %432 = fmul fast float %425, %284
  %433 = fadd fast float %432, %241
  %434 = fmul fast float %425, %283
  %435 = fadd fast float %434, %240
  %436 = fmul fast float %425, %282
  %437 = fadd fast float %436, %239
  br label %438

; <label>:438                                     ; preds = %1938, %431
  %439 = phi i32 [ %1940, %1938 ], [ undef, %431 ]
  %440 = phi float [ %1941, %1938 ], [ undef, %431 ]
  %441 = phi float [ %1942, %1938 ], [ undef, %431 ]
  %442 = phi float [ %1943, %1938 ], [ undef, %431 ]
  %443 = phi float [ %1944, %1938 ], [ undef, %431 ]
  %444 = phi float [ %1945, %1938 ], [ undef, %431 ]
  %445 = phi i32 [ %814, %1938 ], [ undef, %431 ]
  %446 = phi float [ %816, %1938 ], [ undef, %431 ]
  %447 = phi float [ %571, %1938 ], [ undef, %431 ]
  %448 = phi float [ %572, %1938 ], [ undef, %431 ]
  %449 = phi float [ %573, %1938 ], [ undef, %431 ]
  %450 = phi float [ %574, %1938 ], [ undef, %431 ]
  %451 = phi float [ %1946, %1938 ], [ 0.000000e+00, %431 ]
  %452 = phi float [ %1947, %1938 ], [ 1.000000e+00, %431 ]
  %453 = phi float [ %1948, %1938 ], [ 0.000000e+00, %431 ]
  %454 = phi float [ %1949, %1938 ], [ 0.000000e+00, %431 ]
  %455 = phi float [ %1950, %1938 ], [ 0.000000e+00, %431 ]
  %456 = phi float [ %1960, %1938 ], [ %437, %431 ]
  %457 = phi float [ %1961, %1938 ], [ %435, %431 ]
  %458 = phi float [ %1962, %1938 ], [ %433, %431 ]
  %459 = phi float [ %1939, %1938 ], [ %425, %431 ]
  %460 = phi i32 [ %576, %1938 ], [ 10, %431 ]
  %461 = phi float [ %1951, %1938 ], [ 0.000000e+00, %431 ]
  %462 = phi float [ %1952, %1938 ], [ 0.000000e+00, %431 ]
  %463 = phi float [ %1953, %1938 ], [ 0.000000e+00, %431 ]
  %464 = phi float [ %1954, %1938 ], [ 0.000000e+00, %431 ]
  %465 = phi float [ %1955, %1938 ], [ 0.000000e+00, %431 ]
  %466 = phi i32 [ %1956, %1938 ], [ 0, %431 ]
  %467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %468 = extractvalue %dx.types.CBufRet.f32 %467, 0
  %469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %470 = extractvalue %dx.types.CBufRet.f32 %469, 0
  %471 = extractvalue %dx.types.CBufRet.f32 %469, 1
  %472 = fsub fast float %456, %470
  %473 = fsub fast float %457, %471
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 2
  %476 = extractvalue %dx.types.CBufRet.f32 %474, 3
  %477 = fmul fast float %472, %475
  %478 = fmul fast float %473, %476
  %479 = call float @dx.op.binary.f32(i32 36, float %477, float %478)  ; FMin(a,b)
  %480 = fcmp fast olt float %479, 0.000000e+00
  %481 = call float @dx.op.binary.f32(i32 35, float %477, float %478)  ; FMax(a,b)
  %482 = fcmp fast ogt float %481, 1.000000e+00
  %483 = or i1 %480, %482
  %484 = extractvalue %dx.types.CBufRet.f32 %469, 2
  %485 = fcmp fast olt float %458, %484
  %486 = or i1 %483, %485
  %487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %488 = extractvalue %dx.types.CBufRet.f32 %487, 3
  %489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %490 = extractvalue %dx.types.CBufRet.f32 %489, 0
  %491 = fadd fast float %490, %488
  %492 = fcmp fast ogt float %458, %491
  %493 = or i1 %486, %492
  br i1 %493, label %494, label %523, !dx.controlflow.hints !45

; <label>:494                                     ; preds = %438
  %495 = extractvalue %dx.types.CBufRet.f32 %474, 0
  %496 = extractvalue %dx.types.CBufRet.f32 %474, 1
  %497 = fsub fast float %470, %456
  %498 = fmul fast float %497, %415
  %499 = fadd fast float %497, %495
  %500 = fmul fast float %499, %415
  %501 = call float @dx.op.binary.f32(i32 36, float %498, float %500)  ; FMin(a,b)
  %502 = call float @dx.op.binary.f32(i32 35, float %498, float %500)  ; FMax(a,b)
  %503 = fsub fast float %471, %457
  %504 = fmul fast float %503, %416
  %505 = fadd fast float %503, %496
  %506 = fmul fast float %505, %416
  %507 = call float @dx.op.binary.f32(i32 36, float %504, float %506)  ; FMin(a,b)
  %508 = call float @dx.op.binary.f32(i32 35, float %501, float %507)  ; FMax(a,b)
  %509 = call float @dx.op.binary.f32(i32 35, float %504, float %506)  ; FMax(a,b)
  %510 = call float @dx.op.binary.f32(i32 36, float %502, float %509)  ; FMin(a,b)
  %511 = fsub fast float %484, %458
  %512 = fmul fast float %511, %417
  %513 = fsub fast float %488, %458
  %514 = fadd fast float %513, %490
  %515 = fmul fast float %514, %417
  %516 = call float @dx.op.binary.f32(i32 36, float %512, float %515)  ; FMin(a,b)
  %517 = call float @dx.op.binary.f32(i32 35, float %508, float %516)  ; FMax(a,b)
  %518 = call float @dx.op.binary.f32(i32 35, float %512, float %515)  ; FMax(a,b)
  %519 = call float @dx.op.binary.f32(i32 36, float %510, float %518)  ; FMin(a,b)
  %520 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %517)  ; FMax(a,b)
  %521 = fcmp fast oge float %519, %520
  %522 = select i1 %521, float %517, float 1.000000e+07
  br label %569

; <label>:523                                     ; preds = %438
  %524 = fsub fast float 1.000000e+00, %478
  %525 = icmp eq i32 %460, 0
  br i1 %525, label %554, label %526

; <label>:526                                     ; preds = %523
  br label %527

; <label>:527                                     ; preds = %550, %526
  %528 = phi i32 [ %551, %550 ], [ %460, %526 ]
  %529 = uitofp i32 %528 to float
  %530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %477, float %524, float undef, float undef, i32 0, i32 0, i32 undef, float %529)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = extractvalue %dx.types.ResRet.f32 %530, 1
  %533 = extractvalue %dx.types.ResRet.f32 %530, 2
  %534 = fcmp fast oeq float %531, 0.000000e+00
  %535 = fcmp ule float %458, %533
  %536 = fcmp uge float %458, %532
  %537 = or i1 %536, %535
  %538 = or i1 %534, %537
  br i1 %538, label %539, label %550, !dx.controlflow.hints !46

; <label>:539                                     ; preds = %527
  %540 = extractvalue %dx.types.ResRet.f32 %530, 3
  %541 = extractvalue %dx.types.CBufRet.f32 %474, 0
  %542 = and i32 %528, 31
  %543 = lshr i32 1024, %542
  %544 = uitofp i32 %543 to float
  %545 = fdiv fast float %541, %544
  %546 = add i32 %528, 1
  %547 = uitofp i32 %546 to float
  %548 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %547)  ; FMin(a,b)
  %549 = fptosi float %548 to i32
  br label %569

; <label>:550                                     ; preds = %527
  %551 = add i32 %528, -1
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %553, label %527, !llvm.loop !47

; <label>:553                                     ; preds = %550
  br label %554

; <label>:554                                     ; preds = %553, %523
  %555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %20, float %477, float %524, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 0
  %557 = extractvalue %dx.types.ResRet.f32 %555, 1
  %558 = extractvalue %dx.types.ResRet.f32 %555, 2
  %559 = extractvalue %dx.types.ResRet.f32 %555, 3
  %560 = extractvalue %dx.types.CBufRet.f32 %474, 0
  %561 = fmul fast float %560, 9.765625e-04
  %562 = fcmp fast oeq float %556, 0.000000e+00
  %563 = fcmp ule float %458, %558
  %564 = fcmp uge float %458, %557
  %565 = or i1 %564, %563
  %566 = or i1 %562, %565
  %567 = zext i1 %566 to i32
  %568 = xor i32 %567, 1
  br label %569

; <label>:569                                     ; preds = %554, %539, %494
  %570 = phi float [ %522, %494 ], [ %545, %539 ], [ %561, %554 ]
  %571 = phi float [ %447, %494 ], [ %531, %539 ], [ %556, %554 ]
  %572 = phi float [ %448, %494 ], [ %532, %539 ], [ %557, %554 ]
  %573 = phi float [ %449, %494 ], [ %533, %539 ], [ %558, %554 ]
  %574 = phi float [ %450, %494 ], [ %540, %539 ], [ %559, %554 ]
  %575 = phi i32 [ 0, %494 ], [ 0, %539 ], [ %568, %554 ]
  %576 = phi i32 [ 10, %494 ], [ %549, %539 ], [ 1, %554 ]
  %577 = icmp eq i32 %575, 0
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 2
  %580 = call float @dx.op.binary.f32(i32 35, float %570, float %579)  ; FMax(a,b)
  %581 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %580)  ; FMin(a,b)
  %582 = icmp eq i32 %365, 0
  br i1 %582, label %638, label %583, !dx.controlflow.hints !49

; <label>:583                                     ; preds = %569
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = extractvalue %dx.types.CBufRet.f32 %584, 1
  %587 = extractvalue %dx.types.CBufRet.f32 %584, 2
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.f32 %588, 0
  %590 = extractvalue %dx.types.CBufRet.f32 %588, 1
  %591 = extractvalue %dx.types.CBufRet.f32 %588, 2
  %592 = fsub fast float %456, %589
  %593 = fsub fast float %457, %590
  %594 = fsub fast float %458, %591
  %595 = fmul fast float %592, %585
  %596 = fmul fast float %593, %586
  %597 = fmul fast float %594, %587
  %598 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.i32 %598, 3
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %604, label %601, !dx.controlflow.hints !50

; <label>:601                                     ; preds = %583
  %602 = call float @dx.op.unary.f32(i32 22, float %595)  ; Frc(value)
  %603 = call float @dx.op.unary.f32(i32 22, float %596)  ; Frc(value)
  br label %604

; <label>:604                                     ; preds = %601, %583
  %605 = phi float [ %602, %601 ], [ %595, %583 ]
  %606 = phi float [ %603, %601 ], [ %596, %583 ]
  %607 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %605, float %606, float %597, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = fmul fast float %608, 2.000000e+00
  %610 = fadd fast float %609, -1.000000e+00
  %611 = extractvalue %dx.types.CBufRet.f32 %584, 3
  %612 = fmul fast float %610, %611
  %613 = fcmp fast olt float %612, 0.000000e+00
  %614 = fcmp fast oge float %597, 0.000000e+00
  %615 = fcmp fast ole float %597, 1.000000e+00
  br i1 %600, label %618, label %616, !dx.controlflow.hints !51

; <label>:616                                     ; preds = %604
  %617 = and i1 %614, %615
  br label %628

; <label>:618                                     ; preds = %604
  %619 = fcmp fast oge float %595, 0.000000e+00
  %620 = fcmp fast oge float %596, 0.000000e+00
  %621 = and i1 %619, %620
  %622 = and i1 %614, %621
  %623 = fcmp fast ole float %595, 1.000000e+00
  %624 = fcmp fast ole float %596, 1.000000e+00
  %625 = and i1 %623, %624
  %626 = and i1 %615, %625
  %627 = and i1 %622, %626
  br label %628

; <label>:628                                     ; preds = %618, %616
  %629 = phi i1 [ %617, %616 ], [ %627, %618 ]
  %630 = and i1 %613, %629
  %631 = call float @dx.op.unary.f32(i32 6, float %612)  ; FAbs(value)
  %632 = extractvalue %dx.types.CBufRet.f32 %578, 1
  %633 = extractvalue %dx.types.CBufRet.f32 %578, 0
  %634 = call float @dx.op.binary.f32(i32 35, float %631, float %633)  ; FMax(a,b)
  %635 = select i1 %630, float %632, float %634
  %636 = zext i1 %630 to i32
  %637 = call float @dx.op.binary.f32(i32 36, float %581, float %635)  ; FMin(a,b)
  br label %638

; <label>:638                                     ; preds = %628, %569
  %639 = phi i32 [ %636, %628 ], [ 0, %569 ]
  %640 = phi float [ %637, %628 ], [ %581, %569 ]
  %641 = icmp eq i32 %412, 0
  br i1 %641, label %813, label %642, !dx.controlflow.hints !52

; <label>:642                                     ; preds = %638
  %643 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %644 = extractvalue %dx.types.CBufRet.i32 %643, 1
  %645 = and i32 %644, 1
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %647, label %804, !dx.controlflow.hints !53

; <label>:647                                     ; preds = %642
  %648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %649 = extractvalue %dx.types.CBufRet.f32 %648, 2
  %650 = extractvalue %dx.types.CBufRet.f32 %648, 3
  %651 = fmul fast float %649, %456
  %652 = fmul fast float %650, %457
  %653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %654 = extractvalue %dx.types.CBufRet.f32 %653, 0
  %655 = extractvalue %dx.types.CBufRet.f32 %653, 1
  %656 = fadd fast float %651, %654
  %657 = fadd fast float %652, %655
  %658 = call float @dx.op.unary.f32(i32 7, float %656)  ; Saturate(value)
  %659 = call float @dx.op.unary.f32(i32 7, float %657)  ; Saturate(value)
  %660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %20, float %658, float %659, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %661 = extractvalue %dx.types.ResRet.f32 %660, 0
  %662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.f32 %662, 0
  %664 = fmul fast float %663, %661
  %665 = fsub fast float %656, %658
  %666 = fsub fast float %657, %659
  %667 = extractvalue %dx.types.CBufRet.f32 %648, 0
  %668 = extractvalue %dx.types.CBufRet.f32 %648, 1
  %669 = fmul fast float %667, %665
  %670 = fmul fast float %668, %666
  %671 = fmul fast float %669, %669
  %672 = fmul fast float %670, %670
  %673 = fadd fast float %671, %672
  %674 = call float @dx.op.unary.f32(i32 24, float %673)  ; Sqrt(value)
  %675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.f32 %675, 3
  %677 = fmul fast float %676, %674
  %678 = call float @dx.op.unary.f32(i32 7, float %677)  ; Saturate(value)
  %679 = extractvalue %dx.types.CBufRet.f32 %675, 2
  %680 = fsub fast float %679, %664
  %681 = fmul fast float %680, %678
  %682 = extractvalue %dx.types.CBufRet.f32 %662, 1
  %683 = fsub fast float %458, %664
  %684 = fsub fast float %683, %682
  %685 = fsub fast float %684, %681
  %686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %687 = extractvalue %dx.types.CBufRet.f32 %686, 2
  %688 = fsub fast float %685, %687
  %689 = fcmp fast olt float %688, 0.000000e+00
  %690 = call float @dx.op.unary.f32(i32 6, float %688)  ; FAbs(value)
  %691 = extractvalue %dx.types.CBufRet.i32 %643, 0
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %746, label %693

; <label>:693                                     ; preds = %647
  br label %694

; <label>:694                                     ; preds = %733, %693
  %695 = phi i32 [ %739, %733 ], [ 1, %693 ]
  %696 = phi float [ %741, %733 ], [ 0x47EFFFFFE0000000, %693 ]
  %697 = phi i32 [ %742, %733 ], [ 0, %693 ]
  %698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.f32 %698, 1
  %700 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %701 = extractvalue %dx.types.CBufRet.i32 %700, 1
  %702 = and i32 %701, 8
  %703 = icmp eq i32 %702, 0
  %704 = fcmp fast ogt float %699, %685
  %705 = or i1 %704, %703
  %706 = add i32 %697, 171
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %706)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 0
  %709 = extractvalue %dx.types.CBufRet.f32 %707, 1
  %710 = extractvalue %dx.types.CBufRet.f32 %707, 2
  br i1 %705, label %711, label %717, !dx.controlflow.hints !54

; <label>:711                                     ; preds = %694
  %712 = fsub fast float %708, %456
  %713 = fsub fast float %709, %457
  %714 = fmul fast float %712, %712
  %715 = fmul fast float %713, %713
  %716 = fadd fast float %714, %715
  br label %733

; <label>:717                                     ; preds = %694
  %718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %719 = extractvalue %dx.types.CBufRet.f32 %718, 2
  %720 = extractvalue %dx.types.CBufRet.f32 %698, 2
  %721 = fmul fast float %720, %719
  %722 = fsub fast float %721, %699
  %723 = fdiv fast float %710, %722
  %724 = fsub fast float %456, %708
  %725 = fsub fast float %457, %709
  %726 = fsub fast float %685, %699
  %727 = fmul fast float %723, %726
  %728 = fmul fast float %724, %724
  %729 = fmul fast float %725, %725
  %730 = fadd fast float %728, %729
  %731 = fmul fast float %727, %727
  %732 = fadd fast float %730, %731
  br label %733

; <label>:733                                     ; preds = %717, %711
  %734 = phi float [ %716, %711 ], [ %732, %717 ]
  %735 = call float @dx.op.unary.f32(i32 24, float %734)  ; Sqrt(value)
  %736 = fsub float %710, %735
  %737 = fcmp fast olt float %736, 0.000000e+00
  %738 = zext i1 %737 to i32
  %739 = and i32 %738, %695
  %740 = call float @dx.op.unary.f32(i32 6, float %736)  ; FAbs(value)
  %741 = call float @dx.op.binary.f32(i32 36, float %696, float %740)  ; FMin(a,b)
  %742 = add i32 %697, 1
  %743 = extractvalue %dx.types.CBufRet.i32 %700, 0
  %744 = icmp ult i32 %742, %743
  br i1 %744, label %694, label %745

; <label>:745                                     ; preds = %733
  br label %746

; <label>:746                                     ; preds = %745, %647
  %747 = phi i32 [ 1, %647 ], [ %739, %745 ]
  %748 = phi float [ 0x47EFFFFFE0000000, %647 ], [ %741, %745 ]
  br label %749

; <label>:749                                     ; preds = %749, %746
  %750 = phi i32 [ %747, %746 ], [ %789, %749 ]
  %751 = phi float [ 0x47EFFFFFE0000000, %746 ], [ %791, %749 ]
  %752 = phi i32 [ 0, %746 ], [ %792, %749 ]
  %753 = add nuw nsw i32 %752, 191
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %753)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 0
  %756 = extractvalue %dx.types.CBufRet.f32 %754, 1
  %757 = extractvalue %dx.types.CBufRet.f32 %754, 2
  %758 = add nuw nsw i32 %752, 195
  %759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %758)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.f32 %759, 0
  %761 = extractvalue %dx.types.CBufRet.f32 %759, 1
  %762 = extractvalue %dx.types.CBufRet.f32 %759, 2
  %763 = fsub fast float %456, %755
  %764 = fsub fast float %457, %756
  %765 = fsub fast float %685, %757
  %766 = call float @dx.op.unary.f32(i32 6, float %763)  ; FAbs(value)
  %767 = call float @dx.op.unary.f32(i32 6, float %764)  ; FAbs(value)
  %768 = call float @dx.op.unary.f32(i32 6, float %765)  ; FAbs(value)
  %769 = fsub fast float %766, %760
  %770 = fsub fast float %767, %761
  %771 = fsub fast float %768, %762
  %772 = call float @dx.op.binary.f32(i32 35, float %769, float 0.000000e+00)  ; FMax(a,b)
  %773 = call float @dx.op.binary.f32(i32 35, float %770, float 0.000000e+00)  ; FMax(a,b)
  %774 = call float @dx.op.binary.f32(i32 35, float %771, float 0.000000e+00)  ; FMax(a,b)
  %775 = fmul fast float %772, %772
  %776 = fmul fast float %773, %773
  %777 = fadd fast float %776, %775
  %778 = fmul fast float %774, %774
  %779 = fadd fast float %777, %778
  %780 = call float @dx.op.unary.f32(i32 24, float %779)  ; Sqrt(value)
  %781 = call float @dx.op.binary.f32(i32 35, float %770, float %771)  ; FMax(a,b)
  %782 = call float @dx.op.binary.f32(i32 35, float %769, float %781)  ; FMax(a,b)
  %783 = call float @dx.op.binary.f32(i32 36, float %782, float 0.000000e+00)  ; FMin(a,b)
  %784 = fadd fast float %783, %780
  %785 = fsub fast float -0.000000e+00, %784
  %786 = fcmp ogt float %784, -0.000000e+00
  %787 = icmp ne i32 %750, 0
  %788 = and i1 %787, %786
  %789 = zext i1 %788 to i32
  %790 = call float @dx.op.unary.f32(i32 6, float %785)  ; FAbs(value)
  %791 = call float @dx.op.binary.f32(i32 36, float %751, float %790)  ; FMin(a,b)
  %792 = add nuw nsw i32 %752, 1
  %793 = icmp eq i32 %792, 4
  br i1 %793, label %794, label %749

; <label>:794                                     ; preds = %749
  %795 = call float @dx.op.binary.f32(i32 36, float %690, float %791)  ; FMin(a,b)
  %796 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %797 = extractvalue %dx.types.CBufRet.i32 %796, 1
  %798 = and i32 %797, 2
  %799 = icmp ne i32 %798, 0
  %800 = xor i1 %788, %799
  %801 = call float @dx.op.binary.f32(i32 36, float %795, float %748)  ; FMin(a,b)
  %802 = and i1 %800, %689
  %803 = zext i1 %802 to i32
  br label %804

; <label>:804                                     ; preds = %794, %642
  %805 = phi i32 [ %445, %642 ], [ %803, %794 ]
  %806 = phi float [ 0.000000e+00, %642 ], [ %801, %794 ]
  %807 = phi float [ %458, %642 ], [ %685, %794 ]
  %808 = icmp ne i32 %805, 0
  %809 = extractvalue %dx.types.CBufRet.f32 %578, 3
  %810 = call float @dx.op.binary.f32(i32 35, float %806, float %809)  ; FMax(a,b)
  %811 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %810)  ; FMin(a,b)
  %812 = zext i1 %808 to i32
  br label %813

; <label>:813                                     ; preds = %804, %638
  %814 = phi i32 [ %805, %804 ], [ %445, %638 ]
  %815 = phi i32 [ %812, %804 ], [ 0, %638 ]
  %816 = phi float [ %807, %804 ], [ %446, %638 ]
  %817 = phi float [ %811, %804 ], [ 0x47EFFFFFE0000000, %638 ]
  %818 = extractvalue %dx.types.CBufRet.f32 %467, 2
  %819 = fmul fast float %818, %459
  %820 = call float @dx.op.unary.f32(i32 23, float %819)  ; Log(value)
  %821 = fmul fast float %820, 0x3FE62E4300000000
  %822 = call float @dx.op.binary.f32(i32 35, float %821, float 1.000000e+00)  ; FMax(a,b)
  %823 = fmul fast float %822, %817
  %824 = call float @dx.op.binary.f32(i32 36, float %823, float %640)  ; FMin(a,b)
  %825 = call float @dx.op.binary.f32(i32 35, float %824, float %468)  ; FMax(a,b)
  %826 = fadd fast float %418, 0x3F1A36E2E0000000
  %827 = fsub fast float %826, %459
  %828 = call float @dx.op.binary.f32(i32 36, float %827, float %825)  ; FMin(a,b)
  %829 = icmp eq i32 %639, 0
  br i1 %829, label %1019, label %830, !dx.controlflow.hints !55

; <label>:830                                     ; preds = %813
  %831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %832 = extractvalue %dx.types.CBufRet.f32 %831, 3
  %833 = fmul fast float %832, %459
  %834 = fcmp fast oeq float %833, 0.000000e+00
  br i1 %834, label %849, label %835, !dx.controlflow.hints !56

; <label>:835                                     ; preds = %830
  %836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %837 = extractvalue %dx.types.CBufRet.f32 %836, 3
  %838 = fmul fast float %837, %833
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 0
  %841 = extractvalue %dx.types.CBufRet.f32 %839, 1
  %842 = extractvalue %dx.types.CBufRet.f32 %839, 2
  %843 = fmul fast float %840, %838
  %844 = fmul fast float %841, %838
  %845 = fmul fast float %842, %838
  %846 = call float @dx.op.unary.f32(i32 23, float %843)  ; Log(value)
  %847 = call float @dx.op.unary.f32(i32 23, float %844)  ; Log(value)
  %848 = call float @dx.op.unary.f32(i32 23, float %845)  ; Log(value)
  br label %849

; <label>:849                                     ; preds = %835, %830
  %850 = phi float [ %846, %835 ], [ 0.000000e+00, %830 ]
  %851 = phi float [ %847, %835 ], [ 0.000000e+00, %830 ]
  %852 = phi float [ %848, %835 ], [ 0.000000e+00, %830 ]
  %853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %854 = extractvalue %dx.types.CBufRet.f32 %853, 0
  %855 = extractvalue %dx.types.CBufRet.f32 %853, 1
  %856 = extractvalue %dx.types.CBufRet.f32 %853, 2
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.f32 %857, 0
  %859 = extractvalue %dx.types.CBufRet.f32 %857, 1
  %860 = extractvalue %dx.types.CBufRet.f32 %857, 2
  %861 = fsub fast float %456, %858
  %862 = fsub fast float %457, %859
  %863 = fsub fast float %458, %860
  %864 = fmul fast float %861, %854
  %865 = fmul fast float %862, %855
  %866 = fmul fast float %863, %856
  %867 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %868 = extractvalue %dx.types.CBufRet.i32 %867, 0
  %869 = extractvalue %dx.types.CBufRet.i32 %867, 1
  %870 = uitofp i32 %868 to float
  %871 = uitofp i32 %869 to float
  %872 = fmul fast float %864, %870
  %873 = fmul fast float %865, %871
  %874 = fadd fast float %872, 5.000000e-01
  %875 = fadd fast float %873, 5.000000e-01
  %876 = call float @dx.op.unary.f32(i32 22, float %874)  ; Frc(value)
  %877 = call float @dx.op.unary.f32(i32 22, float %875)  ; Frc(value)
  %878 = call float @dx.op.unary.f32(i32 27, float %874)  ; Round_ni(value)
  %879 = call float @dx.op.unary.f32(i32 27, float %875)  ; Round_ni(value)
  %880 = fadd fast float %878, 1.000000e+00
  %881 = fadd fast float %879, 1.000000e+00
  %882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %883 = extractvalue %dx.types.CBufRet.f32 %882, 0
  %884 = extractvalue %dx.types.CBufRet.f32 %882, 1
  %885 = fmul fast float %883, %880
  %886 = fmul fast float %884, %881
  %887 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %19, float %885, float %886, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %888 = extractvalue %dx.types.ResRet.f32 %887, 0
  %889 = extractvalue %dx.types.ResRet.f32 %887, 1
  %890 = extractvalue %dx.types.ResRet.f32 %887, 2
  %891 = extractvalue %dx.types.ResRet.f32 %887, 3
  %892 = extractvalue %dx.types.CBufRet.i32 %867, 2
  %893 = extractvalue %dx.types.CBufRet.f32 %882, 2
  %894 = uitofp i32 %892 to float
  %895 = fadd fast float %894, -1.000000e+00
  %896 = fmul fast float %895, %888
  %897 = fmul fast float %895, %889
  %898 = fmul fast float %895, %890
  %899 = fmul fast float %895, %891
  %900 = fadd fast float %896, 5.000000e-01
  %901 = fadd fast float %897, 5.000000e-01
  %902 = fadd fast float %898, 5.000000e-01
  %903 = fadd fast float %899, 5.000000e-01
  %904 = fptoui float %900 to i32
  %905 = fptoui float %901 to i32
  %906 = fptoui float %902 to i32
  %907 = fptoui float %903 to i32
  %908 = uitofp i32 %904 to float
  %909 = uitofp i32 %905 to float
  %910 = uitofp i32 %906 to float
  %911 = uitofp i32 %907 to float
  %912 = fadd fast float %908, 5.000000e-01
  %913 = fadd fast float %909, 5.000000e-01
  %914 = fadd fast float %910, 5.000000e-01
  %915 = fadd fast float %911, 5.000000e-01
  %916 = fmul fast float %912, %893
  %917 = fmul fast float %913, %893
  %918 = fmul fast float %914, %893
  %919 = fmul fast float %915, %893
  %920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %916, float %866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %921 = extractvalue %dx.types.ResRet.f32 %920, 0
  %922 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %917, float %866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %923 = extractvalue %dx.types.ResRet.f32 %922, 0
  %924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %918, float %866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %925 = extractvalue %dx.types.ResRet.f32 %924, 0
  %926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %919, float %866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %927 = extractvalue %dx.types.ResRet.f32 %926, 0
  %928 = fsub fast float %925, %927
  %929 = fmul fast float %928, %876
  %930 = fadd fast float %929, %927
  %931 = fsub fast float %923, %921
  %932 = fmul fast float %931, %876
  %933 = fadd fast float %932, %921
  %934 = fsub fast float %933, %930
  %935 = fmul fast float %934, %877
  %936 = fadd fast float %935, %930
  %937 = fcmp fast ogt float %936, 0.000000e+00
  br i1 %937, label %938, label %1006, !dx.controlflow.hints !57

; <label>:938                                     ; preds = %849
  %939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %940 = extractvalue %dx.types.CBufRet.f32 %939, 0
  %941 = extractvalue %dx.types.CBufRet.f32 %939, 1
  %942 = extractvalue %dx.types.CBufRet.f32 %939, 2
  %943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %944 = extractvalue %dx.types.CBufRet.f32 %943, 0
  %945 = extractvalue %dx.types.CBufRet.f32 %943, 1
  %946 = extractvalue %dx.types.CBufRet.f32 %943, 2
  %947 = fmul fast float %862, %854
  %948 = fmul fast float %863, %854
  %949 = fadd fast float %864, %944
  %950 = fadd fast float %947, %945
  %951 = fadd fast float %948, %946
  %952 = fmul fast float %949, %940
  %953 = fmul fast float %950, %940
  %954 = fmul fast float %951, %940
  %955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %952, float %953, float %954, float undef, i32 0, i32 0, i32 0, float %850)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %956 = extractvalue %dx.types.ResRet.f32 %955, 0
  %957 = fmul fast float %949, %941
  %958 = fmul fast float %950, %941
  %959 = fmul fast float %951, %941
  %960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %957, float %958, float %959, float undef, i32 0, i32 0, i32 0, float %851)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %961 = extractvalue %dx.types.ResRet.f32 %960, 1
  %962 = fmul fast float %949, %942
  %963 = fmul fast float %950, %942
  %964 = fmul fast float %951, %942
  %965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %962, float %963, float %964, float undef, i32 0, i32 0, i32 0, float %852)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %966 = extractvalue %dx.types.ResRet.f32 %965, 2
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 1
  %969 = fmul fast float %961, %956
  %970 = fmul fast float %969, %966
  %971 = call float @dx.op.unary.f32(i32 23, float %970)  ; Log(value)
  %972 = fmul fast float %971, %968
  %973 = call float @dx.op.unary.f32(i32 21, float %972)  ; Exp(value)
  %974 = extractvalue %dx.types.CBufRet.f32 %967, 2
  %975 = fmul fast float %936, %936
  %976 = fmul fast float %975, %973
  %977 = fmul fast float %976, %974
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 3
  %980 = fmul fast float %979, %977
  %981 = bitcast float %980 to i32
  %982 = sitofp i32 %981 to float
  %983 = fptosi float %982 to i32
  %984 = bitcast i32 %983 to float
  %985 = fsub fast float 1.000000e+00, %977
  %986 = bitcast float %985 to i32
  %987 = sitofp i32 %986 to float
  %988 = fptosi float %987 to i32
  %989 = bitcast i32 %988 to float
  %990 = fadd fast float %984, %989
  %991 = bitcast float %990 to i32
  %992 = sub nsw i32 2129859010, %991
  %993 = bitcast i32 %992 to float
  %994 = fmul fast float %993, %984
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 2
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 0
  %999 = fmul fast float %994, %998
  %1000 = fadd fast float %999, 1.000000e+00
  %1001 = bitcast float %1000 to i32
  %1002 = sub nsw i32 2129859010, %1001
  %1003 = bitcast i32 %1002 to float
  %1004 = fmul fast float %994, %996
  %1005 = fmul fast float %1004, %1003
  br label %1006

; <label>:1006                                    ; preds = %938, %849
  %1007 = phi float [ %1005, %938 ], [ %936, %849 ]
  %1008 = fmul fast float %1007, %828
  %1009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1010 = extractvalue %dx.types.CBufRet.f32 %1009, 0
  %1011 = extractvalue %dx.types.CBufRet.f32 %1009, 1
  %1012 = extractvalue %dx.types.CBufRet.f32 %1009, 2
  %1013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1014 = extractvalue %dx.types.CBufRet.f32 %1013, 1
  %1015 = fmul fast float %1010, %1008
  %1016 = fmul fast float %1011, %1008
  %1017 = fmul fast float %1012, %1008
  %1018 = fmul fast float %1014, %1008
  br label %1019

; <label>:1019                                    ; preds = %1006, %813
  %1020 = phi float [ %1008, %1006 ], [ 0.000000e+00, %813 ]
  %1021 = phi float [ %1018, %1006 ], [ 0.000000e+00, %813 ]
  %1022 = phi float [ %1015, %1006 ], [ 0.000000e+00, %813 ]
  %1023 = phi float [ %1016, %1006 ], [ 0.000000e+00, %813 ]
  %1024 = phi float [ %1017, %1006 ], [ 0.000000e+00, %813 ]
  br i1 %577, label %1167, label %1025, !dx.controlflow.hints !58

; <label>:1025                                    ; preds = %1019
  %1026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1027 = extractvalue %dx.types.CBufRet.f32 %1026, 0
  %1028 = extractvalue %dx.types.CBufRet.f32 %1026, 1
  %1029 = extractvalue %dx.types.CBufRet.f32 %1026, 2
  %1030 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.i32 %1030, 0
  %1032 = icmp ne i32 %1031, 0
  %1033 = zext i1 %1032 to i32
  %1034 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.i32 %1034, 0
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1070, label %1037

; <label>:1037                                    ; preds = %1025
  br label %1038

; <label>:1038                                    ; preds = %1065, %1037
  %1039 = phi i32 [ %1066, %1065 ], [ 0, %1037 ]
  %1040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1039, i32 0)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 0
  %1042 = extractvalue %dx.types.ResRet.f32 %1040, 1
  %1043 = extractvalue %dx.types.ResRet.f32 %1040, 2
  %1044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1039, i32 16)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.ResRet.f32 %1044, 1
  %1047 = extractvalue %dx.types.ResRet.f32 %1044, 2
  %1048 = fsub fast float %1041, %1045
  %1049 = fsub fast float %1042, %1046
  %1050 = fsub fast float %1043, %1047
  %1051 = fadd fast float %1045, %1041
  %1052 = fadd fast float %1046, %1042
  %1053 = fadd fast float %1047, %1043
  %1054 = fcmp fast olt float %456, %1048
  %1055 = fcmp fast olt float %457, %1049
  %1056 = fcmp fast olt float %458, %1050
  %1057 = or i1 %1054, %1055
  %1058 = or i1 %1056, %1057
  %1059 = fcmp fast ogt float %456, %1051
  %1060 = fcmp fast ogt float %457, %1052
  %1061 = fcmp fast ogt float %458, %1053
  %1062 = or i1 %1059, %1060
  %1063 = or i1 %1061, %1062
  %1064 = or i1 %1058, %1063
  br i1 %1064, label %1065, label %1068, !dx.controlflow.hints !59

; <label>:1065                                    ; preds = %1038
  %1066 = add nuw i32 %1039, 1
  %1067 = icmp ult i32 %1066, %1035
  br i1 %1067, label %1038, label %1068

; <label>:1068                                    ; preds = %1065, %1038
  %1069 = phi i32 [ 255, %1065 ], [ %1039, %1038 ]
  br label %1070

; <label>:1070                                    ; preds = %1068, %1025
  %1071 = phi i32 [ 255, %1025 ], [ %1069, %1068 ]
  %1072 = icmp eq i32 %1071, 255
  br i1 %1072, label %1082, label %1073, !dx.controlflow.hints !60

; <label>:1073                                    ; preds = %1070
  %1074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1071, i32 32)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.f32 %1074, 0
  %1076 = extractvalue %dx.types.ResRet.f32 %1074, 1
  %1077 = extractvalue %dx.types.ResRet.f32 %1074, 2
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1071, i32 156)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = icmp ne i32 %1079, 0
  %1081 = zext i1 %1080 to i32
  br label %1082

; <label>:1082                                    ; preds = %1073, %1070
  %1083 = phi float [ %1075, %1073 ], [ %1027, %1070 ]
  %1084 = phi float [ %1076, %1073 ], [ %1028, %1070 ]
  %1085 = phi float [ %1077, %1073 ], [ %1029, %1070 ]
  %1086 = phi i32 [ %1081, %1073 ], [ %1033, %1070 ]
  %1087 = icmp eq i32 %1086, 0
  br i1 %1087, label %1088, label %1157, !dx.controlflow.hints !61

; <label>:1088                                    ; preds = %1082
  %1089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.f32 %1089, 3
  %1091 = extractvalue %dx.types.CBufRet.f32 %487, 0
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 2
  %1094 = extractvalue %dx.types.CBufRet.f32 %1092, 3
  br i1 %1072, label %1105, label %1095, !dx.controlflow.hints !62

; <label>:1095                                    ; preds = %1088
  %1096 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1071, i32 60)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.f32 %1096, 0
  %1098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1071, i32 64)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.f32 %1098, 0
  %1100 = extractvalue %dx.types.ResRet.f32 %1098, 1
  %1101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1071, i32 72)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.f32 %1101, 0
  %1103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1071, i32 96)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.f32 %1103, 0
  br label %1105

; <label>:1105                                    ; preds = %1095, %1088
  %1106 = phi float [ %1097, %1095 ], [ %490, %1088 ]
  %1107 = phi float [ %1102, %1095 ], [ %488, %1088 ]
  %1108 = phi float [ %1104, %1095 ], [ %1091, %1088 ]
  %1109 = phi float [ %1099, %1095 ], [ %1093, %1088 ]
  %1110 = phi float [ %1100, %1095 ], [ %1094, %1088 ]
  %1111 = call float @dx.op.binary.f32(i32 35, float %571, float 0.000000e+00)  ; FMax(a,b)
  %1112 = call float @dx.op.binary.f32(i32 36, float %1111, float 1.000000e+00)  ; FMin(a,b)
  %1113 = call float @dx.op.unary.f32(i32 24, float %1112)  ; Sqrt(value)
  %1114 = call float @dx.op.binary.f32(i32 35, float %574, float 0x3F847AE140000000)  ; FMax(a,b)
  %1115 = fsub fast float %572, %458
  %1116 = fsub fast float %458, %573
  %1117 = call float @dx.op.binary.f32(i32 36, float %1116, float %1115)  ; FMin(a,b)
  %1118 = fdiv fast float %1117, %1114
  %1119 = call float @dx.op.unary.f32(i32 7, float %1118)  ; Saturate(value)
  %1120 = fsub fast float %458, %1107
  %1121 = fdiv fast float %1120, %1106
  %1122 = call float @dx.op.unary.f32(i32 7, float %1121)  ; Saturate(value)
  %1123 = fsub fast float 1.000000e+00, %1122
  %1124 = fmul float %1119, %1123
  %1125 = fmul float %1124, %1124
  %1126 = fmul fast float %1113, %1090
  %1127 = fmul fast float %1126, %1125
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 2
  %1130 = extractvalue %dx.types.CBufRet.f32 %1128, 1
  %1131 = fsub fast float %1127, %1130
  %1132 = fsub fast float %1129, %1130
  %1133 = fdiv fast float %1131, %1132
  %1134 = call float @dx.op.unary.f32(i32 7, float %1133)  ; Saturate(value)
  %1135 = fmul fast float %1134, %1108
  %1136 = fcmp fast ogt float %1110, 0.000000e+00
  br i1 %1136, label %1137, label %1157, !dx.controlflow.hints !63

; <label>:1137                                    ; preds = %1105
  %1138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.CBufRet.f32 %1138, 1
  %1141 = extractvalue %dx.types.CBufRet.f32 %1138, 2
  %1142 = fsub fast float %456, %1139
  %1143 = fsub fast float %457, %1140
  %1144 = fsub fast float %458, %1141
  %1145 = fmul fast float %1142, %1142
  %1146 = fmul fast float %1143, %1143
  %1147 = fadd fast float %1145, %1146
  %1148 = fmul fast float %1144, %1144
  %1149 = fadd fast float %1147, %1148
  %1150 = call float @dx.op.unary.f32(i32 24, float %1149)  ; Sqrt(value)
  %1151 = fsub fast float %1150, %1109
  %1152 = fsub fast float %1110, %1109
  %1153 = fdiv fast float %1151, %1152
  %1154 = call float @dx.op.unary.f32(i32 7, float %1153)  ; Saturate(value)
  %1155 = fmul fast float %1154, %1154
  %1156 = fmul fast float %1155, %1135
  br label %1157

; <label>:1157                                    ; preds = %1137, %1105, %1082
  %1158 = phi float [ 0.000000e+00, %1082 ], [ %1156, %1137 ], [ %1135, %1105 ]
  %1159 = fmul fast float %1158, %828
  %1160 = fmul fast float %1159, %1083
  %1161 = fmul fast float %1159, %1084
  %1162 = fmul fast float %1159, %1085
  %1163 = fadd fast float %1160, %1022
  %1164 = fadd fast float %1161, %1023
  %1165 = fadd fast float %1162, %1024
  %1166 = fadd fast float %1159, %1020
  br label %1167

; <label>:1167                                    ; preds = %1157, %1019
  %1168 = phi float [ %1166, %1157 ], [ %1020, %1019 ]
  %1169 = phi float [ %1163, %1157 ], [ %1022, %1019 ]
  %1170 = phi float [ %1164, %1157 ], [ %1023, %1019 ]
  %1171 = phi float [ %1165, %1157 ], [ %1024, %1019 ]
  %1172 = icmp eq i32 %815, 0
  br i1 %1172, label %1216, label %1173, !dx.controlflow.hints !64

; <label>:1173                                    ; preds = %1167
  %1174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1175 = extractvalue %dx.types.CBufRet.f32 %1174, 1
  %1176 = fsub fast float %828, %1175
  %1177 = extractvalue %dx.types.CBufRet.f32 %1174, 3
  %1178 = fmul fast float %1176, %1177
  %1179 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1180, 3
  %1182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1183 = extractvalue %dx.types.CBufRet.f32 %1182, 2
  %1184 = fsub fast float %1183, %816
  %1185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.f32 %1185, 3
  %1187 = fmul fast float %1184, %1186
  %1188 = call float @dx.op.unary.f32(i32 7, float %1187)  ; Saturate(value)
  %1189 = fmul fast float %1188, %1181
  %1190 = extractvalue %dx.types.CBufRet.f32 %1185, 0
  %1191 = fsub fast float %459, %1190
  %1192 = extractvalue %dx.types.CBufRet.f32 %1185, 1
  %1193 = fmul fast float %1191, %1192
  %1194 = call float @dx.op.unary.f32(i32 7, float %1193)  ; Saturate(value)
  %1195 = fsub fast float 1.000000e+00, %1179
  %1196 = fmul fast float %1194, %1195
  %1197 = fadd fast float %1196, %1179
  %1198 = extractvalue %dx.types.CBufRet.f32 %1174, 0
  %1199 = fsub fast float %1189, %1198
  %1200 = fmul fast float %1199, %1197
  %1201 = fadd fast float %1200, %1198
  %1202 = extractvalue %dx.types.CBufRet.f32 %1180, 0
  %1203 = extractvalue %dx.types.CBufRet.f32 %1180, 1
  %1204 = extractvalue %dx.types.CBufRet.f32 %1180, 2
  %1205 = fmul fast float %1201, %828
  %1206 = extractvalue %dx.types.CBufRet.f32 %1185, 2
  %1207 = fmul fast float %1205, %1202
  %1208 = fmul fast float %1205, %1203
  %1209 = fmul fast float %1205, %1204
  %1210 = fadd fast float %1207, %1169
  %1211 = fadd fast float %1208, %1170
  %1212 = fadd fast float %1209, %1171
  %1213 = fmul fast float %1205, %1206
  %1214 = fadd fast float %1213, %1021
  %1215 = fadd fast float %1205, %1168
  br label %1216

; <label>:1216                                    ; preds = %1173, %1167
  %1217 = phi float [ %1215, %1173 ], [ %1168, %1167 ]
  %1218 = phi float [ %1214, %1173 ], [ %1021, %1167 ]
  %1219 = phi float [ %1210, %1173 ], [ %1169, %1167 ]
  %1220 = phi float [ %1211, %1173 ], [ %1170, %1167 ]
  %1221 = phi float [ %1212, %1173 ], [ %1171, %1167 ]
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 1
  %1224 = fcmp fast ogt float %1217, %1223
  br i1 %1224, label %1225, label %1231, !dx.controlflow.hints !65

; <label>:1225                                    ; preds = %1216
  %1226 = fdiv fast float 1.000000e+00, %1217
  %1227 = fmul fast float %1226, %1219
  %1228 = fmul fast float %1226, %1220
  %1229 = fmul fast float %1226, %1221
  %1230 = fmul fast float %1226, %1218
  br label %1231

; <label>:1231                                    ; preds = %1225, %1216
  %1232 = phi float [ %1230, %1225 ], [ %1218, %1216 ]
  %1233 = phi float [ %1227, %1225 ], [ %1219, %1216 ]
  %1234 = phi float [ %1228, %1225 ], [ %1220, %1216 ]
  %1235 = phi float [ %1229, %1225 ], [ %1221, %1216 ]
  br i1 %1224, label %1238, label %1236, !dx.controlflow.hints !66

; <label>:1236                                    ; preds = %1231
  %1237 = fadd fast float %828, %459
  br label %1938

; <label>:1238                                    ; preds = %1231
  %1239 = fmul fast float %1217, 0xBFF7154760000000
  %1240 = call float @dx.op.unary.f32(i32 21, float %1239)  ; Exp(value)
  %1241 = call float @dx.op.unary.f32(i32 7, float %1240)  ; Saturate(value)
  %1242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1242, 3
  %1244 = fcmp fast une float %1243, 0.000000e+00
  %1245 = extractvalue %dx.types.CBufRet.f32 %1242, 0
  %1246 = extractvalue %dx.types.CBufRet.f32 %1242, 1
  %1247 = extractvalue %dx.types.CBufRet.f32 %1242, 2
  br i1 %1244, label %1248, label %1270, !dx.controlflow.hints !67

; <label>:1248                                    ; preds = %1238
  %1249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.f32 %1249, 0
  %1251 = extractvalue %dx.types.CBufRet.f32 %1249, 1
  %1252 = extractvalue %dx.types.CBufRet.f32 %1249, 2
  %1253 = call float @dx.op.dot3.f32(i32 55, float %1245, float %1246, float %1247, float %282, float %283, float %284)  ; Dot3(ax,ay,az,bx,by,bz)
  %1254 = fcmp fast ogt float %1232, 0.000000e+00
  %1255 = select i1 %1254, float 1.000000e+00, float -1.000000e+00
  %1256 = fmul fast float %1255, 5.000000e-01
  %1257 = fmul fast float %1256, %1253
  %1258 = fmul fast float %1255, %1232
  %1259 = fadd fast float %1257, 4.921875e-01
  %1260 = fadd fast float %1258, -3.125000e-02
  %1261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %20, float %1259, float 0x3FB25F3060000000, float %1260, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1262 = extractvalue %dx.types.ResRet.f32 %1261, 0
  %1263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1264 = extractvalue %dx.types.CBufRet.f32 %1263, 0
  %1265 = fmul fast float %1262, 0x400921FB60000000
  %1266 = fmul fast float %1265, %1264
  %1267 = fmul fast float %1266, %1250
  %1268 = fmul fast float %1266, %1251
  %1269 = fmul fast float %1266, %1252
  br label %1270

; <label>:1270                                    ; preds = %1248, %1238
  %1271 = phi float [ %1267, %1248 ], [ 0.000000e+00, %1238 ]
  %1272 = phi float [ %1268, %1248 ], [ 0.000000e+00, %1238 ]
  %1273 = phi float [ %1269, %1248 ], [ 0.000000e+00, %1238 ]
  %1274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1275 = extractvalue %dx.types.CBufRet.f32 %1274, 0
  %1276 = fmul fast float %1275, %1245
  %1277 = fmul fast float %1275, %1246
  %1278 = fmul fast float %1275, %1247
  %1279 = fadd fast float %1276, %456
  %1280 = fadd fast float %1277, %457
  %1281 = fadd fast float %1278, %458
  %1282 = fsub fast float %1279, %470
  %1283 = fsub fast float %1280, %471
  %1284 = fmul fast float %1282, %475
  %1285 = fmul fast float %1283, %476
  %1286 = call float @dx.op.binary.f32(i32 36, float %1284, float %1285)  ; FMin(a,b)
  %1287 = fcmp fast olt float %1286, 0.000000e+00
  %1288 = call float @dx.op.binary.f32(i32 35, float %1284, float %1285)  ; FMax(a,b)
  %1289 = fcmp fast ogt float %1288, 1.000000e+00
  %1290 = or i1 %1287, %1289
  %1291 = fcmp fast olt float %1281, %484
  %1292 = or i1 %1290, %1291
  %1293 = fcmp fast ogt float %1281, %491
  %1294 = or i1 %1292, %1293
  br i1 %1294, label %1309, label %1295, !dx.controlflow.hints !45

; <label>:1295                                    ; preds = %1270
  %1296 = fsub fast float 1.000000e+00, %1285
  %1297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %20, float %1284, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1298 = extractvalue %dx.types.ResRet.f32 %1297, 0
  %1299 = extractvalue %dx.types.ResRet.f32 %1297, 1
  %1300 = extractvalue %dx.types.ResRet.f32 %1297, 2
  %1301 = extractvalue %dx.types.ResRet.f32 %1297, 3
  %1302 = fcmp fast oeq float %1298, 0.000000e+00
  %1303 = fcmp ule float %1281, %1300
  %1304 = fcmp uge float %1281, %1299
  %1305 = or i1 %1304, %1303
  %1306 = or i1 %1302, %1305
  %1307 = zext i1 %1306 to i32
  %1308 = xor i32 %1307, 1
  br label %1309

; <label>:1309                                    ; preds = %1295, %1270
  %1310 = phi float [ %1298, %1295 ], [ %441, %1270 ]
  %1311 = phi float [ %1299, %1295 ], [ %442, %1270 ]
  %1312 = phi float [ %1300, %1295 ], [ %443, %1270 ]
  %1313 = phi float [ %1301, %1295 ], [ %444, %1270 ]
  %1314 = phi i32 [ %1308, %1295 ], [ 0, %1270 ]
  %1315 = icmp eq i32 %1314, 0
  br i1 %582, label %1365, label %1316, !dx.controlflow.hints !49

; <label>:1316                                    ; preds = %1309
  %1317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1317, 0
  %1319 = extractvalue %dx.types.CBufRet.f32 %1317, 1
  %1320 = extractvalue %dx.types.CBufRet.f32 %1317, 2
  %1321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1322 = extractvalue %dx.types.CBufRet.f32 %1321, 0
  %1323 = extractvalue %dx.types.CBufRet.f32 %1321, 1
  %1324 = extractvalue %dx.types.CBufRet.f32 %1321, 2
  %1325 = fsub fast float %1279, %1322
  %1326 = fsub fast float %1280, %1323
  %1327 = fsub fast float %1281, %1324
  %1328 = fmul fast float %1325, %1318
  %1329 = fmul fast float %1326, %1319
  %1330 = fmul fast float %1327, %1320
  %1331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1332 = extractvalue %dx.types.CBufRet.i32 %1331, 3
  %1333 = icmp eq i32 %1332, 0
  br i1 %1333, label %1337, label %1334, !dx.controlflow.hints !50

; <label>:1334                                    ; preds = %1316
  %1335 = call float @dx.op.unary.f32(i32 22, float %1328)  ; Frc(value)
  %1336 = call float @dx.op.unary.f32(i32 22, float %1329)  ; Frc(value)
  br label %1337

; <label>:1337                                    ; preds = %1334, %1316
  %1338 = phi float [ %1335, %1334 ], [ %1328, %1316 ]
  %1339 = phi float [ %1336, %1334 ], [ %1329, %1316 ]
  %1340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %1338, float %1339, float %1330, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1341 = extractvalue %dx.types.ResRet.f32 %1340, 0
  %1342 = fmul fast float %1341, 2.000000e+00
  %1343 = fadd fast float %1342, -1.000000e+00
  %1344 = extractvalue %dx.types.CBufRet.f32 %1317, 3
  %1345 = fmul fast float %1343, %1344
  %1346 = fcmp fast olt float %1345, 0.000000e+00
  %1347 = fcmp fast oge float %1330, 0.000000e+00
  %1348 = fcmp fast ole float %1330, 1.000000e+00
  br i1 %1333, label %1351, label %1349, !dx.controlflow.hints !51

; <label>:1349                                    ; preds = %1337
  %1350 = and i1 %1347, %1348
  br label %1361

; <label>:1351                                    ; preds = %1337
  %1352 = fcmp fast oge float %1328, 0.000000e+00
  %1353 = fcmp fast oge float %1329, 0.000000e+00
  %1354 = and i1 %1352, %1353
  %1355 = and i1 %1347, %1354
  %1356 = fcmp fast ole float %1328, 1.000000e+00
  %1357 = fcmp fast ole float %1329, 1.000000e+00
  %1358 = and i1 %1356, %1357
  %1359 = and i1 %1348, %1358
  %1360 = and i1 %1355, %1359
  br label %1361

; <label>:1361                                    ; preds = %1351, %1349
  %1362 = phi i1 [ %1350, %1349 ], [ %1360, %1351 ]
  %1363 = and i1 %1346, %1362
  %1364 = zext i1 %1363 to i32
  br label %1365

; <label>:1365                                    ; preds = %1361, %1309
  %1366 = phi i32 [ %1364, %1361 ], [ 0, %1309 ]
  br i1 %641, label %1521, label %1367, !dx.controlflow.hints !52

; <label>:1367                                    ; preds = %1365
  %1368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.i32 %1368, 1
  %1370 = and i32 %1369, 1
  %1371 = icmp eq i32 %1370, 0
  br i1 %1371, label %1372, label %1516, !dx.controlflow.hints !53

; <label>:1372                                    ; preds = %1367
  %1373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1374 = extractvalue %dx.types.CBufRet.f32 %1373, 2
  %1375 = extractvalue %dx.types.CBufRet.f32 %1373, 3
  %1376 = fmul fast float %1374, %1279
  %1377 = fmul fast float %1375, %1280
  %1378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.f32 %1378, 0
  %1380 = extractvalue %dx.types.CBufRet.f32 %1378, 1
  %1381 = fadd fast float %1376, %1379
  %1382 = fadd fast float %1377, %1380
  %1383 = call float @dx.op.unary.f32(i32 7, float %1381)  ; Saturate(value)
  %1384 = call float @dx.op.unary.f32(i32 7, float %1382)  ; Saturate(value)
  %1385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %20, float %1383, float %1384, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1386 = extractvalue %dx.types.ResRet.f32 %1385, 0
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 0
  %1389 = fmul fast float %1388, %1386
  %1390 = fsub fast float %1381, %1383
  %1391 = fsub fast float %1382, %1384
  %1392 = extractvalue %dx.types.CBufRet.f32 %1373, 0
  %1393 = extractvalue %dx.types.CBufRet.f32 %1373, 1
  %1394 = fmul fast float %1392, %1390
  %1395 = fmul fast float %1393, %1391
  %1396 = fmul fast float %1394, %1394
  %1397 = fmul fast float %1395, %1395
  %1398 = fadd fast float %1396, %1397
  %1399 = call float @dx.op.unary.f32(i32 24, float %1398)  ; Sqrt(value)
  %1400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1401 = extractvalue %dx.types.CBufRet.f32 %1400, 3
  %1402 = fmul fast float %1401, %1399
  %1403 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  %1404 = extractvalue %dx.types.CBufRet.f32 %1400, 2
  %1405 = fsub fast float %1404, %1389
  %1406 = fmul fast float %1405, %1403
  %1407 = extractvalue %dx.types.CBufRet.f32 %1387, 1
  %1408 = fsub fast float %1281, %1389
  %1409 = fsub fast float %1408, %1407
  %1410 = fsub fast float %1409, %1406
  %1411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1411, 2
  %1413 = fsub fast float %1410, %1412
  %1414 = fcmp fast olt float %1413, 0.000000e+00
  %1415 = extractvalue %dx.types.CBufRet.i32 %1368, 0
  %1416 = icmp eq i32 %1415, 0
  br i1 %1416, label %1467, label %1417

; <label>:1417                                    ; preds = %1372
  br label %1418

; <label>:1418                                    ; preds = %1456, %1417
  %1419 = phi i32 [ %1462, %1456 ], [ 1, %1417 ]
  %1420 = phi i32 [ %1463, %1456 ], [ 0, %1417 ]
  %1421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.f32 %1421, 1
  %1423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1424 = extractvalue %dx.types.CBufRet.i32 %1423, 1
  %1425 = and i32 %1424, 8
  %1426 = icmp eq i32 %1425, 0
  %1427 = fcmp fast ogt float %1422, %1410
  %1428 = or i1 %1427, %1426
  %1429 = add i32 %1420, 171
  %1430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %1429)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.f32 %1430, 0
  %1432 = extractvalue %dx.types.CBufRet.f32 %1430, 1
  %1433 = extractvalue %dx.types.CBufRet.f32 %1430, 2
  br i1 %1428, label %1434, label %1440, !dx.controlflow.hints !54

; <label>:1434                                    ; preds = %1418
  %1435 = fsub fast float %1431, %1279
  %1436 = fsub fast float %1432, %1280
  %1437 = fmul fast float %1435, %1435
  %1438 = fmul fast float %1436, %1436
  %1439 = fadd fast float %1437, %1438
  br label %1456

; <label>:1440                                    ; preds = %1418
  %1441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1442 = extractvalue %dx.types.CBufRet.f32 %1441, 2
  %1443 = extractvalue %dx.types.CBufRet.f32 %1421, 2
  %1444 = fmul fast float %1443, %1442
  %1445 = fsub fast float %1444, %1422
  %1446 = fdiv fast float %1433, %1445
  %1447 = fsub fast float %1279, %1431
  %1448 = fsub fast float %1280, %1432
  %1449 = fsub fast float %1410, %1422
  %1450 = fmul fast float %1446, %1449
  %1451 = fmul fast float %1447, %1447
  %1452 = fmul fast float %1448, %1448
  %1453 = fadd fast float %1451, %1452
  %1454 = fmul fast float %1450, %1450
  %1455 = fadd fast float %1453, %1454
  br label %1456

; <label>:1456                                    ; preds = %1440, %1434
  %1457 = phi float [ %1439, %1434 ], [ %1455, %1440 ]
  %1458 = call float @dx.op.unary.f32(i32 24, float %1457)  ; Sqrt(value)
  %1459 = fsub float %1433, %1458
  %1460 = fcmp fast olt float %1459, 0.000000e+00
  %1461 = zext i1 %1460 to i32
  %1462 = and i32 %1461, %1419
  %1463 = add i32 %1420, 1
  %1464 = extractvalue %dx.types.CBufRet.i32 %1423, 0
  %1465 = icmp ult i32 %1463, %1464
  br i1 %1465, label %1418, label %1466

; <label>:1466                                    ; preds = %1456
  br label %1467

; <label>:1467                                    ; preds = %1466, %1372
  %1468 = phi i32 [ 1, %1372 ], [ %1462, %1466 ]
  br label %1469

; <label>:1469                                    ; preds = %1469, %1467
  %1470 = phi i32 [ %1506, %1469 ], [ %1468, %1467 ]
  %1471 = phi i32 [ %1507, %1469 ], [ 0, %1467 ]
  %1472 = add nuw nsw i32 %1471, 191
  %1473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %1472)  ; CBufferLoadLegacy(handle,regIndex)
  %1474 = extractvalue %dx.types.CBufRet.f32 %1473, 0
  %1475 = extractvalue %dx.types.CBufRet.f32 %1473, 1
  %1476 = extractvalue %dx.types.CBufRet.f32 %1473, 2
  %1477 = add nuw nsw i32 %1471, 195
  %1478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %1477)  ; CBufferLoadLegacy(handle,regIndex)
  %1479 = extractvalue %dx.types.CBufRet.f32 %1478, 0
  %1480 = extractvalue %dx.types.CBufRet.f32 %1478, 1
  %1481 = extractvalue %dx.types.CBufRet.f32 %1478, 2
  %1482 = fsub fast float %1279, %1474
  %1483 = fsub fast float %1280, %1475
  %1484 = fsub fast float %1410, %1476
  %1485 = call float @dx.op.unary.f32(i32 6, float %1482)  ; FAbs(value)
  %1486 = call float @dx.op.unary.f32(i32 6, float %1483)  ; FAbs(value)
  %1487 = call float @dx.op.unary.f32(i32 6, float %1484)  ; FAbs(value)
  %1488 = fsub fast float %1485, %1479
  %1489 = fsub fast float %1486, %1480
  %1490 = fsub fast float %1487, %1481
  %1491 = call float @dx.op.binary.f32(i32 35, float %1488, float 0.000000e+00)  ; FMax(a,b)
  %1492 = call float @dx.op.binary.f32(i32 35, float %1489, float 0.000000e+00)  ; FMax(a,b)
  %1493 = call float @dx.op.binary.f32(i32 35, float %1490, float 0.000000e+00)  ; FMax(a,b)
  %1494 = fmul fast float %1491, %1491
  %1495 = fmul fast float %1492, %1492
  %1496 = fadd fast float %1495, %1494
  %1497 = fmul fast float %1493, %1493
  %1498 = fadd fast float %1496, %1497
  %1499 = call float @dx.op.unary.f32(i32 24, float %1498)  ; Sqrt(value)
  %1500 = call float @dx.op.binary.f32(i32 35, float %1489, float %1490)  ; FMax(a,b)
  %1501 = call float @dx.op.binary.f32(i32 35, float %1488, float %1500)  ; FMax(a,b)
  %1502 = call float @dx.op.binary.f32(i32 36, float %1501, float 0.000000e+00)  ; FMin(a,b)
  %1503 = fadd fast float %1502, %1499
  %1504 = fcmp ogt float %1503, -0.000000e+00
  %1505 = zext i1 %1504 to i32
  %1506 = and i32 %1505, %1470
  %1507 = add nuw nsw i32 %1471, 1
  %1508 = icmp eq i32 %1507, 4
  br i1 %1508, label %1509, label %1469

; <label>:1509                                    ; preds = %1469
  %1510 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1511 = extractvalue %dx.types.CBufRet.i32 %1510, 1
  %1512 = lshr i32 %1511, 1
  %1513 = xor i32 %1512, %1506
  %1514 = zext i1 %1414 to i32
  %1515 = and i32 %1513, %1514
  br label %1516

; <label>:1516                                    ; preds = %1509, %1367
  %1517 = phi i32 [ %439, %1367 ], [ %1515, %1509 ]
  %1518 = phi float [ %1281, %1367 ], [ %1410, %1509 ]
  %1519 = icmp ne i32 %1517, 0
  %1520 = zext i1 %1519 to i32
  br label %1521

; <label>:1521                                    ; preds = %1516, %1365
  %1522 = phi i32 [ %1517, %1516 ], [ %439, %1365 ]
  %1523 = phi float [ %1518, %1516 ], [ %440, %1365 ]
  %1524 = phi i32 [ %1520, %1516 ], [ 0, %1365 ]
  %1525 = icmp eq i32 %1366, 0
  br i1 %1525, label %1705, label %1526, !dx.controlflow.hints !55

; <label>:1526                                    ; preds = %1521
  %1527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1528 = extractvalue %dx.types.CBufRet.f32 %1527, 3
  %1529 = fmul fast float %1528, %1275
  %1530 = fcmp fast oeq float %1529, 0.000000e+00
  br i1 %1530, label %1545, label %1531, !dx.controlflow.hints !56

; <label>:1531                                    ; preds = %1526
  %1532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1533 = extractvalue %dx.types.CBufRet.f32 %1532, 3
  %1534 = fmul fast float %1533, %1529
  %1535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1536 = extractvalue %dx.types.CBufRet.f32 %1535, 0
  %1537 = extractvalue %dx.types.CBufRet.f32 %1535, 1
  %1538 = extractvalue %dx.types.CBufRet.f32 %1535, 2
  %1539 = fmul fast float %1536, %1534
  %1540 = fmul fast float %1537, %1534
  %1541 = fmul fast float %1538, %1534
  %1542 = call float @dx.op.unary.f32(i32 23, float %1539)  ; Log(value)
  %1543 = call float @dx.op.unary.f32(i32 23, float %1540)  ; Log(value)
  %1544 = call float @dx.op.unary.f32(i32 23, float %1541)  ; Log(value)
  br label %1545

; <label>:1545                                    ; preds = %1531, %1526
  %1546 = phi float [ %1542, %1531 ], [ 0.000000e+00, %1526 ]
  %1547 = phi float [ %1543, %1531 ], [ 0.000000e+00, %1526 ]
  %1548 = phi float [ %1544, %1531 ], [ 0.000000e+00, %1526 ]
  %1549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1550 = extractvalue %dx.types.CBufRet.f32 %1549, 0
  %1551 = extractvalue %dx.types.CBufRet.f32 %1549, 1
  %1552 = extractvalue %dx.types.CBufRet.f32 %1549, 2
  %1553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1554 = extractvalue %dx.types.CBufRet.f32 %1553, 0
  %1555 = extractvalue %dx.types.CBufRet.f32 %1553, 1
  %1556 = extractvalue %dx.types.CBufRet.f32 %1553, 2
  %1557 = fsub fast float %1279, %1554
  %1558 = fsub fast float %1280, %1555
  %1559 = fsub fast float %1281, %1556
  %1560 = fmul fast float %1557, %1550
  %1561 = fmul fast float %1558, %1551
  %1562 = fmul fast float %1559, %1552
  %1563 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1564 = extractvalue %dx.types.CBufRet.i32 %1563, 0
  %1565 = extractvalue %dx.types.CBufRet.i32 %1563, 1
  %1566 = uitofp i32 %1564 to float
  %1567 = uitofp i32 %1565 to float
  %1568 = fmul fast float %1560, %1566
  %1569 = fmul fast float %1561, %1567
  %1570 = fadd fast float %1568, 5.000000e-01
  %1571 = fadd fast float %1569, 5.000000e-01
  %1572 = call float @dx.op.unary.f32(i32 22, float %1570)  ; Frc(value)
  %1573 = call float @dx.op.unary.f32(i32 22, float %1571)  ; Frc(value)
  %1574 = call float @dx.op.unary.f32(i32 27, float %1570)  ; Round_ni(value)
  %1575 = call float @dx.op.unary.f32(i32 27, float %1571)  ; Round_ni(value)
  %1576 = fadd fast float %1574, 1.000000e+00
  %1577 = fadd fast float %1575, 1.000000e+00
  %1578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1579 = extractvalue %dx.types.CBufRet.f32 %1578, 0
  %1580 = extractvalue %dx.types.CBufRet.f32 %1578, 1
  %1581 = fmul fast float %1579, %1576
  %1582 = fmul fast float %1580, %1577
  %1583 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %19, float %1581, float %1582, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1584 = extractvalue %dx.types.ResRet.f32 %1583, 0
  %1585 = extractvalue %dx.types.ResRet.f32 %1583, 1
  %1586 = extractvalue %dx.types.ResRet.f32 %1583, 2
  %1587 = extractvalue %dx.types.ResRet.f32 %1583, 3
  %1588 = extractvalue %dx.types.CBufRet.i32 %1563, 2
  %1589 = extractvalue %dx.types.CBufRet.f32 %1578, 2
  %1590 = uitofp i32 %1588 to float
  %1591 = fadd fast float %1590, -1.000000e+00
  %1592 = fmul fast float %1591, %1584
  %1593 = fmul fast float %1591, %1585
  %1594 = fmul fast float %1591, %1586
  %1595 = fmul fast float %1591, %1587
  %1596 = fadd fast float %1592, 5.000000e-01
  %1597 = fadd fast float %1593, 5.000000e-01
  %1598 = fadd fast float %1594, 5.000000e-01
  %1599 = fadd fast float %1595, 5.000000e-01
  %1600 = fptoui float %1596 to i32
  %1601 = fptoui float %1597 to i32
  %1602 = fptoui float %1598 to i32
  %1603 = fptoui float %1599 to i32
  %1604 = uitofp i32 %1600 to float
  %1605 = uitofp i32 %1601 to float
  %1606 = uitofp i32 %1602 to float
  %1607 = uitofp i32 %1603 to float
  %1608 = fadd fast float %1604, 5.000000e-01
  %1609 = fadd fast float %1605, 5.000000e-01
  %1610 = fadd fast float %1606, 5.000000e-01
  %1611 = fadd fast float %1607, 5.000000e-01
  %1612 = fmul fast float %1608, %1589
  %1613 = fmul fast float %1609, %1589
  %1614 = fmul fast float %1610, %1589
  %1615 = fmul fast float %1611, %1589
  %1616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1612, float %1562, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1617 = extractvalue %dx.types.ResRet.f32 %1616, 0
  %1618 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1613, float %1562, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1619 = extractvalue %dx.types.ResRet.f32 %1618, 0
  %1620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1614, float %1562, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1621 = extractvalue %dx.types.ResRet.f32 %1620, 0
  %1622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1615, float %1562, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1623 = extractvalue %dx.types.ResRet.f32 %1622, 0
  %1624 = fsub fast float %1621, %1623
  %1625 = fmul fast float %1624, %1572
  %1626 = fadd fast float %1625, %1623
  %1627 = fsub fast float %1619, %1617
  %1628 = fmul fast float %1627, %1572
  %1629 = fadd fast float %1628, %1617
  %1630 = fsub fast float %1629, %1626
  %1631 = fmul fast float %1630, %1573
  %1632 = fadd fast float %1631, %1626
  %1633 = fcmp fast ogt float %1632, 0.000000e+00
  br i1 %1633, label %1634, label %1702, !dx.controlflow.hints !57

; <label>:1634                                    ; preds = %1545
  %1635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1636 = extractvalue %dx.types.CBufRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.CBufRet.f32 %1635, 1
  %1638 = extractvalue %dx.types.CBufRet.f32 %1635, 2
  %1639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1640 = extractvalue %dx.types.CBufRet.f32 %1639, 0
  %1641 = extractvalue %dx.types.CBufRet.f32 %1639, 1
  %1642 = extractvalue %dx.types.CBufRet.f32 %1639, 2
  %1643 = fmul fast float %1558, %1550
  %1644 = fmul fast float %1559, %1550
  %1645 = fadd fast float %1560, %1640
  %1646 = fadd fast float %1643, %1641
  %1647 = fadd fast float %1644, %1642
  %1648 = fmul fast float %1645, %1636
  %1649 = fmul fast float %1646, %1636
  %1650 = fmul fast float %1647, %1636
  %1651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1648, float %1649, float %1650, float undef, i32 0, i32 0, i32 0, float %1546)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1652 = extractvalue %dx.types.ResRet.f32 %1651, 0
  %1653 = fmul fast float %1645, %1637
  %1654 = fmul fast float %1646, %1637
  %1655 = fmul fast float %1647, %1637
  %1656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1653, float %1654, float %1655, float undef, i32 0, i32 0, i32 0, float %1547)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1657 = extractvalue %dx.types.ResRet.f32 %1656, 1
  %1658 = fmul fast float %1645, %1638
  %1659 = fmul fast float %1646, %1638
  %1660 = fmul fast float %1647, %1638
  %1661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1658, float %1659, float %1660, float undef, i32 0, i32 0, i32 0, float %1548)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1662 = extractvalue %dx.types.ResRet.f32 %1661, 2
  %1663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1664 = extractvalue %dx.types.CBufRet.f32 %1663, 1
  %1665 = fmul fast float %1657, %1652
  %1666 = fmul fast float %1665, %1662
  %1667 = call float @dx.op.unary.f32(i32 23, float %1666)  ; Log(value)
  %1668 = fmul fast float %1667, %1664
  %1669 = call float @dx.op.unary.f32(i32 21, float %1668)  ; Exp(value)
  %1670 = extractvalue %dx.types.CBufRet.f32 %1663, 2
  %1671 = fmul fast float %1632, %1632
  %1672 = fmul fast float %1671, %1669
  %1673 = fmul fast float %1672, %1670
  %1674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1675 = extractvalue %dx.types.CBufRet.f32 %1674, 3
  %1676 = fmul fast float %1675, %1673
  %1677 = bitcast float %1676 to i32
  %1678 = sitofp i32 %1677 to float
  %1679 = fptosi float %1678 to i32
  %1680 = bitcast i32 %1679 to float
  %1681 = fsub fast float 1.000000e+00, %1673
  %1682 = bitcast float %1681 to i32
  %1683 = sitofp i32 %1682 to float
  %1684 = fptosi float %1683 to i32
  %1685 = bitcast i32 %1684 to float
  %1686 = fadd fast float %1680, %1685
  %1687 = bitcast float %1686 to i32
  %1688 = sub nsw i32 2129859010, %1687
  %1689 = bitcast i32 %1688 to float
  %1690 = fmul fast float %1689, %1680
  %1691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1692 = extractvalue %dx.types.CBufRet.f32 %1691, 2
  %1693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1694 = extractvalue %dx.types.CBufRet.f32 %1693, 0
  %1695 = fmul fast float %1690, %1694
  %1696 = fadd fast float %1695, 1.000000e+00
  %1697 = bitcast float %1696 to i32
  %1698 = sub nsw i32 2129859010, %1697
  %1699 = bitcast i32 %1698 to float
  %1700 = fmul fast float %1690, %1692
  %1701 = fmul fast float %1700, %1699
  br label %1702

; <label>:1702                                    ; preds = %1634, %1545
  %1703 = phi float [ %1701, %1634 ], [ %1632, %1545 ]
  %1704 = fmul fast float %1703, %1275
  br label %1705

; <label>:1705                                    ; preds = %1702, %1521
  %1706 = phi float [ %1704, %1702 ], [ 0.000000e+00, %1521 ]
  br i1 %1315, label %1832, label %1707, !dx.controlflow.hints !58

; <label>:1707                                    ; preds = %1705
  %1708 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1709 = extractvalue %dx.types.CBufRet.i32 %1708, 0
  %1710 = icmp ne i32 %1709, 0
  %1711 = zext i1 %1710 to i32
  %1712 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1713 = extractvalue %dx.types.CBufRet.i32 %1712, 0
  %1714 = icmp eq i32 %1713, 0
  br i1 %1714, label %1748, label %1715

; <label>:1715                                    ; preds = %1707
  br label %1716

; <label>:1716                                    ; preds = %1743, %1715
  %1717 = phi i32 [ %1744, %1743 ], [ 0, %1715 ]
  %1718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1717, i32 0)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.f32 %1718, 0
  %1720 = extractvalue %dx.types.ResRet.f32 %1718, 1
  %1721 = extractvalue %dx.types.ResRet.f32 %1718, 2
  %1722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1717, i32 16)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.f32 %1722, 0
  %1724 = extractvalue %dx.types.ResRet.f32 %1722, 1
  %1725 = extractvalue %dx.types.ResRet.f32 %1722, 2
  %1726 = fsub fast float %1719, %1723
  %1727 = fsub fast float %1720, %1724
  %1728 = fsub fast float %1721, %1725
  %1729 = fadd fast float %1723, %1719
  %1730 = fadd fast float %1724, %1720
  %1731 = fadd fast float %1725, %1721
  %1732 = fcmp fast olt float %1279, %1726
  %1733 = fcmp fast olt float %1280, %1727
  %1734 = fcmp fast olt float %1281, %1728
  %1735 = or i1 %1732, %1733
  %1736 = or i1 %1734, %1735
  %1737 = fcmp fast ogt float %1279, %1729
  %1738 = fcmp fast ogt float %1280, %1730
  %1739 = fcmp fast ogt float %1281, %1731
  %1740 = or i1 %1737, %1738
  %1741 = or i1 %1739, %1740
  %1742 = or i1 %1736, %1741
  br i1 %1742, label %1743, label %1746, !dx.controlflow.hints !59

; <label>:1743                                    ; preds = %1716
  %1744 = add nuw i32 %1717, 1
  %1745 = icmp ult i32 %1744, %1713
  br i1 %1745, label %1716, label %1746

; <label>:1746                                    ; preds = %1743, %1716
  %1747 = phi i32 [ 255, %1743 ], [ %1717, %1716 ]
  br label %1748

; <label>:1748                                    ; preds = %1746, %1707
  %1749 = phi i32 [ 255, %1707 ], [ %1747, %1746 ]
  %1750 = icmp eq i32 %1749, 255
  br i1 %1750, label %1756, label %1751, !dx.controlflow.hints !60

; <label>:1751                                    ; preds = %1748
  %1752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1749, i32 156)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.i32 %1752, 0
  %1754 = icmp ne i32 %1753, 0
  %1755 = zext i1 %1754 to i32
  br label %1756

; <label>:1756                                    ; preds = %1751, %1748
  %1757 = phi i32 [ %1755, %1751 ], [ %1711, %1748 ]
  %1758 = icmp eq i32 %1757, 0
  br i1 %1758, label %1759, label %1828, !dx.controlflow.hints !61

; <label>:1759                                    ; preds = %1756
  %1760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1761 = extractvalue %dx.types.CBufRet.f32 %1760, 3
  %1762 = extractvalue %dx.types.CBufRet.f32 %487, 0
  %1763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1764 = extractvalue %dx.types.CBufRet.f32 %1763, 2
  %1765 = extractvalue %dx.types.CBufRet.f32 %1763, 3
  br i1 %1750, label %1776, label %1766, !dx.controlflow.hints !62

; <label>:1766                                    ; preds = %1759
  %1767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1749, i32 60)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.f32 %1767, 0
  %1769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1749, i32 64)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.f32 %1769, 0
  %1771 = extractvalue %dx.types.ResRet.f32 %1769, 1
  %1772 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1749, i32 72)  ; BufferLoad(srv,index,wot)
  %1773 = extractvalue %dx.types.ResRet.f32 %1772, 0
  %1774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1749, i32 96)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.f32 %1774, 0
  br label %1776

; <label>:1776                                    ; preds = %1766, %1759
  %1777 = phi float [ %1768, %1766 ], [ %490, %1759 ]
  %1778 = phi float [ %1773, %1766 ], [ %488, %1759 ]
  %1779 = phi float [ %1775, %1766 ], [ %1762, %1759 ]
  %1780 = phi float [ %1770, %1766 ], [ %1764, %1759 ]
  %1781 = phi float [ %1771, %1766 ], [ %1765, %1759 ]
  %1782 = call float @dx.op.binary.f32(i32 35, float %1310, float 0.000000e+00)  ; FMax(a,b)
  %1783 = call float @dx.op.binary.f32(i32 36, float %1782, float 1.000000e+00)  ; FMin(a,b)
  %1784 = call float @dx.op.unary.f32(i32 24, float %1783)  ; Sqrt(value)
  %1785 = call float @dx.op.binary.f32(i32 35, float %1313, float 0x3F847AE140000000)  ; FMax(a,b)
  %1786 = fsub fast float %1311, %1281
  %1787 = fsub fast float %1281, %1312
  %1788 = call float @dx.op.binary.f32(i32 36, float %1787, float %1786)  ; FMin(a,b)
  %1789 = fdiv fast float %1788, %1785
  %1790 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  %1791 = fsub fast float %1281, %1778
  %1792 = fdiv fast float %1791, %1777
  %1793 = call float @dx.op.unary.f32(i32 7, float %1792)  ; Saturate(value)
  %1794 = fsub fast float 1.000000e+00, %1793
  %1795 = fmul float %1790, %1794
  %1796 = fmul float %1795, %1795
  %1797 = fmul fast float %1784, %1761
  %1798 = fmul fast float %1797, %1796
  %1799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1800 = extractvalue %dx.types.CBufRet.f32 %1799, 2
  %1801 = extractvalue %dx.types.CBufRet.f32 %1799, 1
  %1802 = fsub fast float %1798, %1801
  %1803 = fsub fast float %1800, %1801
  %1804 = fdiv fast float %1802, %1803
  %1805 = call float @dx.op.unary.f32(i32 7, float %1804)  ; Saturate(value)
  %1806 = fmul fast float %1805, %1779
  %1807 = fcmp fast ogt float %1781, 0.000000e+00
  br i1 %1807, label %1808, label %1828, !dx.controlflow.hints !63

; <label>:1808                                    ; preds = %1776
  %1809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1810 = extractvalue %dx.types.CBufRet.f32 %1809, 0
  %1811 = extractvalue %dx.types.CBufRet.f32 %1809, 1
  %1812 = extractvalue %dx.types.CBufRet.f32 %1809, 2
  %1813 = fsub fast float %1279, %1810
  %1814 = fsub fast float %1280, %1811
  %1815 = fsub fast float %1281, %1812
  %1816 = fmul fast float %1813, %1813
  %1817 = fmul fast float %1814, %1814
  %1818 = fadd fast float %1816, %1817
  %1819 = fmul fast float %1815, %1815
  %1820 = fadd fast float %1818, %1819
  %1821 = call float @dx.op.unary.f32(i32 24, float %1820)  ; Sqrt(value)
  %1822 = fsub fast float %1821, %1780
  %1823 = fsub fast float %1781, %1780
  %1824 = fdiv fast float %1822, %1823
  %1825 = call float @dx.op.unary.f32(i32 7, float %1824)  ; Saturate(value)
  %1826 = fmul fast float %1825, %1825
  %1827 = fmul fast float %1826, %1806
  br label %1828

; <label>:1828                                    ; preds = %1808, %1776, %1756
  %1829 = phi float [ 0.000000e+00, %1756 ], [ %1827, %1808 ], [ %1806, %1776 ]
  %1830 = fmul fast float %1829, %1275
  %1831 = fadd fast float %1830, %1706
  br label %1832

; <label>:1832                                    ; preds = %1828, %1705
  %1833 = phi float [ %1831, %1828 ], [ %1706, %1705 ]
  %1834 = icmp eq i32 %1524, 0
  br i1 %1834, label %1866, label %1835, !dx.controlflow.hints !64

; <label>:1835                                    ; preds = %1832
  %1836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1837 = extractvalue %dx.types.CBufRet.f32 %1836, 1
  %1838 = fsub fast float %1275, %1837
  %1839 = extractvalue %dx.types.CBufRet.f32 %1836, 3
  %1840 = fmul fast float %1838, %1839
  %1841 = call float @dx.op.unary.f32(i32 7, float %1840)  ; Saturate(value)
  %1842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1843 = extractvalue %dx.types.CBufRet.f32 %1842, 3
  %1844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1845 = extractvalue %dx.types.CBufRet.f32 %1844, 2
  %1846 = fsub fast float %1845, %1523
  %1847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.f32 %1847, 3
  %1849 = fmul fast float %1846, %1848
  %1850 = call float @dx.op.unary.f32(i32 7, float %1849)  ; Saturate(value)
  %1851 = fmul fast float %1850, %1843
  %1852 = extractvalue %dx.types.CBufRet.f32 %1847, 0
  %1853 = fsub fast float %1275, %1852
  %1854 = extractvalue %dx.types.CBufRet.f32 %1847, 1
  %1855 = fmul fast float %1853, %1854
  %1856 = call float @dx.op.unary.f32(i32 7, float %1855)  ; Saturate(value)
  %1857 = fsub fast float 1.000000e+00, %1841
  %1858 = fmul fast float %1856, %1857
  %1859 = fadd fast float %1858, %1841
  %1860 = extractvalue %dx.types.CBufRet.f32 %1836, 0
  %1861 = fsub fast float %1851, %1860
  %1862 = fmul fast float %1861, %1859
  %1863 = fadd fast float %1862, %1860
  %1864 = fmul fast float %1863, %1275
  %1865 = fadd fast float %1864, %1833
  br label %1866

; <label>:1866                                    ; preds = %1835, %1832
  %1867 = phi float [ %1865, %1835 ], [ %1833, %1832 ]
  %1868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1869 = extractvalue %dx.types.CBufRet.f32 %1868, 3
  %1870 = fmul fast float %1867, 0xBFF7154760000000
  %1871 = fmul fast float %1870, %1869
  %1872 = call float @dx.op.unary.f32(i32 21, float %1871)  ; Exp(value)
  %1873 = call float @dx.op.unary.f32(i32 7, float %1872)  ; Saturate(value)
  %1874 = fmul fast float %1873, %1271
  %1875 = fmul fast float %1873, %1272
  %1876 = fmul fast float %1873, %1273
  %1877 = fadd fast float %1874, %209
  %1878 = fadd fast float %1875, %210
  %1879 = fadd fast float %1876, %211
  %1880 = fsub fast float 1.000000e+00, %1241
  %1881 = fmul fast float %1233, %452
  %1882 = fmul fast float %1881, %1880
  %1883 = fmul fast float %1882, %1877
  %1884 = fmul fast float %1234, %452
  %1885 = fmul fast float %1884, %1880
  %1886 = fmul fast float %1885, %1878
  %1887 = fmul fast float %1235, %452
  %1888 = fmul fast float %1887, %1880
  %1889 = fmul fast float %1888, %1879
  %1890 = fadd fast float %1883, %453
  %1891 = fadd fast float %1886, %454
  %1892 = fadd fast float %1889, %455
  %1893 = fdiv fast float %1217, %828
  %1894 = fadd fast float %828, %459
  %1895 = fmul fast float %459, %459
  %1896 = fmul fast float %1894, %1894
  %1897 = fsub fast float %1895, %1896
  %1898 = fmul fast float %1897, -5.000000e-01
  %1899 = fmul fast float %1898, %1893
  %1900 = fadd fast float %1899, %451
  %1901 = fadd fast float %1217, %461
  %1902 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1903 = extractvalue %dx.types.CBufRet.i32 %1902, 0
  %1904 = icmp eq i32 %1903, 0
  br i1 %1904, label %1931, label %1905, !dx.controlflow.hints !68

; <label>:1905                                    ; preds = %1866
  %1906 = icmp ne i32 %466, 0
  %1907 = zext i1 %1906 to i32
  %1908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1909 = extractvalue %dx.types.CBufRet.f32 %1908, 2
  %1910 = extractvalue %dx.types.CBufRet.f32 %1908, 0
  %1911 = fsub fast float %1894, %1910
  %1912 = fmul fast float %1911, %1909
  %1913 = call float @dx.op.unary.f32(i32 7, float %1912)  ; Saturate(value)
  %1914 = fadd fast float %1913, -5.000000e-01
  %1915 = fmul fast float %1914, 2.000000e+00
  %1916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1917 = extractvalue %dx.types.CBufRet.f32 %1916, 2
  %1918 = fcmp fast olt float %1915, %1917
  br i1 %1918, label %1919, label %1931, !dx.controlflow.hints !69

; <label>:1919                                    ; preds = %1905
  %1920 = fmul fast float %1915, %1915
  %1921 = fmul fast float %1880, %452
  %1922 = fmul fast float %1915, %1921
  %1923 = fmul fast float %1920, %1921
  %1924 = fmul fast float %1922, %1920
  %1925 = fmul fast float %1920, %1920
  %1926 = fmul fast float %1925, %1921
  %1927 = fadd fast float %1922, %462
  %1928 = fadd fast float %1923, %463
  %1929 = fadd fast float %1924, %464
  %1930 = fadd fast float %1926, %465
  br label %1931

; <label>:1931                                    ; preds = %1919, %1905, %1866
  %1932 = phi float [ %462, %1866 ], [ %1927, %1919 ], [ %462, %1905 ]
  %1933 = phi float [ %463, %1866 ], [ %1928, %1919 ], [ %463, %1905 ]
  %1934 = phi float [ %464, %1866 ], [ %1929, %1919 ], [ %464, %1905 ]
  %1935 = phi float [ %465, %1866 ], [ %1930, %1919 ], [ %465, %1905 ]
  %1936 = phi i32 [ %466, %1866 ], [ 1, %1919 ], [ %1907, %1905 ]
  %1937 = fmul fast float %1241, %452
  br label %1938

; <label>:1938                                    ; preds = %1931, %1236
  %1939 = phi float [ %1237, %1236 ], [ %1894, %1931 ]
  %1940 = phi i32 [ %439, %1236 ], [ %1522, %1931 ]
  %1941 = phi float [ %440, %1236 ], [ %1523, %1931 ]
  %1942 = phi float [ %441, %1236 ], [ %1310, %1931 ]
  %1943 = phi float [ %442, %1236 ], [ %1311, %1931 ]
  %1944 = phi float [ %443, %1236 ], [ %1312, %1931 ]
  %1945 = phi float [ %444, %1236 ], [ %1313, %1931 ]
  %1946 = phi float [ %451, %1236 ], [ %1900, %1931 ]
  %1947 = phi float [ %452, %1236 ], [ %1937, %1931 ]
  %1948 = phi float [ %453, %1236 ], [ %1890, %1931 ]
  %1949 = phi float [ %454, %1236 ], [ %1891, %1931 ]
  %1950 = phi float [ %455, %1236 ], [ %1892, %1931 ]
  %1951 = phi float [ %461, %1236 ], [ %1901, %1931 ]
  %1952 = phi float [ %462, %1236 ], [ %1932, %1931 ]
  %1953 = phi float [ %463, %1236 ], [ %1933, %1931 ]
  %1954 = phi float [ %464, %1236 ], [ %1934, %1931 ]
  %1955 = phi float [ %465, %1236 ], [ %1935, %1931 ]
  %1956 = phi i32 [ %466, %1236 ], [ %1936, %1931 ]
  %1957 = fmul fast float %828, %282
  %1958 = fmul fast float %828, %283
  %1959 = fmul fast float %828, %284
  %1960 = fadd fast float %1957, %456
  %1961 = fadd fast float %1958, %457
  %1962 = fadd fast float %1959, %458
  %1963 = fcmp fast olt float %1939, %418
  %1964 = extractvalue %dx.types.CBufRet.f32 %1222, 2
  %1965 = fcmp fast olt float %1964, %1947
  %1966 = and i1 %1963, %1965
  br i1 %1966, label %438, label %1967

; <label>:1967                                    ; preds = %1938
  br label %1968

; <label>:1968                                    ; preds = %1967, %411
  %1969 = phi float [ 0.000000e+00, %411 ], [ %1946, %1967 ]
  %1970 = phi float [ 1.000000e+00, %411 ], [ %1947, %1967 ]
  %1971 = phi float [ 0.000000e+00, %411 ], [ %1948, %1967 ]
  %1972 = phi float [ 0.000000e+00, %411 ], [ %1949, %1967 ]
  %1973 = phi float [ 0.000000e+00, %411 ], [ %1950, %1967 ]
  %1974 = phi float [ 0.000000e+00, %411 ], [ %1951, %1967 ]
  %1975 = phi float [ 0.000000e+00, %411 ], [ %1952, %1967 ]
  %1976 = phi float [ 0.000000e+00, %411 ], [ %1953, %1967 ]
  %1977 = phi float [ 0.000000e+00, %411 ], [ %1954, %1967 ]
  %1978 = phi float [ 0.000000e+00, %411 ], [ %1955, %1967 ]
  %1979 = phi i32 [ 0, %411 ], [ %1956, %1967 ]
  %1980 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1981 = extractvalue %dx.types.CBufRet.i32 %1980, 0
  %1982 = icmp eq i32 %1981, 0
  br i1 %1982, label %2024, label %1983, !dx.controlflow.hints !70

; <label>:1983                                    ; preds = %1968
  %1984 = icmp eq i32 %1979, 0
  br i1 %1984, label %2023, label %1985, !dx.controlflow.hints !71

; <label>:1985                                    ; preds = %1983
  %1986 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1987 = extractvalue %dx.types.CBufRet.i32 %1986, 2
  %1988 = icmp eq i32 %1987, 0
  br i1 %1988, label %1995, label %1989, !dx.controlflow.hints !72

; <label>:1989                                    ; preds = %1985
  %1990 = fsub fast float 1.000000e+00, %1970
  %1991 = fdiv fast float %1975, %1990
  %1992 = fdiv fast float %1976, %1990
  %1993 = fdiv fast float %1977, %1990
  %1994 = fdiv fast float %1978, %1990
  br label %2000

; <label>:1995                                    ; preds = %1985
  %1996 = fadd fast float %1975, %1970
  %1997 = fadd fast float %1976, %1970
  %1998 = fadd fast float %1977, %1970
  %1999 = fadd fast float %1978, %1970
  br label %2000

; <label>:2000                                    ; preds = %1995, %1989
  %2001 = phi float [ %1991, %1989 ], [ %1996, %1995 ]
  %2002 = phi float [ %1992, %1989 ], [ %1997, %1995 ]
  %2003 = phi float [ %1993, %1989 ], [ %1998, %1995 ]
  %2004 = phi float [ %1994, %1989 ], [ %1999, %1995 ]
  %2005 = call float @dx.op.binary.f32(i32 35, float %2001, float -1.000000e+00)  ; FMax(a,b)
  %2006 = call float @dx.op.binary.f32(i32 35, float %2002, float -1.000000e+00)  ; FMax(a,b)
  %2007 = call float @dx.op.binary.f32(i32 35, float %2003, float -1.000000e+00)  ; FMax(a,b)
  %2008 = call float @dx.op.binary.f32(i32 35, float %2004, float -1.000000e+00)  ; FMax(a,b)
  %2009 = call float @dx.op.binary.f32(i32 36, float %2005, float 1.000000e+00)  ; FMin(a,b)
  %2010 = call float @dx.op.binary.f32(i32 36, float %2006, float 1.000000e+00)  ; FMin(a,b)
  %2011 = call float @dx.op.binary.f32(i32 36, float %2007, float 1.000000e+00)  ; FMin(a,b)
  %2012 = call float @dx.op.binary.f32(i32 36, float %2008, float 1.000000e+00)  ; FMin(a,b)
  %2013 = fmul fast float %2009, 1.500000e+00
  %2014 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2011, float %2013)  ; FMad(a,b,c)
  %2015 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2010, float 0.000000e+00)  ; FMad(a,b,c)
  %2016 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2012, float %2015)  ; FMad(a,b,c)
  %2017 = fmul fast float %2009, 0x3FEBB67AE0000000
  %2018 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2011, float %2017)  ; FMad(a,b,c)
  %2019 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2010, float 0.000000e+00)  ; FMad(a,b,c)
  %2020 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2012, float %2019)  ; FMad(a,b,c)
  %2021 = fadd fast float %2014, 5.000000e-01
  %2022 = fadd fast float %2018, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %24, i32 %25, i32 0, float %2021, float %2016, float %2022, float %2020, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2024

; <label>:2023                                    ; preds = %1983
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %24, i32 %25, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2024

; <label>:2024                                    ; preds = %2023, %2000, %1968
  %2025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2026 = extractvalue %dx.types.CBufRet.f32 %2025, 2
  %2027 = fsub fast float %1970, %2026
  %2028 = fdiv fast float %2027, %2026
  %2029 = call float @dx.op.unary.f32(i32 7, float %2028)  ; Saturate(value)
  %2030 = fmul fast float %2029, 2.000000e+00
  %2031 = fsub fast float 3.000000e+00, %2030
  %2032 = fmul fast float %2029, %2029
  %2033 = fmul fast float %2032, %1970
  %2034 = fmul fast float %2033, %2031
  %2035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2036 = extractvalue %dx.types.CBufRet.f32 %2035, 0
  %2037 = extractvalue %dx.types.CBufRet.f32 %2035, 1
  %2038 = extractvalue %dx.types.CBufRet.f32 %2035, 2
  %2039 = call float @dx.op.dot3.f32(i32 55, float %282, float %283, float %284, float %2036, float %2037, float %2038)  ; Dot3(ax,ay,az,bx,by,bz)
  %2040 = fmul fast float %2039, %1969
  %2041 = fcmp fast ogt float %1974, 0.000000e+00
  %2042 = fdiv fast float 1.000000e+00, %1974
  %2043 = fmul fast float %2040, %2042
  %2044 = select i1 %2041, float %2043, float %293
  %2045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2046 = extractvalue %dx.types.CBufRet.f32 %2045, 0
  %2047 = extractvalue %dx.types.CBufRet.f32 %2045, 1
  %2048 = extractvalue %dx.types.CBufRet.f32 %2045, 2
  %2049 = fmul fast float %2046, %246
  %2050 = fmul fast float %2047, %246
  %2051 = fmul fast float %2048, %246
  %2052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2053 = extractvalue %dx.types.CBufRet.f32 %2052, 0
  %2054 = extractvalue %dx.types.CBufRet.f32 %2052, 1
  %2055 = extractvalue %dx.types.CBufRet.f32 %2052, 2
  %2056 = fmul fast float %2053, %247
  %2057 = fmul fast float %2054, %247
  %2058 = fmul fast float %2055, %247
  %2059 = fadd fast float %2056, %2049
  %2060 = fadd fast float %2057, %2050
  %2061 = fadd fast float %2058, %2051
  %2062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2063 = extractvalue %dx.types.CBufRet.f32 %2062, 0
  %2064 = extractvalue %dx.types.CBufRet.f32 %2062, 1
  %2065 = extractvalue %dx.types.CBufRet.f32 %2062, 2
  %2066 = fadd fast float %2059, %2063
  %2067 = fadd fast float %2060, %2064
  %2068 = fadd fast float %2061, %2065
  %2069 = fmul fast float %2066, %2044
  %2070 = fmul fast float %2067, %2044
  %2071 = fmul fast float %2068, %2044
  %2072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2073 = extractvalue %dx.types.CBufRet.f32 %2072, 0
  %2074 = extractvalue %dx.types.CBufRet.f32 %2072, 1
  %2075 = extractvalue %dx.types.CBufRet.f32 %2072, 2
  %2076 = extractvalue %dx.types.CBufRet.f32 %2072, 3
  %2077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2078 = extractvalue %dx.types.CBufRet.f32 %2077, 0
  %2079 = extractvalue %dx.types.CBufRet.f32 %2077, 1
  %2080 = extractvalue %dx.types.CBufRet.f32 %2077, 2
  %2081 = extractvalue %dx.types.CBufRet.f32 %2077, 3
  %2082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2083 = extractvalue %dx.types.CBufRet.f32 %2082, 0
  %2084 = extractvalue %dx.types.CBufRet.f32 %2082, 1
  %2085 = extractvalue %dx.types.CBufRet.f32 %2082, 2
  %2086 = extractvalue %dx.types.CBufRet.f32 %2082, 3
  %2087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2088 = extractvalue %dx.types.CBufRet.f32 %2087, 0
  %2089 = extractvalue %dx.types.CBufRet.f32 %2087, 1
  %2090 = extractvalue %dx.types.CBufRet.f32 %2087, 2
  %2091 = extractvalue %dx.types.CBufRet.f32 %2087, 3
  %2092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2093 = extractvalue %dx.types.CBufRet.f32 %2092, 3
  %2094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2095 = extractvalue %dx.types.CBufRet.f32 %2094, 3
  %2096 = extractvalue %dx.types.CBufRet.f32 %2094, 0
  %2097 = extractvalue %dx.types.CBufRet.f32 %2094, 1
  %2098 = extractvalue %dx.types.CBufRet.f32 %2094, 2
  %2099 = fcmp fast olt float %2098, -5.000000e-01
  %2100 = call float @dx.op.dot3.f32(i32 55, float %2069, float %2070, float %2071, float %2069, float %2070, float %2071)  ; Dot3(ax,ay,az,bx,by,bz)
  %2101 = call float @dx.op.unary.f32(i32 25, float %2100)  ; Rsqrt(value)
  %2102 = fmul fast float %2101, %2100
  %2103 = fmul fast float %2101, %2069
  %2104 = fmul fast float %2101, %2070
  %2105 = fmul fast float %2101, %2071
  %2106 = fadd fast float %2102, %2076
  %2107 = call float @dx.op.dot3.f32(i32 55, float %2103, float %2104, float %2105, float %2073, float %2074, float %2075)  ; Dot3(ax,ay,az,bx,by,bz)
  %2108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2109 = extractvalue %dx.types.CBufRet.i32 %2108, 1
  %2110 = and i32 %2109, 1
  %2111 = icmp ne i32 %2110, 0
  %2112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2113 = extractvalue %dx.types.CBufRet.f32 %2112, 2
  %2114 = fcmp fast ogt float %2113, 0.000000e+00
  %2115 = and i1 %2111, %2114
  br i1 %2115, label %2116, label %2522, !dx.controlflow.hints !73

; <label>:2116                                    ; preds = %2024
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 3
  %2119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2120 = extractvalue %dx.types.CBufRet.f32 %2119, 2
  %2121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2122 = extractvalue %dx.types.CBufRet.f32 %2121, 2
  %2123 = fsub fast float %2120, %2122
  %2124 = and i32 %2109, 2
  %2125 = extractvalue %dx.types.CBufRet.i32 %2108, 0
  %2126 = call i32 @dx.op.binary.i32(i32 40, i32 %2125, i32 3)  ; UMin(a,b)
  %2127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2128 = extractvalue %dx.types.CBufRet.f32 %2127, 0
  %2129 = extractvalue %dx.types.CBufRet.f32 %2127, 1
  %2130 = extractvalue %dx.types.CBufRet.f32 %2121, 0
  %2131 = extractvalue %dx.types.CBufRet.f32 %2121, 1
  %2132 = fsub fast float %2128, %2130
  %2133 = fsub fast float %2129, %2131
  %2134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2135 = extractvalue %dx.types.CBufRet.f32 %2134, 0
  %2136 = fcmp fast ogt float %2135, 0.000000e+00
  %2137 = fsub fast float -0.000000e+00, %2132
  %2138 = fsub fast float -0.000000e+00, %2133
  %2139 = call float @dx.op.dot2.f32(i32 54, float %2103, float %2104, float %2103, float %2104)  ; Dot2(ax,ay,bx,by)
  %2140 = call float @dx.op.dot2.f32(i32 54, float %2103, float %2104, float %2137, float %2138)  ; Dot2(ax,ay,bx,by)
  %2141 = fmul fast float %2140, 2.000000e+00
  %2142 = call float @dx.op.dot2.f32(i32 54, float %2137, float %2138, float %2137, float %2138)  ; Dot2(ax,ay,bx,by)
  %2143 = fmul fast float %2135, %2135
  %2144 = fsub fast float %2142, %2143
  %2145 = fmul fast float %2141, %2141
  %2146 = fmul fast float %2139, 4.000000e+00
  %2147 = fmul fast float %2146, %2144
  %2148 = fsub fast float %2145, %2147
  %2149 = fcmp fast ogt float %2148, 0.000000e+00
  br i1 %2149, label %2150, label %2165, !dx.controlflow.hints !74

; <label>:2150                                    ; preds = %2116
  %2151 = fcmp fast ogt float %2141, 0.000000e+00
  %2152 = call float @dx.op.unary.f32(i32 24, float %2148)  ; Sqrt(value)
  %2153 = fsub fast float -0.000000e+00, %2152
  %2154 = select i1 %2151, float %2152, float %2153
  %2155 = fadd fast float %2154, %2141
  %2156 = fmul float %2155, -5.000000e-01
  %2157 = fdiv fast float %2156, %2139
  %2158 = call float @dx.op.binary.f32(i32 35, float %2157, float 0.000000e+00)  ; FMax(a,b)
  %2159 = call float @dx.op.binary.f32(i32 36, float %2102, float %2158)  ; FMin(a,b)
  %2160 = fdiv fast float %2144, %2156
  %2161 = call float @dx.op.binary.f32(i32 35, float %2160, float 0.000000e+00)  ; FMax(a,b)
  %2162 = call float @dx.op.binary.f32(i32 36, float %2102, float %2161)  ; FMin(a,b)
  %2163 = call float @dx.op.binary.f32(i32 36, float %2159, float %2162)  ; FMin(a,b)
  %2164 = call float @dx.op.binary.f32(i32 35, float %2159, float %2162)  ; FMax(a,b)
  br label %2165

; <label>:2165                                    ; preds = %2150, %2116
  %2166 = phi float [ %2164, %2150 ], [ -1.000000e+00, %2116 ]
  %2167 = phi float [ %2163, %2150 ], [ -1.000000e+00, %2116 ]
  %2168 = phi i1 [ true, %2150 ], [ false, %2116 ]
  %2169 = and i1 %2136, %2168
  br i1 %2169, label %2170, label %2172, !dx.controlflow.hints !75

; <label>:2170                                    ; preds = %2165
  %2171 = fcmp fast oeq float %2167, %2166
  br i1 %2171, label %2475, label %2173, !dx.controlflow.hints !76

; <label>:2172                                    ; preds = %2165
  br i1 %2136, label %2475, label %2173, !dx.controlflow.hints !77

; <label>:2173                                    ; preds = %2172, %2170
  %2174 = phi float [ %2102, %2172 ], [ %2166, %2170 ]
  %2175 = phi float [ 0.000000e+00, %2172 ], [ %2167, %2170 ]
  %2176 = icmp ne i32 %2124, 0
  %2177 = fmul fast float %2174, %2105
  %2178 = fadd fast float %2177, %2118
  %2179 = fmul fast float %2178, %2174
  %2180 = select i1 %2176, float 0.000000e+00, float %2179
  %2181 = fcmp fast oeq float %2105, 0.000000e+00
  %2182 = fdiv fast float %2123, %2105
  %2183 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2182)  ; FMax(a,b)
  %2184 = select i1 %2181, float %2174, float %2183
  %2185 = call float @dx.op.binary.f32(i32 36, float %2174, float %2184)  ; FMin(a,b)
  %2186 = fcmp fast ogt float %2105, 0.000000e+00
  %2187 = fcmp fast olt float %2123, 0.000000e+00
  br i1 %2186, label %2188, label %2245, !dx.controlflow.hints !78

; <label>:2188                                    ; preds = %2173
  %2189 = icmp eq i32 %2124, 0
  br i1 %2187, label %2190, label %2234, !dx.controlflow.hints !79

; <label>:2190                                    ; preds = %2188
  %2191 = select i1 %2189, float %2174, float 0.000000e+00
  %2192 = fsub fast float -0.000000e+00, %2191
  %2193 = call float @dx.op.unary.f32(i32 6, float %2192)  ; FAbs(value)
  %2194 = fmul fast float %2191, %2105
  %2195 = fadd fast float %2194, %2118
  %2196 = fmul fast float %2193, %2195
  %2197 = fsub fast float %2180, %2196
  %2198 = fsub fast float %2174, %2193
  %2199 = select i1 %2189, float %2198, float 0.000000e+00
  %2200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2201 = extractvalue %dx.types.CBufRet.f32 %2200, 0
  %2202 = extractvalue %dx.types.CBufRet.f32 %2200, 1
  %2203 = extractvalue %dx.types.CBufRet.f32 %2200, 2
  %2204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2205 = extractvalue %dx.types.CBufRet.f32 %2204, 0
  %2206 = extractvalue %dx.types.CBufRet.f32 %2204, 1
  %2207 = extractvalue %dx.types.CBufRet.f32 %2204, 2
  %2208 = extractvalue %dx.types.CBufRet.f32 %2204, 3
  %2209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2210 = extractvalue %dx.types.CBufRet.f32 %2209, 3
  %2211 = call float @dx.op.binary.f32(i32 36, float %2197, float %2210)  ; FMin(a,b)
  %2212 = fmul fast float %2208, %2199
  %2213 = call float @dx.op.unary.f32(i32 7, float %2212)  ; Saturate(value)
  %2214 = fsub fast float %2205, %2201
  %2215 = fsub fast float %2206, %2202
  %2216 = fsub fast float %2207, %2203
  %2217 = fmul fast float %2213, %2214
  %2218 = fmul fast float %2213, %2215
  %2219 = fmul fast float %2213, %2216
  %2220 = fadd fast float %2217, %2201
  %2221 = fadd fast float %2218, %2202
  %2222 = fadd fast float %2219, %2203
  %2223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2224 = extractvalue %dx.types.CBufRet.f32 %2223, 0
  %2225 = extractvalue %dx.types.CBufRet.f32 %2223, 1
  %2226 = fadd fast float %2225, %2224
  %2227 = call float @dx.op.unary.f32(i32 7, float %2226)  ; Saturate(value)
  %2228 = extractvalue %dx.types.CBufRet.f32 %2223, 2
  %2229 = extractvalue %dx.types.CBufRet.f32 %2223, 3
  %2230 = fadd fast float %2229, %2228
  %2231 = call float @dx.op.unary.f32(i32 7, float %2230)  ; Saturate(value)
  %2232 = fmul fast float %2227, %2211
  %2233 = fmul fast float %2232, %2231
  br label %2475

; <label>:2234                                    ; preds = %2188
  br i1 %2189, label %2235, label %2256, !dx.controlflow.hints !80

; <label>:2235                                    ; preds = %2234
  %2236 = call float @dx.op.binary.f32(i32 36, float %2185, float %2175)  ; FMin(a,b)
  %2237 = fsub fast float %2185, %2236
  %2238 = fsub fast float %2237, %2174
  %2239 = call float @dx.op.unary.f32(i32 6, float %2238)  ; FAbs(value)
  %2240 = fadd fast float %2237, %2174
  %2241 = fmul fast float %2240, %2105
  %2242 = fadd fast float %2241, %2118
  %2243 = fmul fast float %2242, %2239
  %2244 = fsub fast float %2180, %2243
  br label %2256

; <label>:2245                                    ; preds = %2173
  br i1 %2187, label %2246, label %2256, !dx.controlflow.hints !81

; <label>:2246                                    ; preds = %2245
  %2247 = call float @dx.op.binary.f32(i32 35, float %2175, float %2185)  ; FMax(a,b)
  %2248 = icmp eq i32 %2124, 0
  %2249 = select i1 %2248, float %2185, float 0.000000e+00
  %2250 = fsub fast float -0.000000e+00, %2249
  %2251 = call float @dx.op.unary.f32(i32 6, float %2250)  ; FAbs(value)
  %2252 = fmul fast float %2249, %2105
  %2253 = fadd fast float %2252, %2118
  %2254 = fmul fast float %2251, %2253
  %2255 = fsub fast float %2180, %2254
  br label %2256

; <label>:2256                                    ; preds = %2246, %2245, %2235, %2234
  %2257 = phi float [ %2175, %2234 ], [ %2175, %2235 ], [ %2247, %2246 ], [ %2175, %2245 ]
  %2258 = phi float [ 0.000000e+00, %2234 ], [ %2239, %2235 ], [ %2251, %2246 ], [ 0.000000e+00, %2245 ]
  %2259 = phi float [ %2180, %2234 ], [ %2244, %2235 ], [ %2255, %2246 ], [ %2180, %2245 ]
  %2260 = phi float [ %2185, %2234 ], [ %2185, %2235 ], [ %2174, %2246 ], [ %2174, %2245 ]
  %2261 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  store float -1.000000e+00, float* %2261, align 4, !tbaa !82, !noalias !86
  %2262 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 1
  store float -1.000000e+00, float* %2262, align 4, !tbaa !82, !noalias !86
  %2263 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 2
  store float -1.000000e+00, float* %2263, align 4, !tbaa !82, !noalias !86
  %2264 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 0
  store float -1.000000e+00, float* %2264, align 4, !tbaa !82, !noalias !86
  %2265 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 1
  store float -1.000000e+00, float* %2265, align 4, !tbaa !82, !noalias !86
  %2266 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 2
  store float -1.000000e+00, float* %2266, align 4, !tbaa !82, !noalias !86
  %2267 = icmp sgt i32 %2126, 0
  br i1 %2267, label %2268, label %2329

; <label>:2268                                    ; preds = %2256
  br label %2269

; <label>:2269                                    ; preds = %2318, %2268
  %2270 = phi i32 [ %2319, %2318 ], [ 0, %2268 ]
  %2271 = phi i32 [ %2320, %2318 ], [ 0, %2268 ]
  %2272 = add nuw i32 %2271, 171
  %2273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %2272)  ; CBufferLoadLegacy(handle,regIndex)
  %2274 = extractvalue %dx.types.CBufRet.f32 %2273, 0
  %2275 = extractvalue %dx.types.CBufRet.f32 %2273, 1
  %2276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2277 = extractvalue %dx.types.CBufRet.f32 %2276, 0
  %2278 = extractvalue %dx.types.CBufRet.f32 %2276, 1
  %2279 = fsub fast float %2274, %2277
  %2280 = fsub fast float %2275, %2278
  %2281 = extractvalue %dx.types.CBufRet.f32 %2273, 2
  %2282 = fsub fast float -0.000000e+00, %2279
  %2283 = fsub fast float -0.000000e+00, %2280
  %2284 = call float @dx.op.dot2.f32(i32 54, float %2103, float %2104, float %2282, float %2283)  ; Dot2(ax,ay,bx,by)
  %2285 = fmul fast float %2284, 2.000000e+00
  %2286 = call float @dx.op.dot2.f32(i32 54, float %2282, float %2283, float %2282, float %2283)  ; Dot2(ax,ay,bx,by)
  %2287 = fmul fast float %2281, %2281
  %2288 = fsub fast float %2286, %2287
  %2289 = fmul fast float %2285, %2285
  %2290 = fmul fast float %2146, %2288
  %2291 = fsub fast float %2289, %2290
  %2292 = fcmp fast ogt float %2291, 0.000000e+00
  br i1 %2292, label %2293, label %2308, !dx.controlflow.hints !74

; <label>:2293                                    ; preds = %2269
  %2294 = fcmp fast ogt float %2285, 0.000000e+00
  %2295 = call float @dx.op.unary.f32(i32 24, float %2291)  ; Sqrt(value)
  %2296 = fsub fast float -0.000000e+00, %2295
  %2297 = select i1 %2294, float %2295, float %2296
  %2298 = fadd fast float %2297, %2285
  %2299 = fmul float %2298, -5.000000e-01
  %2300 = fdiv fast float %2299, %2139
  %2301 = call float @dx.op.binary.f32(i32 35, float %2300, float 0.000000e+00)  ; FMax(a,b)
  %2302 = call float @dx.op.binary.f32(i32 36, float %2174, float %2301)  ; FMin(a,b)
  %2303 = fdiv fast float %2288, %2299
  %2304 = call float @dx.op.binary.f32(i32 35, float %2303, float 0.000000e+00)  ; FMax(a,b)
  %2305 = call float @dx.op.binary.f32(i32 36, float %2174, float %2304)  ; FMin(a,b)
  %2306 = call float @dx.op.binary.f32(i32 36, float %2302, float %2305)  ; FMin(a,b)
  %2307 = call float @dx.op.binary.f32(i32 35, float %2302, float %2305)  ; FMax(a,b)
  br label %2308

; <label>:2308                                    ; preds = %2293, %2269
  %2309 = phi float [ %2307, %2293 ], [ -1.000000e+00, %2269 ]
  %2310 = phi float [ %2306, %2293 ], [ -1.000000e+00, %2269 ]
  %2311 = phi i1 [ true, %2293 ], [ false, %2269 ]
  br i1 %2311, label %2312, label %2318, !dx.controlflow.hints !97

; <label>:2312                                    ; preds = %2308
  %2313 = call float @dx.op.binary.f32(i32 35, float %2257, float %2310)  ; FMax(a,b)
  %2314 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %2271
  store float %2313, float* %2314, align 4, !tbaa !82, !noalias !86
  %2315 = call float @dx.op.binary.f32(i32 35, float %2257, float %2309)  ; FMax(a,b)
  %2316 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %2271
  store float %2315, float* %2316, align 4, !tbaa !82, !noalias !86
  %2317 = add nsw i32 %2270, 1
  br label %2318

; <label>:2318                                    ; preds = %2312, %2308
  %2319 = phi i32 [ %2317, %2312 ], [ %2270, %2308 ]
  %2320 = add nuw nsw i32 %2271, 1
  %2321 = icmp eq i32 %2320, %2126
  br i1 %2321, label %2322, label %2269

; <label>:2322                                    ; preds = %2318
  %2323 = load float, float* %2263, align 4, !tbaa !82, !alias.scope !98, !noalias !101
  %2324 = load float, float* %2262, align 4, !tbaa !82, !alias.scope !104, !noalias !105
  %2325 = load float, float* %2261, align 4, !tbaa !82, !alias.scope !106, !noalias !107
  %2326 = load float, float* %2266, align 4, !tbaa !82, !alias.scope !108, !noalias !111
  %2327 = load float, float* %2265, align 4, !tbaa !82, !alias.scope !114, !noalias !115
  %2328 = load float, float* %2264, align 4, !tbaa !82, !alias.scope !116, !noalias !117
  br label %2329

; <label>:2329                                    ; preds = %2322, %2256
  %2330 = phi float [ -1.000000e+00, %2256 ], [ %2328, %2322 ]
  %2331 = phi float [ -1.000000e+00, %2256 ], [ %2327, %2322 ]
  %2332 = phi float [ -1.000000e+00, %2256 ], [ %2326, %2322 ]
  %2333 = phi float [ -1.000000e+00, %2256 ], [ %2325, %2322 ]
  %2334 = phi float [ -1.000000e+00, %2256 ], [ %2324, %2322 ]
  %2335 = phi float [ -1.000000e+00, %2256 ], [ %2323, %2322 ]
  %2336 = phi i32 [ 0, %2256 ], [ %2319, %2322 ]
  %2337 = call float @dx.op.binary.f32(i32 36, float %2334, float %2335)  ; FMin(a,b)
  %2338 = call float @dx.op.binary.f32(i32 36, float %2333, float %2337)  ; FMin(a,b)
  %2339 = call float @dx.op.binary.f32(i32 35, float %2333, float %2334)  ; FMax(a,b)
  %2340 = call float @dx.op.binary.f32(i32 36, float %2339, float %2335)  ; FMin(a,b)
  %2341 = call float @dx.op.binary.f32(i32 36, float %2333, float %2334)  ; FMin(a,b)
  %2342 = call float @dx.op.binary.f32(i32 35, float %2341, float %2340)  ; FMax(a,b)
  %2343 = call float @dx.op.binary.f32(i32 35, float %2334, float %2335)  ; FMax(a,b)
  %2344 = call float @dx.op.binary.f32(i32 35, float %2333, float %2343)  ; FMax(a,b)
  store float %2338, float* %2261, align 4, !tbaa !82, !alias.scope !106, !noalias !107
  store float %2342, float* %2262, align 4, !tbaa !82, !alias.scope !104, !noalias !105
  store float %2344, float* %2263, align 4, !tbaa !82, !alias.scope !98, !noalias !101
  %2345 = call float @dx.op.binary.f32(i32 36, float %2331, float %2332)  ; FMin(a,b)
  %2346 = call float @dx.op.binary.f32(i32 36, float %2330, float %2345)  ; FMin(a,b)
  %2347 = call float @dx.op.binary.f32(i32 35, float %2330, float %2331)  ; FMax(a,b)
  %2348 = call float @dx.op.binary.f32(i32 36, float %2347, float %2332)  ; FMin(a,b)
  %2349 = call float @dx.op.binary.f32(i32 36, float %2330, float %2331)  ; FMin(a,b)
  %2350 = call float @dx.op.binary.f32(i32 35, float %2349, float %2348)  ; FMax(a,b)
  %2351 = call float @dx.op.binary.f32(i32 35, float %2331, float %2332)  ; FMax(a,b)
  %2352 = call float @dx.op.binary.f32(i32 35, float %2330, float %2351)  ; FMax(a,b)
  store float %2346, float* %2264, align 4, !tbaa !82, !alias.scope !116, !noalias !117
  store float %2350, float* %2265, align 4, !tbaa !82, !alias.scope !114, !noalias !115
  store float %2352, float* %2266, align 4, !tbaa !82, !alias.scope !108, !noalias !111
  %2353 = sub nsw i32 3, %2336
  %2354 = icmp sgt i32 %2353, 2
  br i1 %2354, label %2355, label %2393, !dx.controlflow.hints !118

; <label>:2355                                    ; preds = %2329
  %2356 = icmp eq i32 %2124, 0
  %2357 = fsub fast float %2174, %2258
  %2358 = select i1 %2356, float %2357, float %2258
  %2359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2360 = extractvalue %dx.types.CBufRet.f32 %2359, 0
  %2361 = extractvalue %dx.types.CBufRet.f32 %2359, 1
  %2362 = extractvalue %dx.types.CBufRet.f32 %2359, 2
  %2363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2364 = extractvalue %dx.types.CBufRet.f32 %2363, 0
  %2365 = extractvalue %dx.types.CBufRet.f32 %2363, 1
  %2366 = extractvalue %dx.types.CBufRet.f32 %2363, 2
  %2367 = extractvalue %dx.types.CBufRet.f32 %2363, 3
  %2368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2369 = extractvalue %dx.types.CBufRet.f32 %2368, 3
  %2370 = call float @dx.op.binary.f32(i32 36, float %2259, float %2369)  ; FMin(a,b)
  %2371 = fmul fast float %2367, %2358
  %2372 = call float @dx.op.unary.f32(i32 7, float %2371)  ; Saturate(value)
  %2373 = fsub fast float %2364, %2360
  %2374 = fsub fast float %2365, %2361
  %2375 = fsub fast float %2366, %2362
  %2376 = fmul fast float %2372, %2373
  %2377 = fmul fast float %2372, %2374
  %2378 = fmul fast float %2372, %2375
  %2379 = fadd fast float %2376, %2360
  %2380 = fadd fast float %2377, %2361
  %2381 = fadd fast float %2378, %2362
  %2382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2383 = extractvalue %dx.types.CBufRet.f32 %2382, 0
  %2384 = extractvalue %dx.types.CBufRet.f32 %2382, 1
  %2385 = fadd fast float %2384, %2383
  %2386 = call float @dx.op.unary.f32(i32 7, float %2385)  ; Saturate(value)
  %2387 = extractvalue %dx.types.CBufRet.f32 %2382, 2
  %2388 = extractvalue %dx.types.CBufRet.f32 %2382, 3
  %2389 = fadd fast float %2388, %2387
  %2390 = call float @dx.op.unary.f32(i32 7, float %2389)  ; Saturate(value)
  %2391 = fmul fast float %2386, %2370
  %2392 = fmul fast float %2391, %2390
  br label %2475

; <label>:2393                                    ; preds = %2329
  %2394 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %2353
  %2395 = load float, float* %2394, align 4, !tbaa !82, !noalias !86
  %2396 = fcmp fast olt float %2395, %2260
  %2397 = icmp sgt i32 %2336, 0
  %2398 = and i1 %2397, %2396
  br i1 %2398, label %2399, label %2436

; <label>:2399                                    ; preds = %2393
  br label %2400

; <label>:2400                                    ; preds = %2429, %2399
  %2401 = phi float [ %2430, %2429 ], [ %2258, %2399 ]
  %2402 = phi float [ %2431, %2429 ], [ %2259, %2399 ]
  %2403 = phi float [ %2411, %2429 ], [ %2395, %2399 ]
  %2404 = phi i32 [ %2408, %2429 ], [ %2353, %2399 ]
  %2405 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %2404
  %2406 = load float, float* %2405, align 4, !tbaa !82, !noalias !86
  %2407 = icmp slt i32 %2404, 2
  %2408 = add nsw i32 %2404, 1
  %2409 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %2408
  %2410 = load float, float* %2409, align 4, !tbaa !82, !noalias !86
  %2411 = select i1 %2407, float %2410, float %2174
  %2412 = call float @dx.op.binary.f32(i32 36, float %2411, float %2406)  ; FMin(a,b)
  %2413 = call float @dx.op.binary.f32(i32 36, float %2260, float %2412)  ; FMin(a,b)
  %2414 = icmp eq i32 %2124, 0
  %2415 = fadd fast float %2413, %2403
  %2416 = fmul fast float %2415, %2105
  %2417 = fadd fast float %2416, %2118
  br i1 %2414, label %2423, label %2418, !dx.controlflow.hints !119

; <label>:2418                                    ; preds = %2400
  %2419 = fsub fast float %2413, %2403
  %2420 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2419)  ; FMax(a,b)
  %2421 = fmul fast float %2420, %2417
  %2422 = fadd fast float %2421, %2402
  br label %2429

; <label>:2423                                    ; preds = %2400
  %2424 = fsub fast float %2403, %2413
  %2425 = call float @dx.op.unary.f32(i32 6, float %2424)  ; FAbs(value)
  %2426 = fadd fast float %2425, %2401
  %2427 = fmul fast float %2425, %2417
  %2428 = fsub fast float %2402, %2427
  br label %2429

; <label>:2429                                    ; preds = %2423, %2418
  %2430 = phi float [ %2420, %2418 ], [ %2426, %2423 ]
  %2431 = phi float [ %2422, %2418 ], [ %2428, %2423 ]
  %2432 = fcmp fast olt float %2411, %2260
  %2433 = icmp slt i32 %2408, 3
  %2434 = and i1 %2433, %2432
  br i1 %2434, label %2400, label %2435

; <label>:2435                                    ; preds = %2429
  br label %2436

; <label>:2436                                    ; preds = %2435, %2393
  %2437 = phi float [ %2258, %2393 ], [ %2430, %2435 ]
  %2438 = phi float [ %2259, %2393 ], [ %2431, %2435 ]
  %2439 = fsub fast float %2174, %2437
  %2440 = select i1 %2176, float %2437, float %2439
  %2441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2442 = extractvalue %dx.types.CBufRet.f32 %2441, 0
  %2443 = extractvalue %dx.types.CBufRet.f32 %2441, 1
  %2444 = extractvalue %dx.types.CBufRet.f32 %2441, 2
  %2445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2446 = extractvalue %dx.types.CBufRet.f32 %2445, 0
  %2447 = extractvalue %dx.types.CBufRet.f32 %2445, 1
  %2448 = extractvalue %dx.types.CBufRet.f32 %2445, 2
  %2449 = extractvalue %dx.types.CBufRet.f32 %2445, 3
  %2450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2451 = extractvalue %dx.types.CBufRet.f32 %2450, 3
  %2452 = call float @dx.op.binary.f32(i32 36, float %2438, float %2451)  ; FMin(a,b)
  %2453 = fmul fast float %2449, %2440
  %2454 = call float @dx.op.unary.f32(i32 7, float %2453)  ; Saturate(value)
  %2455 = fsub fast float %2446, %2442
  %2456 = fsub fast float %2447, %2443
  %2457 = fsub fast float %2448, %2444
  %2458 = fmul fast float %2454, %2455
  %2459 = fmul fast float %2454, %2456
  %2460 = fmul fast float %2454, %2457
  %2461 = fadd fast float %2458, %2442
  %2462 = fadd fast float %2459, %2443
  %2463 = fadd fast float %2460, %2444
  %2464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2465 = extractvalue %dx.types.CBufRet.f32 %2464, 0
  %2466 = extractvalue %dx.types.CBufRet.f32 %2464, 1
  %2467 = fadd fast float %2466, %2465
  %2468 = call float @dx.op.unary.f32(i32 7, float %2467)  ; Saturate(value)
  %2469 = extractvalue %dx.types.CBufRet.f32 %2464, 2
  %2470 = extractvalue %dx.types.CBufRet.f32 %2464, 3
  %2471 = fadd fast float %2470, %2469
  %2472 = call float @dx.op.unary.f32(i32 7, float %2471)  ; Saturate(value)
  %2473 = fmul fast float %2468, %2452
  %2474 = fmul fast float %2473, %2472
  br label %2475

; <label>:2475                                    ; preds = %2436, %2355, %2190, %2172, %2170
  %2476 = phi float [ %2199, %2190 ], [ %2358, %2355 ], [ %2440, %2436 ], [ 0.000000e+00, %2170 ], [ 0.000000e+00, %2172 ]
  %2477 = phi float [ %2233, %2190 ], [ %2392, %2355 ], [ %2474, %2436 ], [ 0.000000e+00, %2170 ], [ 0.000000e+00, %2172 ]
  %2478 = phi float [ %2220, %2190 ], [ %2379, %2355 ], [ %2461, %2436 ], [ 0.000000e+00, %2170 ], [ 0.000000e+00, %2172 ]
  %2479 = phi float [ %2221, %2190 ], [ %2380, %2355 ], [ %2462, %2436 ], [ 0.000000e+00, %2170 ], [ 0.000000e+00, %2172 ]
  %2480 = phi float [ %2222, %2190 ], [ %2381, %2355 ], [ %2463, %2436 ], [ 0.000000e+00, %2170 ], [ 0.000000e+00, %2172 ]
  %2481 = fmul fast float %2113, %2477
  %2482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2483 = extractvalue %dx.types.CBufRet.f32 %2482, 2
  %2484 = fsub fast float %2120, %2483
  %2485 = fcmp fast olt float %2481, -2.000000e+01
  %2486 = call float @dx.op.unary.f32(i32 21, float %2481)  ; Exp(value)
  %2487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2488 = extractvalue %dx.types.CBufRet.f32 %2487, 2
  %2489 = extractvalue %dx.types.CBufRet.f32 %2487, 3
  %2490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2491 = extractvalue %dx.types.CBufRet.f32 %2490, 2
  %2492 = fmul fast float %2489, %2484
  %2493 = call float @dx.op.unary.f32(i32 7, float %2492)  ; Saturate(value)
  %2494 = fsub fast float 1.000000e+00, %2493
  %2495 = fmul fast float %2105, 5.000000e-01
  %2496 = fadd fast float %2495, 5.000000e-01
  %2497 = call float @dx.op.unary.f32(i32 7, float %2496)  ; Saturate(value)
  %2498 = fsub fast float 1.000000e+00, %2497
  %2499 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2494)  ; FMax(a,b)
  %2500 = fdiv fast float %2498, %2499
  %2501 = fsub fast float %2484, %2071
  %2502 = call float @dx.op.unary.f32(i32 6, float %2501)  ; FAbs(value)
  %2503 = fmul fast float %2502, %2488
  %2504 = call float @dx.op.unary.f32(i32 7, float %2500)  ; Saturate(value)
  %2505 = fsub fast float 1.000000e+00, %2503
  %2506 = fmul fast float %2505, %2504
  %2507 = fadd fast float %2506, %2503
  %2508 = fmul fast float %2491, %2484
  %2509 = call float @dx.op.unary.f32(i32 7, float %2508)  ; Saturate(value)
  %2510 = fsub fast float 1.000000e+00, %2507
  %2511 = fmul fast float %2510, %2509
  %2512 = fadd fast float %2511, %2507
  %2513 = call float @dx.op.unary.f32(i32 7, float %2512)  ; Saturate(value)
  %2514 = fadd fast float %2486, -1.000000e+00
  %2515 = select i1 %2485, float -1.000000e+00, float %2514
  %2516 = fmul fast float %2513, %2515
  %2517 = fadd fast float %2516, 1.000000e+00
  %2518 = fsub fast float -0.000000e+00, %2516
  %2519 = fmul fast float %2478, %2518
  %2520 = fmul fast float %2479, %2518
  %2521 = fmul fast float %2480, %2518
  br label %2522

; <label>:2522                                    ; preds = %2475, %2024
  %2523 = phi float [ %2476, %2475 ], [ 0.000000e+00, %2024 ]
  %2524 = phi float [ %2517, %2475 ], [ 1.000000e+00, %2024 ]
  %2525 = phi float [ %2519, %2475 ], [ 0.000000e+00, %2024 ]
  %2526 = phi float [ %2520, %2475 ], [ 0.000000e+00, %2024 ]
  %2527 = phi float [ %2521, %2475 ], [ 0.000000e+00, %2024 ]
  %2528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2529 = extractvalue %dx.types.CBufRet.f32 %2528, 1
  %2530 = fsub fast float 1.000000e+00, %2524
  %2531 = fmul fast float %2530, %2106
  %2532 = fmul fast float %2531, %2529
  %2533 = fsub fast float %2106, %2532
  br i1 %2099, label %2534, label %2563, !dx.controlflow.hints !120

; <label>:2534                                    ; preds = %2522
  %2535 = fmul fast float %2107, %2096
  %2536 = fadd fast float %2535, %2097
  %2537 = call float @dx.op.unary.f32(i32 7, float %2536)  ; Saturate(value)
  %2538 = fmul fast float %2078, %2533
  %2539 = fsub fast float -0.000000e+00, %2538
  %2540 = fmul fast float %2079, %2533
  %2541 = fsub fast float -0.000000e+00, %2540
  %2542 = call float @dx.op.unary.f32(i32 21, float %2539)  ; Exp(value)
  %2543 = call float @dx.op.unary.f32(i32 21, float %2541)  ; Exp(value)
  %2544 = call float @dx.op.binary.f32(i32 35, float %2086, float %2542)  ; FMax(a,b)
  %2545 = call float @dx.op.binary.f32(i32 35, float %2086, float %2543)  ; FMax(a,b)
  %2546 = fsub fast float %2545, %2544
  %2547 = fmul fast float %2546, %2537
  %2548 = fadd fast float %2547, %2544
  %2549 = call float @dx.op.unary.f32(i32 7, float %2548)  ; Saturate(value)
  %2550 = fsub fast float %2083, %2088
  %2551 = fsub fast float %2084, %2089
  %2552 = fsub fast float %2085, %2090
  %2553 = fmul fast float %2537, %2550
  %2554 = fmul fast float %2537, %2551
  %2555 = fmul fast float %2537, %2552
  %2556 = fadd fast float %2553, %2088
  %2557 = fadd fast float %2554, %2089
  %2558 = fadd fast float %2555, %2090
  %2559 = fsub fast float 1.000000e+00, %2549
  %2560 = fmul fast float %2559, %2556
  %2561 = fmul fast float %2559, %2557
  %2562 = fmul fast float %2559, %2558
  br label %2622

; <label>:2563                                    ; preds = %2522
  %2564 = fmul fast float %2533, %2095
  %2565 = call float @dx.op.unary.f32(i32 7, float %2564)  ; Saturate(value)
  %2566 = fsub fast float 2.000000e+00, %2565
  %2567 = fmul fast float %2565, 9.921875e-01
  %2568 = fmul fast float %2567, %2566
  %2569 = fadd fast float %2568, 3.906250e-03
  %2570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %20, float %2569, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2571 = extractvalue %dx.types.ResRet.f32 %2570, 0
  %2572 = fsub fast float %2565, %2571
  %2573 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2572)  ; FMax(a,b)
  %2574 = fmul fast float %2081, %2071
  %2575 = call float @dx.op.unary.f32(i32 6, float %2574)  ; FAbs(value)
  %2576 = fcmp fast ogt float %2575, 0x3EB0C6F7A0000000
  br i1 %2576, label %2577, label %2583, !dx.controlflow.hints !121

; <label>:2577                                    ; preds = %2563
  %2578 = fmul fast float %2574, 0xBFF7154760000000
  %2579 = call float @dx.op.unary.f32(i32 21, float %2578)  ; Exp(value)
  %2580 = fsub fast float 1.000000e+00, %2579
  %2581 = fdiv fast float %2580, %2574
  %2582 = fmul fast float %2581, %2091
  br label %2583

; <label>:2583                                    ; preds = %2577, %2563
  %2584 = phi float [ %2582, %2577 ], [ %2091, %2563 ]
  %2585 = fadd fast float %2584, %2093
  %2586 = fmul fast float %2585, %2573
  %2587 = fmul fast float %2078, %2586
  %2588 = fsub fast float -0.000000e+00, %2587
  %2589 = fmul fast float %2079, %2586
  %2590 = fsub fast float -0.000000e+00, %2589
  %2591 = fmul fast float %2080, %2586
  %2592 = fsub fast float -0.000000e+00, %2591
  %2593 = call float @dx.op.unary.f32(i32 21, float %2588)  ; Exp(value)
  %2594 = call float @dx.op.unary.f32(i32 21, float %2590)  ; Exp(value)
  %2595 = call float @dx.op.unary.f32(i32 21, float %2592)  ; Exp(value)
  %2596 = fmul fast float %2107, %2107
  %2597 = fadd fast float %2596, 1.000000e+00
  %2598 = fmul fast float %2597, 0x3FAE8EC8A0000000
  %2599 = fmul fast float %2598, %2088
  %2600 = fmul fast float %2598, %2089
  %2601 = fmul fast float %2598, %2090
  %2602 = fmul fast float %2107, %2086
  %2603 = fsub fast float 1.000000e+00, %2602
  %2604 = fmul fast float %2086, %2086
  %2605 = fsub fast float 1.000000e+00, %2604
  %2606 = fmul fast float %2605, 0x3FB45F3060000000
  %2607 = fmul fast float %2603, %2603
  %2608 = fdiv fast float 1.000000e+00, %2607
  %2609 = fmul fast float %2606, %2608
  %2610 = fmul fast float %2609, %2083
  %2611 = fmul fast float %2609, %2084
  %2612 = fmul fast float %2609, %2085
  %2613 = fadd fast float %2610, %2599
  %2614 = fadd fast float %2611, %2600
  %2615 = fadd fast float %2612, %2601
  %2616 = fsub fast float 1.000000e+00, %2593
  %2617 = fsub fast float 1.000000e+00, %2594
  %2618 = fsub fast float 1.000000e+00, %2595
  %2619 = fmul fast float %2613, %2616
  %2620 = fmul fast float %2614, %2617
  %2621 = fmul fast float %2615, %2618
  br label %2622

; <label>:2622                                    ; preds = %2583, %2534
  %2623 = phi float [ %2560, %2534 ], [ %2619, %2583 ]
  %2624 = phi float [ %2561, %2534 ], [ %2620, %2583 ]
  %2625 = phi float [ %2562, %2534 ], [ %2621, %2583 ]
  %2626 = phi float [ %2549, %2534 ], [ %2593, %2583 ]
  %2627 = phi float [ %2549, %2534 ], [ %2594, %2583 ]
  %2628 = phi float [ %2549, %2534 ], [ %2595, %2583 ]
  br i1 %2115, label %2629, label %2827, !dx.controlflow.hints !122

; <label>:2629                                    ; preds = %2622
  %2630 = extractvalue %dx.types.CBufRet.f32 %2528, 0
  %2631 = fmul fast float %2630, %2530
  %2632 = fsub fast float %2525, %2623
  %2633 = fsub fast float %2526, %2624
  %2634 = fsub fast float %2527, %2625
  %2635 = fmul fast float %2631, %2632
  %2636 = fmul fast float %2631, %2633
  %2637 = fmul fast float %2631, %2634
  %2638 = fadd fast float %2635, %2623
  %2639 = fadd fast float %2636, %2624
  %2640 = fadd fast float %2637, %2625
  %2641 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2626)  ; FMax(a,b)
  %2642 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2627)  ; FMax(a,b)
  %2643 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2628)  ; FMax(a,b)
  %2644 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2524)  ; FMax(a,b)
  %2645 = call float @dx.op.binary.f32(i32 35, float %2523, float %2533)  ; FMax(a,b)
  %2646 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2645)  ; FMax(a,b)
  %2647 = fdiv fast float %2523, %2646
  %2648 = call float @dx.op.unary.f32(i32 7, float %2647)  ; Saturate(value)
  %2649 = fdiv fast float %2533, %2646
  %2650 = call float @dx.op.unary.f32(i32 7, float %2649)  ; Saturate(value)
  %2651 = fcmp fast une float %2644, 1.000000e+00
  br i1 %2651, label %2652, label %2665, !dx.controlflow.hints !123

; <label>:2652                                    ; preds = %2629
  %2653 = call float @dx.op.unary.f32(i32 23, float %2644)  ; Log(value)
  %2654 = fmul fast float %2653, 0x3FE62E4300000000
  %2655 = fmul fast float %2525, %2654
  %2656 = fsub fast float -0.000000e+00, %2655
  %2657 = fmul fast float %2526, %2654
  %2658 = fsub fast float -0.000000e+00, %2657
  %2659 = fmul fast float %2527, %2654
  %2660 = fsub fast float -0.000000e+00, %2659
  %2661 = fsub fast float 1.000000e+00, %2644
  %2662 = fdiv fast float %2656, %2661
  %2663 = fdiv fast float %2658, %2661
  %2664 = fdiv fast float %2660, %2661
  br label %2665

; <label>:2665                                    ; preds = %2652, %2629
  %2666 = phi float [ %2662, %2652 ], [ %2525, %2629 ]
  %2667 = phi float [ %2663, %2652 ], [ %2526, %2629 ]
  %2668 = phi float [ %2664, %2652 ], [ %2527, %2629 ]
  %2669 = phi float [ %2654, %2652 ], [ 0.000000e+00, %2629 ]
  %2670 = fcmp fast une float %2641, 1.000000e+00
  br i1 %2670, label %2671, label %2678, !dx.controlflow.hints !124

; <label>:2671                                    ; preds = %2665
  %2672 = call float @dx.op.unary.f32(i32 23, float %2641)  ; Log(value)
  %2673 = fmul fast float %2672, 0x3FE62E4300000000
  %2674 = fmul fast float %2638, %2673
  %2675 = fsub fast float -0.000000e+00, %2674
  %2676 = fsub fast float 1.000000e+00, %2641
  %2677 = fdiv fast float %2675, %2676
  br label %2678

; <label>:2678                                    ; preds = %2671, %2665
  %2679 = phi float [ %2677, %2671 ], [ %2638, %2665 ]
  %2680 = phi float [ %2673, %2671 ], [ 0.000000e+00, %2665 ]
  %2681 = fcmp fast une float %2642, 1.000000e+00
  br i1 %2681, label %2682, label %2689, !dx.controlflow.hints !124

; <label>:2682                                    ; preds = %2678
  %2683 = call float @dx.op.unary.f32(i32 23, float %2642)  ; Log(value)
  %2684 = fmul fast float %2683, 0x3FE62E4300000000
  %2685 = fmul fast float %2639, %2684
  %2686 = fsub fast float -0.000000e+00, %2685
  %2687 = fsub fast float 1.000000e+00, %2642
  %2688 = fdiv fast float %2686, %2687
  br label %2689

; <label>:2689                                    ; preds = %2682, %2678
  %2690 = phi float [ %2688, %2682 ], [ %2639, %2678 ]
  %2691 = phi float [ %2684, %2682 ], [ 0.000000e+00, %2678 ]
  %2692 = fcmp fast une float %2643, 1.000000e+00
  br i1 %2692, label %2693, label %2700, !dx.controlflow.hints !124

; <label>:2693                                    ; preds = %2689
  %2694 = call float @dx.op.unary.f32(i32 23, float %2643)  ; Log(value)
  %2695 = fmul fast float %2694, 0x3FE62E4300000000
  %2696 = fmul fast float %2640, %2695
  %2697 = fsub fast float -0.000000e+00, %2696
  %2698 = fsub fast float 1.000000e+00, %2643
  %2699 = fdiv fast float %2697, %2698
  br label %2700

; <label>:2700                                    ; preds = %2693, %2689
  %2701 = phi float [ %2699, %2693 ], [ %2640, %2689 ]
  %2702 = phi float [ %2695, %2693 ], [ 0.000000e+00, %2689 ]
  %2703 = fmul fast float %2666, %2650
  %2704 = fmul fast float %2667, %2650
  %2705 = fmul fast float %2668, %2650
  %2706 = fmul fast float %2669, %2650
  %2707 = fmul fast float %2679, %2648
  %2708 = fmul fast float %2690, %2648
  %2709 = fmul fast float %2701, %2648
  %2710 = fmul fast float %2680, %2648
  %2711 = fmul fast float %2691, %2648
  %2712 = fmul fast float %2702, %2648
  %2713 = fadd fast float %2707, %2703
  %2714 = fadd fast float %2708, %2704
  %2715 = fadd fast float %2709, %2705
  %2716 = fadd fast float %2710, %2706
  %2717 = fadd fast float %2711, %2706
  %2718 = fadd fast float %2712, %2706
  %2719 = fcmp fast une float %2716, 0.000000e+00
  br i1 %2719, label %2720, label %2727, !dx.controlflow.hints !125

; <label>:2720                                    ; preds = %2700
  %2721 = fmul fast float %2716, 0x3FF7154760000000
  %2722 = call float @dx.op.unary.f32(i32 21, float %2721)  ; Exp(value)
  %2723 = fsub fast float 1.000000e+00, %2722
  %2724 = fmul fast float %2713, %2723
  %2725 = fsub fast float -0.000000e+00, %2724
  %2726 = fdiv fast float %2725, %2716
  br label %2727

; <label>:2727                                    ; preds = %2720, %2700
  %2728 = phi float [ %2722, %2720 ], [ 1.000000e+00, %2700 ]
  %2729 = phi float [ %2726, %2720 ], [ %2713, %2700 ]
  %2730 = fcmp fast une float %2717, 0.000000e+00
  br i1 %2730, label %2731, label %2738, !dx.controlflow.hints !125

; <label>:2731                                    ; preds = %2727
  %2732 = fmul fast float %2717, 0x3FF7154760000000
  %2733 = call float @dx.op.unary.f32(i32 21, float %2732)  ; Exp(value)
  %2734 = fsub fast float 1.000000e+00, %2733
  %2735 = fmul fast float %2714, %2734
  %2736 = fsub fast float -0.000000e+00, %2735
  %2737 = fdiv fast float %2736, %2717
  br label %2738

; <label>:2738                                    ; preds = %2731, %2727
  %2739 = phi float [ %2733, %2731 ], [ 1.000000e+00, %2727 ]
  %2740 = phi float [ %2737, %2731 ], [ %2714, %2727 ]
  %2741 = fcmp fast une float %2718, 0.000000e+00
  br i1 %2741, label %2742, label %2749, !dx.controlflow.hints !125

; <label>:2742                                    ; preds = %2738
  %2743 = fmul fast float %2718, 0x3FF7154760000000
  %2744 = call float @dx.op.unary.f32(i32 21, float %2743)  ; Exp(value)
  %2745 = fsub fast float 1.000000e+00, %2744
  %2746 = fmul fast float %2715, %2745
  %2747 = fsub fast float -0.000000e+00, %2746
  %2748 = fdiv fast float %2747, %2718
  br label %2749

; <label>:2749                                    ; preds = %2742, %2738
  %2750 = phi float [ %2744, %2742 ], [ 1.000000e+00, %2738 ]
  %2751 = phi float [ %2748, %2742 ], [ %2715, %2738 ]
  %2752 = fcmp fast ogt float %2648, %2650
  br i1 %2752, label %2753, label %2773, !dx.controlflow.hints !126

; <label>:2753                                    ; preds = %2749
  %2754 = fsub fast float 1.000000e+00, %2650
  %2755 = fmul fast float %2666, %2754
  %2756 = fmul fast float %2667, %2754
  %2757 = fmul fast float %2668, %2754
  %2758 = fmul fast float %2669, %2754
  %2759 = fcmp fast une float %2758, 0.000000e+00
  br i1 %2759, label %2760, label %2811, !dx.controlflow.hints !127

; <label>:2760                                    ; preds = %2753
  %2761 = fmul fast float %2758, 0x3FF7154760000000
  %2762 = call float @dx.op.unary.f32(i32 21, float %2761)  ; Exp(value)
  %2763 = fsub fast float 1.000000e+00, %2762
  %2764 = fmul fast float %2755, %2763
  %2765 = fsub fast float -0.000000e+00, %2764
  %2766 = fmul fast float %2756, %2763
  %2767 = fsub fast float -0.000000e+00, %2766
  %2768 = fmul fast float %2757, %2763
  %2769 = fsub fast float -0.000000e+00, %2768
  %2770 = fdiv fast float %2765, %2758
  %2771 = fdiv fast float %2767, %2758
  %2772 = fdiv fast float %2769, %2758
  br label %2811

; <label>:2773                                    ; preds = %2749
  %2774 = fsub fast float 1.000000e+00, %2648
  %2775 = fmul fast float %2679, %2774
  %2776 = fmul fast float %2690, %2774
  %2777 = fmul fast float %2701, %2774
  %2778 = fmul fast float %2680, %2774
  %2779 = fmul fast float %2691, %2774
  %2780 = fmul fast float %2702, %2774
  %2781 = fcmp fast une float %2778, 0.000000e+00
  br i1 %2781, label %2782, label %2789, !dx.controlflow.hints !125

; <label>:2782                                    ; preds = %2773
  %2783 = fmul fast float %2778, 0x3FF7154760000000
  %2784 = call float @dx.op.unary.f32(i32 21, float %2783)  ; Exp(value)
  %2785 = fsub fast float 1.000000e+00, %2784
  %2786 = fmul fast float %2775, %2785
  %2787 = fsub fast float -0.000000e+00, %2786
  %2788 = fdiv fast float %2787, %2778
  br label %2789

; <label>:2789                                    ; preds = %2782, %2773
  %2790 = phi float [ %2788, %2782 ], [ %2775, %2773 ]
  %2791 = phi float [ %2784, %2782 ], [ 1.000000e+00, %2773 ]
  %2792 = fcmp fast une float %2779, 0.000000e+00
  br i1 %2792, label %2793, label %2800, !dx.controlflow.hints !125

; <label>:2793                                    ; preds = %2789
  %2794 = fmul fast float %2779, 0x3FF7154760000000
  %2795 = call float @dx.op.unary.f32(i32 21, float %2794)  ; Exp(value)
  %2796 = fsub fast float 1.000000e+00, %2795
  %2797 = fmul fast float %2776, %2796
  %2798 = fsub fast float -0.000000e+00, %2797
  %2799 = fdiv fast float %2798, %2779
  br label %2800

; <label>:2800                                    ; preds = %2793, %2789
  %2801 = phi float [ %2799, %2793 ], [ %2776, %2789 ]
  %2802 = phi float [ %2795, %2793 ], [ 1.000000e+00, %2789 ]
  %2803 = fcmp fast une float %2780, 0.000000e+00
  br i1 %2803, label %2804, label %2811, !dx.controlflow.hints !125

; <label>:2804                                    ; preds = %2800
  %2805 = fmul fast float %2780, 0x3FF7154760000000
  %2806 = call float @dx.op.unary.f32(i32 21, float %2805)  ; Exp(value)
  %2807 = fsub fast float 1.000000e+00, %2806
  %2808 = fmul fast float %2777, %2807
  %2809 = fsub fast float -0.000000e+00, %2808
  %2810 = fdiv fast float %2809, %2780
  br label %2811

; <label>:2811                                    ; preds = %2804, %2800, %2760, %2753
  %2812 = phi float [ %2810, %2804 ], [ %2772, %2760 ], [ %2757, %2753 ], [ %2777, %2800 ]
  %2813 = phi float [ %2801, %2804 ], [ %2771, %2760 ], [ %2756, %2753 ], [ %2801, %2800 ]
  %2814 = phi float [ %2790, %2804 ], [ %2770, %2760 ], [ %2755, %2753 ], [ %2790, %2800 ]
  %2815 = phi float [ %2806, %2804 ], [ %2762, %2760 ], [ 1.000000e+00, %2753 ], [ 1.000000e+00, %2800 ]
  %2816 = phi float [ %2802, %2804 ], [ %2762, %2760 ], [ 1.000000e+00, %2753 ], [ %2802, %2800 ]
  %2817 = phi float [ %2791, %2804 ], [ %2762, %2760 ], [ 1.000000e+00, %2753 ], [ %2791, %2800 ]
  %2818 = fmul fast float %2817, %2729
  %2819 = fmul fast float %2816, %2740
  %2820 = fmul fast float %2815, %2751
  %2821 = fadd fast float %2818, %2814
  %2822 = fadd fast float %2819, %2813
  %2823 = fadd fast float %2820, %2812
  %2824 = fmul fast float %2817, %2728
  %2825 = fmul fast float %2816, %2739
  %2826 = fmul fast float %2815, %2750
  br label %2827

; <label>:2827                                    ; preds = %2811, %2622
  %2828 = phi float [ %2628, %2622 ], [ %2826, %2811 ]
  %2829 = phi float [ %2627, %2622 ], [ %2825, %2811 ]
  %2830 = phi float [ %2626, %2622 ], [ %2824, %2811 ]
  %2831 = phi float [ %2625, %2622 ], [ %2823, %2811 ]
  %2832 = phi float [ %2624, %2622 ], [ %2822, %2811 ]
  %2833 = phi float [ %2623, %2622 ], [ %2821, %2811 ]
  %2834 = fmul fast float %2830, %1971
  %2835 = fmul fast float %2829, %1972
  %2836 = fmul fast float %2828, %1973
  %2837 = fsub fast float 1.000000e+00, %2034
  %2838 = fmul fast float %2833, %2837
  %2839 = fmul fast float %2832, %2837
  %2840 = fmul fast float %2831, %2837
  %2841 = fadd fast float %2838, %2834
  %2842 = fadd fast float %2839, %2835
  %2843 = fadd fast float %2840, %2836
  %2844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2845 = extractvalue %dx.types.CBufRet.f32 %2844, 2
  %2846 = fmul fast float %2845, %2044
  %2847 = call float @dx.op.unary.f32(i32 7, float %2846)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %24, i32 %25, i32 undef, float %2034, float %2034, float %2034, float %2034, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2849 = extractvalue %dx.types.CBufRet.f32 %2848, 0
  %2850 = fmul fast float %2849, %2841
  %2851 = fmul fast float %2849, %2842
  %2852 = fmul fast float %2849, %2843
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %24, i32 %25, i32 undef, float %2850, float %2851, float %2852, float %2850, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %24, i32 %25, i32 undef, float %2847, float %2847, float %2847, float %2847, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
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
!35 = !{void ()* @cs_fog_raymarching_clouds_particles_brfog, !"cs_fog_raymarching_clouds_particles_brfog", null, !4, !36}
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
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}
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

