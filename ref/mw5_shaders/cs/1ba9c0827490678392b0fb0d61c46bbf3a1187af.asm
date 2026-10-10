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
; shader hash: 6f526603b3aff874efd0b0e70ae84a47
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

define void @cs_fog_raymarching_clouds() {
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
  %236 = extractvalue %dx.types.CBufRet.f32 %234, 1
  %237 = extractvalue %dx.types.CBufRet.f32 %234, 2
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 1
  %240 = fmul fast float %232, 2.000000e+00
  %241 = fmul fast float %233, 2.000000e+00
  %242 = fsub fast float 1.000000e+00, %240
  %243 = fsub fast float 1.000000e+00, %241
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 0
  %246 = extractvalue %dx.types.CBufRet.f32 %244, 1
  %247 = extractvalue %dx.types.CBufRet.f32 %244, 2
  %248 = fmul fast float %245, %242
  %249 = fmul fast float %246, %242
  %250 = fmul fast float %247, %242
  %251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.f32 %251, 0
  %253 = extractvalue %dx.types.CBufRet.f32 %251, 1
  %254 = extractvalue %dx.types.CBufRet.f32 %251, 2
  %255 = fmul fast float %252, %243
  %256 = fmul fast float %253, %243
  %257 = fmul fast float %254, %243
  %258 = fadd fast float %255, %248
  %259 = fadd fast float %256, %249
  %260 = fadd fast float %257, %250
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 0
  %263 = extractvalue %dx.types.CBufRet.f32 %261, 1
  %264 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %265 = fadd fast float %258, %262
  %266 = fadd fast float %259, %263
  %267 = fadd fast float %260, %264
  %268 = fmul fast float %265, %239
  %269 = fmul fast float %266, %239
  %270 = fmul fast float %267, %239
  %271 = fmul fast float %268, %268
  %272 = fmul fast float %269, %269
  %273 = fadd fast float %271, %272
  %274 = fmul fast float %270, %270
  %275 = fadd fast float %273, %274
  %276 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %277 = fdiv fast float 1.000000e+00, %276
  %278 = fmul fast float %268, %277
  %279 = fmul fast float %269, %277
  %280 = fmul fast float %270, %277
  %281 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %35, i32 %36, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 0
  %283 = fcmp fast ogt float %282, -1.000000e+00
  %284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.f32 %284, 1
  %286 = select i1 %283, float %285, float 1.000000e+00
  %287 = fadd fast float %282, 1.000000e+00
  %288 = fmul fast float %286, %287
  %289 = call float @dx.op.unary.f32(i32 6, float %288)  ; FAbs(value)
  %290 = fdiv fast float 1.000000e+00, %239
  %291 = fmul fast float %290, %276
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 1
  %294 = fmul fast float %293, %291
  %295 = fmul fast float %291, %289
  %296 = extractvalue %dx.types.CBufRet.f32 %284, 3
  %297 = fcmp fast oge float %289, %296
  %298 = call float @dx.op.binary.f32(i32 36, float %295, float %294)  ; FMin(a,b)
  %299 = select i1 %297, float %294, float %298
  %300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.i32 %300, 3
  %302 = icmp eq i32 %301, 0
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.f32 %305, 2
  %307 = fsub fast float %304, %237
  %308 = fadd fast float %307, %306
  br i1 %302, label %320, label %309, !dx.controlflow.hints !34

; <label>:309                                     ; preds = %204
  %310 = fsub fast float -0.000000e+00, %236
  %311 = fsub fast float -0.000000e+00, %235
  %312 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %311, float %310, float %308)  ; Dot3(ax,ay,az,bx,by,bz)
  %313 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %278, float %279, float %280)  ; Dot3(ax,ay,az,bx,by,bz)
  %314 = fdiv fast float 1.000000e+00, %313
  %315 = fmul fast float %314, %312
  %316 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %311, float %310, float %307)  ; Dot3(ax,ay,az,bx,by,bz)
  %317 = fmul fast float %314, %316
  %318 = call float @dx.op.binary.f32(i32 36, float %315, float %317)  ; FMin(a,b)
  %319 = call float @dx.op.binary.f32(i32 35, float %315, float %317)  ; FMax(a,b)
  br label %353

; <label>:320                                     ; preds = %204
  %321 = fdiv fast float 1.000000e+00, %278
  %322 = fdiv fast float 1.000000e+00, %279
  %323 = fdiv fast float 1.000000e+00, %280
  %324 = extractvalue %dx.types.CBufRet.f32 %303, 0
  %325 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %326 = extractvalue %dx.types.CBufRet.f32 %305, 0
  %327 = extractvalue %dx.types.CBufRet.f32 %305, 1
  %328 = fsub fast float %324, %235
  %329 = fmul fast float %328, %321
  %330 = fadd fast float %328, %326
  %331 = fmul fast float %330, %321
  %332 = call float @dx.op.binary.f32(i32 36, float %329, float %331)  ; FMin(a,b)
  %333 = call float @dx.op.binary.f32(i32 35, float %329, float %331)  ; FMax(a,b)
  %334 = fsub fast float %325, %236
  %335 = fmul fast float %334, %322
  %336 = fadd fast float %334, %327
  %337 = fmul fast float %336, %322
  %338 = call float @dx.op.binary.f32(i32 36, float %335, float %337)  ; FMin(a,b)
  %339 = call float @dx.op.binary.f32(i32 35, float %332, float %338)  ; FMax(a,b)
  %340 = call float @dx.op.binary.f32(i32 35, float %335, float %337)  ; FMax(a,b)
  %341 = call float @dx.op.binary.f32(i32 36, float %333, float %340)  ; FMin(a,b)
  %342 = fmul fast float %307, %323
  %343 = fmul fast float %308, %323
  %344 = call float @dx.op.binary.f32(i32 36, float %342, float %343)  ; FMin(a,b)
  %345 = call float @dx.op.binary.f32(i32 35, float %339, float %344)  ; FMax(a,b)
  %346 = call float @dx.op.binary.f32(i32 35, float %342, float %343)  ; FMax(a,b)
  %347 = call float @dx.op.binary.f32(i32 36, float %341, float %346)  ; FMin(a,b)
  %348 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %345)  ; FMax(a,b)
  %349 = fcmp fast ult float %347, %348
  br i1 %349, label %353, label %350, !dx.controlflow.hints !35

; <label>:350                                     ; preds = %320
  %351 = call float @dx.op.binary.f32(i32 36, float %345, float %347)  ; FMin(a,b)
  %352 = call float @dx.op.binary.f32(i32 35, float %345, float %347)  ; FMax(a,b)
  br label %353

; <label>:353                                     ; preds = %350, %320, %309
  %354 = phi float [ %318, %309 ], [ %351, %350 ], [ 0.000000e+00, %320 ]
  %355 = phi float [ %319, %309 ], [ %352, %350 ], [ 0.000000e+00, %320 ]
  %356 = fcmp fast oeq float %355, 0.000000e+00
  br i1 %356, label %360, label %357, !dx.controlflow.hints !36

; <label>:357                                     ; preds = %353
  %358 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %354)  ; FMin(a,b)
  %359 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %355)  ; FMax(a,b)
  br label %360

; <label>:360                                     ; preds = %357, %353
  %361 = phi i32 [ 1, %357 ], [ 0, %353 ]
  %362 = phi float [ %359, %357 ], [ -1.000000e+00, %353 ]
  %363 = phi float [ %358, %357 ], [ 0x47EFFFFFE0000000, %353 ]
  %364 = call float @dx.op.binary.f32(i32 36, float %299, float %362)  ; FMin(a,b)
  %365 = call float @dx.op.binary.f32(i32 35, float %276, float %363)  ; FMax(a,b)
  %366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.f32 %366, 0
  %368 = fmul fast float %224, 2.000000e+00
  %369 = fadd fast float %368, -1.000000e+00
  %370 = fmul fast float %367, %369
  %371 = fadd fast float %370, %365
  %372 = fcmp fast olt float %371, %364
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 2
  %375 = fcmp fast olt float %374, 1.000000e+00
  %376 = and i1 %375, %372
  br i1 %376, label %377, label %1056

; <label>:377                                     ; preds = %360
  %378 = fmul fast float %371, %280
  %379 = fadd fast float %378, %237
  %380 = fmul fast float %371, %279
  %381 = fadd fast float %380, %236
  %382 = fmul fast float %371, %278
  %383 = fadd fast float %382, %235
  br label %384

; <label>:384                                     ; preds = %1032, %377
  %385 = phi float [ %1034, %1032 ], [ 0.000000e+00, %377 ]
  %386 = phi float [ %1035, %1032 ], [ 1.000000e+00, %377 ]
  %387 = phi float [ %1036, %1032 ], [ 0.000000e+00, %377 ]
  %388 = phi float [ %1037, %1032 ], [ 0.000000e+00, %377 ]
  %389 = phi float [ %1038, %1032 ], [ 0.000000e+00, %377 ]
  %390 = phi float [ %1048, %1032 ], [ %383, %377 ]
  %391 = phi float [ %1049, %1032 ], [ %381, %377 ]
  %392 = phi float [ %1050, %1032 ], [ %379, %377 ]
  %393 = phi float [ %1033, %1032 ], [ %371, %377 ]
  %394 = phi float [ %1039, %1032 ], [ 0.000000e+00, %377 ]
  %395 = phi float [ %1040, %1032 ], [ 0.000000e+00, %377 ]
  %396 = phi float [ %1041, %1032 ], [ 0.000000e+00, %377 ]
  %397 = phi float [ %1042, %1032 ], [ 0.000000e+00, %377 ]
  %398 = phi float [ %1043, %1032 ], [ 0.000000e+00, %377 ]
  %399 = phi i32 [ %1044, %1032 ], [ 0, %377 ]
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %402 = icmp eq i32 %361, 0
  br i1 %402, label %459, label %403, !dx.controlflow.hints !37

; <label>:403                                     ; preds = %384
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 0
  %406 = extractvalue %dx.types.CBufRet.f32 %404, 1
  %407 = extractvalue %dx.types.CBufRet.f32 %404, 2
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 0
  %410 = extractvalue %dx.types.CBufRet.f32 %408, 1
  %411 = extractvalue %dx.types.CBufRet.f32 %408, 2
  %412 = fsub fast float %390, %409
  %413 = fsub fast float %391, %410
  %414 = fsub fast float %392, %411
  %415 = fmul fast float %412, %405
  %416 = fmul fast float %413, %406
  %417 = fmul fast float %414, %407
  %418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.i32 %418, 3
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %424, label %421, !dx.controlflow.hints !38

; <label>:421                                     ; preds = %403
  %422 = call float @dx.op.unary.f32(i32 22, float %415)  ; Frc(value)
  %423 = call float @dx.op.unary.f32(i32 22, float %416)  ; Frc(value)
  br label %424

; <label>:424                                     ; preds = %421, %403
  %425 = phi float [ %422, %421 ], [ %415, %403 ]
  %426 = phi float [ %423, %421 ], [ %416, %403 ]
  %427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %425, float %426, float %417, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %428 = extractvalue %dx.types.ResRet.f32 %427, 0
  %429 = fmul fast float %428, 2.000000e+00
  %430 = fadd fast float %429, -1.000000e+00
  %431 = extractvalue %dx.types.CBufRet.f32 %404, 3
  %432 = fmul fast float %430, %431
  %433 = fcmp fast olt float %432, 0.000000e+00
  %434 = fcmp fast oge float %417, 0.000000e+00
  %435 = fcmp fast ole float %417, 1.000000e+00
  br i1 %420, label %438, label %436, !dx.controlflow.hints !39

; <label>:436                                     ; preds = %424
  %437 = and i1 %434, %435
  br label %448

; <label>:438                                     ; preds = %424
  %439 = fcmp fast oge float %415, 0.000000e+00
  %440 = fcmp fast oge float %416, 0.000000e+00
  %441 = and i1 %439, %440
  %442 = and i1 %434, %441
  %443 = fcmp fast ole float %415, 1.000000e+00
  %444 = fcmp fast ole float %416, 1.000000e+00
  %445 = and i1 %443, %444
  %446 = and i1 %435, %445
  %447 = and i1 %442, %446
  br label %448

; <label>:448                                     ; preds = %438, %436
  %449 = phi i1 [ %437, %436 ], [ %447, %438 ]
  %450 = and i1 %433, %449
  %451 = call float @dx.op.unary.f32(i32 6, float %432)  ; FAbs(value)
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 1
  %454 = extractvalue %dx.types.CBufRet.f32 %452, 0
  %455 = call float @dx.op.binary.f32(i32 35, float %451, float %454)  ; FMax(a,b)
  %456 = select i1 %450, float %453, float %455
  %457 = zext i1 %450 to i32
  %458 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %456)  ; FMin(a,b)
  br label %459

; <label>:459                                     ; preds = %448, %384
  %460 = phi i32 [ %457, %448 ], [ 0, %384 ]
  %461 = phi float [ %458, %448 ], [ 0x47EFFFFFE0000000, %384 ]
  %462 = extractvalue %dx.types.CBufRet.f32 %400, 2
  %463 = fmul fast float %462, %393
  %464 = call float @dx.op.unary.f32(i32 23, float %463)  ; Log(value)
  %465 = fmul fast float %464, 0x3FE62E4300000000
  %466 = call float @dx.op.binary.f32(i32 35, float %465, float 1.000000e+00)  ; FMax(a,b)
  %467 = fmul fast float %466, 0x47EFFFFFE0000000
  %468 = call float @dx.op.binary.f32(i32 36, float %467, float %461)  ; FMin(a,b)
  %469 = call float @dx.op.binary.f32(i32 35, float %468, float %401)  ; FMax(a,b)
  %470 = fadd fast float %364, 0x3F1A36E2E0000000
  %471 = fsub fast float %470, %393
  %472 = call float @dx.op.binary.f32(i32 36, float %471, float %469)  ; FMin(a,b)
  %473 = icmp eq i32 %460, 0
  br i1 %473, label %663, label %474, !dx.controlflow.hints !40

; <label>:474                                     ; preds = %459
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 3
  %477 = fmul fast float %476, %393
  %478 = fcmp fast oeq float %477, 0.000000e+00
  br i1 %478, label %493, label %479, !dx.controlflow.hints !41

; <label>:479                                     ; preds = %474
  %480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.f32 %480, 3
  %482 = fmul fast float %481, %477
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 0
  %485 = extractvalue %dx.types.CBufRet.f32 %483, 1
  %486 = extractvalue %dx.types.CBufRet.f32 %483, 2
  %487 = fmul fast float %484, %482
  %488 = fmul fast float %485, %482
  %489 = fmul fast float %486, %482
  %490 = call float @dx.op.unary.f32(i32 23, float %487)  ; Log(value)
  %491 = call float @dx.op.unary.f32(i32 23, float %488)  ; Log(value)
  %492 = call float @dx.op.unary.f32(i32 23, float %489)  ; Log(value)
  br label %493

; <label>:493                                     ; preds = %479, %474
  %494 = phi float [ %490, %479 ], [ 0.000000e+00, %474 ]
  %495 = phi float [ %491, %479 ], [ 0.000000e+00, %474 ]
  %496 = phi float [ %492, %479 ], [ 0.000000e+00, %474 ]
  %497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %498 = extractvalue %dx.types.CBufRet.f32 %497, 0
  %499 = extractvalue %dx.types.CBufRet.f32 %497, 1
  %500 = extractvalue %dx.types.CBufRet.f32 %497, 2
  %501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.f32 %501, 0
  %503 = extractvalue %dx.types.CBufRet.f32 %501, 1
  %504 = extractvalue %dx.types.CBufRet.f32 %501, 2
  %505 = fsub fast float %390, %502
  %506 = fsub fast float %391, %503
  %507 = fsub fast float %392, %504
  %508 = fmul fast float %505, %498
  %509 = fmul fast float %506, %499
  %510 = fmul fast float %507, %500
  %511 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.i32 %511, 0
  %513 = extractvalue %dx.types.CBufRet.i32 %511, 1
  %514 = uitofp i32 %512 to float
  %515 = uitofp i32 %513 to float
  %516 = fmul fast float %508, %514
  %517 = fmul fast float %509, %515
  %518 = fadd fast float %516, 5.000000e-01
  %519 = fadd fast float %517, 5.000000e-01
  %520 = call float @dx.op.unary.f32(i32 22, float %518)  ; Frc(value)
  %521 = call float @dx.op.unary.f32(i32 22, float %519)  ; Frc(value)
  %522 = call float @dx.op.unary.f32(i32 27, float %518)  ; Round_ni(value)
  %523 = call float @dx.op.unary.f32(i32 27, float %519)  ; Round_ni(value)
  %524 = fadd fast float %522, 1.000000e+00
  %525 = fadd fast float %523, 1.000000e+00
  %526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %527 = extractvalue %dx.types.CBufRet.f32 %526, 0
  %528 = extractvalue %dx.types.CBufRet.f32 %526, 1
  %529 = fmul fast float %527, %524
  %530 = fmul fast float %528, %525
  %531 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %16, float %529, float %530, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %532 = extractvalue %dx.types.ResRet.f32 %531, 0
  %533 = extractvalue %dx.types.ResRet.f32 %531, 1
  %534 = extractvalue %dx.types.ResRet.f32 %531, 2
  %535 = extractvalue %dx.types.ResRet.f32 %531, 3
  %536 = extractvalue %dx.types.CBufRet.i32 %511, 2
  %537 = extractvalue %dx.types.CBufRet.f32 %526, 2
  %538 = uitofp i32 %536 to float
  %539 = fadd fast float %538, -1.000000e+00
  %540 = fmul fast float %539, %532
  %541 = fmul fast float %539, %533
  %542 = fmul fast float %539, %534
  %543 = fmul fast float %539, %535
  %544 = fadd fast float %540, 5.000000e-01
  %545 = fadd fast float %541, 5.000000e-01
  %546 = fadd fast float %542, 5.000000e-01
  %547 = fadd fast float %543, 5.000000e-01
  %548 = fptoui float %544 to i32
  %549 = fptoui float %545 to i32
  %550 = fptoui float %546 to i32
  %551 = fptoui float %547 to i32
  %552 = uitofp i32 %548 to float
  %553 = uitofp i32 %549 to float
  %554 = uitofp i32 %550 to float
  %555 = uitofp i32 %551 to float
  %556 = fadd fast float %552, 5.000000e-01
  %557 = fadd fast float %553, 5.000000e-01
  %558 = fadd fast float %554, 5.000000e-01
  %559 = fadd fast float %555, 5.000000e-01
  %560 = fmul fast float %556, %537
  %561 = fmul fast float %557, %537
  %562 = fmul fast float %558, %537
  %563 = fmul fast float %559, %537
  %564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %560, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %565 = extractvalue %dx.types.ResRet.f32 %564, 0
  %566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %561, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 0
  %568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %562, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  %570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %563, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %571 = extractvalue %dx.types.ResRet.f32 %570, 0
  %572 = fsub fast float %569, %571
  %573 = fmul fast float %572, %520
  %574 = fadd fast float %573, %571
  %575 = fsub fast float %567, %565
  %576 = fmul fast float %575, %520
  %577 = fadd fast float %576, %565
  %578 = fsub fast float %577, %574
  %579 = fmul fast float %578, %521
  %580 = fadd fast float %579, %574
  %581 = fcmp fast ogt float %580, 0.000000e+00
  br i1 %581, label %582, label %650, !dx.controlflow.hints !42

; <label>:582                                     ; preds = %493
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 0
  %585 = extractvalue %dx.types.CBufRet.f32 %583, 1
  %586 = extractvalue %dx.types.CBufRet.f32 %583, 2
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 0
  %589 = extractvalue %dx.types.CBufRet.f32 %587, 1
  %590 = extractvalue %dx.types.CBufRet.f32 %587, 2
  %591 = fmul fast float %506, %498
  %592 = fmul fast float %507, %498
  %593 = fadd fast float %508, %588
  %594 = fadd fast float %591, %589
  %595 = fadd fast float %592, %590
  %596 = fmul fast float %593, %584
  %597 = fmul fast float %594, %584
  %598 = fmul fast float %595, %584
  %599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %596, float %597, float %598, float undef, i32 0, i32 0, i32 0, float %494)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = fmul fast float %593, %585
  %602 = fmul fast float %594, %585
  %603 = fmul fast float %595, %585
  %604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %601, float %602, float %603, float undef, i32 0, i32 0, i32 0, float %495)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 1
  %606 = fmul fast float %593, %586
  %607 = fmul fast float %594, %586
  %608 = fmul fast float %595, %586
  %609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %606, float %607, float %608, float undef, i32 0, i32 0, i32 0, float %496)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 2
  %611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %612 = extractvalue %dx.types.CBufRet.f32 %611, 1
  %613 = fmul fast float %605, %600
  %614 = fmul fast float %613, %610
  %615 = call float @dx.op.unary.f32(i32 23, float %614)  ; Log(value)
  %616 = fmul fast float %615, %612
  %617 = call float @dx.op.unary.f32(i32 21, float %616)  ; Exp(value)
  %618 = extractvalue %dx.types.CBufRet.f32 %611, 2
  %619 = fmul fast float %580, %580
  %620 = fmul fast float %619, %617
  %621 = fmul fast float %620, %618
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 3
  %624 = fmul fast float %623, %621
  %625 = bitcast float %624 to i32
  %626 = sitofp i32 %625 to float
  %627 = fptosi float %626 to i32
  %628 = bitcast i32 %627 to float
  %629 = fsub fast float 1.000000e+00, %621
  %630 = bitcast float %629 to i32
  %631 = sitofp i32 %630 to float
  %632 = fptosi float %631 to i32
  %633 = bitcast i32 %632 to float
  %634 = fadd fast float %628, %633
  %635 = bitcast float %634 to i32
  %636 = sub nsw i32 2129859010, %635
  %637 = bitcast i32 %636 to float
  %638 = fmul fast float %637, %628
  %639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.f32 %639, 2
  %641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %642 = extractvalue %dx.types.CBufRet.f32 %641, 0
  %643 = fmul fast float %638, %642
  %644 = fadd fast float %643, 1.000000e+00
  %645 = bitcast float %644 to i32
  %646 = sub nsw i32 2129859010, %645
  %647 = bitcast i32 %646 to float
  %648 = fmul fast float %638, %640
  %649 = fmul fast float %648, %647
  br label %650

; <label>:650                                     ; preds = %582, %493
  %651 = phi float [ %649, %582 ], [ %580, %493 ]
  %652 = fmul fast float %651, %472
  %653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %654 = extractvalue %dx.types.CBufRet.f32 %653, 0
  %655 = extractvalue %dx.types.CBufRet.f32 %653, 1
  %656 = extractvalue %dx.types.CBufRet.f32 %653, 2
  %657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.f32 %657, 1
  %659 = fmul fast float %654, %652
  %660 = fmul fast float %655, %652
  %661 = fmul fast float %656, %652
  %662 = fmul fast float %658, %652
  br label %663

; <label>:663                                     ; preds = %650, %459
  %664 = phi float [ %652, %650 ], [ 0.000000e+00, %459 ]
  %665 = phi float [ %662, %650 ], [ 0.000000e+00, %459 ]
  %666 = phi float [ %659, %650 ], [ 0.000000e+00, %459 ]
  %667 = phi float [ %660, %650 ], [ 0.000000e+00, %459 ]
  %668 = phi float [ %661, %650 ], [ 0.000000e+00, %459 ]
  %669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.f32 %669, 1
  %671 = fcmp fast ogt float %664, %670
  br i1 %671, label %672, label %678, !dx.controlflow.hints !43

; <label>:672                                     ; preds = %663
  %673 = fdiv fast float 1.000000e+00, %664
  %674 = fmul fast float %673, %666
  %675 = fmul fast float %673, %667
  %676 = fmul fast float %673, %668
  %677 = fmul fast float %673, %665
  br label %678

; <label>:678                                     ; preds = %672, %663
  %679 = phi float [ %677, %672 ], [ %665, %663 ]
  %680 = phi float [ %674, %672 ], [ %666, %663 ]
  %681 = phi float [ %675, %672 ], [ %667, %663 ]
  %682 = phi float [ %676, %672 ], [ %668, %663 ]
  br i1 %671, label %685, label %683, !dx.controlflow.hints !44

; <label>:683                                     ; preds = %678
  %684 = fadd fast float %472, %393
  br label %1032

; <label>:685                                     ; preds = %678
  %686 = fmul fast float %664, 0xBFF7154760000000
  %687 = call float @dx.op.unary.f32(i32 21, float %686)  ; Exp(value)
  %688 = call float @dx.op.unary.f32(i32 7, float %687)  ; Saturate(value)
  %689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %690 = extractvalue %dx.types.CBufRet.f32 %689, 3
  %691 = fcmp fast une float %690, 0.000000e+00
  %692 = extractvalue %dx.types.CBufRet.f32 %689, 0
  %693 = extractvalue %dx.types.CBufRet.f32 %689, 1
  %694 = extractvalue %dx.types.CBufRet.f32 %689, 2
  br i1 %691, label %695, label %717, !dx.controlflow.hints !45

; <label>:695                                     ; preds = %685
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 0
  %698 = extractvalue %dx.types.CBufRet.f32 %696, 1
  %699 = extractvalue %dx.types.CBufRet.f32 %696, 2
  %700 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float %278, float %279, float %280)  ; Dot3(ax,ay,az,bx,by,bz)
  %701 = fcmp fast ogt float %679, 0.000000e+00
  %702 = select i1 %701, float 1.000000e+00, float -1.000000e+00
  %703 = fmul fast float %702, 5.000000e-01
  %704 = fmul fast float %703, %700
  %705 = fmul fast float %702, %679
  %706 = fadd fast float %704, 4.921875e-01
  %707 = fadd fast float %705, -3.125000e-02
  %708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %706, float 0x3FB25F3060000000, float %707, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  %710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.f32 %710, 0
  %712 = fmul fast float %709, 0x400921FB60000000
  %713 = fmul fast float %712, %711
  %714 = fmul fast float %713, %697
  %715 = fmul fast float %713, %698
  %716 = fmul fast float %713, %699
  br label %717

; <label>:717                                     ; preds = %695, %685
  %718 = phi float [ %714, %695 ], [ 0.000000e+00, %685 ]
  %719 = phi float [ %715, %695 ], [ 0.000000e+00, %685 ]
  %720 = phi float [ %716, %695 ], [ 0.000000e+00, %685 ]
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 0
  %723 = fmul fast float %722, %692
  %724 = fmul fast float %722, %693
  %725 = fmul fast float %722, %694
  %726 = fadd fast float %723, %390
  %727 = fadd fast float %724, %391
  %728 = fadd fast float %725, %392
  br i1 %402, label %778, label %729, !dx.controlflow.hints !37

; <label>:729                                     ; preds = %717
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 0
  %732 = extractvalue %dx.types.CBufRet.f32 %730, 1
  %733 = extractvalue %dx.types.CBufRet.f32 %730, 2
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 0
  %736 = extractvalue %dx.types.CBufRet.f32 %734, 1
  %737 = extractvalue %dx.types.CBufRet.f32 %734, 2
  %738 = fsub fast float %726, %735
  %739 = fsub fast float %727, %736
  %740 = fsub fast float %728, %737
  %741 = fmul fast float %738, %731
  %742 = fmul fast float %739, %732
  %743 = fmul fast float %740, %733
  %744 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %745 = extractvalue %dx.types.CBufRet.i32 %744, 3
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %750, label %747, !dx.controlflow.hints !38

; <label>:747                                     ; preds = %729
  %748 = call float @dx.op.unary.f32(i32 22, float %741)  ; Frc(value)
  %749 = call float @dx.op.unary.f32(i32 22, float %742)  ; Frc(value)
  br label %750

; <label>:750                                     ; preds = %747, %729
  %751 = phi float [ %748, %747 ], [ %741, %729 ]
  %752 = phi float [ %749, %747 ], [ %742, %729 ]
  %753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %751, float %752, float %743, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  %755 = fmul fast float %754, 2.000000e+00
  %756 = fadd fast float %755, -1.000000e+00
  %757 = extractvalue %dx.types.CBufRet.f32 %730, 3
  %758 = fmul fast float %756, %757
  %759 = fcmp fast olt float %758, 0.000000e+00
  %760 = fcmp fast oge float %743, 0.000000e+00
  %761 = fcmp fast ole float %743, 1.000000e+00
  br i1 %746, label %764, label %762, !dx.controlflow.hints !39

; <label>:762                                     ; preds = %750
  %763 = and i1 %760, %761
  br label %774

; <label>:764                                     ; preds = %750
  %765 = fcmp fast oge float %741, 0.000000e+00
  %766 = fcmp fast oge float %742, 0.000000e+00
  %767 = and i1 %765, %766
  %768 = and i1 %760, %767
  %769 = fcmp fast ole float %741, 1.000000e+00
  %770 = fcmp fast ole float %742, 1.000000e+00
  %771 = and i1 %769, %770
  %772 = and i1 %761, %771
  %773 = and i1 %768, %772
  br label %774

; <label>:774                                     ; preds = %764, %762
  %775 = phi i1 [ %763, %762 ], [ %773, %764 ]
  %776 = and i1 %759, %775
  %777 = zext i1 %776 to i32
  br label %778

; <label>:778                                     ; preds = %774, %717
  %779 = phi i32 [ %777, %774 ], [ 0, %717 ]
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %960, label %781, !dx.controlflow.hints !40

; <label>:781                                     ; preds = %778
  %782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.f32 %782, 3
  %784 = fmul fast float %783, %722
  %785 = fcmp fast oeq float %784, 0.000000e+00
  br i1 %785, label %800, label %786, !dx.controlflow.hints !41

; <label>:786                                     ; preds = %781
  %787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %788 = extractvalue %dx.types.CBufRet.f32 %787, 3
  %789 = fmul fast float %788, %784
  %790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %791 = extractvalue %dx.types.CBufRet.f32 %790, 0
  %792 = extractvalue %dx.types.CBufRet.f32 %790, 1
  %793 = extractvalue %dx.types.CBufRet.f32 %790, 2
  %794 = fmul fast float %791, %789
  %795 = fmul fast float %792, %789
  %796 = fmul fast float %793, %789
  %797 = call float @dx.op.unary.f32(i32 23, float %794)  ; Log(value)
  %798 = call float @dx.op.unary.f32(i32 23, float %795)  ; Log(value)
  %799 = call float @dx.op.unary.f32(i32 23, float %796)  ; Log(value)
  br label %800

; <label>:800                                     ; preds = %786, %781
  %801 = phi float [ %797, %786 ], [ 0.000000e+00, %781 ]
  %802 = phi float [ %798, %786 ], [ 0.000000e+00, %781 ]
  %803 = phi float [ %799, %786 ], [ 0.000000e+00, %781 ]
  %804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.f32 %804, 0
  %806 = extractvalue %dx.types.CBufRet.f32 %804, 1
  %807 = extractvalue %dx.types.CBufRet.f32 %804, 2
  %808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.f32 %808, 0
  %810 = extractvalue %dx.types.CBufRet.f32 %808, 1
  %811 = extractvalue %dx.types.CBufRet.f32 %808, 2
  %812 = fsub fast float %726, %809
  %813 = fsub fast float %727, %810
  %814 = fsub fast float %728, %811
  %815 = fmul fast float %812, %805
  %816 = fmul fast float %813, %806
  %817 = fmul fast float %814, %807
  %818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %819 = extractvalue %dx.types.CBufRet.i32 %818, 0
  %820 = extractvalue %dx.types.CBufRet.i32 %818, 1
  %821 = uitofp i32 %819 to float
  %822 = uitofp i32 %820 to float
  %823 = fmul fast float %815, %821
  %824 = fmul fast float %816, %822
  %825 = fadd fast float %823, 5.000000e-01
  %826 = fadd fast float %824, 5.000000e-01
  %827 = call float @dx.op.unary.f32(i32 22, float %825)  ; Frc(value)
  %828 = call float @dx.op.unary.f32(i32 22, float %826)  ; Frc(value)
  %829 = call float @dx.op.unary.f32(i32 27, float %825)  ; Round_ni(value)
  %830 = call float @dx.op.unary.f32(i32 27, float %826)  ; Round_ni(value)
  %831 = fadd fast float %829, 1.000000e+00
  %832 = fadd fast float %830, 1.000000e+00
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 0
  %835 = extractvalue %dx.types.CBufRet.f32 %833, 1
  %836 = fmul fast float %834, %831
  %837 = fmul fast float %835, %832
  %838 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %16, float %836, float %837, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %839 = extractvalue %dx.types.ResRet.f32 %838, 0
  %840 = extractvalue %dx.types.ResRet.f32 %838, 1
  %841 = extractvalue %dx.types.ResRet.f32 %838, 2
  %842 = extractvalue %dx.types.ResRet.f32 %838, 3
  %843 = extractvalue %dx.types.CBufRet.i32 %818, 2
  %844 = extractvalue %dx.types.CBufRet.f32 %833, 2
  %845 = uitofp i32 %843 to float
  %846 = fadd fast float %845, -1.000000e+00
  %847 = fmul fast float %846, %839
  %848 = fmul fast float %846, %840
  %849 = fmul fast float %846, %841
  %850 = fmul fast float %846, %842
  %851 = fadd fast float %847, 5.000000e-01
  %852 = fadd fast float %848, 5.000000e-01
  %853 = fadd fast float %849, 5.000000e-01
  %854 = fadd fast float %850, 5.000000e-01
  %855 = fptoui float %851 to i32
  %856 = fptoui float %852 to i32
  %857 = fptoui float %853 to i32
  %858 = fptoui float %854 to i32
  %859 = uitofp i32 %855 to float
  %860 = uitofp i32 %856 to float
  %861 = uitofp i32 %857 to float
  %862 = uitofp i32 %858 to float
  %863 = fadd fast float %859, 5.000000e-01
  %864 = fadd fast float %860, 5.000000e-01
  %865 = fadd fast float %861, 5.000000e-01
  %866 = fadd fast float %862, 5.000000e-01
  %867 = fmul fast float %863, %844
  %868 = fmul fast float %864, %844
  %869 = fmul fast float %865, %844
  %870 = fmul fast float %866, %844
  %871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %867, float %817, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %872 = extractvalue %dx.types.ResRet.f32 %871, 0
  %873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %868, float %817, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %874 = extractvalue %dx.types.ResRet.f32 %873, 0
  %875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %869, float %817, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %876 = extractvalue %dx.types.ResRet.f32 %875, 0
  %877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %870, float %817, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %878 = extractvalue %dx.types.ResRet.f32 %877, 0
  %879 = fsub fast float %876, %878
  %880 = fmul fast float %879, %827
  %881 = fadd fast float %880, %878
  %882 = fsub fast float %874, %872
  %883 = fmul fast float %882, %827
  %884 = fadd fast float %883, %872
  %885 = fsub fast float %884, %881
  %886 = fmul fast float %885, %828
  %887 = fadd fast float %886, %881
  %888 = fcmp fast ogt float %887, 0.000000e+00
  br i1 %888, label %889, label %957, !dx.controlflow.hints !42

; <label>:889                                     ; preds = %800
  %890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %891 = extractvalue %dx.types.CBufRet.f32 %890, 0
  %892 = extractvalue %dx.types.CBufRet.f32 %890, 1
  %893 = extractvalue %dx.types.CBufRet.f32 %890, 2
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %896 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %897 = extractvalue %dx.types.CBufRet.f32 %894, 2
  %898 = fmul fast float %813, %805
  %899 = fmul fast float %814, %805
  %900 = fadd fast float %815, %895
  %901 = fadd fast float %898, %896
  %902 = fadd fast float %899, %897
  %903 = fmul fast float %900, %891
  %904 = fmul fast float %901, %891
  %905 = fmul fast float %902, %891
  %906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %903, float %904, float %905, float undef, i32 0, i32 0, i32 0, float %801)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %907 = extractvalue %dx.types.ResRet.f32 %906, 0
  %908 = fmul fast float %900, %892
  %909 = fmul fast float %901, %892
  %910 = fmul fast float %902, %892
  %911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %908, float %909, float %910, float undef, i32 0, i32 0, i32 0, float %802)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %912 = extractvalue %dx.types.ResRet.f32 %911, 1
  %913 = fmul fast float %900, %893
  %914 = fmul fast float %901, %893
  %915 = fmul fast float %902, %893
  %916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %913, float %914, float %915, float undef, i32 0, i32 0, i32 0, float %803)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %917 = extractvalue %dx.types.ResRet.f32 %916, 2
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 1
  %920 = fmul fast float %912, %907
  %921 = fmul fast float %920, %917
  %922 = call float @dx.op.unary.f32(i32 23, float %921)  ; Log(value)
  %923 = fmul fast float %922, %919
  %924 = call float @dx.op.unary.f32(i32 21, float %923)  ; Exp(value)
  %925 = extractvalue %dx.types.CBufRet.f32 %918, 2
  %926 = fmul fast float %887, %887
  %927 = fmul fast float %926, %924
  %928 = fmul fast float %927, %925
  %929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %930 = extractvalue %dx.types.CBufRet.f32 %929, 3
  %931 = fmul fast float %930, %928
  %932 = bitcast float %931 to i32
  %933 = sitofp i32 %932 to float
  %934 = fptosi float %933 to i32
  %935 = bitcast i32 %934 to float
  %936 = fsub fast float 1.000000e+00, %928
  %937 = bitcast float %936 to i32
  %938 = sitofp i32 %937 to float
  %939 = fptosi float %938 to i32
  %940 = bitcast i32 %939 to float
  %941 = fadd fast float %935, %940
  %942 = bitcast float %941 to i32
  %943 = sub nsw i32 2129859010, %942
  %944 = bitcast i32 %943 to float
  %945 = fmul fast float %944, %935
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 2
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 0
  %950 = fmul fast float %945, %949
  %951 = fadd fast float %950, 1.000000e+00
  %952 = bitcast float %951 to i32
  %953 = sub nsw i32 2129859010, %952
  %954 = bitcast i32 %953 to float
  %955 = fmul fast float %945, %947
  %956 = fmul fast float %955, %954
  br label %957

; <label>:957                                     ; preds = %889, %800
  %958 = phi float [ %956, %889 ], [ %887, %800 ]
  %959 = fmul fast float %958, %722
  br label %960

; <label>:960                                     ; preds = %957, %778
  %961 = phi float [ %959, %957 ], [ 0.000000e+00, %778 ]
  %962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.f32 %962, 3
  %964 = fmul fast float %961, 0xBFF7154760000000
  %965 = fmul fast float %964, %963
  %966 = call float @dx.op.unary.f32(i32 21, float %965)  ; Exp(value)
  %967 = call float @dx.op.unary.f32(i32 7, float %966)  ; Saturate(value)
  %968 = fmul fast float %967, %718
  %969 = fmul fast float %967, %719
  %970 = fmul fast float %967, %720
  %971 = fadd fast float %968, %205
  %972 = fadd fast float %969, %206
  %973 = fadd fast float %970, %207
  %974 = fsub fast float 1.000000e+00, %688
  %975 = fmul fast float %680, %386
  %976 = fmul fast float %975, %974
  %977 = fmul fast float %976, %971
  %978 = fmul fast float %681, %386
  %979 = fmul fast float %978, %974
  %980 = fmul fast float %979, %972
  %981 = fmul fast float %682, %386
  %982 = fmul fast float %981, %974
  %983 = fmul fast float %982, %973
  %984 = fadd fast float %977, %387
  %985 = fadd fast float %980, %388
  %986 = fadd fast float %983, %389
  %987 = fdiv fast float %664, %472
  %988 = fadd fast float %472, %393
  %989 = fmul fast float %393, %393
  %990 = fmul fast float %988, %988
  %991 = fsub fast float %989, %990
  %992 = fmul fast float %991, -5.000000e-01
  %993 = fmul fast float %992, %987
  %994 = fadd fast float %993, %385
  %995 = fadd fast float %664, %394
  %996 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.i32 %996, 0
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %1025, label %999, !dx.controlflow.hints !46

; <label>:999                                     ; preds = %960
  %1000 = icmp ne i32 %399, 0
  %1001 = zext i1 %1000 to i32
  %1002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.f32 %1002, 2
  %1004 = extractvalue %dx.types.CBufRet.f32 %1002, 0
  %1005 = fsub fast float %988, %1004
  %1006 = fmul fast float %1005, %1003
  %1007 = call float @dx.op.unary.f32(i32 7, float %1006)  ; Saturate(value)
  %1008 = fadd fast float %1007, -5.000000e-01
  %1009 = fmul fast float %1008, 2.000000e+00
  %1010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1011 = extractvalue %dx.types.CBufRet.f32 %1010, 2
  %1012 = fcmp fast olt float %1009, %1011
  br i1 %1012, label %1013, label %1025, !dx.controlflow.hints !47

; <label>:1013                                    ; preds = %999
  %1014 = fmul fast float %1009, %1009
  %1015 = fmul fast float %974, %386
  %1016 = fmul fast float %1009, %1015
  %1017 = fmul fast float %1014, %1015
  %1018 = fmul fast float %1016, %1014
  %1019 = fmul fast float %1014, %1014
  %1020 = fmul fast float %1019, %1015
  %1021 = fadd fast float %1016, %395
  %1022 = fadd fast float %1017, %396
  %1023 = fadd fast float %1018, %397
  %1024 = fadd fast float %1020, %398
  br label %1025

; <label>:1025                                    ; preds = %1013, %999, %960
  %1026 = phi float [ %395, %960 ], [ %1021, %1013 ], [ %395, %999 ]
  %1027 = phi float [ %396, %960 ], [ %1022, %1013 ], [ %396, %999 ]
  %1028 = phi float [ %397, %960 ], [ %1023, %1013 ], [ %397, %999 ]
  %1029 = phi float [ %398, %960 ], [ %1024, %1013 ], [ %398, %999 ]
  %1030 = phi i32 [ %399, %960 ], [ 1, %1013 ], [ %1001, %999 ]
  %1031 = fmul fast float %688, %386
  br label %1032

; <label>:1032                                    ; preds = %1025, %683
  %1033 = phi float [ %684, %683 ], [ %988, %1025 ]
  %1034 = phi float [ %385, %683 ], [ %994, %1025 ]
  %1035 = phi float [ %386, %683 ], [ %1031, %1025 ]
  %1036 = phi float [ %387, %683 ], [ %984, %1025 ]
  %1037 = phi float [ %388, %683 ], [ %985, %1025 ]
  %1038 = phi float [ %389, %683 ], [ %986, %1025 ]
  %1039 = phi float [ %394, %683 ], [ %995, %1025 ]
  %1040 = phi float [ %395, %683 ], [ %1026, %1025 ]
  %1041 = phi float [ %396, %683 ], [ %1027, %1025 ]
  %1042 = phi float [ %397, %683 ], [ %1028, %1025 ]
  %1043 = phi float [ %398, %683 ], [ %1029, %1025 ]
  %1044 = phi i32 [ %399, %683 ], [ %1030, %1025 ]
  %1045 = fmul fast float %472, %278
  %1046 = fmul fast float %472, %279
  %1047 = fmul fast float %472, %280
  %1048 = fadd fast float %1045, %390
  %1049 = fadd fast float %1046, %391
  %1050 = fadd fast float %1047, %392
  %1051 = fcmp fast olt float %1033, %364
  %1052 = extractvalue %dx.types.CBufRet.f32 %669, 2
  %1053 = fcmp fast olt float %1052, %1035
  %1054 = and i1 %1051, %1053
  br i1 %1054, label %384, label %1055

; <label>:1055                                    ; preds = %1032
  br label %1056

; <label>:1056                                    ; preds = %1055, %360
  %1057 = phi float [ 0.000000e+00, %360 ], [ %1034, %1055 ]
  %1058 = phi float [ 1.000000e+00, %360 ], [ %1035, %1055 ]
  %1059 = phi float [ 0.000000e+00, %360 ], [ %1036, %1055 ]
  %1060 = phi float [ 0.000000e+00, %360 ], [ %1037, %1055 ]
  %1061 = phi float [ 0.000000e+00, %360 ], [ %1038, %1055 ]
  %1062 = phi float [ 0.000000e+00, %360 ], [ %1039, %1055 ]
  %1063 = phi float [ 0.000000e+00, %360 ], [ %1040, %1055 ]
  %1064 = phi float [ 0.000000e+00, %360 ], [ %1041, %1055 ]
  %1065 = phi float [ 0.000000e+00, %360 ], [ %1042, %1055 ]
  %1066 = phi float [ 0.000000e+00, %360 ], [ %1043, %1055 ]
  %1067 = phi i32 [ 0, %360 ], [ %1044, %1055 ]
  %1068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1069 = extractvalue %dx.types.CBufRet.i32 %1068, 0
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %1112, label %1071, !dx.controlflow.hints !48

; <label>:1071                                    ; preds = %1056
  %1072 = icmp eq i32 %1067, 0
  br i1 %1072, label %1111, label %1073, !dx.controlflow.hints !49

; <label>:1073                                    ; preds = %1071
  %1074 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1075 = extractvalue %dx.types.CBufRet.i32 %1074, 2
  %1076 = icmp eq i32 %1075, 0
  br i1 %1076, label %1083, label %1077, !dx.controlflow.hints !50

; <label>:1077                                    ; preds = %1073
  %1078 = fsub fast float 1.000000e+00, %1058
  %1079 = fdiv fast float %1063, %1078
  %1080 = fdiv fast float %1064, %1078
  %1081 = fdiv fast float %1065, %1078
  %1082 = fdiv fast float %1066, %1078
  br label %1088

; <label>:1083                                    ; preds = %1073
  %1084 = fadd fast float %1063, %1058
  %1085 = fadd fast float %1064, %1058
  %1086 = fadd fast float %1065, %1058
  %1087 = fadd fast float %1066, %1058
  br label %1088

; <label>:1088                                    ; preds = %1083, %1077
  %1089 = phi float [ %1079, %1077 ], [ %1084, %1083 ]
  %1090 = phi float [ %1080, %1077 ], [ %1085, %1083 ]
  %1091 = phi float [ %1081, %1077 ], [ %1086, %1083 ]
  %1092 = phi float [ %1082, %1077 ], [ %1087, %1083 ]
  %1093 = call float @dx.op.binary.f32(i32 35, float %1089, float -1.000000e+00)  ; FMax(a,b)
  %1094 = call float @dx.op.binary.f32(i32 35, float %1090, float -1.000000e+00)  ; FMax(a,b)
  %1095 = call float @dx.op.binary.f32(i32 35, float %1091, float -1.000000e+00)  ; FMax(a,b)
  %1096 = call float @dx.op.binary.f32(i32 35, float %1092, float -1.000000e+00)  ; FMax(a,b)
  %1097 = call float @dx.op.binary.f32(i32 36, float %1093, float 1.000000e+00)  ; FMin(a,b)
  %1098 = call float @dx.op.binary.f32(i32 36, float %1094, float 1.000000e+00)  ; FMin(a,b)
  %1099 = call float @dx.op.binary.f32(i32 36, float %1095, float 1.000000e+00)  ; FMin(a,b)
  %1100 = call float @dx.op.binary.f32(i32 36, float %1096, float 1.000000e+00)  ; FMin(a,b)
  %1101 = fmul fast float %1097, 1.500000e+00
  %1102 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1099, float %1101)  ; FMad(a,b,c)
  %1103 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1098, float 0.000000e+00)  ; FMad(a,b,c)
  %1104 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1100, float %1103)  ; FMad(a,b,c)
  %1105 = fmul fast float %1097, 0x3FEBB67AE0000000
  %1106 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1099, float %1105)  ; FMad(a,b,c)
  %1107 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1098, float 0.000000e+00)  ; FMad(a,b,c)
  %1108 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1100, float %1107)  ; FMad(a,b,c)
  %1109 = fadd fast float %1102, 5.000000e-01
  %1110 = fadd fast float %1106, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %20, i32 %21, i32 0, float %1109, float %1104, float %1110, float %1108, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1112

; <label>:1111                                    ; preds = %1071
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %20, i32 %21, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1112

; <label>:1112                                    ; preds = %1111, %1088, %1056
  %1113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.f32 %1113, 2
  %1115 = fsub fast float %1058, %1114
  %1116 = fdiv fast float %1115, %1114
  %1117 = call float @dx.op.unary.f32(i32 7, float %1116)  ; Saturate(value)
  %1118 = fmul fast float %1117, 2.000000e+00
  %1119 = fsub fast float 3.000000e+00, %1118
  %1120 = fmul fast float %1117, %1117
  %1121 = fmul fast float %1120, %1058
  %1122 = fmul fast float %1121, %1119
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.CBufRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.CBufRet.f32 %1123, 2
  %1127 = call float @dx.op.dot3.f32(i32 55, float %278, float %279, float %280, float %1124, float %1125, float %1126)  ; Dot3(ax,ay,az,bx,by,bz)
  %1128 = fmul fast float %1127, %1057
  %1129 = fcmp fast ogt float %1062, 0.000000e+00
  %1130 = fdiv fast float 1.000000e+00, %1062
  %1131 = fmul fast float %1128, %1130
  %1132 = select i1 %1129, float %1131, float %289
  %1133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.CBufRet.f32 %1133, 1
  %1136 = extractvalue %dx.types.CBufRet.f32 %1133, 2
  %1137 = fmul fast float %1134, %242
  %1138 = fmul fast float %1135, %242
  %1139 = fmul fast float %1136, %242
  %1140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.f32 %1140, 0
  %1142 = extractvalue %dx.types.CBufRet.f32 %1140, 1
  %1143 = extractvalue %dx.types.CBufRet.f32 %1140, 2
  %1144 = fmul fast float %1141, %243
  %1145 = fmul fast float %1142, %243
  %1146 = fmul fast float %1143, %243
  %1147 = fadd fast float %1144, %1137
  %1148 = fadd fast float %1145, %1138
  %1149 = fadd fast float %1146, %1139
  %1150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1151 = extractvalue %dx.types.CBufRet.f32 %1150, 0
  %1152 = extractvalue %dx.types.CBufRet.f32 %1150, 1
  %1153 = extractvalue %dx.types.CBufRet.f32 %1150, 2
  %1154 = fadd fast float %1147, %1151
  %1155 = fadd fast float %1148, %1152
  %1156 = fadd fast float %1149, %1153
  %1157 = fmul fast float %1154, %1132
  %1158 = fmul fast float %1155, %1132
  %1159 = fmul fast float %1156, %1132
  %1160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1161 = extractvalue %dx.types.CBufRet.f32 %1160, 0
  %1162 = extractvalue %dx.types.CBufRet.f32 %1160, 1
  %1163 = extractvalue %dx.types.CBufRet.f32 %1160, 2
  %1164 = extractvalue %dx.types.CBufRet.f32 %1160, 3
  %1165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1166 = extractvalue %dx.types.CBufRet.f32 %1165, 0
  %1167 = extractvalue %dx.types.CBufRet.f32 %1165, 1
  %1168 = extractvalue %dx.types.CBufRet.f32 %1165, 2
  %1169 = extractvalue %dx.types.CBufRet.f32 %1165, 3
  %1170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1171 = extractvalue %dx.types.CBufRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.CBufRet.f32 %1170, 1
  %1173 = extractvalue %dx.types.CBufRet.f32 %1170, 2
  %1174 = extractvalue %dx.types.CBufRet.f32 %1170, 3
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.CBufRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.CBufRet.f32 %1175, 2
  %1179 = extractvalue %dx.types.CBufRet.f32 %1175, 3
  %1180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1180, 3
  %1182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1183 = extractvalue %dx.types.CBufRet.f32 %1182, 3
  %1184 = extractvalue %dx.types.CBufRet.f32 %1182, 0
  %1185 = extractvalue %dx.types.CBufRet.f32 %1182, 1
  %1186 = extractvalue %dx.types.CBufRet.f32 %1182, 2
  %1187 = fcmp fast olt float %1186, -5.000000e-01
  %1188 = call float @dx.op.dot3.f32(i32 55, float %1157, float %1158, float %1159, float %1157, float %1158, float %1159)  ; Dot3(ax,ay,az,bx,by,bz)
  %1189 = call float @dx.op.unary.f32(i32 25, float %1188)  ; Rsqrt(value)
  %1190 = fmul fast float %1189, %1188
  %1191 = fmul fast float %1189, %1157
  %1192 = fmul fast float %1189, %1158
  %1193 = fmul fast float %1189, %1159
  %1194 = fadd fast float %1190, %1164
  %1195 = call float @dx.op.dot3.f32(i32 55, float %1191, float %1192, float %1193, float %1161, float %1162, float %1163)  ; Dot3(ax,ay,az,bx,by,bz)
  %1196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.i32 %1196, 1
  %1198 = and i32 %1197, 1
  %1199 = icmp ne i32 %1198, 0
  %1200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1201 = extractvalue %dx.types.CBufRet.f32 %1200, 2
  %1202 = fcmp fast ogt float %1201, 0.000000e+00
  %1203 = and i1 %1199, %1202
  br i1 %1203, label %1204, label %1610, !dx.controlflow.hints !51

; <label>:1204                                    ; preds = %1112
  %1205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1206 = extractvalue %dx.types.CBufRet.f32 %1205, 3
  %1207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.f32 %1207, 2
  %1209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1209, 2
  %1211 = fsub fast float %1208, %1210
  %1212 = and i32 %1197, 2
  %1213 = extractvalue %dx.types.CBufRet.i32 %1196, 0
  %1214 = call i32 @dx.op.binary.i32(i32 40, i32 %1213, i32 3)  ; UMin(a,b)
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 0
  %1217 = extractvalue %dx.types.CBufRet.f32 %1215, 1
  %1218 = extractvalue %dx.types.CBufRet.f32 %1209, 0
  %1219 = extractvalue %dx.types.CBufRet.f32 %1209, 1
  %1220 = fsub fast float %1216, %1218
  %1221 = fsub fast float %1217, %1219
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1224 = fcmp fast ogt float %1223, 0.000000e+00
  %1225 = fsub fast float -0.000000e+00, %1220
  %1226 = fsub fast float -0.000000e+00, %1221
  %1227 = call float @dx.op.dot2.f32(i32 54, float %1191, float %1192, float %1191, float %1192)  ; Dot2(ax,ay,bx,by)
  %1228 = call float @dx.op.dot2.f32(i32 54, float %1191, float %1192, float %1225, float %1226)  ; Dot2(ax,ay,bx,by)
  %1229 = fmul fast float %1228, 2.000000e+00
  %1230 = call float @dx.op.dot2.f32(i32 54, float %1225, float %1226, float %1225, float %1226)  ; Dot2(ax,ay,bx,by)
  %1231 = fmul fast float %1223, %1223
  %1232 = fsub fast float %1230, %1231
  %1233 = fmul fast float %1229, %1229
  %1234 = fmul fast float %1227, 4.000000e+00
  %1235 = fmul fast float %1234, %1232
  %1236 = fsub fast float %1233, %1235
  %1237 = fcmp fast ogt float %1236, 0.000000e+00
  br i1 %1237, label %1238, label %1253, !dx.controlflow.hints !52

; <label>:1238                                    ; preds = %1204
  %1239 = fcmp fast ogt float %1229, 0.000000e+00
  %1240 = call float @dx.op.unary.f32(i32 24, float %1236)  ; Sqrt(value)
  %1241 = fsub fast float -0.000000e+00, %1240
  %1242 = select i1 %1239, float %1240, float %1241
  %1243 = fadd fast float %1242, %1229
  %1244 = fmul float %1243, -5.000000e-01
  %1245 = fdiv fast float %1244, %1227
  %1246 = call float @dx.op.binary.f32(i32 35, float %1245, float 0.000000e+00)  ; FMax(a,b)
  %1247 = call float @dx.op.binary.f32(i32 36, float %1190, float %1246)  ; FMin(a,b)
  %1248 = fdiv fast float %1232, %1244
  %1249 = call float @dx.op.binary.f32(i32 35, float %1248, float 0.000000e+00)  ; FMax(a,b)
  %1250 = call float @dx.op.binary.f32(i32 36, float %1190, float %1249)  ; FMin(a,b)
  %1251 = call float @dx.op.binary.f32(i32 36, float %1247, float %1250)  ; FMin(a,b)
  %1252 = call float @dx.op.binary.f32(i32 35, float %1247, float %1250)  ; FMax(a,b)
  br label %1253

; <label>:1253                                    ; preds = %1238, %1204
  %1254 = phi float [ %1252, %1238 ], [ -1.000000e+00, %1204 ]
  %1255 = phi float [ %1251, %1238 ], [ -1.000000e+00, %1204 ]
  %1256 = phi i1 [ true, %1238 ], [ false, %1204 ]
  %1257 = and i1 %1224, %1256
  br i1 %1257, label %1258, label %1260, !dx.controlflow.hints !53

; <label>:1258                                    ; preds = %1253
  %1259 = fcmp fast oeq float %1255, %1254
  br i1 %1259, label %1563, label %1261, !dx.controlflow.hints !54

; <label>:1260                                    ; preds = %1253
  br i1 %1224, label %1563, label %1261, !dx.controlflow.hints !55

; <label>:1261                                    ; preds = %1260, %1258
  %1262 = phi float [ %1190, %1260 ], [ %1254, %1258 ]
  %1263 = phi float [ 0.000000e+00, %1260 ], [ %1255, %1258 ]
  %1264 = icmp ne i32 %1212, 0
  %1265 = fmul fast float %1262, %1193
  %1266 = fadd fast float %1265, %1206
  %1267 = fmul fast float %1266, %1262
  %1268 = select i1 %1264, float 0.000000e+00, float %1267
  %1269 = fcmp fast oeq float %1193, 0.000000e+00
  %1270 = fdiv fast float %1211, %1193
  %1271 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1270)  ; FMax(a,b)
  %1272 = select i1 %1269, float %1262, float %1271
  %1273 = call float @dx.op.binary.f32(i32 36, float %1262, float %1272)  ; FMin(a,b)
  %1274 = fcmp fast ogt float %1193, 0.000000e+00
  %1275 = fcmp fast olt float %1211, 0.000000e+00
  br i1 %1274, label %1276, label %1333, !dx.controlflow.hints !56

; <label>:1276                                    ; preds = %1261
  %1277 = icmp eq i32 %1212, 0
  br i1 %1275, label %1278, label %1322, !dx.controlflow.hints !57

; <label>:1278                                    ; preds = %1276
  %1279 = select i1 %1277, float %1262, float 0.000000e+00
  %1280 = fsub fast float -0.000000e+00, %1279
  %1281 = call float @dx.op.unary.f32(i32 6, float %1280)  ; FAbs(value)
  %1282 = fmul fast float %1279, %1193
  %1283 = fadd fast float %1282, %1206
  %1284 = fmul fast float %1281, %1283
  %1285 = fsub fast float %1268, %1284
  %1286 = fsub fast float %1262, %1281
  %1287 = select i1 %1277, float %1286, float 0.000000e+00
  %1288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1288, 0
  %1290 = extractvalue %dx.types.CBufRet.f32 %1288, 1
  %1291 = extractvalue %dx.types.CBufRet.f32 %1288, 2
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  %1294 = extractvalue %dx.types.CBufRet.f32 %1292, 1
  %1295 = extractvalue %dx.types.CBufRet.f32 %1292, 2
  %1296 = extractvalue %dx.types.CBufRet.f32 %1292, 3
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 3
  %1299 = call float @dx.op.binary.f32(i32 36, float %1285, float %1298)  ; FMin(a,b)
  %1300 = fmul fast float %1296, %1287
  %1301 = call float @dx.op.unary.f32(i32 7, float %1300)  ; Saturate(value)
  %1302 = fsub fast float %1293, %1289
  %1303 = fsub fast float %1294, %1290
  %1304 = fsub fast float %1295, %1291
  %1305 = fmul fast float %1301, %1302
  %1306 = fmul fast float %1301, %1303
  %1307 = fmul fast float %1301, %1304
  %1308 = fadd fast float %1305, %1289
  %1309 = fadd fast float %1306, %1290
  %1310 = fadd fast float %1307, %1291
  %1311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1312 = extractvalue %dx.types.CBufRet.f32 %1311, 0
  %1313 = extractvalue %dx.types.CBufRet.f32 %1311, 1
  %1314 = fadd fast float %1313, %1312
  %1315 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1316 = extractvalue %dx.types.CBufRet.f32 %1311, 2
  %1317 = extractvalue %dx.types.CBufRet.f32 %1311, 3
  %1318 = fadd fast float %1317, %1316
  %1319 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1320 = fmul fast float %1315, %1299
  %1321 = fmul fast float %1320, %1319
  br label %1563

; <label>:1322                                    ; preds = %1276
  br i1 %1277, label %1323, label %1344, !dx.controlflow.hints !58

; <label>:1323                                    ; preds = %1322
  %1324 = call float @dx.op.binary.f32(i32 36, float %1273, float %1263)  ; FMin(a,b)
  %1325 = fsub fast float %1273, %1324
  %1326 = fsub fast float %1325, %1262
  %1327 = call float @dx.op.unary.f32(i32 6, float %1326)  ; FAbs(value)
  %1328 = fadd fast float %1325, %1262
  %1329 = fmul fast float %1328, %1193
  %1330 = fadd fast float %1329, %1206
  %1331 = fmul fast float %1330, %1327
  %1332 = fsub fast float %1268, %1331
  br label %1344

; <label>:1333                                    ; preds = %1261
  br i1 %1275, label %1334, label %1344, !dx.controlflow.hints !59

; <label>:1334                                    ; preds = %1333
  %1335 = call float @dx.op.binary.f32(i32 35, float %1263, float %1273)  ; FMax(a,b)
  %1336 = icmp eq i32 %1212, 0
  %1337 = select i1 %1336, float %1273, float 0.000000e+00
  %1338 = fsub fast float -0.000000e+00, %1337
  %1339 = call float @dx.op.unary.f32(i32 6, float %1338)  ; FAbs(value)
  %1340 = fmul fast float %1337, %1193
  %1341 = fadd fast float %1340, %1206
  %1342 = fmul fast float %1339, %1341
  %1343 = fsub fast float %1268, %1342
  br label %1344

; <label>:1344                                    ; preds = %1334, %1333, %1323, %1322
  %1345 = phi float [ %1263, %1322 ], [ %1263, %1323 ], [ %1335, %1334 ], [ %1263, %1333 ]
  %1346 = phi float [ 0.000000e+00, %1322 ], [ %1327, %1323 ], [ %1339, %1334 ], [ 0.000000e+00, %1333 ]
  %1347 = phi float [ %1268, %1322 ], [ %1332, %1323 ], [ %1343, %1334 ], [ %1268, %1333 ]
  %1348 = phi float [ %1273, %1322 ], [ %1273, %1323 ], [ %1262, %1334 ], [ %1262, %1333 ]
  %1349 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 0
  store float -1.000000e+00, float* %1349, align 4, !tbaa !60, !noalias !64
  %1350 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 1
  store float -1.000000e+00, float* %1350, align 4, !tbaa !60, !noalias !64
  %1351 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 2
  store float -1.000000e+00, float* %1351, align 4, !tbaa !60, !noalias !64
  %1352 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 0
  store float -1.000000e+00, float* %1352, align 4, !tbaa !60, !noalias !64
  %1353 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 1
  store float -1.000000e+00, float* %1353, align 4, !tbaa !60, !noalias !64
  %1354 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 2
  store float -1.000000e+00, float* %1354, align 4, !tbaa !60, !noalias !64
  %1355 = icmp sgt i32 %1214, 0
  br i1 %1355, label %1356, label %1417

; <label>:1356                                    ; preds = %1344
  br label %1357

; <label>:1357                                    ; preds = %1406, %1356
  %1358 = phi i32 [ %1407, %1406 ], [ 0, %1356 ]
  %1359 = phi i32 [ %1408, %1406 ], [ 0, %1356 ]
  %1360 = add nuw i32 %1359, 171
  %1361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %1360)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1361, 0
  %1363 = extractvalue %dx.types.CBufRet.f32 %1361, 1
  %1364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1365 = extractvalue %dx.types.CBufRet.f32 %1364, 0
  %1366 = extractvalue %dx.types.CBufRet.f32 %1364, 1
  %1367 = fsub fast float %1362, %1365
  %1368 = fsub fast float %1363, %1366
  %1369 = extractvalue %dx.types.CBufRet.f32 %1361, 2
  %1370 = fsub fast float -0.000000e+00, %1367
  %1371 = fsub fast float -0.000000e+00, %1368
  %1372 = call float @dx.op.dot2.f32(i32 54, float %1191, float %1192, float %1370, float %1371)  ; Dot2(ax,ay,bx,by)
  %1373 = fmul fast float %1372, 2.000000e+00
  %1374 = call float @dx.op.dot2.f32(i32 54, float %1370, float %1371, float %1370, float %1371)  ; Dot2(ax,ay,bx,by)
  %1375 = fmul fast float %1369, %1369
  %1376 = fsub fast float %1374, %1375
  %1377 = fmul fast float %1373, %1373
  %1378 = fmul fast float %1234, %1376
  %1379 = fsub fast float %1377, %1378
  %1380 = fcmp fast ogt float %1379, 0.000000e+00
  br i1 %1380, label %1381, label %1396, !dx.controlflow.hints !52

; <label>:1381                                    ; preds = %1357
  %1382 = fcmp fast ogt float %1373, 0.000000e+00
  %1383 = call float @dx.op.unary.f32(i32 24, float %1379)  ; Sqrt(value)
  %1384 = fsub fast float -0.000000e+00, %1383
  %1385 = select i1 %1382, float %1383, float %1384
  %1386 = fadd fast float %1385, %1373
  %1387 = fmul float %1386, -5.000000e-01
  %1388 = fdiv fast float %1387, %1227
  %1389 = call float @dx.op.binary.f32(i32 35, float %1388, float 0.000000e+00)  ; FMax(a,b)
  %1390 = call float @dx.op.binary.f32(i32 36, float %1262, float %1389)  ; FMin(a,b)
  %1391 = fdiv fast float %1376, %1387
  %1392 = call float @dx.op.binary.f32(i32 35, float %1391, float 0.000000e+00)  ; FMax(a,b)
  %1393 = call float @dx.op.binary.f32(i32 36, float %1262, float %1392)  ; FMin(a,b)
  %1394 = call float @dx.op.binary.f32(i32 36, float %1390, float %1393)  ; FMin(a,b)
  %1395 = call float @dx.op.binary.f32(i32 35, float %1390, float %1393)  ; FMax(a,b)
  br label %1396

; <label>:1396                                    ; preds = %1381, %1357
  %1397 = phi float [ %1395, %1381 ], [ -1.000000e+00, %1357 ]
  %1398 = phi float [ %1394, %1381 ], [ -1.000000e+00, %1357 ]
  %1399 = phi i1 [ true, %1381 ], [ false, %1357 ]
  br i1 %1399, label %1400, label %1406, !dx.controlflow.hints !75

; <label>:1400                                    ; preds = %1396
  %1401 = call float @dx.op.binary.f32(i32 35, float %1345, float %1398)  ; FMax(a,b)
  %1402 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %1359
  store float %1401, float* %1402, align 4, !tbaa !60, !noalias !64
  %1403 = call float @dx.op.binary.f32(i32 35, float %1345, float %1397)  ; FMax(a,b)
  %1404 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %1359
  store float %1403, float* %1404, align 4, !tbaa !60, !noalias !64
  %1405 = add nsw i32 %1358, 1
  br label %1406

; <label>:1406                                    ; preds = %1400, %1396
  %1407 = phi i32 [ %1405, %1400 ], [ %1358, %1396 ]
  %1408 = add nuw nsw i32 %1359, 1
  %1409 = icmp eq i32 %1408, %1214
  br i1 %1409, label %1410, label %1357

; <label>:1410                                    ; preds = %1406
  %1411 = load float, float* %1351, align 4, !tbaa !60, !alias.scope !76, !noalias !79
  %1412 = load float, float* %1350, align 4, !tbaa !60, !alias.scope !82, !noalias !83
  %1413 = load float, float* %1349, align 4, !tbaa !60, !alias.scope !84, !noalias !85
  %1414 = load float, float* %1354, align 4, !tbaa !60, !alias.scope !86, !noalias !89
  %1415 = load float, float* %1353, align 4, !tbaa !60, !alias.scope !92, !noalias !93
  %1416 = load float, float* %1352, align 4, !tbaa !60, !alias.scope !94, !noalias !95
  br label %1417

; <label>:1417                                    ; preds = %1410, %1344
  %1418 = phi float [ -1.000000e+00, %1344 ], [ %1416, %1410 ]
  %1419 = phi float [ -1.000000e+00, %1344 ], [ %1415, %1410 ]
  %1420 = phi float [ -1.000000e+00, %1344 ], [ %1414, %1410 ]
  %1421 = phi float [ -1.000000e+00, %1344 ], [ %1413, %1410 ]
  %1422 = phi float [ -1.000000e+00, %1344 ], [ %1412, %1410 ]
  %1423 = phi float [ -1.000000e+00, %1344 ], [ %1411, %1410 ]
  %1424 = phi i32 [ 0, %1344 ], [ %1407, %1410 ]
  %1425 = call float @dx.op.binary.f32(i32 36, float %1422, float %1423)  ; FMin(a,b)
  %1426 = call float @dx.op.binary.f32(i32 36, float %1421, float %1425)  ; FMin(a,b)
  %1427 = call float @dx.op.binary.f32(i32 35, float %1421, float %1422)  ; FMax(a,b)
  %1428 = call float @dx.op.binary.f32(i32 36, float %1427, float %1423)  ; FMin(a,b)
  %1429 = call float @dx.op.binary.f32(i32 36, float %1421, float %1422)  ; FMin(a,b)
  %1430 = call float @dx.op.binary.f32(i32 35, float %1429, float %1428)  ; FMax(a,b)
  %1431 = call float @dx.op.binary.f32(i32 35, float %1422, float %1423)  ; FMax(a,b)
  %1432 = call float @dx.op.binary.f32(i32 35, float %1421, float %1431)  ; FMax(a,b)
  store float %1426, float* %1349, align 4, !tbaa !60, !alias.scope !84, !noalias !85
  store float %1430, float* %1350, align 4, !tbaa !60, !alias.scope !82, !noalias !83
  store float %1432, float* %1351, align 4, !tbaa !60, !alias.scope !76, !noalias !79
  %1433 = call float @dx.op.binary.f32(i32 36, float %1419, float %1420)  ; FMin(a,b)
  %1434 = call float @dx.op.binary.f32(i32 36, float %1418, float %1433)  ; FMin(a,b)
  %1435 = call float @dx.op.binary.f32(i32 35, float %1418, float %1419)  ; FMax(a,b)
  %1436 = call float @dx.op.binary.f32(i32 36, float %1435, float %1420)  ; FMin(a,b)
  %1437 = call float @dx.op.binary.f32(i32 36, float %1418, float %1419)  ; FMin(a,b)
  %1438 = call float @dx.op.binary.f32(i32 35, float %1437, float %1436)  ; FMax(a,b)
  %1439 = call float @dx.op.binary.f32(i32 35, float %1419, float %1420)  ; FMax(a,b)
  %1440 = call float @dx.op.binary.f32(i32 35, float %1418, float %1439)  ; FMax(a,b)
  store float %1434, float* %1352, align 4, !tbaa !60, !alias.scope !94, !noalias !95
  store float %1438, float* %1353, align 4, !tbaa !60, !alias.scope !92, !noalias !93
  store float %1440, float* %1354, align 4, !tbaa !60, !alias.scope !86, !noalias !89
  %1441 = sub nsw i32 3, %1424
  %1442 = icmp sgt i32 %1441, 2
  br i1 %1442, label %1443, label %1481, !dx.controlflow.hints !96

; <label>:1443                                    ; preds = %1417
  %1444 = icmp eq i32 %1212, 0
  %1445 = fsub fast float %1262, %1346
  %1446 = select i1 %1444, float %1445, float %1346
  %1447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1448 = extractvalue %dx.types.CBufRet.f32 %1447, 0
  %1449 = extractvalue %dx.types.CBufRet.f32 %1447, 1
  %1450 = extractvalue %dx.types.CBufRet.f32 %1447, 2
  %1451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1452 = extractvalue %dx.types.CBufRet.f32 %1451, 0
  %1453 = extractvalue %dx.types.CBufRet.f32 %1451, 1
  %1454 = extractvalue %dx.types.CBufRet.f32 %1451, 2
  %1455 = extractvalue %dx.types.CBufRet.f32 %1451, 3
  %1456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.f32 %1456, 3
  %1458 = call float @dx.op.binary.f32(i32 36, float %1347, float %1457)  ; FMin(a,b)
  %1459 = fmul fast float %1455, %1446
  %1460 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  %1461 = fsub fast float %1452, %1448
  %1462 = fsub fast float %1453, %1449
  %1463 = fsub fast float %1454, %1450
  %1464 = fmul fast float %1460, %1461
  %1465 = fmul fast float %1460, %1462
  %1466 = fmul fast float %1460, %1463
  %1467 = fadd fast float %1464, %1448
  %1468 = fadd fast float %1465, %1449
  %1469 = fadd fast float %1466, %1450
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 0
  %1472 = extractvalue %dx.types.CBufRet.f32 %1470, 1
  %1473 = fadd fast float %1472, %1471
  %1474 = call float @dx.op.unary.f32(i32 7, float %1473)  ; Saturate(value)
  %1475 = extractvalue %dx.types.CBufRet.f32 %1470, 2
  %1476 = extractvalue %dx.types.CBufRet.f32 %1470, 3
  %1477 = fadd fast float %1476, %1475
  %1478 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1479 = fmul fast float %1474, %1458
  %1480 = fmul fast float %1479, %1478
  br label %1563

; <label>:1481                                    ; preds = %1417
  %1482 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %1441
  %1483 = load float, float* %1482, align 4, !tbaa !60, !noalias !64
  %1484 = fcmp fast olt float %1483, %1348
  %1485 = icmp sgt i32 %1424, 0
  %1486 = and i1 %1485, %1484
  br i1 %1486, label %1487, label %1524

; <label>:1487                                    ; preds = %1481
  br label %1488

; <label>:1488                                    ; preds = %1517, %1487
  %1489 = phi float [ %1518, %1517 ], [ %1346, %1487 ]
  %1490 = phi float [ %1519, %1517 ], [ %1347, %1487 ]
  %1491 = phi float [ %1499, %1517 ], [ %1483, %1487 ]
  %1492 = phi i32 [ %1496, %1517 ], [ %1441, %1487 ]
  %1493 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %1492
  %1494 = load float, float* %1493, align 4, !tbaa !60, !noalias !64
  %1495 = icmp slt i32 %1492, 2
  %1496 = add nsw i32 %1492, 1
  %1497 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %1496
  %1498 = load float, float* %1497, align 4, !tbaa !60, !noalias !64
  %1499 = select i1 %1495, float %1498, float %1262
  %1500 = call float @dx.op.binary.f32(i32 36, float %1499, float %1494)  ; FMin(a,b)
  %1501 = call float @dx.op.binary.f32(i32 36, float %1348, float %1500)  ; FMin(a,b)
  %1502 = icmp eq i32 %1212, 0
  %1503 = fadd fast float %1501, %1491
  %1504 = fmul fast float %1503, %1193
  %1505 = fadd fast float %1504, %1206
  br i1 %1502, label %1511, label %1506, !dx.controlflow.hints !97

; <label>:1506                                    ; preds = %1488
  %1507 = fsub fast float %1501, %1491
  %1508 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1507)  ; FMax(a,b)
  %1509 = fmul fast float %1508, %1505
  %1510 = fadd fast float %1509, %1490
  br label %1517

; <label>:1511                                    ; preds = %1488
  %1512 = fsub fast float %1491, %1501
  %1513 = call float @dx.op.unary.f32(i32 6, float %1512)  ; FAbs(value)
  %1514 = fadd fast float %1513, %1489
  %1515 = fmul fast float %1513, %1505
  %1516 = fsub fast float %1490, %1515
  br label %1517

; <label>:1517                                    ; preds = %1511, %1506
  %1518 = phi float [ %1508, %1506 ], [ %1514, %1511 ]
  %1519 = phi float [ %1510, %1506 ], [ %1516, %1511 ]
  %1520 = fcmp fast olt float %1499, %1348
  %1521 = icmp slt i32 %1496, 3
  %1522 = and i1 %1521, %1520
  br i1 %1522, label %1488, label %1523

; <label>:1523                                    ; preds = %1517
  br label %1524

; <label>:1524                                    ; preds = %1523, %1481
  %1525 = phi float [ %1346, %1481 ], [ %1518, %1523 ]
  %1526 = phi float [ %1347, %1481 ], [ %1519, %1523 ]
  %1527 = fsub fast float %1262, %1525
  %1528 = select i1 %1264, float %1525, float %1527
  %1529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1530 = extractvalue %dx.types.CBufRet.f32 %1529, 0
  %1531 = extractvalue %dx.types.CBufRet.f32 %1529, 1
  %1532 = extractvalue %dx.types.CBufRet.f32 %1529, 2
  %1533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1534 = extractvalue %dx.types.CBufRet.f32 %1533, 0
  %1535 = extractvalue %dx.types.CBufRet.f32 %1533, 1
  %1536 = extractvalue %dx.types.CBufRet.f32 %1533, 2
  %1537 = extractvalue %dx.types.CBufRet.f32 %1533, 3
  %1538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.f32 %1538, 3
  %1540 = call float @dx.op.binary.f32(i32 36, float %1526, float %1539)  ; FMin(a,b)
  %1541 = fmul fast float %1537, %1528
  %1542 = call float @dx.op.unary.f32(i32 7, float %1541)  ; Saturate(value)
  %1543 = fsub fast float %1534, %1530
  %1544 = fsub fast float %1535, %1531
  %1545 = fsub fast float %1536, %1532
  %1546 = fmul fast float %1542, %1543
  %1547 = fmul fast float %1542, %1544
  %1548 = fmul fast float %1542, %1545
  %1549 = fadd fast float %1546, %1530
  %1550 = fadd fast float %1547, %1531
  %1551 = fadd fast float %1548, %1532
  %1552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1553 = extractvalue %dx.types.CBufRet.f32 %1552, 0
  %1554 = extractvalue %dx.types.CBufRet.f32 %1552, 1
  %1555 = fadd fast float %1554, %1553
  %1556 = call float @dx.op.unary.f32(i32 7, float %1555)  ; Saturate(value)
  %1557 = extractvalue %dx.types.CBufRet.f32 %1552, 2
  %1558 = extractvalue %dx.types.CBufRet.f32 %1552, 3
  %1559 = fadd fast float %1558, %1557
  %1560 = call float @dx.op.unary.f32(i32 7, float %1559)  ; Saturate(value)
  %1561 = fmul fast float %1556, %1540
  %1562 = fmul fast float %1561, %1560
  br label %1563

; <label>:1563                                    ; preds = %1524, %1443, %1278, %1260, %1258
  %1564 = phi float [ %1287, %1278 ], [ %1446, %1443 ], [ %1528, %1524 ], [ 0.000000e+00, %1258 ], [ 0.000000e+00, %1260 ]
  %1565 = phi float [ %1321, %1278 ], [ %1480, %1443 ], [ %1562, %1524 ], [ 0.000000e+00, %1258 ], [ 0.000000e+00, %1260 ]
  %1566 = phi float [ %1308, %1278 ], [ %1467, %1443 ], [ %1549, %1524 ], [ 0.000000e+00, %1258 ], [ 0.000000e+00, %1260 ]
  %1567 = phi float [ %1309, %1278 ], [ %1468, %1443 ], [ %1550, %1524 ], [ 0.000000e+00, %1258 ], [ 0.000000e+00, %1260 ]
  %1568 = phi float [ %1310, %1278 ], [ %1469, %1443 ], [ %1551, %1524 ], [ 0.000000e+00, %1258 ], [ 0.000000e+00, %1260 ]
  %1569 = fmul fast float %1201, %1565
  %1570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1571 = extractvalue %dx.types.CBufRet.f32 %1570, 2
  %1572 = fsub fast float %1208, %1571
  %1573 = fcmp fast olt float %1569, -2.000000e+01
  %1574 = call float @dx.op.unary.f32(i32 21, float %1569)  ; Exp(value)
  %1575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1576 = extractvalue %dx.types.CBufRet.f32 %1575, 2
  %1577 = extractvalue %dx.types.CBufRet.f32 %1575, 3
  %1578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1579 = extractvalue %dx.types.CBufRet.f32 %1578, 2
  %1580 = fmul fast float %1577, %1572
  %1581 = call float @dx.op.unary.f32(i32 7, float %1580)  ; Saturate(value)
  %1582 = fsub fast float 1.000000e+00, %1581
  %1583 = fmul fast float %1193, 5.000000e-01
  %1584 = fadd fast float %1583, 5.000000e-01
  %1585 = call float @dx.op.unary.f32(i32 7, float %1584)  ; Saturate(value)
  %1586 = fsub fast float 1.000000e+00, %1585
  %1587 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1582)  ; FMax(a,b)
  %1588 = fdiv fast float %1586, %1587
  %1589 = fsub fast float %1572, %1159
  %1590 = call float @dx.op.unary.f32(i32 6, float %1589)  ; FAbs(value)
  %1591 = fmul fast float %1590, %1576
  %1592 = call float @dx.op.unary.f32(i32 7, float %1588)  ; Saturate(value)
  %1593 = fsub fast float 1.000000e+00, %1591
  %1594 = fmul fast float %1593, %1592
  %1595 = fadd fast float %1594, %1591
  %1596 = fmul fast float %1579, %1572
  %1597 = call float @dx.op.unary.f32(i32 7, float %1596)  ; Saturate(value)
  %1598 = fsub fast float 1.000000e+00, %1595
  %1599 = fmul fast float %1598, %1597
  %1600 = fadd fast float %1599, %1595
  %1601 = call float @dx.op.unary.f32(i32 7, float %1600)  ; Saturate(value)
  %1602 = fadd fast float %1574, -1.000000e+00
  %1603 = select i1 %1573, float -1.000000e+00, float %1602
  %1604 = fmul fast float %1601, %1603
  %1605 = fadd fast float %1604, 1.000000e+00
  %1606 = fsub fast float -0.000000e+00, %1604
  %1607 = fmul fast float %1566, %1606
  %1608 = fmul fast float %1567, %1606
  %1609 = fmul fast float %1568, %1606
  br label %1610

; <label>:1610                                    ; preds = %1563, %1112
  %1611 = phi float [ %1564, %1563 ], [ 0.000000e+00, %1112 ]
  %1612 = phi float [ %1605, %1563 ], [ 1.000000e+00, %1112 ]
  %1613 = phi float [ %1607, %1563 ], [ 0.000000e+00, %1112 ]
  %1614 = phi float [ %1608, %1563 ], [ 0.000000e+00, %1112 ]
  %1615 = phi float [ %1609, %1563 ], [ 0.000000e+00, %1112 ]
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 1
  %1618 = fsub fast float 1.000000e+00, %1612
  %1619 = fmul fast float %1618, %1194
  %1620 = fmul fast float %1619, %1617
  %1621 = fsub fast float %1194, %1620
  br i1 %1187, label %1622, label %1651, !dx.controlflow.hints !98

; <label>:1622                                    ; preds = %1610
  %1623 = fmul fast float %1195, %1184
  %1624 = fadd fast float %1623, %1185
  %1625 = call float @dx.op.unary.f32(i32 7, float %1624)  ; Saturate(value)
  %1626 = fmul fast float %1166, %1621
  %1627 = fsub fast float -0.000000e+00, %1626
  %1628 = fmul fast float %1167, %1621
  %1629 = fsub fast float -0.000000e+00, %1628
  %1630 = call float @dx.op.unary.f32(i32 21, float %1627)  ; Exp(value)
  %1631 = call float @dx.op.unary.f32(i32 21, float %1629)  ; Exp(value)
  %1632 = call float @dx.op.binary.f32(i32 35, float %1174, float %1630)  ; FMax(a,b)
  %1633 = call float @dx.op.binary.f32(i32 35, float %1174, float %1631)  ; FMax(a,b)
  %1634 = fsub fast float %1633, %1632
  %1635 = fmul fast float %1634, %1625
  %1636 = fadd fast float %1635, %1632
  %1637 = call float @dx.op.unary.f32(i32 7, float %1636)  ; Saturate(value)
  %1638 = fsub fast float %1171, %1176
  %1639 = fsub fast float %1172, %1177
  %1640 = fsub fast float %1173, %1178
  %1641 = fmul fast float %1625, %1638
  %1642 = fmul fast float %1625, %1639
  %1643 = fmul fast float %1625, %1640
  %1644 = fadd fast float %1641, %1176
  %1645 = fadd fast float %1642, %1177
  %1646 = fadd fast float %1643, %1178
  %1647 = fsub fast float 1.000000e+00, %1637
  %1648 = fmul fast float %1647, %1644
  %1649 = fmul fast float %1647, %1645
  %1650 = fmul fast float %1647, %1646
  br label %1710

; <label>:1651                                    ; preds = %1610
  %1652 = fmul fast float %1621, %1183
  %1653 = call float @dx.op.unary.f32(i32 7, float %1652)  ; Saturate(value)
  %1654 = fsub fast float 2.000000e+00, %1653
  %1655 = fmul fast float %1653, 9.921875e-01
  %1656 = fmul fast float %1655, %1654
  %1657 = fadd fast float %1656, 3.906250e-03
  %1658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1657, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1659 = extractvalue %dx.types.ResRet.f32 %1658, 0
  %1660 = fsub fast float %1653, %1659
  %1661 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1660)  ; FMax(a,b)
  %1662 = fmul fast float %1169, %1159
  %1663 = call float @dx.op.unary.f32(i32 6, float %1662)  ; FAbs(value)
  %1664 = fcmp fast ogt float %1663, 0x3EB0C6F7A0000000
  br i1 %1664, label %1665, label %1671, !dx.controlflow.hints !99

; <label>:1665                                    ; preds = %1651
  %1666 = fmul fast float %1662, 0xBFF7154760000000
  %1667 = call float @dx.op.unary.f32(i32 21, float %1666)  ; Exp(value)
  %1668 = fsub fast float 1.000000e+00, %1667
  %1669 = fdiv fast float %1668, %1662
  %1670 = fmul fast float %1669, %1179
  br label %1671

; <label>:1671                                    ; preds = %1665, %1651
  %1672 = phi float [ %1670, %1665 ], [ %1179, %1651 ]
  %1673 = fadd fast float %1672, %1181
  %1674 = fmul fast float %1673, %1661
  %1675 = fmul fast float %1166, %1674
  %1676 = fsub fast float -0.000000e+00, %1675
  %1677 = fmul fast float %1167, %1674
  %1678 = fsub fast float -0.000000e+00, %1677
  %1679 = fmul fast float %1168, %1674
  %1680 = fsub fast float -0.000000e+00, %1679
  %1681 = call float @dx.op.unary.f32(i32 21, float %1676)  ; Exp(value)
  %1682 = call float @dx.op.unary.f32(i32 21, float %1678)  ; Exp(value)
  %1683 = call float @dx.op.unary.f32(i32 21, float %1680)  ; Exp(value)
  %1684 = fmul fast float %1195, %1195
  %1685 = fadd fast float %1684, 1.000000e+00
  %1686 = fmul fast float %1685, 0x3FAE8EC8A0000000
  %1687 = fmul fast float %1686, %1176
  %1688 = fmul fast float %1686, %1177
  %1689 = fmul fast float %1686, %1178
  %1690 = fmul fast float %1195, %1174
  %1691 = fsub fast float 1.000000e+00, %1690
  %1692 = fmul fast float %1174, %1174
  %1693 = fsub fast float 1.000000e+00, %1692
  %1694 = fmul fast float %1693, 0x3FB45F3060000000
  %1695 = fmul fast float %1691, %1691
  %1696 = fdiv fast float 1.000000e+00, %1695
  %1697 = fmul fast float %1694, %1696
  %1698 = fmul fast float %1697, %1171
  %1699 = fmul fast float %1697, %1172
  %1700 = fmul fast float %1697, %1173
  %1701 = fadd fast float %1698, %1687
  %1702 = fadd fast float %1699, %1688
  %1703 = fadd fast float %1700, %1689
  %1704 = fsub fast float 1.000000e+00, %1681
  %1705 = fsub fast float 1.000000e+00, %1682
  %1706 = fsub fast float 1.000000e+00, %1683
  %1707 = fmul fast float %1701, %1704
  %1708 = fmul fast float %1702, %1705
  %1709 = fmul fast float %1703, %1706
  br label %1710

; <label>:1710                                    ; preds = %1671, %1622
  %1711 = phi float [ %1648, %1622 ], [ %1707, %1671 ]
  %1712 = phi float [ %1649, %1622 ], [ %1708, %1671 ]
  %1713 = phi float [ %1650, %1622 ], [ %1709, %1671 ]
  %1714 = phi float [ %1637, %1622 ], [ %1681, %1671 ]
  %1715 = phi float [ %1637, %1622 ], [ %1682, %1671 ]
  %1716 = phi float [ %1637, %1622 ], [ %1683, %1671 ]
  br i1 %1203, label %1717, label %1915, !dx.controlflow.hints !100

; <label>:1717                                    ; preds = %1710
  %1718 = extractvalue %dx.types.CBufRet.f32 %1616, 0
  %1719 = fmul fast float %1718, %1618
  %1720 = fsub fast float %1613, %1711
  %1721 = fsub fast float %1614, %1712
  %1722 = fsub fast float %1615, %1713
  %1723 = fmul fast float %1719, %1720
  %1724 = fmul fast float %1719, %1721
  %1725 = fmul fast float %1719, %1722
  %1726 = fadd fast float %1723, %1711
  %1727 = fadd fast float %1724, %1712
  %1728 = fadd fast float %1725, %1713
  %1729 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1714)  ; FMax(a,b)
  %1730 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1715)  ; FMax(a,b)
  %1731 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1716)  ; FMax(a,b)
  %1732 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1612)  ; FMax(a,b)
  %1733 = call float @dx.op.binary.f32(i32 35, float %1611, float %1621)  ; FMax(a,b)
  %1734 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1733)  ; FMax(a,b)
  %1735 = fdiv fast float %1611, %1734
  %1736 = call float @dx.op.unary.f32(i32 7, float %1735)  ; Saturate(value)
  %1737 = fdiv fast float %1621, %1734
  %1738 = call float @dx.op.unary.f32(i32 7, float %1737)  ; Saturate(value)
  %1739 = fcmp fast une float %1732, 1.000000e+00
  br i1 %1739, label %1740, label %1753, !dx.controlflow.hints !101

; <label>:1740                                    ; preds = %1717
  %1741 = call float @dx.op.unary.f32(i32 23, float %1732)  ; Log(value)
  %1742 = fmul fast float %1741, 0x3FE62E4300000000
  %1743 = fmul fast float %1613, %1742
  %1744 = fsub fast float -0.000000e+00, %1743
  %1745 = fmul fast float %1614, %1742
  %1746 = fsub fast float -0.000000e+00, %1745
  %1747 = fmul fast float %1615, %1742
  %1748 = fsub fast float -0.000000e+00, %1747
  %1749 = fsub fast float 1.000000e+00, %1732
  %1750 = fdiv fast float %1744, %1749
  %1751 = fdiv fast float %1746, %1749
  %1752 = fdiv fast float %1748, %1749
  br label %1753

; <label>:1753                                    ; preds = %1740, %1717
  %1754 = phi float [ %1750, %1740 ], [ %1613, %1717 ]
  %1755 = phi float [ %1751, %1740 ], [ %1614, %1717 ]
  %1756 = phi float [ %1752, %1740 ], [ %1615, %1717 ]
  %1757 = phi float [ %1742, %1740 ], [ 0.000000e+00, %1717 ]
  %1758 = fcmp fast une float %1729, 1.000000e+00
  br i1 %1758, label %1759, label %1766, !dx.controlflow.hints !102

; <label>:1759                                    ; preds = %1753
  %1760 = call float @dx.op.unary.f32(i32 23, float %1729)  ; Log(value)
  %1761 = fmul fast float %1760, 0x3FE62E4300000000
  %1762 = fmul fast float %1726, %1761
  %1763 = fsub fast float -0.000000e+00, %1762
  %1764 = fsub fast float 1.000000e+00, %1729
  %1765 = fdiv fast float %1763, %1764
  br label %1766

; <label>:1766                                    ; preds = %1759, %1753
  %1767 = phi float [ %1765, %1759 ], [ %1726, %1753 ]
  %1768 = phi float [ %1761, %1759 ], [ 0.000000e+00, %1753 ]
  %1769 = fcmp fast une float %1730, 1.000000e+00
  br i1 %1769, label %1770, label %1777, !dx.controlflow.hints !102

; <label>:1770                                    ; preds = %1766
  %1771 = call float @dx.op.unary.f32(i32 23, float %1730)  ; Log(value)
  %1772 = fmul fast float %1771, 0x3FE62E4300000000
  %1773 = fmul fast float %1727, %1772
  %1774 = fsub fast float -0.000000e+00, %1773
  %1775 = fsub fast float 1.000000e+00, %1730
  %1776 = fdiv fast float %1774, %1775
  br label %1777

; <label>:1777                                    ; preds = %1770, %1766
  %1778 = phi float [ %1776, %1770 ], [ %1727, %1766 ]
  %1779 = phi float [ %1772, %1770 ], [ 0.000000e+00, %1766 ]
  %1780 = fcmp fast une float %1731, 1.000000e+00
  br i1 %1780, label %1781, label %1788, !dx.controlflow.hints !102

; <label>:1781                                    ; preds = %1777
  %1782 = call float @dx.op.unary.f32(i32 23, float %1731)  ; Log(value)
  %1783 = fmul fast float %1782, 0x3FE62E4300000000
  %1784 = fmul fast float %1728, %1783
  %1785 = fsub fast float -0.000000e+00, %1784
  %1786 = fsub fast float 1.000000e+00, %1731
  %1787 = fdiv fast float %1785, %1786
  br label %1788

; <label>:1788                                    ; preds = %1781, %1777
  %1789 = phi float [ %1787, %1781 ], [ %1728, %1777 ]
  %1790 = phi float [ %1783, %1781 ], [ 0.000000e+00, %1777 ]
  %1791 = fmul fast float %1754, %1738
  %1792 = fmul fast float %1755, %1738
  %1793 = fmul fast float %1756, %1738
  %1794 = fmul fast float %1757, %1738
  %1795 = fmul fast float %1767, %1736
  %1796 = fmul fast float %1778, %1736
  %1797 = fmul fast float %1789, %1736
  %1798 = fmul fast float %1768, %1736
  %1799 = fmul fast float %1779, %1736
  %1800 = fmul fast float %1790, %1736
  %1801 = fadd fast float %1795, %1791
  %1802 = fadd fast float %1796, %1792
  %1803 = fadd fast float %1797, %1793
  %1804 = fadd fast float %1798, %1794
  %1805 = fadd fast float %1799, %1794
  %1806 = fadd fast float %1800, %1794
  %1807 = fcmp fast une float %1804, 0.000000e+00
  br i1 %1807, label %1808, label %1815, !dx.controlflow.hints !103

; <label>:1808                                    ; preds = %1788
  %1809 = fmul fast float %1804, 0x3FF7154760000000
  %1810 = call float @dx.op.unary.f32(i32 21, float %1809)  ; Exp(value)
  %1811 = fsub fast float 1.000000e+00, %1810
  %1812 = fmul fast float %1801, %1811
  %1813 = fsub fast float -0.000000e+00, %1812
  %1814 = fdiv fast float %1813, %1804
  br label %1815

; <label>:1815                                    ; preds = %1808, %1788
  %1816 = phi float [ %1810, %1808 ], [ 1.000000e+00, %1788 ]
  %1817 = phi float [ %1814, %1808 ], [ %1801, %1788 ]
  %1818 = fcmp fast une float %1805, 0.000000e+00
  br i1 %1818, label %1819, label %1826, !dx.controlflow.hints !103

; <label>:1819                                    ; preds = %1815
  %1820 = fmul fast float %1805, 0x3FF7154760000000
  %1821 = call float @dx.op.unary.f32(i32 21, float %1820)  ; Exp(value)
  %1822 = fsub fast float 1.000000e+00, %1821
  %1823 = fmul fast float %1802, %1822
  %1824 = fsub fast float -0.000000e+00, %1823
  %1825 = fdiv fast float %1824, %1805
  br label %1826

; <label>:1826                                    ; preds = %1819, %1815
  %1827 = phi float [ %1821, %1819 ], [ 1.000000e+00, %1815 ]
  %1828 = phi float [ %1825, %1819 ], [ %1802, %1815 ]
  %1829 = fcmp fast une float %1806, 0.000000e+00
  br i1 %1829, label %1830, label %1837, !dx.controlflow.hints !103

; <label>:1830                                    ; preds = %1826
  %1831 = fmul fast float %1806, 0x3FF7154760000000
  %1832 = call float @dx.op.unary.f32(i32 21, float %1831)  ; Exp(value)
  %1833 = fsub fast float 1.000000e+00, %1832
  %1834 = fmul fast float %1803, %1833
  %1835 = fsub fast float -0.000000e+00, %1834
  %1836 = fdiv fast float %1835, %1806
  br label %1837

; <label>:1837                                    ; preds = %1830, %1826
  %1838 = phi float [ %1832, %1830 ], [ 1.000000e+00, %1826 ]
  %1839 = phi float [ %1836, %1830 ], [ %1803, %1826 ]
  %1840 = fcmp fast ogt float %1736, %1738
  br i1 %1840, label %1841, label %1861, !dx.controlflow.hints !104

; <label>:1841                                    ; preds = %1837
  %1842 = fsub fast float 1.000000e+00, %1738
  %1843 = fmul fast float %1754, %1842
  %1844 = fmul fast float %1755, %1842
  %1845 = fmul fast float %1756, %1842
  %1846 = fmul fast float %1757, %1842
  %1847 = fcmp fast une float %1846, 0.000000e+00
  br i1 %1847, label %1848, label %1899, !dx.controlflow.hints !105

; <label>:1848                                    ; preds = %1841
  %1849 = fmul fast float %1846, 0x3FF7154760000000
  %1850 = call float @dx.op.unary.f32(i32 21, float %1849)  ; Exp(value)
  %1851 = fsub fast float 1.000000e+00, %1850
  %1852 = fmul fast float %1843, %1851
  %1853 = fsub fast float -0.000000e+00, %1852
  %1854 = fmul fast float %1844, %1851
  %1855 = fsub fast float -0.000000e+00, %1854
  %1856 = fmul fast float %1845, %1851
  %1857 = fsub fast float -0.000000e+00, %1856
  %1858 = fdiv fast float %1853, %1846
  %1859 = fdiv fast float %1855, %1846
  %1860 = fdiv fast float %1857, %1846
  br label %1899

; <label>:1861                                    ; preds = %1837
  %1862 = fsub fast float 1.000000e+00, %1736
  %1863 = fmul fast float %1767, %1862
  %1864 = fmul fast float %1778, %1862
  %1865 = fmul fast float %1789, %1862
  %1866 = fmul fast float %1768, %1862
  %1867 = fmul fast float %1779, %1862
  %1868 = fmul fast float %1790, %1862
  %1869 = fcmp fast une float %1866, 0.000000e+00
  br i1 %1869, label %1870, label %1877, !dx.controlflow.hints !103

; <label>:1870                                    ; preds = %1861
  %1871 = fmul fast float %1866, 0x3FF7154760000000
  %1872 = call float @dx.op.unary.f32(i32 21, float %1871)  ; Exp(value)
  %1873 = fsub fast float 1.000000e+00, %1872
  %1874 = fmul fast float %1863, %1873
  %1875 = fsub fast float -0.000000e+00, %1874
  %1876 = fdiv fast float %1875, %1866
  br label %1877

; <label>:1877                                    ; preds = %1870, %1861
  %1878 = phi float [ %1876, %1870 ], [ %1863, %1861 ]
  %1879 = phi float [ %1872, %1870 ], [ 1.000000e+00, %1861 ]
  %1880 = fcmp fast une float %1867, 0.000000e+00
  br i1 %1880, label %1881, label %1888, !dx.controlflow.hints !103

; <label>:1881                                    ; preds = %1877
  %1882 = fmul fast float %1867, 0x3FF7154760000000
  %1883 = call float @dx.op.unary.f32(i32 21, float %1882)  ; Exp(value)
  %1884 = fsub fast float 1.000000e+00, %1883
  %1885 = fmul fast float %1864, %1884
  %1886 = fsub fast float -0.000000e+00, %1885
  %1887 = fdiv fast float %1886, %1867
  br label %1888

; <label>:1888                                    ; preds = %1881, %1877
  %1889 = phi float [ %1887, %1881 ], [ %1864, %1877 ]
  %1890 = phi float [ %1883, %1881 ], [ 1.000000e+00, %1877 ]
  %1891 = fcmp fast une float %1868, 0.000000e+00
  br i1 %1891, label %1892, label %1899, !dx.controlflow.hints !103

; <label>:1892                                    ; preds = %1888
  %1893 = fmul fast float %1868, 0x3FF7154760000000
  %1894 = call float @dx.op.unary.f32(i32 21, float %1893)  ; Exp(value)
  %1895 = fsub fast float 1.000000e+00, %1894
  %1896 = fmul fast float %1865, %1895
  %1897 = fsub fast float -0.000000e+00, %1896
  %1898 = fdiv fast float %1897, %1868
  br label %1899

; <label>:1899                                    ; preds = %1892, %1888, %1848, %1841
  %1900 = phi float [ %1898, %1892 ], [ %1860, %1848 ], [ %1845, %1841 ], [ %1865, %1888 ]
  %1901 = phi float [ %1889, %1892 ], [ %1859, %1848 ], [ %1844, %1841 ], [ %1889, %1888 ]
  %1902 = phi float [ %1878, %1892 ], [ %1858, %1848 ], [ %1843, %1841 ], [ %1878, %1888 ]
  %1903 = phi float [ %1894, %1892 ], [ %1850, %1848 ], [ 1.000000e+00, %1841 ], [ 1.000000e+00, %1888 ]
  %1904 = phi float [ %1890, %1892 ], [ %1850, %1848 ], [ 1.000000e+00, %1841 ], [ %1890, %1888 ]
  %1905 = phi float [ %1879, %1892 ], [ %1850, %1848 ], [ 1.000000e+00, %1841 ], [ %1879, %1888 ]
  %1906 = fmul fast float %1905, %1817
  %1907 = fmul fast float %1904, %1828
  %1908 = fmul fast float %1903, %1839
  %1909 = fadd fast float %1906, %1902
  %1910 = fadd fast float %1907, %1901
  %1911 = fadd fast float %1908, %1900
  %1912 = fmul fast float %1905, %1816
  %1913 = fmul fast float %1904, %1827
  %1914 = fmul fast float %1903, %1838
  br label %1915

; <label>:1915                                    ; preds = %1899, %1710
  %1916 = phi float [ %1716, %1710 ], [ %1914, %1899 ]
  %1917 = phi float [ %1715, %1710 ], [ %1913, %1899 ]
  %1918 = phi float [ %1714, %1710 ], [ %1912, %1899 ]
  %1919 = phi float [ %1713, %1710 ], [ %1911, %1899 ]
  %1920 = phi float [ %1712, %1710 ], [ %1910, %1899 ]
  %1921 = phi float [ %1711, %1710 ], [ %1909, %1899 ]
  %1922 = fmul fast float %1918, %1059
  %1923 = fmul fast float %1917, %1060
  %1924 = fmul fast float %1916, %1061
  %1925 = fsub fast float 1.000000e+00, %1122
  %1926 = fmul fast float %1921, %1925
  %1927 = fmul fast float %1920, %1925
  %1928 = fmul fast float %1919, %1925
  %1929 = fadd fast float %1926, %1922
  %1930 = fadd fast float %1927, %1923
  %1931 = fadd fast float %1928, %1924
  %1932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1933 = extractvalue %dx.types.CBufRet.f32 %1932, 2
  %1934 = fmul fast float %1933, %1132
  %1935 = call float @dx.op.unary.f32(i32 7, float %1934)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %20, i32 %21, i32 undef, float %1122, float %1122, float %1122, float %1122, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1937 = extractvalue %dx.types.CBufRet.f32 %1936, 0
  %1938 = fmul fast float %1937, %1929
  %1939 = fmul fast float %1937, %1930
  %1940 = fmul fast float %1937, %1931
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %20, i32 %21, i32 undef, float %1938, float %1939, float %1940, float %1938, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %20, i32 %21, i32 undef, float %1935, float %1935, float %1935, float %1935, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!30 = !{void ()* @cs_fog_raymarching_clouds, !"cs_fog_raymarching_clouds", null, !4, !31}
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
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 1}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = !{!61, !61, i64 0}
!61 = !{!"float", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C/C++ TBAA"}
!64 = !{!65, !67, !69, !70, !72, !73, !74}
!65 = distinct !{!65, !66, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!66 = distinct !{!66, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!67 = distinct !{!67, !68, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!68 = distinct !{!68, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!69 = distinct !{!69, !68, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!70 = distinct !{!70, !71, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!71 = distinct !{!71, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!72 = distinct !{!72, !71, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!73 = distinct !{!73, !71, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!74 = distinct !{!74, !71, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = !{!77}
!77 = distinct !{!77, !78, !"\01?sort@@YAXAIAM00@Z: %c"}
!78 = distinct !{!78, !"\01?sort@@YAXAIAM00@Z"}
!79 = !{!80, !81, !65, !67, !69, !70, !72, !73, !74}
!80 = distinct !{!80, !78, !"\01?sort@@YAXAIAM00@Z: %a"}
!81 = distinct !{!81, !78, !"\01?sort@@YAXAIAM00@Z: %b"}
!82 = !{!81}
!83 = !{!80, !77, !65, !67, !69, !70, !72, !73, !74}
!84 = !{!80}
!85 = !{!81, !77, !65, !67, !69, !70, !72, !73, !74}
!86 = !{!87}
!87 = distinct !{!87, !88, !"\01?sort@@YAXAIAM00@Z: %c"}
!88 = distinct !{!88, !"\01?sort@@YAXAIAM00@Z"}
!89 = !{!90, !91, !65, !67, !69, !70, !72, !73, !74}
!90 = distinct !{!90, !88, !"\01?sort@@YAXAIAM00@Z: %a"}
!91 = distinct !{!91, !88, !"\01?sort@@YAXAIAM00@Z: %b"}
!92 = !{!91}
!93 = !{!90, !87, !65, !67, !69, !70, !72, !73, !74}
!94 = !{!90}
!95 = !{!91, !87, !65, !67, !69, !70, !72, !73, !74}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}

