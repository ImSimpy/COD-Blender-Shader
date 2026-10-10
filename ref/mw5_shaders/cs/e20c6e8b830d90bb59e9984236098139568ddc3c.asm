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
; shader hash: 19898040d2173df05766e158b313edb4
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
;                                   texture     f32          2d      T1            t16     1
;                                   texture     f32          2d      T2            t27     1
;                                   texture     f32          3d      T3             t1     1
;                                   texture     f32          3d      T4             t2     1
;                                   texture     f32          2d      T5             t8     1
;                                   texture     f32          2d      T6             t9     1
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
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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

define void @cs_fog_raymarching_air_clouds_heightmap_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %23 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %24 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %25 = alloca [3 x float], align 4
  %26 = alloca [3 x float], align 4
  %27 = add i32 %23, %22
  %28 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.i32 %28, 1
  %30 = add i32 %27, %29
  %31 = lshr i32 %30, 1
  %32 = and i32 %31, 1
  %33 = and i32 %30, 1
  %34 = xor i32 %32, %33
  %35 = shl i32 %22, 1
  %36 = shl i32 %23, 1
  %37 = or i32 %34, %35
  %38 = or i32 %32, %36
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = extractvalue %dx.types.ResRet.i32 %41, 1
  %44 = extractvalue %dx.types.ResRet.i32 %41, 2
  %45 = extractvalue %dx.types.ResRet.i32 %41, 3
  %46 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %47 = extractvalue %dx.types.ResRet.i32 %46, 0
  %48 = extractvalue %dx.types.ResRet.i32 %46, 1
  %49 = extractvalue %dx.types.ResRet.i32 %46, 2
  %50 = extractvalue %dx.types.ResRet.i32 %46, 3
  %51 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %52 = extractvalue %dx.types.ResRet.i32 %51, 0
  %53 = extractvalue %dx.types.ResRet.i32 %51, 1
  %54 = extractvalue %dx.types.ResRet.i32 %51, 2
  %55 = extractvalue %dx.types.ResRet.i32 %51, 3
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %58 = fmul fast float %57, %57
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %62 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %63 = fmul fast float %62, 0x3FF17B1420000000
  %64 = icmp eq i32 %24, 0
  br i1 %64, label %65, label %206, !dx.controlflow.hints !35

; <label>:65                                      ; preds = %0
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 3
  %70 = extractvalue %dx.types.ResRet.i32 %39, 1
  %71 = and i32 %70, 65535
  %72 = call float @dx.op.legacyF16ToF32(i32 131, i32 %71)  ; LegacyF16ToF32(value)
  %73 = lshr i32 %40, 16
  %74 = call float @dx.op.legacyF16ToF32(i32 131, i32 %73)  ; LegacyF16ToF32(value)
  %75 = and i32 %40, 65535
  %76 = call float @dx.op.legacyF16ToF32(i32 131, i32 %75)  ; LegacyF16ToF32(value)
  %77 = lshr i32 %45, 16
  %78 = call float @dx.op.legacyF16ToF32(i32 131, i32 %77)  ; LegacyF16ToF32(value)
  %79 = and i32 %45, 65535
  %80 = call float @dx.op.legacyF16ToF32(i32 131, i32 %79)  ; LegacyF16ToF32(value)
  %81 = lshr i32 %44, 16
  %82 = call float @dx.op.legacyF16ToF32(i32 131, i32 %81)  ; LegacyF16ToF32(value)
  %83 = and i32 %44, 65535
  %84 = call float @dx.op.legacyF16ToF32(i32 131, i32 %83)  ; LegacyF16ToF32(value)
  %85 = lshr i32 %43, 16
  %86 = call float @dx.op.legacyF16ToF32(i32 131, i32 %85)  ; LegacyF16ToF32(value)
  %87 = lshr i32 %42, 16
  %88 = call float @dx.op.legacyF16ToF32(i32 131, i32 %87)  ; LegacyF16ToF32(value)
  %89 = and i32 %42, 65535
  %90 = call float @dx.op.legacyF16ToF32(i32 131, i32 %89)  ; LegacyF16ToF32(value)
  %91 = lshr i32 %50, 16
  %92 = call float @dx.op.legacyF16ToF32(i32 131, i32 %91)  ; LegacyF16ToF32(value)
  %93 = and i32 %50, 65535
  %94 = call float @dx.op.legacyF16ToF32(i32 131, i32 %93)  ; LegacyF16ToF32(value)
  %95 = lshr i32 %49, 16
  %96 = call float @dx.op.legacyF16ToF32(i32 131, i32 %95)  ; LegacyF16ToF32(value)
  %97 = and i32 %49, 65535
  %98 = call float @dx.op.legacyF16ToF32(i32 131, i32 %97)  ; LegacyF16ToF32(value)
  %99 = lshr i32 %48, 16
  %100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %99)  ; LegacyF16ToF32(value)
  %101 = and i32 %48, 65535
  %102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %101)  ; LegacyF16ToF32(value)
  %103 = and i32 %47, 65535
  %104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %103)  ; LegacyF16ToF32(value)
  %105 = lshr i32 %55, 16
  %106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %105)  ; LegacyF16ToF32(value)
  %107 = and i32 %55, 65535
  %108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %107)  ; LegacyF16ToF32(value)
  %109 = lshr i32 %54, 16
  %110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %109)  ; LegacyF16ToF32(value)
  %111 = and i32 %54, 65535
  %112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %111)  ; LegacyF16ToF32(value)
  %113 = lshr i32 %53, 16
  %114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %113)  ; LegacyF16ToF32(value)
  %115 = and i32 %53, 65535
  %116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %115)  ; LegacyF16ToF32(value)
  %117 = lshr i32 %52, 16
  %118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %117)  ; LegacyF16ToF32(value)
  %119 = and i32 %43, 65535
  %120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %119)  ; LegacyF16ToF32(value)
  %121 = lshr i32 %47, 16
  %122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %121)  ; LegacyF16ToF32(value)
  %123 = and i32 %52, 65535
  %124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %123)  ; LegacyF16ToF32(value)
  %125 = fmul fast float %120, 0x3FD20DD760000000
  %126 = fmul fast float %62, %57
  %127 = fmul fast float %126, %84
  %128 = fmul fast float %62, %62
  %129 = fmul fast float %128, 0x3FEE471020000000
  %130 = fadd fast float %129, 0xBFD42F6020000000
  %131 = fmul fast float %76, %130
  %132 = fmul fast float %82, %60
  %133 = fmul fast float %86, %61
  %134 = fmul fast float %60, %58
  %135 = fmul fast float %134, %63
  %136 = fmul fast float %135, %74
  %137 = fsub fast float -0.000000e+00, %136
  %138 = fmul fast float %61, %58
  %139 = fmul fast float %138, %63
  %140 = fmul fast float %139, %78
  %141 = fmul fast float %60, %60
  %142 = fmul fast float %61, %61
  %143 = fsub fast float %141, %142
  %144 = fmul fast float %143, 0x3FE17B1420000000
  %145 = fmul fast float %144, %72
  %146 = fmul fast float %61, 0x3FF17B1420000000
  %147 = fmul fast float %146, %60
  %148 = fmul fast float %147, %80
  %149 = fadd fast float %133, %132
  %150 = fmul fast float %149, %57
  %151 = fsub fast float %150, %127
  %152 = fmul fast float %151, 0x3FDF454380000000
  %153 = fadd fast float %131, %145
  %154 = fadd fast float %153, %148
  %155 = fmul fast float %154, %58
  %156 = fsub fast float %137, %140
  %157 = fadd fast float %156, %125
  %158 = fadd fast float %157, %152
  %159 = fadd fast float %158, %155
  %160 = fmul fast float %67, %69
  %161 = fmul fast float %160, %159
  %162 = fmul fast float %122, 0x3FD20DD760000000
  %163 = fmul fast float %126, %100
  %164 = fmul fast float %92, %130
  %165 = fmul fast float %98, %60
  %166 = fmul fast float %102, %61
  %167 = fmul fast float %135, %90
  %168 = fsub fast float -0.000000e+00, %167
  %169 = fmul fast float %139, %94
  %170 = fmul fast float %144, %88
  %171 = fmul fast float %147, %96
  %172 = fadd fast float %166, %165
  %173 = fmul fast float %172, %57
  %174 = fsub fast float %173, %163
  %175 = fmul fast float %174, 0x3FDF454380000000
  %176 = fadd fast float %164, %170
  %177 = fadd fast float %176, %171
  %178 = fmul fast float %177, %58
  %179 = fsub fast float %168, %169
  %180 = fadd fast float %179, %162
  %181 = fadd fast float %180, %175
  %182 = fadd fast float %181, %178
  %183 = fmul fast float %160, %182
  %184 = fmul fast float %124, 0x3FD20DD760000000
  %185 = fmul fast float %126, %116
  %186 = fmul fast float %108, %130
  %187 = fmul fast float %114, %60
  %188 = fmul fast float %118, %61
  %189 = fmul fast float %135, %106
  %190 = fsub fast float -0.000000e+00, %189
  %191 = fmul fast float %139, %110
  %192 = fmul fast float %144, %104
  %193 = fmul fast float %147, %112
  %194 = fadd fast float %188, %187
  %195 = fmul fast float %194, %57
  %196 = fsub fast float %195, %185
  %197 = fmul fast float %196, 0x3FDF454380000000
  %198 = fadd fast float %186, %192
  %199 = fadd fast float %198, %193
  %200 = fmul fast float %199, %58
  %201 = fsub fast float %190, %191
  %202 = fadd fast float %201, %184
  %203 = fadd fast float %202, %197
  %204 = fadd fast float %203, %200
  %205 = fmul fast float %160, %204
  store float %205, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  store float %183, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  store float %161, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  br label %206

; <label>:206                                     ; preds = %65, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %207 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  %208 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  %209 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  %210 = uitofp i32 %37 to float
  %211 = uitofp i32 %38 to float
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %214 = fmul fast float %213, 0x3FE3C6EF40000000
  %215 = frem fast float %210, 2.560000e+02
  %216 = frem fast float %211, 2.560000e+02
  %217 = fptoui float %215 to i32
  %218 = fptoui float %216 to i32
  %219 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %217, i32 %218, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %220 = extractvalue %dx.types.ResRet.f32 %219, 0
  %221 = extractvalue %dx.types.ResRet.f32 %219, 1
  %222 = extractvalue %dx.types.ResRet.f32 %219, 2
  %223 = extractvalue %dx.types.ResRet.f32 %219, 3
  %224 = fadd fast float %220, %214
  %225 = fadd fast float %221, %214
  %226 = fadd fast float %222, %214
  %227 = fadd fast float %223, %214
  %228 = call float @dx.op.unary.f32(i32 22, float %224)  ; Frc(value)
  %229 = call float @dx.op.unary.f32(i32 22, float %225)  ; Frc(value)
  %230 = call float @dx.op.unary.f32(i32 22, float %226)  ; Frc(value)
  %231 = call float @dx.op.unary.f32(i32 22, float %227)  ; Frc(value)
  %232 = fadd fast float %230, %210
  %233 = fadd fast float %231, %211
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 2
  %236 = extractvalue %dx.types.CBufRet.f32 %234, 3
  %237 = fmul fast float %235, %232
  %238 = fmul fast float %236, %233
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 0
  %241 = extractvalue %dx.types.CBufRet.f32 %239, 1
  %242 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 1
  %245 = fmul fast float %237, 2.000000e+00
  %246 = fmul fast float %238, 2.000000e+00
  %247 = fsub fast float 1.000000e+00, %245
  %248 = fsub fast float 1.000000e+00, %246
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 0
  %251 = extractvalue %dx.types.CBufRet.f32 %249, 1
  %252 = extractvalue %dx.types.CBufRet.f32 %249, 2
  %253 = fmul fast float %250, %247
  %254 = fmul fast float %251, %247
  %255 = fmul fast float %252, %247
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 0
  %258 = extractvalue %dx.types.CBufRet.f32 %256, 1
  %259 = extractvalue %dx.types.CBufRet.f32 %256, 2
  %260 = fmul fast float %257, %248
  %261 = fmul fast float %258, %248
  %262 = fmul fast float %259, %248
  %263 = fadd fast float %260, %253
  %264 = fadd fast float %261, %254
  %265 = fadd fast float %262, %255
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %286 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %37, i32 %38, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = fcmp fast ogt float %287, -1.000000e+00
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 1
  %291 = select i1 %288, float %290, float 1.000000e+00
  %292 = fadd fast float %287, 1.000000e+00
  %293 = fmul fast float %291, %292
  %294 = call float @dx.op.unary.f32(i32 6, float %293)  ; FAbs(value)
  %295 = fdiv fast float 1.000000e+00, %244
  %296 = fmul fast float %295, %281
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %299 = fmul fast float %298, %296
  %300 = fmul fast float %296, %294
  %301 = extractvalue %dx.types.CBufRet.f32 %289, 3
  %302 = fcmp fast oge float %294, %301
  %303 = call float @dx.op.binary.f32(i32 36, float %300, float %299)  ; FMin(a,b)
  %304 = select i1 %302, float %299, float %303
  %305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.i32 %305, 3
  %307 = icmp eq i32 %306, 0
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 2
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %312 = fsub fast float %309, %242
  %313 = fadd fast float %312, %311
  %314 = fsub fast float 0xC7EFFFFFE0000000, %242
  br i1 %307, label %326, label %315, !dx.controlflow.hints !36

; <label>:315                                     ; preds = %206
  %316 = fsub fast float -0.000000e+00, %241
  %317 = fsub fast float -0.000000e+00, %240
  %318 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %317, float %316, float %313)  ; Dot3(ax,ay,az,bx,by,bz)
  %319 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %283, float %284, float %285)  ; Dot3(ax,ay,az,bx,by,bz)
  %320 = fdiv fast float 1.000000e+00, %319
  %321 = fmul fast float %320, %318
  %322 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %317, float %316, float %314)  ; Dot3(ax,ay,az,bx,by,bz)
  %323 = fmul fast float %320, %322
  %324 = call float @dx.op.binary.f32(i32 36, float %321, float %323)  ; FMin(a,b)
  %325 = call float @dx.op.binary.f32(i32 35, float %321, float %323)  ; FMax(a,b)
  br label %359

; <label>:326                                     ; preds = %206
  %327 = extractvalue %dx.types.CBufRet.f32 %308, 0
  %328 = extractvalue %dx.types.CBufRet.f32 %308, 1
  %329 = extractvalue %dx.types.CBufRet.f32 %310, 0
  %330 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %331 = fdiv fast float 1.000000e+00, %283
  %332 = fdiv fast float 1.000000e+00, %284
  %333 = fdiv fast float 1.000000e+00, %285
  %334 = fsub fast float %327, %240
  %335 = fmul fast float %331, %334
  %336 = fadd fast float %334, %329
  %337 = fmul fast float %336, %331
  %338 = call float @dx.op.binary.f32(i32 36, float %335, float %337)  ; FMin(a,b)
  %339 = call float @dx.op.binary.f32(i32 35, float %335, float %337)  ; FMax(a,b)
  %340 = fsub fast float %328, %241
  %341 = fmul fast float %332, %340
  %342 = fadd fast float %340, %330
  %343 = fmul fast float %342, %332
  %344 = call float @dx.op.binary.f32(i32 36, float %341, float %343)  ; FMin(a,b)
  %345 = call float @dx.op.binary.f32(i32 35, float %338, float %344)  ; FMax(a,b)
  %346 = call float @dx.op.binary.f32(i32 35, float %341, float %343)  ; FMax(a,b)
  %347 = call float @dx.op.binary.f32(i32 36, float %339, float %346)  ; FMin(a,b)
  %348 = fmul fast float %333, %314
  %349 = fmul fast float %333, %313
  %350 = call float @dx.op.binary.f32(i32 36, float %348, float %349)  ; FMin(a,b)
  %351 = call float @dx.op.binary.f32(i32 35, float %345, float %350)  ; FMax(a,b)
  %352 = call float @dx.op.binary.f32(i32 35, float %348, float %349)  ; FMax(a,b)
  %353 = call float @dx.op.binary.f32(i32 36, float %347, float %352)  ; FMin(a,b)
  %354 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %351)  ; FMax(a,b)
  %355 = fcmp fast ult float %353, %354
  br i1 %355, label %359, label %356, !dx.controlflow.hints !37

; <label>:356                                     ; preds = %326
  %357 = call float @dx.op.binary.f32(i32 36, float %351, float %353)  ; FMin(a,b)
  %358 = call float @dx.op.binary.f32(i32 35, float %351, float %353)  ; FMax(a,b)
  br label %359

; <label>:359                                     ; preds = %356, %326, %315
  %360 = phi float [ %324, %315 ], [ %357, %356 ], [ 0.000000e+00, %326 ]
  %361 = phi float [ %325, %315 ], [ %358, %356 ], [ 0.000000e+00, %326 ]
  %362 = fcmp fast oeq float %361, 0.000000e+00
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 1
  %365 = fcmp fast olt float %361, %364
  %366 = or i1 %362, %365
  br i1 %366, label %371, label %367, !dx.controlflow.hints !38

; <label>:367                                     ; preds = %359
  %368 = call float @dx.op.binary.f32(i32 35, float %364, float %360)  ; FMax(a,b)
  %369 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %368)  ; FMin(a,b)
  %370 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %361)  ; FMax(a,b)
  br label %371

; <label>:371                                     ; preds = %367, %359
  %372 = phi i32 [ 1, %367 ], [ 0, %359 ]
  %373 = phi float [ %370, %367 ], [ -1.000000e+00, %359 ]
  %374 = phi float [ %369, %367 ], [ 0x47EFFFFFE0000000, %359 ]
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 3
  %377 = fsub fast float -0.000000e+00, %240
  %378 = fsub fast float -0.000000e+00, %241
  %379 = fsub fast float %376, %242
  %380 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %377, float %378, float %379)  ; Dot3(ax,ay,az,bx,by,bz)
  %381 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %283, float %284, float %285)  ; Dot3(ax,ay,az,bx,by,bz)
  %382 = fdiv fast float 1.000000e+00, %381
  %383 = fmul fast float %382, %380
  %384 = fcmp fast olt float %383, 0.000000e+00
  %385 = fcmp fast ogt float %285, 0.000000e+00
  %386 = and i1 %385, %384
  br i1 %386, label %391, label %387, !dx.controlflow.hints !39

; <label>:387                                     ; preds = %371
  %388 = fcmp fast olt float %285, 0.000000e+00
  br i1 %388, label %389, label %391, !dx.controlflow.hints !40

; <label>:389                                     ; preds = %387
  %390 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %383)  ; FMax(a,b)
  br label %391

; <label>:391                                     ; preds = %389, %387, %371
  %392 = phi float [ 0.000000e+00, %371 ], [ %390, %389 ], [ 0.000000e+00, %387 ]
  %393 = phi float [ 0.000000e+00, %371 ], [ 0x47EFFFFFE0000000, %389 ], [ %383, %387 ]
  %394 = fcmp fast oeq float %393, 0.000000e+00
  br i1 %394, label %398, label %395, !dx.controlflow.hints !41

; <label>:395                                     ; preds = %391
  %396 = call float @dx.op.binary.f32(i32 36, float %374, float %392)  ; FMin(a,b)
  %397 = call float @dx.op.binary.f32(i32 35, float %373, float %393)  ; FMax(a,b)
  br label %398

; <label>:398                                     ; preds = %395, %391
  %399 = phi i32 [ 1, %395 ], [ 0, %391 ]
  %400 = phi float [ %397, %395 ], [ %373, %391 ]
  %401 = phi float [ %396, %395 ], [ %374, %391 ]
  %402 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.i32 %402, 3
  %404 = icmp eq i32 %403, 0
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 2
  %407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %408 = extractvalue %dx.types.CBufRet.f32 %407, 2
  %409 = fsub fast float %406, %242
  %410 = fadd fast float %409, %408
  br i1 %404, label %418, label %411, !dx.controlflow.hints !42

; <label>:411                                     ; preds = %398
  %412 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %377, float %378, float %410)  ; Dot3(ax,ay,az,bx,by,bz)
  %413 = fmul fast float %382, %412
  %414 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %377, float %378, float %409)  ; Dot3(ax,ay,az,bx,by,bz)
  %415 = fmul fast float %382, %414
  %416 = call float @dx.op.binary.f32(i32 36, float %413, float %415)  ; FMin(a,b)
  %417 = call float @dx.op.binary.f32(i32 35, float %413, float %415)  ; FMax(a,b)
  br label %451

; <label>:418                                     ; preds = %398
  %419 = fdiv fast float 1.000000e+00, %283
  %420 = fdiv fast float 1.000000e+00, %284
  %421 = fdiv fast float 1.000000e+00, %285
  %422 = extractvalue %dx.types.CBufRet.f32 %405, 0
  %423 = extractvalue %dx.types.CBufRet.f32 %405, 1
  %424 = extractvalue %dx.types.CBufRet.f32 %407, 0
  %425 = extractvalue %dx.types.CBufRet.f32 %407, 1
  %426 = fsub fast float %422, %240
  %427 = fmul fast float %426, %419
  %428 = fadd fast float %426, %424
  %429 = fmul fast float %428, %419
  %430 = call float @dx.op.binary.f32(i32 36, float %427, float %429)  ; FMin(a,b)
  %431 = call float @dx.op.binary.f32(i32 35, float %427, float %429)  ; FMax(a,b)
  %432 = fsub fast float %423, %241
  %433 = fmul fast float %432, %420
  %434 = fadd fast float %432, %425
  %435 = fmul fast float %434, %420
  %436 = call float @dx.op.binary.f32(i32 36, float %433, float %435)  ; FMin(a,b)
  %437 = call float @dx.op.binary.f32(i32 35, float %430, float %436)  ; FMax(a,b)
  %438 = call float @dx.op.binary.f32(i32 35, float %433, float %435)  ; FMax(a,b)
  %439 = call float @dx.op.binary.f32(i32 36, float %431, float %438)  ; FMin(a,b)
  %440 = fmul fast float %409, %421
  %441 = fmul fast float %410, %421
  %442 = call float @dx.op.binary.f32(i32 36, float %440, float %441)  ; FMin(a,b)
  %443 = call float @dx.op.binary.f32(i32 35, float %437, float %442)  ; FMax(a,b)
  %444 = call float @dx.op.binary.f32(i32 35, float %440, float %441)  ; FMax(a,b)
  %445 = call float @dx.op.binary.f32(i32 36, float %439, float %444)  ; FMin(a,b)
  %446 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %443)  ; FMax(a,b)
  %447 = fcmp fast ult float %445, %446
  br i1 %447, label %451, label %448, !dx.controlflow.hints !43

; <label>:448                                     ; preds = %418
  %449 = call float @dx.op.binary.f32(i32 36, float %443, float %445)  ; FMin(a,b)
  %450 = call float @dx.op.binary.f32(i32 35, float %443, float %445)  ; FMax(a,b)
  br label %451

; <label>:451                                     ; preds = %448, %418, %411
  %452 = phi float [ %416, %411 ], [ %449, %448 ], [ 0.000000e+00, %418 ]
  %453 = phi float [ %417, %411 ], [ %450, %448 ], [ 0.000000e+00, %418 ]
  %454 = fcmp fast oeq float %453, 0.000000e+00
  br i1 %454, label %458, label %455, !dx.controlflow.hints !44

; <label>:455                                     ; preds = %451
  %456 = call float @dx.op.binary.f32(i32 36, float %401, float %452)  ; FMin(a,b)
  %457 = call float @dx.op.binary.f32(i32 35, float %400, float %453)  ; FMax(a,b)
  br label %458

; <label>:458                                     ; preds = %455, %451
  %459 = phi i32 [ 1, %455 ], [ 0, %451 ]
  %460 = phi float [ %457, %455 ], [ %400, %451 ]
  %461 = phi float [ %456, %455 ], [ %401, %451 ]
  %462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.f32 %462, 2
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 3
  %466 = fsub fast float %463, %242
  %467 = fadd fast float %466, %465
  %468 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %377, float %378, float %467)  ; Dot3(ax,ay,az,bx,by,bz)
  %469 = fmul fast float %382, %468
  %470 = fcmp fast olt float %469, 0.000000e+00
  %471 = and i1 %385, %470
  br i1 %471, label %476, label %472, !dx.controlflow.hints !45

; <label>:472                                     ; preds = %458
  %473 = fcmp fast olt float %285, 0.000000e+00
  br i1 %473, label %474, label %476, !dx.controlflow.hints !46

; <label>:474                                     ; preds = %472
  %475 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %469)  ; FMax(a,b)
  br label %476

; <label>:476                                     ; preds = %474, %472, %458
  %477 = phi float [ 0.000000e+00, %458 ], [ %475, %474 ], [ 0.000000e+00, %472 ]
  %478 = phi float [ 0.000000e+00, %458 ], [ 0x47EFFFFFE0000000, %474 ], [ %469, %472 ]
  %479 = fcmp fast oeq float %478, 0.000000e+00
  br i1 %479, label %483, label %480, !dx.controlflow.hints !47

; <label>:480                                     ; preds = %476
  %481 = call float @dx.op.binary.f32(i32 36, float %461, float %477)  ; FMin(a,b)
  %482 = call float @dx.op.binary.f32(i32 35, float %460, float %478)  ; FMax(a,b)
  br label %483

; <label>:483                                     ; preds = %480, %476
  %484 = phi i32 [ 1, %480 ], [ 0, %476 ]
  %485 = phi float [ %482, %480 ], [ %460, %476 ]
  %486 = phi float [ %481, %480 ], [ %461, %476 ]
  %487 = call float @dx.op.binary.f32(i32 36, float %304, float %485)  ; FMin(a,b)
  %488 = call float @dx.op.binary.f32(i32 35, float %281, float %486)  ; FMax(a,b)
  %489 = extractvalue %dx.types.CBufRet.f32 %375, 0
  %490 = fmul fast float %229, 2.000000e+00
  %491 = fadd fast float %490, -1.000000e+00
  %492 = fmul fast float %489, %491
  %493 = fadd fast float %492, %488
  %494 = fcmp fast olt float %493, %487
  %495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %496 = extractvalue %dx.types.CBufRet.f32 %495, 2
  %497 = fcmp fast olt float %496, 1.000000e+00
  %498 = and i1 %494, %497
  br i1 %498, label %499, label %2227

; <label>:499                                     ; preds = %483
  %500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %501 = extractvalue %dx.types.CBufRet.i32 %500, 1
  %502 = add i32 %501, -1
  %503 = fmul fast float %493, %285
  %504 = fadd fast float %503, %242
  %505 = fmul fast float %493, %284
  %506 = fadd fast float %505, %241
  %507 = fmul fast float %493, %283
  %508 = fadd fast float %507, %240
  br label %509

; <label>:509                                     ; preds = %2201, %499
  %510 = phi i32 [ %2203, %2201 ], [ undef, %499 ]
  %511 = phi float [ %2204, %2201 ], [ undef, %499 ]
  %512 = phi i32 [ %956, %2201 ], [ undef, %499 ]
  %513 = phi float [ %958, %2201 ], [ undef, %499 ]
  %514 = phi float [ %2205, %2201 ], [ 0.000000e+00, %499 ]
  %515 = phi float [ %2206, %2201 ], [ 1.000000e+00, %499 ]
  %516 = phi float [ %2207, %2201 ], [ 0.000000e+00, %499 ]
  %517 = phi float [ %2208, %2201 ], [ 0.000000e+00, %499 ]
  %518 = phi float [ %2209, %2201 ], [ 0.000000e+00, %499 ]
  %519 = phi float [ %2219, %2201 ], [ %508, %499 ]
  %520 = phi float [ %2220, %2201 ], [ %506, %499 ]
  %521 = phi float [ %2221, %2201 ], [ %504, %499 ]
  %522 = phi float [ %2202, %2201 ], [ %493, %499 ]
  %523 = phi i32 [ %706, %2201 ], [ %502, %499 ]
  %524 = phi float [ %2210, %2201 ], [ 0.000000e+00, %499 ]
  %525 = phi float [ %2211, %2201 ], [ 0.000000e+00, %499 ]
  %526 = phi float [ %2212, %2201 ], [ 0.000000e+00, %499 ]
  %527 = phi float [ %2213, %2201 ], [ 0.000000e+00, %499 ]
  %528 = phi float [ %2214, %2201 ], [ 0.000000e+00, %499 ]
  %529 = phi i32 [ %2215, %2201 ], [ 0, %499 ]
  %530 = fsub fast float -0.000000e+00, %520
  %531 = fsub fast float -0.000000e+00, %519
  %532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.f32 %532, 0
  %534 = icmp eq i32 %372, 0
  br i1 %534, label %703, label %535, !dx.controlflow.hints !48

; <label>:535                                     ; preds = %509
  %536 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.i32 %536, 1
  %538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %539 = extractvalue %dx.types.CBufRet.f32 %538, 1
  %540 = fcmp fast ogt float %539, %522
  br i1 %540, label %541, label %543, !dx.controlflow.hints !49

; <label>:541                                     ; preds = %535
  %542 = fsub fast float %539, %522
  br label %693

; <label>:543                                     ; preds = %535
  %544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.i32 %544, 3
  %546 = icmp eq i32 %545, 0
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 2
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 2
  %551 = fsub fast float %548, %521
  %552 = fadd fast float %551, %550
  %553 = fsub fast float 0xC7EFFFFFE0000000, %521
  br i1 %546, label %561, label %554, !dx.controlflow.hints !36

; <label>:554                                     ; preds = %543
  %555 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %531, float %530, float %552)  ; Dot3(ax,ay,az,bx,by,bz)
  %556 = fmul fast float %382, %555
  %557 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %531, float %530, float %553)  ; Dot3(ax,ay,az,bx,by,bz)
  %558 = fmul fast float %382, %557
  %559 = call float @dx.op.binary.f32(i32 36, float %556, float %558)  ; FMin(a,b)
  %560 = call float @dx.op.binary.f32(i32 35, float %556, float %558)  ; FMax(a,b)
  br label %594

; <label>:561                                     ; preds = %543
  %562 = extractvalue %dx.types.CBufRet.f32 %547, 0
  %563 = extractvalue %dx.types.CBufRet.f32 %547, 1
  %564 = extractvalue %dx.types.CBufRet.f32 %549, 0
  %565 = extractvalue %dx.types.CBufRet.f32 %549, 1
  %566 = fdiv fast float 1.000000e+00, %283
  %567 = fdiv fast float 1.000000e+00, %284
  %568 = fdiv fast float 1.000000e+00, %285
  %569 = fsub fast float %562, %519
  %570 = fmul fast float %566, %569
  %571 = fadd fast float %569, %564
  %572 = fmul fast float %571, %566
  %573 = call float @dx.op.binary.f32(i32 36, float %570, float %572)  ; FMin(a,b)
  %574 = call float @dx.op.binary.f32(i32 35, float %570, float %572)  ; FMax(a,b)
  %575 = fsub fast float %563, %520
  %576 = fmul fast float %567, %575
  %577 = fadd fast float %575, %565
  %578 = fmul fast float %577, %567
  %579 = call float @dx.op.binary.f32(i32 36, float %576, float %578)  ; FMin(a,b)
  %580 = call float @dx.op.binary.f32(i32 35, float %573, float %579)  ; FMax(a,b)
  %581 = call float @dx.op.binary.f32(i32 35, float %576, float %578)  ; FMax(a,b)
  %582 = call float @dx.op.binary.f32(i32 36, float %574, float %581)  ; FMin(a,b)
  %583 = fmul fast float %568, %553
  %584 = fmul fast float %568, %552
  %585 = call float @dx.op.binary.f32(i32 36, float %583, float %584)  ; FMin(a,b)
  %586 = call float @dx.op.binary.f32(i32 35, float %580, float %585)  ; FMax(a,b)
  %587 = call float @dx.op.binary.f32(i32 35, float %583, float %584)  ; FMax(a,b)
  %588 = call float @dx.op.binary.f32(i32 36, float %582, float %587)  ; FMin(a,b)
  %589 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %586)  ; FMax(a,b)
  %590 = fcmp fast ult float %588, %589
  br i1 %590, label %594, label %591, !dx.controlflow.hints !37

; <label>:591                                     ; preds = %561
  %592 = call float @dx.op.binary.f32(i32 36, float %586, float %588)  ; FMin(a,b)
  %593 = call float @dx.op.binary.f32(i32 35, float %586, float %588)  ; FMax(a,b)
  br label %594

; <label>:594                                     ; preds = %591, %561, %554
  %595 = phi float [ %559, %554 ], [ %592, %591 ], [ 0.000000e+00, %561 ]
  %596 = phi float [ %560, %554 ], [ %593, %591 ], [ 0.000000e+00, %561 ]
  %597 = fcmp fast ogt float %595, 0.000000e+00
  br i1 %597, label %693, label %598, !dx.controlflow.hints !50

; <label>:598                                     ; preds = %594
  %599 = fcmp fast ugt float %596, 0.000000e+00
  br i1 %599, label %600, label %693, !dx.controlflow.hints !51

; <label>:600                                     ; preds = %598
  %601 = icmp sgt i32 %523, 0
  br i1 %601, label %602, label %687

; <label>:602                                     ; preds = %600
  br label %603

; <label>:603                                     ; preds = %683, %602
  %604 = phi i32 [ %684, %683 ], [ %523, %602 ]
  %605 = sitofp i32 %604 to float
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 0
  %608 = extractvalue %dx.types.CBufRet.f32 %606, 1
  %609 = fsub fast float %519, %607
  %610 = fsub fast float %520, %608
  %611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %612 = extractvalue %dx.types.CBufRet.f32 %611, 0
  %613 = extractvalue %dx.types.CBufRet.f32 %611, 1
  %614 = fmul fast float %609, %612
  %615 = fmul fast float %610, %613
  %616 = fsub fast float 1.000000e+00, %615
  %617 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %618 = extractvalue %dx.types.CBufRet.i32 %617, 3
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %626, label %620, !dx.controlflow.hints !52

; <label>:620                                     ; preds = %603
  %621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %614, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float %605)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %622 = extractvalue %dx.types.ResRet.f32 %621, 0
  %623 = extractvalue %dx.types.ResRet.f32 %621, 1
  %624 = extractvalue %dx.types.ResRet.f32 %621, 2
  %625 = extractvalue %dx.types.ResRet.f32 %621, 3
  br label %632

; <label>:626                                     ; preds = %603
  %627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %614, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float %605)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %628 = extractvalue %dx.types.ResRet.f32 %627, 0
  %629 = extractvalue %dx.types.ResRet.f32 %627, 1
  %630 = extractvalue %dx.types.ResRet.f32 %627, 2
  %631 = extractvalue %dx.types.ResRet.f32 %627, 3
  br label %632

; <label>:632                                     ; preds = %626, %620
  %633 = phi float [ %622, %620 ], [ %628, %626 ]
  %634 = phi float [ %623, %620 ], [ %629, %626 ]
  %635 = phi float [ %624, %620 ], [ %630, %626 ]
  %636 = phi float [ %625, %620 ], [ %631, %626 ]
  %637 = extractvalue %dx.types.CBufRet.f32 %611, 3
  %638 = fmul fast float %637, %633
  %639 = extractvalue %dx.types.CBufRet.f32 %606, 2
  %640 = fadd fast float %638, %639
  %641 = fmul fast float %637, %634
  %642 = fadd fast float %641, %639
  %643 = fmul fast float %637, %635
  %644 = fadd fast float %643, %639
  %645 = and i32 %604, 31
  %646 = shl i32 1, %645
  %647 = uitofp i32 %646 to float
  %648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %649 = extractvalue %dx.types.CBufRet.f32 %648, 3
  %650 = fdiv fast float 1.000000e+00, %649
  %651 = fmul fast float %650, %647
  %652 = fmul fast float %651, %285
  %653 = fadd fast float %652, %521
  %654 = fcmp fast oeq float %636, 0.000000e+00
  %655 = fcmp fast ogt float %521, %642
  %656 = fcmp fast ogt float %653, %642
  %657 = and i1 %655, %656
  %658 = or i1 %654, %657
  br i1 %658, label %659, label %663, !dx.controlflow.hints !53

; <label>:659                                     ; preds = %632
  %660 = add nsw i32 %604, 1
  %661 = add nsw i32 %537, -1
  %662 = call i32 @dx.op.binary.i32(i32 38, i32 %660, i32 %661)  ; IMin(a,b)
  br label %693

; <label>:663                                     ; preds = %632
  %664 = fcmp fast olt float %521, %644
  %665 = fcmp fast olt float %653, %644
  %666 = and i1 %664, %665
  br i1 %666, label %667, label %671, !dx.controlflow.hints !54

; <label>:667                                     ; preds = %663
  %668 = add nsw i32 %604, 1
  %669 = add nsw i32 %537, -1
  %670 = call i32 @dx.op.binary.i32(i32 38, i32 %668, i32 %669)  ; IMin(a,b)
  br label %693

; <label>:671                                     ; preds = %663
  %672 = fcmp fast olt float %521, %640
  %673 = fcmp fast olt float %653, %640
  %674 = and i1 %672, %673
  br i1 %674, label %675, label %683, !dx.controlflow.hints !55

; <label>:675                                     ; preds = %671
  %676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.f32 %676, 3
  %678 = extractvalue %dx.types.CBufRet.f32 %611, 2
  %679 = fcmp fast une float %677, %678
  br i1 %679, label %680, label %687, !dx.controlflow.hints !56

; <label>:680                                     ; preds = %675
  %681 = fsub fast float %521, %644
  %682 = call float @dx.op.binary.f32(i32 36, float %651, float %681)  ; FMin(a,b)
  br label %687

; <label>:683                                     ; preds = %671
  %684 = add nsw i32 %604, -1
  %685 = icmp sgt i32 %604, 1
  br i1 %685, label %603, label %686

; <label>:686                                     ; preds = %683
  br label %687

; <label>:687                                     ; preds = %686, %680, %675, %600
  %688 = phi float [ %682, %680 ], [ %651, %675 ], [ 0.000000e+00, %600 ], [ 0.000000e+00, %686 ]
  %689 = phi i32 [ %604, %680 ], [ %604, %675 ], [ %523, %600 ], [ %684, %686 ]
  %690 = add nsw i32 %689, 1
  %691 = add nsw i32 %537, -1
  %692 = call i32 @dx.op.binary.i32(i32 38, i32 %690, i32 %691)  ; IMin(a,b)
  br label %693

; <label>:693                                     ; preds = %687, %667, %659, %598, %594, %541
  %694 = phi float [ %542, %541 ], [ %651, %659 ], [ %651, %667 ], [ %688, %687 ], [ 0x47EFFFFFE0000000, %598 ], [ %595, %594 ]
  %695 = phi i32 [ %372, %541 ], [ %372, %659 ], [ %372, %667 ], [ %372, %687 ], [ 0, %598 ], [ %372, %594 ]
  %696 = phi i32 [ %523, %541 ], [ %662, %659 ], [ %670, %667 ], [ %692, %687 ], [ %523, %598 ], [ %523, %594 ]
  %697 = icmp ne i32 %695, 0
  %698 = zext i1 %697 to i32
  %699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %700 = extractvalue %dx.types.CBufRet.f32 %699, 2
  %701 = call float @dx.op.binary.f32(i32 35, float %694, float %700)  ; FMax(a,b)
  %702 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %701)  ; FMin(a,b)
  br label %703

; <label>:703                                     ; preds = %693, %509
  %704 = phi i32 [ %698, %693 ], [ 0, %509 ]
  %705 = phi float [ %702, %693 ], [ 0x47EFFFFFE0000000, %509 ]
  %706 = phi i32 [ %696, %693 ], [ %523, %509 ]
  %707 = icmp eq i32 %399, 0
  br i1 %707, label %720, label %708, !dx.controlflow.hints !57

; <label>:708                                     ; preds = %703
  %709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %710 = extractvalue %dx.types.CBufRet.f32 %709, 3
  %711 = extractvalue %dx.types.CBufRet.f32 %709, 2
  %712 = fmul fast float %710, %522
  %713 = fdiv fast float %712, %487
  %714 = fadd fast float %713, 1.000000e+00
  %715 = call float @dx.op.unary.f32(i32 23, float %714)  ; Log(value)
  %716 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %715)  ; FMin(a,b)
  %717 = fmul fast float %711, %487
  %718 = fmul fast float %717, %716
  %719 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %718)  ; FMin(a,b)
  br label %720

; <label>:720                                     ; preds = %708, %703
  %721 = phi float [ %719, %708 ], [ 0x47EFFFFFE0000000, %703 ]
  %722 = icmp eq i32 %459, 0
  br i1 %722, label %779, label %723, !dx.controlflow.hints !58

; <label>:723                                     ; preds = %720
  %724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.f32 %724, 0
  %726 = extractvalue %dx.types.CBufRet.f32 %724, 1
  %727 = extractvalue %dx.types.CBufRet.f32 %724, 2
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 0
  %730 = extractvalue %dx.types.CBufRet.f32 %728, 1
  %731 = extractvalue %dx.types.CBufRet.f32 %728, 2
  %732 = fsub fast float %519, %729
  %733 = fsub fast float %520, %730
  %734 = fsub fast float %521, %731
  %735 = fmul fast float %732, %725
  %736 = fmul fast float %733, %726
  %737 = fmul fast float %734, %727
  %738 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %739 = extractvalue %dx.types.CBufRet.i32 %738, 3
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %744, label %741, !dx.controlflow.hints !59

; <label>:741                                     ; preds = %723
  %742 = call float @dx.op.unary.f32(i32 22, float %735)  ; Frc(value)
  %743 = call float @dx.op.unary.f32(i32 22, float %736)  ; Frc(value)
  br label %744

; <label>:744                                     ; preds = %741, %723
  %745 = phi float [ %742, %741 ], [ %735, %723 ]
  %746 = phi float [ %743, %741 ], [ %736, %723 ]
  %747 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %745, float %746, float %737, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = fmul fast float %748, 2.000000e+00
  %750 = fadd fast float %749, -1.000000e+00
  %751 = extractvalue %dx.types.CBufRet.f32 %724, 3
  %752 = fmul fast float %750, %751
  %753 = fcmp fast olt float %752, 0.000000e+00
  %754 = fcmp fast oge float %737, 0.000000e+00
  %755 = fcmp fast ole float %737, 1.000000e+00
  br i1 %740, label %758, label %756, !dx.controlflow.hints !60

; <label>:756                                     ; preds = %744
  %757 = and i1 %754, %755
  br label %768

; <label>:758                                     ; preds = %744
  %759 = fcmp fast oge float %735, 0.000000e+00
  %760 = fcmp fast oge float %736, 0.000000e+00
  %761 = and i1 %759, %760
  %762 = and i1 %754, %761
  %763 = fcmp fast ole float %735, 1.000000e+00
  %764 = fcmp fast ole float %736, 1.000000e+00
  %765 = and i1 %763, %764
  %766 = and i1 %755, %765
  %767 = and i1 %762, %766
  br label %768

; <label>:768                                     ; preds = %758, %756
  %769 = phi i1 [ %757, %756 ], [ %767, %758 ]
  %770 = and i1 %753, %769
  %771 = call float @dx.op.unary.f32(i32 6, float %752)  ; FAbs(value)
  %772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %773 = extractvalue %dx.types.CBufRet.f32 %772, 1
  %774 = extractvalue %dx.types.CBufRet.f32 %772, 0
  %775 = call float @dx.op.binary.f32(i32 35, float %771, float %774)  ; FMax(a,b)
  %776 = select i1 %770, float %773, float %775
  %777 = zext i1 %770 to i32
  %778 = call float @dx.op.binary.f32(i32 36, float %705, float %776)  ; FMin(a,b)
  br label %779

; <label>:779                                     ; preds = %768, %720
  %780 = phi i32 [ %777, %768 ], [ 0, %720 ]
  %781 = phi float [ %778, %768 ], [ %705, %720 ]
  %782 = icmp eq i32 %484, 0
  br i1 %782, label %955, label %783, !dx.controlflow.hints !61

; <label>:783                                     ; preds = %779
  %784 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.i32 %784, 1
  %786 = and i32 %785, 1
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %788, label %945, !dx.controlflow.hints !62

; <label>:788                                     ; preds = %783
  %789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %790 = extractvalue %dx.types.CBufRet.f32 %789, 2
  %791 = extractvalue %dx.types.CBufRet.f32 %789, 3
  %792 = fmul fast float %790, %519
  %793 = fmul fast float %791, %520
  %794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %795 = extractvalue %dx.types.CBufRet.f32 %794, 0
  %796 = extractvalue %dx.types.CBufRet.f32 %794, 1
  %797 = fadd fast float %792, %795
  %798 = fadd fast float %793, %796
  %799 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  %800 = call float @dx.op.unary.f32(i32 7, float %798)  ; Saturate(value)
  %801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %19, float %799, float %800, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %802 = extractvalue %dx.types.ResRet.f32 %801, 0
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 0
  %805 = fmul fast float %804, %802
  %806 = fsub fast float %797, %799
  %807 = fsub fast float %798, %800
  %808 = extractvalue %dx.types.CBufRet.f32 %789, 0
  %809 = extractvalue %dx.types.CBufRet.f32 %789, 1
  %810 = fmul fast float %808, %806
  %811 = fmul fast float %809, %807
  %812 = fmul fast float %810, %810
  %813 = fmul fast float %811, %811
  %814 = fadd fast float %812, %813
  %815 = call float @dx.op.unary.f32(i32 24, float %814)  ; Sqrt(value)
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 3
  %818 = fmul fast float %817, %815
  %819 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %820 = extractvalue %dx.types.CBufRet.f32 %816, 2
  %821 = fsub fast float %820, %805
  %822 = fmul fast float %821, %819
  %823 = extractvalue %dx.types.CBufRet.f32 %803, 1
  %824 = fsub fast float %521, %805
  %825 = fsub fast float %824, %823
  %826 = fsub fast float %825, %822
  %827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %828 = extractvalue %dx.types.CBufRet.f32 %827, 2
  %829 = fsub fast float %826, %828
  %830 = fcmp fast olt float %829, 0.000000e+00
  %831 = call float @dx.op.unary.f32(i32 6, float %829)  ; FAbs(value)
  %832 = extractvalue %dx.types.CBufRet.i32 %784, 0
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %887, label %834

; <label>:834                                     ; preds = %788
  br label %835

; <label>:835                                     ; preds = %874, %834
  %836 = phi i32 [ %880, %874 ], [ 1, %834 ]
  %837 = phi float [ %882, %874 ], [ 0x47EFFFFFE0000000, %834 ]
  %838 = phi i32 [ %883, %874 ], [ 0, %834 ]
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 1
  %841 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %842 = extractvalue %dx.types.CBufRet.i32 %841, 1
  %843 = and i32 %842, 8
  %844 = icmp eq i32 %843, 0
  %845 = fcmp fast ogt float %840, %826
  %846 = or i1 %845, %844
  %847 = add i32 %838, 171
  %848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %847)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.f32 %848, 0
  %850 = extractvalue %dx.types.CBufRet.f32 %848, 1
  %851 = extractvalue %dx.types.CBufRet.f32 %848, 2
  br i1 %846, label %852, label %858, !dx.controlflow.hints !63

; <label>:852                                     ; preds = %835
  %853 = fsub fast float %849, %519
  %854 = fsub fast float %850, %520
  %855 = fmul fast float %853, %853
  %856 = fmul fast float %854, %854
  %857 = fadd fast float %855, %856
  br label %874

; <label>:858                                     ; preds = %835
  %859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.f32 %859, 2
  %861 = extractvalue %dx.types.CBufRet.f32 %839, 2
  %862 = fmul fast float %861, %860
  %863 = fsub fast float %862, %840
  %864 = fdiv fast float %851, %863
  %865 = fsub fast float %519, %849
  %866 = fsub fast float %520, %850
  %867 = fsub fast float %826, %840
  %868 = fmul fast float %864, %867
  %869 = fmul fast float %865, %865
  %870 = fmul fast float %866, %866
  %871 = fadd fast float %869, %870
  %872 = fmul fast float %868, %868
  %873 = fadd fast float %871, %872
  br label %874

; <label>:874                                     ; preds = %858, %852
  %875 = phi float [ %857, %852 ], [ %873, %858 ]
  %876 = call float @dx.op.unary.f32(i32 24, float %875)  ; Sqrt(value)
  %877 = fsub float %851, %876
  %878 = fcmp fast olt float %877, 0.000000e+00
  %879 = zext i1 %878 to i32
  %880 = and i32 %879, %836
  %881 = call float @dx.op.unary.f32(i32 6, float %877)  ; FAbs(value)
  %882 = call float @dx.op.binary.f32(i32 36, float %837, float %881)  ; FMin(a,b)
  %883 = add i32 %838, 1
  %884 = extractvalue %dx.types.CBufRet.i32 %841, 0
  %885 = icmp ult i32 %883, %884
  br i1 %885, label %835, label %886

; <label>:886                                     ; preds = %874
  br label %887

; <label>:887                                     ; preds = %886, %788
  %888 = phi i32 [ 1, %788 ], [ %880, %886 ]
  %889 = phi float [ 0x47EFFFFFE0000000, %788 ], [ %882, %886 ]
  br label %890

; <label>:890                                     ; preds = %890, %887
  %891 = phi i32 [ %888, %887 ], [ %930, %890 ]
  %892 = phi float [ 0x47EFFFFFE0000000, %887 ], [ %932, %890 ]
  %893 = phi i32 [ 0, %887 ], [ %933, %890 ]
  %894 = add nuw nsw i32 %893, 191
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %894)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 0
  %897 = extractvalue %dx.types.CBufRet.f32 %895, 1
  %898 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %899 = add nuw nsw i32 %893, 195
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %899)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 0
  %902 = extractvalue %dx.types.CBufRet.f32 %900, 1
  %903 = extractvalue %dx.types.CBufRet.f32 %900, 2
  %904 = fsub fast float %519, %896
  %905 = fsub fast float %520, %897
  %906 = fsub fast float %826, %898
  %907 = call float @dx.op.unary.f32(i32 6, float %904)  ; FAbs(value)
  %908 = call float @dx.op.unary.f32(i32 6, float %905)  ; FAbs(value)
  %909 = call float @dx.op.unary.f32(i32 6, float %906)  ; FAbs(value)
  %910 = fsub fast float %907, %901
  %911 = fsub fast float %908, %902
  %912 = fsub fast float %909, %903
  %913 = call float @dx.op.binary.f32(i32 35, float %910, float 0.000000e+00)  ; FMax(a,b)
  %914 = call float @dx.op.binary.f32(i32 35, float %911, float 0.000000e+00)  ; FMax(a,b)
  %915 = call float @dx.op.binary.f32(i32 35, float %912, float 0.000000e+00)  ; FMax(a,b)
  %916 = fmul fast float %913, %913
  %917 = fmul fast float %914, %914
  %918 = fadd fast float %917, %916
  %919 = fmul fast float %915, %915
  %920 = fadd fast float %918, %919
  %921 = call float @dx.op.unary.f32(i32 24, float %920)  ; Sqrt(value)
  %922 = call float @dx.op.binary.f32(i32 35, float %911, float %912)  ; FMax(a,b)
  %923 = call float @dx.op.binary.f32(i32 35, float %910, float %922)  ; FMax(a,b)
  %924 = call float @dx.op.binary.f32(i32 36, float %923, float 0.000000e+00)  ; FMin(a,b)
  %925 = fadd fast float %924, %921
  %926 = fsub fast float -0.000000e+00, %925
  %927 = fcmp ogt float %925, -0.000000e+00
  %928 = icmp ne i32 %891, 0
  %929 = and i1 %928, %927
  %930 = zext i1 %929 to i32
  %931 = call float @dx.op.unary.f32(i32 6, float %926)  ; FAbs(value)
  %932 = call float @dx.op.binary.f32(i32 36, float %892, float %931)  ; FMin(a,b)
  %933 = add nuw nsw i32 %893, 1
  %934 = icmp eq i32 %933, 4
  br i1 %934, label %935, label %890

; <label>:935                                     ; preds = %890
  %936 = call float @dx.op.binary.f32(i32 36, float %831, float %932)  ; FMin(a,b)
  %937 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.i32 %937, 1
  %939 = and i32 %938, 2
  %940 = icmp ne i32 %939, 0
  %941 = xor i1 %929, %940
  %942 = call float @dx.op.binary.f32(i32 36, float %936, float %889)  ; FMin(a,b)
  %943 = and i1 %941, %830
  %944 = zext i1 %943 to i32
  br label %945

; <label>:945                                     ; preds = %935, %783
  %946 = phi i32 [ %512, %783 ], [ %944, %935 ]
  %947 = phi float [ 0.000000e+00, %783 ], [ %942, %935 ]
  %948 = phi float [ %521, %783 ], [ %826, %935 ]
  %949 = icmp ne i32 %946, 0
  %950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %951 = extractvalue %dx.types.CBufRet.f32 %950, 3
  %952 = call float @dx.op.binary.f32(i32 35, float %947, float %951)  ; FMax(a,b)
  %953 = call float @dx.op.binary.f32(i32 36, float %721, float %952)  ; FMin(a,b)
  %954 = zext i1 %949 to i32
  br label %955

; <label>:955                                     ; preds = %945, %779
  %956 = phi i32 [ %946, %945 ], [ %512, %779 ]
  %957 = phi i32 [ %954, %945 ], [ 0, %779 ]
  %958 = phi float [ %948, %945 ], [ %513, %779 ]
  %959 = phi float [ %953, %945 ], [ %721, %779 ]
  %960 = extractvalue %dx.types.CBufRet.f32 %532, 2
  %961 = fmul fast float %960, %522
  %962 = call float @dx.op.unary.f32(i32 23, float %961)  ; Log(value)
  %963 = fmul fast float %962, 0x3FE62E4300000000
  %964 = call float @dx.op.binary.f32(i32 35, float %963, float 1.000000e+00)  ; FMax(a,b)
  %965 = fmul fast float %964, %959
  %966 = call float @dx.op.binary.f32(i32 36, float %965, float %781)  ; FMin(a,b)
  %967 = call float @dx.op.binary.f32(i32 35, float %966, float %533)  ; FMax(a,b)
  %968 = fsub fast float %487, %522
  %969 = fadd fast float %968, 0x3F1A36E2E0000000
  %970 = call float @dx.op.binary.f32(i32 36, float %969, float %967)  ; FMin(a,b)
  %971 = icmp eq i32 %704, 0
  br i1 %971, label %1077, label %972, !dx.controlflow.hints !64

; <label>:972                                     ; preds = %955
  %973 = fcmp fast olt float %969, %967
  %974 = fmul fast float %285, %228
  %975 = fmul fast float %974, %970
  %976 = fadd fast float %975, %521
  %977 = fmul fast float %285, %229
  %978 = fmul fast float %977, %970
  %979 = fadd fast float %978, %521
  %980 = fmul fast float %285, %230
  %981 = fmul fast float %980, %970
  %982 = fadd fast float %981, %521
  br i1 %973, label %983, label %988, !dx.controlflow.hints !65

; <label>:983                                     ; preds = %972
  %984 = fmul fast float %970, %283
  %985 = fmul fast float %970, %284
  %986 = fadd fast float %984, %519
  %987 = fadd fast float %985, %520
  br label %988

; <label>:988                                     ; preds = %983, %972
  %989 = phi float [ %986, %983 ], [ %519, %972 ]
  %990 = phi float [ %987, %983 ], [ %520, %972 ]
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 0
  %993 = extractvalue %dx.types.CBufRet.f32 %991, 1
  %994 = fsub fast float %989, %992
  %995 = fsub fast float %990, %993
  %996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.f32 %996, 0
  %998 = extractvalue %dx.types.CBufRet.f32 %996, 1
  %999 = fmul fast float %994, %997
  %1000 = fmul fast float %995, %998
  %1001 = fsub fast float 1.000000e+00, %1000
  %1002 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.i32 %1002, 3
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1011, label %1005, !dx.controlflow.hints !52

; <label>:1005                                    ; preds = %988
  %1006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %999, float %1001, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1007 = extractvalue %dx.types.ResRet.f32 %1006, 0
  %1008 = extractvalue %dx.types.ResRet.f32 %1006, 1
  %1009 = extractvalue %dx.types.ResRet.f32 %1006, 2
  %1010 = extractvalue %dx.types.ResRet.f32 %1006, 3
  br label %1017

; <label>:1011                                    ; preds = %988
  %1012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %999, float %1001, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1013 = extractvalue %dx.types.ResRet.f32 %1012, 0
  %1014 = extractvalue %dx.types.ResRet.f32 %1012, 1
  %1015 = extractvalue %dx.types.ResRet.f32 %1012, 2
  %1016 = extractvalue %dx.types.ResRet.f32 %1012, 3
  br label %1017

; <label>:1017                                    ; preds = %1011, %1005
  %1018 = phi float [ %1007, %1005 ], [ %1013, %1011 ]
  %1019 = phi float [ %1008, %1005 ], [ %1014, %1011 ]
  %1020 = phi float [ %1009, %1005 ], [ %1015, %1011 ]
  %1021 = phi float [ %1010, %1005 ], [ %1016, %1011 ]
  %1022 = extractvalue %dx.types.CBufRet.f32 %996, 3
  %1023 = fmul fast float %1022, %1019
  %1024 = fmul fast float %1023, %1018
  %1025 = fsub fast float %1023, %1024
  %1026 = fcmp fast ole float %1025, 0.000000e+00
  %1027 = extractvalue %dx.types.CBufRet.f32 %991, 2
  %1028 = fadd fast float %1024, %1027
  %1029 = fmul fast float %1022, %1020
  %1030 = fadd fast float %1029, %1027
  %1031 = fdiv fast float 1.000000e+00, %1025
  %1032 = select i1 %1026, float 1.000000e+06, float %1031
  %1033 = fsub fast float %976, %1028
  %1034 = fmul fast float %1032, %1033
  %1035 = call float @dx.op.unary.f32(i32 7, float %1034)  ; Saturate(value)
  %1036 = extractvalue %dx.types.CBufRet.f32 %996, 2
  %1037 = fmul fast float %1036, %1035
  %1038 = fsub fast float %1036, %1037
  %1039 = fcmp fast olt float %976, %1030
  %1040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1041 = extractvalue %dx.types.CBufRet.f32 %1040, 3
  %1042 = select i1 %1039, float %1041, float 1.000000e+00
  %1043 = fmul fast float %1038, %1042
  %1044 = fsub fast float %979, %1028
  %1045 = fmul fast float %1032, %1044
  %1046 = call float @dx.op.unary.f32(i32 7, float %1045)  ; Saturate(value)
  %1047 = fmul fast float %1036, %1046
  %1048 = fsub fast float %1036, %1047
  %1049 = fcmp fast olt float %979, %1030
  %1050 = select i1 %1049, float %1041, float 1.000000e+00
  %1051 = fmul fast float %1048, %1050
  %1052 = fadd fast float %1051, %1043
  %1053 = fsub fast float %982, %1028
  %1054 = fmul fast float %1032, %1053
  %1055 = call float @dx.op.unary.f32(i32 7, float %1054)  ; Saturate(value)
  %1056 = fmul fast float %1036, %1055
  %1057 = fsub fast float %1036, %1056
  %1058 = fcmp fast olt float %982, %1030
  %1059 = select i1 %1058, float %1041, float 1.000000e+00
  %1060 = fmul fast float %1057, %1059
  %1061 = fadd fast float %1052, %1060
  %1062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.f32 %1062, 2
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 0
  %1066 = extractvalue %dx.types.CBufRet.f32 %1064, 1
  %1067 = extractvalue %dx.types.CBufRet.f32 %1064, 2
  %1068 = fmul fast float %970, 0x3FD5555560000000
  %1069 = fmul fast float %1068, %1021
  %1070 = fmul fast float %1069, %1063
  %1071 = fmul fast float %1070, %1061
  %1072 = extractvalue %dx.types.CBufRet.f32 %1040, 0
  %1073 = fmul fast float %1071, %1065
  %1074 = fmul fast float %1071, %1066
  %1075 = fmul fast float %1071, %1067
  %1076 = fmul fast float %1071, %1072
  br label %1077

; <label>:1077                                    ; preds = %1017, %955
  %1078 = phi float [ %1071, %1017 ], [ 0.000000e+00, %955 ]
  %1079 = phi float [ %1076, %1017 ], [ 0.000000e+00, %955 ]
  %1080 = phi float [ %1073, %1017 ], [ 0.000000e+00, %955 ]
  %1081 = phi float [ %1074, %1017 ], [ 0.000000e+00, %955 ]
  %1082 = phi float [ %1075, %1017 ], [ 0.000000e+00, %955 ]
  br i1 %707, label %1142, label %1083, !dx.controlflow.hints !66

; <label>:1083                                    ; preds = %1077
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 0
  %1086 = fsub fast float %1085, %521
  %1087 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %531, float %530, float %1086)  ; Dot3(ax,ay,az,bx,by,bz)
  %1088 = fmul fast float %382, %1087
  %1089 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1088)  ; FMax(a,b)
  %1090 = fcmp fast olt float %285, 0.000000e+00
  %1091 = call float @dx.op.binary.f32(i32 36, float %970, float %1089)  ; FMin(a,b)
  br i1 %1090, label %1093, label %1092, !dx.controlflow.hints !67

; <label>:1092                                    ; preds = %1083
  br label %1093

; <label>:1093                                    ; preds = %1092, %1083
  %1094 = phi float [ 0.000000e+00, %1092 ], [ %1091, %1083 ]
  %1095 = phi float [ %1091, %1092 ], [ %970, %1083 ]
  %1096 = phi float [ %1091, %1092 ], [ 0.000000e+00, %1083 ]
  %1097 = phi float [ %970, %1092 ], [ %1091, %1083 ]
  %1098 = fsub fast float %1095, %1094
  %1099 = extractvalue %dx.types.CBufRet.f32 %1084, 1
  %1100 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1099)  ; FMin(a,b)
  %1101 = fsub fast float %521, %1085
  %1102 = fmul fast float %1100, 0x3FF7154760000000
  %1103 = fmul fast float %1102, %1101
  %1104 = call float @dx.op.unary.f32(i32 21, float %1103)  ; Exp(value)
  %1105 = fmul fast float %285, 0x3FF7154760000000
  %1106 = fmul fast float %1105, %1097
  %1107 = fmul fast float %1106, %1100
  %1108 = call float @dx.op.unary.f32(i32 21, float %1107)  ; Exp(value)
  %1109 = fmul fast float %1105, %1096
  %1110 = fmul fast float %1109, %1100
  %1111 = call float @dx.op.unary.f32(i32 21, float %1110)  ; Exp(value)
  %1112 = fsub fast float %1108, %1111
  %1113 = fmul fast float %1112, %1104
  %1114 = fmul fast float %1100, %285
  %1115 = fdiv fast float %1113, %1114
  %1116 = fadd fast float %1098, %1115
  %1117 = call float @dx.op.unary.f32(i32 6, float %285)  ; FAbs(value)
  %1118 = fcmp fast olt float %1117, 0x3F0FFB4800000000
  %1119 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1101)  ; FMax(a,b)
  %1120 = fmul fast float %1119, 0x3FF7154760000000
  %1121 = fmul fast float %1120, %1099
  %1122 = call float @dx.op.unary.f32(i32 21, float %1121)  ; Exp(value)
  %1123 = fmul fast float %1122, %970
  %1124 = select i1 %1118, float %1123, float %1116
  %1125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.f32 %1125, 1
  %1127 = fmul fast float %1124, %1126
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.CBufRet.f32 %1128, 1
  %1131 = extractvalue %dx.types.CBufRet.f32 %1128, 2
  %1132 = extractvalue %dx.types.CBufRet.f32 %1125, 2
  %1133 = fmul fast float %1129, %1127
  %1134 = fmul fast float %1130, %1127
  %1135 = fmul fast float %1131, %1127
  %1136 = fadd fast float %1133, %1080
  %1137 = fadd fast float %1134, %1081
  %1138 = fadd fast float %1135, %1082
  %1139 = fmul fast float %1132, %1127
  %1140 = fadd fast float %1139, %1079
  %1141 = fadd fast float %1127, %1078
  br label %1142

; <label>:1142                                    ; preds = %1093, %1077
  %1143 = phi float [ %1141, %1093 ], [ %1078, %1077 ]
  %1144 = phi float [ %1140, %1093 ], [ %1079, %1077 ]
  %1145 = phi float [ %1136, %1093 ], [ %1080, %1077 ]
  %1146 = phi float [ %1137, %1093 ], [ %1081, %1077 ]
  %1147 = phi float [ %1138, %1093 ], [ %1082, %1077 ]
  %1148 = icmp eq i32 %780, 0
  br i1 %1148, label %1343, label %1149, !dx.controlflow.hints !68

; <label>:1149                                    ; preds = %1142
  %1150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1151 = extractvalue %dx.types.CBufRet.f32 %1150, 3
  %1152 = fmul fast float %1151, %522
  %1153 = fcmp fast oeq float %1152, 0.000000e+00
  br i1 %1153, label %1168, label %1154, !dx.controlflow.hints !69

; <label>:1154                                    ; preds = %1149
  %1155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1156 = extractvalue %dx.types.CBufRet.f32 %1155, 3
  %1157 = fmul fast float %1156, %1152
  %1158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1159 = extractvalue %dx.types.CBufRet.f32 %1158, 0
  %1160 = extractvalue %dx.types.CBufRet.f32 %1158, 1
  %1161 = extractvalue %dx.types.CBufRet.f32 %1158, 2
  %1162 = fmul fast float %1159, %1157
  %1163 = fmul fast float %1160, %1157
  %1164 = fmul fast float %1161, %1157
  %1165 = call float @dx.op.unary.f32(i32 23, float %1162)  ; Log(value)
  %1166 = call float @dx.op.unary.f32(i32 23, float %1163)  ; Log(value)
  %1167 = call float @dx.op.unary.f32(i32 23, float %1164)  ; Log(value)
  br label %1168

; <label>:1168                                    ; preds = %1154, %1149
  %1169 = phi float [ %1165, %1154 ], [ 0.000000e+00, %1149 ]
  %1170 = phi float [ %1166, %1154 ], [ 0.000000e+00, %1149 ]
  %1171 = phi float [ %1167, %1154 ], [ 0.000000e+00, %1149 ]
  %1172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1173 = extractvalue %dx.types.CBufRet.f32 %1172, 0
  %1174 = extractvalue %dx.types.CBufRet.f32 %1172, 1
  %1175 = extractvalue %dx.types.CBufRet.f32 %1172, 2
  %1176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1177 = extractvalue %dx.types.CBufRet.f32 %1176, 0
  %1178 = extractvalue %dx.types.CBufRet.f32 %1176, 1
  %1179 = extractvalue %dx.types.CBufRet.f32 %1176, 2
  %1180 = fsub fast float %519, %1177
  %1181 = fsub fast float %520, %1178
  %1182 = fsub fast float %521, %1179
  %1183 = fmul fast float %1180, %1173
  %1184 = fmul fast float %1181, %1174
  %1185 = fmul fast float %1182, %1175
  %1186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.i32 %1186, 0
  %1188 = extractvalue %dx.types.CBufRet.i32 %1186, 1
  %1189 = uitofp i32 %1187 to float
  %1190 = uitofp i32 %1188 to float
  %1191 = fmul fast float %1183, %1189
  %1192 = fmul fast float %1184, %1190
  %1193 = fadd fast float %1191, 5.000000e-01
  %1194 = fadd fast float %1192, 5.000000e-01
  %1195 = call float @dx.op.unary.f32(i32 22, float %1193)  ; Frc(value)
  %1196 = call float @dx.op.unary.f32(i32 22, float %1194)  ; Frc(value)
  %1197 = call float @dx.op.unary.f32(i32 27, float %1193)  ; Round_ni(value)
  %1198 = call float @dx.op.unary.f32(i32 27, float %1194)  ; Round_ni(value)
  %1199 = fadd fast float %1197, 1.000000e+00
  %1200 = fadd fast float %1198, 1.000000e+00
  %1201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1201, 0
  %1203 = extractvalue %dx.types.CBufRet.f32 %1201, 1
  %1204 = fmul fast float %1202, %1199
  %1205 = fmul fast float %1203, %1200
  %1206 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %18, float %1204, float %1205, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1207 = extractvalue %dx.types.ResRet.f32 %1206, 0
  %1208 = extractvalue %dx.types.ResRet.f32 %1206, 1
  %1209 = extractvalue %dx.types.ResRet.f32 %1206, 2
  %1210 = extractvalue %dx.types.ResRet.f32 %1206, 3
  %1211 = extractvalue %dx.types.CBufRet.i32 %1186, 2
  %1212 = extractvalue %dx.types.CBufRet.f32 %1201, 2
  %1213 = uitofp i32 %1211 to float
  %1214 = fadd fast float %1213, -1.000000e+00
  %1215 = fmul fast float %1214, %1207
  %1216 = fmul fast float %1214, %1208
  %1217 = fmul fast float %1214, %1209
  %1218 = fmul fast float %1214, %1210
  %1219 = fadd fast float %1215, 5.000000e-01
  %1220 = fadd fast float %1216, 5.000000e-01
  %1221 = fadd fast float %1217, 5.000000e-01
  %1222 = fadd fast float %1218, 5.000000e-01
  %1223 = fptoui float %1219 to i32
  %1224 = fptoui float %1220 to i32
  %1225 = fptoui float %1221 to i32
  %1226 = fptoui float %1222 to i32
  %1227 = uitofp i32 %1223 to float
  %1228 = uitofp i32 %1224 to float
  %1229 = uitofp i32 %1225 to float
  %1230 = uitofp i32 %1226 to float
  %1231 = fadd fast float %1227, 5.000000e-01
  %1232 = fadd fast float %1228, 5.000000e-01
  %1233 = fadd fast float %1229, 5.000000e-01
  %1234 = fadd fast float %1230, 5.000000e-01
  %1235 = fmul fast float %1231, %1212
  %1236 = fmul fast float %1232, %1212
  %1237 = fmul fast float %1233, %1212
  %1238 = fmul fast float %1234, %1212
  %1239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1235, float %1185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1240 = extractvalue %dx.types.ResRet.f32 %1239, 0
  %1241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1236, float %1185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 0
  %1243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1237, float %1185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1244 = extractvalue %dx.types.ResRet.f32 %1243, 0
  %1245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1238, float %1185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1246 = extractvalue %dx.types.ResRet.f32 %1245, 0
  %1247 = fsub fast float %1244, %1246
  %1248 = fmul fast float %1247, %1195
  %1249 = fadd fast float %1248, %1246
  %1250 = fsub fast float %1242, %1240
  %1251 = fmul fast float %1250, %1195
  %1252 = fadd fast float %1251, %1240
  %1253 = fsub fast float %1252, %1249
  %1254 = fmul fast float %1253, %1196
  %1255 = fadd fast float %1254, %1249
  %1256 = fcmp fast ogt float %1255, 0.000000e+00
  br i1 %1256, label %1257, label %1325, !dx.controlflow.hints !70

; <label>:1257                                    ; preds = %1168
  %1258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.f32 %1258, 0
  %1260 = extractvalue %dx.types.CBufRet.f32 %1258, 1
  %1261 = extractvalue %dx.types.CBufRet.f32 %1258, 2
  %1262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.CBufRet.f32 %1262, 1
  %1265 = extractvalue %dx.types.CBufRet.f32 %1262, 2
  %1266 = fmul fast float %1181, %1173
  %1267 = fmul fast float %1182, %1173
  %1268 = fadd fast float %1183, %1263
  %1269 = fadd fast float %1266, %1264
  %1270 = fadd fast float %1267, %1265
  %1271 = fmul fast float %1268, %1259
  %1272 = fmul fast float %1269, %1259
  %1273 = fmul fast float %1270, %1259
  %1274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %1271, float %1272, float %1273, float undef, i32 0, i32 0, i32 0, float %1169)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  %1276 = fmul fast float %1268, %1260
  %1277 = fmul fast float %1269, %1260
  %1278 = fmul fast float %1270, %1260
  %1279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %1276, float %1277, float %1278, float undef, i32 0, i32 0, i32 0, float %1170)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1280 = extractvalue %dx.types.ResRet.f32 %1279, 1
  %1281 = fmul fast float %1268, %1261
  %1282 = fmul fast float %1269, %1261
  %1283 = fmul fast float %1270, %1261
  %1284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %1281, float %1282, float %1283, float undef, i32 0, i32 0, i32 0, float %1171)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 2
  %1286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1287 = extractvalue %dx.types.CBufRet.f32 %1286, 1
  %1288 = fmul fast float %1280, %1275
  %1289 = fmul fast float %1288, %1285
  %1290 = call float @dx.op.unary.f32(i32 23, float %1289)  ; Log(value)
  %1291 = fmul fast float %1290, %1287
  %1292 = call float @dx.op.unary.f32(i32 21, float %1291)  ; Exp(value)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1286, 2
  %1294 = fmul fast float %1255, %1255
  %1295 = fmul fast float %1294, %1292
  %1296 = fmul fast float %1295, %1293
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 3
  %1299 = fmul fast float %1298, %1296
  %1300 = bitcast float %1299 to i32
  %1301 = sitofp i32 %1300 to float
  %1302 = fptosi float %1301 to i32
  %1303 = bitcast i32 %1302 to float
  %1304 = fsub fast float 1.000000e+00, %1296
  %1305 = bitcast float %1304 to i32
  %1306 = sitofp i32 %1305 to float
  %1307 = fptosi float %1306 to i32
  %1308 = bitcast i32 %1307 to float
  %1309 = fadd fast float %1303, %1308
  %1310 = bitcast float %1309 to i32
  %1311 = sub nsw i32 2129859010, %1310
  %1312 = bitcast i32 %1311 to float
  %1313 = fmul fast float %1312, %1303
  %1314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.f32 %1314, 2
  %1316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1317 = extractvalue %dx.types.CBufRet.f32 %1316, 0
  %1318 = fmul fast float %1313, %1317
  %1319 = fadd fast float %1318, 1.000000e+00
  %1320 = bitcast float %1319 to i32
  %1321 = sub nsw i32 2129859010, %1320
  %1322 = bitcast i32 %1321 to float
  %1323 = fmul fast float %1313, %1315
  %1324 = fmul fast float %1323, %1322
  br label %1325

; <label>:1325                                    ; preds = %1257, %1168
  %1326 = phi float [ %1324, %1257 ], [ %1255, %1168 ]
  %1327 = fmul fast float %1326, %970
  %1328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1329 = extractvalue %dx.types.CBufRet.f32 %1328, 0
  %1330 = extractvalue %dx.types.CBufRet.f32 %1328, 1
  %1331 = extractvalue %dx.types.CBufRet.f32 %1328, 2
  %1332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1333 = extractvalue %dx.types.CBufRet.f32 %1332, 1
  %1334 = fmul fast float %1329, %1327
  %1335 = fmul fast float %1330, %1327
  %1336 = fmul fast float %1331, %1327
  %1337 = fadd fast float %1334, %1145
  %1338 = fadd fast float %1335, %1146
  %1339 = fadd fast float %1336, %1147
  %1340 = fmul fast float %1333, %1327
  %1341 = fadd fast float %1340, %1144
  %1342 = fadd fast float %1327, %1143
  br label %1343

; <label>:1343                                    ; preds = %1325, %1142
  %1344 = phi float [ %1342, %1325 ], [ %1143, %1142 ]
  %1345 = phi float [ %1341, %1325 ], [ %1144, %1142 ]
  %1346 = phi float [ %1337, %1325 ], [ %1145, %1142 ]
  %1347 = phi float [ %1338, %1325 ], [ %1146, %1142 ]
  %1348 = phi float [ %1339, %1325 ], [ %1147, %1142 ]
  %1349 = icmp eq i32 %957, 0
  br i1 %1349, label %1393, label %1350, !dx.controlflow.hints !71

; <label>:1350                                    ; preds = %1343
  %1351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1352 = extractvalue %dx.types.CBufRet.f32 %1351, 1
  %1353 = fsub fast float %970, %1352
  %1354 = extractvalue %dx.types.CBufRet.f32 %1351, 3
  %1355 = fmul fast float %1353, %1354
  %1356 = call float @dx.op.unary.f32(i32 7, float %1355)  ; Saturate(value)
  %1357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1357, 3
  %1359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1360 = extractvalue %dx.types.CBufRet.f32 %1359, 2
  %1361 = fsub fast float %1360, %958
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 3
  %1364 = fmul fast float %1361, %1363
  %1365 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1366 = fmul fast float %1365, %1358
  %1367 = extractvalue %dx.types.CBufRet.f32 %1362, 0
  %1368 = fsub fast float %522, %1367
  %1369 = extractvalue %dx.types.CBufRet.f32 %1362, 1
  %1370 = fmul fast float %1368, %1369
  %1371 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1372 = fsub fast float 1.000000e+00, %1356
  %1373 = fmul fast float %1371, %1372
  %1374 = fadd fast float %1373, %1356
  %1375 = extractvalue %dx.types.CBufRet.f32 %1351, 0
  %1376 = fsub fast float %1366, %1375
  %1377 = fmul fast float %1376, %1374
  %1378 = fadd fast float %1377, %1375
  %1379 = extractvalue %dx.types.CBufRet.f32 %1357, 0
  %1380 = extractvalue %dx.types.CBufRet.f32 %1357, 1
  %1381 = extractvalue %dx.types.CBufRet.f32 %1357, 2
  %1382 = fmul fast float %1378, %970
  %1383 = extractvalue %dx.types.CBufRet.f32 %1362, 2
  %1384 = fmul fast float %1382, %1379
  %1385 = fmul fast float %1382, %1380
  %1386 = fmul fast float %1382, %1381
  %1387 = fadd fast float %1384, %1346
  %1388 = fadd fast float %1385, %1347
  %1389 = fadd fast float %1386, %1348
  %1390 = fmul fast float %1382, %1383
  %1391 = fadd fast float %1390, %1345
  %1392 = fadd fast float %1382, %1344
  br label %1393

; <label>:1393                                    ; preds = %1350, %1343
  %1394 = phi float [ %1392, %1350 ], [ %1344, %1343 ]
  %1395 = phi float [ %1391, %1350 ], [ %1345, %1343 ]
  %1396 = phi float [ %1387, %1350 ], [ %1346, %1343 ]
  %1397 = phi float [ %1388, %1350 ], [ %1347, %1343 ]
  %1398 = phi float [ %1389, %1350 ], [ %1348, %1343 ]
  %1399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1400 = extractvalue %dx.types.CBufRet.f32 %1399, 1
  %1401 = fcmp fast ogt float %1394, %1400
  br i1 %1401, label %1402, label %1408, !dx.controlflow.hints !72

; <label>:1402                                    ; preds = %1393
  %1403 = fdiv fast float 1.000000e+00, %1394
  %1404 = fmul fast float %1403, %1396
  %1405 = fmul fast float %1403, %1397
  %1406 = fmul fast float %1403, %1398
  %1407 = fmul fast float %1403, %1395
  br label %1408

; <label>:1408                                    ; preds = %1402, %1393
  %1409 = phi float [ %1407, %1402 ], [ %1395, %1393 ]
  %1410 = phi float [ %1404, %1402 ], [ %1396, %1393 ]
  %1411 = phi float [ %1405, %1402 ], [ %1397, %1393 ]
  %1412 = phi float [ %1406, %1402 ], [ %1398, %1393 ]
  br i1 %1401, label %1415, label %1413, !dx.controlflow.hints !73

; <label>:1413                                    ; preds = %1408
  %1414 = fadd fast float %970, %522
  br label %2201

; <label>:1415                                    ; preds = %1408
  %1416 = fmul fast float %1394, 0xBFF7154760000000
  %1417 = call float @dx.op.unary.f32(i32 21, float %1416)  ; Exp(value)
  %1418 = call float @dx.op.unary.f32(i32 7, float %1417)  ; Saturate(value)
  %1419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1420 = extractvalue %dx.types.CBufRet.f32 %1419, 3
  %1421 = fcmp fast une float %1420, 0.000000e+00
  %1422 = extractvalue %dx.types.CBufRet.f32 %1419, 0
  %1423 = extractvalue %dx.types.CBufRet.f32 %1419, 1
  %1424 = extractvalue %dx.types.CBufRet.f32 %1419, 2
  br i1 %1421, label %1425, label %1447, !dx.controlflow.hints !74

; <label>:1425                                    ; preds = %1415
  %1426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1427 = extractvalue %dx.types.CBufRet.f32 %1426, 0
  %1428 = extractvalue %dx.types.CBufRet.f32 %1426, 1
  %1429 = extractvalue %dx.types.CBufRet.f32 %1426, 2
  %1430 = call float @dx.op.dot3.f32(i32 55, float %1422, float %1423, float %1424, float %283, float %284, float %285)  ; Dot3(ax,ay,az,bx,by,bz)
  %1431 = fcmp fast ogt float %1409, 0.000000e+00
  %1432 = select i1 %1431, float 1.000000e+00, float -1.000000e+00
  %1433 = fmul fast float %1432, 5.000000e-01
  %1434 = fmul fast float %1433, %1430
  %1435 = fmul fast float %1432, %1409
  %1436 = fadd fast float %1434, 4.921875e-01
  %1437 = fadd fast float %1435, -3.125000e-02
  %1438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %1436, float 0x3FB25F3060000000, float %1437, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1439 = extractvalue %dx.types.ResRet.f32 %1438, 0
  %1440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1441 = extractvalue %dx.types.CBufRet.f32 %1440, 0
  %1442 = fmul fast float %1439, 0x400921FB60000000
  %1443 = fmul fast float %1442, %1441
  %1444 = fmul fast float %1443, %1427
  %1445 = fmul fast float %1443, %1428
  %1446 = fmul fast float %1443, %1429
  br label %1447

; <label>:1447                                    ; preds = %1425, %1415
  %1448 = phi float [ %1444, %1425 ], [ 0.000000e+00, %1415 ]
  %1449 = phi float [ %1445, %1425 ], [ 0.000000e+00, %1415 ]
  %1450 = phi float [ %1446, %1425 ], [ 0.000000e+00, %1415 ]
  %1451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1452 = extractvalue %dx.types.CBufRet.f32 %1451, 0
  %1453 = fmul fast float %1452, %1422
  %1454 = fmul fast float %1452, %1423
  %1455 = fmul fast float %1452, %1424
  %1456 = fadd fast float %1453, %519
  %1457 = fsub fast float -0.000000e+00, %1456
  %1458 = fadd fast float %1454, %520
  %1459 = fsub fast float -0.000000e+00, %1458
  %1460 = fadd fast float %1455, %521
  br i1 %534, label %1535, label %1461, !dx.controlflow.hints !48

; <label>:1461                                    ; preds = %1447
  %1462 = extractvalue %dx.types.CBufRet.f32 %1451, 1
  %1463 = fcmp fast ogt float %1462, %1452
  br i1 %1463, label %1464, label %1466, !dx.controlflow.hints !49

; <label>:1464                                    ; preds = %1461
  %1465 = fsub fast float %1462, %1452
  br label %1526

; <label>:1466                                    ; preds = %1461
  %1467 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1468 = extractvalue %dx.types.CBufRet.i32 %1467, 3
  %1469 = icmp eq i32 %1468, 0
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 2
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.f32 %1472, 2
  %1474 = fsub fast float %1471, %1460
  %1475 = fadd fast float %1474, %1473
  %1476 = fsub fast float 0xC7EFFFFFE0000000, %1460
  br i1 %1469, label %1486, label %1477, !dx.controlflow.hints !36

; <label>:1477                                    ; preds = %1466
  %1478 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1457, float %1459, float %1475)  ; Dot3(ax,ay,az,bx,by,bz)
  %1479 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1422, float %1423, float %1424)  ; Dot3(ax,ay,az,bx,by,bz)
  %1480 = fdiv fast float 1.000000e+00, %1479
  %1481 = fmul fast float %1480, %1478
  %1482 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1457, float %1459, float %1476)  ; Dot3(ax,ay,az,bx,by,bz)
  %1483 = fmul fast float %1480, %1482
  %1484 = call float @dx.op.binary.f32(i32 36, float %1481, float %1483)  ; FMin(a,b)
  %1485 = call float @dx.op.binary.f32(i32 35, float %1481, float %1483)  ; FMax(a,b)
  br label %1519

; <label>:1486                                    ; preds = %1466
  %1487 = extractvalue %dx.types.CBufRet.f32 %1470, 0
  %1488 = extractvalue %dx.types.CBufRet.f32 %1470, 1
  %1489 = extractvalue %dx.types.CBufRet.f32 %1472, 0
  %1490 = extractvalue %dx.types.CBufRet.f32 %1472, 1
  %1491 = fdiv fast float 1.000000e+00, %1422
  %1492 = fdiv fast float 1.000000e+00, %1423
  %1493 = fdiv fast float 1.000000e+00, %1424
  %1494 = fsub fast float %1487, %1456
  %1495 = fmul fast float %1491, %1494
  %1496 = fadd fast float %1494, %1489
  %1497 = fmul fast float %1496, %1491
  %1498 = call float @dx.op.binary.f32(i32 36, float %1495, float %1497)  ; FMin(a,b)
  %1499 = call float @dx.op.binary.f32(i32 35, float %1495, float %1497)  ; FMax(a,b)
  %1500 = fsub fast float %1488, %1458
  %1501 = fmul fast float %1492, %1500
  %1502 = fadd fast float %1500, %1490
  %1503 = fmul fast float %1502, %1492
  %1504 = call float @dx.op.binary.f32(i32 36, float %1501, float %1503)  ; FMin(a,b)
  %1505 = call float @dx.op.binary.f32(i32 35, float %1498, float %1504)  ; FMax(a,b)
  %1506 = call float @dx.op.binary.f32(i32 35, float %1501, float %1503)  ; FMax(a,b)
  %1507 = call float @dx.op.binary.f32(i32 36, float %1499, float %1506)  ; FMin(a,b)
  %1508 = fmul fast float %1493, %1476
  %1509 = fmul fast float %1493, %1475
  %1510 = call float @dx.op.binary.f32(i32 36, float %1508, float %1509)  ; FMin(a,b)
  %1511 = call float @dx.op.binary.f32(i32 35, float %1505, float %1510)  ; FMax(a,b)
  %1512 = call float @dx.op.binary.f32(i32 35, float %1508, float %1509)  ; FMax(a,b)
  %1513 = call float @dx.op.binary.f32(i32 36, float %1507, float %1512)  ; FMin(a,b)
  %1514 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1511)  ; FMax(a,b)
  %1515 = fcmp fast ult float %1513, %1514
  br i1 %1515, label %1519, label %1516, !dx.controlflow.hints !37

; <label>:1516                                    ; preds = %1486
  %1517 = call float @dx.op.binary.f32(i32 36, float %1511, float %1513)  ; FMin(a,b)
  %1518 = call float @dx.op.binary.f32(i32 35, float %1511, float %1513)  ; FMax(a,b)
  br label %1519

; <label>:1519                                    ; preds = %1516, %1486, %1477
  %1520 = phi float [ %1484, %1477 ], [ %1517, %1516 ], [ 0.000000e+00, %1486 ]
  %1521 = phi float [ %1485, %1477 ], [ %1518, %1516 ], [ 0.000000e+00, %1486 ]
  %1522 = fcmp fast ogt float %1520, 0.000000e+00
  br i1 %1522, label %1526, label %1523, !dx.controlflow.hints !50

; <label>:1523                                    ; preds = %1519
  %1524 = fcmp fast ugt float %1521, 0.000000e+00
  br i1 %1524, label %1525, label %1526, !dx.controlflow.hints !51

; <label>:1525                                    ; preds = %1523
  br label %1526

; <label>:1526                                    ; preds = %1525, %1523, %1519, %1464
  %1527 = phi float [ %1465, %1464 ], [ 0.000000e+00, %1525 ], [ 0x47EFFFFFE0000000, %1523 ], [ %1520, %1519 ]
  %1528 = phi i32 [ %372, %1464 ], [ %372, %1525 ], [ 0, %1523 ], [ %372, %1519 ]
  %1529 = icmp ne i32 %1528, 0
  %1530 = zext i1 %1529 to i32
  %1531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1532 = extractvalue %dx.types.CBufRet.f32 %1531, 2
  %1533 = call float @dx.op.binary.f32(i32 35, float %1527, float %1532)  ; FMax(a,b)
  %1534 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1533)  ; FMin(a,b)
  br label %1535

; <label>:1535                                    ; preds = %1526, %1447
  %1536 = phi float [ %1534, %1526 ], [ 0x47EFFFFFE0000000, %1447 ]
  %1537 = phi i32 [ %1530, %1526 ], [ 0, %1447 ]
  br i1 %707, label %1550, label %1538, !dx.controlflow.hints !57

; <label>:1538                                    ; preds = %1535
  %1539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1540 = extractvalue %dx.types.CBufRet.f32 %1539, 3
  %1541 = extractvalue %dx.types.CBufRet.f32 %1539, 2
  %1542 = fmul fast float %1540, %1452
  %1543 = fdiv fast float %1542, %1452
  %1544 = fadd fast float %1543, 1.000000e+00
  %1545 = call float @dx.op.unary.f32(i32 23, float %1544)  ; Log(value)
  %1546 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1545)  ; FMin(a,b)
  %1547 = fmul fast float %1541, %1452
  %1548 = fmul fast float %1547, %1546
  %1549 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1548)  ; FMin(a,b)
  br label %1550

; <label>:1550                                    ; preds = %1538, %1535
  %1551 = phi float [ %1549, %1538 ], [ 0x47EFFFFFE0000000, %1535 ]
  br i1 %722, label %1608, label %1552, !dx.controlflow.hints !58

; <label>:1552                                    ; preds = %1550
  %1553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1554 = extractvalue %dx.types.CBufRet.f32 %1553, 0
  %1555 = extractvalue %dx.types.CBufRet.f32 %1553, 1
  %1556 = extractvalue %dx.types.CBufRet.f32 %1553, 2
  %1557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1558 = extractvalue %dx.types.CBufRet.f32 %1557, 0
  %1559 = extractvalue %dx.types.CBufRet.f32 %1557, 1
  %1560 = extractvalue %dx.types.CBufRet.f32 %1557, 2
  %1561 = fsub fast float %1456, %1558
  %1562 = fsub fast float %1458, %1559
  %1563 = fsub fast float %1460, %1560
  %1564 = fmul fast float %1561, %1554
  %1565 = fmul fast float %1562, %1555
  %1566 = fmul fast float %1563, %1556
  %1567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1568 = extractvalue %dx.types.CBufRet.i32 %1567, 3
  %1569 = icmp eq i32 %1568, 0
  br i1 %1569, label %1573, label %1570, !dx.controlflow.hints !59

; <label>:1570                                    ; preds = %1552
  %1571 = call float @dx.op.unary.f32(i32 22, float %1564)  ; Frc(value)
  %1572 = call float @dx.op.unary.f32(i32 22, float %1565)  ; Frc(value)
  br label %1573

; <label>:1573                                    ; preds = %1570, %1552
  %1574 = phi float [ %1571, %1570 ], [ %1564, %1552 ]
  %1575 = phi float [ %1572, %1570 ], [ %1565, %1552 ]
  %1576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %1574, float %1575, float %1566, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1577 = extractvalue %dx.types.ResRet.f32 %1576, 0
  %1578 = fmul fast float %1577, 2.000000e+00
  %1579 = fadd fast float %1578, -1.000000e+00
  %1580 = extractvalue %dx.types.CBufRet.f32 %1553, 3
  %1581 = fmul fast float %1579, %1580
  %1582 = fcmp fast olt float %1581, 0.000000e+00
  %1583 = fcmp fast oge float %1566, 0.000000e+00
  %1584 = fcmp fast ole float %1566, 1.000000e+00
  br i1 %1569, label %1587, label %1585, !dx.controlflow.hints !60

; <label>:1585                                    ; preds = %1573
  %1586 = and i1 %1583, %1584
  br label %1597

; <label>:1587                                    ; preds = %1573
  %1588 = fcmp fast oge float %1564, 0.000000e+00
  %1589 = fcmp fast oge float %1565, 0.000000e+00
  %1590 = and i1 %1588, %1589
  %1591 = and i1 %1583, %1590
  %1592 = fcmp fast ole float %1564, 1.000000e+00
  %1593 = fcmp fast ole float %1565, 1.000000e+00
  %1594 = and i1 %1592, %1593
  %1595 = and i1 %1584, %1594
  %1596 = and i1 %1591, %1595
  br label %1597

; <label>:1597                                    ; preds = %1587, %1585
  %1598 = phi i1 [ %1586, %1585 ], [ %1596, %1587 ]
  %1599 = and i1 %1582, %1598
  %1600 = call float @dx.op.unary.f32(i32 6, float %1581)  ; FAbs(value)
  %1601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1602 = extractvalue %dx.types.CBufRet.f32 %1601, 1
  %1603 = extractvalue %dx.types.CBufRet.f32 %1601, 0
  %1604 = call float @dx.op.binary.f32(i32 35, float %1600, float %1603)  ; FMax(a,b)
  %1605 = select i1 %1599, float %1602, float %1604
  %1606 = zext i1 %1599 to i32
  %1607 = call float @dx.op.binary.f32(i32 36, float %1536, float %1605)  ; FMin(a,b)
  br label %1608

; <label>:1608                                    ; preds = %1597, %1550
  %1609 = phi float [ %1607, %1597 ], [ %1536, %1550 ]
  %1610 = phi i32 [ %1606, %1597 ], [ 0, %1550 ]
  br i1 %782, label %1783, label %1611, !dx.controlflow.hints !61

; <label>:1611                                    ; preds = %1608
  %1612 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1613 = extractvalue %dx.types.CBufRet.i32 %1612, 1
  %1614 = and i32 %1613, 1
  %1615 = icmp eq i32 %1614, 0
  br i1 %1615, label %1616, label %1773, !dx.controlflow.hints !62

; <label>:1616                                    ; preds = %1611
  %1617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.f32 %1617, 2
  %1619 = extractvalue %dx.types.CBufRet.f32 %1617, 3
  %1620 = fmul fast float %1618, %1456
  %1621 = fmul fast float %1619, %1458
  %1622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.f32 %1622, 0
  %1624 = extractvalue %dx.types.CBufRet.f32 %1622, 1
  %1625 = fadd fast float %1620, %1623
  %1626 = fadd fast float %1621, %1624
  %1627 = call float @dx.op.unary.f32(i32 7, float %1625)  ; Saturate(value)
  %1628 = call float @dx.op.unary.f32(i32 7, float %1626)  ; Saturate(value)
  %1629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %19, float %1627, float %1628, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1630 = extractvalue %dx.types.ResRet.f32 %1629, 0
  %1631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1632 = extractvalue %dx.types.CBufRet.f32 %1631, 0
  %1633 = fmul fast float %1632, %1630
  %1634 = fsub fast float %1625, %1627
  %1635 = fsub fast float %1626, %1628
  %1636 = extractvalue %dx.types.CBufRet.f32 %1617, 0
  %1637 = extractvalue %dx.types.CBufRet.f32 %1617, 1
  %1638 = fmul fast float %1636, %1634
  %1639 = fmul fast float %1637, %1635
  %1640 = fmul fast float %1638, %1638
  %1641 = fmul fast float %1639, %1639
  %1642 = fadd fast float %1640, %1641
  %1643 = call float @dx.op.unary.f32(i32 24, float %1642)  ; Sqrt(value)
  %1644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.f32 %1644, 3
  %1646 = fmul fast float %1645, %1643
  %1647 = call float @dx.op.unary.f32(i32 7, float %1646)  ; Saturate(value)
  %1648 = extractvalue %dx.types.CBufRet.f32 %1644, 2
  %1649 = fsub fast float %1648, %1633
  %1650 = fmul fast float %1649, %1647
  %1651 = extractvalue %dx.types.CBufRet.f32 %1631, 1
  %1652 = fsub fast float %1460, %1633
  %1653 = fsub fast float %1652, %1651
  %1654 = fsub fast float %1653, %1650
  %1655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1656 = extractvalue %dx.types.CBufRet.f32 %1655, 2
  %1657 = fsub fast float %1654, %1656
  %1658 = fcmp fast olt float %1657, 0.000000e+00
  %1659 = call float @dx.op.unary.f32(i32 6, float %1657)  ; FAbs(value)
  %1660 = extractvalue %dx.types.CBufRet.i32 %1612, 0
  %1661 = icmp eq i32 %1660, 0
  br i1 %1661, label %1715, label %1662

; <label>:1662                                    ; preds = %1616
  br label %1663

; <label>:1663                                    ; preds = %1702, %1662
  %1664 = phi i32 [ %1708, %1702 ], [ 1, %1662 ]
  %1665 = phi float [ %1710, %1702 ], [ 0x47EFFFFFE0000000, %1662 ]
  %1666 = phi i32 [ %1711, %1702 ], [ 0, %1662 ]
  %1667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.f32 %1667, 1
  %1669 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1670 = extractvalue %dx.types.CBufRet.i32 %1669, 1
  %1671 = and i32 %1670, 8
  %1672 = icmp eq i32 %1671, 0
  %1673 = fcmp fast ogt float %1668, %1654
  %1674 = or i1 %1673, %1672
  %1675 = add i32 %1666, 171
  %1676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %1675)  ; CBufferLoadLegacy(handle,regIndex)
  %1677 = extractvalue %dx.types.CBufRet.f32 %1676, 0
  %1678 = extractvalue %dx.types.CBufRet.f32 %1676, 1
  %1679 = extractvalue %dx.types.CBufRet.f32 %1676, 2
  br i1 %1674, label %1680, label %1686, !dx.controlflow.hints !63

; <label>:1680                                    ; preds = %1663
  %1681 = fsub fast float %1677, %1456
  %1682 = fsub fast float %1678, %1458
  %1683 = fmul fast float %1681, %1681
  %1684 = fmul fast float %1682, %1682
  %1685 = fadd fast float %1683, %1684
  br label %1702

; <label>:1686                                    ; preds = %1663
  %1687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1688 = extractvalue %dx.types.CBufRet.f32 %1687, 2
  %1689 = extractvalue %dx.types.CBufRet.f32 %1667, 2
  %1690 = fmul fast float %1689, %1688
  %1691 = fsub fast float %1690, %1668
  %1692 = fdiv fast float %1679, %1691
  %1693 = fsub fast float %1456, %1677
  %1694 = fsub fast float %1458, %1678
  %1695 = fsub fast float %1654, %1668
  %1696 = fmul fast float %1692, %1695
  %1697 = fmul fast float %1693, %1693
  %1698 = fmul fast float %1694, %1694
  %1699 = fadd fast float %1697, %1698
  %1700 = fmul fast float %1696, %1696
  %1701 = fadd fast float %1699, %1700
  br label %1702

; <label>:1702                                    ; preds = %1686, %1680
  %1703 = phi float [ %1685, %1680 ], [ %1701, %1686 ]
  %1704 = call float @dx.op.unary.f32(i32 24, float %1703)  ; Sqrt(value)
  %1705 = fsub float %1679, %1704
  %1706 = fcmp fast olt float %1705, 0.000000e+00
  %1707 = zext i1 %1706 to i32
  %1708 = and i32 %1707, %1664
  %1709 = call float @dx.op.unary.f32(i32 6, float %1705)  ; FAbs(value)
  %1710 = call float @dx.op.binary.f32(i32 36, float %1665, float %1709)  ; FMin(a,b)
  %1711 = add i32 %1666, 1
  %1712 = extractvalue %dx.types.CBufRet.i32 %1669, 0
  %1713 = icmp ult i32 %1711, %1712
  br i1 %1713, label %1663, label %1714

; <label>:1714                                    ; preds = %1702
  br label %1715

; <label>:1715                                    ; preds = %1714, %1616
  %1716 = phi i32 [ 1, %1616 ], [ %1708, %1714 ]
  %1717 = phi float [ 0x47EFFFFFE0000000, %1616 ], [ %1710, %1714 ]
  br label %1718

; <label>:1718                                    ; preds = %1718, %1715
  %1719 = phi i32 [ %1716, %1715 ], [ %1758, %1718 ]
  %1720 = phi float [ 0x47EFFFFFE0000000, %1715 ], [ %1760, %1718 ]
  %1721 = phi i32 [ 0, %1715 ], [ %1761, %1718 ]
  %1722 = add nuw nsw i32 %1721, 191
  %1723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %1722)  ; CBufferLoadLegacy(handle,regIndex)
  %1724 = extractvalue %dx.types.CBufRet.f32 %1723, 0
  %1725 = extractvalue %dx.types.CBufRet.f32 %1723, 1
  %1726 = extractvalue %dx.types.CBufRet.f32 %1723, 2
  %1727 = add nuw nsw i32 %1721, 195
  %1728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %1727)  ; CBufferLoadLegacy(handle,regIndex)
  %1729 = extractvalue %dx.types.CBufRet.f32 %1728, 0
  %1730 = extractvalue %dx.types.CBufRet.f32 %1728, 1
  %1731 = extractvalue %dx.types.CBufRet.f32 %1728, 2
  %1732 = fsub fast float %1456, %1724
  %1733 = fsub fast float %1458, %1725
  %1734 = fsub fast float %1654, %1726
  %1735 = call float @dx.op.unary.f32(i32 6, float %1732)  ; FAbs(value)
  %1736 = call float @dx.op.unary.f32(i32 6, float %1733)  ; FAbs(value)
  %1737 = call float @dx.op.unary.f32(i32 6, float %1734)  ; FAbs(value)
  %1738 = fsub fast float %1735, %1729
  %1739 = fsub fast float %1736, %1730
  %1740 = fsub fast float %1737, %1731
  %1741 = call float @dx.op.binary.f32(i32 35, float %1738, float 0.000000e+00)  ; FMax(a,b)
  %1742 = call float @dx.op.binary.f32(i32 35, float %1739, float 0.000000e+00)  ; FMax(a,b)
  %1743 = call float @dx.op.binary.f32(i32 35, float %1740, float 0.000000e+00)  ; FMax(a,b)
  %1744 = fmul fast float %1741, %1741
  %1745 = fmul fast float %1742, %1742
  %1746 = fadd fast float %1745, %1744
  %1747 = fmul fast float %1743, %1743
  %1748 = fadd fast float %1746, %1747
  %1749 = call float @dx.op.unary.f32(i32 24, float %1748)  ; Sqrt(value)
  %1750 = call float @dx.op.binary.f32(i32 35, float %1739, float %1740)  ; FMax(a,b)
  %1751 = call float @dx.op.binary.f32(i32 35, float %1738, float %1750)  ; FMax(a,b)
  %1752 = call float @dx.op.binary.f32(i32 36, float %1751, float 0.000000e+00)  ; FMin(a,b)
  %1753 = fadd fast float %1752, %1749
  %1754 = fsub fast float -0.000000e+00, %1753
  %1755 = fcmp ogt float %1753, -0.000000e+00
  %1756 = icmp ne i32 %1719, 0
  %1757 = and i1 %1756, %1755
  %1758 = zext i1 %1757 to i32
  %1759 = call float @dx.op.unary.f32(i32 6, float %1754)  ; FAbs(value)
  %1760 = call float @dx.op.binary.f32(i32 36, float %1720, float %1759)  ; FMin(a,b)
  %1761 = add nuw nsw i32 %1721, 1
  %1762 = icmp eq i32 %1761, 4
  br i1 %1762, label %1763, label %1718

; <label>:1763                                    ; preds = %1718
  %1764 = call float @dx.op.binary.f32(i32 36, float %1659, float %1760)  ; FMin(a,b)
  %1765 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1766 = extractvalue %dx.types.CBufRet.i32 %1765, 1
  %1767 = and i32 %1766, 2
  %1768 = icmp ne i32 %1767, 0
  %1769 = xor i1 %1757, %1768
  %1770 = call float @dx.op.binary.f32(i32 36, float %1764, float %1717)  ; FMin(a,b)
  %1771 = and i1 %1769, %1658
  %1772 = zext i1 %1771 to i32
  br label %1773

; <label>:1773                                    ; preds = %1763, %1611
  %1774 = phi i32 [ %510, %1611 ], [ %1772, %1763 ]
  %1775 = phi float [ 0.000000e+00, %1611 ], [ %1770, %1763 ]
  %1776 = phi float [ %1460, %1611 ], [ %1654, %1763 ]
  %1777 = icmp ne i32 %1774, 0
  %1778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1779 = extractvalue %dx.types.CBufRet.f32 %1778, 3
  %1780 = call float @dx.op.binary.f32(i32 35, float %1775, float %1779)  ; FMax(a,b)
  %1781 = call float @dx.op.binary.f32(i32 36, float %1551, float %1780)  ; FMin(a,b)
  %1782 = zext i1 %1777 to i32
  br label %1783

; <label>:1783                                    ; preds = %1773, %1608
  %1784 = phi i32 [ %1774, %1773 ], [ %510, %1608 ]
  %1785 = phi float [ %1776, %1773 ], [ %511, %1608 ]
  %1786 = phi float [ %1781, %1773 ], [ %1551, %1608 ]
  %1787 = phi i32 [ %1782, %1773 ], [ 0, %1608 ]
  %1788 = icmp eq i32 %1537, 0
  br i1 %1788, label %1862, label %1789, !dx.controlflow.hints !64

; <label>:1789                                    ; preds = %1783
  %1790 = fmul fast float %960, %1452
  %1791 = call float @dx.op.unary.f32(i32 23, float %1790)  ; Log(value)
  %1792 = fmul fast float %1791, 0x3FE62E4300000000
  %1793 = call float @dx.op.binary.f32(i32 35, float %1792, float 1.000000e+00)  ; FMax(a,b)
  %1794 = fmul fast float %1793, %1786
  %1795 = call float @dx.op.binary.f32(i32 36, float %1794, float %1609)  ; FMin(a,b)
  %1796 = call float @dx.op.binary.f32(i32 35, float %1795, float 0.000000e+00)  ; FMax(a,b)
  %1797 = fcmp fast ogt float %1796, 0x3F1A36E2E0000000
  %1798 = fadd fast float %1453, %1456
  %1799 = fadd fast float %1454, %1458
  %1800 = select i1 %1797, float %1798, float %1456
  %1801 = select i1 %1797, float %1799, float %1458
  %1802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1803 = extractvalue %dx.types.CBufRet.f32 %1802, 0
  %1804 = extractvalue %dx.types.CBufRet.f32 %1802, 1
  %1805 = fsub fast float %1800, %1803
  %1806 = fsub fast float %1801, %1804
  %1807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %1808 = extractvalue %dx.types.CBufRet.f32 %1807, 0
  %1809 = extractvalue %dx.types.CBufRet.f32 %1807, 1
  %1810 = fmul fast float %1805, %1808
  %1811 = fmul fast float %1806, %1809
  %1812 = fsub fast float 1.000000e+00, %1811
  %1813 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.i32 %1813, 3
  %1815 = icmp eq i32 %1814, 0
  br i1 %1815, label %1822, label %1816, !dx.controlflow.hints !52

; <label>:1816                                    ; preds = %1789
  %1817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %1810, float %1812, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1818 = extractvalue %dx.types.ResRet.f32 %1817, 0
  %1819 = extractvalue %dx.types.ResRet.f32 %1817, 1
  %1820 = extractvalue %dx.types.ResRet.f32 %1817, 2
  %1821 = extractvalue %dx.types.ResRet.f32 %1817, 3
  br label %1828

; <label>:1822                                    ; preds = %1789
  %1823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1810, float %1812, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1824 = extractvalue %dx.types.ResRet.f32 %1823, 0
  %1825 = extractvalue %dx.types.ResRet.f32 %1823, 1
  %1826 = extractvalue %dx.types.ResRet.f32 %1823, 2
  %1827 = extractvalue %dx.types.ResRet.f32 %1823, 3
  br label %1828

; <label>:1828                                    ; preds = %1822, %1816
  %1829 = phi float [ %1818, %1816 ], [ %1824, %1822 ]
  %1830 = phi float [ %1819, %1816 ], [ %1825, %1822 ]
  %1831 = phi float [ %1820, %1816 ], [ %1826, %1822 ]
  %1832 = phi float [ %1821, %1816 ], [ %1827, %1822 ]
  %1833 = extractvalue %dx.types.CBufRet.f32 %1807, 3
  %1834 = fmul fast float %1833, %1830
  %1835 = fmul fast float %1834, %1829
  %1836 = fsub fast float %1834, %1835
  %1837 = fcmp fast ole float %1836, 0.000000e+00
  %1838 = extractvalue %dx.types.CBufRet.f32 %1802, 2
  %1839 = fadd fast float %1835, %1838
  %1840 = fmul fast float %1833, %1831
  %1841 = fadd fast float %1840, %1838
  %1842 = fdiv fast float 1.000000e+00, %1836
  %1843 = select i1 %1837, float 1.000000e+06, float %1842
  %1844 = fsub fast float %1460, %1839
  %1845 = fmul fast float %1843, %1844
  %1846 = call float @dx.op.unary.f32(i32 7, float %1845)  ; Saturate(value)
  %1847 = extractvalue %dx.types.CBufRet.f32 %1807, 2
  %1848 = fmul fast float %1847, %1846
  %1849 = fsub fast float %1847, %1848
  %1850 = fcmp fast olt float %1460, %1841
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 3
  %1853 = fmul fast float %1852, 3.000000e+00
  %1854 = select i1 %1850, float %1853, float 3.000000e+00
  %1855 = fmul fast float %1849, %1854
  %1856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1857 = extractvalue %dx.types.CBufRet.f32 %1856, 2
  %1858 = fmul fast float %1452, 0x3FD5555560000000
  %1859 = fmul fast float %1858, %1832
  %1860 = fmul fast float %1859, %1857
  %1861 = fmul fast float %1860, %1855
  br label %1862

; <label>:1862                                    ; preds = %1828, %1783
  %1863 = phi float [ %1861, %1828 ], [ 0.000000e+00, %1783 ]
  br i1 %707, label %1912, label %1864, !dx.controlflow.hints !66

; <label>:1864                                    ; preds = %1862
  %1865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1866 = extractvalue %dx.types.CBufRet.f32 %1865, 0
  %1867 = fsub fast float %1866, %1460
  %1868 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1457, float %1459, float %1867)  ; Dot3(ax,ay,az,bx,by,bz)
  %1869 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1422, float %1423, float %1424)  ; Dot3(ax,ay,az,bx,by,bz)
  %1870 = fdiv fast float 1.000000e+00, %1869
  %1871 = fmul fast float %1870, %1868
  %1872 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1871)  ; FMax(a,b)
  %1873 = fcmp fast olt float %1424, 0.000000e+00
  %1874 = call float @dx.op.binary.f32(i32 36, float %1452, float %1872)  ; FMin(a,b)
  br i1 %1873, label %1876, label %1875, !dx.controlflow.hints !67

; <label>:1875                                    ; preds = %1864
  br label %1876

; <label>:1876                                    ; preds = %1875, %1864
  %1877 = phi float [ 0.000000e+00, %1875 ], [ %1874, %1864 ]
  %1878 = phi float [ %1874, %1875 ], [ %1452, %1864 ]
  %1879 = phi float [ %1874, %1875 ], [ 0.000000e+00, %1864 ]
  %1880 = phi float [ %1452, %1875 ], [ %1874, %1864 ]
  %1881 = fsub fast float %1878, %1877
  %1882 = extractvalue %dx.types.CBufRet.f32 %1865, 1
  %1883 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1882)  ; FMin(a,b)
  %1884 = fsub fast float %1460, %1866
  %1885 = fmul fast float %1883, 0x3FF7154760000000
  %1886 = fmul fast float %1885, %1884
  %1887 = call float @dx.op.unary.f32(i32 21, float %1886)  ; Exp(value)
  %1888 = fmul fast float %1424, 0x3FF7154760000000
  %1889 = fmul fast float %1888, %1880
  %1890 = fmul fast float %1889, %1883
  %1891 = call float @dx.op.unary.f32(i32 21, float %1890)  ; Exp(value)
  %1892 = fmul fast float %1888, %1879
  %1893 = fmul fast float %1892, %1883
  %1894 = call float @dx.op.unary.f32(i32 21, float %1893)  ; Exp(value)
  %1895 = fsub fast float %1891, %1894
  %1896 = fmul fast float %1895, %1887
  %1897 = fmul fast float %1883, %1424
  %1898 = fdiv fast float %1896, %1897
  %1899 = fadd fast float %1881, %1898
  %1900 = call float @dx.op.unary.f32(i32 6, float %1424)  ; FAbs(value)
  %1901 = fcmp fast olt float %1900, 0x3F0FFB4800000000
  %1902 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1884)  ; FMax(a,b)
  %1903 = fmul fast float %1902, 0x3FF7154760000000
  %1904 = fmul fast float %1903, %1882
  %1905 = call float @dx.op.unary.f32(i32 21, float %1904)  ; Exp(value)
  %1906 = fmul fast float %1905, %1452
  %1907 = select i1 %1901, float %1906, float %1899
  %1908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1909 = extractvalue %dx.types.CBufRet.f32 %1908, 1
  %1910 = fmul fast float %1907, %1909
  %1911 = fadd fast float %1910, %1863
  br label %1912

; <label>:1912                                    ; preds = %1876, %1862
  %1913 = phi float [ %1911, %1876 ], [ %1863, %1862 ]
  %1914 = icmp eq i32 %1610, 0
  br i1 %1914, label %2095, label %1915, !dx.controlflow.hints !68

; <label>:1915                                    ; preds = %1912
  %1916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1917 = extractvalue %dx.types.CBufRet.f32 %1916, 3
  %1918 = fmul fast float %1917, %1452
  %1919 = fcmp fast oeq float %1918, 0.000000e+00
  br i1 %1919, label %1934, label %1920, !dx.controlflow.hints !69

; <label>:1920                                    ; preds = %1915
  %1921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.f32 %1921, 3
  %1923 = fmul fast float %1922, %1918
  %1924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1925 = extractvalue %dx.types.CBufRet.f32 %1924, 0
  %1926 = extractvalue %dx.types.CBufRet.f32 %1924, 1
  %1927 = extractvalue %dx.types.CBufRet.f32 %1924, 2
  %1928 = fmul fast float %1925, %1923
  %1929 = fmul fast float %1926, %1923
  %1930 = fmul fast float %1927, %1923
  %1931 = call float @dx.op.unary.f32(i32 23, float %1928)  ; Log(value)
  %1932 = call float @dx.op.unary.f32(i32 23, float %1929)  ; Log(value)
  %1933 = call float @dx.op.unary.f32(i32 23, float %1930)  ; Log(value)
  br label %1934

; <label>:1934                                    ; preds = %1920, %1915
  %1935 = phi float [ %1931, %1920 ], [ 0.000000e+00, %1915 ]
  %1936 = phi float [ %1932, %1920 ], [ 0.000000e+00, %1915 ]
  %1937 = phi float [ %1933, %1920 ], [ 0.000000e+00, %1915 ]
  %1938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1939 = extractvalue %dx.types.CBufRet.f32 %1938, 0
  %1940 = extractvalue %dx.types.CBufRet.f32 %1938, 1
  %1941 = extractvalue %dx.types.CBufRet.f32 %1938, 2
  %1942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1943 = extractvalue %dx.types.CBufRet.f32 %1942, 0
  %1944 = extractvalue %dx.types.CBufRet.f32 %1942, 1
  %1945 = extractvalue %dx.types.CBufRet.f32 %1942, 2
  %1946 = fsub fast float %1456, %1943
  %1947 = fsub fast float %1458, %1944
  %1948 = fsub fast float %1460, %1945
  %1949 = fmul fast float %1946, %1939
  %1950 = fmul fast float %1947, %1940
  %1951 = fmul fast float %1948, %1941
  %1952 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1953 = extractvalue %dx.types.CBufRet.i32 %1952, 0
  %1954 = extractvalue %dx.types.CBufRet.i32 %1952, 1
  %1955 = uitofp i32 %1953 to float
  %1956 = uitofp i32 %1954 to float
  %1957 = fmul fast float %1949, %1955
  %1958 = fmul fast float %1950, %1956
  %1959 = fadd fast float %1957, 5.000000e-01
  %1960 = fadd fast float %1958, 5.000000e-01
  %1961 = call float @dx.op.unary.f32(i32 22, float %1959)  ; Frc(value)
  %1962 = call float @dx.op.unary.f32(i32 22, float %1960)  ; Frc(value)
  %1963 = call float @dx.op.unary.f32(i32 27, float %1959)  ; Round_ni(value)
  %1964 = call float @dx.op.unary.f32(i32 27, float %1960)  ; Round_ni(value)
  %1965 = fadd fast float %1963, 1.000000e+00
  %1966 = fadd fast float %1964, 1.000000e+00
  %1967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1968 = extractvalue %dx.types.CBufRet.f32 %1967, 0
  %1969 = extractvalue %dx.types.CBufRet.f32 %1967, 1
  %1970 = fmul fast float %1968, %1965
  %1971 = fmul fast float %1969, %1966
  %1972 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %18, float %1970, float %1971, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1973 = extractvalue %dx.types.ResRet.f32 %1972, 0
  %1974 = extractvalue %dx.types.ResRet.f32 %1972, 1
  %1975 = extractvalue %dx.types.ResRet.f32 %1972, 2
  %1976 = extractvalue %dx.types.ResRet.f32 %1972, 3
  %1977 = extractvalue %dx.types.CBufRet.i32 %1952, 2
  %1978 = extractvalue %dx.types.CBufRet.f32 %1967, 2
  %1979 = uitofp i32 %1977 to float
  %1980 = fadd fast float %1979, -1.000000e+00
  %1981 = fmul fast float %1980, %1973
  %1982 = fmul fast float %1980, %1974
  %1983 = fmul fast float %1980, %1975
  %1984 = fmul fast float %1980, %1976
  %1985 = fadd fast float %1981, 5.000000e-01
  %1986 = fadd fast float %1982, 5.000000e-01
  %1987 = fadd fast float %1983, 5.000000e-01
  %1988 = fadd fast float %1984, 5.000000e-01
  %1989 = fptoui float %1985 to i32
  %1990 = fptoui float %1986 to i32
  %1991 = fptoui float %1987 to i32
  %1992 = fptoui float %1988 to i32
  %1993 = uitofp i32 %1989 to float
  %1994 = uitofp i32 %1990 to float
  %1995 = uitofp i32 %1991 to float
  %1996 = uitofp i32 %1992 to float
  %1997 = fadd fast float %1993, 5.000000e-01
  %1998 = fadd fast float %1994, 5.000000e-01
  %1999 = fadd fast float %1995, 5.000000e-01
  %2000 = fadd fast float %1996, 5.000000e-01
  %2001 = fmul fast float %1997, %1978
  %2002 = fmul fast float %1998, %1978
  %2003 = fmul fast float %1999, %1978
  %2004 = fmul fast float %2000, %1978
  %2005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %2001, float %1951, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2006 = extractvalue %dx.types.ResRet.f32 %2005, 0
  %2007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %2002, float %1951, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2008 = extractvalue %dx.types.ResRet.f32 %2007, 0
  %2009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %2003, float %1951, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2010 = extractvalue %dx.types.ResRet.f32 %2009, 0
  %2011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %2004, float %1951, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2012 = extractvalue %dx.types.ResRet.f32 %2011, 0
  %2013 = fsub fast float %2010, %2012
  %2014 = fmul fast float %2013, %1961
  %2015 = fadd fast float %2014, %2012
  %2016 = fsub fast float %2008, %2006
  %2017 = fmul fast float %2016, %1961
  %2018 = fadd fast float %2017, %2006
  %2019 = fsub fast float %2018, %2015
  %2020 = fmul fast float %2019, %1962
  %2021 = fadd fast float %2020, %2015
  %2022 = fcmp fast ogt float %2021, 0.000000e+00
  br i1 %2022, label %2023, label %2091, !dx.controlflow.hints !70

; <label>:2023                                    ; preds = %1934
  %2024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %2025 = extractvalue %dx.types.CBufRet.f32 %2024, 0
  %2026 = extractvalue %dx.types.CBufRet.f32 %2024, 1
  %2027 = extractvalue %dx.types.CBufRet.f32 %2024, 2
  %2028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %2029 = extractvalue %dx.types.CBufRet.f32 %2028, 0
  %2030 = extractvalue %dx.types.CBufRet.f32 %2028, 1
  %2031 = extractvalue %dx.types.CBufRet.f32 %2028, 2
  %2032 = fmul fast float %1947, %1939
  %2033 = fmul fast float %1948, %1939
  %2034 = fadd fast float %1949, %2029
  %2035 = fadd fast float %2032, %2030
  %2036 = fadd fast float %2033, %2031
  %2037 = fmul fast float %2034, %2025
  %2038 = fmul fast float %2035, %2025
  %2039 = fmul fast float %2036, %2025
  %2040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %2037, float %2038, float %2039, float undef, i32 0, i32 0, i32 0, float %1935)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2041 = extractvalue %dx.types.ResRet.f32 %2040, 0
  %2042 = fmul fast float %2034, %2026
  %2043 = fmul fast float %2035, %2026
  %2044 = fmul fast float %2036, %2026
  %2045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %2042, float %2043, float %2044, float undef, i32 0, i32 0, i32 0, float %1936)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2046 = extractvalue %dx.types.ResRet.f32 %2045, 1
  %2047 = fmul fast float %2034, %2027
  %2048 = fmul fast float %2035, %2027
  %2049 = fmul fast float %2036, %2027
  %2050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %2047, float %2048, float %2049, float undef, i32 0, i32 0, i32 0, float %1937)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2051 = extractvalue %dx.types.ResRet.f32 %2050, 2
  %2052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %2053 = extractvalue %dx.types.CBufRet.f32 %2052, 1
  %2054 = fmul fast float %2046, %2041
  %2055 = fmul fast float %2054, %2051
  %2056 = call float @dx.op.unary.f32(i32 23, float %2055)  ; Log(value)
  %2057 = fmul fast float %2056, %2053
  %2058 = call float @dx.op.unary.f32(i32 21, float %2057)  ; Exp(value)
  %2059 = extractvalue %dx.types.CBufRet.f32 %2052, 2
  %2060 = fmul fast float %2021, %2021
  %2061 = fmul fast float %2060, %2058
  %2062 = fmul fast float %2061, %2059
  %2063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %2064 = extractvalue %dx.types.CBufRet.f32 %2063, 3
  %2065 = fmul fast float %2064, %2062
  %2066 = bitcast float %2065 to i32
  %2067 = sitofp i32 %2066 to float
  %2068 = fptosi float %2067 to i32
  %2069 = bitcast i32 %2068 to float
  %2070 = fsub fast float 1.000000e+00, %2062
  %2071 = bitcast float %2070 to i32
  %2072 = sitofp i32 %2071 to float
  %2073 = fptosi float %2072 to i32
  %2074 = bitcast i32 %2073 to float
  %2075 = fadd fast float %2069, %2074
  %2076 = bitcast float %2075 to i32
  %2077 = sub nsw i32 2129859010, %2076
  %2078 = bitcast i32 %2077 to float
  %2079 = fmul fast float %2078, %2069
  %2080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2081 = extractvalue %dx.types.CBufRet.f32 %2080, 2
  %2082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %2083 = extractvalue %dx.types.CBufRet.f32 %2082, 0
  %2084 = fmul fast float %2079, %2083
  %2085 = fadd fast float %2084, 1.000000e+00
  %2086 = bitcast float %2085 to i32
  %2087 = sub nsw i32 2129859010, %2086
  %2088 = bitcast i32 %2087 to float
  %2089 = fmul fast float %2079, %2081
  %2090 = fmul fast float %2089, %2088
  br label %2091

; <label>:2091                                    ; preds = %2023, %1934
  %2092 = phi float [ %2090, %2023 ], [ %2021, %1934 ]
  %2093 = fmul fast float %2092, %1452
  %2094 = fadd fast float %2093, %1913
  br label %2095

; <label>:2095                                    ; preds = %2091, %1912
  %2096 = phi float [ %2094, %2091 ], [ %1913, %1912 ]
  %2097 = icmp eq i32 %1787, 0
  br i1 %2097, label %2129, label %2098, !dx.controlflow.hints !71

; <label>:2098                                    ; preds = %2095
  %2099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %2100 = extractvalue %dx.types.CBufRet.f32 %2099, 1
  %2101 = fsub fast float %1452, %2100
  %2102 = extractvalue %dx.types.CBufRet.f32 %2099, 3
  %2103 = fmul fast float %2101, %2102
  %2104 = call float @dx.op.unary.f32(i32 7, float %2103)  ; Saturate(value)
  %2105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %2106 = extractvalue %dx.types.CBufRet.f32 %2105, 3
  %2107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2108 = extractvalue %dx.types.CBufRet.f32 %2107, 2
  %2109 = fsub fast float %2108, %1785
  %2110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %2111 = extractvalue %dx.types.CBufRet.f32 %2110, 3
  %2112 = fmul fast float %2109, %2111
  %2113 = call float @dx.op.unary.f32(i32 7, float %2112)  ; Saturate(value)
  %2114 = fmul fast float %2113, %2106
  %2115 = extractvalue %dx.types.CBufRet.f32 %2110, 0
  %2116 = fsub fast float %1452, %2115
  %2117 = extractvalue %dx.types.CBufRet.f32 %2110, 1
  %2118 = fmul fast float %2116, %2117
  %2119 = call float @dx.op.unary.f32(i32 7, float %2118)  ; Saturate(value)
  %2120 = fsub fast float 1.000000e+00, %2104
  %2121 = fmul fast float %2119, %2120
  %2122 = fadd fast float %2121, %2104
  %2123 = extractvalue %dx.types.CBufRet.f32 %2099, 0
  %2124 = fsub fast float %2114, %2123
  %2125 = fmul fast float %2124, %2122
  %2126 = fadd fast float %2125, %2123
  %2127 = fmul fast float %2126, %1452
  %2128 = fadd fast float %2127, %2096
  br label %2129

; <label>:2129                                    ; preds = %2098, %2095
  %2130 = phi float [ %2128, %2098 ], [ %2096, %2095 ]
  %2131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %2132 = extractvalue %dx.types.CBufRet.f32 %2131, 3
  %2133 = fmul fast float %2130, 0xBFF7154760000000
  %2134 = fmul fast float %2133, %2132
  %2135 = call float @dx.op.unary.f32(i32 21, float %2134)  ; Exp(value)
  %2136 = call float @dx.op.unary.f32(i32 7, float %2135)  ; Saturate(value)
  %2137 = fmul fast float %2136, %1448
  %2138 = fmul fast float %2136, %1449
  %2139 = fmul fast float %2136, %1450
  %2140 = fadd fast float %2137, %207
  %2141 = fadd fast float %2138, %208
  %2142 = fadd fast float %2139, %209
  %2143 = fsub fast float 1.000000e+00, %1418
  %2144 = fmul fast float %1410, %515
  %2145 = fmul fast float %2144, %2143
  %2146 = fmul fast float %2145, %2140
  %2147 = fmul fast float %1411, %515
  %2148 = fmul fast float %2147, %2143
  %2149 = fmul fast float %2148, %2141
  %2150 = fmul fast float %1412, %515
  %2151 = fmul fast float %2150, %2143
  %2152 = fmul fast float %2151, %2142
  %2153 = fadd fast float %2146, %516
  %2154 = fadd fast float %2149, %517
  %2155 = fadd fast float %2152, %518
  %2156 = fdiv fast float %1394, %970
  %2157 = fadd fast float %970, %522
  %2158 = fmul fast float %522, %522
  %2159 = fmul fast float %2157, %2157
  %2160 = fsub fast float %2158, %2159
  %2161 = fmul fast float %2160, -5.000000e-01
  %2162 = fmul fast float %2161, %2156
  %2163 = fadd fast float %2162, %514
  %2164 = fadd fast float %1394, %524
  %2165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2166 = extractvalue %dx.types.CBufRet.i32 %2165, 0
  %2167 = icmp eq i32 %2166, 0
  br i1 %2167, label %2194, label %2168, !dx.controlflow.hints !75

; <label>:2168                                    ; preds = %2129
  %2169 = icmp ne i32 %529, 0
  %2170 = zext i1 %2169 to i32
  %2171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2172 = extractvalue %dx.types.CBufRet.f32 %2171, 2
  %2173 = extractvalue %dx.types.CBufRet.f32 %2171, 0
  %2174 = fsub fast float %2157, %2173
  %2175 = fmul fast float %2174, %2172
  %2176 = call float @dx.op.unary.f32(i32 7, float %2175)  ; Saturate(value)
  %2177 = fadd fast float %2176, -5.000000e-01
  %2178 = fmul fast float %2177, 2.000000e+00
  %2179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2180 = extractvalue %dx.types.CBufRet.f32 %2179, 2
  %2181 = fcmp fast olt float %2178, %2180
  br i1 %2181, label %2182, label %2194, !dx.controlflow.hints !76

; <label>:2182                                    ; preds = %2168
  %2183 = fmul fast float %2178, %2178
  %2184 = fmul fast float %2143, %515
  %2185 = fmul fast float %2178, %2184
  %2186 = fmul fast float %2183, %2184
  %2187 = fmul fast float %2185, %2183
  %2188 = fmul fast float %2183, %2183
  %2189 = fmul fast float %2188, %2184
  %2190 = fadd fast float %2185, %525
  %2191 = fadd fast float %2186, %526
  %2192 = fadd fast float %2187, %527
  %2193 = fadd fast float %2189, %528
  br label %2194

; <label>:2194                                    ; preds = %2182, %2168, %2129
  %2195 = phi float [ %525, %2129 ], [ %2190, %2182 ], [ %525, %2168 ]
  %2196 = phi float [ %526, %2129 ], [ %2191, %2182 ], [ %526, %2168 ]
  %2197 = phi float [ %527, %2129 ], [ %2192, %2182 ], [ %527, %2168 ]
  %2198 = phi float [ %528, %2129 ], [ %2193, %2182 ], [ %528, %2168 ]
  %2199 = phi i32 [ %529, %2129 ], [ 1, %2182 ], [ %2170, %2168 ]
  %2200 = fmul fast float %1418, %515
  br label %2201

; <label>:2201                                    ; preds = %2194, %1413
  %2202 = phi float [ %1414, %1413 ], [ %2157, %2194 ]
  %2203 = phi i32 [ %510, %1413 ], [ %1784, %2194 ]
  %2204 = phi float [ %511, %1413 ], [ %1785, %2194 ]
  %2205 = phi float [ %514, %1413 ], [ %2163, %2194 ]
  %2206 = phi float [ %515, %1413 ], [ %2200, %2194 ]
  %2207 = phi float [ %516, %1413 ], [ %2153, %2194 ]
  %2208 = phi float [ %517, %1413 ], [ %2154, %2194 ]
  %2209 = phi float [ %518, %1413 ], [ %2155, %2194 ]
  %2210 = phi float [ %524, %1413 ], [ %2164, %2194 ]
  %2211 = phi float [ %525, %1413 ], [ %2195, %2194 ]
  %2212 = phi float [ %526, %1413 ], [ %2196, %2194 ]
  %2213 = phi float [ %527, %1413 ], [ %2197, %2194 ]
  %2214 = phi float [ %528, %1413 ], [ %2198, %2194 ]
  %2215 = phi i32 [ %529, %1413 ], [ %2199, %2194 ]
  %2216 = fmul fast float %970, %283
  %2217 = fmul fast float %970, %284
  %2218 = fmul fast float %970, %285
  %2219 = fadd fast float %2216, %519
  %2220 = fadd fast float %2217, %520
  %2221 = fadd fast float %2218, %521
  %2222 = fcmp fast olt float %2202, %487
  %2223 = extractvalue %dx.types.CBufRet.f32 %1399, 2
  %2224 = fcmp fast olt float %2223, %2206
  %2225 = and i1 %2222, %2224
  br i1 %2225, label %509, label %2226

; <label>:2226                                    ; preds = %2201
  br label %2227

; <label>:2227                                    ; preds = %2226, %483
  %2228 = phi float [ 0.000000e+00, %483 ], [ %2205, %2226 ]
  %2229 = phi float [ 1.000000e+00, %483 ], [ %2206, %2226 ]
  %2230 = phi float [ 0.000000e+00, %483 ], [ %2207, %2226 ]
  %2231 = phi float [ 0.000000e+00, %483 ], [ %2208, %2226 ]
  %2232 = phi float [ 0.000000e+00, %483 ], [ %2209, %2226 ]
  %2233 = phi float [ 0.000000e+00, %483 ], [ %2210, %2226 ]
  %2234 = phi float [ 0.000000e+00, %483 ], [ %2211, %2226 ]
  %2235 = phi float [ 0.000000e+00, %483 ], [ %2212, %2226 ]
  %2236 = phi float [ 0.000000e+00, %483 ], [ %2213, %2226 ]
  %2237 = phi float [ 0.000000e+00, %483 ], [ %2214, %2226 ]
  %2238 = phi i32 [ 0, %483 ], [ %2215, %2226 ]
  %2239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2240 = extractvalue %dx.types.CBufRet.i32 %2239, 0
  %2241 = icmp eq i32 %2240, 0
  br i1 %2241, label %2283, label %2242, !dx.controlflow.hints !77

; <label>:2242                                    ; preds = %2227
  %2243 = icmp eq i32 %2238, 0
  br i1 %2243, label %2282, label %2244, !dx.controlflow.hints !78

; <label>:2244                                    ; preds = %2242
  %2245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2246 = extractvalue %dx.types.CBufRet.i32 %2245, 2
  %2247 = icmp eq i32 %2246, 0
  br i1 %2247, label %2254, label %2248, !dx.controlflow.hints !79

; <label>:2248                                    ; preds = %2244
  %2249 = fsub fast float 1.000000e+00, %2229
  %2250 = fdiv fast float %2234, %2249
  %2251 = fdiv fast float %2235, %2249
  %2252 = fdiv fast float %2236, %2249
  %2253 = fdiv fast float %2237, %2249
  br label %2259

; <label>:2254                                    ; preds = %2244
  %2255 = fadd fast float %2234, %2229
  %2256 = fadd fast float %2235, %2229
  %2257 = fadd fast float %2236, %2229
  %2258 = fadd fast float %2237, %2229
  br label %2259

; <label>:2259                                    ; preds = %2254, %2248
  %2260 = phi float [ %2250, %2248 ], [ %2255, %2254 ]
  %2261 = phi float [ %2251, %2248 ], [ %2256, %2254 ]
  %2262 = phi float [ %2252, %2248 ], [ %2257, %2254 ]
  %2263 = phi float [ %2253, %2248 ], [ %2258, %2254 ]
  %2264 = call float @dx.op.binary.f32(i32 35, float %2260, float -1.000000e+00)  ; FMax(a,b)
  %2265 = call float @dx.op.binary.f32(i32 35, float %2261, float -1.000000e+00)  ; FMax(a,b)
  %2266 = call float @dx.op.binary.f32(i32 35, float %2262, float -1.000000e+00)  ; FMax(a,b)
  %2267 = call float @dx.op.binary.f32(i32 35, float %2263, float -1.000000e+00)  ; FMax(a,b)
  %2268 = call float @dx.op.binary.f32(i32 36, float %2264, float 1.000000e+00)  ; FMin(a,b)
  %2269 = call float @dx.op.binary.f32(i32 36, float %2265, float 1.000000e+00)  ; FMin(a,b)
  %2270 = call float @dx.op.binary.f32(i32 36, float %2266, float 1.000000e+00)  ; FMin(a,b)
  %2271 = call float @dx.op.binary.f32(i32 36, float %2267, float 1.000000e+00)  ; FMin(a,b)
  %2272 = fmul fast float %2268, 1.500000e+00
  %2273 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2270, float %2272)  ; FMad(a,b,c)
  %2274 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2269, float 0.000000e+00)  ; FMad(a,b,c)
  %2275 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2271, float %2274)  ; FMad(a,b,c)
  %2276 = fmul fast float %2268, 0x3FEBB67AE0000000
  %2277 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2270, float %2276)  ; FMad(a,b,c)
  %2278 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2269, float 0.000000e+00)  ; FMad(a,b,c)
  %2279 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2271, float %2278)  ; FMad(a,b,c)
  %2280 = fadd fast float %2273, 5.000000e-01
  %2281 = fadd fast float %2277, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 0, float %2280, float %2275, float %2281, float %2279, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2283

; <label>:2282                                    ; preds = %2242
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2283

; <label>:2283                                    ; preds = %2282, %2259, %2227
  %2284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2285 = extractvalue %dx.types.CBufRet.f32 %2284, 2
  %2286 = fsub fast float %2229, %2285
  %2287 = fdiv fast float %2286, %2285
  %2288 = call float @dx.op.unary.f32(i32 7, float %2287)  ; Saturate(value)
  %2289 = fmul fast float %2288, 2.000000e+00
  %2290 = fsub fast float 3.000000e+00, %2289
  %2291 = fmul fast float %2288, %2288
  %2292 = fmul fast float %2291, %2229
  %2293 = fmul fast float %2292, %2290
  %2294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2295 = extractvalue %dx.types.CBufRet.f32 %2294, 0
  %2296 = extractvalue %dx.types.CBufRet.f32 %2294, 1
  %2297 = extractvalue %dx.types.CBufRet.f32 %2294, 2
  %2298 = call float @dx.op.dot3.f32(i32 55, float %283, float %284, float %285, float %2295, float %2296, float %2297)  ; Dot3(ax,ay,az,bx,by,bz)
  %2299 = fmul fast float %2298, %2228
  %2300 = fcmp fast ogt float %2233, 0.000000e+00
  %2301 = fdiv fast float 1.000000e+00, %2233
  %2302 = fmul fast float %2299, %2301
  %2303 = select i1 %2300, float %2302, float %294
  %2304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2305 = extractvalue %dx.types.CBufRet.f32 %2304, 0
  %2306 = extractvalue %dx.types.CBufRet.f32 %2304, 1
  %2307 = extractvalue %dx.types.CBufRet.f32 %2304, 2
  %2308 = fmul fast float %2305, %247
  %2309 = fmul fast float %2306, %247
  %2310 = fmul fast float %2307, %247
  %2311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2312 = extractvalue %dx.types.CBufRet.f32 %2311, 0
  %2313 = extractvalue %dx.types.CBufRet.f32 %2311, 1
  %2314 = extractvalue %dx.types.CBufRet.f32 %2311, 2
  %2315 = fmul fast float %2312, %248
  %2316 = fmul fast float %2313, %248
  %2317 = fmul fast float %2314, %248
  %2318 = fadd fast float %2315, %2308
  %2319 = fadd fast float %2316, %2309
  %2320 = fadd fast float %2317, %2310
  %2321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2322 = extractvalue %dx.types.CBufRet.f32 %2321, 0
  %2323 = extractvalue %dx.types.CBufRet.f32 %2321, 1
  %2324 = extractvalue %dx.types.CBufRet.f32 %2321, 2
  %2325 = fadd fast float %2318, %2322
  %2326 = fadd fast float %2319, %2323
  %2327 = fadd fast float %2320, %2324
  %2328 = fmul fast float %2325, %2303
  %2329 = fmul fast float %2326, %2303
  %2330 = fmul fast float %2327, %2303
  %2331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2332 = extractvalue %dx.types.CBufRet.f32 %2331, 0
  %2333 = extractvalue %dx.types.CBufRet.f32 %2331, 1
  %2334 = extractvalue %dx.types.CBufRet.f32 %2331, 2
  %2335 = extractvalue %dx.types.CBufRet.f32 %2331, 3
  %2336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2337 = extractvalue %dx.types.CBufRet.f32 %2336, 0
  %2338 = extractvalue %dx.types.CBufRet.f32 %2336, 1
  %2339 = extractvalue %dx.types.CBufRet.f32 %2336, 2
  %2340 = extractvalue %dx.types.CBufRet.f32 %2336, 3
  %2341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2342 = extractvalue %dx.types.CBufRet.f32 %2341, 0
  %2343 = extractvalue %dx.types.CBufRet.f32 %2341, 1
  %2344 = extractvalue %dx.types.CBufRet.f32 %2341, 2
  %2345 = extractvalue %dx.types.CBufRet.f32 %2341, 3
  %2346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2347 = extractvalue %dx.types.CBufRet.f32 %2346, 0
  %2348 = extractvalue %dx.types.CBufRet.f32 %2346, 1
  %2349 = extractvalue %dx.types.CBufRet.f32 %2346, 2
  %2350 = extractvalue %dx.types.CBufRet.f32 %2346, 3
  %2351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2352 = extractvalue %dx.types.CBufRet.f32 %2351, 3
  %2353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2354 = extractvalue %dx.types.CBufRet.f32 %2353, 3
  %2355 = extractvalue %dx.types.CBufRet.f32 %2353, 0
  %2356 = extractvalue %dx.types.CBufRet.f32 %2353, 1
  %2357 = extractvalue %dx.types.CBufRet.f32 %2353, 2
  %2358 = fcmp fast olt float %2357, -5.000000e-01
  %2359 = call float @dx.op.dot3.f32(i32 55, float %2328, float %2329, float %2330, float %2328, float %2329, float %2330)  ; Dot3(ax,ay,az,bx,by,bz)
  %2360 = call float @dx.op.unary.f32(i32 25, float %2359)  ; Rsqrt(value)
  %2361 = fmul fast float %2360, %2359
  %2362 = fmul fast float %2360, %2328
  %2363 = fmul fast float %2360, %2329
  %2364 = fmul fast float %2360, %2330
  %2365 = fadd fast float %2361, %2335
  %2366 = call float @dx.op.dot3.f32(i32 55, float %2362, float %2363, float %2364, float %2332, float %2333, float %2334)  ; Dot3(ax,ay,az,bx,by,bz)
  %2367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2368 = extractvalue %dx.types.CBufRet.i32 %2367, 1
  %2369 = and i32 %2368, 1
  %2370 = icmp ne i32 %2369, 0
  %2371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2372 = extractvalue %dx.types.CBufRet.f32 %2371, 2
  %2373 = fcmp fast ogt float %2372, 0.000000e+00
  %2374 = and i1 %2370, %2373
  br i1 %2374, label %2375, label %2781, !dx.controlflow.hints !80

; <label>:2375                                    ; preds = %2283
  %2376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2377 = extractvalue %dx.types.CBufRet.f32 %2376, 3
  %2378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2379 = extractvalue %dx.types.CBufRet.f32 %2378, 2
  %2380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2381 = extractvalue %dx.types.CBufRet.f32 %2380, 2
  %2382 = fsub fast float %2379, %2381
  %2383 = and i32 %2368, 2
  %2384 = extractvalue %dx.types.CBufRet.i32 %2367, 0
  %2385 = call i32 @dx.op.binary.i32(i32 40, i32 %2384, i32 3)  ; UMin(a,b)
  %2386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2387 = extractvalue %dx.types.CBufRet.f32 %2386, 0
  %2388 = extractvalue %dx.types.CBufRet.f32 %2386, 1
  %2389 = extractvalue %dx.types.CBufRet.f32 %2380, 0
  %2390 = extractvalue %dx.types.CBufRet.f32 %2380, 1
  %2391 = fsub fast float %2387, %2389
  %2392 = fsub fast float %2388, %2390
  %2393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2394 = extractvalue %dx.types.CBufRet.f32 %2393, 0
  %2395 = fcmp fast ogt float %2394, 0.000000e+00
  %2396 = fsub fast float -0.000000e+00, %2391
  %2397 = fsub fast float -0.000000e+00, %2392
  %2398 = call float @dx.op.dot2.f32(i32 54, float %2362, float %2363, float %2362, float %2363)  ; Dot2(ax,ay,bx,by)
  %2399 = call float @dx.op.dot2.f32(i32 54, float %2362, float %2363, float %2396, float %2397)  ; Dot2(ax,ay,bx,by)
  %2400 = fmul fast float %2399, 2.000000e+00
  %2401 = call float @dx.op.dot2.f32(i32 54, float %2396, float %2397, float %2396, float %2397)  ; Dot2(ax,ay,bx,by)
  %2402 = fmul fast float %2394, %2394
  %2403 = fsub fast float %2401, %2402
  %2404 = fmul fast float %2400, %2400
  %2405 = fmul fast float %2398, 4.000000e+00
  %2406 = fmul fast float %2405, %2403
  %2407 = fsub fast float %2404, %2406
  %2408 = fcmp fast ogt float %2407, 0.000000e+00
  br i1 %2408, label %2409, label %2424, !dx.controlflow.hints !81

; <label>:2409                                    ; preds = %2375
  %2410 = fcmp fast ogt float %2400, 0.000000e+00
  %2411 = call float @dx.op.unary.f32(i32 24, float %2407)  ; Sqrt(value)
  %2412 = fsub fast float -0.000000e+00, %2411
  %2413 = select i1 %2410, float %2411, float %2412
  %2414 = fadd fast float %2413, %2400
  %2415 = fmul float %2414, -5.000000e-01
  %2416 = fdiv fast float %2415, %2398
  %2417 = call float @dx.op.binary.f32(i32 35, float %2416, float 0.000000e+00)  ; FMax(a,b)
  %2418 = call float @dx.op.binary.f32(i32 36, float %2361, float %2417)  ; FMin(a,b)
  %2419 = fdiv fast float %2403, %2415
  %2420 = call float @dx.op.binary.f32(i32 35, float %2419, float 0.000000e+00)  ; FMax(a,b)
  %2421 = call float @dx.op.binary.f32(i32 36, float %2361, float %2420)  ; FMin(a,b)
  %2422 = call float @dx.op.binary.f32(i32 36, float %2418, float %2421)  ; FMin(a,b)
  %2423 = call float @dx.op.binary.f32(i32 35, float %2418, float %2421)  ; FMax(a,b)
  br label %2424

; <label>:2424                                    ; preds = %2409, %2375
  %2425 = phi float [ %2423, %2409 ], [ -1.000000e+00, %2375 ]
  %2426 = phi float [ %2422, %2409 ], [ -1.000000e+00, %2375 ]
  %2427 = phi i1 [ true, %2409 ], [ false, %2375 ]
  %2428 = and i1 %2395, %2427
  br i1 %2428, label %2429, label %2431, !dx.controlflow.hints !82

; <label>:2429                                    ; preds = %2424
  %2430 = fcmp fast oeq float %2426, %2425
  br i1 %2430, label %2734, label %2432, !dx.controlflow.hints !83

; <label>:2431                                    ; preds = %2424
  br i1 %2395, label %2734, label %2432, !dx.controlflow.hints !84

; <label>:2432                                    ; preds = %2431, %2429
  %2433 = phi float [ %2361, %2431 ], [ %2425, %2429 ]
  %2434 = phi float [ 0.000000e+00, %2431 ], [ %2426, %2429 ]
  %2435 = icmp ne i32 %2383, 0
  %2436 = fmul fast float %2433, %2364
  %2437 = fadd fast float %2436, %2377
  %2438 = fmul fast float %2437, %2433
  %2439 = select i1 %2435, float 0.000000e+00, float %2438
  %2440 = fcmp fast oeq float %2364, 0.000000e+00
  %2441 = fdiv fast float %2382, %2364
  %2442 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2441)  ; FMax(a,b)
  %2443 = select i1 %2440, float %2433, float %2442
  %2444 = call float @dx.op.binary.f32(i32 36, float %2433, float %2443)  ; FMin(a,b)
  %2445 = fcmp fast ogt float %2364, 0.000000e+00
  %2446 = fcmp fast olt float %2382, 0.000000e+00
  br i1 %2445, label %2447, label %2504, !dx.controlflow.hints !85

; <label>:2447                                    ; preds = %2432
  %2448 = icmp eq i32 %2383, 0
  br i1 %2446, label %2449, label %2493, !dx.controlflow.hints !86

; <label>:2449                                    ; preds = %2447
  %2450 = select i1 %2448, float %2433, float 0.000000e+00
  %2451 = fsub fast float -0.000000e+00, %2450
  %2452 = call float @dx.op.unary.f32(i32 6, float %2451)  ; FAbs(value)
  %2453 = fmul fast float %2450, %2364
  %2454 = fadd fast float %2453, %2377
  %2455 = fmul fast float %2452, %2454
  %2456 = fsub fast float %2439, %2455
  %2457 = fsub fast float %2433, %2452
  %2458 = select i1 %2448, float %2457, float 0.000000e+00
  %2459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2460 = extractvalue %dx.types.CBufRet.f32 %2459, 0
  %2461 = extractvalue %dx.types.CBufRet.f32 %2459, 1
  %2462 = extractvalue %dx.types.CBufRet.f32 %2459, 2
  %2463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2464 = extractvalue %dx.types.CBufRet.f32 %2463, 0
  %2465 = extractvalue %dx.types.CBufRet.f32 %2463, 1
  %2466 = extractvalue %dx.types.CBufRet.f32 %2463, 2
  %2467 = extractvalue %dx.types.CBufRet.f32 %2463, 3
  %2468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2469 = extractvalue %dx.types.CBufRet.f32 %2468, 3
  %2470 = call float @dx.op.binary.f32(i32 36, float %2456, float %2469)  ; FMin(a,b)
  %2471 = fmul fast float %2467, %2458
  %2472 = call float @dx.op.unary.f32(i32 7, float %2471)  ; Saturate(value)
  %2473 = fsub fast float %2464, %2460
  %2474 = fsub fast float %2465, %2461
  %2475 = fsub fast float %2466, %2462
  %2476 = fmul fast float %2472, %2473
  %2477 = fmul fast float %2472, %2474
  %2478 = fmul fast float %2472, %2475
  %2479 = fadd fast float %2476, %2460
  %2480 = fadd fast float %2477, %2461
  %2481 = fadd fast float %2478, %2462
  %2482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2483 = extractvalue %dx.types.CBufRet.f32 %2482, 0
  %2484 = extractvalue %dx.types.CBufRet.f32 %2482, 1
  %2485 = fadd fast float %2484, %2483
  %2486 = call float @dx.op.unary.f32(i32 7, float %2485)  ; Saturate(value)
  %2487 = extractvalue %dx.types.CBufRet.f32 %2482, 2
  %2488 = extractvalue %dx.types.CBufRet.f32 %2482, 3
  %2489 = fadd fast float %2488, %2487
  %2490 = call float @dx.op.unary.f32(i32 7, float %2489)  ; Saturate(value)
  %2491 = fmul fast float %2486, %2470
  %2492 = fmul fast float %2491, %2490
  br label %2734

; <label>:2493                                    ; preds = %2447
  br i1 %2448, label %2494, label %2515, !dx.controlflow.hints !87

; <label>:2494                                    ; preds = %2493
  %2495 = call float @dx.op.binary.f32(i32 36, float %2444, float %2434)  ; FMin(a,b)
  %2496 = fsub fast float %2444, %2495
  %2497 = fsub fast float %2496, %2433
  %2498 = call float @dx.op.unary.f32(i32 6, float %2497)  ; FAbs(value)
  %2499 = fadd fast float %2496, %2433
  %2500 = fmul fast float %2499, %2364
  %2501 = fadd fast float %2500, %2377
  %2502 = fmul fast float %2501, %2498
  %2503 = fsub fast float %2439, %2502
  br label %2515

; <label>:2504                                    ; preds = %2432
  br i1 %2446, label %2505, label %2515, !dx.controlflow.hints !88

; <label>:2505                                    ; preds = %2504
  %2506 = call float @dx.op.binary.f32(i32 35, float %2434, float %2444)  ; FMax(a,b)
  %2507 = icmp eq i32 %2383, 0
  %2508 = select i1 %2507, float %2444, float 0.000000e+00
  %2509 = fsub fast float -0.000000e+00, %2508
  %2510 = call float @dx.op.unary.f32(i32 6, float %2509)  ; FAbs(value)
  %2511 = fmul fast float %2508, %2364
  %2512 = fadd fast float %2511, %2377
  %2513 = fmul fast float %2510, %2512
  %2514 = fsub fast float %2439, %2513
  br label %2515

; <label>:2515                                    ; preds = %2505, %2504, %2494, %2493
  %2516 = phi float [ %2434, %2493 ], [ %2434, %2494 ], [ %2506, %2505 ], [ %2434, %2504 ]
  %2517 = phi float [ 0.000000e+00, %2493 ], [ %2498, %2494 ], [ %2510, %2505 ], [ 0.000000e+00, %2504 ]
  %2518 = phi float [ %2439, %2493 ], [ %2503, %2494 ], [ %2514, %2505 ], [ %2439, %2504 ]
  %2519 = phi float [ %2444, %2493 ], [ %2444, %2494 ], [ %2433, %2505 ], [ %2433, %2504 ]
  %2520 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 0
  store float -1.000000e+00, float* %2520, align 4, !tbaa !89, !noalias !93
  %2521 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 1
  store float -1.000000e+00, float* %2521, align 4, !tbaa !89, !noalias !93
  %2522 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 2
  store float -1.000000e+00, float* %2522, align 4, !tbaa !89, !noalias !93
  %2523 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 0
  store float -1.000000e+00, float* %2523, align 4, !tbaa !89, !noalias !93
  %2524 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 1
  store float -1.000000e+00, float* %2524, align 4, !tbaa !89, !noalias !93
  %2525 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 2
  store float -1.000000e+00, float* %2525, align 4, !tbaa !89, !noalias !93
  %2526 = icmp sgt i32 %2385, 0
  br i1 %2526, label %2527, label %2588

; <label>:2527                                    ; preds = %2515
  br label %2528

; <label>:2528                                    ; preds = %2577, %2527
  %2529 = phi i32 [ %2578, %2577 ], [ 0, %2527 ]
  %2530 = phi i32 [ %2579, %2577 ], [ 0, %2527 ]
  %2531 = add nuw i32 %2530, 171
  %2532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %2531)  ; CBufferLoadLegacy(handle,regIndex)
  %2533 = extractvalue %dx.types.CBufRet.f32 %2532, 0
  %2534 = extractvalue %dx.types.CBufRet.f32 %2532, 1
  %2535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2536 = extractvalue %dx.types.CBufRet.f32 %2535, 0
  %2537 = extractvalue %dx.types.CBufRet.f32 %2535, 1
  %2538 = fsub fast float %2533, %2536
  %2539 = fsub fast float %2534, %2537
  %2540 = extractvalue %dx.types.CBufRet.f32 %2532, 2
  %2541 = fsub fast float -0.000000e+00, %2538
  %2542 = fsub fast float -0.000000e+00, %2539
  %2543 = call float @dx.op.dot2.f32(i32 54, float %2362, float %2363, float %2541, float %2542)  ; Dot2(ax,ay,bx,by)
  %2544 = fmul fast float %2543, 2.000000e+00
  %2545 = call float @dx.op.dot2.f32(i32 54, float %2541, float %2542, float %2541, float %2542)  ; Dot2(ax,ay,bx,by)
  %2546 = fmul fast float %2540, %2540
  %2547 = fsub fast float %2545, %2546
  %2548 = fmul fast float %2544, %2544
  %2549 = fmul fast float %2405, %2547
  %2550 = fsub fast float %2548, %2549
  %2551 = fcmp fast ogt float %2550, 0.000000e+00
  br i1 %2551, label %2552, label %2567, !dx.controlflow.hints !81

; <label>:2552                                    ; preds = %2528
  %2553 = fcmp fast ogt float %2544, 0.000000e+00
  %2554 = call float @dx.op.unary.f32(i32 24, float %2550)  ; Sqrt(value)
  %2555 = fsub fast float -0.000000e+00, %2554
  %2556 = select i1 %2553, float %2554, float %2555
  %2557 = fadd fast float %2556, %2544
  %2558 = fmul float %2557, -5.000000e-01
  %2559 = fdiv fast float %2558, %2398
  %2560 = call float @dx.op.binary.f32(i32 35, float %2559, float 0.000000e+00)  ; FMax(a,b)
  %2561 = call float @dx.op.binary.f32(i32 36, float %2433, float %2560)  ; FMin(a,b)
  %2562 = fdiv fast float %2547, %2558
  %2563 = call float @dx.op.binary.f32(i32 35, float %2562, float 0.000000e+00)  ; FMax(a,b)
  %2564 = call float @dx.op.binary.f32(i32 36, float %2433, float %2563)  ; FMin(a,b)
  %2565 = call float @dx.op.binary.f32(i32 36, float %2561, float %2564)  ; FMin(a,b)
  %2566 = call float @dx.op.binary.f32(i32 35, float %2561, float %2564)  ; FMax(a,b)
  br label %2567

; <label>:2567                                    ; preds = %2552, %2528
  %2568 = phi float [ %2566, %2552 ], [ -1.000000e+00, %2528 ]
  %2569 = phi float [ %2565, %2552 ], [ -1.000000e+00, %2528 ]
  %2570 = phi i1 [ true, %2552 ], [ false, %2528 ]
  br i1 %2570, label %2571, label %2577, !dx.controlflow.hints !104

; <label>:2571                                    ; preds = %2567
  %2572 = call float @dx.op.binary.f32(i32 35, float %2516, float %2569)  ; FMax(a,b)
  %2573 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2530
  store float %2572, float* %2573, align 4, !tbaa !89, !noalias !93
  %2574 = call float @dx.op.binary.f32(i32 35, float %2516, float %2568)  ; FMax(a,b)
  %2575 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %2530
  store float %2574, float* %2575, align 4, !tbaa !89, !noalias !93
  %2576 = add nsw i32 %2529, 1
  br label %2577

; <label>:2577                                    ; preds = %2571, %2567
  %2578 = phi i32 [ %2576, %2571 ], [ %2529, %2567 ]
  %2579 = add nuw nsw i32 %2530, 1
  %2580 = icmp eq i32 %2579, %2385
  br i1 %2580, label %2581, label %2528

; <label>:2581                                    ; preds = %2577
  %2582 = load float, float* %2522, align 4, !tbaa !89, !alias.scope !105, !noalias !108
  %2583 = load float, float* %2521, align 4, !tbaa !89, !alias.scope !111, !noalias !112
  %2584 = load float, float* %2520, align 4, !tbaa !89, !alias.scope !113, !noalias !114
  %2585 = load float, float* %2525, align 4, !tbaa !89, !alias.scope !115, !noalias !118
  %2586 = load float, float* %2524, align 4, !tbaa !89, !alias.scope !121, !noalias !122
  %2587 = load float, float* %2523, align 4, !tbaa !89, !alias.scope !123, !noalias !124
  br label %2588

; <label>:2588                                    ; preds = %2581, %2515
  %2589 = phi float [ -1.000000e+00, %2515 ], [ %2587, %2581 ]
  %2590 = phi float [ -1.000000e+00, %2515 ], [ %2586, %2581 ]
  %2591 = phi float [ -1.000000e+00, %2515 ], [ %2585, %2581 ]
  %2592 = phi float [ -1.000000e+00, %2515 ], [ %2584, %2581 ]
  %2593 = phi float [ -1.000000e+00, %2515 ], [ %2583, %2581 ]
  %2594 = phi float [ -1.000000e+00, %2515 ], [ %2582, %2581 ]
  %2595 = phi i32 [ 0, %2515 ], [ %2578, %2581 ]
  %2596 = call float @dx.op.binary.f32(i32 36, float %2593, float %2594)  ; FMin(a,b)
  %2597 = call float @dx.op.binary.f32(i32 36, float %2592, float %2596)  ; FMin(a,b)
  %2598 = call float @dx.op.binary.f32(i32 35, float %2592, float %2593)  ; FMax(a,b)
  %2599 = call float @dx.op.binary.f32(i32 36, float %2598, float %2594)  ; FMin(a,b)
  %2600 = call float @dx.op.binary.f32(i32 36, float %2592, float %2593)  ; FMin(a,b)
  %2601 = call float @dx.op.binary.f32(i32 35, float %2600, float %2599)  ; FMax(a,b)
  %2602 = call float @dx.op.binary.f32(i32 35, float %2593, float %2594)  ; FMax(a,b)
  %2603 = call float @dx.op.binary.f32(i32 35, float %2592, float %2602)  ; FMax(a,b)
  store float %2597, float* %2520, align 4, !tbaa !89, !alias.scope !113, !noalias !114
  store float %2601, float* %2521, align 4, !tbaa !89, !alias.scope !111, !noalias !112
  store float %2603, float* %2522, align 4, !tbaa !89, !alias.scope !105, !noalias !108
  %2604 = call float @dx.op.binary.f32(i32 36, float %2590, float %2591)  ; FMin(a,b)
  %2605 = call float @dx.op.binary.f32(i32 36, float %2589, float %2604)  ; FMin(a,b)
  %2606 = call float @dx.op.binary.f32(i32 35, float %2589, float %2590)  ; FMax(a,b)
  %2607 = call float @dx.op.binary.f32(i32 36, float %2606, float %2591)  ; FMin(a,b)
  %2608 = call float @dx.op.binary.f32(i32 36, float %2589, float %2590)  ; FMin(a,b)
  %2609 = call float @dx.op.binary.f32(i32 35, float %2608, float %2607)  ; FMax(a,b)
  %2610 = call float @dx.op.binary.f32(i32 35, float %2590, float %2591)  ; FMax(a,b)
  %2611 = call float @dx.op.binary.f32(i32 35, float %2589, float %2610)  ; FMax(a,b)
  store float %2605, float* %2523, align 4, !tbaa !89, !alias.scope !123, !noalias !124
  store float %2609, float* %2524, align 4, !tbaa !89, !alias.scope !121, !noalias !122
  store float %2611, float* %2525, align 4, !tbaa !89, !alias.scope !115, !noalias !118
  %2612 = sub nsw i32 3, %2595
  %2613 = icmp sgt i32 %2612, 2
  br i1 %2613, label %2614, label %2652, !dx.controlflow.hints !125

; <label>:2614                                    ; preds = %2588
  %2615 = icmp eq i32 %2383, 0
  %2616 = fsub fast float %2433, %2517
  %2617 = select i1 %2615, float %2616, float %2517
  %2618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2619 = extractvalue %dx.types.CBufRet.f32 %2618, 0
  %2620 = extractvalue %dx.types.CBufRet.f32 %2618, 1
  %2621 = extractvalue %dx.types.CBufRet.f32 %2618, 2
  %2622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2623 = extractvalue %dx.types.CBufRet.f32 %2622, 0
  %2624 = extractvalue %dx.types.CBufRet.f32 %2622, 1
  %2625 = extractvalue %dx.types.CBufRet.f32 %2622, 2
  %2626 = extractvalue %dx.types.CBufRet.f32 %2622, 3
  %2627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2628 = extractvalue %dx.types.CBufRet.f32 %2627, 3
  %2629 = call float @dx.op.binary.f32(i32 36, float %2518, float %2628)  ; FMin(a,b)
  %2630 = fmul fast float %2626, %2617
  %2631 = call float @dx.op.unary.f32(i32 7, float %2630)  ; Saturate(value)
  %2632 = fsub fast float %2623, %2619
  %2633 = fsub fast float %2624, %2620
  %2634 = fsub fast float %2625, %2621
  %2635 = fmul fast float %2631, %2632
  %2636 = fmul fast float %2631, %2633
  %2637 = fmul fast float %2631, %2634
  %2638 = fadd fast float %2635, %2619
  %2639 = fadd fast float %2636, %2620
  %2640 = fadd fast float %2637, %2621
  %2641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2642 = extractvalue %dx.types.CBufRet.f32 %2641, 0
  %2643 = extractvalue %dx.types.CBufRet.f32 %2641, 1
  %2644 = fadd fast float %2643, %2642
  %2645 = call float @dx.op.unary.f32(i32 7, float %2644)  ; Saturate(value)
  %2646 = extractvalue %dx.types.CBufRet.f32 %2641, 2
  %2647 = extractvalue %dx.types.CBufRet.f32 %2641, 3
  %2648 = fadd fast float %2647, %2646
  %2649 = call float @dx.op.unary.f32(i32 7, float %2648)  ; Saturate(value)
  %2650 = fmul fast float %2645, %2629
  %2651 = fmul fast float %2650, %2649
  br label %2734

; <label>:2652                                    ; preds = %2588
  %2653 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2612
  %2654 = load float, float* %2653, align 4, !tbaa !89, !noalias !93
  %2655 = fcmp fast olt float %2654, %2519
  %2656 = icmp sgt i32 %2595, 0
  %2657 = and i1 %2656, %2655
  br i1 %2657, label %2658, label %2695

; <label>:2658                                    ; preds = %2652
  br label %2659

; <label>:2659                                    ; preds = %2688, %2658
  %2660 = phi float [ %2689, %2688 ], [ %2517, %2658 ]
  %2661 = phi float [ %2690, %2688 ], [ %2518, %2658 ]
  %2662 = phi float [ %2670, %2688 ], [ %2654, %2658 ]
  %2663 = phi i32 [ %2667, %2688 ], [ %2612, %2658 ]
  %2664 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %2663
  %2665 = load float, float* %2664, align 4, !tbaa !89, !noalias !93
  %2666 = icmp slt i32 %2663, 2
  %2667 = add nsw i32 %2663, 1
  %2668 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2667
  %2669 = load float, float* %2668, align 4, !tbaa !89, !noalias !93
  %2670 = select i1 %2666, float %2669, float %2433
  %2671 = call float @dx.op.binary.f32(i32 36, float %2670, float %2665)  ; FMin(a,b)
  %2672 = call float @dx.op.binary.f32(i32 36, float %2519, float %2671)  ; FMin(a,b)
  %2673 = icmp eq i32 %2383, 0
  %2674 = fadd fast float %2672, %2662
  %2675 = fmul fast float %2674, %2364
  %2676 = fadd fast float %2675, %2377
  br i1 %2673, label %2682, label %2677, !dx.controlflow.hints !126

; <label>:2677                                    ; preds = %2659
  %2678 = fsub fast float %2672, %2662
  %2679 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2678)  ; FMax(a,b)
  %2680 = fmul fast float %2679, %2676
  %2681 = fadd fast float %2680, %2661
  br label %2688

; <label>:2682                                    ; preds = %2659
  %2683 = fsub fast float %2662, %2672
  %2684 = call float @dx.op.unary.f32(i32 6, float %2683)  ; FAbs(value)
  %2685 = fadd fast float %2684, %2660
  %2686 = fmul fast float %2684, %2676
  %2687 = fsub fast float %2661, %2686
  br label %2688

; <label>:2688                                    ; preds = %2682, %2677
  %2689 = phi float [ %2679, %2677 ], [ %2685, %2682 ]
  %2690 = phi float [ %2681, %2677 ], [ %2687, %2682 ]
  %2691 = fcmp fast olt float %2670, %2519
  %2692 = icmp slt i32 %2667, 3
  %2693 = and i1 %2692, %2691
  br i1 %2693, label %2659, label %2694

; <label>:2694                                    ; preds = %2688
  br label %2695

; <label>:2695                                    ; preds = %2694, %2652
  %2696 = phi float [ %2517, %2652 ], [ %2689, %2694 ]
  %2697 = phi float [ %2518, %2652 ], [ %2690, %2694 ]
  %2698 = fsub fast float %2433, %2696
  %2699 = select i1 %2435, float %2696, float %2698
  %2700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2701 = extractvalue %dx.types.CBufRet.f32 %2700, 0
  %2702 = extractvalue %dx.types.CBufRet.f32 %2700, 1
  %2703 = extractvalue %dx.types.CBufRet.f32 %2700, 2
  %2704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2705 = extractvalue %dx.types.CBufRet.f32 %2704, 0
  %2706 = extractvalue %dx.types.CBufRet.f32 %2704, 1
  %2707 = extractvalue %dx.types.CBufRet.f32 %2704, 2
  %2708 = extractvalue %dx.types.CBufRet.f32 %2704, 3
  %2709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2710 = extractvalue %dx.types.CBufRet.f32 %2709, 3
  %2711 = call float @dx.op.binary.f32(i32 36, float %2697, float %2710)  ; FMin(a,b)
  %2712 = fmul fast float %2708, %2699
  %2713 = call float @dx.op.unary.f32(i32 7, float %2712)  ; Saturate(value)
  %2714 = fsub fast float %2705, %2701
  %2715 = fsub fast float %2706, %2702
  %2716 = fsub fast float %2707, %2703
  %2717 = fmul fast float %2713, %2714
  %2718 = fmul fast float %2713, %2715
  %2719 = fmul fast float %2713, %2716
  %2720 = fadd fast float %2717, %2701
  %2721 = fadd fast float %2718, %2702
  %2722 = fadd fast float %2719, %2703
  %2723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2724 = extractvalue %dx.types.CBufRet.f32 %2723, 0
  %2725 = extractvalue %dx.types.CBufRet.f32 %2723, 1
  %2726 = fadd fast float %2725, %2724
  %2727 = call float @dx.op.unary.f32(i32 7, float %2726)  ; Saturate(value)
  %2728 = extractvalue %dx.types.CBufRet.f32 %2723, 2
  %2729 = extractvalue %dx.types.CBufRet.f32 %2723, 3
  %2730 = fadd fast float %2729, %2728
  %2731 = call float @dx.op.unary.f32(i32 7, float %2730)  ; Saturate(value)
  %2732 = fmul fast float %2727, %2711
  %2733 = fmul fast float %2732, %2731
  br label %2734

; <label>:2734                                    ; preds = %2695, %2614, %2449, %2431, %2429
  %2735 = phi float [ %2458, %2449 ], [ %2617, %2614 ], [ %2699, %2695 ], [ 0.000000e+00, %2429 ], [ 0.000000e+00, %2431 ]
  %2736 = phi float [ %2492, %2449 ], [ %2651, %2614 ], [ %2733, %2695 ], [ 0.000000e+00, %2429 ], [ 0.000000e+00, %2431 ]
  %2737 = phi float [ %2479, %2449 ], [ %2638, %2614 ], [ %2720, %2695 ], [ 0.000000e+00, %2429 ], [ 0.000000e+00, %2431 ]
  %2738 = phi float [ %2480, %2449 ], [ %2639, %2614 ], [ %2721, %2695 ], [ 0.000000e+00, %2429 ], [ 0.000000e+00, %2431 ]
  %2739 = phi float [ %2481, %2449 ], [ %2640, %2614 ], [ %2722, %2695 ], [ 0.000000e+00, %2429 ], [ 0.000000e+00, %2431 ]
  %2740 = fmul fast float %2372, %2736
  %2741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2742 = extractvalue %dx.types.CBufRet.f32 %2741, 2
  %2743 = fsub fast float %2379, %2742
  %2744 = fcmp fast olt float %2740, -2.000000e+01
  %2745 = call float @dx.op.unary.f32(i32 21, float %2740)  ; Exp(value)
  %2746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2747 = extractvalue %dx.types.CBufRet.f32 %2746, 2
  %2748 = extractvalue %dx.types.CBufRet.f32 %2746, 3
  %2749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2750 = extractvalue %dx.types.CBufRet.f32 %2749, 2
  %2751 = fmul fast float %2748, %2743
  %2752 = call float @dx.op.unary.f32(i32 7, float %2751)  ; Saturate(value)
  %2753 = fsub fast float 1.000000e+00, %2752
  %2754 = fmul fast float %2364, 5.000000e-01
  %2755 = fadd fast float %2754, 5.000000e-01
  %2756 = call float @dx.op.unary.f32(i32 7, float %2755)  ; Saturate(value)
  %2757 = fsub fast float 1.000000e+00, %2756
  %2758 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2753)  ; FMax(a,b)
  %2759 = fdiv fast float %2757, %2758
  %2760 = fsub fast float %2743, %2330
  %2761 = call float @dx.op.unary.f32(i32 6, float %2760)  ; FAbs(value)
  %2762 = fmul fast float %2761, %2747
  %2763 = call float @dx.op.unary.f32(i32 7, float %2759)  ; Saturate(value)
  %2764 = fsub fast float 1.000000e+00, %2762
  %2765 = fmul fast float %2764, %2763
  %2766 = fadd fast float %2765, %2762
  %2767 = fmul fast float %2750, %2743
  %2768 = call float @dx.op.unary.f32(i32 7, float %2767)  ; Saturate(value)
  %2769 = fsub fast float 1.000000e+00, %2766
  %2770 = fmul fast float %2769, %2768
  %2771 = fadd fast float %2770, %2766
  %2772 = call float @dx.op.unary.f32(i32 7, float %2771)  ; Saturate(value)
  %2773 = fadd fast float %2745, -1.000000e+00
  %2774 = select i1 %2744, float -1.000000e+00, float %2773
  %2775 = fmul fast float %2772, %2774
  %2776 = fadd fast float %2775, 1.000000e+00
  %2777 = fsub fast float -0.000000e+00, %2775
  %2778 = fmul fast float %2737, %2777
  %2779 = fmul fast float %2738, %2777
  %2780 = fmul fast float %2739, %2777
  br label %2781

; <label>:2781                                    ; preds = %2734, %2283
  %2782 = phi float [ %2735, %2734 ], [ 0.000000e+00, %2283 ]
  %2783 = phi float [ %2776, %2734 ], [ 1.000000e+00, %2283 ]
  %2784 = phi float [ %2778, %2734 ], [ 0.000000e+00, %2283 ]
  %2785 = phi float [ %2779, %2734 ], [ 0.000000e+00, %2283 ]
  %2786 = phi float [ %2780, %2734 ], [ 0.000000e+00, %2283 ]
  %2787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2788 = extractvalue %dx.types.CBufRet.f32 %2787, 1
  %2789 = fsub fast float 1.000000e+00, %2783
  %2790 = fmul fast float %2789, %2365
  %2791 = fmul fast float %2790, %2788
  %2792 = fsub fast float %2365, %2791
  br i1 %2358, label %2793, label %2822, !dx.controlflow.hints !127

; <label>:2793                                    ; preds = %2781
  %2794 = fmul fast float %2366, %2355
  %2795 = fadd fast float %2794, %2356
  %2796 = call float @dx.op.unary.f32(i32 7, float %2795)  ; Saturate(value)
  %2797 = fmul fast float %2337, %2792
  %2798 = fsub fast float -0.000000e+00, %2797
  %2799 = fmul fast float %2338, %2792
  %2800 = fsub fast float -0.000000e+00, %2799
  %2801 = call float @dx.op.unary.f32(i32 21, float %2798)  ; Exp(value)
  %2802 = call float @dx.op.unary.f32(i32 21, float %2800)  ; Exp(value)
  %2803 = call float @dx.op.binary.f32(i32 35, float %2345, float %2801)  ; FMax(a,b)
  %2804 = call float @dx.op.binary.f32(i32 35, float %2345, float %2802)  ; FMax(a,b)
  %2805 = fsub fast float %2804, %2803
  %2806 = fmul fast float %2805, %2796
  %2807 = fadd fast float %2806, %2803
  %2808 = call float @dx.op.unary.f32(i32 7, float %2807)  ; Saturate(value)
  %2809 = fsub fast float %2342, %2347
  %2810 = fsub fast float %2343, %2348
  %2811 = fsub fast float %2344, %2349
  %2812 = fmul fast float %2796, %2809
  %2813 = fmul fast float %2796, %2810
  %2814 = fmul fast float %2796, %2811
  %2815 = fadd fast float %2812, %2347
  %2816 = fadd fast float %2813, %2348
  %2817 = fadd fast float %2814, %2349
  %2818 = fsub fast float 1.000000e+00, %2808
  %2819 = fmul fast float %2818, %2815
  %2820 = fmul fast float %2818, %2816
  %2821 = fmul fast float %2818, %2817
  br label %2881

; <label>:2822                                    ; preds = %2781
  %2823 = fmul fast float %2792, %2354
  %2824 = call float @dx.op.unary.f32(i32 7, float %2823)  ; Saturate(value)
  %2825 = fsub fast float 2.000000e+00, %2824
  %2826 = fmul fast float %2824, 9.921875e-01
  %2827 = fmul fast float %2826, %2825
  %2828 = fadd fast float %2827, 3.906250e-03
  %2829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %19, float %2828, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2830 = extractvalue %dx.types.ResRet.f32 %2829, 0
  %2831 = fsub fast float %2824, %2830
  %2832 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2831)  ; FMax(a,b)
  %2833 = fmul fast float %2340, %2330
  %2834 = call float @dx.op.unary.f32(i32 6, float %2833)  ; FAbs(value)
  %2835 = fcmp fast ogt float %2834, 0x3EB0C6F7A0000000
  br i1 %2835, label %2836, label %2842, !dx.controlflow.hints !128

; <label>:2836                                    ; preds = %2822
  %2837 = fmul fast float %2833, 0xBFF7154760000000
  %2838 = call float @dx.op.unary.f32(i32 21, float %2837)  ; Exp(value)
  %2839 = fsub fast float 1.000000e+00, %2838
  %2840 = fdiv fast float %2839, %2833
  %2841 = fmul fast float %2840, %2350
  br label %2842

; <label>:2842                                    ; preds = %2836, %2822
  %2843 = phi float [ %2841, %2836 ], [ %2350, %2822 ]
  %2844 = fadd fast float %2843, %2352
  %2845 = fmul fast float %2844, %2832
  %2846 = fmul fast float %2337, %2845
  %2847 = fsub fast float -0.000000e+00, %2846
  %2848 = fmul fast float %2338, %2845
  %2849 = fsub fast float -0.000000e+00, %2848
  %2850 = fmul fast float %2339, %2845
  %2851 = fsub fast float -0.000000e+00, %2850
  %2852 = call float @dx.op.unary.f32(i32 21, float %2847)  ; Exp(value)
  %2853 = call float @dx.op.unary.f32(i32 21, float %2849)  ; Exp(value)
  %2854 = call float @dx.op.unary.f32(i32 21, float %2851)  ; Exp(value)
  %2855 = fmul fast float %2366, %2366
  %2856 = fadd fast float %2855, 1.000000e+00
  %2857 = fmul fast float %2856, 0x3FAE8EC8A0000000
  %2858 = fmul fast float %2857, %2347
  %2859 = fmul fast float %2857, %2348
  %2860 = fmul fast float %2857, %2349
  %2861 = fmul fast float %2366, %2345
  %2862 = fsub fast float 1.000000e+00, %2861
  %2863 = fmul fast float %2345, %2345
  %2864 = fsub fast float 1.000000e+00, %2863
  %2865 = fmul fast float %2864, 0x3FB45F3060000000
  %2866 = fmul fast float %2862, %2862
  %2867 = fdiv fast float 1.000000e+00, %2866
  %2868 = fmul fast float %2865, %2867
  %2869 = fmul fast float %2868, %2342
  %2870 = fmul fast float %2868, %2343
  %2871 = fmul fast float %2868, %2344
  %2872 = fadd fast float %2869, %2858
  %2873 = fadd fast float %2870, %2859
  %2874 = fadd fast float %2871, %2860
  %2875 = fsub fast float 1.000000e+00, %2852
  %2876 = fsub fast float 1.000000e+00, %2853
  %2877 = fsub fast float 1.000000e+00, %2854
  %2878 = fmul fast float %2872, %2875
  %2879 = fmul fast float %2873, %2876
  %2880 = fmul fast float %2874, %2877
  br label %2881

; <label>:2881                                    ; preds = %2842, %2793
  %2882 = phi float [ %2819, %2793 ], [ %2878, %2842 ]
  %2883 = phi float [ %2820, %2793 ], [ %2879, %2842 ]
  %2884 = phi float [ %2821, %2793 ], [ %2880, %2842 ]
  %2885 = phi float [ %2808, %2793 ], [ %2852, %2842 ]
  %2886 = phi float [ %2808, %2793 ], [ %2853, %2842 ]
  %2887 = phi float [ %2808, %2793 ], [ %2854, %2842 ]
  br i1 %2374, label %2888, label %3086, !dx.controlflow.hints !129

; <label>:2888                                    ; preds = %2881
  %2889 = extractvalue %dx.types.CBufRet.f32 %2787, 0
  %2890 = fmul fast float %2889, %2789
  %2891 = fsub fast float %2784, %2882
  %2892 = fsub fast float %2785, %2883
  %2893 = fsub fast float %2786, %2884
  %2894 = fmul fast float %2890, %2891
  %2895 = fmul fast float %2890, %2892
  %2896 = fmul fast float %2890, %2893
  %2897 = fadd fast float %2894, %2882
  %2898 = fadd fast float %2895, %2883
  %2899 = fadd fast float %2896, %2884
  %2900 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2885)  ; FMax(a,b)
  %2901 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2886)  ; FMax(a,b)
  %2902 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2887)  ; FMax(a,b)
  %2903 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2783)  ; FMax(a,b)
  %2904 = call float @dx.op.binary.f32(i32 35, float %2782, float %2792)  ; FMax(a,b)
  %2905 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2904)  ; FMax(a,b)
  %2906 = fdiv fast float %2782, %2905
  %2907 = call float @dx.op.unary.f32(i32 7, float %2906)  ; Saturate(value)
  %2908 = fdiv fast float %2792, %2905
  %2909 = call float @dx.op.unary.f32(i32 7, float %2908)  ; Saturate(value)
  %2910 = fcmp fast une float %2903, 1.000000e+00
  br i1 %2910, label %2911, label %2924, !dx.controlflow.hints !130

; <label>:2911                                    ; preds = %2888
  %2912 = call float @dx.op.unary.f32(i32 23, float %2903)  ; Log(value)
  %2913 = fmul fast float %2912, 0x3FE62E4300000000
  %2914 = fmul fast float %2784, %2913
  %2915 = fsub fast float -0.000000e+00, %2914
  %2916 = fmul fast float %2785, %2913
  %2917 = fsub fast float -0.000000e+00, %2916
  %2918 = fmul fast float %2786, %2913
  %2919 = fsub fast float -0.000000e+00, %2918
  %2920 = fsub fast float 1.000000e+00, %2903
  %2921 = fdiv fast float %2915, %2920
  %2922 = fdiv fast float %2917, %2920
  %2923 = fdiv fast float %2919, %2920
  br label %2924

; <label>:2924                                    ; preds = %2911, %2888
  %2925 = phi float [ %2921, %2911 ], [ %2784, %2888 ]
  %2926 = phi float [ %2922, %2911 ], [ %2785, %2888 ]
  %2927 = phi float [ %2923, %2911 ], [ %2786, %2888 ]
  %2928 = phi float [ %2913, %2911 ], [ 0.000000e+00, %2888 ]
  %2929 = fcmp fast une float %2900, 1.000000e+00
  br i1 %2929, label %2930, label %2937, !dx.controlflow.hints !131

; <label>:2930                                    ; preds = %2924
  %2931 = call float @dx.op.unary.f32(i32 23, float %2900)  ; Log(value)
  %2932 = fmul fast float %2931, 0x3FE62E4300000000
  %2933 = fmul fast float %2897, %2932
  %2934 = fsub fast float -0.000000e+00, %2933
  %2935 = fsub fast float 1.000000e+00, %2900
  %2936 = fdiv fast float %2934, %2935
  br label %2937

; <label>:2937                                    ; preds = %2930, %2924
  %2938 = phi float [ %2936, %2930 ], [ %2897, %2924 ]
  %2939 = phi float [ %2932, %2930 ], [ 0.000000e+00, %2924 ]
  %2940 = fcmp fast une float %2901, 1.000000e+00
  br i1 %2940, label %2941, label %2948, !dx.controlflow.hints !131

; <label>:2941                                    ; preds = %2937
  %2942 = call float @dx.op.unary.f32(i32 23, float %2901)  ; Log(value)
  %2943 = fmul fast float %2942, 0x3FE62E4300000000
  %2944 = fmul fast float %2898, %2943
  %2945 = fsub fast float -0.000000e+00, %2944
  %2946 = fsub fast float 1.000000e+00, %2901
  %2947 = fdiv fast float %2945, %2946
  br label %2948

; <label>:2948                                    ; preds = %2941, %2937
  %2949 = phi float [ %2947, %2941 ], [ %2898, %2937 ]
  %2950 = phi float [ %2943, %2941 ], [ 0.000000e+00, %2937 ]
  %2951 = fcmp fast une float %2902, 1.000000e+00
  br i1 %2951, label %2952, label %2959, !dx.controlflow.hints !131

; <label>:2952                                    ; preds = %2948
  %2953 = call float @dx.op.unary.f32(i32 23, float %2902)  ; Log(value)
  %2954 = fmul fast float %2953, 0x3FE62E4300000000
  %2955 = fmul fast float %2899, %2954
  %2956 = fsub fast float -0.000000e+00, %2955
  %2957 = fsub fast float 1.000000e+00, %2902
  %2958 = fdiv fast float %2956, %2957
  br label %2959

; <label>:2959                                    ; preds = %2952, %2948
  %2960 = phi float [ %2958, %2952 ], [ %2899, %2948 ]
  %2961 = phi float [ %2954, %2952 ], [ 0.000000e+00, %2948 ]
  %2962 = fmul fast float %2925, %2909
  %2963 = fmul fast float %2926, %2909
  %2964 = fmul fast float %2927, %2909
  %2965 = fmul fast float %2928, %2909
  %2966 = fmul fast float %2938, %2907
  %2967 = fmul fast float %2949, %2907
  %2968 = fmul fast float %2960, %2907
  %2969 = fmul fast float %2939, %2907
  %2970 = fmul fast float %2950, %2907
  %2971 = fmul fast float %2961, %2907
  %2972 = fadd fast float %2966, %2962
  %2973 = fadd fast float %2967, %2963
  %2974 = fadd fast float %2968, %2964
  %2975 = fadd fast float %2969, %2965
  %2976 = fadd fast float %2970, %2965
  %2977 = fadd fast float %2971, %2965
  %2978 = fcmp fast une float %2975, 0.000000e+00
  br i1 %2978, label %2979, label %2986, !dx.controlflow.hints !132

; <label>:2979                                    ; preds = %2959
  %2980 = fmul fast float %2975, 0x3FF7154760000000
  %2981 = call float @dx.op.unary.f32(i32 21, float %2980)  ; Exp(value)
  %2982 = fsub fast float 1.000000e+00, %2981
  %2983 = fmul fast float %2972, %2982
  %2984 = fsub fast float -0.000000e+00, %2983
  %2985 = fdiv fast float %2984, %2975
  br label %2986

; <label>:2986                                    ; preds = %2979, %2959
  %2987 = phi float [ %2981, %2979 ], [ 1.000000e+00, %2959 ]
  %2988 = phi float [ %2985, %2979 ], [ %2972, %2959 ]
  %2989 = fcmp fast une float %2976, 0.000000e+00
  br i1 %2989, label %2990, label %2997, !dx.controlflow.hints !132

; <label>:2990                                    ; preds = %2986
  %2991 = fmul fast float %2976, 0x3FF7154760000000
  %2992 = call float @dx.op.unary.f32(i32 21, float %2991)  ; Exp(value)
  %2993 = fsub fast float 1.000000e+00, %2992
  %2994 = fmul fast float %2973, %2993
  %2995 = fsub fast float -0.000000e+00, %2994
  %2996 = fdiv fast float %2995, %2976
  br label %2997

; <label>:2997                                    ; preds = %2990, %2986
  %2998 = phi float [ %2992, %2990 ], [ 1.000000e+00, %2986 ]
  %2999 = phi float [ %2996, %2990 ], [ %2973, %2986 ]
  %3000 = fcmp fast une float %2977, 0.000000e+00
  br i1 %3000, label %3001, label %3008, !dx.controlflow.hints !132

; <label>:3001                                    ; preds = %2997
  %3002 = fmul fast float %2977, 0x3FF7154760000000
  %3003 = call float @dx.op.unary.f32(i32 21, float %3002)  ; Exp(value)
  %3004 = fsub fast float 1.000000e+00, %3003
  %3005 = fmul fast float %2974, %3004
  %3006 = fsub fast float -0.000000e+00, %3005
  %3007 = fdiv fast float %3006, %2977
  br label %3008

; <label>:3008                                    ; preds = %3001, %2997
  %3009 = phi float [ %3003, %3001 ], [ 1.000000e+00, %2997 ]
  %3010 = phi float [ %3007, %3001 ], [ %2974, %2997 ]
  %3011 = fcmp fast ogt float %2907, %2909
  br i1 %3011, label %3012, label %3032, !dx.controlflow.hints !133

; <label>:3012                                    ; preds = %3008
  %3013 = fsub fast float 1.000000e+00, %2909
  %3014 = fmul fast float %2925, %3013
  %3015 = fmul fast float %2926, %3013
  %3016 = fmul fast float %2927, %3013
  %3017 = fmul fast float %2928, %3013
  %3018 = fcmp fast une float %3017, 0.000000e+00
  br i1 %3018, label %3019, label %3070, !dx.controlflow.hints !134

; <label>:3019                                    ; preds = %3012
  %3020 = fmul fast float %3017, 0x3FF7154760000000
  %3021 = call float @dx.op.unary.f32(i32 21, float %3020)  ; Exp(value)
  %3022 = fsub fast float 1.000000e+00, %3021
  %3023 = fmul fast float %3014, %3022
  %3024 = fsub fast float -0.000000e+00, %3023
  %3025 = fmul fast float %3015, %3022
  %3026 = fsub fast float -0.000000e+00, %3025
  %3027 = fmul fast float %3016, %3022
  %3028 = fsub fast float -0.000000e+00, %3027
  %3029 = fdiv fast float %3024, %3017
  %3030 = fdiv fast float %3026, %3017
  %3031 = fdiv fast float %3028, %3017
  br label %3070

; <label>:3032                                    ; preds = %3008
  %3033 = fsub fast float 1.000000e+00, %2907
  %3034 = fmul fast float %2938, %3033
  %3035 = fmul fast float %2949, %3033
  %3036 = fmul fast float %2960, %3033
  %3037 = fmul fast float %2939, %3033
  %3038 = fmul fast float %2950, %3033
  %3039 = fmul fast float %2961, %3033
  %3040 = fcmp fast une float %3037, 0.000000e+00
  br i1 %3040, label %3041, label %3048, !dx.controlflow.hints !132

; <label>:3041                                    ; preds = %3032
  %3042 = fmul fast float %3037, 0x3FF7154760000000
  %3043 = call float @dx.op.unary.f32(i32 21, float %3042)  ; Exp(value)
  %3044 = fsub fast float 1.000000e+00, %3043
  %3045 = fmul fast float %3034, %3044
  %3046 = fsub fast float -0.000000e+00, %3045
  %3047 = fdiv fast float %3046, %3037
  br label %3048

; <label>:3048                                    ; preds = %3041, %3032
  %3049 = phi float [ %3047, %3041 ], [ %3034, %3032 ]
  %3050 = phi float [ %3043, %3041 ], [ 1.000000e+00, %3032 ]
  %3051 = fcmp fast une float %3038, 0.000000e+00
  br i1 %3051, label %3052, label %3059, !dx.controlflow.hints !132

; <label>:3052                                    ; preds = %3048
  %3053 = fmul fast float %3038, 0x3FF7154760000000
  %3054 = call float @dx.op.unary.f32(i32 21, float %3053)  ; Exp(value)
  %3055 = fsub fast float 1.000000e+00, %3054
  %3056 = fmul fast float %3035, %3055
  %3057 = fsub fast float -0.000000e+00, %3056
  %3058 = fdiv fast float %3057, %3038
  br label %3059

; <label>:3059                                    ; preds = %3052, %3048
  %3060 = phi float [ %3058, %3052 ], [ %3035, %3048 ]
  %3061 = phi float [ %3054, %3052 ], [ 1.000000e+00, %3048 ]
  %3062 = fcmp fast une float %3039, 0.000000e+00
  br i1 %3062, label %3063, label %3070, !dx.controlflow.hints !132

; <label>:3063                                    ; preds = %3059
  %3064 = fmul fast float %3039, 0x3FF7154760000000
  %3065 = call float @dx.op.unary.f32(i32 21, float %3064)  ; Exp(value)
  %3066 = fsub fast float 1.000000e+00, %3065
  %3067 = fmul fast float %3036, %3066
  %3068 = fsub fast float -0.000000e+00, %3067
  %3069 = fdiv fast float %3068, %3039
  br label %3070

; <label>:3070                                    ; preds = %3063, %3059, %3019, %3012
  %3071 = phi float [ %3069, %3063 ], [ %3031, %3019 ], [ %3016, %3012 ], [ %3036, %3059 ]
  %3072 = phi float [ %3060, %3063 ], [ %3030, %3019 ], [ %3015, %3012 ], [ %3060, %3059 ]
  %3073 = phi float [ %3049, %3063 ], [ %3029, %3019 ], [ %3014, %3012 ], [ %3049, %3059 ]
  %3074 = phi float [ %3065, %3063 ], [ %3021, %3019 ], [ 1.000000e+00, %3012 ], [ 1.000000e+00, %3059 ]
  %3075 = phi float [ %3061, %3063 ], [ %3021, %3019 ], [ 1.000000e+00, %3012 ], [ %3061, %3059 ]
  %3076 = phi float [ %3050, %3063 ], [ %3021, %3019 ], [ 1.000000e+00, %3012 ], [ %3050, %3059 ]
  %3077 = fmul fast float %3076, %2988
  %3078 = fmul fast float %3075, %2999
  %3079 = fmul fast float %3074, %3010
  %3080 = fadd fast float %3077, %3073
  %3081 = fadd fast float %3078, %3072
  %3082 = fadd fast float %3079, %3071
  %3083 = fmul fast float %3076, %2987
  %3084 = fmul fast float %3075, %2998
  %3085 = fmul fast float %3074, %3009
  br label %3086

; <label>:3086                                    ; preds = %3070, %2881
  %3087 = phi float [ %2887, %2881 ], [ %3085, %3070 ]
  %3088 = phi float [ %2886, %2881 ], [ %3084, %3070 ]
  %3089 = phi float [ %2885, %2881 ], [ %3083, %3070 ]
  %3090 = phi float [ %2884, %2881 ], [ %3082, %3070 ]
  %3091 = phi float [ %2883, %2881 ], [ %3081, %3070 ]
  %3092 = phi float [ %2882, %2881 ], [ %3080, %3070 ]
  %3093 = fmul fast float %3089, %2230
  %3094 = fmul fast float %3088, %2231
  %3095 = fmul fast float %3087, %2232
  %3096 = fsub fast float 1.000000e+00, %2293
  %3097 = fmul fast float %3092, %3096
  %3098 = fmul fast float %3091, %3096
  %3099 = fmul fast float %3090, %3096
  %3100 = fadd fast float %3097, %3093
  %3101 = fadd fast float %3098, %3094
  %3102 = fadd fast float %3099, %3095
  %3103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %3104 = extractvalue %dx.types.CBufRet.f32 %3103, 2
  %3105 = fmul fast float %3104, %2303
  %3106 = call float @dx.op.unary.f32(i32 7, float %3105)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %22, i32 %23, i32 undef, float %2293, float %2293, float %2293, float %2293, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %3107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3108 = extractvalue %dx.types.CBufRet.f32 %3107, 0
  %3109 = fmul fast float %3108, %3100
  %3110 = fmul fast float %3108, %3101
  %3111 = fmul fast float %3108, %3102
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %22, i32 %23, i32 undef, float %3109, float %3110, float %3111, float %3109, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %22, i32 %23, i32 undef, float %3106, float %3106, float %3106, float %3106, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!32}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !18, !24, !27}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!18 = !{!19, !20, !21, !22}
!19 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!20 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!21 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!22 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !23}
!23 = !{i32 0, i32 14}
!24 = !{!25, !26}
!25 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!26 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!27 = !{!28, !29, !30, !31}
!28 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!29 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!30 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!31 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!32 = !{void ()* @cs_fog_raymarching_air_clouds_heightmap_brfog, !"cs_fog_raymarching_air_clouds_heightmap_brfog", null, !4, !33}
!33 = !{i32 0, i64 272, i32 4, !34}
!34 = !{i32 8, i32 8, i32 1}
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
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
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

