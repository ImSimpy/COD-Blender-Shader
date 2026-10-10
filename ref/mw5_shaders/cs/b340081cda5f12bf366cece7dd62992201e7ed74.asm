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
; shader hash: cac791456d84ef22acfc42cf042f12de
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
;                                   texture     f32          3d      T0             t3     1
;                                   texture     f32          2d      T1            t16     1
;                                   texture     f32          1d      T2            t14     1
;                                   texture     f32          2d      T3            t13     1
;                                   texture     f32          2d      T4             t0     1
;                                   texture    byte         r/o      T5            t17     1
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

define void @cs_fog_raymarching_air_heightmap() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %16 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %17 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = add i32 %16, %15
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 1
  %23 = add i32 %20, %22
  %24 = lshr i32 %23, 1
  %25 = and i32 %24, 1
  %26 = and i32 %23, 1
  %27 = xor i32 %25, %26
  %28 = shl i32 %15, 1
  %29 = shl i32 %16, 1
  %30 = or i32 %27, %28
  %31 = or i32 %25, %29
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = extractvalue %dx.types.ResRet.i32 %34, 1
  %37 = extractvalue %dx.types.ResRet.i32 %34, 2
  %38 = extractvalue %dx.types.ResRet.i32 %34, 3
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = extractvalue %dx.types.ResRet.i32 %39, 1
  %42 = extractvalue %dx.types.ResRet.i32 %39, 2
  %43 = extractvalue %dx.types.ResRet.i32 %39, 3
  %44 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %45 = extractvalue %dx.types.ResRet.i32 %44, 0
  %46 = extractvalue %dx.types.ResRet.i32 %44, 1
  %47 = extractvalue %dx.types.ResRet.i32 %44, 2
  %48 = extractvalue %dx.types.ResRet.i32 %44, 3
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %51 = fmul fast float %50, %50
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 0
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %55 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %56 = fmul fast float %55, 0x3FF17B1420000000
  %57 = icmp eq i32 %17, 0
  br i1 %57, label %58, label %199, !dx.controlflow.hints !28

; <label>:58                                      ; preds = %0
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 3
  %63 = extractvalue %dx.types.ResRet.i32 %32, 1
  %64 = and i32 %63, 65535
  %65 = call float @dx.op.legacyF16ToF32(i32 131, i32 %64)  ; LegacyF16ToF32(value)
  %66 = lshr i32 %33, 16
  %67 = call float @dx.op.legacyF16ToF32(i32 131, i32 %66)  ; LegacyF16ToF32(value)
  %68 = and i32 %33, 65535
  %69 = call float @dx.op.legacyF16ToF32(i32 131, i32 %68)  ; LegacyF16ToF32(value)
  %70 = lshr i32 %38, 16
  %71 = call float @dx.op.legacyF16ToF32(i32 131, i32 %70)  ; LegacyF16ToF32(value)
  %72 = and i32 %38, 65535
  %73 = call float @dx.op.legacyF16ToF32(i32 131, i32 %72)  ; LegacyF16ToF32(value)
  %74 = lshr i32 %37, 16
  %75 = call float @dx.op.legacyF16ToF32(i32 131, i32 %74)  ; LegacyF16ToF32(value)
  %76 = and i32 %37, 65535
  %77 = call float @dx.op.legacyF16ToF32(i32 131, i32 %76)  ; LegacyF16ToF32(value)
  %78 = lshr i32 %36, 16
  %79 = call float @dx.op.legacyF16ToF32(i32 131, i32 %78)  ; LegacyF16ToF32(value)
  %80 = lshr i32 %35, 16
  %81 = call float @dx.op.legacyF16ToF32(i32 131, i32 %80)  ; LegacyF16ToF32(value)
  %82 = and i32 %35, 65535
  %83 = call float @dx.op.legacyF16ToF32(i32 131, i32 %82)  ; LegacyF16ToF32(value)
  %84 = lshr i32 %43, 16
  %85 = call float @dx.op.legacyF16ToF32(i32 131, i32 %84)  ; LegacyF16ToF32(value)
  %86 = and i32 %43, 65535
  %87 = call float @dx.op.legacyF16ToF32(i32 131, i32 %86)  ; LegacyF16ToF32(value)
  %88 = lshr i32 %42, 16
  %89 = call float @dx.op.legacyF16ToF32(i32 131, i32 %88)  ; LegacyF16ToF32(value)
  %90 = and i32 %42, 65535
  %91 = call float @dx.op.legacyF16ToF32(i32 131, i32 %90)  ; LegacyF16ToF32(value)
  %92 = lshr i32 %41, 16
  %93 = call float @dx.op.legacyF16ToF32(i32 131, i32 %92)  ; LegacyF16ToF32(value)
  %94 = and i32 %41, 65535
  %95 = call float @dx.op.legacyF16ToF32(i32 131, i32 %94)  ; LegacyF16ToF32(value)
  %96 = and i32 %40, 65535
  %97 = call float @dx.op.legacyF16ToF32(i32 131, i32 %96)  ; LegacyF16ToF32(value)
  %98 = lshr i32 %48, 16
  %99 = call float @dx.op.legacyF16ToF32(i32 131, i32 %98)  ; LegacyF16ToF32(value)
  %100 = and i32 %48, 65535
  %101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %100)  ; LegacyF16ToF32(value)
  %102 = lshr i32 %47, 16
  %103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %102)  ; LegacyF16ToF32(value)
  %104 = and i32 %47, 65535
  %105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %104)  ; LegacyF16ToF32(value)
  %106 = lshr i32 %46, 16
  %107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %106)  ; LegacyF16ToF32(value)
  %108 = and i32 %46, 65535
  %109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %108)  ; LegacyF16ToF32(value)
  %110 = lshr i32 %45, 16
  %111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %110)  ; LegacyF16ToF32(value)
  %112 = and i32 %36, 65535
  %113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %112)  ; LegacyF16ToF32(value)
  %114 = lshr i32 %40, 16
  %115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %114)  ; LegacyF16ToF32(value)
  %116 = and i32 %45, 65535
  %117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %116)  ; LegacyF16ToF32(value)
  %118 = fmul fast float %113, 0x3FD20DD760000000
  %119 = fmul fast float %55, %50
  %120 = fmul fast float %119, %77
  %121 = fmul fast float %55, %55
  %122 = fmul fast float %121, 0x3FEE471020000000
  %123 = fadd fast float %122, 0xBFD42F6020000000
  %124 = fmul fast float %69, %123
  %125 = fmul fast float %75, %53
  %126 = fmul fast float %79, %54
  %127 = fmul fast float %53, %51
  %128 = fmul fast float %127, %56
  %129 = fmul fast float %128, %67
  %130 = fsub fast float -0.000000e+00, %129
  %131 = fmul fast float %54, %51
  %132 = fmul fast float %131, %56
  %133 = fmul fast float %132, %71
  %134 = fmul fast float %53, %53
  %135 = fmul fast float %54, %54
  %136 = fsub fast float %134, %135
  %137 = fmul fast float %136, 0x3FE17B1420000000
  %138 = fmul fast float %137, %65
  %139 = fmul fast float %54, 0x3FF17B1420000000
  %140 = fmul fast float %139, %53
  %141 = fmul fast float %140, %73
  %142 = fadd fast float %126, %125
  %143 = fmul fast float %142, %50
  %144 = fsub fast float %143, %120
  %145 = fmul fast float %144, 0x3FDF454380000000
  %146 = fadd fast float %124, %138
  %147 = fadd fast float %146, %141
  %148 = fmul fast float %147, %51
  %149 = fsub fast float %130, %133
  %150 = fadd fast float %149, %118
  %151 = fadd fast float %150, %145
  %152 = fadd fast float %151, %148
  %153 = fmul fast float %60, %62
  %154 = fmul fast float %153, %152
  %155 = fmul fast float %115, 0x3FD20DD760000000
  %156 = fmul fast float %119, %93
  %157 = fmul fast float %85, %123
  %158 = fmul fast float %91, %53
  %159 = fmul fast float %95, %54
  %160 = fmul fast float %128, %83
  %161 = fsub fast float -0.000000e+00, %160
  %162 = fmul fast float %132, %87
  %163 = fmul fast float %137, %81
  %164 = fmul fast float %140, %89
  %165 = fadd fast float %159, %158
  %166 = fmul fast float %165, %50
  %167 = fsub fast float %166, %156
  %168 = fmul fast float %167, 0x3FDF454380000000
  %169 = fadd fast float %157, %163
  %170 = fadd fast float %169, %164
  %171 = fmul fast float %170, %51
  %172 = fsub fast float %161, %162
  %173 = fadd fast float %172, %155
  %174 = fadd fast float %173, %168
  %175 = fadd fast float %174, %171
  %176 = fmul fast float %153, %175
  %177 = fmul fast float %117, 0x3FD20DD760000000
  %178 = fmul fast float %119, %109
  %179 = fmul fast float %101, %123
  %180 = fmul fast float %107, %53
  %181 = fmul fast float %111, %54
  %182 = fmul fast float %128, %99
  %183 = fsub fast float -0.000000e+00, %182
  %184 = fmul fast float %132, %103
  %185 = fmul fast float %137, %97
  %186 = fmul fast float %140, %105
  %187 = fadd fast float %181, %180
  %188 = fmul fast float %187, %50
  %189 = fsub fast float %188, %178
  %190 = fmul fast float %189, 0x3FDF454380000000
  %191 = fadd fast float %179, %185
  %192 = fadd fast float %191, %186
  %193 = fmul fast float %192, %51
  %194 = fsub fast float %183, %184
  %195 = fadd fast float %194, %177
  %196 = fadd fast float %195, %190
  %197 = fadd fast float %196, %193
  %198 = fmul fast float %153, %197
  store float %198, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  store float %176, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  store float %154, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  br label %199

; <label>:199                                     ; preds = %58, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %200 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  %201 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  %202 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  %203 = uitofp i32 %30 to float
  %204 = uitofp i32 %31 to float
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %207 = fmul fast float %206, 0x3FE3C6EF40000000
  %208 = frem fast float %203, 2.560000e+02
  %209 = frem fast float %204, 2.560000e+02
  %210 = fptoui float %208 to i32
  %211 = fptoui float %209 to i32
  %212 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %210, i32 %211, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = extractvalue %dx.types.ResRet.f32 %212, 1
  %215 = extractvalue %dx.types.ResRet.f32 %212, 2
  %216 = extractvalue %dx.types.ResRet.f32 %212, 3
  %217 = fadd fast float %213, %207
  %218 = fadd fast float %214, %207
  %219 = fadd fast float %215, %207
  %220 = fadd fast float %216, %207
  %221 = call float @dx.op.unary.f32(i32 22, float %217)  ; Frc(value)
  %222 = call float @dx.op.unary.f32(i32 22, float %218)  ; Frc(value)
  %223 = call float @dx.op.unary.f32(i32 22, float %219)  ; Frc(value)
  %224 = call float @dx.op.unary.f32(i32 22, float %220)  ; Frc(value)
  %225 = fadd fast float %223, %203
  %226 = fadd fast float %224, %204
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 2
  %229 = extractvalue %dx.types.CBufRet.f32 %227, 3
  %230 = fmul fast float %228, %225
  %231 = fmul fast float %229, %226
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 0
  %234 = extractvalue %dx.types.CBufRet.f32 %232, 1
  %235 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 1
  %238 = fmul fast float %230, 2.000000e+00
  %239 = fmul fast float %231, 2.000000e+00
  %240 = fsub fast float 1.000000e+00, %238
  %241 = fsub fast float 1.000000e+00, %239
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %244 = extractvalue %dx.types.CBufRet.f32 %242, 1
  %245 = extractvalue %dx.types.CBufRet.f32 %242, 2
  %246 = fmul fast float %243, %240
  %247 = fmul fast float %244, %240
  %248 = fmul fast float %245, %240
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 0
  %251 = extractvalue %dx.types.CBufRet.f32 %249, 1
  %252 = extractvalue %dx.types.CBufRet.f32 %249, 2
  %253 = fmul fast float %250, %241
  %254 = fmul fast float %251, %241
  %255 = fmul fast float %252, %241
  %256 = fadd fast float %253, %246
  %257 = fadd fast float %254, %247
  %258 = fadd fast float %255, %248
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 0
  %261 = extractvalue %dx.types.CBufRet.f32 %259, 1
  %262 = extractvalue %dx.types.CBufRet.f32 %259, 2
  %263 = fadd fast float %256, %260
  %264 = fadd fast float %257, %261
  %265 = fadd fast float %258, %262
  %266 = fmul fast float %263, %237
  %267 = fmul fast float %264, %237
  %268 = fmul fast float %265, %237
  %269 = fmul fast float %266, %266
  %270 = fmul fast float %267, %267
  %271 = fadd fast float %269, %270
  %272 = fmul fast float %268, %268
  %273 = fadd fast float %271, %272
  %274 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %275 = fdiv fast float 1.000000e+00, %274
  %276 = fmul fast float %266, %275
  %277 = fmul fast float %267, %275
  %278 = fmul fast float %268, %275
  %279 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %30, i32 %31, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = fcmp fast ogt float %280, -1.000000e+00
  %282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.f32 %282, 1
  %284 = select i1 %281, float %283, float 1.000000e+00
  %285 = fadd fast float %280, 1.000000e+00
  %286 = fmul fast float %284, %285
  %287 = call float @dx.op.unary.f32(i32 6, float %286)  ; FAbs(value)
  %288 = fdiv fast float 1.000000e+00, %237
  %289 = fmul fast float %288, %274
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 1
  %292 = fmul fast float %291, %289
  %293 = fmul fast float %289, %287
  %294 = extractvalue %dx.types.CBufRet.f32 %282, 3
  %295 = fcmp fast oge float %287, %294
  %296 = call float @dx.op.binary.f32(i32 36, float %293, float %292)  ; FMin(a,b)
  %297 = select i1 %295, float %292, float %296
  %298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.i32 %298, 3
  %300 = icmp eq i32 %299, 0
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 2
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %305 = fsub fast float %302, %235
  %306 = fadd fast float %305, %304
  %307 = fsub fast float 0xC7EFFFFFE0000000, %235
  br i1 %300, label %319, label %308, !dx.controlflow.hints !29

; <label>:308                                     ; preds = %199
  %309 = fsub fast float -0.000000e+00, %234
  %310 = fsub fast float -0.000000e+00, %233
  %311 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %310, float %309, float %306)  ; Dot3(ax,ay,az,bx,by,bz)
  %312 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %276, float %277, float %278)  ; Dot3(ax,ay,az,bx,by,bz)
  %313 = fdiv fast float 1.000000e+00, %312
  %314 = fmul fast float %313, %311
  %315 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %310, float %309, float %307)  ; Dot3(ax,ay,az,bx,by,bz)
  %316 = fmul fast float %313, %315
  %317 = call float @dx.op.binary.f32(i32 36, float %314, float %316)  ; FMin(a,b)
  %318 = call float @dx.op.binary.f32(i32 35, float %314, float %316)  ; FMax(a,b)
  br label %352

; <label>:319                                     ; preds = %199
  %320 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %321 = extractvalue %dx.types.CBufRet.f32 %301, 1
  %322 = extractvalue %dx.types.CBufRet.f32 %303, 0
  %323 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %324 = fdiv fast float 1.000000e+00, %276
  %325 = fdiv fast float 1.000000e+00, %277
  %326 = fdiv fast float 1.000000e+00, %278
  %327 = fsub fast float %320, %233
  %328 = fmul fast float %324, %327
  %329 = fadd fast float %327, %322
  %330 = fmul fast float %329, %324
  %331 = call float @dx.op.binary.f32(i32 36, float %328, float %330)  ; FMin(a,b)
  %332 = call float @dx.op.binary.f32(i32 35, float %328, float %330)  ; FMax(a,b)
  %333 = fsub fast float %321, %234
  %334 = fmul fast float %325, %333
  %335 = fadd fast float %333, %323
  %336 = fmul fast float %335, %325
  %337 = call float @dx.op.binary.f32(i32 36, float %334, float %336)  ; FMin(a,b)
  %338 = call float @dx.op.binary.f32(i32 35, float %331, float %337)  ; FMax(a,b)
  %339 = call float @dx.op.binary.f32(i32 35, float %334, float %336)  ; FMax(a,b)
  %340 = call float @dx.op.binary.f32(i32 36, float %332, float %339)  ; FMin(a,b)
  %341 = fmul fast float %326, %307
  %342 = fmul fast float %326, %306
  %343 = call float @dx.op.binary.f32(i32 36, float %341, float %342)  ; FMin(a,b)
  %344 = call float @dx.op.binary.f32(i32 35, float %338, float %343)  ; FMax(a,b)
  %345 = call float @dx.op.binary.f32(i32 35, float %341, float %342)  ; FMax(a,b)
  %346 = call float @dx.op.binary.f32(i32 36, float %340, float %345)  ; FMin(a,b)
  %347 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %344)  ; FMax(a,b)
  %348 = fcmp fast ult float %346, %347
  br i1 %348, label %352, label %349, !dx.controlflow.hints !30

; <label>:349                                     ; preds = %319
  %350 = call float @dx.op.binary.f32(i32 36, float %344, float %346)  ; FMin(a,b)
  %351 = call float @dx.op.binary.f32(i32 35, float %344, float %346)  ; FMax(a,b)
  br label %352

; <label>:352                                     ; preds = %349, %319, %308
  %353 = phi float [ %317, %308 ], [ %350, %349 ], [ 0.000000e+00, %319 ]
  %354 = phi float [ %318, %308 ], [ %351, %349 ], [ 0.000000e+00, %319 ]
  %355 = fcmp fast oeq float %354, 0.000000e+00
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %358 = fcmp fast olt float %354, %357
  %359 = or i1 %355, %358
  br i1 %359, label %364, label %360, !dx.controlflow.hints !31

; <label>:360                                     ; preds = %352
  %361 = call float @dx.op.binary.f32(i32 35, float %357, float %353)  ; FMax(a,b)
  %362 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %361)  ; FMin(a,b)
  %363 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %354)  ; FMax(a,b)
  br label %364

; <label>:364                                     ; preds = %360, %352
  %365 = phi i32 [ 1, %360 ], [ 0, %352 ]
  %366 = phi float [ %363, %360 ], [ -1.000000e+00, %352 ]
  %367 = phi float [ %362, %360 ], [ 0x47EFFFFFE0000000, %352 ]
  %368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.f32 %368, 3
  %370 = fsub fast float -0.000000e+00, %233
  %371 = fsub fast float -0.000000e+00, %234
  %372 = fsub fast float %369, %235
  %373 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %370, float %371, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %374 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %276, float %277, float %278)  ; Dot3(ax,ay,az,bx,by,bz)
  %375 = fdiv fast float 1.000000e+00, %374
  %376 = fmul fast float %375, %373
  %377 = fcmp fast olt float %376, 0.000000e+00
  %378 = fcmp fast ogt float %278, 0.000000e+00
  %379 = and i1 %378, %377
  br i1 %379, label %384, label %380, !dx.controlflow.hints !32

; <label>:380                                     ; preds = %364
  %381 = fcmp fast olt float %278, 0.000000e+00
  br i1 %381, label %382, label %384, !dx.controlflow.hints !33

; <label>:382                                     ; preds = %380
  %383 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %376)  ; FMax(a,b)
  br label %384

; <label>:384                                     ; preds = %382, %380, %364
  %385 = phi float [ 0.000000e+00, %364 ], [ %383, %382 ], [ 0.000000e+00, %380 ]
  %386 = phi float [ 0.000000e+00, %364 ], [ 0x47EFFFFFE0000000, %382 ], [ %376, %380 ]
  %387 = fcmp fast oeq float %386, 0.000000e+00
  br i1 %387, label %391, label %388, !dx.controlflow.hints !34

; <label>:388                                     ; preds = %384
  %389 = call float @dx.op.binary.f32(i32 36, float %367, float %385)  ; FMin(a,b)
  %390 = call float @dx.op.binary.f32(i32 35, float %366, float %386)  ; FMax(a,b)
  br label %391

; <label>:391                                     ; preds = %388, %384
  %392 = phi i32 [ 1, %388 ], [ 0, %384 ]
  %393 = phi float [ %390, %388 ], [ %366, %384 ]
  %394 = phi float [ %389, %388 ], [ %367, %384 ]
  %395 = call float @dx.op.binary.f32(i32 36, float %297, float %393)  ; FMin(a,b)
  %396 = call float @dx.op.binary.f32(i32 35, float %274, float %394)  ; FMax(a,b)
  %397 = extractvalue %dx.types.CBufRet.f32 %368, 0
  %398 = fmul fast float %222, 2.000000e+00
  %399 = fadd fast float %398, -1.000000e+00
  %400 = fmul fast float %397, %399
  %401 = fadd fast float %400, %396
  %402 = fcmp fast olt float %401, %395
  %403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.f32 %403, 2
  %405 = fcmp fast olt float %404, 1.000000e+00
  %406 = and i1 %402, %405
  br i1 %406, label %407, label %1187

; <label>:407                                     ; preds = %391
  %408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.i32 %408, 1
  %410 = add i32 %409, -1
  %411 = fmul fast float %401, %278
  %412 = fadd fast float %411, %235
  %413 = fmul fast float %401, %277
  %414 = fadd fast float %413, %234
  %415 = fmul fast float %401, %276
  %416 = fadd fast float %415, %233
  br label %417

; <label>:417                                     ; preds = %1163, %407
  %418 = phi float [ %1165, %1163 ], [ 0.000000e+00, %407 ]
  %419 = phi float [ %1166, %1163 ], [ 1.000000e+00, %407 ]
  %420 = phi float [ %1167, %1163 ], [ 0.000000e+00, %407 ]
  %421 = phi float [ %1168, %1163 ], [ 0.000000e+00, %407 ]
  %422 = phi float [ %1169, %1163 ], [ 0.000000e+00, %407 ]
  %423 = phi float [ %1179, %1163 ], [ %416, %407 ]
  %424 = phi float [ %1180, %1163 ], [ %414, %407 ]
  %425 = phi float [ %1181, %1163 ], [ %412, %407 ]
  %426 = phi float [ %1164, %1163 ], [ %401, %407 ]
  %427 = phi i32 [ %610, %1163 ], [ %410, %407 ]
  %428 = phi float [ %1170, %1163 ], [ 0.000000e+00, %407 ]
  %429 = phi float [ %1171, %1163 ], [ 0.000000e+00, %407 ]
  %430 = phi float [ %1172, %1163 ], [ 0.000000e+00, %407 ]
  %431 = phi float [ %1173, %1163 ], [ 0.000000e+00, %407 ]
  %432 = phi float [ %1174, %1163 ], [ 0.000000e+00, %407 ]
  %433 = phi i32 [ %1175, %1163 ], [ 0, %407 ]
  %434 = fsub fast float -0.000000e+00, %424
  %435 = fsub fast float -0.000000e+00, %423
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 0
  %438 = icmp eq i32 %365, 0
  br i1 %438, label %607, label %439, !dx.controlflow.hints !35

; <label>:439                                     ; preds = %417
  %440 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.i32 %440, 1
  %442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.f32 %442, 1
  %444 = fcmp fast ogt float %443, %426
  br i1 %444, label %445, label %447, !dx.controlflow.hints !36

; <label>:445                                     ; preds = %439
  %446 = fsub fast float %443, %426
  br label %597

; <label>:447                                     ; preds = %439
  %448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.i32 %448, 3
  %450 = icmp eq i32 %449, 0
  %451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.f32 %451, 2
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 2
  %455 = fsub fast float %452, %425
  %456 = fadd fast float %455, %454
  %457 = fsub fast float 0xC7EFFFFFE0000000, %425
  br i1 %450, label %465, label %458, !dx.controlflow.hints !29

; <label>:458                                     ; preds = %447
  %459 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %435, float %434, float %456)  ; Dot3(ax,ay,az,bx,by,bz)
  %460 = fmul fast float %375, %459
  %461 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %435, float %434, float %457)  ; Dot3(ax,ay,az,bx,by,bz)
  %462 = fmul fast float %375, %461
  %463 = call float @dx.op.binary.f32(i32 36, float %460, float %462)  ; FMin(a,b)
  %464 = call float @dx.op.binary.f32(i32 35, float %460, float %462)  ; FMax(a,b)
  br label %498

; <label>:465                                     ; preds = %447
  %466 = extractvalue %dx.types.CBufRet.f32 %451, 0
  %467 = extractvalue %dx.types.CBufRet.f32 %451, 1
  %468 = extractvalue %dx.types.CBufRet.f32 %453, 0
  %469 = extractvalue %dx.types.CBufRet.f32 %453, 1
  %470 = fdiv fast float 1.000000e+00, %276
  %471 = fdiv fast float 1.000000e+00, %277
  %472 = fdiv fast float 1.000000e+00, %278
  %473 = fsub fast float %466, %423
  %474 = fmul fast float %470, %473
  %475 = fadd fast float %473, %468
  %476 = fmul fast float %475, %470
  %477 = call float @dx.op.binary.f32(i32 36, float %474, float %476)  ; FMin(a,b)
  %478 = call float @dx.op.binary.f32(i32 35, float %474, float %476)  ; FMax(a,b)
  %479 = fsub fast float %467, %424
  %480 = fmul fast float %471, %479
  %481 = fadd fast float %479, %469
  %482 = fmul fast float %481, %471
  %483 = call float @dx.op.binary.f32(i32 36, float %480, float %482)  ; FMin(a,b)
  %484 = call float @dx.op.binary.f32(i32 35, float %477, float %483)  ; FMax(a,b)
  %485 = call float @dx.op.binary.f32(i32 35, float %480, float %482)  ; FMax(a,b)
  %486 = call float @dx.op.binary.f32(i32 36, float %478, float %485)  ; FMin(a,b)
  %487 = fmul fast float %472, %457
  %488 = fmul fast float %472, %456
  %489 = call float @dx.op.binary.f32(i32 36, float %487, float %488)  ; FMin(a,b)
  %490 = call float @dx.op.binary.f32(i32 35, float %484, float %489)  ; FMax(a,b)
  %491 = call float @dx.op.binary.f32(i32 35, float %487, float %488)  ; FMax(a,b)
  %492 = call float @dx.op.binary.f32(i32 36, float %486, float %491)  ; FMin(a,b)
  %493 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %490)  ; FMax(a,b)
  %494 = fcmp fast ult float %492, %493
  br i1 %494, label %498, label %495, !dx.controlflow.hints !30

; <label>:495                                     ; preds = %465
  %496 = call float @dx.op.binary.f32(i32 36, float %490, float %492)  ; FMin(a,b)
  %497 = call float @dx.op.binary.f32(i32 35, float %490, float %492)  ; FMax(a,b)
  br label %498

; <label>:498                                     ; preds = %495, %465, %458
  %499 = phi float [ %463, %458 ], [ %496, %495 ], [ 0.000000e+00, %465 ]
  %500 = phi float [ %464, %458 ], [ %497, %495 ], [ 0.000000e+00, %465 ]
  %501 = fcmp fast ogt float %499, 0.000000e+00
  br i1 %501, label %597, label %502, !dx.controlflow.hints !37

; <label>:502                                     ; preds = %498
  %503 = fcmp fast ugt float %500, 0.000000e+00
  br i1 %503, label %504, label %597, !dx.controlflow.hints !38

; <label>:504                                     ; preds = %502
  %505 = icmp sgt i32 %427, 0
  br i1 %505, label %506, label %591

; <label>:506                                     ; preds = %504
  br label %507

; <label>:507                                     ; preds = %587, %506
  %508 = phi i32 [ %588, %587 ], [ %427, %506 ]
  %509 = sitofp i32 %508 to float
  %510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.f32 %510, 0
  %512 = extractvalue %dx.types.CBufRet.f32 %510, 1
  %513 = fsub fast float %423, %511
  %514 = fsub fast float %424, %512
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 0
  %517 = extractvalue %dx.types.CBufRet.f32 %515, 1
  %518 = fmul fast float %513, %516
  %519 = fmul fast float %514, %517
  %520 = fsub fast float 1.000000e+00, %519
  %521 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.i32 %521, 3
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %530, label %524, !dx.controlflow.hints !39

; <label>:524                                     ; preds = %507
  %525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %518, float %520, float undef, float undef, i32 0, i32 0, i32 undef, float %509)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = extractvalue %dx.types.ResRet.f32 %525, 1
  %528 = extractvalue %dx.types.ResRet.f32 %525, 2
  %529 = extractvalue %dx.types.ResRet.f32 %525, 3
  br label %536

; <label>:530                                     ; preds = %507
  %531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %12, float %518, float %520, float undef, float undef, i32 0, i32 0, i32 undef, float %509)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %532 = extractvalue %dx.types.ResRet.f32 %531, 0
  %533 = extractvalue %dx.types.ResRet.f32 %531, 1
  %534 = extractvalue %dx.types.ResRet.f32 %531, 2
  %535 = extractvalue %dx.types.ResRet.f32 %531, 3
  br label %536

; <label>:536                                     ; preds = %530, %524
  %537 = phi float [ %526, %524 ], [ %532, %530 ]
  %538 = phi float [ %527, %524 ], [ %533, %530 ]
  %539 = phi float [ %528, %524 ], [ %534, %530 ]
  %540 = phi float [ %529, %524 ], [ %535, %530 ]
  %541 = extractvalue %dx.types.CBufRet.f32 %515, 3
  %542 = fmul fast float %541, %537
  %543 = extractvalue %dx.types.CBufRet.f32 %510, 2
  %544 = fadd fast float %542, %543
  %545 = fmul fast float %541, %538
  %546 = fadd fast float %545, %543
  %547 = fmul fast float %541, %539
  %548 = fadd fast float %547, %543
  %549 = and i32 %508, 31
  %550 = shl i32 1, %549
  %551 = uitofp i32 %550 to float
  %552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.f32 %552, 3
  %554 = fdiv fast float 1.000000e+00, %553
  %555 = fmul fast float %554, %551
  %556 = fmul fast float %555, %278
  %557 = fadd fast float %556, %425
  %558 = fcmp fast oeq float %540, 0.000000e+00
  %559 = fcmp fast ogt float %425, %546
  %560 = fcmp fast ogt float %557, %546
  %561 = and i1 %559, %560
  %562 = or i1 %558, %561
  br i1 %562, label %563, label %567, !dx.controlflow.hints !40

; <label>:563                                     ; preds = %536
  %564 = add nsw i32 %508, 1
  %565 = add nsw i32 %441, -1
  %566 = call i32 @dx.op.binary.i32(i32 38, i32 %564, i32 %565)  ; IMin(a,b)
  br label %597

; <label>:567                                     ; preds = %536
  %568 = fcmp fast olt float %425, %548
  %569 = fcmp fast olt float %557, %548
  %570 = and i1 %568, %569
  br i1 %570, label %571, label %575, !dx.controlflow.hints !41

; <label>:571                                     ; preds = %567
  %572 = add nsw i32 %508, 1
  %573 = add nsw i32 %441, -1
  %574 = call i32 @dx.op.binary.i32(i32 38, i32 %572, i32 %573)  ; IMin(a,b)
  br label %597

; <label>:575                                     ; preds = %567
  %576 = fcmp fast olt float %425, %544
  %577 = fcmp fast olt float %557, %544
  %578 = and i1 %576, %577
  br i1 %578, label %579, label %587, !dx.controlflow.hints !42

; <label>:579                                     ; preds = %575
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 3
  %582 = extractvalue %dx.types.CBufRet.f32 %515, 2
  %583 = fcmp fast une float %581, %582
  br i1 %583, label %584, label %591, !dx.controlflow.hints !43

; <label>:584                                     ; preds = %579
  %585 = fsub fast float %425, %548
  %586 = call float @dx.op.binary.f32(i32 36, float %555, float %585)  ; FMin(a,b)
  br label %591

; <label>:587                                     ; preds = %575
  %588 = add nsw i32 %508, -1
  %589 = icmp sgt i32 %508, 1
  br i1 %589, label %507, label %590

; <label>:590                                     ; preds = %587
  br label %591

; <label>:591                                     ; preds = %590, %584, %579, %504
  %592 = phi float [ %586, %584 ], [ %555, %579 ], [ 0.000000e+00, %504 ], [ 0.000000e+00, %590 ]
  %593 = phi i32 [ %508, %584 ], [ %508, %579 ], [ %427, %504 ], [ %588, %590 ]
  %594 = add nsw i32 %593, 1
  %595 = add nsw i32 %441, -1
  %596 = call i32 @dx.op.binary.i32(i32 38, i32 %594, i32 %595)  ; IMin(a,b)
  br label %597

; <label>:597                                     ; preds = %591, %571, %563, %502, %498, %445
  %598 = phi float [ %446, %445 ], [ %555, %563 ], [ %555, %571 ], [ %592, %591 ], [ 0x47EFFFFFE0000000, %502 ], [ %499, %498 ]
  %599 = phi i32 [ %365, %445 ], [ %365, %563 ], [ %365, %571 ], [ %365, %591 ], [ 0, %502 ], [ %365, %498 ]
  %600 = phi i32 [ %427, %445 ], [ %566, %563 ], [ %574, %571 ], [ %596, %591 ], [ %427, %502 ], [ %427, %498 ]
  %601 = icmp ne i32 %599, 0
  %602 = zext i1 %601 to i32
  %603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.f32 %603, 2
  %605 = call float @dx.op.binary.f32(i32 35, float %598, float %604)  ; FMax(a,b)
  %606 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %605)  ; FMin(a,b)
  br label %607

; <label>:607                                     ; preds = %597, %417
  %608 = phi i32 [ %602, %597 ], [ 0, %417 ]
  %609 = phi float [ %606, %597 ], [ 0x47EFFFFFE0000000, %417 ]
  %610 = phi i32 [ %600, %597 ], [ %427, %417 ]
  %611 = icmp eq i32 %392, 0
  br i1 %611, label %624, label %612, !dx.controlflow.hints !44

; <label>:612                                     ; preds = %607
  %613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %614 = extractvalue %dx.types.CBufRet.f32 %613, 3
  %615 = extractvalue %dx.types.CBufRet.f32 %613, 2
  %616 = fmul fast float %614, %426
  %617 = fdiv fast float %616, %395
  %618 = fadd fast float %617, 1.000000e+00
  %619 = call float @dx.op.unary.f32(i32 23, float %618)  ; Log(value)
  %620 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %619)  ; FMin(a,b)
  %621 = fmul fast float %615, %395
  %622 = fmul fast float %621, %620
  %623 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %622)  ; FMin(a,b)
  br label %624

; <label>:624                                     ; preds = %612, %607
  %625 = phi float [ %623, %612 ], [ 0x47EFFFFFE0000000, %607 ]
  %626 = extractvalue %dx.types.CBufRet.f32 %436, 2
  %627 = fmul fast float %626, %426
  %628 = call float @dx.op.unary.f32(i32 23, float %627)  ; Log(value)
  %629 = fmul fast float %628, 0x3FE62E4300000000
  %630 = call float @dx.op.binary.f32(i32 35, float %629, float 1.000000e+00)  ; FMax(a,b)
  %631 = fmul fast float %630, %625
  %632 = call float @dx.op.binary.f32(i32 36, float %631, float %609)  ; FMin(a,b)
  %633 = call float @dx.op.binary.f32(i32 35, float %632, float %437)  ; FMax(a,b)
  %634 = fsub fast float %395, %426
  %635 = fadd fast float %634, 0x3F1A36E2E0000000
  %636 = call float @dx.op.binary.f32(i32 36, float %635, float %633)  ; FMin(a,b)
  %637 = icmp eq i32 %608, 0
  br i1 %637, label %743, label %638, !dx.controlflow.hints !45

; <label>:638                                     ; preds = %624
  %639 = fcmp fast olt float %635, %633
  %640 = fmul fast float %278, %221
  %641 = fmul fast float %640, %636
  %642 = fadd fast float %641, %425
  %643 = fmul fast float %278, %222
  %644 = fmul fast float %643, %636
  %645 = fadd fast float %644, %425
  %646 = fmul fast float %278, %223
  %647 = fmul fast float %646, %636
  %648 = fadd fast float %647, %425
  br i1 %639, label %649, label %654, !dx.controlflow.hints !46

; <label>:649                                     ; preds = %638
  %650 = fmul fast float %636, %276
  %651 = fmul fast float %636, %277
  %652 = fadd fast float %650, %423
  %653 = fadd fast float %651, %424
  br label %654

; <label>:654                                     ; preds = %649, %638
  %655 = phi float [ %652, %649 ], [ %423, %638 ]
  %656 = phi float [ %653, %649 ], [ %424, %638 ]
  %657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.f32 %657, 0
  %659 = extractvalue %dx.types.CBufRet.f32 %657, 1
  %660 = fsub fast float %655, %658
  %661 = fsub fast float %656, %659
  %662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.f32 %662, 0
  %664 = extractvalue %dx.types.CBufRet.f32 %662, 1
  %665 = fmul fast float %660, %663
  %666 = fmul fast float %661, %664
  %667 = fsub fast float 1.000000e+00, %666
  %668 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.i32 %668, 3
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %677, label %671, !dx.controlflow.hints !39

; <label>:671                                     ; preds = %654
  %672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %665, float %667, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %673 = extractvalue %dx.types.ResRet.f32 %672, 0
  %674 = extractvalue %dx.types.ResRet.f32 %672, 1
  %675 = extractvalue %dx.types.ResRet.f32 %672, 2
  %676 = extractvalue %dx.types.ResRet.f32 %672, 3
  br label %683

; <label>:677                                     ; preds = %654
  %678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %12, float %665, float %667, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %679 = extractvalue %dx.types.ResRet.f32 %678, 0
  %680 = extractvalue %dx.types.ResRet.f32 %678, 1
  %681 = extractvalue %dx.types.ResRet.f32 %678, 2
  %682 = extractvalue %dx.types.ResRet.f32 %678, 3
  br label %683

; <label>:683                                     ; preds = %677, %671
  %684 = phi float [ %673, %671 ], [ %679, %677 ]
  %685 = phi float [ %674, %671 ], [ %680, %677 ]
  %686 = phi float [ %675, %671 ], [ %681, %677 ]
  %687 = phi float [ %676, %671 ], [ %682, %677 ]
  %688 = extractvalue %dx.types.CBufRet.f32 %662, 3
  %689 = fmul fast float %688, %685
  %690 = fmul fast float %689, %684
  %691 = fsub fast float %689, %690
  %692 = fcmp fast ole float %691, 0.000000e+00
  %693 = extractvalue %dx.types.CBufRet.f32 %657, 2
  %694 = fadd fast float %690, %693
  %695 = fmul fast float %688, %686
  %696 = fadd fast float %695, %693
  %697 = fdiv fast float 1.000000e+00, %691
  %698 = select i1 %692, float 1.000000e+06, float %697
  %699 = fsub fast float %642, %694
  %700 = fmul fast float %698, %699
  %701 = call float @dx.op.unary.f32(i32 7, float %700)  ; Saturate(value)
  %702 = extractvalue %dx.types.CBufRet.f32 %662, 2
  %703 = fmul fast float %702, %701
  %704 = fsub fast float %702, %703
  %705 = fcmp fast olt float %642, %696
  %706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %707 = extractvalue %dx.types.CBufRet.f32 %706, 3
  %708 = select i1 %705, float %707, float 1.000000e+00
  %709 = fmul fast float %704, %708
  %710 = fsub fast float %645, %694
  %711 = fmul fast float %698, %710
  %712 = call float @dx.op.unary.f32(i32 7, float %711)  ; Saturate(value)
  %713 = fmul fast float %702, %712
  %714 = fsub fast float %702, %713
  %715 = fcmp fast olt float %645, %696
  %716 = select i1 %715, float %707, float 1.000000e+00
  %717 = fmul fast float %714, %716
  %718 = fadd fast float %717, %709
  %719 = fsub fast float %648, %694
  %720 = fmul fast float %698, %719
  %721 = call float @dx.op.unary.f32(i32 7, float %720)  ; Saturate(value)
  %722 = fmul fast float %702, %721
  %723 = fsub fast float %702, %722
  %724 = fcmp fast olt float %648, %696
  %725 = select i1 %724, float %707, float 1.000000e+00
  %726 = fmul fast float %723, %725
  %727 = fadd fast float %718, %726
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 2
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 0
  %732 = extractvalue %dx.types.CBufRet.f32 %730, 1
  %733 = extractvalue %dx.types.CBufRet.f32 %730, 2
  %734 = fmul fast float %636, 0x3FD5555560000000
  %735 = fmul fast float %734, %687
  %736 = fmul fast float %735, %729
  %737 = fmul fast float %736, %727
  %738 = extractvalue %dx.types.CBufRet.f32 %706, 0
  %739 = fmul fast float %737, %731
  %740 = fmul fast float %737, %732
  %741 = fmul fast float %737, %733
  %742 = fmul fast float %737, %738
  br label %743

; <label>:743                                     ; preds = %683, %624
  %744 = phi float [ %737, %683 ], [ 0.000000e+00, %624 ]
  %745 = phi float [ %742, %683 ], [ 0.000000e+00, %624 ]
  %746 = phi float [ %739, %683 ], [ 0.000000e+00, %624 ]
  %747 = phi float [ %740, %683 ], [ 0.000000e+00, %624 ]
  %748 = phi float [ %741, %683 ], [ 0.000000e+00, %624 ]
  br i1 %611, label %808, label %749, !dx.controlflow.hints !47

; <label>:749                                     ; preds = %743
  %750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %751 = extractvalue %dx.types.CBufRet.f32 %750, 0
  %752 = fsub fast float %751, %425
  %753 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %435, float %434, float %752)  ; Dot3(ax,ay,az,bx,by,bz)
  %754 = fmul fast float %375, %753
  %755 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %754)  ; FMax(a,b)
  %756 = fcmp fast olt float %278, 0.000000e+00
  %757 = call float @dx.op.binary.f32(i32 36, float %636, float %755)  ; FMin(a,b)
  br i1 %756, label %759, label %758, !dx.controlflow.hints !48

; <label>:758                                     ; preds = %749
  br label %759

; <label>:759                                     ; preds = %758, %749
  %760 = phi float [ 0.000000e+00, %758 ], [ %757, %749 ]
  %761 = phi float [ %757, %758 ], [ %636, %749 ]
  %762 = phi float [ %757, %758 ], [ 0.000000e+00, %749 ]
  %763 = phi float [ %636, %758 ], [ %757, %749 ]
  %764 = fsub fast float %761, %760
  %765 = extractvalue %dx.types.CBufRet.f32 %750, 1
  %766 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %765)  ; FMin(a,b)
  %767 = fsub fast float %425, %751
  %768 = fmul fast float %766, 0x3FF7154760000000
  %769 = fmul fast float %768, %767
  %770 = call float @dx.op.unary.f32(i32 21, float %769)  ; Exp(value)
  %771 = fmul fast float %278, 0x3FF7154760000000
  %772 = fmul fast float %771, %763
  %773 = fmul fast float %772, %766
  %774 = call float @dx.op.unary.f32(i32 21, float %773)  ; Exp(value)
  %775 = fmul fast float %771, %762
  %776 = fmul fast float %775, %766
  %777 = call float @dx.op.unary.f32(i32 21, float %776)  ; Exp(value)
  %778 = fsub fast float %774, %777
  %779 = fmul fast float %778, %770
  %780 = fmul fast float %766, %278
  %781 = fdiv fast float %779, %780
  %782 = fadd fast float %764, %781
  %783 = call float @dx.op.unary.f32(i32 6, float %278)  ; FAbs(value)
  %784 = fcmp fast olt float %783, 0x3F0FFB4800000000
  %785 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %767)  ; FMax(a,b)
  %786 = fmul fast float %785, 0x3FF7154760000000
  %787 = fmul fast float %786, %765
  %788 = call float @dx.op.unary.f32(i32 21, float %787)  ; Exp(value)
  %789 = fmul fast float %788, %636
  %790 = select i1 %784, float %789, float %782
  %791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %792 = extractvalue %dx.types.CBufRet.f32 %791, 1
  %793 = fmul fast float %790, %792
  %794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %795 = extractvalue %dx.types.CBufRet.f32 %794, 0
  %796 = extractvalue %dx.types.CBufRet.f32 %794, 1
  %797 = extractvalue %dx.types.CBufRet.f32 %794, 2
  %798 = extractvalue %dx.types.CBufRet.f32 %791, 2
  %799 = fmul fast float %795, %793
  %800 = fmul fast float %796, %793
  %801 = fmul fast float %797, %793
  %802 = fadd fast float %799, %746
  %803 = fadd fast float %800, %747
  %804 = fadd fast float %801, %748
  %805 = fmul fast float %798, %793
  %806 = fadd fast float %805, %745
  %807 = fadd fast float %793, %744
  br label %808

; <label>:808                                     ; preds = %759, %743
  %809 = phi float [ %807, %759 ], [ %744, %743 ]
  %810 = phi float [ %806, %759 ], [ %745, %743 ]
  %811 = phi float [ %802, %759 ], [ %746, %743 ]
  %812 = phi float [ %803, %759 ], [ %747, %743 ]
  %813 = phi float [ %804, %759 ], [ %748, %743 ]
  %814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %815 = extractvalue %dx.types.CBufRet.f32 %814, 1
  %816 = fcmp fast ogt float %809, %815
  br i1 %816, label %817, label %823, !dx.controlflow.hints !49

; <label>:817                                     ; preds = %808
  %818 = fdiv fast float 1.000000e+00, %809
  %819 = fmul fast float %818, %811
  %820 = fmul fast float %818, %812
  %821 = fmul fast float %818, %813
  %822 = fmul fast float %818, %810
  br label %823

; <label>:823                                     ; preds = %817, %808
  %824 = phi float [ %822, %817 ], [ %810, %808 ]
  %825 = phi float [ %819, %817 ], [ %811, %808 ]
  %826 = phi float [ %820, %817 ], [ %812, %808 ]
  %827 = phi float [ %821, %817 ], [ %813, %808 ]
  br i1 %816, label %830, label %828, !dx.controlflow.hints !50

; <label>:828                                     ; preds = %823
  %829 = fadd fast float %636, %426
  br label %1163

; <label>:830                                     ; preds = %823
  %831 = fmul fast float %809, 0xBFF7154760000000
  %832 = call float @dx.op.unary.f32(i32 21, float %831)  ; Exp(value)
  %833 = call float @dx.op.unary.f32(i32 7, float %832)  ; Saturate(value)
  %834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %835 = extractvalue %dx.types.CBufRet.f32 %834, 3
  %836 = fcmp fast une float %835, 0.000000e+00
  %837 = extractvalue %dx.types.CBufRet.f32 %834, 0
  %838 = extractvalue %dx.types.CBufRet.f32 %834, 1
  %839 = extractvalue %dx.types.CBufRet.f32 %834, 2
  br i1 %836, label %840, label %862, !dx.controlflow.hints !51

; <label>:840                                     ; preds = %830
  %841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %842 = extractvalue %dx.types.CBufRet.f32 %841, 0
  %843 = extractvalue %dx.types.CBufRet.f32 %841, 1
  %844 = extractvalue %dx.types.CBufRet.f32 %841, 2
  %845 = call float @dx.op.dot3.f32(i32 55, float %837, float %838, float %839, float %276, float %277, float %278)  ; Dot3(ax,ay,az,bx,by,bz)
  %846 = fcmp fast ogt float %824, 0.000000e+00
  %847 = select i1 %846, float 1.000000e+00, float -1.000000e+00
  %848 = fmul fast float %847, 5.000000e-01
  %849 = fmul fast float %848, %845
  %850 = fmul fast float %847, %824
  %851 = fadd fast float %849, 4.921875e-01
  %852 = fadd fast float %850, -3.125000e-02
  %853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %851, float 0x3FB25F3060000000, float %852, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %854 = extractvalue %dx.types.ResRet.f32 %853, 0
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %857 = fmul fast float %854, 0x400921FB60000000
  %858 = fmul fast float %857, %856
  %859 = fmul fast float %858, %842
  %860 = fmul fast float %858, %843
  %861 = fmul fast float %858, %844
  br label %862

; <label>:862                                     ; preds = %840, %830
  %863 = phi float [ %859, %840 ], [ 0.000000e+00, %830 ]
  %864 = phi float [ %860, %840 ], [ 0.000000e+00, %830 ]
  %865 = phi float [ %861, %840 ], [ 0.000000e+00, %830 ]
  %866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %867 = extractvalue %dx.types.CBufRet.f32 %866, 0
  %868 = fmul fast float %867, %837
  %869 = fmul fast float %867, %838
  %870 = fmul fast float %867, %839
  %871 = fadd fast float %868, %423
  %872 = fsub fast float -0.000000e+00, %871
  %873 = fadd fast float %869, %424
  %874 = fsub fast float -0.000000e+00, %873
  %875 = fadd fast float %870, %425
  br i1 %438, label %950, label %876, !dx.controlflow.hints !35

; <label>:876                                     ; preds = %862
  %877 = extractvalue %dx.types.CBufRet.f32 %866, 1
  %878 = fcmp fast ogt float %877, %867
  br i1 %878, label %879, label %881, !dx.controlflow.hints !36

; <label>:879                                     ; preds = %876
  %880 = fsub fast float %877, %867
  br label %941

; <label>:881                                     ; preds = %876
  %882 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %883 = extractvalue %dx.types.CBufRet.i32 %882, 3
  %884 = icmp eq i32 %883, 0
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 2
  %887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %888 = extractvalue %dx.types.CBufRet.f32 %887, 2
  %889 = fsub fast float %886, %875
  %890 = fadd fast float %889, %888
  %891 = fsub fast float 0xC7EFFFFFE0000000, %875
  br i1 %884, label %901, label %892, !dx.controlflow.hints !29

; <label>:892                                     ; preds = %881
  %893 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %872, float %874, float %890)  ; Dot3(ax,ay,az,bx,by,bz)
  %894 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %837, float %838, float %839)  ; Dot3(ax,ay,az,bx,by,bz)
  %895 = fdiv fast float 1.000000e+00, %894
  %896 = fmul fast float %895, %893
  %897 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %872, float %874, float %891)  ; Dot3(ax,ay,az,bx,by,bz)
  %898 = fmul fast float %895, %897
  %899 = call float @dx.op.binary.f32(i32 36, float %896, float %898)  ; FMin(a,b)
  %900 = call float @dx.op.binary.f32(i32 35, float %896, float %898)  ; FMax(a,b)
  br label %934

; <label>:901                                     ; preds = %881
  %902 = extractvalue %dx.types.CBufRet.f32 %885, 0
  %903 = extractvalue %dx.types.CBufRet.f32 %885, 1
  %904 = extractvalue %dx.types.CBufRet.f32 %887, 0
  %905 = extractvalue %dx.types.CBufRet.f32 %887, 1
  %906 = fdiv fast float 1.000000e+00, %837
  %907 = fdiv fast float 1.000000e+00, %838
  %908 = fdiv fast float 1.000000e+00, %839
  %909 = fsub fast float %902, %871
  %910 = fmul fast float %906, %909
  %911 = fadd fast float %909, %904
  %912 = fmul fast float %911, %906
  %913 = call float @dx.op.binary.f32(i32 36, float %910, float %912)  ; FMin(a,b)
  %914 = call float @dx.op.binary.f32(i32 35, float %910, float %912)  ; FMax(a,b)
  %915 = fsub fast float %903, %873
  %916 = fmul fast float %907, %915
  %917 = fadd fast float %915, %905
  %918 = fmul fast float %917, %907
  %919 = call float @dx.op.binary.f32(i32 36, float %916, float %918)  ; FMin(a,b)
  %920 = call float @dx.op.binary.f32(i32 35, float %913, float %919)  ; FMax(a,b)
  %921 = call float @dx.op.binary.f32(i32 35, float %916, float %918)  ; FMax(a,b)
  %922 = call float @dx.op.binary.f32(i32 36, float %914, float %921)  ; FMin(a,b)
  %923 = fmul fast float %908, %891
  %924 = fmul fast float %908, %890
  %925 = call float @dx.op.binary.f32(i32 36, float %923, float %924)  ; FMin(a,b)
  %926 = call float @dx.op.binary.f32(i32 35, float %920, float %925)  ; FMax(a,b)
  %927 = call float @dx.op.binary.f32(i32 35, float %923, float %924)  ; FMax(a,b)
  %928 = call float @dx.op.binary.f32(i32 36, float %922, float %927)  ; FMin(a,b)
  %929 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %926)  ; FMax(a,b)
  %930 = fcmp fast ult float %928, %929
  br i1 %930, label %934, label %931, !dx.controlflow.hints !30

; <label>:931                                     ; preds = %901
  %932 = call float @dx.op.binary.f32(i32 36, float %926, float %928)  ; FMin(a,b)
  %933 = call float @dx.op.binary.f32(i32 35, float %926, float %928)  ; FMax(a,b)
  br label %934

; <label>:934                                     ; preds = %931, %901, %892
  %935 = phi float [ %899, %892 ], [ %932, %931 ], [ 0.000000e+00, %901 ]
  %936 = phi float [ %900, %892 ], [ %933, %931 ], [ 0.000000e+00, %901 ]
  %937 = fcmp fast ogt float %935, 0.000000e+00
  br i1 %937, label %941, label %938, !dx.controlflow.hints !37

; <label>:938                                     ; preds = %934
  %939 = fcmp fast ugt float %936, 0.000000e+00
  br i1 %939, label %940, label %941, !dx.controlflow.hints !38

; <label>:940                                     ; preds = %938
  br label %941

; <label>:941                                     ; preds = %940, %938, %934, %879
  %942 = phi float [ %880, %879 ], [ 0.000000e+00, %940 ], [ 0x47EFFFFFE0000000, %938 ], [ %935, %934 ]
  %943 = phi i32 [ %365, %879 ], [ %365, %940 ], [ 0, %938 ], [ %365, %934 ]
  %944 = icmp ne i32 %943, 0
  %945 = zext i1 %944 to i32
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 2
  %948 = call float @dx.op.binary.f32(i32 35, float %942, float %947)  ; FMax(a,b)
  %949 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %948)  ; FMin(a,b)
  br label %950

; <label>:950                                     ; preds = %941, %862
  %951 = phi float [ %949, %941 ], [ 0x47EFFFFFE0000000, %862 ]
  %952 = phi i32 [ %945, %941 ], [ 0, %862 ]
  br i1 %611, label %965, label %953, !dx.controlflow.hints !44

; <label>:953                                     ; preds = %950
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 3
  %956 = extractvalue %dx.types.CBufRet.f32 %954, 2
  %957 = fmul fast float %955, %867
  %958 = fdiv fast float %957, %867
  %959 = fadd fast float %958, 1.000000e+00
  %960 = call float @dx.op.unary.f32(i32 23, float %959)  ; Log(value)
  %961 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %960)  ; FMin(a,b)
  %962 = fmul fast float %956, %867
  %963 = fmul fast float %962, %961
  %964 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %963)  ; FMin(a,b)
  br label %965

; <label>:965                                     ; preds = %953, %950
  %966 = phi float [ %964, %953 ], [ 0x47EFFFFFE0000000, %950 ]
  %967 = icmp eq i32 %952, 0
  br i1 %967, label %1041, label %968, !dx.controlflow.hints !45

; <label>:968                                     ; preds = %965
  %969 = fmul fast float %626, %867
  %970 = call float @dx.op.unary.f32(i32 23, float %969)  ; Log(value)
  %971 = fmul fast float %970, 0x3FE62E4300000000
  %972 = call float @dx.op.binary.f32(i32 35, float %971, float 1.000000e+00)  ; FMax(a,b)
  %973 = fmul fast float %972, %966
  %974 = call float @dx.op.binary.f32(i32 36, float %973, float %951)  ; FMin(a,b)
  %975 = call float @dx.op.binary.f32(i32 35, float %974, float 0.000000e+00)  ; FMax(a,b)
  %976 = fcmp fast ogt float %975, 0x3F1A36E2E0000000
  %977 = fadd fast float %868, %871
  %978 = fadd fast float %869, %873
  %979 = select i1 %976, float %977, float %871
  %980 = select i1 %976, float %978, float %873
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 0
  %983 = extractvalue %dx.types.CBufRet.f32 %981, 1
  %984 = fsub fast float %979, %982
  %985 = fsub fast float %980, %983
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 0
  %988 = extractvalue %dx.types.CBufRet.f32 %986, 1
  %989 = fmul fast float %984, %987
  %990 = fmul fast float %985, %988
  %991 = fsub fast float 1.000000e+00, %990
  %992 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.i32 %992, 3
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1001, label %995, !dx.controlflow.hints !39

; <label>:995                                     ; preds = %968
  %996 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %989, float %991, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %997 = extractvalue %dx.types.ResRet.f32 %996, 0
  %998 = extractvalue %dx.types.ResRet.f32 %996, 1
  %999 = extractvalue %dx.types.ResRet.f32 %996, 2
  %1000 = extractvalue %dx.types.ResRet.f32 %996, 3
  br label %1007

; <label>:1001                                    ; preds = %968
  %1002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %12, float %989, float %991, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1003 = extractvalue %dx.types.ResRet.f32 %1002, 0
  %1004 = extractvalue %dx.types.ResRet.f32 %1002, 1
  %1005 = extractvalue %dx.types.ResRet.f32 %1002, 2
  %1006 = extractvalue %dx.types.ResRet.f32 %1002, 3
  br label %1007

; <label>:1007                                    ; preds = %1001, %995
  %1008 = phi float [ %997, %995 ], [ %1003, %1001 ]
  %1009 = phi float [ %998, %995 ], [ %1004, %1001 ]
  %1010 = phi float [ %999, %995 ], [ %1005, %1001 ]
  %1011 = phi float [ %1000, %995 ], [ %1006, %1001 ]
  %1012 = extractvalue %dx.types.CBufRet.f32 %986, 3
  %1013 = fmul fast float %1012, %1009
  %1014 = fmul fast float %1013, %1008
  %1015 = fsub fast float %1013, %1014
  %1016 = fcmp fast ole float %1015, 0.000000e+00
  %1017 = extractvalue %dx.types.CBufRet.f32 %981, 2
  %1018 = fadd fast float %1014, %1017
  %1019 = fmul fast float %1012, %1010
  %1020 = fadd fast float %1019, %1017
  %1021 = fdiv fast float 1.000000e+00, %1015
  %1022 = select i1 %1016, float 1.000000e+06, float %1021
  %1023 = fsub fast float %875, %1018
  %1024 = fmul fast float %1022, %1023
  %1025 = call float @dx.op.unary.f32(i32 7, float %1024)  ; Saturate(value)
  %1026 = extractvalue %dx.types.CBufRet.f32 %986, 2
  %1027 = fmul fast float %1026, %1025
  %1028 = fsub fast float %1026, %1027
  %1029 = fcmp fast olt float %875, %1020
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 3
  %1032 = fmul fast float %1031, 3.000000e+00
  %1033 = select i1 %1029, float %1032, float 3.000000e+00
  %1034 = fmul fast float %1028, %1033
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 2
  %1037 = fmul fast float %867, 0x3FD5555560000000
  %1038 = fmul fast float %1037, %1011
  %1039 = fmul fast float %1038, %1036
  %1040 = fmul fast float %1039, %1034
  br label %1041

; <label>:1041                                    ; preds = %1007, %965
  %1042 = phi float [ %1040, %1007 ], [ 0.000000e+00, %965 ]
  br i1 %611, label %1091, label %1043, !dx.controlflow.hints !47

; <label>:1043                                    ; preds = %1041
  %1044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1045 = extractvalue %dx.types.CBufRet.f32 %1044, 0
  %1046 = fsub fast float %1045, %875
  %1047 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %872, float %874, float %1046)  ; Dot3(ax,ay,az,bx,by,bz)
  %1048 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %837, float %838, float %839)  ; Dot3(ax,ay,az,bx,by,bz)
  %1049 = fdiv fast float 1.000000e+00, %1048
  %1050 = fmul fast float %1049, %1047
  %1051 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1050)  ; FMax(a,b)
  %1052 = fcmp fast olt float %839, 0.000000e+00
  %1053 = call float @dx.op.binary.f32(i32 36, float %867, float %1051)  ; FMin(a,b)
  br i1 %1052, label %1055, label %1054, !dx.controlflow.hints !48

; <label>:1054                                    ; preds = %1043
  br label %1055

; <label>:1055                                    ; preds = %1054, %1043
  %1056 = phi float [ 0.000000e+00, %1054 ], [ %1053, %1043 ]
  %1057 = phi float [ %1053, %1054 ], [ %867, %1043 ]
  %1058 = phi float [ %1053, %1054 ], [ 0.000000e+00, %1043 ]
  %1059 = phi float [ %867, %1054 ], [ %1053, %1043 ]
  %1060 = fsub fast float %1057, %1056
  %1061 = extractvalue %dx.types.CBufRet.f32 %1044, 1
  %1062 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1061)  ; FMin(a,b)
  %1063 = fsub fast float %875, %1045
  %1064 = fmul fast float %1062, 0x3FF7154760000000
  %1065 = fmul fast float %1064, %1063
  %1066 = call float @dx.op.unary.f32(i32 21, float %1065)  ; Exp(value)
  %1067 = fmul fast float %839, 0x3FF7154760000000
  %1068 = fmul fast float %1067, %1059
  %1069 = fmul fast float %1068, %1062
  %1070 = call float @dx.op.unary.f32(i32 21, float %1069)  ; Exp(value)
  %1071 = fmul fast float %1067, %1058
  %1072 = fmul fast float %1071, %1062
  %1073 = call float @dx.op.unary.f32(i32 21, float %1072)  ; Exp(value)
  %1074 = fsub fast float %1070, %1073
  %1075 = fmul fast float %1074, %1066
  %1076 = fmul fast float %1062, %839
  %1077 = fdiv fast float %1075, %1076
  %1078 = fadd fast float %1060, %1077
  %1079 = call float @dx.op.unary.f32(i32 6, float %839)  ; FAbs(value)
  %1080 = fcmp fast olt float %1079, 0x3F0FFB4800000000
  %1081 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1063)  ; FMax(a,b)
  %1082 = fmul fast float %1081, 0x3FF7154760000000
  %1083 = fmul fast float %1082, %1061
  %1084 = call float @dx.op.unary.f32(i32 21, float %1083)  ; Exp(value)
  %1085 = fmul fast float %1084, %867
  %1086 = select i1 %1080, float %1085, float %1078
  %1087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.f32 %1087, 1
  %1089 = fmul fast float %1086, %1088
  %1090 = fadd fast float %1089, %1042
  br label %1091

; <label>:1091                                    ; preds = %1055, %1041
  %1092 = phi float [ %1090, %1055 ], [ %1042, %1041 ]
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 3
  %1095 = fmul fast float %1092, 0xBFF7154760000000
  %1096 = fmul fast float %1095, %1094
  %1097 = call float @dx.op.unary.f32(i32 21, float %1096)  ; Exp(value)
  %1098 = call float @dx.op.unary.f32(i32 7, float %1097)  ; Saturate(value)
  %1099 = fmul fast float %1098, %863
  %1100 = fmul fast float %1098, %864
  %1101 = fmul fast float %1098, %865
  %1102 = fadd fast float %1099, %200
  %1103 = fadd fast float %1100, %201
  %1104 = fadd fast float %1101, %202
  %1105 = fsub fast float 1.000000e+00, %833
  %1106 = fmul fast float %825, %419
  %1107 = fmul fast float %1106, %1105
  %1108 = fmul fast float %1107, %1102
  %1109 = fmul fast float %826, %419
  %1110 = fmul fast float %1109, %1105
  %1111 = fmul fast float %1110, %1103
  %1112 = fmul fast float %827, %419
  %1113 = fmul fast float %1112, %1105
  %1114 = fmul fast float %1113, %1104
  %1115 = fadd fast float %1108, %420
  %1116 = fadd fast float %1111, %421
  %1117 = fadd fast float %1114, %422
  %1118 = fdiv fast float %809, %636
  %1119 = fadd fast float %636, %426
  %1120 = fmul fast float %426, %426
  %1121 = fmul fast float %1119, %1119
  %1122 = fsub fast float %1120, %1121
  %1123 = fmul fast float %1122, -5.000000e-01
  %1124 = fmul fast float %1123, %1118
  %1125 = fadd fast float %1124, %418
  %1126 = fadd fast float %809, %428
  %1127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1128 = extractvalue %dx.types.CBufRet.i32 %1127, 0
  %1129 = icmp eq i32 %1128, 0
  br i1 %1129, label %1156, label %1130, !dx.controlflow.hints !52

; <label>:1130                                    ; preds = %1091
  %1131 = icmp ne i32 %433, 0
  %1132 = zext i1 %1131 to i32
  %1133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.f32 %1133, 2
  %1135 = extractvalue %dx.types.CBufRet.f32 %1133, 0
  %1136 = fsub fast float %1119, %1135
  %1137 = fmul fast float %1136, %1134
  %1138 = call float @dx.op.unary.f32(i32 7, float %1137)  ; Saturate(value)
  %1139 = fadd fast float %1138, -5.000000e-01
  %1140 = fmul fast float %1139, 2.000000e+00
  %1141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1142 = extractvalue %dx.types.CBufRet.f32 %1141, 2
  %1143 = fcmp fast olt float %1140, %1142
  br i1 %1143, label %1144, label %1156, !dx.controlflow.hints !53

; <label>:1144                                    ; preds = %1130
  %1145 = fmul fast float %1140, %1140
  %1146 = fmul fast float %1105, %419
  %1147 = fmul fast float %1140, %1146
  %1148 = fmul fast float %1145, %1146
  %1149 = fmul fast float %1147, %1145
  %1150 = fmul fast float %1145, %1145
  %1151 = fmul fast float %1150, %1146
  %1152 = fadd fast float %1147, %429
  %1153 = fadd fast float %1148, %430
  %1154 = fadd fast float %1149, %431
  %1155 = fadd fast float %1151, %432
  br label %1156

; <label>:1156                                    ; preds = %1144, %1130, %1091
  %1157 = phi float [ %429, %1091 ], [ %1152, %1144 ], [ %429, %1130 ]
  %1158 = phi float [ %430, %1091 ], [ %1153, %1144 ], [ %430, %1130 ]
  %1159 = phi float [ %431, %1091 ], [ %1154, %1144 ], [ %431, %1130 ]
  %1160 = phi float [ %432, %1091 ], [ %1155, %1144 ], [ %432, %1130 ]
  %1161 = phi i32 [ %433, %1091 ], [ 1, %1144 ], [ %1132, %1130 ]
  %1162 = fmul fast float %833, %419
  br label %1163

; <label>:1163                                    ; preds = %1156, %828
  %1164 = phi float [ %829, %828 ], [ %1119, %1156 ]
  %1165 = phi float [ %418, %828 ], [ %1125, %1156 ]
  %1166 = phi float [ %419, %828 ], [ %1162, %1156 ]
  %1167 = phi float [ %420, %828 ], [ %1115, %1156 ]
  %1168 = phi float [ %421, %828 ], [ %1116, %1156 ]
  %1169 = phi float [ %422, %828 ], [ %1117, %1156 ]
  %1170 = phi float [ %428, %828 ], [ %1126, %1156 ]
  %1171 = phi float [ %429, %828 ], [ %1157, %1156 ]
  %1172 = phi float [ %430, %828 ], [ %1158, %1156 ]
  %1173 = phi float [ %431, %828 ], [ %1159, %1156 ]
  %1174 = phi float [ %432, %828 ], [ %1160, %1156 ]
  %1175 = phi i32 [ %433, %828 ], [ %1161, %1156 ]
  %1176 = fmul fast float %636, %276
  %1177 = fmul fast float %636, %277
  %1178 = fmul fast float %636, %278
  %1179 = fadd fast float %1176, %423
  %1180 = fadd fast float %1177, %424
  %1181 = fadd fast float %1178, %425
  %1182 = fcmp fast olt float %1164, %395
  %1183 = extractvalue %dx.types.CBufRet.f32 %814, 2
  %1184 = fcmp fast olt float %1183, %1166
  %1185 = and i1 %1182, %1184
  br i1 %1185, label %417, label %1186

; <label>:1186                                    ; preds = %1163
  br label %1187

; <label>:1187                                    ; preds = %1186, %391
  %1188 = phi float [ 0.000000e+00, %391 ], [ %1165, %1186 ]
  %1189 = phi float [ 1.000000e+00, %391 ], [ %1166, %1186 ]
  %1190 = phi float [ 0.000000e+00, %391 ], [ %1167, %1186 ]
  %1191 = phi float [ 0.000000e+00, %391 ], [ %1168, %1186 ]
  %1192 = phi float [ 0.000000e+00, %391 ], [ %1169, %1186 ]
  %1193 = phi float [ 0.000000e+00, %391 ], [ %1170, %1186 ]
  %1194 = phi float [ 0.000000e+00, %391 ], [ %1171, %1186 ]
  %1195 = phi float [ 0.000000e+00, %391 ], [ %1172, %1186 ]
  %1196 = phi float [ 0.000000e+00, %391 ], [ %1173, %1186 ]
  %1197 = phi float [ 0.000000e+00, %391 ], [ %1174, %1186 ]
  %1198 = phi i32 [ 0, %391 ], [ %1175, %1186 ]
  %1199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.i32 %1199, 0
  %1201 = icmp eq i32 %1200, 0
  br i1 %1201, label %1243, label %1202, !dx.controlflow.hints !54

; <label>:1202                                    ; preds = %1187
  %1203 = icmp eq i32 %1198, 0
  br i1 %1203, label %1242, label %1204, !dx.controlflow.hints !55

; <label>:1204                                    ; preds = %1202
  %1205 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1206 = extractvalue %dx.types.CBufRet.i32 %1205, 2
  %1207 = icmp eq i32 %1206, 0
  br i1 %1207, label %1214, label %1208, !dx.controlflow.hints !56

; <label>:1208                                    ; preds = %1204
  %1209 = fsub fast float 1.000000e+00, %1189
  %1210 = fdiv fast float %1194, %1209
  %1211 = fdiv fast float %1195, %1209
  %1212 = fdiv fast float %1196, %1209
  %1213 = fdiv fast float %1197, %1209
  br label %1219

; <label>:1214                                    ; preds = %1204
  %1215 = fadd fast float %1194, %1189
  %1216 = fadd fast float %1195, %1189
  %1217 = fadd fast float %1196, %1189
  %1218 = fadd fast float %1197, %1189
  br label %1219

; <label>:1219                                    ; preds = %1214, %1208
  %1220 = phi float [ %1210, %1208 ], [ %1215, %1214 ]
  %1221 = phi float [ %1211, %1208 ], [ %1216, %1214 ]
  %1222 = phi float [ %1212, %1208 ], [ %1217, %1214 ]
  %1223 = phi float [ %1213, %1208 ], [ %1218, %1214 ]
  %1224 = call float @dx.op.binary.f32(i32 35, float %1220, float -1.000000e+00)  ; FMax(a,b)
  %1225 = call float @dx.op.binary.f32(i32 35, float %1221, float -1.000000e+00)  ; FMax(a,b)
  %1226 = call float @dx.op.binary.f32(i32 35, float %1222, float -1.000000e+00)  ; FMax(a,b)
  %1227 = call float @dx.op.binary.f32(i32 35, float %1223, float -1.000000e+00)  ; FMax(a,b)
  %1228 = call float @dx.op.binary.f32(i32 36, float %1224, float 1.000000e+00)  ; FMin(a,b)
  %1229 = call float @dx.op.binary.f32(i32 36, float %1225, float 1.000000e+00)  ; FMin(a,b)
  %1230 = call float @dx.op.binary.f32(i32 36, float %1226, float 1.000000e+00)  ; FMin(a,b)
  %1231 = call float @dx.op.binary.f32(i32 36, float %1227, float 1.000000e+00)  ; FMin(a,b)
  %1232 = fmul fast float %1228, 1.500000e+00
  %1233 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1230, float %1232)  ; FMad(a,b,c)
  %1234 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1229, float 0.000000e+00)  ; FMad(a,b,c)
  %1235 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1231, float %1234)  ; FMad(a,b,c)
  %1236 = fmul fast float %1228, 0x3FEBB67AE0000000
  %1237 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1230, float %1236)  ; FMad(a,b,c)
  %1238 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1229, float 0.000000e+00)  ; FMad(a,b,c)
  %1239 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1231, float %1238)  ; FMad(a,b,c)
  %1240 = fadd fast float %1233, 5.000000e-01
  %1241 = fadd fast float %1237, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %15, i32 %16, i32 0, float %1240, float %1235, float %1241, float %1239, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1243

; <label>:1242                                    ; preds = %1202
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %15, i32 %16, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1243

; <label>:1243                                    ; preds = %1242, %1219, %1187
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 2
  %1246 = fsub fast float %1189, %1245
  %1247 = fdiv fast float %1246, %1245
  %1248 = call float @dx.op.unary.f32(i32 7, float %1247)  ; Saturate(value)
  %1249 = fmul fast float %1248, 2.000000e+00
  %1250 = fsub fast float 3.000000e+00, %1249
  %1251 = fmul fast float %1248, %1248
  %1252 = fmul fast float %1251, %1189
  %1253 = fmul fast float %1252, %1250
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 0
  %1256 = extractvalue %dx.types.CBufRet.f32 %1254, 1
  %1257 = extractvalue %dx.types.CBufRet.f32 %1254, 2
  %1258 = call float @dx.op.dot3.f32(i32 55, float %276, float %277, float %278, float %1255, float %1256, float %1257)  ; Dot3(ax,ay,az,bx,by,bz)
  %1259 = fmul fast float %1258, %1188
  %1260 = fcmp fast ogt float %1193, 0.000000e+00
  %1261 = fdiv fast float 1.000000e+00, %1193
  %1262 = fmul fast float %1259, %1261
  %1263 = select i1 %1260, float %1262, float %287
  %1264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1265 = extractvalue %dx.types.CBufRet.f32 %1264, 0
  %1266 = extractvalue %dx.types.CBufRet.f32 %1264, 1
  %1267 = extractvalue %dx.types.CBufRet.f32 %1264, 2
  %1268 = fmul fast float %1265, %240
  %1269 = fmul fast float %1266, %240
  %1270 = fmul fast float %1267, %240
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 0
  %1273 = extractvalue %dx.types.CBufRet.f32 %1271, 1
  %1274 = extractvalue %dx.types.CBufRet.f32 %1271, 2
  %1275 = fmul fast float %1272, %241
  %1276 = fmul fast float %1273, %241
  %1277 = fmul fast float %1274, %241
  %1278 = fadd fast float %1275, %1268
  %1279 = fadd fast float %1276, %1269
  %1280 = fadd fast float %1277, %1270
  %1281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1281, 0
  %1283 = extractvalue %dx.types.CBufRet.f32 %1281, 1
  %1284 = extractvalue %dx.types.CBufRet.f32 %1281, 2
  %1285 = fadd fast float %1278, %1282
  %1286 = fadd fast float %1279, %1283
  %1287 = fadd fast float %1280, %1284
  %1288 = fmul fast float %1285, %1263
  %1289 = fmul fast float %1286, %1263
  %1290 = fmul fast float %1287, %1263
  %1291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1292 = extractvalue %dx.types.CBufRet.f32 %1291, 0
  %1293 = extractvalue %dx.types.CBufRet.f32 %1291, 1
  %1294 = extractvalue %dx.types.CBufRet.f32 %1291, 2
  %1295 = extractvalue %dx.types.CBufRet.f32 %1291, 3
  %1296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1297 = extractvalue %dx.types.CBufRet.f32 %1296, 0
  %1298 = extractvalue %dx.types.CBufRet.f32 %1296, 1
  %1299 = extractvalue %dx.types.CBufRet.f32 %1296, 2
  %1300 = extractvalue %dx.types.CBufRet.f32 %1296, 3
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1303 = extractvalue %dx.types.CBufRet.f32 %1301, 1
  %1304 = extractvalue %dx.types.CBufRet.f32 %1301, 2
  %1305 = extractvalue %dx.types.CBufRet.f32 %1301, 3
  %1306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.f32 %1306, 0
  %1308 = extractvalue %dx.types.CBufRet.f32 %1306, 1
  %1309 = extractvalue %dx.types.CBufRet.f32 %1306, 2
  %1310 = extractvalue %dx.types.CBufRet.f32 %1306, 3
  %1311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1312 = extractvalue %dx.types.CBufRet.f32 %1311, 3
  %1313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1314 = extractvalue %dx.types.CBufRet.f32 %1313, 3
  %1315 = extractvalue %dx.types.CBufRet.f32 %1313, 0
  %1316 = extractvalue %dx.types.CBufRet.f32 %1313, 1
  %1317 = extractvalue %dx.types.CBufRet.f32 %1313, 2
  %1318 = fcmp fast olt float %1317, -5.000000e-01
  %1319 = call float @dx.op.dot3.f32(i32 55, float %1288, float %1289, float %1290, float %1288, float %1289, float %1290)  ; Dot3(ax,ay,az,bx,by,bz)
  %1320 = call float @dx.op.unary.f32(i32 25, float %1319)  ; Rsqrt(value)
  %1321 = fmul fast float %1320, %1319
  %1322 = fmul fast float %1320, %1288
  %1323 = fmul fast float %1320, %1289
  %1324 = fmul fast float %1320, %1290
  %1325 = fadd fast float %1321, %1295
  %1326 = call float @dx.op.dot3.f32(i32 55, float %1322, float %1323, float %1324, float %1292, float %1293, float %1294)  ; Dot3(ax,ay,az,bx,by,bz)
  %1327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1328 = extractvalue %dx.types.CBufRet.i32 %1327, 1
  %1329 = and i32 %1328, 1
  %1330 = icmp ne i32 %1329, 0
  %1331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1332 = extractvalue %dx.types.CBufRet.f32 %1331, 2
  %1333 = fcmp fast ogt float %1332, 0.000000e+00
  %1334 = and i1 %1330, %1333
  br i1 %1334, label %1335, label %1741, !dx.controlflow.hints !57

; <label>:1335                                    ; preds = %1243
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 3
  %1338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1339 = extractvalue %dx.types.CBufRet.f32 %1338, 2
  %1340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1341 = extractvalue %dx.types.CBufRet.f32 %1340, 2
  %1342 = fsub fast float %1339, %1341
  %1343 = and i32 %1328, 2
  %1344 = extractvalue %dx.types.CBufRet.i32 %1327, 0
  %1345 = call i32 @dx.op.binary.i32(i32 40, i32 %1344, i32 3)  ; UMin(a,b)
  %1346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.f32 %1346, 0
  %1348 = extractvalue %dx.types.CBufRet.f32 %1346, 1
  %1349 = extractvalue %dx.types.CBufRet.f32 %1340, 0
  %1350 = extractvalue %dx.types.CBufRet.f32 %1340, 1
  %1351 = fsub fast float %1347, %1349
  %1352 = fsub fast float %1348, %1350
  %1353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1354 = extractvalue %dx.types.CBufRet.f32 %1353, 0
  %1355 = fcmp fast ogt float %1354, 0.000000e+00
  %1356 = fsub fast float -0.000000e+00, %1351
  %1357 = fsub fast float -0.000000e+00, %1352
  %1358 = call float @dx.op.dot2.f32(i32 54, float %1322, float %1323, float %1322, float %1323)  ; Dot2(ax,ay,bx,by)
  %1359 = call float @dx.op.dot2.f32(i32 54, float %1322, float %1323, float %1356, float %1357)  ; Dot2(ax,ay,bx,by)
  %1360 = fmul fast float %1359, 2.000000e+00
  %1361 = call float @dx.op.dot2.f32(i32 54, float %1356, float %1357, float %1356, float %1357)  ; Dot2(ax,ay,bx,by)
  %1362 = fmul fast float %1354, %1354
  %1363 = fsub fast float %1361, %1362
  %1364 = fmul fast float %1360, %1360
  %1365 = fmul fast float %1358, 4.000000e+00
  %1366 = fmul fast float %1365, %1363
  %1367 = fsub fast float %1364, %1366
  %1368 = fcmp fast ogt float %1367, 0.000000e+00
  br i1 %1368, label %1369, label %1384, !dx.controlflow.hints !58

; <label>:1369                                    ; preds = %1335
  %1370 = fcmp fast ogt float %1360, 0.000000e+00
  %1371 = call float @dx.op.unary.f32(i32 24, float %1367)  ; Sqrt(value)
  %1372 = fsub fast float -0.000000e+00, %1371
  %1373 = select i1 %1370, float %1371, float %1372
  %1374 = fadd fast float %1373, %1360
  %1375 = fmul float %1374, -5.000000e-01
  %1376 = fdiv fast float %1375, %1358
  %1377 = call float @dx.op.binary.f32(i32 35, float %1376, float 0.000000e+00)  ; FMax(a,b)
  %1378 = call float @dx.op.binary.f32(i32 36, float %1321, float %1377)  ; FMin(a,b)
  %1379 = fdiv fast float %1363, %1375
  %1380 = call float @dx.op.binary.f32(i32 35, float %1379, float 0.000000e+00)  ; FMax(a,b)
  %1381 = call float @dx.op.binary.f32(i32 36, float %1321, float %1380)  ; FMin(a,b)
  %1382 = call float @dx.op.binary.f32(i32 36, float %1378, float %1381)  ; FMin(a,b)
  %1383 = call float @dx.op.binary.f32(i32 35, float %1378, float %1381)  ; FMax(a,b)
  br label %1384

; <label>:1384                                    ; preds = %1369, %1335
  %1385 = phi float [ %1383, %1369 ], [ -1.000000e+00, %1335 ]
  %1386 = phi float [ %1382, %1369 ], [ -1.000000e+00, %1335 ]
  %1387 = phi i1 [ true, %1369 ], [ false, %1335 ]
  %1388 = and i1 %1355, %1387
  br i1 %1388, label %1389, label %1391, !dx.controlflow.hints !59

; <label>:1389                                    ; preds = %1384
  %1390 = fcmp fast oeq float %1386, %1385
  br i1 %1390, label %1694, label %1392, !dx.controlflow.hints !60

; <label>:1391                                    ; preds = %1384
  br i1 %1355, label %1694, label %1392, !dx.controlflow.hints !61

; <label>:1392                                    ; preds = %1391, %1389
  %1393 = phi float [ %1321, %1391 ], [ %1385, %1389 ]
  %1394 = phi float [ 0.000000e+00, %1391 ], [ %1386, %1389 ]
  %1395 = icmp ne i32 %1343, 0
  %1396 = fmul fast float %1393, %1324
  %1397 = fadd fast float %1396, %1337
  %1398 = fmul fast float %1397, %1393
  %1399 = select i1 %1395, float 0.000000e+00, float %1398
  %1400 = fcmp fast oeq float %1324, 0.000000e+00
  %1401 = fdiv fast float %1342, %1324
  %1402 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1401)  ; FMax(a,b)
  %1403 = select i1 %1400, float %1393, float %1402
  %1404 = call float @dx.op.binary.f32(i32 36, float %1393, float %1403)  ; FMin(a,b)
  %1405 = fcmp fast ogt float %1324, 0.000000e+00
  %1406 = fcmp fast olt float %1342, 0.000000e+00
  br i1 %1405, label %1407, label %1464, !dx.controlflow.hints !62

; <label>:1407                                    ; preds = %1392
  %1408 = icmp eq i32 %1343, 0
  br i1 %1406, label %1409, label %1453, !dx.controlflow.hints !63

; <label>:1409                                    ; preds = %1407
  %1410 = select i1 %1408, float %1393, float 0.000000e+00
  %1411 = fsub fast float -0.000000e+00, %1410
  %1412 = call float @dx.op.unary.f32(i32 6, float %1411)  ; FAbs(value)
  %1413 = fmul fast float %1410, %1324
  %1414 = fadd fast float %1413, %1337
  %1415 = fmul fast float %1412, %1414
  %1416 = fsub fast float %1399, %1415
  %1417 = fsub fast float %1393, %1412
  %1418 = select i1 %1408, float %1417, float 0.000000e+00
  %1419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1420 = extractvalue %dx.types.CBufRet.f32 %1419, 0
  %1421 = extractvalue %dx.types.CBufRet.f32 %1419, 1
  %1422 = extractvalue %dx.types.CBufRet.f32 %1419, 2
  %1423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1424 = extractvalue %dx.types.CBufRet.f32 %1423, 0
  %1425 = extractvalue %dx.types.CBufRet.f32 %1423, 1
  %1426 = extractvalue %dx.types.CBufRet.f32 %1423, 2
  %1427 = extractvalue %dx.types.CBufRet.f32 %1423, 3
  %1428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1428, 3
  %1430 = call float @dx.op.binary.f32(i32 36, float %1416, float %1429)  ; FMin(a,b)
  %1431 = fmul fast float %1427, %1418
  %1432 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  %1433 = fsub fast float %1424, %1420
  %1434 = fsub fast float %1425, %1421
  %1435 = fsub fast float %1426, %1422
  %1436 = fmul fast float %1432, %1433
  %1437 = fmul fast float %1432, %1434
  %1438 = fmul fast float %1432, %1435
  %1439 = fadd fast float %1436, %1420
  %1440 = fadd fast float %1437, %1421
  %1441 = fadd fast float %1438, %1422
  %1442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1443 = extractvalue %dx.types.CBufRet.f32 %1442, 0
  %1444 = extractvalue %dx.types.CBufRet.f32 %1442, 1
  %1445 = fadd fast float %1444, %1443
  %1446 = call float @dx.op.unary.f32(i32 7, float %1445)  ; Saturate(value)
  %1447 = extractvalue %dx.types.CBufRet.f32 %1442, 2
  %1448 = extractvalue %dx.types.CBufRet.f32 %1442, 3
  %1449 = fadd fast float %1448, %1447
  %1450 = call float @dx.op.unary.f32(i32 7, float %1449)  ; Saturate(value)
  %1451 = fmul fast float %1446, %1430
  %1452 = fmul fast float %1451, %1450
  br label %1694

; <label>:1453                                    ; preds = %1407
  br i1 %1408, label %1454, label %1475, !dx.controlflow.hints !64

; <label>:1454                                    ; preds = %1453
  %1455 = call float @dx.op.binary.f32(i32 36, float %1404, float %1394)  ; FMin(a,b)
  %1456 = fsub fast float %1404, %1455
  %1457 = fsub fast float %1456, %1393
  %1458 = call float @dx.op.unary.f32(i32 6, float %1457)  ; FAbs(value)
  %1459 = fadd fast float %1456, %1393
  %1460 = fmul fast float %1459, %1324
  %1461 = fadd fast float %1460, %1337
  %1462 = fmul fast float %1461, %1458
  %1463 = fsub fast float %1399, %1462
  br label %1475

; <label>:1464                                    ; preds = %1392
  br i1 %1406, label %1465, label %1475, !dx.controlflow.hints !65

; <label>:1465                                    ; preds = %1464
  %1466 = call float @dx.op.binary.f32(i32 35, float %1394, float %1404)  ; FMax(a,b)
  %1467 = icmp eq i32 %1343, 0
  %1468 = select i1 %1467, float %1404, float 0.000000e+00
  %1469 = fsub fast float -0.000000e+00, %1468
  %1470 = call float @dx.op.unary.f32(i32 6, float %1469)  ; FAbs(value)
  %1471 = fmul fast float %1468, %1324
  %1472 = fadd fast float %1471, %1337
  %1473 = fmul fast float %1470, %1472
  %1474 = fsub fast float %1399, %1473
  br label %1475

; <label>:1475                                    ; preds = %1465, %1464, %1454, %1453
  %1476 = phi float [ %1394, %1453 ], [ %1394, %1454 ], [ %1466, %1465 ], [ %1394, %1464 ]
  %1477 = phi float [ 0.000000e+00, %1453 ], [ %1458, %1454 ], [ %1470, %1465 ], [ 0.000000e+00, %1464 ]
  %1478 = phi float [ %1399, %1453 ], [ %1463, %1454 ], [ %1474, %1465 ], [ %1399, %1464 ]
  %1479 = phi float [ %1404, %1453 ], [ %1404, %1454 ], [ %1393, %1465 ], [ %1393, %1464 ]
  %1480 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 0
  store float -1.000000e+00, float* %1480, align 4, !tbaa !66, !noalias !70
  %1481 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 1
  store float -1.000000e+00, float* %1481, align 4, !tbaa !66, !noalias !70
  %1482 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 2
  store float -1.000000e+00, float* %1482, align 4, !tbaa !66, !noalias !70
  %1483 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 0
  store float -1.000000e+00, float* %1483, align 4, !tbaa !66, !noalias !70
  %1484 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 1
  store float -1.000000e+00, float* %1484, align 4, !tbaa !66, !noalias !70
  %1485 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 2
  store float -1.000000e+00, float* %1485, align 4, !tbaa !66, !noalias !70
  %1486 = icmp sgt i32 %1345, 0
  br i1 %1486, label %1487, label %1548

; <label>:1487                                    ; preds = %1475
  br label %1488

; <label>:1488                                    ; preds = %1537, %1487
  %1489 = phi i32 [ %1538, %1537 ], [ 0, %1487 ]
  %1490 = phi i32 [ %1539, %1537 ], [ 0, %1487 ]
  %1491 = add nuw i32 %1490, 171
  %1492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 %1491)  ; CBufferLoadLegacy(handle,regIndex)
  %1493 = extractvalue %dx.types.CBufRet.f32 %1492, 0
  %1494 = extractvalue %dx.types.CBufRet.f32 %1492, 1
  %1495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1496 = extractvalue %dx.types.CBufRet.f32 %1495, 0
  %1497 = extractvalue %dx.types.CBufRet.f32 %1495, 1
  %1498 = fsub fast float %1493, %1496
  %1499 = fsub fast float %1494, %1497
  %1500 = extractvalue %dx.types.CBufRet.f32 %1492, 2
  %1501 = fsub fast float -0.000000e+00, %1498
  %1502 = fsub fast float -0.000000e+00, %1499
  %1503 = call float @dx.op.dot2.f32(i32 54, float %1322, float %1323, float %1501, float %1502)  ; Dot2(ax,ay,bx,by)
  %1504 = fmul fast float %1503, 2.000000e+00
  %1505 = call float @dx.op.dot2.f32(i32 54, float %1501, float %1502, float %1501, float %1502)  ; Dot2(ax,ay,bx,by)
  %1506 = fmul fast float %1500, %1500
  %1507 = fsub fast float %1505, %1506
  %1508 = fmul fast float %1504, %1504
  %1509 = fmul fast float %1365, %1507
  %1510 = fsub fast float %1508, %1509
  %1511 = fcmp fast ogt float %1510, 0.000000e+00
  br i1 %1511, label %1512, label %1527, !dx.controlflow.hints !58

; <label>:1512                                    ; preds = %1488
  %1513 = fcmp fast ogt float %1504, 0.000000e+00
  %1514 = call float @dx.op.unary.f32(i32 24, float %1510)  ; Sqrt(value)
  %1515 = fsub fast float -0.000000e+00, %1514
  %1516 = select i1 %1513, float %1514, float %1515
  %1517 = fadd fast float %1516, %1504
  %1518 = fmul float %1517, -5.000000e-01
  %1519 = fdiv fast float %1518, %1358
  %1520 = call float @dx.op.binary.f32(i32 35, float %1519, float 0.000000e+00)  ; FMax(a,b)
  %1521 = call float @dx.op.binary.f32(i32 36, float %1393, float %1520)  ; FMin(a,b)
  %1522 = fdiv fast float %1507, %1518
  %1523 = call float @dx.op.binary.f32(i32 35, float %1522, float 0.000000e+00)  ; FMax(a,b)
  %1524 = call float @dx.op.binary.f32(i32 36, float %1393, float %1523)  ; FMin(a,b)
  %1525 = call float @dx.op.binary.f32(i32 36, float %1521, float %1524)  ; FMin(a,b)
  %1526 = call float @dx.op.binary.f32(i32 35, float %1521, float %1524)  ; FMax(a,b)
  br label %1527

; <label>:1527                                    ; preds = %1512, %1488
  %1528 = phi float [ %1526, %1512 ], [ -1.000000e+00, %1488 ]
  %1529 = phi float [ %1525, %1512 ], [ -1.000000e+00, %1488 ]
  %1530 = phi i1 [ true, %1512 ], [ false, %1488 ]
  br i1 %1530, label %1531, label %1537, !dx.controlflow.hints !81

; <label>:1531                                    ; preds = %1527
  %1532 = call float @dx.op.binary.f32(i32 35, float %1476, float %1529)  ; FMax(a,b)
  %1533 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 %1490
  store float %1532, float* %1533, align 4, !tbaa !66, !noalias !70
  %1534 = call float @dx.op.binary.f32(i32 35, float %1476, float %1528)  ; FMax(a,b)
  %1535 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %1490
  store float %1534, float* %1535, align 4, !tbaa !66, !noalias !70
  %1536 = add nsw i32 %1489, 1
  br label %1537

; <label>:1537                                    ; preds = %1531, %1527
  %1538 = phi i32 [ %1536, %1531 ], [ %1489, %1527 ]
  %1539 = add nuw nsw i32 %1490, 1
  %1540 = icmp eq i32 %1539, %1345
  br i1 %1540, label %1541, label %1488

; <label>:1541                                    ; preds = %1537
  %1542 = load float, float* %1482, align 4, !tbaa !66, !alias.scope !82, !noalias !85
  %1543 = load float, float* %1481, align 4, !tbaa !66, !alias.scope !88, !noalias !89
  %1544 = load float, float* %1480, align 4, !tbaa !66, !alias.scope !90, !noalias !91
  %1545 = load float, float* %1485, align 4, !tbaa !66, !alias.scope !92, !noalias !95
  %1546 = load float, float* %1484, align 4, !tbaa !66, !alias.scope !98, !noalias !99
  %1547 = load float, float* %1483, align 4, !tbaa !66, !alias.scope !100, !noalias !101
  br label %1548

; <label>:1548                                    ; preds = %1541, %1475
  %1549 = phi float [ -1.000000e+00, %1475 ], [ %1547, %1541 ]
  %1550 = phi float [ -1.000000e+00, %1475 ], [ %1546, %1541 ]
  %1551 = phi float [ -1.000000e+00, %1475 ], [ %1545, %1541 ]
  %1552 = phi float [ -1.000000e+00, %1475 ], [ %1544, %1541 ]
  %1553 = phi float [ -1.000000e+00, %1475 ], [ %1543, %1541 ]
  %1554 = phi float [ -1.000000e+00, %1475 ], [ %1542, %1541 ]
  %1555 = phi i32 [ 0, %1475 ], [ %1538, %1541 ]
  %1556 = call float @dx.op.binary.f32(i32 36, float %1553, float %1554)  ; FMin(a,b)
  %1557 = call float @dx.op.binary.f32(i32 36, float %1552, float %1556)  ; FMin(a,b)
  %1558 = call float @dx.op.binary.f32(i32 35, float %1552, float %1553)  ; FMax(a,b)
  %1559 = call float @dx.op.binary.f32(i32 36, float %1558, float %1554)  ; FMin(a,b)
  %1560 = call float @dx.op.binary.f32(i32 36, float %1552, float %1553)  ; FMin(a,b)
  %1561 = call float @dx.op.binary.f32(i32 35, float %1560, float %1559)  ; FMax(a,b)
  %1562 = call float @dx.op.binary.f32(i32 35, float %1553, float %1554)  ; FMax(a,b)
  %1563 = call float @dx.op.binary.f32(i32 35, float %1552, float %1562)  ; FMax(a,b)
  store float %1557, float* %1480, align 4, !tbaa !66, !alias.scope !90, !noalias !91
  store float %1561, float* %1481, align 4, !tbaa !66, !alias.scope !88, !noalias !89
  store float %1563, float* %1482, align 4, !tbaa !66, !alias.scope !82, !noalias !85
  %1564 = call float @dx.op.binary.f32(i32 36, float %1550, float %1551)  ; FMin(a,b)
  %1565 = call float @dx.op.binary.f32(i32 36, float %1549, float %1564)  ; FMin(a,b)
  %1566 = call float @dx.op.binary.f32(i32 35, float %1549, float %1550)  ; FMax(a,b)
  %1567 = call float @dx.op.binary.f32(i32 36, float %1566, float %1551)  ; FMin(a,b)
  %1568 = call float @dx.op.binary.f32(i32 36, float %1549, float %1550)  ; FMin(a,b)
  %1569 = call float @dx.op.binary.f32(i32 35, float %1568, float %1567)  ; FMax(a,b)
  %1570 = call float @dx.op.binary.f32(i32 35, float %1550, float %1551)  ; FMax(a,b)
  %1571 = call float @dx.op.binary.f32(i32 35, float %1549, float %1570)  ; FMax(a,b)
  store float %1565, float* %1483, align 4, !tbaa !66, !alias.scope !100, !noalias !101
  store float %1569, float* %1484, align 4, !tbaa !66, !alias.scope !98, !noalias !99
  store float %1571, float* %1485, align 4, !tbaa !66, !alias.scope !92, !noalias !95
  %1572 = sub nsw i32 3, %1555
  %1573 = icmp sgt i32 %1572, 2
  br i1 %1573, label %1574, label %1612, !dx.controlflow.hints !102

; <label>:1574                                    ; preds = %1548
  %1575 = icmp eq i32 %1343, 0
  %1576 = fsub fast float %1393, %1477
  %1577 = select i1 %1575, float %1576, float %1477
  %1578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1579 = extractvalue %dx.types.CBufRet.f32 %1578, 0
  %1580 = extractvalue %dx.types.CBufRet.f32 %1578, 1
  %1581 = extractvalue %dx.types.CBufRet.f32 %1578, 2
  %1582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1583 = extractvalue %dx.types.CBufRet.f32 %1582, 0
  %1584 = extractvalue %dx.types.CBufRet.f32 %1582, 1
  %1585 = extractvalue %dx.types.CBufRet.f32 %1582, 2
  %1586 = extractvalue %dx.types.CBufRet.f32 %1582, 3
  %1587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1588 = extractvalue %dx.types.CBufRet.f32 %1587, 3
  %1589 = call float @dx.op.binary.f32(i32 36, float %1478, float %1588)  ; FMin(a,b)
  %1590 = fmul fast float %1586, %1577
  %1591 = call float @dx.op.unary.f32(i32 7, float %1590)  ; Saturate(value)
  %1592 = fsub fast float %1583, %1579
  %1593 = fsub fast float %1584, %1580
  %1594 = fsub fast float %1585, %1581
  %1595 = fmul fast float %1591, %1592
  %1596 = fmul fast float %1591, %1593
  %1597 = fmul fast float %1591, %1594
  %1598 = fadd fast float %1595, %1579
  %1599 = fadd fast float %1596, %1580
  %1600 = fadd fast float %1597, %1581
  %1601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1602 = extractvalue %dx.types.CBufRet.f32 %1601, 0
  %1603 = extractvalue %dx.types.CBufRet.f32 %1601, 1
  %1604 = fadd fast float %1603, %1602
  %1605 = call float @dx.op.unary.f32(i32 7, float %1604)  ; Saturate(value)
  %1606 = extractvalue %dx.types.CBufRet.f32 %1601, 2
  %1607 = extractvalue %dx.types.CBufRet.f32 %1601, 3
  %1608 = fadd fast float %1607, %1606
  %1609 = call float @dx.op.unary.f32(i32 7, float %1608)  ; Saturate(value)
  %1610 = fmul fast float %1605, %1589
  %1611 = fmul fast float %1610, %1609
  br label %1694

; <label>:1612                                    ; preds = %1548
  %1613 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 %1572
  %1614 = load float, float* %1613, align 4, !tbaa !66, !noalias !70
  %1615 = fcmp fast olt float %1614, %1479
  %1616 = icmp sgt i32 %1555, 0
  %1617 = and i1 %1616, %1615
  br i1 %1617, label %1618, label %1655

; <label>:1618                                    ; preds = %1612
  br label %1619

; <label>:1619                                    ; preds = %1648, %1618
  %1620 = phi float [ %1649, %1648 ], [ %1477, %1618 ]
  %1621 = phi float [ %1650, %1648 ], [ %1478, %1618 ]
  %1622 = phi float [ %1630, %1648 ], [ %1614, %1618 ]
  %1623 = phi i32 [ %1627, %1648 ], [ %1572, %1618 ]
  %1624 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %1623
  %1625 = load float, float* %1624, align 4, !tbaa !66, !noalias !70
  %1626 = icmp slt i32 %1623, 2
  %1627 = add nsw i32 %1623, 1
  %1628 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 %1627
  %1629 = load float, float* %1628, align 4, !tbaa !66, !noalias !70
  %1630 = select i1 %1626, float %1629, float %1393
  %1631 = call float @dx.op.binary.f32(i32 36, float %1630, float %1625)  ; FMin(a,b)
  %1632 = call float @dx.op.binary.f32(i32 36, float %1479, float %1631)  ; FMin(a,b)
  %1633 = icmp eq i32 %1343, 0
  %1634 = fadd fast float %1632, %1622
  %1635 = fmul fast float %1634, %1324
  %1636 = fadd fast float %1635, %1337
  br i1 %1633, label %1642, label %1637, !dx.controlflow.hints !103

; <label>:1637                                    ; preds = %1619
  %1638 = fsub fast float %1632, %1622
  %1639 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1638)  ; FMax(a,b)
  %1640 = fmul fast float %1639, %1636
  %1641 = fadd fast float %1640, %1621
  br label %1648

; <label>:1642                                    ; preds = %1619
  %1643 = fsub fast float %1622, %1632
  %1644 = call float @dx.op.unary.f32(i32 6, float %1643)  ; FAbs(value)
  %1645 = fadd fast float %1644, %1620
  %1646 = fmul fast float %1644, %1636
  %1647 = fsub fast float %1621, %1646
  br label %1648

; <label>:1648                                    ; preds = %1642, %1637
  %1649 = phi float [ %1639, %1637 ], [ %1645, %1642 ]
  %1650 = phi float [ %1641, %1637 ], [ %1647, %1642 ]
  %1651 = fcmp fast olt float %1630, %1479
  %1652 = icmp slt i32 %1627, 3
  %1653 = and i1 %1652, %1651
  br i1 %1653, label %1619, label %1654

; <label>:1654                                    ; preds = %1648
  br label %1655

; <label>:1655                                    ; preds = %1654, %1612
  %1656 = phi float [ %1477, %1612 ], [ %1649, %1654 ]
  %1657 = phi float [ %1478, %1612 ], [ %1650, %1654 ]
  %1658 = fsub fast float %1393, %1656
  %1659 = select i1 %1395, float %1656, float %1658
  %1660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1661 = extractvalue %dx.types.CBufRet.f32 %1660, 0
  %1662 = extractvalue %dx.types.CBufRet.f32 %1660, 1
  %1663 = extractvalue %dx.types.CBufRet.f32 %1660, 2
  %1664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1665 = extractvalue %dx.types.CBufRet.f32 %1664, 0
  %1666 = extractvalue %dx.types.CBufRet.f32 %1664, 1
  %1667 = extractvalue %dx.types.CBufRet.f32 %1664, 2
  %1668 = extractvalue %dx.types.CBufRet.f32 %1664, 3
  %1669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1670 = extractvalue %dx.types.CBufRet.f32 %1669, 3
  %1671 = call float @dx.op.binary.f32(i32 36, float %1657, float %1670)  ; FMin(a,b)
  %1672 = fmul fast float %1668, %1659
  %1673 = call float @dx.op.unary.f32(i32 7, float %1672)  ; Saturate(value)
  %1674 = fsub fast float %1665, %1661
  %1675 = fsub fast float %1666, %1662
  %1676 = fsub fast float %1667, %1663
  %1677 = fmul fast float %1673, %1674
  %1678 = fmul fast float %1673, %1675
  %1679 = fmul fast float %1673, %1676
  %1680 = fadd fast float %1677, %1661
  %1681 = fadd fast float %1678, %1662
  %1682 = fadd fast float %1679, %1663
  %1683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1684 = extractvalue %dx.types.CBufRet.f32 %1683, 0
  %1685 = extractvalue %dx.types.CBufRet.f32 %1683, 1
  %1686 = fadd fast float %1685, %1684
  %1687 = call float @dx.op.unary.f32(i32 7, float %1686)  ; Saturate(value)
  %1688 = extractvalue %dx.types.CBufRet.f32 %1683, 2
  %1689 = extractvalue %dx.types.CBufRet.f32 %1683, 3
  %1690 = fadd fast float %1689, %1688
  %1691 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1692 = fmul fast float %1687, %1671
  %1693 = fmul fast float %1692, %1691
  br label %1694

; <label>:1694                                    ; preds = %1655, %1574, %1409, %1391, %1389
  %1695 = phi float [ %1418, %1409 ], [ %1577, %1574 ], [ %1659, %1655 ], [ 0.000000e+00, %1389 ], [ 0.000000e+00, %1391 ]
  %1696 = phi float [ %1452, %1409 ], [ %1611, %1574 ], [ %1693, %1655 ], [ 0.000000e+00, %1389 ], [ 0.000000e+00, %1391 ]
  %1697 = phi float [ %1439, %1409 ], [ %1598, %1574 ], [ %1680, %1655 ], [ 0.000000e+00, %1389 ], [ 0.000000e+00, %1391 ]
  %1698 = phi float [ %1440, %1409 ], [ %1599, %1574 ], [ %1681, %1655 ], [ 0.000000e+00, %1389 ], [ 0.000000e+00, %1391 ]
  %1699 = phi float [ %1441, %1409 ], [ %1600, %1574 ], [ %1682, %1655 ], [ 0.000000e+00, %1389 ], [ 0.000000e+00, %1391 ]
  %1700 = fmul fast float %1332, %1696
  %1701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1702 = extractvalue %dx.types.CBufRet.f32 %1701, 2
  %1703 = fsub fast float %1339, %1702
  %1704 = fcmp fast olt float %1700, -2.000000e+01
  %1705 = call float @dx.op.unary.f32(i32 21, float %1700)  ; Exp(value)
  %1706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1707 = extractvalue %dx.types.CBufRet.f32 %1706, 2
  %1708 = extractvalue %dx.types.CBufRet.f32 %1706, 3
  %1709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.f32 %1709, 2
  %1711 = fmul fast float %1708, %1703
  %1712 = call float @dx.op.unary.f32(i32 7, float %1711)  ; Saturate(value)
  %1713 = fsub fast float 1.000000e+00, %1712
  %1714 = fmul fast float %1324, 5.000000e-01
  %1715 = fadd fast float %1714, 5.000000e-01
  %1716 = call float @dx.op.unary.f32(i32 7, float %1715)  ; Saturate(value)
  %1717 = fsub fast float 1.000000e+00, %1716
  %1718 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1713)  ; FMax(a,b)
  %1719 = fdiv fast float %1717, %1718
  %1720 = fsub fast float %1703, %1290
  %1721 = call float @dx.op.unary.f32(i32 6, float %1720)  ; FAbs(value)
  %1722 = fmul fast float %1721, %1707
  %1723 = call float @dx.op.unary.f32(i32 7, float %1719)  ; Saturate(value)
  %1724 = fsub fast float 1.000000e+00, %1722
  %1725 = fmul fast float %1724, %1723
  %1726 = fadd fast float %1725, %1722
  %1727 = fmul fast float %1710, %1703
  %1728 = call float @dx.op.unary.f32(i32 7, float %1727)  ; Saturate(value)
  %1729 = fsub fast float 1.000000e+00, %1726
  %1730 = fmul fast float %1729, %1728
  %1731 = fadd fast float %1730, %1726
  %1732 = call float @dx.op.unary.f32(i32 7, float %1731)  ; Saturate(value)
  %1733 = fadd fast float %1705, -1.000000e+00
  %1734 = select i1 %1704, float -1.000000e+00, float %1733
  %1735 = fmul fast float %1732, %1734
  %1736 = fadd fast float %1735, 1.000000e+00
  %1737 = fsub fast float -0.000000e+00, %1735
  %1738 = fmul fast float %1697, %1737
  %1739 = fmul fast float %1698, %1737
  %1740 = fmul fast float %1699, %1737
  br label %1741

; <label>:1741                                    ; preds = %1694, %1243
  %1742 = phi float [ %1695, %1694 ], [ 0.000000e+00, %1243 ]
  %1743 = phi float [ %1736, %1694 ], [ 1.000000e+00, %1243 ]
  %1744 = phi float [ %1738, %1694 ], [ 0.000000e+00, %1243 ]
  %1745 = phi float [ %1739, %1694 ], [ 0.000000e+00, %1243 ]
  %1746 = phi float [ %1740, %1694 ], [ 0.000000e+00, %1243 ]
  %1747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1748 = extractvalue %dx.types.CBufRet.f32 %1747, 1
  %1749 = fsub fast float 1.000000e+00, %1743
  %1750 = fmul fast float %1749, %1325
  %1751 = fmul fast float %1750, %1748
  %1752 = fsub fast float %1325, %1751
  br i1 %1318, label %1753, label %1782, !dx.controlflow.hints !104

; <label>:1753                                    ; preds = %1741
  %1754 = fmul fast float %1326, %1315
  %1755 = fadd fast float %1754, %1316
  %1756 = call float @dx.op.unary.f32(i32 7, float %1755)  ; Saturate(value)
  %1757 = fmul fast float %1297, %1752
  %1758 = fsub fast float -0.000000e+00, %1757
  %1759 = fmul fast float %1298, %1752
  %1760 = fsub fast float -0.000000e+00, %1759
  %1761 = call float @dx.op.unary.f32(i32 21, float %1758)  ; Exp(value)
  %1762 = call float @dx.op.unary.f32(i32 21, float %1760)  ; Exp(value)
  %1763 = call float @dx.op.binary.f32(i32 35, float %1305, float %1761)  ; FMax(a,b)
  %1764 = call float @dx.op.binary.f32(i32 35, float %1305, float %1762)  ; FMax(a,b)
  %1765 = fsub fast float %1764, %1763
  %1766 = fmul fast float %1765, %1756
  %1767 = fadd fast float %1766, %1763
  %1768 = call float @dx.op.unary.f32(i32 7, float %1767)  ; Saturate(value)
  %1769 = fsub fast float %1302, %1307
  %1770 = fsub fast float %1303, %1308
  %1771 = fsub fast float %1304, %1309
  %1772 = fmul fast float %1756, %1769
  %1773 = fmul fast float %1756, %1770
  %1774 = fmul fast float %1756, %1771
  %1775 = fadd fast float %1772, %1307
  %1776 = fadd fast float %1773, %1308
  %1777 = fadd fast float %1774, %1309
  %1778 = fsub fast float 1.000000e+00, %1768
  %1779 = fmul fast float %1778, %1775
  %1780 = fmul fast float %1778, %1776
  %1781 = fmul fast float %1778, %1777
  br label %1841

; <label>:1782                                    ; preds = %1741
  %1783 = fmul fast float %1752, %1314
  %1784 = call float @dx.op.unary.f32(i32 7, float %1783)  ; Saturate(value)
  %1785 = fsub fast float 2.000000e+00, %1784
  %1786 = fmul fast float %1784, 9.921875e-01
  %1787 = fmul fast float %1786, %1785
  %1788 = fadd fast float %1787, 3.906250e-03
  %1789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %12, float %1788, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1790 = extractvalue %dx.types.ResRet.f32 %1789, 0
  %1791 = fsub fast float %1784, %1790
  %1792 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1791)  ; FMax(a,b)
  %1793 = fmul fast float %1300, %1290
  %1794 = call float @dx.op.unary.f32(i32 6, float %1793)  ; FAbs(value)
  %1795 = fcmp fast ogt float %1794, 0x3EB0C6F7A0000000
  br i1 %1795, label %1796, label %1802, !dx.controlflow.hints !105

; <label>:1796                                    ; preds = %1782
  %1797 = fmul fast float %1793, 0xBFF7154760000000
  %1798 = call float @dx.op.unary.f32(i32 21, float %1797)  ; Exp(value)
  %1799 = fsub fast float 1.000000e+00, %1798
  %1800 = fdiv fast float %1799, %1793
  %1801 = fmul fast float %1800, %1310
  br label %1802

; <label>:1802                                    ; preds = %1796, %1782
  %1803 = phi float [ %1801, %1796 ], [ %1310, %1782 ]
  %1804 = fadd fast float %1803, %1312
  %1805 = fmul fast float %1804, %1792
  %1806 = fmul fast float %1297, %1805
  %1807 = fsub fast float -0.000000e+00, %1806
  %1808 = fmul fast float %1298, %1805
  %1809 = fsub fast float -0.000000e+00, %1808
  %1810 = fmul fast float %1299, %1805
  %1811 = fsub fast float -0.000000e+00, %1810
  %1812 = call float @dx.op.unary.f32(i32 21, float %1807)  ; Exp(value)
  %1813 = call float @dx.op.unary.f32(i32 21, float %1809)  ; Exp(value)
  %1814 = call float @dx.op.unary.f32(i32 21, float %1811)  ; Exp(value)
  %1815 = fmul fast float %1326, %1326
  %1816 = fadd fast float %1815, 1.000000e+00
  %1817 = fmul fast float %1816, 0x3FAE8EC8A0000000
  %1818 = fmul fast float %1817, %1307
  %1819 = fmul fast float %1817, %1308
  %1820 = fmul fast float %1817, %1309
  %1821 = fmul fast float %1326, %1305
  %1822 = fsub fast float 1.000000e+00, %1821
  %1823 = fmul fast float %1305, %1305
  %1824 = fsub fast float 1.000000e+00, %1823
  %1825 = fmul fast float %1824, 0x3FB45F3060000000
  %1826 = fmul fast float %1822, %1822
  %1827 = fdiv fast float 1.000000e+00, %1826
  %1828 = fmul fast float %1825, %1827
  %1829 = fmul fast float %1828, %1302
  %1830 = fmul fast float %1828, %1303
  %1831 = fmul fast float %1828, %1304
  %1832 = fadd fast float %1829, %1818
  %1833 = fadd fast float %1830, %1819
  %1834 = fadd fast float %1831, %1820
  %1835 = fsub fast float 1.000000e+00, %1812
  %1836 = fsub fast float 1.000000e+00, %1813
  %1837 = fsub fast float 1.000000e+00, %1814
  %1838 = fmul fast float %1832, %1835
  %1839 = fmul fast float %1833, %1836
  %1840 = fmul fast float %1834, %1837
  br label %1841

; <label>:1841                                    ; preds = %1802, %1753
  %1842 = phi float [ %1779, %1753 ], [ %1838, %1802 ]
  %1843 = phi float [ %1780, %1753 ], [ %1839, %1802 ]
  %1844 = phi float [ %1781, %1753 ], [ %1840, %1802 ]
  %1845 = phi float [ %1768, %1753 ], [ %1812, %1802 ]
  %1846 = phi float [ %1768, %1753 ], [ %1813, %1802 ]
  %1847 = phi float [ %1768, %1753 ], [ %1814, %1802 ]
  br i1 %1334, label %1848, label %2046, !dx.controlflow.hints !106

; <label>:1848                                    ; preds = %1841
  %1849 = extractvalue %dx.types.CBufRet.f32 %1747, 0
  %1850 = fmul fast float %1849, %1749
  %1851 = fsub fast float %1744, %1842
  %1852 = fsub fast float %1745, %1843
  %1853 = fsub fast float %1746, %1844
  %1854 = fmul fast float %1850, %1851
  %1855 = fmul fast float %1850, %1852
  %1856 = fmul fast float %1850, %1853
  %1857 = fadd fast float %1854, %1842
  %1858 = fadd fast float %1855, %1843
  %1859 = fadd fast float %1856, %1844
  %1860 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1845)  ; FMax(a,b)
  %1861 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1846)  ; FMax(a,b)
  %1862 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1847)  ; FMax(a,b)
  %1863 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1743)  ; FMax(a,b)
  %1864 = call float @dx.op.binary.f32(i32 35, float %1742, float %1752)  ; FMax(a,b)
  %1865 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1864)  ; FMax(a,b)
  %1866 = fdiv fast float %1742, %1865
  %1867 = call float @dx.op.unary.f32(i32 7, float %1866)  ; Saturate(value)
  %1868 = fdiv fast float %1752, %1865
  %1869 = call float @dx.op.unary.f32(i32 7, float %1868)  ; Saturate(value)
  %1870 = fcmp fast une float %1863, 1.000000e+00
  br i1 %1870, label %1871, label %1884, !dx.controlflow.hints !107

; <label>:1871                                    ; preds = %1848
  %1872 = call float @dx.op.unary.f32(i32 23, float %1863)  ; Log(value)
  %1873 = fmul fast float %1872, 0x3FE62E4300000000
  %1874 = fmul fast float %1744, %1873
  %1875 = fsub fast float -0.000000e+00, %1874
  %1876 = fmul fast float %1745, %1873
  %1877 = fsub fast float -0.000000e+00, %1876
  %1878 = fmul fast float %1746, %1873
  %1879 = fsub fast float -0.000000e+00, %1878
  %1880 = fsub fast float 1.000000e+00, %1863
  %1881 = fdiv fast float %1875, %1880
  %1882 = fdiv fast float %1877, %1880
  %1883 = fdiv fast float %1879, %1880
  br label %1884

; <label>:1884                                    ; preds = %1871, %1848
  %1885 = phi float [ %1881, %1871 ], [ %1744, %1848 ]
  %1886 = phi float [ %1882, %1871 ], [ %1745, %1848 ]
  %1887 = phi float [ %1883, %1871 ], [ %1746, %1848 ]
  %1888 = phi float [ %1873, %1871 ], [ 0.000000e+00, %1848 ]
  %1889 = fcmp fast une float %1860, 1.000000e+00
  br i1 %1889, label %1890, label %1897, !dx.controlflow.hints !108

; <label>:1890                                    ; preds = %1884
  %1891 = call float @dx.op.unary.f32(i32 23, float %1860)  ; Log(value)
  %1892 = fmul fast float %1891, 0x3FE62E4300000000
  %1893 = fmul fast float %1857, %1892
  %1894 = fsub fast float -0.000000e+00, %1893
  %1895 = fsub fast float 1.000000e+00, %1860
  %1896 = fdiv fast float %1894, %1895
  br label %1897

; <label>:1897                                    ; preds = %1890, %1884
  %1898 = phi float [ %1896, %1890 ], [ %1857, %1884 ]
  %1899 = phi float [ %1892, %1890 ], [ 0.000000e+00, %1884 ]
  %1900 = fcmp fast une float %1861, 1.000000e+00
  br i1 %1900, label %1901, label %1908, !dx.controlflow.hints !108

; <label>:1901                                    ; preds = %1897
  %1902 = call float @dx.op.unary.f32(i32 23, float %1861)  ; Log(value)
  %1903 = fmul fast float %1902, 0x3FE62E4300000000
  %1904 = fmul fast float %1858, %1903
  %1905 = fsub fast float -0.000000e+00, %1904
  %1906 = fsub fast float 1.000000e+00, %1861
  %1907 = fdiv fast float %1905, %1906
  br label %1908

; <label>:1908                                    ; preds = %1901, %1897
  %1909 = phi float [ %1907, %1901 ], [ %1858, %1897 ]
  %1910 = phi float [ %1903, %1901 ], [ 0.000000e+00, %1897 ]
  %1911 = fcmp fast une float %1862, 1.000000e+00
  br i1 %1911, label %1912, label %1919, !dx.controlflow.hints !108

; <label>:1912                                    ; preds = %1908
  %1913 = call float @dx.op.unary.f32(i32 23, float %1862)  ; Log(value)
  %1914 = fmul fast float %1913, 0x3FE62E4300000000
  %1915 = fmul fast float %1859, %1914
  %1916 = fsub fast float -0.000000e+00, %1915
  %1917 = fsub fast float 1.000000e+00, %1862
  %1918 = fdiv fast float %1916, %1917
  br label %1919

; <label>:1919                                    ; preds = %1912, %1908
  %1920 = phi float [ %1918, %1912 ], [ %1859, %1908 ]
  %1921 = phi float [ %1914, %1912 ], [ 0.000000e+00, %1908 ]
  %1922 = fmul fast float %1885, %1869
  %1923 = fmul fast float %1886, %1869
  %1924 = fmul fast float %1887, %1869
  %1925 = fmul fast float %1888, %1869
  %1926 = fmul fast float %1898, %1867
  %1927 = fmul fast float %1909, %1867
  %1928 = fmul fast float %1920, %1867
  %1929 = fmul fast float %1899, %1867
  %1930 = fmul fast float %1910, %1867
  %1931 = fmul fast float %1921, %1867
  %1932 = fadd fast float %1926, %1922
  %1933 = fadd fast float %1927, %1923
  %1934 = fadd fast float %1928, %1924
  %1935 = fadd fast float %1929, %1925
  %1936 = fadd fast float %1930, %1925
  %1937 = fadd fast float %1931, %1925
  %1938 = fcmp fast une float %1935, 0.000000e+00
  br i1 %1938, label %1939, label %1946, !dx.controlflow.hints !109

; <label>:1939                                    ; preds = %1919
  %1940 = fmul fast float %1935, 0x3FF7154760000000
  %1941 = call float @dx.op.unary.f32(i32 21, float %1940)  ; Exp(value)
  %1942 = fsub fast float 1.000000e+00, %1941
  %1943 = fmul fast float %1932, %1942
  %1944 = fsub fast float -0.000000e+00, %1943
  %1945 = fdiv fast float %1944, %1935
  br label %1946

; <label>:1946                                    ; preds = %1939, %1919
  %1947 = phi float [ %1941, %1939 ], [ 1.000000e+00, %1919 ]
  %1948 = phi float [ %1945, %1939 ], [ %1932, %1919 ]
  %1949 = fcmp fast une float %1936, 0.000000e+00
  br i1 %1949, label %1950, label %1957, !dx.controlflow.hints !109

; <label>:1950                                    ; preds = %1946
  %1951 = fmul fast float %1936, 0x3FF7154760000000
  %1952 = call float @dx.op.unary.f32(i32 21, float %1951)  ; Exp(value)
  %1953 = fsub fast float 1.000000e+00, %1952
  %1954 = fmul fast float %1933, %1953
  %1955 = fsub fast float -0.000000e+00, %1954
  %1956 = fdiv fast float %1955, %1936
  br label %1957

; <label>:1957                                    ; preds = %1950, %1946
  %1958 = phi float [ %1952, %1950 ], [ 1.000000e+00, %1946 ]
  %1959 = phi float [ %1956, %1950 ], [ %1933, %1946 ]
  %1960 = fcmp fast une float %1937, 0.000000e+00
  br i1 %1960, label %1961, label %1968, !dx.controlflow.hints !109

; <label>:1961                                    ; preds = %1957
  %1962 = fmul fast float %1937, 0x3FF7154760000000
  %1963 = call float @dx.op.unary.f32(i32 21, float %1962)  ; Exp(value)
  %1964 = fsub fast float 1.000000e+00, %1963
  %1965 = fmul fast float %1934, %1964
  %1966 = fsub fast float -0.000000e+00, %1965
  %1967 = fdiv fast float %1966, %1937
  br label %1968

; <label>:1968                                    ; preds = %1961, %1957
  %1969 = phi float [ %1963, %1961 ], [ 1.000000e+00, %1957 ]
  %1970 = phi float [ %1967, %1961 ], [ %1934, %1957 ]
  %1971 = fcmp fast ogt float %1867, %1869
  br i1 %1971, label %1972, label %1992, !dx.controlflow.hints !110

; <label>:1972                                    ; preds = %1968
  %1973 = fsub fast float 1.000000e+00, %1869
  %1974 = fmul fast float %1885, %1973
  %1975 = fmul fast float %1886, %1973
  %1976 = fmul fast float %1887, %1973
  %1977 = fmul fast float %1888, %1973
  %1978 = fcmp fast une float %1977, 0.000000e+00
  br i1 %1978, label %1979, label %2030, !dx.controlflow.hints !111

; <label>:1979                                    ; preds = %1972
  %1980 = fmul fast float %1977, 0x3FF7154760000000
  %1981 = call float @dx.op.unary.f32(i32 21, float %1980)  ; Exp(value)
  %1982 = fsub fast float 1.000000e+00, %1981
  %1983 = fmul fast float %1974, %1982
  %1984 = fsub fast float -0.000000e+00, %1983
  %1985 = fmul fast float %1975, %1982
  %1986 = fsub fast float -0.000000e+00, %1985
  %1987 = fmul fast float %1976, %1982
  %1988 = fsub fast float -0.000000e+00, %1987
  %1989 = fdiv fast float %1984, %1977
  %1990 = fdiv fast float %1986, %1977
  %1991 = fdiv fast float %1988, %1977
  br label %2030

; <label>:1992                                    ; preds = %1968
  %1993 = fsub fast float 1.000000e+00, %1867
  %1994 = fmul fast float %1898, %1993
  %1995 = fmul fast float %1909, %1993
  %1996 = fmul fast float %1920, %1993
  %1997 = fmul fast float %1899, %1993
  %1998 = fmul fast float %1910, %1993
  %1999 = fmul fast float %1921, %1993
  %2000 = fcmp fast une float %1997, 0.000000e+00
  br i1 %2000, label %2001, label %2008, !dx.controlflow.hints !109

; <label>:2001                                    ; preds = %1992
  %2002 = fmul fast float %1997, 0x3FF7154760000000
  %2003 = call float @dx.op.unary.f32(i32 21, float %2002)  ; Exp(value)
  %2004 = fsub fast float 1.000000e+00, %2003
  %2005 = fmul fast float %1994, %2004
  %2006 = fsub fast float -0.000000e+00, %2005
  %2007 = fdiv fast float %2006, %1997
  br label %2008

; <label>:2008                                    ; preds = %2001, %1992
  %2009 = phi float [ %2007, %2001 ], [ %1994, %1992 ]
  %2010 = phi float [ %2003, %2001 ], [ 1.000000e+00, %1992 ]
  %2011 = fcmp fast une float %1998, 0.000000e+00
  br i1 %2011, label %2012, label %2019, !dx.controlflow.hints !109

; <label>:2012                                    ; preds = %2008
  %2013 = fmul fast float %1998, 0x3FF7154760000000
  %2014 = call float @dx.op.unary.f32(i32 21, float %2013)  ; Exp(value)
  %2015 = fsub fast float 1.000000e+00, %2014
  %2016 = fmul fast float %1995, %2015
  %2017 = fsub fast float -0.000000e+00, %2016
  %2018 = fdiv fast float %2017, %1998
  br label %2019

; <label>:2019                                    ; preds = %2012, %2008
  %2020 = phi float [ %2018, %2012 ], [ %1995, %2008 ]
  %2021 = phi float [ %2014, %2012 ], [ 1.000000e+00, %2008 ]
  %2022 = fcmp fast une float %1999, 0.000000e+00
  br i1 %2022, label %2023, label %2030, !dx.controlflow.hints !109

; <label>:2023                                    ; preds = %2019
  %2024 = fmul fast float %1999, 0x3FF7154760000000
  %2025 = call float @dx.op.unary.f32(i32 21, float %2024)  ; Exp(value)
  %2026 = fsub fast float 1.000000e+00, %2025
  %2027 = fmul fast float %1996, %2026
  %2028 = fsub fast float -0.000000e+00, %2027
  %2029 = fdiv fast float %2028, %1999
  br label %2030

; <label>:2030                                    ; preds = %2023, %2019, %1979, %1972
  %2031 = phi float [ %2029, %2023 ], [ %1991, %1979 ], [ %1976, %1972 ], [ %1996, %2019 ]
  %2032 = phi float [ %2020, %2023 ], [ %1990, %1979 ], [ %1975, %1972 ], [ %2020, %2019 ]
  %2033 = phi float [ %2009, %2023 ], [ %1989, %1979 ], [ %1974, %1972 ], [ %2009, %2019 ]
  %2034 = phi float [ %2025, %2023 ], [ %1981, %1979 ], [ 1.000000e+00, %1972 ], [ 1.000000e+00, %2019 ]
  %2035 = phi float [ %2021, %2023 ], [ %1981, %1979 ], [ 1.000000e+00, %1972 ], [ %2021, %2019 ]
  %2036 = phi float [ %2010, %2023 ], [ %1981, %1979 ], [ 1.000000e+00, %1972 ], [ %2010, %2019 ]
  %2037 = fmul fast float %2036, %1948
  %2038 = fmul fast float %2035, %1959
  %2039 = fmul fast float %2034, %1970
  %2040 = fadd fast float %2037, %2033
  %2041 = fadd fast float %2038, %2032
  %2042 = fadd fast float %2039, %2031
  %2043 = fmul fast float %2036, %1947
  %2044 = fmul fast float %2035, %1958
  %2045 = fmul fast float %2034, %1969
  br label %2046

; <label>:2046                                    ; preds = %2030, %1841
  %2047 = phi float [ %1847, %1841 ], [ %2045, %2030 ]
  %2048 = phi float [ %1846, %1841 ], [ %2044, %2030 ]
  %2049 = phi float [ %1845, %1841 ], [ %2043, %2030 ]
  %2050 = phi float [ %1844, %1841 ], [ %2042, %2030 ]
  %2051 = phi float [ %1843, %1841 ], [ %2041, %2030 ]
  %2052 = phi float [ %1842, %1841 ], [ %2040, %2030 ]
  %2053 = fmul fast float %2049, %1190
  %2054 = fmul fast float %2048, %1191
  %2055 = fmul fast float %2047, %1192
  %2056 = fsub fast float 1.000000e+00, %1253
  %2057 = fmul fast float %2052, %2056
  %2058 = fmul fast float %2051, %2056
  %2059 = fmul fast float %2050, %2056
  %2060 = fadd fast float %2057, %2053
  %2061 = fadd fast float %2058, %2054
  %2062 = fadd fast float %2059, %2055
  %2063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2064 = extractvalue %dx.types.CBufRet.f32 %2063, 2
  %2065 = fmul fast float %2064, %1263
  %2066 = call float @dx.op.unary.f32(i32 7, float %2065)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %15, i32 %16, i32 undef, float %1253, float %1253, float %1253, float %1253, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2068 = extractvalue %dx.types.CBufRet.f32 %2067, 0
  %2069 = fmul fast float %2068, %2060
  %2070 = fmul fast float %2068, %2061
  %2071 = fmul fast float %2068, %2062
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %15, i32 %16, i32 undef, float %2069, float %2070, float %2071, float %2069, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %15, i32 %16, i32 undef, float %2066, float %2066, float %2066, float %2066, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!25}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !19, !22}
!5 = !{!6, !8, !9, !10, !11, !12}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!13 = !{!14, !15, !16, !17}
!14 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !18}
!18 = !{i32 0, i32 14}
!19 = !{!20, !21}
!20 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!21 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!22 = !{!23, !24}
!23 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!24 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!25 = !{void ()* @cs_fog_raymarching_air_heightmap, !"cs_fog_raymarching_air_heightmap", null, !4, !26}
!26 = !{i32 0, i64 272, i32 4, !27}
!27 = !{i32 8, i32 8, i32 1}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
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

