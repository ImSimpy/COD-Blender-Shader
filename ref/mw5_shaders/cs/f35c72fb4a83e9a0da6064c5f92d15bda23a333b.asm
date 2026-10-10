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
; shader hash: 444bcc90a7c09a9b1505633ce59b471e
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
;                                   texture     f32          3d      T1             t1     1
;                                   texture     f32          3d      T2             t2     1
;                                   texture     f32          2d      T3             t8     1
;                                   texture     f32          2d      T4             t9     1
;                                   texture     f32          2d      T5            t18     1
;                                   texture  struct         r/o      T6            t25     1
;                                   texture     f32          1d      T7            t14     1
;                                   texture     f32          2d      T8            t13     1
;                                   texture     f32          2d      T9             t0     1
;                                   texture    byte         r/o     T10            t17     1
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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

define void @cs_fog_raymarching_air_clouds_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %24 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %25 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %26 = alloca [3 x float], align 4
  %27 = alloca [3 x float], align 4
  %28 = add i32 %24, %23
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 1
  %31 = add i32 %28, %30
  %32 = lshr i32 %31, 1
  %33 = and i32 %32, 1
  %34 = and i32 %31, 1
  %35 = xor i32 %33, %34
  %36 = shl i32 %23, 1
  %37 = shl i32 %24, 1
  %38 = or i32 %35, %36
  %39 = or i32 %33, %37
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = extractvalue %dx.types.ResRet.i32 %42, 1
  %45 = extractvalue %dx.types.ResRet.i32 %42, 2
  %46 = extractvalue %dx.types.ResRet.i32 %42, 3
  %47 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.i32 %47, 0
  %49 = extractvalue %dx.types.ResRet.i32 %47, 1
  %50 = extractvalue %dx.types.ResRet.i32 %47, 2
  %51 = extractvalue %dx.types.ResRet.i32 %47, 3
  %52 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %53 = extractvalue %dx.types.ResRet.i32 %52, 0
  %54 = extractvalue %dx.types.ResRet.i32 %52, 1
  %55 = extractvalue %dx.types.ResRet.i32 %52, 2
  %56 = extractvalue %dx.types.ResRet.i32 %52, 3
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 2
  %59 = fmul fast float %58, %58
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %63 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %64 = fmul fast float %63, 0x3FF17B1420000000
  %65 = icmp eq i32 %25, 0
  br i1 %65, label %66, label %207, !dx.controlflow.hints !37

; <label>:66                                      ; preds = %0
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 3
  %71 = extractvalue %dx.types.ResRet.i32 %40, 1
  %72 = and i32 %71, 65535
  %73 = call float @dx.op.legacyF16ToF32(i32 131, i32 %72)  ; LegacyF16ToF32(value)
  %74 = lshr i32 %41, 16
  %75 = call float @dx.op.legacyF16ToF32(i32 131, i32 %74)  ; LegacyF16ToF32(value)
  %76 = and i32 %41, 65535
  %77 = call float @dx.op.legacyF16ToF32(i32 131, i32 %76)  ; LegacyF16ToF32(value)
  %78 = lshr i32 %46, 16
  %79 = call float @dx.op.legacyF16ToF32(i32 131, i32 %78)  ; LegacyF16ToF32(value)
  %80 = and i32 %46, 65535
  %81 = call float @dx.op.legacyF16ToF32(i32 131, i32 %80)  ; LegacyF16ToF32(value)
  %82 = lshr i32 %45, 16
  %83 = call float @dx.op.legacyF16ToF32(i32 131, i32 %82)  ; LegacyF16ToF32(value)
  %84 = and i32 %45, 65535
  %85 = call float @dx.op.legacyF16ToF32(i32 131, i32 %84)  ; LegacyF16ToF32(value)
  %86 = lshr i32 %44, 16
  %87 = call float @dx.op.legacyF16ToF32(i32 131, i32 %86)  ; LegacyF16ToF32(value)
  %88 = lshr i32 %43, 16
  %89 = call float @dx.op.legacyF16ToF32(i32 131, i32 %88)  ; LegacyF16ToF32(value)
  %90 = and i32 %43, 65535
  %91 = call float @dx.op.legacyF16ToF32(i32 131, i32 %90)  ; LegacyF16ToF32(value)
  %92 = lshr i32 %51, 16
  %93 = call float @dx.op.legacyF16ToF32(i32 131, i32 %92)  ; LegacyF16ToF32(value)
  %94 = and i32 %51, 65535
  %95 = call float @dx.op.legacyF16ToF32(i32 131, i32 %94)  ; LegacyF16ToF32(value)
  %96 = lshr i32 %50, 16
  %97 = call float @dx.op.legacyF16ToF32(i32 131, i32 %96)  ; LegacyF16ToF32(value)
  %98 = and i32 %50, 65535
  %99 = call float @dx.op.legacyF16ToF32(i32 131, i32 %98)  ; LegacyF16ToF32(value)
  %100 = lshr i32 %49, 16
  %101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %100)  ; LegacyF16ToF32(value)
  %102 = and i32 %49, 65535
  %103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %102)  ; LegacyF16ToF32(value)
  %104 = and i32 %48, 65535
  %105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %104)  ; LegacyF16ToF32(value)
  %106 = lshr i32 %56, 16
  %107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %106)  ; LegacyF16ToF32(value)
  %108 = and i32 %56, 65535
  %109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %108)  ; LegacyF16ToF32(value)
  %110 = lshr i32 %55, 16
  %111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %110)  ; LegacyF16ToF32(value)
  %112 = and i32 %55, 65535
  %113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %112)  ; LegacyF16ToF32(value)
  %114 = lshr i32 %54, 16
  %115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %114)  ; LegacyF16ToF32(value)
  %116 = and i32 %54, 65535
  %117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %116)  ; LegacyF16ToF32(value)
  %118 = lshr i32 %53, 16
  %119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %118)  ; LegacyF16ToF32(value)
  %120 = and i32 %44, 65535
  %121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %120)  ; LegacyF16ToF32(value)
  %122 = lshr i32 %48, 16
  %123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %122)  ; LegacyF16ToF32(value)
  %124 = and i32 %53, 65535
  %125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %124)  ; LegacyF16ToF32(value)
  %126 = fmul fast float %121, 0x3FD20DD760000000
  %127 = fmul fast float %63, %58
  %128 = fmul fast float %127, %85
  %129 = fmul fast float %63, %63
  %130 = fmul fast float %129, 0x3FEE471020000000
  %131 = fadd fast float %130, 0xBFD42F6020000000
  %132 = fmul fast float %77, %131
  %133 = fmul fast float %83, %61
  %134 = fmul fast float %87, %62
  %135 = fmul fast float %61, %59
  %136 = fmul fast float %135, %64
  %137 = fmul fast float %136, %75
  %138 = fsub fast float -0.000000e+00, %137
  %139 = fmul fast float %62, %59
  %140 = fmul fast float %139, %64
  %141 = fmul fast float %140, %79
  %142 = fmul fast float %61, %61
  %143 = fmul fast float %62, %62
  %144 = fsub fast float %142, %143
  %145 = fmul fast float %144, 0x3FE17B1420000000
  %146 = fmul fast float %145, %73
  %147 = fmul fast float %62, 0x3FF17B1420000000
  %148 = fmul fast float %147, %61
  %149 = fmul fast float %148, %81
  %150 = fadd fast float %134, %133
  %151 = fmul fast float %150, %58
  %152 = fsub fast float %151, %128
  %153 = fmul fast float %152, 0x3FDF454380000000
  %154 = fadd fast float %132, %146
  %155 = fadd fast float %154, %149
  %156 = fmul fast float %155, %59
  %157 = fsub fast float %138, %141
  %158 = fadd fast float %157, %126
  %159 = fadd fast float %158, %153
  %160 = fadd fast float %159, %156
  %161 = fmul fast float %68, %70
  %162 = fmul fast float %161, %160
  %163 = fmul fast float %123, 0x3FD20DD760000000
  %164 = fmul fast float %127, %101
  %165 = fmul fast float %93, %131
  %166 = fmul fast float %99, %61
  %167 = fmul fast float %103, %62
  %168 = fmul fast float %136, %91
  %169 = fsub fast float -0.000000e+00, %168
  %170 = fmul fast float %140, %95
  %171 = fmul fast float %145, %89
  %172 = fmul fast float %148, %97
  %173 = fadd fast float %167, %166
  %174 = fmul fast float %173, %58
  %175 = fsub fast float %174, %164
  %176 = fmul fast float %175, 0x3FDF454380000000
  %177 = fadd fast float %165, %171
  %178 = fadd fast float %177, %172
  %179 = fmul fast float %178, %59
  %180 = fsub fast float %169, %170
  %181 = fadd fast float %180, %163
  %182 = fadd fast float %181, %176
  %183 = fadd fast float %182, %179
  %184 = fmul fast float %161, %183
  %185 = fmul fast float %125, 0x3FD20DD760000000
  %186 = fmul fast float %127, %117
  %187 = fmul fast float %109, %131
  %188 = fmul fast float %115, %61
  %189 = fmul fast float %119, %62
  %190 = fmul fast float %136, %107
  %191 = fsub fast float -0.000000e+00, %190
  %192 = fmul fast float %140, %111
  %193 = fmul fast float %145, %105
  %194 = fmul fast float %148, %113
  %195 = fadd fast float %189, %188
  %196 = fmul fast float %195, %58
  %197 = fsub fast float %196, %186
  %198 = fmul fast float %197, 0x3FDF454380000000
  %199 = fadd fast float %187, %193
  %200 = fadd fast float %199, %194
  %201 = fmul fast float %200, %59
  %202 = fsub fast float %191, %192
  %203 = fadd fast float %202, %185
  %204 = fadd fast float %203, %198
  %205 = fadd fast float %204, %201
  %206 = fmul fast float %161, %205
  store float %206, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  store float %184, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  store float %162, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  br label %207

; <label>:207                                     ; preds = %66, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %208 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  %209 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  %210 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  %211 = uitofp i32 %38 to float
  %212 = uitofp i32 %39 to float
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %215 = fmul fast float %214, 0x3FE3C6EF40000000
  %216 = frem fast float %211, 2.560000e+02
  %217 = frem fast float %212, 2.560000e+02
  %218 = fptoui float %216 to i32
  %219 = fptoui float %217 to i32
  %220 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %218, i32 %219, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 1
  %222 = extractvalue %dx.types.ResRet.f32 %220, 2
  %223 = extractvalue %dx.types.ResRet.f32 %220, 3
  %224 = fadd fast float %221, %215
  %225 = fadd fast float %222, %215
  %226 = fadd fast float %223, %215
  %227 = call float @dx.op.unary.f32(i32 22, float %224)  ; Frc(value)
  %228 = call float @dx.op.unary.f32(i32 22, float %225)  ; Frc(value)
  %229 = call float @dx.op.unary.f32(i32 22, float %226)  ; Frc(value)
  %230 = fadd fast float %228, %211
  %231 = fadd fast float %229, %212
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %234 = extractvalue %dx.types.CBufRet.f32 %232, 3
  %235 = fmul fast float %233, %230
  %236 = fmul fast float %234, %231
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 0
  %239 = fsub fast float -0.000000e+00, %238
  %240 = extractvalue %dx.types.CBufRet.f32 %237, 1
  %241 = fsub fast float -0.000000e+00, %240
  %242 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 1
  %245 = fmul fast float %235, 2.000000e+00
  %246 = fmul fast float %236, 2.000000e+00
  %247 = fsub fast float 1.000000e+00, %245
  %248 = fsub fast float 1.000000e+00, %246
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 0
  %251 = extractvalue %dx.types.CBufRet.f32 %249, 1
  %252 = extractvalue %dx.types.CBufRet.f32 %249, 2
  %253 = fmul fast float %250, %247
  %254 = fmul fast float %251, %247
  %255 = fmul fast float %252, %247
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 0
  %258 = extractvalue %dx.types.CBufRet.f32 %256, 1
  %259 = extractvalue %dx.types.CBufRet.f32 %256, 2
  %260 = fmul fast float %257, %248
  %261 = fmul fast float %258, %248
  %262 = fmul fast float %259, %248
  %263 = fadd fast float %260, %253
  %264 = fadd fast float %261, %254
  %265 = fadd fast float %262, %255
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 0
  %268 = extractvalue %dx.types.CBufRet.f32 %266, 1
  %269 = extractvalue %dx.types.CBufRet.f32 %266, 2
  %270 = fadd fast float %263, %267
  %271 = fadd fast float %264, %268
  %272 = fadd fast float %265, %269
  %273 = fmul fast float %270, %244
  %274 = fmul fast float %271, %244
  %275 = fmul fast float %272, %244
  %276 = fmul fast float %273, %273
  %277 = fmul fast float %274, %274
  %278 = fadd fast float %276, %277
  %279 = fmul fast float %275, %275
  %280 = fadd fast float %278, %279
  %281 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %282 = fdiv fast float 1.000000e+00, %281
  %283 = fmul fast float %273, %282
  %284 = fmul fast float %274, %282
  %285 = fmul fast float %275, %282
  %286 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %38, i32 %39, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = fcmp fast ogt float %287, -1.000000e+00
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 1
  %291 = select i1 %288, float %290, float 1.000000e+00
  %292 = fadd fast float %287, 1.000000e+00
  %293 = fmul fast float %291, %292
  %294 = call float @dx.op.unary.f32(i32 6, float %293)  ; FAbs(value)
  %295 = fdiv fast float 1.000000e+00, %244
  %296 = fmul fast float %295, %281
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %299 = fmul fast float %298, %296
  %300 = fmul fast float %296, %294
  %301 = extractvalue %dx.types.CBufRet.f32 %289, 3
  %302 = fcmp fast oge float %294, %301
  %303 = call float @dx.op.binary.f32(i32 36, float %300, float %299)  ; FMin(a,b)
  %304 = select i1 %302, float %299, float %303
  %305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.f32 %305, 3
  %307 = fsub fast float %306, %242
  %308 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %239, float %241, float %307)  ; Dot3(ax,ay,az,bx,by,bz)
  %309 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %283, float %284, float %285)  ; Dot3(ax,ay,az,bx,by,bz)
  %310 = fdiv fast float 1.000000e+00, %309
  %311 = fmul fast float %310, %308
  %312 = fcmp fast olt float %311, 0.000000e+00
  %313 = fcmp fast ogt float %285, 0.000000e+00
  %314 = and i1 %313, %312
  br i1 %314, label %319, label %315, !dx.controlflow.hints !38

; <label>:315                                     ; preds = %207
  %316 = fcmp fast olt float %285, 0.000000e+00
  br i1 %316, label %317, label %319, !dx.controlflow.hints !39

; <label>:317                                     ; preds = %315
  %318 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %311)  ; FMax(a,b)
  br label %319

; <label>:319                                     ; preds = %317, %315, %207
  %320 = phi float [ 0.000000e+00, %207 ], [ %318, %317 ], [ 0.000000e+00, %315 ]
  %321 = phi float [ 0.000000e+00, %207 ], [ 0x47EFFFFFE0000000, %317 ], [ %311, %315 ]
  %322 = fcmp fast oeq float %321, 0.000000e+00
  br i1 %322, label %326, label %323, !dx.controlflow.hints !40

; <label>:323                                     ; preds = %319
  %324 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %320)  ; FMin(a,b)
  %325 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %321)  ; FMax(a,b)
  br label %326

; <label>:326                                     ; preds = %323, %319
  %327 = phi i32 [ 1, %323 ], [ 0, %319 ]
  %328 = phi float [ %325, %323 ], [ -1.000000e+00, %319 ]
  %329 = phi float [ %324, %323 ], [ 0x47EFFFFFE0000000, %319 ]
  %330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.i32 %330, 3
  %332 = icmp eq i32 %331, 0
  %333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.f32 %333, 2
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 2
  %337 = fsub fast float %334, %242
  %338 = fadd fast float %337, %336
  br i1 %332, label %346, label %339, !dx.controlflow.hints !41

; <label>:339                                     ; preds = %326
  %340 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %239, float %241, float %338)  ; Dot3(ax,ay,az,bx,by,bz)
  %341 = fmul fast float %310, %340
  %342 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %239, float %241, float %337)  ; Dot3(ax,ay,az,bx,by,bz)
  %343 = fmul fast float %310, %342
  %344 = call float @dx.op.binary.f32(i32 36, float %341, float %343)  ; FMin(a,b)
  %345 = call float @dx.op.binary.f32(i32 35, float %341, float %343)  ; FMax(a,b)
  br label %379

; <label>:346                                     ; preds = %326
  %347 = fdiv fast float 1.000000e+00, %283
  %348 = fdiv fast float 1.000000e+00, %284
  %349 = fdiv fast float 1.000000e+00, %285
  %350 = extractvalue %dx.types.CBufRet.f32 %333, 0
  %351 = extractvalue %dx.types.CBufRet.f32 %333, 1
  %352 = extractvalue %dx.types.CBufRet.f32 %335, 0
  %353 = extractvalue %dx.types.CBufRet.f32 %335, 1
  %354 = fsub fast float %350, %238
  %355 = fmul fast float %354, %347
  %356 = fadd fast float %354, %352
  %357 = fmul fast float %356, %347
  %358 = call float @dx.op.binary.f32(i32 36, float %355, float %357)  ; FMin(a,b)
  %359 = call float @dx.op.binary.f32(i32 35, float %355, float %357)  ; FMax(a,b)
  %360 = fsub fast float %351, %240
  %361 = fmul fast float %360, %348
  %362 = fadd fast float %360, %353
  %363 = fmul fast float %362, %348
  %364 = call float @dx.op.binary.f32(i32 36, float %361, float %363)  ; FMin(a,b)
  %365 = call float @dx.op.binary.f32(i32 35, float %358, float %364)  ; FMax(a,b)
  %366 = call float @dx.op.binary.f32(i32 35, float %361, float %363)  ; FMax(a,b)
  %367 = call float @dx.op.binary.f32(i32 36, float %359, float %366)  ; FMin(a,b)
  %368 = fmul fast float %337, %349
  %369 = fmul fast float %338, %349
  %370 = call float @dx.op.binary.f32(i32 36, float %368, float %369)  ; FMin(a,b)
  %371 = call float @dx.op.binary.f32(i32 35, float %365, float %370)  ; FMax(a,b)
  %372 = call float @dx.op.binary.f32(i32 35, float %368, float %369)  ; FMax(a,b)
  %373 = call float @dx.op.binary.f32(i32 36, float %367, float %372)  ; FMin(a,b)
  %374 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %371)  ; FMax(a,b)
  %375 = fcmp fast ult float %373, %374
  br i1 %375, label %379, label %376, !dx.controlflow.hints !42

; <label>:376                                     ; preds = %346
  %377 = call float @dx.op.binary.f32(i32 36, float %371, float %373)  ; FMin(a,b)
  %378 = call float @dx.op.binary.f32(i32 35, float %371, float %373)  ; FMax(a,b)
  br label %379

; <label>:379                                     ; preds = %376, %346, %339
  %380 = phi float [ %344, %339 ], [ %377, %376 ], [ 0.000000e+00, %346 ]
  %381 = phi float [ %345, %339 ], [ %378, %376 ], [ 0.000000e+00, %346 ]
  %382 = fcmp fast oeq float %381, 0.000000e+00
  br i1 %382, label %386, label %383, !dx.controlflow.hints !43

; <label>:383                                     ; preds = %379
  %384 = call float @dx.op.binary.f32(i32 36, float %329, float %380)  ; FMin(a,b)
  %385 = call float @dx.op.binary.f32(i32 35, float %328, float %381)  ; FMax(a,b)
  br label %386

; <label>:386                                     ; preds = %383, %379
  %387 = phi i32 [ 1, %383 ], [ 0, %379 ]
  %388 = phi float [ %385, %383 ], [ %328, %379 ]
  %389 = phi float [ %384, %383 ], [ %329, %379 ]
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 3
  %392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %393 = extractvalue %dx.types.CBufRet.f32 %392, 0
  %394 = fsub fast float %391, %242
  %395 = fadd fast float %394, %393
  %396 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %239, float %241, float %395)  ; Dot3(ax,ay,az,bx,by,bz)
  %397 = fmul fast float %310, %396
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 2
  %400 = fsub fast float %399, %242
  %401 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %239, float %241, float %400)  ; Dot3(ax,ay,az,bx,by,bz)
  %402 = fmul fast float %310, %401
  %403 = call float @dx.op.binary.f32(i32 36, float %397, float %402)  ; FMin(a,b)
  %404 = call float @dx.op.binary.f32(i32 35, float %397, float %402)  ; FMax(a,b)
  %405 = call float @dx.op.binary.f32(i32 36, float %389, float %403)  ; FMin(a,b)
  %406 = call float @dx.op.binary.f32(i32 35, float %388, float %404)  ; FMax(a,b)
  %407 = fdiv fast float 1.000000e+00, %283
  %408 = fdiv fast float 1.000000e+00, %284
  %409 = fdiv fast float 1.000000e+00, %285
  %410 = call float @dx.op.binary.f32(i32 36, float %304, float %406)  ; FMin(a,b)
  %411 = call float @dx.op.binary.f32(i32 35, float %281, float %405)  ; FMax(a,b)
  %412 = extractvalue %dx.types.CBufRet.f32 %305, 0
  %413 = fmul fast float %227, 2.000000e+00
  %414 = fadd fast float %413, -1.000000e+00
  %415 = fmul fast float %412, %414
  %416 = fadd fast float %415, %411
  %417 = fcmp fast olt float %416, %410
  %418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.f32 %418, 2
  %420 = fcmp fast olt float %419, 1.000000e+00
  %421 = and i1 %420, %417
  br i1 %421, label %422, label %1668

; <label>:422                                     ; preds = %386
  %423 = fmul fast float %416, %285
  %424 = fadd fast float %423, %242
  %425 = fmul fast float %416, %284
  %426 = fadd fast float %425, %240
  %427 = fmul fast float %416, %283
  %428 = fadd fast float %427, %238
  br label %429

; <label>:429                                     ; preds = %1640, %422
  %430 = phi float [ %1642, %1640 ], [ undef, %422 ]
  %431 = phi float [ %1643, %1640 ], [ undef, %422 ]
  %432 = phi float [ %1644, %1640 ], [ undef, %422 ]
  %433 = phi float [ %1645, %1640 ], [ undef, %422 ]
  %434 = phi float [ %560, %1640 ], [ undef, %422 ]
  %435 = phi float [ %561, %1640 ], [ undef, %422 ]
  %436 = phi float [ %562, %1640 ], [ undef, %422 ]
  %437 = phi float [ %563, %1640 ], [ undef, %422 ]
  %438 = phi float [ %1646, %1640 ], [ 0.000000e+00, %422 ]
  %439 = phi float [ %1647, %1640 ], [ 1.000000e+00, %422 ]
  %440 = phi float [ %1648, %1640 ], [ 0.000000e+00, %422 ]
  %441 = phi float [ %1649, %1640 ], [ 0.000000e+00, %422 ]
  %442 = phi float [ %1650, %1640 ], [ 0.000000e+00, %422 ]
  %443 = phi float [ %1660, %1640 ], [ %428, %422 ]
  %444 = phi float [ %1661, %1640 ], [ %426, %422 ]
  %445 = phi float [ %1662, %1640 ], [ %424, %422 ]
  %446 = phi float [ %1641, %1640 ], [ %416, %422 ]
  %447 = phi i32 [ %565, %1640 ], [ 10, %422 ]
  %448 = phi float [ %1651, %1640 ], [ 0.000000e+00, %422 ]
  %449 = phi float [ %1652, %1640 ], [ 0.000000e+00, %422 ]
  %450 = phi float [ %1653, %1640 ], [ 0.000000e+00, %422 ]
  %451 = phi float [ %1654, %1640 ], [ 0.000000e+00, %422 ]
  %452 = phi float [ %1655, %1640 ], [ 0.000000e+00, %422 ]
  %453 = phi i32 [ %1656, %1640 ], [ 0, %422 ]
  %454 = fsub fast float -0.000000e+00, %444
  %455 = fsub fast float -0.000000e+00, %443
  %456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %457 = extractvalue %dx.types.CBufRet.f32 %456, 0
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %460 = extractvalue %dx.types.CBufRet.f32 %458, 1
  %461 = fsub fast float %443, %459
  %462 = fsub fast float %444, %460
  %463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %464 = extractvalue %dx.types.CBufRet.f32 %463, 2
  %465 = extractvalue %dx.types.CBufRet.f32 %463, 3
  %466 = fmul fast float %461, %464
  %467 = fmul fast float %462, %465
  %468 = call float @dx.op.binary.f32(i32 36, float %466, float %467)  ; FMin(a,b)
  %469 = fcmp fast olt float %468, 0.000000e+00
  %470 = call float @dx.op.binary.f32(i32 35, float %466, float %467)  ; FMax(a,b)
  %471 = fcmp fast ogt float %470, 1.000000e+00
  %472 = or i1 %469, %471
  %473 = extractvalue %dx.types.CBufRet.f32 %458, 2
  %474 = fcmp fast olt float %445, %473
  %475 = or i1 %472, %474
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 3
  %478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.f32 %478, 0
  %480 = fadd fast float %479, %477
  %481 = fcmp fast ogt float %445, %480
  %482 = or i1 %475, %481
  br i1 %482, label %483, label %512, !dx.controlflow.hints !44

; <label>:483                                     ; preds = %429
  %484 = extractvalue %dx.types.CBufRet.f32 %463, 0
  %485 = extractvalue %dx.types.CBufRet.f32 %463, 1
  %486 = fsub fast float %459, %443
  %487 = fmul fast float %486, %407
  %488 = fadd fast float %486, %484
  %489 = fmul fast float %488, %407
  %490 = call float @dx.op.binary.f32(i32 36, float %487, float %489)  ; FMin(a,b)
  %491 = call float @dx.op.binary.f32(i32 35, float %487, float %489)  ; FMax(a,b)
  %492 = fsub fast float %460, %444
  %493 = fmul fast float %492, %408
  %494 = fadd fast float %492, %485
  %495 = fmul fast float %494, %408
  %496 = call float @dx.op.binary.f32(i32 36, float %493, float %495)  ; FMin(a,b)
  %497 = call float @dx.op.binary.f32(i32 35, float %490, float %496)  ; FMax(a,b)
  %498 = call float @dx.op.binary.f32(i32 35, float %493, float %495)  ; FMax(a,b)
  %499 = call float @dx.op.binary.f32(i32 36, float %491, float %498)  ; FMin(a,b)
  %500 = fsub fast float %473, %445
  %501 = fmul fast float %500, %409
  %502 = fsub fast float %477, %445
  %503 = fadd fast float %502, %479
  %504 = fmul fast float %503, %409
  %505 = call float @dx.op.binary.f32(i32 36, float %501, float %504)  ; FMin(a,b)
  %506 = call float @dx.op.binary.f32(i32 35, float %497, float %505)  ; FMax(a,b)
  %507 = call float @dx.op.binary.f32(i32 35, float %501, float %504)  ; FMax(a,b)
  %508 = call float @dx.op.binary.f32(i32 36, float %499, float %507)  ; FMin(a,b)
  %509 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %506)  ; FMax(a,b)
  %510 = fcmp fast oge float %508, %509
  %511 = select i1 %510, float %506, float 1.000000e+07
  br label %558

; <label>:512                                     ; preds = %429
  %513 = fsub fast float 1.000000e+00, %467
  %514 = icmp eq i32 %447, 0
  br i1 %514, label %543, label %515

; <label>:515                                     ; preds = %512
  br label %516

; <label>:516                                     ; preds = %539, %515
  %517 = phi i32 [ %540, %539 ], [ %447, %515 ]
  %518 = uitofp i32 %517 to float
  %519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %20, float %466, float %513, float undef, float undef, i32 0, i32 0, i32 undef, float %518)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 0
  %521 = extractvalue %dx.types.ResRet.f32 %519, 1
  %522 = extractvalue %dx.types.ResRet.f32 %519, 2
  %523 = fcmp fast oeq float %520, 0.000000e+00
  %524 = fcmp ule float %445, %522
  %525 = fcmp uge float %445, %521
  %526 = or i1 %525, %524
  %527 = or i1 %523, %526
  br i1 %527, label %528, label %539, !dx.controlflow.hints !45

; <label>:528                                     ; preds = %516
  %529 = extractvalue %dx.types.ResRet.f32 %519, 3
  %530 = extractvalue %dx.types.CBufRet.f32 %463, 0
  %531 = and i32 %517, 31
  %532 = lshr i32 1024, %531
  %533 = uitofp i32 %532 to float
  %534 = fdiv fast float %530, %533
  %535 = add i32 %517, 1
  %536 = uitofp i32 %535 to float
  %537 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %536)  ; FMin(a,b)
  %538 = fptosi float %537 to i32
  br label %558

; <label>:539                                     ; preds = %516
  %540 = add i32 %517, -1
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %542, label %516, !llvm.loop !46

; <label>:542                                     ; preds = %539
  br label %543

; <label>:543                                     ; preds = %542, %512
  %544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %19, float %466, float %513, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = extractvalue %dx.types.ResRet.f32 %544, 1
  %547 = extractvalue %dx.types.ResRet.f32 %544, 2
  %548 = extractvalue %dx.types.ResRet.f32 %544, 3
  %549 = extractvalue %dx.types.CBufRet.f32 %463, 0
  %550 = fmul fast float %549, 9.765625e-04
  %551 = fcmp fast oeq float %545, 0.000000e+00
  %552 = fcmp ule float %445, %547
  %553 = fcmp uge float %445, %546
  %554 = or i1 %553, %552
  %555 = or i1 %551, %554
  %556 = zext i1 %555 to i32
  %557 = xor i32 %556, 1
  br label %558

; <label>:558                                     ; preds = %543, %528, %483
  %559 = phi float [ %511, %483 ], [ %534, %528 ], [ %550, %543 ]
  %560 = phi float [ %434, %483 ], [ %520, %528 ], [ %545, %543 ]
  %561 = phi float [ %435, %483 ], [ %521, %528 ], [ %546, %543 ]
  %562 = phi float [ %436, %483 ], [ %522, %528 ], [ %547, %543 ]
  %563 = phi float [ %437, %483 ], [ %529, %528 ], [ %548, %543 ]
  %564 = phi i32 [ 0, %483 ], [ 0, %528 ], [ %557, %543 ]
  %565 = phi i32 [ 10, %483 ], [ %538, %528 ], [ 1, %543 ]
  %566 = icmp eq i32 %564, 0
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 2
  %569 = call float @dx.op.binary.f32(i32 35, float %559, float %568)  ; FMax(a,b)
  %570 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %569)  ; FMin(a,b)
  %571 = icmp eq i32 %327, 0
  br i1 %571, label %584, label %572, !dx.controlflow.hints !48

; <label>:572                                     ; preds = %558
  %573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %574 = extractvalue %dx.types.CBufRet.f32 %573, 3
  %575 = extractvalue %dx.types.CBufRet.f32 %573, 2
  %576 = fmul fast float %574, %446
  %577 = fdiv fast float %576, %410
  %578 = fadd fast float %577, 1.000000e+00
  %579 = call float @dx.op.unary.f32(i32 23, float %578)  ; Log(value)
  %580 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %579)  ; FMin(a,b)
  %581 = fmul fast float %575, %410
  %582 = fmul fast float %581, %580
  %583 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %582)  ; FMin(a,b)
  br label %584

; <label>:584                                     ; preds = %572, %558
  %585 = phi float [ %583, %572 ], [ 0x47EFFFFFE0000000, %558 ]
  %586 = icmp eq i32 %387, 0
  br i1 %586, label %642, label %587, !dx.controlflow.hints !49

; <label>:587                                     ; preds = %584
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.f32 %588, 0
  %590 = extractvalue %dx.types.CBufRet.f32 %588, 1
  %591 = extractvalue %dx.types.CBufRet.f32 %588, 2
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 0
  %594 = extractvalue %dx.types.CBufRet.f32 %592, 1
  %595 = extractvalue %dx.types.CBufRet.f32 %592, 2
  %596 = fsub fast float %443, %593
  %597 = fsub fast float %444, %594
  %598 = fsub fast float %445, %595
  %599 = fmul fast float %596, %589
  %600 = fmul fast float %597, %590
  %601 = fmul fast float %598, %591
  %602 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.i32 %602, 3
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %608, label %605, !dx.controlflow.hints !50

; <label>:605                                     ; preds = %587
  %606 = call float @dx.op.unary.f32(i32 22, float %599)  ; Frc(value)
  %607 = call float @dx.op.unary.f32(i32 22, float %600)  ; Frc(value)
  br label %608

; <label>:608                                     ; preds = %605, %587
  %609 = phi float [ %606, %605 ], [ %599, %587 ]
  %610 = phi float [ %607, %605 ], [ %600, %587 ]
  %611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %609, float %610, float %601, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = fmul fast float %612, 2.000000e+00
  %614 = fadd fast float %613, -1.000000e+00
  %615 = extractvalue %dx.types.CBufRet.f32 %588, 3
  %616 = fmul fast float %614, %615
  %617 = fcmp fast olt float %616, 0.000000e+00
  %618 = fcmp fast oge float %601, 0.000000e+00
  %619 = fcmp fast ole float %601, 1.000000e+00
  br i1 %604, label %622, label %620, !dx.controlflow.hints !51

; <label>:620                                     ; preds = %608
  %621 = and i1 %618, %619
  br label %632

; <label>:622                                     ; preds = %608
  %623 = fcmp fast oge float %599, 0.000000e+00
  %624 = fcmp fast oge float %600, 0.000000e+00
  %625 = and i1 %623, %624
  %626 = and i1 %618, %625
  %627 = fcmp fast ole float %599, 1.000000e+00
  %628 = fcmp fast ole float %600, 1.000000e+00
  %629 = and i1 %627, %628
  %630 = and i1 %619, %629
  %631 = and i1 %626, %630
  br label %632

; <label>:632                                     ; preds = %622, %620
  %633 = phi i1 [ %621, %620 ], [ %631, %622 ]
  %634 = and i1 %617, %633
  %635 = call float @dx.op.unary.f32(i32 6, float %616)  ; FAbs(value)
  %636 = extractvalue %dx.types.CBufRet.f32 %567, 1
  %637 = extractvalue %dx.types.CBufRet.f32 %567, 0
  %638 = call float @dx.op.binary.f32(i32 35, float %635, float %637)  ; FMax(a,b)
  %639 = select i1 %634, float %636, float %638
  %640 = zext i1 %634 to i32
  %641 = call float @dx.op.binary.f32(i32 36, float %570, float %639)  ; FMin(a,b)
  br label %642

; <label>:642                                     ; preds = %632, %584
  %643 = phi i32 [ %640, %632 ], [ 0, %584 ]
  %644 = phi float [ %641, %632 ], [ %570, %584 ]
  %645 = extractvalue %dx.types.CBufRet.f32 %456, 2
  %646 = fmul fast float %645, %446
  %647 = call float @dx.op.unary.f32(i32 23, float %646)  ; Log(value)
  %648 = fmul fast float %647, 0x3FE62E4300000000
  %649 = call float @dx.op.binary.f32(i32 35, float %648, float 1.000000e+00)  ; FMax(a,b)
  %650 = fmul fast float %649, %585
  %651 = call float @dx.op.binary.f32(i32 36, float %650, float %644)  ; FMin(a,b)
  %652 = call float @dx.op.binary.f32(i32 35, float %651, float %457)  ; FMax(a,b)
  %653 = fadd fast float %410, 0x3F1A36E2E0000000
  %654 = fsub fast float %653, %446
  %655 = call float @dx.op.binary.f32(i32 36, float %654, float %652)  ; FMin(a,b)
  br i1 %571, label %710, label %656, !dx.controlflow.hints !52

; <label>:656                                     ; preds = %642
  %657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.f32 %657, 0
  %659 = fsub fast float %658, %445
  %660 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %455, float %454, float %659)  ; Dot3(ax,ay,az,bx,by,bz)
  %661 = fmul fast float %310, %660
  %662 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %661)  ; FMax(a,b)
  %663 = fcmp fast olt float %285, 0.000000e+00
  %664 = call float @dx.op.binary.f32(i32 36, float %655, float %662)  ; FMin(a,b)
  br i1 %663, label %666, label %665, !dx.controlflow.hints !53

; <label>:665                                     ; preds = %656
  br label %666

; <label>:666                                     ; preds = %665, %656
  %667 = phi float [ 0.000000e+00, %665 ], [ %664, %656 ]
  %668 = phi float [ %664, %665 ], [ %655, %656 ]
  %669 = phi float [ %664, %665 ], [ 0.000000e+00, %656 ]
  %670 = phi float [ %655, %665 ], [ %664, %656 ]
  %671 = fsub fast float %668, %667
  %672 = extractvalue %dx.types.CBufRet.f32 %657, 1
  %673 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %672)  ; FMin(a,b)
  %674 = fsub fast float %445, %658
  %675 = fmul fast float %673, 0x3FF7154760000000
  %676 = fmul fast float %675, %674
  %677 = call float @dx.op.unary.f32(i32 21, float %676)  ; Exp(value)
  %678 = fmul fast float %285, 0x3FF7154760000000
  %679 = fmul fast float %678, %670
  %680 = fmul fast float %679, %673
  %681 = call float @dx.op.unary.f32(i32 21, float %680)  ; Exp(value)
  %682 = fmul fast float %678, %669
  %683 = fmul fast float %682, %673
  %684 = call float @dx.op.unary.f32(i32 21, float %683)  ; Exp(value)
  %685 = fsub fast float %681, %684
  %686 = fmul fast float %685, %677
  %687 = fmul fast float %673, %285
  %688 = fdiv fast float %686, %687
  %689 = fadd fast float %671, %688
  %690 = call float @dx.op.unary.f32(i32 6, float %285)  ; FAbs(value)
  %691 = fcmp fast olt float %690, 0x3F0FFB4800000000
  %692 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %674)  ; FMax(a,b)
  %693 = fmul fast float %692, 0x3FF7154760000000
  %694 = fmul fast float %693, %672
  %695 = call float @dx.op.unary.f32(i32 21, float %694)  ; Exp(value)
  %696 = fmul fast float %695, %655
  %697 = select i1 %691, float %696, float %689
  %698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.f32 %698, 1
  %700 = fmul fast float %697, %699
  %701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.f32 %701, 0
  %703 = extractvalue %dx.types.CBufRet.f32 %701, 1
  %704 = extractvalue %dx.types.CBufRet.f32 %701, 2
  %705 = extractvalue %dx.types.CBufRet.f32 %698, 2
  %706 = fmul fast float %702, %700
  %707 = fmul fast float %703, %700
  %708 = fmul fast float %704, %700
  %709 = fmul fast float %705, %700
  br label %710

; <label>:710                                     ; preds = %666, %642
  %711 = phi float [ %700, %666 ], [ 0.000000e+00, %642 ]
  %712 = phi float [ %709, %666 ], [ 0.000000e+00, %642 ]
  %713 = phi float [ %706, %666 ], [ 0.000000e+00, %642 ]
  %714 = phi float [ %707, %666 ], [ 0.000000e+00, %642 ]
  %715 = phi float [ %708, %666 ], [ 0.000000e+00, %642 ]
  %716 = icmp eq i32 %643, 0
  br i1 %716, label %911, label %717, !dx.controlflow.hints !54

; <label>:717                                     ; preds = %710
  %718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %719 = extractvalue %dx.types.CBufRet.f32 %718, 3
  %720 = fmul fast float %719, %446
  %721 = fcmp fast oeq float %720, 0.000000e+00
  br i1 %721, label %736, label %722, !dx.controlflow.hints !55

; <label>:722                                     ; preds = %717
  %723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.f32 %723, 3
  %725 = fmul fast float %724, %720
  %726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %727 = extractvalue %dx.types.CBufRet.f32 %726, 0
  %728 = extractvalue %dx.types.CBufRet.f32 %726, 1
  %729 = extractvalue %dx.types.CBufRet.f32 %726, 2
  %730 = fmul fast float %727, %725
  %731 = fmul fast float %728, %725
  %732 = fmul fast float %729, %725
  %733 = call float @dx.op.unary.f32(i32 23, float %730)  ; Log(value)
  %734 = call float @dx.op.unary.f32(i32 23, float %731)  ; Log(value)
  %735 = call float @dx.op.unary.f32(i32 23, float %732)  ; Log(value)
  br label %736

; <label>:736                                     ; preds = %722, %717
  %737 = phi float [ %733, %722 ], [ 0.000000e+00, %717 ]
  %738 = phi float [ %734, %722 ], [ 0.000000e+00, %717 ]
  %739 = phi float [ %735, %722 ], [ 0.000000e+00, %717 ]
  %740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.f32 %740, 0
  %742 = extractvalue %dx.types.CBufRet.f32 %740, 1
  %743 = extractvalue %dx.types.CBufRet.f32 %740, 2
  %744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %745 = extractvalue %dx.types.CBufRet.f32 %744, 0
  %746 = extractvalue %dx.types.CBufRet.f32 %744, 1
  %747 = extractvalue %dx.types.CBufRet.f32 %744, 2
  %748 = fsub fast float %443, %745
  %749 = fsub fast float %444, %746
  %750 = fsub fast float %445, %747
  %751 = fmul fast float %748, %741
  %752 = fmul fast float %749, %742
  %753 = fmul fast float %750, %743
  %754 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.i32 %754, 0
  %756 = extractvalue %dx.types.CBufRet.i32 %754, 1
  %757 = uitofp i32 %755 to float
  %758 = uitofp i32 %756 to float
  %759 = fmul fast float %751, %757
  %760 = fmul fast float %752, %758
  %761 = fadd fast float %759, 5.000000e-01
  %762 = fadd fast float %760, 5.000000e-01
  %763 = call float @dx.op.unary.f32(i32 22, float %761)  ; Frc(value)
  %764 = call float @dx.op.unary.f32(i32 22, float %762)  ; Frc(value)
  %765 = call float @dx.op.unary.f32(i32 27, float %761)  ; Round_ni(value)
  %766 = call float @dx.op.unary.f32(i32 27, float %762)  ; Round_ni(value)
  %767 = fadd fast float %765, 1.000000e+00
  %768 = fadd fast float %766, 1.000000e+00
  %769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.f32 %769, 0
  %771 = extractvalue %dx.types.CBufRet.f32 %769, 1
  %772 = fmul fast float %770, %767
  %773 = fmul fast float %771, %768
  %774 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %18, float %772, float %773, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %775 = extractvalue %dx.types.ResRet.f32 %774, 0
  %776 = extractvalue %dx.types.ResRet.f32 %774, 1
  %777 = extractvalue %dx.types.ResRet.f32 %774, 2
  %778 = extractvalue %dx.types.ResRet.f32 %774, 3
  %779 = extractvalue %dx.types.CBufRet.i32 %754, 2
  %780 = extractvalue %dx.types.CBufRet.f32 %769, 2
  %781 = uitofp i32 %779 to float
  %782 = fadd fast float %781, -1.000000e+00
  %783 = fmul fast float %782, %775
  %784 = fmul fast float %782, %776
  %785 = fmul fast float %782, %777
  %786 = fmul fast float %782, %778
  %787 = fadd fast float %783, 5.000000e-01
  %788 = fadd fast float %784, 5.000000e-01
  %789 = fadd fast float %785, 5.000000e-01
  %790 = fadd fast float %786, 5.000000e-01
  %791 = fptoui float %787 to i32
  %792 = fptoui float %788 to i32
  %793 = fptoui float %789 to i32
  %794 = fptoui float %790 to i32
  %795 = uitofp i32 %791 to float
  %796 = uitofp i32 %792 to float
  %797 = uitofp i32 %793 to float
  %798 = uitofp i32 %794 to float
  %799 = fadd fast float %795, 5.000000e-01
  %800 = fadd fast float %796, 5.000000e-01
  %801 = fadd fast float %797, 5.000000e-01
  %802 = fadd fast float %798, 5.000000e-01
  %803 = fmul fast float %799, %780
  %804 = fmul fast float %800, %780
  %805 = fmul fast float %801, %780
  %806 = fmul fast float %802, %780
  %807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %803, float %753, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %808 = extractvalue %dx.types.ResRet.f32 %807, 0
  %809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %804, float %753, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %810 = extractvalue %dx.types.ResRet.f32 %809, 0
  %811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %805, float %753, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %812 = extractvalue %dx.types.ResRet.f32 %811, 0
  %813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %806, float %753, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %814 = extractvalue %dx.types.ResRet.f32 %813, 0
  %815 = fsub fast float %812, %814
  %816 = fmul fast float %815, %763
  %817 = fadd fast float %816, %814
  %818 = fsub fast float %810, %808
  %819 = fmul fast float %818, %763
  %820 = fadd fast float %819, %808
  %821 = fsub fast float %820, %817
  %822 = fmul fast float %821, %764
  %823 = fadd fast float %822, %817
  %824 = fcmp fast ogt float %823, 0.000000e+00
  br i1 %824, label %825, label %893, !dx.controlflow.hints !56

; <label>:825                                     ; preds = %736
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 0
  %828 = extractvalue %dx.types.CBufRet.f32 %826, 1
  %829 = extractvalue %dx.types.CBufRet.f32 %826, 2
  %830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %831 = extractvalue %dx.types.CBufRet.f32 %830, 0
  %832 = extractvalue %dx.types.CBufRet.f32 %830, 1
  %833 = extractvalue %dx.types.CBufRet.f32 %830, 2
  %834 = fmul fast float %749, %741
  %835 = fmul fast float %750, %741
  %836 = fadd fast float %751, %831
  %837 = fadd fast float %834, %832
  %838 = fadd fast float %835, %833
  %839 = fmul fast float %836, %827
  %840 = fmul fast float %837, %827
  %841 = fmul fast float %838, %827
  %842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %839, float %840, float %841, float undef, i32 0, i32 0, i32 0, float %737)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %843 = extractvalue %dx.types.ResRet.f32 %842, 0
  %844 = fmul fast float %836, %828
  %845 = fmul fast float %837, %828
  %846 = fmul fast float %838, %828
  %847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %844, float %845, float %846, float undef, i32 0, i32 0, i32 0, float %738)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %848 = extractvalue %dx.types.ResRet.f32 %847, 1
  %849 = fmul fast float %836, %829
  %850 = fmul fast float %837, %829
  %851 = fmul fast float %838, %829
  %852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %849, float %850, float %851, float undef, i32 0, i32 0, i32 0, float %739)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %853 = extractvalue %dx.types.ResRet.f32 %852, 2
  %854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %855 = extractvalue %dx.types.CBufRet.f32 %854, 1
  %856 = fmul fast float %848, %843
  %857 = fmul fast float %856, %853
  %858 = call float @dx.op.unary.f32(i32 23, float %857)  ; Log(value)
  %859 = fmul fast float %858, %855
  %860 = call float @dx.op.unary.f32(i32 21, float %859)  ; Exp(value)
  %861 = extractvalue %dx.types.CBufRet.f32 %854, 2
  %862 = fmul fast float %823, %823
  %863 = fmul fast float %862, %860
  %864 = fmul fast float %863, %861
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 3
  %867 = fmul fast float %866, %864
  %868 = bitcast float %867 to i32
  %869 = sitofp i32 %868 to float
  %870 = fptosi float %869 to i32
  %871 = bitcast i32 %870 to float
  %872 = fsub fast float 1.000000e+00, %864
  %873 = bitcast float %872 to i32
  %874 = sitofp i32 %873 to float
  %875 = fptosi float %874 to i32
  %876 = bitcast i32 %875 to float
  %877 = fadd fast float %871, %876
  %878 = bitcast float %877 to i32
  %879 = sub nsw i32 2129859010, %878
  %880 = bitcast i32 %879 to float
  %881 = fmul fast float %880, %871
  %882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %883 = extractvalue %dx.types.CBufRet.f32 %882, 2
  %884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.f32 %884, 0
  %886 = fmul fast float %881, %885
  %887 = fadd fast float %886, 1.000000e+00
  %888 = bitcast float %887 to i32
  %889 = sub nsw i32 2129859010, %888
  %890 = bitcast i32 %889 to float
  %891 = fmul fast float %881, %883
  %892 = fmul fast float %891, %890
  br label %893

; <label>:893                                     ; preds = %825, %736
  %894 = phi float [ %892, %825 ], [ %823, %736 ]
  %895 = fmul fast float %894, %655
  %896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %897 = extractvalue %dx.types.CBufRet.f32 %896, 0
  %898 = extractvalue %dx.types.CBufRet.f32 %896, 1
  %899 = extractvalue %dx.types.CBufRet.f32 %896, 2
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 1
  %902 = fmul fast float %897, %895
  %903 = fmul fast float %898, %895
  %904 = fmul fast float %899, %895
  %905 = fadd fast float %902, %713
  %906 = fadd fast float %903, %714
  %907 = fadd fast float %904, %715
  %908 = fmul fast float %901, %895
  %909 = fadd fast float %908, %712
  %910 = fadd fast float %895, %711
  br label %911

; <label>:911                                     ; preds = %893, %710
  %912 = phi float [ %910, %893 ], [ %711, %710 ]
  %913 = phi float [ %909, %893 ], [ %712, %710 ]
  %914 = phi float [ %905, %893 ], [ %713, %710 ]
  %915 = phi float [ %906, %893 ], [ %714, %710 ]
  %916 = phi float [ %907, %893 ], [ %715, %710 ]
  br i1 %566, label %1059, label %917, !dx.controlflow.hints !57

; <label>:917                                     ; preds = %911
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 0
  %920 = extractvalue %dx.types.CBufRet.f32 %918, 1
  %921 = extractvalue %dx.types.CBufRet.f32 %918, 2
  %922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.i32 %922, 0
  %924 = icmp ne i32 %923, 0
  %925 = zext i1 %924 to i32
  %926 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.i32 %926, 0
  %928 = icmp eq i32 %927, 0
  br i1 %928, label %962, label %929

; <label>:929                                     ; preds = %917
  br label %930

; <label>:930                                     ; preds = %957, %929
  %931 = phi i32 [ %958, %957 ], [ 0, %929 ]
  %932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %931, i32 0)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.f32 %932, 0
  %934 = extractvalue %dx.types.ResRet.f32 %932, 1
  %935 = extractvalue %dx.types.ResRet.f32 %932, 2
  %936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %931, i32 16)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.f32 %936, 0
  %938 = extractvalue %dx.types.ResRet.f32 %936, 1
  %939 = extractvalue %dx.types.ResRet.f32 %936, 2
  %940 = fsub fast float %933, %937
  %941 = fsub fast float %934, %938
  %942 = fsub fast float %935, %939
  %943 = fadd fast float %937, %933
  %944 = fadd fast float %938, %934
  %945 = fadd fast float %939, %935
  %946 = fcmp fast olt float %443, %940
  %947 = fcmp fast olt float %444, %941
  %948 = fcmp fast olt float %445, %942
  %949 = or i1 %946, %947
  %950 = or i1 %948, %949
  %951 = fcmp fast ogt float %443, %943
  %952 = fcmp fast ogt float %444, %944
  %953 = fcmp fast ogt float %445, %945
  %954 = or i1 %951, %952
  %955 = or i1 %953, %954
  %956 = or i1 %950, %955
  br i1 %956, label %957, label %960, !dx.controlflow.hints !58

; <label>:957                                     ; preds = %930
  %958 = add nuw i32 %931, 1
  %959 = icmp ult i32 %958, %927
  br i1 %959, label %930, label %960

; <label>:960                                     ; preds = %957, %930
  %961 = phi i32 [ 255, %957 ], [ %931, %930 ]
  br label %962

; <label>:962                                     ; preds = %960, %917
  %963 = phi i32 [ 255, %917 ], [ %961, %960 ]
  %964 = icmp eq i32 %963, 255
  br i1 %964, label %974, label %965, !dx.controlflow.hints !59

; <label>:965                                     ; preds = %962
  %966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %963, i32 32)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.f32 %966, 0
  %968 = extractvalue %dx.types.ResRet.f32 %966, 1
  %969 = extractvalue %dx.types.ResRet.f32 %966, 2
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %963, i32 156)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = icmp ne i32 %971, 0
  %973 = zext i1 %972 to i32
  br label %974

; <label>:974                                     ; preds = %965, %962
  %975 = phi float [ %967, %965 ], [ %919, %962 ]
  %976 = phi float [ %968, %965 ], [ %920, %962 ]
  %977 = phi float [ %969, %965 ], [ %921, %962 ]
  %978 = phi i32 [ %973, %965 ], [ %925, %962 ]
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %980, label %1049, !dx.controlflow.hints !60

; <label>:980                                     ; preds = %974
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 3
  %983 = extractvalue %dx.types.CBufRet.f32 %476, 0
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 2
  %986 = extractvalue %dx.types.CBufRet.f32 %984, 3
  br i1 %964, label %997, label %987, !dx.controlflow.hints !61

; <label>:987                                     ; preds = %980
  %988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %963, i32 60)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.f32 %988, 0
  %990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %963, i32 64)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.f32 %990, 0
  %992 = extractvalue %dx.types.ResRet.f32 %990, 1
  %993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %963, i32 72)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.f32 %993, 0
  %995 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %963, i32 96)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.f32 %995, 0
  br label %997

; <label>:997                                     ; preds = %987, %980
  %998 = phi float [ %989, %987 ], [ %479, %980 ]
  %999 = phi float [ %994, %987 ], [ %477, %980 ]
  %1000 = phi float [ %996, %987 ], [ %983, %980 ]
  %1001 = phi float [ %991, %987 ], [ %985, %980 ]
  %1002 = phi float [ %992, %987 ], [ %986, %980 ]
  %1003 = call float @dx.op.binary.f32(i32 35, float %560, float 0.000000e+00)  ; FMax(a,b)
  %1004 = call float @dx.op.binary.f32(i32 36, float %1003, float 1.000000e+00)  ; FMin(a,b)
  %1005 = call float @dx.op.unary.f32(i32 24, float %1004)  ; Sqrt(value)
  %1006 = call float @dx.op.binary.f32(i32 35, float %563, float 0x3F847AE140000000)  ; FMax(a,b)
  %1007 = fsub fast float %561, %445
  %1008 = fsub fast float %445, %562
  %1009 = call float @dx.op.binary.f32(i32 36, float %1008, float %1007)  ; FMin(a,b)
  %1010 = fdiv fast float %1009, %1006
  %1011 = call float @dx.op.unary.f32(i32 7, float %1010)  ; Saturate(value)
  %1012 = fsub fast float %445, %999
  %1013 = fdiv fast float %1012, %998
  %1014 = call float @dx.op.unary.f32(i32 7, float %1013)  ; Saturate(value)
  %1015 = fsub fast float 1.000000e+00, %1014
  %1016 = fmul float %1011, %1015
  %1017 = fmul float %1016, %1016
  %1018 = fmul fast float %1005, %982
  %1019 = fmul fast float %1018, %1017
  %1020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1020, 2
  %1022 = extractvalue %dx.types.CBufRet.f32 %1020, 1
  %1023 = fsub fast float %1019, %1022
  %1024 = fsub fast float %1021, %1022
  %1025 = fdiv fast float %1023, %1024
  %1026 = call float @dx.op.unary.f32(i32 7, float %1025)  ; Saturate(value)
  %1027 = fmul fast float %1026, %1000
  %1028 = fcmp fast ogt float %1002, 0.000000e+00
  br i1 %1028, label %1029, label %1049, !dx.controlflow.hints !62

; <label>:1029                                    ; preds = %997
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 0
  %1032 = extractvalue %dx.types.CBufRet.f32 %1030, 1
  %1033 = extractvalue %dx.types.CBufRet.f32 %1030, 2
  %1034 = fsub fast float %443, %1031
  %1035 = fsub fast float %444, %1032
  %1036 = fsub fast float %445, %1033
  %1037 = fmul fast float %1034, %1034
  %1038 = fmul fast float %1035, %1035
  %1039 = fadd fast float %1037, %1038
  %1040 = fmul fast float %1036, %1036
  %1041 = fadd fast float %1039, %1040
  %1042 = call float @dx.op.unary.f32(i32 24, float %1041)  ; Sqrt(value)
  %1043 = fsub fast float %1042, %1001
  %1044 = fsub fast float %1002, %1001
  %1045 = fdiv fast float %1043, %1044
  %1046 = call float @dx.op.unary.f32(i32 7, float %1045)  ; Saturate(value)
  %1047 = fmul fast float %1046, %1046
  %1048 = fmul fast float %1047, %1027
  br label %1049

; <label>:1049                                    ; preds = %1029, %997, %974
  %1050 = phi float [ 0.000000e+00, %974 ], [ %1048, %1029 ], [ %1027, %997 ]
  %1051 = fmul fast float %1050, %655
  %1052 = fmul fast float %1051, %975
  %1053 = fmul fast float %1051, %976
  %1054 = fmul fast float %1051, %977
  %1055 = fadd fast float %1052, %914
  %1056 = fadd fast float %1053, %915
  %1057 = fadd fast float %1054, %916
  %1058 = fadd fast float %1051, %912
  br label %1059

; <label>:1059                                    ; preds = %1049, %911
  %1060 = phi float [ %1058, %1049 ], [ %912, %911 ]
  %1061 = phi float [ %1055, %1049 ], [ %914, %911 ]
  %1062 = phi float [ %1056, %1049 ], [ %915, %911 ]
  %1063 = phi float [ %1057, %1049 ], [ %916, %911 ]
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 1
  %1066 = fcmp fast ogt float %1060, %1065
  br i1 %1066, label %1067, label %1073, !dx.controlflow.hints !63

; <label>:1067                                    ; preds = %1059
  %1068 = fdiv fast float 1.000000e+00, %1060
  %1069 = fmul fast float %1068, %1061
  %1070 = fmul fast float %1068, %1062
  %1071 = fmul fast float %1068, %1063
  %1072 = fmul fast float %1068, %913
  br label %1073

; <label>:1073                                    ; preds = %1067, %1059
  %1074 = phi float [ %1072, %1067 ], [ %913, %1059 ]
  %1075 = phi float [ %1069, %1067 ], [ %1061, %1059 ]
  %1076 = phi float [ %1070, %1067 ], [ %1062, %1059 ]
  %1077 = phi float [ %1071, %1067 ], [ %1063, %1059 ]
  br i1 %1066, label %1080, label %1078, !dx.controlflow.hints !64

; <label>:1078                                    ; preds = %1073
  %1079 = fadd fast float %655, %446
  br label %1640

; <label>:1080                                    ; preds = %1073
  %1081 = fmul fast float %1060, 0xBFF7154760000000
  %1082 = call float @dx.op.unary.f32(i32 21, float %1081)  ; Exp(value)
  %1083 = call float @dx.op.unary.f32(i32 7, float %1082)  ; Saturate(value)
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 3
  %1086 = fcmp fast une float %1085, 0.000000e+00
  %1087 = extractvalue %dx.types.CBufRet.f32 %1084, 0
  %1088 = extractvalue %dx.types.CBufRet.f32 %1084, 1
  %1089 = extractvalue %dx.types.CBufRet.f32 %1084, 2
  br i1 %1086, label %1090, label %1112, !dx.controlflow.hints !65

; <label>:1090                                    ; preds = %1080
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 0
  %1093 = extractvalue %dx.types.CBufRet.f32 %1091, 1
  %1094 = extractvalue %dx.types.CBufRet.f32 %1091, 2
  %1095 = call float @dx.op.dot3.f32(i32 55, float %1087, float %1088, float %1089, float %283, float %284, float %285)  ; Dot3(ax,ay,az,bx,by,bz)
  %1096 = fcmp fast ogt float %1074, 0.000000e+00
  %1097 = select i1 %1096, float 1.000000e+00, float -1.000000e+00
  %1098 = fmul fast float %1097, 5.000000e-01
  %1099 = fmul fast float %1098, %1095
  %1100 = fmul fast float %1097, %1074
  %1101 = fadd fast float %1099, 4.921875e-01
  %1102 = fadd fast float %1100, -3.125000e-02
  %1103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %1101, float 0x3FB25F3060000000, float %1102, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1104 = extractvalue %dx.types.ResRet.f32 %1103, 0
  %1105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1106 = extractvalue %dx.types.CBufRet.f32 %1105, 0
  %1107 = fmul fast float %1104, 0x400921FB60000000
  %1108 = fmul fast float %1107, %1106
  %1109 = fmul fast float %1108, %1092
  %1110 = fmul fast float %1108, %1093
  %1111 = fmul fast float %1108, %1094
  br label %1112

; <label>:1112                                    ; preds = %1090, %1080
  %1113 = phi float [ %1109, %1090 ], [ 0.000000e+00, %1080 ]
  %1114 = phi float [ %1110, %1090 ], [ 0.000000e+00, %1080 ]
  %1115 = phi float [ %1111, %1090 ], [ 0.000000e+00, %1080 ]
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 0
  %1118 = fmul fast float %1117, %1087
  %1119 = fmul fast float %1117, %1088
  %1120 = fmul fast float %1117, %1089
  %1121 = fadd fast float %1118, %443
  %1122 = fadd fast float %1119, %444
  %1123 = fadd fast float %1120, %445
  %1124 = fsub fast float %1121, %459
  %1125 = fsub fast float %1122, %460
  %1126 = fmul fast float %1124, %464
  %1127 = fmul fast float %1125, %465
  %1128 = call float @dx.op.binary.f32(i32 36, float %1126, float %1127)  ; FMin(a,b)
  %1129 = fcmp fast olt float %1128, 0.000000e+00
  %1130 = call float @dx.op.binary.f32(i32 35, float %1126, float %1127)  ; FMax(a,b)
  %1131 = fcmp fast ogt float %1130, 1.000000e+00
  %1132 = or i1 %1129, %1131
  %1133 = fcmp fast olt float %1123, %473
  %1134 = or i1 %1132, %1133
  %1135 = fcmp fast ogt float %1123, %480
  %1136 = or i1 %1134, %1135
  br i1 %1136, label %1151, label %1137, !dx.controlflow.hints !44

; <label>:1137                                    ; preds = %1112
  %1138 = fsub fast float 1.000000e+00, %1127
  %1139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %19, float %1126, float %1138, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.ResRet.f32 %1139, 2
  %1143 = extractvalue %dx.types.ResRet.f32 %1139, 3
  %1144 = fcmp fast oeq float %1140, 0.000000e+00
  %1145 = fcmp ule float %1123, %1142
  %1146 = fcmp uge float %1123, %1141
  %1147 = or i1 %1146, %1145
  %1148 = or i1 %1144, %1147
  %1149 = zext i1 %1148 to i32
  %1150 = xor i32 %1149, 1
  br label %1151

; <label>:1151                                    ; preds = %1137, %1112
  %1152 = phi float [ %1140, %1137 ], [ %430, %1112 ]
  %1153 = phi float [ %1141, %1137 ], [ %431, %1112 ]
  %1154 = phi float [ %1142, %1137 ], [ %432, %1112 ]
  %1155 = phi float [ %1143, %1137 ], [ %433, %1112 ]
  %1156 = phi i32 [ %1150, %1137 ], [ 0, %1112 ]
  %1157 = icmp eq i32 %1156, 0
  br i1 %586, label %1207, label %1158, !dx.controlflow.hints !49

; <label>:1158                                    ; preds = %1151
  %1159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1160 = extractvalue %dx.types.CBufRet.f32 %1159, 0
  %1161 = extractvalue %dx.types.CBufRet.f32 %1159, 1
  %1162 = extractvalue %dx.types.CBufRet.f32 %1159, 2
  %1163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1164 = extractvalue %dx.types.CBufRet.f32 %1163, 0
  %1165 = extractvalue %dx.types.CBufRet.f32 %1163, 1
  %1166 = extractvalue %dx.types.CBufRet.f32 %1163, 2
  %1167 = fsub fast float %1121, %1164
  %1168 = fsub fast float %1122, %1165
  %1169 = fsub fast float %1123, %1166
  %1170 = fmul fast float %1167, %1160
  %1171 = fmul fast float %1168, %1161
  %1172 = fmul fast float %1169, %1162
  %1173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1174 = extractvalue %dx.types.CBufRet.i32 %1173, 3
  %1175 = icmp eq i32 %1174, 0
  br i1 %1175, label %1179, label %1176, !dx.controlflow.hints !50

; <label>:1176                                    ; preds = %1158
  %1177 = call float @dx.op.unary.f32(i32 22, float %1170)  ; Frc(value)
  %1178 = call float @dx.op.unary.f32(i32 22, float %1171)  ; Frc(value)
  br label %1179

; <label>:1179                                    ; preds = %1176, %1158
  %1180 = phi float [ %1177, %1176 ], [ %1170, %1158 ]
  %1181 = phi float [ %1178, %1176 ], [ %1171, %1158 ]
  %1182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %1180, float %1181, float %1172, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1183 = extractvalue %dx.types.ResRet.f32 %1182, 0
  %1184 = fmul fast float %1183, 2.000000e+00
  %1185 = fadd fast float %1184, -1.000000e+00
  %1186 = extractvalue %dx.types.CBufRet.f32 %1159, 3
  %1187 = fmul fast float %1185, %1186
  %1188 = fcmp fast olt float %1187, 0.000000e+00
  %1189 = fcmp fast oge float %1172, 0.000000e+00
  %1190 = fcmp fast ole float %1172, 1.000000e+00
  br i1 %1175, label %1193, label %1191, !dx.controlflow.hints !51

; <label>:1191                                    ; preds = %1179
  %1192 = and i1 %1189, %1190
  br label %1203

; <label>:1193                                    ; preds = %1179
  %1194 = fcmp fast oge float %1170, 0.000000e+00
  %1195 = fcmp fast oge float %1171, 0.000000e+00
  %1196 = and i1 %1194, %1195
  %1197 = and i1 %1189, %1196
  %1198 = fcmp fast ole float %1170, 1.000000e+00
  %1199 = fcmp fast ole float %1171, 1.000000e+00
  %1200 = and i1 %1198, %1199
  %1201 = and i1 %1190, %1200
  %1202 = and i1 %1197, %1201
  br label %1203

; <label>:1203                                    ; preds = %1193, %1191
  %1204 = phi i1 [ %1192, %1191 ], [ %1202, %1193 ]
  %1205 = and i1 %1188, %1204
  %1206 = zext i1 %1205 to i32
  br label %1207

; <label>:1207                                    ; preds = %1203, %1151
  %1208 = phi i32 [ %1206, %1203 ], [ 0, %1151 ]
  br i1 %571, label %1258, label %1209, !dx.controlflow.hints !52

; <label>:1209                                    ; preds = %1207
  %1210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1211 = extractvalue %dx.types.CBufRet.f32 %1210, 0
  %1212 = fsub fast float -0.000000e+00, %1121
  %1213 = fsub fast float -0.000000e+00, %1122
  %1214 = fsub fast float %1211, %1123
  %1215 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1212, float %1213, float %1214)  ; Dot3(ax,ay,az,bx,by,bz)
  %1216 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1087, float %1088, float %1089)  ; Dot3(ax,ay,az,bx,by,bz)
  %1217 = fdiv fast float 1.000000e+00, %1216
  %1218 = fmul fast float %1217, %1215
  %1219 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1218)  ; FMax(a,b)
  %1220 = fcmp fast olt float %1089, 0.000000e+00
  %1221 = call float @dx.op.binary.f32(i32 36, float %1117, float %1219)  ; FMin(a,b)
  br i1 %1220, label %1223, label %1222, !dx.controlflow.hints !53

; <label>:1222                                    ; preds = %1209
  br label %1223

; <label>:1223                                    ; preds = %1222, %1209
  %1224 = phi float [ 0.000000e+00, %1222 ], [ %1221, %1209 ]
  %1225 = phi float [ %1221, %1222 ], [ %1117, %1209 ]
  %1226 = phi float [ %1221, %1222 ], [ 0.000000e+00, %1209 ]
  %1227 = phi float [ %1117, %1222 ], [ %1221, %1209 ]
  %1228 = fsub fast float %1225, %1224
  %1229 = extractvalue %dx.types.CBufRet.f32 %1210, 1
  %1230 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1229)  ; FMin(a,b)
  %1231 = fsub fast float %1123, %1211
  %1232 = fmul fast float %1230, 0x3FF7154760000000
  %1233 = fmul fast float %1232, %1231
  %1234 = call float @dx.op.unary.f32(i32 21, float %1233)  ; Exp(value)
  %1235 = fmul fast float %1089, 0x3FF7154760000000
  %1236 = fmul fast float %1235, %1227
  %1237 = fmul fast float %1236, %1230
  %1238 = call float @dx.op.unary.f32(i32 21, float %1237)  ; Exp(value)
  %1239 = fmul fast float %1235, %1226
  %1240 = fmul fast float %1239, %1230
  %1241 = call float @dx.op.unary.f32(i32 21, float %1240)  ; Exp(value)
  %1242 = fsub fast float %1238, %1241
  %1243 = fmul fast float %1242, %1234
  %1244 = fmul fast float %1230, %1089
  %1245 = fdiv fast float %1243, %1244
  %1246 = fadd fast float %1228, %1245
  %1247 = call float @dx.op.unary.f32(i32 6, float %1089)  ; FAbs(value)
  %1248 = fcmp fast olt float %1247, 0x3F0FFB4800000000
  %1249 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1231)  ; FMax(a,b)
  %1250 = fmul fast float %1249, 0x3FF7154760000000
  %1251 = fmul fast float %1250, %1229
  %1252 = call float @dx.op.unary.f32(i32 21, float %1251)  ; Exp(value)
  %1253 = fmul fast float %1252, %1117
  %1254 = select i1 %1248, float %1253, float %1246
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 1
  %1257 = fmul fast float %1254, %1256
  br label %1258

; <label>:1258                                    ; preds = %1223, %1207
  %1259 = phi float [ %1257, %1223 ], [ 0.000000e+00, %1207 ]
  %1260 = icmp eq i32 %1208, 0
  br i1 %1260, label %1441, label %1261, !dx.controlflow.hints !54

; <label>:1261                                    ; preds = %1258
  %1262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1262, 3
  %1264 = fmul fast float %1263, %1117
  %1265 = fcmp fast oeq float %1264, 0.000000e+00
  br i1 %1265, label %1280, label %1266, !dx.controlflow.hints !55

; <label>:1266                                    ; preds = %1261
  %1267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1267, 3
  %1269 = fmul fast float %1268, %1264
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 0
  %1272 = extractvalue %dx.types.CBufRet.f32 %1270, 1
  %1273 = extractvalue %dx.types.CBufRet.f32 %1270, 2
  %1274 = fmul fast float %1271, %1269
  %1275 = fmul fast float %1272, %1269
  %1276 = fmul fast float %1273, %1269
  %1277 = call float @dx.op.unary.f32(i32 23, float %1274)  ; Log(value)
  %1278 = call float @dx.op.unary.f32(i32 23, float %1275)  ; Log(value)
  %1279 = call float @dx.op.unary.f32(i32 23, float %1276)  ; Log(value)
  br label %1280

; <label>:1280                                    ; preds = %1266, %1261
  %1281 = phi float [ %1277, %1266 ], [ 0.000000e+00, %1261 ]
  %1282 = phi float [ %1278, %1266 ], [ 0.000000e+00, %1261 ]
  %1283 = phi float [ %1279, %1266 ], [ 0.000000e+00, %1261 ]
  %1284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1285 = extractvalue %dx.types.CBufRet.f32 %1284, 0
  %1286 = extractvalue %dx.types.CBufRet.f32 %1284, 1
  %1287 = extractvalue %dx.types.CBufRet.f32 %1284, 2
  %1288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1288, 0
  %1290 = extractvalue %dx.types.CBufRet.f32 %1288, 1
  %1291 = extractvalue %dx.types.CBufRet.f32 %1288, 2
  %1292 = fsub fast float %1121, %1289
  %1293 = fsub fast float %1122, %1290
  %1294 = fsub fast float %1123, %1291
  %1295 = fmul fast float %1292, %1285
  %1296 = fmul fast float %1293, %1286
  %1297 = fmul fast float %1294, %1287
  %1298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1299 = extractvalue %dx.types.CBufRet.i32 %1298, 0
  %1300 = extractvalue %dx.types.CBufRet.i32 %1298, 1
  %1301 = uitofp i32 %1299 to float
  %1302 = uitofp i32 %1300 to float
  %1303 = fmul fast float %1295, %1301
  %1304 = fmul fast float %1296, %1302
  %1305 = fadd fast float %1303, 5.000000e-01
  %1306 = fadd fast float %1304, 5.000000e-01
  %1307 = call float @dx.op.unary.f32(i32 22, float %1305)  ; Frc(value)
  %1308 = call float @dx.op.unary.f32(i32 22, float %1306)  ; Frc(value)
  %1309 = call float @dx.op.unary.f32(i32 27, float %1305)  ; Round_ni(value)
  %1310 = call float @dx.op.unary.f32(i32 27, float %1306)  ; Round_ni(value)
  %1311 = fadd fast float %1309, 1.000000e+00
  %1312 = fadd fast float %1310, 1.000000e+00
  %1313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1314 = extractvalue %dx.types.CBufRet.f32 %1313, 0
  %1315 = extractvalue %dx.types.CBufRet.f32 %1313, 1
  %1316 = fmul fast float %1314, %1311
  %1317 = fmul fast float %1315, %1312
  %1318 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %18, float %1316, float %1317, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1319 = extractvalue %dx.types.ResRet.f32 %1318, 0
  %1320 = extractvalue %dx.types.ResRet.f32 %1318, 1
  %1321 = extractvalue %dx.types.ResRet.f32 %1318, 2
  %1322 = extractvalue %dx.types.ResRet.f32 %1318, 3
  %1323 = extractvalue %dx.types.CBufRet.i32 %1298, 2
  %1324 = extractvalue %dx.types.CBufRet.f32 %1313, 2
  %1325 = uitofp i32 %1323 to float
  %1326 = fadd fast float %1325, -1.000000e+00
  %1327 = fmul fast float %1326, %1319
  %1328 = fmul fast float %1326, %1320
  %1329 = fmul fast float %1326, %1321
  %1330 = fmul fast float %1326, %1322
  %1331 = fadd fast float %1327, 5.000000e-01
  %1332 = fadd fast float %1328, 5.000000e-01
  %1333 = fadd fast float %1329, 5.000000e-01
  %1334 = fadd fast float %1330, 5.000000e-01
  %1335 = fptoui float %1331 to i32
  %1336 = fptoui float %1332 to i32
  %1337 = fptoui float %1333 to i32
  %1338 = fptoui float %1334 to i32
  %1339 = uitofp i32 %1335 to float
  %1340 = uitofp i32 %1336 to float
  %1341 = uitofp i32 %1337 to float
  %1342 = uitofp i32 %1338 to float
  %1343 = fadd fast float %1339, 5.000000e-01
  %1344 = fadd fast float %1340, 5.000000e-01
  %1345 = fadd fast float %1341, 5.000000e-01
  %1346 = fadd fast float %1342, 5.000000e-01
  %1347 = fmul fast float %1343, %1324
  %1348 = fmul fast float %1344, %1324
  %1349 = fmul fast float %1345, %1324
  %1350 = fmul fast float %1346, %1324
  %1351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %1347, float %1297, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1352 = extractvalue %dx.types.ResRet.f32 %1351, 0
  %1353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %1348, float %1297, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1354 = extractvalue %dx.types.ResRet.f32 %1353, 0
  %1355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %1349, float %1297, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1356 = extractvalue %dx.types.ResRet.f32 %1355, 0
  %1357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %1350, float %1297, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1358 = extractvalue %dx.types.ResRet.f32 %1357, 0
  %1359 = fsub fast float %1356, %1358
  %1360 = fmul fast float %1359, %1307
  %1361 = fadd fast float %1360, %1358
  %1362 = fsub fast float %1354, %1352
  %1363 = fmul fast float %1362, %1307
  %1364 = fadd fast float %1363, %1352
  %1365 = fsub fast float %1364, %1361
  %1366 = fmul fast float %1365, %1308
  %1367 = fadd fast float %1366, %1361
  %1368 = fcmp fast ogt float %1367, 0.000000e+00
  br i1 %1368, label %1369, label %1437, !dx.controlflow.hints !56

; <label>:1369                                    ; preds = %1280
  %1370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1371 = extractvalue %dx.types.CBufRet.f32 %1370, 0
  %1372 = extractvalue %dx.types.CBufRet.f32 %1370, 1
  %1373 = extractvalue %dx.types.CBufRet.f32 %1370, 2
  %1374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1375 = extractvalue %dx.types.CBufRet.f32 %1374, 0
  %1376 = extractvalue %dx.types.CBufRet.f32 %1374, 1
  %1377 = extractvalue %dx.types.CBufRet.f32 %1374, 2
  %1378 = fmul fast float %1293, %1285
  %1379 = fmul fast float %1294, %1285
  %1380 = fadd fast float %1295, %1375
  %1381 = fadd fast float %1378, %1376
  %1382 = fadd fast float %1379, %1377
  %1383 = fmul fast float %1380, %1371
  %1384 = fmul fast float %1381, %1371
  %1385 = fmul fast float %1382, %1371
  %1386 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %1383, float %1384, float %1385, float undef, i32 0, i32 0, i32 0, float %1281)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1387 = extractvalue %dx.types.ResRet.f32 %1386, 0
  %1388 = fmul fast float %1380, %1372
  %1389 = fmul fast float %1381, %1372
  %1390 = fmul fast float %1382, %1372
  %1391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %1388, float %1389, float %1390, float undef, i32 0, i32 0, i32 0, float %1282)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1392 = extractvalue %dx.types.ResRet.f32 %1391, 1
  %1393 = fmul fast float %1380, %1373
  %1394 = fmul fast float %1381, %1373
  %1395 = fmul fast float %1382, %1373
  %1396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %1393, float %1394, float %1395, float undef, i32 0, i32 0, i32 0, float %1283)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1397 = extractvalue %dx.types.ResRet.f32 %1396, 2
  %1398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.f32 %1398, 1
  %1400 = fmul fast float %1392, %1387
  %1401 = fmul fast float %1400, %1397
  %1402 = call float @dx.op.unary.f32(i32 23, float %1401)  ; Log(value)
  %1403 = fmul fast float %1402, %1399
  %1404 = call float @dx.op.unary.f32(i32 21, float %1403)  ; Exp(value)
  %1405 = extractvalue %dx.types.CBufRet.f32 %1398, 2
  %1406 = fmul fast float %1367, %1367
  %1407 = fmul fast float %1406, %1404
  %1408 = fmul fast float %1407, %1405
  %1409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1410 = extractvalue %dx.types.CBufRet.f32 %1409, 3
  %1411 = fmul fast float %1410, %1408
  %1412 = bitcast float %1411 to i32
  %1413 = sitofp i32 %1412 to float
  %1414 = fptosi float %1413 to i32
  %1415 = bitcast i32 %1414 to float
  %1416 = fsub fast float 1.000000e+00, %1408
  %1417 = bitcast float %1416 to i32
  %1418 = sitofp i32 %1417 to float
  %1419 = fptosi float %1418 to i32
  %1420 = bitcast i32 %1419 to float
  %1421 = fadd fast float %1415, %1420
  %1422 = bitcast float %1421 to i32
  %1423 = sub nsw i32 2129859010, %1422
  %1424 = bitcast i32 %1423 to float
  %1425 = fmul fast float %1424, %1415
  %1426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1427 = extractvalue %dx.types.CBufRet.f32 %1426, 2
  %1428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1428, 0
  %1430 = fmul fast float %1425, %1429
  %1431 = fadd fast float %1430, 1.000000e+00
  %1432 = bitcast float %1431 to i32
  %1433 = sub nsw i32 2129859010, %1432
  %1434 = bitcast i32 %1433 to float
  %1435 = fmul fast float %1425, %1427
  %1436 = fmul fast float %1435, %1434
  br label %1437

; <label>:1437                                    ; preds = %1369, %1280
  %1438 = phi float [ %1436, %1369 ], [ %1367, %1280 ]
  %1439 = fmul fast float %1438, %1117
  %1440 = fadd fast float %1439, %1259
  br label %1441

; <label>:1441                                    ; preds = %1437, %1258
  %1442 = phi float [ %1440, %1437 ], [ %1259, %1258 ]
  br i1 %1157, label %1568, label %1443, !dx.controlflow.hints !57

; <label>:1443                                    ; preds = %1441
  %1444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1445 = extractvalue %dx.types.CBufRet.i32 %1444, 0
  %1446 = icmp ne i32 %1445, 0
  %1447 = zext i1 %1446 to i32
  %1448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1449 = extractvalue %dx.types.CBufRet.i32 %1448, 0
  %1450 = icmp eq i32 %1449, 0
  br i1 %1450, label %1484, label %1451

; <label>:1451                                    ; preds = %1443
  br label %1452

; <label>:1452                                    ; preds = %1479, %1451
  %1453 = phi i32 [ %1480, %1479 ], [ 0, %1451 ]
  %1454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1453, i32 0)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.f32 %1454, 0
  %1456 = extractvalue %dx.types.ResRet.f32 %1454, 1
  %1457 = extractvalue %dx.types.ResRet.f32 %1454, 2
  %1458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1453, i32 16)  ; BufferLoad(srv,index,wot)
  %1459 = extractvalue %dx.types.ResRet.f32 %1458, 0
  %1460 = extractvalue %dx.types.ResRet.f32 %1458, 1
  %1461 = extractvalue %dx.types.ResRet.f32 %1458, 2
  %1462 = fsub fast float %1455, %1459
  %1463 = fsub fast float %1456, %1460
  %1464 = fsub fast float %1457, %1461
  %1465 = fadd fast float %1459, %1455
  %1466 = fadd fast float %1460, %1456
  %1467 = fadd fast float %1461, %1457
  %1468 = fcmp fast olt float %1121, %1462
  %1469 = fcmp fast olt float %1122, %1463
  %1470 = fcmp fast olt float %1123, %1464
  %1471 = or i1 %1468, %1469
  %1472 = or i1 %1470, %1471
  %1473 = fcmp fast ogt float %1121, %1465
  %1474 = fcmp fast ogt float %1122, %1466
  %1475 = fcmp fast ogt float %1123, %1467
  %1476 = or i1 %1473, %1474
  %1477 = or i1 %1475, %1476
  %1478 = or i1 %1472, %1477
  br i1 %1478, label %1479, label %1482, !dx.controlflow.hints !58

; <label>:1479                                    ; preds = %1452
  %1480 = add nuw i32 %1453, 1
  %1481 = icmp ult i32 %1480, %1449
  br i1 %1481, label %1452, label %1482

; <label>:1482                                    ; preds = %1479, %1452
  %1483 = phi i32 [ 255, %1479 ], [ %1453, %1452 ]
  br label %1484

; <label>:1484                                    ; preds = %1482, %1443
  %1485 = phi i32 [ 255, %1443 ], [ %1483, %1482 ]
  %1486 = icmp eq i32 %1485, 255
  br i1 %1486, label %1492, label %1487, !dx.controlflow.hints !59

; <label>:1487                                    ; preds = %1484
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1485, i32 156)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = icmp ne i32 %1489, 0
  %1491 = zext i1 %1490 to i32
  br label %1492

; <label>:1492                                    ; preds = %1487, %1484
  %1493 = phi i32 [ %1491, %1487 ], [ %1447, %1484 ]
  %1494 = icmp eq i32 %1493, 0
  br i1 %1494, label %1495, label %1564, !dx.controlflow.hints !60

; <label>:1495                                    ; preds = %1492
  %1496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1497 = extractvalue %dx.types.CBufRet.f32 %1496, 3
  %1498 = extractvalue %dx.types.CBufRet.f32 %476, 0
  %1499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1500 = extractvalue %dx.types.CBufRet.f32 %1499, 2
  %1501 = extractvalue %dx.types.CBufRet.f32 %1499, 3
  br i1 %1486, label %1512, label %1502, !dx.controlflow.hints !61

; <label>:1502                                    ; preds = %1495
  %1503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1485, i32 60)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.f32 %1503, 0
  %1505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1485, i32 64)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.f32 %1505, 0
  %1507 = extractvalue %dx.types.ResRet.f32 %1505, 1
  %1508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1485, i32 72)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.f32 %1508, 0
  %1510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1485, i32 96)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.f32 %1510, 0
  br label %1512

; <label>:1512                                    ; preds = %1502, %1495
  %1513 = phi float [ %1504, %1502 ], [ %479, %1495 ]
  %1514 = phi float [ %1509, %1502 ], [ %477, %1495 ]
  %1515 = phi float [ %1511, %1502 ], [ %1498, %1495 ]
  %1516 = phi float [ %1506, %1502 ], [ %1500, %1495 ]
  %1517 = phi float [ %1507, %1502 ], [ %1501, %1495 ]
  %1518 = call float @dx.op.binary.f32(i32 35, float %1152, float 0.000000e+00)  ; FMax(a,b)
  %1519 = call float @dx.op.binary.f32(i32 36, float %1518, float 1.000000e+00)  ; FMin(a,b)
  %1520 = call float @dx.op.unary.f32(i32 24, float %1519)  ; Sqrt(value)
  %1521 = call float @dx.op.binary.f32(i32 35, float %1155, float 0x3F847AE140000000)  ; FMax(a,b)
  %1522 = fsub fast float %1153, %1123
  %1523 = fsub fast float %1123, %1154
  %1524 = call float @dx.op.binary.f32(i32 36, float %1523, float %1522)  ; FMin(a,b)
  %1525 = fdiv fast float %1524, %1521
  %1526 = call float @dx.op.unary.f32(i32 7, float %1525)  ; Saturate(value)
  %1527 = fsub fast float %1123, %1514
  %1528 = fdiv fast float %1527, %1513
  %1529 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  %1530 = fsub fast float 1.000000e+00, %1529
  %1531 = fmul float %1526, %1530
  %1532 = fmul float %1531, %1531
  %1533 = fmul fast float %1520, %1497
  %1534 = fmul fast float %1533, %1532
  %1535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1536 = extractvalue %dx.types.CBufRet.f32 %1535, 2
  %1537 = extractvalue %dx.types.CBufRet.f32 %1535, 1
  %1538 = fsub fast float %1534, %1537
  %1539 = fsub fast float %1536, %1537
  %1540 = fdiv fast float %1538, %1539
  %1541 = call float @dx.op.unary.f32(i32 7, float %1540)  ; Saturate(value)
  %1542 = fmul fast float %1541, %1515
  %1543 = fcmp fast ogt float %1517, 0.000000e+00
  br i1 %1543, label %1544, label %1564, !dx.controlflow.hints !62

; <label>:1544                                    ; preds = %1512
  %1545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1546 = extractvalue %dx.types.CBufRet.f32 %1545, 0
  %1547 = extractvalue %dx.types.CBufRet.f32 %1545, 1
  %1548 = extractvalue %dx.types.CBufRet.f32 %1545, 2
  %1549 = fsub fast float %1121, %1546
  %1550 = fsub fast float %1122, %1547
  %1551 = fsub fast float %1123, %1548
  %1552 = fmul fast float %1549, %1549
  %1553 = fmul fast float %1550, %1550
  %1554 = fadd fast float %1552, %1553
  %1555 = fmul fast float %1551, %1551
  %1556 = fadd fast float %1554, %1555
  %1557 = call float @dx.op.unary.f32(i32 24, float %1556)  ; Sqrt(value)
  %1558 = fsub fast float %1557, %1516
  %1559 = fsub fast float %1517, %1516
  %1560 = fdiv fast float %1558, %1559
  %1561 = call float @dx.op.unary.f32(i32 7, float %1560)  ; Saturate(value)
  %1562 = fmul fast float %1561, %1561
  %1563 = fmul fast float %1562, %1542
  br label %1564

; <label>:1564                                    ; preds = %1544, %1512, %1492
  %1565 = phi float [ 0.000000e+00, %1492 ], [ %1563, %1544 ], [ %1542, %1512 ]
  %1566 = fmul fast float %1565, %1117
  %1567 = fadd fast float %1566, %1442
  br label %1568

; <label>:1568                                    ; preds = %1564, %1441
  %1569 = phi float [ %1567, %1564 ], [ %1442, %1441 ]
  %1570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1571 = extractvalue %dx.types.CBufRet.f32 %1570, 3
  %1572 = fmul fast float %1569, 0xBFF7154760000000
  %1573 = fmul fast float %1572, %1571
  %1574 = call float @dx.op.unary.f32(i32 21, float %1573)  ; Exp(value)
  %1575 = call float @dx.op.unary.f32(i32 7, float %1574)  ; Saturate(value)
  %1576 = fmul fast float %1575, %1113
  %1577 = fmul fast float %1575, %1114
  %1578 = fmul fast float %1575, %1115
  %1579 = fadd fast float %1576, %208
  %1580 = fadd fast float %1577, %209
  %1581 = fadd fast float %1578, %210
  %1582 = fsub fast float 1.000000e+00, %1083
  %1583 = fmul fast float %1075, %439
  %1584 = fmul fast float %1583, %1582
  %1585 = fmul fast float %1584, %1579
  %1586 = fmul fast float %1076, %439
  %1587 = fmul fast float %1586, %1582
  %1588 = fmul fast float %1587, %1580
  %1589 = fmul fast float %1077, %439
  %1590 = fmul fast float %1589, %1582
  %1591 = fmul fast float %1590, %1581
  %1592 = fadd fast float %1585, %440
  %1593 = fadd fast float %1588, %441
  %1594 = fadd fast float %1591, %442
  %1595 = fdiv fast float %1060, %655
  %1596 = fadd fast float %655, %446
  %1597 = fmul fast float %446, %446
  %1598 = fmul fast float %1596, %1596
  %1599 = fsub fast float %1597, %1598
  %1600 = fmul fast float %1599, -5.000000e-01
  %1601 = fmul fast float %1600, %1595
  %1602 = fadd fast float %1601, %438
  %1603 = fadd fast float %1060, %448
  %1604 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1605 = extractvalue %dx.types.CBufRet.i32 %1604, 0
  %1606 = icmp eq i32 %1605, 0
  br i1 %1606, label %1633, label %1607, !dx.controlflow.hints !66

; <label>:1607                                    ; preds = %1568
  %1608 = icmp ne i32 %453, 0
  %1609 = zext i1 %1608 to i32
  %1610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1611 = extractvalue %dx.types.CBufRet.f32 %1610, 2
  %1612 = extractvalue %dx.types.CBufRet.f32 %1610, 0
  %1613 = fsub fast float %1596, %1612
  %1614 = fmul fast float %1613, %1611
  %1615 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  %1616 = fadd fast float %1615, -5.000000e-01
  %1617 = fmul fast float %1616, 2.000000e+00
  %1618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1619 = extractvalue %dx.types.CBufRet.f32 %1618, 2
  %1620 = fcmp fast olt float %1617, %1619
  br i1 %1620, label %1621, label %1633, !dx.controlflow.hints !67

; <label>:1621                                    ; preds = %1607
  %1622 = fmul fast float %1617, %1617
  %1623 = fmul fast float %1582, %439
  %1624 = fmul fast float %1617, %1623
  %1625 = fmul fast float %1622, %1623
  %1626 = fmul fast float %1624, %1622
  %1627 = fmul fast float %1622, %1622
  %1628 = fmul fast float %1627, %1623
  %1629 = fadd fast float %1624, %449
  %1630 = fadd fast float %1625, %450
  %1631 = fadd fast float %1626, %451
  %1632 = fadd fast float %1628, %452
  br label %1633

; <label>:1633                                    ; preds = %1621, %1607, %1568
  %1634 = phi float [ %449, %1568 ], [ %1629, %1621 ], [ %449, %1607 ]
  %1635 = phi float [ %450, %1568 ], [ %1630, %1621 ], [ %450, %1607 ]
  %1636 = phi float [ %451, %1568 ], [ %1631, %1621 ], [ %451, %1607 ]
  %1637 = phi float [ %452, %1568 ], [ %1632, %1621 ], [ %452, %1607 ]
  %1638 = phi i32 [ %453, %1568 ], [ 1, %1621 ], [ %1609, %1607 ]
  %1639 = fmul fast float %1083, %439
  br label %1640

; <label>:1640                                    ; preds = %1633, %1078
  %1641 = phi float [ %1079, %1078 ], [ %1596, %1633 ]
  %1642 = phi float [ %430, %1078 ], [ %1152, %1633 ]
  %1643 = phi float [ %431, %1078 ], [ %1153, %1633 ]
  %1644 = phi float [ %432, %1078 ], [ %1154, %1633 ]
  %1645 = phi float [ %433, %1078 ], [ %1155, %1633 ]
  %1646 = phi float [ %438, %1078 ], [ %1602, %1633 ]
  %1647 = phi float [ %439, %1078 ], [ %1639, %1633 ]
  %1648 = phi float [ %440, %1078 ], [ %1592, %1633 ]
  %1649 = phi float [ %441, %1078 ], [ %1593, %1633 ]
  %1650 = phi float [ %442, %1078 ], [ %1594, %1633 ]
  %1651 = phi float [ %448, %1078 ], [ %1603, %1633 ]
  %1652 = phi float [ %449, %1078 ], [ %1634, %1633 ]
  %1653 = phi float [ %450, %1078 ], [ %1635, %1633 ]
  %1654 = phi float [ %451, %1078 ], [ %1636, %1633 ]
  %1655 = phi float [ %452, %1078 ], [ %1637, %1633 ]
  %1656 = phi i32 [ %453, %1078 ], [ %1638, %1633 ]
  %1657 = fmul fast float %655, %283
  %1658 = fmul fast float %655, %284
  %1659 = fmul fast float %655, %285
  %1660 = fadd fast float %1657, %443
  %1661 = fadd fast float %1658, %444
  %1662 = fadd fast float %1659, %445
  %1663 = fcmp fast olt float %1641, %410
  %1664 = extractvalue %dx.types.CBufRet.f32 %1064, 2
  %1665 = fcmp fast olt float %1664, %1647
  %1666 = and i1 %1663, %1665
  br i1 %1666, label %429, label %1667

; <label>:1667                                    ; preds = %1640
  br label %1668

; <label>:1668                                    ; preds = %1667, %386
  %1669 = phi float [ 0.000000e+00, %386 ], [ %1646, %1667 ]
  %1670 = phi float [ 1.000000e+00, %386 ], [ %1647, %1667 ]
  %1671 = phi float [ 0.000000e+00, %386 ], [ %1648, %1667 ]
  %1672 = phi float [ 0.000000e+00, %386 ], [ %1649, %1667 ]
  %1673 = phi float [ 0.000000e+00, %386 ], [ %1650, %1667 ]
  %1674 = phi float [ 0.000000e+00, %386 ], [ %1651, %1667 ]
  %1675 = phi float [ 0.000000e+00, %386 ], [ %1652, %1667 ]
  %1676 = phi float [ 0.000000e+00, %386 ], [ %1653, %1667 ]
  %1677 = phi float [ 0.000000e+00, %386 ], [ %1654, %1667 ]
  %1678 = phi float [ 0.000000e+00, %386 ], [ %1655, %1667 ]
  %1679 = phi i32 [ 0, %386 ], [ %1656, %1667 ]
  %1680 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1681 = extractvalue %dx.types.CBufRet.i32 %1680, 0
  %1682 = icmp eq i32 %1681, 0
  br i1 %1682, label %1724, label %1683, !dx.controlflow.hints !68

; <label>:1683                                    ; preds = %1668
  %1684 = icmp eq i32 %1679, 0
  br i1 %1684, label %1723, label %1685, !dx.controlflow.hints !69

; <label>:1685                                    ; preds = %1683
  %1686 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.i32 %1686, 2
  %1688 = icmp eq i32 %1687, 0
  br i1 %1688, label %1695, label %1689, !dx.controlflow.hints !70

; <label>:1689                                    ; preds = %1685
  %1690 = fsub fast float 1.000000e+00, %1670
  %1691 = fdiv fast float %1675, %1690
  %1692 = fdiv fast float %1676, %1690
  %1693 = fdiv fast float %1677, %1690
  %1694 = fdiv fast float %1678, %1690
  br label %1700

; <label>:1695                                    ; preds = %1685
  %1696 = fadd fast float %1675, %1670
  %1697 = fadd fast float %1676, %1670
  %1698 = fadd fast float %1677, %1670
  %1699 = fadd fast float %1678, %1670
  br label %1700

; <label>:1700                                    ; preds = %1695, %1689
  %1701 = phi float [ %1691, %1689 ], [ %1696, %1695 ]
  %1702 = phi float [ %1692, %1689 ], [ %1697, %1695 ]
  %1703 = phi float [ %1693, %1689 ], [ %1698, %1695 ]
  %1704 = phi float [ %1694, %1689 ], [ %1699, %1695 ]
  %1705 = call float @dx.op.binary.f32(i32 35, float %1701, float -1.000000e+00)  ; FMax(a,b)
  %1706 = call float @dx.op.binary.f32(i32 35, float %1702, float -1.000000e+00)  ; FMax(a,b)
  %1707 = call float @dx.op.binary.f32(i32 35, float %1703, float -1.000000e+00)  ; FMax(a,b)
  %1708 = call float @dx.op.binary.f32(i32 35, float %1704, float -1.000000e+00)  ; FMax(a,b)
  %1709 = call float @dx.op.binary.f32(i32 36, float %1705, float 1.000000e+00)  ; FMin(a,b)
  %1710 = call float @dx.op.binary.f32(i32 36, float %1706, float 1.000000e+00)  ; FMin(a,b)
  %1711 = call float @dx.op.binary.f32(i32 36, float %1707, float 1.000000e+00)  ; FMin(a,b)
  %1712 = call float @dx.op.binary.f32(i32 36, float %1708, float 1.000000e+00)  ; FMin(a,b)
  %1713 = fmul fast float %1709, 1.500000e+00
  %1714 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1711, float %1713)  ; FMad(a,b,c)
  %1715 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1710, float 0.000000e+00)  ; FMad(a,b,c)
  %1716 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1712, float %1715)  ; FMad(a,b,c)
  %1717 = fmul fast float %1709, 0x3FEBB67AE0000000
  %1718 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1711, float %1717)  ; FMad(a,b,c)
  %1719 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1710, float 0.000000e+00)  ; FMad(a,b,c)
  %1720 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1712, float %1719)  ; FMad(a,b,c)
  %1721 = fadd fast float %1714, 5.000000e-01
  %1722 = fadd fast float %1718, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %23, i32 %24, i32 0, float %1721, float %1716, float %1722, float %1720, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1724

; <label>:1723                                    ; preds = %1683
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %23, i32 %24, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1724

; <label>:1724                                    ; preds = %1723, %1700, %1668
  %1725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1726 = extractvalue %dx.types.CBufRet.f32 %1725, 2
  %1727 = fsub fast float %1670, %1726
  %1728 = fdiv fast float %1727, %1726
  %1729 = call float @dx.op.unary.f32(i32 7, float %1728)  ; Saturate(value)
  %1730 = fmul fast float %1729, 2.000000e+00
  %1731 = fsub fast float 3.000000e+00, %1730
  %1732 = fmul fast float %1729, %1729
  %1733 = fmul fast float %1732, %1670
  %1734 = fmul fast float %1733, %1731
  %1735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1736 = extractvalue %dx.types.CBufRet.f32 %1735, 0
  %1737 = extractvalue %dx.types.CBufRet.f32 %1735, 1
  %1738 = extractvalue %dx.types.CBufRet.f32 %1735, 2
  %1739 = call float @dx.op.dot3.f32(i32 55, float %283, float %284, float %285, float %1736, float %1737, float %1738)  ; Dot3(ax,ay,az,bx,by,bz)
  %1740 = fmul fast float %1739, %1669
  %1741 = fcmp fast ogt float %1674, 0.000000e+00
  %1742 = fdiv fast float 1.000000e+00, %1674
  %1743 = fmul fast float %1740, %1742
  %1744 = select i1 %1741, float %1743, float %294
  %1745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1746 = extractvalue %dx.types.CBufRet.f32 %1745, 0
  %1747 = extractvalue %dx.types.CBufRet.f32 %1745, 1
  %1748 = extractvalue %dx.types.CBufRet.f32 %1745, 2
  %1749 = fmul fast float %1746, %247
  %1750 = fmul fast float %1747, %247
  %1751 = fmul fast float %1748, %247
  %1752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1753 = extractvalue %dx.types.CBufRet.f32 %1752, 0
  %1754 = extractvalue %dx.types.CBufRet.f32 %1752, 1
  %1755 = extractvalue %dx.types.CBufRet.f32 %1752, 2
  %1756 = fmul fast float %1753, %248
  %1757 = fmul fast float %1754, %248
  %1758 = fmul fast float %1755, %248
  %1759 = fadd fast float %1756, %1749
  %1760 = fadd fast float %1757, %1750
  %1761 = fadd fast float %1758, %1751
  %1762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1763 = extractvalue %dx.types.CBufRet.f32 %1762, 0
  %1764 = extractvalue %dx.types.CBufRet.f32 %1762, 1
  %1765 = extractvalue %dx.types.CBufRet.f32 %1762, 2
  %1766 = fadd fast float %1759, %1763
  %1767 = fadd fast float %1760, %1764
  %1768 = fadd fast float %1761, %1765
  %1769 = fmul fast float %1766, %1744
  %1770 = fmul fast float %1767, %1744
  %1771 = fmul fast float %1768, %1744
  %1772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1773 = extractvalue %dx.types.CBufRet.f32 %1772, 0
  %1774 = extractvalue %dx.types.CBufRet.f32 %1772, 1
  %1775 = extractvalue %dx.types.CBufRet.f32 %1772, 2
  %1776 = extractvalue %dx.types.CBufRet.f32 %1772, 3
  %1777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.f32 %1777, 0
  %1779 = extractvalue %dx.types.CBufRet.f32 %1777, 1
  %1780 = extractvalue %dx.types.CBufRet.f32 %1777, 2
  %1781 = extractvalue %dx.types.CBufRet.f32 %1777, 3
  %1782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.f32 %1782, 0
  %1784 = extractvalue %dx.types.CBufRet.f32 %1782, 1
  %1785 = extractvalue %dx.types.CBufRet.f32 %1782, 2
  %1786 = extractvalue %dx.types.CBufRet.f32 %1782, 3
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 0
  %1789 = extractvalue %dx.types.CBufRet.f32 %1787, 1
  %1790 = extractvalue %dx.types.CBufRet.f32 %1787, 2
  %1791 = extractvalue %dx.types.CBufRet.f32 %1787, 3
  %1792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1793 = extractvalue %dx.types.CBufRet.f32 %1792, 3
  %1794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1795 = extractvalue %dx.types.CBufRet.f32 %1794, 3
  %1796 = extractvalue %dx.types.CBufRet.f32 %1794, 0
  %1797 = extractvalue %dx.types.CBufRet.f32 %1794, 1
  %1798 = extractvalue %dx.types.CBufRet.f32 %1794, 2
  %1799 = fcmp fast olt float %1798, -5.000000e-01
  %1800 = call float @dx.op.dot3.f32(i32 55, float %1769, float %1770, float %1771, float %1769, float %1770, float %1771)  ; Dot3(ax,ay,az,bx,by,bz)
  %1801 = call float @dx.op.unary.f32(i32 25, float %1800)  ; Rsqrt(value)
  %1802 = fmul fast float %1801, %1800
  %1803 = fmul fast float %1801, %1769
  %1804 = fmul fast float %1801, %1770
  %1805 = fmul fast float %1801, %1771
  %1806 = fadd fast float %1802, %1776
  %1807 = call float @dx.op.dot3.f32(i32 55, float %1803, float %1804, float %1805, float %1773, float %1774, float %1775)  ; Dot3(ax,ay,az,bx,by,bz)
  %1808 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1809 = extractvalue %dx.types.CBufRet.i32 %1808, 1
  %1810 = and i32 %1809, 1
  %1811 = icmp ne i32 %1810, 0
  %1812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1813 = extractvalue %dx.types.CBufRet.f32 %1812, 2
  %1814 = fcmp fast ogt float %1813, 0.000000e+00
  %1815 = and i1 %1811, %1814
  br i1 %1815, label %1816, label %2222, !dx.controlflow.hints !71

; <label>:1816                                    ; preds = %1724
  %1817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1818 = extractvalue %dx.types.CBufRet.f32 %1817, 3
  %1819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1820 = extractvalue %dx.types.CBufRet.f32 %1819, 2
  %1821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1822 = extractvalue %dx.types.CBufRet.f32 %1821, 2
  %1823 = fsub fast float %1820, %1822
  %1824 = and i32 %1809, 2
  %1825 = extractvalue %dx.types.CBufRet.i32 %1808, 0
  %1826 = call i32 @dx.op.binary.i32(i32 40, i32 %1825, i32 3)  ; UMin(a,b)
  %1827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1828 = extractvalue %dx.types.CBufRet.f32 %1827, 0
  %1829 = extractvalue %dx.types.CBufRet.f32 %1827, 1
  %1830 = extractvalue %dx.types.CBufRet.f32 %1821, 0
  %1831 = extractvalue %dx.types.CBufRet.f32 %1821, 1
  %1832 = fsub fast float %1828, %1830
  %1833 = fsub fast float %1829, %1831
  %1834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1835 = extractvalue %dx.types.CBufRet.f32 %1834, 0
  %1836 = fcmp fast ogt float %1835, 0.000000e+00
  %1837 = fsub fast float -0.000000e+00, %1832
  %1838 = fsub fast float -0.000000e+00, %1833
  %1839 = call float @dx.op.dot2.f32(i32 54, float %1803, float %1804, float %1803, float %1804)  ; Dot2(ax,ay,bx,by)
  %1840 = call float @dx.op.dot2.f32(i32 54, float %1803, float %1804, float %1837, float %1838)  ; Dot2(ax,ay,bx,by)
  %1841 = fmul fast float %1840, 2.000000e+00
  %1842 = call float @dx.op.dot2.f32(i32 54, float %1837, float %1838, float %1837, float %1838)  ; Dot2(ax,ay,bx,by)
  %1843 = fmul fast float %1835, %1835
  %1844 = fsub fast float %1842, %1843
  %1845 = fmul fast float %1841, %1841
  %1846 = fmul fast float %1839, 4.000000e+00
  %1847 = fmul fast float %1846, %1844
  %1848 = fsub fast float %1845, %1847
  %1849 = fcmp fast ogt float %1848, 0.000000e+00
  br i1 %1849, label %1850, label %1865, !dx.controlflow.hints !72

; <label>:1850                                    ; preds = %1816
  %1851 = fcmp fast ogt float %1841, 0.000000e+00
  %1852 = call float @dx.op.unary.f32(i32 24, float %1848)  ; Sqrt(value)
  %1853 = fsub fast float -0.000000e+00, %1852
  %1854 = select i1 %1851, float %1852, float %1853
  %1855 = fadd fast float %1854, %1841
  %1856 = fmul float %1855, -5.000000e-01
  %1857 = fdiv fast float %1856, %1839
  %1858 = call float @dx.op.binary.f32(i32 35, float %1857, float 0.000000e+00)  ; FMax(a,b)
  %1859 = call float @dx.op.binary.f32(i32 36, float %1802, float %1858)  ; FMin(a,b)
  %1860 = fdiv fast float %1844, %1856
  %1861 = call float @dx.op.binary.f32(i32 35, float %1860, float 0.000000e+00)  ; FMax(a,b)
  %1862 = call float @dx.op.binary.f32(i32 36, float %1802, float %1861)  ; FMin(a,b)
  %1863 = call float @dx.op.binary.f32(i32 36, float %1859, float %1862)  ; FMin(a,b)
  %1864 = call float @dx.op.binary.f32(i32 35, float %1859, float %1862)  ; FMax(a,b)
  br label %1865

; <label>:1865                                    ; preds = %1850, %1816
  %1866 = phi float [ %1864, %1850 ], [ -1.000000e+00, %1816 ]
  %1867 = phi float [ %1863, %1850 ], [ -1.000000e+00, %1816 ]
  %1868 = phi i1 [ true, %1850 ], [ false, %1816 ]
  %1869 = and i1 %1836, %1868
  br i1 %1869, label %1870, label %1872, !dx.controlflow.hints !73

; <label>:1870                                    ; preds = %1865
  %1871 = fcmp fast oeq float %1867, %1866
  br i1 %1871, label %2175, label %1873, !dx.controlflow.hints !74

; <label>:1872                                    ; preds = %1865
  br i1 %1836, label %2175, label %1873, !dx.controlflow.hints !75

; <label>:1873                                    ; preds = %1872, %1870
  %1874 = phi float [ %1802, %1872 ], [ %1866, %1870 ]
  %1875 = phi float [ 0.000000e+00, %1872 ], [ %1867, %1870 ]
  %1876 = icmp ne i32 %1824, 0
  %1877 = fmul fast float %1874, %1805
  %1878 = fadd fast float %1877, %1818
  %1879 = fmul fast float %1878, %1874
  %1880 = select i1 %1876, float 0.000000e+00, float %1879
  %1881 = fcmp fast oeq float %1805, 0.000000e+00
  %1882 = fdiv fast float %1823, %1805
  %1883 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1882)  ; FMax(a,b)
  %1884 = select i1 %1881, float %1874, float %1883
  %1885 = call float @dx.op.binary.f32(i32 36, float %1874, float %1884)  ; FMin(a,b)
  %1886 = fcmp fast ogt float %1805, 0.000000e+00
  %1887 = fcmp fast olt float %1823, 0.000000e+00
  br i1 %1886, label %1888, label %1945, !dx.controlflow.hints !76

; <label>:1888                                    ; preds = %1873
  %1889 = icmp eq i32 %1824, 0
  br i1 %1887, label %1890, label %1934, !dx.controlflow.hints !77

; <label>:1890                                    ; preds = %1888
  %1891 = select i1 %1889, float %1874, float 0.000000e+00
  %1892 = fsub fast float -0.000000e+00, %1891
  %1893 = call float @dx.op.unary.f32(i32 6, float %1892)  ; FAbs(value)
  %1894 = fmul fast float %1891, %1805
  %1895 = fadd fast float %1894, %1818
  %1896 = fmul fast float %1893, %1895
  %1897 = fsub fast float %1880, %1896
  %1898 = fsub fast float %1874, %1893
  %1899 = select i1 %1889, float %1898, float 0.000000e+00
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.CBufRet.f32 %1900, 1
  %1903 = extractvalue %dx.types.CBufRet.f32 %1900, 2
  %1904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1905 = extractvalue %dx.types.CBufRet.f32 %1904, 0
  %1906 = extractvalue %dx.types.CBufRet.f32 %1904, 1
  %1907 = extractvalue %dx.types.CBufRet.f32 %1904, 2
  %1908 = extractvalue %dx.types.CBufRet.f32 %1904, 3
  %1909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1910 = extractvalue %dx.types.CBufRet.f32 %1909, 3
  %1911 = call float @dx.op.binary.f32(i32 36, float %1897, float %1910)  ; FMin(a,b)
  %1912 = fmul fast float %1908, %1899
  %1913 = call float @dx.op.unary.f32(i32 7, float %1912)  ; Saturate(value)
  %1914 = fsub fast float %1905, %1901
  %1915 = fsub fast float %1906, %1902
  %1916 = fsub fast float %1907, %1903
  %1917 = fmul fast float %1913, %1914
  %1918 = fmul fast float %1913, %1915
  %1919 = fmul fast float %1913, %1916
  %1920 = fadd fast float %1917, %1901
  %1921 = fadd fast float %1918, %1902
  %1922 = fadd fast float %1919, %1903
  %1923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1924 = extractvalue %dx.types.CBufRet.f32 %1923, 0
  %1925 = extractvalue %dx.types.CBufRet.f32 %1923, 1
  %1926 = fadd fast float %1925, %1924
  %1927 = call float @dx.op.unary.f32(i32 7, float %1926)  ; Saturate(value)
  %1928 = extractvalue %dx.types.CBufRet.f32 %1923, 2
  %1929 = extractvalue %dx.types.CBufRet.f32 %1923, 3
  %1930 = fadd fast float %1929, %1928
  %1931 = call float @dx.op.unary.f32(i32 7, float %1930)  ; Saturate(value)
  %1932 = fmul fast float %1927, %1911
  %1933 = fmul fast float %1932, %1931
  br label %2175

; <label>:1934                                    ; preds = %1888
  br i1 %1889, label %1935, label %1956, !dx.controlflow.hints !78

; <label>:1935                                    ; preds = %1934
  %1936 = call float @dx.op.binary.f32(i32 36, float %1885, float %1875)  ; FMin(a,b)
  %1937 = fsub fast float %1885, %1936
  %1938 = fsub fast float %1937, %1874
  %1939 = call float @dx.op.unary.f32(i32 6, float %1938)  ; FAbs(value)
  %1940 = fadd fast float %1937, %1874
  %1941 = fmul fast float %1940, %1805
  %1942 = fadd fast float %1941, %1818
  %1943 = fmul fast float %1942, %1939
  %1944 = fsub fast float %1880, %1943
  br label %1956

; <label>:1945                                    ; preds = %1873
  br i1 %1887, label %1946, label %1956, !dx.controlflow.hints !79

; <label>:1946                                    ; preds = %1945
  %1947 = call float @dx.op.binary.f32(i32 35, float %1875, float %1885)  ; FMax(a,b)
  %1948 = icmp eq i32 %1824, 0
  %1949 = select i1 %1948, float %1885, float 0.000000e+00
  %1950 = fsub fast float -0.000000e+00, %1949
  %1951 = call float @dx.op.unary.f32(i32 6, float %1950)  ; FAbs(value)
  %1952 = fmul fast float %1949, %1805
  %1953 = fadd fast float %1952, %1818
  %1954 = fmul fast float %1951, %1953
  %1955 = fsub fast float %1880, %1954
  br label %1956

; <label>:1956                                    ; preds = %1946, %1945, %1935, %1934
  %1957 = phi float [ %1875, %1934 ], [ %1875, %1935 ], [ %1947, %1946 ], [ %1875, %1945 ]
  %1958 = phi float [ 0.000000e+00, %1934 ], [ %1939, %1935 ], [ %1951, %1946 ], [ 0.000000e+00, %1945 ]
  %1959 = phi float [ %1880, %1934 ], [ %1944, %1935 ], [ %1955, %1946 ], [ %1880, %1945 ]
  %1960 = phi float [ %1885, %1934 ], [ %1885, %1935 ], [ %1874, %1946 ], [ %1874, %1945 ]
  %1961 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 0
  store float -1.000000e+00, float* %1961, align 4, !tbaa !80, !noalias !84
  %1962 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 1
  store float -1.000000e+00, float* %1962, align 4, !tbaa !80, !noalias !84
  %1963 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 2
  store float -1.000000e+00, float* %1963, align 4, !tbaa !80, !noalias !84
  %1964 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  store float -1.000000e+00, float* %1964, align 4, !tbaa !80, !noalias !84
  %1965 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 1
  store float -1.000000e+00, float* %1965, align 4, !tbaa !80, !noalias !84
  %1966 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 2
  store float -1.000000e+00, float* %1966, align 4, !tbaa !80, !noalias !84
  %1967 = icmp sgt i32 %1826, 0
  br i1 %1967, label %1968, label %2029

; <label>:1968                                    ; preds = %1956
  br label %1969

; <label>:1969                                    ; preds = %2018, %1968
  %1970 = phi i32 [ %2019, %2018 ], [ 0, %1968 ]
  %1971 = phi i32 [ %2020, %2018 ], [ 0, %1968 ]
  %1972 = add nuw i32 %1971, 171
  %1973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %1972)  ; CBufferLoadLegacy(handle,regIndex)
  %1974 = extractvalue %dx.types.CBufRet.f32 %1973, 0
  %1975 = extractvalue %dx.types.CBufRet.f32 %1973, 1
  %1976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1977 = extractvalue %dx.types.CBufRet.f32 %1976, 0
  %1978 = extractvalue %dx.types.CBufRet.f32 %1976, 1
  %1979 = fsub fast float %1974, %1977
  %1980 = fsub fast float %1975, %1978
  %1981 = extractvalue %dx.types.CBufRet.f32 %1973, 2
  %1982 = fsub fast float -0.000000e+00, %1979
  %1983 = fsub fast float -0.000000e+00, %1980
  %1984 = call float @dx.op.dot2.f32(i32 54, float %1803, float %1804, float %1982, float %1983)  ; Dot2(ax,ay,bx,by)
  %1985 = fmul fast float %1984, 2.000000e+00
  %1986 = call float @dx.op.dot2.f32(i32 54, float %1982, float %1983, float %1982, float %1983)  ; Dot2(ax,ay,bx,by)
  %1987 = fmul fast float %1981, %1981
  %1988 = fsub fast float %1986, %1987
  %1989 = fmul fast float %1985, %1985
  %1990 = fmul fast float %1846, %1988
  %1991 = fsub fast float %1989, %1990
  %1992 = fcmp fast ogt float %1991, 0.000000e+00
  br i1 %1992, label %1993, label %2008, !dx.controlflow.hints !72

; <label>:1993                                    ; preds = %1969
  %1994 = fcmp fast ogt float %1985, 0.000000e+00
  %1995 = call float @dx.op.unary.f32(i32 24, float %1991)  ; Sqrt(value)
  %1996 = fsub fast float -0.000000e+00, %1995
  %1997 = select i1 %1994, float %1995, float %1996
  %1998 = fadd fast float %1997, %1985
  %1999 = fmul float %1998, -5.000000e-01
  %2000 = fdiv fast float %1999, %1839
  %2001 = call float @dx.op.binary.f32(i32 35, float %2000, float 0.000000e+00)  ; FMax(a,b)
  %2002 = call float @dx.op.binary.f32(i32 36, float %1874, float %2001)  ; FMin(a,b)
  %2003 = fdiv fast float %1988, %1999
  %2004 = call float @dx.op.binary.f32(i32 35, float %2003, float 0.000000e+00)  ; FMax(a,b)
  %2005 = call float @dx.op.binary.f32(i32 36, float %1874, float %2004)  ; FMin(a,b)
  %2006 = call float @dx.op.binary.f32(i32 36, float %2002, float %2005)  ; FMin(a,b)
  %2007 = call float @dx.op.binary.f32(i32 35, float %2002, float %2005)  ; FMax(a,b)
  br label %2008

; <label>:2008                                    ; preds = %1993, %1969
  %2009 = phi float [ %2007, %1993 ], [ -1.000000e+00, %1969 ]
  %2010 = phi float [ %2006, %1993 ], [ -1.000000e+00, %1969 ]
  %2011 = phi i1 [ true, %1993 ], [ false, %1969 ]
  br i1 %2011, label %2012, label %2018, !dx.controlflow.hints !95

; <label>:2012                                    ; preds = %2008
  %2013 = call float @dx.op.binary.f32(i32 35, float %1957, float %2010)  ; FMax(a,b)
  %2014 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %1971
  store float %2013, float* %2014, align 4, !tbaa !80, !noalias !84
  %2015 = call float @dx.op.binary.f32(i32 35, float %1957, float %2009)  ; FMax(a,b)
  %2016 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %1971
  store float %2015, float* %2016, align 4, !tbaa !80, !noalias !84
  %2017 = add nsw i32 %1970, 1
  br label %2018

; <label>:2018                                    ; preds = %2012, %2008
  %2019 = phi i32 [ %2017, %2012 ], [ %1970, %2008 ]
  %2020 = add nuw nsw i32 %1971, 1
  %2021 = icmp eq i32 %2020, %1826
  br i1 %2021, label %2022, label %1969

; <label>:2022                                    ; preds = %2018
  %2023 = load float, float* %1963, align 4, !tbaa !80, !alias.scope !96, !noalias !99
  %2024 = load float, float* %1962, align 4, !tbaa !80, !alias.scope !102, !noalias !103
  %2025 = load float, float* %1961, align 4, !tbaa !80, !alias.scope !104, !noalias !105
  %2026 = load float, float* %1966, align 4, !tbaa !80, !alias.scope !106, !noalias !109
  %2027 = load float, float* %1965, align 4, !tbaa !80, !alias.scope !112, !noalias !113
  %2028 = load float, float* %1964, align 4, !tbaa !80, !alias.scope !114, !noalias !115
  br label %2029

; <label>:2029                                    ; preds = %2022, %1956
  %2030 = phi float [ -1.000000e+00, %1956 ], [ %2028, %2022 ]
  %2031 = phi float [ -1.000000e+00, %1956 ], [ %2027, %2022 ]
  %2032 = phi float [ -1.000000e+00, %1956 ], [ %2026, %2022 ]
  %2033 = phi float [ -1.000000e+00, %1956 ], [ %2025, %2022 ]
  %2034 = phi float [ -1.000000e+00, %1956 ], [ %2024, %2022 ]
  %2035 = phi float [ -1.000000e+00, %1956 ], [ %2023, %2022 ]
  %2036 = phi i32 [ 0, %1956 ], [ %2019, %2022 ]
  %2037 = call float @dx.op.binary.f32(i32 36, float %2034, float %2035)  ; FMin(a,b)
  %2038 = call float @dx.op.binary.f32(i32 36, float %2033, float %2037)  ; FMin(a,b)
  %2039 = call float @dx.op.binary.f32(i32 35, float %2033, float %2034)  ; FMax(a,b)
  %2040 = call float @dx.op.binary.f32(i32 36, float %2039, float %2035)  ; FMin(a,b)
  %2041 = call float @dx.op.binary.f32(i32 36, float %2033, float %2034)  ; FMin(a,b)
  %2042 = call float @dx.op.binary.f32(i32 35, float %2041, float %2040)  ; FMax(a,b)
  %2043 = call float @dx.op.binary.f32(i32 35, float %2034, float %2035)  ; FMax(a,b)
  %2044 = call float @dx.op.binary.f32(i32 35, float %2033, float %2043)  ; FMax(a,b)
  store float %2038, float* %1961, align 4, !tbaa !80, !alias.scope !104, !noalias !105
  store float %2042, float* %1962, align 4, !tbaa !80, !alias.scope !102, !noalias !103
  store float %2044, float* %1963, align 4, !tbaa !80, !alias.scope !96, !noalias !99
  %2045 = call float @dx.op.binary.f32(i32 36, float %2031, float %2032)  ; FMin(a,b)
  %2046 = call float @dx.op.binary.f32(i32 36, float %2030, float %2045)  ; FMin(a,b)
  %2047 = call float @dx.op.binary.f32(i32 35, float %2030, float %2031)  ; FMax(a,b)
  %2048 = call float @dx.op.binary.f32(i32 36, float %2047, float %2032)  ; FMin(a,b)
  %2049 = call float @dx.op.binary.f32(i32 36, float %2030, float %2031)  ; FMin(a,b)
  %2050 = call float @dx.op.binary.f32(i32 35, float %2049, float %2048)  ; FMax(a,b)
  %2051 = call float @dx.op.binary.f32(i32 35, float %2031, float %2032)  ; FMax(a,b)
  %2052 = call float @dx.op.binary.f32(i32 35, float %2030, float %2051)  ; FMax(a,b)
  store float %2046, float* %1964, align 4, !tbaa !80, !alias.scope !114, !noalias !115
  store float %2050, float* %1965, align 4, !tbaa !80, !alias.scope !112, !noalias !113
  store float %2052, float* %1966, align 4, !tbaa !80, !alias.scope !106, !noalias !109
  %2053 = sub nsw i32 3, %2036
  %2054 = icmp sgt i32 %2053, 2
  br i1 %2054, label %2055, label %2093, !dx.controlflow.hints !116

; <label>:2055                                    ; preds = %2029
  %2056 = icmp eq i32 %1824, 0
  %2057 = fsub fast float %1874, %1958
  %2058 = select i1 %2056, float %2057, float %1958
  %2059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2060 = extractvalue %dx.types.CBufRet.f32 %2059, 0
  %2061 = extractvalue %dx.types.CBufRet.f32 %2059, 1
  %2062 = extractvalue %dx.types.CBufRet.f32 %2059, 2
  %2063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2064 = extractvalue %dx.types.CBufRet.f32 %2063, 0
  %2065 = extractvalue %dx.types.CBufRet.f32 %2063, 1
  %2066 = extractvalue %dx.types.CBufRet.f32 %2063, 2
  %2067 = extractvalue %dx.types.CBufRet.f32 %2063, 3
  %2068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2069 = extractvalue %dx.types.CBufRet.f32 %2068, 3
  %2070 = call float @dx.op.binary.f32(i32 36, float %1959, float %2069)  ; FMin(a,b)
  %2071 = fmul fast float %2067, %2058
  %2072 = call float @dx.op.unary.f32(i32 7, float %2071)  ; Saturate(value)
  %2073 = fsub fast float %2064, %2060
  %2074 = fsub fast float %2065, %2061
  %2075 = fsub fast float %2066, %2062
  %2076 = fmul fast float %2072, %2073
  %2077 = fmul fast float %2072, %2074
  %2078 = fmul fast float %2072, %2075
  %2079 = fadd fast float %2076, %2060
  %2080 = fadd fast float %2077, %2061
  %2081 = fadd fast float %2078, %2062
  %2082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2083 = extractvalue %dx.types.CBufRet.f32 %2082, 0
  %2084 = extractvalue %dx.types.CBufRet.f32 %2082, 1
  %2085 = fadd fast float %2084, %2083
  %2086 = call float @dx.op.unary.f32(i32 7, float %2085)  ; Saturate(value)
  %2087 = extractvalue %dx.types.CBufRet.f32 %2082, 2
  %2088 = extractvalue %dx.types.CBufRet.f32 %2082, 3
  %2089 = fadd fast float %2088, %2087
  %2090 = call float @dx.op.unary.f32(i32 7, float %2089)  ; Saturate(value)
  %2091 = fmul fast float %2086, %2070
  %2092 = fmul fast float %2091, %2090
  br label %2175

; <label>:2093                                    ; preds = %2029
  %2094 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %2053
  %2095 = load float, float* %2094, align 4, !tbaa !80, !noalias !84
  %2096 = fcmp fast olt float %2095, %1960
  %2097 = icmp sgt i32 %2036, 0
  %2098 = and i1 %2097, %2096
  br i1 %2098, label %2099, label %2136

; <label>:2099                                    ; preds = %2093
  br label %2100

; <label>:2100                                    ; preds = %2129, %2099
  %2101 = phi float [ %2130, %2129 ], [ %1958, %2099 ]
  %2102 = phi float [ %2131, %2129 ], [ %1959, %2099 ]
  %2103 = phi float [ %2111, %2129 ], [ %2095, %2099 ]
  %2104 = phi i32 [ %2108, %2129 ], [ %2053, %2099 ]
  %2105 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %2104
  %2106 = load float, float* %2105, align 4, !tbaa !80, !noalias !84
  %2107 = icmp slt i32 %2104, 2
  %2108 = add nsw i32 %2104, 1
  %2109 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %2108
  %2110 = load float, float* %2109, align 4, !tbaa !80, !noalias !84
  %2111 = select i1 %2107, float %2110, float %1874
  %2112 = call float @dx.op.binary.f32(i32 36, float %2111, float %2106)  ; FMin(a,b)
  %2113 = call float @dx.op.binary.f32(i32 36, float %1960, float %2112)  ; FMin(a,b)
  %2114 = icmp eq i32 %1824, 0
  %2115 = fadd fast float %2113, %2103
  %2116 = fmul fast float %2115, %1805
  %2117 = fadd fast float %2116, %1818
  br i1 %2114, label %2123, label %2118, !dx.controlflow.hints !117

; <label>:2118                                    ; preds = %2100
  %2119 = fsub fast float %2113, %2103
  %2120 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2119)  ; FMax(a,b)
  %2121 = fmul fast float %2120, %2117
  %2122 = fadd fast float %2121, %2102
  br label %2129

; <label>:2123                                    ; preds = %2100
  %2124 = fsub fast float %2103, %2113
  %2125 = call float @dx.op.unary.f32(i32 6, float %2124)  ; FAbs(value)
  %2126 = fadd fast float %2125, %2101
  %2127 = fmul fast float %2125, %2117
  %2128 = fsub fast float %2102, %2127
  br label %2129

; <label>:2129                                    ; preds = %2123, %2118
  %2130 = phi float [ %2120, %2118 ], [ %2126, %2123 ]
  %2131 = phi float [ %2122, %2118 ], [ %2128, %2123 ]
  %2132 = fcmp fast olt float %2111, %1960
  %2133 = icmp slt i32 %2108, 3
  %2134 = and i1 %2133, %2132
  br i1 %2134, label %2100, label %2135

; <label>:2135                                    ; preds = %2129
  br label %2136

; <label>:2136                                    ; preds = %2135, %2093
  %2137 = phi float [ %1958, %2093 ], [ %2130, %2135 ]
  %2138 = phi float [ %1959, %2093 ], [ %2131, %2135 ]
  %2139 = fsub fast float %1874, %2137
  %2140 = select i1 %1876, float %2137, float %2139
  %2141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2142 = extractvalue %dx.types.CBufRet.f32 %2141, 0
  %2143 = extractvalue %dx.types.CBufRet.f32 %2141, 1
  %2144 = extractvalue %dx.types.CBufRet.f32 %2141, 2
  %2145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2146 = extractvalue %dx.types.CBufRet.f32 %2145, 0
  %2147 = extractvalue %dx.types.CBufRet.f32 %2145, 1
  %2148 = extractvalue %dx.types.CBufRet.f32 %2145, 2
  %2149 = extractvalue %dx.types.CBufRet.f32 %2145, 3
  %2150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2151 = extractvalue %dx.types.CBufRet.f32 %2150, 3
  %2152 = call float @dx.op.binary.f32(i32 36, float %2138, float %2151)  ; FMin(a,b)
  %2153 = fmul fast float %2149, %2140
  %2154 = call float @dx.op.unary.f32(i32 7, float %2153)  ; Saturate(value)
  %2155 = fsub fast float %2146, %2142
  %2156 = fsub fast float %2147, %2143
  %2157 = fsub fast float %2148, %2144
  %2158 = fmul fast float %2154, %2155
  %2159 = fmul fast float %2154, %2156
  %2160 = fmul fast float %2154, %2157
  %2161 = fadd fast float %2158, %2142
  %2162 = fadd fast float %2159, %2143
  %2163 = fadd fast float %2160, %2144
  %2164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2165 = extractvalue %dx.types.CBufRet.f32 %2164, 0
  %2166 = extractvalue %dx.types.CBufRet.f32 %2164, 1
  %2167 = fadd fast float %2166, %2165
  %2168 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2169 = extractvalue %dx.types.CBufRet.f32 %2164, 2
  %2170 = extractvalue %dx.types.CBufRet.f32 %2164, 3
  %2171 = fadd fast float %2170, %2169
  %2172 = call float @dx.op.unary.f32(i32 7, float %2171)  ; Saturate(value)
  %2173 = fmul fast float %2168, %2152
  %2174 = fmul fast float %2173, %2172
  br label %2175

; <label>:2175                                    ; preds = %2136, %2055, %1890, %1872, %1870
  %2176 = phi float [ %1899, %1890 ], [ %2058, %2055 ], [ %2140, %2136 ], [ 0.000000e+00, %1870 ], [ 0.000000e+00, %1872 ]
  %2177 = phi float [ %1933, %1890 ], [ %2092, %2055 ], [ %2174, %2136 ], [ 0.000000e+00, %1870 ], [ 0.000000e+00, %1872 ]
  %2178 = phi float [ %1920, %1890 ], [ %2079, %2055 ], [ %2161, %2136 ], [ 0.000000e+00, %1870 ], [ 0.000000e+00, %1872 ]
  %2179 = phi float [ %1921, %1890 ], [ %2080, %2055 ], [ %2162, %2136 ], [ 0.000000e+00, %1870 ], [ 0.000000e+00, %1872 ]
  %2180 = phi float [ %1922, %1890 ], [ %2081, %2055 ], [ %2163, %2136 ], [ 0.000000e+00, %1870 ], [ 0.000000e+00, %1872 ]
  %2181 = fmul fast float %1813, %2177
  %2182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2183 = extractvalue %dx.types.CBufRet.f32 %2182, 2
  %2184 = fsub fast float %1820, %2183
  %2185 = fcmp fast olt float %2181, -2.000000e+01
  %2186 = call float @dx.op.unary.f32(i32 21, float %2181)  ; Exp(value)
  %2187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2188 = extractvalue %dx.types.CBufRet.f32 %2187, 2
  %2189 = extractvalue %dx.types.CBufRet.f32 %2187, 3
  %2190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2191 = extractvalue %dx.types.CBufRet.f32 %2190, 2
  %2192 = fmul fast float %2189, %2184
  %2193 = call float @dx.op.unary.f32(i32 7, float %2192)  ; Saturate(value)
  %2194 = fsub fast float 1.000000e+00, %2193
  %2195 = fmul fast float %1805, 5.000000e-01
  %2196 = fadd fast float %2195, 5.000000e-01
  %2197 = call float @dx.op.unary.f32(i32 7, float %2196)  ; Saturate(value)
  %2198 = fsub fast float 1.000000e+00, %2197
  %2199 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2194)  ; FMax(a,b)
  %2200 = fdiv fast float %2198, %2199
  %2201 = fsub fast float %2184, %1771
  %2202 = call float @dx.op.unary.f32(i32 6, float %2201)  ; FAbs(value)
  %2203 = fmul fast float %2202, %2188
  %2204 = call float @dx.op.unary.f32(i32 7, float %2200)  ; Saturate(value)
  %2205 = fsub fast float 1.000000e+00, %2203
  %2206 = fmul fast float %2205, %2204
  %2207 = fadd fast float %2206, %2203
  %2208 = fmul fast float %2191, %2184
  %2209 = call float @dx.op.unary.f32(i32 7, float %2208)  ; Saturate(value)
  %2210 = fsub fast float 1.000000e+00, %2207
  %2211 = fmul fast float %2210, %2209
  %2212 = fadd fast float %2211, %2207
  %2213 = call float @dx.op.unary.f32(i32 7, float %2212)  ; Saturate(value)
  %2214 = fadd fast float %2186, -1.000000e+00
  %2215 = select i1 %2185, float -1.000000e+00, float %2214
  %2216 = fmul fast float %2213, %2215
  %2217 = fadd fast float %2216, 1.000000e+00
  %2218 = fsub fast float -0.000000e+00, %2216
  %2219 = fmul fast float %2178, %2218
  %2220 = fmul fast float %2179, %2218
  %2221 = fmul fast float %2180, %2218
  br label %2222

; <label>:2222                                    ; preds = %2175, %1724
  %2223 = phi float [ %2176, %2175 ], [ 0.000000e+00, %1724 ]
  %2224 = phi float [ %2217, %2175 ], [ 1.000000e+00, %1724 ]
  %2225 = phi float [ %2219, %2175 ], [ 0.000000e+00, %1724 ]
  %2226 = phi float [ %2220, %2175 ], [ 0.000000e+00, %1724 ]
  %2227 = phi float [ %2221, %2175 ], [ 0.000000e+00, %1724 ]
  %2228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2229 = extractvalue %dx.types.CBufRet.f32 %2228, 1
  %2230 = fsub fast float 1.000000e+00, %2224
  %2231 = fmul fast float %2230, %1806
  %2232 = fmul fast float %2231, %2229
  %2233 = fsub fast float %1806, %2232
  br i1 %1799, label %2234, label %2263, !dx.controlflow.hints !118

; <label>:2234                                    ; preds = %2222
  %2235 = fmul fast float %1807, %1796
  %2236 = fadd fast float %2235, %1797
  %2237 = call float @dx.op.unary.f32(i32 7, float %2236)  ; Saturate(value)
  %2238 = fmul fast float %1778, %2233
  %2239 = fsub fast float -0.000000e+00, %2238
  %2240 = fmul fast float %1779, %2233
  %2241 = fsub fast float -0.000000e+00, %2240
  %2242 = call float @dx.op.unary.f32(i32 21, float %2239)  ; Exp(value)
  %2243 = call float @dx.op.unary.f32(i32 21, float %2241)  ; Exp(value)
  %2244 = call float @dx.op.binary.f32(i32 35, float %1786, float %2242)  ; FMax(a,b)
  %2245 = call float @dx.op.binary.f32(i32 35, float %1786, float %2243)  ; FMax(a,b)
  %2246 = fsub fast float %2245, %2244
  %2247 = fmul fast float %2246, %2237
  %2248 = fadd fast float %2247, %2244
  %2249 = call float @dx.op.unary.f32(i32 7, float %2248)  ; Saturate(value)
  %2250 = fsub fast float %1783, %1788
  %2251 = fsub fast float %1784, %1789
  %2252 = fsub fast float %1785, %1790
  %2253 = fmul fast float %2237, %2250
  %2254 = fmul fast float %2237, %2251
  %2255 = fmul fast float %2237, %2252
  %2256 = fadd fast float %2253, %1788
  %2257 = fadd fast float %2254, %1789
  %2258 = fadd fast float %2255, %1790
  %2259 = fsub fast float 1.000000e+00, %2249
  %2260 = fmul fast float %2259, %2256
  %2261 = fmul fast float %2259, %2257
  %2262 = fmul fast float %2259, %2258
  br label %2322

; <label>:2263                                    ; preds = %2222
  %2264 = fmul fast float %2233, %1795
  %2265 = call float @dx.op.unary.f32(i32 7, float %2264)  ; Saturate(value)
  %2266 = fsub fast float 2.000000e+00, %2265
  %2267 = fmul fast float %2265, 9.921875e-01
  %2268 = fmul fast float %2267, %2266
  %2269 = fadd fast float %2268, 3.906250e-03
  %2270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %19, float %2269, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2271 = extractvalue %dx.types.ResRet.f32 %2270, 0
  %2272 = fsub fast float %2265, %2271
  %2273 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2272)  ; FMax(a,b)
  %2274 = fmul fast float %1781, %1771
  %2275 = call float @dx.op.unary.f32(i32 6, float %2274)  ; FAbs(value)
  %2276 = fcmp fast ogt float %2275, 0x3EB0C6F7A0000000
  br i1 %2276, label %2277, label %2283, !dx.controlflow.hints !119

; <label>:2277                                    ; preds = %2263
  %2278 = fmul fast float %2274, 0xBFF7154760000000
  %2279 = call float @dx.op.unary.f32(i32 21, float %2278)  ; Exp(value)
  %2280 = fsub fast float 1.000000e+00, %2279
  %2281 = fdiv fast float %2280, %2274
  %2282 = fmul fast float %2281, %1791
  br label %2283

; <label>:2283                                    ; preds = %2277, %2263
  %2284 = phi float [ %2282, %2277 ], [ %1791, %2263 ]
  %2285 = fadd fast float %2284, %1793
  %2286 = fmul fast float %2285, %2273
  %2287 = fmul fast float %1778, %2286
  %2288 = fsub fast float -0.000000e+00, %2287
  %2289 = fmul fast float %1779, %2286
  %2290 = fsub fast float -0.000000e+00, %2289
  %2291 = fmul fast float %1780, %2286
  %2292 = fsub fast float -0.000000e+00, %2291
  %2293 = call float @dx.op.unary.f32(i32 21, float %2288)  ; Exp(value)
  %2294 = call float @dx.op.unary.f32(i32 21, float %2290)  ; Exp(value)
  %2295 = call float @dx.op.unary.f32(i32 21, float %2292)  ; Exp(value)
  %2296 = fmul fast float %1807, %1807
  %2297 = fadd fast float %2296, 1.000000e+00
  %2298 = fmul fast float %2297, 0x3FAE8EC8A0000000
  %2299 = fmul fast float %2298, %1788
  %2300 = fmul fast float %2298, %1789
  %2301 = fmul fast float %2298, %1790
  %2302 = fmul fast float %1807, %1786
  %2303 = fsub fast float 1.000000e+00, %2302
  %2304 = fmul fast float %1786, %1786
  %2305 = fsub fast float 1.000000e+00, %2304
  %2306 = fmul fast float %2305, 0x3FB45F3060000000
  %2307 = fmul fast float %2303, %2303
  %2308 = fdiv fast float 1.000000e+00, %2307
  %2309 = fmul fast float %2306, %2308
  %2310 = fmul fast float %2309, %1783
  %2311 = fmul fast float %2309, %1784
  %2312 = fmul fast float %2309, %1785
  %2313 = fadd fast float %2310, %2299
  %2314 = fadd fast float %2311, %2300
  %2315 = fadd fast float %2312, %2301
  %2316 = fsub fast float 1.000000e+00, %2293
  %2317 = fsub fast float 1.000000e+00, %2294
  %2318 = fsub fast float 1.000000e+00, %2295
  %2319 = fmul fast float %2313, %2316
  %2320 = fmul fast float %2314, %2317
  %2321 = fmul fast float %2315, %2318
  br label %2322

; <label>:2322                                    ; preds = %2283, %2234
  %2323 = phi float [ %2260, %2234 ], [ %2319, %2283 ]
  %2324 = phi float [ %2261, %2234 ], [ %2320, %2283 ]
  %2325 = phi float [ %2262, %2234 ], [ %2321, %2283 ]
  %2326 = phi float [ %2249, %2234 ], [ %2293, %2283 ]
  %2327 = phi float [ %2249, %2234 ], [ %2294, %2283 ]
  %2328 = phi float [ %2249, %2234 ], [ %2295, %2283 ]
  br i1 %1815, label %2329, label %2527, !dx.controlflow.hints !120

; <label>:2329                                    ; preds = %2322
  %2330 = extractvalue %dx.types.CBufRet.f32 %2228, 0
  %2331 = fmul fast float %2330, %2230
  %2332 = fsub fast float %2225, %2323
  %2333 = fsub fast float %2226, %2324
  %2334 = fsub fast float %2227, %2325
  %2335 = fmul fast float %2331, %2332
  %2336 = fmul fast float %2331, %2333
  %2337 = fmul fast float %2331, %2334
  %2338 = fadd fast float %2335, %2323
  %2339 = fadd fast float %2336, %2324
  %2340 = fadd fast float %2337, %2325
  %2341 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2326)  ; FMax(a,b)
  %2342 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2327)  ; FMax(a,b)
  %2343 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2328)  ; FMax(a,b)
  %2344 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2224)  ; FMax(a,b)
  %2345 = call float @dx.op.binary.f32(i32 35, float %2223, float %2233)  ; FMax(a,b)
  %2346 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2345)  ; FMax(a,b)
  %2347 = fdiv fast float %2223, %2346
  %2348 = call float @dx.op.unary.f32(i32 7, float %2347)  ; Saturate(value)
  %2349 = fdiv fast float %2233, %2346
  %2350 = call float @dx.op.unary.f32(i32 7, float %2349)  ; Saturate(value)
  %2351 = fcmp fast une float %2344, 1.000000e+00
  br i1 %2351, label %2352, label %2365, !dx.controlflow.hints !121

; <label>:2352                                    ; preds = %2329
  %2353 = call float @dx.op.unary.f32(i32 23, float %2344)  ; Log(value)
  %2354 = fmul fast float %2353, 0x3FE62E4300000000
  %2355 = fmul fast float %2225, %2354
  %2356 = fsub fast float -0.000000e+00, %2355
  %2357 = fmul fast float %2226, %2354
  %2358 = fsub fast float -0.000000e+00, %2357
  %2359 = fmul fast float %2227, %2354
  %2360 = fsub fast float -0.000000e+00, %2359
  %2361 = fsub fast float 1.000000e+00, %2344
  %2362 = fdiv fast float %2356, %2361
  %2363 = fdiv fast float %2358, %2361
  %2364 = fdiv fast float %2360, %2361
  br label %2365

; <label>:2365                                    ; preds = %2352, %2329
  %2366 = phi float [ %2362, %2352 ], [ %2225, %2329 ]
  %2367 = phi float [ %2363, %2352 ], [ %2226, %2329 ]
  %2368 = phi float [ %2364, %2352 ], [ %2227, %2329 ]
  %2369 = phi float [ %2354, %2352 ], [ 0.000000e+00, %2329 ]
  %2370 = fcmp fast une float %2341, 1.000000e+00
  br i1 %2370, label %2371, label %2378, !dx.controlflow.hints !122

; <label>:2371                                    ; preds = %2365
  %2372 = call float @dx.op.unary.f32(i32 23, float %2341)  ; Log(value)
  %2373 = fmul fast float %2372, 0x3FE62E4300000000
  %2374 = fmul fast float %2338, %2373
  %2375 = fsub fast float -0.000000e+00, %2374
  %2376 = fsub fast float 1.000000e+00, %2341
  %2377 = fdiv fast float %2375, %2376
  br label %2378

; <label>:2378                                    ; preds = %2371, %2365
  %2379 = phi float [ %2377, %2371 ], [ %2338, %2365 ]
  %2380 = phi float [ %2373, %2371 ], [ 0.000000e+00, %2365 ]
  %2381 = fcmp fast une float %2342, 1.000000e+00
  br i1 %2381, label %2382, label %2389, !dx.controlflow.hints !122

; <label>:2382                                    ; preds = %2378
  %2383 = call float @dx.op.unary.f32(i32 23, float %2342)  ; Log(value)
  %2384 = fmul fast float %2383, 0x3FE62E4300000000
  %2385 = fmul fast float %2339, %2384
  %2386 = fsub fast float -0.000000e+00, %2385
  %2387 = fsub fast float 1.000000e+00, %2342
  %2388 = fdiv fast float %2386, %2387
  br label %2389

; <label>:2389                                    ; preds = %2382, %2378
  %2390 = phi float [ %2388, %2382 ], [ %2339, %2378 ]
  %2391 = phi float [ %2384, %2382 ], [ 0.000000e+00, %2378 ]
  %2392 = fcmp fast une float %2343, 1.000000e+00
  br i1 %2392, label %2393, label %2400, !dx.controlflow.hints !122

; <label>:2393                                    ; preds = %2389
  %2394 = call float @dx.op.unary.f32(i32 23, float %2343)  ; Log(value)
  %2395 = fmul fast float %2394, 0x3FE62E4300000000
  %2396 = fmul fast float %2340, %2395
  %2397 = fsub fast float -0.000000e+00, %2396
  %2398 = fsub fast float 1.000000e+00, %2343
  %2399 = fdiv fast float %2397, %2398
  br label %2400

; <label>:2400                                    ; preds = %2393, %2389
  %2401 = phi float [ %2399, %2393 ], [ %2340, %2389 ]
  %2402 = phi float [ %2395, %2393 ], [ 0.000000e+00, %2389 ]
  %2403 = fmul fast float %2366, %2350
  %2404 = fmul fast float %2367, %2350
  %2405 = fmul fast float %2368, %2350
  %2406 = fmul fast float %2369, %2350
  %2407 = fmul fast float %2379, %2348
  %2408 = fmul fast float %2390, %2348
  %2409 = fmul fast float %2401, %2348
  %2410 = fmul fast float %2380, %2348
  %2411 = fmul fast float %2391, %2348
  %2412 = fmul fast float %2402, %2348
  %2413 = fadd fast float %2407, %2403
  %2414 = fadd fast float %2408, %2404
  %2415 = fadd fast float %2409, %2405
  %2416 = fadd fast float %2410, %2406
  %2417 = fadd fast float %2411, %2406
  %2418 = fadd fast float %2412, %2406
  %2419 = fcmp fast une float %2416, 0.000000e+00
  br i1 %2419, label %2420, label %2427, !dx.controlflow.hints !123

; <label>:2420                                    ; preds = %2400
  %2421 = fmul fast float %2416, 0x3FF7154760000000
  %2422 = call float @dx.op.unary.f32(i32 21, float %2421)  ; Exp(value)
  %2423 = fsub fast float 1.000000e+00, %2422
  %2424 = fmul fast float %2413, %2423
  %2425 = fsub fast float -0.000000e+00, %2424
  %2426 = fdiv fast float %2425, %2416
  br label %2427

; <label>:2427                                    ; preds = %2420, %2400
  %2428 = phi float [ %2422, %2420 ], [ 1.000000e+00, %2400 ]
  %2429 = phi float [ %2426, %2420 ], [ %2413, %2400 ]
  %2430 = fcmp fast une float %2417, 0.000000e+00
  br i1 %2430, label %2431, label %2438, !dx.controlflow.hints !123

; <label>:2431                                    ; preds = %2427
  %2432 = fmul fast float %2417, 0x3FF7154760000000
  %2433 = call float @dx.op.unary.f32(i32 21, float %2432)  ; Exp(value)
  %2434 = fsub fast float 1.000000e+00, %2433
  %2435 = fmul fast float %2414, %2434
  %2436 = fsub fast float -0.000000e+00, %2435
  %2437 = fdiv fast float %2436, %2417
  br label %2438

; <label>:2438                                    ; preds = %2431, %2427
  %2439 = phi float [ %2433, %2431 ], [ 1.000000e+00, %2427 ]
  %2440 = phi float [ %2437, %2431 ], [ %2414, %2427 ]
  %2441 = fcmp fast une float %2418, 0.000000e+00
  br i1 %2441, label %2442, label %2449, !dx.controlflow.hints !123

; <label>:2442                                    ; preds = %2438
  %2443 = fmul fast float %2418, 0x3FF7154760000000
  %2444 = call float @dx.op.unary.f32(i32 21, float %2443)  ; Exp(value)
  %2445 = fsub fast float 1.000000e+00, %2444
  %2446 = fmul fast float %2415, %2445
  %2447 = fsub fast float -0.000000e+00, %2446
  %2448 = fdiv fast float %2447, %2418
  br label %2449

; <label>:2449                                    ; preds = %2442, %2438
  %2450 = phi float [ %2444, %2442 ], [ 1.000000e+00, %2438 ]
  %2451 = phi float [ %2448, %2442 ], [ %2415, %2438 ]
  %2452 = fcmp fast ogt float %2348, %2350
  br i1 %2452, label %2453, label %2473, !dx.controlflow.hints !124

; <label>:2453                                    ; preds = %2449
  %2454 = fsub fast float 1.000000e+00, %2350
  %2455 = fmul fast float %2366, %2454
  %2456 = fmul fast float %2367, %2454
  %2457 = fmul fast float %2368, %2454
  %2458 = fmul fast float %2369, %2454
  %2459 = fcmp fast une float %2458, 0.000000e+00
  br i1 %2459, label %2460, label %2511, !dx.controlflow.hints !125

; <label>:2460                                    ; preds = %2453
  %2461 = fmul fast float %2458, 0x3FF7154760000000
  %2462 = call float @dx.op.unary.f32(i32 21, float %2461)  ; Exp(value)
  %2463 = fsub fast float 1.000000e+00, %2462
  %2464 = fmul fast float %2455, %2463
  %2465 = fsub fast float -0.000000e+00, %2464
  %2466 = fmul fast float %2456, %2463
  %2467 = fsub fast float -0.000000e+00, %2466
  %2468 = fmul fast float %2457, %2463
  %2469 = fsub fast float -0.000000e+00, %2468
  %2470 = fdiv fast float %2465, %2458
  %2471 = fdiv fast float %2467, %2458
  %2472 = fdiv fast float %2469, %2458
  br label %2511

; <label>:2473                                    ; preds = %2449
  %2474 = fsub fast float 1.000000e+00, %2348
  %2475 = fmul fast float %2379, %2474
  %2476 = fmul fast float %2390, %2474
  %2477 = fmul fast float %2401, %2474
  %2478 = fmul fast float %2380, %2474
  %2479 = fmul fast float %2391, %2474
  %2480 = fmul fast float %2402, %2474
  %2481 = fcmp fast une float %2478, 0.000000e+00
  br i1 %2481, label %2482, label %2489, !dx.controlflow.hints !123

; <label>:2482                                    ; preds = %2473
  %2483 = fmul fast float %2478, 0x3FF7154760000000
  %2484 = call float @dx.op.unary.f32(i32 21, float %2483)  ; Exp(value)
  %2485 = fsub fast float 1.000000e+00, %2484
  %2486 = fmul fast float %2475, %2485
  %2487 = fsub fast float -0.000000e+00, %2486
  %2488 = fdiv fast float %2487, %2478
  br label %2489

; <label>:2489                                    ; preds = %2482, %2473
  %2490 = phi float [ %2488, %2482 ], [ %2475, %2473 ]
  %2491 = phi float [ %2484, %2482 ], [ 1.000000e+00, %2473 ]
  %2492 = fcmp fast une float %2479, 0.000000e+00
  br i1 %2492, label %2493, label %2500, !dx.controlflow.hints !123

; <label>:2493                                    ; preds = %2489
  %2494 = fmul fast float %2479, 0x3FF7154760000000
  %2495 = call float @dx.op.unary.f32(i32 21, float %2494)  ; Exp(value)
  %2496 = fsub fast float 1.000000e+00, %2495
  %2497 = fmul fast float %2476, %2496
  %2498 = fsub fast float -0.000000e+00, %2497
  %2499 = fdiv fast float %2498, %2479
  br label %2500

; <label>:2500                                    ; preds = %2493, %2489
  %2501 = phi float [ %2499, %2493 ], [ %2476, %2489 ]
  %2502 = phi float [ %2495, %2493 ], [ 1.000000e+00, %2489 ]
  %2503 = fcmp fast une float %2480, 0.000000e+00
  br i1 %2503, label %2504, label %2511, !dx.controlflow.hints !123

; <label>:2504                                    ; preds = %2500
  %2505 = fmul fast float %2480, 0x3FF7154760000000
  %2506 = call float @dx.op.unary.f32(i32 21, float %2505)  ; Exp(value)
  %2507 = fsub fast float 1.000000e+00, %2506
  %2508 = fmul fast float %2477, %2507
  %2509 = fsub fast float -0.000000e+00, %2508
  %2510 = fdiv fast float %2509, %2480
  br label %2511

; <label>:2511                                    ; preds = %2504, %2500, %2460, %2453
  %2512 = phi float [ %2510, %2504 ], [ %2472, %2460 ], [ %2457, %2453 ], [ %2477, %2500 ]
  %2513 = phi float [ %2501, %2504 ], [ %2471, %2460 ], [ %2456, %2453 ], [ %2501, %2500 ]
  %2514 = phi float [ %2490, %2504 ], [ %2470, %2460 ], [ %2455, %2453 ], [ %2490, %2500 ]
  %2515 = phi float [ %2506, %2504 ], [ %2462, %2460 ], [ 1.000000e+00, %2453 ], [ 1.000000e+00, %2500 ]
  %2516 = phi float [ %2502, %2504 ], [ %2462, %2460 ], [ 1.000000e+00, %2453 ], [ %2502, %2500 ]
  %2517 = phi float [ %2491, %2504 ], [ %2462, %2460 ], [ 1.000000e+00, %2453 ], [ %2491, %2500 ]
  %2518 = fmul fast float %2517, %2429
  %2519 = fmul fast float %2516, %2440
  %2520 = fmul fast float %2515, %2451
  %2521 = fadd fast float %2518, %2514
  %2522 = fadd fast float %2519, %2513
  %2523 = fadd fast float %2520, %2512
  %2524 = fmul fast float %2517, %2428
  %2525 = fmul fast float %2516, %2439
  %2526 = fmul fast float %2515, %2450
  br label %2527

; <label>:2527                                    ; preds = %2511, %2322
  %2528 = phi float [ %2328, %2322 ], [ %2526, %2511 ]
  %2529 = phi float [ %2327, %2322 ], [ %2525, %2511 ]
  %2530 = phi float [ %2326, %2322 ], [ %2524, %2511 ]
  %2531 = phi float [ %2325, %2322 ], [ %2523, %2511 ]
  %2532 = phi float [ %2324, %2322 ], [ %2522, %2511 ]
  %2533 = phi float [ %2323, %2322 ], [ %2521, %2511 ]
  %2534 = fmul fast float %2530, %1671
  %2535 = fmul fast float %2529, %1672
  %2536 = fmul fast float %2528, %1673
  %2537 = fsub fast float 1.000000e+00, %1734
  %2538 = fmul fast float %2533, %2537
  %2539 = fmul fast float %2532, %2537
  %2540 = fmul fast float %2531, %2537
  %2541 = fadd fast float %2538, %2534
  %2542 = fadd fast float %2539, %2535
  %2543 = fadd fast float %2540, %2536
  %2544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2545 = extractvalue %dx.types.CBufRet.f32 %2544, 2
  %2546 = fmul fast float %2545, %1744
  %2547 = call float @dx.op.unary.f32(i32 7, float %2546)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %23, i32 %24, i32 undef, float %1734, float %1734, float %1734, float %1734, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2549 = extractvalue %dx.types.CBufRet.f32 %2548, 0
  %2550 = fmul fast float %2549, %2541
  %2551 = fmul fast float %2549, %2542
  %2552 = fmul fast float %2549, %2543
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %23, i32 %24, i32 undef, float %2550, float %2551, float %2552, float %2550, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %23, i32 %24, i32 undef, float %2547, float %2547, float %2547, float %2547, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !19, !25, !28}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !14}
!14 = !{i32 1, i32 164}
!15 = !{i32 7, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!19 = !{!20, !21, !22, !23}
!20 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!21 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!22 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!23 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !24}
!24 = !{i32 0, i32 14}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!28 = !{!29, !30, !31, !32, !33}
!29 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!32 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!34 = !{void ()* @cs_fog_raymarching_air_clouds_particles, !"cs_fog_raymarching_air_clouds_particles", null, !4, !35}
!35 = !{i32 0, i64 272, i32 4, !36}
!36 = !{i32 8, i32 8, i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = !{!81, !81, i64 0}
!81 = !{!"float", !82, i64 0}
!82 = !{!"omnipotent char", !83, i64 0}
!83 = !{!"Simple C/C++ TBAA"}
!84 = !{!85, !87, !89, !90, !92, !93, !94}
!85 = distinct !{!85, !86, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!86 = distinct !{!86, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!87 = distinct !{!87, !88, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!88 = distinct !{!88, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!89 = distinct !{!89, !88, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!90 = distinct !{!90, !91, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!91 = distinct !{!91, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!92 = distinct !{!92, !91, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!93 = distinct !{!93, !91, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!94 = distinct !{!94, !91, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = !{!97}
!97 = distinct !{!97, !98, !"\01?sort@@YAXAIAM00@Z: %c"}
!98 = distinct !{!98, !"\01?sort@@YAXAIAM00@Z"}
!99 = !{!100, !101, !85, !87, !89, !90, !92, !93, !94}
!100 = distinct !{!100, !98, !"\01?sort@@YAXAIAM00@Z: %a"}
!101 = distinct !{!101, !98, !"\01?sort@@YAXAIAM00@Z: %b"}
!102 = !{!101}
!103 = !{!100, !97, !85, !87, !89, !90, !92, !93, !94}
!104 = !{!100}
!105 = !{!101, !97, !85, !87, !89, !90, !92, !93, !94}
!106 = !{!107}
!107 = distinct !{!107, !108, !"\01?sort@@YAXAIAM00@Z: %c"}
!108 = distinct !{!108, !"\01?sort@@YAXAIAM00@Z"}
!109 = !{!110, !111, !85, !87, !89, !90, !92, !93, !94}
!110 = distinct !{!110, !108, !"\01?sort@@YAXAIAM00@Z: %a"}
!111 = distinct !{!111, !108, !"\01?sort@@YAXAIAM00@Z: %b"}
!112 = !{!111}
!113 = !{!110, !107, !85, !87, !89, !90, !92, !93, !94}
!114 = !{!110}
!115 = !{!111, !107, !85, !87, !89, !90, !92, !93, !94}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 2}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 2}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 2}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 2}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}

