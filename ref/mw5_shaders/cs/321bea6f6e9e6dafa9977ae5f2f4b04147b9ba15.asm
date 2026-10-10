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
; shader hash: 656d45eabb1c738ce1f36264068ddba0
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

define void @cs_fog_raymarching_clouds_heightmap_brfog() {
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
  %375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.i32 %375, 3
  %377 = icmp eq i32 %376, 0
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 2
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 2
  %382 = fsub fast float %379, %242
  %383 = fadd fast float %382, %381
  br i1 %377, label %395, label %384, !dx.controlflow.hints !39

; <label>:384                                     ; preds = %371
  %385 = fsub fast float -0.000000e+00, %240
  %386 = fsub fast float -0.000000e+00, %241
  %387 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %385, float %386, float %383)  ; Dot3(ax,ay,az,bx,by,bz)
  %388 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %283, float %284, float %285)  ; Dot3(ax,ay,az,bx,by,bz)
  %389 = fdiv fast float 1.000000e+00, %388
  %390 = fmul fast float %389, %387
  %391 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %385, float %386, float %382)  ; Dot3(ax,ay,az,bx,by,bz)
  %392 = fmul fast float %389, %391
  %393 = call float @dx.op.binary.f32(i32 36, float %390, float %392)  ; FMin(a,b)
  %394 = call float @dx.op.binary.f32(i32 35, float %390, float %392)  ; FMax(a,b)
  br label %428

; <label>:395                                     ; preds = %371
  %396 = fdiv fast float 1.000000e+00, %283
  %397 = fdiv fast float 1.000000e+00, %284
  %398 = fdiv fast float 1.000000e+00, %285
  %399 = extractvalue %dx.types.CBufRet.f32 %378, 0
  %400 = extractvalue %dx.types.CBufRet.f32 %378, 1
  %401 = extractvalue %dx.types.CBufRet.f32 %380, 0
  %402 = extractvalue %dx.types.CBufRet.f32 %380, 1
  %403 = fsub fast float %399, %240
  %404 = fmul fast float %403, %396
  %405 = fadd fast float %403, %401
  %406 = fmul fast float %405, %396
  %407 = call float @dx.op.binary.f32(i32 36, float %404, float %406)  ; FMin(a,b)
  %408 = call float @dx.op.binary.f32(i32 35, float %404, float %406)  ; FMax(a,b)
  %409 = fsub fast float %400, %241
  %410 = fmul fast float %409, %397
  %411 = fadd fast float %409, %402
  %412 = fmul fast float %411, %397
  %413 = call float @dx.op.binary.f32(i32 36, float %410, float %412)  ; FMin(a,b)
  %414 = call float @dx.op.binary.f32(i32 35, float %407, float %413)  ; FMax(a,b)
  %415 = call float @dx.op.binary.f32(i32 35, float %410, float %412)  ; FMax(a,b)
  %416 = call float @dx.op.binary.f32(i32 36, float %408, float %415)  ; FMin(a,b)
  %417 = fmul fast float %382, %398
  %418 = fmul fast float %383, %398
  %419 = call float @dx.op.binary.f32(i32 36, float %417, float %418)  ; FMin(a,b)
  %420 = call float @dx.op.binary.f32(i32 35, float %414, float %419)  ; FMax(a,b)
  %421 = call float @dx.op.binary.f32(i32 35, float %417, float %418)  ; FMax(a,b)
  %422 = call float @dx.op.binary.f32(i32 36, float %416, float %421)  ; FMin(a,b)
  %423 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %420)  ; FMax(a,b)
  %424 = fcmp fast ult float %422, %423
  br i1 %424, label %428, label %425, !dx.controlflow.hints !40

; <label>:425                                     ; preds = %395
  %426 = call float @dx.op.binary.f32(i32 36, float %420, float %422)  ; FMin(a,b)
  %427 = call float @dx.op.binary.f32(i32 35, float %420, float %422)  ; FMax(a,b)
  br label %428

; <label>:428                                     ; preds = %425, %395, %384
  %429 = phi float [ %393, %384 ], [ %426, %425 ], [ 0.000000e+00, %395 ]
  %430 = phi float [ %394, %384 ], [ %427, %425 ], [ 0.000000e+00, %395 ]
  %431 = fcmp fast oeq float %430, 0.000000e+00
  br i1 %431, label %435, label %432, !dx.controlflow.hints !41

; <label>:432                                     ; preds = %428
  %433 = call float @dx.op.binary.f32(i32 36, float %374, float %429)  ; FMin(a,b)
  %434 = call float @dx.op.binary.f32(i32 35, float %373, float %430)  ; FMax(a,b)
  br label %435

; <label>:435                                     ; preds = %432, %428
  %436 = phi i32 [ 1, %432 ], [ 0, %428 ]
  %437 = phi float [ %434, %432 ], [ %373, %428 ]
  %438 = phi float [ %433, %432 ], [ %374, %428 ]
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 2
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 3
  %443 = fsub fast float -0.000000e+00, %240
  %444 = fsub fast float -0.000000e+00, %241
  %445 = fsub fast float %440, %242
  %446 = fadd fast float %445, %442
  %447 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %443, float %444, float %446)  ; Dot3(ax,ay,az,bx,by,bz)
  %448 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %283, float %284, float %285)  ; Dot3(ax,ay,az,bx,by,bz)
  %449 = fdiv fast float 1.000000e+00, %448
  %450 = fmul fast float %449, %447
  %451 = fcmp fast olt float %450, 0.000000e+00
  %452 = fcmp fast ogt float %285, 0.000000e+00
  %453 = and i1 %452, %451
  br i1 %453, label %458, label %454, !dx.controlflow.hints !42

; <label>:454                                     ; preds = %435
  %455 = fcmp fast olt float %285, 0.000000e+00
  br i1 %455, label %456, label %458, !dx.controlflow.hints !43

; <label>:456                                     ; preds = %454
  %457 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %450)  ; FMax(a,b)
  br label %458

; <label>:458                                     ; preds = %456, %454, %435
  %459 = phi float [ 0.000000e+00, %435 ], [ %457, %456 ], [ 0.000000e+00, %454 ]
  %460 = phi float [ 0.000000e+00, %435 ], [ 0x47EFFFFFE0000000, %456 ], [ %450, %454 ]
  %461 = fcmp fast oeq float %460, 0.000000e+00
  br i1 %461, label %465, label %462, !dx.controlflow.hints !44

; <label>:462                                     ; preds = %458
  %463 = call float @dx.op.binary.f32(i32 36, float %438, float %459)  ; FMin(a,b)
  %464 = call float @dx.op.binary.f32(i32 35, float %437, float %460)  ; FMax(a,b)
  br label %465

; <label>:465                                     ; preds = %462, %458
  %466 = phi i32 [ 1, %462 ], [ 0, %458 ]
  %467 = phi float [ %464, %462 ], [ %437, %458 ]
  %468 = phi float [ %463, %462 ], [ %438, %458 ]
  %469 = call float @dx.op.binary.f32(i32 36, float %304, float %467)  ; FMin(a,b)
  %470 = call float @dx.op.binary.f32(i32 35, float %281, float %468)  ; FMax(a,b)
  %471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %472 = extractvalue %dx.types.CBufRet.f32 %471, 0
  %473 = fmul fast float %229, 2.000000e+00
  %474 = fadd fast float %473, -1.000000e+00
  %475 = fmul fast float %472, %474
  %476 = fadd fast float %475, %470
  %477 = fcmp fast olt float %476, %469
  %478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.f32 %478, 2
  %480 = fcmp fast olt float %479, 1.000000e+00
  %481 = and i1 %477, %480
  br i1 %481, label %482, label %2066

; <label>:482                                     ; preds = %465
  %483 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.i32 %483, 1
  %485 = add i32 %484, -1
  %486 = fmul fast float %476, %285
  %487 = fadd fast float %486, %242
  %488 = fmul fast float %476, %284
  %489 = fadd fast float %488, %241
  %490 = fmul fast float %476, %283
  %491 = fadd fast float %490, %240
  br label %492

; <label>:492                                     ; preds = %2040, %482
  %493 = phi i32 [ %2042, %2040 ], [ undef, %482 ]
  %494 = phi float [ %2043, %2040 ], [ undef, %482 ]
  %495 = phi i32 [ %924, %2040 ], [ undef, %482 ]
  %496 = phi float [ %926, %2040 ], [ undef, %482 ]
  %497 = phi float [ %2044, %2040 ], [ 0.000000e+00, %482 ]
  %498 = phi float [ %2045, %2040 ], [ 1.000000e+00, %482 ]
  %499 = phi float [ %2046, %2040 ], [ 0.000000e+00, %482 ]
  %500 = phi float [ %2047, %2040 ], [ 0.000000e+00, %482 ]
  %501 = phi float [ %2048, %2040 ], [ 0.000000e+00, %482 ]
  %502 = phi float [ %2058, %2040 ], [ %491, %482 ]
  %503 = phi float [ %2059, %2040 ], [ %489, %482 ]
  %504 = phi float [ %2060, %2040 ], [ %487, %482 ]
  %505 = phi float [ %2041, %2040 ], [ %476, %482 ]
  %506 = phi i32 [ %689, %2040 ], [ %485, %482 ]
  %507 = phi float [ %2049, %2040 ], [ 0.000000e+00, %482 ]
  %508 = phi float [ %2050, %2040 ], [ 0.000000e+00, %482 ]
  %509 = phi float [ %2051, %2040 ], [ 0.000000e+00, %482 ]
  %510 = phi float [ %2052, %2040 ], [ 0.000000e+00, %482 ]
  %511 = phi float [ %2053, %2040 ], [ 0.000000e+00, %482 ]
  %512 = phi i32 [ %2054, %2040 ], [ 0, %482 ]
  %513 = fsub fast float -0.000000e+00, %503
  %514 = fsub fast float -0.000000e+00, %502
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 0
  %517 = icmp eq i32 %372, 0
  br i1 %517, label %686, label %518, !dx.controlflow.hints !45

; <label>:518                                     ; preds = %492
  %519 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %520 = extractvalue %dx.types.CBufRet.i32 %519, 1
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 1
  %523 = fcmp fast ogt float %522, %505
  br i1 %523, label %524, label %526, !dx.controlflow.hints !46

; <label>:524                                     ; preds = %518
  %525 = fsub fast float %522, %505
  br label %676

; <label>:526                                     ; preds = %518
  %527 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %528 = extractvalue %dx.types.CBufRet.i32 %527, 3
  %529 = icmp eq i32 %528, 0
  %530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.f32 %530, 2
  %532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.f32 %532, 2
  %534 = fsub fast float %531, %504
  %535 = fadd fast float %534, %533
  %536 = fsub fast float 0xC7EFFFFFE0000000, %504
  br i1 %529, label %544, label %537, !dx.controlflow.hints !36

; <label>:537                                     ; preds = %526
  %538 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %514, float %513, float %535)  ; Dot3(ax,ay,az,bx,by,bz)
  %539 = fmul fast float %449, %538
  %540 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %514, float %513, float %536)  ; Dot3(ax,ay,az,bx,by,bz)
  %541 = fmul fast float %449, %540
  %542 = call float @dx.op.binary.f32(i32 36, float %539, float %541)  ; FMin(a,b)
  %543 = call float @dx.op.binary.f32(i32 35, float %539, float %541)  ; FMax(a,b)
  br label %577

; <label>:544                                     ; preds = %526
  %545 = extractvalue %dx.types.CBufRet.f32 %530, 0
  %546 = extractvalue %dx.types.CBufRet.f32 %530, 1
  %547 = extractvalue %dx.types.CBufRet.f32 %532, 0
  %548 = extractvalue %dx.types.CBufRet.f32 %532, 1
  %549 = fdiv fast float 1.000000e+00, %283
  %550 = fdiv fast float 1.000000e+00, %284
  %551 = fdiv fast float 1.000000e+00, %285
  %552 = fsub fast float %545, %502
  %553 = fmul fast float %549, %552
  %554 = fadd fast float %552, %547
  %555 = fmul fast float %554, %549
  %556 = call float @dx.op.binary.f32(i32 36, float %553, float %555)  ; FMin(a,b)
  %557 = call float @dx.op.binary.f32(i32 35, float %553, float %555)  ; FMax(a,b)
  %558 = fsub fast float %546, %503
  %559 = fmul fast float %550, %558
  %560 = fadd fast float %558, %548
  %561 = fmul fast float %560, %550
  %562 = call float @dx.op.binary.f32(i32 36, float %559, float %561)  ; FMin(a,b)
  %563 = call float @dx.op.binary.f32(i32 35, float %556, float %562)  ; FMax(a,b)
  %564 = call float @dx.op.binary.f32(i32 35, float %559, float %561)  ; FMax(a,b)
  %565 = call float @dx.op.binary.f32(i32 36, float %557, float %564)  ; FMin(a,b)
  %566 = fmul fast float %551, %536
  %567 = fmul fast float %551, %535
  %568 = call float @dx.op.binary.f32(i32 36, float %566, float %567)  ; FMin(a,b)
  %569 = call float @dx.op.binary.f32(i32 35, float %563, float %568)  ; FMax(a,b)
  %570 = call float @dx.op.binary.f32(i32 35, float %566, float %567)  ; FMax(a,b)
  %571 = call float @dx.op.binary.f32(i32 36, float %565, float %570)  ; FMin(a,b)
  %572 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %569)  ; FMax(a,b)
  %573 = fcmp fast ult float %571, %572
  br i1 %573, label %577, label %574, !dx.controlflow.hints !37

; <label>:574                                     ; preds = %544
  %575 = call float @dx.op.binary.f32(i32 36, float %569, float %571)  ; FMin(a,b)
  %576 = call float @dx.op.binary.f32(i32 35, float %569, float %571)  ; FMax(a,b)
  br label %577

; <label>:577                                     ; preds = %574, %544, %537
  %578 = phi float [ %542, %537 ], [ %575, %574 ], [ 0.000000e+00, %544 ]
  %579 = phi float [ %543, %537 ], [ %576, %574 ], [ 0.000000e+00, %544 ]
  %580 = fcmp fast ogt float %578, 0.000000e+00
  br i1 %580, label %676, label %581, !dx.controlflow.hints !47

; <label>:581                                     ; preds = %577
  %582 = fcmp fast ugt float %579, 0.000000e+00
  br i1 %582, label %583, label %676, !dx.controlflow.hints !48

; <label>:583                                     ; preds = %581
  %584 = icmp sgt i32 %506, 0
  br i1 %584, label %585, label %670

; <label>:585                                     ; preds = %583
  br label %586

; <label>:586                                     ; preds = %666, %585
  %587 = phi i32 [ %667, %666 ], [ %506, %585 ]
  %588 = sitofp i32 %587 to float
  %589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.f32 %589, 0
  %591 = extractvalue %dx.types.CBufRet.f32 %589, 1
  %592 = fsub fast float %502, %590
  %593 = fsub fast float %503, %591
  %594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.f32 %594, 0
  %596 = extractvalue %dx.types.CBufRet.f32 %594, 1
  %597 = fmul fast float %592, %595
  %598 = fmul fast float %593, %596
  %599 = fsub fast float 1.000000e+00, %598
  %600 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.i32 %600, 3
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %609, label %603, !dx.controlflow.hints !49

; <label>:603                                     ; preds = %586
  %604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %597, float %599, float undef, float undef, i32 0, i32 0, i32 undef, float %588)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = extractvalue %dx.types.ResRet.f32 %604, 1
  %607 = extractvalue %dx.types.ResRet.f32 %604, 2
  %608 = extractvalue %dx.types.ResRet.f32 %604, 3
  br label %615

; <label>:609                                     ; preds = %586
  %610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %597, float %599, float undef, float undef, i32 0, i32 0, i32 undef, float %588)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = extractvalue %dx.types.ResRet.f32 %610, 1
  %613 = extractvalue %dx.types.ResRet.f32 %610, 2
  %614 = extractvalue %dx.types.ResRet.f32 %610, 3
  br label %615

; <label>:615                                     ; preds = %609, %603
  %616 = phi float [ %605, %603 ], [ %611, %609 ]
  %617 = phi float [ %606, %603 ], [ %612, %609 ]
  %618 = phi float [ %607, %603 ], [ %613, %609 ]
  %619 = phi float [ %608, %603 ], [ %614, %609 ]
  %620 = extractvalue %dx.types.CBufRet.f32 %594, 3
  %621 = fmul fast float %620, %616
  %622 = extractvalue %dx.types.CBufRet.f32 %589, 2
  %623 = fadd fast float %621, %622
  %624 = fmul fast float %620, %617
  %625 = fadd fast float %624, %622
  %626 = fmul fast float %620, %618
  %627 = fadd fast float %626, %622
  %628 = and i32 %587, 31
  %629 = shl i32 1, %628
  %630 = uitofp i32 %629 to float
  %631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %632 = extractvalue %dx.types.CBufRet.f32 %631, 3
  %633 = fdiv fast float 1.000000e+00, %632
  %634 = fmul fast float %633, %630
  %635 = fmul fast float %634, %285
  %636 = fadd fast float %635, %504
  %637 = fcmp fast oeq float %619, 0.000000e+00
  %638 = fcmp fast ogt float %504, %625
  %639 = fcmp fast ogt float %636, %625
  %640 = and i1 %638, %639
  %641 = or i1 %637, %640
  br i1 %641, label %642, label %646, !dx.controlflow.hints !50

; <label>:642                                     ; preds = %615
  %643 = add nsw i32 %587, 1
  %644 = add nsw i32 %520, -1
  %645 = call i32 @dx.op.binary.i32(i32 38, i32 %643, i32 %644)  ; IMin(a,b)
  br label %676

; <label>:646                                     ; preds = %615
  %647 = fcmp fast olt float %504, %627
  %648 = fcmp fast olt float %636, %627
  %649 = and i1 %647, %648
  br i1 %649, label %650, label %654, !dx.controlflow.hints !51

; <label>:650                                     ; preds = %646
  %651 = add nsw i32 %587, 1
  %652 = add nsw i32 %520, -1
  %653 = call i32 @dx.op.binary.i32(i32 38, i32 %651, i32 %652)  ; IMin(a,b)
  br label %676

; <label>:654                                     ; preds = %646
  %655 = fcmp fast olt float %504, %623
  %656 = fcmp fast olt float %636, %623
  %657 = and i1 %655, %656
  br i1 %657, label %658, label %666, !dx.controlflow.hints !52

; <label>:658                                     ; preds = %654
  %659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %660 = extractvalue %dx.types.CBufRet.f32 %659, 3
  %661 = extractvalue %dx.types.CBufRet.f32 %594, 2
  %662 = fcmp fast une float %660, %661
  br i1 %662, label %663, label %670, !dx.controlflow.hints !53

; <label>:663                                     ; preds = %658
  %664 = fsub fast float %504, %627
  %665 = call float @dx.op.binary.f32(i32 36, float %634, float %664)  ; FMin(a,b)
  br label %670

; <label>:666                                     ; preds = %654
  %667 = add nsw i32 %587, -1
  %668 = icmp sgt i32 %587, 1
  br i1 %668, label %586, label %669

; <label>:669                                     ; preds = %666
  br label %670

; <label>:670                                     ; preds = %669, %663, %658, %583
  %671 = phi float [ %665, %663 ], [ %634, %658 ], [ 0.000000e+00, %583 ], [ 0.000000e+00, %669 ]
  %672 = phi i32 [ %587, %663 ], [ %587, %658 ], [ %506, %583 ], [ %667, %669 ]
  %673 = add nsw i32 %672, 1
  %674 = add nsw i32 %520, -1
  %675 = call i32 @dx.op.binary.i32(i32 38, i32 %673, i32 %674)  ; IMin(a,b)
  br label %676

; <label>:676                                     ; preds = %670, %650, %642, %581, %577, %524
  %677 = phi float [ %525, %524 ], [ %634, %642 ], [ %634, %650 ], [ %671, %670 ], [ 0x47EFFFFFE0000000, %581 ], [ %578, %577 ]
  %678 = phi i32 [ %372, %524 ], [ %372, %642 ], [ %372, %650 ], [ %372, %670 ], [ 0, %581 ], [ %372, %577 ]
  %679 = phi i32 [ %506, %524 ], [ %645, %642 ], [ %653, %650 ], [ %675, %670 ], [ %506, %581 ], [ %506, %577 ]
  %680 = icmp ne i32 %678, 0
  %681 = zext i1 %680 to i32
  %682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.f32 %682, 2
  %684 = call float @dx.op.binary.f32(i32 35, float %677, float %683)  ; FMax(a,b)
  %685 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %684)  ; FMin(a,b)
  br label %686

; <label>:686                                     ; preds = %676, %492
  %687 = phi i32 [ %681, %676 ], [ 0, %492 ]
  %688 = phi float [ %685, %676 ], [ 0x47EFFFFFE0000000, %492 ]
  %689 = phi i32 [ %679, %676 ], [ %506, %492 ]
  %690 = icmp eq i32 %436, 0
  br i1 %690, label %747, label %691, !dx.controlflow.hints !54

; <label>:691                                     ; preds = %686
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 0
  %694 = extractvalue %dx.types.CBufRet.f32 %692, 1
  %695 = extractvalue %dx.types.CBufRet.f32 %692, 2
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 0
  %698 = extractvalue %dx.types.CBufRet.f32 %696, 1
  %699 = extractvalue %dx.types.CBufRet.f32 %696, 2
  %700 = fsub fast float %502, %697
  %701 = fsub fast float %503, %698
  %702 = fsub fast float %504, %699
  %703 = fmul fast float %700, %693
  %704 = fmul fast float %701, %694
  %705 = fmul fast float %702, %695
  %706 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %707 = extractvalue %dx.types.CBufRet.i32 %706, 3
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %712, label %709, !dx.controlflow.hints !55

; <label>:709                                     ; preds = %691
  %710 = call float @dx.op.unary.f32(i32 22, float %703)  ; Frc(value)
  %711 = call float @dx.op.unary.f32(i32 22, float %704)  ; Frc(value)
  br label %712

; <label>:712                                     ; preds = %709, %691
  %713 = phi float [ %710, %709 ], [ %703, %691 ]
  %714 = phi float [ %711, %709 ], [ %704, %691 ]
  %715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %713, float %714, float %705, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %716 = extractvalue %dx.types.ResRet.f32 %715, 0
  %717 = fmul fast float %716, 2.000000e+00
  %718 = fadd fast float %717, -1.000000e+00
  %719 = extractvalue %dx.types.CBufRet.f32 %692, 3
  %720 = fmul fast float %718, %719
  %721 = fcmp fast olt float %720, 0.000000e+00
  %722 = fcmp fast oge float %705, 0.000000e+00
  %723 = fcmp fast ole float %705, 1.000000e+00
  br i1 %708, label %726, label %724, !dx.controlflow.hints !56

; <label>:724                                     ; preds = %712
  %725 = and i1 %722, %723
  br label %736

; <label>:726                                     ; preds = %712
  %727 = fcmp fast oge float %703, 0.000000e+00
  %728 = fcmp fast oge float %704, 0.000000e+00
  %729 = and i1 %727, %728
  %730 = and i1 %722, %729
  %731 = fcmp fast ole float %703, 1.000000e+00
  %732 = fcmp fast ole float %704, 1.000000e+00
  %733 = and i1 %731, %732
  %734 = and i1 %723, %733
  %735 = and i1 %730, %734
  br label %736

; <label>:736                                     ; preds = %726, %724
  %737 = phi i1 [ %725, %724 ], [ %735, %726 ]
  %738 = and i1 %721, %737
  %739 = call float @dx.op.unary.f32(i32 6, float %720)  ; FAbs(value)
  %740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.f32 %740, 1
  %742 = extractvalue %dx.types.CBufRet.f32 %740, 0
  %743 = call float @dx.op.binary.f32(i32 35, float %739, float %742)  ; FMax(a,b)
  %744 = select i1 %738, float %741, float %743
  %745 = zext i1 %738 to i32
  %746 = call float @dx.op.binary.f32(i32 36, float %688, float %744)  ; FMin(a,b)
  br label %747

; <label>:747                                     ; preds = %736, %686
  %748 = phi i32 [ %745, %736 ], [ 0, %686 ]
  %749 = phi float [ %746, %736 ], [ %688, %686 ]
  %750 = icmp eq i32 %466, 0
  br i1 %750, label %923, label %751, !dx.controlflow.hints !57

; <label>:751                                     ; preds = %747
  %752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.i32 %752, 1
  %754 = and i32 %753, 1
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %756, label %913, !dx.controlflow.hints !58

; <label>:756                                     ; preds = %751
  %757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %758 = extractvalue %dx.types.CBufRet.f32 %757, 2
  %759 = extractvalue %dx.types.CBufRet.f32 %757, 3
  %760 = fmul fast float %758, %502
  %761 = fmul fast float %759, %503
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 0
  %764 = extractvalue %dx.types.CBufRet.f32 %762, 1
  %765 = fadd fast float %760, %763
  %766 = fadd fast float %761, %764
  %767 = call float @dx.op.unary.f32(i32 7, float %765)  ; Saturate(value)
  %768 = call float @dx.op.unary.f32(i32 7, float %766)  ; Saturate(value)
  %769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %19, float %767, float %768, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %770 = extractvalue %dx.types.ResRet.f32 %769, 0
  %771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %772 = extractvalue %dx.types.CBufRet.f32 %771, 0
  %773 = fmul fast float %772, %770
  %774 = fsub fast float %765, %767
  %775 = fsub fast float %766, %768
  %776 = extractvalue %dx.types.CBufRet.f32 %757, 0
  %777 = extractvalue %dx.types.CBufRet.f32 %757, 1
  %778 = fmul fast float %776, %774
  %779 = fmul fast float %777, %775
  %780 = fmul fast float %778, %778
  %781 = fmul fast float %779, %779
  %782 = fadd fast float %780, %781
  %783 = call float @dx.op.unary.f32(i32 24, float %782)  ; Sqrt(value)
  %784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.f32 %784, 3
  %786 = fmul fast float %785, %783
  %787 = call float @dx.op.unary.f32(i32 7, float %786)  ; Saturate(value)
  %788 = extractvalue %dx.types.CBufRet.f32 %784, 2
  %789 = fsub fast float %788, %773
  %790 = fmul fast float %789, %787
  %791 = extractvalue %dx.types.CBufRet.f32 %771, 1
  %792 = fsub fast float %504, %773
  %793 = fsub fast float %792, %791
  %794 = fsub fast float %793, %790
  %795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.f32 %795, 2
  %797 = fsub fast float %794, %796
  %798 = fcmp fast olt float %797, 0.000000e+00
  %799 = call float @dx.op.unary.f32(i32 6, float %797)  ; FAbs(value)
  %800 = extractvalue %dx.types.CBufRet.i32 %752, 0
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %855, label %802

; <label>:802                                     ; preds = %756
  br label %803

; <label>:803                                     ; preds = %842, %802
  %804 = phi i32 [ %848, %842 ], [ 1, %802 ]
  %805 = phi float [ %850, %842 ], [ 0x47EFFFFFE0000000, %802 ]
  %806 = phi i32 [ %851, %842 ], [ 0, %802 ]
  %807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %808 = extractvalue %dx.types.CBufRet.f32 %807, 1
  %809 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.i32 %809, 1
  %811 = and i32 %810, 8
  %812 = icmp eq i32 %811, 0
  %813 = fcmp fast ogt float %808, %794
  %814 = or i1 %813, %812
  %815 = add i32 %806, 171
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %815)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 0
  %818 = extractvalue %dx.types.CBufRet.f32 %816, 1
  %819 = extractvalue %dx.types.CBufRet.f32 %816, 2
  br i1 %814, label %820, label %826, !dx.controlflow.hints !59

; <label>:820                                     ; preds = %803
  %821 = fsub fast float %817, %502
  %822 = fsub fast float %818, %503
  %823 = fmul fast float %821, %821
  %824 = fmul fast float %822, %822
  %825 = fadd fast float %823, %824
  br label %842

; <label>:826                                     ; preds = %803
  %827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %828 = extractvalue %dx.types.CBufRet.f32 %827, 2
  %829 = extractvalue %dx.types.CBufRet.f32 %807, 2
  %830 = fmul fast float %829, %828
  %831 = fsub fast float %830, %808
  %832 = fdiv fast float %819, %831
  %833 = fsub fast float %502, %817
  %834 = fsub fast float %503, %818
  %835 = fsub fast float %794, %808
  %836 = fmul fast float %832, %835
  %837 = fmul fast float %833, %833
  %838 = fmul fast float %834, %834
  %839 = fadd fast float %837, %838
  %840 = fmul fast float %836, %836
  %841 = fadd fast float %839, %840
  br label %842

; <label>:842                                     ; preds = %826, %820
  %843 = phi float [ %825, %820 ], [ %841, %826 ]
  %844 = call float @dx.op.unary.f32(i32 24, float %843)  ; Sqrt(value)
  %845 = fsub float %819, %844
  %846 = fcmp fast olt float %845, 0.000000e+00
  %847 = zext i1 %846 to i32
  %848 = and i32 %847, %804
  %849 = call float @dx.op.unary.f32(i32 6, float %845)  ; FAbs(value)
  %850 = call float @dx.op.binary.f32(i32 36, float %805, float %849)  ; FMin(a,b)
  %851 = add i32 %806, 1
  %852 = extractvalue %dx.types.CBufRet.i32 %809, 0
  %853 = icmp ult i32 %851, %852
  br i1 %853, label %803, label %854

; <label>:854                                     ; preds = %842
  br label %855

; <label>:855                                     ; preds = %854, %756
  %856 = phi i32 [ 1, %756 ], [ %848, %854 ]
  %857 = phi float [ 0x47EFFFFFE0000000, %756 ], [ %850, %854 ]
  br label %858

; <label>:858                                     ; preds = %858, %855
  %859 = phi i32 [ %856, %855 ], [ %898, %858 ]
  %860 = phi float [ 0x47EFFFFFE0000000, %855 ], [ %900, %858 ]
  %861 = phi i32 [ 0, %855 ], [ %901, %858 ]
  %862 = add nuw nsw i32 %861, 191
  %863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %862)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.f32 %863, 0
  %865 = extractvalue %dx.types.CBufRet.f32 %863, 1
  %866 = extractvalue %dx.types.CBufRet.f32 %863, 2
  %867 = add nuw nsw i32 %861, 195
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %867)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 0
  %870 = extractvalue %dx.types.CBufRet.f32 %868, 1
  %871 = extractvalue %dx.types.CBufRet.f32 %868, 2
  %872 = fsub fast float %502, %864
  %873 = fsub fast float %503, %865
  %874 = fsub fast float %794, %866
  %875 = call float @dx.op.unary.f32(i32 6, float %872)  ; FAbs(value)
  %876 = call float @dx.op.unary.f32(i32 6, float %873)  ; FAbs(value)
  %877 = call float @dx.op.unary.f32(i32 6, float %874)  ; FAbs(value)
  %878 = fsub fast float %875, %869
  %879 = fsub fast float %876, %870
  %880 = fsub fast float %877, %871
  %881 = call float @dx.op.binary.f32(i32 35, float %878, float 0.000000e+00)  ; FMax(a,b)
  %882 = call float @dx.op.binary.f32(i32 35, float %879, float 0.000000e+00)  ; FMax(a,b)
  %883 = call float @dx.op.binary.f32(i32 35, float %880, float 0.000000e+00)  ; FMax(a,b)
  %884 = fmul fast float %881, %881
  %885 = fmul fast float %882, %882
  %886 = fadd fast float %885, %884
  %887 = fmul fast float %883, %883
  %888 = fadd fast float %886, %887
  %889 = call float @dx.op.unary.f32(i32 24, float %888)  ; Sqrt(value)
  %890 = call float @dx.op.binary.f32(i32 35, float %879, float %880)  ; FMax(a,b)
  %891 = call float @dx.op.binary.f32(i32 35, float %878, float %890)  ; FMax(a,b)
  %892 = call float @dx.op.binary.f32(i32 36, float %891, float 0.000000e+00)  ; FMin(a,b)
  %893 = fadd fast float %892, %889
  %894 = fsub fast float -0.000000e+00, %893
  %895 = fcmp ogt float %893, -0.000000e+00
  %896 = icmp ne i32 %859, 0
  %897 = and i1 %896, %895
  %898 = zext i1 %897 to i32
  %899 = call float @dx.op.unary.f32(i32 6, float %894)  ; FAbs(value)
  %900 = call float @dx.op.binary.f32(i32 36, float %860, float %899)  ; FMin(a,b)
  %901 = add nuw nsw i32 %861, 1
  %902 = icmp eq i32 %901, 4
  br i1 %902, label %903, label %858

; <label>:903                                     ; preds = %858
  %904 = call float @dx.op.binary.f32(i32 36, float %799, float %900)  ; FMin(a,b)
  %905 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.i32 %905, 1
  %907 = and i32 %906, 2
  %908 = icmp ne i32 %907, 0
  %909 = xor i1 %897, %908
  %910 = call float @dx.op.binary.f32(i32 36, float %904, float %857)  ; FMin(a,b)
  %911 = and i1 %909, %798
  %912 = zext i1 %911 to i32
  br label %913

; <label>:913                                     ; preds = %903, %751
  %914 = phi i32 [ %495, %751 ], [ %912, %903 ]
  %915 = phi float [ 0.000000e+00, %751 ], [ %910, %903 ]
  %916 = phi float [ %504, %751 ], [ %794, %903 ]
  %917 = icmp ne i32 %914, 0
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 3
  %920 = call float @dx.op.binary.f32(i32 35, float %915, float %919)  ; FMax(a,b)
  %921 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %920)  ; FMin(a,b)
  %922 = zext i1 %917 to i32
  br label %923

; <label>:923                                     ; preds = %913, %747
  %924 = phi i32 [ %914, %913 ], [ %495, %747 ]
  %925 = phi i32 [ %922, %913 ], [ 0, %747 ]
  %926 = phi float [ %916, %913 ], [ %496, %747 ]
  %927 = phi float [ %921, %913 ], [ 0x47EFFFFFE0000000, %747 ]
  %928 = extractvalue %dx.types.CBufRet.f32 %515, 2
  %929 = fmul fast float %928, %505
  %930 = call float @dx.op.unary.f32(i32 23, float %929)  ; Log(value)
  %931 = fmul fast float %930, 0x3FE62E4300000000
  %932 = call float @dx.op.binary.f32(i32 35, float %931, float 1.000000e+00)  ; FMax(a,b)
  %933 = fmul fast float %932, %927
  %934 = call float @dx.op.binary.f32(i32 36, float %933, float %749)  ; FMin(a,b)
  %935 = call float @dx.op.binary.f32(i32 35, float %934, float %516)  ; FMax(a,b)
  %936 = fsub fast float %469, %505
  %937 = fadd fast float %936, 0x3F1A36E2E0000000
  %938 = call float @dx.op.binary.f32(i32 36, float %937, float %935)  ; FMin(a,b)
  %939 = icmp eq i32 %687, 0
  br i1 %939, label %1045, label %940, !dx.controlflow.hints !60

; <label>:940                                     ; preds = %923
  %941 = fcmp fast olt float %937, %935
  %942 = fmul fast float %285, %228
  %943 = fmul fast float %942, %938
  %944 = fadd fast float %943, %504
  %945 = fmul fast float %285, %229
  %946 = fmul fast float %945, %938
  %947 = fadd fast float %946, %504
  %948 = fmul fast float %285, %230
  %949 = fmul fast float %948, %938
  %950 = fadd fast float %949, %504
  br i1 %941, label %951, label %956, !dx.controlflow.hints !61

; <label>:951                                     ; preds = %940
  %952 = fmul fast float %938, %283
  %953 = fmul fast float %938, %284
  %954 = fadd fast float %952, %502
  %955 = fadd fast float %953, %503
  br label %956

; <label>:956                                     ; preds = %951, %940
  %957 = phi float [ %954, %951 ], [ %502, %940 ]
  %958 = phi float [ %955, %951 ], [ %503, %940 ]
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 0
  %961 = extractvalue %dx.types.CBufRet.f32 %959, 1
  %962 = fsub fast float %957, %960
  %963 = fsub fast float %958, %961
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 0
  %966 = extractvalue %dx.types.CBufRet.f32 %964, 1
  %967 = fmul fast float %962, %965
  %968 = fmul fast float %963, %966
  %969 = fsub fast float 1.000000e+00, %968
  %970 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %971 = extractvalue %dx.types.CBufRet.i32 %970, 3
  %972 = icmp eq i32 %971, 0
  br i1 %972, label %979, label %973, !dx.controlflow.hints !49

; <label>:973                                     ; preds = %956
  %974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %967, float %969, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %975 = extractvalue %dx.types.ResRet.f32 %974, 0
  %976 = extractvalue %dx.types.ResRet.f32 %974, 1
  %977 = extractvalue %dx.types.ResRet.f32 %974, 2
  %978 = extractvalue %dx.types.ResRet.f32 %974, 3
  br label %985

; <label>:979                                     ; preds = %956
  %980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %967, float %969, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %981 = extractvalue %dx.types.ResRet.f32 %980, 0
  %982 = extractvalue %dx.types.ResRet.f32 %980, 1
  %983 = extractvalue %dx.types.ResRet.f32 %980, 2
  %984 = extractvalue %dx.types.ResRet.f32 %980, 3
  br label %985

; <label>:985                                     ; preds = %979, %973
  %986 = phi float [ %975, %973 ], [ %981, %979 ]
  %987 = phi float [ %976, %973 ], [ %982, %979 ]
  %988 = phi float [ %977, %973 ], [ %983, %979 ]
  %989 = phi float [ %978, %973 ], [ %984, %979 ]
  %990 = extractvalue %dx.types.CBufRet.f32 %964, 3
  %991 = fmul fast float %990, %987
  %992 = fmul fast float %991, %986
  %993 = fsub fast float %991, %992
  %994 = fcmp fast ole float %993, 0.000000e+00
  %995 = extractvalue %dx.types.CBufRet.f32 %959, 2
  %996 = fadd fast float %992, %995
  %997 = fmul fast float %990, %988
  %998 = fadd fast float %997, %995
  %999 = fdiv fast float 1.000000e+00, %993
  %1000 = select i1 %994, float 1.000000e+06, float %999
  %1001 = fsub fast float %944, %996
  %1002 = fmul fast float %1000, %1001
  %1003 = call float @dx.op.unary.f32(i32 7, float %1002)  ; Saturate(value)
  %1004 = extractvalue %dx.types.CBufRet.f32 %964, 2
  %1005 = fmul fast float %1004, %1003
  %1006 = fsub fast float %1004, %1005
  %1007 = fcmp fast olt float %944, %998
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 3
  %1010 = select i1 %1007, float %1009, float 1.000000e+00
  %1011 = fmul fast float %1006, %1010
  %1012 = fsub fast float %947, %996
  %1013 = fmul fast float %1000, %1012
  %1014 = call float @dx.op.unary.f32(i32 7, float %1013)  ; Saturate(value)
  %1015 = fmul fast float %1004, %1014
  %1016 = fsub fast float %1004, %1015
  %1017 = fcmp fast olt float %947, %998
  %1018 = select i1 %1017, float %1009, float 1.000000e+00
  %1019 = fmul fast float %1016, %1018
  %1020 = fadd fast float %1019, %1011
  %1021 = fsub fast float %950, %996
  %1022 = fmul fast float %1000, %1021
  %1023 = call float @dx.op.unary.f32(i32 7, float %1022)  ; Saturate(value)
  %1024 = fmul fast float %1004, %1023
  %1025 = fsub fast float %1004, %1024
  %1026 = fcmp fast olt float %950, %998
  %1027 = select i1 %1026, float %1009, float 1.000000e+00
  %1028 = fmul fast float %1025, %1027
  %1029 = fadd fast float %1020, %1028
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 2
  %1032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.CBufRet.f32 %1032, 1
  %1035 = extractvalue %dx.types.CBufRet.f32 %1032, 2
  %1036 = fmul fast float %938, 0x3FD5555560000000
  %1037 = fmul fast float %1036, %989
  %1038 = fmul fast float %1037, %1031
  %1039 = fmul fast float %1038, %1029
  %1040 = extractvalue %dx.types.CBufRet.f32 %1008, 0
  %1041 = fmul fast float %1039, %1033
  %1042 = fmul fast float %1039, %1034
  %1043 = fmul fast float %1039, %1035
  %1044 = fmul fast float %1039, %1040
  br label %1045

; <label>:1045                                    ; preds = %985, %923
  %1046 = phi float [ %1039, %985 ], [ 0.000000e+00, %923 ]
  %1047 = phi float [ %1044, %985 ], [ 0.000000e+00, %923 ]
  %1048 = phi float [ %1041, %985 ], [ 0.000000e+00, %923 ]
  %1049 = phi float [ %1042, %985 ], [ 0.000000e+00, %923 ]
  %1050 = phi float [ %1043, %985 ], [ 0.000000e+00, %923 ]
  %1051 = icmp eq i32 %748, 0
  br i1 %1051, label %1246, label %1052, !dx.controlflow.hints !62

; <label>:1052                                    ; preds = %1045
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 3
  %1055 = fmul fast float %1054, %505
  %1056 = fcmp fast oeq float %1055, 0.000000e+00
  br i1 %1056, label %1071, label %1057, !dx.controlflow.hints !63

; <label>:1057                                    ; preds = %1052
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1058, 3
  %1060 = fmul fast float %1059, %1055
  %1061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.f32 %1061, 0
  %1063 = extractvalue %dx.types.CBufRet.f32 %1061, 1
  %1064 = extractvalue %dx.types.CBufRet.f32 %1061, 2
  %1065 = fmul fast float %1062, %1060
  %1066 = fmul fast float %1063, %1060
  %1067 = fmul fast float %1064, %1060
  %1068 = call float @dx.op.unary.f32(i32 23, float %1065)  ; Log(value)
  %1069 = call float @dx.op.unary.f32(i32 23, float %1066)  ; Log(value)
  %1070 = call float @dx.op.unary.f32(i32 23, float %1067)  ; Log(value)
  br label %1071

; <label>:1071                                    ; preds = %1057, %1052
  %1072 = phi float [ %1068, %1057 ], [ 0.000000e+00, %1052 ]
  %1073 = phi float [ %1069, %1057 ], [ 0.000000e+00, %1052 ]
  %1074 = phi float [ %1070, %1057 ], [ 0.000000e+00, %1052 ]
  %1075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1076 = extractvalue %dx.types.CBufRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.CBufRet.f32 %1075, 1
  %1078 = extractvalue %dx.types.CBufRet.f32 %1075, 2
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.CBufRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.CBufRet.f32 %1079, 2
  %1083 = fsub fast float %502, %1080
  %1084 = fsub fast float %503, %1081
  %1085 = fsub fast float %504, %1082
  %1086 = fmul fast float %1083, %1076
  %1087 = fmul fast float %1084, %1077
  %1088 = fmul fast float %1085, %1078
  %1089 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.i32 %1089, 0
  %1091 = extractvalue %dx.types.CBufRet.i32 %1089, 1
  %1092 = uitofp i32 %1090 to float
  %1093 = uitofp i32 %1091 to float
  %1094 = fmul fast float %1086, %1092
  %1095 = fmul fast float %1087, %1093
  %1096 = fadd fast float %1094, 5.000000e-01
  %1097 = fadd fast float %1095, 5.000000e-01
  %1098 = call float @dx.op.unary.f32(i32 22, float %1096)  ; Frc(value)
  %1099 = call float @dx.op.unary.f32(i32 22, float %1097)  ; Frc(value)
  %1100 = call float @dx.op.unary.f32(i32 27, float %1096)  ; Round_ni(value)
  %1101 = call float @dx.op.unary.f32(i32 27, float %1097)  ; Round_ni(value)
  %1102 = fadd fast float %1100, 1.000000e+00
  %1103 = fadd fast float %1101, 1.000000e+00
  %1104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.f32 %1104, 0
  %1106 = extractvalue %dx.types.CBufRet.f32 %1104, 1
  %1107 = fmul fast float %1105, %1102
  %1108 = fmul fast float %1106, %1103
  %1109 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %18, float %1107, float %1108, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1110 = extractvalue %dx.types.ResRet.f32 %1109, 0
  %1111 = extractvalue %dx.types.ResRet.f32 %1109, 1
  %1112 = extractvalue %dx.types.ResRet.f32 %1109, 2
  %1113 = extractvalue %dx.types.ResRet.f32 %1109, 3
  %1114 = extractvalue %dx.types.CBufRet.i32 %1089, 2
  %1115 = extractvalue %dx.types.CBufRet.f32 %1104, 2
  %1116 = uitofp i32 %1114 to float
  %1117 = fadd fast float %1116, -1.000000e+00
  %1118 = fmul fast float %1117, %1110
  %1119 = fmul fast float %1117, %1111
  %1120 = fmul fast float %1117, %1112
  %1121 = fmul fast float %1117, %1113
  %1122 = fadd fast float %1118, 5.000000e-01
  %1123 = fadd fast float %1119, 5.000000e-01
  %1124 = fadd fast float %1120, 5.000000e-01
  %1125 = fadd fast float %1121, 5.000000e-01
  %1126 = fptoui float %1122 to i32
  %1127 = fptoui float %1123 to i32
  %1128 = fptoui float %1124 to i32
  %1129 = fptoui float %1125 to i32
  %1130 = uitofp i32 %1126 to float
  %1131 = uitofp i32 %1127 to float
  %1132 = uitofp i32 %1128 to float
  %1133 = uitofp i32 %1129 to float
  %1134 = fadd fast float %1130, 5.000000e-01
  %1135 = fadd fast float %1131, 5.000000e-01
  %1136 = fadd fast float %1132, 5.000000e-01
  %1137 = fadd fast float %1133, 5.000000e-01
  %1138 = fmul fast float %1134, %1115
  %1139 = fmul fast float %1135, %1115
  %1140 = fmul fast float %1136, %1115
  %1141 = fmul fast float %1137, %1115
  %1142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1138, float %1088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1143 = extractvalue %dx.types.ResRet.f32 %1142, 0
  %1144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1139, float %1088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1145 = extractvalue %dx.types.ResRet.f32 %1144, 0
  %1146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1140, float %1088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1141, float %1088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1149 = extractvalue %dx.types.ResRet.f32 %1148, 0
  %1150 = fsub fast float %1147, %1149
  %1151 = fmul fast float %1150, %1098
  %1152 = fadd fast float %1151, %1149
  %1153 = fsub fast float %1145, %1143
  %1154 = fmul fast float %1153, %1098
  %1155 = fadd fast float %1154, %1143
  %1156 = fsub fast float %1155, %1152
  %1157 = fmul fast float %1156, %1099
  %1158 = fadd fast float %1157, %1152
  %1159 = fcmp fast ogt float %1158, 0.000000e+00
  br i1 %1159, label %1160, label %1228, !dx.controlflow.hints !64

; <label>:1160                                    ; preds = %1071
  %1161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1162 = extractvalue %dx.types.CBufRet.f32 %1161, 0
  %1163 = extractvalue %dx.types.CBufRet.f32 %1161, 1
  %1164 = extractvalue %dx.types.CBufRet.f32 %1161, 2
  %1165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1166 = extractvalue %dx.types.CBufRet.f32 %1165, 0
  %1167 = extractvalue %dx.types.CBufRet.f32 %1165, 1
  %1168 = extractvalue %dx.types.CBufRet.f32 %1165, 2
  %1169 = fmul fast float %1084, %1076
  %1170 = fmul fast float %1085, %1076
  %1171 = fadd fast float %1086, %1166
  %1172 = fadd fast float %1169, %1167
  %1173 = fadd fast float %1170, %1168
  %1174 = fmul fast float %1171, %1162
  %1175 = fmul fast float %1172, %1162
  %1176 = fmul fast float %1173, %1162
  %1177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %1174, float %1175, float %1176, float undef, i32 0, i32 0, i32 0, float %1072)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1178 = extractvalue %dx.types.ResRet.f32 %1177, 0
  %1179 = fmul fast float %1171, %1163
  %1180 = fmul fast float %1172, %1163
  %1181 = fmul fast float %1173, %1163
  %1182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %1179, float %1180, float %1181, float undef, i32 0, i32 0, i32 0, float %1073)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1183 = extractvalue %dx.types.ResRet.f32 %1182, 1
  %1184 = fmul fast float %1171, %1164
  %1185 = fmul fast float %1172, %1164
  %1186 = fmul fast float %1173, %1164
  %1187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %1184, float %1185, float %1186, float undef, i32 0, i32 0, i32 0, float %1074)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1188 = extractvalue %dx.types.ResRet.f32 %1187, 2
  %1189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1190 = extractvalue %dx.types.CBufRet.f32 %1189, 1
  %1191 = fmul fast float %1183, %1178
  %1192 = fmul fast float %1191, %1188
  %1193 = call float @dx.op.unary.f32(i32 23, float %1192)  ; Log(value)
  %1194 = fmul fast float %1193, %1190
  %1195 = call float @dx.op.unary.f32(i32 21, float %1194)  ; Exp(value)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1189, 2
  %1197 = fmul fast float %1158, %1158
  %1198 = fmul fast float %1197, %1195
  %1199 = fmul fast float %1198, %1196
  %1200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1201 = extractvalue %dx.types.CBufRet.f32 %1200, 3
  %1202 = fmul fast float %1201, %1199
  %1203 = bitcast float %1202 to i32
  %1204 = sitofp i32 %1203 to float
  %1205 = fptosi float %1204 to i32
  %1206 = bitcast i32 %1205 to float
  %1207 = fsub fast float 1.000000e+00, %1199
  %1208 = bitcast float %1207 to i32
  %1209 = sitofp i32 %1208 to float
  %1210 = fptosi float %1209 to i32
  %1211 = bitcast i32 %1210 to float
  %1212 = fadd fast float %1206, %1211
  %1213 = bitcast float %1212 to i32
  %1214 = sub nsw i32 2129859010, %1213
  %1215 = bitcast i32 %1214 to float
  %1216 = fmul fast float %1215, %1206
  %1217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1217, 2
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 0
  %1221 = fmul fast float %1216, %1220
  %1222 = fadd fast float %1221, 1.000000e+00
  %1223 = bitcast float %1222 to i32
  %1224 = sub nsw i32 2129859010, %1223
  %1225 = bitcast i32 %1224 to float
  %1226 = fmul fast float %1216, %1218
  %1227 = fmul fast float %1226, %1225
  br label %1228

; <label>:1228                                    ; preds = %1160, %1071
  %1229 = phi float [ %1227, %1160 ], [ %1158, %1071 ]
  %1230 = fmul fast float %1229, %938
  %1231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.f32 %1231, 0
  %1233 = extractvalue %dx.types.CBufRet.f32 %1231, 1
  %1234 = extractvalue %dx.types.CBufRet.f32 %1231, 2
  %1235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1236 = extractvalue %dx.types.CBufRet.f32 %1235, 1
  %1237 = fmul fast float %1232, %1230
  %1238 = fmul fast float %1233, %1230
  %1239 = fmul fast float %1234, %1230
  %1240 = fadd fast float %1237, %1048
  %1241 = fadd fast float %1238, %1049
  %1242 = fadd fast float %1239, %1050
  %1243 = fmul fast float %1236, %1230
  %1244 = fadd fast float %1243, %1047
  %1245 = fadd fast float %1230, %1046
  br label %1246

; <label>:1246                                    ; preds = %1228, %1045
  %1247 = phi float [ %1245, %1228 ], [ %1046, %1045 ]
  %1248 = phi float [ %1244, %1228 ], [ %1047, %1045 ]
  %1249 = phi float [ %1240, %1228 ], [ %1048, %1045 ]
  %1250 = phi float [ %1241, %1228 ], [ %1049, %1045 ]
  %1251 = phi float [ %1242, %1228 ], [ %1050, %1045 ]
  %1252 = icmp eq i32 %925, 0
  br i1 %1252, label %1296, label %1253, !dx.controlflow.hints !65

; <label>:1253                                    ; preds = %1246
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 1
  %1256 = fsub fast float %938, %1255
  %1257 = extractvalue %dx.types.CBufRet.f32 %1254, 3
  %1258 = fmul fast float %1256, %1257
  %1259 = call float @dx.op.unary.f32(i32 7, float %1258)  ; Saturate(value)
  %1260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1261 = extractvalue %dx.types.CBufRet.f32 %1260, 3
  %1262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1262, 2
  %1264 = fsub fast float %1263, %926
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 3
  %1267 = fmul fast float %1264, %1266
  %1268 = call float @dx.op.unary.f32(i32 7, float %1267)  ; Saturate(value)
  %1269 = fmul fast float %1268, %1261
  %1270 = extractvalue %dx.types.CBufRet.f32 %1265, 0
  %1271 = fsub fast float %505, %1270
  %1272 = extractvalue %dx.types.CBufRet.f32 %1265, 1
  %1273 = fmul fast float %1271, %1272
  %1274 = call float @dx.op.unary.f32(i32 7, float %1273)  ; Saturate(value)
  %1275 = fsub fast float 1.000000e+00, %1259
  %1276 = fmul fast float %1274, %1275
  %1277 = fadd fast float %1276, %1259
  %1278 = extractvalue %dx.types.CBufRet.f32 %1254, 0
  %1279 = fsub fast float %1269, %1278
  %1280 = fmul fast float %1279, %1277
  %1281 = fadd fast float %1280, %1278
  %1282 = extractvalue %dx.types.CBufRet.f32 %1260, 0
  %1283 = extractvalue %dx.types.CBufRet.f32 %1260, 1
  %1284 = extractvalue %dx.types.CBufRet.f32 %1260, 2
  %1285 = fmul fast float %1281, %938
  %1286 = extractvalue %dx.types.CBufRet.f32 %1265, 2
  %1287 = fmul fast float %1285, %1282
  %1288 = fmul fast float %1285, %1283
  %1289 = fmul fast float %1285, %1284
  %1290 = fadd fast float %1287, %1249
  %1291 = fadd fast float %1288, %1250
  %1292 = fadd fast float %1289, %1251
  %1293 = fmul fast float %1285, %1286
  %1294 = fadd fast float %1293, %1248
  %1295 = fadd fast float %1285, %1247
  br label %1296

; <label>:1296                                    ; preds = %1253, %1246
  %1297 = phi float [ %1295, %1253 ], [ %1247, %1246 ]
  %1298 = phi float [ %1294, %1253 ], [ %1248, %1246 ]
  %1299 = phi float [ %1290, %1253 ], [ %1249, %1246 ]
  %1300 = phi float [ %1291, %1253 ], [ %1250, %1246 ]
  %1301 = phi float [ %1292, %1253 ], [ %1251, %1246 ]
  %1302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1303 = extractvalue %dx.types.CBufRet.f32 %1302, 1
  %1304 = fcmp fast ogt float %1297, %1303
  br i1 %1304, label %1305, label %1311, !dx.controlflow.hints !66

; <label>:1305                                    ; preds = %1296
  %1306 = fdiv fast float 1.000000e+00, %1297
  %1307 = fmul fast float %1306, %1299
  %1308 = fmul fast float %1306, %1300
  %1309 = fmul fast float %1306, %1301
  %1310 = fmul fast float %1306, %1298
  br label %1311

; <label>:1311                                    ; preds = %1305, %1296
  %1312 = phi float [ %1310, %1305 ], [ %1298, %1296 ]
  %1313 = phi float [ %1307, %1305 ], [ %1299, %1296 ]
  %1314 = phi float [ %1308, %1305 ], [ %1300, %1296 ]
  %1315 = phi float [ %1309, %1305 ], [ %1301, %1296 ]
  br i1 %1304, label %1318, label %1316, !dx.controlflow.hints !67

; <label>:1316                                    ; preds = %1311
  %1317 = fadd fast float %938, %505
  br label %2040

; <label>:1318                                    ; preds = %1311
  %1319 = fmul fast float %1297, 0xBFF7154760000000
  %1320 = call float @dx.op.unary.f32(i32 21, float %1319)  ; Exp(value)
  %1321 = call float @dx.op.unary.f32(i32 7, float %1320)  ; Saturate(value)
  %1322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1323 = extractvalue %dx.types.CBufRet.f32 %1322, 3
  %1324 = fcmp fast une float %1323, 0.000000e+00
  %1325 = extractvalue %dx.types.CBufRet.f32 %1322, 0
  %1326 = extractvalue %dx.types.CBufRet.f32 %1322, 1
  %1327 = extractvalue %dx.types.CBufRet.f32 %1322, 2
  br i1 %1324, label %1328, label %1350, !dx.controlflow.hints !68

; <label>:1328                                    ; preds = %1318
  %1329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.f32 %1329, 0
  %1331 = extractvalue %dx.types.CBufRet.f32 %1329, 1
  %1332 = extractvalue %dx.types.CBufRet.f32 %1329, 2
  %1333 = call float @dx.op.dot3.f32(i32 55, float %1325, float %1326, float %1327, float %283, float %284, float %285)  ; Dot3(ax,ay,az,bx,by,bz)
  %1334 = fcmp fast ogt float %1312, 0.000000e+00
  %1335 = select i1 %1334, float 1.000000e+00, float -1.000000e+00
  %1336 = fmul fast float %1335, 5.000000e-01
  %1337 = fmul fast float %1336, %1333
  %1338 = fmul fast float %1335, %1312
  %1339 = fadd fast float %1337, 4.921875e-01
  %1340 = fadd fast float %1338, -3.125000e-02
  %1341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %1339, float 0x3FB25F3060000000, float %1340, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1342 = extractvalue %dx.types.ResRet.f32 %1341, 0
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 0
  %1345 = fmul fast float %1342, 0x400921FB60000000
  %1346 = fmul fast float %1345, %1344
  %1347 = fmul fast float %1346, %1330
  %1348 = fmul fast float %1346, %1331
  %1349 = fmul fast float %1346, %1332
  br label %1350

; <label>:1350                                    ; preds = %1328, %1318
  %1351 = phi float [ %1347, %1328 ], [ 0.000000e+00, %1318 ]
  %1352 = phi float [ %1348, %1328 ], [ 0.000000e+00, %1318 ]
  %1353 = phi float [ %1349, %1328 ], [ 0.000000e+00, %1318 ]
  %1354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1355 = extractvalue %dx.types.CBufRet.f32 %1354, 0
  %1356 = fmul fast float %1355, %1325
  %1357 = fmul fast float %1355, %1326
  %1358 = fmul fast float %1355, %1327
  %1359 = fadd fast float %1356, %502
  %1360 = fsub fast float -0.000000e+00, %1359
  %1361 = fadd fast float %1357, %503
  %1362 = fsub fast float -0.000000e+00, %1361
  %1363 = fadd fast float %1358, %504
  br i1 %517, label %1438, label %1364, !dx.controlflow.hints !45

; <label>:1364                                    ; preds = %1350
  %1365 = extractvalue %dx.types.CBufRet.f32 %1354, 1
  %1366 = fcmp fast ogt float %1365, %1355
  br i1 %1366, label %1367, label %1369, !dx.controlflow.hints !46

; <label>:1367                                    ; preds = %1364
  %1368 = fsub fast float %1365, %1355
  br label %1429

; <label>:1369                                    ; preds = %1364
  %1370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1371 = extractvalue %dx.types.CBufRet.i32 %1370, 3
  %1372 = icmp eq i32 %1371, 0
  %1373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1374 = extractvalue %dx.types.CBufRet.f32 %1373, 2
  %1375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1376 = extractvalue %dx.types.CBufRet.f32 %1375, 2
  %1377 = fsub fast float %1374, %1363
  %1378 = fadd fast float %1377, %1376
  %1379 = fsub fast float 0xC7EFFFFFE0000000, %1363
  br i1 %1372, label %1389, label %1380, !dx.controlflow.hints !36

; <label>:1380                                    ; preds = %1369
  %1381 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1360, float %1362, float %1378)  ; Dot3(ax,ay,az,bx,by,bz)
  %1382 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1325, float %1326, float %1327)  ; Dot3(ax,ay,az,bx,by,bz)
  %1383 = fdiv fast float 1.000000e+00, %1382
  %1384 = fmul fast float %1383, %1381
  %1385 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1360, float %1362, float %1379)  ; Dot3(ax,ay,az,bx,by,bz)
  %1386 = fmul fast float %1383, %1385
  %1387 = call float @dx.op.binary.f32(i32 36, float %1384, float %1386)  ; FMin(a,b)
  %1388 = call float @dx.op.binary.f32(i32 35, float %1384, float %1386)  ; FMax(a,b)
  br label %1422

; <label>:1389                                    ; preds = %1369
  %1390 = extractvalue %dx.types.CBufRet.f32 %1373, 0
  %1391 = extractvalue %dx.types.CBufRet.f32 %1373, 1
  %1392 = extractvalue %dx.types.CBufRet.f32 %1375, 0
  %1393 = extractvalue %dx.types.CBufRet.f32 %1375, 1
  %1394 = fdiv fast float 1.000000e+00, %1325
  %1395 = fdiv fast float 1.000000e+00, %1326
  %1396 = fdiv fast float 1.000000e+00, %1327
  %1397 = fsub fast float %1390, %1359
  %1398 = fmul fast float %1394, %1397
  %1399 = fadd fast float %1397, %1392
  %1400 = fmul fast float %1399, %1394
  %1401 = call float @dx.op.binary.f32(i32 36, float %1398, float %1400)  ; FMin(a,b)
  %1402 = call float @dx.op.binary.f32(i32 35, float %1398, float %1400)  ; FMax(a,b)
  %1403 = fsub fast float %1391, %1361
  %1404 = fmul fast float %1395, %1403
  %1405 = fadd fast float %1403, %1393
  %1406 = fmul fast float %1405, %1395
  %1407 = call float @dx.op.binary.f32(i32 36, float %1404, float %1406)  ; FMin(a,b)
  %1408 = call float @dx.op.binary.f32(i32 35, float %1401, float %1407)  ; FMax(a,b)
  %1409 = call float @dx.op.binary.f32(i32 35, float %1404, float %1406)  ; FMax(a,b)
  %1410 = call float @dx.op.binary.f32(i32 36, float %1402, float %1409)  ; FMin(a,b)
  %1411 = fmul fast float %1396, %1379
  %1412 = fmul fast float %1396, %1378
  %1413 = call float @dx.op.binary.f32(i32 36, float %1411, float %1412)  ; FMin(a,b)
  %1414 = call float @dx.op.binary.f32(i32 35, float %1408, float %1413)  ; FMax(a,b)
  %1415 = call float @dx.op.binary.f32(i32 35, float %1411, float %1412)  ; FMax(a,b)
  %1416 = call float @dx.op.binary.f32(i32 36, float %1410, float %1415)  ; FMin(a,b)
  %1417 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1414)  ; FMax(a,b)
  %1418 = fcmp fast ult float %1416, %1417
  br i1 %1418, label %1422, label %1419, !dx.controlflow.hints !37

; <label>:1419                                    ; preds = %1389
  %1420 = call float @dx.op.binary.f32(i32 36, float %1414, float %1416)  ; FMin(a,b)
  %1421 = call float @dx.op.binary.f32(i32 35, float %1414, float %1416)  ; FMax(a,b)
  br label %1422

; <label>:1422                                    ; preds = %1419, %1389, %1380
  %1423 = phi float [ %1387, %1380 ], [ %1420, %1419 ], [ 0.000000e+00, %1389 ]
  %1424 = phi float [ %1388, %1380 ], [ %1421, %1419 ], [ 0.000000e+00, %1389 ]
  %1425 = fcmp fast ogt float %1423, 0.000000e+00
  br i1 %1425, label %1429, label %1426, !dx.controlflow.hints !47

; <label>:1426                                    ; preds = %1422
  %1427 = fcmp fast ugt float %1424, 0.000000e+00
  br i1 %1427, label %1428, label %1429, !dx.controlflow.hints !48

; <label>:1428                                    ; preds = %1426
  br label %1429

; <label>:1429                                    ; preds = %1428, %1426, %1422, %1367
  %1430 = phi float [ %1368, %1367 ], [ 0.000000e+00, %1428 ], [ 0x47EFFFFFE0000000, %1426 ], [ %1423, %1422 ]
  %1431 = phi i32 [ %372, %1367 ], [ %372, %1428 ], [ 0, %1426 ], [ %372, %1422 ]
  %1432 = icmp ne i32 %1431, 0
  %1433 = zext i1 %1432 to i32
  %1434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1435 = extractvalue %dx.types.CBufRet.f32 %1434, 2
  %1436 = call float @dx.op.binary.f32(i32 35, float %1430, float %1435)  ; FMax(a,b)
  %1437 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1436)  ; FMin(a,b)
  br label %1438

; <label>:1438                                    ; preds = %1429, %1350
  %1439 = phi float [ %1437, %1429 ], [ 0x47EFFFFFE0000000, %1350 ]
  %1440 = phi i32 [ %1433, %1429 ], [ 0, %1350 ]
  br i1 %690, label %1497, label %1441, !dx.controlflow.hints !54

; <label>:1441                                    ; preds = %1438
  %1442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1443 = extractvalue %dx.types.CBufRet.f32 %1442, 0
  %1444 = extractvalue %dx.types.CBufRet.f32 %1442, 1
  %1445 = extractvalue %dx.types.CBufRet.f32 %1442, 2
  %1446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1447 = extractvalue %dx.types.CBufRet.f32 %1446, 0
  %1448 = extractvalue %dx.types.CBufRet.f32 %1446, 1
  %1449 = extractvalue %dx.types.CBufRet.f32 %1446, 2
  %1450 = fsub fast float %1359, %1447
  %1451 = fsub fast float %1361, %1448
  %1452 = fsub fast float %1363, %1449
  %1453 = fmul fast float %1450, %1443
  %1454 = fmul fast float %1451, %1444
  %1455 = fmul fast float %1452, %1445
  %1456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.i32 %1456, 3
  %1458 = icmp eq i32 %1457, 0
  br i1 %1458, label %1462, label %1459, !dx.controlflow.hints !55

; <label>:1459                                    ; preds = %1441
  %1460 = call float @dx.op.unary.f32(i32 22, float %1453)  ; Frc(value)
  %1461 = call float @dx.op.unary.f32(i32 22, float %1454)  ; Frc(value)
  br label %1462

; <label>:1462                                    ; preds = %1459, %1441
  %1463 = phi float [ %1460, %1459 ], [ %1453, %1441 ]
  %1464 = phi float [ %1461, %1459 ], [ %1454, %1441 ]
  %1465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %1463, float %1464, float %1455, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1466 = extractvalue %dx.types.ResRet.f32 %1465, 0
  %1467 = fmul fast float %1466, 2.000000e+00
  %1468 = fadd fast float %1467, -1.000000e+00
  %1469 = extractvalue %dx.types.CBufRet.f32 %1442, 3
  %1470 = fmul fast float %1468, %1469
  %1471 = fcmp fast olt float %1470, 0.000000e+00
  %1472 = fcmp fast oge float %1455, 0.000000e+00
  %1473 = fcmp fast ole float %1455, 1.000000e+00
  br i1 %1458, label %1476, label %1474, !dx.controlflow.hints !56

; <label>:1474                                    ; preds = %1462
  %1475 = and i1 %1472, %1473
  br label %1486

; <label>:1476                                    ; preds = %1462
  %1477 = fcmp fast oge float %1453, 0.000000e+00
  %1478 = fcmp fast oge float %1454, 0.000000e+00
  %1479 = and i1 %1477, %1478
  %1480 = and i1 %1472, %1479
  %1481 = fcmp fast ole float %1453, 1.000000e+00
  %1482 = fcmp fast ole float %1454, 1.000000e+00
  %1483 = and i1 %1481, %1482
  %1484 = and i1 %1473, %1483
  %1485 = and i1 %1480, %1484
  br label %1486

; <label>:1486                                    ; preds = %1476, %1474
  %1487 = phi i1 [ %1475, %1474 ], [ %1485, %1476 ]
  %1488 = and i1 %1471, %1487
  %1489 = call float @dx.op.unary.f32(i32 6, float %1470)  ; FAbs(value)
  %1490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.f32 %1490, 1
  %1492 = extractvalue %dx.types.CBufRet.f32 %1490, 0
  %1493 = call float @dx.op.binary.f32(i32 35, float %1489, float %1492)  ; FMax(a,b)
  %1494 = select i1 %1488, float %1491, float %1493
  %1495 = zext i1 %1488 to i32
  %1496 = call float @dx.op.binary.f32(i32 36, float %1439, float %1494)  ; FMin(a,b)
  br label %1497

; <label>:1497                                    ; preds = %1486, %1438
  %1498 = phi float [ %1496, %1486 ], [ %1439, %1438 ]
  %1499 = phi i32 [ %1495, %1486 ], [ 0, %1438 ]
  br i1 %750, label %1672, label %1500, !dx.controlflow.hints !57

; <label>:1500                                    ; preds = %1497
  %1501 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1502 = extractvalue %dx.types.CBufRet.i32 %1501, 1
  %1503 = and i32 %1502, 1
  %1504 = icmp eq i32 %1503, 0
  br i1 %1504, label %1505, label %1662, !dx.controlflow.hints !58

; <label>:1505                                    ; preds = %1500
  %1506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1507 = extractvalue %dx.types.CBufRet.f32 %1506, 2
  %1508 = extractvalue %dx.types.CBufRet.f32 %1506, 3
  %1509 = fmul fast float %1507, %1359
  %1510 = fmul fast float %1508, %1361
  %1511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1512 = extractvalue %dx.types.CBufRet.f32 %1511, 0
  %1513 = extractvalue %dx.types.CBufRet.f32 %1511, 1
  %1514 = fadd fast float %1509, %1512
  %1515 = fadd fast float %1510, %1513
  %1516 = call float @dx.op.unary.f32(i32 7, float %1514)  ; Saturate(value)
  %1517 = call float @dx.op.unary.f32(i32 7, float %1515)  ; Saturate(value)
  %1518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %19, float %1516, float %1517, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1519 = extractvalue %dx.types.ResRet.f32 %1518, 0
  %1520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1521 = extractvalue %dx.types.CBufRet.f32 %1520, 0
  %1522 = fmul fast float %1521, %1519
  %1523 = fsub fast float %1514, %1516
  %1524 = fsub fast float %1515, %1517
  %1525 = extractvalue %dx.types.CBufRet.f32 %1506, 0
  %1526 = extractvalue %dx.types.CBufRet.f32 %1506, 1
  %1527 = fmul fast float %1525, %1523
  %1528 = fmul fast float %1526, %1524
  %1529 = fmul fast float %1527, %1527
  %1530 = fmul fast float %1528, %1528
  %1531 = fadd fast float %1529, %1530
  %1532 = call float @dx.op.unary.f32(i32 24, float %1531)  ; Sqrt(value)
  %1533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1534 = extractvalue %dx.types.CBufRet.f32 %1533, 3
  %1535 = fmul fast float %1534, %1532
  %1536 = call float @dx.op.unary.f32(i32 7, float %1535)  ; Saturate(value)
  %1537 = extractvalue %dx.types.CBufRet.f32 %1533, 2
  %1538 = fsub fast float %1537, %1522
  %1539 = fmul fast float %1538, %1536
  %1540 = extractvalue %dx.types.CBufRet.f32 %1520, 1
  %1541 = fsub fast float %1363, %1522
  %1542 = fsub fast float %1541, %1540
  %1543 = fsub fast float %1542, %1539
  %1544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1545 = extractvalue %dx.types.CBufRet.f32 %1544, 2
  %1546 = fsub fast float %1543, %1545
  %1547 = fcmp fast olt float %1546, 0.000000e+00
  %1548 = call float @dx.op.unary.f32(i32 6, float %1546)  ; FAbs(value)
  %1549 = extractvalue %dx.types.CBufRet.i32 %1501, 0
  %1550 = icmp eq i32 %1549, 0
  br i1 %1550, label %1604, label %1551

; <label>:1551                                    ; preds = %1505
  br label %1552

; <label>:1552                                    ; preds = %1591, %1551
  %1553 = phi i32 [ %1597, %1591 ], [ 1, %1551 ]
  %1554 = phi float [ %1599, %1591 ], [ 0x47EFFFFFE0000000, %1551 ]
  %1555 = phi i32 [ %1600, %1591 ], [ 0, %1551 ]
  %1556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.f32 %1556, 1
  %1558 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1559 = extractvalue %dx.types.CBufRet.i32 %1558, 1
  %1560 = and i32 %1559, 8
  %1561 = icmp eq i32 %1560, 0
  %1562 = fcmp fast ogt float %1557, %1543
  %1563 = or i1 %1562, %1561
  %1564 = add i32 %1555, 171
  %1565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %1564)  ; CBufferLoadLegacy(handle,regIndex)
  %1566 = extractvalue %dx.types.CBufRet.f32 %1565, 0
  %1567 = extractvalue %dx.types.CBufRet.f32 %1565, 1
  %1568 = extractvalue %dx.types.CBufRet.f32 %1565, 2
  br i1 %1563, label %1569, label %1575, !dx.controlflow.hints !59

; <label>:1569                                    ; preds = %1552
  %1570 = fsub fast float %1566, %1359
  %1571 = fsub fast float %1567, %1361
  %1572 = fmul fast float %1570, %1570
  %1573 = fmul fast float %1571, %1571
  %1574 = fadd fast float %1572, %1573
  br label %1591

; <label>:1575                                    ; preds = %1552
  %1576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1577 = extractvalue %dx.types.CBufRet.f32 %1576, 2
  %1578 = extractvalue %dx.types.CBufRet.f32 %1556, 2
  %1579 = fmul fast float %1578, %1577
  %1580 = fsub fast float %1579, %1557
  %1581 = fdiv fast float %1568, %1580
  %1582 = fsub fast float %1359, %1566
  %1583 = fsub fast float %1361, %1567
  %1584 = fsub fast float %1543, %1557
  %1585 = fmul fast float %1581, %1584
  %1586 = fmul fast float %1582, %1582
  %1587 = fmul fast float %1583, %1583
  %1588 = fadd fast float %1586, %1587
  %1589 = fmul fast float %1585, %1585
  %1590 = fadd fast float %1588, %1589
  br label %1591

; <label>:1591                                    ; preds = %1575, %1569
  %1592 = phi float [ %1574, %1569 ], [ %1590, %1575 ]
  %1593 = call float @dx.op.unary.f32(i32 24, float %1592)  ; Sqrt(value)
  %1594 = fsub float %1568, %1593
  %1595 = fcmp fast olt float %1594, 0.000000e+00
  %1596 = zext i1 %1595 to i32
  %1597 = and i32 %1596, %1553
  %1598 = call float @dx.op.unary.f32(i32 6, float %1594)  ; FAbs(value)
  %1599 = call float @dx.op.binary.f32(i32 36, float %1554, float %1598)  ; FMin(a,b)
  %1600 = add i32 %1555, 1
  %1601 = extractvalue %dx.types.CBufRet.i32 %1558, 0
  %1602 = icmp ult i32 %1600, %1601
  br i1 %1602, label %1552, label %1603

; <label>:1603                                    ; preds = %1591
  br label %1604

; <label>:1604                                    ; preds = %1603, %1505
  %1605 = phi i32 [ 1, %1505 ], [ %1597, %1603 ]
  %1606 = phi float [ 0x47EFFFFFE0000000, %1505 ], [ %1599, %1603 ]
  br label %1607

; <label>:1607                                    ; preds = %1607, %1604
  %1608 = phi i32 [ %1605, %1604 ], [ %1647, %1607 ]
  %1609 = phi float [ 0x47EFFFFFE0000000, %1604 ], [ %1649, %1607 ]
  %1610 = phi i32 [ 0, %1604 ], [ %1650, %1607 ]
  %1611 = add nuw nsw i32 %1610, 191
  %1612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %1611)  ; CBufferLoadLegacy(handle,regIndex)
  %1613 = extractvalue %dx.types.CBufRet.f32 %1612, 0
  %1614 = extractvalue %dx.types.CBufRet.f32 %1612, 1
  %1615 = extractvalue %dx.types.CBufRet.f32 %1612, 2
  %1616 = add nuw nsw i32 %1610, 195
  %1617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %1616)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.f32 %1617, 0
  %1619 = extractvalue %dx.types.CBufRet.f32 %1617, 1
  %1620 = extractvalue %dx.types.CBufRet.f32 %1617, 2
  %1621 = fsub fast float %1359, %1613
  %1622 = fsub fast float %1361, %1614
  %1623 = fsub fast float %1543, %1615
  %1624 = call float @dx.op.unary.f32(i32 6, float %1621)  ; FAbs(value)
  %1625 = call float @dx.op.unary.f32(i32 6, float %1622)  ; FAbs(value)
  %1626 = call float @dx.op.unary.f32(i32 6, float %1623)  ; FAbs(value)
  %1627 = fsub fast float %1624, %1618
  %1628 = fsub fast float %1625, %1619
  %1629 = fsub fast float %1626, %1620
  %1630 = call float @dx.op.binary.f32(i32 35, float %1627, float 0.000000e+00)  ; FMax(a,b)
  %1631 = call float @dx.op.binary.f32(i32 35, float %1628, float 0.000000e+00)  ; FMax(a,b)
  %1632 = call float @dx.op.binary.f32(i32 35, float %1629, float 0.000000e+00)  ; FMax(a,b)
  %1633 = fmul fast float %1630, %1630
  %1634 = fmul fast float %1631, %1631
  %1635 = fadd fast float %1634, %1633
  %1636 = fmul fast float %1632, %1632
  %1637 = fadd fast float %1635, %1636
  %1638 = call float @dx.op.unary.f32(i32 24, float %1637)  ; Sqrt(value)
  %1639 = call float @dx.op.binary.f32(i32 35, float %1628, float %1629)  ; FMax(a,b)
  %1640 = call float @dx.op.binary.f32(i32 35, float %1627, float %1639)  ; FMax(a,b)
  %1641 = call float @dx.op.binary.f32(i32 36, float %1640, float 0.000000e+00)  ; FMin(a,b)
  %1642 = fadd fast float %1641, %1638
  %1643 = fsub fast float -0.000000e+00, %1642
  %1644 = fcmp ogt float %1642, -0.000000e+00
  %1645 = icmp ne i32 %1608, 0
  %1646 = and i1 %1645, %1644
  %1647 = zext i1 %1646 to i32
  %1648 = call float @dx.op.unary.f32(i32 6, float %1643)  ; FAbs(value)
  %1649 = call float @dx.op.binary.f32(i32 36, float %1609, float %1648)  ; FMin(a,b)
  %1650 = add nuw nsw i32 %1610, 1
  %1651 = icmp eq i32 %1650, 4
  br i1 %1651, label %1652, label %1607

; <label>:1652                                    ; preds = %1607
  %1653 = call float @dx.op.binary.f32(i32 36, float %1548, float %1649)  ; FMin(a,b)
  %1654 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1655 = extractvalue %dx.types.CBufRet.i32 %1654, 1
  %1656 = and i32 %1655, 2
  %1657 = icmp ne i32 %1656, 0
  %1658 = xor i1 %1646, %1657
  %1659 = call float @dx.op.binary.f32(i32 36, float %1653, float %1606)  ; FMin(a,b)
  %1660 = and i1 %1658, %1547
  %1661 = zext i1 %1660 to i32
  br label %1662

; <label>:1662                                    ; preds = %1652, %1500
  %1663 = phi i32 [ %493, %1500 ], [ %1661, %1652 ]
  %1664 = phi float [ 0.000000e+00, %1500 ], [ %1659, %1652 ]
  %1665 = phi float [ %1363, %1500 ], [ %1543, %1652 ]
  %1666 = icmp ne i32 %1663, 0
  %1667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.f32 %1667, 3
  %1669 = call float @dx.op.binary.f32(i32 35, float %1664, float %1668)  ; FMax(a,b)
  %1670 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1669)  ; FMin(a,b)
  %1671 = zext i1 %1666 to i32
  br label %1672

; <label>:1672                                    ; preds = %1662, %1497
  %1673 = phi i32 [ %1663, %1662 ], [ %493, %1497 ]
  %1674 = phi float [ %1665, %1662 ], [ %494, %1497 ]
  %1675 = phi float [ %1670, %1662 ], [ 0x47EFFFFFE0000000, %1497 ]
  %1676 = phi i32 [ %1671, %1662 ], [ 0, %1497 ]
  %1677 = icmp eq i32 %1440, 0
  br i1 %1677, label %1751, label %1678, !dx.controlflow.hints !60

; <label>:1678                                    ; preds = %1672
  %1679 = fmul fast float %928, %1355
  %1680 = call float @dx.op.unary.f32(i32 23, float %1679)  ; Log(value)
  %1681 = fmul fast float %1680, 0x3FE62E4300000000
  %1682 = call float @dx.op.binary.f32(i32 35, float %1681, float 1.000000e+00)  ; FMax(a,b)
  %1683 = fmul fast float %1682, %1675
  %1684 = call float @dx.op.binary.f32(i32 36, float %1683, float %1498)  ; FMin(a,b)
  %1685 = call float @dx.op.binary.f32(i32 35, float %1684, float 0.000000e+00)  ; FMax(a,b)
  %1686 = fcmp fast ogt float %1685, 0x3F1A36E2E0000000
  %1687 = fadd fast float %1356, %1359
  %1688 = fadd fast float %1357, %1361
  %1689 = select i1 %1686, float %1687, float %1359
  %1690 = select i1 %1686, float %1688, float %1361
  %1691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1692 = extractvalue %dx.types.CBufRet.f32 %1691, 0
  %1693 = extractvalue %dx.types.CBufRet.f32 %1691, 1
  %1694 = fsub fast float %1689, %1692
  %1695 = fsub fast float %1690, %1693
  %1696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.f32 %1696, 0
  %1698 = extractvalue %dx.types.CBufRet.f32 %1696, 1
  %1699 = fmul fast float %1694, %1697
  %1700 = fmul fast float %1695, %1698
  %1701 = fsub fast float 1.000000e+00, %1700
  %1702 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1703 = extractvalue %dx.types.CBufRet.i32 %1702, 3
  %1704 = icmp eq i32 %1703, 0
  br i1 %1704, label %1711, label %1705, !dx.controlflow.hints !49

; <label>:1705                                    ; preds = %1678
  %1706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %1699, float %1701, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1707 = extractvalue %dx.types.ResRet.f32 %1706, 0
  %1708 = extractvalue %dx.types.ResRet.f32 %1706, 1
  %1709 = extractvalue %dx.types.ResRet.f32 %1706, 2
  %1710 = extractvalue %dx.types.ResRet.f32 %1706, 3
  br label %1717

; <label>:1711                                    ; preds = %1678
  %1712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1699, float %1701, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1713 = extractvalue %dx.types.ResRet.f32 %1712, 0
  %1714 = extractvalue %dx.types.ResRet.f32 %1712, 1
  %1715 = extractvalue %dx.types.ResRet.f32 %1712, 2
  %1716 = extractvalue %dx.types.ResRet.f32 %1712, 3
  br label %1717

; <label>:1717                                    ; preds = %1711, %1705
  %1718 = phi float [ %1707, %1705 ], [ %1713, %1711 ]
  %1719 = phi float [ %1708, %1705 ], [ %1714, %1711 ]
  %1720 = phi float [ %1709, %1705 ], [ %1715, %1711 ]
  %1721 = phi float [ %1710, %1705 ], [ %1716, %1711 ]
  %1722 = extractvalue %dx.types.CBufRet.f32 %1696, 3
  %1723 = fmul fast float %1722, %1719
  %1724 = fmul fast float %1723, %1718
  %1725 = fsub fast float %1723, %1724
  %1726 = fcmp fast ole float %1725, 0.000000e+00
  %1727 = extractvalue %dx.types.CBufRet.f32 %1691, 2
  %1728 = fadd fast float %1724, %1727
  %1729 = fmul fast float %1722, %1720
  %1730 = fadd fast float %1729, %1727
  %1731 = fdiv fast float 1.000000e+00, %1725
  %1732 = select i1 %1726, float 1.000000e+06, float %1731
  %1733 = fsub fast float %1363, %1728
  %1734 = fmul fast float %1732, %1733
  %1735 = call float @dx.op.unary.f32(i32 7, float %1734)  ; Saturate(value)
  %1736 = extractvalue %dx.types.CBufRet.f32 %1696, 2
  %1737 = fmul fast float %1736, %1735
  %1738 = fsub fast float %1736, %1737
  %1739 = fcmp fast olt float %1363, %1730
  %1740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1741 = extractvalue %dx.types.CBufRet.f32 %1740, 3
  %1742 = fmul fast float %1741, 3.000000e+00
  %1743 = select i1 %1739, float %1742, float 3.000000e+00
  %1744 = fmul fast float %1738, %1743
  %1745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1746 = extractvalue %dx.types.CBufRet.f32 %1745, 2
  %1747 = fmul fast float %1355, 0x3FD5555560000000
  %1748 = fmul fast float %1747, %1721
  %1749 = fmul fast float %1748, %1746
  %1750 = fmul fast float %1749, %1744
  br label %1751

; <label>:1751                                    ; preds = %1717, %1672
  %1752 = phi float [ %1750, %1717 ], [ 0.000000e+00, %1672 ]
  %1753 = icmp eq i32 %1499, 0
  br i1 %1753, label %1934, label %1754, !dx.controlflow.hints !62

; <label>:1754                                    ; preds = %1751
  %1755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1756 = extractvalue %dx.types.CBufRet.f32 %1755, 3
  %1757 = fmul fast float %1756, %1355
  %1758 = fcmp fast oeq float %1757, 0.000000e+00
  br i1 %1758, label %1773, label %1759, !dx.controlflow.hints !63

; <label>:1759                                    ; preds = %1754
  %1760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1761 = extractvalue %dx.types.CBufRet.f32 %1760, 3
  %1762 = fmul fast float %1761, %1757
  %1763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1764 = extractvalue %dx.types.CBufRet.f32 %1763, 0
  %1765 = extractvalue %dx.types.CBufRet.f32 %1763, 1
  %1766 = extractvalue %dx.types.CBufRet.f32 %1763, 2
  %1767 = fmul fast float %1764, %1762
  %1768 = fmul fast float %1765, %1762
  %1769 = fmul fast float %1766, %1762
  %1770 = call float @dx.op.unary.f32(i32 23, float %1767)  ; Log(value)
  %1771 = call float @dx.op.unary.f32(i32 23, float %1768)  ; Log(value)
  %1772 = call float @dx.op.unary.f32(i32 23, float %1769)  ; Log(value)
  br label %1773

; <label>:1773                                    ; preds = %1759, %1754
  %1774 = phi float [ %1770, %1759 ], [ 0.000000e+00, %1754 ]
  %1775 = phi float [ %1771, %1759 ], [ 0.000000e+00, %1754 ]
  %1776 = phi float [ %1772, %1759 ], [ 0.000000e+00, %1754 ]
  %1777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.f32 %1777, 0
  %1779 = extractvalue %dx.types.CBufRet.f32 %1777, 1
  %1780 = extractvalue %dx.types.CBufRet.f32 %1777, 2
  %1781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1782 = extractvalue %dx.types.CBufRet.f32 %1781, 0
  %1783 = extractvalue %dx.types.CBufRet.f32 %1781, 1
  %1784 = extractvalue %dx.types.CBufRet.f32 %1781, 2
  %1785 = fsub fast float %1359, %1782
  %1786 = fsub fast float %1361, %1783
  %1787 = fsub fast float %1363, %1784
  %1788 = fmul fast float %1785, %1778
  %1789 = fmul fast float %1786, %1779
  %1790 = fmul fast float %1787, %1780
  %1791 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.i32 %1791, 0
  %1793 = extractvalue %dx.types.CBufRet.i32 %1791, 1
  %1794 = uitofp i32 %1792 to float
  %1795 = uitofp i32 %1793 to float
  %1796 = fmul fast float %1788, %1794
  %1797 = fmul fast float %1789, %1795
  %1798 = fadd fast float %1796, 5.000000e-01
  %1799 = fadd fast float %1797, 5.000000e-01
  %1800 = call float @dx.op.unary.f32(i32 22, float %1798)  ; Frc(value)
  %1801 = call float @dx.op.unary.f32(i32 22, float %1799)  ; Frc(value)
  %1802 = call float @dx.op.unary.f32(i32 27, float %1798)  ; Round_ni(value)
  %1803 = call float @dx.op.unary.f32(i32 27, float %1799)  ; Round_ni(value)
  %1804 = fadd fast float %1802, 1.000000e+00
  %1805 = fadd fast float %1803, 1.000000e+00
  %1806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1807 = extractvalue %dx.types.CBufRet.f32 %1806, 0
  %1808 = extractvalue %dx.types.CBufRet.f32 %1806, 1
  %1809 = fmul fast float %1807, %1804
  %1810 = fmul fast float %1808, %1805
  %1811 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %18, float %1809, float %1810, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1812 = extractvalue %dx.types.ResRet.f32 %1811, 0
  %1813 = extractvalue %dx.types.ResRet.f32 %1811, 1
  %1814 = extractvalue %dx.types.ResRet.f32 %1811, 2
  %1815 = extractvalue %dx.types.ResRet.f32 %1811, 3
  %1816 = extractvalue %dx.types.CBufRet.i32 %1791, 2
  %1817 = extractvalue %dx.types.CBufRet.f32 %1806, 2
  %1818 = uitofp i32 %1816 to float
  %1819 = fadd fast float %1818, -1.000000e+00
  %1820 = fmul fast float %1819, %1812
  %1821 = fmul fast float %1819, %1813
  %1822 = fmul fast float %1819, %1814
  %1823 = fmul fast float %1819, %1815
  %1824 = fadd fast float %1820, 5.000000e-01
  %1825 = fadd fast float %1821, 5.000000e-01
  %1826 = fadd fast float %1822, 5.000000e-01
  %1827 = fadd fast float %1823, 5.000000e-01
  %1828 = fptoui float %1824 to i32
  %1829 = fptoui float %1825 to i32
  %1830 = fptoui float %1826 to i32
  %1831 = fptoui float %1827 to i32
  %1832 = uitofp i32 %1828 to float
  %1833 = uitofp i32 %1829 to float
  %1834 = uitofp i32 %1830 to float
  %1835 = uitofp i32 %1831 to float
  %1836 = fadd fast float %1832, 5.000000e-01
  %1837 = fadd fast float %1833, 5.000000e-01
  %1838 = fadd fast float %1834, 5.000000e-01
  %1839 = fadd fast float %1835, 5.000000e-01
  %1840 = fmul fast float %1836, %1817
  %1841 = fmul fast float %1837, %1817
  %1842 = fmul fast float %1838, %1817
  %1843 = fmul fast float %1839, %1817
  %1844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1840, float %1790, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1845 = extractvalue %dx.types.ResRet.f32 %1844, 0
  %1846 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1841, float %1790, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1847 = extractvalue %dx.types.ResRet.f32 %1846, 0
  %1848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1842, float %1790, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1849 = extractvalue %dx.types.ResRet.f32 %1848, 0
  %1850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1843, float %1790, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1851 = extractvalue %dx.types.ResRet.f32 %1850, 0
  %1852 = fsub fast float %1849, %1851
  %1853 = fmul fast float %1852, %1800
  %1854 = fadd fast float %1853, %1851
  %1855 = fsub fast float %1847, %1845
  %1856 = fmul fast float %1855, %1800
  %1857 = fadd fast float %1856, %1845
  %1858 = fsub fast float %1857, %1854
  %1859 = fmul fast float %1858, %1801
  %1860 = fadd fast float %1859, %1854
  %1861 = fcmp fast ogt float %1860, 0.000000e+00
  br i1 %1861, label %1862, label %1930, !dx.controlflow.hints !64

; <label>:1862                                    ; preds = %1773
  %1863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.f32 %1863, 0
  %1865 = extractvalue %dx.types.CBufRet.f32 %1863, 1
  %1866 = extractvalue %dx.types.CBufRet.f32 %1863, 2
  %1867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1868 = extractvalue %dx.types.CBufRet.f32 %1867, 0
  %1869 = extractvalue %dx.types.CBufRet.f32 %1867, 1
  %1870 = extractvalue %dx.types.CBufRet.f32 %1867, 2
  %1871 = fmul fast float %1786, %1778
  %1872 = fmul fast float %1787, %1778
  %1873 = fadd fast float %1788, %1868
  %1874 = fadd fast float %1871, %1869
  %1875 = fadd fast float %1872, %1870
  %1876 = fmul fast float %1873, %1864
  %1877 = fmul fast float %1874, %1864
  %1878 = fmul fast float %1875, %1864
  %1879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %1876, float %1877, float %1878, float undef, i32 0, i32 0, i32 0, float %1774)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1880 = extractvalue %dx.types.ResRet.f32 %1879, 0
  %1881 = fmul fast float %1873, %1865
  %1882 = fmul fast float %1874, %1865
  %1883 = fmul fast float %1875, %1865
  %1884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %1881, float %1882, float %1883, float undef, i32 0, i32 0, i32 0, float %1775)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1885 = extractvalue %dx.types.ResRet.f32 %1884, 1
  %1886 = fmul fast float %1873, %1866
  %1887 = fmul fast float %1874, %1866
  %1888 = fmul fast float %1875, %1866
  %1889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %1886, float %1887, float %1888, float undef, i32 0, i32 0, i32 0, float %1776)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1890 = extractvalue %dx.types.ResRet.f32 %1889, 2
  %1891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1892 = extractvalue %dx.types.CBufRet.f32 %1891, 1
  %1893 = fmul fast float %1885, %1880
  %1894 = fmul fast float %1893, %1890
  %1895 = call float @dx.op.unary.f32(i32 23, float %1894)  ; Log(value)
  %1896 = fmul fast float %1895, %1892
  %1897 = call float @dx.op.unary.f32(i32 21, float %1896)  ; Exp(value)
  %1898 = extractvalue %dx.types.CBufRet.f32 %1891, 2
  %1899 = fmul fast float %1860, %1860
  %1900 = fmul fast float %1899, %1897
  %1901 = fmul fast float %1900, %1898
  %1902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1903 = extractvalue %dx.types.CBufRet.f32 %1902, 3
  %1904 = fmul fast float %1903, %1901
  %1905 = bitcast float %1904 to i32
  %1906 = sitofp i32 %1905 to float
  %1907 = fptosi float %1906 to i32
  %1908 = bitcast i32 %1907 to float
  %1909 = fsub fast float 1.000000e+00, %1901
  %1910 = bitcast float %1909 to i32
  %1911 = sitofp i32 %1910 to float
  %1912 = fptosi float %1911 to i32
  %1913 = bitcast i32 %1912 to float
  %1914 = fadd fast float %1908, %1913
  %1915 = bitcast float %1914 to i32
  %1916 = sub nsw i32 2129859010, %1915
  %1917 = bitcast i32 %1916 to float
  %1918 = fmul fast float %1917, %1908
  %1919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1920 = extractvalue %dx.types.CBufRet.f32 %1919, 2
  %1921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.f32 %1921, 0
  %1923 = fmul fast float %1918, %1922
  %1924 = fadd fast float %1923, 1.000000e+00
  %1925 = bitcast float %1924 to i32
  %1926 = sub nsw i32 2129859010, %1925
  %1927 = bitcast i32 %1926 to float
  %1928 = fmul fast float %1918, %1920
  %1929 = fmul fast float %1928, %1927
  br label %1930

; <label>:1930                                    ; preds = %1862, %1773
  %1931 = phi float [ %1929, %1862 ], [ %1860, %1773 ]
  %1932 = fmul fast float %1931, %1355
  %1933 = fadd fast float %1932, %1752
  br label %1934

; <label>:1934                                    ; preds = %1930, %1751
  %1935 = phi float [ %1933, %1930 ], [ %1752, %1751 ]
  %1936 = icmp eq i32 %1676, 0
  br i1 %1936, label %1968, label %1937, !dx.controlflow.hints !65

; <label>:1937                                    ; preds = %1934
  %1938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1939 = extractvalue %dx.types.CBufRet.f32 %1938, 1
  %1940 = fsub fast float %1355, %1939
  %1941 = extractvalue %dx.types.CBufRet.f32 %1938, 3
  %1942 = fmul fast float %1940, %1941
  %1943 = call float @dx.op.unary.f32(i32 7, float %1942)  ; Saturate(value)
  %1944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1945 = extractvalue %dx.types.CBufRet.f32 %1944, 3
  %1946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1947 = extractvalue %dx.types.CBufRet.f32 %1946, 2
  %1948 = fsub fast float %1947, %1674
  %1949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1950 = extractvalue %dx.types.CBufRet.f32 %1949, 3
  %1951 = fmul fast float %1948, %1950
  %1952 = call float @dx.op.unary.f32(i32 7, float %1951)  ; Saturate(value)
  %1953 = fmul fast float %1952, %1945
  %1954 = extractvalue %dx.types.CBufRet.f32 %1949, 0
  %1955 = fsub fast float %1355, %1954
  %1956 = extractvalue %dx.types.CBufRet.f32 %1949, 1
  %1957 = fmul fast float %1955, %1956
  %1958 = call float @dx.op.unary.f32(i32 7, float %1957)  ; Saturate(value)
  %1959 = fsub fast float 1.000000e+00, %1943
  %1960 = fmul fast float %1958, %1959
  %1961 = fadd fast float %1960, %1943
  %1962 = extractvalue %dx.types.CBufRet.f32 %1938, 0
  %1963 = fsub fast float %1953, %1962
  %1964 = fmul fast float %1963, %1961
  %1965 = fadd fast float %1964, %1962
  %1966 = fmul fast float %1965, %1355
  %1967 = fadd fast float %1966, %1935
  br label %1968

; <label>:1968                                    ; preds = %1937, %1934
  %1969 = phi float [ %1967, %1937 ], [ %1935, %1934 ]
  %1970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1971 = extractvalue %dx.types.CBufRet.f32 %1970, 3
  %1972 = fmul fast float %1969, 0xBFF7154760000000
  %1973 = fmul fast float %1972, %1971
  %1974 = call float @dx.op.unary.f32(i32 21, float %1973)  ; Exp(value)
  %1975 = call float @dx.op.unary.f32(i32 7, float %1974)  ; Saturate(value)
  %1976 = fmul fast float %1975, %1351
  %1977 = fmul fast float %1975, %1352
  %1978 = fmul fast float %1975, %1353
  %1979 = fadd fast float %1976, %207
  %1980 = fadd fast float %1977, %208
  %1981 = fadd fast float %1978, %209
  %1982 = fsub fast float 1.000000e+00, %1321
  %1983 = fmul fast float %1313, %498
  %1984 = fmul fast float %1983, %1982
  %1985 = fmul fast float %1984, %1979
  %1986 = fmul fast float %1314, %498
  %1987 = fmul fast float %1986, %1982
  %1988 = fmul fast float %1987, %1980
  %1989 = fmul fast float %1315, %498
  %1990 = fmul fast float %1989, %1982
  %1991 = fmul fast float %1990, %1981
  %1992 = fadd fast float %1985, %499
  %1993 = fadd fast float %1988, %500
  %1994 = fadd fast float %1991, %501
  %1995 = fdiv fast float %1297, %938
  %1996 = fadd fast float %938, %505
  %1997 = fmul fast float %505, %505
  %1998 = fmul fast float %1996, %1996
  %1999 = fsub fast float %1997, %1998
  %2000 = fmul fast float %1999, -5.000000e-01
  %2001 = fmul fast float %2000, %1995
  %2002 = fadd fast float %2001, %497
  %2003 = fadd fast float %1297, %507
  %2004 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2005 = extractvalue %dx.types.CBufRet.i32 %2004, 0
  %2006 = icmp eq i32 %2005, 0
  br i1 %2006, label %2033, label %2007, !dx.controlflow.hints !69

; <label>:2007                                    ; preds = %1968
  %2008 = icmp ne i32 %512, 0
  %2009 = zext i1 %2008 to i32
  %2010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2011 = extractvalue %dx.types.CBufRet.f32 %2010, 2
  %2012 = extractvalue %dx.types.CBufRet.f32 %2010, 0
  %2013 = fsub fast float %1996, %2012
  %2014 = fmul fast float %2013, %2011
  %2015 = call float @dx.op.unary.f32(i32 7, float %2014)  ; Saturate(value)
  %2016 = fadd fast float %2015, -5.000000e-01
  %2017 = fmul fast float %2016, 2.000000e+00
  %2018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2019 = extractvalue %dx.types.CBufRet.f32 %2018, 2
  %2020 = fcmp fast olt float %2017, %2019
  br i1 %2020, label %2021, label %2033, !dx.controlflow.hints !70

; <label>:2021                                    ; preds = %2007
  %2022 = fmul fast float %2017, %2017
  %2023 = fmul fast float %1982, %498
  %2024 = fmul fast float %2017, %2023
  %2025 = fmul fast float %2022, %2023
  %2026 = fmul fast float %2024, %2022
  %2027 = fmul fast float %2022, %2022
  %2028 = fmul fast float %2027, %2023
  %2029 = fadd fast float %2024, %508
  %2030 = fadd fast float %2025, %509
  %2031 = fadd fast float %2026, %510
  %2032 = fadd fast float %2028, %511
  br label %2033

; <label>:2033                                    ; preds = %2021, %2007, %1968
  %2034 = phi float [ %508, %1968 ], [ %2029, %2021 ], [ %508, %2007 ]
  %2035 = phi float [ %509, %1968 ], [ %2030, %2021 ], [ %509, %2007 ]
  %2036 = phi float [ %510, %1968 ], [ %2031, %2021 ], [ %510, %2007 ]
  %2037 = phi float [ %511, %1968 ], [ %2032, %2021 ], [ %511, %2007 ]
  %2038 = phi i32 [ %512, %1968 ], [ 1, %2021 ], [ %2009, %2007 ]
  %2039 = fmul fast float %1321, %498
  br label %2040

; <label>:2040                                    ; preds = %2033, %1316
  %2041 = phi float [ %1317, %1316 ], [ %1996, %2033 ]
  %2042 = phi i32 [ %493, %1316 ], [ %1673, %2033 ]
  %2043 = phi float [ %494, %1316 ], [ %1674, %2033 ]
  %2044 = phi float [ %497, %1316 ], [ %2002, %2033 ]
  %2045 = phi float [ %498, %1316 ], [ %2039, %2033 ]
  %2046 = phi float [ %499, %1316 ], [ %1992, %2033 ]
  %2047 = phi float [ %500, %1316 ], [ %1993, %2033 ]
  %2048 = phi float [ %501, %1316 ], [ %1994, %2033 ]
  %2049 = phi float [ %507, %1316 ], [ %2003, %2033 ]
  %2050 = phi float [ %508, %1316 ], [ %2034, %2033 ]
  %2051 = phi float [ %509, %1316 ], [ %2035, %2033 ]
  %2052 = phi float [ %510, %1316 ], [ %2036, %2033 ]
  %2053 = phi float [ %511, %1316 ], [ %2037, %2033 ]
  %2054 = phi i32 [ %512, %1316 ], [ %2038, %2033 ]
  %2055 = fmul fast float %938, %283
  %2056 = fmul fast float %938, %284
  %2057 = fmul fast float %938, %285
  %2058 = fadd fast float %2055, %502
  %2059 = fadd fast float %2056, %503
  %2060 = fadd fast float %2057, %504
  %2061 = fcmp fast olt float %2041, %469
  %2062 = extractvalue %dx.types.CBufRet.f32 %1302, 2
  %2063 = fcmp fast olt float %2062, %2045
  %2064 = and i1 %2061, %2063
  br i1 %2064, label %492, label %2065

; <label>:2065                                    ; preds = %2040
  br label %2066

; <label>:2066                                    ; preds = %2065, %465
  %2067 = phi float [ 0.000000e+00, %465 ], [ %2044, %2065 ]
  %2068 = phi float [ 1.000000e+00, %465 ], [ %2045, %2065 ]
  %2069 = phi float [ 0.000000e+00, %465 ], [ %2046, %2065 ]
  %2070 = phi float [ 0.000000e+00, %465 ], [ %2047, %2065 ]
  %2071 = phi float [ 0.000000e+00, %465 ], [ %2048, %2065 ]
  %2072 = phi float [ 0.000000e+00, %465 ], [ %2049, %2065 ]
  %2073 = phi float [ 0.000000e+00, %465 ], [ %2050, %2065 ]
  %2074 = phi float [ 0.000000e+00, %465 ], [ %2051, %2065 ]
  %2075 = phi float [ 0.000000e+00, %465 ], [ %2052, %2065 ]
  %2076 = phi float [ 0.000000e+00, %465 ], [ %2053, %2065 ]
  %2077 = phi i32 [ 0, %465 ], [ %2054, %2065 ]
  %2078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2079 = extractvalue %dx.types.CBufRet.i32 %2078, 0
  %2080 = icmp eq i32 %2079, 0
  br i1 %2080, label %2122, label %2081, !dx.controlflow.hints !71

; <label>:2081                                    ; preds = %2066
  %2082 = icmp eq i32 %2077, 0
  br i1 %2082, label %2121, label %2083, !dx.controlflow.hints !72

; <label>:2083                                    ; preds = %2081
  %2084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2085 = extractvalue %dx.types.CBufRet.i32 %2084, 2
  %2086 = icmp eq i32 %2085, 0
  br i1 %2086, label %2093, label %2087, !dx.controlflow.hints !73

; <label>:2087                                    ; preds = %2083
  %2088 = fsub fast float 1.000000e+00, %2068
  %2089 = fdiv fast float %2073, %2088
  %2090 = fdiv fast float %2074, %2088
  %2091 = fdiv fast float %2075, %2088
  %2092 = fdiv fast float %2076, %2088
  br label %2098

; <label>:2093                                    ; preds = %2083
  %2094 = fadd fast float %2073, %2068
  %2095 = fadd fast float %2074, %2068
  %2096 = fadd fast float %2075, %2068
  %2097 = fadd fast float %2076, %2068
  br label %2098

; <label>:2098                                    ; preds = %2093, %2087
  %2099 = phi float [ %2089, %2087 ], [ %2094, %2093 ]
  %2100 = phi float [ %2090, %2087 ], [ %2095, %2093 ]
  %2101 = phi float [ %2091, %2087 ], [ %2096, %2093 ]
  %2102 = phi float [ %2092, %2087 ], [ %2097, %2093 ]
  %2103 = call float @dx.op.binary.f32(i32 35, float %2099, float -1.000000e+00)  ; FMax(a,b)
  %2104 = call float @dx.op.binary.f32(i32 35, float %2100, float -1.000000e+00)  ; FMax(a,b)
  %2105 = call float @dx.op.binary.f32(i32 35, float %2101, float -1.000000e+00)  ; FMax(a,b)
  %2106 = call float @dx.op.binary.f32(i32 35, float %2102, float -1.000000e+00)  ; FMax(a,b)
  %2107 = call float @dx.op.binary.f32(i32 36, float %2103, float 1.000000e+00)  ; FMin(a,b)
  %2108 = call float @dx.op.binary.f32(i32 36, float %2104, float 1.000000e+00)  ; FMin(a,b)
  %2109 = call float @dx.op.binary.f32(i32 36, float %2105, float 1.000000e+00)  ; FMin(a,b)
  %2110 = call float @dx.op.binary.f32(i32 36, float %2106, float 1.000000e+00)  ; FMin(a,b)
  %2111 = fmul fast float %2107, 1.500000e+00
  %2112 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2109, float %2111)  ; FMad(a,b,c)
  %2113 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2108, float 0.000000e+00)  ; FMad(a,b,c)
  %2114 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2110, float %2113)  ; FMad(a,b,c)
  %2115 = fmul fast float %2107, 0x3FEBB67AE0000000
  %2116 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2109, float %2115)  ; FMad(a,b,c)
  %2117 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2108, float 0.000000e+00)  ; FMad(a,b,c)
  %2118 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2110, float %2117)  ; FMad(a,b,c)
  %2119 = fadd fast float %2112, 5.000000e-01
  %2120 = fadd fast float %2116, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 0, float %2119, float %2114, float %2120, float %2118, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2122

; <label>:2121                                    ; preds = %2081
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2122

; <label>:2122                                    ; preds = %2121, %2098, %2066
  %2123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2124 = extractvalue %dx.types.CBufRet.f32 %2123, 2
  %2125 = fsub fast float %2068, %2124
  %2126 = fdiv fast float %2125, %2124
  %2127 = call float @dx.op.unary.f32(i32 7, float %2126)  ; Saturate(value)
  %2128 = fmul fast float %2127, 2.000000e+00
  %2129 = fsub fast float 3.000000e+00, %2128
  %2130 = fmul fast float %2127, %2127
  %2131 = fmul fast float %2130, %2068
  %2132 = fmul fast float %2131, %2129
  %2133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %2134 = extractvalue %dx.types.CBufRet.f32 %2133, 0
  %2135 = extractvalue %dx.types.CBufRet.f32 %2133, 1
  %2136 = extractvalue %dx.types.CBufRet.f32 %2133, 2
  %2137 = call float @dx.op.dot3.f32(i32 55, float %283, float %284, float %285, float %2134, float %2135, float %2136)  ; Dot3(ax,ay,az,bx,by,bz)
  %2138 = fmul fast float %2137, %2067
  %2139 = fcmp fast ogt float %2072, 0.000000e+00
  %2140 = fdiv fast float 1.000000e+00, %2072
  %2141 = fmul fast float %2138, %2140
  %2142 = select i1 %2139, float %2141, float %294
  %2143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2144 = extractvalue %dx.types.CBufRet.f32 %2143, 0
  %2145 = extractvalue %dx.types.CBufRet.f32 %2143, 1
  %2146 = extractvalue %dx.types.CBufRet.f32 %2143, 2
  %2147 = fmul fast float %2144, %247
  %2148 = fmul fast float %2145, %247
  %2149 = fmul fast float %2146, %247
  %2150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2151 = extractvalue %dx.types.CBufRet.f32 %2150, 0
  %2152 = extractvalue %dx.types.CBufRet.f32 %2150, 1
  %2153 = extractvalue %dx.types.CBufRet.f32 %2150, 2
  %2154 = fmul fast float %2151, %248
  %2155 = fmul fast float %2152, %248
  %2156 = fmul fast float %2153, %248
  %2157 = fadd fast float %2154, %2147
  %2158 = fadd fast float %2155, %2148
  %2159 = fadd fast float %2156, %2149
  %2160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2161 = extractvalue %dx.types.CBufRet.f32 %2160, 0
  %2162 = extractvalue %dx.types.CBufRet.f32 %2160, 1
  %2163 = extractvalue %dx.types.CBufRet.f32 %2160, 2
  %2164 = fadd fast float %2157, %2161
  %2165 = fadd fast float %2158, %2162
  %2166 = fadd fast float %2159, %2163
  %2167 = fmul fast float %2164, %2142
  %2168 = fmul fast float %2165, %2142
  %2169 = fmul fast float %2166, %2142
  %2170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2171 = extractvalue %dx.types.CBufRet.f32 %2170, 0
  %2172 = extractvalue %dx.types.CBufRet.f32 %2170, 1
  %2173 = extractvalue %dx.types.CBufRet.f32 %2170, 2
  %2174 = extractvalue %dx.types.CBufRet.f32 %2170, 3
  %2175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2176 = extractvalue %dx.types.CBufRet.f32 %2175, 0
  %2177 = extractvalue %dx.types.CBufRet.f32 %2175, 1
  %2178 = extractvalue %dx.types.CBufRet.f32 %2175, 2
  %2179 = extractvalue %dx.types.CBufRet.f32 %2175, 3
  %2180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2181 = extractvalue %dx.types.CBufRet.f32 %2180, 0
  %2182 = extractvalue %dx.types.CBufRet.f32 %2180, 1
  %2183 = extractvalue %dx.types.CBufRet.f32 %2180, 2
  %2184 = extractvalue %dx.types.CBufRet.f32 %2180, 3
  %2185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2186 = extractvalue %dx.types.CBufRet.f32 %2185, 0
  %2187 = extractvalue %dx.types.CBufRet.f32 %2185, 1
  %2188 = extractvalue %dx.types.CBufRet.f32 %2185, 2
  %2189 = extractvalue %dx.types.CBufRet.f32 %2185, 3
  %2190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2191 = extractvalue %dx.types.CBufRet.f32 %2190, 3
  %2192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2193 = extractvalue %dx.types.CBufRet.f32 %2192, 3
  %2194 = extractvalue %dx.types.CBufRet.f32 %2192, 0
  %2195 = extractvalue %dx.types.CBufRet.f32 %2192, 1
  %2196 = extractvalue %dx.types.CBufRet.f32 %2192, 2
  %2197 = fcmp fast olt float %2196, -5.000000e-01
  %2198 = call float @dx.op.dot3.f32(i32 55, float %2167, float %2168, float %2169, float %2167, float %2168, float %2169)  ; Dot3(ax,ay,az,bx,by,bz)
  %2199 = call float @dx.op.unary.f32(i32 25, float %2198)  ; Rsqrt(value)
  %2200 = fmul fast float %2199, %2198
  %2201 = fmul fast float %2199, %2167
  %2202 = fmul fast float %2199, %2168
  %2203 = fmul fast float %2199, %2169
  %2204 = fadd fast float %2200, %2174
  %2205 = call float @dx.op.dot3.f32(i32 55, float %2201, float %2202, float %2203, float %2171, float %2172, float %2173)  ; Dot3(ax,ay,az,bx,by,bz)
  %2206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2207 = extractvalue %dx.types.CBufRet.i32 %2206, 1
  %2208 = and i32 %2207, 1
  %2209 = icmp ne i32 %2208, 0
  %2210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2211 = extractvalue %dx.types.CBufRet.f32 %2210, 2
  %2212 = fcmp fast ogt float %2211, 0.000000e+00
  %2213 = and i1 %2209, %2212
  br i1 %2213, label %2214, label %2620, !dx.controlflow.hints !74

; <label>:2214                                    ; preds = %2122
  %2215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2216 = extractvalue %dx.types.CBufRet.f32 %2215, 3
  %2217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2218 = extractvalue %dx.types.CBufRet.f32 %2217, 2
  %2219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2220 = extractvalue %dx.types.CBufRet.f32 %2219, 2
  %2221 = fsub fast float %2218, %2220
  %2222 = and i32 %2207, 2
  %2223 = extractvalue %dx.types.CBufRet.i32 %2206, 0
  %2224 = call i32 @dx.op.binary.i32(i32 40, i32 %2223, i32 3)  ; UMin(a,b)
  %2225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2226 = extractvalue %dx.types.CBufRet.f32 %2225, 0
  %2227 = extractvalue %dx.types.CBufRet.f32 %2225, 1
  %2228 = extractvalue %dx.types.CBufRet.f32 %2219, 0
  %2229 = extractvalue %dx.types.CBufRet.f32 %2219, 1
  %2230 = fsub fast float %2226, %2228
  %2231 = fsub fast float %2227, %2229
  %2232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2233 = extractvalue %dx.types.CBufRet.f32 %2232, 0
  %2234 = fcmp fast ogt float %2233, 0.000000e+00
  %2235 = fsub fast float -0.000000e+00, %2230
  %2236 = fsub fast float -0.000000e+00, %2231
  %2237 = call float @dx.op.dot2.f32(i32 54, float %2201, float %2202, float %2201, float %2202)  ; Dot2(ax,ay,bx,by)
  %2238 = call float @dx.op.dot2.f32(i32 54, float %2201, float %2202, float %2235, float %2236)  ; Dot2(ax,ay,bx,by)
  %2239 = fmul fast float %2238, 2.000000e+00
  %2240 = call float @dx.op.dot2.f32(i32 54, float %2235, float %2236, float %2235, float %2236)  ; Dot2(ax,ay,bx,by)
  %2241 = fmul fast float %2233, %2233
  %2242 = fsub fast float %2240, %2241
  %2243 = fmul fast float %2239, %2239
  %2244 = fmul fast float %2237, 4.000000e+00
  %2245 = fmul fast float %2244, %2242
  %2246 = fsub fast float %2243, %2245
  %2247 = fcmp fast ogt float %2246, 0.000000e+00
  br i1 %2247, label %2248, label %2263, !dx.controlflow.hints !75

; <label>:2248                                    ; preds = %2214
  %2249 = fcmp fast ogt float %2239, 0.000000e+00
  %2250 = call float @dx.op.unary.f32(i32 24, float %2246)  ; Sqrt(value)
  %2251 = fsub fast float -0.000000e+00, %2250
  %2252 = select i1 %2249, float %2250, float %2251
  %2253 = fadd fast float %2252, %2239
  %2254 = fmul float %2253, -5.000000e-01
  %2255 = fdiv fast float %2254, %2237
  %2256 = call float @dx.op.binary.f32(i32 35, float %2255, float 0.000000e+00)  ; FMax(a,b)
  %2257 = call float @dx.op.binary.f32(i32 36, float %2200, float %2256)  ; FMin(a,b)
  %2258 = fdiv fast float %2242, %2254
  %2259 = call float @dx.op.binary.f32(i32 35, float %2258, float 0.000000e+00)  ; FMax(a,b)
  %2260 = call float @dx.op.binary.f32(i32 36, float %2200, float %2259)  ; FMin(a,b)
  %2261 = call float @dx.op.binary.f32(i32 36, float %2257, float %2260)  ; FMin(a,b)
  %2262 = call float @dx.op.binary.f32(i32 35, float %2257, float %2260)  ; FMax(a,b)
  br label %2263

; <label>:2263                                    ; preds = %2248, %2214
  %2264 = phi float [ %2262, %2248 ], [ -1.000000e+00, %2214 ]
  %2265 = phi float [ %2261, %2248 ], [ -1.000000e+00, %2214 ]
  %2266 = phi i1 [ true, %2248 ], [ false, %2214 ]
  %2267 = and i1 %2234, %2266
  br i1 %2267, label %2268, label %2270, !dx.controlflow.hints !76

; <label>:2268                                    ; preds = %2263
  %2269 = fcmp fast oeq float %2265, %2264
  br i1 %2269, label %2573, label %2271, !dx.controlflow.hints !77

; <label>:2270                                    ; preds = %2263
  br i1 %2234, label %2573, label %2271, !dx.controlflow.hints !78

; <label>:2271                                    ; preds = %2270, %2268
  %2272 = phi float [ %2200, %2270 ], [ %2264, %2268 ]
  %2273 = phi float [ 0.000000e+00, %2270 ], [ %2265, %2268 ]
  %2274 = icmp ne i32 %2222, 0
  %2275 = fmul fast float %2272, %2203
  %2276 = fadd fast float %2275, %2216
  %2277 = fmul fast float %2276, %2272
  %2278 = select i1 %2274, float 0.000000e+00, float %2277
  %2279 = fcmp fast oeq float %2203, 0.000000e+00
  %2280 = fdiv fast float %2221, %2203
  %2281 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2280)  ; FMax(a,b)
  %2282 = select i1 %2279, float %2272, float %2281
  %2283 = call float @dx.op.binary.f32(i32 36, float %2272, float %2282)  ; FMin(a,b)
  %2284 = fcmp fast ogt float %2203, 0.000000e+00
  %2285 = fcmp fast olt float %2221, 0.000000e+00
  br i1 %2284, label %2286, label %2343, !dx.controlflow.hints !79

; <label>:2286                                    ; preds = %2271
  %2287 = icmp eq i32 %2222, 0
  br i1 %2285, label %2288, label %2332, !dx.controlflow.hints !80

; <label>:2288                                    ; preds = %2286
  %2289 = select i1 %2287, float %2272, float 0.000000e+00
  %2290 = fsub fast float -0.000000e+00, %2289
  %2291 = call float @dx.op.unary.f32(i32 6, float %2290)  ; FAbs(value)
  %2292 = fmul fast float %2289, %2203
  %2293 = fadd fast float %2292, %2216
  %2294 = fmul fast float %2291, %2293
  %2295 = fsub fast float %2278, %2294
  %2296 = fsub fast float %2272, %2291
  %2297 = select i1 %2287, float %2296, float 0.000000e+00
  %2298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2299 = extractvalue %dx.types.CBufRet.f32 %2298, 0
  %2300 = extractvalue %dx.types.CBufRet.f32 %2298, 1
  %2301 = extractvalue %dx.types.CBufRet.f32 %2298, 2
  %2302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2303 = extractvalue %dx.types.CBufRet.f32 %2302, 0
  %2304 = extractvalue %dx.types.CBufRet.f32 %2302, 1
  %2305 = extractvalue %dx.types.CBufRet.f32 %2302, 2
  %2306 = extractvalue %dx.types.CBufRet.f32 %2302, 3
  %2307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2308 = extractvalue %dx.types.CBufRet.f32 %2307, 3
  %2309 = call float @dx.op.binary.f32(i32 36, float %2295, float %2308)  ; FMin(a,b)
  %2310 = fmul fast float %2306, %2297
  %2311 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  %2312 = fsub fast float %2303, %2299
  %2313 = fsub fast float %2304, %2300
  %2314 = fsub fast float %2305, %2301
  %2315 = fmul fast float %2311, %2312
  %2316 = fmul fast float %2311, %2313
  %2317 = fmul fast float %2311, %2314
  %2318 = fadd fast float %2315, %2299
  %2319 = fadd fast float %2316, %2300
  %2320 = fadd fast float %2317, %2301
  %2321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2322 = extractvalue %dx.types.CBufRet.f32 %2321, 0
  %2323 = extractvalue %dx.types.CBufRet.f32 %2321, 1
  %2324 = fadd fast float %2323, %2322
  %2325 = call float @dx.op.unary.f32(i32 7, float %2324)  ; Saturate(value)
  %2326 = extractvalue %dx.types.CBufRet.f32 %2321, 2
  %2327 = extractvalue %dx.types.CBufRet.f32 %2321, 3
  %2328 = fadd fast float %2327, %2326
  %2329 = call float @dx.op.unary.f32(i32 7, float %2328)  ; Saturate(value)
  %2330 = fmul fast float %2325, %2309
  %2331 = fmul fast float %2330, %2329
  br label %2573

; <label>:2332                                    ; preds = %2286
  br i1 %2287, label %2333, label %2354, !dx.controlflow.hints !81

; <label>:2333                                    ; preds = %2332
  %2334 = call float @dx.op.binary.f32(i32 36, float %2283, float %2273)  ; FMin(a,b)
  %2335 = fsub fast float %2283, %2334
  %2336 = fsub fast float %2335, %2272
  %2337 = call float @dx.op.unary.f32(i32 6, float %2336)  ; FAbs(value)
  %2338 = fadd fast float %2335, %2272
  %2339 = fmul fast float %2338, %2203
  %2340 = fadd fast float %2339, %2216
  %2341 = fmul fast float %2340, %2337
  %2342 = fsub fast float %2278, %2341
  br label %2354

; <label>:2343                                    ; preds = %2271
  br i1 %2285, label %2344, label %2354, !dx.controlflow.hints !82

; <label>:2344                                    ; preds = %2343
  %2345 = call float @dx.op.binary.f32(i32 35, float %2273, float %2283)  ; FMax(a,b)
  %2346 = icmp eq i32 %2222, 0
  %2347 = select i1 %2346, float %2283, float 0.000000e+00
  %2348 = fsub fast float -0.000000e+00, %2347
  %2349 = call float @dx.op.unary.f32(i32 6, float %2348)  ; FAbs(value)
  %2350 = fmul fast float %2347, %2203
  %2351 = fadd fast float %2350, %2216
  %2352 = fmul fast float %2349, %2351
  %2353 = fsub fast float %2278, %2352
  br label %2354

; <label>:2354                                    ; preds = %2344, %2343, %2333, %2332
  %2355 = phi float [ %2273, %2332 ], [ %2273, %2333 ], [ %2345, %2344 ], [ %2273, %2343 ]
  %2356 = phi float [ 0.000000e+00, %2332 ], [ %2337, %2333 ], [ %2349, %2344 ], [ 0.000000e+00, %2343 ]
  %2357 = phi float [ %2278, %2332 ], [ %2342, %2333 ], [ %2353, %2344 ], [ %2278, %2343 ]
  %2358 = phi float [ %2283, %2332 ], [ %2283, %2333 ], [ %2272, %2344 ], [ %2272, %2343 ]
  %2359 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 0
  store float -1.000000e+00, float* %2359, align 4, !tbaa !83, !noalias !87
  %2360 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 1
  store float -1.000000e+00, float* %2360, align 4, !tbaa !83, !noalias !87
  %2361 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 2
  store float -1.000000e+00, float* %2361, align 4, !tbaa !83, !noalias !87
  %2362 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 0
  store float -1.000000e+00, float* %2362, align 4, !tbaa !83, !noalias !87
  %2363 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 1
  store float -1.000000e+00, float* %2363, align 4, !tbaa !83, !noalias !87
  %2364 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 2
  store float -1.000000e+00, float* %2364, align 4, !tbaa !83, !noalias !87
  %2365 = icmp sgt i32 %2224, 0
  br i1 %2365, label %2366, label %2427

; <label>:2366                                    ; preds = %2354
  br label %2367

; <label>:2367                                    ; preds = %2416, %2366
  %2368 = phi i32 [ %2417, %2416 ], [ 0, %2366 ]
  %2369 = phi i32 [ %2418, %2416 ], [ 0, %2366 ]
  %2370 = add nuw i32 %2369, 171
  %2371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %2370)  ; CBufferLoadLegacy(handle,regIndex)
  %2372 = extractvalue %dx.types.CBufRet.f32 %2371, 0
  %2373 = extractvalue %dx.types.CBufRet.f32 %2371, 1
  %2374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2375 = extractvalue %dx.types.CBufRet.f32 %2374, 0
  %2376 = extractvalue %dx.types.CBufRet.f32 %2374, 1
  %2377 = fsub fast float %2372, %2375
  %2378 = fsub fast float %2373, %2376
  %2379 = extractvalue %dx.types.CBufRet.f32 %2371, 2
  %2380 = fsub fast float -0.000000e+00, %2377
  %2381 = fsub fast float -0.000000e+00, %2378
  %2382 = call float @dx.op.dot2.f32(i32 54, float %2201, float %2202, float %2380, float %2381)  ; Dot2(ax,ay,bx,by)
  %2383 = fmul fast float %2382, 2.000000e+00
  %2384 = call float @dx.op.dot2.f32(i32 54, float %2380, float %2381, float %2380, float %2381)  ; Dot2(ax,ay,bx,by)
  %2385 = fmul fast float %2379, %2379
  %2386 = fsub fast float %2384, %2385
  %2387 = fmul fast float %2383, %2383
  %2388 = fmul fast float %2244, %2386
  %2389 = fsub fast float %2387, %2388
  %2390 = fcmp fast ogt float %2389, 0.000000e+00
  br i1 %2390, label %2391, label %2406, !dx.controlflow.hints !75

; <label>:2391                                    ; preds = %2367
  %2392 = fcmp fast ogt float %2383, 0.000000e+00
  %2393 = call float @dx.op.unary.f32(i32 24, float %2389)  ; Sqrt(value)
  %2394 = fsub fast float -0.000000e+00, %2393
  %2395 = select i1 %2392, float %2393, float %2394
  %2396 = fadd fast float %2395, %2383
  %2397 = fmul float %2396, -5.000000e-01
  %2398 = fdiv fast float %2397, %2237
  %2399 = call float @dx.op.binary.f32(i32 35, float %2398, float 0.000000e+00)  ; FMax(a,b)
  %2400 = call float @dx.op.binary.f32(i32 36, float %2272, float %2399)  ; FMin(a,b)
  %2401 = fdiv fast float %2386, %2397
  %2402 = call float @dx.op.binary.f32(i32 35, float %2401, float 0.000000e+00)  ; FMax(a,b)
  %2403 = call float @dx.op.binary.f32(i32 36, float %2272, float %2402)  ; FMin(a,b)
  %2404 = call float @dx.op.binary.f32(i32 36, float %2400, float %2403)  ; FMin(a,b)
  %2405 = call float @dx.op.binary.f32(i32 35, float %2400, float %2403)  ; FMax(a,b)
  br label %2406

; <label>:2406                                    ; preds = %2391, %2367
  %2407 = phi float [ %2405, %2391 ], [ -1.000000e+00, %2367 ]
  %2408 = phi float [ %2404, %2391 ], [ -1.000000e+00, %2367 ]
  %2409 = phi i1 [ true, %2391 ], [ false, %2367 ]
  br i1 %2409, label %2410, label %2416, !dx.controlflow.hints !98

; <label>:2410                                    ; preds = %2406
  %2411 = call float @dx.op.binary.f32(i32 35, float %2355, float %2408)  ; FMax(a,b)
  %2412 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2369
  store float %2411, float* %2412, align 4, !tbaa !83, !noalias !87
  %2413 = call float @dx.op.binary.f32(i32 35, float %2355, float %2407)  ; FMax(a,b)
  %2414 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %2369
  store float %2413, float* %2414, align 4, !tbaa !83, !noalias !87
  %2415 = add nsw i32 %2368, 1
  br label %2416

; <label>:2416                                    ; preds = %2410, %2406
  %2417 = phi i32 [ %2415, %2410 ], [ %2368, %2406 ]
  %2418 = add nuw nsw i32 %2369, 1
  %2419 = icmp eq i32 %2418, %2224
  br i1 %2419, label %2420, label %2367

; <label>:2420                                    ; preds = %2416
  %2421 = load float, float* %2361, align 4, !tbaa !83, !alias.scope !99, !noalias !102
  %2422 = load float, float* %2360, align 4, !tbaa !83, !alias.scope !105, !noalias !106
  %2423 = load float, float* %2359, align 4, !tbaa !83, !alias.scope !107, !noalias !108
  %2424 = load float, float* %2364, align 4, !tbaa !83, !alias.scope !109, !noalias !112
  %2425 = load float, float* %2363, align 4, !tbaa !83, !alias.scope !115, !noalias !116
  %2426 = load float, float* %2362, align 4, !tbaa !83, !alias.scope !117, !noalias !118
  br label %2427

; <label>:2427                                    ; preds = %2420, %2354
  %2428 = phi float [ -1.000000e+00, %2354 ], [ %2426, %2420 ]
  %2429 = phi float [ -1.000000e+00, %2354 ], [ %2425, %2420 ]
  %2430 = phi float [ -1.000000e+00, %2354 ], [ %2424, %2420 ]
  %2431 = phi float [ -1.000000e+00, %2354 ], [ %2423, %2420 ]
  %2432 = phi float [ -1.000000e+00, %2354 ], [ %2422, %2420 ]
  %2433 = phi float [ -1.000000e+00, %2354 ], [ %2421, %2420 ]
  %2434 = phi i32 [ 0, %2354 ], [ %2417, %2420 ]
  %2435 = call float @dx.op.binary.f32(i32 36, float %2432, float %2433)  ; FMin(a,b)
  %2436 = call float @dx.op.binary.f32(i32 36, float %2431, float %2435)  ; FMin(a,b)
  %2437 = call float @dx.op.binary.f32(i32 35, float %2431, float %2432)  ; FMax(a,b)
  %2438 = call float @dx.op.binary.f32(i32 36, float %2437, float %2433)  ; FMin(a,b)
  %2439 = call float @dx.op.binary.f32(i32 36, float %2431, float %2432)  ; FMin(a,b)
  %2440 = call float @dx.op.binary.f32(i32 35, float %2439, float %2438)  ; FMax(a,b)
  %2441 = call float @dx.op.binary.f32(i32 35, float %2432, float %2433)  ; FMax(a,b)
  %2442 = call float @dx.op.binary.f32(i32 35, float %2431, float %2441)  ; FMax(a,b)
  store float %2436, float* %2359, align 4, !tbaa !83, !alias.scope !107, !noalias !108
  store float %2440, float* %2360, align 4, !tbaa !83, !alias.scope !105, !noalias !106
  store float %2442, float* %2361, align 4, !tbaa !83, !alias.scope !99, !noalias !102
  %2443 = call float @dx.op.binary.f32(i32 36, float %2429, float %2430)  ; FMin(a,b)
  %2444 = call float @dx.op.binary.f32(i32 36, float %2428, float %2443)  ; FMin(a,b)
  %2445 = call float @dx.op.binary.f32(i32 35, float %2428, float %2429)  ; FMax(a,b)
  %2446 = call float @dx.op.binary.f32(i32 36, float %2445, float %2430)  ; FMin(a,b)
  %2447 = call float @dx.op.binary.f32(i32 36, float %2428, float %2429)  ; FMin(a,b)
  %2448 = call float @dx.op.binary.f32(i32 35, float %2447, float %2446)  ; FMax(a,b)
  %2449 = call float @dx.op.binary.f32(i32 35, float %2429, float %2430)  ; FMax(a,b)
  %2450 = call float @dx.op.binary.f32(i32 35, float %2428, float %2449)  ; FMax(a,b)
  store float %2444, float* %2362, align 4, !tbaa !83, !alias.scope !117, !noalias !118
  store float %2448, float* %2363, align 4, !tbaa !83, !alias.scope !115, !noalias !116
  store float %2450, float* %2364, align 4, !tbaa !83, !alias.scope !109, !noalias !112
  %2451 = sub nsw i32 3, %2434
  %2452 = icmp sgt i32 %2451, 2
  br i1 %2452, label %2453, label %2491, !dx.controlflow.hints !119

; <label>:2453                                    ; preds = %2427
  %2454 = icmp eq i32 %2222, 0
  %2455 = fsub fast float %2272, %2356
  %2456 = select i1 %2454, float %2455, float %2356
  %2457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2458 = extractvalue %dx.types.CBufRet.f32 %2457, 0
  %2459 = extractvalue %dx.types.CBufRet.f32 %2457, 1
  %2460 = extractvalue %dx.types.CBufRet.f32 %2457, 2
  %2461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2462 = extractvalue %dx.types.CBufRet.f32 %2461, 0
  %2463 = extractvalue %dx.types.CBufRet.f32 %2461, 1
  %2464 = extractvalue %dx.types.CBufRet.f32 %2461, 2
  %2465 = extractvalue %dx.types.CBufRet.f32 %2461, 3
  %2466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2467 = extractvalue %dx.types.CBufRet.f32 %2466, 3
  %2468 = call float @dx.op.binary.f32(i32 36, float %2357, float %2467)  ; FMin(a,b)
  %2469 = fmul fast float %2465, %2456
  %2470 = call float @dx.op.unary.f32(i32 7, float %2469)  ; Saturate(value)
  %2471 = fsub fast float %2462, %2458
  %2472 = fsub fast float %2463, %2459
  %2473 = fsub fast float %2464, %2460
  %2474 = fmul fast float %2470, %2471
  %2475 = fmul fast float %2470, %2472
  %2476 = fmul fast float %2470, %2473
  %2477 = fadd fast float %2474, %2458
  %2478 = fadd fast float %2475, %2459
  %2479 = fadd fast float %2476, %2460
  %2480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2481 = extractvalue %dx.types.CBufRet.f32 %2480, 0
  %2482 = extractvalue %dx.types.CBufRet.f32 %2480, 1
  %2483 = fadd fast float %2482, %2481
  %2484 = call float @dx.op.unary.f32(i32 7, float %2483)  ; Saturate(value)
  %2485 = extractvalue %dx.types.CBufRet.f32 %2480, 2
  %2486 = extractvalue %dx.types.CBufRet.f32 %2480, 3
  %2487 = fadd fast float %2486, %2485
  %2488 = call float @dx.op.unary.f32(i32 7, float %2487)  ; Saturate(value)
  %2489 = fmul fast float %2484, %2468
  %2490 = fmul fast float %2489, %2488
  br label %2573

; <label>:2491                                    ; preds = %2427
  %2492 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2451
  %2493 = load float, float* %2492, align 4, !tbaa !83, !noalias !87
  %2494 = fcmp fast olt float %2493, %2358
  %2495 = icmp sgt i32 %2434, 0
  %2496 = and i1 %2495, %2494
  br i1 %2496, label %2497, label %2534

; <label>:2497                                    ; preds = %2491
  br label %2498

; <label>:2498                                    ; preds = %2527, %2497
  %2499 = phi float [ %2528, %2527 ], [ %2356, %2497 ]
  %2500 = phi float [ %2529, %2527 ], [ %2357, %2497 ]
  %2501 = phi float [ %2509, %2527 ], [ %2493, %2497 ]
  %2502 = phi i32 [ %2506, %2527 ], [ %2451, %2497 ]
  %2503 = getelementptr inbounds [3 x float], [3 x float]* %26, i32 0, i32 %2502
  %2504 = load float, float* %2503, align 4, !tbaa !83, !noalias !87
  %2505 = icmp slt i32 %2502, 2
  %2506 = add nsw i32 %2502, 1
  %2507 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2506
  %2508 = load float, float* %2507, align 4, !tbaa !83, !noalias !87
  %2509 = select i1 %2505, float %2508, float %2272
  %2510 = call float @dx.op.binary.f32(i32 36, float %2509, float %2504)  ; FMin(a,b)
  %2511 = call float @dx.op.binary.f32(i32 36, float %2358, float %2510)  ; FMin(a,b)
  %2512 = icmp eq i32 %2222, 0
  %2513 = fadd fast float %2511, %2501
  %2514 = fmul fast float %2513, %2203
  %2515 = fadd fast float %2514, %2216
  br i1 %2512, label %2521, label %2516, !dx.controlflow.hints !120

; <label>:2516                                    ; preds = %2498
  %2517 = fsub fast float %2511, %2501
  %2518 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2517)  ; FMax(a,b)
  %2519 = fmul fast float %2518, %2515
  %2520 = fadd fast float %2519, %2500
  br label %2527

; <label>:2521                                    ; preds = %2498
  %2522 = fsub fast float %2501, %2511
  %2523 = call float @dx.op.unary.f32(i32 6, float %2522)  ; FAbs(value)
  %2524 = fadd fast float %2523, %2499
  %2525 = fmul fast float %2523, %2515
  %2526 = fsub fast float %2500, %2525
  br label %2527

; <label>:2527                                    ; preds = %2521, %2516
  %2528 = phi float [ %2518, %2516 ], [ %2524, %2521 ]
  %2529 = phi float [ %2520, %2516 ], [ %2526, %2521 ]
  %2530 = fcmp fast olt float %2509, %2358
  %2531 = icmp slt i32 %2506, 3
  %2532 = and i1 %2531, %2530
  br i1 %2532, label %2498, label %2533

; <label>:2533                                    ; preds = %2527
  br label %2534

; <label>:2534                                    ; preds = %2533, %2491
  %2535 = phi float [ %2356, %2491 ], [ %2528, %2533 ]
  %2536 = phi float [ %2357, %2491 ], [ %2529, %2533 ]
  %2537 = fsub fast float %2272, %2535
  %2538 = select i1 %2274, float %2535, float %2537
  %2539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2540 = extractvalue %dx.types.CBufRet.f32 %2539, 0
  %2541 = extractvalue %dx.types.CBufRet.f32 %2539, 1
  %2542 = extractvalue %dx.types.CBufRet.f32 %2539, 2
  %2543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2544 = extractvalue %dx.types.CBufRet.f32 %2543, 0
  %2545 = extractvalue %dx.types.CBufRet.f32 %2543, 1
  %2546 = extractvalue %dx.types.CBufRet.f32 %2543, 2
  %2547 = extractvalue %dx.types.CBufRet.f32 %2543, 3
  %2548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2549 = extractvalue %dx.types.CBufRet.f32 %2548, 3
  %2550 = call float @dx.op.binary.f32(i32 36, float %2536, float %2549)  ; FMin(a,b)
  %2551 = fmul fast float %2547, %2538
  %2552 = call float @dx.op.unary.f32(i32 7, float %2551)  ; Saturate(value)
  %2553 = fsub fast float %2544, %2540
  %2554 = fsub fast float %2545, %2541
  %2555 = fsub fast float %2546, %2542
  %2556 = fmul fast float %2552, %2553
  %2557 = fmul fast float %2552, %2554
  %2558 = fmul fast float %2552, %2555
  %2559 = fadd fast float %2556, %2540
  %2560 = fadd fast float %2557, %2541
  %2561 = fadd fast float %2558, %2542
  %2562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2563 = extractvalue %dx.types.CBufRet.f32 %2562, 0
  %2564 = extractvalue %dx.types.CBufRet.f32 %2562, 1
  %2565 = fadd fast float %2564, %2563
  %2566 = call float @dx.op.unary.f32(i32 7, float %2565)  ; Saturate(value)
  %2567 = extractvalue %dx.types.CBufRet.f32 %2562, 2
  %2568 = extractvalue %dx.types.CBufRet.f32 %2562, 3
  %2569 = fadd fast float %2568, %2567
  %2570 = call float @dx.op.unary.f32(i32 7, float %2569)  ; Saturate(value)
  %2571 = fmul fast float %2566, %2550
  %2572 = fmul fast float %2571, %2570
  br label %2573

; <label>:2573                                    ; preds = %2534, %2453, %2288, %2270, %2268
  %2574 = phi float [ %2297, %2288 ], [ %2456, %2453 ], [ %2538, %2534 ], [ 0.000000e+00, %2268 ], [ 0.000000e+00, %2270 ]
  %2575 = phi float [ %2331, %2288 ], [ %2490, %2453 ], [ %2572, %2534 ], [ 0.000000e+00, %2268 ], [ 0.000000e+00, %2270 ]
  %2576 = phi float [ %2318, %2288 ], [ %2477, %2453 ], [ %2559, %2534 ], [ 0.000000e+00, %2268 ], [ 0.000000e+00, %2270 ]
  %2577 = phi float [ %2319, %2288 ], [ %2478, %2453 ], [ %2560, %2534 ], [ 0.000000e+00, %2268 ], [ 0.000000e+00, %2270 ]
  %2578 = phi float [ %2320, %2288 ], [ %2479, %2453 ], [ %2561, %2534 ], [ 0.000000e+00, %2268 ], [ 0.000000e+00, %2270 ]
  %2579 = fmul fast float %2211, %2575
  %2580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2581 = extractvalue %dx.types.CBufRet.f32 %2580, 2
  %2582 = fsub fast float %2218, %2581
  %2583 = fcmp fast olt float %2579, -2.000000e+01
  %2584 = call float @dx.op.unary.f32(i32 21, float %2579)  ; Exp(value)
  %2585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2586 = extractvalue %dx.types.CBufRet.f32 %2585, 2
  %2587 = extractvalue %dx.types.CBufRet.f32 %2585, 3
  %2588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2589 = extractvalue %dx.types.CBufRet.f32 %2588, 2
  %2590 = fmul fast float %2587, %2582
  %2591 = call float @dx.op.unary.f32(i32 7, float %2590)  ; Saturate(value)
  %2592 = fsub fast float 1.000000e+00, %2591
  %2593 = fmul fast float %2203, 5.000000e-01
  %2594 = fadd fast float %2593, 5.000000e-01
  %2595 = call float @dx.op.unary.f32(i32 7, float %2594)  ; Saturate(value)
  %2596 = fsub fast float 1.000000e+00, %2595
  %2597 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2592)  ; FMax(a,b)
  %2598 = fdiv fast float %2596, %2597
  %2599 = fsub fast float %2582, %2169
  %2600 = call float @dx.op.unary.f32(i32 6, float %2599)  ; FAbs(value)
  %2601 = fmul fast float %2600, %2586
  %2602 = call float @dx.op.unary.f32(i32 7, float %2598)  ; Saturate(value)
  %2603 = fsub fast float 1.000000e+00, %2601
  %2604 = fmul fast float %2603, %2602
  %2605 = fadd fast float %2604, %2601
  %2606 = fmul fast float %2589, %2582
  %2607 = call float @dx.op.unary.f32(i32 7, float %2606)  ; Saturate(value)
  %2608 = fsub fast float 1.000000e+00, %2605
  %2609 = fmul fast float %2608, %2607
  %2610 = fadd fast float %2609, %2605
  %2611 = call float @dx.op.unary.f32(i32 7, float %2610)  ; Saturate(value)
  %2612 = fadd fast float %2584, -1.000000e+00
  %2613 = select i1 %2583, float -1.000000e+00, float %2612
  %2614 = fmul fast float %2611, %2613
  %2615 = fadd fast float %2614, 1.000000e+00
  %2616 = fsub fast float -0.000000e+00, %2614
  %2617 = fmul fast float %2576, %2616
  %2618 = fmul fast float %2577, %2616
  %2619 = fmul fast float %2578, %2616
  br label %2620

; <label>:2620                                    ; preds = %2573, %2122
  %2621 = phi float [ %2574, %2573 ], [ 0.000000e+00, %2122 ]
  %2622 = phi float [ %2615, %2573 ], [ 1.000000e+00, %2122 ]
  %2623 = phi float [ %2617, %2573 ], [ 0.000000e+00, %2122 ]
  %2624 = phi float [ %2618, %2573 ], [ 0.000000e+00, %2122 ]
  %2625 = phi float [ %2619, %2573 ], [ 0.000000e+00, %2122 ]
  %2626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2627 = extractvalue %dx.types.CBufRet.f32 %2626, 1
  %2628 = fsub fast float 1.000000e+00, %2622
  %2629 = fmul fast float %2628, %2204
  %2630 = fmul fast float %2629, %2627
  %2631 = fsub fast float %2204, %2630
  br i1 %2197, label %2632, label %2661, !dx.controlflow.hints !121

; <label>:2632                                    ; preds = %2620
  %2633 = fmul fast float %2205, %2194
  %2634 = fadd fast float %2633, %2195
  %2635 = call float @dx.op.unary.f32(i32 7, float %2634)  ; Saturate(value)
  %2636 = fmul fast float %2176, %2631
  %2637 = fsub fast float -0.000000e+00, %2636
  %2638 = fmul fast float %2177, %2631
  %2639 = fsub fast float -0.000000e+00, %2638
  %2640 = call float @dx.op.unary.f32(i32 21, float %2637)  ; Exp(value)
  %2641 = call float @dx.op.unary.f32(i32 21, float %2639)  ; Exp(value)
  %2642 = call float @dx.op.binary.f32(i32 35, float %2184, float %2640)  ; FMax(a,b)
  %2643 = call float @dx.op.binary.f32(i32 35, float %2184, float %2641)  ; FMax(a,b)
  %2644 = fsub fast float %2643, %2642
  %2645 = fmul fast float %2644, %2635
  %2646 = fadd fast float %2645, %2642
  %2647 = call float @dx.op.unary.f32(i32 7, float %2646)  ; Saturate(value)
  %2648 = fsub fast float %2181, %2186
  %2649 = fsub fast float %2182, %2187
  %2650 = fsub fast float %2183, %2188
  %2651 = fmul fast float %2635, %2648
  %2652 = fmul fast float %2635, %2649
  %2653 = fmul fast float %2635, %2650
  %2654 = fadd fast float %2651, %2186
  %2655 = fadd fast float %2652, %2187
  %2656 = fadd fast float %2653, %2188
  %2657 = fsub fast float 1.000000e+00, %2647
  %2658 = fmul fast float %2657, %2654
  %2659 = fmul fast float %2657, %2655
  %2660 = fmul fast float %2657, %2656
  br label %2720

; <label>:2661                                    ; preds = %2620
  %2662 = fmul fast float %2631, %2193
  %2663 = call float @dx.op.unary.f32(i32 7, float %2662)  ; Saturate(value)
  %2664 = fsub fast float 2.000000e+00, %2663
  %2665 = fmul fast float %2663, 9.921875e-01
  %2666 = fmul fast float %2665, %2664
  %2667 = fadd fast float %2666, 3.906250e-03
  %2668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %19, float %2667, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2669 = extractvalue %dx.types.ResRet.f32 %2668, 0
  %2670 = fsub fast float %2663, %2669
  %2671 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2670)  ; FMax(a,b)
  %2672 = fmul fast float %2179, %2169
  %2673 = call float @dx.op.unary.f32(i32 6, float %2672)  ; FAbs(value)
  %2674 = fcmp fast ogt float %2673, 0x3EB0C6F7A0000000
  br i1 %2674, label %2675, label %2681, !dx.controlflow.hints !122

; <label>:2675                                    ; preds = %2661
  %2676 = fmul fast float %2672, 0xBFF7154760000000
  %2677 = call float @dx.op.unary.f32(i32 21, float %2676)  ; Exp(value)
  %2678 = fsub fast float 1.000000e+00, %2677
  %2679 = fdiv fast float %2678, %2672
  %2680 = fmul fast float %2679, %2189
  br label %2681

; <label>:2681                                    ; preds = %2675, %2661
  %2682 = phi float [ %2680, %2675 ], [ %2189, %2661 ]
  %2683 = fadd fast float %2682, %2191
  %2684 = fmul fast float %2683, %2671
  %2685 = fmul fast float %2176, %2684
  %2686 = fsub fast float -0.000000e+00, %2685
  %2687 = fmul fast float %2177, %2684
  %2688 = fsub fast float -0.000000e+00, %2687
  %2689 = fmul fast float %2178, %2684
  %2690 = fsub fast float -0.000000e+00, %2689
  %2691 = call float @dx.op.unary.f32(i32 21, float %2686)  ; Exp(value)
  %2692 = call float @dx.op.unary.f32(i32 21, float %2688)  ; Exp(value)
  %2693 = call float @dx.op.unary.f32(i32 21, float %2690)  ; Exp(value)
  %2694 = fmul fast float %2205, %2205
  %2695 = fadd fast float %2694, 1.000000e+00
  %2696 = fmul fast float %2695, 0x3FAE8EC8A0000000
  %2697 = fmul fast float %2696, %2186
  %2698 = fmul fast float %2696, %2187
  %2699 = fmul fast float %2696, %2188
  %2700 = fmul fast float %2205, %2184
  %2701 = fsub fast float 1.000000e+00, %2700
  %2702 = fmul fast float %2184, %2184
  %2703 = fsub fast float 1.000000e+00, %2702
  %2704 = fmul fast float %2703, 0x3FB45F3060000000
  %2705 = fmul fast float %2701, %2701
  %2706 = fdiv fast float 1.000000e+00, %2705
  %2707 = fmul fast float %2704, %2706
  %2708 = fmul fast float %2707, %2181
  %2709 = fmul fast float %2707, %2182
  %2710 = fmul fast float %2707, %2183
  %2711 = fadd fast float %2708, %2697
  %2712 = fadd fast float %2709, %2698
  %2713 = fadd fast float %2710, %2699
  %2714 = fsub fast float 1.000000e+00, %2691
  %2715 = fsub fast float 1.000000e+00, %2692
  %2716 = fsub fast float 1.000000e+00, %2693
  %2717 = fmul fast float %2711, %2714
  %2718 = fmul fast float %2712, %2715
  %2719 = fmul fast float %2713, %2716
  br label %2720

; <label>:2720                                    ; preds = %2681, %2632
  %2721 = phi float [ %2658, %2632 ], [ %2717, %2681 ]
  %2722 = phi float [ %2659, %2632 ], [ %2718, %2681 ]
  %2723 = phi float [ %2660, %2632 ], [ %2719, %2681 ]
  %2724 = phi float [ %2647, %2632 ], [ %2691, %2681 ]
  %2725 = phi float [ %2647, %2632 ], [ %2692, %2681 ]
  %2726 = phi float [ %2647, %2632 ], [ %2693, %2681 ]
  br i1 %2213, label %2727, label %2925, !dx.controlflow.hints !123

; <label>:2727                                    ; preds = %2720
  %2728 = extractvalue %dx.types.CBufRet.f32 %2626, 0
  %2729 = fmul fast float %2728, %2628
  %2730 = fsub fast float %2623, %2721
  %2731 = fsub fast float %2624, %2722
  %2732 = fsub fast float %2625, %2723
  %2733 = fmul fast float %2729, %2730
  %2734 = fmul fast float %2729, %2731
  %2735 = fmul fast float %2729, %2732
  %2736 = fadd fast float %2733, %2721
  %2737 = fadd fast float %2734, %2722
  %2738 = fadd fast float %2735, %2723
  %2739 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2724)  ; FMax(a,b)
  %2740 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2725)  ; FMax(a,b)
  %2741 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2726)  ; FMax(a,b)
  %2742 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2622)  ; FMax(a,b)
  %2743 = call float @dx.op.binary.f32(i32 35, float %2621, float %2631)  ; FMax(a,b)
  %2744 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2743)  ; FMax(a,b)
  %2745 = fdiv fast float %2621, %2744
  %2746 = call float @dx.op.unary.f32(i32 7, float %2745)  ; Saturate(value)
  %2747 = fdiv fast float %2631, %2744
  %2748 = call float @dx.op.unary.f32(i32 7, float %2747)  ; Saturate(value)
  %2749 = fcmp fast une float %2742, 1.000000e+00
  br i1 %2749, label %2750, label %2763, !dx.controlflow.hints !124

; <label>:2750                                    ; preds = %2727
  %2751 = call float @dx.op.unary.f32(i32 23, float %2742)  ; Log(value)
  %2752 = fmul fast float %2751, 0x3FE62E4300000000
  %2753 = fmul fast float %2623, %2752
  %2754 = fsub fast float -0.000000e+00, %2753
  %2755 = fmul fast float %2624, %2752
  %2756 = fsub fast float -0.000000e+00, %2755
  %2757 = fmul fast float %2625, %2752
  %2758 = fsub fast float -0.000000e+00, %2757
  %2759 = fsub fast float 1.000000e+00, %2742
  %2760 = fdiv fast float %2754, %2759
  %2761 = fdiv fast float %2756, %2759
  %2762 = fdiv fast float %2758, %2759
  br label %2763

; <label>:2763                                    ; preds = %2750, %2727
  %2764 = phi float [ %2760, %2750 ], [ %2623, %2727 ]
  %2765 = phi float [ %2761, %2750 ], [ %2624, %2727 ]
  %2766 = phi float [ %2762, %2750 ], [ %2625, %2727 ]
  %2767 = phi float [ %2752, %2750 ], [ 0.000000e+00, %2727 ]
  %2768 = fcmp fast une float %2739, 1.000000e+00
  br i1 %2768, label %2769, label %2776, !dx.controlflow.hints !125

; <label>:2769                                    ; preds = %2763
  %2770 = call float @dx.op.unary.f32(i32 23, float %2739)  ; Log(value)
  %2771 = fmul fast float %2770, 0x3FE62E4300000000
  %2772 = fmul fast float %2736, %2771
  %2773 = fsub fast float -0.000000e+00, %2772
  %2774 = fsub fast float 1.000000e+00, %2739
  %2775 = fdiv fast float %2773, %2774
  br label %2776

; <label>:2776                                    ; preds = %2769, %2763
  %2777 = phi float [ %2775, %2769 ], [ %2736, %2763 ]
  %2778 = phi float [ %2771, %2769 ], [ 0.000000e+00, %2763 ]
  %2779 = fcmp fast une float %2740, 1.000000e+00
  br i1 %2779, label %2780, label %2787, !dx.controlflow.hints !125

; <label>:2780                                    ; preds = %2776
  %2781 = call float @dx.op.unary.f32(i32 23, float %2740)  ; Log(value)
  %2782 = fmul fast float %2781, 0x3FE62E4300000000
  %2783 = fmul fast float %2737, %2782
  %2784 = fsub fast float -0.000000e+00, %2783
  %2785 = fsub fast float 1.000000e+00, %2740
  %2786 = fdiv fast float %2784, %2785
  br label %2787

; <label>:2787                                    ; preds = %2780, %2776
  %2788 = phi float [ %2786, %2780 ], [ %2737, %2776 ]
  %2789 = phi float [ %2782, %2780 ], [ 0.000000e+00, %2776 ]
  %2790 = fcmp fast une float %2741, 1.000000e+00
  br i1 %2790, label %2791, label %2798, !dx.controlflow.hints !125

; <label>:2791                                    ; preds = %2787
  %2792 = call float @dx.op.unary.f32(i32 23, float %2741)  ; Log(value)
  %2793 = fmul fast float %2792, 0x3FE62E4300000000
  %2794 = fmul fast float %2738, %2793
  %2795 = fsub fast float -0.000000e+00, %2794
  %2796 = fsub fast float 1.000000e+00, %2741
  %2797 = fdiv fast float %2795, %2796
  br label %2798

; <label>:2798                                    ; preds = %2791, %2787
  %2799 = phi float [ %2797, %2791 ], [ %2738, %2787 ]
  %2800 = phi float [ %2793, %2791 ], [ 0.000000e+00, %2787 ]
  %2801 = fmul fast float %2764, %2748
  %2802 = fmul fast float %2765, %2748
  %2803 = fmul fast float %2766, %2748
  %2804 = fmul fast float %2767, %2748
  %2805 = fmul fast float %2777, %2746
  %2806 = fmul fast float %2788, %2746
  %2807 = fmul fast float %2799, %2746
  %2808 = fmul fast float %2778, %2746
  %2809 = fmul fast float %2789, %2746
  %2810 = fmul fast float %2800, %2746
  %2811 = fadd fast float %2805, %2801
  %2812 = fadd fast float %2806, %2802
  %2813 = fadd fast float %2807, %2803
  %2814 = fadd fast float %2808, %2804
  %2815 = fadd fast float %2809, %2804
  %2816 = fadd fast float %2810, %2804
  %2817 = fcmp fast une float %2814, 0.000000e+00
  br i1 %2817, label %2818, label %2825, !dx.controlflow.hints !126

; <label>:2818                                    ; preds = %2798
  %2819 = fmul fast float %2814, 0x3FF7154760000000
  %2820 = call float @dx.op.unary.f32(i32 21, float %2819)  ; Exp(value)
  %2821 = fsub fast float 1.000000e+00, %2820
  %2822 = fmul fast float %2811, %2821
  %2823 = fsub fast float -0.000000e+00, %2822
  %2824 = fdiv fast float %2823, %2814
  br label %2825

; <label>:2825                                    ; preds = %2818, %2798
  %2826 = phi float [ %2820, %2818 ], [ 1.000000e+00, %2798 ]
  %2827 = phi float [ %2824, %2818 ], [ %2811, %2798 ]
  %2828 = fcmp fast une float %2815, 0.000000e+00
  br i1 %2828, label %2829, label %2836, !dx.controlflow.hints !126

; <label>:2829                                    ; preds = %2825
  %2830 = fmul fast float %2815, 0x3FF7154760000000
  %2831 = call float @dx.op.unary.f32(i32 21, float %2830)  ; Exp(value)
  %2832 = fsub fast float 1.000000e+00, %2831
  %2833 = fmul fast float %2812, %2832
  %2834 = fsub fast float -0.000000e+00, %2833
  %2835 = fdiv fast float %2834, %2815
  br label %2836

; <label>:2836                                    ; preds = %2829, %2825
  %2837 = phi float [ %2831, %2829 ], [ 1.000000e+00, %2825 ]
  %2838 = phi float [ %2835, %2829 ], [ %2812, %2825 ]
  %2839 = fcmp fast une float %2816, 0.000000e+00
  br i1 %2839, label %2840, label %2847, !dx.controlflow.hints !126

; <label>:2840                                    ; preds = %2836
  %2841 = fmul fast float %2816, 0x3FF7154760000000
  %2842 = call float @dx.op.unary.f32(i32 21, float %2841)  ; Exp(value)
  %2843 = fsub fast float 1.000000e+00, %2842
  %2844 = fmul fast float %2813, %2843
  %2845 = fsub fast float -0.000000e+00, %2844
  %2846 = fdiv fast float %2845, %2816
  br label %2847

; <label>:2847                                    ; preds = %2840, %2836
  %2848 = phi float [ %2842, %2840 ], [ 1.000000e+00, %2836 ]
  %2849 = phi float [ %2846, %2840 ], [ %2813, %2836 ]
  %2850 = fcmp fast ogt float %2746, %2748
  br i1 %2850, label %2851, label %2871, !dx.controlflow.hints !127

; <label>:2851                                    ; preds = %2847
  %2852 = fsub fast float 1.000000e+00, %2748
  %2853 = fmul fast float %2764, %2852
  %2854 = fmul fast float %2765, %2852
  %2855 = fmul fast float %2766, %2852
  %2856 = fmul fast float %2767, %2852
  %2857 = fcmp fast une float %2856, 0.000000e+00
  br i1 %2857, label %2858, label %2909, !dx.controlflow.hints !128

; <label>:2858                                    ; preds = %2851
  %2859 = fmul fast float %2856, 0x3FF7154760000000
  %2860 = call float @dx.op.unary.f32(i32 21, float %2859)  ; Exp(value)
  %2861 = fsub fast float 1.000000e+00, %2860
  %2862 = fmul fast float %2853, %2861
  %2863 = fsub fast float -0.000000e+00, %2862
  %2864 = fmul fast float %2854, %2861
  %2865 = fsub fast float -0.000000e+00, %2864
  %2866 = fmul fast float %2855, %2861
  %2867 = fsub fast float -0.000000e+00, %2866
  %2868 = fdiv fast float %2863, %2856
  %2869 = fdiv fast float %2865, %2856
  %2870 = fdiv fast float %2867, %2856
  br label %2909

; <label>:2871                                    ; preds = %2847
  %2872 = fsub fast float 1.000000e+00, %2746
  %2873 = fmul fast float %2777, %2872
  %2874 = fmul fast float %2788, %2872
  %2875 = fmul fast float %2799, %2872
  %2876 = fmul fast float %2778, %2872
  %2877 = fmul fast float %2789, %2872
  %2878 = fmul fast float %2800, %2872
  %2879 = fcmp fast une float %2876, 0.000000e+00
  br i1 %2879, label %2880, label %2887, !dx.controlflow.hints !126

; <label>:2880                                    ; preds = %2871
  %2881 = fmul fast float %2876, 0x3FF7154760000000
  %2882 = call float @dx.op.unary.f32(i32 21, float %2881)  ; Exp(value)
  %2883 = fsub fast float 1.000000e+00, %2882
  %2884 = fmul fast float %2873, %2883
  %2885 = fsub fast float -0.000000e+00, %2884
  %2886 = fdiv fast float %2885, %2876
  br label %2887

; <label>:2887                                    ; preds = %2880, %2871
  %2888 = phi float [ %2886, %2880 ], [ %2873, %2871 ]
  %2889 = phi float [ %2882, %2880 ], [ 1.000000e+00, %2871 ]
  %2890 = fcmp fast une float %2877, 0.000000e+00
  br i1 %2890, label %2891, label %2898, !dx.controlflow.hints !126

; <label>:2891                                    ; preds = %2887
  %2892 = fmul fast float %2877, 0x3FF7154760000000
  %2893 = call float @dx.op.unary.f32(i32 21, float %2892)  ; Exp(value)
  %2894 = fsub fast float 1.000000e+00, %2893
  %2895 = fmul fast float %2874, %2894
  %2896 = fsub fast float -0.000000e+00, %2895
  %2897 = fdiv fast float %2896, %2877
  br label %2898

; <label>:2898                                    ; preds = %2891, %2887
  %2899 = phi float [ %2897, %2891 ], [ %2874, %2887 ]
  %2900 = phi float [ %2893, %2891 ], [ 1.000000e+00, %2887 ]
  %2901 = fcmp fast une float %2878, 0.000000e+00
  br i1 %2901, label %2902, label %2909, !dx.controlflow.hints !126

; <label>:2902                                    ; preds = %2898
  %2903 = fmul fast float %2878, 0x3FF7154760000000
  %2904 = call float @dx.op.unary.f32(i32 21, float %2903)  ; Exp(value)
  %2905 = fsub fast float 1.000000e+00, %2904
  %2906 = fmul fast float %2875, %2905
  %2907 = fsub fast float -0.000000e+00, %2906
  %2908 = fdiv fast float %2907, %2878
  br label %2909

; <label>:2909                                    ; preds = %2902, %2898, %2858, %2851
  %2910 = phi float [ %2908, %2902 ], [ %2870, %2858 ], [ %2855, %2851 ], [ %2875, %2898 ]
  %2911 = phi float [ %2899, %2902 ], [ %2869, %2858 ], [ %2854, %2851 ], [ %2899, %2898 ]
  %2912 = phi float [ %2888, %2902 ], [ %2868, %2858 ], [ %2853, %2851 ], [ %2888, %2898 ]
  %2913 = phi float [ %2904, %2902 ], [ %2860, %2858 ], [ 1.000000e+00, %2851 ], [ 1.000000e+00, %2898 ]
  %2914 = phi float [ %2900, %2902 ], [ %2860, %2858 ], [ 1.000000e+00, %2851 ], [ %2900, %2898 ]
  %2915 = phi float [ %2889, %2902 ], [ %2860, %2858 ], [ 1.000000e+00, %2851 ], [ %2889, %2898 ]
  %2916 = fmul fast float %2915, %2827
  %2917 = fmul fast float %2914, %2838
  %2918 = fmul fast float %2913, %2849
  %2919 = fadd fast float %2916, %2912
  %2920 = fadd fast float %2917, %2911
  %2921 = fadd fast float %2918, %2910
  %2922 = fmul fast float %2915, %2826
  %2923 = fmul fast float %2914, %2837
  %2924 = fmul fast float %2913, %2848
  br label %2925

; <label>:2925                                    ; preds = %2909, %2720
  %2926 = phi float [ %2726, %2720 ], [ %2924, %2909 ]
  %2927 = phi float [ %2725, %2720 ], [ %2923, %2909 ]
  %2928 = phi float [ %2724, %2720 ], [ %2922, %2909 ]
  %2929 = phi float [ %2723, %2720 ], [ %2921, %2909 ]
  %2930 = phi float [ %2722, %2720 ], [ %2920, %2909 ]
  %2931 = phi float [ %2721, %2720 ], [ %2919, %2909 ]
  %2932 = fmul fast float %2928, %2069
  %2933 = fmul fast float %2927, %2070
  %2934 = fmul fast float %2926, %2071
  %2935 = fsub fast float 1.000000e+00, %2132
  %2936 = fmul fast float %2931, %2935
  %2937 = fmul fast float %2930, %2935
  %2938 = fmul fast float %2929, %2935
  %2939 = fadd fast float %2936, %2932
  %2940 = fadd fast float %2937, %2933
  %2941 = fadd fast float %2938, %2934
  %2942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2943 = extractvalue %dx.types.CBufRet.f32 %2942, 2
  %2944 = fmul fast float %2943, %2142
  %2945 = call float @dx.op.unary.f32(i32 7, float %2944)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %22, i32 %23, i32 undef, float %2132, float %2132, float %2132, float %2132, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2947 = extractvalue %dx.types.CBufRet.f32 %2946, 0
  %2948 = fmul fast float %2947, %2939
  %2949 = fmul fast float %2947, %2940
  %2950 = fmul fast float %2947, %2941
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %22, i32 %23, i32 undef, float %2948, float %2949, float %2950, float %2948, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %22, i32 %23, i32 undef, float %2945, float %2945, float %2945, float %2945, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!32 = !{void ()* @cs_fog_raymarching_clouds_heightmap_brfog, !"cs_fog_raymarching_clouds_heightmap_brfog", null, !4, !33}
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
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = !{!84, !84, i64 0}
!84 = !{!"float", !85, i64 0}
!85 = !{!"omnipotent char", !86, i64 0}
!86 = !{!"Simple C/C++ TBAA"}
!87 = !{!88, !90, !92, !93, !95, !96, !97}
!88 = distinct !{!88, !89, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!89 = distinct !{!89, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!90 = distinct !{!90, !91, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!91 = distinct !{!91, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!92 = distinct !{!92, !91, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!93 = distinct !{!93, !94, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!94 = distinct !{!94, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!95 = distinct !{!95, !94, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!96 = distinct !{!96, !94, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!97 = distinct !{!97, !94, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = !{!100}
!100 = distinct !{!100, !101, !"\01?sort@@YAXAIAM00@Z: %c"}
!101 = distinct !{!101, !"\01?sort@@YAXAIAM00@Z"}
!102 = !{!103, !104, !88, !90, !92, !93, !95, !96, !97}
!103 = distinct !{!103, !101, !"\01?sort@@YAXAIAM00@Z: %a"}
!104 = distinct !{!104, !101, !"\01?sort@@YAXAIAM00@Z: %b"}
!105 = !{!104}
!106 = !{!103, !100, !88, !90, !92, !93, !95, !96, !97}
!107 = !{!103}
!108 = !{!104, !100, !88, !90, !92, !93, !95, !96, !97}
!109 = !{!110}
!110 = distinct !{!110, !111, !"\01?sort@@YAXAIAM00@Z: %c"}
!111 = distinct !{!111, !"\01?sort@@YAXAIAM00@Z"}
!112 = !{!113, !114, !88, !90, !92, !93, !95, !96, !97}
!113 = distinct !{!113, !111, !"\01?sort@@YAXAIAM00@Z: %a"}
!114 = distinct !{!114, !111, !"\01?sort@@YAXAIAM00@Z: %b"}
!115 = !{!114}
!116 = !{!113, !110, !88, !90, !92, !93, !95, !96, !97}
!117 = !{!113}
!118 = !{!114, !110, !88, !90, !92, !93, !95, !96, !97}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 2}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 2}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 2}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 2}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}

