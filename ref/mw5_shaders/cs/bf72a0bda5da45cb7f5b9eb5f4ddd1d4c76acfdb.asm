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
; shader hash: 6c8501864901cc939a1977f6d23971ac
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

define void @cs_fog_raymarching_air_clouds_particles_brfog() {
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
  %240 = fsub fast float -0.000000e+00, %239
  %241 = extractvalue %dx.types.CBufRet.f32 %238, 1
  %242 = fsub fast float -0.000000e+00, %241
  %243 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 1
  %246 = fmul fast float %236, 2.000000e+00
  %247 = fmul fast float %237, 2.000000e+00
  %248 = fsub fast float 1.000000e+00, %246
  %249 = fsub fast float 1.000000e+00, %247
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 0
  %252 = extractvalue %dx.types.CBufRet.f32 %250, 1
  %253 = extractvalue %dx.types.CBufRet.f32 %250, 2
  %254 = fmul fast float %251, %248
  %255 = fmul fast float %252, %248
  %256 = fmul fast float %253, %248
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 0
  %259 = extractvalue %dx.types.CBufRet.f32 %257, 1
  %260 = extractvalue %dx.types.CBufRet.f32 %257, 2
  %261 = fmul fast float %258, %249
  %262 = fmul fast float %259, %249
  %263 = fmul fast float %260, %249
  %264 = fadd fast float %261, %254
  %265 = fadd fast float %262, %255
  %266 = fadd fast float %263, %256
  %267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %268 = extractvalue %dx.types.CBufRet.f32 %267, 0
  %269 = extractvalue %dx.types.CBufRet.f32 %267, 1
  %270 = extractvalue %dx.types.CBufRet.f32 %267, 2
  %271 = fadd fast float %264, %268
  %272 = fadd fast float %265, %269
  %273 = fadd fast float %266, %270
  %274 = fmul fast float %271, %245
  %275 = fmul fast float %272, %245
  %276 = fmul fast float %273, %245
  %277 = fmul fast float %274, %274
  %278 = fmul fast float %275, %275
  %279 = fadd fast float %277, %278
  %280 = fmul fast float %276, %276
  %281 = fadd fast float %279, %280
  %282 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %283 = fdiv fast float 1.000000e+00, %282
  %284 = fmul fast float %274, %283
  %285 = fmul fast float %275, %283
  %286 = fmul fast float %276, %283
  %287 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %39, i32 %40, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = fcmp fast ogt float %288, -1.000000e+00
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 1
  %292 = select i1 %289, float %291, float 1.000000e+00
  %293 = fadd fast float %288, 1.000000e+00
  %294 = fmul fast float %292, %293
  %295 = call float @dx.op.unary.f32(i32 6, float %294)  ; FAbs(value)
  %296 = fdiv fast float 1.000000e+00, %245
  %297 = fmul fast float %296, %282
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 1
  %300 = fmul fast float %299, %297
  %301 = fmul fast float %297, %295
  %302 = extractvalue %dx.types.CBufRet.f32 %290, 3
  %303 = fcmp fast oge float %295, %302
  %304 = call float @dx.op.binary.f32(i32 36, float %301, float %300)  ; FMin(a,b)
  %305 = select i1 %303, float %300, float %304
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 3
  %308 = fsub fast float %307, %243
  %309 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %240, float %242, float %308)  ; Dot3(ax,ay,az,bx,by,bz)
  %310 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %284, float %285, float %286)  ; Dot3(ax,ay,az,bx,by,bz)
  %311 = fdiv fast float 1.000000e+00, %310
  %312 = fmul fast float %311, %309
  %313 = fcmp fast olt float %312, 0.000000e+00
  %314 = fcmp fast ogt float %286, 0.000000e+00
  %315 = and i1 %314, %313
  br i1 %315, label %320, label %316, !dx.controlflow.hints !39

; <label>:316                                     ; preds = %208
  %317 = fcmp fast olt float %286, 0.000000e+00
  br i1 %317, label %318, label %320, !dx.controlflow.hints !40

; <label>:318                                     ; preds = %316
  %319 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %312)  ; FMax(a,b)
  br label %320

; <label>:320                                     ; preds = %318, %316, %208
  %321 = phi float [ 0.000000e+00, %208 ], [ %319, %318 ], [ 0.000000e+00, %316 ]
  %322 = phi float [ 0.000000e+00, %208 ], [ 0x47EFFFFFE0000000, %318 ], [ %312, %316 ]
  %323 = fcmp fast oeq float %322, 0.000000e+00
  br i1 %323, label %327, label %324, !dx.controlflow.hints !41

; <label>:324                                     ; preds = %320
  %325 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %321)  ; FMin(a,b)
  %326 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %322)  ; FMax(a,b)
  br label %327

; <label>:327                                     ; preds = %324, %320
  %328 = phi i32 [ 1, %324 ], [ 0, %320 ]
  %329 = phi float [ %326, %324 ], [ -1.000000e+00, %320 ]
  %330 = phi float [ %325, %324 ], [ 0x47EFFFFFE0000000, %320 ]
  %331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.i32 %331, 3
  %333 = icmp eq i32 %332, 0
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 2
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %338 = fsub fast float %335, %243
  %339 = fadd fast float %338, %337
  br i1 %333, label %347, label %340, !dx.controlflow.hints !42

; <label>:340                                     ; preds = %327
  %341 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %240, float %242, float %339)  ; Dot3(ax,ay,az,bx,by,bz)
  %342 = fmul fast float %311, %341
  %343 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %240, float %242, float %338)  ; Dot3(ax,ay,az,bx,by,bz)
  %344 = fmul fast float %311, %343
  %345 = call float @dx.op.binary.f32(i32 36, float %342, float %344)  ; FMin(a,b)
  %346 = call float @dx.op.binary.f32(i32 35, float %342, float %344)  ; FMax(a,b)
  br label %380

; <label>:347                                     ; preds = %327
  %348 = fdiv fast float 1.000000e+00, %284
  %349 = fdiv fast float 1.000000e+00, %285
  %350 = fdiv fast float 1.000000e+00, %286
  %351 = extractvalue %dx.types.CBufRet.f32 %334, 0
  %352 = extractvalue %dx.types.CBufRet.f32 %334, 1
  %353 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %354 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %355 = fsub fast float %351, %239
  %356 = fmul fast float %355, %348
  %357 = fadd fast float %355, %353
  %358 = fmul fast float %357, %348
  %359 = call float @dx.op.binary.f32(i32 36, float %356, float %358)  ; FMin(a,b)
  %360 = call float @dx.op.binary.f32(i32 35, float %356, float %358)  ; FMax(a,b)
  %361 = fsub fast float %352, %241
  %362 = fmul fast float %361, %349
  %363 = fadd fast float %361, %354
  %364 = fmul fast float %363, %349
  %365 = call float @dx.op.binary.f32(i32 36, float %362, float %364)  ; FMin(a,b)
  %366 = call float @dx.op.binary.f32(i32 35, float %359, float %365)  ; FMax(a,b)
  %367 = call float @dx.op.binary.f32(i32 35, float %362, float %364)  ; FMax(a,b)
  %368 = call float @dx.op.binary.f32(i32 36, float %360, float %367)  ; FMin(a,b)
  %369 = fmul fast float %338, %350
  %370 = fmul fast float %339, %350
  %371 = call float @dx.op.binary.f32(i32 36, float %369, float %370)  ; FMin(a,b)
  %372 = call float @dx.op.binary.f32(i32 35, float %366, float %371)  ; FMax(a,b)
  %373 = call float @dx.op.binary.f32(i32 35, float %369, float %370)  ; FMax(a,b)
  %374 = call float @dx.op.binary.f32(i32 36, float %368, float %373)  ; FMin(a,b)
  %375 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %372)  ; FMax(a,b)
  %376 = fcmp fast ult float %374, %375
  br i1 %376, label %380, label %377, !dx.controlflow.hints !43

; <label>:377                                     ; preds = %347
  %378 = call float @dx.op.binary.f32(i32 36, float %372, float %374)  ; FMin(a,b)
  %379 = call float @dx.op.binary.f32(i32 35, float %372, float %374)  ; FMax(a,b)
  br label %380

; <label>:380                                     ; preds = %377, %347, %340
  %381 = phi float [ %345, %340 ], [ %378, %377 ], [ 0.000000e+00, %347 ]
  %382 = phi float [ %346, %340 ], [ %379, %377 ], [ 0.000000e+00, %347 ]
  %383 = fcmp fast oeq float %382, 0.000000e+00
  br i1 %383, label %387, label %384, !dx.controlflow.hints !44

; <label>:384                                     ; preds = %380
  %385 = call float @dx.op.binary.f32(i32 36, float %330, float %381)  ; FMin(a,b)
  %386 = call float @dx.op.binary.f32(i32 35, float %329, float %382)  ; FMax(a,b)
  br label %387

; <label>:387                                     ; preds = %384, %380
  %388 = phi i32 [ 1, %384 ], [ 0, %380 ]
  %389 = phi float [ %386, %384 ], [ %329, %380 ]
  %390 = phi float [ %385, %384 ], [ %330, %380 ]
  %391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %392 = extractvalue %dx.types.CBufRet.f32 %391, 3
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.f32 %393, 0
  %395 = fsub fast float %392, %243
  %396 = fadd fast float %395, %394
  %397 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %240, float %242, float %396)  ; Dot3(ax,ay,az,bx,by,bz)
  %398 = fmul fast float %311, %397
  %399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.f32 %399, 2
  %401 = fsub fast float %400, %243
  %402 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %240, float %242, float %401)  ; Dot3(ax,ay,az,bx,by,bz)
  %403 = fmul fast float %311, %402
  %404 = call float @dx.op.binary.f32(i32 36, float %398, float %403)  ; FMin(a,b)
  %405 = call float @dx.op.binary.f32(i32 35, float %398, float %403)  ; FMax(a,b)
  %406 = call float @dx.op.binary.f32(i32 36, float %390, float %404)  ; FMin(a,b)
  %407 = call float @dx.op.binary.f32(i32 35, float %389, float %405)  ; FMax(a,b)
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 2
  %410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.f32 %410, 3
  %412 = fsub fast float %409, %243
  %413 = fadd fast float %412, %411
  %414 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %240, float %242, float %413)  ; Dot3(ax,ay,az,bx,by,bz)
  %415 = fmul fast float %311, %414
  %416 = fcmp fast olt float %415, 0.000000e+00
  %417 = and i1 %314, %416
  br i1 %417, label %422, label %418, !dx.controlflow.hints !45

; <label>:418                                     ; preds = %387
  %419 = fcmp fast olt float %286, 0.000000e+00
  br i1 %419, label %420, label %422, !dx.controlflow.hints !46

; <label>:420                                     ; preds = %418
  %421 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %415)  ; FMax(a,b)
  br label %422

; <label>:422                                     ; preds = %420, %418, %387
  %423 = phi float [ 0.000000e+00, %387 ], [ %421, %420 ], [ 0.000000e+00, %418 ]
  %424 = phi float [ 0.000000e+00, %387 ], [ 0x47EFFFFFE0000000, %420 ], [ %415, %418 ]
  %425 = fcmp fast oeq float %424, 0.000000e+00
  br i1 %425, label %429, label %426, !dx.controlflow.hints !47

; <label>:426                                     ; preds = %422
  %427 = call float @dx.op.binary.f32(i32 36, float %406, float %423)  ; FMin(a,b)
  %428 = call float @dx.op.binary.f32(i32 35, float %407, float %424)  ; FMax(a,b)
  br label %429

; <label>:429                                     ; preds = %426, %422
  %430 = phi i32 [ 1, %426 ], [ 0, %422 ]
  %431 = phi float [ %428, %426 ], [ %407, %422 ]
  %432 = phi float [ %427, %426 ], [ %406, %422 ]
  %433 = fdiv fast float 1.000000e+00, %284
  %434 = fdiv fast float 1.000000e+00, %285
  %435 = fdiv fast float 1.000000e+00, %286
  %436 = call float @dx.op.binary.f32(i32 36, float %305, float %431)  ; FMin(a,b)
  %437 = call float @dx.op.binary.f32(i32 35, float %282, float %432)  ; FMax(a,b)
  %438 = extractvalue %dx.types.CBufRet.f32 %306, 0
  %439 = fmul fast float %228, 2.000000e+00
  %440 = fadd fast float %439, -1.000000e+00
  %441 = fmul fast float %438, %440
  %442 = fadd fast float %441, %437
  %443 = fcmp fast olt float %442, %436
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 2
  %446 = fcmp fast olt float %445, 1.000000e+00
  %447 = and i1 %446, %443
  br i1 %447, label %448, label %2119

; <label>:448                                     ; preds = %429
  %449 = fmul fast float %442, %286
  %450 = fadd fast float %449, %243
  %451 = fmul fast float %442, %285
  %452 = fadd fast float %451, %241
  %453 = fmul fast float %442, %284
  %454 = fadd fast float %453, %239
  br label %455

; <label>:455                                     ; preds = %2089, %448
  %456 = phi i32 [ %2091, %2089 ], [ undef, %448 ]
  %457 = phi float [ %2092, %2089 ], [ undef, %448 ]
  %458 = phi float [ %2093, %2089 ], [ undef, %448 ]
  %459 = phi float [ %2094, %2089 ], [ undef, %448 ]
  %460 = phi float [ %2095, %2089 ], [ undef, %448 ]
  %461 = phi float [ %2096, %2089 ], [ undef, %448 ]
  %462 = phi i32 [ %848, %2089 ], [ undef, %448 ]
  %463 = phi float [ %850, %2089 ], [ undef, %448 ]
  %464 = phi float [ %590, %2089 ], [ undef, %448 ]
  %465 = phi float [ %591, %2089 ], [ undef, %448 ]
  %466 = phi float [ %592, %2089 ], [ undef, %448 ]
  %467 = phi float [ %593, %2089 ], [ undef, %448 ]
  %468 = phi float [ %2097, %2089 ], [ 0.000000e+00, %448 ]
  %469 = phi float [ %2098, %2089 ], [ 1.000000e+00, %448 ]
  %470 = phi float [ %2099, %2089 ], [ 0.000000e+00, %448 ]
  %471 = phi float [ %2100, %2089 ], [ 0.000000e+00, %448 ]
  %472 = phi float [ %2101, %2089 ], [ 0.000000e+00, %448 ]
  %473 = phi float [ %2111, %2089 ], [ %454, %448 ]
  %474 = phi float [ %2112, %2089 ], [ %452, %448 ]
  %475 = phi float [ %2113, %2089 ], [ %450, %448 ]
  %476 = phi float [ %2090, %2089 ], [ %442, %448 ]
  %477 = phi i32 [ %595, %2089 ], [ 10, %448 ]
  %478 = phi float [ %2102, %2089 ], [ 0.000000e+00, %448 ]
  %479 = phi float [ %2103, %2089 ], [ 0.000000e+00, %448 ]
  %480 = phi float [ %2104, %2089 ], [ 0.000000e+00, %448 ]
  %481 = phi float [ %2105, %2089 ], [ 0.000000e+00, %448 ]
  %482 = phi float [ %2106, %2089 ], [ 0.000000e+00, %448 ]
  %483 = phi i32 [ %2107, %2089 ], [ 0, %448 ]
  %484 = fsub fast float -0.000000e+00, %474
  %485 = fsub fast float -0.000000e+00, %473
  %486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.f32 %486, 0
  %488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %489 = extractvalue %dx.types.CBufRet.f32 %488, 0
  %490 = extractvalue %dx.types.CBufRet.f32 %488, 1
  %491 = fsub fast float %473, %489
  %492 = fsub fast float %474, %490
  %493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %494 = extractvalue %dx.types.CBufRet.f32 %493, 2
  %495 = extractvalue %dx.types.CBufRet.f32 %493, 3
  %496 = fmul fast float %491, %494
  %497 = fmul fast float %492, %495
  %498 = call float @dx.op.binary.f32(i32 36, float %496, float %497)  ; FMin(a,b)
  %499 = fcmp fast olt float %498, 0.000000e+00
  %500 = call float @dx.op.binary.f32(i32 35, float %496, float %497)  ; FMax(a,b)
  %501 = fcmp fast ogt float %500, 1.000000e+00
  %502 = or i1 %499, %501
  %503 = extractvalue %dx.types.CBufRet.f32 %488, 2
  %504 = fcmp fast olt float %475, %503
  %505 = or i1 %502, %504
  %506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.f32 %506, 3
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 0
  %510 = fadd fast float %509, %507
  %511 = fcmp fast ogt float %475, %510
  %512 = or i1 %505, %511
  br i1 %512, label %513, label %542, !dx.controlflow.hints !48

; <label>:513                                     ; preds = %455
  %514 = extractvalue %dx.types.CBufRet.f32 %493, 0
  %515 = extractvalue %dx.types.CBufRet.f32 %493, 1
  %516 = fsub fast float %489, %473
  %517 = fmul fast float %516, %433
  %518 = fadd fast float %516, %514
  %519 = fmul fast float %518, %433
  %520 = call float @dx.op.binary.f32(i32 36, float %517, float %519)  ; FMin(a,b)
  %521 = call float @dx.op.binary.f32(i32 35, float %517, float %519)  ; FMax(a,b)
  %522 = fsub fast float %490, %474
  %523 = fmul fast float %522, %434
  %524 = fadd fast float %522, %515
  %525 = fmul fast float %524, %434
  %526 = call float @dx.op.binary.f32(i32 36, float %523, float %525)  ; FMin(a,b)
  %527 = call float @dx.op.binary.f32(i32 35, float %520, float %526)  ; FMax(a,b)
  %528 = call float @dx.op.binary.f32(i32 35, float %523, float %525)  ; FMax(a,b)
  %529 = call float @dx.op.binary.f32(i32 36, float %521, float %528)  ; FMin(a,b)
  %530 = fsub fast float %503, %475
  %531 = fmul fast float %530, %435
  %532 = fsub fast float %507, %475
  %533 = fadd fast float %532, %509
  %534 = fmul fast float %533, %435
  %535 = call float @dx.op.binary.f32(i32 36, float %531, float %534)  ; FMin(a,b)
  %536 = call float @dx.op.binary.f32(i32 35, float %527, float %535)  ; FMax(a,b)
  %537 = call float @dx.op.binary.f32(i32 35, float %531, float %534)  ; FMax(a,b)
  %538 = call float @dx.op.binary.f32(i32 36, float %529, float %537)  ; FMin(a,b)
  %539 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %536)  ; FMax(a,b)
  %540 = fcmp fast oge float %538, %539
  %541 = select i1 %540, float %536, float 1.000000e+07
  br label %588

; <label>:542                                     ; preds = %455
  %543 = fsub fast float 1.000000e+00, %497
  %544 = icmp eq i32 %477, 0
  br i1 %544, label %573, label %545

; <label>:545                                     ; preds = %542
  br label %546

; <label>:546                                     ; preds = %569, %545
  %547 = phi i32 [ %570, %569 ], [ %477, %545 ]
  %548 = uitofp i32 %547 to float
  %549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %496, float %543, float undef, float undef, i32 0, i32 0, i32 undef, float %548)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = extractvalue %dx.types.ResRet.f32 %549, 1
  %552 = extractvalue %dx.types.ResRet.f32 %549, 2
  %553 = fcmp fast oeq float %550, 0.000000e+00
  %554 = fcmp ule float %475, %552
  %555 = fcmp uge float %475, %551
  %556 = or i1 %555, %554
  %557 = or i1 %553, %556
  br i1 %557, label %558, label %569, !dx.controlflow.hints !49

; <label>:558                                     ; preds = %546
  %559 = extractvalue %dx.types.ResRet.f32 %549, 3
  %560 = extractvalue %dx.types.CBufRet.f32 %493, 0
  %561 = and i32 %547, 31
  %562 = lshr i32 1024, %561
  %563 = uitofp i32 %562 to float
  %564 = fdiv fast float %560, %563
  %565 = add i32 %547, 1
  %566 = uitofp i32 %565 to float
  %567 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %566)  ; FMin(a,b)
  %568 = fptosi float %567 to i32
  br label %588

; <label>:569                                     ; preds = %546
  %570 = add i32 %547, -1
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %572, label %546, !llvm.loop !50

; <label>:572                                     ; preds = %569
  br label %573

; <label>:573                                     ; preds = %572, %542
  %574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %20, float %496, float %543, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = extractvalue %dx.types.ResRet.f32 %574, 1
  %577 = extractvalue %dx.types.ResRet.f32 %574, 2
  %578 = extractvalue %dx.types.ResRet.f32 %574, 3
  %579 = extractvalue %dx.types.CBufRet.f32 %493, 0
  %580 = fmul fast float %579, 9.765625e-04
  %581 = fcmp fast oeq float %575, 0.000000e+00
  %582 = fcmp ule float %475, %577
  %583 = fcmp uge float %475, %576
  %584 = or i1 %583, %582
  %585 = or i1 %581, %584
  %586 = zext i1 %585 to i32
  %587 = xor i32 %586, 1
  br label %588

; <label>:588                                     ; preds = %573, %558, %513
  %589 = phi float [ %541, %513 ], [ %564, %558 ], [ %580, %573 ]
  %590 = phi float [ %464, %513 ], [ %550, %558 ], [ %575, %573 ]
  %591 = phi float [ %465, %513 ], [ %551, %558 ], [ %576, %573 ]
  %592 = phi float [ %466, %513 ], [ %552, %558 ], [ %577, %573 ]
  %593 = phi float [ %467, %513 ], [ %559, %558 ], [ %578, %573 ]
  %594 = phi i32 [ 0, %513 ], [ 0, %558 ], [ %587, %573 ]
  %595 = phi i32 [ 10, %513 ], [ %568, %558 ], [ 1, %573 ]
  %596 = icmp eq i32 %594, 0
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 2
  %599 = call float @dx.op.binary.f32(i32 35, float %589, float %598)  ; FMax(a,b)
  %600 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %599)  ; FMin(a,b)
  %601 = icmp eq i32 %328, 0
  br i1 %601, label %614, label %602, !dx.controlflow.hints !52

; <label>:602                                     ; preds = %588
  %603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.f32 %603, 3
  %605 = extractvalue %dx.types.CBufRet.f32 %603, 2
  %606 = fmul fast float %604, %476
  %607 = fdiv fast float %606, %436
  %608 = fadd fast float %607, 1.000000e+00
  %609 = call float @dx.op.unary.f32(i32 23, float %608)  ; Log(value)
  %610 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %609)  ; FMin(a,b)
  %611 = fmul fast float %605, %436
  %612 = fmul fast float %611, %610
  %613 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %612)  ; FMin(a,b)
  br label %614

; <label>:614                                     ; preds = %602, %588
  %615 = phi float [ %613, %602 ], [ 0x47EFFFFFE0000000, %588 ]
  %616 = icmp eq i32 %388, 0
  br i1 %616, label %672, label %617, !dx.controlflow.hints !53

; <label>:617                                     ; preds = %614
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 0
  %620 = extractvalue %dx.types.CBufRet.f32 %618, 1
  %621 = extractvalue %dx.types.CBufRet.f32 %618, 2
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 0
  %624 = extractvalue %dx.types.CBufRet.f32 %622, 1
  %625 = extractvalue %dx.types.CBufRet.f32 %622, 2
  %626 = fsub fast float %473, %623
  %627 = fsub fast float %474, %624
  %628 = fsub fast float %475, %625
  %629 = fmul fast float %626, %619
  %630 = fmul fast float %627, %620
  %631 = fmul fast float %628, %621
  %632 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.i32 %632, 3
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %638, label %635, !dx.controlflow.hints !54

; <label>:635                                     ; preds = %617
  %636 = call float @dx.op.unary.f32(i32 22, float %629)  ; Frc(value)
  %637 = call float @dx.op.unary.f32(i32 22, float %630)  ; Frc(value)
  br label %638

; <label>:638                                     ; preds = %635, %617
  %639 = phi float [ %636, %635 ], [ %629, %617 ]
  %640 = phi float [ %637, %635 ], [ %630, %617 ]
  %641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %639, float %640, float %631, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %642 = extractvalue %dx.types.ResRet.f32 %641, 0
  %643 = fmul fast float %642, 2.000000e+00
  %644 = fadd fast float %643, -1.000000e+00
  %645 = extractvalue %dx.types.CBufRet.f32 %618, 3
  %646 = fmul fast float %644, %645
  %647 = fcmp fast olt float %646, 0.000000e+00
  %648 = fcmp fast oge float %631, 0.000000e+00
  %649 = fcmp fast ole float %631, 1.000000e+00
  br i1 %634, label %652, label %650, !dx.controlflow.hints !55

; <label>:650                                     ; preds = %638
  %651 = and i1 %648, %649
  br label %662

; <label>:652                                     ; preds = %638
  %653 = fcmp fast oge float %629, 0.000000e+00
  %654 = fcmp fast oge float %630, 0.000000e+00
  %655 = and i1 %653, %654
  %656 = and i1 %648, %655
  %657 = fcmp fast ole float %629, 1.000000e+00
  %658 = fcmp fast ole float %630, 1.000000e+00
  %659 = and i1 %657, %658
  %660 = and i1 %649, %659
  %661 = and i1 %656, %660
  br label %662

; <label>:662                                     ; preds = %652, %650
  %663 = phi i1 [ %651, %650 ], [ %661, %652 ]
  %664 = and i1 %647, %663
  %665 = call float @dx.op.unary.f32(i32 6, float %646)  ; FAbs(value)
  %666 = extractvalue %dx.types.CBufRet.f32 %597, 1
  %667 = extractvalue %dx.types.CBufRet.f32 %597, 0
  %668 = call float @dx.op.binary.f32(i32 35, float %665, float %667)  ; FMax(a,b)
  %669 = select i1 %664, float %666, float %668
  %670 = zext i1 %664 to i32
  %671 = call float @dx.op.binary.f32(i32 36, float %600, float %669)  ; FMin(a,b)
  br label %672

; <label>:672                                     ; preds = %662, %614
  %673 = phi i32 [ %670, %662 ], [ 0, %614 ]
  %674 = phi float [ %671, %662 ], [ %600, %614 ]
  %675 = icmp eq i32 %430, 0
  br i1 %675, label %847, label %676, !dx.controlflow.hints !56

; <label>:676                                     ; preds = %672
  %677 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %678 = extractvalue %dx.types.CBufRet.i32 %677, 1
  %679 = and i32 %678, 1
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %681, label %838, !dx.controlflow.hints !57

; <label>:681                                     ; preds = %676
  %682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.f32 %682, 2
  %684 = extractvalue %dx.types.CBufRet.f32 %682, 3
  %685 = fmul fast float %683, %473
  %686 = fmul fast float %684, %474
  %687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %688 = extractvalue %dx.types.CBufRet.f32 %687, 0
  %689 = extractvalue %dx.types.CBufRet.f32 %687, 1
  %690 = fadd fast float %685, %688
  %691 = fadd fast float %686, %689
  %692 = call float @dx.op.unary.f32(i32 7, float %690)  ; Saturate(value)
  %693 = call float @dx.op.unary.f32(i32 7, float %691)  ; Saturate(value)
  %694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %20, float %692, float %693, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %695 = extractvalue %dx.types.ResRet.f32 %694, 0
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 0
  %698 = fmul fast float %697, %695
  %699 = fsub fast float %690, %692
  %700 = fsub fast float %691, %693
  %701 = extractvalue %dx.types.CBufRet.f32 %682, 0
  %702 = extractvalue %dx.types.CBufRet.f32 %682, 1
  %703 = fmul fast float %701, %699
  %704 = fmul fast float %702, %700
  %705 = fmul fast float %703, %703
  %706 = fmul fast float %704, %704
  %707 = fadd fast float %705, %706
  %708 = call float @dx.op.unary.f32(i32 24, float %707)  ; Sqrt(value)
  %709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %710 = extractvalue %dx.types.CBufRet.f32 %709, 3
  %711 = fmul fast float %710, %708
  %712 = call float @dx.op.unary.f32(i32 7, float %711)  ; Saturate(value)
  %713 = extractvalue %dx.types.CBufRet.f32 %709, 2
  %714 = fsub fast float %713, %698
  %715 = fmul fast float %714, %712
  %716 = extractvalue %dx.types.CBufRet.f32 %696, 1
  %717 = fsub fast float %475, %698
  %718 = fsub fast float %717, %716
  %719 = fsub fast float %718, %715
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 2
  %722 = fsub fast float %719, %721
  %723 = fcmp fast olt float %722, 0.000000e+00
  %724 = call float @dx.op.unary.f32(i32 6, float %722)  ; FAbs(value)
  %725 = extractvalue %dx.types.CBufRet.i32 %677, 0
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %780, label %727

; <label>:727                                     ; preds = %681
  br label %728

; <label>:728                                     ; preds = %767, %727
  %729 = phi i32 [ %773, %767 ], [ 1, %727 ]
  %730 = phi float [ %775, %767 ], [ 0x47EFFFFFE0000000, %727 ]
  %731 = phi i32 [ %776, %767 ], [ 0, %727 ]
  %732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %733 = extractvalue %dx.types.CBufRet.f32 %732, 1
  %734 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.i32 %734, 1
  %736 = and i32 %735, 8
  %737 = icmp eq i32 %736, 0
  %738 = fcmp fast ogt float %733, %719
  %739 = or i1 %738, %737
  %740 = add i32 %731, 171
  %741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %740)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.f32 %741, 0
  %743 = extractvalue %dx.types.CBufRet.f32 %741, 1
  %744 = extractvalue %dx.types.CBufRet.f32 %741, 2
  br i1 %739, label %745, label %751, !dx.controlflow.hints !58

; <label>:745                                     ; preds = %728
  %746 = fsub fast float %742, %473
  %747 = fsub fast float %743, %474
  %748 = fmul fast float %746, %746
  %749 = fmul fast float %747, %747
  %750 = fadd fast float %748, %749
  br label %767

; <label>:751                                     ; preds = %728
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 2
  %754 = extractvalue %dx.types.CBufRet.f32 %732, 2
  %755 = fmul fast float %754, %753
  %756 = fsub fast float %755, %733
  %757 = fdiv fast float %744, %756
  %758 = fsub fast float %473, %742
  %759 = fsub fast float %474, %743
  %760 = fsub fast float %719, %733
  %761 = fmul fast float %757, %760
  %762 = fmul fast float %758, %758
  %763 = fmul fast float %759, %759
  %764 = fadd fast float %762, %763
  %765 = fmul fast float %761, %761
  %766 = fadd fast float %764, %765
  br label %767

; <label>:767                                     ; preds = %751, %745
  %768 = phi float [ %750, %745 ], [ %766, %751 ]
  %769 = call float @dx.op.unary.f32(i32 24, float %768)  ; Sqrt(value)
  %770 = fsub float %744, %769
  %771 = fcmp fast olt float %770, 0.000000e+00
  %772 = zext i1 %771 to i32
  %773 = and i32 %772, %729
  %774 = call float @dx.op.unary.f32(i32 6, float %770)  ; FAbs(value)
  %775 = call float @dx.op.binary.f32(i32 36, float %730, float %774)  ; FMin(a,b)
  %776 = add i32 %731, 1
  %777 = extractvalue %dx.types.CBufRet.i32 %734, 0
  %778 = icmp ult i32 %776, %777
  br i1 %778, label %728, label %779

; <label>:779                                     ; preds = %767
  br label %780

; <label>:780                                     ; preds = %779, %681
  %781 = phi i32 [ 1, %681 ], [ %773, %779 ]
  %782 = phi float [ 0x47EFFFFFE0000000, %681 ], [ %775, %779 ]
  br label %783

; <label>:783                                     ; preds = %783, %780
  %784 = phi i32 [ %781, %780 ], [ %823, %783 ]
  %785 = phi float [ 0x47EFFFFFE0000000, %780 ], [ %825, %783 ]
  %786 = phi i32 [ 0, %780 ], [ %826, %783 ]
  %787 = add nuw nsw i32 %786, 191
  %788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %787)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.f32 %788, 0
  %790 = extractvalue %dx.types.CBufRet.f32 %788, 1
  %791 = extractvalue %dx.types.CBufRet.f32 %788, 2
  %792 = add nuw nsw i32 %786, 195
  %793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %792)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.f32 %793, 0
  %795 = extractvalue %dx.types.CBufRet.f32 %793, 1
  %796 = extractvalue %dx.types.CBufRet.f32 %793, 2
  %797 = fsub fast float %473, %789
  %798 = fsub fast float %474, %790
  %799 = fsub fast float %719, %791
  %800 = call float @dx.op.unary.f32(i32 6, float %797)  ; FAbs(value)
  %801 = call float @dx.op.unary.f32(i32 6, float %798)  ; FAbs(value)
  %802 = call float @dx.op.unary.f32(i32 6, float %799)  ; FAbs(value)
  %803 = fsub fast float %800, %794
  %804 = fsub fast float %801, %795
  %805 = fsub fast float %802, %796
  %806 = call float @dx.op.binary.f32(i32 35, float %803, float 0.000000e+00)  ; FMax(a,b)
  %807 = call float @dx.op.binary.f32(i32 35, float %804, float 0.000000e+00)  ; FMax(a,b)
  %808 = call float @dx.op.binary.f32(i32 35, float %805, float 0.000000e+00)  ; FMax(a,b)
  %809 = fmul fast float %806, %806
  %810 = fmul fast float %807, %807
  %811 = fadd fast float %810, %809
  %812 = fmul fast float %808, %808
  %813 = fadd fast float %811, %812
  %814 = call float @dx.op.unary.f32(i32 24, float %813)  ; Sqrt(value)
  %815 = call float @dx.op.binary.f32(i32 35, float %804, float %805)  ; FMax(a,b)
  %816 = call float @dx.op.binary.f32(i32 35, float %803, float %815)  ; FMax(a,b)
  %817 = call float @dx.op.binary.f32(i32 36, float %816, float 0.000000e+00)  ; FMin(a,b)
  %818 = fadd fast float %817, %814
  %819 = fsub fast float -0.000000e+00, %818
  %820 = fcmp ogt float %818, -0.000000e+00
  %821 = icmp ne i32 %784, 0
  %822 = and i1 %821, %820
  %823 = zext i1 %822 to i32
  %824 = call float @dx.op.unary.f32(i32 6, float %819)  ; FAbs(value)
  %825 = call float @dx.op.binary.f32(i32 36, float %785, float %824)  ; FMin(a,b)
  %826 = add nuw nsw i32 %786, 1
  %827 = icmp eq i32 %826, 4
  br i1 %827, label %828, label %783

; <label>:828                                     ; preds = %783
  %829 = call float @dx.op.binary.f32(i32 36, float %724, float %825)  ; FMin(a,b)
  %830 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %831 = extractvalue %dx.types.CBufRet.i32 %830, 1
  %832 = and i32 %831, 2
  %833 = icmp ne i32 %832, 0
  %834 = xor i1 %822, %833
  %835 = call float @dx.op.binary.f32(i32 36, float %829, float %782)  ; FMin(a,b)
  %836 = and i1 %834, %723
  %837 = zext i1 %836 to i32
  br label %838

; <label>:838                                     ; preds = %828, %676
  %839 = phi i32 [ %462, %676 ], [ %837, %828 ]
  %840 = phi float [ 0.000000e+00, %676 ], [ %835, %828 ]
  %841 = phi float [ %475, %676 ], [ %719, %828 ]
  %842 = icmp ne i32 %839, 0
  %843 = extractvalue %dx.types.CBufRet.f32 %597, 3
  %844 = call float @dx.op.binary.f32(i32 35, float %840, float %843)  ; FMax(a,b)
  %845 = call float @dx.op.binary.f32(i32 36, float %615, float %844)  ; FMin(a,b)
  %846 = zext i1 %842 to i32
  br label %847

; <label>:847                                     ; preds = %838, %672
  %848 = phi i32 [ %839, %838 ], [ %462, %672 ]
  %849 = phi i32 [ %846, %838 ], [ 0, %672 ]
  %850 = phi float [ %841, %838 ], [ %463, %672 ]
  %851 = phi float [ %845, %838 ], [ %615, %672 ]
  %852 = extractvalue %dx.types.CBufRet.f32 %486, 2
  %853 = fmul fast float %852, %476
  %854 = call float @dx.op.unary.f32(i32 23, float %853)  ; Log(value)
  %855 = fmul fast float %854, 0x3FE62E4300000000
  %856 = call float @dx.op.binary.f32(i32 35, float %855, float 1.000000e+00)  ; FMax(a,b)
  %857 = fmul fast float %856, %851
  %858 = call float @dx.op.binary.f32(i32 36, float %857, float %674)  ; FMin(a,b)
  %859 = call float @dx.op.binary.f32(i32 35, float %858, float %487)  ; FMax(a,b)
  %860 = fadd fast float %436, 0x3F1A36E2E0000000
  %861 = fsub fast float %860, %476
  %862 = call float @dx.op.binary.f32(i32 36, float %861, float %859)  ; FMin(a,b)
  br i1 %601, label %917, label %863, !dx.controlflow.hints !59

; <label>:863                                     ; preds = %847
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 0
  %866 = fsub fast float %865, %475
  %867 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %485, float %484, float %866)  ; Dot3(ax,ay,az,bx,by,bz)
  %868 = fmul fast float %311, %867
  %869 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %868)  ; FMax(a,b)
  %870 = fcmp fast olt float %286, 0.000000e+00
  %871 = call float @dx.op.binary.f32(i32 36, float %862, float %869)  ; FMin(a,b)
  br i1 %870, label %873, label %872, !dx.controlflow.hints !60

; <label>:872                                     ; preds = %863
  br label %873

; <label>:873                                     ; preds = %872, %863
  %874 = phi float [ 0.000000e+00, %872 ], [ %871, %863 ]
  %875 = phi float [ %871, %872 ], [ %862, %863 ]
  %876 = phi float [ %871, %872 ], [ 0.000000e+00, %863 ]
  %877 = phi float [ %862, %872 ], [ %871, %863 ]
  %878 = fsub fast float %875, %874
  %879 = extractvalue %dx.types.CBufRet.f32 %864, 1
  %880 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %879)  ; FMin(a,b)
  %881 = fsub fast float %475, %865
  %882 = fmul fast float %880, 0x3FF7154760000000
  %883 = fmul fast float %882, %881
  %884 = call float @dx.op.unary.f32(i32 21, float %883)  ; Exp(value)
  %885 = fmul fast float %286, 0x3FF7154760000000
  %886 = fmul fast float %885, %877
  %887 = fmul fast float %886, %880
  %888 = call float @dx.op.unary.f32(i32 21, float %887)  ; Exp(value)
  %889 = fmul fast float %885, %876
  %890 = fmul fast float %889, %880
  %891 = call float @dx.op.unary.f32(i32 21, float %890)  ; Exp(value)
  %892 = fsub fast float %888, %891
  %893 = fmul fast float %892, %884
  %894 = fmul fast float %880, %286
  %895 = fdiv fast float %893, %894
  %896 = fadd fast float %878, %895
  %897 = call float @dx.op.unary.f32(i32 6, float %286)  ; FAbs(value)
  %898 = fcmp fast olt float %897, 0x3F0FFB4800000000
  %899 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %881)  ; FMax(a,b)
  %900 = fmul fast float %899, 0x3FF7154760000000
  %901 = fmul fast float %900, %879
  %902 = call float @dx.op.unary.f32(i32 21, float %901)  ; Exp(value)
  %903 = fmul fast float %902, %862
  %904 = select i1 %898, float %903, float %896
  %905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.f32 %905, 1
  %907 = fmul fast float %904, %906
  %908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %909 = extractvalue %dx.types.CBufRet.f32 %908, 0
  %910 = extractvalue %dx.types.CBufRet.f32 %908, 1
  %911 = extractvalue %dx.types.CBufRet.f32 %908, 2
  %912 = extractvalue %dx.types.CBufRet.f32 %905, 2
  %913 = fmul fast float %909, %907
  %914 = fmul fast float %910, %907
  %915 = fmul fast float %911, %907
  %916 = fmul fast float %912, %907
  br label %917

; <label>:917                                     ; preds = %873, %847
  %918 = phi float [ %907, %873 ], [ 0.000000e+00, %847 ]
  %919 = phi float [ %916, %873 ], [ 0.000000e+00, %847 ]
  %920 = phi float [ %913, %873 ], [ 0.000000e+00, %847 ]
  %921 = phi float [ %914, %873 ], [ 0.000000e+00, %847 ]
  %922 = phi float [ %915, %873 ], [ 0.000000e+00, %847 ]
  %923 = icmp eq i32 %673, 0
  br i1 %923, label %1118, label %924, !dx.controlflow.hints !61

; <label>:924                                     ; preds = %917
  %925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.f32 %925, 3
  %927 = fmul fast float %926, %476
  %928 = fcmp fast oeq float %927, 0.000000e+00
  br i1 %928, label %943, label %929, !dx.controlflow.hints !62

; <label>:929                                     ; preds = %924
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 3
  %932 = fmul fast float %931, %927
  %933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.f32 %933, 0
  %935 = extractvalue %dx.types.CBufRet.f32 %933, 1
  %936 = extractvalue %dx.types.CBufRet.f32 %933, 2
  %937 = fmul fast float %934, %932
  %938 = fmul fast float %935, %932
  %939 = fmul fast float %936, %932
  %940 = call float @dx.op.unary.f32(i32 23, float %937)  ; Log(value)
  %941 = call float @dx.op.unary.f32(i32 23, float %938)  ; Log(value)
  %942 = call float @dx.op.unary.f32(i32 23, float %939)  ; Log(value)
  br label %943

; <label>:943                                     ; preds = %929, %924
  %944 = phi float [ %940, %929 ], [ 0.000000e+00, %924 ]
  %945 = phi float [ %941, %929 ], [ 0.000000e+00, %924 ]
  %946 = phi float [ %942, %929 ], [ 0.000000e+00, %924 ]
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 0
  %949 = extractvalue %dx.types.CBufRet.f32 %947, 1
  %950 = extractvalue %dx.types.CBufRet.f32 %947, 2
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 0
  %953 = extractvalue %dx.types.CBufRet.f32 %951, 1
  %954 = extractvalue %dx.types.CBufRet.f32 %951, 2
  %955 = fsub fast float %473, %952
  %956 = fsub fast float %474, %953
  %957 = fsub fast float %475, %954
  %958 = fmul fast float %955, %948
  %959 = fmul fast float %956, %949
  %960 = fmul fast float %957, %950
  %961 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.i32 %961, 0
  %963 = extractvalue %dx.types.CBufRet.i32 %961, 1
  %964 = uitofp i32 %962 to float
  %965 = uitofp i32 %963 to float
  %966 = fmul fast float %958, %964
  %967 = fmul fast float %959, %965
  %968 = fadd fast float %966, 5.000000e-01
  %969 = fadd fast float %967, 5.000000e-01
  %970 = call float @dx.op.unary.f32(i32 22, float %968)  ; Frc(value)
  %971 = call float @dx.op.unary.f32(i32 22, float %969)  ; Frc(value)
  %972 = call float @dx.op.unary.f32(i32 27, float %968)  ; Round_ni(value)
  %973 = call float @dx.op.unary.f32(i32 27, float %969)  ; Round_ni(value)
  %974 = fadd fast float %972, 1.000000e+00
  %975 = fadd fast float %973, 1.000000e+00
  %976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %977 = extractvalue %dx.types.CBufRet.f32 %976, 0
  %978 = extractvalue %dx.types.CBufRet.f32 %976, 1
  %979 = fmul fast float %977, %974
  %980 = fmul fast float %978, %975
  %981 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %19, float %979, float %980, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %982 = extractvalue %dx.types.ResRet.f32 %981, 0
  %983 = extractvalue %dx.types.ResRet.f32 %981, 1
  %984 = extractvalue %dx.types.ResRet.f32 %981, 2
  %985 = extractvalue %dx.types.ResRet.f32 %981, 3
  %986 = extractvalue %dx.types.CBufRet.i32 %961, 2
  %987 = extractvalue %dx.types.CBufRet.f32 %976, 2
  %988 = uitofp i32 %986 to float
  %989 = fadd fast float %988, -1.000000e+00
  %990 = fmul fast float %989, %982
  %991 = fmul fast float %989, %983
  %992 = fmul fast float %989, %984
  %993 = fmul fast float %989, %985
  %994 = fadd fast float %990, 5.000000e-01
  %995 = fadd fast float %991, 5.000000e-01
  %996 = fadd fast float %992, 5.000000e-01
  %997 = fadd fast float %993, 5.000000e-01
  %998 = fptoui float %994 to i32
  %999 = fptoui float %995 to i32
  %1000 = fptoui float %996 to i32
  %1001 = fptoui float %997 to i32
  %1002 = uitofp i32 %998 to float
  %1003 = uitofp i32 %999 to float
  %1004 = uitofp i32 %1000 to float
  %1005 = uitofp i32 %1001 to float
  %1006 = fadd fast float %1002, 5.000000e-01
  %1007 = fadd fast float %1003, 5.000000e-01
  %1008 = fadd fast float %1004, 5.000000e-01
  %1009 = fadd fast float %1005, 5.000000e-01
  %1010 = fmul fast float %1006, %987
  %1011 = fmul fast float %1007, %987
  %1012 = fmul fast float %1008, %987
  %1013 = fmul fast float %1009, %987
  %1014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1010, float %960, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1015 = extractvalue %dx.types.ResRet.f32 %1014, 0
  %1016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1011, float %960, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1017 = extractvalue %dx.types.ResRet.f32 %1016, 0
  %1018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1012, float %960, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1019 = extractvalue %dx.types.ResRet.f32 %1018, 0
  %1020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1013, float %960, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1021 = extractvalue %dx.types.ResRet.f32 %1020, 0
  %1022 = fsub fast float %1019, %1021
  %1023 = fmul fast float %1022, %970
  %1024 = fadd fast float %1023, %1021
  %1025 = fsub fast float %1017, %1015
  %1026 = fmul fast float %1025, %970
  %1027 = fadd fast float %1026, %1015
  %1028 = fsub fast float %1027, %1024
  %1029 = fmul fast float %1028, %971
  %1030 = fadd fast float %1029, %1024
  %1031 = fcmp fast ogt float %1030, 0.000000e+00
  br i1 %1031, label %1032, label %1100, !dx.controlflow.hints !63

; <label>:1032                                    ; preds = %943
  %1033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.CBufRet.f32 %1033, 1
  %1036 = extractvalue %dx.types.CBufRet.f32 %1033, 2
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 0
  %1039 = extractvalue %dx.types.CBufRet.f32 %1037, 1
  %1040 = extractvalue %dx.types.CBufRet.f32 %1037, 2
  %1041 = fmul fast float %956, %948
  %1042 = fmul fast float %957, %948
  %1043 = fadd fast float %958, %1038
  %1044 = fadd fast float %1041, %1039
  %1045 = fadd fast float %1042, %1040
  %1046 = fmul fast float %1043, %1034
  %1047 = fmul fast float %1044, %1034
  %1048 = fmul fast float %1045, %1034
  %1049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1046, float %1047, float %1048, float undef, i32 0, i32 0, i32 0, float %944)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = fmul fast float %1043, %1035
  %1052 = fmul fast float %1044, %1035
  %1053 = fmul fast float %1045, %1035
  %1054 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1051, float %1052, float %1053, float undef, i32 0, i32 0, i32 0, float %945)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1055 = extractvalue %dx.types.ResRet.f32 %1054, 1
  %1056 = fmul fast float %1043, %1036
  %1057 = fmul fast float %1044, %1036
  %1058 = fmul fast float %1045, %1036
  %1059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1056, float %1057, float %1058, float undef, i32 0, i32 0, i32 0, float %946)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 2
  %1061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.f32 %1061, 1
  %1063 = fmul fast float %1055, %1050
  %1064 = fmul fast float %1063, %1060
  %1065 = call float @dx.op.unary.f32(i32 23, float %1064)  ; Log(value)
  %1066 = fmul fast float %1065, %1062
  %1067 = call float @dx.op.unary.f32(i32 21, float %1066)  ; Exp(value)
  %1068 = extractvalue %dx.types.CBufRet.f32 %1061, 2
  %1069 = fmul fast float %1030, %1030
  %1070 = fmul fast float %1069, %1067
  %1071 = fmul fast float %1070, %1068
  %1072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1073 = extractvalue %dx.types.CBufRet.f32 %1072, 3
  %1074 = fmul fast float %1073, %1071
  %1075 = bitcast float %1074 to i32
  %1076 = sitofp i32 %1075 to float
  %1077 = fptosi float %1076 to i32
  %1078 = bitcast i32 %1077 to float
  %1079 = fsub fast float 1.000000e+00, %1071
  %1080 = bitcast float %1079 to i32
  %1081 = sitofp i32 %1080 to float
  %1082 = fptosi float %1081 to i32
  %1083 = bitcast i32 %1082 to float
  %1084 = fadd fast float %1078, %1083
  %1085 = bitcast float %1084 to i32
  %1086 = sub nsw i32 2129859010, %1085
  %1087 = bitcast i32 %1086 to float
  %1088 = fmul fast float %1087, %1078
  %1089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.f32 %1089, 2
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 0
  %1093 = fmul fast float %1088, %1092
  %1094 = fadd fast float %1093, 1.000000e+00
  %1095 = bitcast float %1094 to i32
  %1096 = sub nsw i32 2129859010, %1095
  %1097 = bitcast i32 %1096 to float
  %1098 = fmul fast float %1088, %1090
  %1099 = fmul fast float %1098, %1097
  br label %1100

; <label>:1100                                    ; preds = %1032, %943
  %1101 = phi float [ %1099, %1032 ], [ %1030, %943 ]
  %1102 = fmul fast float %1101, %862
  %1103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1104 = extractvalue %dx.types.CBufRet.f32 %1103, 0
  %1105 = extractvalue %dx.types.CBufRet.f32 %1103, 1
  %1106 = extractvalue %dx.types.CBufRet.f32 %1103, 2
  %1107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1108 = extractvalue %dx.types.CBufRet.f32 %1107, 1
  %1109 = fmul fast float %1104, %1102
  %1110 = fmul fast float %1105, %1102
  %1111 = fmul fast float %1106, %1102
  %1112 = fadd fast float %1109, %920
  %1113 = fadd fast float %1110, %921
  %1114 = fadd fast float %1111, %922
  %1115 = fmul fast float %1108, %1102
  %1116 = fadd fast float %1115, %919
  %1117 = fadd fast float %1102, %918
  br label %1118

; <label>:1118                                    ; preds = %1100, %917
  %1119 = phi float [ %1117, %1100 ], [ %918, %917 ]
  %1120 = phi float [ %1116, %1100 ], [ %919, %917 ]
  %1121 = phi float [ %1112, %1100 ], [ %920, %917 ]
  %1122 = phi float [ %1113, %1100 ], [ %921, %917 ]
  %1123 = phi float [ %1114, %1100 ], [ %922, %917 ]
  br i1 %596, label %1266, label %1124, !dx.controlflow.hints !64

; <label>:1124                                    ; preds = %1118
  %1125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.f32 %1125, 0
  %1127 = extractvalue %dx.types.CBufRet.f32 %1125, 1
  %1128 = extractvalue %dx.types.CBufRet.f32 %1125, 2
  %1129 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.i32 %1129, 0
  %1131 = icmp ne i32 %1130, 0
  %1132 = zext i1 %1131 to i32
  %1133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.i32 %1133, 0
  %1135 = icmp eq i32 %1134, 0
  br i1 %1135, label %1169, label %1136

; <label>:1136                                    ; preds = %1124
  br label %1137

; <label>:1137                                    ; preds = %1164, %1136
  %1138 = phi i32 [ %1165, %1164 ], [ 0, %1136 ]
  %1139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1138, i32 0)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.ResRet.f32 %1139, 2
  %1143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1138, i32 16)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.f32 %1143, 0
  %1145 = extractvalue %dx.types.ResRet.f32 %1143, 1
  %1146 = extractvalue %dx.types.ResRet.f32 %1143, 2
  %1147 = fsub fast float %1140, %1144
  %1148 = fsub fast float %1141, %1145
  %1149 = fsub fast float %1142, %1146
  %1150 = fadd fast float %1144, %1140
  %1151 = fadd fast float %1145, %1141
  %1152 = fadd fast float %1146, %1142
  %1153 = fcmp fast olt float %473, %1147
  %1154 = fcmp fast olt float %474, %1148
  %1155 = fcmp fast olt float %475, %1149
  %1156 = or i1 %1153, %1154
  %1157 = or i1 %1155, %1156
  %1158 = fcmp fast ogt float %473, %1150
  %1159 = fcmp fast ogt float %474, %1151
  %1160 = fcmp fast ogt float %475, %1152
  %1161 = or i1 %1158, %1159
  %1162 = or i1 %1160, %1161
  %1163 = or i1 %1157, %1162
  br i1 %1163, label %1164, label %1167, !dx.controlflow.hints !65

; <label>:1164                                    ; preds = %1137
  %1165 = add nuw i32 %1138, 1
  %1166 = icmp ult i32 %1165, %1134
  br i1 %1166, label %1137, label %1167

; <label>:1167                                    ; preds = %1164, %1137
  %1168 = phi i32 [ 255, %1164 ], [ %1138, %1137 ]
  br label %1169

; <label>:1169                                    ; preds = %1167, %1124
  %1170 = phi i32 [ 255, %1124 ], [ %1168, %1167 ]
  %1171 = icmp eq i32 %1170, 255
  br i1 %1171, label %1181, label %1172, !dx.controlflow.hints !66

; <label>:1172                                    ; preds = %1169
  %1173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1170, i32 32)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.f32 %1173, 0
  %1175 = extractvalue %dx.types.ResRet.f32 %1173, 1
  %1176 = extractvalue %dx.types.ResRet.f32 %1173, 2
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1170, i32 156)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = icmp ne i32 %1178, 0
  %1180 = zext i1 %1179 to i32
  br label %1181

; <label>:1181                                    ; preds = %1172, %1169
  %1182 = phi float [ %1174, %1172 ], [ %1126, %1169 ]
  %1183 = phi float [ %1175, %1172 ], [ %1127, %1169 ]
  %1184 = phi float [ %1176, %1172 ], [ %1128, %1169 ]
  %1185 = phi i32 [ %1180, %1172 ], [ %1132, %1169 ]
  %1186 = icmp eq i32 %1185, 0
  br i1 %1186, label %1187, label %1256, !dx.controlflow.hints !67

; <label>:1187                                    ; preds = %1181
  %1188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1189 = extractvalue %dx.types.CBufRet.f32 %1188, 3
  %1190 = extractvalue %dx.types.CBufRet.f32 %506, 0
  %1191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1192 = extractvalue %dx.types.CBufRet.f32 %1191, 2
  %1193 = extractvalue %dx.types.CBufRet.f32 %1191, 3
  br i1 %1171, label %1204, label %1194, !dx.controlflow.hints !68

; <label>:1194                                    ; preds = %1187
  %1195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1170, i32 60)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1170, i32 64)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.f32 %1197, 0
  %1199 = extractvalue %dx.types.ResRet.f32 %1197, 1
  %1200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1170, i32 72)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1170, i32 96)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  br label %1204

; <label>:1204                                    ; preds = %1194, %1187
  %1205 = phi float [ %1196, %1194 ], [ %509, %1187 ]
  %1206 = phi float [ %1201, %1194 ], [ %507, %1187 ]
  %1207 = phi float [ %1203, %1194 ], [ %1190, %1187 ]
  %1208 = phi float [ %1198, %1194 ], [ %1192, %1187 ]
  %1209 = phi float [ %1199, %1194 ], [ %1193, %1187 ]
  %1210 = call float @dx.op.binary.f32(i32 35, float %590, float 0.000000e+00)  ; FMax(a,b)
  %1211 = call float @dx.op.binary.f32(i32 36, float %1210, float 1.000000e+00)  ; FMin(a,b)
  %1212 = call float @dx.op.unary.f32(i32 24, float %1211)  ; Sqrt(value)
  %1213 = call float @dx.op.binary.f32(i32 35, float %593, float 0x3F847AE140000000)  ; FMax(a,b)
  %1214 = fsub fast float %591, %475
  %1215 = fsub fast float %475, %592
  %1216 = call float @dx.op.binary.f32(i32 36, float %1215, float %1214)  ; FMin(a,b)
  %1217 = fdiv fast float %1216, %1213
  %1218 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1219 = fsub fast float %475, %1206
  %1220 = fdiv fast float %1219, %1205
  %1221 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  %1222 = fsub fast float 1.000000e+00, %1221
  %1223 = fmul float %1218, %1222
  %1224 = fmul float %1223, %1223
  %1225 = fmul fast float %1212, %1189
  %1226 = fmul fast float %1225, %1224
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 2
  %1229 = extractvalue %dx.types.CBufRet.f32 %1227, 1
  %1230 = fsub fast float %1226, %1229
  %1231 = fsub fast float %1228, %1229
  %1232 = fdiv fast float %1230, %1231
  %1233 = call float @dx.op.unary.f32(i32 7, float %1232)  ; Saturate(value)
  %1234 = fmul fast float %1233, %1207
  %1235 = fcmp fast ogt float %1209, 0.000000e+00
  br i1 %1235, label %1236, label %1256, !dx.controlflow.hints !69

; <label>:1236                                    ; preds = %1204
  %1237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1238 = extractvalue %dx.types.CBufRet.f32 %1237, 0
  %1239 = extractvalue %dx.types.CBufRet.f32 %1237, 1
  %1240 = extractvalue %dx.types.CBufRet.f32 %1237, 2
  %1241 = fsub fast float %473, %1238
  %1242 = fsub fast float %474, %1239
  %1243 = fsub fast float %475, %1240
  %1244 = fmul fast float %1241, %1241
  %1245 = fmul fast float %1242, %1242
  %1246 = fadd fast float %1244, %1245
  %1247 = fmul fast float %1243, %1243
  %1248 = fadd fast float %1246, %1247
  %1249 = call float @dx.op.unary.f32(i32 24, float %1248)  ; Sqrt(value)
  %1250 = fsub fast float %1249, %1208
  %1251 = fsub fast float %1209, %1208
  %1252 = fdiv fast float %1250, %1251
  %1253 = call float @dx.op.unary.f32(i32 7, float %1252)  ; Saturate(value)
  %1254 = fmul fast float %1253, %1253
  %1255 = fmul fast float %1254, %1234
  br label %1256

; <label>:1256                                    ; preds = %1236, %1204, %1181
  %1257 = phi float [ 0.000000e+00, %1181 ], [ %1255, %1236 ], [ %1234, %1204 ]
  %1258 = fmul fast float %1257, %862
  %1259 = fmul fast float %1258, %1182
  %1260 = fmul fast float %1258, %1183
  %1261 = fmul fast float %1258, %1184
  %1262 = fadd fast float %1259, %1121
  %1263 = fadd fast float %1260, %1122
  %1264 = fadd fast float %1261, %1123
  %1265 = fadd fast float %1258, %1119
  br label %1266

; <label>:1266                                    ; preds = %1256, %1118
  %1267 = phi float [ %1265, %1256 ], [ %1119, %1118 ]
  %1268 = phi float [ %1262, %1256 ], [ %1121, %1118 ]
  %1269 = phi float [ %1263, %1256 ], [ %1122, %1118 ]
  %1270 = phi float [ %1264, %1256 ], [ %1123, %1118 ]
  %1271 = icmp eq i32 %849, 0
  br i1 %1271, label %1315, label %1272, !dx.controlflow.hints !70

; <label>:1272                                    ; preds = %1266
  %1273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1274 = extractvalue %dx.types.CBufRet.f32 %1273, 1
  %1275 = fsub fast float %862, %1274
  %1276 = extractvalue %dx.types.CBufRet.f32 %1273, 3
  %1277 = fmul fast float %1275, %1276
  %1278 = call float @dx.op.unary.f32(i32 7, float %1277)  ; Saturate(value)
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 3
  %1281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1281, 2
  %1283 = fsub fast float %1282, %850
  %1284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1285 = extractvalue %dx.types.CBufRet.f32 %1284, 3
  %1286 = fmul fast float %1283, %1285
  %1287 = call float @dx.op.unary.f32(i32 7, float %1286)  ; Saturate(value)
  %1288 = fmul fast float %1287, %1280
  %1289 = extractvalue %dx.types.CBufRet.f32 %1284, 0
  %1290 = fsub fast float %476, %1289
  %1291 = extractvalue %dx.types.CBufRet.f32 %1284, 1
  %1292 = fmul fast float %1290, %1291
  %1293 = call float @dx.op.unary.f32(i32 7, float %1292)  ; Saturate(value)
  %1294 = fsub fast float 1.000000e+00, %1278
  %1295 = fmul fast float %1293, %1294
  %1296 = fadd fast float %1295, %1278
  %1297 = extractvalue %dx.types.CBufRet.f32 %1273, 0
  %1298 = fsub fast float %1288, %1297
  %1299 = fmul fast float %1298, %1296
  %1300 = fadd fast float %1299, %1297
  %1301 = extractvalue %dx.types.CBufRet.f32 %1279, 0
  %1302 = extractvalue %dx.types.CBufRet.f32 %1279, 1
  %1303 = extractvalue %dx.types.CBufRet.f32 %1279, 2
  %1304 = fmul fast float %1300, %862
  %1305 = extractvalue %dx.types.CBufRet.f32 %1284, 2
  %1306 = fmul fast float %1304, %1301
  %1307 = fmul fast float %1304, %1302
  %1308 = fmul fast float %1304, %1303
  %1309 = fadd fast float %1306, %1268
  %1310 = fadd fast float %1307, %1269
  %1311 = fadd fast float %1308, %1270
  %1312 = fmul fast float %1304, %1305
  %1313 = fadd fast float %1312, %1120
  %1314 = fadd fast float %1304, %1267
  br label %1315

; <label>:1315                                    ; preds = %1272, %1266
  %1316 = phi float [ %1314, %1272 ], [ %1267, %1266 ]
  %1317 = phi float [ %1313, %1272 ], [ %1120, %1266 ]
  %1318 = phi float [ %1309, %1272 ], [ %1268, %1266 ]
  %1319 = phi float [ %1310, %1272 ], [ %1269, %1266 ]
  %1320 = phi float [ %1311, %1272 ], [ %1270, %1266 ]
  %1321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1322 = extractvalue %dx.types.CBufRet.f32 %1321, 1
  %1323 = fcmp fast ogt float %1316, %1322
  br i1 %1323, label %1324, label %1330, !dx.controlflow.hints !71

; <label>:1324                                    ; preds = %1315
  %1325 = fdiv fast float 1.000000e+00, %1316
  %1326 = fmul fast float %1325, %1318
  %1327 = fmul fast float %1325, %1319
  %1328 = fmul fast float %1325, %1320
  %1329 = fmul fast float %1325, %1317
  br label %1330

; <label>:1330                                    ; preds = %1324, %1315
  %1331 = phi float [ %1329, %1324 ], [ %1317, %1315 ]
  %1332 = phi float [ %1326, %1324 ], [ %1318, %1315 ]
  %1333 = phi float [ %1327, %1324 ], [ %1319, %1315 ]
  %1334 = phi float [ %1328, %1324 ], [ %1320, %1315 ]
  br i1 %1323, label %1337, label %1335, !dx.controlflow.hints !72

; <label>:1335                                    ; preds = %1330
  %1336 = fadd fast float %862, %476
  br label %2089

; <label>:1337                                    ; preds = %1330
  %1338 = fmul fast float %1316, 0xBFF7154760000000
  %1339 = call float @dx.op.unary.f32(i32 21, float %1338)  ; Exp(value)
  %1340 = call float @dx.op.unary.f32(i32 7, float %1339)  ; Saturate(value)
  %1341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1342 = extractvalue %dx.types.CBufRet.f32 %1341, 3
  %1343 = fcmp fast une float %1342, 0.000000e+00
  %1344 = extractvalue %dx.types.CBufRet.f32 %1341, 0
  %1345 = extractvalue %dx.types.CBufRet.f32 %1341, 1
  %1346 = extractvalue %dx.types.CBufRet.f32 %1341, 2
  br i1 %1343, label %1347, label %1369, !dx.controlflow.hints !73

; <label>:1347                                    ; preds = %1337
  %1348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1349 = extractvalue %dx.types.CBufRet.f32 %1348, 0
  %1350 = extractvalue %dx.types.CBufRet.f32 %1348, 1
  %1351 = extractvalue %dx.types.CBufRet.f32 %1348, 2
  %1352 = call float @dx.op.dot3.f32(i32 55, float %1344, float %1345, float %1346, float %284, float %285, float %286)  ; Dot3(ax,ay,az,bx,by,bz)
  %1353 = fcmp fast ogt float %1331, 0.000000e+00
  %1354 = select i1 %1353, float 1.000000e+00, float -1.000000e+00
  %1355 = fmul fast float %1354, 5.000000e-01
  %1356 = fmul fast float %1355, %1352
  %1357 = fmul fast float %1354, %1331
  %1358 = fadd fast float %1356, 4.921875e-01
  %1359 = fadd fast float %1357, -3.125000e-02
  %1360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %20, float %1358, float 0x3FB25F3060000000, float %1359, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1361 = extractvalue %dx.types.ResRet.f32 %1360, 0
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 0
  %1364 = fmul fast float %1361, 0x400921FB60000000
  %1365 = fmul fast float %1364, %1363
  %1366 = fmul fast float %1365, %1349
  %1367 = fmul fast float %1365, %1350
  %1368 = fmul fast float %1365, %1351
  br label %1369

; <label>:1369                                    ; preds = %1347, %1337
  %1370 = phi float [ %1366, %1347 ], [ 0.000000e+00, %1337 ]
  %1371 = phi float [ %1367, %1347 ], [ 0.000000e+00, %1337 ]
  %1372 = phi float [ %1368, %1347 ], [ 0.000000e+00, %1337 ]
  %1373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1374 = extractvalue %dx.types.CBufRet.f32 %1373, 0
  %1375 = fmul fast float %1374, %1344
  %1376 = fmul fast float %1374, %1345
  %1377 = fmul fast float %1374, %1346
  %1378 = fadd fast float %1375, %473
  %1379 = fadd fast float %1376, %474
  %1380 = fadd fast float %1377, %475
  %1381 = fsub fast float %1378, %489
  %1382 = fsub fast float %1379, %490
  %1383 = fmul fast float %1381, %494
  %1384 = fmul fast float %1382, %495
  %1385 = call float @dx.op.binary.f32(i32 36, float %1383, float %1384)  ; FMin(a,b)
  %1386 = fcmp fast olt float %1385, 0.000000e+00
  %1387 = call float @dx.op.binary.f32(i32 35, float %1383, float %1384)  ; FMax(a,b)
  %1388 = fcmp fast ogt float %1387, 1.000000e+00
  %1389 = or i1 %1386, %1388
  %1390 = fcmp fast olt float %1380, %503
  %1391 = or i1 %1389, %1390
  %1392 = fcmp fast ogt float %1380, %510
  %1393 = or i1 %1391, %1392
  br i1 %1393, label %1408, label %1394, !dx.controlflow.hints !48

; <label>:1394                                    ; preds = %1369
  %1395 = fsub fast float 1.000000e+00, %1384
  %1396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %20, float %1383, float %1395, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1397 = extractvalue %dx.types.ResRet.f32 %1396, 0
  %1398 = extractvalue %dx.types.ResRet.f32 %1396, 1
  %1399 = extractvalue %dx.types.ResRet.f32 %1396, 2
  %1400 = extractvalue %dx.types.ResRet.f32 %1396, 3
  %1401 = fcmp fast oeq float %1397, 0.000000e+00
  %1402 = fcmp ule float %1380, %1399
  %1403 = fcmp uge float %1380, %1398
  %1404 = or i1 %1403, %1402
  %1405 = or i1 %1401, %1404
  %1406 = zext i1 %1405 to i32
  %1407 = xor i32 %1406, 1
  br label %1408

; <label>:1408                                    ; preds = %1394, %1369
  %1409 = phi float [ %1397, %1394 ], [ %458, %1369 ]
  %1410 = phi float [ %1398, %1394 ], [ %459, %1369 ]
  %1411 = phi float [ %1399, %1394 ], [ %460, %1369 ]
  %1412 = phi float [ %1400, %1394 ], [ %461, %1369 ]
  %1413 = phi i32 [ %1407, %1394 ], [ 0, %1369 ]
  %1414 = icmp eq i32 %1413, 0
  br i1 %616, label %1464, label %1415, !dx.controlflow.hints !53

; <label>:1415                                    ; preds = %1408
  %1416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.f32 %1416, 0
  %1418 = extractvalue %dx.types.CBufRet.f32 %1416, 1
  %1419 = extractvalue %dx.types.CBufRet.f32 %1416, 2
  %1420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1421 = extractvalue %dx.types.CBufRet.f32 %1420, 0
  %1422 = extractvalue %dx.types.CBufRet.f32 %1420, 1
  %1423 = extractvalue %dx.types.CBufRet.f32 %1420, 2
  %1424 = fsub fast float %1378, %1421
  %1425 = fsub fast float %1379, %1422
  %1426 = fsub fast float %1380, %1423
  %1427 = fmul fast float %1424, %1417
  %1428 = fmul fast float %1425, %1418
  %1429 = fmul fast float %1426, %1419
  %1430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.i32 %1430, 3
  %1432 = icmp eq i32 %1431, 0
  br i1 %1432, label %1436, label %1433, !dx.controlflow.hints !54

; <label>:1433                                    ; preds = %1415
  %1434 = call float @dx.op.unary.f32(i32 22, float %1427)  ; Frc(value)
  %1435 = call float @dx.op.unary.f32(i32 22, float %1428)  ; Frc(value)
  br label %1436

; <label>:1436                                    ; preds = %1433, %1415
  %1437 = phi float [ %1434, %1433 ], [ %1427, %1415 ]
  %1438 = phi float [ %1435, %1433 ], [ %1428, %1415 ]
  %1439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %1437, float %1438, float %1429, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1440 = extractvalue %dx.types.ResRet.f32 %1439, 0
  %1441 = fmul fast float %1440, 2.000000e+00
  %1442 = fadd fast float %1441, -1.000000e+00
  %1443 = extractvalue %dx.types.CBufRet.f32 %1416, 3
  %1444 = fmul fast float %1442, %1443
  %1445 = fcmp fast olt float %1444, 0.000000e+00
  %1446 = fcmp fast oge float %1429, 0.000000e+00
  %1447 = fcmp fast ole float %1429, 1.000000e+00
  br i1 %1432, label %1450, label %1448, !dx.controlflow.hints !55

; <label>:1448                                    ; preds = %1436
  %1449 = and i1 %1446, %1447
  br label %1460

; <label>:1450                                    ; preds = %1436
  %1451 = fcmp fast oge float %1427, 0.000000e+00
  %1452 = fcmp fast oge float %1428, 0.000000e+00
  %1453 = and i1 %1451, %1452
  %1454 = and i1 %1446, %1453
  %1455 = fcmp fast ole float %1427, 1.000000e+00
  %1456 = fcmp fast ole float %1428, 1.000000e+00
  %1457 = and i1 %1455, %1456
  %1458 = and i1 %1447, %1457
  %1459 = and i1 %1454, %1458
  br label %1460

; <label>:1460                                    ; preds = %1450, %1448
  %1461 = phi i1 [ %1449, %1448 ], [ %1459, %1450 ]
  %1462 = and i1 %1445, %1461
  %1463 = zext i1 %1462 to i32
  br label %1464

; <label>:1464                                    ; preds = %1460, %1408
  %1465 = phi i32 [ %1463, %1460 ], [ 0, %1408 ]
  br i1 %675, label %1620, label %1466, !dx.controlflow.hints !56

; <label>:1466                                    ; preds = %1464
  %1467 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1468 = extractvalue %dx.types.CBufRet.i32 %1467, 1
  %1469 = and i32 %1468, 1
  %1470 = icmp eq i32 %1469, 0
  br i1 %1470, label %1471, label %1615, !dx.controlflow.hints !57

; <label>:1471                                    ; preds = %1466
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.f32 %1472, 2
  %1474 = extractvalue %dx.types.CBufRet.f32 %1472, 3
  %1475 = fmul fast float %1473, %1378
  %1476 = fmul fast float %1474, %1379
  %1477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1478 = extractvalue %dx.types.CBufRet.f32 %1477, 0
  %1479 = extractvalue %dx.types.CBufRet.f32 %1477, 1
  %1480 = fadd fast float %1475, %1478
  %1481 = fadd fast float %1476, %1479
  %1482 = call float @dx.op.unary.f32(i32 7, float %1480)  ; Saturate(value)
  %1483 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  %1484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %20, float %1482, float %1483, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1485 = extractvalue %dx.types.ResRet.f32 %1484, 0
  %1486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1487 = extractvalue %dx.types.CBufRet.f32 %1486, 0
  %1488 = fmul fast float %1487, %1485
  %1489 = fsub fast float %1480, %1482
  %1490 = fsub fast float %1481, %1483
  %1491 = extractvalue %dx.types.CBufRet.f32 %1472, 0
  %1492 = extractvalue %dx.types.CBufRet.f32 %1472, 1
  %1493 = fmul fast float %1491, %1489
  %1494 = fmul fast float %1492, %1490
  %1495 = fmul fast float %1493, %1493
  %1496 = fmul fast float %1494, %1494
  %1497 = fadd fast float %1495, %1496
  %1498 = call float @dx.op.unary.f32(i32 24, float %1497)  ; Sqrt(value)
  %1499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1500 = extractvalue %dx.types.CBufRet.f32 %1499, 3
  %1501 = fmul fast float %1500, %1498
  %1502 = call float @dx.op.unary.f32(i32 7, float %1501)  ; Saturate(value)
  %1503 = extractvalue %dx.types.CBufRet.f32 %1499, 2
  %1504 = fsub fast float %1503, %1488
  %1505 = fmul fast float %1504, %1502
  %1506 = extractvalue %dx.types.CBufRet.f32 %1486, 1
  %1507 = fsub fast float %1380, %1488
  %1508 = fsub fast float %1507, %1506
  %1509 = fsub fast float %1508, %1505
  %1510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1511 = extractvalue %dx.types.CBufRet.f32 %1510, 2
  %1512 = fsub fast float %1509, %1511
  %1513 = fcmp fast olt float %1512, 0.000000e+00
  %1514 = extractvalue %dx.types.CBufRet.i32 %1467, 0
  %1515 = icmp eq i32 %1514, 0
  br i1 %1515, label %1566, label %1516

; <label>:1516                                    ; preds = %1471
  br label %1517

; <label>:1517                                    ; preds = %1555, %1516
  %1518 = phi i32 [ %1561, %1555 ], [ 1, %1516 ]
  %1519 = phi i32 [ %1562, %1555 ], [ 0, %1516 ]
  %1520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1521 = extractvalue %dx.types.CBufRet.f32 %1520, 1
  %1522 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1523 = extractvalue %dx.types.CBufRet.i32 %1522, 1
  %1524 = and i32 %1523, 8
  %1525 = icmp eq i32 %1524, 0
  %1526 = fcmp fast ogt float %1521, %1509
  %1527 = or i1 %1526, %1525
  %1528 = add i32 %1519, 171
  %1529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %1528)  ; CBufferLoadLegacy(handle,regIndex)
  %1530 = extractvalue %dx.types.CBufRet.f32 %1529, 0
  %1531 = extractvalue %dx.types.CBufRet.f32 %1529, 1
  %1532 = extractvalue %dx.types.CBufRet.f32 %1529, 2
  br i1 %1527, label %1533, label %1539, !dx.controlflow.hints !58

; <label>:1533                                    ; preds = %1517
  %1534 = fsub fast float %1530, %1378
  %1535 = fsub fast float %1531, %1379
  %1536 = fmul fast float %1534, %1534
  %1537 = fmul fast float %1535, %1535
  %1538 = fadd fast float %1536, %1537
  br label %1555

; <label>:1539                                    ; preds = %1517
  %1540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1541 = extractvalue %dx.types.CBufRet.f32 %1540, 2
  %1542 = extractvalue %dx.types.CBufRet.f32 %1520, 2
  %1543 = fmul fast float %1542, %1541
  %1544 = fsub fast float %1543, %1521
  %1545 = fdiv fast float %1532, %1544
  %1546 = fsub fast float %1378, %1530
  %1547 = fsub fast float %1379, %1531
  %1548 = fsub fast float %1509, %1521
  %1549 = fmul fast float %1545, %1548
  %1550 = fmul fast float %1546, %1546
  %1551 = fmul fast float %1547, %1547
  %1552 = fadd fast float %1550, %1551
  %1553 = fmul fast float %1549, %1549
  %1554 = fadd fast float %1552, %1553
  br label %1555

; <label>:1555                                    ; preds = %1539, %1533
  %1556 = phi float [ %1538, %1533 ], [ %1554, %1539 ]
  %1557 = call float @dx.op.unary.f32(i32 24, float %1556)  ; Sqrt(value)
  %1558 = fsub float %1532, %1557
  %1559 = fcmp fast olt float %1558, 0.000000e+00
  %1560 = zext i1 %1559 to i32
  %1561 = and i32 %1560, %1518
  %1562 = add i32 %1519, 1
  %1563 = extractvalue %dx.types.CBufRet.i32 %1522, 0
  %1564 = icmp ult i32 %1562, %1563
  br i1 %1564, label %1517, label %1565

; <label>:1565                                    ; preds = %1555
  br label %1566

; <label>:1566                                    ; preds = %1565, %1471
  %1567 = phi i32 [ 1, %1471 ], [ %1561, %1565 ]
  br label %1568

; <label>:1568                                    ; preds = %1568, %1566
  %1569 = phi i32 [ %1605, %1568 ], [ %1567, %1566 ]
  %1570 = phi i32 [ %1606, %1568 ], [ 0, %1566 ]
  %1571 = add nuw nsw i32 %1570, 191
  %1572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %1571)  ; CBufferLoadLegacy(handle,regIndex)
  %1573 = extractvalue %dx.types.CBufRet.f32 %1572, 0
  %1574 = extractvalue %dx.types.CBufRet.f32 %1572, 1
  %1575 = extractvalue %dx.types.CBufRet.f32 %1572, 2
  %1576 = add nuw nsw i32 %1570, 195
  %1577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %1576)  ; CBufferLoadLegacy(handle,regIndex)
  %1578 = extractvalue %dx.types.CBufRet.f32 %1577, 0
  %1579 = extractvalue %dx.types.CBufRet.f32 %1577, 1
  %1580 = extractvalue %dx.types.CBufRet.f32 %1577, 2
  %1581 = fsub fast float %1378, %1573
  %1582 = fsub fast float %1379, %1574
  %1583 = fsub fast float %1509, %1575
  %1584 = call float @dx.op.unary.f32(i32 6, float %1581)  ; FAbs(value)
  %1585 = call float @dx.op.unary.f32(i32 6, float %1582)  ; FAbs(value)
  %1586 = call float @dx.op.unary.f32(i32 6, float %1583)  ; FAbs(value)
  %1587 = fsub fast float %1584, %1578
  %1588 = fsub fast float %1585, %1579
  %1589 = fsub fast float %1586, %1580
  %1590 = call float @dx.op.binary.f32(i32 35, float %1587, float 0.000000e+00)  ; FMax(a,b)
  %1591 = call float @dx.op.binary.f32(i32 35, float %1588, float 0.000000e+00)  ; FMax(a,b)
  %1592 = call float @dx.op.binary.f32(i32 35, float %1589, float 0.000000e+00)  ; FMax(a,b)
  %1593 = fmul fast float %1590, %1590
  %1594 = fmul fast float %1591, %1591
  %1595 = fadd fast float %1594, %1593
  %1596 = fmul fast float %1592, %1592
  %1597 = fadd fast float %1595, %1596
  %1598 = call float @dx.op.unary.f32(i32 24, float %1597)  ; Sqrt(value)
  %1599 = call float @dx.op.binary.f32(i32 35, float %1588, float %1589)  ; FMax(a,b)
  %1600 = call float @dx.op.binary.f32(i32 35, float %1587, float %1599)  ; FMax(a,b)
  %1601 = call float @dx.op.binary.f32(i32 36, float %1600, float 0.000000e+00)  ; FMin(a,b)
  %1602 = fadd fast float %1601, %1598
  %1603 = fcmp ogt float %1602, -0.000000e+00
  %1604 = zext i1 %1603 to i32
  %1605 = and i32 %1604, %1569
  %1606 = add nuw nsw i32 %1570, 1
  %1607 = icmp eq i32 %1606, 4
  br i1 %1607, label %1608, label %1568

; <label>:1608                                    ; preds = %1568
  %1609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1610 = extractvalue %dx.types.CBufRet.i32 %1609, 1
  %1611 = lshr i32 %1610, 1
  %1612 = xor i32 %1611, %1605
  %1613 = zext i1 %1513 to i32
  %1614 = and i32 %1612, %1613
  br label %1615

; <label>:1615                                    ; preds = %1608, %1466
  %1616 = phi i32 [ %456, %1466 ], [ %1614, %1608 ]
  %1617 = phi float [ %1380, %1466 ], [ %1509, %1608 ]
  %1618 = icmp ne i32 %1616, 0
  %1619 = zext i1 %1618 to i32
  br label %1620

; <label>:1620                                    ; preds = %1615, %1464
  %1621 = phi i32 [ %1616, %1615 ], [ %456, %1464 ]
  %1622 = phi float [ %1617, %1615 ], [ %457, %1464 ]
  %1623 = phi i32 [ %1619, %1615 ], [ 0, %1464 ]
  br i1 %601, label %1673, label %1624, !dx.controlflow.hints !59

; <label>:1624                                    ; preds = %1620
  %1625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1626 = extractvalue %dx.types.CBufRet.f32 %1625, 0
  %1627 = fsub fast float -0.000000e+00, %1378
  %1628 = fsub fast float -0.000000e+00, %1379
  %1629 = fsub fast float %1626, %1380
  %1630 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1627, float %1628, float %1629)  ; Dot3(ax,ay,az,bx,by,bz)
  %1631 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1344, float %1345, float %1346)  ; Dot3(ax,ay,az,bx,by,bz)
  %1632 = fdiv fast float 1.000000e+00, %1631
  %1633 = fmul fast float %1632, %1630
  %1634 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1633)  ; FMax(a,b)
  %1635 = fcmp fast olt float %1346, 0.000000e+00
  %1636 = call float @dx.op.binary.f32(i32 36, float %1374, float %1634)  ; FMin(a,b)
  br i1 %1635, label %1638, label %1637, !dx.controlflow.hints !60

; <label>:1637                                    ; preds = %1624
  br label %1638

; <label>:1638                                    ; preds = %1637, %1624
  %1639 = phi float [ 0.000000e+00, %1637 ], [ %1636, %1624 ]
  %1640 = phi float [ %1636, %1637 ], [ %1374, %1624 ]
  %1641 = phi float [ %1636, %1637 ], [ 0.000000e+00, %1624 ]
  %1642 = phi float [ %1374, %1637 ], [ %1636, %1624 ]
  %1643 = fsub fast float %1640, %1639
  %1644 = extractvalue %dx.types.CBufRet.f32 %1625, 1
  %1645 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1644)  ; FMin(a,b)
  %1646 = fsub fast float %1380, %1626
  %1647 = fmul fast float %1645, 0x3FF7154760000000
  %1648 = fmul fast float %1647, %1646
  %1649 = call float @dx.op.unary.f32(i32 21, float %1648)  ; Exp(value)
  %1650 = fmul fast float %1346, 0x3FF7154760000000
  %1651 = fmul fast float %1650, %1642
  %1652 = fmul fast float %1651, %1645
  %1653 = call float @dx.op.unary.f32(i32 21, float %1652)  ; Exp(value)
  %1654 = fmul fast float %1650, %1641
  %1655 = fmul fast float %1654, %1645
  %1656 = call float @dx.op.unary.f32(i32 21, float %1655)  ; Exp(value)
  %1657 = fsub fast float %1653, %1656
  %1658 = fmul fast float %1657, %1649
  %1659 = fmul fast float %1645, %1346
  %1660 = fdiv fast float %1658, %1659
  %1661 = fadd fast float %1643, %1660
  %1662 = call float @dx.op.unary.f32(i32 6, float %1346)  ; FAbs(value)
  %1663 = fcmp fast olt float %1662, 0x3F0FFB4800000000
  %1664 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1646)  ; FMax(a,b)
  %1665 = fmul fast float %1664, 0x3FF7154760000000
  %1666 = fmul fast float %1665, %1644
  %1667 = call float @dx.op.unary.f32(i32 21, float %1666)  ; Exp(value)
  %1668 = fmul fast float %1667, %1374
  %1669 = select i1 %1663, float %1668, float %1661
  %1670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1671 = extractvalue %dx.types.CBufRet.f32 %1670, 1
  %1672 = fmul fast float %1669, %1671
  br label %1673

; <label>:1673                                    ; preds = %1638, %1620
  %1674 = phi float [ %1672, %1638 ], [ 0.000000e+00, %1620 ]
  %1675 = icmp eq i32 %1465, 0
  br i1 %1675, label %1856, label %1676, !dx.controlflow.hints !61

; <label>:1676                                    ; preds = %1673
  %1677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1678 = extractvalue %dx.types.CBufRet.f32 %1677, 3
  %1679 = fmul fast float %1678, %1374
  %1680 = fcmp fast oeq float %1679, 0.000000e+00
  br i1 %1680, label %1695, label %1681, !dx.controlflow.hints !62

; <label>:1681                                    ; preds = %1676
  %1682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1683 = extractvalue %dx.types.CBufRet.f32 %1682, 3
  %1684 = fmul fast float %1683, %1679
  %1685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1686 = extractvalue %dx.types.CBufRet.f32 %1685, 0
  %1687 = extractvalue %dx.types.CBufRet.f32 %1685, 1
  %1688 = extractvalue %dx.types.CBufRet.f32 %1685, 2
  %1689 = fmul fast float %1686, %1684
  %1690 = fmul fast float %1687, %1684
  %1691 = fmul fast float %1688, %1684
  %1692 = call float @dx.op.unary.f32(i32 23, float %1689)  ; Log(value)
  %1693 = call float @dx.op.unary.f32(i32 23, float %1690)  ; Log(value)
  %1694 = call float @dx.op.unary.f32(i32 23, float %1691)  ; Log(value)
  br label %1695

; <label>:1695                                    ; preds = %1681, %1676
  %1696 = phi float [ %1692, %1681 ], [ 0.000000e+00, %1676 ]
  %1697 = phi float [ %1693, %1681 ], [ 0.000000e+00, %1676 ]
  %1698 = phi float [ %1694, %1681 ], [ 0.000000e+00, %1676 ]
  %1699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1700 = extractvalue %dx.types.CBufRet.f32 %1699, 0
  %1701 = extractvalue %dx.types.CBufRet.f32 %1699, 1
  %1702 = extractvalue %dx.types.CBufRet.f32 %1699, 2
  %1703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1704 = extractvalue %dx.types.CBufRet.f32 %1703, 0
  %1705 = extractvalue %dx.types.CBufRet.f32 %1703, 1
  %1706 = extractvalue %dx.types.CBufRet.f32 %1703, 2
  %1707 = fsub fast float %1378, %1704
  %1708 = fsub fast float %1379, %1705
  %1709 = fsub fast float %1380, %1706
  %1710 = fmul fast float %1707, %1700
  %1711 = fmul fast float %1708, %1701
  %1712 = fmul fast float %1709, %1702
  %1713 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1714 = extractvalue %dx.types.CBufRet.i32 %1713, 0
  %1715 = extractvalue %dx.types.CBufRet.i32 %1713, 1
  %1716 = uitofp i32 %1714 to float
  %1717 = uitofp i32 %1715 to float
  %1718 = fmul fast float %1710, %1716
  %1719 = fmul fast float %1711, %1717
  %1720 = fadd fast float %1718, 5.000000e-01
  %1721 = fadd fast float %1719, 5.000000e-01
  %1722 = call float @dx.op.unary.f32(i32 22, float %1720)  ; Frc(value)
  %1723 = call float @dx.op.unary.f32(i32 22, float %1721)  ; Frc(value)
  %1724 = call float @dx.op.unary.f32(i32 27, float %1720)  ; Round_ni(value)
  %1725 = call float @dx.op.unary.f32(i32 27, float %1721)  ; Round_ni(value)
  %1726 = fadd fast float %1724, 1.000000e+00
  %1727 = fadd fast float %1725, 1.000000e+00
  %1728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1729 = extractvalue %dx.types.CBufRet.f32 %1728, 0
  %1730 = extractvalue %dx.types.CBufRet.f32 %1728, 1
  %1731 = fmul fast float %1729, %1726
  %1732 = fmul fast float %1730, %1727
  %1733 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %19, float %1731, float %1732, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1734 = extractvalue %dx.types.ResRet.f32 %1733, 0
  %1735 = extractvalue %dx.types.ResRet.f32 %1733, 1
  %1736 = extractvalue %dx.types.ResRet.f32 %1733, 2
  %1737 = extractvalue %dx.types.ResRet.f32 %1733, 3
  %1738 = extractvalue %dx.types.CBufRet.i32 %1713, 2
  %1739 = extractvalue %dx.types.CBufRet.f32 %1728, 2
  %1740 = uitofp i32 %1738 to float
  %1741 = fadd fast float %1740, -1.000000e+00
  %1742 = fmul fast float %1741, %1734
  %1743 = fmul fast float %1741, %1735
  %1744 = fmul fast float %1741, %1736
  %1745 = fmul fast float %1741, %1737
  %1746 = fadd fast float %1742, 5.000000e-01
  %1747 = fadd fast float %1743, 5.000000e-01
  %1748 = fadd fast float %1744, 5.000000e-01
  %1749 = fadd fast float %1745, 5.000000e-01
  %1750 = fptoui float %1746 to i32
  %1751 = fptoui float %1747 to i32
  %1752 = fptoui float %1748 to i32
  %1753 = fptoui float %1749 to i32
  %1754 = uitofp i32 %1750 to float
  %1755 = uitofp i32 %1751 to float
  %1756 = uitofp i32 %1752 to float
  %1757 = uitofp i32 %1753 to float
  %1758 = fadd fast float %1754, 5.000000e-01
  %1759 = fadd fast float %1755, 5.000000e-01
  %1760 = fadd fast float %1756, 5.000000e-01
  %1761 = fadd fast float %1757, 5.000000e-01
  %1762 = fmul fast float %1758, %1739
  %1763 = fmul fast float %1759, %1739
  %1764 = fmul fast float %1760, %1739
  %1765 = fmul fast float %1761, %1739
  %1766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1762, float %1712, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1767 = extractvalue %dx.types.ResRet.f32 %1766, 0
  %1768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1763, float %1712, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1769 = extractvalue %dx.types.ResRet.f32 %1768, 0
  %1770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1764, float %1712, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %1765, float %1712, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1773 = extractvalue %dx.types.ResRet.f32 %1772, 0
  %1774 = fsub fast float %1771, %1773
  %1775 = fmul fast float %1774, %1722
  %1776 = fadd fast float %1775, %1773
  %1777 = fsub fast float %1769, %1767
  %1778 = fmul fast float %1777, %1722
  %1779 = fadd fast float %1778, %1767
  %1780 = fsub fast float %1779, %1776
  %1781 = fmul fast float %1780, %1723
  %1782 = fadd fast float %1781, %1776
  %1783 = fcmp fast ogt float %1782, 0.000000e+00
  br i1 %1783, label %1784, label %1852, !dx.controlflow.hints !63

; <label>:1784                                    ; preds = %1695
  %1785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1785, 0
  %1787 = extractvalue %dx.types.CBufRet.f32 %1785, 1
  %1788 = extractvalue %dx.types.CBufRet.f32 %1785, 2
  %1789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1790 = extractvalue %dx.types.CBufRet.f32 %1789, 0
  %1791 = extractvalue %dx.types.CBufRet.f32 %1789, 1
  %1792 = extractvalue %dx.types.CBufRet.f32 %1789, 2
  %1793 = fmul fast float %1708, %1700
  %1794 = fmul fast float %1709, %1700
  %1795 = fadd fast float %1710, %1790
  %1796 = fadd fast float %1793, %1791
  %1797 = fadd fast float %1794, %1792
  %1798 = fmul fast float %1795, %1786
  %1799 = fmul fast float %1796, %1786
  %1800 = fmul fast float %1797, %1786
  %1801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1798, float %1799, float %1800, float undef, i32 0, i32 0, i32 0, float %1696)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1802 = extractvalue %dx.types.ResRet.f32 %1801, 0
  %1803 = fmul fast float %1795, %1787
  %1804 = fmul fast float %1796, %1787
  %1805 = fmul fast float %1797, %1787
  %1806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1803, float %1804, float %1805, float undef, i32 0, i32 0, i32 0, float %1697)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1807 = extractvalue %dx.types.ResRet.f32 %1806, 1
  %1808 = fmul fast float %1795, %1788
  %1809 = fmul fast float %1796, %1788
  %1810 = fmul fast float %1797, %1788
  %1811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1808, float %1809, float %1810, float undef, i32 0, i32 0, i32 0, float %1698)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1812 = extractvalue %dx.types.ResRet.f32 %1811, 2
  %1813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.f32 %1813, 1
  %1815 = fmul fast float %1807, %1802
  %1816 = fmul fast float %1815, %1812
  %1817 = call float @dx.op.unary.f32(i32 23, float %1816)  ; Log(value)
  %1818 = fmul fast float %1817, %1814
  %1819 = call float @dx.op.unary.f32(i32 21, float %1818)  ; Exp(value)
  %1820 = extractvalue %dx.types.CBufRet.f32 %1813, 2
  %1821 = fmul fast float %1782, %1782
  %1822 = fmul fast float %1821, %1819
  %1823 = fmul fast float %1822, %1820
  %1824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1825 = extractvalue %dx.types.CBufRet.f32 %1824, 3
  %1826 = fmul fast float %1825, %1823
  %1827 = bitcast float %1826 to i32
  %1828 = sitofp i32 %1827 to float
  %1829 = fptosi float %1828 to i32
  %1830 = bitcast i32 %1829 to float
  %1831 = fsub fast float 1.000000e+00, %1823
  %1832 = bitcast float %1831 to i32
  %1833 = sitofp i32 %1832 to float
  %1834 = fptosi float %1833 to i32
  %1835 = bitcast i32 %1834 to float
  %1836 = fadd fast float %1830, %1835
  %1837 = bitcast float %1836 to i32
  %1838 = sub nsw i32 2129859010, %1837
  %1839 = bitcast i32 %1838 to float
  %1840 = fmul fast float %1839, %1830
  %1841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1842 = extractvalue %dx.types.CBufRet.f32 %1841, 2
  %1843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1844 = extractvalue %dx.types.CBufRet.f32 %1843, 0
  %1845 = fmul fast float %1840, %1844
  %1846 = fadd fast float %1845, 1.000000e+00
  %1847 = bitcast float %1846 to i32
  %1848 = sub nsw i32 2129859010, %1847
  %1849 = bitcast i32 %1848 to float
  %1850 = fmul fast float %1840, %1842
  %1851 = fmul fast float %1850, %1849
  br label %1852

; <label>:1852                                    ; preds = %1784, %1695
  %1853 = phi float [ %1851, %1784 ], [ %1782, %1695 ]
  %1854 = fmul fast float %1853, %1374
  %1855 = fadd fast float %1854, %1674
  br label %1856

; <label>:1856                                    ; preds = %1852, %1673
  %1857 = phi float [ %1855, %1852 ], [ %1674, %1673 ]
  br i1 %1414, label %1983, label %1858, !dx.controlflow.hints !64

; <label>:1858                                    ; preds = %1856
  %1859 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.i32 %1859, 0
  %1861 = icmp ne i32 %1860, 0
  %1862 = zext i1 %1861 to i32
  %1863 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.i32 %1863, 0
  %1865 = icmp eq i32 %1864, 0
  br i1 %1865, label %1899, label %1866

; <label>:1866                                    ; preds = %1858
  br label %1867

; <label>:1867                                    ; preds = %1894, %1866
  %1868 = phi i32 [ %1895, %1894 ], [ 0, %1866 ]
  %1869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1868, i32 0)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.f32 %1869, 0
  %1871 = extractvalue %dx.types.ResRet.f32 %1869, 1
  %1872 = extractvalue %dx.types.ResRet.f32 %1869, 2
  %1873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1868, i32 16)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.f32 %1873, 0
  %1875 = extractvalue %dx.types.ResRet.f32 %1873, 1
  %1876 = extractvalue %dx.types.ResRet.f32 %1873, 2
  %1877 = fsub fast float %1870, %1874
  %1878 = fsub fast float %1871, %1875
  %1879 = fsub fast float %1872, %1876
  %1880 = fadd fast float %1874, %1870
  %1881 = fadd fast float %1875, %1871
  %1882 = fadd fast float %1876, %1872
  %1883 = fcmp fast olt float %1378, %1877
  %1884 = fcmp fast olt float %1379, %1878
  %1885 = fcmp fast olt float %1380, %1879
  %1886 = or i1 %1883, %1884
  %1887 = or i1 %1885, %1886
  %1888 = fcmp fast ogt float %1378, %1880
  %1889 = fcmp fast ogt float %1379, %1881
  %1890 = fcmp fast ogt float %1380, %1882
  %1891 = or i1 %1888, %1889
  %1892 = or i1 %1890, %1891
  %1893 = or i1 %1887, %1892
  br i1 %1893, label %1894, label %1897, !dx.controlflow.hints !65

; <label>:1894                                    ; preds = %1867
  %1895 = add nuw i32 %1868, 1
  %1896 = icmp ult i32 %1895, %1864
  br i1 %1896, label %1867, label %1897

; <label>:1897                                    ; preds = %1894, %1867
  %1898 = phi i32 [ 255, %1894 ], [ %1868, %1867 ]
  br label %1899

; <label>:1899                                    ; preds = %1897, %1858
  %1900 = phi i32 [ 255, %1858 ], [ %1898, %1897 ]
  %1901 = icmp eq i32 %1900, 255
  br i1 %1901, label %1907, label %1902, !dx.controlflow.hints !66

; <label>:1902                                    ; preds = %1899
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1900, i32 156)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = icmp ne i32 %1904, 0
  %1906 = zext i1 %1905 to i32
  br label %1907

; <label>:1907                                    ; preds = %1902, %1899
  %1908 = phi i32 [ %1906, %1902 ], [ %1862, %1899 ]
  %1909 = icmp eq i32 %1908, 0
  br i1 %1909, label %1910, label %1979, !dx.controlflow.hints !67

; <label>:1910                                    ; preds = %1907
  %1911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.f32 %1911, 3
  %1913 = extractvalue %dx.types.CBufRet.f32 %506, 0
  %1914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1915 = extractvalue %dx.types.CBufRet.f32 %1914, 2
  %1916 = extractvalue %dx.types.CBufRet.f32 %1914, 3
  br i1 %1901, label %1927, label %1917, !dx.controlflow.hints !68

; <label>:1917                                    ; preds = %1910
  %1918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1900, i32 60)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.f32 %1918, 0
  %1920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1900, i32 64)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.f32 %1920, 0
  %1922 = extractvalue %dx.types.ResRet.f32 %1920, 1
  %1923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1900, i32 72)  ; BufferLoad(srv,index,wot)
  %1924 = extractvalue %dx.types.ResRet.f32 %1923, 0
  %1925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1900, i32 96)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.f32 %1925, 0
  br label %1927

; <label>:1927                                    ; preds = %1917, %1910
  %1928 = phi float [ %1919, %1917 ], [ %509, %1910 ]
  %1929 = phi float [ %1924, %1917 ], [ %507, %1910 ]
  %1930 = phi float [ %1926, %1917 ], [ %1913, %1910 ]
  %1931 = phi float [ %1921, %1917 ], [ %1915, %1910 ]
  %1932 = phi float [ %1922, %1917 ], [ %1916, %1910 ]
  %1933 = call float @dx.op.binary.f32(i32 35, float %1409, float 0.000000e+00)  ; FMax(a,b)
  %1934 = call float @dx.op.binary.f32(i32 36, float %1933, float 1.000000e+00)  ; FMin(a,b)
  %1935 = call float @dx.op.unary.f32(i32 24, float %1934)  ; Sqrt(value)
  %1936 = call float @dx.op.binary.f32(i32 35, float %1412, float 0x3F847AE140000000)  ; FMax(a,b)
  %1937 = fsub fast float %1410, %1380
  %1938 = fsub fast float %1380, %1411
  %1939 = call float @dx.op.binary.f32(i32 36, float %1938, float %1937)  ; FMin(a,b)
  %1940 = fdiv fast float %1939, %1936
  %1941 = call float @dx.op.unary.f32(i32 7, float %1940)  ; Saturate(value)
  %1942 = fsub fast float %1380, %1929
  %1943 = fdiv fast float %1942, %1928
  %1944 = call float @dx.op.unary.f32(i32 7, float %1943)  ; Saturate(value)
  %1945 = fsub fast float 1.000000e+00, %1944
  %1946 = fmul float %1941, %1945
  %1947 = fmul float %1946, %1946
  %1948 = fmul fast float %1935, %1912
  %1949 = fmul fast float %1948, %1947
  %1950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1951 = extractvalue %dx.types.CBufRet.f32 %1950, 2
  %1952 = extractvalue %dx.types.CBufRet.f32 %1950, 1
  %1953 = fsub fast float %1949, %1952
  %1954 = fsub fast float %1951, %1952
  %1955 = fdiv fast float %1953, %1954
  %1956 = call float @dx.op.unary.f32(i32 7, float %1955)  ; Saturate(value)
  %1957 = fmul fast float %1956, %1930
  %1958 = fcmp fast ogt float %1932, 0.000000e+00
  br i1 %1958, label %1959, label %1979, !dx.controlflow.hints !69

; <label>:1959                                    ; preds = %1927
  %1960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1961 = extractvalue %dx.types.CBufRet.f32 %1960, 0
  %1962 = extractvalue %dx.types.CBufRet.f32 %1960, 1
  %1963 = extractvalue %dx.types.CBufRet.f32 %1960, 2
  %1964 = fsub fast float %1378, %1961
  %1965 = fsub fast float %1379, %1962
  %1966 = fsub fast float %1380, %1963
  %1967 = fmul fast float %1964, %1964
  %1968 = fmul fast float %1965, %1965
  %1969 = fadd fast float %1967, %1968
  %1970 = fmul fast float %1966, %1966
  %1971 = fadd fast float %1969, %1970
  %1972 = call float @dx.op.unary.f32(i32 24, float %1971)  ; Sqrt(value)
  %1973 = fsub fast float %1972, %1931
  %1974 = fsub fast float %1932, %1931
  %1975 = fdiv fast float %1973, %1974
  %1976 = call float @dx.op.unary.f32(i32 7, float %1975)  ; Saturate(value)
  %1977 = fmul fast float %1976, %1976
  %1978 = fmul fast float %1977, %1957
  br label %1979

; <label>:1979                                    ; preds = %1959, %1927, %1907
  %1980 = phi float [ 0.000000e+00, %1907 ], [ %1978, %1959 ], [ %1957, %1927 ]
  %1981 = fmul fast float %1980, %1374
  %1982 = fadd fast float %1981, %1857
  br label %1983

; <label>:1983                                    ; preds = %1979, %1856
  %1984 = phi float [ %1982, %1979 ], [ %1857, %1856 ]
  %1985 = icmp eq i32 %1623, 0
  br i1 %1985, label %2017, label %1986, !dx.controlflow.hints !70

; <label>:1986                                    ; preds = %1983
  %1987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1988 = extractvalue %dx.types.CBufRet.f32 %1987, 1
  %1989 = fsub fast float %1374, %1988
  %1990 = extractvalue %dx.types.CBufRet.f32 %1987, 3
  %1991 = fmul fast float %1989, %1990
  %1992 = call float @dx.op.unary.f32(i32 7, float %1991)  ; Saturate(value)
  %1993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1994 = extractvalue %dx.types.CBufRet.f32 %1993, 3
  %1995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1996 = extractvalue %dx.types.CBufRet.f32 %1995, 2
  %1997 = fsub fast float %1996, %1622
  %1998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1999 = extractvalue %dx.types.CBufRet.f32 %1998, 3
  %2000 = fmul fast float %1997, %1999
  %2001 = call float @dx.op.unary.f32(i32 7, float %2000)  ; Saturate(value)
  %2002 = fmul fast float %2001, %1994
  %2003 = extractvalue %dx.types.CBufRet.f32 %1998, 0
  %2004 = fsub fast float %1374, %2003
  %2005 = extractvalue %dx.types.CBufRet.f32 %1998, 1
  %2006 = fmul fast float %2004, %2005
  %2007 = call float @dx.op.unary.f32(i32 7, float %2006)  ; Saturate(value)
  %2008 = fsub fast float 1.000000e+00, %1992
  %2009 = fmul fast float %2007, %2008
  %2010 = fadd fast float %2009, %1992
  %2011 = extractvalue %dx.types.CBufRet.f32 %1987, 0
  %2012 = fsub fast float %2002, %2011
  %2013 = fmul fast float %2012, %2010
  %2014 = fadd fast float %2013, %2011
  %2015 = fmul fast float %2014, %1374
  %2016 = fadd fast float %2015, %1984
  br label %2017

; <label>:2017                                    ; preds = %1986, %1983
  %2018 = phi float [ %2016, %1986 ], [ %1984, %1983 ]
  %2019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2020 = extractvalue %dx.types.CBufRet.f32 %2019, 3
  %2021 = fmul fast float %2018, 0xBFF7154760000000
  %2022 = fmul fast float %2021, %2020
  %2023 = call float @dx.op.unary.f32(i32 21, float %2022)  ; Exp(value)
  %2024 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  %2025 = fmul fast float %2024, %1370
  %2026 = fmul fast float %2024, %1371
  %2027 = fmul fast float %2024, %1372
  %2028 = fadd fast float %2025, %209
  %2029 = fadd fast float %2026, %210
  %2030 = fadd fast float %2027, %211
  %2031 = fsub fast float 1.000000e+00, %1340
  %2032 = fmul fast float %1332, %469
  %2033 = fmul fast float %2032, %2031
  %2034 = fmul fast float %2033, %2028
  %2035 = fmul fast float %1333, %469
  %2036 = fmul fast float %2035, %2031
  %2037 = fmul fast float %2036, %2029
  %2038 = fmul fast float %1334, %469
  %2039 = fmul fast float %2038, %2031
  %2040 = fmul fast float %2039, %2030
  %2041 = fadd fast float %2034, %470
  %2042 = fadd fast float %2037, %471
  %2043 = fadd fast float %2040, %472
  %2044 = fdiv fast float %1316, %862
  %2045 = fadd fast float %862, %476
  %2046 = fmul fast float %476, %476
  %2047 = fmul fast float %2045, %2045
  %2048 = fsub fast float %2046, %2047
  %2049 = fmul fast float %2048, -5.000000e-01
  %2050 = fmul fast float %2049, %2044
  %2051 = fadd fast float %2050, %468
  %2052 = fadd fast float %1316, %478
  %2053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2054 = extractvalue %dx.types.CBufRet.i32 %2053, 0
  %2055 = icmp eq i32 %2054, 0
  br i1 %2055, label %2082, label %2056, !dx.controlflow.hints !74

; <label>:2056                                    ; preds = %2017
  %2057 = icmp ne i32 %483, 0
  %2058 = zext i1 %2057 to i32
  %2059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2060 = extractvalue %dx.types.CBufRet.f32 %2059, 2
  %2061 = extractvalue %dx.types.CBufRet.f32 %2059, 0
  %2062 = fsub fast float %2045, %2061
  %2063 = fmul fast float %2062, %2060
  %2064 = call float @dx.op.unary.f32(i32 7, float %2063)  ; Saturate(value)
  %2065 = fadd fast float %2064, -5.000000e-01
  %2066 = fmul fast float %2065, 2.000000e+00
  %2067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2068 = extractvalue %dx.types.CBufRet.f32 %2067, 2
  %2069 = fcmp fast olt float %2066, %2068
  br i1 %2069, label %2070, label %2082, !dx.controlflow.hints !75

; <label>:2070                                    ; preds = %2056
  %2071 = fmul fast float %2066, %2066
  %2072 = fmul fast float %2031, %469
  %2073 = fmul fast float %2066, %2072
  %2074 = fmul fast float %2071, %2072
  %2075 = fmul fast float %2073, %2071
  %2076 = fmul fast float %2071, %2071
  %2077 = fmul fast float %2076, %2072
  %2078 = fadd fast float %2073, %479
  %2079 = fadd fast float %2074, %480
  %2080 = fadd fast float %2075, %481
  %2081 = fadd fast float %2077, %482
  br label %2082

; <label>:2082                                    ; preds = %2070, %2056, %2017
  %2083 = phi float [ %479, %2017 ], [ %2078, %2070 ], [ %479, %2056 ]
  %2084 = phi float [ %480, %2017 ], [ %2079, %2070 ], [ %480, %2056 ]
  %2085 = phi float [ %481, %2017 ], [ %2080, %2070 ], [ %481, %2056 ]
  %2086 = phi float [ %482, %2017 ], [ %2081, %2070 ], [ %482, %2056 ]
  %2087 = phi i32 [ %483, %2017 ], [ 1, %2070 ], [ %2058, %2056 ]
  %2088 = fmul fast float %1340, %469
  br label %2089

; <label>:2089                                    ; preds = %2082, %1335
  %2090 = phi float [ %1336, %1335 ], [ %2045, %2082 ]
  %2091 = phi i32 [ %456, %1335 ], [ %1621, %2082 ]
  %2092 = phi float [ %457, %1335 ], [ %1622, %2082 ]
  %2093 = phi float [ %458, %1335 ], [ %1409, %2082 ]
  %2094 = phi float [ %459, %1335 ], [ %1410, %2082 ]
  %2095 = phi float [ %460, %1335 ], [ %1411, %2082 ]
  %2096 = phi float [ %461, %1335 ], [ %1412, %2082 ]
  %2097 = phi float [ %468, %1335 ], [ %2051, %2082 ]
  %2098 = phi float [ %469, %1335 ], [ %2088, %2082 ]
  %2099 = phi float [ %470, %1335 ], [ %2041, %2082 ]
  %2100 = phi float [ %471, %1335 ], [ %2042, %2082 ]
  %2101 = phi float [ %472, %1335 ], [ %2043, %2082 ]
  %2102 = phi float [ %478, %1335 ], [ %2052, %2082 ]
  %2103 = phi float [ %479, %1335 ], [ %2083, %2082 ]
  %2104 = phi float [ %480, %1335 ], [ %2084, %2082 ]
  %2105 = phi float [ %481, %1335 ], [ %2085, %2082 ]
  %2106 = phi float [ %482, %1335 ], [ %2086, %2082 ]
  %2107 = phi i32 [ %483, %1335 ], [ %2087, %2082 ]
  %2108 = fmul fast float %862, %284
  %2109 = fmul fast float %862, %285
  %2110 = fmul fast float %862, %286
  %2111 = fadd fast float %2108, %473
  %2112 = fadd fast float %2109, %474
  %2113 = fadd fast float %2110, %475
  %2114 = fcmp fast olt float %2090, %436
  %2115 = extractvalue %dx.types.CBufRet.f32 %1321, 2
  %2116 = fcmp fast olt float %2115, %2098
  %2117 = and i1 %2114, %2116
  br i1 %2117, label %455, label %2118

; <label>:2118                                    ; preds = %2089
  br label %2119

; <label>:2119                                    ; preds = %2118, %429
  %2120 = phi float [ 0.000000e+00, %429 ], [ %2097, %2118 ]
  %2121 = phi float [ 1.000000e+00, %429 ], [ %2098, %2118 ]
  %2122 = phi float [ 0.000000e+00, %429 ], [ %2099, %2118 ]
  %2123 = phi float [ 0.000000e+00, %429 ], [ %2100, %2118 ]
  %2124 = phi float [ 0.000000e+00, %429 ], [ %2101, %2118 ]
  %2125 = phi float [ 0.000000e+00, %429 ], [ %2102, %2118 ]
  %2126 = phi float [ 0.000000e+00, %429 ], [ %2103, %2118 ]
  %2127 = phi float [ 0.000000e+00, %429 ], [ %2104, %2118 ]
  %2128 = phi float [ 0.000000e+00, %429 ], [ %2105, %2118 ]
  %2129 = phi float [ 0.000000e+00, %429 ], [ %2106, %2118 ]
  %2130 = phi i32 [ 0, %429 ], [ %2107, %2118 ]
  %2131 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2132 = extractvalue %dx.types.CBufRet.i32 %2131, 0
  %2133 = icmp eq i32 %2132, 0
  br i1 %2133, label %2175, label %2134, !dx.controlflow.hints !76

; <label>:2134                                    ; preds = %2119
  %2135 = icmp eq i32 %2130, 0
  br i1 %2135, label %2174, label %2136, !dx.controlflow.hints !77

; <label>:2136                                    ; preds = %2134
  %2137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2138 = extractvalue %dx.types.CBufRet.i32 %2137, 2
  %2139 = icmp eq i32 %2138, 0
  br i1 %2139, label %2146, label %2140, !dx.controlflow.hints !78

; <label>:2140                                    ; preds = %2136
  %2141 = fsub fast float 1.000000e+00, %2121
  %2142 = fdiv fast float %2126, %2141
  %2143 = fdiv fast float %2127, %2141
  %2144 = fdiv fast float %2128, %2141
  %2145 = fdiv fast float %2129, %2141
  br label %2151

; <label>:2146                                    ; preds = %2136
  %2147 = fadd fast float %2126, %2121
  %2148 = fadd fast float %2127, %2121
  %2149 = fadd fast float %2128, %2121
  %2150 = fadd fast float %2129, %2121
  br label %2151

; <label>:2151                                    ; preds = %2146, %2140
  %2152 = phi float [ %2142, %2140 ], [ %2147, %2146 ]
  %2153 = phi float [ %2143, %2140 ], [ %2148, %2146 ]
  %2154 = phi float [ %2144, %2140 ], [ %2149, %2146 ]
  %2155 = phi float [ %2145, %2140 ], [ %2150, %2146 ]
  %2156 = call float @dx.op.binary.f32(i32 35, float %2152, float -1.000000e+00)  ; FMax(a,b)
  %2157 = call float @dx.op.binary.f32(i32 35, float %2153, float -1.000000e+00)  ; FMax(a,b)
  %2158 = call float @dx.op.binary.f32(i32 35, float %2154, float -1.000000e+00)  ; FMax(a,b)
  %2159 = call float @dx.op.binary.f32(i32 35, float %2155, float -1.000000e+00)  ; FMax(a,b)
  %2160 = call float @dx.op.binary.f32(i32 36, float %2156, float 1.000000e+00)  ; FMin(a,b)
  %2161 = call float @dx.op.binary.f32(i32 36, float %2157, float 1.000000e+00)  ; FMin(a,b)
  %2162 = call float @dx.op.binary.f32(i32 36, float %2158, float 1.000000e+00)  ; FMin(a,b)
  %2163 = call float @dx.op.binary.f32(i32 36, float %2159, float 1.000000e+00)  ; FMin(a,b)
  %2164 = fmul fast float %2160, 1.500000e+00
  %2165 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2162, float %2164)  ; FMad(a,b,c)
  %2166 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2161, float 0.000000e+00)  ; FMad(a,b,c)
  %2167 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2163, float %2166)  ; FMad(a,b,c)
  %2168 = fmul fast float %2160, 0x3FEBB67AE0000000
  %2169 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2162, float %2168)  ; FMad(a,b,c)
  %2170 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2161, float 0.000000e+00)  ; FMad(a,b,c)
  %2171 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2163, float %2170)  ; FMad(a,b,c)
  %2172 = fadd fast float %2165, 5.000000e-01
  %2173 = fadd fast float %2169, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %24, i32 %25, i32 0, float %2172, float %2167, float %2173, float %2171, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2175

; <label>:2174                                    ; preds = %2134
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %24, i32 %25, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2175

; <label>:2175                                    ; preds = %2174, %2151, %2119
  %2176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2177 = extractvalue %dx.types.CBufRet.f32 %2176, 2
  %2178 = fsub fast float %2121, %2177
  %2179 = fdiv fast float %2178, %2177
  %2180 = call float @dx.op.unary.f32(i32 7, float %2179)  ; Saturate(value)
  %2181 = fmul fast float %2180, 2.000000e+00
  %2182 = fsub fast float 3.000000e+00, %2181
  %2183 = fmul fast float %2180, %2180
  %2184 = fmul fast float %2183, %2121
  %2185 = fmul fast float %2184, %2182
  %2186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2187 = extractvalue %dx.types.CBufRet.f32 %2186, 0
  %2188 = extractvalue %dx.types.CBufRet.f32 %2186, 1
  %2189 = extractvalue %dx.types.CBufRet.f32 %2186, 2
  %2190 = call float @dx.op.dot3.f32(i32 55, float %284, float %285, float %286, float %2187, float %2188, float %2189)  ; Dot3(ax,ay,az,bx,by,bz)
  %2191 = fmul fast float %2190, %2120
  %2192 = fcmp fast ogt float %2125, 0.000000e+00
  %2193 = fdiv fast float 1.000000e+00, %2125
  %2194 = fmul fast float %2191, %2193
  %2195 = select i1 %2192, float %2194, float %295
  %2196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2197 = extractvalue %dx.types.CBufRet.f32 %2196, 0
  %2198 = extractvalue %dx.types.CBufRet.f32 %2196, 1
  %2199 = extractvalue %dx.types.CBufRet.f32 %2196, 2
  %2200 = fmul fast float %2197, %248
  %2201 = fmul fast float %2198, %248
  %2202 = fmul fast float %2199, %248
  %2203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2204 = extractvalue %dx.types.CBufRet.f32 %2203, 0
  %2205 = extractvalue %dx.types.CBufRet.f32 %2203, 1
  %2206 = extractvalue %dx.types.CBufRet.f32 %2203, 2
  %2207 = fmul fast float %2204, %249
  %2208 = fmul fast float %2205, %249
  %2209 = fmul fast float %2206, %249
  %2210 = fadd fast float %2207, %2200
  %2211 = fadd fast float %2208, %2201
  %2212 = fadd fast float %2209, %2202
  %2213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2214 = extractvalue %dx.types.CBufRet.f32 %2213, 0
  %2215 = extractvalue %dx.types.CBufRet.f32 %2213, 1
  %2216 = extractvalue %dx.types.CBufRet.f32 %2213, 2
  %2217 = fadd fast float %2210, %2214
  %2218 = fadd fast float %2211, %2215
  %2219 = fadd fast float %2212, %2216
  %2220 = fmul fast float %2217, %2195
  %2221 = fmul fast float %2218, %2195
  %2222 = fmul fast float %2219, %2195
  %2223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2224 = extractvalue %dx.types.CBufRet.f32 %2223, 0
  %2225 = extractvalue %dx.types.CBufRet.f32 %2223, 1
  %2226 = extractvalue %dx.types.CBufRet.f32 %2223, 2
  %2227 = extractvalue %dx.types.CBufRet.f32 %2223, 3
  %2228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2229 = extractvalue %dx.types.CBufRet.f32 %2228, 0
  %2230 = extractvalue %dx.types.CBufRet.f32 %2228, 1
  %2231 = extractvalue %dx.types.CBufRet.f32 %2228, 2
  %2232 = extractvalue %dx.types.CBufRet.f32 %2228, 3
  %2233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2234 = extractvalue %dx.types.CBufRet.f32 %2233, 0
  %2235 = extractvalue %dx.types.CBufRet.f32 %2233, 1
  %2236 = extractvalue %dx.types.CBufRet.f32 %2233, 2
  %2237 = extractvalue %dx.types.CBufRet.f32 %2233, 3
  %2238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2239 = extractvalue %dx.types.CBufRet.f32 %2238, 0
  %2240 = extractvalue %dx.types.CBufRet.f32 %2238, 1
  %2241 = extractvalue %dx.types.CBufRet.f32 %2238, 2
  %2242 = extractvalue %dx.types.CBufRet.f32 %2238, 3
  %2243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2244 = extractvalue %dx.types.CBufRet.f32 %2243, 3
  %2245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2246 = extractvalue %dx.types.CBufRet.f32 %2245, 3
  %2247 = extractvalue %dx.types.CBufRet.f32 %2245, 0
  %2248 = extractvalue %dx.types.CBufRet.f32 %2245, 1
  %2249 = extractvalue %dx.types.CBufRet.f32 %2245, 2
  %2250 = fcmp fast olt float %2249, -5.000000e-01
  %2251 = call float @dx.op.dot3.f32(i32 55, float %2220, float %2221, float %2222, float %2220, float %2221, float %2222)  ; Dot3(ax,ay,az,bx,by,bz)
  %2252 = call float @dx.op.unary.f32(i32 25, float %2251)  ; Rsqrt(value)
  %2253 = fmul fast float %2252, %2251
  %2254 = fmul fast float %2252, %2220
  %2255 = fmul fast float %2252, %2221
  %2256 = fmul fast float %2252, %2222
  %2257 = fadd fast float %2253, %2227
  %2258 = call float @dx.op.dot3.f32(i32 55, float %2254, float %2255, float %2256, float %2224, float %2225, float %2226)  ; Dot3(ax,ay,az,bx,by,bz)
  %2259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2260 = extractvalue %dx.types.CBufRet.i32 %2259, 1
  %2261 = and i32 %2260, 1
  %2262 = icmp ne i32 %2261, 0
  %2263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2264 = extractvalue %dx.types.CBufRet.f32 %2263, 2
  %2265 = fcmp fast ogt float %2264, 0.000000e+00
  %2266 = and i1 %2262, %2265
  br i1 %2266, label %2267, label %2673, !dx.controlflow.hints !79

; <label>:2267                                    ; preds = %2175
  %2268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2269 = extractvalue %dx.types.CBufRet.f32 %2268, 3
  %2270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2271 = extractvalue %dx.types.CBufRet.f32 %2270, 2
  %2272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2273 = extractvalue %dx.types.CBufRet.f32 %2272, 2
  %2274 = fsub fast float %2271, %2273
  %2275 = and i32 %2260, 2
  %2276 = extractvalue %dx.types.CBufRet.i32 %2259, 0
  %2277 = call i32 @dx.op.binary.i32(i32 40, i32 %2276, i32 3)  ; UMin(a,b)
  %2278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2279 = extractvalue %dx.types.CBufRet.f32 %2278, 0
  %2280 = extractvalue %dx.types.CBufRet.f32 %2278, 1
  %2281 = extractvalue %dx.types.CBufRet.f32 %2272, 0
  %2282 = extractvalue %dx.types.CBufRet.f32 %2272, 1
  %2283 = fsub fast float %2279, %2281
  %2284 = fsub fast float %2280, %2282
  %2285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2286 = extractvalue %dx.types.CBufRet.f32 %2285, 0
  %2287 = fcmp fast ogt float %2286, 0.000000e+00
  %2288 = fsub fast float -0.000000e+00, %2283
  %2289 = fsub fast float -0.000000e+00, %2284
  %2290 = call float @dx.op.dot2.f32(i32 54, float %2254, float %2255, float %2254, float %2255)  ; Dot2(ax,ay,bx,by)
  %2291 = call float @dx.op.dot2.f32(i32 54, float %2254, float %2255, float %2288, float %2289)  ; Dot2(ax,ay,bx,by)
  %2292 = fmul fast float %2291, 2.000000e+00
  %2293 = call float @dx.op.dot2.f32(i32 54, float %2288, float %2289, float %2288, float %2289)  ; Dot2(ax,ay,bx,by)
  %2294 = fmul fast float %2286, %2286
  %2295 = fsub fast float %2293, %2294
  %2296 = fmul fast float %2292, %2292
  %2297 = fmul fast float %2290, 4.000000e+00
  %2298 = fmul fast float %2297, %2295
  %2299 = fsub fast float %2296, %2298
  %2300 = fcmp fast ogt float %2299, 0.000000e+00
  br i1 %2300, label %2301, label %2316, !dx.controlflow.hints !80

; <label>:2301                                    ; preds = %2267
  %2302 = fcmp fast ogt float %2292, 0.000000e+00
  %2303 = call float @dx.op.unary.f32(i32 24, float %2299)  ; Sqrt(value)
  %2304 = fsub fast float -0.000000e+00, %2303
  %2305 = select i1 %2302, float %2303, float %2304
  %2306 = fadd fast float %2305, %2292
  %2307 = fmul float %2306, -5.000000e-01
  %2308 = fdiv fast float %2307, %2290
  %2309 = call float @dx.op.binary.f32(i32 35, float %2308, float 0.000000e+00)  ; FMax(a,b)
  %2310 = call float @dx.op.binary.f32(i32 36, float %2253, float %2309)  ; FMin(a,b)
  %2311 = fdiv fast float %2295, %2307
  %2312 = call float @dx.op.binary.f32(i32 35, float %2311, float 0.000000e+00)  ; FMax(a,b)
  %2313 = call float @dx.op.binary.f32(i32 36, float %2253, float %2312)  ; FMin(a,b)
  %2314 = call float @dx.op.binary.f32(i32 36, float %2310, float %2313)  ; FMin(a,b)
  %2315 = call float @dx.op.binary.f32(i32 35, float %2310, float %2313)  ; FMax(a,b)
  br label %2316

; <label>:2316                                    ; preds = %2301, %2267
  %2317 = phi float [ %2315, %2301 ], [ -1.000000e+00, %2267 ]
  %2318 = phi float [ %2314, %2301 ], [ -1.000000e+00, %2267 ]
  %2319 = phi i1 [ true, %2301 ], [ false, %2267 ]
  %2320 = and i1 %2287, %2319
  br i1 %2320, label %2321, label %2323, !dx.controlflow.hints !81

; <label>:2321                                    ; preds = %2316
  %2322 = fcmp fast oeq float %2318, %2317
  br i1 %2322, label %2626, label %2324, !dx.controlflow.hints !82

; <label>:2323                                    ; preds = %2316
  br i1 %2287, label %2626, label %2324, !dx.controlflow.hints !83

; <label>:2324                                    ; preds = %2323, %2321
  %2325 = phi float [ %2253, %2323 ], [ %2317, %2321 ]
  %2326 = phi float [ 0.000000e+00, %2323 ], [ %2318, %2321 ]
  %2327 = icmp ne i32 %2275, 0
  %2328 = fmul fast float %2325, %2256
  %2329 = fadd fast float %2328, %2269
  %2330 = fmul fast float %2329, %2325
  %2331 = select i1 %2327, float 0.000000e+00, float %2330
  %2332 = fcmp fast oeq float %2256, 0.000000e+00
  %2333 = fdiv fast float %2274, %2256
  %2334 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2333)  ; FMax(a,b)
  %2335 = select i1 %2332, float %2325, float %2334
  %2336 = call float @dx.op.binary.f32(i32 36, float %2325, float %2335)  ; FMin(a,b)
  %2337 = fcmp fast ogt float %2256, 0.000000e+00
  %2338 = fcmp fast olt float %2274, 0.000000e+00
  br i1 %2337, label %2339, label %2396, !dx.controlflow.hints !84

; <label>:2339                                    ; preds = %2324
  %2340 = icmp eq i32 %2275, 0
  br i1 %2338, label %2341, label %2385, !dx.controlflow.hints !85

; <label>:2341                                    ; preds = %2339
  %2342 = select i1 %2340, float %2325, float 0.000000e+00
  %2343 = fsub fast float -0.000000e+00, %2342
  %2344 = call float @dx.op.unary.f32(i32 6, float %2343)  ; FAbs(value)
  %2345 = fmul fast float %2342, %2256
  %2346 = fadd fast float %2345, %2269
  %2347 = fmul fast float %2344, %2346
  %2348 = fsub fast float %2331, %2347
  %2349 = fsub fast float %2325, %2344
  %2350 = select i1 %2340, float %2349, float 0.000000e+00
  %2351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2352 = extractvalue %dx.types.CBufRet.f32 %2351, 0
  %2353 = extractvalue %dx.types.CBufRet.f32 %2351, 1
  %2354 = extractvalue %dx.types.CBufRet.f32 %2351, 2
  %2355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2356 = extractvalue %dx.types.CBufRet.f32 %2355, 0
  %2357 = extractvalue %dx.types.CBufRet.f32 %2355, 1
  %2358 = extractvalue %dx.types.CBufRet.f32 %2355, 2
  %2359 = extractvalue %dx.types.CBufRet.f32 %2355, 3
  %2360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2361 = extractvalue %dx.types.CBufRet.f32 %2360, 3
  %2362 = call float @dx.op.binary.f32(i32 36, float %2348, float %2361)  ; FMin(a,b)
  %2363 = fmul fast float %2359, %2350
  %2364 = call float @dx.op.unary.f32(i32 7, float %2363)  ; Saturate(value)
  %2365 = fsub fast float %2356, %2352
  %2366 = fsub fast float %2357, %2353
  %2367 = fsub fast float %2358, %2354
  %2368 = fmul fast float %2364, %2365
  %2369 = fmul fast float %2364, %2366
  %2370 = fmul fast float %2364, %2367
  %2371 = fadd fast float %2368, %2352
  %2372 = fadd fast float %2369, %2353
  %2373 = fadd fast float %2370, %2354
  %2374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2375 = extractvalue %dx.types.CBufRet.f32 %2374, 0
  %2376 = extractvalue %dx.types.CBufRet.f32 %2374, 1
  %2377 = fadd fast float %2376, %2375
  %2378 = call float @dx.op.unary.f32(i32 7, float %2377)  ; Saturate(value)
  %2379 = extractvalue %dx.types.CBufRet.f32 %2374, 2
  %2380 = extractvalue %dx.types.CBufRet.f32 %2374, 3
  %2381 = fadd fast float %2380, %2379
  %2382 = call float @dx.op.unary.f32(i32 7, float %2381)  ; Saturate(value)
  %2383 = fmul fast float %2378, %2362
  %2384 = fmul fast float %2383, %2382
  br label %2626

; <label>:2385                                    ; preds = %2339
  br i1 %2340, label %2386, label %2407, !dx.controlflow.hints !86

; <label>:2386                                    ; preds = %2385
  %2387 = call float @dx.op.binary.f32(i32 36, float %2336, float %2326)  ; FMin(a,b)
  %2388 = fsub fast float %2336, %2387
  %2389 = fsub fast float %2388, %2325
  %2390 = call float @dx.op.unary.f32(i32 6, float %2389)  ; FAbs(value)
  %2391 = fadd fast float %2388, %2325
  %2392 = fmul fast float %2391, %2256
  %2393 = fadd fast float %2392, %2269
  %2394 = fmul fast float %2393, %2390
  %2395 = fsub fast float %2331, %2394
  br label %2407

; <label>:2396                                    ; preds = %2324
  br i1 %2338, label %2397, label %2407, !dx.controlflow.hints !87

; <label>:2397                                    ; preds = %2396
  %2398 = call float @dx.op.binary.f32(i32 35, float %2326, float %2336)  ; FMax(a,b)
  %2399 = icmp eq i32 %2275, 0
  %2400 = select i1 %2399, float %2336, float 0.000000e+00
  %2401 = fsub fast float -0.000000e+00, %2400
  %2402 = call float @dx.op.unary.f32(i32 6, float %2401)  ; FAbs(value)
  %2403 = fmul fast float %2400, %2256
  %2404 = fadd fast float %2403, %2269
  %2405 = fmul fast float %2402, %2404
  %2406 = fsub fast float %2331, %2405
  br label %2407

; <label>:2407                                    ; preds = %2397, %2396, %2386, %2385
  %2408 = phi float [ %2326, %2385 ], [ %2326, %2386 ], [ %2398, %2397 ], [ %2326, %2396 ]
  %2409 = phi float [ 0.000000e+00, %2385 ], [ %2390, %2386 ], [ %2402, %2397 ], [ 0.000000e+00, %2396 ]
  %2410 = phi float [ %2331, %2385 ], [ %2395, %2386 ], [ %2406, %2397 ], [ %2331, %2396 ]
  %2411 = phi float [ %2336, %2385 ], [ %2336, %2386 ], [ %2325, %2397 ], [ %2325, %2396 ]
  %2412 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  store float -1.000000e+00, float* %2412, align 4, !tbaa !88, !noalias !92
  %2413 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 1
  store float -1.000000e+00, float* %2413, align 4, !tbaa !88, !noalias !92
  %2414 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 2
  store float -1.000000e+00, float* %2414, align 4, !tbaa !88, !noalias !92
  %2415 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 0
  store float -1.000000e+00, float* %2415, align 4, !tbaa !88, !noalias !92
  %2416 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 1
  store float -1.000000e+00, float* %2416, align 4, !tbaa !88, !noalias !92
  %2417 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 2
  store float -1.000000e+00, float* %2417, align 4, !tbaa !88, !noalias !92
  %2418 = icmp sgt i32 %2277, 0
  br i1 %2418, label %2419, label %2480

; <label>:2419                                    ; preds = %2407
  br label %2420

; <label>:2420                                    ; preds = %2469, %2419
  %2421 = phi i32 [ %2470, %2469 ], [ 0, %2419 ]
  %2422 = phi i32 [ %2471, %2469 ], [ 0, %2419 ]
  %2423 = add nuw i32 %2422, 171
  %2424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 %2423)  ; CBufferLoadLegacy(handle,regIndex)
  %2425 = extractvalue %dx.types.CBufRet.f32 %2424, 0
  %2426 = extractvalue %dx.types.CBufRet.f32 %2424, 1
  %2427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2428 = extractvalue %dx.types.CBufRet.f32 %2427, 0
  %2429 = extractvalue %dx.types.CBufRet.f32 %2427, 1
  %2430 = fsub fast float %2425, %2428
  %2431 = fsub fast float %2426, %2429
  %2432 = extractvalue %dx.types.CBufRet.f32 %2424, 2
  %2433 = fsub fast float -0.000000e+00, %2430
  %2434 = fsub fast float -0.000000e+00, %2431
  %2435 = call float @dx.op.dot2.f32(i32 54, float %2254, float %2255, float %2433, float %2434)  ; Dot2(ax,ay,bx,by)
  %2436 = fmul fast float %2435, 2.000000e+00
  %2437 = call float @dx.op.dot2.f32(i32 54, float %2433, float %2434, float %2433, float %2434)  ; Dot2(ax,ay,bx,by)
  %2438 = fmul fast float %2432, %2432
  %2439 = fsub fast float %2437, %2438
  %2440 = fmul fast float %2436, %2436
  %2441 = fmul fast float %2297, %2439
  %2442 = fsub fast float %2440, %2441
  %2443 = fcmp fast ogt float %2442, 0.000000e+00
  br i1 %2443, label %2444, label %2459, !dx.controlflow.hints !80

; <label>:2444                                    ; preds = %2420
  %2445 = fcmp fast ogt float %2436, 0.000000e+00
  %2446 = call float @dx.op.unary.f32(i32 24, float %2442)  ; Sqrt(value)
  %2447 = fsub fast float -0.000000e+00, %2446
  %2448 = select i1 %2445, float %2446, float %2447
  %2449 = fadd fast float %2448, %2436
  %2450 = fmul float %2449, -5.000000e-01
  %2451 = fdiv fast float %2450, %2290
  %2452 = call float @dx.op.binary.f32(i32 35, float %2451, float 0.000000e+00)  ; FMax(a,b)
  %2453 = call float @dx.op.binary.f32(i32 36, float %2325, float %2452)  ; FMin(a,b)
  %2454 = fdiv fast float %2439, %2450
  %2455 = call float @dx.op.binary.f32(i32 35, float %2454, float 0.000000e+00)  ; FMax(a,b)
  %2456 = call float @dx.op.binary.f32(i32 36, float %2325, float %2455)  ; FMin(a,b)
  %2457 = call float @dx.op.binary.f32(i32 36, float %2453, float %2456)  ; FMin(a,b)
  %2458 = call float @dx.op.binary.f32(i32 35, float %2453, float %2456)  ; FMax(a,b)
  br label %2459

; <label>:2459                                    ; preds = %2444, %2420
  %2460 = phi float [ %2458, %2444 ], [ -1.000000e+00, %2420 ]
  %2461 = phi float [ %2457, %2444 ], [ -1.000000e+00, %2420 ]
  %2462 = phi i1 [ true, %2444 ], [ false, %2420 ]
  br i1 %2462, label %2463, label %2469, !dx.controlflow.hints !103

; <label>:2463                                    ; preds = %2459
  %2464 = call float @dx.op.binary.f32(i32 35, float %2408, float %2461)  ; FMax(a,b)
  %2465 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %2422
  store float %2464, float* %2465, align 4, !tbaa !88, !noalias !92
  %2466 = call float @dx.op.binary.f32(i32 35, float %2408, float %2460)  ; FMax(a,b)
  %2467 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %2422
  store float %2466, float* %2467, align 4, !tbaa !88, !noalias !92
  %2468 = add nsw i32 %2421, 1
  br label %2469

; <label>:2469                                    ; preds = %2463, %2459
  %2470 = phi i32 [ %2468, %2463 ], [ %2421, %2459 ]
  %2471 = add nuw nsw i32 %2422, 1
  %2472 = icmp eq i32 %2471, %2277
  br i1 %2472, label %2473, label %2420

; <label>:2473                                    ; preds = %2469
  %2474 = load float, float* %2414, align 4, !tbaa !88, !alias.scope !104, !noalias !107
  %2475 = load float, float* %2413, align 4, !tbaa !88, !alias.scope !110, !noalias !111
  %2476 = load float, float* %2412, align 4, !tbaa !88, !alias.scope !112, !noalias !113
  %2477 = load float, float* %2417, align 4, !tbaa !88, !alias.scope !114, !noalias !117
  %2478 = load float, float* %2416, align 4, !tbaa !88, !alias.scope !120, !noalias !121
  %2479 = load float, float* %2415, align 4, !tbaa !88, !alias.scope !122, !noalias !123
  br label %2480

; <label>:2480                                    ; preds = %2473, %2407
  %2481 = phi float [ -1.000000e+00, %2407 ], [ %2479, %2473 ]
  %2482 = phi float [ -1.000000e+00, %2407 ], [ %2478, %2473 ]
  %2483 = phi float [ -1.000000e+00, %2407 ], [ %2477, %2473 ]
  %2484 = phi float [ -1.000000e+00, %2407 ], [ %2476, %2473 ]
  %2485 = phi float [ -1.000000e+00, %2407 ], [ %2475, %2473 ]
  %2486 = phi float [ -1.000000e+00, %2407 ], [ %2474, %2473 ]
  %2487 = phi i32 [ 0, %2407 ], [ %2470, %2473 ]
  %2488 = call float @dx.op.binary.f32(i32 36, float %2485, float %2486)  ; FMin(a,b)
  %2489 = call float @dx.op.binary.f32(i32 36, float %2484, float %2488)  ; FMin(a,b)
  %2490 = call float @dx.op.binary.f32(i32 35, float %2484, float %2485)  ; FMax(a,b)
  %2491 = call float @dx.op.binary.f32(i32 36, float %2490, float %2486)  ; FMin(a,b)
  %2492 = call float @dx.op.binary.f32(i32 36, float %2484, float %2485)  ; FMin(a,b)
  %2493 = call float @dx.op.binary.f32(i32 35, float %2492, float %2491)  ; FMax(a,b)
  %2494 = call float @dx.op.binary.f32(i32 35, float %2485, float %2486)  ; FMax(a,b)
  %2495 = call float @dx.op.binary.f32(i32 35, float %2484, float %2494)  ; FMax(a,b)
  store float %2489, float* %2412, align 4, !tbaa !88, !alias.scope !112, !noalias !113
  store float %2493, float* %2413, align 4, !tbaa !88, !alias.scope !110, !noalias !111
  store float %2495, float* %2414, align 4, !tbaa !88, !alias.scope !104, !noalias !107
  %2496 = call float @dx.op.binary.f32(i32 36, float %2482, float %2483)  ; FMin(a,b)
  %2497 = call float @dx.op.binary.f32(i32 36, float %2481, float %2496)  ; FMin(a,b)
  %2498 = call float @dx.op.binary.f32(i32 35, float %2481, float %2482)  ; FMax(a,b)
  %2499 = call float @dx.op.binary.f32(i32 36, float %2498, float %2483)  ; FMin(a,b)
  %2500 = call float @dx.op.binary.f32(i32 36, float %2481, float %2482)  ; FMin(a,b)
  %2501 = call float @dx.op.binary.f32(i32 35, float %2500, float %2499)  ; FMax(a,b)
  %2502 = call float @dx.op.binary.f32(i32 35, float %2482, float %2483)  ; FMax(a,b)
  %2503 = call float @dx.op.binary.f32(i32 35, float %2481, float %2502)  ; FMax(a,b)
  store float %2497, float* %2415, align 4, !tbaa !88, !alias.scope !122, !noalias !123
  store float %2501, float* %2416, align 4, !tbaa !88, !alias.scope !120, !noalias !121
  store float %2503, float* %2417, align 4, !tbaa !88, !alias.scope !114, !noalias !117
  %2504 = sub nsw i32 3, %2487
  %2505 = icmp sgt i32 %2504, 2
  br i1 %2505, label %2506, label %2544, !dx.controlflow.hints !124

; <label>:2506                                    ; preds = %2480
  %2507 = icmp eq i32 %2275, 0
  %2508 = fsub fast float %2325, %2409
  %2509 = select i1 %2507, float %2508, float %2409
  %2510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2511 = extractvalue %dx.types.CBufRet.f32 %2510, 0
  %2512 = extractvalue %dx.types.CBufRet.f32 %2510, 1
  %2513 = extractvalue %dx.types.CBufRet.f32 %2510, 2
  %2514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2515 = extractvalue %dx.types.CBufRet.f32 %2514, 0
  %2516 = extractvalue %dx.types.CBufRet.f32 %2514, 1
  %2517 = extractvalue %dx.types.CBufRet.f32 %2514, 2
  %2518 = extractvalue %dx.types.CBufRet.f32 %2514, 3
  %2519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2520 = extractvalue %dx.types.CBufRet.f32 %2519, 3
  %2521 = call float @dx.op.binary.f32(i32 36, float %2410, float %2520)  ; FMin(a,b)
  %2522 = fmul fast float %2518, %2509
  %2523 = call float @dx.op.unary.f32(i32 7, float %2522)  ; Saturate(value)
  %2524 = fsub fast float %2515, %2511
  %2525 = fsub fast float %2516, %2512
  %2526 = fsub fast float %2517, %2513
  %2527 = fmul fast float %2523, %2524
  %2528 = fmul fast float %2523, %2525
  %2529 = fmul fast float %2523, %2526
  %2530 = fadd fast float %2527, %2511
  %2531 = fadd fast float %2528, %2512
  %2532 = fadd fast float %2529, %2513
  %2533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2534 = extractvalue %dx.types.CBufRet.f32 %2533, 0
  %2535 = extractvalue %dx.types.CBufRet.f32 %2533, 1
  %2536 = fadd fast float %2535, %2534
  %2537 = call float @dx.op.unary.f32(i32 7, float %2536)  ; Saturate(value)
  %2538 = extractvalue %dx.types.CBufRet.f32 %2533, 2
  %2539 = extractvalue %dx.types.CBufRet.f32 %2533, 3
  %2540 = fadd fast float %2539, %2538
  %2541 = call float @dx.op.unary.f32(i32 7, float %2540)  ; Saturate(value)
  %2542 = fmul fast float %2537, %2521
  %2543 = fmul fast float %2542, %2541
  br label %2626

; <label>:2544                                    ; preds = %2480
  %2545 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %2504
  %2546 = load float, float* %2545, align 4, !tbaa !88, !noalias !92
  %2547 = fcmp fast olt float %2546, %2411
  %2548 = icmp sgt i32 %2487, 0
  %2549 = and i1 %2548, %2547
  br i1 %2549, label %2550, label %2587

; <label>:2550                                    ; preds = %2544
  br label %2551

; <label>:2551                                    ; preds = %2580, %2550
  %2552 = phi float [ %2581, %2580 ], [ %2409, %2550 ]
  %2553 = phi float [ %2582, %2580 ], [ %2410, %2550 ]
  %2554 = phi float [ %2562, %2580 ], [ %2546, %2550 ]
  %2555 = phi i32 [ %2559, %2580 ], [ %2504, %2550 ]
  %2556 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %2555
  %2557 = load float, float* %2556, align 4, !tbaa !88, !noalias !92
  %2558 = icmp slt i32 %2555, 2
  %2559 = add nsw i32 %2555, 1
  %2560 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %2559
  %2561 = load float, float* %2560, align 4, !tbaa !88, !noalias !92
  %2562 = select i1 %2558, float %2561, float %2325
  %2563 = call float @dx.op.binary.f32(i32 36, float %2562, float %2557)  ; FMin(a,b)
  %2564 = call float @dx.op.binary.f32(i32 36, float %2411, float %2563)  ; FMin(a,b)
  %2565 = icmp eq i32 %2275, 0
  %2566 = fadd fast float %2564, %2554
  %2567 = fmul fast float %2566, %2256
  %2568 = fadd fast float %2567, %2269
  br i1 %2565, label %2574, label %2569, !dx.controlflow.hints !125

; <label>:2569                                    ; preds = %2551
  %2570 = fsub fast float %2564, %2554
  %2571 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2570)  ; FMax(a,b)
  %2572 = fmul fast float %2571, %2568
  %2573 = fadd fast float %2572, %2553
  br label %2580

; <label>:2574                                    ; preds = %2551
  %2575 = fsub fast float %2554, %2564
  %2576 = call float @dx.op.unary.f32(i32 6, float %2575)  ; FAbs(value)
  %2577 = fadd fast float %2576, %2552
  %2578 = fmul fast float %2576, %2568
  %2579 = fsub fast float %2553, %2578
  br label %2580

; <label>:2580                                    ; preds = %2574, %2569
  %2581 = phi float [ %2571, %2569 ], [ %2577, %2574 ]
  %2582 = phi float [ %2573, %2569 ], [ %2579, %2574 ]
  %2583 = fcmp fast olt float %2562, %2411
  %2584 = icmp slt i32 %2559, 3
  %2585 = and i1 %2584, %2583
  br i1 %2585, label %2551, label %2586

; <label>:2586                                    ; preds = %2580
  br label %2587

; <label>:2587                                    ; preds = %2586, %2544
  %2588 = phi float [ %2409, %2544 ], [ %2581, %2586 ]
  %2589 = phi float [ %2410, %2544 ], [ %2582, %2586 ]
  %2590 = fsub fast float %2325, %2588
  %2591 = select i1 %2327, float %2588, float %2590
  %2592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2593 = extractvalue %dx.types.CBufRet.f32 %2592, 0
  %2594 = extractvalue %dx.types.CBufRet.f32 %2592, 1
  %2595 = extractvalue %dx.types.CBufRet.f32 %2592, 2
  %2596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2597 = extractvalue %dx.types.CBufRet.f32 %2596, 0
  %2598 = extractvalue %dx.types.CBufRet.f32 %2596, 1
  %2599 = extractvalue %dx.types.CBufRet.f32 %2596, 2
  %2600 = extractvalue %dx.types.CBufRet.f32 %2596, 3
  %2601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2602 = extractvalue %dx.types.CBufRet.f32 %2601, 3
  %2603 = call float @dx.op.binary.f32(i32 36, float %2589, float %2602)  ; FMin(a,b)
  %2604 = fmul fast float %2600, %2591
  %2605 = call float @dx.op.unary.f32(i32 7, float %2604)  ; Saturate(value)
  %2606 = fsub fast float %2597, %2593
  %2607 = fsub fast float %2598, %2594
  %2608 = fsub fast float %2599, %2595
  %2609 = fmul fast float %2605, %2606
  %2610 = fmul fast float %2605, %2607
  %2611 = fmul fast float %2605, %2608
  %2612 = fadd fast float %2609, %2593
  %2613 = fadd fast float %2610, %2594
  %2614 = fadd fast float %2611, %2595
  %2615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2616 = extractvalue %dx.types.CBufRet.f32 %2615, 0
  %2617 = extractvalue %dx.types.CBufRet.f32 %2615, 1
  %2618 = fadd fast float %2617, %2616
  %2619 = call float @dx.op.unary.f32(i32 7, float %2618)  ; Saturate(value)
  %2620 = extractvalue %dx.types.CBufRet.f32 %2615, 2
  %2621 = extractvalue %dx.types.CBufRet.f32 %2615, 3
  %2622 = fadd fast float %2621, %2620
  %2623 = call float @dx.op.unary.f32(i32 7, float %2622)  ; Saturate(value)
  %2624 = fmul fast float %2619, %2603
  %2625 = fmul fast float %2624, %2623
  br label %2626

; <label>:2626                                    ; preds = %2587, %2506, %2341, %2323, %2321
  %2627 = phi float [ %2350, %2341 ], [ %2509, %2506 ], [ %2591, %2587 ], [ 0.000000e+00, %2321 ], [ 0.000000e+00, %2323 ]
  %2628 = phi float [ %2384, %2341 ], [ %2543, %2506 ], [ %2625, %2587 ], [ 0.000000e+00, %2321 ], [ 0.000000e+00, %2323 ]
  %2629 = phi float [ %2371, %2341 ], [ %2530, %2506 ], [ %2612, %2587 ], [ 0.000000e+00, %2321 ], [ 0.000000e+00, %2323 ]
  %2630 = phi float [ %2372, %2341 ], [ %2531, %2506 ], [ %2613, %2587 ], [ 0.000000e+00, %2321 ], [ 0.000000e+00, %2323 ]
  %2631 = phi float [ %2373, %2341 ], [ %2532, %2506 ], [ %2614, %2587 ], [ 0.000000e+00, %2321 ], [ 0.000000e+00, %2323 ]
  %2632 = fmul fast float %2264, %2628
  %2633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2634 = extractvalue %dx.types.CBufRet.f32 %2633, 2
  %2635 = fsub fast float %2271, %2634
  %2636 = fcmp fast olt float %2632, -2.000000e+01
  %2637 = call float @dx.op.unary.f32(i32 21, float %2632)  ; Exp(value)
  %2638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2639 = extractvalue %dx.types.CBufRet.f32 %2638, 2
  %2640 = extractvalue %dx.types.CBufRet.f32 %2638, 3
  %2641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2642 = extractvalue %dx.types.CBufRet.f32 %2641, 2
  %2643 = fmul fast float %2640, %2635
  %2644 = call float @dx.op.unary.f32(i32 7, float %2643)  ; Saturate(value)
  %2645 = fsub fast float 1.000000e+00, %2644
  %2646 = fmul fast float %2256, 5.000000e-01
  %2647 = fadd fast float %2646, 5.000000e-01
  %2648 = call float @dx.op.unary.f32(i32 7, float %2647)  ; Saturate(value)
  %2649 = fsub fast float 1.000000e+00, %2648
  %2650 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2645)  ; FMax(a,b)
  %2651 = fdiv fast float %2649, %2650
  %2652 = fsub fast float %2635, %2222
  %2653 = call float @dx.op.unary.f32(i32 6, float %2652)  ; FAbs(value)
  %2654 = fmul fast float %2653, %2639
  %2655 = call float @dx.op.unary.f32(i32 7, float %2651)  ; Saturate(value)
  %2656 = fsub fast float 1.000000e+00, %2654
  %2657 = fmul fast float %2656, %2655
  %2658 = fadd fast float %2657, %2654
  %2659 = fmul fast float %2642, %2635
  %2660 = call float @dx.op.unary.f32(i32 7, float %2659)  ; Saturate(value)
  %2661 = fsub fast float 1.000000e+00, %2658
  %2662 = fmul fast float %2661, %2660
  %2663 = fadd fast float %2662, %2658
  %2664 = call float @dx.op.unary.f32(i32 7, float %2663)  ; Saturate(value)
  %2665 = fadd fast float %2637, -1.000000e+00
  %2666 = select i1 %2636, float -1.000000e+00, float %2665
  %2667 = fmul fast float %2664, %2666
  %2668 = fadd fast float %2667, 1.000000e+00
  %2669 = fsub fast float -0.000000e+00, %2667
  %2670 = fmul fast float %2629, %2669
  %2671 = fmul fast float %2630, %2669
  %2672 = fmul fast float %2631, %2669
  br label %2673

; <label>:2673                                    ; preds = %2626, %2175
  %2674 = phi float [ %2627, %2626 ], [ 0.000000e+00, %2175 ]
  %2675 = phi float [ %2668, %2626 ], [ 1.000000e+00, %2175 ]
  %2676 = phi float [ %2670, %2626 ], [ 0.000000e+00, %2175 ]
  %2677 = phi float [ %2671, %2626 ], [ 0.000000e+00, %2175 ]
  %2678 = phi float [ %2672, %2626 ], [ 0.000000e+00, %2175 ]
  %2679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2680 = extractvalue %dx.types.CBufRet.f32 %2679, 1
  %2681 = fsub fast float 1.000000e+00, %2675
  %2682 = fmul fast float %2681, %2257
  %2683 = fmul fast float %2682, %2680
  %2684 = fsub fast float %2257, %2683
  br i1 %2250, label %2685, label %2714, !dx.controlflow.hints !126

; <label>:2685                                    ; preds = %2673
  %2686 = fmul fast float %2258, %2247
  %2687 = fadd fast float %2686, %2248
  %2688 = call float @dx.op.unary.f32(i32 7, float %2687)  ; Saturate(value)
  %2689 = fmul fast float %2229, %2684
  %2690 = fsub fast float -0.000000e+00, %2689
  %2691 = fmul fast float %2230, %2684
  %2692 = fsub fast float -0.000000e+00, %2691
  %2693 = call float @dx.op.unary.f32(i32 21, float %2690)  ; Exp(value)
  %2694 = call float @dx.op.unary.f32(i32 21, float %2692)  ; Exp(value)
  %2695 = call float @dx.op.binary.f32(i32 35, float %2237, float %2693)  ; FMax(a,b)
  %2696 = call float @dx.op.binary.f32(i32 35, float %2237, float %2694)  ; FMax(a,b)
  %2697 = fsub fast float %2696, %2695
  %2698 = fmul fast float %2697, %2688
  %2699 = fadd fast float %2698, %2695
  %2700 = call float @dx.op.unary.f32(i32 7, float %2699)  ; Saturate(value)
  %2701 = fsub fast float %2234, %2239
  %2702 = fsub fast float %2235, %2240
  %2703 = fsub fast float %2236, %2241
  %2704 = fmul fast float %2688, %2701
  %2705 = fmul fast float %2688, %2702
  %2706 = fmul fast float %2688, %2703
  %2707 = fadd fast float %2704, %2239
  %2708 = fadd fast float %2705, %2240
  %2709 = fadd fast float %2706, %2241
  %2710 = fsub fast float 1.000000e+00, %2700
  %2711 = fmul fast float %2710, %2707
  %2712 = fmul fast float %2710, %2708
  %2713 = fmul fast float %2710, %2709
  br label %2773

; <label>:2714                                    ; preds = %2673
  %2715 = fmul fast float %2684, %2246
  %2716 = call float @dx.op.unary.f32(i32 7, float %2715)  ; Saturate(value)
  %2717 = fsub fast float 2.000000e+00, %2716
  %2718 = fmul fast float %2716, 9.921875e-01
  %2719 = fmul fast float %2718, %2717
  %2720 = fadd fast float %2719, 3.906250e-03
  %2721 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %20, float %2720, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2722 = extractvalue %dx.types.ResRet.f32 %2721, 0
  %2723 = fsub fast float %2716, %2722
  %2724 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2723)  ; FMax(a,b)
  %2725 = fmul fast float %2232, %2222
  %2726 = call float @dx.op.unary.f32(i32 6, float %2725)  ; FAbs(value)
  %2727 = fcmp fast ogt float %2726, 0x3EB0C6F7A0000000
  br i1 %2727, label %2728, label %2734, !dx.controlflow.hints !127

; <label>:2728                                    ; preds = %2714
  %2729 = fmul fast float %2725, 0xBFF7154760000000
  %2730 = call float @dx.op.unary.f32(i32 21, float %2729)  ; Exp(value)
  %2731 = fsub fast float 1.000000e+00, %2730
  %2732 = fdiv fast float %2731, %2725
  %2733 = fmul fast float %2732, %2242
  br label %2734

; <label>:2734                                    ; preds = %2728, %2714
  %2735 = phi float [ %2733, %2728 ], [ %2242, %2714 ]
  %2736 = fadd fast float %2735, %2244
  %2737 = fmul fast float %2736, %2724
  %2738 = fmul fast float %2229, %2737
  %2739 = fsub fast float -0.000000e+00, %2738
  %2740 = fmul fast float %2230, %2737
  %2741 = fsub fast float -0.000000e+00, %2740
  %2742 = fmul fast float %2231, %2737
  %2743 = fsub fast float -0.000000e+00, %2742
  %2744 = call float @dx.op.unary.f32(i32 21, float %2739)  ; Exp(value)
  %2745 = call float @dx.op.unary.f32(i32 21, float %2741)  ; Exp(value)
  %2746 = call float @dx.op.unary.f32(i32 21, float %2743)  ; Exp(value)
  %2747 = fmul fast float %2258, %2258
  %2748 = fadd fast float %2747, 1.000000e+00
  %2749 = fmul fast float %2748, 0x3FAE8EC8A0000000
  %2750 = fmul fast float %2749, %2239
  %2751 = fmul fast float %2749, %2240
  %2752 = fmul fast float %2749, %2241
  %2753 = fmul fast float %2258, %2237
  %2754 = fsub fast float 1.000000e+00, %2753
  %2755 = fmul fast float %2237, %2237
  %2756 = fsub fast float 1.000000e+00, %2755
  %2757 = fmul fast float %2756, 0x3FB45F3060000000
  %2758 = fmul fast float %2754, %2754
  %2759 = fdiv fast float 1.000000e+00, %2758
  %2760 = fmul fast float %2757, %2759
  %2761 = fmul fast float %2760, %2234
  %2762 = fmul fast float %2760, %2235
  %2763 = fmul fast float %2760, %2236
  %2764 = fadd fast float %2761, %2750
  %2765 = fadd fast float %2762, %2751
  %2766 = fadd fast float %2763, %2752
  %2767 = fsub fast float 1.000000e+00, %2744
  %2768 = fsub fast float 1.000000e+00, %2745
  %2769 = fsub fast float 1.000000e+00, %2746
  %2770 = fmul fast float %2764, %2767
  %2771 = fmul fast float %2765, %2768
  %2772 = fmul fast float %2766, %2769
  br label %2773

; <label>:2773                                    ; preds = %2734, %2685
  %2774 = phi float [ %2711, %2685 ], [ %2770, %2734 ]
  %2775 = phi float [ %2712, %2685 ], [ %2771, %2734 ]
  %2776 = phi float [ %2713, %2685 ], [ %2772, %2734 ]
  %2777 = phi float [ %2700, %2685 ], [ %2744, %2734 ]
  %2778 = phi float [ %2700, %2685 ], [ %2745, %2734 ]
  %2779 = phi float [ %2700, %2685 ], [ %2746, %2734 ]
  br i1 %2266, label %2780, label %2978, !dx.controlflow.hints !128

; <label>:2780                                    ; preds = %2773
  %2781 = extractvalue %dx.types.CBufRet.f32 %2679, 0
  %2782 = fmul fast float %2781, %2681
  %2783 = fsub fast float %2676, %2774
  %2784 = fsub fast float %2677, %2775
  %2785 = fsub fast float %2678, %2776
  %2786 = fmul fast float %2782, %2783
  %2787 = fmul fast float %2782, %2784
  %2788 = fmul fast float %2782, %2785
  %2789 = fadd fast float %2786, %2774
  %2790 = fadd fast float %2787, %2775
  %2791 = fadd fast float %2788, %2776
  %2792 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2777)  ; FMax(a,b)
  %2793 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2778)  ; FMax(a,b)
  %2794 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2779)  ; FMax(a,b)
  %2795 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2675)  ; FMax(a,b)
  %2796 = call float @dx.op.binary.f32(i32 35, float %2674, float %2684)  ; FMax(a,b)
  %2797 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2796)  ; FMax(a,b)
  %2798 = fdiv fast float %2674, %2797
  %2799 = call float @dx.op.unary.f32(i32 7, float %2798)  ; Saturate(value)
  %2800 = fdiv fast float %2684, %2797
  %2801 = call float @dx.op.unary.f32(i32 7, float %2800)  ; Saturate(value)
  %2802 = fcmp fast une float %2795, 1.000000e+00
  br i1 %2802, label %2803, label %2816, !dx.controlflow.hints !129

; <label>:2803                                    ; preds = %2780
  %2804 = call float @dx.op.unary.f32(i32 23, float %2795)  ; Log(value)
  %2805 = fmul fast float %2804, 0x3FE62E4300000000
  %2806 = fmul fast float %2676, %2805
  %2807 = fsub fast float -0.000000e+00, %2806
  %2808 = fmul fast float %2677, %2805
  %2809 = fsub fast float -0.000000e+00, %2808
  %2810 = fmul fast float %2678, %2805
  %2811 = fsub fast float -0.000000e+00, %2810
  %2812 = fsub fast float 1.000000e+00, %2795
  %2813 = fdiv fast float %2807, %2812
  %2814 = fdiv fast float %2809, %2812
  %2815 = fdiv fast float %2811, %2812
  br label %2816

; <label>:2816                                    ; preds = %2803, %2780
  %2817 = phi float [ %2813, %2803 ], [ %2676, %2780 ]
  %2818 = phi float [ %2814, %2803 ], [ %2677, %2780 ]
  %2819 = phi float [ %2815, %2803 ], [ %2678, %2780 ]
  %2820 = phi float [ %2805, %2803 ], [ 0.000000e+00, %2780 ]
  %2821 = fcmp fast une float %2792, 1.000000e+00
  br i1 %2821, label %2822, label %2829, !dx.controlflow.hints !130

; <label>:2822                                    ; preds = %2816
  %2823 = call float @dx.op.unary.f32(i32 23, float %2792)  ; Log(value)
  %2824 = fmul fast float %2823, 0x3FE62E4300000000
  %2825 = fmul fast float %2789, %2824
  %2826 = fsub fast float -0.000000e+00, %2825
  %2827 = fsub fast float 1.000000e+00, %2792
  %2828 = fdiv fast float %2826, %2827
  br label %2829

; <label>:2829                                    ; preds = %2822, %2816
  %2830 = phi float [ %2828, %2822 ], [ %2789, %2816 ]
  %2831 = phi float [ %2824, %2822 ], [ 0.000000e+00, %2816 ]
  %2832 = fcmp fast une float %2793, 1.000000e+00
  br i1 %2832, label %2833, label %2840, !dx.controlflow.hints !130

; <label>:2833                                    ; preds = %2829
  %2834 = call float @dx.op.unary.f32(i32 23, float %2793)  ; Log(value)
  %2835 = fmul fast float %2834, 0x3FE62E4300000000
  %2836 = fmul fast float %2790, %2835
  %2837 = fsub fast float -0.000000e+00, %2836
  %2838 = fsub fast float 1.000000e+00, %2793
  %2839 = fdiv fast float %2837, %2838
  br label %2840

; <label>:2840                                    ; preds = %2833, %2829
  %2841 = phi float [ %2839, %2833 ], [ %2790, %2829 ]
  %2842 = phi float [ %2835, %2833 ], [ 0.000000e+00, %2829 ]
  %2843 = fcmp fast une float %2794, 1.000000e+00
  br i1 %2843, label %2844, label %2851, !dx.controlflow.hints !130

; <label>:2844                                    ; preds = %2840
  %2845 = call float @dx.op.unary.f32(i32 23, float %2794)  ; Log(value)
  %2846 = fmul fast float %2845, 0x3FE62E4300000000
  %2847 = fmul fast float %2791, %2846
  %2848 = fsub fast float -0.000000e+00, %2847
  %2849 = fsub fast float 1.000000e+00, %2794
  %2850 = fdiv fast float %2848, %2849
  br label %2851

; <label>:2851                                    ; preds = %2844, %2840
  %2852 = phi float [ %2850, %2844 ], [ %2791, %2840 ]
  %2853 = phi float [ %2846, %2844 ], [ 0.000000e+00, %2840 ]
  %2854 = fmul fast float %2817, %2801
  %2855 = fmul fast float %2818, %2801
  %2856 = fmul fast float %2819, %2801
  %2857 = fmul fast float %2820, %2801
  %2858 = fmul fast float %2830, %2799
  %2859 = fmul fast float %2841, %2799
  %2860 = fmul fast float %2852, %2799
  %2861 = fmul fast float %2831, %2799
  %2862 = fmul fast float %2842, %2799
  %2863 = fmul fast float %2853, %2799
  %2864 = fadd fast float %2858, %2854
  %2865 = fadd fast float %2859, %2855
  %2866 = fadd fast float %2860, %2856
  %2867 = fadd fast float %2861, %2857
  %2868 = fadd fast float %2862, %2857
  %2869 = fadd fast float %2863, %2857
  %2870 = fcmp fast une float %2867, 0.000000e+00
  br i1 %2870, label %2871, label %2878, !dx.controlflow.hints !131

; <label>:2871                                    ; preds = %2851
  %2872 = fmul fast float %2867, 0x3FF7154760000000
  %2873 = call float @dx.op.unary.f32(i32 21, float %2872)  ; Exp(value)
  %2874 = fsub fast float 1.000000e+00, %2873
  %2875 = fmul fast float %2864, %2874
  %2876 = fsub fast float -0.000000e+00, %2875
  %2877 = fdiv fast float %2876, %2867
  br label %2878

; <label>:2878                                    ; preds = %2871, %2851
  %2879 = phi float [ %2873, %2871 ], [ 1.000000e+00, %2851 ]
  %2880 = phi float [ %2877, %2871 ], [ %2864, %2851 ]
  %2881 = fcmp fast une float %2868, 0.000000e+00
  br i1 %2881, label %2882, label %2889, !dx.controlflow.hints !131

; <label>:2882                                    ; preds = %2878
  %2883 = fmul fast float %2868, 0x3FF7154760000000
  %2884 = call float @dx.op.unary.f32(i32 21, float %2883)  ; Exp(value)
  %2885 = fsub fast float 1.000000e+00, %2884
  %2886 = fmul fast float %2865, %2885
  %2887 = fsub fast float -0.000000e+00, %2886
  %2888 = fdiv fast float %2887, %2868
  br label %2889

; <label>:2889                                    ; preds = %2882, %2878
  %2890 = phi float [ %2884, %2882 ], [ 1.000000e+00, %2878 ]
  %2891 = phi float [ %2888, %2882 ], [ %2865, %2878 ]
  %2892 = fcmp fast une float %2869, 0.000000e+00
  br i1 %2892, label %2893, label %2900, !dx.controlflow.hints !131

; <label>:2893                                    ; preds = %2889
  %2894 = fmul fast float %2869, 0x3FF7154760000000
  %2895 = call float @dx.op.unary.f32(i32 21, float %2894)  ; Exp(value)
  %2896 = fsub fast float 1.000000e+00, %2895
  %2897 = fmul fast float %2866, %2896
  %2898 = fsub fast float -0.000000e+00, %2897
  %2899 = fdiv fast float %2898, %2869
  br label %2900

; <label>:2900                                    ; preds = %2893, %2889
  %2901 = phi float [ %2895, %2893 ], [ 1.000000e+00, %2889 ]
  %2902 = phi float [ %2899, %2893 ], [ %2866, %2889 ]
  %2903 = fcmp fast ogt float %2799, %2801
  br i1 %2903, label %2904, label %2924, !dx.controlflow.hints !132

; <label>:2904                                    ; preds = %2900
  %2905 = fsub fast float 1.000000e+00, %2801
  %2906 = fmul fast float %2817, %2905
  %2907 = fmul fast float %2818, %2905
  %2908 = fmul fast float %2819, %2905
  %2909 = fmul fast float %2820, %2905
  %2910 = fcmp fast une float %2909, 0.000000e+00
  br i1 %2910, label %2911, label %2962, !dx.controlflow.hints !133

; <label>:2911                                    ; preds = %2904
  %2912 = fmul fast float %2909, 0x3FF7154760000000
  %2913 = call float @dx.op.unary.f32(i32 21, float %2912)  ; Exp(value)
  %2914 = fsub fast float 1.000000e+00, %2913
  %2915 = fmul fast float %2906, %2914
  %2916 = fsub fast float -0.000000e+00, %2915
  %2917 = fmul fast float %2907, %2914
  %2918 = fsub fast float -0.000000e+00, %2917
  %2919 = fmul fast float %2908, %2914
  %2920 = fsub fast float -0.000000e+00, %2919
  %2921 = fdiv fast float %2916, %2909
  %2922 = fdiv fast float %2918, %2909
  %2923 = fdiv fast float %2920, %2909
  br label %2962

; <label>:2924                                    ; preds = %2900
  %2925 = fsub fast float 1.000000e+00, %2799
  %2926 = fmul fast float %2830, %2925
  %2927 = fmul fast float %2841, %2925
  %2928 = fmul fast float %2852, %2925
  %2929 = fmul fast float %2831, %2925
  %2930 = fmul fast float %2842, %2925
  %2931 = fmul fast float %2853, %2925
  %2932 = fcmp fast une float %2929, 0.000000e+00
  br i1 %2932, label %2933, label %2940, !dx.controlflow.hints !131

; <label>:2933                                    ; preds = %2924
  %2934 = fmul fast float %2929, 0x3FF7154760000000
  %2935 = call float @dx.op.unary.f32(i32 21, float %2934)  ; Exp(value)
  %2936 = fsub fast float 1.000000e+00, %2935
  %2937 = fmul fast float %2926, %2936
  %2938 = fsub fast float -0.000000e+00, %2937
  %2939 = fdiv fast float %2938, %2929
  br label %2940

; <label>:2940                                    ; preds = %2933, %2924
  %2941 = phi float [ %2939, %2933 ], [ %2926, %2924 ]
  %2942 = phi float [ %2935, %2933 ], [ 1.000000e+00, %2924 ]
  %2943 = fcmp fast une float %2930, 0.000000e+00
  br i1 %2943, label %2944, label %2951, !dx.controlflow.hints !131

; <label>:2944                                    ; preds = %2940
  %2945 = fmul fast float %2930, 0x3FF7154760000000
  %2946 = call float @dx.op.unary.f32(i32 21, float %2945)  ; Exp(value)
  %2947 = fsub fast float 1.000000e+00, %2946
  %2948 = fmul fast float %2927, %2947
  %2949 = fsub fast float -0.000000e+00, %2948
  %2950 = fdiv fast float %2949, %2930
  br label %2951

; <label>:2951                                    ; preds = %2944, %2940
  %2952 = phi float [ %2950, %2944 ], [ %2927, %2940 ]
  %2953 = phi float [ %2946, %2944 ], [ 1.000000e+00, %2940 ]
  %2954 = fcmp fast une float %2931, 0.000000e+00
  br i1 %2954, label %2955, label %2962, !dx.controlflow.hints !131

; <label>:2955                                    ; preds = %2951
  %2956 = fmul fast float %2931, 0x3FF7154760000000
  %2957 = call float @dx.op.unary.f32(i32 21, float %2956)  ; Exp(value)
  %2958 = fsub fast float 1.000000e+00, %2957
  %2959 = fmul fast float %2928, %2958
  %2960 = fsub fast float -0.000000e+00, %2959
  %2961 = fdiv fast float %2960, %2931
  br label %2962

; <label>:2962                                    ; preds = %2955, %2951, %2911, %2904
  %2963 = phi float [ %2961, %2955 ], [ %2923, %2911 ], [ %2908, %2904 ], [ %2928, %2951 ]
  %2964 = phi float [ %2952, %2955 ], [ %2922, %2911 ], [ %2907, %2904 ], [ %2952, %2951 ]
  %2965 = phi float [ %2941, %2955 ], [ %2921, %2911 ], [ %2906, %2904 ], [ %2941, %2951 ]
  %2966 = phi float [ %2957, %2955 ], [ %2913, %2911 ], [ 1.000000e+00, %2904 ], [ 1.000000e+00, %2951 ]
  %2967 = phi float [ %2953, %2955 ], [ %2913, %2911 ], [ 1.000000e+00, %2904 ], [ %2953, %2951 ]
  %2968 = phi float [ %2942, %2955 ], [ %2913, %2911 ], [ 1.000000e+00, %2904 ], [ %2942, %2951 ]
  %2969 = fmul fast float %2968, %2880
  %2970 = fmul fast float %2967, %2891
  %2971 = fmul fast float %2966, %2902
  %2972 = fadd fast float %2969, %2965
  %2973 = fadd fast float %2970, %2964
  %2974 = fadd fast float %2971, %2963
  %2975 = fmul fast float %2968, %2879
  %2976 = fmul fast float %2967, %2890
  %2977 = fmul fast float %2966, %2901
  br label %2978

; <label>:2978                                    ; preds = %2962, %2773
  %2979 = phi float [ %2779, %2773 ], [ %2977, %2962 ]
  %2980 = phi float [ %2778, %2773 ], [ %2976, %2962 ]
  %2981 = phi float [ %2777, %2773 ], [ %2975, %2962 ]
  %2982 = phi float [ %2776, %2773 ], [ %2974, %2962 ]
  %2983 = phi float [ %2775, %2773 ], [ %2973, %2962 ]
  %2984 = phi float [ %2774, %2773 ], [ %2972, %2962 ]
  %2985 = fmul fast float %2981, %2122
  %2986 = fmul fast float %2980, %2123
  %2987 = fmul fast float %2979, %2124
  %2988 = fsub fast float 1.000000e+00, %2185
  %2989 = fmul fast float %2984, %2988
  %2990 = fmul fast float %2983, %2988
  %2991 = fmul fast float %2982, %2988
  %2992 = fadd fast float %2989, %2985
  %2993 = fadd fast float %2990, %2986
  %2994 = fadd fast float %2991, %2987
  %2995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2996 = extractvalue %dx.types.CBufRet.f32 %2995, 2
  %2997 = fmul fast float %2996, %2195
  %2998 = call float @dx.op.unary.f32(i32 7, float %2997)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %24, i32 %25, i32 undef, float %2185, float %2185, float %2185, float %2185, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3000 = extractvalue %dx.types.CBufRet.f32 %2999, 0
  %3001 = fmul fast float %3000, %2992
  %3002 = fmul fast float %3000, %2993
  %3003 = fmul fast float %3000, %2994
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %24, i32 %25, i32 undef, float %3001, float %3002, float %3003, float %3001, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %24, i32 %25, i32 undef, float %2998, float %2998, float %2998, float %2998, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!35 = !{void ()* @cs_fog_raymarching_air_clouds_particles_brfog, !"cs_fog_raymarching_air_clouds_particles_brfog", null, !4, !36}
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
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.unroll.disable"}
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

