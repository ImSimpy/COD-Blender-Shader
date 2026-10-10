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
; shader hash: aa419440b4ffb0533e1fa79db2cc2072
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

define void @cs_fog_raymarching_clouds_particles() {
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
  %239 = extractvalue %dx.types.CBufRet.f32 %237, 1
  %240 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 1
  %243 = fmul fast float %235, 2.000000e+00
  %244 = fmul fast float %236, 2.000000e+00
  %245 = fsub fast float 1.000000e+00, %243
  %246 = fsub fast float 1.000000e+00, %244
  %247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.f32 %247, 0
  %249 = extractvalue %dx.types.CBufRet.f32 %247, 1
  %250 = extractvalue %dx.types.CBufRet.f32 %247, 2
  %251 = fmul fast float %248, %245
  %252 = fmul fast float %249, %245
  %253 = fmul fast float %250, %245
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = extractvalue %dx.types.CBufRet.f32 %254, 1
  %257 = extractvalue %dx.types.CBufRet.f32 %254, 2
  %258 = fmul fast float %255, %246
  %259 = fmul fast float %256, %246
  %260 = fmul fast float %257, %246
  %261 = fadd fast float %258, %251
  %262 = fadd fast float %259, %252
  %263 = fadd fast float %260, %253
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 0
  %266 = extractvalue %dx.types.CBufRet.f32 %264, 1
  %267 = extractvalue %dx.types.CBufRet.f32 %264, 2
  %268 = fadd fast float %261, %265
  %269 = fadd fast float %262, %266
  %270 = fadd fast float %263, %267
  %271 = fmul fast float %268, %242
  %272 = fmul fast float %269, %242
  %273 = fmul fast float %270, %242
  %274 = fmul fast float %271, %271
  %275 = fmul fast float %272, %272
  %276 = fadd fast float %274, %275
  %277 = fmul fast float %273, %273
  %278 = fadd fast float %276, %277
  %279 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %280 = fdiv fast float 1.000000e+00, %279
  %281 = fmul fast float %271, %280
  %282 = fmul fast float %272, %280
  %283 = fmul fast float %273, %280
  %284 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %38, i32 %39, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = fcmp fast ogt float %285, -1.000000e+00
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 1
  %289 = select i1 %286, float %288, float 1.000000e+00
  %290 = fadd fast float %285, 1.000000e+00
  %291 = fmul fast float %289, %290
  %292 = call float @dx.op.unary.f32(i32 6, float %291)  ; FAbs(value)
  %293 = fdiv fast float 1.000000e+00, %242
  %294 = fmul fast float %293, %279
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 1
  %297 = fmul fast float %296, %294
  %298 = fmul fast float %294, %292
  %299 = extractvalue %dx.types.CBufRet.f32 %287, 3
  %300 = fcmp fast oge float %292, %299
  %301 = call float @dx.op.binary.f32(i32 36, float %298, float %297)  ; FMin(a,b)
  %302 = select i1 %300, float %297, float %301
  %303 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.i32 %303, 3
  %305 = icmp eq i32 %304, 0
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 2
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 2
  %310 = fsub fast float %307, %240
  %311 = fadd fast float %310, %309
  br i1 %305, label %323, label %312, !dx.controlflow.hints !38

; <label>:312                                     ; preds = %207
  %313 = fsub fast float -0.000000e+00, %239
  %314 = fsub fast float -0.000000e+00, %238
  %315 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %314, float %313, float %311)  ; Dot3(ax,ay,az,bx,by,bz)
  %316 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %281, float %282, float %283)  ; Dot3(ax,ay,az,bx,by,bz)
  %317 = fdiv fast float 1.000000e+00, %316
  %318 = fmul fast float %317, %315
  %319 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %314, float %313, float %310)  ; Dot3(ax,ay,az,bx,by,bz)
  %320 = fmul fast float %317, %319
  %321 = call float @dx.op.binary.f32(i32 36, float %318, float %320)  ; FMin(a,b)
  %322 = call float @dx.op.binary.f32(i32 35, float %318, float %320)  ; FMax(a,b)
  br label %356

; <label>:323                                     ; preds = %207
  %324 = fdiv fast float 1.000000e+00, %281
  %325 = fdiv fast float 1.000000e+00, %282
  %326 = fdiv fast float 1.000000e+00, %283
  %327 = extractvalue %dx.types.CBufRet.f32 %306, 0
  %328 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %329 = extractvalue %dx.types.CBufRet.f32 %308, 0
  %330 = extractvalue %dx.types.CBufRet.f32 %308, 1
  %331 = fsub fast float %327, %238
  %332 = fmul fast float %331, %324
  %333 = fadd fast float %331, %329
  %334 = fmul fast float %333, %324
  %335 = call float @dx.op.binary.f32(i32 36, float %332, float %334)  ; FMin(a,b)
  %336 = call float @dx.op.binary.f32(i32 35, float %332, float %334)  ; FMax(a,b)
  %337 = fsub fast float %328, %239
  %338 = fmul fast float %337, %325
  %339 = fadd fast float %337, %330
  %340 = fmul fast float %339, %325
  %341 = call float @dx.op.binary.f32(i32 36, float %338, float %340)  ; FMin(a,b)
  %342 = call float @dx.op.binary.f32(i32 35, float %335, float %341)  ; FMax(a,b)
  %343 = call float @dx.op.binary.f32(i32 35, float %338, float %340)  ; FMax(a,b)
  %344 = call float @dx.op.binary.f32(i32 36, float %336, float %343)  ; FMin(a,b)
  %345 = fmul fast float %310, %326
  %346 = fmul fast float %311, %326
  %347 = call float @dx.op.binary.f32(i32 36, float %345, float %346)  ; FMin(a,b)
  %348 = call float @dx.op.binary.f32(i32 35, float %342, float %347)  ; FMax(a,b)
  %349 = call float @dx.op.binary.f32(i32 35, float %345, float %346)  ; FMax(a,b)
  %350 = call float @dx.op.binary.f32(i32 36, float %344, float %349)  ; FMin(a,b)
  %351 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %348)  ; FMax(a,b)
  %352 = fcmp fast ult float %350, %351
  br i1 %352, label %356, label %353, !dx.controlflow.hints !39

; <label>:353                                     ; preds = %323
  %354 = call float @dx.op.binary.f32(i32 36, float %348, float %350)  ; FMin(a,b)
  %355 = call float @dx.op.binary.f32(i32 35, float %348, float %350)  ; FMax(a,b)
  br label %356

; <label>:356                                     ; preds = %353, %323, %312
  %357 = phi float [ %321, %312 ], [ %354, %353 ], [ 0.000000e+00, %323 ]
  %358 = phi float [ %322, %312 ], [ %355, %353 ], [ 0.000000e+00, %323 ]
  %359 = fcmp fast oeq float %358, 0.000000e+00
  br i1 %359, label %363, label %360, !dx.controlflow.hints !40

; <label>:360                                     ; preds = %356
  %361 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %357)  ; FMin(a,b)
  %362 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %358)  ; FMax(a,b)
  br label %363

; <label>:363                                     ; preds = %360, %356
  %364 = phi i32 [ 1, %360 ], [ 0, %356 ]
  %365 = phi float [ %362, %360 ], [ -1.000000e+00, %356 ]
  %366 = phi float [ %361, %360 ], [ 0x47EFFFFFE0000000, %356 ]
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 3
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = fsub fast float -0.000000e+00, %238
  %372 = fsub fast float -0.000000e+00, %239
  %373 = fsub fast float %368, %240
  %374 = fadd fast float %373, %370
  %375 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %371, float %372, float %374)  ; Dot3(ax,ay,az,bx,by,bz)
  %376 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %281, float %282, float %283)  ; Dot3(ax,ay,az,bx,by,bz)
  %377 = fdiv fast float 1.000000e+00, %376
  %378 = fmul fast float %377, %375
  %379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.f32 %379, 2
  %381 = fsub fast float %380, %240
  %382 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %371, float %372, float %381)  ; Dot3(ax,ay,az,bx,by,bz)
  %383 = fmul fast float %377, %382
  %384 = call float @dx.op.binary.f32(i32 36, float %378, float %383)  ; FMin(a,b)
  %385 = call float @dx.op.binary.f32(i32 35, float %378, float %383)  ; FMax(a,b)
  %386 = call float @dx.op.binary.f32(i32 36, float %366, float %384)  ; FMin(a,b)
  %387 = call float @dx.op.binary.f32(i32 35, float %365, float %385)  ; FMax(a,b)
  %388 = fdiv fast float 1.000000e+00, %281
  %389 = fdiv fast float 1.000000e+00, %282
  %390 = fdiv fast float 1.000000e+00, %283
  %391 = call float @dx.op.binary.f32(i32 36, float %302, float %387)  ; FMin(a,b)
  %392 = call float @dx.op.binary.f32(i32 35, float %279, float %386)  ; FMax(a,b)
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.f32 %393, 0
  %395 = fmul fast float %227, 2.000000e+00
  %396 = fadd fast float %395, -1.000000e+00
  %397 = fmul fast float %394, %396
  %398 = fadd fast float %397, %392
  %399 = fcmp fast olt float %398, %391
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 2
  %402 = fcmp fast olt float %401, 1.000000e+00
  %403 = and i1 %402, %399
  br i1 %403, label %404, label %1516

; <label>:404                                     ; preds = %363
  %405 = fmul fast float %398, %283
  %406 = fadd fast float %405, %240
  %407 = fmul fast float %398, %282
  %408 = fadd fast float %407, %239
  %409 = fmul fast float %398, %281
  %410 = fadd fast float %409, %238
  br label %411

; <label>:411                                     ; preds = %1488, %404
  %412 = phi float [ %1490, %1488 ], [ undef, %404 ]
  %413 = phi float [ %1491, %1488 ], [ undef, %404 ]
  %414 = phi float [ %1492, %1488 ], [ undef, %404 ]
  %415 = phi float [ %1493, %1488 ], [ undef, %404 ]
  %416 = phi float [ %540, %1488 ], [ undef, %404 ]
  %417 = phi float [ %541, %1488 ], [ undef, %404 ]
  %418 = phi float [ %542, %1488 ], [ undef, %404 ]
  %419 = phi float [ %543, %1488 ], [ undef, %404 ]
  %420 = phi float [ %1494, %1488 ], [ 0.000000e+00, %404 ]
  %421 = phi float [ %1495, %1488 ], [ 1.000000e+00, %404 ]
  %422 = phi float [ %1496, %1488 ], [ 0.000000e+00, %404 ]
  %423 = phi float [ %1497, %1488 ], [ 0.000000e+00, %404 ]
  %424 = phi float [ %1498, %1488 ], [ 0.000000e+00, %404 ]
  %425 = phi float [ %1508, %1488 ], [ %410, %404 ]
  %426 = phi float [ %1509, %1488 ], [ %408, %404 ]
  %427 = phi float [ %1510, %1488 ], [ %406, %404 ]
  %428 = phi float [ %1489, %1488 ], [ %398, %404 ]
  %429 = phi i32 [ %545, %1488 ], [ 10, %404 ]
  %430 = phi float [ %1499, %1488 ], [ 0.000000e+00, %404 ]
  %431 = phi float [ %1500, %1488 ], [ 0.000000e+00, %404 ]
  %432 = phi float [ %1501, %1488 ], [ 0.000000e+00, %404 ]
  %433 = phi float [ %1502, %1488 ], [ 0.000000e+00, %404 ]
  %434 = phi float [ %1503, %1488 ], [ 0.000000e+00, %404 ]
  %435 = phi i32 [ %1504, %1488 ], [ 0, %404 ]
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 0
  %438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %439 = extractvalue %dx.types.CBufRet.f32 %438, 0
  %440 = extractvalue %dx.types.CBufRet.f32 %438, 1
  %441 = fsub fast float %425, %439
  %442 = fsub fast float %426, %440
  %443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %444 = extractvalue %dx.types.CBufRet.f32 %443, 2
  %445 = extractvalue %dx.types.CBufRet.f32 %443, 3
  %446 = fmul fast float %441, %444
  %447 = fmul fast float %442, %445
  %448 = call float @dx.op.binary.f32(i32 36, float %446, float %447)  ; FMin(a,b)
  %449 = fcmp fast olt float %448, 0.000000e+00
  %450 = call float @dx.op.binary.f32(i32 35, float %446, float %447)  ; FMax(a,b)
  %451 = fcmp fast ogt float %450, 1.000000e+00
  %452 = or i1 %449, %451
  %453 = extractvalue %dx.types.CBufRet.f32 %438, 2
  %454 = fcmp fast olt float %427, %453
  %455 = or i1 %452, %454
  %456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %457 = extractvalue %dx.types.CBufRet.f32 %456, 3
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %460 = fadd fast float %459, %457
  %461 = fcmp fast ogt float %427, %460
  %462 = or i1 %455, %461
  br i1 %462, label %463, label %492, !dx.controlflow.hints !41

; <label>:463                                     ; preds = %411
  %464 = extractvalue %dx.types.CBufRet.f32 %443, 0
  %465 = extractvalue %dx.types.CBufRet.f32 %443, 1
  %466 = fsub fast float %439, %425
  %467 = fmul fast float %466, %388
  %468 = fadd fast float %466, %464
  %469 = fmul fast float %468, %388
  %470 = call float @dx.op.binary.f32(i32 36, float %467, float %469)  ; FMin(a,b)
  %471 = call float @dx.op.binary.f32(i32 35, float %467, float %469)  ; FMax(a,b)
  %472 = fsub fast float %440, %426
  %473 = fmul fast float %472, %389
  %474 = fadd fast float %472, %465
  %475 = fmul fast float %474, %389
  %476 = call float @dx.op.binary.f32(i32 36, float %473, float %475)  ; FMin(a,b)
  %477 = call float @dx.op.binary.f32(i32 35, float %470, float %476)  ; FMax(a,b)
  %478 = call float @dx.op.binary.f32(i32 35, float %473, float %475)  ; FMax(a,b)
  %479 = call float @dx.op.binary.f32(i32 36, float %471, float %478)  ; FMin(a,b)
  %480 = fsub fast float %453, %427
  %481 = fmul fast float %480, %390
  %482 = fsub fast float %457, %427
  %483 = fadd fast float %482, %459
  %484 = fmul fast float %483, %390
  %485 = call float @dx.op.binary.f32(i32 36, float %481, float %484)  ; FMin(a,b)
  %486 = call float @dx.op.binary.f32(i32 35, float %477, float %485)  ; FMax(a,b)
  %487 = call float @dx.op.binary.f32(i32 35, float %481, float %484)  ; FMax(a,b)
  %488 = call float @dx.op.binary.f32(i32 36, float %479, float %487)  ; FMin(a,b)
  %489 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %486)  ; FMax(a,b)
  %490 = fcmp fast oge float %488, %489
  %491 = select i1 %490, float %486, float 1.000000e+07
  br label %538

; <label>:492                                     ; preds = %411
  %493 = fsub fast float 1.000000e+00, %447
  %494 = icmp eq i32 %429, 0
  br i1 %494, label %523, label %495

; <label>:495                                     ; preds = %492
  br label %496

; <label>:496                                     ; preds = %519, %495
  %497 = phi i32 [ %520, %519 ], [ %429, %495 ]
  %498 = uitofp i32 %497 to float
  %499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %20, float %446, float %493, float undef, float undef, i32 0, i32 0, i32 undef, float %498)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %500 = extractvalue %dx.types.ResRet.f32 %499, 0
  %501 = extractvalue %dx.types.ResRet.f32 %499, 1
  %502 = extractvalue %dx.types.ResRet.f32 %499, 2
  %503 = fcmp fast oeq float %500, 0.000000e+00
  %504 = fcmp ule float %427, %502
  %505 = fcmp uge float %427, %501
  %506 = or i1 %505, %504
  %507 = or i1 %503, %506
  br i1 %507, label %508, label %519, !dx.controlflow.hints !42

; <label>:508                                     ; preds = %496
  %509 = extractvalue %dx.types.ResRet.f32 %499, 3
  %510 = extractvalue %dx.types.CBufRet.f32 %443, 0
  %511 = and i32 %497, 31
  %512 = lshr i32 1024, %511
  %513 = uitofp i32 %512 to float
  %514 = fdiv fast float %510, %513
  %515 = add i32 %497, 1
  %516 = uitofp i32 %515 to float
  %517 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %516)  ; FMin(a,b)
  %518 = fptosi float %517 to i32
  br label %538

; <label>:519                                     ; preds = %496
  %520 = add i32 %497, -1
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %496, !llvm.loop !43

; <label>:522                                     ; preds = %519
  br label %523

; <label>:523                                     ; preds = %522, %492
  %524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %19, float %446, float %493, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %525 = extractvalue %dx.types.ResRet.f32 %524, 0
  %526 = extractvalue %dx.types.ResRet.f32 %524, 1
  %527 = extractvalue %dx.types.ResRet.f32 %524, 2
  %528 = extractvalue %dx.types.ResRet.f32 %524, 3
  %529 = extractvalue %dx.types.CBufRet.f32 %443, 0
  %530 = fmul fast float %529, 9.765625e-04
  %531 = fcmp fast oeq float %525, 0.000000e+00
  %532 = fcmp ule float %427, %527
  %533 = fcmp uge float %427, %526
  %534 = or i1 %533, %532
  %535 = or i1 %531, %534
  %536 = zext i1 %535 to i32
  %537 = xor i32 %536, 1
  br label %538

; <label>:538                                     ; preds = %523, %508, %463
  %539 = phi float [ %491, %463 ], [ %514, %508 ], [ %530, %523 ]
  %540 = phi float [ %416, %463 ], [ %500, %508 ], [ %525, %523 ]
  %541 = phi float [ %417, %463 ], [ %501, %508 ], [ %526, %523 ]
  %542 = phi float [ %418, %463 ], [ %502, %508 ], [ %527, %523 ]
  %543 = phi float [ %419, %463 ], [ %509, %508 ], [ %528, %523 ]
  %544 = phi i32 [ 0, %463 ], [ 0, %508 ], [ %537, %523 ]
  %545 = phi i32 [ 10, %463 ], [ %518, %508 ], [ 1, %523 ]
  %546 = icmp eq i32 %544, 0
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 2
  %549 = call float @dx.op.binary.f32(i32 35, float %539, float %548)  ; FMax(a,b)
  %550 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %549)  ; FMin(a,b)
  %551 = icmp eq i32 %364, 0
  br i1 %551, label %607, label %552, !dx.controlflow.hints !45

; <label>:552                                     ; preds = %538
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 0
  %555 = extractvalue %dx.types.CBufRet.f32 %553, 1
  %556 = extractvalue %dx.types.CBufRet.f32 %553, 2
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 0
  %559 = extractvalue %dx.types.CBufRet.f32 %557, 1
  %560 = extractvalue %dx.types.CBufRet.f32 %557, 2
  %561 = fsub fast float %425, %558
  %562 = fsub fast float %426, %559
  %563 = fsub fast float %427, %560
  %564 = fmul fast float %561, %554
  %565 = fmul fast float %562, %555
  %566 = fmul fast float %563, %556
  %567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.i32 %567, 3
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %573, label %570, !dx.controlflow.hints !46

; <label>:570                                     ; preds = %552
  %571 = call float @dx.op.unary.f32(i32 22, float %564)  ; Frc(value)
  %572 = call float @dx.op.unary.f32(i32 22, float %565)  ; Frc(value)
  br label %573

; <label>:573                                     ; preds = %570, %552
  %574 = phi float [ %571, %570 ], [ %564, %552 ]
  %575 = phi float [ %572, %570 ], [ %565, %552 ]
  %576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %574, float %575, float %566, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %577 = extractvalue %dx.types.ResRet.f32 %576, 0
  %578 = fmul fast float %577, 2.000000e+00
  %579 = fadd fast float %578, -1.000000e+00
  %580 = extractvalue %dx.types.CBufRet.f32 %553, 3
  %581 = fmul fast float %579, %580
  %582 = fcmp fast olt float %581, 0.000000e+00
  %583 = fcmp fast oge float %566, 0.000000e+00
  %584 = fcmp fast ole float %566, 1.000000e+00
  br i1 %569, label %587, label %585, !dx.controlflow.hints !47

; <label>:585                                     ; preds = %573
  %586 = and i1 %583, %584
  br label %597

; <label>:587                                     ; preds = %573
  %588 = fcmp fast oge float %564, 0.000000e+00
  %589 = fcmp fast oge float %565, 0.000000e+00
  %590 = and i1 %588, %589
  %591 = and i1 %583, %590
  %592 = fcmp fast ole float %564, 1.000000e+00
  %593 = fcmp fast ole float %565, 1.000000e+00
  %594 = and i1 %592, %593
  %595 = and i1 %584, %594
  %596 = and i1 %591, %595
  br label %597

; <label>:597                                     ; preds = %587, %585
  %598 = phi i1 [ %586, %585 ], [ %596, %587 ]
  %599 = and i1 %582, %598
  %600 = call float @dx.op.unary.f32(i32 6, float %581)  ; FAbs(value)
  %601 = extractvalue %dx.types.CBufRet.f32 %547, 1
  %602 = extractvalue %dx.types.CBufRet.f32 %547, 0
  %603 = call float @dx.op.binary.f32(i32 35, float %600, float %602)  ; FMax(a,b)
  %604 = select i1 %599, float %601, float %603
  %605 = zext i1 %599 to i32
  %606 = call float @dx.op.binary.f32(i32 36, float %550, float %604)  ; FMin(a,b)
  br label %607

; <label>:607                                     ; preds = %597, %538
  %608 = phi i32 [ %605, %597 ], [ 0, %538 ]
  %609 = phi float [ %606, %597 ], [ %550, %538 ]
  %610 = extractvalue %dx.types.CBufRet.f32 %436, 2
  %611 = fmul fast float %610, %428
  %612 = call float @dx.op.unary.f32(i32 23, float %611)  ; Log(value)
  %613 = fmul fast float %612, 0x3FE62E4300000000
  %614 = call float @dx.op.binary.f32(i32 35, float %613, float 1.000000e+00)  ; FMax(a,b)
  %615 = fmul fast float %614, 0x47EFFFFFE0000000
  %616 = call float @dx.op.binary.f32(i32 36, float %615, float %609)  ; FMin(a,b)
  %617 = call float @dx.op.binary.f32(i32 35, float %616, float %437)  ; FMax(a,b)
  %618 = fadd fast float %391, 0x3F1A36E2E0000000
  %619 = fsub fast float %618, %428
  %620 = call float @dx.op.binary.f32(i32 36, float %619, float %617)  ; FMin(a,b)
  %621 = icmp eq i32 %608, 0
  br i1 %621, label %811, label %622, !dx.controlflow.hints !48

; <label>:622                                     ; preds = %607
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 3
  %625 = fmul fast float %624, %428
  %626 = fcmp fast oeq float %625, 0.000000e+00
  br i1 %626, label %641, label %627, !dx.controlflow.hints !49

; <label>:627                                     ; preds = %622
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 3
  %630 = fmul fast float %629, %625
  %631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %632 = extractvalue %dx.types.CBufRet.f32 %631, 0
  %633 = extractvalue %dx.types.CBufRet.f32 %631, 1
  %634 = extractvalue %dx.types.CBufRet.f32 %631, 2
  %635 = fmul fast float %632, %630
  %636 = fmul fast float %633, %630
  %637 = fmul fast float %634, %630
  %638 = call float @dx.op.unary.f32(i32 23, float %635)  ; Log(value)
  %639 = call float @dx.op.unary.f32(i32 23, float %636)  ; Log(value)
  %640 = call float @dx.op.unary.f32(i32 23, float %637)  ; Log(value)
  br label %641

; <label>:641                                     ; preds = %627, %622
  %642 = phi float [ %638, %627 ], [ 0.000000e+00, %622 ]
  %643 = phi float [ %639, %627 ], [ 0.000000e+00, %622 ]
  %644 = phi float [ %640, %627 ], [ 0.000000e+00, %622 ]
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 0
  %647 = extractvalue %dx.types.CBufRet.f32 %645, 1
  %648 = extractvalue %dx.types.CBufRet.f32 %645, 2
  %649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %650 = extractvalue %dx.types.CBufRet.f32 %649, 0
  %651 = extractvalue %dx.types.CBufRet.f32 %649, 1
  %652 = extractvalue %dx.types.CBufRet.f32 %649, 2
  %653 = fsub fast float %425, %650
  %654 = fsub fast float %426, %651
  %655 = fsub fast float %427, %652
  %656 = fmul fast float %653, %646
  %657 = fmul fast float %654, %647
  %658 = fmul fast float %655, %648
  %659 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %660 = extractvalue %dx.types.CBufRet.i32 %659, 0
  %661 = extractvalue %dx.types.CBufRet.i32 %659, 1
  %662 = uitofp i32 %660 to float
  %663 = uitofp i32 %661 to float
  %664 = fmul fast float %656, %662
  %665 = fmul fast float %657, %663
  %666 = fadd fast float %664, 5.000000e-01
  %667 = fadd fast float %665, 5.000000e-01
  %668 = call float @dx.op.unary.f32(i32 22, float %666)  ; Frc(value)
  %669 = call float @dx.op.unary.f32(i32 22, float %667)  ; Frc(value)
  %670 = call float @dx.op.unary.f32(i32 27, float %666)  ; Round_ni(value)
  %671 = call float @dx.op.unary.f32(i32 27, float %667)  ; Round_ni(value)
  %672 = fadd fast float %670, 1.000000e+00
  %673 = fadd fast float %671, 1.000000e+00
  %674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %675 = extractvalue %dx.types.CBufRet.f32 %674, 0
  %676 = extractvalue %dx.types.CBufRet.f32 %674, 1
  %677 = fmul fast float %675, %672
  %678 = fmul fast float %676, %673
  %679 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %18, float %677, float %678, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %680 = extractvalue %dx.types.ResRet.f32 %679, 0
  %681 = extractvalue %dx.types.ResRet.f32 %679, 1
  %682 = extractvalue %dx.types.ResRet.f32 %679, 2
  %683 = extractvalue %dx.types.ResRet.f32 %679, 3
  %684 = extractvalue %dx.types.CBufRet.i32 %659, 2
  %685 = extractvalue %dx.types.CBufRet.f32 %674, 2
  %686 = uitofp i32 %684 to float
  %687 = fadd fast float %686, -1.000000e+00
  %688 = fmul fast float %687, %680
  %689 = fmul fast float %687, %681
  %690 = fmul fast float %687, %682
  %691 = fmul fast float %687, %683
  %692 = fadd fast float %688, 5.000000e-01
  %693 = fadd fast float %689, 5.000000e-01
  %694 = fadd fast float %690, 5.000000e-01
  %695 = fadd fast float %691, 5.000000e-01
  %696 = fptoui float %692 to i32
  %697 = fptoui float %693 to i32
  %698 = fptoui float %694 to i32
  %699 = fptoui float %695 to i32
  %700 = uitofp i32 %696 to float
  %701 = uitofp i32 %697 to float
  %702 = uitofp i32 %698 to float
  %703 = uitofp i32 %699 to float
  %704 = fadd fast float %700, 5.000000e-01
  %705 = fadd fast float %701, 5.000000e-01
  %706 = fadd fast float %702, 5.000000e-01
  %707 = fadd fast float %703, 5.000000e-01
  %708 = fmul fast float %704, %685
  %709 = fmul fast float %705, %685
  %710 = fmul fast float %706, %685
  %711 = fmul fast float %707, %685
  %712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %708, float %658, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %713 = extractvalue %dx.types.ResRet.f32 %712, 0
  %714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %709, float %658, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %715 = extractvalue %dx.types.ResRet.f32 %714, 0
  %716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %710, float %658, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %717 = extractvalue %dx.types.ResRet.f32 %716, 0
  %718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %711, float %658, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %719 = extractvalue %dx.types.ResRet.f32 %718, 0
  %720 = fsub fast float %717, %719
  %721 = fmul fast float %720, %668
  %722 = fadd fast float %721, %719
  %723 = fsub fast float %715, %713
  %724 = fmul fast float %723, %668
  %725 = fadd fast float %724, %713
  %726 = fsub fast float %725, %722
  %727 = fmul fast float %726, %669
  %728 = fadd fast float %727, %722
  %729 = fcmp fast ogt float %728, 0.000000e+00
  br i1 %729, label %730, label %798, !dx.controlflow.hints !50

; <label>:730                                     ; preds = %641
  %731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %732 = extractvalue %dx.types.CBufRet.f32 %731, 0
  %733 = extractvalue %dx.types.CBufRet.f32 %731, 1
  %734 = extractvalue %dx.types.CBufRet.f32 %731, 2
  %735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %736 = extractvalue %dx.types.CBufRet.f32 %735, 0
  %737 = extractvalue %dx.types.CBufRet.f32 %735, 1
  %738 = extractvalue %dx.types.CBufRet.f32 %735, 2
  %739 = fmul fast float %654, %646
  %740 = fmul fast float %655, %646
  %741 = fadd fast float %656, %736
  %742 = fadd fast float %739, %737
  %743 = fadd fast float %740, %738
  %744 = fmul fast float %741, %732
  %745 = fmul fast float %742, %732
  %746 = fmul fast float %743, %732
  %747 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %744, float %745, float %746, float undef, i32 0, i32 0, i32 0, float %642)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = fmul fast float %741, %733
  %750 = fmul fast float %742, %733
  %751 = fmul fast float %743, %733
  %752 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %749, float %750, float %751, float undef, i32 0, i32 0, i32 0, float %643)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %753 = extractvalue %dx.types.ResRet.f32 %752, 1
  %754 = fmul fast float %741, %734
  %755 = fmul fast float %742, %734
  %756 = fmul fast float %743, %734
  %757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %754, float %755, float %756, float undef, i32 0, i32 0, i32 0, float %644)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 2
  %759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.f32 %759, 1
  %761 = fmul fast float %753, %748
  %762 = fmul fast float %761, %758
  %763 = call float @dx.op.unary.f32(i32 23, float %762)  ; Log(value)
  %764 = fmul fast float %763, %760
  %765 = call float @dx.op.unary.f32(i32 21, float %764)  ; Exp(value)
  %766 = extractvalue %dx.types.CBufRet.f32 %759, 2
  %767 = fmul fast float %728, %728
  %768 = fmul fast float %767, %765
  %769 = fmul fast float %768, %766
  %770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.f32 %770, 3
  %772 = fmul fast float %771, %769
  %773 = bitcast float %772 to i32
  %774 = sitofp i32 %773 to float
  %775 = fptosi float %774 to i32
  %776 = bitcast i32 %775 to float
  %777 = fsub fast float 1.000000e+00, %769
  %778 = bitcast float %777 to i32
  %779 = sitofp i32 %778 to float
  %780 = fptosi float %779 to i32
  %781 = bitcast i32 %780 to float
  %782 = fadd fast float %776, %781
  %783 = bitcast float %782 to i32
  %784 = sub nsw i32 2129859010, %783
  %785 = bitcast i32 %784 to float
  %786 = fmul fast float %785, %776
  %787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %788 = extractvalue %dx.types.CBufRet.f32 %787, 2
  %789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %790 = extractvalue %dx.types.CBufRet.f32 %789, 0
  %791 = fmul fast float %786, %790
  %792 = fadd fast float %791, 1.000000e+00
  %793 = bitcast float %792 to i32
  %794 = sub nsw i32 2129859010, %793
  %795 = bitcast i32 %794 to float
  %796 = fmul fast float %786, %788
  %797 = fmul fast float %796, %795
  br label %798

; <label>:798                                     ; preds = %730, %641
  %799 = phi float [ %797, %730 ], [ %728, %641 ]
  %800 = fmul fast float %799, %620
  %801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %802 = extractvalue %dx.types.CBufRet.f32 %801, 0
  %803 = extractvalue %dx.types.CBufRet.f32 %801, 1
  %804 = extractvalue %dx.types.CBufRet.f32 %801, 2
  %805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %806 = extractvalue %dx.types.CBufRet.f32 %805, 1
  %807 = fmul fast float %802, %800
  %808 = fmul fast float %803, %800
  %809 = fmul fast float %804, %800
  %810 = fmul fast float %806, %800
  br label %811

; <label>:811                                     ; preds = %798, %607
  %812 = phi float [ %800, %798 ], [ 0.000000e+00, %607 ]
  %813 = phi float [ %810, %798 ], [ 0.000000e+00, %607 ]
  %814 = phi float [ %807, %798 ], [ 0.000000e+00, %607 ]
  %815 = phi float [ %808, %798 ], [ 0.000000e+00, %607 ]
  %816 = phi float [ %809, %798 ], [ 0.000000e+00, %607 ]
  br i1 %546, label %959, label %817, !dx.controlflow.hints !51

; <label>:817                                     ; preds = %811
  %818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %819 = extractvalue %dx.types.CBufRet.f32 %818, 0
  %820 = extractvalue %dx.types.CBufRet.f32 %818, 1
  %821 = extractvalue %dx.types.CBufRet.f32 %818, 2
  %822 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.i32 %822, 0
  %824 = icmp ne i32 %823, 0
  %825 = zext i1 %824 to i32
  %826 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.i32 %826, 0
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %862, label %829

; <label>:829                                     ; preds = %817
  br label %830

; <label>:830                                     ; preds = %857, %829
  %831 = phi i32 [ %858, %857 ], [ 0, %829 ]
  %832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %831, i32 0)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.f32 %832, 0
  %834 = extractvalue %dx.types.ResRet.f32 %832, 1
  %835 = extractvalue %dx.types.ResRet.f32 %832, 2
  %836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %831, i32 16)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.f32 %836, 0
  %838 = extractvalue %dx.types.ResRet.f32 %836, 1
  %839 = extractvalue %dx.types.ResRet.f32 %836, 2
  %840 = fsub fast float %833, %837
  %841 = fsub fast float %834, %838
  %842 = fsub fast float %835, %839
  %843 = fadd fast float %837, %833
  %844 = fadd fast float %838, %834
  %845 = fadd fast float %839, %835
  %846 = fcmp fast olt float %425, %840
  %847 = fcmp fast olt float %426, %841
  %848 = fcmp fast olt float %427, %842
  %849 = or i1 %846, %847
  %850 = or i1 %848, %849
  %851 = fcmp fast ogt float %425, %843
  %852 = fcmp fast ogt float %426, %844
  %853 = fcmp fast ogt float %427, %845
  %854 = or i1 %851, %852
  %855 = or i1 %853, %854
  %856 = or i1 %850, %855
  br i1 %856, label %857, label %860, !dx.controlflow.hints !52

; <label>:857                                     ; preds = %830
  %858 = add nuw i32 %831, 1
  %859 = icmp ult i32 %858, %827
  br i1 %859, label %830, label %860

; <label>:860                                     ; preds = %857, %830
  %861 = phi i32 [ 255, %857 ], [ %831, %830 ]
  br label %862

; <label>:862                                     ; preds = %860, %817
  %863 = phi i32 [ 255, %817 ], [ %861, %860 ]
  %864 = icmp eq i32 %863, 255
  br i1 %864, label %874, label %865, !dx.controlflow.hints !53

; <label>:865                                     ; preds = %862
  %866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %863, i32 32)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.f32 %866, 0
  %868 = extractvalue %dx.types.ResRet.f32 %866, 1
  %869 = extractvalue %dx.types.ResRet.f32 %866, 2
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %863, i32 156)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = icmp ne i32 %871, 0
  %873 = zext i1 %872 to i32
  br label %874

; <label>:874                                     ; preds = %865, %862
  %875 = phi float [ %867, %865 ], [ %819, %862 ]
  %876 = phi float [ %868, %865 ], [ %820, %862 ]
  %877 = phi float [ %869, %865 ], [ %821, %862 ]
  %878 = phi i32 [ %873, %865 ], [ %825, %862 ]
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %880, label %949, !dx.controlflow.hints !54

; <label>:880                                     ; preds = %874
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 3
  %883 = extractvalue %dx.types.CBufRet.f32 %456, 0
  %884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.f32 %884, 2
  %886 = extractvalue %dx.types.CBufRet.f32 %884, 3
  br i1 %864, label %897, label %887, !dx.controlflow.hints !55

; <label>:887                                     ; preds = %880
  %888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %863, i32 60)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.f32 %888, 0
  %890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %863, i32 64)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.f32 %890, 0
  %892 = extractvalue %dx.types.ResRet.f32 %890, 1
  %893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %863, i32 72)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.f32 %893, 0
  %895 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %863, i32 96)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.f32 %895, 0
  br label %897

; <label>:897                                     ; preds = %887, %880
  %898 = phi float [ %889, %887 ], [ %459, %880 ]
  %899 = phi float [ %894, %887 ], [ %457, %880 ]
  %900 = phi float [ %896, %887 ], [ %883, %880 ]
  %901 = phi float [ %891, %887 ], [ %885, %880 ]
  %902 = phi float [ %892, %887 ], [ %886, %880 ]
  %903 = call float @dx.op.binary.f32(i32 35, float %540, float 0.000000e+00)  ; FMax(a,b)
  %904 = call float @dx.op.binary.f32(i32 36, float %903, float 1.000000e+00)  ; FMin(a,b)
  %905 = call float @dx.op.unary.f32(i32 24, float %904)  ; Sqrt(value)
  %906 = call float @dx.op.binary.f32(i32 35, float %543, float 0x3F847AE140000000)  ; FMax(a,b)
  %907 = fsub fast float %541, %427
  %908 = fsub fast float %427, %542
  %909 = call float @dx.op.binary.f32(i32 36, float %908, float %907)  ; FMin(a,b)
  %910 = fdiv fast float %909, %906
  %911 = call float @dx.op.unary.f32(i32 7, float %910)  ; Saturate(value)
  %912 = fsub fast float %427, %899
  %913 = fdiv fast float %912, %898
  %914 = call float @dx.op.unary.f32(i32 7, float %913)  ; Saturate(value)
  %915 = fsub fast float 1.000000e+00, %914
  %916 = fmul float %911, %915
  %917 = fmul float %916, %916
  %918 = fmul fast float %905, %882
  %919 = fmul fast float %918, %917
  %920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %921 = extractvalue %dx.types.CBufRet.f32 %920, 2
  %922 = extractvalue %dx.types.CBufRet.f32 %920, 1
  %923 = fsub fast float %919, %922
  %924 = fsub fast float %921, %922
  %925 = fdiv fast float %923, %924
  %926 = call float @dx.op.unary.f32(i32 7, float %925)  ; Saturate(value)
  %927 = fmul fast float %926, %900
  %928 = fcmp fast ogt float %902, 0.000000e+00
  br i1 %928, label %929, label %949, !dx.controlflow.hints !56

; <label>:929                                     ; preds = %897
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 0
  %932 = extractvalue %dx.types.CBufRet.f32 %930, 1
  %933 = extractvalue %dx.types.CBufRet.f32 %930, 2
  %934 = fsub fast float %425, %931
  %935 = fsub fast float %426, %932
  %936 = fsub fast float %427, %933
  %937 = fmul fast float %934, %934
  %938 = fmul fast float %935, %935
  %939 = fadd fast float %937, %938
  %940 = fmul fast float %936, %936
  %941 = fadd fast float %939, %940
  %942 = call float @dx.op.unary.f32(i32 24, float %941)  ; Sqrt(value)
  %943 = fsub fast float %942, %901
  %944 = fsub fast float %902, %901
  %945 = fdiv fast float %943, %944
  %946 = call float @dx.op.unary.f32(i32 7, float %945)  ; Saturate(value)
  %947 = fmul fast float %946, %946
  %948 = fmul fast float %947, %927
  br label %949

; <label>:949                                     ; preds = %929, %897, %874
  %950 = phi float [ 0.000000e+00, %874 ], [ %948, %929 ], [ %927, %897 ]
  %951 = fmul fast float %950, %620
  %952 = fmul fast float %951, %875
  %953 = fmul fast float %951, %876
  %954 = fmul fast float %951, %877
  %955 = fadd fast float %952, %814
  %956 = fadd fast float %953, %815
  %957 = fadd fast float %954, %816
  %958 = fadd fast float %951, %812
  br label %959

; <label>:959                                     ; preds = %949, %811
  %960 = phi float [ %958, %949 ], [ %812, %811 ]
  %961 = phi float [ %955, %949 ], [ %814, %811 ]
  %962 = phi float [ %956, %949 ], [ %815, %811 ]
  %963 = phi float [ %957, %949 ], [ %816, %811 ]
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 1
  %966 = fcmp fast ogt float %960, %965
  br i1 %966, label %967, label %973, !dx.controlflow.hints !57

; <label>:967                                     ; preds = %959
  %968 = fdiv fast float 1.000000e+00, %960
  %969 = fmul fast float %968, %961
  %970 = fmul fast float %968, %962
  %971 = fmul fast float %968, %963
  %972 = fmul fast float %968, %813
  br label %973

; <label>:973                                     ; preds = %967, %959
  %974 = phi float [ %972, %967 ], [ %813, %959 ]
  %975 = phi float [ %969, %967 ], [ %961, %959 ]
  %976 = phi float [ %970, %967 ], [ %962, %959 ]
  %977 = phi float [ %971, %967 ], [ %963, %959 ]
  br i1 %966, label %980, label %978, !dx.controlflow.hints !58

; <label>:978                                     ; preds = %973
  %979 = fadd fast float %620, %428
  br label %1488

; <label>:980                                     ; preds = %973
  %981 = fmul fast float %960, 0xBFF7154760000000
  %982 = call float @dx.op.unary.f32(i32 21, float %981)  ; Exp(value)
  %983 = call float @dx.op.unary.f32(i32 7, float %982)  ; Saturate(value)
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 3
  %986 = fcmp fast une float %985, 0.000000e+00
  %987 = extractvalue %dx.types.CBufRet.f32 %984, 0
  %988 = extractvalue %dx.types.CBufRet.f32 %984, 1
  %989 = extractvalue %dx.types.CBufRet.f32 %984, 2
  br i1 %986, label %990, label %1012, !dx.controlflow.hints !59

; <label>:990                                     ; preds = %980
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 0
  %993 = extractvalue %dx.types.CBufRet.f32 %991, 1
  %994 = extractvalue %dx.types.CBufRet.f32 %991, 2
  %995 = call float @dx.op.dot3.f32(i32 55, float %987, float %988, float %989, float %281, float %282, float %283)  ; Dot3(ax,ay,az,bx,by,bz)
  %996 = fcmp fast ogt float %974, 0.000000e+00
  %997 = select i1 %996, float 1.000000e+00, float -1.000000e+00
  %998 = fmul fast float %997, 5.000000e-01
  %999 = fmul fast float %998, %995
  %1000 = fmul fast float %997, %974
  %1001 = fadd fast float %999, 4.921875e-01
  %1002 = fadd fast float %1000, -3.125000e-02
  %1003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %1001, float 0x3FB25F3060000000, float %1002, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1004 = extractvalue %dx.types.ResRet.f32 %1003, 0
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 0
  %1007 = fmul fast float %1004, 0x400921FB60000000
  %1008 = fmul fast float %1007, %1006
  %1009 = fmul fast float %1008, %992
  %1010 = fmul fast float %1008, %993
  %1011 = fmul fast float %1008, %994
  br label %1012

; <label>:1012                                    ; preds = %990, %980
  %1013 = phi float [ %1009, %990 ], [ 0.000000e+00, %980 ]
  %1014 = phi float [ %1010, %990 ], [ 0.000000e+00, %980 ]
  %1015 = phi float [ %1011, %990 ], [ 0.000000e+00, %980 ]
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 0
  %1018 = fmul fast float %1017, %987
  %1019 = fmul fast float %1017, %988
  %1020 = fmul fast float %1017, %989
  %1021 = fadd fast float %1018, %425
  %1022 = fadd fast float %1019, %426
  %1023 = fadd fast float %1020, %427
  %1024 = fsub fast float %1021, %439
  %1025 = fsub fast float %1022, %440
  %1026 = fmul fast float %1024, %444
  %1027 = fmul fast float %1025, %445
  %1028 = call float @dx.op.binary.f32(i32 36, float %1026, float %1027)  ; FMin(a,b)
  %1029 = fcmp fast olt float %1028, 0.000000e+00
  %1030 = call float @dx.op.binary.f32(i32 35, float %1026, float %1027)  ; FMax(a,b)
  %1031 = fcmp fast ogt float %1030, 1.000000e+00
  %1032 = or i1 %1029, %1031
  %1033 = fcmp fast olt float %1023, %453
  %1034 = or i1 %1032, %1033
  %1035 = fcmp fast ogt float %1023, %460
  %1036 = or i1 %1034, %1035
  br i1 %1036, label %1051, label %1037, !dx.controlflow.hints !41

; <label>:1037                                    ; preds = %1012
  %1038 = fsub fast float 1.000000e+00, %1027
  %1039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %19, float %1026, float %1038, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.ResRet.f32 %1039, 1
  %1042 = extractvalue %dx.types.ResRet.f32 %1039, 2
  %1043 = extractvalue %dx.types.ResRet.f32 %1039, 3
  %1044 = fcmp fast oeq float %1040, 0.000000e+00
  %1045 = fcmp ule float %1023, %1042
  %1046 = fcmp uge float %1023, %1041
  %1047 = or i1 %1046, %1045
  %1048 = or i1 %1044, %1047
  %1049 = zext i1 %1048 to i32
  %1050 = xor i32 %1049, 1
  br label %1051

; <label>:1051                                    ; preds = %1037, %1012
  %1052 = phi float [ %1040, %1037 ], [ %412, %1012 ]
  %1053 = phi float [ %1041, %1037 ], [ %413, %1012 ]
  %1054 = phi float [ %1042, %1037 ], [ %414, %1012 ]
  %1055 = phi float [ %1043, %1037 ], [ %415, %1012 ]
  %1056 = phi i32 [ %1050, %1037 ], [ 0, %1012 ]
  %1057 = icmp eq i32 %1056, 0
  br i1 %551, label %1107, label %1058, !dx.controlflow.hints !45

; <label>:1058                                    ; preds = %1051
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 0
  %1061 = extractvalue %dx.types.CBufRet.f32 %1059, 1
  %1062 = extractvalue %dx.types.CBufRet.f32 %1059, 2
  %1063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1064 = extractvalue %dx.types.CBufRet.f32 %1063, 0
  %1065 = extractvalue %dx.types.CBufRet.f32 %1063, 1
  %1066 = extractvalue %dx.types.CBufRet.f32 %1063, 2
  %1067 = fsub fast float %1021, %1064
  %1068 = fsub fast float %1022, %1065
  %1069 = fsub fast float %1023, %1066
  %1070 = fmul fast float %1067, %1060
  %1071 = fmul fast float %1068, %1061
  %1072 = fmul fast float %1069, %1062
  %1073 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1074 = extractvalue %dx.types.CBufRet.i32 %1073, 3
  %1075 = icmp eq i32 %1074, 0
  br i1 %1075, label %1079, label %1076, !dx.controlflow.hints !46

; <label>:1076                                    ; preds = %1058
  %1077 = call float @dx.op.unary.f32(i32 22, float %1070)  ; Frc(value)
  %1078 = call float @dx.op.unary.f32(i32 22, float %1071)  ; Frc(value)
  br label %1079

; <label>:1079                                    ; preds = %1076, %1058
  %1080 = phi float [ %1077, %1076 ], [ %1070, %1058 ]
  %1081 = phi float [ %1078, %1076 ], [ %1071, %1058 ]
  %1082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %1080, float %1081, float %1072, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1083 = extractvalue %dx.types.ResRet.f32 %1082, 0
  %1084 = fmul fast float %1083, 2.000000e+00
  %1085 = fadd fast float %1084, -1.000000e+00
  %1086 = extractvalue %dx.types.CBufRet.f32 %1059, 3
  %1087 = fmul fast float %1085, %1086
  %1088 = fcmp fast olt float %1087, 0.000000e+00
  %1089 = fcmp fast oge float %1072, 0.000000e+00
  %1090 = fcmp fast ole float %1072, 1.000000e+00
  br i1 %1075, label %1093, label %1091, !dx.controlflow.hints !47

; <label>:1091                                    ; preds = %1079
  %1092 = and i1 %1089, %1090
  br label %1103

; <label>:1093                                    ; preds = %1079
  %1094 = fcmp fast oge float %1070, 0.000000e+00
  %1095 = fcmp fast oge float %1071, 0.000000e+00
  %1096 = and i1 %1094, %1095
  %1097 = and i1 %1089, %1096
  %1098 = fcmp fast ole float %1070, 1.000000e+00
  %1099 = fcmp fast ole float %1071, 1.000000e+00
  %1100 = and i1 %1098, %1099
  %1101 = and i1 %1090, %1100
  %1102 = and i1 %1097, %1101
  br label %1103

; <label>:1103                                    ; preds = %1093, %1091
  %1104 = phi i1 [ %1092, %1091 ], [ %1102, %1093 ]
  %1105 = and i1 %1088, %1104
  %1106 = zext i1 %1105 to i32
  br label %1107

; <label>:1107                                    ; preds = %1103, %1051
  %1108 = phi i32 [ %1106, %1103 ], [ 0, %1051 ]
  %1109 = icmp eq i32 %1108, 0
  br i1 %1109, label %1289, label %1110, !dx.controlflow.hints !48

; <label>:1110                                    ; preds = %1107
  %1111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1112 = extractvalue %dx.types.CBufRet.f32 %1111, 3
  %1113 = fmul fast float %1112, %1017
  %1114 = fcmp fast oeq float %1113, 0.000000e+00
  br i1 %1114, label %1129, label %1115, !dx.controlflow.hints !49

; <label>:1115                                    ; preds = %1110
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 3
  %1118 = fmul fast float %1117, %1113
  %1119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1119, 0
  %1121 = extractvalue %dx.types.CBufRet.f32 %1119, 1
  %1122 = extractvalue %dx.types.CBufRet.f32 %1119, 2
  %1123 = fmul fast float %1120, %1118
  %1124 = fmul fast float %1121, %1118
  %1125 = fmul fast float %1122, %1118
  %1126 = call float @dx.op.unary.f32(i32 23, float %1123)  ; Log(value)
  %1127 = call float @dx.op.unary.f32(i32 23, float %1124)  ; Log(value)
  %1128 = call float @dx.op.unary.f32(i32 23, float %1125)  ; Log(value)
  br label %1129

; <label>:1129                                    ; preds = %1115, %1110
  %1130 = phi float [ %1126, %1115 ], [ 0.000000e+00, %1110 ]
  %1131 = phi float [ %1127, %1115 ], [ 0.000000e+00, %1110 ]
  %1132 = phi float [ %1128, %1115 ], [ 0.000000e+00, %1110 ]
  %1133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.CBufRet.f32 %1133, 1
  %1136 = extractvalue %dx.types.CBufRet.f32 %1133, 2
  %1137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1138 = extractvalue %dx.types.CBufRet.f32 %1137, 0
  %1139 = extractvalue %dx.types.CBufRet.f32 %1137, 1
  %1140 = extractvalue %dx.types.CBufRet.f32 %1137, 2
  %1141 = fsub fast float %1021, %1138
  %1142 = fsub fast float %1022, %1139
  %1143 = fsub fast float %1023, %1140
  %1144 = fmul fast float %1141, %1134
  %1145 = fmul fast float %1142, %1135
  %1146 = fmul fast float %1143, %1136
  %1147 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1148 = extractvalue %dx.types.CBufRet.i32 %1147, 0
  %1149 = extractvalue %dx.types.CBufRet.i32 %1147, 1
  %1150 = uitofp i32 %1148 to float
  %1151 = uitofp i32 %1149 to float
  %1152 = fmul fast float %1144, %1150
  %1153 = fmul fast float %1145, %1151
  %1154 = fadd fast float %1152, 5.000000e-01
  %1155 = fadd fast float %1153, 5.000000e-01
  %1156 = call float @dx.op.unary.f32(i32 22, float %1154)  ; Frc(value)
  %1157 = call float @dx.op.unary.f32(i32 22, float %1155)  ; Frc(value)
  %1158 = call float @dx.op.unary.f32(i32 27, float %1154)  ; Round_ni(value)
  %1159 = call float @dx.op.unary.f32(i32 27, float %1155)  ; Round_ni(value)
  %1160 = fadd fast float %1158, 1.000000e+00
  %1161 = fadd fast float %1159, 1.000000e+00
  %1162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1163 = extractvalue %dx.types.CBufRet.f32 %1162, 0
  %1164 = extractvalue %dx.types.CBufRet.f32 %1162, 1
  %1165 = fmul fast float %1163, %1160
  %1166 = fmul fast float %1164, %1161
  %1167 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %18, float %1165, float %1166, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1168 = extractvalue %dx.types.ResRet.f32 %1167, 0
  %1169 = extractvalue %dx.types.ResRet.f32 %1167, 1
  %1170 = extractvalue %dx.types.ResRet.f32 %1167, 2
  %1171 = extractvalue %dx.types.ResRet.f32 %1167, 3
  %1172 = extractvalue %dx.types.CBufRet.i32 %1147, 2
  %1173 = extractvalue %dx.types.CBufRet.f32 %1162, 2
  %1174 = uitofp i32 %1172 to float
  %1175 = fadd fast float %1174, -1.000000e+00
  %1176 = fmul fast float %1175, %1168
  %1177 = fmul fast float %1175, %1169
  %1178 = fmul fast float %1175, %1170
  %1179 = fmul fast float %1175, %1171
  %1180 = fadd fast float %1176, 5.000000e-01
  %1181 = fadd fast float %1177, 5.000000e-01
  %1182 = fadd fast float %1178, 5.000000e-01
  %1183 = fadd fast float %1179, 5.000000e-01
  %1184 = fptoui float %1180 to i32
  %1185 = fptoui float %1181 to i32
  %1186 = fptoui float %1182 to i32
  %1187 = fptoui float %1183 to i32
  %1188 = uitofp i32 %1184 to float
  %1189 = uitofp i32 %1185 to float
  %1190 = uitofp i32 %1186 to float
  %1191 = uitofp i32 %1187 to float
  %1192 = fadd fast float %1188, 5.000000e-01
  %1193 = fadd fast float %1189, 5.000000e-01
  %1194 = fadd fast float %1190, 5.000000e-01
  %1195 = fadd fast float %1191, 5.000000e-01
  %1196 = fmul fast float %1192, %1173
  %1197 = fmul fast float %1193, %1173
  %1198 = fmul fast float %1194, %1173
  %1199 = fmul fast float %1195, %1173
  %1200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %1196, float %1146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %1197, float %1146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %1198, float %1146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1205 = extractvalue %dx.types.ResRet.f32 %1204, 0
  %1206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %1199, float %1146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1207 = extractvalue %dx.types.ResRet.f32 %1206, 0
  %1208 = fsub fast float %1205, %1207
  %1209 = fmul fast float %1208, %1156
  %1210 = fadd fast float %1209, %1207
  %1211 = fsub fast float %1203, %1201
  %1212 = fmul fast float %1211, %1156
  %1213 = fadd fast float %1212, %1201
  %1214 = fsub fast float %1213, %1210
  %1215 = fmul fast float %1214, %1157
  %1216 = fadd fast float %1215, %1210
  %1217 = fcmp fast ogt float %1216, 0.000000e+00
  br i1 %1217, label %1218, label %1286, !dx.controlflow.hints !50

; <label>:1218                                    ; preds = %1129
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 0
  %1221 = extractvalue %dx.types.CBufRet.f32 %1219, 1
  %1222 = extractvalue %dx.types.CBufRet.f32 %1219, 2
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 0
  %1225 = extractvalue %dx.types.CBufRet.f32 %1223, 1
  %1226 = extractvalue %dx.types.CBufRet.f32 %1223, 2
  %1227 = fmul fast float %1142, %1134
  %1228 = fmul fast float %1143, %1134
  %1229 = fadd fast float %1144, %1224
  %1230 = fadd fast float %1227, %1225
  %1231 = fadd fast float %1228, %1226
  %1232 = fmul fast float %1229, %1220
  %1233 = fmul fast float %1230, %1220
  %1234 = fmul fast float %1231, %1220
  %1235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %1232, float %1233, float %1234, float undef, i32 0, i32 0, i32 0, float %1130)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = fmul fast float %1229, %1221
  %1238 = fmul fast float %1230, %1221
  %1239 = fmul fast float %1231, %1221
  %1240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %1237, float %1238, float %1239, float undef, i32 0, i32 0, i32 0, float %1131)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1241 = extractvalue %dx.types.ResRet.f32 %1240, 1
  %1242 = fmul fast float %1229, %1222
  %1243 = fmul fast float %1230, %1222
  %1244 = fmul fast float %1231, %1222
  %1245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %1242, float %1243, float %1244, float undef, i32 0, i32 0, i32 0, float %1132)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1246 = extractvalue %dx.types.ResRet.f32 %1245, 2
  %1247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1248 = extractvalue %dx.types.CBufRet.f32 %1247, 1
  %1249 = fmul fast float %1241, %1236
  %1250 = fmul fast float %1249, %1246
  %1251 = call float @dx.op.unary.f32(i32 23, float %1250)  ; Log(value)
  %1252 = fmul fast float %1251, %1248
  %1253 = call float @dx.op.unary.f32(i32 21, float %1252)  ; Exp(value)
  %1254 = extractvalue %dx.types.CBufRet.f32 %1247, 2
  %1255 = fmul fast float %1216, %1216
  %1256 = fmul fast float %1255, %1253
  %1257 = fmul fast float %1256, %1254
  %1258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.f32 %1258, 3
  %1260 = fmul fast float %1259, %1257
  %1261 = bitcast float %1260 to i32
  %1262 = sitofp i32 %1261 to float
  %1263 = fptosi float %1262 to i32
  %1264 = bitcast i32 %1263 to float
  %1265 = fsub fast float 1.000000e+00, %1257
  %1266 = bitcast float %1265 to i32
  %1267 = sitofp i32 %1266 to float
  %1268 = fptosi float %1267 to i32
  %1269 = bitcast i32 %1268 to float
  %1270 = fadd fast float %1264, %1269
  %1271 = bitcast float %1270 to i32
  %1272 = sub nsw i32 2129859010, %1271
  %1273 = bitcast i32 %1272 to float
  %1274 = fmul fast float %1273, %1264
  %1275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1276 = extractvalue %dx.types.CBufRet.f32 %1275, 2
  %1277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1278 = extractvalue %dx.types.CBufRet.f32 %1277, 0
  %1279 = fmul fast float %1274, %1278
  %1280 = fadd fast float %1279, 1.000000e+00
  %1281 = bitcast float %1280 to i32
  %1282 = sub nsw i32 2129859010, %1281
  %1283 = bitcast i32 %1282 to float
  %1284 = fmul fast float %1274, %1276
  %1285 = fmul fast float %1284, %1283
  br label %1286

; <label>:1286                                    ; preds = %1218, %1129
  %1287 = phi float [ %1285, %1218 ], [ %1216, %1129 ]
  %1288 = fmul fast float %1287, %1017
  br label %1289

; <label>:1289                                    ; preds = %1286, %1107
  %1290 = phi float [ %1288, %1286 ], [ 0.000000e+00, %1107 ]
  br i1 %1057, label %1416, label %1291, !dx.controlflow.hints !51

; <label>:1291                                    ; preds = %1289
  %1292 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.i32 %1292, 0
  %1294 = icmp ne i32 %1293, 0
  %1295 = zext i1 %1294 to i32
  %1296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1297 = extractvalue %dx.types.CBufRet.i32 %1296, 0
  %1298 = icmp eq i32 %1297, 0
  br i1 %1298, label %1332, label %1299

; <label>:1299                                    ; preds = %1291
  br label %1300

; <label>:1300                                    ; preds = %1327, %1299
  %1301 = phi i32 [ %1328, %1327 ], [ 0, %1299 ]
  %1302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1301, i32 0)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.f32 %1302, 0
  %1304 = extractvalue %dx.types.ResRet.f32 %1302, 1
  %1305 = extractvalue %dx.types.ResRet.f32 %1302, 2
  %1306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1301, i32 16)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.f32 %1306, 0
  %1308 = extractvalue %dx.types.ResRet.f32 %1306, 1
  %1309 = extractvalue %dx.types.ResRet.f32 %1306, 2
  %1310 = fsub fast float %1303, %1307
  %1311 = fsub fast float %1304, %1308
  %1312 = fsub fast float %1305, %1309
  %1313 = fadd fast float %1307, %1303
  %1314 = fadd fast float %1308, %1304
  %1315 = fadd fast float %1309, %1305
  %1316 = fcmp fast olt float %1021, %1310
  %1317 = fcmp fast olt float %1022, %1311
  %1318 = fcmp fast olt float %1023, %1312
  %1319 = or i1 %1316, %1317
  %1320 = or i1 %1318, %1319
  %1321 = fcmp fast ogt float %1021, %1313
  %1322 = fcmp fast ogt float %1022, %1314
  %1323 = fcmp fast ogt float %1023, %1315
  %1324 = or i1 %1321, %1322
  %1325 = or i1 %1323, %1324
  %1326 = or i1 %1320, %1325
  br i1 %1326, label %1327, label %1330, !dx.controlflow.hints !52

; <label>:1327                                    ; preds = %1300
  %1328 = add nuw i32 %1301, 1
  %1329 = icmp ult i32 %1328, %1297
  br i1 %1329, label %1300, label %1330

; <label>:1330                                    ; preds = %1327, %1300
  %1331 = phi i32 [ 255, %1327 ], [ %1301, %1300 ]
  br label %1332

; <label>:1332                                    ; preds = %1330, %1291
  %1333 = phi i32 [ 255, %1291 ], [ %1331, %1330 ]
  %1334 = icmp eq i32 %1333, 255
  br i1 %1334, label %1340, label %1335, !dx.controlflow.hints !53

; <label>:1335                                    ; preds = %1332
  %1336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1333, i32 156)  ; BufferLoad(srv,index,wot)
  %1337 = extractvalue %dx.types.ResRet.i32 %1336, 0
  %1338 = icmp ne i32 %1337, 0
  %1339 = zext i1 %1338 to i32
  br label %1340

; <label>:1340                                    ; preds = %1335, %1332
  %1341 = phi i32 [ %1339, %1335 ], [ %1295, %1332 ]
  %1342 = icmp eq i32 %1341, 0
  br i1 %1342, label %1343, label %1412, !dx.controlflow.hints !54

; <label>:1343                                    ; preds = %1340
  %1344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1345 = extractvalue %dx.types.CBufRet.f32 %1344, 3
  %1346 = extractvalue %dx.types.CBufRet.f32 %456, 0
  %1347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1348 = extractvalue %dx.types.CBufRet.f32 %1347, 2
  %1349 = extractvalue %dx.types.CBufRet.f32 %1347, 3
  br i1 %1334, label %1360, label %1350, !dx.controlflow.hints !55

; <label>:1350                                    ; preds = %1343
  %1351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1333, i32 60)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.f32 %1351, 0
  %1353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1333, i32 64)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.f32 %1353, 0
  %1355 = extractvalue %dx.types.ResRet.f32 %1353, 1
  %1356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1333, i32 72)  ; BufferLoad(srv,index,wot)
  %1357 = extractvalue %dx.types.ResRet.f32 %1356, 0
  %1358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1333, i32 96)  ; BufferLoad(srv,index,wot)
  %1359 = extractvalue %dx.types.ResRet.f32 %1358, 0
  br label %1360

; <label>:1360                                    ; preds = %1350, %1343
  %1361 = phi float [ %1352, %1350 ], [ %459, %1343 ]
  %1362 = phi float [ %1357, %1350 ], [ %457, %1343 ]
  %1363 = phi float [ %1359, %1350 ], [ %1346, %1343 ]
  %1364 = phi float [ %1354, %1350 ], [ %1348, %1343 ]
  %1365 = phi float [ %1355, %1350 ], [ %1349, %1343 ]
  %1366 = call float @dx.op.binary.f32(i32 35, float %1052, float 0.000000e+00)  ; FMax(a,b)
  %1367 = call float @dx.op.binary.f32(i32 36, float %1366, float 1.000000e+00)  ; FMin(a,b)
  %1368 = call float @dx.op.unary.f32(i32 24, float %1367)  ; Sqrt(value)
  %1369 = call float @dx.op.binary.f32(i32 35, float %1055, float 0x3F847AE140000000)  ; FMax(a,b)
  %1370 = fsub fast float %1053, %1023
  %1371 = fsub fast float %1023, %1054
  %1372 = call float @dx.op.binary.f32(i32 36, float %1371, float %1370)  ; FMin(a,b)
  %1373 = fdiv fast float %1372, %1369
  %1374 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  %1375 = fsub fast float %1023, %1362
  %1376 = fdiv fast float %1375, %1361
  %1377 = call float @dx.op.unary.f32(i32 7, float %1376)  ; Saturate(value)
  %1378 = fsub fast float 1.000000e+00, %1377
  %1379 = fmul float %1374, %1378
  %1380 = fmul float %1379, %1379
  %1381 = fmul fast float %1368, %1345
  %1382 = fmul fast float %1381, %1380
  %1383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.f32 %1383, 2
  %1385 = extractvalue %dx.types.CBufRet.f32 %1383, 1
  %1386 = fsub fast float %1382, %1385
  %1387 = fsub fast float %1384, %1385
  %1388 = fdiv fast float %1386, %1387
  %1389 = call float @dx.op.unary.f32(i32 7, float %1388)  ; Saturate(value)
  %1390 = fmul fast float %1389, %1363
  %1391 = fcmp fast ogt float %1365, 0.000000e+00
  br i1 %1391, label %1392, label %1412, !dx.controlflow.hints !56

; <label>:1392                                    ; preds = %1360
  %1393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1394 = extractvalue %dx.types.CBufRet.f32 %1393, 0
  %1395 = extractvalue %dx.types.CBufRet.f32 %1393, 1
  %1396 = extractvalue %dx.types.CBufRet.f32 %1393, 2
  %1397 = fsub fast float %1021, %1394
  %1398 = fsub fast float %1022, %1395
  %1399 = fsub fast float %1023, %1396
  %1400 = fmul fast float %1397, %1397
  %1401 = fmul fast float %1398, %1398
  %1402 = fadd fast float %1400, %1401
  %1403 = fmul fast float %1399, %1399
  %1404 = fadd fast float %1402, %1403
  %1405 = call float @dx.op.unary.f32(i32 24, float %1404)  ; Sqrt(value)
  %1406 = fsub fast float %1405, %1364
  %1407 = fsub fast float %1365, %1364
  %1408 = fdiv fast float %1406, %1407
  %1409 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1410 = fmul fast float %1409, %1409
  %1411 = fmul fast float %1410, %1390
  br label %1412

; <label>:1412                                    ; preds = %1392, %1360, %1340
  %1413 = phi float [ 0.000000e+00, %1340 ], [ %1411, %1392 ], [ %1390, %1360 ]
  %1414 = fmul fast float %1413, %1017
  %1415 = fadd fast float %1414, %1290
  br label %1416

; <label>:1416                                    ; preds = %1412, %1289
  %1417 = phi float [ %1415, %1412 ], [ %1290, %1289 ]
  %1418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1419 = extractvalue %dx.types.CBufRet.f32 %1418, 3
  %1420 = fmul fast float %1417, 0xBFF7154760000000
  %1421 = fmul fast float %1420, %1419
  %1422 = call float @dx.op.unary.f32(i32 21, float %1421)  ; Exp(value)
  %1423 = call float @dx.op.unary.f32(i32 7, float %1422)  ; Saturate(value)
  %1424 = fmul fast float %1423, %1013
  %1425 = fmul fast float %1423, %1014
  %1426 = fmul fast float %1423, %1015
  %1427 = fadd fast float %1424, %208
  %1428 = fadd fast float %1425, %209
  %1429 = fadd fast float %1426, %210
  %1430 = fsub fast float 1.000000e+00, %983
  %1431 = fmul fast float %975, %421
  %1432 = fmul fast float %1431, %1430
  %1433 = fmul fast float %1432, %1427
  %1434 = fmul fast float %976, %421
  %1435 = fmul fast float %1434, %1430
  %1436 = fmul fast float %1435, %1428
  %1437 = fmul fast float %977, %421
  %1438 = fmul fast float %1437, %1430
  %1439 = fmul fast float %1438, %1429
  %1440 = fadd fast float %1433, %422
  %1441 = fadd fast float %1436, %423
  %1442 = fadd fast float %1439, %424
  %1443 = fdiv fast float %960, %620
  %1444 = fadd fast float %620, %428
  %1445 = fmul fast float %428, %428
  %1446 = fmul fast float %1444, %1444
  %1447 = fsub fast float %1445, %1446
  %1448 = fmul fast float %1447, -5.000000e-01
  %1449 = fmul fast float %1448, %1443
  %1450 = fadd fast float %1449, %420
  %1451 = fadd fast float %960, %430
  %1452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1453 = extractvalue %dx.types.CBufRet.i32 %1452, 0
  %1454 = icmp eq i32 %1453, 0
  br i1 %1454, label %1481, label %1455, !dx.controlflow.hints !60

; <label>:1455                                    ; preds = %1416
  %1456 = icmp ne i32 %435, 0
  %1457 = zext i1 %1456 to i32
  %1458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1459 = extractvalue %dx.types.CBufRet.f32 %1458, 2
  %1460 = extractvalue %dx.types.CBufRet.f32 %1458, 0
  %1461 = fsub fast float %1444, %1460
  %1462 = fmul fast float %1461, %1459
  %1463 = call float @dx.op.unary.f32(i32 7, float %1462)  ; Saturate(value)
  %1464 = fadd fast float %1463, -5.000000e-01
  %1465 = fmul fast float %1464, 2.000000e+00
  %1466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1466, 2
  %1468 = fcmp fast olt float %1465, %1467
  br i1 %1468, label %1469, label %1481, !dx.controlflow.hints !61

; <label>:1469                                    ; preds = %1455
  %1470 = fmul fast float %1465, %1465
  %1471 = fmul fast float %1430, %421
  %1472 = fmul fast float %1465, %1471
  %1473 = fmul fast float %1470, %1471
  %1474 = fmul fast float %1472, %1470
  %1475 = fmul fast float %1470, %1470
  %1476 = fmul fast float %1475, %1471
  %1477 = fadd fast float %1472, %431
  %1478 = fadd fast float %1473, %432
  %1479 = fadd fast float %1474, %433
  %1480 = fadd fast float %1476, %434
  br label %1481

; <label>:1481                                    ; preds = %1469, %1455, %1416
  %1482 = phi float [ %431, %1416 ], [ %1477, %1469 ], [ %431, %1455 ]
  %1483 = phi float [ %432, %1416 ], [ %1478, %1469 ], [ %432, %1455 ]
  %1484 = phi float [ %433, %1416 ], [ %1479, %1469 ], [ %433, %1455 ]
  %1485 = phi float [ %434, %1416 ], [ %1480, %1469 ], [ %434, %1455 ]
  %1486 = phi i32 [ %435, %1416 ], [ 1, %1469 ], [ %1457, %1455 ]
  %1487 = fmul fast float %983, %421
  br label %1488

; <label>:1488                                    ; preds = %1481, %978
  %1489 = phi float [ %979, %978 ], [ %1444, %1481 ]
  %1490 = phi float [ %412, %978 ], [ %1052, %1481 ]
  %1491 = phi float [ %413, %978 ], [ %1053, %1481 ]
  %1492 = phi float [ %414, %978 ], [ %1054, %1481 ]
  %1493 = phi float [ %415, %978 ], [ %1055, %1481 ]
  %1494 = phi float [ %420, %978 ], [ %1450, %1481 ]
  %1495 = phi float [ %421, %978 ], [ %1487, %1481 ]
  %1496 = phi float [ %422, %978 ], [ %1440, %1481 ]
  %1497 = phi float [ %423, %978 ], [ %1441, %1481 ]
  %1498 = phi float [ %424, %978 ], [ %1442, %1481 ]
  %1499 = phi float [ %430, %978 ], [ %1451, %1481 ]
  %1500 = phi float [ %431, %978 ], [ %1482, %1481 ]
  %1501 = phi float [ %432, %978 ], [ %1483, %1481 ]
  %1502 = phi float [ %433, %978 ], [ %1484, %1481 ]
  %1503 = phi float [ %434, %978 ], [ %1485, %1481 ]
  %1504 = phi i32 [ %435, %978 ], [ %1486, %1481 ]
  %1505 = fmul fast float %620, %281
  %1506 = fmul fast float %620, %282
  %1507 = fmul fast float %620, %283
  %1508 = fadd fast float %1505, %425
  %1509 = fadd fast float %1506, %426
  %1510 = fadd fast float %1507, %427
  %1511 = fcmp fast olt float %1489, %391
  %1512 = extractvalue %dx.types.CBufRet.f32 %964, 2
  %1513 = fcmp fast olt float %1512, %1495
  %1514 = and i1 %1511, %1513
  br i1 %1514, label %411, label %1515

; <label>:1515                                    ; preds = %1488
  br label %1516

; <label>:1516                                    ; preds = %1515, %363
  %1517 = phi float [ 0.000000e+00, %363 ], [ %1494, %1515 ]
  %1518 = phi float [ 1.000000e+00, %363 ], [ %1495, %1515 ]
  %1519 = phi float [ 0.000000e+00, %363 ], [ %1496, %1515 ]
  %1520 = phi float [ 0.000000e+00, %363 ], [ %1497, %1515 ]
  %1521 = phi float [ 0.000000e+00, %363 ], [ %1498, %1515 ]
  %1522 = phi float [ 0.000000e+00, %363 ], [ %1499, %1515 ]
  %1523 = phi float [ 0.000000e+00, %363 ], [ %1500, %1515 ]
  %1524 = phi float [ 0.000000e+00, %363 ], [ %1501, %1515 ]
  %1525 = phi float [ 0.000000e+00, %363 ], [ %1502, %1515 ]
  %1526 = phi float [ 0.000000e+00, %363 ], [ %1503, %1515 ]
  %1527 = phi i32 [ 0, %363 ], [ %1504, %1515 ]
  %1528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1529 = extractvalue %dx.types.CBufRet.i32 %1528, 0
  %1530 = icmp eq i32 %1529, 0
  br i1 %1530, label %1572, label %1531, !dx.controlflow.hints !62

; <label>:1531                                    ; preds = %1516
  %1532 = icmp eq i32 %1527, 0
  br i1 %1532, label %1571, label %1533, !dx.controlflow.hints !63

; <label>:1533                                    ; preds = %1531
  %1534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1535 = extractvalue %dx.types.CBufRet.i32 %1534, 2
  %1536 = icmp eq i32 %1535, 0
  br i1 %1536, label %1543, label %1537, !dx.controlflow.hints !64

; <label>:1537                                    ; preds = %1533
  %1538 = fsub fast float 1.000000e+00, %1518
  %1539 = fdiv fast float %1523, %1538
  %1540 = fdiv fast float %1524, %1538
  %1541 = fdiv fast float %1525, %1538
  %1542 = fdiv fast float %1526, %1538
  br label %1548

; <label>:1543                                    ; preds = %1533
  %1544 = fadd fast float %1523, %1518
  %1545 = fadd fast float %1524, %1518
  %1546 = fadd fast float %1525, %1518
  %1547 = fadd fast float %1526, %1518
  br label %1548

; <label>:1548                                    ; preds = %1543, %1537
  %1549 = phi float [ %1539, %1537 ], [ %1544, %1543 ]
  %1550 = phi float [ %1540, %1537 ], [ %1545, %1543 ]
  %1551 = phi float [ %1541, %1537 ], [ %1546, %1543 ]
  %1552 = phi float [ %1542, %1537 ], [ %1547, %1543 ]
  %1553 = call float @dx.op.binary.f32(i32 35, float %1549, float -1.000000e+00)  ; FMax(a,b)
  %1554 = call float @dx.op.binary.f32(i32 35, float %1550, float -1.000000e+00)  ; FMax(a,b)
  %1555 = call float @dx.op.binary.f32(i32 35, float %1551, float -1.000000e+00)  ; FMax(a,b)
  %1556 = call float @dx.op.binary.f32(i32 35, float %1552, float -1.000000e+00)  ; FMax(a,b)
  %1557 = call float @dx.op.binary.f32(i32 36, float %1553, float 1.000000e+00)  ; FMin(a,b)
  %1558 = call float @dx.op.binary.f32(i32 36, float %1554, float 1.000000e+00)  ; FMin(a,b)
  %1559 = call float @dx.op.binary.f32(i32 36, float %1555, float 1.000000e+00)  ; FMin(a,b)
  %1560 = call float @dx.op.binary.f32(i32 36, float %1556, float 1.000000e+00)  ; FMin(a,b)
  %1561 = fmul fast float %1557, 1.500000e+00
  %1562 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1559, float %1561)  ; FMad(a,b,c)
  %1563 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1558, float 0.000000e+00)  ; FMad(a,b,c)
  %1564 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1560, float %1563)  ; FMad(a,b,c)
  %1565 = fmul fast float %1557, 0x3FEBB67AE0000000
  %1566 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1559, float %1565)  ; FMad(a,b,c)
  %1567 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1558, float 0.000000e+00)  ; FMad(a,b,c)
  %1568 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1560, float %1567)  ; FMad(a,b,c)
  %1569 = fadd fast float %1562, 5.000000e-01
  %1570 = fadd fast float %1566, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %23, i32 %24, i32 0, float %1569, float %1564, float %1570, float %1568, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1572

; <label>:1571                                    ; preds = %1531
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %23, i32 %24, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1572

; <label>:1572                                    ; preds = %1571, %1548, %1516
  %1573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1574 = extractvalue %dx.types.CBufRet.f32 %1573, 2
  %1575 = fsub fast float %1518, %1574
  %1576 = fdiv fast float %1575, %1574
  %1577 = call float @dx.op.unary.f32(i32 7, float %1576)  ; Saturate(value)
  %1578 = fmul fast float %1577, 2.000000e+00
  %1579 = fsub fast float 3.000000e+00, %1578
  %1580 = fmul fast float %1577, %1577
  %1581 = fmul fast float %1580, %1518
  %1582 = fmul fast float %1581, %1579
  %1583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1584 = extractvalue %dx.types.CBufRet.f32 %1583, 0
  %1585 = extractvalue %dx.types.CBufRet.f32 %1583, 1
  %1586 = extractvalue %dx.types.CBufRet.f32 %1583, 2
  %1587 = call float @dx.op.dot3.f32(i32 55, float %281, float %282, float %283, float %1584, float %1585, float %1586)  ; Dot3(ax,ay,az,bx,by,bz)
  %1588 = fmul fast float %1587, %1517
  %1589 = fcmp fast ogt float %1522, 0.000000e+00
  %1590 = fdiv fast float 1.000000e+00, %1522
  %1591 = fmul fast float %1588, %1590
  %1592 = select i1 %1589, float %1591, float %292
  %1593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1594 = extractvalue %dx.types.CBufRet.f32 %1593, 0
  %1595 = extractvalue %dx.types.CBufRet.f32 %1593, 1
  %1596 = extractvalue %dx.types.CBufRet.f32 %1593, 2
  %1597 = fmul fast float %1594, %245
  %1598 = fmul fast float %1595, %245
  %1599 = fmul fast float %1596, %245
  %1600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1601 = extractvalue %dx.types.CBufRet.f32 %1600, 0
  %1602 = extractvalue %dx.types.CBufRet.f32 %1600, 1
  %1603 = extractvalue %dx.types.CBufRet.f32 %1600, 2
  %1604 = fmul fast float %1601, %246
  %1605 = fmul fast float %1602, %246
  %1606 = fmul fast float %1603, %246
  %1607 = fadd fast float %1604, %1597
  %1608 = fadd fast float %1605, %1598
  %1609 = fadd fast float %1606, %1599
  %1610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1611 = extractvalue %dx.types.CBufRet.f32 %1610, 0
  %1612 = extractvalue %dx.types.CBufRet.f32 %1610, 1
  %1613 = extractvalue %dx.types.CBufRet.f32 %1610, 2
  %1614 = fadd fast float %1607, %1611
  %1615 = fadd fast float %1608, %1612
  %1616 = fadd fast float %1609, %1613
  %1617 = fmul fast float %1614, %1592
  %1618 = fmul fast float %1615, %1592
  %1619 = fmul fast float %1616, %1592
  %1620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1621 = extractvalue %dx.types.CBufRet.f32 %1620, 0
  %1622 = extractvalue %dx.types.CBufRet.f32 %1620, 1
  %1623 = extractvalue %dx.types.CBufRet.f32 %1620, 2
  %1624 = extractvalue %dx.types.CBufRet.f32 %1620, 3
  %1625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1626 = extractvalue %dx.types.CBufRet.f32 %1625, 0
  %1627 = extractvalue %dx.types.CBufRet.f32 %1625, 1
  %1628 = extractvalue %dx.types.CBufRet.f32 %1625, 2
  %1629 = extractvalue %dx.types.CBufRet.f32 %1625, 3
  %1630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1631 = extractvalue %dx.types.CBufRet.f32 %1630, 0
  %1632 = extractvalue %dx.types.CBufRet.f32 %1630, 1
  %1633 = extractvalue %dx.types.CBufRet.f32 %1630, 2
  %1634 = extractvalue %dx.types.CBufRet.f32 %1630, 3
  %1635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1636 = extractvalue %dx.types.CBufRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.CBufRet.f32 %1635, 1
  %1638 = extractvalue %dx.types.CBufRet.f32 %1635, 2
  %1639 = extractvalue %dx.types.CBufRet.f32 %1635, 3
  %1640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1641 = extractvalue %dx.types.CBufRet.f32 %1640, 3
  %1642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1643 = extractvalue %dx.types.CBufRet.f32 %1642, 3
  %1644 = extractvalue %dx.types.CBufRet.f32 %1642, 0
  %1645 = extractvalue %dx.types.CBufRet.f32 %1642, 1
  %1646 = extractvalue %dx.types.CBufRet.f32 %1642, 2
  %1647 = fcmp fast olt float %1646, -5.000000e-01
  %1648 = call float @dx.op.dot3.f32(i32 55, float %1617, float %1618, float %1619, float %1617, float %1618, float %1619)  ; Dot3(ax,ay,az,bx,by,bz)
  %1649 = call float @dx.op.unary.f32(i32 25, float %1648)  ; Rsqrt(value)
  %1650 = fmul fast float %1649, %1648
  %1651 = fmul fast float %1649, %1617
  %1652 = fmul fast float %1649, %1618
  %1653 = fmul fast float %1649, %1619
  %1654 = fadd fast float %1650, %1624
  %1655 = call float @dx.op.dot3.f32(i32 55, float %1651, float %1652, float %1653, float %1621, float %1622, float %1623)  ; Dot3(ax,ay,az,bx,by,bz)
  %1656 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1657 = extractvalue %dx.types.CBufRet.i32 %1656, 1
  %1658 = and i32 %1657, 1
  %1659 = icmp ne i32 %1658, 0
  %1660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1661 = extractvalue %dx.types.CBufRet.f32 %1660, 2
  %1662 = fcmp fast ogt float %1661, 0.000000e+00
  %1663 = and i1 %1659, %1662
  br i1 %1663, label %1664, label %2070, !dx.controlflow.hints !65

; <label>:1664                                    ; preds = %1572
  %1665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1666 = extractvalue %dx.types.CBufRet.f32 %1665, 3
  %1667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.f32 %1667, 2
  %1669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1670 = extractvalue %dx.types.CBufRet.f32 %1669, 2
  %1671 = fsub fast float %1668, %1670
  %1672 = and i32 %1657, 2
  %1673 = extractvalue %dx.types.CBufRet.i32 %1656, 0
  %1674 = call i32 @dx.op.binary.i32(i32 40, i32 %1673, i32 3)  ; UMin(a,b)
  %1675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1676 = extractvalue %dx.types.CBufRet.f32 %1675, 0
  %1677 = extractvalue %dx.types.CBufRet.f32 %1675, 1
  %1678 = extractvalue %dx.types.CBufRet.f32 %1669, 0
  %1679 = extractvalue %dx.types.CBufRet.f32 %1669, 1
  %1680 = fsub fast float %1676, %1678
  %1681 = fsub fast float %1677, %1679
  %1682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1683 = extractvalue %dx.types.CBufRet.f32 %1682, 0
  %1684 = fcmp fast ogt float %1683, 0.000000e+00
  %1685 = fsub fast float -0.000000e+00, %1680
  %1686 = fsub fast float -0.000000e+00, %1681
  %1687 = call float @dx.op.dot2.f32(i32 54, float %1651, float %1652, float %1651, float %1652)  ; Dot2(ax,ay,bx,by)
  %1688 = call float @dx.op.dot2.f32(i32 54, float %1651, float %1652, float %1685, float %1686)  ; Dot2(ax,ay,bx,by)
  %1689 = fmul fast float %1688, 2.000000e+00
  %1690 = call float @dx.op.dot2.f32(i32 54, float %1685, float %1686, float %1685, float %1686)  ; Dot2(ax,ay,bx,by)
  %1691 = fmul fast float %1683, %1683
  %1692 = fsub fast float %1690, %1691
  %1693 = fmul fast float %1689, %1689
  %1694 = fmul fast float %1687, 4.000000e+00
  %1695 = fmul fast float %1694, %1692
  %1696 = fsub fast float %1693, %1695
  %1697 = fcmp fast ogt float %1696, 0.000000e+00
  br i1 %1697, label %1698, label %1713, !dx.controlflow.hints !66

; <label>:1698                                    ; preds = %1664
  %1699 = fcmp fast ogt float %1689, 0.000000e+00
  %1700 = call float @dx.op.unary.f32(i32 24, float %1696)  ; Sqrt(value)
  %1701 = fsub fast float -0.000000e+00, %1700
  %1702 = select i1 %1699, float %1700, float %1701
  %1703 = fadd fast float %1702, %1689
  %1704 = fmul float %1703, -5.000000e-01
  %1705 = fdiv fast float %1704, %1687
  %1706 = call float @dx.op.binary.f32(i32 35, float %1705, float 0.000000e+00)  ; FMax(a,b)
  %1707 = call float @dx.op.binary.f32(i32 36, float %1650, float %1706)  ; FMin(a,b)
  %1708 = fdiv fast float %1692, %1704
  %1709 = call float @dx.op.binary.f32(i32 35, float %1708, float 0.000000e+00)  ; FMax(a,b)
  %1710 = call float @dx.op.binary.f32(i32 36, float %1650, float %1709)  ; FMin(a,b)
  %1711 = call float @dx.op.binary.f32(i32 36, float %1707, float %1710)  ; FMin(a,b)
  %1712 = call float @dx.op.binary.f32(i32 35, float %1707, float %1710)  ; FMax(a,b)
  br label %1713

; <label>:1713                                    ; preds = %1698, %1664
  %1714 = phi float [ %1712, %1698 ], [ -1.000000e+00, %1664 ]
  %1715 = phi float [ %1711, %1698 ], [ -1.000000e+00, %1664 ]
  %1716 = phi i1 [ true, %1698 ], [ false, %1664 ]
  %1717 = and i1 %1684, %1716
  br i1 %1717, label %1718, label %1720, !dx.controlflow.hints !67

; <label>:1718                                    ; preds = %1713
  %1719 = fcmp fast oeq float %1715, %1714
  br i1 %1719, label %2023, label %1721, !dx.controlflow.hints !68

; <label>:1720                                    ; preds = %1713
  br i1 %1684, label %2023, label %1721, !dx.controlflow.hints !69

; <label>:1721                                    ; preds = %1720, %1718
  %1722 = phi float [ %1650, %1720 ], [ %1714, %1718 ]
  %1723 = phi float [ 0.000000e+00, %1720 ], [ %1715, %1718 ]
  %1724 = icmp ne i32 %1672, 0
  %1725 = fmul fast float %1722, %1653
  %1726 = fadd fast float %1725, %1666
  %1727 = fmul fast float %1726, %1722
  %1728 = select i1 %1724, float 0.000000e+00, float %1727
  %1729 = fcmp fast oeq float %1653, 0.000000e+00
  %1730 = fdiv fast float %1671, %1653
  %1731 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1730)  ; FMax(a,b)
  %1732 = select i1 %1729, float %1722, float %1731
  %1733 = call float @dx.op.binary.f32(i32 36, float %1722, float %1732)  ; FMin(a,b)
  %1734 = fcmp fast ogt float %1653, 0.000000e+00
  %1735 = fcmp fast olt float %1671, 0.000000e+00
  br i1 %1734, label %1736, label %1793, !dx.controlflow.hints !70

; <label>:1736                                    ; preds = %1721
  %1737 = icmp eq i32 %1672, 0
  br i1 %1735, label %1738, label %1782, !dx.controlflow.hints !71

; <label>:1738                                    ; preds = %1736
  %1739 = select i1 %1737, float %1722, float 0.000000e+00
  %1740 = fsub fast float -0.000000e+00, %1739
  %1741 = call float @dx.op.unary.f32(i32 6, float %1740)  ; FAbs(value)
  %1742 = fmul fast float %1739, %1653
  %1743 = fadd fast float %1742, %1666
  %1744 = fmul fast float %1741, %1743
  %1745 = fsub fast float %1728, %1744
  %1746 = fsub fast float %1722, %1741
  %1747 = select i1 %1737, float %1746, float 0.000000e+00
  %1748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1749 = extractvalue %dx.types.CBufRet.f32 %1748, 0
  %1750 = extractvalue %dx.types.CBufRet.f32 %1748, 1
  %1751 = extractvalue %dx.types.CBufRet.f32 %1748, 2
  %1752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1753 = extractvalue %dx.types.CBufRet.f32 %1752, 0
  %1754 = extractvalue %dx.types.CBufRet.f32 %1752, 1
  %1755 = extractvalue %dx.types.CBufRet.f32 %1752, 2
  %1756 = extractvalue %dx.types.CBufRet.f32 %1752, 3
  %1757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1758 = extractvalue %dx.types.CBufRet.f32 %1757, 3
  %1759 = call float @dx.op.binary.f32(i32 36, float %1745, float %1758)  ; FMin(a,b)
  %1760 = fmul fast float %1756, %1747
  %1761 = call float @dx.op.unary.f32(i32 7, float %1760)  ; Saturate(value)
  %1762 = fsub fast float %1753, %1749
  %1763 = fsub fast float %1754, %1750
  %1764 = fsub fast float %1755, %1751
  %1765 = fmul fast float %1761, %1762
  %1766 = fmul fast float %1761, %1763
  %1767 = fmul fast float %1761, %1764
  %1768 = fadd fast float %1765, %1749
  %1769 = fadd fast float %1766, %1750
  %1770 = fadd fast float %1767, %1751
  %1771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = extractvalue %dx.types.CBufRet.f32 %1771, 0
  %1773 = extractvalue %dx.types.CBufRet.f32 %1771, 1
  %1774 = fadd fast float %1773, %1772
  %1775 = call float @dx.op.unary.f32(i32 7, float %1774)  ; Saturate(value)
  %1776 = extractvalue %dx.types.CBufRet.f32 %1771, 2
  %1777 = extractvalue %dx.types.CBufRet.f32 %1771, 3
  %1778 = fadd fast float %1777, %1776
  %1779 = call float @dx.op.unary.f32(i32 7, float %1778)  ; Saturate(value)
  %1780 = fmul fast float %1775, %1759
  %1781 = fmul fast float %1780, %1779
  br label %2023

; <label>:1782                                    ; preds = %1736
  br i1 %1737, label %1783, label %1804, !dx.controlflow.hints !72

; <label>:1783                                    ; preds = %1782
  %1784 = call float @dx.op.binary.f32(i32 36, float %1733, float %1723)  ; FMin(a,b)
  %1785 = fsub fast float %1733, %1784
  %1786 = fsub fast float %1785, %1722
  %1787 = call float @dx.op.unary.f32(i32 6, float %1786)  ; FAbs(value)
  %1788 = fadd fast float %1785, %1722
  %1789 = fmul fast float %1788, %1653
  %1790 = fadd fast float %1789, %1666
  %1791 = fmul fast float %1790, %1787
  %1792 = fsub fast float %1728, %1791
  br label %1804

; <label>:1793                                    ; preds = %1721
  br i1 %1735, label %1794, label %1804, !dx.controlflow.hints !73

; <label>:1794                                    ; preds = %1793
  %1795 = call float @dx.op.binary.f32(i32 35, float %1723, float %1733)  ; FMax(a,b)
  %1796 = icmp eq i32 %1672, 0
  %1797 = select i1 %1796, float %1733, float 0.000000e+00
  %1798 = fsub fast float -0.000000e+00, %1797
  %1799 = call float @dx.op.unary.f32(i32 6, float %1798)  ; FAbs(value)
  %1800 = fmul fast float %1797, %1653
  %1801 = fadd fast float %1800, %1666
  %1802 = fmul fast float %1799, %1801
  %1803 = fsub fast float %1728, %1802
  br label %1804

; <label>:1804                                    ; preds = %1794, %1793, %1783, %1782
  %1805 = phi float [ %1723, %1782 ], [ %1723, %1783 ], [ %1795, %1794 ], [ %1723, %1793 ]
  %1806 = phi float [ 0.000000e+00, %1782 ], [ %1787, %1783 ], [ %1799, %1794 ], [ 0.000000e+00, %1793 ]
  %1807 = phi float [ %1728, %1782 ], [ %1792, %1783 ], [ %1803, %1794 ], [ %1728, %1793 ]
  %1808 = phi float [ %1733, %1782 ], [ %1733, %1783 ], [ %1722, %1794 ], [ %1722, %1793 ]
  %1809 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 0
  store float -1.000000e+00, float* %1809, align 4, !tbaa !74, !noalias !78
  %1810 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 1
  store float -1.000000e+00, float* %1810, align 4, !tbaa !74, !noalias !78
  %1811 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 2
  store float -1.000000e+00, float* %1811, align 4, !tbaa !74, !noalias !78
  %1812 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  store float -1.000000e+00, float* %1812, align 4, !tbaa !74, !noalias !78
  %1813 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 1
  store float -1.000000e+00, float* %1813, align 4, !tbaa !74, !noalias !78
  %1814 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 2
  store float -1.000000e+00, float* %1814, align 4, !tbaa !74, !noalias !78
  %1815 = icmp sgt i32 %1674, 0
  br i1 %1815, label %1816, label %1877

; <label>:1816                                    ; preds = %1804
  br label %1817

; <label>:1817                                    ; preds = %1866, %1816
  %1818 = phi i32 [ %1867, %1866 ], [ 0, %1816 ]
  %1819 = phi i32 [ %1868, %1866 ], [ 0, %1816 ]
  %1820 = add nuw i32 %1819, 171
  %1821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %1820)  ; CBufferLoadLegacy(handle,regIndex)
  %1822 = extractvalue %dx.types.CBufRet.f32 %1821, 0
  %1823 = extractvalue %dx.types.CBufRet.f32 %1821, 1
  %1824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1825 = extractvalue %dx.types.CBufRet.f32 %1824, 0
  %1826 = extractvalue %dx.types.CBufRet.f32 %1824, 1
  %1827 = fsub fast float %1822, %1825
  %1828 = fsub fast float %1823, %1826
  %1829 = extractvalue %dx.types.CBufRet.f32 %1821, 2
  %1830 = fsub fast float -0.000000e+00, %1827
  %1831 = fsub fast float -0.000000e+00, %1828
  %1832 = call float @dx.op.dot2.f32(i32 54, float %1651, float %1652, float %1830, float %1831)  ; Dot2(ax,ay,bx,by)
  %1833 = fmul fast float %1832, 2.000000e+00
  %1834 = call float @dx.op.dot2.f32(i32 54, float %1830, float %1831, float %1830, float %1831)  ; Dot2(ax,ay,bx,by)
  %1835 = fmul fast float %1829, %1829
  %1836 = fsub fast float %1834, %1835
  %1837 = fmul fast float %1833, %1833
  %1838 = fmul fast float %1694, %1836
  %1839 = fsub fast float %1837, %1838
  %1840 = fcmp fast ogt float %1839, 0.000000e+00
  br i1 %1840, label %1841, label %1856, !dx.controlflow.hints !66

; <label>:1841                                    ; preds = %1817
  %1842 = fcmp fast ogt float %1833, 0.000000e+00
  %1843 = call float @dx.op.unary.f32(i32 24, float %1839)  ; Sqrt(value)
  %1844 = fsub fast float -0.000000e+00, %1843
  %1845 = select i1 %1842, float %1843, float %1844
  %1846 = fadd fast float %1845, %1833
  %1847 = fmul float %1846, -5.000000e-01
  %1848 = fdiv fast float %1847, %1687
  %1849 = call float @dx.op.binary.f32(i32 35, float %1848, float 0.000000e+00)  ; FMax(a,b)
  %1850 = call float @dx.op.binary.f32(i32 36, float %1722, float %1849)  ; FMin(a,b)
  %1851 = fdiv fast float %1836, %1847
  %1852 = call float @dx.op.binary.f32(i32 35, float %1851, float 0.000000e+00)  ; FMax(a,b)
  %1853 = call float @dx.op.binary.f32(i32 36, float %1722, float %1852)  ; FMin(a,b)
  %1854 = call float @dx.op.binary.f32(i32 36, float %1850, float %1853)  ; FMin(a,b)
  %1855 = call float @dx.op.binary.f32(i32 35, float %1850, float %1853)  ; FMax(a,b)
  br label %1856

; <label>:1856                                    ; preds = %1841, %1817
  %1857 = phi float [ %1855, %1841 ], [ -1.000000e+00, %1817 ]
  %1858 = phi float [ %1854, %1841 ], [ -1.000000e+00, %1817 ]
  %1859 = phi i1 [ true, %1841 ], [ false, %1817 ]
  br i1 %1859, label %1860, label %1866, !dx.controlflow.hints !89

; <label>:1860                                    ; preds = %1856
  %1861 = call float @dx.op.binary.f32(i32 35, float %1805, float %1858)  ; FMax(a,b)
  %1862 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %1819
  store float %1861, float* %1862, align 4, !tbaa !74, !noalias !78
  %1863 = call float @dx.op.binary.f32(i32 35, float %1805, float %1857)  ; FMax(a,b)
  %1864 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %1819
  store float %1863, float* %1864, align 4, !tbaa !74, !noalias !78
  %1865 = add nsw i32 %1818, 1
  br label %1866

; <label>:1866                                    ; preds = %1860, %1856
  %1867 = phi i32 [ %1865, %1860 ], [ %1818, %1856 ]
  %1868 = add nuw nsw i32 %1819, 1
  %1869 = icmp eq i32 %1868, %1674
  br i1 %1869, label %1870, label %1817

; <label>:1870                                    ; preds = %1866
  %1871 = load float, float* %1811, align 4, !tbaa !74, !alias.scope !90, !noalias !93
  %1872 = load float, float* %1810, align 4, !tbaa !74, !alias.scope !96, !noalias !97
  %1873 = load float, float* %1809, align 4, !tbaa !74, !alias.scope !98, !noalias !99
  %1874 = load float, float* %1814, align 4, !tbaa !74, !alias.scope !100, !noalias !103
  %1875 = load float, float* %1813, align 4, !tbaa !74, !alias.scope !106, !noalias !107
  %1876 = load float, float* %1812, align 4, !tbaa !74, !alias.scope !108, !noalias !109
  br label %1877

; <label>:1877                                    ; preds = %1870, %1804
  %1878 = phi float [ -1.000000e+00, %1804 ], [ %1876, %1870 ]
  %1879 = phi float [ -1.000000e+00, %1804 ], [ %1875, %1870 ]
  %1880 = phi float [ -1.000000e+00, %1804 ], [ %1874, %1870 ]
  %1881 = phi float [ -1.000000e+00, %1804 ], [ %1873, %1870 ]
  %1882 = phi float [ -1.000000e+00, %1804 ], [ %1872, %1870 ]
  %1883 = phi float [ -1.000000e+00, %1804 ], [ %1871, %1870 ]
  %1884 = phi i32 [ 0, %1804 ], [ %1867, %1870 ]
  %1885 = call float @dx.op.binary.f32(i32 36, float %1882, float %1883)  ; FMin(a,b)
  %1886 = call float @dx.op.binary.f32(i32 36, float %1881, float %1885)  ; FMin(a,b)
  %1887 = call float @dx.op.binary.f32(i32 35, float %1881, float %1882)  ; FMax(a,b)
  %1888 = call float @dx.op.binary.f32(i32 36, float %1887, float %1883)  ; FMin(a,b)
  %1889 = call float @dx.op.binary.f32(i32 36, float %1881, float %1882)  ; FMin(a,b)
  %1890 = call float @dx.op.binary.f32(i32 35, float %1889, float %1888)  ; FMax(a,b)
  %1891 = call float @dx.op.binary.f32(i32 35, float %1882, float %1883)  ; FMax(a,b)
  %1892 = call float @dx.op.binary.f32(i32 35, float %1881, float %1891)  ; FMax(a,b)
  store float %1886, float* %1809, align 4, !tbaa !74, !alias.scope !98, !noalias !99
  store float %1890, float* %1810, align 4, !tbaa !74, !alias.scope !96, !noalias !97
  store float %1892, float* %1811, align 4, !tbaa !74, !alias.scope !90, !noalias !93
  %1893 = call float @dx.op.binary.f32(i32 36, float %1879, float %1880)  ; FMin(a,b)
  %1894 = call float @dx.op.binary.f32(i32 36, float %1878, float %1893)  ; FMin(a,b)
  %1895 = call float @dx.op.binary.f32(i32 35, float %1878, float %1879)  ; FMax(a,b)
  %1896 = call float @dx.op.binary.f32(i32 36, float %1895, float %1880)  ; FMin(a,b)
  %1897 = call float @dx.op.binary.f32(i32 36, float %1878, float %1879)  ; FMin(a,b)
  %1898 = call float @dx.op.binary.f32(i32 35, float %1897, float %1896)  ; FMax(a,b)
  %1899 = call float @dx.op.binary.f32(i32 35, float %1879, float %1880)  ; FMax(a,b)
  %1900 = call float @dx.op.binary.f32(i32 35, float %1878, float %1899)  ; FMax(a,b)
  store float %1894, float* %1812, align 4, !tbaa !74, !alias.scope !108, !noalias !109
  store float %1898, float* %1813, align 4, !tbaa !74, !alias.scope !106, !noalias !107
  store float %1900, float* %1814, align 4, !tbaa !74, !alias.scope !100, !noalias !103
  %1901 = sub nsw i32 3, %1884
  %1902 = icmp sgt i32 %1901, 2
  br i1 %1902, label %1903, label %1941, !dx.controlflow.hints !110

; <label>:1903                                    ; preds = %1877
  %1904 = icmp eq i32 %1672, 0
  %1905 = fsub fast float %1722, %1806
  %1906 = select i1 %1904, float %1905, float %1806
  %1907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.f32 %1907, 0
  %1909 = extractvalue %dx.types.CBufRet.f32 %1907, 1
  %1910 = extractvalue %dx.types.CBufRet.f32 %1907, 2
  %1911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.f32 %1911, 0
  %1913 = extractvalue %dx.types.CBufRet.f32 %1911, 1
  %1914 = extractvalue %dx.types.CBufRet.f32 %1911, 2
  %1915 = extractvalue %dx.types.CBufRet.f32 %1911, 3
  %1916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1917 = extractvalue %dx.types.CBufRet.f32 %1916, 3
  %1918 = call float @dx.op.binary.f32(i32 36, float %1807, float %1917)  ; FMin(a,b)
  %1919 = fmul fast float %1915, %1906
  %1920 = call float @dx.op.unary.f32(i32 7, float %1919)  ; Saturate(value)
  %1921 = fsub fast float %1912, %1908
  %1922 = fsub fast float %1913, %1909
  %1923 = fsub fast float %1914, %1910
  %1924 = fmul fast float %1920, %1921
  %1925 = fmul fast float %1920, %1922
  %1926 = fmul fast float %1920, %1923
  %1927 = fadd fast float %1924, %1908
  %1928 = fadd fast float %1925, %1909
  %1929 = fadd fast float %1926, %1910
  %1930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1931 = extractvalue %dx.types.CBufRet.f32 %1930, 0
  %1932 = extractvalue %dx.types.CBufRet.f32 %1930, 1
  %1933 = fadd fast float %1932, %1931
  %1934 = call float @dx.op.unary.f32(i32 7, float %1933)  ; Saturate(value)
  %1935 = extractvalue %dx.types.CBufRet.f32 %1930, 2
  %1936 = extractvalue %dx.types.CBufRet.f32 %1930, 3
  %1937 = fadd fast float %1936, %1935
  %1938 = call float @dx.op.unary.f32(i32 7, float %1937)  ; Saturate(value)
  %1939 = fmul fast float %1934, %1918
  %1940 = fmul fast float %1939, %1938
  br label %2023

; <label>:1941                                    ; preds = %1877
  %1942 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %1901
  %1943 = load float, float* %1942, align 4, !tbaa !74, !noalias !78
  %1944 = fcmp fast olt float %1943, %1808
  %1945 = icmp sgt i32 %1884, 0
  %1946 = and i1 %1945, %1944
  br i1 %1946, label %1947, label %1984

; <label>:1947                                    ; preds = %1941
  br label %1948

; <label>:1948                                    ; preds = %1977, %1947
  %1949 = phi float [ %1978, %1977 ], [ %1806, %1947 ]
  %1950 = phi float [ %1979, %1977 ], [ %1807, %1947 ]
  %1951 = phi float [ %1959, %1977 ], [ %1943, %1947 ]
  %1952 = phi i32 [ %1956, %1977 ], [ %1901, %1947 ]
  %1953 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %1952
  %1954 = load float, float* %1953, align 4, !tbaa !74, !noalias !78
  %1955 = icmp slt i32 %1952, 2
  %1956 = add nsw i32 %1952, 1
  %1957 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %1956
  %1958 = load float, float* %1957, align 4, !tbaa !74, !noalias !78
  %1959 = select i1 %1955, float %1958, float %1722
  %1960 = call float @dx.op.binary.f32(i32 36, float %1959, float %1954)  ; FMin(a,b)
  %1961 = call float @dx.op.binary.f32(i32 36, float %1808, float %1960)  ; FMin(a,b)
  %1962 = icmp eq i32 %1672, 0
  %1963 = fadd fast float %1961, %1951
  %1964 = fmul fast float %1963, %1653
  %1965 = fadd fast float %1964, %1666
  br i1 %1962, label %1971, label %1966, !dx.controlflow.hints !111

; <label>:1966                                    ; preds = %1948
  %1967 = fsub fast float %1961, %1951
  %1968 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1967)  ; FMax(a,b)
  %1969 = fmul fast float %1968, %1965
  %1970 = fadd fast float %1969, %1950
  br label %1977

; <label>:1971                                    ; preds = %1948
  %1972 = fsub fast float %1951, %1961
  %1973 = call float @dx.op.unary.f32(i32 6, float %1972)  ; FAbs(value)
  %1974 = fadd fast float %1973, %1949
  %1975 = fmul fast float %1973, %1965
  %1976 = fsub fast float %1950, %1975
  br label %1977

; <label>:1977                                    ; preds = %1971, %1966
  %1978 = phi float [ %1968, %1966 ], [ %1974, %1971 ]
  %1979 = phi float [ %1970, %1966 ], [ %1976, %1971 ]
  %1980 = fcmp fast olt float %1959, %1808
  %1981 = icmp slt i32 %1956, 3
  %1982 = and i1 %1981, %1980
  br i1 %1982, label %1948, label %1983

; <label>:1983                                    ; preds = %1977
  br label %1984

; <label>:1984                                    ; preds = %1983, %1941
  %1985 = phi float [ %1806, %1941 ], [ %1978, %1983 ]
  %1986 = phi float [ %1807, %1941 ], [ %1979, %1983 ]
  %1987 = fsub fast float %1722, %1985
  %1988 = select i1 %1724, float %1985, float %1987
  %1989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1990 = extractvalue %dx.types.CBufRet.f32 %1989, 0
  %1991 = extractvalue %dx.types.CBufRet.f32 %1989, 1
  %1992 = extractvalue %dx.types.CBufRet.f32 %1989, 2
  %1993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1994 = extractvalue %dx.types.CBufRet.f32 %1993, 0
  %1995 = extractvalue %dx.types.CBufRet.f32 %1993, 1
  %1996 = extractvalue %dx.types.CBufRet.f32 %1993, 2
  %1997 = extractvalue %dx.types.CBufRet.f32 %1993, 3
  %1998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1999 = extractvalue %dx.types.CBufRet.f32 %1998, 3
  %2000 = call float @dx.op.binary.f32(i32 36, float %1986, float %1999)  ; FMin(a,b)
  %2001 = fmul fast float %1997, %1988
  %2002 = call float @dx.op.unary.f32(i32 7, float %2001)  ; Saturate(value)
  %2003 = fsub fast float %1994, %1990
  %2004 = fsub fast float %1995, %1991
  %2005 = fsub fast float %1996, %1992
  %2006 = fmul fast float %2002, %2003
  %2007 = fmul fast float %2002, %2004
  %2008 = fmul fast float %2002, %2005
  %2009 = fadd fast float %2006, %1990
  %2010 = fadd fast float %2007, %1991
  %2011 = fadd fast float %2008, %1992
  %2012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2013 = extractvalue %dx.types.CBufRet.f32 %2012, 0
  %2014 = extractvalue %dx.types.CBufRet.f32 %2012, 1
  %2015 = fadd fast float %2014, %2013
  %2016 = call float @dx.op.unary.f32(i32 7, float %2015)  ; Saturate(value)
  %2017 = extractvalue %dx.types.CBufRet.f32 %2012, 2
  %2018 = extractvalue %dx.types.CBufRet.f32 %2012, 3
  %2019 = fadd fast float %2018, %2017
  %2020 = call float @dx.op.unary.f32(i32 7, float %2019)  ; Saturate(value)
  %2021 = fmul fast float %2016, %2000
  %2022 = fmul fast float %2021, %2020
  br label %2023

; <label>:2023                                    ; preds = %1984, %1903, %1738, %1720, %1718
  %2024 = phi float [ %1747, %1738 ], [ %1906, %1903 ], [ %1988, %1984 ], [ 0.000000e+00, %1718 ], [ 0.000000e+00, %1720 ]
  %2025 = phi float [ %1781, %1738 ], [ %1940, %1903 ], [ %2022, %1984 ], [ 0.000000e+00, %1718 ], [ 0.000000e+00, %1720 ]
  %2026 = phi float [ %1768, %1738 ], [ %1927, %1903 ], [ %2009, %1984 ], [ 0.000000e+00, %1718 ], [ 0.000000e+00, %1720 ]
  %2027 = phi float [ %1769, %1738 ], [ %1928, %1903 ], [ %2010, %1984 ], [ 0.000000e+00, %1718 ], [ 0.000000e+00, %1720 ]
  %2028 = phi float [ %1770, %1738 ], [ %1929, %1903 ], [ %2011, %1984 ], [ 0.000000e+00, %1718 ], [ 0.000000e+00, %1720 ]
  %2029 = fmul fast float %1661, %2025
  %2030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2031 = extractvalue %dx.types.CBufRet.f32 %2030, 2
  %2032 = fsub fast float %1668, %2031
  %2033 = fcmp fast olt float %2029, -2.000000e+01
  %2034 = call float @dx.op.unary.f32(i32 21, float %2029)  ; Exp(value)
  %2035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2036 = extractvalue %dx.types.CBufRet.f32 %2035, 2
  %2037 = extractvalue %dx.types.CBufRet.f32 %2035, 3
  %2038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2039 = extractvalue %dx.types.CBufRet.f32 %2038, 2
  %2040 = fmul fast float %2037, %2032
  %2041 = call float @dx.op.unary.f32(i32 7, float %2040)  ; Saturate(value)
  %2042 = fsub fast float 1.000000e+00, %2041
  %2043 = fmul fast float %1653, 5.000000e-01
  %2044 = fadd fast float %2043, 5.000000e-01
  %2045 = call float @dx.op.unary.f32(i32 7, float %2044)  ; Saturate(value)
  %2046 = fsub fast float 1.000000e+00, %2045
  %2047 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2042)  ; FMax(a,b)
  %2048 = fdiv fast float %2046, %2047
  %2049 = fsub fast float %2032, %1619
  %2050 = call float @dx.op.unary.f32(i32 6, float %2049)  ; FAbs(value)
  %2051 = fmul fast float %2050, %2036
  %2052 = call float @dx.op.unary.f32(i32 7, float %2048)  ; Saturate(value)
  %2053 = fsub fast float 1.000000e+00, %2051
  %2054 = fmul fast float %2053, %2052
  %2055 = fadd fast float %2054, %2051
  %2056 = fmul fast float %2039, %2032
  %2057 = call float @dx.op.unary.f32(i32 7, float %2056)  ; Saturate(value)
  %2058 = fsub fast float 1.000000e+00, %2055
  %2059 = fmul fast float %2058, %2057
  %2060 = fadd fast float %2059, %2055
  %2061 = call float @dx.op.unary.f32(i32 7, float %2060)  ; Saturate(value)
  %2062 = fadd fast float %2034, -1.000000e+00
  %2063 = select i1 %2033, float -1.000000e+00, float %2062
  %2064 = fmul fast float %2061, %2063
  %2065 = fadd fast float %2064, 1.000000e+00
  %2066 = fsub fast float -0.000000e+00, %2064
  %2067 = fmul fast float %2026, %2066
  %2068 = fmul fast float %2027, %2066
  %2069 = fmul fast float %2028, %2066
  br label %2070

; <label>:2070                                    ; preds = %2023, %1572
  %2071 = phi float [ %2024, %2023 ], [ 0.000000e+00, %1572 ]
  %2072 = phi float [ %2065, %2023 ], [ 1.000000e+00, %1572 ]
  %2073 = phi float [ %2067, %2023 ], [ 0.000000e+00, %1572 ]
  %2074 = phi float [ %2068, %2023 ], [ 0.000000e+00, %1572 ]
  %2075 = phi float [ %2069, %2023 ], [ 0.000000e+00, %1572 ]
  %2076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2077 = extractvalue %dx.types.CBufRet.f32 %2076, 1
  %2078 = fsub fast float 1.000000e+00, %2072
  %2079 = fmul fast float %2078, %1654
  %2080 = fmul fast float %2079, %2077
  %2081 = fsub fast float %1654, %2080
  br i1 %1647, label %2082, label %2111, !dx.controlflow.hints !112

; <label>:2082                                    ; preds = %2070
  %2083 = fmul fast float %1655, %1644
  %2084 = fadd fast float %2083, %1645
  %2085 = call float @dx.op.unary.f32(i32 7, float %2084)  ; Saturate(value)
  %2086 = fmul fast float %1626, %2081
  %2087 = fsub fast float -0.000000e+00, %2086
  %2088 = fmul fast float %1627, %2081
  %2089 = fsub fast float -0.000000e+00, %2088
  %2090 = call float @dx.op.unary.f32(i32 21, float %2087)  ; Exp(value)
  %2091 = call float @dx.op.unary.f32(i32 21, float %2089)  ; Exp(value)
  %2092 = call float @dx.op.binary.f32(i32 35, float %1634, float %2090)  ; FMax(a,b)
  %2093 = call float @dx.op.binary.f32(i32 35, float %1634, float %2091)  ; FMax(a,b)
  %2094 = fsub fast float %2093, %2092
  %2095 = fmul fast float %2094, %2085
  %2096 = fadd fast float %2095, %2092
  %2097 = call float @dx.op.unary.f32(i32 7, float %2096)  ; Saturate(value)
  %2098 = fsub fast float %1631, %1636
  %2099 = fsub fast float %1632, %1637
  %2100 = fsub fast float %1633, %1638
  %2101 = fmul fast float %2085, %2098
  %2102 = fmul fast float %2085, %2099
  %2103 = fmul fast float %2085, %2100
  %2104 = fadd fast float %2101, %1636
  %2105 = fadd fast float %2102, %1637
  %2106 = fadd fast float %2103, %1638
  %2107 = fsub fast float 1.000000e+00, %2097
  %2108 = fmul fast float %2107, %2104
  %2109 = fmul fast float %2107, %2105
  %2110 = fmul fast float %2107, %2106
  br label %2170

; <label>:2111                                    ; preds = %2070
  %2112 = fmul fast float %2081, %1643
  %2113 = call float @dx.op.unary.f32(i32 7, float %2112)  ; Saturate(value)
  %2114 = fsub fast float 2.000000e+00, %2113
  %2115 = fmul fast float %2113, 9.921875e-01
  %2116 = fmul fast float %2115, %2114
  %2117 = fadd fast float %2116, 3.906250e-03
  %2118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %19, float %2117, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2119 = extractvalue %dx.types.ResRet.f32 %2118, 0
  %2120 = fsub fast float %2113, %2119
  %2121 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2120)  ; FMax(a,b)
  %2122 = fmul fast float %1629, %1619
  %2123 = call float @dx.op.unary.f32(i32 6, float %2122)  ; FAbs(value)
  %2124 = fcmp fast ogt float %2123, 0x3EB0C6F7A0000000
  br i1 %2124, label %2125, label %2131, !dx.controlflow.hints !113

; <label>:2125                                    ; preds = %2111
  %2126 = fmul fast float %2122, 0xBFF7154760000000
  %2127 = call float @dx.op.unary.f32(i32 21, float %2126)  ; Exp(value)
  %2128 = fsub fast float 1.000000e+00, %2127
  %2129 = fdiv fast float %2128, %2122
  %2130 = fmul fast float %2129, %1639
  br label %2131

; <label>:2131                                    ; preds = %2125, %2111
  %2132 = phi float [ %2130, %2125 ], [ %1639, %2111 ]
  %2133 = fadd fast float %2132, %1641
  %2134 = fmul fast float %2133, %2121
  %2135 = fmul fast float %1626, %2134
  %2136 = fsub fast float -0.000000e+00, %2135
  %2137 = fmul fast float %1627, %2134
  %2138 = fsub fast float -0.000000e+00, %2137
  %2139 = fmul fast float %1628, %2134
  %2140 = fsub fast float -0.000000e+00, %2139
  %2141 = call float @dx.op.unary.f32(i32 21, float %2136)  ; Exp(value)
  %2142 = call float @dx.op.unary.f32(i32 21, float %2138)  ; Exp(value)
  %2143 = call float @dx.op.unary.f32(i32 21, float %2140)  ; Exp(value)
  %2144 = fmul fast float %1655, %1655
  %2145 = fadd fast float %2144, 1.000000e+00
  %2146 = fmul fast float %2145, 0x3FAE8EC8A0000000
  %2147 = fmul fast float %2146, %1636
  %2148 = fmul fast float %2146, %1637
  %2149 = fmul fast float %2146, %1638
  %2150 = fmul fast float %1655, %1634
  %2151 = fsub fast float 1.000000e+00, %2150
  %2152 = fmul fast float %1634, %1634
  %2153 = fsub fast float 1.000000e+00, %2152
  %2154 = fmul fast float %2153, 0x3FB45F3060000000
  %2155 = fmul fast float %2151, %2151
  %2156 = fdiv fast float 1.000000e+00, %2155
  %2157 = fmul fast float %2154, %2156
  %2158 = fmul fast float %2157, %1631
  %2159 = fmul fast float %2157, %1632
  %2160 = fmul fast float %2157, %1633
  %2161 = fadd fast float %2158, %2147
  %2162 = fadd fast float %2159, %2148
  %2163 = fadd fast float %2160, %2149
  %2164 = fsub fast float 1.000000e+00, %2141
  %2165 = fsub fast float 1.000000e+00, %2142
  %2166 = fsub fast float 1.000000e+00, %2143
  %2167 = fmul fast float %2161, %2164
  %2168 = fmul fast float %2162, %2165
  %2169 = fmul fast float %2163, %2166
  br label %2170

; <label>:2170                                    ; preds = %2131, %2082
  %2171 = phi float [ %2108, %2082 ], [ %2167, %2131 ]
  %2172 = phi float [ %2109, %2082 ], [ %2168, %2131 ]
  %2173 = phi float [ %2110, %2082 ], [ %2169, %2131 ]
  %2174 = phi float [ %2097, %2082 ], [ %2141, %2131 ]
  %2175 = phi float [ %2097, %2082 ], [ %2142, %2131 ]
  %2176 = phi float [ %2097, %2082 ], [ %2143, %2131 ]
  br i1 %1663, label %2177, label %2375, !dx.controlflow.hints !114

; <label>:2177                                    ; preds = %2170
  %2178 = extractvalue %dx.types.CBufRet.f32 %2076, 0
  %2179 = fmul fast float %2178, %2078
  %2180 = fsub fast float %2073, %2171
  %2181 = fsub fast float %2074, %2172
  %2182 = fsub fast float %2075, %2173
  %2183 = fmul fast float %2179, %2180
  %2184 = fmul fast float %2179, %2181
  %2185 = fmul fast float %2179, %2182
  %2186 = fadd fast float %2183, %2171
  %2187 = fadd fast float %2184, %2172
  %2188 = fadd fast float %2185, %2173
  %2189 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2174)  ; FMax(a,b)
  %2190 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2175)  ; FMax(a,b)
  %2191 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2176)  ; FMax(a,b)
  %2192 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2072)  ; FMax(a,b)
  %2193 = call float @dx.op.binary.f32(i32 35, float %2071, float %2081)  ; FMax(a,b)
  %2194 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2193)  ; FMax(a,b)
  %2195 = fdiv fast float %2071, %2194
  %2196 = call float @dx.op.unary.f32(i32 7, float %2195)  ; Saturate(value)
  %2197 = fdiv fast float %2081, %2194
  %2198 = call float @dx.op.unary.f32(i32 7, float %2197)  ; Saturate(value)
  %2199 = fcmp fast une float %2192, 1.000000e+00
  br i1 %2199, label %2200, label %2213, !dx.controlflow.hints !115

; <label>:2200                                    ; preds = %2177
  %2201 = call float @dx.op.unary.f32(i32 23, float %2192)  ; Log(value)
  %2202 = fmul fast float %2201, 0x3FE62E4300000000
  %2203 = fmul fast float %2073, %2202
  %2204 = fsub fast float -0.000000e+00, %2203
  %2205 = fmul fast float %2074, %2202
  %2206 = fsub fast float -0.000000e+00, %2205
  %2207 = fmul fast float %2075, %2202
  %2208 = fsub fast float -0.000000e+00, %2207
  %2209 = fsub fast float 1.000000e+00, %2192
  %2210 = fdiv fast float %2204, %2209
  %2211 = fdiv fast float %2206, %2209
  %2212 = fdiv fast float %2208, %2209
  br label %2213

; <label>:2213                                    ; preds = %2200, %2177
  %2214 = phi float [ %2210, %2200 ], [ %2073, %2177 ]
  %2215 = phi float [ %2211, %2200 ], [ %2074, %2177 ]
  %2216 = phi float [ %2212, %2200 ], [ %2075, %2177 ]
  %2217 = phi float [ %2202, %2200 ], [ 0.000000e+00, %2177 ]
  %2218 = fcmp fast une float %2189, 1.000000e+00
  br i1 %2218, label %2219, label %2226, !dx.controlflow.hints !116

; <label>:2219                                    ; preds = %2213
  %2220 = call float @dx.op.unary.f32(i32 23, float %2189)  ; Log(value)
  %2221 = fmul fast float %2220, 0x3FE62E4300000000
  %2222 = fmul fast float %2186, %2221
  %2223 = fsub fast float -0.000000e+00, %2222
  %2224 = fsub fast float 1.000000e+00, %2189
  %2225 = fdiv fast float %2223, %2224
  br label %2226

; <label>:2226                                    ; preds = %2219, %2213
  %2227 = phi float [ %2225, %2219 ], [ %2186, %2213 ]
  %2228 = phi float [ %2221, %2219 ], [ 0.000000e+00, %2213 ]
  %2229 = fcmp fast une float %2190, 1.000000e+00
  br i1 %2229, label %2230, label %2237, !dx.controlflow.hints !116

; <label>:2230                                    ; preds = %2226
  %2231 = call float @dx.op.unary.f32(i32 23, float %2190)  ; Log(value)
  %2232 = fmul fast float %2231, 0x3FE62E4300000000
  %2233 = fmul fast float %2187, %2232
  %2234 = fsub fast float -0.000000e+00, %2233
  %2235 = fsub fast float 1.000000e+00, %2190
  %2236 = fdiv fast float %2234, %2235
  br label %2237

; <label>:2237                                    ; preds = %2230, %2226
  %2238 = phi float [ %2236, %2230 ], [ %2187, %2226 ]
  %2239 = phi float [ %2232, %2230 ], [ 0.000000e+00, %2226 ]
  %2240 = fcmp fast une float %2191, 1.000000e+00
  br i1 %2240, label %2241, label %2248, !dx.controlflow.hints !116

; <label>:2241                                    ; preds = %2237
  %2242 = call float @dx.op.unary.f32(i32 23, float %2191)  ; Log(value)
  %2243 = fmul fast float %2242, 0x3FE62E4300000000
  %2244 = fmul fast float %2188, %2243
  %2245 = fsub fast float -0.000000e+00, %2244
  %2246 = fsub fast float 1.000000e+00, %2191
  %2247 = fdiv fast float %2245, %2246
  br label %2248

; <label>:2248                                    ; preds = %2241, %2237
  %2249 = phi float [ %2247, %2241 ], [ %2188, %2237 ]
  %2250 = phi float [ %2243, %2241 ], [ 0.000000e+00, %2237 ]
  %2251 = fmul fast float %2214, %2198
  %2252 = fmul fast float %2215, %2198
  %2253 = fmul fast float %2216, %2198
  %2254 = fmul fast float %2217, %2198
  %2255 = fmul fast float %2227, %2196
  %2256 = fmul fast float %2238, %2196
  %2257 = fmul fast float %2249, %2196
  %2258 = fmul fast float %2228, %2196
  %2259 = fmul fast float %2239, %2196
  %2260 = fmul fast float %2250, %2196
  %2261 = fadd fast float %2255, %2251
  %2262 = fadd fast float %2256, %2252
  %2263 = fadd fast float %2257, %2253
  %2264 = fadd fast float %2258, %2254
  %2265 = fadd fast float %2259, %2254
  %2266 = fadd fast float %2260, %2254
  %2267 = fcmp fast une float %2264, 0.000000e+00
  br i1 %2267, label %2268, label %2275, !dx.controlflow.hints !117

; <label>:2268                                    ; preds = %2248
  %2269 = fmul fast float %2264, 0x3FF7154760000000
  %2270 = call float @dx.op.unary.f32(i32 21, float %2269)  ; Exp(value)
  %2271 = fsub fast float 1.000000e+00, %2270
  %2272 = fmul fast float %2261, %2271
  %2273 = fsub fast float -0.000000e+00, %2272
  %2274 = fdiv fast float %2273, %2264
  br label %2275

; <label>:2275                                    ; preds = %2268, %2248
  %2276 = phi float [ %2270, %2268 ], [ 1.000000e+00, %2248 ]
  %2277 = phi float [ %2274, %2268 ], [ %2261, %2248 ]
  %2278 = fcmp fast une float %2265, 0.000000e+00
  br i1 %2278, label %2279, label %2286, !dx.controlflow.hints !117

; <label>:2279                                    ; preds = %2275
  %2280 = fmul fast float %2265, 0x3FF7154760000000
  %2281 = call float @dx.op.unary.f32(i32 21, float %2280)  ; Exp(value)
  %2282 = fsub fast float 1.000000e+00, %2281
  %2283 = fmul fast float %2262, %2282
  %2284 = fsub fast float -0.000000e+00, %2283
  %2285 = fdiv fast float %2284, %2265
  br label %2286

; <label>:2286                                    ; preds = %2279, %2275
  %2287 = phi float [ %2281, %2279 ], [ 1.000000e+00, %2275 ]
  %2288 = phi float [ %2285, %2279 ], [ %2262, %2275 ]
  %2289 = fcmp fast une float %2266, 0.000000e+00
  br i1 %2289, label %2290, label %2297, !dx.controlflow.hints !117

; <label>:2290                                    ; preds = %2286
  %2291 = fmul fast float %2266, 0x3FF7154760000000
  %2292 = call float @dx.op.unary.f32(i32 21, float %2291)  ; Exp(value)
  %2293 = fsub fast float 1.000000e+00, %2292
  %2294 = fmul fast float %2263, %2293
  %2295 = fsub fast float -0.000000e+00, %2294
  %2296 = fdiv fast float %2295, %2266
  br label %2297

; <label>:2297                                    ; preds = %2290, %2286
  %2298 = phi float [ %2292, %2290 ], [ 1.000000e+00, %2286 ]
  %2299 = phi float [ %2296, %2290 ], [ %2263, %2286 ]
  %2300 = fcmp fast ogt float %2196, %2198
  br i1 %2300, label %2301, label %2321, !dx.controlflow.hints !118

; <label>:2301                                    ; preds = %2297
  %2302 = fsub fast float 1.000000e+00, %2198
  %2303 = fmul fast float %2214, %2302
  %2304 = fmul fast float %2215, %2302
  %2305 = fmul fast float %2216, %2302
  %2306 = fmul fast float %2217, %2302
  %2307 = fcmp fast une float %2306, 0.000000e+00
  br i1 %2307, label %2308, label %2359, !dx.controlflow.hints !119

; <label>:2308                                    ; preds = %2301
  %2309 = fmul fast float %2306, 0x3FF7154760000000
  %2310 = call float @dx.op.unary.f32(i32 21, float %2309)  ; Exp(value)
  %2311 = fsub fast float 1.000000e+00, %2310
  %2312 = fmul fast float %2303, %2311
  %2313 = fsub fast float -0.000000e+00, %2312
  %2314 = fmul fast float %2304, %2311
  %2315 = fsub fast float -0.000000e+00, %2314
  %2316 = fmul fast float %2305, %2311
  %2317 = fsub fast float -0.000000e+00, %2316
  %2318 = fdiv fast float %2313, %2306
  %2319 = fdiv fast float %2315, %2306
  %2320 = fdiv fast float %2317, %2306
  br label %2359

; <label>:2321                                    ; preds = %2297
  %2322 = fsub fast float 1.000000e+00, %2196
  %2323 = fmul fast float %2227, %2322
  %2324 = fmul fast float %2238, %2322
  %2325 = fmul fast float %2249, %2322
  %2326 = fmul fast float %2228, %2322
  %2327 = fmul fast float %2239, %2322
  %2328 = fmul fast float %2250, %2322
  %2329 = fcmp fast une float %2326, 0.000000e+00
  br i1 %2329, label %2330, label %2337, !dx.controlflow.hints !117

; <label>:2330                                    ; preds = %2321
  %2331 = fmul fast float %2326, 0x3FF7154760000000
  %2332 = call float @dx.op.unary.f32(i32 21, float %2331)  ; Exp(value)
  %2333 = fsub fast float 1.000000e+00, %2332
  %2334 = fmul fast float %2323, %2333
  %2335 = fsub fast float -0.000000e+00, %2334
  %2336 = fdiv fast float %2335, %2326
  br label %2337

; <label>:2337                                    ; preds = %2330, %2321
  %2338 = phi float [ %2336, %2330 ], [ %2323, %2321 ]
  %2339 = phi float [ %2332, %2330 ], [ 1.000000e+00, %2321 ]
  %2340 = fcmp fast une float %2327, 0.000000e+00
  br i1 %2340, label %2341, label %2348, !dx.controlflow.hints !117

; <label>:2341                                    ; preds = %2337
  %2342 = fmul fast float %2327, 0x3FF7154760000000
  %2343 = call float @dx.op.unary.f32(i32 21, float %2342)  ; Exp(value)
  %2344 = fsub fast float 1.000000e+00, %2343
  %2345 = fmul fast float %2324, %2344
  %2346 = fsub fast float -0.000000e+00, %2345
  %2347 = fdiv fast float %2346, %2327
  br label %2348

; <label>:2348                                    ; preds = %2341, %2337
  %2349 = phi float [ %2347, %2341 ], [ %2324, %2337 ]
  %2350 = phi float [ %2343, %2341 ], [ 1.000000e+00, %2337 ]
  %2351 = fcmp fast une float %2328, 0.000000e+00
  br i1 %2351, label %2352, label %2359, !dx.controlflow.hints !117

; <label>:2352                                    ; preds = %2348
  %2353 = fmul fast float %2328, 0x3FF7154760000000
  %2354 = call float @dx.op.unary.f32(i32 21, float %2353)  ; Exp(value)
  %2355 = fsub fast float 1.000000e+00, %2354
  %2356 = fmul fast float %2325, %2355
  %2357 = fsub fast float -0.000000e+00, %2356
  %2358 = fdiv fast float %2357, %2328
  br label %2359

; <label>:2359                                    ; preds = %2352, %2348, %2308, %2301
  %2360 = phi float [ %2358, %2352 ], [ %2320, %2308 ], [ %2305, %2301 ], [ %2325, %2348 ]
  %2361 = phi float [ %2349, %2352 ], [ %2319, %2308 ], [ %2304, %2301 ], [ %2349, %2348 ]
  %2362 = phi float [ %2338, %2352 ], [ %2318, %2308 ], [ %2303, %2301 ], [ %2338, %2348 ]
  %2363 = phi float [ %2354, %2352 ], [ %2310, %2308 ], [ 1.000000e+00, %2301 ], [ 1.000000e+00, %2348 ]
  %2364 = phi float [ %2350, %2352 ], [ %2310, %2308 ], [ 1.000000e+00, %2301 ], [ %2350, %2348 ]
  %2365 = phi float [ %2339, %2352 ], [ %2310, %2308 ], [ 1.000000e+00, %2301 ], [ %2339, %2348 ]
  %2366 = fmul fast float %2365, %2277
  %2367 = fmul fast float %2364, %2288
  %2368 = fmul fast float %2363, %2299
  %2369 = fadd fast float %2366, %2362
  %2370 = fadd fast float %2367, %2361
  %2371 = fadd fast float %2368, %2360
  %2372 = fmul fast float %2365, %2276
  %2373 = fmul fast float %2364, %2287
  %2374 = fmul fast float %2363, %2298
  br label %2375

; <label>:2375                                    ; preds = %2359, %2170
  %2376 = phi float [ %2176, %2170 ], [ %2374, %2359 ]
  %2377 = phi float [ %2175, %2170 ], [ %2373, %2359 ]
  %2378 = phi float [ %2174, %2170 ], [ %2372, %2359 ]
  %2379 = phi float [ %2173, %2170 ], [ %2371, %2359 ]
  %2380 = phi float [ %2172, %2170 ], [ %2370, %2359 ]
  %2381 = phi float [ %2171, %2170 ], [ %2369, %2359 ]
  %2382 = fmul fast float %2378, %1519
  %2383 = fmul fast float %2377, %1520
  %2384 = fmul fast float %2376, %1521
  %2385 = fsub fast float 1.000000e+00, %1582
  %2386 = fmul fast float %2381, %2385
  %2387 = fmul fast float %2380, %2385
  %2388 = fmul fast float %2379, %2385
  %2389 = fadd fast float %2386, %2382
  %2390 = fadd fast float %2387, %2383
  %2391 = fadd fast float %2388, %2384
  %2392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2393 = extractvalue %dx.types.CBufRet.f32 %2392, 2
  %2394 = fmul fast float %2393, %1592
  %2395 = call float @dx.op.unary.f32(i32 7, float %2394)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %23, i32 %24, i32 undef, float %1582, float %1582, float %1582, float %1582, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2397 = extractvalue %dx.types.CBufRet.f32 %2396, 0
  %2398 = fmul fast float %2397, %2389
  %2399 = fmul fast float %2397, %2390
  %2400 = fmul fast float %2397, %2391
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %23, i32 %24, i32 undef, float %2398, float %2399, float %2400, float %2398, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %23, i32 %24, i32 undef, float %2395, float %2395, float %2395, float %2395, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!34 = !{void ()* @cs_fog_raymarching_clouds_particles, !"cs_fog_raymarching_clouds_particles", null, !4, !35}
!35 = !{i32 0, i64 272, i32 4, !36}
!36 = !{i32 8, i32 8, i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
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
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = !{!75, !75, i64 0}
!75 = !{!"float", !76, i64 0}
!76 = !{!"omnipotent char", !77, i64 0}
!77 = !{!"Simple C/C++ TBAA"}
!78 = !{!79, !81, !83, !84, !86, !87, !88}
!79 = distinct !{!79, !80, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!80 = distinct !{!80, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!81 = distinct !{!81, !82, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!82 = distinct !{!82, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!83 = distinct !{!83, !82, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!84 = distinct !{!84, !85, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!85 = distinct !{!85, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!86 = distinct !{!86, !85, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!87 = distinct !{!87, !85, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!88 = distinct !{!88, !85, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = !{!91}
!91 = distinct !{!91, !92, !"\01?sort@@YAXAIAM00@Z: %c"}
!92 = distinct !{!92, !"\01?sort@@YAXAIAM00@Z"}
!93 = !{!94, !95, !79, !81, !83, !84, !86, !87, !88}
!94 = distinct !{!94, !92, !"\01?sort@@YAXAIAM00@Z: %a"}
!95 = distinct !{!95, !92, !"\01?sort@@YAXAIAM00@Z: %b"}
!96 = !{!95}
!97 = !{!94, !91, !79, !81, !83, !84, !86, !87, !88}
!98 = !{!94}
!99 = !{!95, !91, !79, !81, !83, !84, !86, !87, !88}
!100 = !{!101}
!101 = distinct !{!101, !102, !"\01?sort@@YAXAIAM00@Z: %c"}
!102 = distinct !{!102, !"\01?sort@@YAXAIAM00@Z"}
!103 = !{!104, !105, !79, !81, !83, !84, !86, !87, !88}
!104 = distinct !{!104, !102, !"\01?sort@@YAXAIAM00@Z: %a"}
!105 = distinct !{!105, !102, !"\01?sort@@YAXAIAM00@Z: %b"}
!106 = !{!105}
!107 = !{!104, !101, !79, !81, !83, !84, !86, !87, !88}
!108 = !{!104}
!109 = !{!105, !101, !79, !81, !83, !84, !86, !87, !88}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 2}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}

