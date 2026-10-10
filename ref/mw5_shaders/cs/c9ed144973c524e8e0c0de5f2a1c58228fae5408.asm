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
; shader hash: ad4ff7eed192ce8d0ba6a56c0b3d10e7
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   sampler      NA          NA      S0             s2     1
;                                   sampler      NA          NA      S1             s3     1
;                                   sampler      NA          NA      S2             s4     1
;                                   sampler      NA          NA      S3             s5     1
;                                   texture     f32          3d      T0             t3     1
;                                   texture     f32          3d      T1             t1     1
;                                   texture     f32          3d      T2             t2     1
;                                   texture     f32          2d      T3             t8     1
;                                   texture     f32          2d      T4             t9     1
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
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

define void @cs_fog_raymarching_air_clouds() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %21 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %22 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %23 = alloca [3 x float], align 4
  %24 = alloca [3 x float], align 4
  %25 = add i32 %21, %20
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 1
  %28 = add i32 %25, %27
  %29 = lshr i32 %28, 1
  %30 = and i32 %29, 1
  %31 = and i32 %28, 1
  %32 = xor i32 %30, %31
  %33 = shl i32 %20, 1
  %34 = shl i32 %21, 1
  %35 = or i32 %32, %33
  %36 = or i32 %30, %34
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = extractvalue %dx.types.ResRet.i32 %39, 1
  %42 = extractvalue %dx.types.ResRet.i32 %39, 2
  %43 = extractvalue %dx.types.ResRet.i32 %39, 3
  %44 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %45 = extractvalue %dx.types.ResRet.i32 %44, 0
  %46 = extractvalue %dx.types.ResRet.i32 %44, 1
  %47 = extractvalue %dx.types.ResRet.i32 %44, 2
  %48 = extractvalue %dx.types.ResRet.i32 %44, 3
  %49 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.i32 %49, 0
  %51 = extractvalue %dx.types.ResRet.i32 %49, 1
  %52 = extractvalue %dx.types.ResRet.i32 %49, 2
  %53 = extractvalue %dx.types.ResRet.i32 %49, 3
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %56 = fmul fast float %55, %55
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 0
  %59 = extractvalue %dx.types.CBufRet.f32 %57, 1
  %60 = extractvalue %dx.types.CBufRet.f32 %57, 2
  %61 = fmul fast float %60, 0x3FF17B1420000000
  %62 = icmp eq i32 %22, 0
  br i1 %62, label %63, label %204, !dx.controlflow.hints !33

; <label>:63                                      ; preds = %0
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 3
  %68 = extractvalue %dx.types.ResRet.i32 %37, 1
  %69 = and i32 %68, 65535
  %70 = call float @dx.op.legacyF16ToF32(i32 131, i32 %69)  ; LegacyF16ToF32(value)
  %71 = lshr i32 %38, 16
  %72 = call float @dx.op.legacyF16ToF32(i32 131, i32 %71)  ; LegacyF16ToF32(value)
  %73 = and i32 %38, 65535
  %74 = call float @dx.op.legacyF16ToF32(i32 131, i32 %73)  ; LegacyF16ToF32(value)
  %75 = lshr i32 %43, 16
  %76 = call float @dx.op.legacyF16ToF32(i32 131, i32 %75)  ; LegacyF16ToF32(value)
  %77 = and i32 %43, 65535
  %78 = call float @dx.op.legacyF16ToF32(i32 131, i32 %77)  ; LegacyF16ToF32(value)
  %79 = lshr i32 %42, 16
  %80 = call float @dx.op.legacyF16ToF32(i32 131, i32 %79)  ; LegacyF16ToF32(value)
  %81 = and i32 %42, 65535
  %82 = call float @dx.op.legacyF16ToF32(i32 131, i32 %81)  ; LegacyF16ToF32(value)
  %83 = lshr i32 %41, 16
  %84 = call float @dx.op.legacyF16ToF32(i32 131, i32 %83)  ; LegacyF16ToF32(value)
  %85 = lshr i32 %40, 16
  %86 = call float @dx.op.legacyF16ToF32(i32 131, i32 %85)  ; LegacyF16ToF32(value)
  %87 = and i32 %40, 65535
  %88 = call float @dx.op.legacyF16ToF32(i32 131, i32 %87)  ; LegacyF16ToF32(value)
  %89 = lshr i32 %48, 16
  %90 = call float @dx.op.legacyF16ToF32(i32 131, i32 %89)  ; LegacyF16ToF32(value)
  %91 = and i32 %48, 65535
  %92 = call float @dx.op.legacyF16ToF32(i32 131, i32 %91)  ; LegacyF16ToF32(value)
  %93 = lshr i32 %47, 16
  %94 = call float @dx.op.legacyF16ToF32(i32 131, i32 %93)  ; LegacyF16ToF32(value)
  %95 = and i32 %47, 65535
  %96 = call float @dx.op.legacyF16ToF32(i32 131, i32 %95)  ; LegacyF16ToF32(value)
  %97 = lshr i32 %46, 16
  %98 = call float @dx.op.legacyF16ToF32(i32 131, i32 %97)  ; LegacyF16ToF32(value)
  %99 = and i32 %46, 65535
  %100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %99)  ; LegacyF16ToF32(value)
  %101 = and i32 %45, 65535
  %102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %101)  ; LegacyF16ToF32(value)
  %103 = lshr i32 %53, 16
  %104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %103)  ; LegacyF16ToF32(value)
  %105 = and i32 %53, 65535
  %106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %105)  ; LegacyF16ToF32(value)
  %107 = lshr i32 %52, 16
  %108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %107)  ; LegacyF16ToF32(value)
  %109 = and i32 %52, 65535
  %110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %109)  ; LegacyF16ToF32(value)
  %111 = lshr i32 %51, 16
  %112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %111)  ; LegacyF16ToF32(value)
  %113 = and i32 %51, 65535
  %114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %113)  ; LegacyF16ToF32(value)
  %115 = lshr i32 %50, 16
  %116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %115)  ; LegacyF16ToF32(value)
  %117 = and i32 %41, 65535
  %118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %117)  ; LegacyF16ToF32(value)
  %119 = lshr i32 %45, 16
  %120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %119)  ; LegacyF16ToF32(value)
  %121 = and i32 %50, 65535
  %122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %121)  ; LegacyF16ToF32(value)
  %123 = fmul fast float %118, 0x3FD20DD760000000
  %124 = fmul fast float %60, %55
  %125 = fmul fast float %124, %82
  %126 = fmul fast float %60, %60
  %127 = fmul fast float %126, 0x3FEE471020000000
  %128 = fadd fast float %127, 0xBFD42F6020000000
  %129 = fmul fast float %74, %128
  %130 = fmul fast float %80, %58
  %131 = fmul fast float %84, %59
  %132 = fmul fast float %58, %56
  %133 = fmul fast float %132, %61
  %134 = fmul fast float %133, %72
  %135 = fsub fast float -0.000000e+00, %134
  %136 = fmul fast float %59, %56
  %137 = fmul fast float %136, %61
  %138 = fmul fast float %137, %76
  %139 = fmul fast float %58, %58
  %140 = fmul fast float %59, %59
  %141 = fsub fast float %139, %140
  %142 = fmul fast float %141, 0x3FE17B1420000000
  %143 = fmul fast float %142, %70
  %144 = fmul fast float %59, 0x3FF17B1420000000
  %145 = fmul fast float %144, %58
  %146 = fmul fast float %145, %78
  %147 = fadd fast float %131, %130
  %148 = fmul fast float %147, %55
  %149 = fsub fast float %148, %125
  %150 = fmul fast float %149, 0x3FDF454380000000
  %151 = fadd fast float %129, %143
  %152 = fadd fast float %151, %146
  %153 = fmul fast float %152, %56
  %154 = fsub fast float %135, %138
  %155 = fadd fast float %154, %123
  %156 = fadd fast float %155, %150
  %157 = fadd fast float %156, %153
  %158 = fmul fast float %65, %67
  %159 = fmul fast float %158, %157
  %160 = fmul fast float %120, 0x3FD20DD760000000
  %161 = fmul fast float %124, %98
  %162 = fmul fast float %90, %128
  %163 = fmul fast float %96, %58
  %164 = fmul fast float %100, %59
  %165 = fmul fast float %133, %88
  %166 = fsub fast float -0.000000e+00, %165
  %167 = fmul fast float %137, %92
  %168 = fmul fast float %142, %86
  %169 = fmul fast float %145, %94
  %170 = fadd fast float %164, %163
  %171 = fmul fast float %170, %55
  %172 = fsub fast float %171, %161
  %173 = fmul fast float %172, 0x3FDF454380000000
  %174 = fadd fast float %162, %168
  %175 = fadd fast float %174, %169
  %176 = fmul fast float %175, %56
  %177 = fsub fast float %166, %167
  %178 = fadd fast float %177, %160
  %179 = fadd fast float %178, %173
  %180 = fadd fast float %179, %176
  %181 = fmul fast float %158, %180
  %182 = fmul fast float %122, 0x3FD20DD760000000
  %183 = fmul fast float %124, %114
  %184 = fmul fast float %106, %128
  %185 = fmul fast float %112, %58
  %186 = fmul fast float %116, %59
  %187 = fmul fast float %133, %104
  %188 = fsub fast float -0.000000e+00, %187
  %189 = fmul fast float %137, %108
  %190 = fmul fast float %142, %102
  %191 = fmul fast float %145, %110
  %192 = fadd fast float %186, %185
  %193 = fmul fast float %192, %55
  %194 = fsub fast float %193, %183
  %195 = fmul fast float %194, 0x3FDF454380000000
  %196 = fadd fast float %184, %190
  %197 = fadd fast float %196, %191
  %198 = fmul fast float %197, %56
  %199 = fsub fast float %188, %189
  %200 = fadd fast float %199, %182
  %201 = fadd fast float %200, %195
  %202 = fadd fast float %201, %198
  %203 = fmul fast float %158, %202
  store float %203, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  store float %181, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  store float %159, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  br label %204

; <label>:204                                     ; preds = %63, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %205 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  %206 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  %207 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  %208 = uitofp i32 %35 to float
  %209 = uitofp i32 %36 to float
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %212 = fmul fast float %211, 0x3FE3C6EF40000000
  %213 = frem fast float %208, 2.560000e+02
  %214 = frem fast float %209, 2.560000e+02
  %215 = fptoui float %213 to i32
  %216 = fptoui float %214 to i32
  %217 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %215, i32 %216, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %218 = extractvalue %dx.types.ResRet.f32 %217, 1
  %219 = extractvalue %dx.types.ResRet.f32 %217, 2
  %220 = extractvalue %dx.types.ResRet.f32 %217, 3
  %221 = fadd fast float %218, %212
  %222 = fadd fast float %219, %212
  %223 = fadd fast float %220, %212
  %224 = call float @dx.op.unary.f32(i32 22, float %221)  ; Frc(value)
  %225 = call float @dx.op.unary.f32(i32 22, float %222)  ; Frc(value)
  %226 = call float @dx.op.unary.f32(i32 22, float %223)  ; Frc(value)
  %227 = fadd fast float %225, %208
  %228 = fadd fast float %226, %209
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %231 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %232 = fmul fast float %230, %227
  %233 = fmul fast float %231, %228
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 0
  %236 = fsub fast float -0.000000e+00, %235
  %237 = extractvalue %dx.types.CBufRet.f32 %234, 1
  %238 = fsub fast float -0.000000e+00, %237
  %239 = extractvalue %dx.types.CBufRet.f32 %234, 2
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 1
  %242 = fmul fast float %232, 2.000000e+00
  %243 = fmul fast float %233, 2.000000e+00
  %244 = fsub fast float 1.000000e+00, %242
  %245 = fsub fast float 1.000000e+00, %243
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 0
  %248 = extractvalue %dx.types.CBufRet.f32 %246, 1
  %249 = extractvalue %dx.types.CBufRet.f32 %246, 2
  %250 = fmul fast float %247, %244
  %251 = fmul fast float %248, %244
  %252 = fmul fast float %249, %244
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 0
  %255 = extractvalue %dx.types.CBufRet.f32 %253, 1
  %256 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %257 = fmul fast float %254, %245
  %258 = fmul fast float %255, %245
  %259 = fmul fast float %256, %245
  %260 = fadd fast float %257, %250
  %261 = fadd fast float %258, %251
  %262 = fadd fast float %259, %252
  %263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %283 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %35, i32 %36, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = fcmp fast ogt float %284, -1.000000e+00
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 1
  %288 = select i1 %285, float %287, float 1.000000e+00
  %289 = fadd fast float %284, 1.000000e+00
  %290 = fmul fast float %288, %289
  %291 = call float @dx.op.unary.f32(i32 6, float %290)  ; FAbs(value)
  %292 = fdiv fast float 1.000000e+00, %241
  %293 = fmul fast float %292, %278
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 1
  %296 = fmul fast float %295, %293
  %297 = fmul fast float %293, %291
  %298 = extractvalue %dx.types.CBufRet.f32 %286, 3
  %299 = fcmp fast oge float %291, %298
  %300 = call float @dx.op.binary.f32(i32 36, float %297, float %296)  ; FMin(a,b)
  %301 = select i1 %299, float %296, float %300
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 3
  %304 = fsub fast float %303, %239
  %305 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %236, float %238, float %304)  ; Dot3(ax,ay,az,bx,by,bz)
  %306 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %307 = fdiv fast float 1.000000e+00, %306
  %308 = fmul fast float %307, %305
  %309 = fcmp fast olt float %308, 0.000000e+00
  %310 = fcmp fast ogt float %282, 0.000000e+00
  %311 = and i1 %310, %309
  br i1 %311, label %316, label %312, !dx.controlflow.hints !34

; <label>:312                                     ; preds = %204
  %313 = fcmp fast olt float %282, 0.000000e+00
  br i1 %313, label %314, label %316, !dx.controlflow.hints !35

; <label>:314                                     ; preds = %312
  %315 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %308)  ; FMax(a,b)
  br label %316

; <label>:316                                     ; preds = %314, %312, %204
  %317 = phi float [ 0.000000e+00, %204 ], [ %315, %314 ], [ 0.000000e+00, %312 ]
  %318 = phi float [ 0.000000e+00, %204 ], [ 0x47EFFFFFE0000000, %314 ], [ %308, %312 ]
  %319 = fcmp fast oeq float %318, 0.000000e+00
  br i1 %319, label %323, label %320, !dx.controlflow.hints !36

; <label>:320                                     ; preds = %316
  %321 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %317)  ; FMin(a,b)
  %322 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %318)  ; FMax(a,b)
  br label %323

; <label>:323                                     ; preds = %320, %316
  %324 = phi i32 [ 1, %320 ], [ 0, %316 ]
  %325 = phi float [ %322, %320 ], [ -1.000000e+00, %316 ]
  %326 = phi float [ %321, %320 ], [ 0x47EFFFFFE0000000, %316 ]
  %327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.i32 %327, 3
  %329 = icmp eq i32 %328, 0
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 2
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 2
  %334 = fsub fast float %331, %239
  %335 = fadd fast float %334, %333
  br i1 %329, label %343, label %336, !dx.controlflow.hints !37

; <label>:336                                     ; preds = %323
  %337 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %236, float %238, float %335)  ; Dot3(ax,ay,az,bx,by,bz)
  %338 = fmul fast float %307, %337
  %339 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %236, float %238, float %334)  ; Dot3(ax,ay,az,bx,by,bz)
  %340 = fmul fast float %307, %339
  %341 = call float @dx.op.binary.f32(i32 36, float %338, float %340)  ; FMin(a,b)
  %342 = call float @dx.op.binary.f32(i32 35, float %338, float %340)  ; FMax(a,b)
  br label %376

; <label>:343                                     ; preds = %323
  %344 = fdiv fast float 1.000000e+00, %280
  %345 = fdiv fast float 1.000000e+00, %281
  %346 = fdiv fast float 1.000000e+00, %282
  %347 = extractvalue %dx.types.CBufRet.f32 %330, 0
  %348 = extractvalue %dx.types.CBufRet.f32 %330, 1
  %349 = extractvalue %dx.types.CBufRet.f32 %332, 0
  %350 = extractvalue %dx.types.CBufRet.f32 %332, 1
  %351 = fsub fast float %347, %235
  %352 = fmul fast float %351, %344
  %353 = fadd fast float %351, %349
  %354 = fmul fast float %353, %344
  %355 = call float @dx.op.binary.f32(i32 36, float %352, float %354)  ; FMin(a,b)
  %356 = call float @dx.op.binary.f32(i32 35, float %352, float %354)  ; FMax(a,b)
  %357 = fsub fast float %348, %237
  %358 = fmul fast float %357, %345
  %359 = fadd fast float %357, %350
  %360 = fmul fast float %359, %345
  %361 = call float @dx.op.binary.f32(i32 36, float %358, float %360)  ; FMin(a,b)
  %362 = call float @dx.op.binary.f32(i32 35, float %355, float %361)  ; FMax(a,b)
  %363 = call float @dx.op.binary.f32(i32 35, float %358, float %360)  ; FMax(a,b)
  %364 = call float @dx.op.binary.f32(i32 36, float %356, float %363)  ; FMin(a,b)
  %365 = fmul fast float %334, %346
  %366 = fmul fast float %335, %346
  %367 = call float @dx.op.binary.f32(i32 36, float %365, float %366)  ; FMin(a,b)
  %368 = call float @dx.op.binary.f32(i32 35, float %362, float %367)  ; FMax(a,b)
  %369 = call float @dx.op.binary.f32(i32 35, float %365, float %366)  ; FMax(a,b)
  %370 = call float @dx.op.binary.f32(i32 36, float %364, float %369)  ; FMin(a,b)
  %371 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %368)  ; FMax(a,b)
  %372 = fcmp fast ult float %370, %371
  br i1 %372, label %376, label %373, !dx.controlflow.hints !38

; <label>:373                                     ; preds = %343
  %374 = call float @dx.op.binary.f32(i32 36, float %368, float %370)  ; FMin(a,b)
  %375 = call float @dx.op.binary.f32(i32 35, float %368, float %370)  ; FMax(a,b)
  br label %376

; <label>:376                                     ; preds = %373, %343, %336
  %377 = phi float [ %341, %336 ], [ %374, %373 ], [ 0.000000e+00, %343 ]
  %378 = phi float [ %342, %336 ], [ %375, %373 ], [ 0.000000e+00, %343 ]
  %379 = fcmp fast oeq float %378, 0.000000e+00
  br i1 %379, label %383, label %380, !dx.controlflow.hints !39

; <label>:380                                     ; preds = %376
  %381 = call float @dx.op.binary.f32(i32 36, float %326, float %377)  ; FMin(a,b)
  %382 = call float @dx.op.binary.f32(i32 35, float %325, float %378)  ; FMax(a,b)
  br label %383

; <label>:383                                     ; preds = %380, %376
  %384 = phi i32 [ 1, %380 ], [ 0, %376 ]
  %385 = phi float [ %382, %380 ], [ %325, %376 ]
  %386 = phi float [ %381, %380 ], [ %326, %376 ]
  %387 = call float @dx.op.binary.f32(i32 36, float %301, float %385)  ; FMin(a,b)
  %388 = call float @dx.op.binary.f32(i32 35, float %278, float %386)  ; FMax(a,b)
  %389 = extractvalue %dx.types.CBufRet.f32 %302, 0
  %390 = fmul fast float %224, 2.000000e+00
  %391 = fadd fast float %390, -1.000000e+00
  %392 = fmul fast float %389, %391
  %393 = fadd fast float %392, %388
  %394 = fcmp fast olt float %393, %387
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 2
  %397 = fcmp fast olt float %396, 1.000000e+00
  %398 = and i1 %397, %394
  br i1 %398, label %399, label %1212

; <label>:399                                     ; preds = %383
  %400 = fmul fast float %393, %282
  %401 = fadd fast float %400, %239
  %402 = fmul fast float %393, %281
  %403 = fadd fast float %402, %237
  %404 = fmul fast float %393, %280
  %405 = fadd fast float %404, %235
  br label %406

; <label>:406                                     ; preds = %1188, %399
  %407 = phi float [ %1190, %1188 ], [ 0.000000e+00, %399 ]
  %408 = phi float [ %1191, %1188 ], [ 1.000000e+00, %399 ]
  %409 = phi float [ %1192, %1188 ], [ 0.000000e+00, %399 ]
  %410 = phi float [ %1193, %1188 ], [ 0.000000e+00, %399 ]
  %411 = phi float [ %1194, %1188 ], [ 0.000000e+00, %399 ]
  %412 = phi float [ %1204, %1188 ], [ %405, %399 ]
  %413 = phi float [ %1205, %1188 ], [ %403, %399 ]
  %414 = phi float [ %1206, %1188 ], [ %401, %399 ]
  %415 = phi float [ %1189, %1188 ], [ %393, %399 ]
  %416 = phi float [ %1195, %1188 ], [ 0.000000e+00, %399 ]
  %417 = phi float [ %1196, %1188 ], [ 0.000000e+00, %399 ]
  %418 = phi float [ %1197, %1188 ], [ 0.000000e+00, %399 ]
  %419 = phi float [ %1198, %1188 ], [ 0.000000e+00, %399 ]
  %420 = phi float [ %1199, %1188 ], [ 0.000000e+00, %399 ]
  %421 = phi i32 [ %1200, %1188 ], [ 0, %399 ]
  %422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.f32 %422, 0
  %424 = icmp eq i32 %324, 0
  br i1 %424, label %437, label %425, !dx.controlflow.hints !40

; <label>:425                                     ; preds = %406
  %426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %427 = extractvalue %dx.types.CBufRet.f32 %426, 3
  %428 = extractvalue %dx.types.CBufRet.f32 %426, 2
  %429 = fmul fast float %427, %415
  %430 = fdiv fast float %429, %387
  %431 = fadd fast float %430, 1.000000e+00
  %432 = call float @dx.op.unary.f32(i32 23, float %431)  ; Log(value)
  %433 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %432)  ; FMin(a,b)
  %434 = fmul fast float %428, %387
  %435 = fmul fast float %434, %433
  %436 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %435)  ; FMin(a,b)
  br label %437

; <label>:437                                     ; preds = %425, %406
  %438 = phi float [ %436, %425 ], [ 0x47EFFFFFE0000000, %406 ]
  %439 = icmp eq i32 %384, 0
  br i1 %439, label %496, label %440, !dx.controlflow.hints !41

; <label>:440                                     ; preds = %437
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 0
  %443 = extractvalue %dx.types.CBufRet.f32 %441, 1
  %444 = extractvalue %dx.types.CBufRet.f32 %441, 2
  %445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.f32 %445, 0
  %447 = extractvalue %dx.types.CBufRet.f32 %445, 1
  %448 = extractvalue %dx.types.CBufRet.f32 %445, 2
  %449 = fsub fast float %412, %446
  %450 = fsub fast float %413, %447
  %451 = fsub fast float %414, %448
  %452 = fmul fast float %449, %442
  %453 = fmul fast float %450, %443
  %454 = fmul fast float %451, %444
  %455 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %456 = extractvalue %dx.types.CBufRet.i32 %455, 3
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %461, label %458, !dx.controlflow.hints !42

; <label>:458                                     ; preds = %440
  %459 = call float @dx.op.unary.f32(i32 22, float %452)  ; Frc(value)
  %460 = call float @dx.op.unary.f32(i32 22, float %453)  ; Frc(value)
  br label %461

; <label>:461                                     ; preds = %458, %440
  %462 = phi float [ %459, %458 ], [ %452, %440 ]
  %463 = phi float [ %460, %458 ], [ %453, %440 ]
  %464 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %462, float %463, float %454, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %465 = extractvalue %dx.types.ResRet.f32 %464, 0
  %466 = fmul fast float %465, 2.000000e+00
  %467 = fadd fast float %466, -1.000000e+00
  %468 = extractvalue %dx.types.CBufRet.f32 %441, 3
  %469 = fmul fast float %467, %468
  %470 = fcmp fast olt float %469, 0.000000e+00
  %471 = fcmp fast oge float %454, 0.000000e+00
  %472 = fcmp fast ole float %454, 1.000000e+00
  br i1 %457, label %475, label %473, !dx.controlflow.hints !43

; <label>:473                                     ; preds = %461
  %474 = and i1 %471, %472
  br label %485

; <label>:475                                     ; preds = %461
  %476 = fcmp fast oge float %452, 0.000000e+00
  %477 = fcmp fast oge float %453, 0.000000e+00
  %478 = and i1 %476, %477
  %479 = and i1 %471, %478
  %480 = fcmp fast ole float %452, 1.000000e+00
  %481 = fcmp fast ole float %453, 1.000000e+00
  %482 = and i1 %480, %481
  %483 = and i1 %472, %482
  %484 = and i1 %479, %483
  br label %485

; <label>:485                                     ; preds = %475, %473
  %486 = phi i1 [ %474, %473 ], [ %484, %475 ]
  %487 = and i1 %470, %486
  %488 = call float @dx.op.unary.f32(i32 6, float %469)  ; FAbs(value)
  %489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %490 = extractvalue %dx.types.CBufRet.f32 %489, 1
  %491 = extractvalue %dx.types.CBufRet.f32 %489, 0
  %492 = call float @dx.op.binary.f32(i32 35, float %488, float %491)  ; FMax(a,b)
  %493 = select i1 %487, float %490, float %492
  %494 = zext i1 %487 to i32
  %495 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %493)  ; FMin(a,b)
  br label %496

; <label>:496                                     ; preds = %485, %437
  %497 = phi i32 [ %494, %485 ], [ 0, %437 ]
  %498 = phi float [ %495, %485 ], [ 0x47EFFFFFE0000000, %437 ]
  %499 = extractvalue %dx.types.CBufRet.f32 %422, 2
  %500 = fmul fast float %499, %415
  %501 = call float @dx.op.unary.f32(i32 23, float %500)  ; Log(value)
  %502 = fmul fast float %501, 0x3FE62E4300000000
  %503 = call float @dx.op.binary.f32(i32 35, float %502, float 1.000000e+00)  ; FMax(a,b)
  %504 = fmul fast float %503, %438
  %505 = call float @dx.op.binary.f32(i32 36, float %504, float %498)  ; FMin(a,b)
  %506 = call float @dx.op.binary.f32(i32 35, float %505, float %423)  ; FMax(a,b)
  %507 = fadd fast float %387, 0x3F1A36E2E0000000
  %508 = fsub fast float %507, %415
  %509 = call float @dx.op.binary.f32(i32 36, float %508, float %506)  ; FMin(a,b)
  br i1 %424, label %566, label %510, !dx.controlflow.hints !44

; <label>:510                                     ; preds = %496
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 0
  %513 = fsub fast float -0.000000e+00, %412
  %514 = fsub fast float -0.000000e+00, %413
  %515 = fsub fast float %512, %414
  %516 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %513, float %514, float %515)  ; Dot3(ax,ay,az,bx,by,bz)
  %517 = fmul fast float %307, %516
  %518 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %517)  ; FMax(a,b)
  %519 = fcmp fast olt float %282, 0.000000e+00
  %520 = call float @dx.op.binary.f32(i32 36, float %509, float %518)  ; FMin(a,b)
  br i1 %519, label %522, label %521, !dx.controlflow.hints !45

; <label>:521                                     ; preds = %510
  br label %522

; <label>:522                                     ; preds = %521, %510
  %523 = phi float [ 0.000000e+00, %521 ], [ %520, %510 ]
  %524 = phi float [ %520, %521 ], [ %509, %510 ]
  %525 = phi float [ %520, %521 ], [ 0.000000e+00, %510 ]
  %526 = phi float [ %509, %521 ], [ %520, %510 ]
  %527 = fsub fast float %524, %523
  %528 = extractvalue %dx.types.CBufRet.f32 %511, 1
  %529 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %528)  ; FMin(a,b)
  %530 = fsub fast float %414, %512
  %531 = fmul fast float %529, 0x3FF7154760000000
  %532 = fmul fast float %531, %530
  %533 = call float @dx.op.unary.f32(i32 21, float %532)  ; Exp(value)
  %534 = fmul fast float %282, 0x3FF7154760000000
  %535 = fmul fast float %534, %526
  %536 = fmul fast float %535, %529
  %537 = call float @dx.op.unary.f32(i32 21, float %536)  ; Exp(value)
  %538 = fmul fast float %534, %525
  %539 = fmul fast float %538, %529
  %540 = call float @dx.op.unary.f32(i32 21, float %539)  ; Exp(value)
  %541 = fsub fast float %537, %540
  %542 = fmul fast float %541, %533
  %543 = fmul fast float %529, %282
  %544 = fdiv fast float %542, %543
  %545 = fadd fast float %527, %544
  %546 = call float @dx.op.unary.f32(i32 6, float %282)  ; FAbs(value)
  %547 = fcmp fast olt float %546, 0x3F0FFB4800000000
  %548 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %530)  ; FMax(a,b)
  %549 = fmul fast float %548, 0x3FF7154760000000
  %550 = fmul fast float %549, %528
  %551 = call float @dx.op.unary.f32(i32 21, float %550)  ; Exp(value)
  %552 = fmul fast float %551, %509
  %553 = select i1 %547, float %552, float %545
  %554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %555 = extractvalue %dx.types.CBufRet.f32 %554, 1
  %556 = fmul fast float %553, %555
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 0
  %559 = extractvalue %dx.types.CBufRet.f32 %557, 1
  %560 = extractvalue %dx.types.CBufRet.f32 %557, 2
  %561 = extractvalue %dx.types.CBufRet.f32 %554, 2
  %562 = fmul fast float %558, %556
  %563 = fmul fast float %559, %556
  %564 = fmul fast float %560, %556
  %565 = fmul fast float %561, %556
  br label %566

; <label>:566                                     ; preds = %522, %496
  %567 = phi float [ %556, %522 ], [ 0.000000e+00, %496 ]
  %568 = phi float [ %565, %522 ], [ 0.000000e+00, %496 ]
  %569 = phi float [ %562, %522 ], [ 0.000000e+00, %496 ]
  %570 = phi float [ %563, %522 ], [ 0.000000e+00, %496 ]
  %571 = phi float [ %564, %522 ], [ 0.000000e+00, %496 ]
  %572 = icmp eq i32 %497, 0
  br i1 %572, label %767, label %573, !dx.controlflow.hints !46

; <label>:573                                     ; preds = %566
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 3
  %576 = fmul fast float %575, %415
  %577 = fcmp fast oeq float %576, 0.000000e+00
  br i1 %577, label %592, label %578, !dx.controlflow.hints !47

; <label>:578                                     ; preds = %573
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 3
  %581 = fmul fast float %580, %576
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %584 = extractvalue %dx.types.CBufRet.f32 %582, 1
  %585 = extractvalue %dx.types.CBufRet.f32 %582, 2
  %586 = fmul fast float %583, %581
  %587 = fmul fast float %584, %581
  %588 = fmul fast float %585, %581
  %589 = call float @dx.op.unary.f32(i32 23, float %586)  ; Log(value)
  %590 = call float @dx.op.unary.f32(i32 23, float %587)  ; Log(value)
  %591 = call float @dx.op.unary.f32(i32 23, float %588)  ; Log(value)
  br label %592

; <label>:592                                     ; preds = %578, %573
  %593 = phi float [ %589, %578 ], [ 0.000000e+00, %573 ]
  %594 = phi float [ %590, %578 ], [ 0.000000e+00, %573 ]
  %595 = phi float [ %591, %578 ], [ 0.000000e+00, %573 ]
  %596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.f32 %596, 0
  %598 = extractvalue %dx.types.CBufRet.f32 %596, 1
  %599 = extractvalue %dx.types.CBufRet.f32 %596, 2
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 0
  %602 = extractvalue %dx.types.CBufRet.f32 %600, 1
  %603 = extractvalue %dx.types.CBufRet.f32 %600, 2
  %604 = fsub fast float %412, %601
  %605 = fsub fast float %413, %602
  %606 = fsub fast float %414, %603
  %607 = fmul fast float %604, %597
  %608 = fmul fast float %605, %598
  %609 = fmul fast float %606, %599
  %610 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %611 = extractvalue %dx.types.CBufRet.i32 %610, 0
  %612 = extractvalue %dx.types.CBufRet.i32 %610, 1
  %613 = uitofp i32 %611 to float
  %614 = uitofp i32 %612 to float
  %615 = fmul fast float %607, %613
  %616 = fmul fast float %608, %614
  %617 = fadd fast float %615, 5.000000e-01
  %618 = fadd fast float %616, 5.000000e-01
  %619 = call float @dx.op.unary.f32(i32 22, float %617)  ; Frc(value)
  %620 = call float @dx.op.unary.f32(i32 22, float %618)  ; Frc(value)
  %621 = call float @dx.op.unary.f32(i32 27, float %617)  ; Round_ni(value)
  %622 = call float @dx.op.unary.f32(i32 27, float %618)  ; Round_ni(value)
  %623 = fadd fast float %621, 1.000000e+00
  %624 = fadd fast float %622, 1.000000e+00
  %625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %626 = extractvalue %dx.types.CBufRet.f32 %625, 0
  %627 = extractvalue %dx.types.CBufRet.f32 %625, 1
  %628 = fmul fast float %626, %623
  %629 = fmul fast float %627, %624
  %630 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %16, float %628, float %629, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %631 = extractvalue %dx.types.ResRet.f32 %630, 0
  %632 = extractvalue %dx.types.ResRet.f32 %630, 1
  %633 = extractvalue %dx.types.ResRet.f32 %630, 2
  %634 = extractvalue %dx.types.ResRet.f32 %630, 3
  %635 = extractvalue %dx.types.CBufRet.i32 %610, 2
  %636 = extractvalue %dx.types.CBufRet.f32 %625, 2
  %637 = uitofp i32 %635 to float
  %638 = fadd fast float %637, -1.000000e+00
  %639 = fmul fast float %638, %631
  %640 = fmul fast float %638, %632
  %641 = fmul fast float %638, %633
  %642 = fmul fast float %638, %634
  %643 = fadd fast float %639, 5.000000e-01
  %644 = fadd fast float %640, 5.000000e-01
  %645 = fadd fast float %641, 5.000000e-01
  %646 = fadd fast float %642, 5.000000e-01
  %647 = fptoui float %643 to i32
  %648 = fptoui float %644 to i32
  %649 = fptoui float %645 to i32
  %650 = fptoui float %646 to i32
  %651 = uitofp i32 %647 to float
  %652 = uitofp i32 %648 to float
  %653 = uitofp i32 %649 to float
  %654 = uitofp i32 %650 to float
  %655 = fadd fast float %651, 5.000000e-01
  %656 = fadd fast float %652, 5.000000e-01
  %657 = fadd fast float %653, 5.000000e-01
  %658 = fadd fast float %654, 5.000000e-01
  %659 = fmul fast float %655, %636
  %660 = fmul fast float %656, %636
  %661 = fmul fast float %657, %636
  %662 = fmul fast float %658, %636
  %663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %659, float %609, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %664 = extractvalue %dx.types.ResRet.f32 %663, 0
  %665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %660, float %609, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %666 = extractvalue %dx.types.ResRet.f32 %665, 0
  %667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %661, float %609, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %668 = extractvalue %dx.types.ResRet.f32 %667, 0
  %669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %662, float %609, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = fsub fast float %668, %670
  %672 = fmul fast float %671, %619
  %673 = fadd fast float %672, %670
  %674 = fsub fast float %666, %664
  %675 = fmul fast float %674, %619
  %676 = fadd fast float %675, %664
  %677 = fsub fast float %676, %673
  %678 = fmul fast float %677, %620
  %679 = fadd fast float %678, %673
  %680 = fcmp fast ogt float %679, 0.000000e+00
  br i1 %680, label %681, label %749, !dx.controlflow.hints !48

; <label>:681                                     ; preds = %592
  %682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.f32 %682, 0
  %684 = extractvalue %dx.types.CBufRet.f32 %682, 1
  %685 = extractvalue %dx.types.CBufRet.f32 %682, 2
  %686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %687 = extractvalue %dx.types.CBufRet.f32 %686, 0
  %688 = extractvalue %dx.types.CBufRet.f32 %686, 1
  %689 = extractvalue %dx.types.CBufRet.f32 %686, 2
  %690 = fmul fast float %605, %597
  %691 = fmul fast float %606, %597
  %692 = fadd fast float %607, %687
  %693 = fadd fast float %690, %688
  %694 = fadd fast float %691, %689
  %695 = fmul fast float %692, %683
  %696 = fmul fast float %693, %683
  %697 = fmul fast float %694, %683
  %698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %695, float %696, float %697, float undef, i32 0, i32 0, i32 0, float %593)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = fmul fast float %692, %684
  %701 = fmul fast float %693, %684
  %702 = fmul fast float %694, %684
  %703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %700, float %701, float %702, float undef, i32 0, i32 0, i32 0, float %594)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %704 = extractvalue %dx.types.ResRet.f32 %703, 1
  %705 = fmul fast float %692, %685
  %706 = fmul fast float %693, %685
  %707 = fmul fast float %694, %685
  %708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %705, float %706, float %707, float undef, i32 0, i32 0, i32 0, float %595)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 2
  %710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.f32 %710, 1
  %712 = fmul fast float %704, %699
  %713 = fmul fast float %712, %709
  %714 = call float @dx.op.unary.f32(i32 23, float %713)  ; Log(value)
  %715 = fmul fast float %714, %711
  %716 = call float @dx.op.unary.f32(i32 21, float %715)  ; Exp(value)
  %717 = extractvalue %dx.types.CBufRet.f32 %710, 2
  %718 = fmul fast float %679, %679
  %719 = fmul fast float %718, %716
  %720 = fmul fast float %719, %717
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 3
  %723 = fmul fast float %722, %720
  %724 = bitcast float %723 to i32
  %725 = sitofp i32 %724 to float
  %726 = fptosi float %725 to i32
  %727 = bitcast i32 %726 to float
  %728 = fsub fast float 1.000000e+00, %720
  %729 = bitcast float %728 to i32
  %730 = sitofp i32 %729 to float
  %731 = fptosi float %730 to i32
  %732 = bitcast i32 %731 to float
  %733 = fadd fast float %727, %732
  %734 = bitcast float %733 to i32
  %735 = sub nsw i32 2129859010, %734
  %736 = bitcast i32 %735 to float
  %737 = fmul fast float %736, %727
  %738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %739 = extractvalue %dx.types.CBufRet.f32 %738, 2
  %740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.f32 %740, 0
  %742 = fmul fast float %737, %741
  %743 = fadd fast float %742, 1.000000e+00
  %744 = bitcast float %743 to i32
  %745 = sub nsw i32 2129859010, %744
  %746 = bitcast i32 %745 to float
  %747 = fmul fast float %737, %739
  %748 = fmul fast float %747, %746
  br label %749

; <label>:749                                     ; preds = %681, %592
  %750 = phi float [ %748, %681 ], [ %679, %592 ]
  %751 = fmul fast float %750, %509
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 0
  %754 = extractvalue %dx.types.CBufRet.f32 %752, 1
  %755 = extractvalue %dx.types.CBufRet.f32 %752, 2
  %756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %757 = extractvalue %dx.types.CBufRet.f32 %756, 1
  %758 = fmul fast float %753, %751
  %759 = fmul fast float %754, %751
  %760 = fmul fast float %755, %751
  %761 = fadd fast float %758, %569
  %762 = fadd fast float %759, %570
  %763 = fadd fast float %760, %571
  %764 = fmul fast float %757, %751
  %765 = fadd fast float %764, %568
  %766 = fadd fast float %751, %567
  br label %767

; <label>:767                                     ; preds = %749, %566
  %768 = phi float [ %766, %749 ], [ %567, %566 ]
  %769 = phi float [ %765, %749 ], [ %568, %566 ]
  %770 = phi float [ %761, %749 ], [ %569, %566 ]
  %771 = phi float [ %762, %749 ], [ %570, %566 ]
  %772 = phi float [ %763, %749 ], [ %571, %566 ]
  %773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.f32 %773, 1
  %775 = fcmp fast ogt float %768, %774
  br i1 %775, label %776, label %782, !dx.controlflow.hints !49

; <label>:776                                     ; preds = %767
  %777 = fdiv fast float 1.000000e+00, %768
  %778 = fmul fast float %777, %770
  %779 = fmul fast float %777, %771
  %780 = fmul fast float %777, %772
  %781 = fmul fast float %777, %769
  br label %782

; <label>:782                                     ; preds = %776, %767
  %783 = phi float [ %781, %776 ], [ %769, %767 ]
  %784 = phi float [ %778, %776 ], [ %770, %767 ]
  %785 = phi float [ %779, %776 ], [ %771, %767 ]
  %786 = phi float [ %780, %776 ], [ %772, %767 ]
  br i1 %775, label %789, label %787, !dx.controlflow.hints !50

; <label>:787                                     ; preds = %782
  %788 = fadd fast float %509, %415
  br label %1188

; <label>:789                                     ; preds = %782
  %790 = fmul fast float %768, 0xBFF7154760000000
  %791 = call float @dx.op.unary.f32(i32 21, float %790)  ; Exp(value)
  %792 = call float @dx.op.unary.f32(i32 7, float %791)  ; Saturate(value)
  %793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.f32 %793, 3
  %795 = fcmp fast une float %794, 0.000000e+00
  %796 = extractvalue %dx.types.CBufRet.f32 %793, 0
  %797 = extractvalue %dx.types.CBufRet.f32 %793, 1
  %798 = extractvalue %dx.types.CBufRet.f32 %793, 2
  br i1 %795, label %799, label %821, !dx.controlflow.hints !51

; <label>:799                                     ; preds = %789
  %800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %801 = extractvalue %dx.types.CBufRet.f32 %800, 0
  %802 = extractvalue %dx.types.CBufRet.f32 %800, 1
  %803 = extractvalue %dx.types.CBufRet.f32 %800, 2
  %804 = call float @dx.op.dot3.f32(i32 55, float %796, float %797, float %798, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %805 = fcmp fast ogt float %783, 0.000000e+00
  %806 = select i1 %805, float 1.000000e+00, float -1.000000e+00
  %807 = fmul fast float %806, 5.000000e-01
  %808 = fmul fast float %807, %804
  %809 = fmul fast float %806, %783
  %810 = fadd fast float %808, 4.921875e-01
  %811 = fadd fast float %809, -3.125000e-02
  %812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %810, float 0x3FB25F3060000000, float %811, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %813 = extractvalue %dx.types.ResRet.f32 %812, 0
  %814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %815 = extractvalue %dx.types.CBufRet.f32 %814, 0
  %816 = fmul fast float %813, 0x400921FB60000000
  %817 = fmul fast float %816, %815
  %818 = fmul fast float %817, %801
  %819 = fmul fast float %817, %802
  %820 = fmul fast float %817, %803
  br label %821

; <label>:821                                     ; preds = %799, %789
  %822 = phi float [ %818, %799 ], [ 0.000000e+00, %789 ]
  %823 = phi float [ %819, %799 ], [ 0.000000e+00, %789 ]
  %824 = phi float [ %820, %799 ], [ 0.000000e+00, %789 ]
  %825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %826 = extractvalue %dx.types.CBufRet.f32 %825, 0
  %827 = fmul fast float %826, %796
  %828 = fmul fast float %826, %797
  %829 = fmul fast float %826, %798
  %830 = fadd fast float %827, %412
  %831 = fadd fast float %828, %413
  %832 = fadd fast float %829, %414
  br i1 %439, label %882, label %833, !dx.controlflow.hints !41

; <label>:833                                     ; preds = %821
  %834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %835 = extractvalue %dx.types.CBufRet.f32 %834, 0
  %836 = extractvalue %dx.types.CBufRet.f32 %834, 1
  %837 = extractvalue %dx.types.CBufRet.f32 %834, 2
  %838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.f32 %838, 0
  %840 = extractvalue %dx.types.CBufRet.f32 %838, 1
  %841 = extractvalue %dx.types.CBufRet.f32 %838, 2
  %842 = fsub fast float %830, %839
  %843 = fsub fast float %831, %840
  %844 = fsub fast float %832, %841
  %845 = fmul fast float %842, %835
  %846 = fmul fast float %843, %836
  %847 = fmul fast float %844, %837
  %848 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.i32 %848, 3
  %850 = icmp eq i32 %849, 0
  br i1 %850, label %854, label %851, !dx.controlflow.hints !42

; <label>:851                                     ; preds = %833
  %852 = call float @dx.op.unary.f32(i32 22, float %845)  ; Frc(value)
  %853 = call float @dx.op.unary.f32(i32 22, float %846)  ; Frc(value)
  br label %854

; <label>:854                                     ; preds = %851, %833
  %855 = phi float [ %852, %851 ], [ %845, %833 ]
  %856 = phi float [ %853, %851 ], [ %846, %833 ]
  %857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %855, float %856, float %847, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %858 = extractvalue %dx.types.ResRet.f32 %857, 0
  %859 = fmul fast float %858, 2.000000e+00
  %860 = fadd fast float %859, -1.000000e+00
  %861 = extractvalue %dx.types.CBufRet.f32 %834, 3
  %862 = fmul fast float %860, %861
  %863 = fcmp fast olt float %862, 0.000000e+00
  %864 = fcmp fast oge float %847, 0.000000e+00
  %865 = fcmp fast ole float %847, 1.000000e+00
  br i1 %850, label %868, label %866, !dx.controlflow.hints !43

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
  %881 = zext i1 %880 to i32
  br label %882

; <label>:882                                     ; preds = %878, %821
  %883 = phi i32 [ %881, %878 ], [ 0, %821 ]
  br i1 %424, label %933, label %884, !dx.controlflow.hints !44

; <label>:884                                     ; preds = %882
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 0
  %887 = fsub fast float -0.000000e+00, %830
  %888 = fsub fast float -0.000000e+00, %831
  %889 = fsub fast float %886, %832
  %890 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %887, float %888, float %889)  ; Dot3(ax,ay,az,bx,by,bz)
  %891 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %796, float %797, float %798)  ; Dot3(ax,ay,az,bx,by,bz)
  %892 = fdiv fast float 1.000000e+00, %891
  %893 = fmul fast float %892, %890
  %894 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %893)  ; FMax(a,b)
  %895 = fcmp fast olt float %798, 0.000000e+00
  %896 = call float @dx.op.binary.f32(i32 36, float %826, float %894)  ; FMin(a,b)
  br i1 %895, label %898, label %897, !dx.controlflow.hints !45

; <label>:897                                     ; preds = %884
  br label %898

; <label>:898                                     ; preds = %897, %884
  %899 = phi float [ 0.000000e+00, %897 ], [ %896, %884 ]
  %900 = phi float [ %896, %897 ], [ %826, %884 ]
  %901 = phi float [ %896, %897 ], [ 0.000000e+00, %884 ]
  %902 = phi float [ %826, %897 ], [ %896, %884 ]
  %903 = fsub fast float %900, %899
  %904 = extractvalue %dx.types.CBufRet.f32 %885, 1
  %905 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %904)  ; FMin(a,b)
  %906 = fsub fast float %832, %886
  %907 = fmul fast float %905, 0x3FF7154760000000
  %908 = fmul fast float %907, %906
  %909 = call float @dx.op.unary.f32(i32 21, float %908)  ; Exp(value)
  %910 = fmul fast float %798, 0x3FF7154760000000
  %911 = fmul fast float %910, %902
  %912 = fmul fast float %911, %905
  %913 = call float @dx.op.unary.f32(i32 21, float %912)  ; Exp(value)
  %914 = fmul fast float %910, %901
  %915 = fmul fast float %914, %905
  %916 = call float @dx.op.unary.f32(i32 21, float %915)  ; Exp(value)
  %917 = fsub fast float %913, %916
  %918 = fmul fast float %917, %909
  %919 = fmul fast float %905, %798
  %920 = fdiv fast float %918, %919
  %921 = fadd fast float %903, %920
  %922 = call float @dx.op.unary.f32(i32 6, float %798)  ; FAbs(value)
  %923 = fcmp fast olt float %922, 0x3F0FFB4800000000
  %924 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %906)  ; FMax(a,b)
  %925 = fmul fast float %924, 0x3FF7154760000000
  %926 = fmul fast float %925, %904
  %927 = call float @dx.op.unary.f32(i32 21, float %926)  ; Exp(value)
  %928 = fmul fast float %927, %826
  %929 = select i1 %923, float %928, float %921
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 1
  %932 = fmul fast float %929, %931
  br label %933

; <label>:933                                     ; preds = %898, %882
  %934 = phi float [ %932, %898 ], [ 0.000000e+00, %882 ]
  %935 = icmp eq i32 %883, 0
  br i1 %935, label %1116, label %936, !dx.controlflow.hints !46

; <label>:936                                     ; preds = %933
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 3
  %939 = fmul fast float %938, %826
  %940 = fcmp fast oeq float %939, 0.000000e+00
  br i1 %940, label %955, label %941, !dx.controlflow.hints !47

; <label>:941                                     ; preds = %936
  %942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.f32 %942, 3
  %944 = fmul fast float %943, %939
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 0
  %947 = extractvalue %dx.types.CBufRet.f32 %945, 1
  %948 = extractvalue %dx.types.CBufRet.f32 %945, 2
  %949 = fmul fast float %946, %944
  %950 = fmul fast float %947, %944
  %951 = fmul fast float %948, %944
  %952 = call float @dx.op.unary.f32(i32 23, float %949)  ; Log(value)
  %953 = call float @dx.op.unary.f32(i32 23, float %950)  ; Log(value)
  %954 = call float @dx.op.unary.f32(i32 23, float %951)  ; Log(value)
  br label %955

; <label>:955                                     ; preds = %941, %936
  %956 = phi float [ %952, %941 ], [ 0.000000e+00, %936 ]
  %957 = phi float [ %953, %941 ], [ 0.000000e+00, %936 ]
  %958 = phi float [ %954, %941 ], [ 0.000000e+00, %936 ]
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 0
  %961 = extractvalue %dx.types.CBufRet.f32 %959, 1
  %962 = extractvalue %dx.types.CBufRet.f32 %959, 2
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 0
  %965 = extractvalue %dx.types.CBufRet.f32 %963, 1
  %966 = extractvalue %dx.types.CBufRet.f32 %963, 2
  %967 = fsub fast float %830, %964
  %968 = fsub fast float %831, %965
  %969 = fsub fast float %832, %966
  %970 = fmul fast float %967, %960
  %971 = fmul fast float %968, %961
  %972 = fmul fast float %969, %962
  %973 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.i32 %973, 0
  %975 = extractvalue %dx.types.CBufRet.i32 %973, 1
  %976 = uitofp i32 %974 to float
  %977 = uitofp i32 %975 to float
  %978 = fmul fast float %970, %976
  %979 = fmul fast float %971, %977
  %980 = fadd fast float %978, 5.000000e-01
  %981 = fadd fast float %979, 5.000000e-01
  %982 = call float @dx.op.unary.f32(i32 22, float %980)  ; Frc(value)
  %983 = call float @dx.op.unary.f32(i32 22, float %981)  ; Frc(value)
  %984 = call float @dx.op.unary.f32(i32 27, float %980)  ; Round_ni(value)
  %985 = call float @dx.op.unary.f32(i32 27, float %981)  ; Round_ni(value)
  %986 = fadd fast float %984, 1.000000e+00
  %987 = fadd fast float %985, 1.000000e+00
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 0
  %990 = extractvalue %dx.types.CBufRet.f32 %988, 1
  %991 = fmul fast float %989, %986
  %992 = fmul fast float %990, %987
  %993 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %16, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %994 = extractvalue %dx.types.ResRet.f32 %993, 0
  %995 = extractvalue %dx.types.ResRet.f32 %993, 1
  %996 = extractvalue %dx.types.ResRet.f32 %993, 2
  %997 = extractvalue %dx.types.ResRet.f32 %993, 3
  %998 = extractvalue %dx.types.CBufRet.i32 %973, 2
  %999 = extractvalue %dx.types.CBufRet.f32 %988, 2
  %1000 = uitofp i32 %998 to float
  %1001 = fadd fast float %1000, -1.000000e+00
  %1002 = fmul fast float %1001, %994
  %1003 = fmul fast float %1001, %995
  %1004 = fmul fast float %1001, %996
  %1005 = fmul fast float %1001, %997
  %1006 = fadd fast float %1002, 5.000000e-01
  %1007 = fadd fast float %1003, 5.000000e-01
  %1008 = fadd fast float %1004, 5.000000e-01
  %1009 = fadd fast float %1005, 5.000000e-01
  %1010 = fptoui float %1006 to i32
  %1011 = fptoui float %1007 to i32
  %1012 = fptoui float %1008 to i32
  %1013 = fptoui float %1009 to i32
  %1014 = uitofp i32 %1010 to float
  %1015 = uitofp i32 %1011 to float
  %1016 = uitofp i32 %1012 to float
  %1017 = uitofp i32 %1013 to float
  %1018 = fadd fast float %1014, 5.000000e-01
  %1019 = fadd fast float %1015, 5.000000e-01
  %1020 = fadd fast float %1016, 5.000000e-01
  %1021 = fadd fast float %1017, 5.000000e-01
  %1022 = fmul fast float %1018, %999
  %1023 = fmul fast float %1019, %999
  %1024 = fmul fast float %1020, %999
  %1025 = fmul fast float %1021, %999
  %1026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1022, float %972, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1027 = extractvalue %dx.types.ResRet.f32 %1026, 0
  %1028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1023, float %972, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1029 = extractvalue %dx.types.ResRet.f32 %1028, 0
  %1030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1024, float %972, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1031 = extractvalue %dx.types.ResRet.f32 %1030, 0
  %1032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %1025, float %972, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 0
  %1034 = fsub fast float %1031, %1033
  %1035 = fmul fast float %1034, %982
  %1036 = fadd fast float %1035, %1033
  %1037 = fsub fast float %1029, %1027
  %1038 = fmul fast float %1037, %982
  %1039 = fadd fast float %1038, %1027
  %1040 = fsub fast float %1039, %1036
  %1041 = fmul fast float %1040, %983
  %1042 = fadd fast float %1041, %1036
  %1043 = fcmp fast ogt float %1042, 0.000000e+00
  br i1 %1043, label %1044, label %1112, !dx.controlflow.hints !48

; <label>:1044                                    ; preds = %955
  %1045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.CBufRet.f32 %1045, 1
  %1048 = extractvalue %dx.types.CBufRet.f32 %1045, 2
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.CBufRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.CBufRet.f32 %1049, 2
  %1053 = fmul fast float %968, %960
  %1054 = fmul fast float %969, %960
  %1055 = fadd fast float %970, %1050
  %1056 = fadd fast float %1053, %1051
  %1057 = fadd fast float %1054, %1052
  %1058 = fmul fast float %1055, %1046
  %1059 = fmul fast float %1056, %1046
  %1060 = fmul fast float %1057, %1046
  %1061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %1058, float %1059, float %1060, float undef, i32 0, i32 0, i32 0, float %956)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1062 = extractvalue %dx.types.ResRet.f32 %1061, 0
  %1063 = fmul fast float %1055, %1047
  %1064 = fmul fast float %1056, %1047
  %1065 = fmul fast float %1057, %1047
  %1066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %1063, float %1064, float %1065, float undef, i32 0, i32 0, i32 0, float %957)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1067 = extractvalue %dx.types.ResRet.f32 %1066, 1
  %1068 = fmul fast float %1055, %1048
  %1069 = fmul fast float %1056, %1048
  %1070 = fmul fast float %1057, %1048
  %1071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %1068, float %1069, float %1070, float undef, i32 0, i32 0, i32 0, float %958)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1072 = extractvalue %dx.types.ResRet.f32 %1071, 2
  %1073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1074 = extractvalue %dx.types.CBufRet.f32 %1073, 1
  %1075 = fmul fast float %1067, %1062
  %1076 = fmul fast float %1075, %1072
  %1077 = call float @dx.op.unary.f32(i32 23, float %1076)  ; Log(value)
  %1078 = fmul fast float %1077, %1074
  %1079 = call float @dx.op.unary.f32(i32 21, float %1078)  ; Exp(value)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1073, 2
  %1081 = fmul fast float %1042, %1042
  %1082 = fmul fast float %1081, %1079
  %1083 = fmul fast float %1082, %1080
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 3
  %1086 = fmul fast float %1085, %1083
  %1087 = bitcast float %1086 to i32
  %1088 = sitofp i32 %1087 to float
  %1089 = fptosi float %1088 to i32
  %1090 = bitcast i32 %1089 to float
  %1091 = fsub fast float 1.000000e+00, %1083
  %1092 = bitcast float %1091 to i32
  %1093 = sitofp i32 %1092 to float
  %1094 = fptosi float %1093 to i32
  %1095 = bitcast i32 %1094 to float
  %1096 = fadd fast float %1090, %1095
  %1097 = bitcast float %1096 to i32
  %1098 = sub nsw i32 2129859010, %1097
  %1099 = bitcast i32 %1098 to float
  %1100 = fmul fast float %1099, %1090
  %1101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1102 = extractvalue %dx.types.CBufRet.f32 %1101, 2
  %1103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1104 = extractvalue %dx.types.CBufRet.f32 %1103, 0
  %1105 = fmul fast float %1100, %1104
  %1106 = fadd fast float %1105, 1.000000e+00
  %1107 = bitcast float %1106 to i32
  %1108 = sub nsw i32 2129859010, %1107
  %1109 = bitcast i32 %1108 to float
  %1110 = fmul fast float %1100, %1102
  %1111 = fmul fast float %1110, %1109
  br label %1112

; <label>:1112                                    ; preds = %1044, %955
  %1113 = phi float [ %1111, %1044 ], [ %1042, %955 ]
  %1114 = fmul fast float %1113, %826
  %1115 = fadd fast float %1114, %934
  br label %1116

; <label>:1116                                    ; preds = %1112, %933
  %1117 = phi float [ %1115, %1112 ], [ %934, %933 ]
  %1118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.f32 %1118, 3
  %1120 = fmul fast float %1117, 0xBFF7154760000000
  %1121 = fmul fast float %1120, %1119
  %1122 = call float @dx.op.unary.f32(i32 21, float %1121)  ; Exp(value)
  %1123 = call float @dx.op.unary.f32(i32 7, float %1122)  ; Saturate(value)
  %1124 = fmul fast float %1123, %822
  %1125 = fmul fast float %1123, %823
  %1126 = fmul fast float %1123, %824
  %1127 = fadd fast float %1124, %205
  %1128 = fadd fast float %1125, %206
  %1129 = fadd fast float %1126, %207
  %1130 = fsub fast float 1.000000e+00, %792
  %1131 = fmul fast float %784, %408
  %1132 = fmul fast float %1131, %1130
  %1133 = fmul fast float %1132, %1127
  %1134 = fmul fast float %785, %408
  %1135 = fmul fast float %1134, %1130
  %1136 = fmul fast float %1135, %1128
  %1137 = fmul fast float %786, %408
  %1138 = fmul fast float %1137, %1130
  %1139 = fmul fast float %1138, %1129
  %1140 = fadd fast float %1133, %409
  %1141 = fadd fast float %1136, %410
  %1142 = fadd fast float %1139, %411
  %1143 = fdiv fast float %768, %509
  %1144 = fadd fast float %509, %415
  %1145 = fmul fast float %415, %415
  %1146 = fmul fast float %1144, %1144
  %1147 = fsub fast float %1145, %1146
  %1148 = fmul fast float %1147, -5.000000e-01
  %1149 = fmul fast float %1148, %1143
  %1150 = fadd fast float %1149, %407
  %1151 = fadd fast float %768, %416
  %1152 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.i32 %1152, 0
  %1154 = icmp eq i32 %1153, 0
  br i1 %1154, label %1181, label %1155, !dx.controlflow.hints !52

; <label>:1155                                    ; preds = %1116
  %1156 = icmp ne i32 %421, 0
  %1157 = zext i1 %1156 to i32
  %1158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1159 = extractvalue %dx.types.CBufRet.f32 %1158, 2
  %1160 = extractvalue %dx.types.CBufRet.f32 %1158, 0
  %1161 = fsub fast float %1144, %1160
  %1162 = fmul fast float %1161, %1159
  %1163 = call float @dx.op.unary.f32(i32 7, float %1162)  ; Saturate(value)
  %1164 = fadd fast float %1163, -5.000000e-01
  %1165 = fmul fast float %1164, 2.000000e+00
  %1166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.f32 %1166, 2
  %1168 = fcmp fast olt float %1165, %1167
  br i1 %1168, label %1169, label %1181, !dx.controlflow.hints !53

; <label>:1169                                    ; preds = %1155
  %1170 = fmul fast float %1165, %1165
  %1171 = fmul fast float %1130, %408
  %1172 = fmul fast float %1165, %1171
  %1173 = fmul fast float %1170, %1171
  %1174 = fmul fast float %1172, %1170
  %1175 = fmul fast float %1170, %1170
  %1176 = fmul fast float %1175, %1171
  %1177 = fadd fast float %1172, %417
  %1178 = fadd fast float %1173, %418
  %1179 = fadd fast float %1174, %419
  %1180 = fadd fast float %1176, %420
  br label %1181

; <label>:1181                                    ; preds = %1169, %1155, %1116
  %1182 = phi float [ %417, %1116 ], [ %1177, %1169 ], [ %417, %1155 ]
  %1183 = phi float [ %418, %1116 ], [ %1178, %1169 ], [ %418, %1155 ]
  %1184 = phi float [ %419, %1116 ], [ %1179, %1169 ], [ %419, %1155 ]
  %1185 = phi float [ %420, %1116 ], [ %1180, %1169 ], [ %420, %1155 ]
  %1186 = phi i32 [ %421, %1116 ], [ 1, %1169 ], [ %1157, %1155 ]
  %1187 = fmul fast float %792, %408
  br label %1188

; <label>:1188                                    ; preds = %1181, %787
  %1189 = phi float [ %788, %787 ], [ %1144, %1181 ]
  %1190 = phi float [ %407, %787 ], [ %1150, %1181 ]
  %1191 = phi float [ %408, %787 ], [ %1187, %1181 ]
  %1192 = phi float [ %409, %787 ], [ %1140, %1181 ]
  %1193 = phi float [ %410, %787 ], [ %1141, %1181 ]
  %1194 = phi float [ %411, %787 ], [ %1142, %1181 ]
  %1195 = phi float [ %416, %787 ], [ %1151, %1181 ]
  %1196 = phi float [ %417, %787 ], [ %1182, %1181 ]
  %1197 = phi float [ %418, %787 ], [ %1183, %1181 ]
  %1198 = phi float [ %419, %787 ], [ %1184, %1181 ]
  %1199 = phi float [ %420, %787 ], [ %1185, %1181 ]
  %1200 = phi i32 [ %421, %787 ], [ %1186, %1181 ]
  %1201 = fmul fast float %509, %280
  %1202 = fmul fast float %509, %281
  %1203 = fmul fast float %509, %282
  %1204 = fadd fast float %1201, %412
  %1205 = fadd fast float %1202, %413
  %1206 = fadd fast float %1203, %414
  %1207 = fcmp fast olt float %1189, %387
  %1208 = extractvalue %dx.types.CBufRet.f32 %773, 2
  %1209 = fcmp fast olt float %1208, %1191
  %1210 = and i1 %1207, %1209
  br i1 %1210, label %406, label %1211

; <label>:1211                                    ; preds = %1188
  br label %1212

; <label>:1212                                    ; preds = %1211, %383
  %1213 = phi float [ 0.000000e+00, %383 ], [ %1190, %1211 ]
  %1214 = phi float [ 1.000000e+00, %383 ], [ %1191, %1211 ]
  %1215 = phi float [ 0.000000e+00, %383 ], [ %1192, %1211 ]
  %1216 = phi float [ 0.000000e+00, %383 ], [ %1193, %1211 ]
  %1217 = phi float [ 0.000000e+00, %383 ], [ %1194, %1211 ]
  %1218 = phi float [ 0.000000e+00, %383 ], [ %1195, %1211 ]
  %1219 = phi float [ 0.000000e+00, %383 ], [ %1196, %1211 ]
  %1220 = phi float [ 0.000000e+00, %383 ], [ %1197, %1211 ]
  %1221 = phi float [ 0.000000e+00, %383 ], [ %1198, %1211 ]
  %1222 = phi float [ 0.000000e+00, %383 ], [ %1199, %1211 ]
  %1223 = phi i32 [ 0, %383 ], [ %1200, %1211 ]
  %1224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.i32 %1224, 0
  %1226 = icmp eq i32 %1225, 0
  br i1 %1226, label %1268, label %1227, !dx.controlflow.hints !54

; <label>:1227                                    ; preds = %1212
  %1228 = icmp eq i32 %1223, 0
  br i1 %1228, label %1267, label %1229, !dx.controlflow.hints !55

; <label>:1229                                    ; preds = %1227
  %1230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.i32 %1230, 2
  %1232 = icmp eq i32 %1231, 0
  br i1 %1232, label %1239, label %1233, !dx.controlflow.hints !56

; <label>:1233                                    ; preds = %1229
  %1234 = fsub fast float 1.000000e+00, %1214
  %1235 = fdiv fast float %1219, %1234
  %1236 = fdiv fast float %1220, %1234
  %1237 = fdiv fast float %1221, %1234
  %1238 = fdiv fast float %1222, %1234
  br label %1244

; <label>:1239                                    ; preds = %1229
  %1240 = fadd fast float %1219, %1214
  %1241 = fadd fast float %1220, %1214
  %1242 = fadd fast float %1221, %1214
  %1243 = fadd fast float %1222, %1214
  br label %1244

; <label>:1244                                    ; preds = %1239, %1233
  %1245 = phi float [ %1235, %1233 ], [ %1240, %1239 ]
  %1246 = phi float [ %1236, %1233 ], [ %1241, %1239 ]
  %1247 = phi float [ %1237, %1233 ], [ %1242, %1239 ]
  %1248 = phi float [ %1238, %1233 ], [ %1243, %1239 ]
  %1249 = call float @dx.op.binary.f32(i32 35, float %1245, float -1.000000e+00)  ; FMax(a,b)
  %1250 = call float @dx.op.binary.f32(i32 35, float %1246, float -1.000000e+00)  ; FMax(a,b)
  %1251 = call float @dx.op.binary.f32(i32 35, float %1247, float -1.000000e+00)  ; FMax(a,b)
  %1252 = call float @dx.op.binary.f32(i32 35, float %1248, float -1.000000e+00)  ; FMax(a,b)
  %1253 = call float @dx.op.binary.f32(i32 36, float %1249, float 1.000000e+00)  ; FMin(a,b)
  %1254 = call float @dx.op.binary.f32(i32 36, float %1250, float 1.000000e+00)  ; FMin(a,b)
  %1255 = call float @dx.op.binary.f32(i32 36, float %1251, float 1.000000e+00)  ; FMin(a,b)
  %1256 = call float @dx.op.binary.f32(i32 36, float %1252, float 1.000000e+00)  ; FMin(a,b)
  %1257 = fmul fast float %1253, 1.500000e+00
  %1258 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1255, float %1257)  ; FMad(a,b,c)
  %1259 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1254, float 0.000000e+00)  ; FMad(a,b,c)
  %1260 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1256, float %1259)  ; FMad(a,b,c)
  %1261 = fmul fast float %1253, 0x3FEBB67AE0000000
  %1262 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1255, float %1261)  ; FMad(a,b,c)
  %1263 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1254, float 0.000000e+00)  ; FMad(a,b,c)
  %1264 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1256, float %1263)  ; FMad(a,b,c)
  %1265 = fadd fast float %1258, 5.000000e-01
  %1266 = fadd fast float %1262, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %20, i32 %21, i32 0, float %1265, float %1260, float %1266, float %1264, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1268

; <label>:1267                                    ; preds = %1227
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %20, i32 %21, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1268

; <label>:1268                                    ; preds = %1267, %1244, %1212
  %1269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1270 = extractvalue %dx.types.CBufRet.f32 %1269, 2
  %1271 = fsub fast float %1214, %1270
  %1272 = fdiv fast float %1271, %1270
  %1273 = call float @dx.op.unary.f32(i32 7, float %1272)  ; Saturate(value)
  %1274 = fmul fast float %1273, 2.000000e+00
  %1275 = fsub fast float 3.000000e+00, %1274
  %1276 = fmul fast float %1273, %1273
  %1277 = fmul fast float %1276, %1214
  %1278 = fmul fast float %1277, %1275
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 0
  %1281 = extractvalue %dx.types.CBufRet.f32 %1279, 1
  %1282 = extractvalue %dx.types.CBufRet.f32 %1279, 2
  %1283 = call float @dx.op.dot3.f32(i32 55, float %280, float %281, float %282, float %1280, float %1281, float %1282)  ; Dot3(ax,ay,az,bx,by,bz)
  %1284 = fmul fast float %1283, %1213
  %1285 = fcmp fast ogt float %1218, 0.000000e+00
  %1286 = fdiv fast float 1.000000e+00, %1218
  %1287 = fmul fast float %1284, %1286
  %1288 = select i1 %1285, float %1287, float %291
  %1289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1289, 0
  %1291 = extractvalue %dx.types.CBufRet.f32 %1289, 1
  %1292 = extractvalue %dx.types.CBufRet.f32 %1289, 2
  %1293 = fmul fast float %1290, %244
  %1294 = fmul fast float %1291, %244
  %1295 = fmul fast float %1292, %244
  %1296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1297 = extractvalue %dx.types.CBufRet.f32 %1296, 0
  %1298 = extractvalue %dx.types.CBufRet.f32 %1296, 1
  %1299 = extractvalue %dx.types.CBufRet.f32 %1296, 2
  %1300 = fmul fast float %1297, %245
  %1301 = fmul fast float %1298, %245
  %1302 = fmul fast float %1299, %245
  %1303 = fadd fast float %1300, %1293
  %1304 = fadd fast float %1301, %1294
  %1305 = fadd fast float %1302, %1295
  %1306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.f32 %1306, 0
  %1308 = extractvalue %dx.types.CBufRet.f32 %1306, 1
  %1309 = extractvalue %dx.types.CBufRet.f32 %1306, 2
  %1310 = fadd fast float %1303, %1307
  %1311 = fadd fast float %1304, %1308
  %1312 = fadd fast float %1305, %1309
  %1313 = fmul fast float %1310, %1288
  %1314 = fmul fast float %1311, %1288
  %1315 = fmul fast float %1312, %1288
  %1316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1317 = extractvalue %dx.types.CBufRet.f32 %1316, 0
  %1318 = extractvalue %dx.types.CBufRet.f32 %1316, 1
  %1319 = extractvalue %dx.types.CBufRet.f32 %1316, 2
  %1320 = extractvalue %dx.types.CBufRet.f32 %1316, 3
  %1321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1322 = extractvalue %dx.types.CBufRet.f32 %1321, 0
  %1323 = extractvalue %dx.types.CBufRet.f32 %1321, 1
  %1324 = extractvalue %dx.types.CBufRet.f32 %1321, 2
  %1325 = extractvalue %dx.types.CBufRet.f32 %1321, 3
  %1326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.f32 %1326, 0
  %1328 = extractvalue %dx.types.CBufRet.f32 %1326, 1
  %1329 = extractvalue %dx.types.CBufRet.f32 %1326, 2
  %1330 = extractvalue %dx.types.CBufRet.f32 %1326, 3
  %1331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1332 = extractvalue %dx.types.CBufRet.f32 %1331, 0
  %1333 = extractvalue %dx.types.CBufRet.f32 %1331, 1
  %1334 = extractvalue %dx.types.CBufRet.f32 %1331, 2
  %1335 = extractvalue %dx.types.CBufRet.f32 %1331, 3
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 3
  %1338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1339 = extractvalue %dx.types.CBufRet.f32 %1338, 3
  %1340 = extractvalue %dx.types.CBufRet.f32 %1338, 0
  %1341 = extractvalue %dx.types.CBufRet.f32 %1338, 1
  %1342 = extractvalue %dx.types.CBufRet.f32 %1338, 2
  %1343 = fcmp fast olt float %1342, -5.000000e-01
  %1344 = call float @dx.op.dot3.f32(i32 55, float %1313, float %1314, float %1315, float %1313, float %1314, float %1315)  ; Dot3(ax,ay,az,bx,by,bz)
  %1345 = call float @dx.op.unary.f32(i32 25, float %1344)  ; Rsqrt(value)
  %1346 = fmul fast float %1345, %1344
  %1347 = fmul fast float %1345, %1313
  %1348 = fmul fast float %1345, %1314
  %1349 = fmul fast float %1345, %1315
  %1350 = fadd fast float %1346, %1320
  %1351 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %1317, float %1318, float %1319)  ; Dot3(ax,ay,az,bx,by,bz)
  %1352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.i32 %1352, 1
  %1354 = and i32 %1353, 1
  %1355 = icmp ne i32 %1354, 0
  %1356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1357 = extractvalue %dx.types.CBufRet.f32 %1356, 2
  %1358 = fcmp fast ogt float %1357, 0.000000e+00
  %1359 = and i1 %1355, %1358
  br i1 %1359, label %1360, label %1766, !dx.controlflow.hints !57

; <label>:1360                                    ; preds = %1268
  %1361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1361, 3
  %1363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = extractvalue %dx.types.CBufRet.f32 %1363, 2
  %1365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1366 = extractvalue %dx.types.CBufRet.f32 %1365, 2
  %1367 = fsub fast float %1364, %1366
  %1368 = and i32 %1353, 2
  %1369 = extractvalue %dx.types.CBufRet.i32 %1352, 0
  %1370 = call i32 @dx.op.binary.i32(i32 40, i32 %1369, i32 3)  ; UMin(a,b)
  %1371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1372 = extractvalue %dx.types.CBufRet.f32 %1371, 0
  %1373 = extractvalue %dx.types.CBufRet.f32 %1371, 1
  %1374 = extractvalue %dx.types.CBufRet.f32 %1365, 0
  %1375 = extractvalue %dx.types.CBufRet.f32 %1365, 1
  %1376 = fsub fast float %1372, %1374
  %1377 = fsub fast float %1373, %1375
  %1378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.f32 %1378, 0
  %1380 = fcmp fast ogt float %1379, 0.000000e+00
  %1381 = fsub fast float -0.000000e+00, %1376
  %1382 = fsub fast float -0.000000e+00, %1377
  %1383 = call float @dx.op.dot2.f32(i32 54, float %1347, float %1348, float %1347, float %1348)  ; Dot2(ax,ay,bx,by)
  %1384 = call float @dx.op.dot2.f32(i32 54, float %1347, float %1348, float %1381, float %1382)  ; Dot2(ax,ay,bx,by)
  %1385 = fmul fast float %1384, 2.000000e+00
  %1386 = call float @dx.op.dot2.f32(i32 54, float %1381, float %1382, float %1381, float %1382)  ; Dot2(ax,ay,bx,by)
  %1387 = fmul fast float %1379, %1379
  %1388 = fsub fast float %1386, %1387
  %1389 = fmul fast float %1385, %1385
  %1390 = fmul fast float %1383, 4.000000e+00
  %1391 = fmul fast float %1390, %1388
  %1392 = fsub fast float %1389, %1391
  %1393 = fcmp fast ogt float %1392, 0.000000e+00
  br i1 %1393, label %1394, label %1409, !dx.controlflow.hints !58

; <label>:1394                                    ; preds = %1360
  %1395 = fcmp fast ogt float %1385, 0.000000e+00
  %1396 = call float @dx.op.unary.f32(i32 24, float %1392)  ; Sqrt(value)
  %1397 = fsub fast float -0.000000e+00, %1396
  %1398 = select i1 %1395, float %1396, float %1397
  %1399 = fadd fast float %1398, %1385
  %1400 = fmul float %1399, -5.000000e-01
  %1401 = fdiv fast float %1400, %1383
  %1402 = call float @dx.op.binary.f32(i32 35, float %1401, float 0.000000e+00)  ; FMax(a,b)
  %1403 = call float @dx.op.binary.f32(i32 36, float %1346, float %1402)  ; FMin(a,b)
  %1404 = fdiv fast float %1388, %1400
  %1405 = call float @dx.op.binary.f32(i32 35, float %1404, float 0.000000e+00)  ; FMax(a,b)
  %1406 = call float @dx.op.binary.f32(i32 36, float %1346, float %1405)  ; FMin(a,b)
  %1407 = call float @dx.op.binary.f32(i32 36, float %1403, float %1406)  ; FMin(a,b)
  %1408 = call float @dx.op.binary.f32(i32 35, float %1403, float %1406)  ; FMax(a,b)
  br label %1409

; <label>:1409                                    ; preds = %1394, %1360
  %1410 = phi float [ %1408, %1394 ], [ -1.000000e+00, %1360 ]
  %1411 = phi float [ %1407, %1394 ], [ -1.000000e+00, %1360 ]
  %1412 = phi i1 [ true, %1394 ], [ false, %1360 ]
  %1413 = and i1 %1380, %1412
  br i1 %1413, label %1414, label %1416, !dx.controlflow.hints !59

; <label>:1414                                    ; preds = %1409
  %1415 = fcmp fast oeq float %1411, %1410
  br i1 %1415, label %1719, label %1417, !dx.controlflow.hints !60

; <label>:1416                                    ; preds = %1409
  br i1 %1380, label %1719, label %1417, !dx.controlflow.hints !61

; <label>:1417                                    ; preds = %1416, %1414
  %1418 = phi float [ %1346, %1416 ], [ %1410, %1414 ]
  %1419 = phi float [ 0.000000e+00, %1416 ], [ %1411, %1414 ]
  %1420 = icmp ne i32 %1368, 0
  %1421 = fmul fast float %1418, %1349
  %1422 = fadd fast float %1421, %1362
  %1423 = fmul fast float %1422, %1418
  %1424 = select i1 %1420, float 0.000000e+00, float %1423
  %1425 = fcmp fast oeq float %1349, 0.000000e+00
  %1426 = fdiv fast float %1367, %1349
  %1427 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1426)  ; FMax(a,b)
  %1428 = select i1 %1425, float %1418, float %1427
  %1429 = call float @dx.op.binary.f32(i32 36, float %1418, float %1428)  ; FMin(a,b)
  %1430 = fcmp fast ogt float %1349, 0.000000e+00
  %1431 = fcmp fast olt float %1367, 0.000000e+00
  br i1 %1430, label %1432, label %1489, !dx.controlflow.hints !62

; <label>:1432                                    ; preds = %1417
  %1433 = icmp eq i32 %1368, 0
  br i1 %1431, label %1434, label %1478, !dx.controlflow.hints !63

; <label>:1434                                    ; preds = %1432
  %1435 = select i1 %1433, float %1418, float 0.000000e+00
  %1436 = fsub fast float -0.000000e+00, %1435
  %1437 = call float @dx.op.unary.f32(i32 6, float %1436)  ; FAbs(value)
  %1438 = fmul fast float %1435, %1349
  %1439 = fadd fast float %1438, %1362
  %1440 = fmul fast float %1437, %1439
  %1441 = fsub fast float %1424, %1440
  %1442 = fsub fast float %1418, %1437
  %1443 = select i1 %1433, float %1442, float 0.000000e+00
  %1444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1445 = extractvalue %dx.types.CBufRet.f32 %1444, 0
  %1446 = extractvalue %dx.types.CBufRet.f32 %1444, 1
  %1447 = extractvalue %dx.types.CBufRet.f32 %1444, 2
  %1448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1449 = extractvalue %dx.types.CBufRet.f32 %1448, 0
  %1450 = extractvalue %dx.types.CBufRet.f32 %1448, 1
  %1451 = extractvalue %dx.types.CBufRet.f32 %1448, 2
  %1452 = extractvalue %dx.types.CBufRet.f32 %1448, 3
  %1453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1454 = extractvalue %dx.types.CBufRet.f32 %1453, 3
  %1455 = call float @dx.op.binary.f32(i32 36, float %1441, float %1454)  ; FMin(a,b)
  %1456 = fmul fast float %1452, %1443
  %1457 = call float @dx.op.unary.f32(i32 7, float %1456)  ; Saturate(value)
  %1458 = fsub fast float %1449, %1445
  %1459 = fsub fast float %1450, %1446
  %1460 = fsub fast float %1451, %1447
  %1461 = fmul fast float %1457, %1458
  %1462 = fmul fast float %1457, %1459
  %1463 = fmul fast float %1457, %1460
  %1464 = fadd fast float %1461, %1445
  %1465 = fadd fast float %1462, %1446
  %1466 = fadd fast float %1463, %1447
  %1467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1468 = extractvalue %dx.types.CBufRet.f32 %1467, 0
  %1469 = extractvalue %dx.types.CBufRet.f32 %1467, 1
  %1470 = fadd fast float %1469, %1468
  %1471 = call float @dx.op.unary.f32(i32 7, float %1470)  ; Saturate(value)
  %1472 = extractvalue %dx.types.CBufRet.f32 %1467, 2
  %1473 = extractvalue %dx.types.CBufRet.f32 %1467, 3
  %1474 = fadd fast float %1473, %1472
  %1475 = call float @dx.op.unary.f32(i32 7, float %1474)  ; Saturate(value)
  %1476 = fmul fast float %1471, %1455
  %1477 = fmul fast float %1476, %1475
  br label %1719

; <label>:1478                                    ; preds = %1432
  br i1 %1433, label %1479, label %1500, !dx.controlflow.hints !64

; <label>:1479                                    ; preds = %1478
  %1480 = call float @dx.op.binary.f32(i32 36, float %1429, float %1419)  ; FMin(a,b)
  %1481 = fsub fast float %1429, %1480
  %1482 = fsub fast float %1481, %1418
  %1483 = call float @dx.op.unary.f32(i32 6, float %1482)  ; FAbs(value)
  %1484 = fadd fast float %1481, %1418
  %1485 = fmul fast float %1484, %1349
  %1486 = fadd fast float %1485, %1362
  %1487 = fmul fast float %1486, %1483
  %1488 = fsub fast float %1424, %1487
  br label %1500

; <label>:1489                                    ; preds = %1417
  br i1 %1431, label %1490, label %1500, !dx.controlflow.hints !65

; <label>:1490                                    ; preds = %1489
  %1491 = call float @dx.op.binary.f32(i32 35, float %1419, float %1429)  ; FMax(a,b)
  %1492 = icmp eq i32 %1368, 0
  %1493 = select i1 %1492, float %1429, float 0.000000e+00
  %1494 = fsub fast float -0.000000e+00, %1493
  %1495 = call float @dx.op.unary.f32(i32 6, float %1494)  ; FAbs(value)
  %1496 = fmul fast float %1493, %1349
  %1497 = fadd fast float %1496, %1362
  %1498 = fmul fast float %1495, %1497
  %1499 = fsub fast float %1424, %1498
  br label %1500

; <label>:1500                                    ; preds = %1490, %1489, %1479, %1478
  %1501 = phi float [ %1419, %1478 ], [ %1419, %1479 ], [ %1491, %1490 ], [ %1419, %1489 ]
  %1502 = phi float [ 0.000000e+00, %1478 ], [ %1483, %1479 ], [ %1495, %1490 ], [ 0.000000e+00, %1489 ]
  %1503 = phi float [ %1424, %1478 ], [ %1488, %1479 ], [ %1499, %1490 ], [ %1424, %1489 ]
  %1504 = phi float [ %1429, %1478 ], [ %1429, %1479 ], [ %1418, %1490 ], [ %1418, %1489 ]
  %1505 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 0
  store float -1.000000e+00, float* %1505, align 4, !tbaa !66, !noalias !70
  %1506 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 1
  store float -1.000000e+00, float* %1506, align 4, !tbaa !66, !noalias !70
  %1507 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 2
  store float -1.000000e+00, float* %1507, align 4, !tbaa !66, !noalias !70
  %1508 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 0
  store float -1.000000e+00, float* %1508, align 4, !tbaa !66, !noalias !70
  %1509 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 1
  store float -1.000000e+00, float* %1509, align 4, !tbaa !66, !noalias !70
  %1510 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 2
  store float -1.000000e+00, float* %1510, align 4, !tbaa !66, !noalias !70
  %1511 = icmp sgt i32 %1370, 0
  br i1 %1511, label %1512, label %1573

; <label>:1512                                    ; preds = %1500
  br label %1513

; <label>:1513                                    ; preds = %1562, %1512
  %1514 = phi i32 [ %1563, %1562 ], [ 0, %1512 ]
  %1515 = phi i32 [ %1564, %1562 ], [ 0, %1512 ]
  %1516 = add nuw i32 %1515, 171
  %1517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %1516)  ; CBufferLoadLegacy(handle,regIndex)
  %1518 = extractvalue %dx.types.CBufRet.f32 %1517, 0
  %1519 = extractvalue %dx.types.CBufRet.f32 %1517, 1
  %1520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1521 = extractvalue %dx.types.CBufRet.f32 %1520, 0
  %1522 = extractvalue %dx.types.CBufRet.f32 %1520, 1
  %1523 = fsub fast float %1518, %1521
  %1524 = fsub fast float %1519, %1522
  %1525 = extractvalue %dx.types.CBufRet.f32 %1517, 2
  %1526 = fsub fast float -0.000000e+00, %1523
  %1527 = fsub fast float -0.000000e+00, %1524
  %1528 = call float @dx.op.dot2.f32(i32 54, float %1347, float %1348, float %1526, float %1527)  ; Dot2(ax,ay,bx,by)
  %1529 = fmul fast float %1528, 2.000000e+00
  %1530 = call float @dx.op.dot2.f32(i32 54, float %1526, float %1527, float %1526, float %1527)  ; Dot2(ax,ay,bx,by)
  %1531 = fmul fast float %1525, %1525
  %1532 = fsub fast float %1530, %1531
  %1533 = fmul fast float %1529, %1529
  %1534 = fmul fast float %1390, %1532
  %1535 = fsub fast float %1533, %1534
  %1536 = fcmp fast ogt float %1535, 0.000000e+00
  br i1 %1536, label %1537, label %1552, !dx.controlflow.hints !58

; <label>:1537                                    ; preds = %1513
  %1538 = fcmp fast ogt float %1529, 0.000000e+00
  %1539 = call float @dx.op.unary.f32(i32 24, float %1535)  ; Sqrt(value)
  %1540 = fsub fast float -0.000000e+00, %1539
  %1541 = select i1 %1538, float %1539, float %1540
  %1542 = fadd fast float %1541, %1529
  %1543 = fmul float %1542, -5.000000e-01
  %1544 = fdiv fast float %1543, %1383
  %1545 = call float @dx.op.binary.f32(i32 35, float %1544, float 0.000000e+00)  ; FMax(a,b)
  %1546 = call float @dx.op.binary.f32(i32 36, float %1418, float %1545)  ; FMin(a,b)
  %1547 = fdiv fast float %1532, %1543
  %1548 = call float @dx.op.binary.f32(i32 35, float %1547, float 0.000000e+00)  ; FMax(a,b)
  %1549 = call float @dx.op.binary.f32(i32 36, float %1418, float %1548)  ; FMin(a,b)
  %1550 = call float @dx.op.binary.f32(i32 36, float %1546, float %1549)  ; FMin(a,b)
  %1551 = call float @dx.op.binary.f32(i32 35, float %1546, float %1549)  ; FMax(a,b)
  br label %1552

; <label>:1552                                    ; preds = %1537, %1513
  %1553 = phi float [ %1551, %1537 ], [ -1.000000e+00, %1513 ]
  %1554 = phi float [ %1550, %1537 ], [ -1.000000e+00, %1513 ]
  %1555 = phi i1 [ true, %1537 ], [ false, %1513 ]
  br i1 %1555, label %1556, label %1562, !dx.controlflow.hints !81

; <label>:1556                                    ; preds = %1552
  %1557 = call float @dx.op.binary.f32(i32 35, float %1501, float %1554)  ; FMax(a,b)
  %1558 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %1515
  store float %1557, float* %1558, align 4, !tbaa !66, !noalias !70
  %1559 = call float @dx.op.binary.f32(i32 35, float %1501, float %1553)  ; FMax(a,b)
  %1560 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %1515
  store float %1559, float* %1560, align 4, !tbaa !66, !noalias !70
  %1561 = add nsw i32 %1514, 1
  br label %1562

; <label>:1562                                    ; preds = %1556, %1552
  %1563 = phi i32 [ %1561, %1556 ], [ %1514, %1552 ]
  %1564 = add nuw nsw i32 %1515, 1
  %1565 = icmp eq i32 %1564, %1370
  br i1 %1565, label %1566, label %1513

; <label>:1566                                    ; preds = %1562
  %1567 = load float, float* %1507, align 4, !tbaa !66, !alias.scope !82, !noalias !85
  %1568 = load float, float* %1506, align 4, !tbaa !66, !alias.scope !88, !noalias !89
  %1569 = load float, float* %1505, align 4, !tbaa !66, !alias.scope !90, !noalias !91
  %1570 = load float, float* %1510, align 4, !tbaa !66, !alias.scope !92, !noalias !95
  %1571 = load float, float* %1509, align 4, !tbaa !66, !alias.scope !98, !noalias !99
  %1572 = load float, float* %1508, align 4, !tbaa !66, !alias.scope !100, !noalias !101
  br label %1573

; <label>:1573                                    ; preds = %1566, %1500
  %1574 = phi float [ -1.000000e+00, %1500 ], [ %1572, %1566 ]
  %1575 = phi float [ -1.000000e+00, %1500 ], [ %1571, %1566 ]
  %1576 = phi float [ -1.000000e+00, %1500 ], [ %1570, %1566 ]
  %1577 = phi float [ -1.000000e+00, %1500 ], [ %1569, %1566 ]
  %1578 = phi float [ -1.000000e+00, %1500 ], [ %1568, %1566 ]
  %1579 = phi float [ -1.000000e+00, %1500 ], [ %1567, %1566 ]
  %1580 = phi i32 [ 0, %1500 ], [ %1563, %1566 ]
  %1581 = call float @dx.op.binary.f32(i32 36, float %1578, float %1579)  ; FMin(a,b)
  %1582 = call float @dx.op.binary.f32(i32 36, float %1577, float %1581)  ; FMin(a,b)
  %1583 = call float @dx.op.binary.f32(i32 35, float %1577, float %1578)  ; FMax(a,b)
  %1584 = call float @dx.op.binary.f32(i32 36, float %1583, float %1579)  ; FMin(a,b)
  %1585 = call float @dx.op.binary.f32(i32 36, float %1577, float %1578)  ; FMin(a,b)
  %1586 = call float @dx.op.binary.f32(i32 35, float %1585, float %1584)  ; FMax(a,b)
  %1587 = call float @dx.op.binary.f32(i32 35, float %1578, float %1579)  ; FMax(a,b)
  %1588 = call float @dx.op.binary.f32(i32 35, float %1577, float %1587)  ; FMax(a,b)
  store float %1582, float* %1505, align 4, !tbaa !66, !alias.scope !90, !noalias !91
  store float %1586, float* %1506, align 4, !tbaa !66, !alias.scope !88, !noalias !89
  store float %1588, float* %1507, align 4, !tbaa !66, !alias.scope !82, !noalias !85
  %1589 = call float @dx.op.binary.f32(i32 36, float %1575, float %1576)  ; FMin(a,b)
  %1590 = call float @dx.op.binary.f32(i32 36, float %1574, float %1589)  ; FMin(a,b)
  %1591 = call float @dx.op.binary.f32(i32 35, float %1574, float %1575)  ; FMax(a,b)
  %1592 = call float @dx.op.binary.f32(i32 36, float %1591, float %1576)  ; FMin(a,b)
  %1593 = call float @dx.op.binary.f32(i32 36, float %1574, float %1575)  ; FMin(a,b)
  %1594 = call float @dx.op.binary.f32(i32 35, float %1593, float %1592)  ; FMax(a,b)
  %1595 = call float @dx.op.binary.f32(i32 35, float %1575, float %1576)  ; FMax(a,b)
  %1596 = call float @dx.op.binary.f32(i32 35, float %1574, float %1595)  ; FMax(a,b)
  store float %1590, float* %1508, align 4, !tbaa !66, !alias.scope !100, !noalias !101
  store float %1594, float* %1509, align 4, !tbaa !66, !alias.scope !98, !noalias !99
  store float %1596, float* %1510, align 4, !tbaa !66, !alias.scope !92, !noalias !95
  %1597 = sub nsw i32 3, %1580
  %1598 = icmp sgt i32 %1597, 2
  br i1 %1598, label %1599, label %1637, !dx.controlflow.hints !102

; <label>:1599                                    ; preds = %1573
  %1600 = icmp eq i32 %1368, 0
  %1601 = fsub fast float %1418, %1502
  %1602 = select i1 %1600, float %1601, float %1502
  %1603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.f32 %1603, 0
  %1605 = extractvalue %dx.types.CBufRet.f32 %1603, 1
  %1606 = extractvalue %dx.types.CBufRet.f32 %1603, 2
  %1607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1608 = extractvalue %dx.types.CBufRet.f32 %1607, 0
  %1609 = extractvalue %dx.types.CBufRet.f32 %1607, 1
  %1610 = extractvalue %dx.types.CBufRet.f32 %1607, 2
  %1611 = extractvalue %dx.types.CBufRet.f32 %1607, 3
  %1612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1613 = extractvalue %dx.types.CBufRet.f32 %1612, 3
  %1614 = call float @dx.op.binary.f32(i32 36, float %1503, float %1613)  ; FMin(a,b)
  %1615 = fmul fast float %1611, %1602
  %1616 = call float @dx.op.unary.f32(i32 7, float %1615)  ; Saturate(value)
  %1617 = fsub fast float %1608, %1604
  %1618 = fsub fast float %1609, %1605
  %1619 = fsub fast float %1610, %1606
  %1620 = fmul fast float %1616, %1617
  %1621 = fmul fast float %1616, %1618
  %1622 = fmul fast float %1616, %1619
  %1623 = fadd fast float %1620, %1604
  %1624 = fadd fast float %1621, %1605
  %1625 = fadd fast float %1622, %1606
  %1626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1626, 0
  %1628 = extractvalue %dx.types.CBufRet.f32 %1626, 1
  %1629 = fadd fast float %1628, %1627
  %1630 = call float @dx.op.unary.f32(i32 7, float %1629)  ; Saturate(value)
  %1631 = extractvalue %dx.types.CBufRet.f32 %1626, 2
  %1632 = extractvalue %dx.types.CBufRet.f32 %1626, 3
  %1633 = fadd fast float %1632, %1631
  %1634 = call float @dx.op.unary.f32(i32 7, float %1633)  ; Saturate(value)
  %1635 = fmul fast float %1630, %1614
  %1636 = fmul fast float %1635, %1634
  br label %1719

; <label>:1637                                    ; preds = %1573
  %1638 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %1597
  %1639 = load float, float* %1638, align 4, !tbaa !66, !noalias !70
  %1640 = fcmp fast olt float %1639, %1504
  %1641 = icmp sgt i32 %1580, 0
  %1642 = and i1 %1641, %1640
  br i1 %1642, label %1643, label %1680

; <label>:1643                                    ; preds = %1637
  br label %1644

; <label>:1644                                    ; preds = %1673, %1643
  %1645 = phi float [ %1674, %1673 ], [ %1502, %1643 ]
  %1646 = phi float [ %1675, %1673 ], [ %1503, %1643 ]
  %1647 = phi float [ %1655, %1673 ], [ %1639, %1643 ]
  %1648 = phi i32 [ %1652, %1673 ], [ %1597, %1643 ]
  %1649 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %1648
  %1650 = load float, float* %1649, align 4, !tbaa !66, !noalias !70
  %1651 = icmp slt i32 %1648, 2
  %1652 = add nsw i32 %1648, 1
  %1653 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %1652
  %1654 = load float, float* %1653, align 4, !tbaa !66, !noalias !70
  %1655 = select i1 %1651, float %1654, float %1418
  %1656 = call float @dx.op.binary.f32(i32 36, float %1655, float %1650)  ; FMin(a,b)
  %1657 = call float @dx.op.binary.f32(i32 36, float %1504, float %1656)  ; FMin(a,b)
  %1658 = icmp eq i32 %1368, 0
  %1659 = fadd fast float %1657, %1647
  %1660 = fmul fast float %1659, %1349
  %1661 = fadd fast float %1660, %1362
  br i1 %1658, label %1667, label %1662, !dx.controlflow.hints !103

; <label>:1662                                    ; preds = %1644
  %1663 = fsub fast float %1657, %1647
  %1664 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1663)  ; FMax(a,b)
  %1665 = fmul fast float %1664, %1661
  %1666 = fadd fast float %1665, %1646
  br label %1673

; <label>:1667                                    ; preds = %1644
  %1668 = fsub fast float %1647, %1657
  %1669 = call float @dx.op.unary.f32(i32 6, float %1668)  ; FAbs(value)
  %1670 = fadd fast float %1669, %1645
  %1671 = fmul fast float %1669, %1661
  %1672 = fsub fast float %1646, %1671
  br label %1673

; <label>:1673                                    ; preds = %1667, %1662
  %1674 = phi float [ %1664, %1662 ], [ %1670, %1667 ]
  %1675 = phi float [ %1666, %1662 ], [ %1672, %1667 ]
  %1676 = fcmp fast olt float %1655, %1504
  %1677 = icmp slt i32 %1652, 3
  %1678 = and i1 %1677, %1676
  br i1 %1678, label %1644, label %1679

; <label>:1679                                    ; preds = %1673
  br label %1680

; <label>:1680                                    ; preds = %1679, %1637
  %1681 = phi float [ %1502, %1637 ], [ %1674, %1679 ]
  %1682 = phi float [ %1503, %1637 ], [ %1675, %1679 ]
  %1683 = fsub fast float %1418, %1681
  %1684 = select i1 %1420, float %1681, float %1683
  %1685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1686 = extractvalue %dx.types.CBufRet.f32 %1685, 0
  %1687 = extractvalue %dx.types.CBufRet.f32 %1685, 1
  %1688 = extractvalue %dx.types.CBufRet.f32 %1685, 2
  %1689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1690 = extractvalue %dx.types.CBufRet.f32 %1689, 0
  %1691 = extractvalue %dx.types.CBufRet.f32 %1689, 1
  %1692 = extractvalue %dx.types.CBufRet.f32 %1689, 2
  %1693 = extractvalue %dx.types.CBufRet.f32 %1689, 3
  %1694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1695 = extractvalue %dx.types.CBufRet.f32 %1694, 3
  %1696 = call float @dx.op.binary.f32(i32 36, float %1682, float %1695)  ; FMin(a,b)
  %1697 = fmul fast float %1693, %1684
  %1698 = call float @dx.op.unary.f32(i32 7, float %1697)  ; Saturate(value)
  %1699 = fsub fast float %1690, %1686
  %1700 = fsub fast float %1691, %1687
  %1701 = fsub fast float %1692, %1688
  %1702 = fmul fast float %1698, %1699
  %1703 = fmul fast float %1698, %1700
  %1704 = fmul fast float %1698, %1701
  %1705 = fadd fast float %1702, %1686
  %1706 = fadd fast float %1703, %1687
  %1707 = fadd fast float %1704, %1688
  %1708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1709 = extractvalue %dx.types.CBufRet.f32 %1708, 0
  %1710 = extractvalue %dx.types.CBufRet.f32 %1708, 1
  %1711 = fadd fast float %1710, %1709
  %1712 = call float @dx.op.unary.f32(i32 7, float %1711)  ; Saturate(value)
  %1713 = extractvalue %dx.types.CBufRet.f32 %1708, 2
  %1714 = extractvalue %dx.types.CBufRet.f32 %1708, 3
  %1715 = fadd fast float %1714, %1713
  %1716 = call float @dx.op.unary.f32(i32 7, float %1715)  ; Saturate(value)
  %1717 = fmul fast float %1712, %1696
  %1718 = fmul fast float %1717, %1716
  br label %1719

; <label>:1719                                    ; preds = %1680, %1599, %1434, %1416, %1414
  %1720 = phi float [ %1443, %1434 ], [ %1602, %1599 ], [ %1684, %1680 ], [ 0.000000e+00, %1414 ], [ 0.000000e+00, %1416 ]
  %1721 = phi float [ %1477, %1434 ], [ %1636, %1599 ], [ %1718, %1680 ], [ 0.000000e+00, %1414 ], [ 0.000000e+00, %1416 ]
  %1722 = phi float [ %1464, %1434 ], [ %1623, %1599 ], [ %1705, %1680 ], [ 0.000000e+00, %1414 ], [ 0.000000e+00, %1416 ]
  %1723 = phi float [ %1465, %1434 ], [ %1624, %1599 ], [ %1706, %1680 ], [ 0.000000e+00, %1414 ], [ 0.000000e+00, %1416 ]
  %1724 = phi float [ %1466, %1434 ], [ %1625, %1599 ], [ %1707, %1680 ], [ 0.000000e+00, %1414 ], [ 0.000000e+00, %1416 ]
  %1725 = fmul fast float %1357, %1721
  %1726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1727 = extractvalue %dx.types.CBufRet.f32 %1726, 2
  %1728 = fsub fast float %1364, %1727
  %1729 = fcmp fast olt float %1725, -2.000000e+01
  %1730 = call float @dx.op.unary.f32(i32 21, float %1725)  ; Exp(value)
  %1731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1732 = extractvalue %dx.types.CBufRet.f32 %1731, 2
  %1733 = extractvalue %dx.types.CBufRet.f32 %1731, 3
  %1734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1735 = extractvalue %dx.types.CBufRet.f32 %1734, 2
  %1736 = fmul fast float %1733, %1728
  %1737 = call float @dx.op.unary.f32(i32 7, float %1736)  ; Saturate(value)
  %1738 = fsub fast float 1.000000e+00, %1737
  %1739 = fmul fast float %1349, 5.000000e-01
  %1740 = fadd fast float %1739, 5.000000e-01
  %1741 = call float @dx.op.unary.f32(i32 7, float %1740)  ; Saturate(value)
  %1742 = fsub fast float 1.000000e+00, %1741
  %1743 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1738)  ; FMax(a,b)
  %1744 = fdiv fast float %1742, %1743
  %1745 = fsub fast float %1728, %1315
  %1746 = call float @dx.op.unary.f32(i32 6, float %1745)  ; FAbs(value)
  %1747 = fmul fast float %1746, %1732
  %1748 = call float @dx.op.unary.f32(i32 7, float %1744)  ; Saturate(value)
  %1749 = fsub fast float 1.000000e+00, %1747
  %1750 = fmul fast float %1749, %1748
  %1751 = fadd fast float %1750, %1747
  %1752 = fmul fast float %1735, %1728
  %1753 = call float @dx.op.unary.f32(i32 7, float %1752)  ; Saturate(value)
  %1754 = fsub fast float 1.000000e+00, %1751
  %1755 = fmul fast float %1754, %1753
  %1756 = fadd fast float %1755, %1751
  %1757 = call float @dx.op.unary.f32(i32 7, float %1756)  ; Saturate(value)
  %1758 = fadd fast float %1730, -1.000000e+00
  %1759 = select i1 %1729, float -1.000000e+00, float %1758
  %1760 = fmul fast float %1757, %1759
  %1761 = fadd fast float %1760, 1.000000e+00
  %1762 = fsub fast float -0.000000e+00, %1760
  %1763 = fmul fast float %1722, %1762
  %1764 = fmul fast float %1723, %1762
  %1765 = fmul fast float %1724, %1762
  br label %1766

; <label>:1766                                    ; preds = %1719, %1268
  %1767 = phi float [ %1720, %1719 ], [ 0.000000e+00, %1268 ]
  %1768 = phi float [ %1761, %1719 ], [ 1.000000e+00, %1268 ]
  %1769 = phi float [ %1763, %1719 ], [ 0.000000e+00, %1268 ]
  %1770 = phi float [ %1764, %1719 ], [ 0.000000e+00, %1268 ]
  %1771 = phi float [ %1765, %1719 ], [ 0.000000e+00, %1268 ]
  %1772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1773 = extractvalue %dx.types.CBufRet.f32 %1772, 1
  %1774 = fsub fast float 1.000000e+00, %1768
  %1775 = fmul fast float %1774, %1350
  %1776 = fmul fast float %1775, %1773
  %1777 = fsub fast float %1350, %1776
  br i1 %1343, label %1778, label %1807, !dx.controlflow.hints !104

; <label>:1778                                    ; preds = %1766
  %1779 = fmul fast float %1351, %1340
  %1780 = fadd fast float %1779, %1341
  %1781 = call float @dx.op.unary.f32(i32 7, float %1780)  ; Saturate(value)
  %1782 = fmul fast float %1322, %1777
  %1783 = fsub fast float -0.000000e+00, %1782
  %1784 = fmul fast float %1323, %1777
  %1785 = fsub fast float -0.000000e+00, %1784
  %1786 = call float @dx.op.unary.f32(i32 21, float %1783)  ; Exp(value)
  %1787 = call float @dx.op.unary.f32(i32 21, float %1785)  ; Exp(value)
  %1788 = call float @dx.op.binary.f32(i32 35, float %1330, float %1786)  ; FMax(a,b)
  %1789 = call float @dx.op.binary.f32(i32 35, float %1330, float %1787)  ; FMax(a,b)
  %1790 = fsub fast float %1789, %1788
  %1791 = fmul fast float %1790, %1781
  %1792 = fadd fast float %1791, %1788
  %1793 = call float @dx.op.unary.f32(i32 7, float %1792)  ; Saturate(value)
  %1794 = fsub fast float %1327, %1332
  %1795 = fsub fast float %1328, %1333
  %1796 = fsub fast float %1329, %1334
  %1797 = fmul fast float %1781, %1794
  %1798 = fmul fast float %1781, %1795
  %1799 = fmul fast float %1781, %1796
  %1800 = fadd fast float %1797, %1332
  %1801 = fadd fast float %1798, %1333
  %1802 = fadd fast float %1799, %1334
  %1803 = fsub fast float 1.000000e+00, %1793
  %1804 = fmul fast float %1803, %1800
  %1805 = fmul fast float %1803, %1801
  %1806 = fmul fast float %1803, %1802
  br label %1866

; <label>:1807                                    ; preds = %1766
  %1808 = fmul fast float %1777, %1339
  %1809 = call float @dx.op.unary.f32(i32 7, float %1808)  ; Saturate(value)
  %1810 = fsub fast float 2.000000e+00, %1809
  %1811 = fmul fast float %1809, 9.921875e-01
  %1812 = fmul fast float %1811, %1810
  %1813 = fadd fast float %1812, 3.906250e-03
  %1814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1813, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1815 = extractvalue %dx.types.ResRet.f32 %1814, 0
  %1816 = fsub fast float %1809, %1815
  %1817 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1816)  ; FMax(a,b)
  %1818 = fmul fast float %1325, %1315
  %1819 = call float @dx.op.unary.f32(i32 6, float %1818)  ; FAbs(value)
  %1820 = fcmp fast ogt float %1819, 0x3EB0C6F7A0000000
  br i1 %1820, label %1821, label %1827, !dx.controlflow.hints !105

; <label>:1821                                    ; preds = %1807
  %1822 = fmul fast float %1818, 0xBFF7154760000000
  %1823 = call float @dx.op.unary.f32(i32 21, float %1822)  ; Exp(value)
  %1824 = fsub fast float 1.000000e+00, %1823
  %1825 = fdiv fast float %1824, %1818
  %1826 = fmul fast float %1825, %1335
  br label %1827

; <label>:1827                                    ; preds = %1821, %1807
  %1828 = phi float [ %1826, %1821 ], [ %1335, %1807 ]
  %1829 = fadd fast float %1828, %1337
  %1830 = fmul fast float %1829, %1817
  %1831 = fmul fast float %1322, %1830
  %1832 = fsub fast float -0.000000e+00, %1831
  %1833 = fmul fast float %1323, %1830
  %1834 = fsub fast float -0.000000e+00, %1833
  %1835 = fmul fast float %1324, %1830
  %1836 = fsub fast float -0.000000e+00, %1835
  %1837 = call float @dx.op.unary.f32(i32 21, float %1832)  ; Exp(value)
  %1838 = call float @dx.op.unary.f32(i32 21, float %1834)  ; Exp(value)
  %1839 = call float @dx.op.unary.f32(i32 21, float %1836)  ; Exp(value)
  %1840 = fmul fast float %1351, %1351
  %1841 = fadd fast float %1840, 1.000000e+00
  %1842 = fmul fast float %1841, 0x3FAE8EC8A0000000
  %1843 = fmul fast float %1842, %1332
  %1844 = fmul fast float %1842, %1333
  %1845 = fmul fast float %1842, %1334
  %1846 = fmul fast float %1351, %1330
  %1847 = fsub fast float 1.000000e+00, %1846
  %1848 = fmul fast float %1330, %1330
  %1849 = fsub fast float 1.000000e+00, %1848
  %1850 = fmul fast float %1849, 0x3FB45F3060000000
  %1851 = fmul fast float %1847, %1847
  %1852 = fdiv fast float 1.000000e+00, %1851
  %1853 = fmul fast float %1850, %1852
  %1854 = fmul fast float %1853, %1327
  %1855 = fmul fast float %1853, %1328
  %1856 = fmul fast float %1853, %1329
  %1857 = fadd fast float %1854, %1843
  %1858 = fadd fast float %1855, %1844
  %1859 = fadd fast float %1856, %1845
  %1860 = fsub fast float 1.000000e+00, %1837
  %1861 = fsub fast float 1.000000e+00, %1838
  %1862 = fsub fast float 1.000000e+00, %1839
  %1863 = fmul fast float %1857, %1860
  %1864 = fmul fast float %1858, %1861
  %1865 = fmul fast float %1859, %1862
  br label %1866

; <label>:1866                                    ; preds = %1827, %1778
  %1867 = phi float [ %1804, %1778 ], [ %1863, %1827 ]
  %1868 = phi float [ %1805, %1778 ], [ %1864, %1827 ]
  %1869 = phi float [ %1806, %1778 ], [ %1865, %1827 ]
  %1870 = phi float [ %1793, %1778 ], [ %1837, %1827 ]
  %1871 = phi float [ %1793, %1778 ], [ %1838, %1827 ]
  %1872 = phi float [ %1793, %1778 ], [ %1839, %1827 ]
  br i1 %1359, label %1873, label %2071, !dx.controlflow.hints !106

; <label>:1873                                    ; preds = %1866
  %1874 = extractvalue %dx.types.CBufRet.f32 %1772, 0
  %1875 = fmul fast float %1874, %1774
  %1876 = fsub fast float %1769, %1867
  %1877 = fsub fast float %1770, %1868
  %1878 = fsub fast float %1771, %1869
  %1879 = fmul fast float %1875, %1876
  %1880 = fmul fast float %1875, %1877
  %1881 = fmul fast float %1875, %1878
  %1882 = fadd fast float %1879, %1867
  %1883 = fadd fast float %1880, %1868
  %1884 = fadd fast float %1881, %1869
  %1885 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1870)  ; FMax(a,b)
  %1886 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1871)  ; FMax(a,b)
  %1887 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1872)  ; FMax(a,b)
  %1888 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1768)  ; FMax(a,b)
  %1889 = call float @dx.op.binary.f32(i32 35, float %1767, float %1777)  ; FMax(a,b)
  %1890 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1889)  ; FMax(a,b)
  %1891 = fdiv fast float %1767, %1890
  %1892 = call float @dx.op.unary.f32(i32 7, float %1891)  ; Saturate(value)
  %1893 = fdiv fast float %1777, %1890
  %1894 = call float @dx.op.unary.f32(i32 7, float %1893)  ; Saturate(value)
  %1895 = fcmp fast une float %1888, 1.000000e+00
  br i1 %1895, label %1896, label %1909, !dx.controlflow.hints !107

; <label>:1896                                    ; preds = %1873
  %1897 = call float @dx.op.unary.f32(i32 23, float %1888)  ; Log(value)
  %1898 = fmul fast float %1897, 0x3FE62E4300000000
  %1899 = fmul fast float %1769, %1898
  %1900 = fsub fast float -0.000000e+00, %1899
  %1901 = fmul fast float %1770, %1898
  %1902 = fsub fast float -0.000000e+00, %1901
  %1903 = fmul fast float %1771, %1898
  %1904 = fsub fast float -0.000000e+00, %1903
  %1905 = fsub fast float 1.000000e+00, %1888
  %1906 = fdiv fast float %1900, %1905
  %1907 = fdiv fast float %1902, %1905
  %1908 = fdiv fast float %1904, %1905
  br label %1909

; <label>:1909                                    ; preds = %1896, %1873
  %1910 = phi float [ %1906, %1896 ], [ %1769, %1873 ]
  %1911 = phi float [ %1907, %1896 ], [ %1770, %1873 ]
  %1912 = phi float [ %1908, %1896 ], [ %1771, %1873 ]
  %1913 = phi float [ %1898, %1896 ], [ 0.000000e+00, %1873 ]
  %1914 = fcmp fast une float %1885, 1.000000e+00
  br i1 %1914, label %1915, label %1922, !dx.controlflow.hints !108

; <label>:1915                                    ; preds = %1909
  %1916 = call float @dx.op.unary.f32(i32 23, float %1885)  ; Log(value)
  %1917 = fmul fast float %1916, 0x3FE62E4300000000
  %1918 = fmul fast float %1882, %1917
  %1919 = fsub fast float -0.000000e+00, %1918
  %1920 = fsub fast float 1.000000e+00, %1885
  %1921 = fdiv fast float %1919, %1920
  br label %1922

; <label>:1922                                    ; preds = %1915, %1909
  %1923 = phi float [ %1921, %1915 ], [ %1882, %1909 ]
  %1924 = phi float [ %1917, %1915 ], [ 0.000000e+00, %1909 ]
  %1925 = fcmp fast une float %1886, 1.000000e+00
  br i1 %1925, label %1926, label %1933, !dx.controlflow.hints !108

; <label>:1926                                    ; preds = %1922
  %1927 = call float @dx.op.unary.f32(i32 23, float %1886)  ; Log(value)
  %1928 = fmul fast float %1927, 0x3FE62E4300000000
  %1929 = fmul fast float %1883, %1928
  %1930 = fsub fast float -0.000000e+00, %1929
  %1931 = fsub fast float 1.000000e+00, %1886
  %1932 = fdiv fast float %1930, %1931
  br label %1933

; <label>:1933                                    ; preds = %1926, %1922
  %1934 = phi float [ %1932, %1926 ], [ %1883, %1922 ]
  %1935 = phi float [ %1928, %1926 ], [ 0.000000e+00, %1922 ]
  %1936 = fcmp fast une float %1887, 1.000000e+00
  br i1 %1936, label %1937, label %1944, !dx.controlflow.hints !108

; <label>:1937                                    ; preds = %1933
  %1938 = call float @dx.op.unary.f32(i32 23, float %1887)  ; Log(value)
  %1939 = fmul fast float %1938, 0x3FE62E4300000000
  %1940 = fmul fast float %1884, %1939
  %1941 = fsub fast float -0.000000e+00, %1940
  %1942 = fsub fast float 1.000000e+00, %1887
  %1943 = fdiv fast float %1941, %1942
  br label %1944

; <label>:1944                                    ; preds = %1937, %1933
  %1945 = phi float [ %1943, %1937 ], [ %1884, %1933 ]
  %1946 = phi float [ %1939, %1937 ], [ 0.000000e+00, %1933 ]
  %1947 = fmul fast float %1910, %1894
  %1948 = fmul fast float %1911, %1894
  %1949 = fmul fast float %1912, %1894
  %1950 = fmul fast float %1913, %1894
  %1951 = fmul fast float %1923, %1892
  %1952 = fmul fast float %1934, %1892
  %1953 = fmul fast float %1945, %1892
  %1954 = fmul fast float %1924, %1892
  %1955 = fmul fast float %1935, %1892
  %1956 = fmul fast float %1946, %1892
  %1957 = fadd fast float %1951, %1947
  %1958 = fadd fast float %1952, %1948
  %1959 = fadd fast float %1953, %1949
  %1960 = fadd fast float %1954, %1950
  %1961 = fadd fast float %1955, %1950
  %1962 = fadd fast float %1956, %1950
  %1963 = fcmp fast une float %1960, 0.000000e+00
  br i1 %1963, label %1964, label %1971, !dx.controlflow.hints !109

; <label>:1964                                    ; preds = %1944
  %1965 = fmul fast float %1960, 0x3FF7154760000000
  %1966 = call float @dx.op.unary.f32(i32 21, float %1965)  ; Exp(value)
  %1967 = fsub fast float 1.000000e+00, %1966
  %1968 = fmul fast float %1957, %1967
  %1969 = fsub fast float -0.000000e+00, %1968
  %1970 = fdiv fast float %1969, %1960
  br label %1971

; <label>:1971                                    ; preds = %1964, %1944
  %1972 = phi float [ %1966, %1964 ], [ 1.000000e+00, %1944 ]
  %1973 = phi float [ %1970, %1964 ], [ %1957, %1944 ]
  %1974 = fcmp fast une float %1961, 0.000000e+00
  br i1 %1974, label %1975, label %1982, !dx.controlflow.hints !109

; <label>:1975                                    ; preds = %1971
  %1976 = fmul fast float %1961, 0x3FF7154760000000
  %1977 = call float @dx.op.unary.f32(i32 21, float %1976)  ; Exp(value)
  %1978 = fsub fast float 1.000000e+00, %1977
  %1979 = fmul fast float %1958, %1978
  %1980 = fsub fast float -0.000000e+00, %1979
  %1981 = fdiv fast float %1980, %1961
  br label %1982

; <label>:1982                                    ; preds = %1975, %1971
  %1983 = phi float [ %1977, %1975 ], [ 1.000000e+00, %1971 ]
  %1984 = phi float [ %1981, %1975 ], [ %1958, %1971 ]
  %1985 = fcmp fast une float %1962, 0.000000e+00
  br i1 %1985, label %1986, label %1993, !dx.controlflow.hints !109

; <label>:1986                                    ; preds = %1982
  %1987 = fmul fast float %1962, 0x3FF7154760000000
  %1988 = call float @dx.op.unary.f32(i32 21, float %1987)  ; Exp(value)
  %1989 = fsub fast float 1.000000e+00, %1988
  %1990 = fmul fast float %1959, %1989
  %1991 = fsub fast float -0.000000e+00, %1990
  %1992 = fdiv fast float %1991, %1962
  br label %1993

; <label>:1993                                    ; preds = %1986, %1982
  %1994 = phi float [ %1988, %1986 ], [ 1.000000e+00, %1982 ]
  %1995 = phi float [ %1992, %1986 ], [ %1959, %1982 ]
  %1996 = fcmp fast ogt float %1892, %1894
  br i1 %1996, label %1997, label %2017, !dx.controlflow.hints !110

; <label>:1997                                    ; preds = %1993
  %1998 = fsub fast float 1.000000e+00, %1894
  %1999 = fmul fast float %1910, %1998
  %2000 = fmul fast float %1911, %1998
  %2001 = fmul fast float %1912, %1998
  %2002 = fmul fast float %1913, %1998
  %2003 = fcmp fast une float %2002, 0.000000e+00
  br i1 %2003, label %2004, label %2055, !dx.controlflow.hints !111

; <label>:2004                                    ; preds = %1997
  %2005 = fmul fast float %2002, 0x3FF7154760000000
  %2006 = call float @dx.op.unary.f32(i32 21, float %2005)  ; Exp(value)
  %2007 = fsub fast float 1.000000e+00, %2006
  %2008 = fmul fast float %1999, %2007
  %2009 = fsub fast float -0.000000e+00, %2008
  %2010 = fmul fast float %2000, %2007
  %2011 = fsub fast float -0.000000e+00, %2010
  %2012 = fmul fast float %2001, %2007
  %2013 = fsub fast float -0.000000e+00, %2012
  %2014 = fdiv fast float %2009, %2002
  %2015 = fdiv fast float %2011, %2002
  %2016 = fdiv fast float %2013, %2002
  br label %2055

; <label>:2017                                    ; preds = %1993
  %2018 = fsub fast float 1.000000e+00, %1892
  %2019 = fmul fast float %1923, %2018
  %2020 = fmul fast float %1934, %2018
  %2021 = fmul fast float %1945, %2018
  %2022 = fmul fast float %1924, %2018
  %2023 = fmul fast float %1935, %2018
  %2024 = fmul fast float %1946, %2018
  %2025 = fcmp fast une float %2022, 0.000000e+00
  br i1 %2025, label %2026, label %2033, !dx.controlflow.hints !109

; <label>:2026                                    ; preds = %2017
  %2027 = fmul fast float %2022, 0x3FF7154760000000
  %2028 = call float @dx.op.unary.f32(i32 21, float %2027)  ; Exp(value)
  %2029 = fsub fast float 1.000000e+00, %2028
  %2030 = fmul fast float %2019, %2029
  %2031 = fsub fast float -0.000000e+00, %2030
  %2032 = fdiv fast float %2031, %2022
  br label %2033

; <label>:2033                                    ; preds = %2026, %2017
  %2034 = phi float [ %2032, %2026 ], [ %2019, %2017 ]
  %2035 = phi float [ %2028, %2026 ], [ 1.000000e+00, %2017 ]
  %2036 = fcmp fast une float %2023, 0.000000e+00
  br i1 %2036, label %2037, label %2044, !dx.controlflow.hints !109

; <label>:2037                                    ; preds = %2033
  %2038 = fmul fast float %2023, 0x3FF7154760000000
  %2039 = call float @dx.op.unary.f32(i32 21, float %2038)  ; Exp(value)
  %2040 = fsub fast float 1.000000e+00, %2039
  %2041 = fmul fast float %2020, %2040
  %2042 = fsub fast float -0.000000e+00, %2041
  %2043 = fdiv fast float %2042, %2023
  br label %2044

; <label>:2044                                    ; preds = %2037, %2033
  %2045 = phi float [ %2043, %2037 ], [ %2020, %2033 ]
  %2046 = phi float [ %2039, %2037 ], [ 1.000000e+00, %2033 ]
  %2047 = fcmp fast une float %2024, 0.000000e+00
  br i1 %2047, label %2048, label %2055, !dx.controlflow.hints !109

; <label>:2048                                    ; preds = %2044
  %2049 = fmul fast float %2024, 0x3FF7154760000000
  %2050 = call float @dx.op.unary.f32(i32 21, float %2049)  ; Exp(value)
  %2051 = fsub fast float 1.000000e+00, %2050
  %2052 = fmul fast float %2021, %2051
  %2053 = fsub fast float -0.000000e+00, %2052
  %2054 = fdiv fast float %2053, %2024
  br label %2055

; <label>:2055                                    ; preds = %2048, %2044, %2004, %1997
  %2056 = phi float [ %2054, %2048 ], [ %2016, %2004 ], [ %2001, %1997 ], [ %2021, %2044 ]
  %2057 = phi float [ %2045, %2048 ], [ %2015, %2004 ], [ %2000, %1997 ], [ %2045, %2044 ]
  %2058 = phi float [ %2034, %2048 ], [ %2014, %2004 ], [ %1999, %1997 ], [ %2034, %2044 ]
  %2059 = phi float [ %2050, %2048 ], [ %2006, %2004 ], [ 1.000000e+00, %1997 ], [ 1.000000e+00, %2044 ]
  %2060 = phi float [ %2046, %2048 ], [ %2006, %2004 ], [ 1.000000e+00, %1997 ], [ %2046, %2044 ]
  %2061 = phi float [ %2035, %2048 ], [ %2006, %2004 ], [ 1.000000e+00, %1997 ], [ %2035, %2044 ]
  %2062 = fmul fast float %2061, %1973
  %2063 = fmul fast float %2060, %1984
  %2064 = fmul fast float %2059, %1995
  %2065 = fadd fast float %2062, %2058
  %2066 = fadd fast float %2063, %2057
  %2067 = fadd fast float %2064, %2056
  %2068 = fmul fast float %2061, %1972
  %2069 = fmul fast float %2060, %1983
  %2070 = fmul fast float %2059, %1994
  br label %2071

; <label>:2071                                    ; preds = %2055, %1866
  %2072 = phi float [ %1872, %1866 ], [ %2070, %2055 ]
  %2073 = phi float [ %1871, %1866 ], [ %2069, %2055 ]
  %2074 = phi float [ %1870, %1866 ], [ %2068, %2055 ]
  %2075 = phi float [ %1869, %1866 ], [ %2067, %2055 ]
  %2076 = phi float [ %1868, %1866 ], [ %2066, %2055 ]
  %2077 = phi float [ %1867, %1866 ], [ %2065, %2055 ]
  %2078 = fmul fast float %2074, %1215
  %2079 = fmul fast float %2073, %1216
  %2080 = fmul fast float %2072, %1217
  %2081 = fsub fast float 1.000000e+00, %1278
  %2082 = fmul fast float %2077, %2081
  %2083 = fmul fast float %2076, %2081
  %2084 = fmul fast float %2075, %2081
  %2085 = fadd fast float %2082, %2078
  %2086 = fadd fast float %2083, %2079
  %2087 = fadd fast float %2084, %2080
  %2088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2089 = extractvalue %dx.types.CBufRet.f32 %2088, 2
  %2090 = fmul fast float %2089, %1288
  %2091 = call float @dx.op.unary.f32(i32 7, float %2090)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %20, i32 %21, i32 undef, float %1278, float %1278, float %1278, float %1278, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2093 = extractvalue %dx.types.CBufRet.f32 %2092, 0
  %2094 = fmul fast float %2093, %2085
  %2095 = fmul fast float %2093, %2086
  %2096 = fmul fast float %2093, %2087
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %20, i32 %21, i32 undef, float %2094, float %2095, float %2096, float %2094, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %20, i32 %21, i32 undef, float %2091, float %2091, float %2091, float %2091, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!4 = !{!5, !16, !22, !25}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!16 = !{!17, !18, !19, !20}
!17 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!18 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!19 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!20 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !21}
!21 = !{i32 0, i32 14}
!22 = !{!23, !24}
!23 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!24 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!25 = !{!26, !27, !28, !29}
!26 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!27 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!28 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!29 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!30 = !{void ()* @cs_fog_raymarching_air_clouds, !"cs_fog_raymarching_air_clouds", null, !4, !31}
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
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
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
!66 = !{!67, !67, i64 0}
!67 = !{!"float", !68, i64 0}
!68 = !{!"omnipotent char", !69, i64 0}
!69 = !{!"Simple C/C++ TBAA"}
!70 = !{!71, !73, !75, !76, !78, !79, !80}
!71 = distinct !{!71, !72, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!72 = distinct !{!72, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!73 = distinct !{!73, !74, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!74 = distinct !{!74, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!75 = distinct !{!75, !74, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!76 = distinct !{!76, !77, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!77 = distinct !{!77, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!78 = distinct !{!78, !77, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!79 = distinct !{!79, !77, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!80 = distinct !{!80, !77, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = !{!83}
!83 = distinct !{!83, !84, !"\01?sort@@YAXAIAM00@Z: %c"}
!84 = distinct !{!84, !"\01?sort@@YAXAIAM00@Z"}
!85 = !{!86, !87, !71, !73, !75, !76, !78, !79, !80}
!86 = distinct !{!86, !84, !"\01?sort@@YAXAIAM00@Z: %a"}
!87 = distinct !{!87, !84, !"\01?sort@@YAXAIAM00@Z: %b"}
!88 = !{!87}
!89 = !{!86, !83, !71, !73, !75, !76, !78, !79, !80}
!90 = !{!86}
!91 = !{!87, !83, !71, !73, !75, !76, !78, !79, !80}
!92 = !{!93}
!93 = distinct !{!93, !94, !"\01?sort@@YAXAIAM00@Z: %c"}
!94 = distinct !{!94, !"\01?sort@@YAXAIAM00@Z"}
!95 = !{!96, !97, !71, !73, !75, !76, !78, !79, !80}
!96 = distinct !{!96, !94, !"\01?sort@@YAXAIAM00@Z: %a"}
!97 = distinct !{!97, !94, !"\01?sort@@YAXAIAM00@Z: %b"}
!98 = !{!97}
!99 = !{!96, !93, !71, !73, !75, !76, !78, !79, !80}
!100 = !{!96}
!101 = !{!97, !93, !71, !73, !75, !76, !78, !79, !80}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}

