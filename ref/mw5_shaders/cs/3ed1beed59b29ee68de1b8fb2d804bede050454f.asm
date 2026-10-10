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
; shader hash: 417d0a1d81715b4dea371faabace10c0
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

define void @cs_fog_raymarching_heightmap() {
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
  %368 = call float @dx.op.binary.f32(i32 36, float %297, float %366)  ; FMin(a,b)
  %369 = call float @dx.op.binary.f32(i32 35, float %274, float %367)  ; FMax(a,b)
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %372 = fmul fast float %222, 2.000000e+00
  %373 = fadd fast float %372, -1.000000e+00
  %374 = fmul fast float %371, %373
  %375 = fadd fast float %374, %369
  %376 = fcmp fast olt float %375, %368
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 2
  %379 = fcmp fast olt float %378, 1.000000e+00
  %380 = and i1 %376, %379
  br i1 %380, label %381, label %1019

; <label>:381                                     ; preds = %364
  %382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %383 = extractvalue %dx.types.CBufRet.i32 %382, 1
  %384 = add i32 %383, -1
  %385 = fmul fast float %375, %278
  %386 = fadd fast float %385, %235
  %387 = fmul fast float %375, %277
  %388 = fadd fast float %387, %234
  %389 = fmul fast float %375, %276
  %390 = fadd fast float %389, %233
  br label %391

; <label>:391                                     ; preds = %995, %381
  %392 = phi float [ %997, %995 ], [ 0.000000e+00, %381 ]
  %393 = phi float [ %998, %995 ], [ 1.000000e+00, %381 ]
  %394 = phi float [ %999, %995 ], [ 0.000000e+00, %381 ]
  %395 = phi float [ %1000, %995 ], [ 0.000000e+00, %381 ]
  %396 = phi float [ %1001, %995 ], [ 0.000000e+00, %381 ]
  %397 = phi float [ %1011, %995 ], [ %390, %381 ]
  %398 = phi float [ %1012, %995 ], [ %388, %381 ]
  %399 = phi float [ %1013, %995 ], [ %386, %381 ]
  %400 = phi float [ %996, %995 ], [ %375, %381 ]
  %401 = phi i32 [ %586, %995 ], [ %384, %381 ]
  %402 = phi float [ %1002, %995 ], [ 0.000000e+00, %381 ]
  %403 = phi float [ %1003, %995 ], [ 0.000000e+00, %381 ]
  %404 = phi float [ %1004, %995 ], [ 0.000000e+00, %381 ]
  %405 = phi float [ %1005, %995 ], [ 0.000000e+00, %381 ]
  %406 = phi float [ %1006, %995 ], [ 0.000000e+00, %381 ]
  %407 = phi i32 [ %1007, %995 ], [ 0, %381 ]
  %408 = fsub fast float -0.000000e+00, %398
  %409 = fsub fast float -0.000000e+00, %397
  %410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.f32 %410, 0
  %412 = icmp eq i32 %365, 0
  br i1 %412, label %583, label %413, !dx.controlflow.hints !32

; <label>:413                                     ; preds = %391
  %414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %415 = extractvalue %dx.types.CBufRet.i32 %414, 1
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 1
  %418 = fcmp fast ogt float %417, %400
  br i1 %418, label %419, label %421, !dx.controlflow.hints !33

; <label>:419                                     ; preds = %413
  %420 = fsub fast float %417, %400
  br label %573

; <label>:421                                     ; preds = %413
  %422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.i32 %422, 3
  %424 = icmp eq i32 %423, 0
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 2
  %427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.f32 %427, 2
  %429 = fsub fast float %426, %399
  %430 = fadd fast float %429, %428
  %431 = fsub fast float 0xC7EFFFFFE0000000, %399
  br i1 %424, label %441, label %432, !dx.controlflow.hints !29

; <label>:432                                     ; preds = %421
  %433 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %409, float %408, float %430)  ; Dot3(ax,ay,az,bx,by,bz)
  %434 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %276, float %277, float %278)  ; Dot3(ax,ay,az,bx,by,bz)
  %435 = fdiv fast float 1.000000e+00, %434
  %436 = fmul fast float %435, %433
  %437 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %409, float %408, float %431)  ; Dot3(ax,ay,az,bx,by,bz)
  %438 = fmul fast float %435, %437
  %439 = call float @dx.op.binary.f32(i32 36, float %436, float %438)  ; FMin(a,b)
  %440 = call float @dx.op.binary.f32(i32 35, float %436, float %438)  ; FMax(a,b)
  br label %474

; <label>:441                                     ; preds = %421
  %442 = extractvalue %dx.types.CBufRet.f32 %425, 0
  %443 = extractvalue %dx.types.CBufRet.f32 %425, 1
  %444 = extractvalue %dx.types.CBufRet.f32 %427, 0
  %445 = extractvalue %dx.types.CBufRet.f32 %427, 1
  %446 = fdiv fast float 1.000000e+00, %276
  %447 = fdiv fast float 1.000000e+00, %277
  %448 = fdiv fast float 1.000000e+00, %278
  %449 = fsub fast float %442, %397
  %450 = fmul fast float %446, %449
  %451 = fadd fast float %449, %444
  %452 = fmul fast float %451, %446
  %453 = call float @dx.op.binary.f32(i32 36, float %450, float %452)  ; FMin(a,b)
  %454 = call float @dx.op.binary.f32(i32 35, float %450, float %452)  ; FMax(a,b)
  %455 = fsub fast float %443, %398
  %456 = fmul fast float %447, %455
  %457 = fadd fast float %455, %445
  %458 = fmul fast float %457, %447
  %459 = call float @dx.op.binary.f32(i32 36, float %456, float %458)  ; FMin(a,b)
  %460 = call float @dx.op.binary.f32(i32 35, float %453, float %459)  ; FMax(a,b)
  %461 = call float @dx.op.binary.f32(i32 35, float %456, float %458)  ; FMax(a,b)
  %462 = call float @dx.op.binary.f32(i32 36, float %454, float %461)  ; FMin(a,b)
  %463 = fmul fast float %448, %431
  %464 = fmul fast float %448, %430
  %465 = call float @dx.op.binary.f32(i32 36, float %463, float %464)  ; FMin(a,b)
  %466 = call float @dx.op.binary.f32(i32 35, float %460, float %465)  ; FMax(a,b)
  %467 = call float @dx.op.binary.f32(i32 35, float %463, float %464)  ; FMax(a,b)
  %468 = call float @dx.op.binary.f32(i32 36, float %462, float %467)  ; FMin(a,b)
  %469 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %466)  ; FMax(a,b)
  %470 = fcmp fast ult float %468, %469
  br i1 %470, label %474, label %471, !dx.controlflow.hints !30

; <label>:471                                     ; preds = %441
  %472 = call float @dx.op.binary.f32(i32 36, float %466, float %468)  ; FMin(a,b)
  %473 = call float @dx.op.binary.f32(i32 35, float %466, float %468)  ; FMax(a,b)
  br label %474

; <label>:474                                     ; preds = %471, %441, %432
  %475 = phi float [ %439, %432 ], [ %472, %471 ], [ 0.000000e+00, %441 ]
  %476 = phi float [ %440, %432 ], [ %473, %471 ], [ 0.000000e+00, %441 ]
  %477 = fcmp fast ogt float %475, 0.000000e+00
  br i1 %477, label %573, label %478, !dx.controlflow.hints !34

; <label>:478                                     ; preds = %474
  %479 = fcmp fast ugt float %476, 0.000000e+00
  br i1 %479, label %480, label %573, !dx.controlflow.hints !35

; <label>:480                                     ; preds = %478
  %481 = icmp sgt i32 %401, 0
  br i1 %481, label %482, label %567

; <label>:482                                     ; preds = %480
  br label %483

; <label>:483                                     ; preds = %563, %482
  %484 = phi i32 [ %564, %563 ], [ %401, %482 ]
  %485 = sitofp i32 %484 to float
  %486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.f32 %486, 0
  %488 = extractvalue %dx.types.CBufRet.f32 %486, 1
  %489 = fsub fast float %397, %487
  %490 = fsub fast float %398, %488
  %491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.f32 %491, 0
  %493 = extractvalue %dx.types.CBufRet.f32 %491, 1
  %494 = fmul fast float %489, %492
  %495 = fmul fast float %490, %493
  %496 = fsub fast float 1.000000e+00, %495
  %497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %498 = extractvalue %dx.types.CBufRet.i32 %497, 3
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %506, label %500, !dx.controlflow.hints !36

; <label>:500                                     ; preds = %483
  %501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %494, float %496, float undef, float undef, i32 0, i32 0, i32 undef, float %485)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = extractvalue %dx.types.ResRet.f32 %501, 1
  %504 = extractvalue %dx.types.ResRet.f32 %501, 2
  %505 = extractvalue %dx.types.ResRet.f32 %501, 3
  br label %512

; <label>:506                                     ; preds = %483
  %507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %12, float %494, float %496, float undef, float undef, i32 0, i32 0, i32 undef, float %485)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  %509 = extractvalue %dx.types.ResRet.f32 %507, 1
  %510 = extractvalue %dx.types.ResRet.f32 %507, 2
  %511 = extractvalue %dx.types.ResRet.f32 %507, 3
  br label %512

; <label>:512                                     ; preds = %506, %500
  %513 = phi float [ %502, %500 ], [ %508, %506 ]
  %514 = phi float [ %503, %500 ], [ %509, %506 ]
  %515 = phi float [ %504, %500 ], [ %510, %506 ]
  %516 = phi float [ %505, %500 ], [ %511, %506 ]
  %517 = extractvalue %dx.types.CBufRet.f32 %491, 3
  %518 = fmul fast float %517, %513
  %519 = extractvalue %dx.types.CBufRet.f32 %486, 2
  %520 = fadd fast float %518, %519
  %521 = fmul fast float %517, %514
  %522 = fadd fast float %521, %519
  %523 = fmul fast float %517, %515
  %524 = fadd fast float %523, %519
  %525 = and i32 %484, 31
  %526 = shl i32 1, %525
  %527 = uitofp i32 %526 to float
  %528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.f32 %528, 3
  %530 = fdiv fast float 1.000000e+00, %529
  %531 = fmul fast float %530, %527
  %532 = fmul fast float %531, %278
  %533 = fadd fast float %532, %399
  %534 = fcmp fast oeq float %516, 0.000000e+00
  %535 = fcmp fast ogt float %399, %522
  %536 = fcmp fast ogt float %533, %522
  %537 = and i1 %535, %536
  %538 = or i1 %534, %537
  br i1 %538, label %539, label %543, !dx.controlflow.hints !37

; <label>:539                                     ; preds = %512
  %540 = add nsw i32 %484, 1
  %541 = add nsw i32 %415, -1
  %542 = call i32 @dx.op.binary.i32(i32 38, i32 %540, i32 %541)  ; IMin(a,b)
  br label %573

; <label>:543                                     ; preds = %512
  %544 = fcmp fast olt float %399, %524
  %545 = fcmp fast olt float %533, %524
  %546 = and i1 %544, %545
  br i1 %546, label %547, label %551, !dx.controlflow.hints !38

; <label>:547                                     ; preds = %543
  %548 = add nsw i32 %484, 1
  %549 = add nsw i32 %415, -1
  %550 = call i32 @dx.op.binary.i32(i32 38, i32 %548, i32 %549)  ; IMin(a,b)
  br label %573

; <label>:551                                     ; preds = %543
  %552 = fcmp fast olt float %399, %520
  %553 = fcmp fast olt float %533, %520
  %554 = and i1 %552, %553
  br i1 %554, label %555, label %563, !dx.controlflow.hints !39

; <label>:555                                     ; preds = %551
  %556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.f32 %556, 3
  %558 = extractvalue %dx.types.CBufRet.f32 %491, 2
  %559 = fcmp fast une float %557, %558
  br i1 %559, label %560, label %567, !dx.controlflow.hints !40

; <label>:560                                     ; preds = %555
  %561 = fsub fast float %399, %524
  %562 = call float @dx.op.binary.f32(i32 36, float %531, float %561)  ; FMin(a,b)
  br label %567

; <label>:563                                     ; preds = %551
  %564 = add nsw i32 %484, -1
  %565 = icmp sgt i32 %484, 1
  br i1 %565, label %483, label %566

; <label>:566                                     ; preds = %563
  br label %567

; <label>:567                                     ; preds = %566, %560, %555, %480
  %568 = phi float [ %562, %560 ], [ %531, %555 ], [ 0.000000e+00, %480 ], [ 0.000000e+00, %566 ]
  %569 = phi i32 [ %484, %560 ], [ %484, %555 ], [ %401, %480 ], [ %564, %566 ]
  %570 = add nsw i32 %569, 1
  %571 = add nsw i32 %415, -1
  %572 = call i32 @dx.op.binary.i32(i32 38, i32 %570, i32 %571)  ; IMin(a,b)
  br label %573

; <label>:573                                     ; preds = %567, %547, %539, %478, %474, %419
  %574 = phi float [ %420, %419 ], [ %531, %539 ], [ %531, %547 ], [ %568, %567 ], [ 0x47EFFFFFE0000000, %478 ], [ %475, %474 ]
  %575 = phi i32 [ %365, %419 ], [ %365, %539 ], [ %365, %547 ], [ %365, %567 ], [ 0, %478 ], [ %365, %474 ]
  %576 = phi i32 [ %401, %419 ], [ %542, %539 ], [ %550, %547 ], [ %572, %567 ], [ %401, %478 ], [ %401, %474 ]
  %577 = icmp ne i32 %575, 0
  %578 = zext i1 %577 to i32
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 2
  %581 = call float @dx.op.binary.f32(i32 35, float %574, float %580)  ; FMax(a,b)
  %582 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %581)  ; FMin(a,b)
  br label %583

; <label>:583                                     ; preds = %573, %391
  %584 = phi i32 [ %578, %573 ], [ 0, %391 ]
  %585 = phi float [ %582, %573 ], [ 0x47EFFFFFE0000000, %391 ]
  %586 = phi i32 [ %576, %573 ], [ %401, %391 ]
  %587 = extractvalue %dx.types.CBufRet.f32 %410, 2
  %588 = fmul fast float %587, %400
  %589 = call float @dx.op.unary.f32(i32 23, float %588)  ; Log(value)
  %590 = fmul fast float %589, 0x3FE62E4300000000
  %591 = call float @dx.op.binary.f32(i32 35, float %590, float 1.000000e+00)  ; FMax(a,b)
  %592 = fmul fast float %591, 0x47EFFFFFE0000000
  %593 = call float @dx.op.binary.f32(i32 36, float %592, float %585)  ; FMin(a,b)
  %594 = call float @dx.op.binary.f32(i32 35, float %593, float %411)  ; FMax(a,b)
  %595 = fsub fast float %368, %400
  %596 = fadd fast float %595, 0x3F1A36E2E0000000
  %597 = call float @dx.op.binary.f32(i32 36, float %596, float %594)  ; FMin(a,b)
  %598 = icmp eq i32 %584, 0
  br i1 %598, label %704, label %599, !dx.controlflow.hints !41

; <label>:599                                     ; preds = %583
  %600 = fcmp fast olt float %596, %594
  %601 = fmul fast float %278, %221
  %602 = fmul fast float %601, %597
  %603 = fadd fast float %602, %399
  %604 = fmul fast float %278, %222
  %605 = fmul fast float %604, %597
  %606 = fadd fast float %605, %399
  %607 = fmul fast float %278, %223
  %608 = fmul fast float %607, %597
  %609 = fadd fast float %608, %399
  br i1 %600, label %610, label %615, !dx.controlflow.hints !42

; <label>:610                                     ; preds = %599
  %611 = fmul fast float %597, %276
  %612 = fmul fast float %597, %277
  %613 = fadd fast float %611, %397
  %614 = fadd fast float %612, %398
  br label %615

; <label>:615                                     ; preds = %610, %599
  %616 = phi float [ %613, %610 ], [ %397, %599 ]
  %617 = phi float [ %614, %610 ], [ %398, %599 ]
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 0
  %620 = extractvalue %dx.types.CBufRet.f32 %618, 1
  %621 = fsub fast float %616, %619
  %622 = fsub fast float %617, %620
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 0
  %625 = extractvalue %dx.types.CBufRet.f32 %623, 1
  %626 = fmul fast float %621, %624
  %627 = fmul fast float %622, %625
  %628 = fsub fast float 1.000000e+00, %627
  %629 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %630 = extractvalue %dx.types.CBufRet.i32 %629, 3
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %638, label %632, !dx.controlflow.hints !36

; <label>:632                                     ; preds = %615
  %633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %626, float %628, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %634 = extractvalue %dx.types.ResRet.f32 %633, 0
  %635 = extractvalue %dx.types.ResRet.f32 %633, 1
  %636 = extractvalue %dx.types.ResRet.f32 %633, 2
  %637 = extractvalue %dx.types.ResRet.f32 %633, 3
  br label %644

; <label>:638                                     ; preds = %615
  %639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %12, float %626, float %628, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = extractvalue %dx.types.ResRet.f32 %639, 1
  %642 = extractvalue %dx.types.ResRet.f32 %639, 2
  %643 = extractvalue %dx.types.ResRet.f32 %639, 3
  br label %644

; <label>:644                                     ; preds = %638, %632
  %645 = phi float [ %634, %632 ], [ %640, %638 ]
  %646 = phi float [ %635, %632 ], [ %641, %638 ]
  %647 = phi float [ %636, %632 ], [ %642, %638 ]
  %648 = phi float [ %637, %632 ], [ %643, %638 ]
  %649 = extractvalue %dx.types.CBufRet.f32 %623, 3
  %650 = fmul fast float %649, %646
  %651 = fmul fast float %650, %645
  %652 = fsub fast float %650, %651
  %653 = fcmp fast ole float %652, 0.000000e+00
  %654 = extractvalue %dx.types.CBufRet.f32 %618, 2
  %655 = fadd fast float %651, %654
  %656 = fmul fast float %649, %647
  %657 = fadd fast float %656, %654
  %658 = fdiv fast float 1.000000e+00, %652
  %659 = select i1 %653, float 1.000000e+06, float %658
  %660 = fsub fast float %603, %655
  %661 = fmul fast float %659, %660
  %662 = call float @dx.op.unary.f32(i32 7, float %661)  ; Saturate(value)
  %663 = extractvalue %dx.types.CBufRet.f32 %623, 2
  %664 = fmul fast float %663, %662
  %665 = fsub fast float %663, %664
  %666 = fcmp fast olt float %603, %657
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 3
  %669 = select i1 %666, float %668, float 1.000000e+00
  %670 = fmul fast float %665, %669
  %671 = fsub fast float %606, %655
  %672 = fmul fast float %659, %671
  %673 = call float @dx.op.unary.f32(i32 7, float %672)  ; Saturate(value)
  %674 = fmul fast float %663, %673
  %675 = fsub fast float %663, %674
  %676 = fcmp fast olt float %606, %657
  %677 = select i1 %676, float %668, float 1.000000e+00
  %678 = fmul fast float %675, %677
  %679 = fadd fast float %678, %670
  %680 = fsub fast float %609, %655
  %681 = fmul fast float %659, %680
  %682 = call float @dx.op.unary.f32(i32 7, float %681)  ; Saturate(value)
  %683 = fmul fast float %663, %682
  %684 = fsub fast float %663, %683
  %685 = fcmp fast olt float %609, %657
  %686 = select i1 %685, float %668, float 1.000000e+00
  %687 = fmul fast float %684, %686
  %688 = fadd fast float %679, %687
  %689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %690 = extractvalue %dx.types.CBufRet.f32 %689, 2
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 0
  %693 = extractvalue %dx.types.CBufRet.f32 %691, 1
  %694 = extractvalue %dx.types.CBufRet.f32 %691, 2
  %695 = fmul fast float %597, 0x3FD5555560000000
  %696 = fmul fast float %695, %648
  %697 = fmul fast float %696, %690
  %698 = fmul fast float %697, %688
  %699 = extractvalue %dx.types.CBufRet.f32 %667, 0
  %700 = fmul fast float %698, %692
  %701 = fmul fast float %698, %693
  %702 = fmul fast float %698, %694
  %703 = fmul fast float %698, %699
  br label %704

; <label>:704                                     ; preds = %644, %583
  %705 = phi float [ %698, %644 ], [ 0.000000e+00, %583 ]
  %706 = phi float [ %703, %644 ], [ 0.000000e+00, %583 ]
  %707 = phi float [ %700, %644 ], [ 0.000000e+00, %583 ]
  %708 = phi float [ %701, %644 ], [ 0.000000e+00, %583 ]
  %709 = phi float [ %702, %644 ], [ 0.000000e+00, %583 ]
  %710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.f32 %710, 1
  %712 = fcmp fast ogt float %705, %711
  br i1 %712, label %713, label %719, !dx.controlflow.hints !43

; <label>:713                                     ; preds = %704
  %714 = fdiv fast float 1.000000e+00, %705
  %715 = fmul fast float %714, %707
  %716 = fmul fast float %714, %708
  %717 = fmul fast float %714, %709
  %718 = fmul fast float %714, %706
  br label %719

; <label>:719                                     ; preds = %713, %704
  %720 = phi float [ %718, %713 ], [ %706, %704 ]
  %721 = phi float [ %715, %713 ], [ %707, %704 ]
  %722 = phi float [ %716, %713 ], [ %708, %704 ]
  %723 = phi float [ %717, %713 ], [ %709, %704 ]
  br i1 %712, label %726, label %724, !dx.controlflow.hints !44

; <label>:724                                     ; preds = %719
  %725 = fadd fast float %597, %400
  br label %995

; <label>:726                                     ; preds = %719
  %727 = fmul fast float %705, 0xBFF7154760000000
  %728 = call float @dx.op.unary.f32(i32 21, float %727)  ; Exp(value)
  %729 = call float @dx.op.unary.f32(i32 7, float %728)  ; Saturate(value)
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 3
  %732 = fcmp fast une float %731, 0.000000e+00
  %733 = extractvalue %dx.types.CBufRet.f32 %730, 0
  %734 = extractvalue %dx.types.CBufRet.f32 %730, 1
  %735 = extractvalue %dx.types.CBufRet.f32 %730, 2
  br i1 %732, label %736, label %758, !dx.controlflow.hints !45

; <label>:736                                     ; preds = %726
  %737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %738 = extractvalue %dx.types.CBufRet.f32 %737, 0
  %739 = extractvalue %dx.types.CBufRet.f32 %737, 1
  %740 = extractvalue %dx.types.CBufRet.f32 %737, 2
  %741 = call float @dx.op.dot3.f32(i32 55, float %733, float %734, float %735, float %276, float %277, float %278)  ; Dot3(ax,ay,az,bx,by,bz)
  %742 = fcmp fast ogt float %720, 0.000000e+00
  %743 = select i1 %742, float 1.000000e+00, float -1.000000e+00
  %744 = fmul fast float %743, 5.000000e-01
  %745 = fmul fast float %744, %741
  %746 = fmul fast float %743, %720
  %747 = fadd fast float %745, 4.921875e-01
  %748 = fadd fast float %746, -3.125000e-02
  %749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %747, float 0x3FB25F3060000000, float %748, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 0
  %751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %752 = extractvalue %dx.types.CBufRet.f32 %751, 0
  %753 = fmul fast float %750, 0x400921FB60000000
  %754 = fmul fast float %753, %752
  %755 = fmul fast float %754, %738
  %756 = fmul fast float %754, %739
  %757 = fmul fast float %754, %740
  br label %758

; <label>:758                                     ; preds = %736, %726
  %759 = phi float [ %755, %736 ], [ 0.000000e+00, %726 ]
  %760 = phi float [ %756, %736 ], [ 0.000000e+00, %726 ]
  %761 = phi float [ %757, %736 ], [ 0.000000e+00, %726 ]
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 0
  %764 = fmul fast float %763, %733
  %765 = fmul fast float %763, %734
  %766 = fmul fast float %763, %735
  %767 = fadd fast float %764, %397
  %768 = fsub fast float -0.000000e+00, %767
  %769 = fadd fast float %765, %398
  %770 = fsub fast float -0.000000e+00, %769
  %771 = fadd fast float %766, %399
  br i1 %412, label %846, label %772, !dx.controlflow.hints !32

; <label>:772                                     ; preds = %758
  %773 = extractvalue %dx.types.CBufRet.f32 %762, 1
  %774 = fcmp fast ogt float %773, %763
  br i1 %774, label %775, label %777, !dx.controlflow.hints !33

; <label>:775                                     ; preds = %772
  %776 = fsub fast float %773, %763
  br label %837

; <label>:777                                     ; preds = %772
  %778 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %779 = extractvalue %dx.types.CBufRet.i32 %778, 3
  %780 = icmp eq i32 %779, 0
  %781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %782 = extractvalue %dx.types.CBufRet.f32 %781, 2
  %783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %784 = extractvalue %dx.types.CBufRet.f32 %783, 2
  %785 = fsub fast float %782, %771
  %786 = fadd fast float %785, %784
  %787 = fsub fast float 0xC7EFFFFFE0000000, %771
  br i1 %780, label %797, label %788, !dx.controlflow.hints !29

; <label>:788                                     ; preds = %777
  %789 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %768, float %770, float %786)  ; Dot3(ax,ay,az,bx,by,bz)
  %790 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %733, float %734, float %735)  ; Dot3(ax,ay,az,bx,by,bz)
  %791 = fdiv fast float 1.000000e+00, %790
  %792 = fmul fast float %791, %789
  %793 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %768, float %770, float %787)  ; Dot3(ax,ay,az,bx,by,bz)
  %794 = fmul fast float %791, %793
  %795 = call float @dx.op.binary.f32(i32 36, float %792, float %794)  ; FMin(a,b)
  %796 = call float @dx.op.binary.f32(i32 35, float %792, float %794)  ; FMax(a,b)
  br label %830

; <label>:797                                     ; preds = %777
  %798 = extractvalue %dx.types.CBufRet.f32 %781, 0
  %799 = extractvalue %dx.types.CBufRet.f32 %781, 1
  %800 = extractvalue %dx.types.CBufRet.f32 %783, 0
  %801 = extractvalue %dx.types.CBufRet.f32 %783, 1
  %802 = fdiv fast float 1.000000e+00, %733
  %803 = fdiv fast float 1.000000e+00, %734
  %804 = fdiv fast float 1.000000e+00, %735
  %805 = fsub fast float %798, %767
  %806 = fmul fast float %802, %805
  %807 = fadd fast float %805, %800
  %808 = fmul fast float %807, %802
  %809 = call float @dx.op.binary.f32(i32 36, float %806, float %808)  ; FMin(a,b)
  %810 = call float @dx.op.binary.f32(i32 35, float %806, float %808)  ; FMax(a,b)
  %811 = fsub fast float %799, %769
  %812 = fmul fast float %803, %811
  %813 = fadd fast float %811, %801
  %814 = fmul fast float %813, %803
  %815 = call float @dx.op.binary.f32(i32 36, float %812, float %814)  ; FMin(a,b)
  %816 = call float @dx.op.binary.f32(i32 35, float %809, float %815)  ; FMax(a,b)
  %817 = call float @dx.op.binary.f32(i32 35, float %812, float %814)  ; FMax(a,b)
  %818 = call float @dx.op.binary.f32(i32 36, float %810, float %817)  ; FMin(a,b)
  %819 = fmul fast float %804, %787
  %820 = fmul fast float %804, %786
  %821 = call float @dx.op.binary.f32(i32 36, float %819, float %820)  ; FMin(a,b)
  %822 = call float @dx.op.binary.f32(i32 35, float %816, float %821)  ; FMax(a,b)
  %823 = call float @dx.op.binary.f32(i32 35, float %819, float %820)  ; FMax(a,b)
  %824 = call float @dx.op.binary.f32(i32 36, float %818, float %823)  ; FMin(a,b)
  %825 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %822)  ; FMax(a,b)
  %826 = fcmp fast ult float %824, %825
  br i1 %826, label %830, label %827, !dx.controlflow.hints !30

; <label>:827                                     ; preds = %797
  %828 = call float @dx.op.binary.f32(i32 36, float %822, float %824)  ; FMin(a,b)
  %829 = call float @dx.op.binary.f32(i32 35, float %822, float %824)  ; FMax(a,b)
  br label %830

; <label>:830                                     ; preds = %827, %797, %788
  %831 = phi float [ %795, %788 ], [ %828, %827 ], [ 0.000000e+00, %797 ]
  %832 = phi float [ %796, %788 ], [ %829, %827 ], [ 0.000000e+00, %797 ]
  %833 = fcmp fast ogt float %831, 0.000000e+00
  br i1 %833, label %837, label %834, !dx.controlflow.hints !34

; <label>:834                                     ; preds = %830
  %835 = fcmp fast ugt float %832, 0.000000e+00
  br i1 %835, label %836, label %837, !dx.controlflow.hints !35

; <label>:836                                     ; preds = %834
  br label %837

; <label>:837                                     ; preds = %836, %834, %830, %775
  %838 = phi float [ %776, %775 ], [ 0.000000e+00, %836 ], [ 0x47EFFFFFE0000000, %834 ], [ %831, %830 ]
  %839 = phi i32 [ %365, %775 ], [ %365, %836 ], [ 0, %834 ], [ %365, %830 ]
  %840 = icmp ne i32 %839, 0
  %841 = zext i1 %840 to i32
  %842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.f32 %842, 2
  %844 = call float @dx.op.binary.f32(i32 35, float %838, float %843)  ; FMax(a,b)
  %845 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %844)  ; FMin(a,b)
  br label %846

; <label>:846                                     ; preds = %837, %758
  %847 = phi float [ %845, %837 ], [ 0x47EFFFFFE0000000, %758 ]
  %848 = phi i32 [ %841, %837 ], [ 0, %758 ]
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %923, label %850, !dx.controlflow.hints !41

; <label>:850                                     ; preds = %846
  %851 = fmul fast float %587, %763
  %852 = call float @dx.op.unary.f32(i32 23, float %851)  ; Log(value)
  %853 = fmul fast float %852, 0x3FE62E4300000000
  %854 = call float @dx.op.binary.f32(i32 35, float %853, float 1.000000e+00)  ; FMax(a,b)
  %855 = fmul fast float %854, 0x47EFFFFFE0000000
  %856 = call float @dx.op.binary.f32(i32 36, float %855, float %847)  ; FMin(a,b)
  %857 = call float @dx.op.binary.f32(i32 35, float %856, float 0.000000e+00)  ; FMax(a,b)
  %858 = fcmp fast ogt float %857, 0x3F1A36E2E0000000
  %859 = fadd fast float %764, %767
  %860 = fadd fast float %765, %769
  %861 = select i1 %858, float %859, float %767
  %862 = select i1 %858, float %860, float %769
  %863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.f32 %863, 0
  %865 = extractvalue %dx.types.CBufRet.f32 %863, 1
  %866 = fsub fast float %861, %864
  %867 = fsub fast float %862, %865
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 0
  %870 = extractvalue %dx.types.CBufRet.f32 %868, 1
  %871 = fmul fast float %866, %869
  %872 = fmul fast float %867, %870
  %873 = fsub fast float 1.000000e+00, %872
  %874 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.i32 %874, 3
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %883, label %877, !dx.controlflow.hints !36

; <label>:877                                     ; preds = %850
  %878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %871, float %873, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %879 = extractvalue %dx.types.ResRet.f32 %878, 0
  %880 = extractvalue %dx.types.ResRet.f32 %878, 1
  %881 = extractvalue %dx.types.ResRet.f32 %878, 2
  %882 = extractvalue %dx.types.ResRet.f32 %878, 3
  br label %889

; <label>:883                                     ; preds = %850
  %884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %12, float %871, float %873, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %885 = extractvalue %dx.types.ResRet.f32 %884, 0
  %886 = extractvalue %dx.types.ResRet.f32 %884, 1
  %887 = extractvalue %dx.types.ResRet.f32 %884, 2
  %888 = extractvalue %dx.types.ResRet.f32 %884, 3
  br label %889

; <label>:889                                     ; preds = %883, %877
  %890 = phi float [ %879, %877 ], [ %885, %883 ]
  %891 = phi float [ %880, %877 ], [ %886, %883 ]
  %892 = phi float [ %881, %877 ], [ %887, %883 ]
  %893 = phi float [ %882, %877 ], [ %888, %883 ]
  %894 = extractvalue %dx.types.CBufRet.f32 %868, 3
  %895 = fmul fast float %894, %891
  %896 = fmul fast float %895, %890
  %897 = fsub fast float %895, %896
  %898 = fcmp fast ole float %897, 0.000000e+00
  %899 = extractvalue %dx.types.CBufRet.f32 %863, 2
  %900 = fadd fast float %896, %899
  %901 = fmul fast float %894, %892
  %902 = fadd fast float %901, %899
  %903 = fdiv fast float 1.000000e+00, %897
  %904 = select i1 %898, float 1.000000e+06, float %903
  %905 = fsub fast float %771, %900
  %906 = fmul fast float %904, %905
  %907 = call float @dx.op.unary.f32(i32 7, float %906)  ; Saturate(value)
  %908 = extractvalue %dx.types.CBufRet.f32 %868, 2
  %909 = fmul fast float %908, %907
  %910 = fsub fast float %908, %909
  %911 = fcmp fast olt float %771, %902
  %912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %913 = extractvalue %dx.types.CBufRet.f32 %912, 3
  %914 = fmul fast float %913, 3.000000e+00
  %915 = select i1 %911, float %914, float 3.000000e+00
  %916 = fmul fast float %910, %915
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 2
  %919 = fmul fast float %763, 0x3FD5555560000000
  %920 = fmul fast float %919, %893
  %921 = fmul fast float %920, %918
  %922 = fmul fast float %921, %916
  br label %923

; <label>:923                                     ; preds = %889, %846
  %924 = phi float [ %922, %889 ], [ 0.000000e+00, %846 ]
  %925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.f32 %925, 3
  %927 = fmul fast float %924, 0xBFF7154760000000
  %928 = fmul fast float %927, %926
  %929 = call float @dx.op.unary.f32(i32 21, float %928)  ; Exp(value)
  %930 = call float @dx.op.unary.f32(i32 7, float %929)  ; Saturate(value)
  %931 = fmul fast float %930, %759
  %932 = fmul fast float %930, %760
  %933 = fmul fast float %930, %761
  %934 = fadd fast float %931, %200
  %935 = fadd fast float %932, %201
  %936 = fadd fast float %933, %202
  %937 = fsub fast float 1.000000e+00, %729
  %938 = fmul fast float %721, %393
  %939 = fmul fast float %938, %937
  %940 = fmul fast float %939, %934
  %941 = fmul fast float %722, %393
  %942 = fmul fast float %941, %937
  %943 = fmul fast float %942, %935
  %944 = fmul fast float %723, %393
  %945 = fmul fast float %944, %937
  %946 = fmul fast float %945, %936
  %947 = fadd fast float %940, %394
  %948 = fadd fast float %943, %395
  %949 = fadd fast float %946, %396
  %950 = fdiv fast float %705, %597
  %951 = fadd fast float %597, %400
  %952 = fmul fast float %400, %400
  %953 = fmul fast float %951, %951
  %954 = fsub fast float %952, %953
  %955 = fmul fast float %954, -5.000000e-01
  %956 = fmul fast float %955, %950
  %957 = fadd fast float %956, %392
  %958 = fadd fast float %705, %402
  %959 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.i32 %959, 0
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %988, label %962, !dx.controlflow.hints !46

; <label>:962                                     ; preds = %923
  %963 = icmp ne i32 %407, 0
  %964 = zext i1 %963 to i32
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 2
  %967 = extractvalue %dx.types.CBufRet.f32 %965, 0
  %968 = fsub fast float %951, %967
  %969 = fmul fast float %968, %966
  %970 = call float @dx.op.unary.f32(i32 7, float %969)  ; Saturate(value)
  %971 = fadd fast float %970, -5.000000e-01
  %972 = fmul fast float %971, 2.000000e+00
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 2
  %975 = fcmp fast olt float %972, %974
  br i1 %975, label %976, label %988, !dx.controlflow.hints !47

; <label>:976                                     ; preds = %962
  %977 = fmul fast float %972, %972
  %978 = fmul fast float %937, %393
  %979 = fmul fast float %972, %978
  %980 = fmul fast float %977, %978
  %981 = fmul fast float %979, %977
  %982 = fmul fast float %977, %977
  %983 = fmul fast float %982, %978
  %984 = fadd fast float %979, %403
  %985 = fadd fast float %980, %404
  %986 = fadd fast float %981, %405
  %987 = fadd fast float %983, %406
  br label %988

; <label>:988                                     ; preds = %976, %962, %923
  %989 = phi float [ %403, %923 ], [ %984, %976 ], [ %403, %962 ]
  %990 = phi float [ %404, %923 ], [ %985, %976 ], [ %404, %962 ]
  %991 = phi float [ %405, %923 ], [ %986, %976 ], [ %405, %962 ]
  %992 = phi float [ %406, %923 ], [ %987, %976 ], [ %406, %962 ]
  %993 = phi i32 [ %407, %923 ], [ 1, %976 ], [ %964, %962 ]
  %994 = fmul fast float %729, %393
  br label %995

; <label>:995                                     ; preds = %988, %724
  %996 = phi float [ %725, %724 ], [ %951, %988 ]
  %997 = phi float [ %392, %724 ], [ %957, %988 ]
  %998 = phi float [ %393, %724 ], [ %994, %988 ]
  %999 = phi float [ %394, %724 ], [ %947, %988 ]
  %1000 = phi float [ %395, %724 ], [ %948, %988 ]
  %1001 = phi float [ %396, %724 ], [ %949, %988 ]
  %1002 = phi float [ %402, %724 ], [ %958, %988 ]
  %1003 = phi float [ %403, %724 ], [ %989, %988 ]
  %1004 = phi float [ %404, %724 ], [ %990, %988 ]
  %1005 = phi float [ %405, %724 ], [ %991, %988 ]
  %1006 = phi float [ %406, %724 ], [ %992, %988 ]
  %1007 = phi i32 [ %407, %724 ], [ %993, %988 ]
  %1008 = fmul fast float %597, %276
  %1009 = fmul fast float %597, %277
  %1010 = fmul fast float %597, %278
  %1011 = fadd fast float %1008, %397
  %1012 = fadd fast float %1009, %398
  %1013 = fadd fast float %1010, %399
  %1014 = fcmp fast olt float %996, %368
  %1015 = extractvalue %dx.types.CBufRet.f32 %710, 2
  %1016 = fcmp fast olt float %1015, %998
  %1017 = and i1 %1014, %1016
  br i1 %1017, label %391, label %1018

; <label>:1018                                    ; preds = %995
  br label %1019

; <label>:1019                                    ; preds = %1018, %364
  %1020 = phi float [ 0.000000e+00, %364 ], [ %997, %1018 ]
  %1021 = phi float [ 1.000000e+00, %364 ], [ %998, %1018 ]
  %1022 = phi float [ 0.000000e+00, %364 ], [ %999, %1018 ]
  %1023 = phi float [ 0.000000e+00, %364 ], [ %1000, %1018 ]
  %1024 = phi float [ 0.000000e+00, %364 ], [ %1001, %1018 ]
  %1025 = phi float [ 0.000000e+00, %364 ], [ %1002, %1018 ]
  %1026 = phi float [ 0.000000e+00, %364 ], [ %1003, %1018 ]
  %1027 = phi float [ 0.000000e+00, %364 ], [ %1004, %1018 ]
  %1028 = phi float [ 0.000000e+00, %364 ], [ %1005, %1018 ]
  %1029 = phi float [ 0.000000e+00, %364 ], [ %1006, %1018 ]
  %1030 = phi i32 [ 0, %364 ], [ %1007, %1018 ]
  %1031 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.i32 %1031, 0
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1075, label %1034, !dx.controlflow.hints !48

; <label>:1034                                    ; preds = %1019
  %1035 = icmp eq i32 %1030, 0
  br i1 %1035, label %1074, label %1036, !dx.controlflow.hints !49

; <label>:1036                                    ; preds = %1034
  %1037 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.i32 %1037, 2
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1046, label %1040, !dx.controlflow.hints !50

; <label>:1040                                    ; preds = %1036
  %1041 = fsub fast float 1.000000e+00, %1021
  %1042 = fdiv fast float %1026, %1041
  %1043 = fdiv fast float %1027, %1041
  %1044 = fdiv fast float %1028, %1041
  %1045 = fdiv fast float %1029, %1041
  br label %1051

; <label>:1046                                    ; preds = %1036
  %1047 = fadd fast float %1026, %1021
  %1048 = fadd fast float %1027, %1021
  %1049 = fadd fast float %1028, %1021
  %1050 = fadd fast float %1029, %1021
  br label %1051

; <label>:1051                                    ; preds = %1046, %1040
  %1052 = phi float [ %1042, %1040 ], [ %1047, %1046 ]
  %1053 = phi float [ %1043, %1040 ], [ %1048, %1046 ]
  %1054 = phi float [ %1044, %1040 ], [ %1049, %1046 ]
  %1055 = phi float [ %1045, %1040 ], [ %1050, %1046 ]
  %1056 = call float @dx.op.binary.f32(i32 35, float %1052, float -1.000000e+00)  ; FMax(a,b)
  %1057 = call float @dx.op.binary.f32(i32 35, float %1053, float -1.000000e+00)  ; FMax(a,b)
  %1058 = call float @dx.op.binary.f32(i32 35, float %1054, float -1.000000e+00)  ; FMax(a,b)
  %1059 = call float @dx.op.binary.f32(i32 35, float %1055, float -1.000000e+00)  ; FMax(a,b)
  %1060 = call float @dx.op.binary.f32(i32 36, float %1056, float 1.000000e+00)  ; FMin(a,b)
  %1061 = call float @dx.op.binary.f32(i32 36, float %1057, float 1.000000e+00)  ; FMin(a,b)
  %1062 = call float @dx.op.binary.f32(i32 36, float %1058, float 1.000000e+00)  ; FMin(a,b)
  %1063 = call float @dx.op.binary.f32(i32 36, float %1059, float 1.000000e+00)  ; FMin(a,b)
  %1064 = fmul fast float %1060, 1.500000e+00
  %1065 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1062, float %1064)  ; FMad(a,b,c)
  %1066 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1061, float 0.000000e+00)  ; FMad(a,b,c)
  %1067 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1063, float %1066)  ; FMad(a,b,c)
  %1068 = fmul fast float %1060, 0x3FEBB67AE0000000
  %1069 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1062, float %1068)  ; FMad(a,b,c)
  %1070 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1061, float 0.000000e+00)  ; FMad(a,b,c)
  %1071 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1063, float %1070)  ; FMad(a,b,c)
  %1072 = fadd fast float %1065, 5.000000e-01
  %1073 = fadd fast float %1069, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %15, i32 %16, i32 0, float %1072, float %1067, float %1073, float %1071, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1075

; <label>:1074                                    ; preds = %1034
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %15, i32 %16, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1075

; <label>:1075                                    ; preds = %1074, %1051, %1019
  %1076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1077 = extractvalue %dx.types.CBufRet.f32 %1076, 2
  %1078 = fsub fast float %1021, %1077
  %1079 = fdiv fast float %1078, %1077
  %1080 = call float @dx.op.unary.f32(i32 7, float %1079)  ; Saturate(value)
  %1081 = fmul fast float %1080, 2.000000e+00
  %1082 = fsub fast float 3.000000e+00, %1081
  %1083 = fmul fast float %1080, %1080
  %1084 = fmul fast float %1083, %1021
  %1085 = fmul fast float %1084, %1082
  %1086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1087 = extractvalue %dx.types.CBufRet.f32 %1086, 0
  %1088 = extractvalue %dx.types.CBufRet.f32 %1086, 1
  %1089 = extractvalue %dx.types.CBufRet.f32 %1086, 2
  %1090 = call float @dx.op.dot3.f32(i32 55, float %276, float %277, float %278, float %1087, float %1088, float %1089)  ; Dot3(ax,ay,az,bx,by,bz)
  %1091 = fmul fast float %1090, %1020
  %1092 = fcmp fast ogt float %1025, 0.000000e+00
  %1093 = fdiv fast float 1.000000e+00, %1025
  %1094 = fmul fast float %1091, %1093
  %1095 = select i1 %1092, float %1094, float %287
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 0
  %1098 = extractvalue %dx.types.CBufRet.f32 %1096, 1
  %1099 = extractvalue %dx.types.CBufRet.f32 %1096, 2
  %1100 = fmul fast float %1097, %240
  %1101 = fmul fast float %1098, %240
  %1102 = fmul fast float %1099, %240
  %1103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1104 = extractvalue %dx.types.CBufRet.f32 %1103, 0
  %1105 = extractvalue %dx.types.CBufRet.f32 %1103, 1
  %1106 = extractvalue %dx.types.CBufRet.f32 %1103, 2
  %1107 = fmul fast float %1104, %241
  %1108 = fmul fast float %1105, %241
  %1109 = fmul fast float %1106, %241
  %1110 = fadd fast float %1107, %1100
  %1111 = fadd fast float %1108, %1101
  %1112 = fadd fast float %1109, %1102
  %1113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.f32 %1113, 0
  %1115 = extractvalue %dx.types.CBufRet.f32 %1113, 1
  %1116 = extractvalue %dx.types.CBufRet.f32 %1113, 2
  %1117 = fadd fast float %1110, %1114
  %1118 = fadd fast float %1111, %1115
  %1119 = fadd fast float %1112, %1116
  %1120 = fmul fast float %1117, %1095
  %1121 = fmul fast float %1118, %1095
  %1122 = fmul fast float %1119, %1095
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.CBufRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.CBufRet.f32 %1123, 2
  %1127 = extractvalue %dx.types.CBufRet.f32 %1123, 3
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.CBufRet.f32 %1128, 1
  %1131 = extractvalue %dx.types.CBufRet.f32 %1128, 2
  %1132 = extractvalue %dx.types.CBufRet.f32 %1128, 3
  %1133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.CBufRet.f32 %1133, 1
  %1136 = extractvalue %dx.types.CBufRet.f32 %1133, 2
  %1137 = extractvalue %dx.types.CBufRet.f32 %1133, 3
  %1138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.CBufRet.f32 %1138, 1
  %1141 = extractvalue %dx.types.CBufRet.f32 %1138, 2
  %1142 = extractvalue %dx.types.CBufRet.f32 %1138, 3
  %1143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1144 = extractvalue %dx.types.CBufRet.f32 %1143, 3
  %1145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1146 = extractvalue %dx.types.CBufRet.f32 %1145, 3
  %1147 = extractvalue %dx.types.CBufRet.f32 %1145, 0
  %1148 = extractvalue %dx.types.CBufRet.f32 %1145, 1
  %1149 = extractvalue %dx.types.CBufRet.f32 %1145, 2
  %1150 = fcmp fast olt float %1149, -5.000000e-01
  %1151 = call float @dx.op.dot3.f32(i32 55, float %1120, float %1121, float %1122, float %1120, float %1121, float %1122)  ; Dot3(ax,ay,az,bx,by,bz)
  %1152 = call float @dx.op.unary.f32(i32 25, float %1151)  ; Rsqrt(value)
  %1153 = fmul fast float %1152, %1151
  %1154 = fmul fast float %1152, %1120
  %1155 = fmul fast float %1152, %1121
  %1156 = fmul fast float %1152, %1122
  %1157 = fadd fast float %1153, %1127
  %1158 = call float @dx.op.dot3.f32(i32 55, float %1154, float %1155, float %1156, float %1124, float %1125, float %1126)  ; Dot3(ax,ay,az,bx,by,bz)
  %1159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1160 = extractvalue %dx.types.CBufRet.i32 %1159, 1
  %1161 = and i32 %1160, 1
  %1162 = icmp ne i32 %1161, 0
  %1163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1164 = extractvalue %dx.types.CBufRet.f32 %1163, 2
  %1165 = fcmp fast ogt float %1164, 0.000000e+00
  %1166 = and i1 %1162, %1165
  br i1 %1166, label %1167, label %1573, !dx.controlflow.hints !51

; <label>:1167                                    ; preds = %1075
  %1168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.f32 %1168, 3
  %1170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1171 = extractvalue %dx.types.CBufRet.f32 %1170, 2
  %1172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1173 = extractvalue %dx.types.CBufRet.f32 %1172, 2
  %1174 = fsub fast float %1171, %1173
  %1175 = and i32 %1160, 2
  %1176 = extractvalue %dx.types.CBufRet.i32 %1159, 0
  %1177 = call i32 @dx.op.binary.i32(i32 40, i32 %1176, i32 3)  ; UMin(a,b)
  %1178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1179 = extractvalue %dx.types.CBufRet.f32 %1178, 0
  %1180 = extractvalue %dx.types.CBufRet.f32 %1178, 1
  %1181 = extractvalue %dx.types.CBufRet.f32 %1172, 0
  %1182 = extractvalue %dx.types.CBufRet.f32 %1172, 1
  %1183 = fsub fast float %1179, %1181
  %1184 = fsub fast float %1180, %1182
  %1185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.f32 %1185, 0
  %1187 = fcmp fast ogt float %1186, 0.000000e+00
  %1188 = fsub fast float -0.000000e+00, %1183
  %1189 = fsub fast float -0.000000e+00, %1184
  %1190 = call float @dx.op.dot2.f32(i32 54, float %1154, float %1155, float %1154, float %1155)  ; Dot2(ax,ay,bx,by)
  %1191 = call float @dx.op.dot2.f32(i32 54, float %1154, float %1155, float %1188, float %1189)  ; Dot2(ax,ay,bx,by)
  %1192 = fmul fast float %1191, 2.000000e+00
  %1193 = call float @dx.op.dot2.f32(i32 54, float %1188, float %1189, float %1188, float %1189)  ; Dot2(ax,ay,bx,by)
  %1194 = fmul fast float %1186, %1186
  %1195 = fsub fast float %1193, %1194
  %1196 = fmul fast float %1192, %1192
  %1197 = fmul fast float %1190, 4.000000e+00
  %1198 = fmul fast float %1197, %1195
  %1199 = fsub fast float %1196, %1198
  %1200 = fcmp fast ogt float %1199, 0.000000e+00
  br i1 %1200, label %1201, label %1216, !dx.controlflow.hints !52

; <label>:1201                                    ; preds = %1167
  %1202 = fcmp fast ogt float %1192, 0.000000e+00
  %1203 = call float @dx.op.unary.f32(i32 24, float %1199)  ; Sqrt(value)
  %1204 = fsub fast float -0.000000e+00, %1203
  %1205 = select i1 %1202, float %1203, float %1204
  %1206 = fadd fast float %1205, %1192
  %1207 = fmul float %1206, -5.000000e-01
  %1208 = fdiv fast float %1207, %1190
  %1209 = call float @dx.op.binary.f32(i32 35, float %1208, float 0.000000e+00)  ; FMax(a,b)
  %1210 = call float @dx.op.binary.f32(i32 36, float %1153, float %1209)  ; FMin(a,b)
  %1211 = fdiv fast float %1195, %1207
  %1212 = call float @dx.op.binary.f32(i32 35, float %1211, float 0.000000e+00)  ; FMax(a,b)
  %1213 = call float @dx.op.binary.f32(i32 36, float %1153, float %1212)  ; FMin(a,b)
  %1214 = call float @dx.op.binary.f32(i32 36, float %1210, float %1213)  ; FMin(a,b)
  %1215 = call float @dx.op.binary.f32(i32 35, float %1210, float %1213)  ; FMax(a,b)
  br label %1216

; <label>:1216                                    ; preds = %1201, %1167
  %1217 = phi float [ %1215, %1201 ], [ -1.000000e+00, %1167 ]
  %1218 = phi float [ %1214, %1201 ], [ -1.000000e+00, %1167 ]
  %1219 = phi i1 [ true, %1201 ], [ false, %1167 ]
  %1220 = and i1 %1187, %1219
  br i1 %1220, label %1221, label %1223, !dx.controlflow.hints !53

; <label>:1221                                    ; preds = %1216
  %1222 = fcmp fast oeq float %1218, %1217
  br i1 %1222, label %1526, label %1224, !dx.controlflow.hints !54

; <label>:1223                                    ; preds = %1216
  br i1 %1187, label %1526, label %1224, !dx.controlflow.hints !55

; <label>:1224                                    ; preds = %1223, %1221
  %1225 = phi float [ %1153, %1223 ], [ %1217, %1221 ]
  %1226 = phi float [ 0.000000e+00, %1223 ], [ %1218, %1221 ]
  %1227 = icmp ne i32 %1175, 0
  %1228 = fmul fast float %1225, %1156
  %1229 = fadd fast float %1228, %1169
  %1230 = fmul fast float %1229, %1225
  %1231 = select i1 %1227, float 0.000000e+00, float %1230
  %1232 = fcmp fast oeq float %1156, 0.000000e+00
  %1233 = fdiv fast float %1174, %1156
  %1234 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1233)  ; FMax(a,b)
  %1235 = select i1 %1232, float %1225, float %1234
  %1236 = call float @dx.op.binary.f32(i32 36, float %1225, float %1235)  ; FMin(a,b)
  %1237 = fcmp fast ogt float %1156, 0.000000e+00
  %1238 = fcmp fast olt float %1174, 0.000000e+00
  br i1 %1237, label %1239, label %1296, !dx.controlflow.hints !56

; <label>:1239                                    ; preds = %1224
  %1240 = icmp eq i32 %1175, 0
  br i1 %1238, label %1241, label %1285, !dx.controlflow.hints !57

; <label>:1241                                    ; preds = %1239
  %1242 = select i1 %1240, float %1225, float 0.000000e+00
  %1243 = fsub fast float -0.000000e+00, %1242
  %1244 = call float @dx.op.unary.f32(i32 6, float %1243)  ; FAbs(value)
  %1245 = fmul fast float %1242, %1156
  %1246 = fadd fast float %1245, %1169
  %1247 = fmul fast float %1244, %1246
  %1248 = fsub fast float %1231, %1247
  %1249 = fsub fast float %1225, %1244
  %1250 = select i1 %1240, float %1249, float 0.000000e+00
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.CBufRet.f32 %1251, 1
  %1254 = extractvalue %dx.types.CBufRet.f32 %1251, 2
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 0
  %1257 = extractvalue %dx.types.CBufRet.f32 %1255, 1
  %1258 = extractvalue %dx.types.CBufRet.f32 %1255, 2
  %1259 = extractvalue %dx.types.CBufRet.f32 %1255, 3
  %1260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1261 = extractvalue %dx.types.CBufRet.f32 %1260, 3
  %1262 = call float @dx.op.binary.f32(i32 36, float %1248, float %1261)  ; FMin(a,b)
  %1263 = fmul fast float %1259, %1250
  %1264 = call float @dx.op.unary.f32(i32 7, float %1263)  ; Saturate(value)
  %1265 = fsub fast float %1256, %1252
  %1266 = fsub fast float %1257, %1253
  %1267 = fsub fast float %1258, %1254
  %1268 = fmul fast float %1264, %1265
  %1269 = fmul fast float %1264, %1266
  %1270 = fmul fast float %1264, %1267
  %1271 = fadd fast float %1268, %1252
  %1272 = fadd fast float %1269, %1253
  %1273 = fadd fast float %1270, %1254
  %1274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1275 = extractvalue %dx.types.CBufRet.f32 %1274, 0
  %1276 = extractvalue %dx.types.CBufRet.f32 %1274, 1
  %1277 = fadd fast float %1276, %1275
  %1278 = call float @dx.op.unary.f32(i32 7, float %1277)  ; Saturate(value)
  %1279 = extractvalue %dx.types.CBufRet.f32 %1274, 2
  %1280 = extractvalue %dx.types.CBufRet.f32 %1274, 3
  %1281 = fadd fast float %1280, %1279
  %1282 = call float @dx.op.unary.f32(i32 7, float %1281)  ; Saturate(value)
  %1283 = fmul fast float %1278, %1262
  %1284 = fmul fast float %1283, %1282
  br label %1526

; <label>:1285                                    ; preds = %1239
  br i1 %1240, label %1286, label %1307, !dx.controlflow.hints !58

; <label>:1286                                    ; preds = %1285
  %1287 = call float @dx.op.binary.f32(i32 36, float %1236, float %1226)  ; FMin(a,b)
  %1288 = fsub fast float %1236, %1287
  %1289 = fsub fast float %1288, %1225
  %1290 = call float @dx.op.unary.f32(i32 6, float %1289)  ; FAbs(value)
  %1291 = fadd fast float %1288, %1225
  %1292 = fmul fast float %1291, %1156
  %1293 = fadd fast float %1292, %1169
  %1294 = fmul fast float %1293, %1290
  %1295 = fsub fast float %1231, %1294
  br label %1307

; <label>:1296                                    ; preds = %1224
  br i1 %1238, label %1297, label %1307, !dx.controlflow.hints !59

; <label>:1297                                    ; preds = %1296
  %1298 = call float @dx.op.binary.f32(i32 35, float %1226, float %1236)  ; FMax(a,b)
  %1299 = icmp eq i32 %1175, 0
  %1300 = select i1 %1299, float %1236, float 0.000000e+00
  %1301 = fsub fast float -0.000000e+00, %1300
  %1302 = call float @dx.op.unary.f32(i32 6, float %1301)  ; FAbs(value)
  %1303 = fmul fast float %1300, %1156
  %1304 = fadd fast float %1303, %1169
  %1305 = fmul fast float %1302, %1304
  %1306 = fsub fast float %1231, %1305
  br label %1307

; <label>:1307                                    ; preds = %1297, %1296, %1286, %1285
  %1308 = phi float [ %1226, %1285 ], [ %1226, %1286 ], [ %1298, %1297 ], [ %1226, %1296 ]
  %1309 = phi float [ 0.000000e+00, %1285 ], [ %1290, %1286 ], [ %1302, %1297 ], [ 0.000000e+00, %1296 ]
  %1310 = phi float [ %1231, %1285 ], [ %1295, %1286 ], [ %1306, %1297 ], [ %1231, %1296 ]
  %1311 = phi float [ %1236, %1285 ], [ %1236, %1286 ], [ %1225, %1297 ], [ %1225, %1296 ]
  %1312 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 0
  store float -1.000000e+00, float* %1312, align 4, !tbaa !60, !noalias !64
  %1313 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 1
  store float -1.000000e+00, float* %1313, align 4, !tbaa !60, !noalias !64
  %1314 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 2
  store float -1.000000e+00, float* %1314, align 4, !tbaa !60, !noalias !64
  %1315 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 0
  store float -1.000000e+00, float* %1315, align 4, !tbaa !60, !noalias !64
  %1316 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 1
  store float -1.000000e+00, float* %1316, align 4, !tbaa !60, !noalias !64
  %1317 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 2
  store float -1.000000e+00, float* %1317, align 4, !tbaa !60, !noalias !64
  %1318 = icmp sgt i32 %1177, 0
  br i1 %1318, label %1319, label %1380

; <label>:1319                                    ; preds = %1307
  br label %1320

; <label>:1320                                    ; preds = %1369, %1319
  %1321 = phi i32 [ %1370, %1369 ], [ 0, %1319 ]
  %1322 = phi i32 [ %1371, %1369 ], [ 0, %1319 ]
  %1323 = add nuw i32 %1322, 171
  %1324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 %1323)  ; CBufferLoadLegacy(handle,regIndex)
  %1325 = extractvalue %dx.types.CBufRet.f32 %1324, 0
  %1326 = extractvalue %dx.types.CBufRet.f32 %1324, 1
  %1327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1328 = extractvalue %dx.types.CBufRet.f32 %1327, 0
  %1329 = extractvalue %dx.types.CBufRet.f32 %1327, 1
  %1330 = fsub fast float %1325, %1328
  %1331 = fsub fast float %1326, %1329
  %1332 = extractvalue %dx.types.CBufRet.f32 %1324, 2
  %1333 = fsub fast float -0.000000e+00, %1330
  %1334 = fsub fast float -0.000000e+00, %1331
  %1335 = call float @dx.op.dot2.f32(i32 54, float %1154, float %1155, float %1333, float %1334)  ; Dot2(ax,ay,bx,by)
  %1336 = fmul fast float %1335, 2.000000e+00
  %1337 = call float @dx.op.dot2.f32(i32 54, float %1333, float %1334, float %1333, float %1334)  ; Dot2(ax,ay,bx,by)
  %1338 = fmul fast float %1332, %1332
  %1339 = fsub fast float %1337, %1338
  %1340 = fmul fast float %1336, %1336
  %1341 = fmul fast float %1197, %1339
  %1342 = fsub fast float %1340, %1341
  %1343 = fcmp fast ogt float %1342, 0.000000e+00
  br i1 %1343, label %1344, label %1359, !dx.controlflow.hints !52

; <label>:1344                                    ; preds = %1320
  %1345 = fcmp fast ogt float %1336, 0.000000e+00
  %1346 = call float @dx.op.unary.f32(i32 24, float %1342)  ; Sqrt(value)
  %1347 = fsub fast float -0.000000e+00, %1346
  %1348 = select i1 %1345, float %1346, float %1347
  %1349 = fadd fast float %1348, %1336
  %1350 = fmul float %1349, -5.000000e-01
  %1351 = fdiv fast float %1350, %1190
  %1352 = call float @dx.op.binary.f32(i32 35, float %1351, float 0.000000e+00)  ; FMax(a,b)
  %1353 = call float @dx.op.binary.f32(i32 36, float %1225, float %1352)  ; FMin(a,b)
  %1354 = fdiv fast float %1339, %1350
  %1355 = call float @dx.op.binary.f32(i32 35, float %1354, float 0.000000e+00)  ; FMax(a,b)
  %1356 = call float @dx.op.binary.f32(i32 36, float %1225, float %1355)  ; FMin(a,b)
  %1357 = call float @dx.op.binary.f32(i32 36, float %1353, float %1356)  ; FMin(a,b)
  %1358 = call float @dx.op.binary.f32(i32 35, float %1353, float %1356)  ; FMax(a,b)
  br label %1359

; <label>:1359                                    ; preds = %1344, %1320
  %1360 = phi float [ %1358, %1344 ], [ -1.000000e+00, %1320 ]
  %1361 = phi float [ %1357, %1344 ], [ -1.000000e+00, %1320 ]
  %1362 = phi i1 [ true, %1344 ], [ false, %1320 ]
  br i1 %1362, label %1363, label %1369, !dx.controlflow.hints !75

; <label>:1363                                    ; preds = %1359
  %1364 = call float @dx.op.binary.f32(i32 35, float %1308, float %1361)  ; FMax(a,b)
  %1365 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 %1322
  store float %1364, float* %1365, align 4, !tbaa !60, !noalias !64
  %1366 = call float @dx.op.binary.f32(i32 35, float %1308, float %1360)  ; FMax(a,b)
  %1367 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %1322
  store float %1366, float* %1367, align 4, !tbaa !60, !noalias !64
  %1368 = add nsw i32 %1321, 1
  br label %1369

; <label>:1369                                    ; preds = %1363, %1359
  %1370 = phi i32 [ %1368, %1363 ], [ %1321, %1359 ]
  %1371 = add nuw nsw i32 %1322, 1
  %1372 = icmp eq i32 %1371, %1177
  br i1 %1372, label %1373, label %1320

; <label>:1373                                    ; preds = %1369
  %1374 = load float, float* %1314, align 4, !tbaa !60, !alias.scope !76, !noalias !79
  %1375 = load float, float* %1313, align 4, !tbaa !60, !alias.scope !82, !noalias !83
  %1376 = load float, float* %1312, align 4, !tbaa !60, !alias.scope !84, !noalias !85
  %1377 = load float, float* %1317, align 4, !tbaa !60, !alias.scope !86, !noalias !89
  %1378 = load float, float* %1316, align 4, !tbaa !60, !alias.scope !92, !noalias !93
  %1379 = load float, float* %1315, align 4, !tbaa !60, !alias.scope !94, !noalias !95
  br label %1380

; <label>:1380                                    ; preds = %1373, %1307
  %1381 = phi float [ -1.000000e+00, %1307 ], [ %1379, %1373 ]
  %1382 = phi float [ -1.000000e+00, %1307 ], [ %1378, %1373 ]
  %1383 = phi float [ -1.000000e+00, %1307 ], [ %1377, %1373 ]
  %1384 = phi float [ -1.000000e+00, %1307 ], [ %1376, %1373 ]
  %1385 = phi float [ -1.000000e+00, %1307 ], [ %1375, %1373 ]
  %1386 = phi float [ -1.000000e+00, %1307 ], [ %1374, %1373 ]
  %1387 = phi i32 [ 0, %1307 ], [ %1370, %1373 ]
  %1388 = call float @dx.op.binary.f32(i32 36, float %1385, float %1386)  ; FMin(a,b)
  %1389 = call float @dx.op.binary.f32(i32 36, float %1384, float %1388)  ; FMin(a,b)
  %1390 = call float @dx.op.binary.f32(i32 35, float %1384, float %1385)  ; FMax(a,b)
  %1391 = call float @dx.op.binary.f32(i32 36, float %1390, float %1386)  ; FMin(a,b)
  %1392 = call float @dx.op.binary.f32(i32 36, float %1384, float %1385)  ; FMin(a,b)
  %1393 = call float @dx.op.binary.f32(i32 35, float %1392, float %1391)  ; FMax(a,b)
  %1394 = call float @dx.op.binary.f32(i32 35, float %1385, float %1386)  ; FMax(a,b)
  %1395 = call float @dx.op.binary.f32(i32 35, float %1384, float %1394)  ; FMax(a,b)
  store float %1389, float* %1312, align 4, !tbaa !60, !alias.scope !84, !noalias !85
  store float %1393, float* %1313, align 4, !tbaa !60, !alias.scope !82, !noalias !83
  store float %1395, float* %1314, align 4, !tbaa !60, !alias.scope !76, !noalias !79
  %1396 = call float @dx.op.binary.f32(i32 36, float %1382, float %1383)  ; FMin(a,b)
  %1397 = call float @dx.op.binary.f32(i32 36, float %1381, float %1396)  ; FMin(a,b)
  %1398 = call float @dx.op.binary.f32(i32 35, float %1381, float %1382)  ; FMax(a,b)
  %1399 = call float @dx.op.binary.f32(i32 36, float %1398, float %1383)  ; FMin(a,b)
  %1400 = call float @dx.op.binary.f32(i32 36, float %1381, float %1382)  ; FMin(a,b)
  %1401 = call float @dx.op.binary.f32(i32 35, float %1400, float %1399)  ; FMax(a,b)
  %1402 = call float @dx.op.binary.f32(i32 35, float %1382, float %1383)  ; FMax(a,b)
  %1403 = call float @dx.op.binary.f32(i32 35, float %1381, float %1402)  ; FMax(a,b)
  store float %1397, float* %1315, align 4, !tbaa !60, !alias.scope !94, !noalias !95
  store float %1401, float* %1316, align 4, !tbaa !60, !alias.scope !92, !noalias !93
  store float %1403, float* %1317, align 4, !tbaa !60, !alias.scope !86, !noalias !89
  %1404 = sub nsw i32 3, %1387
  %1405 = icmp sgt i32 %1404, 2
  br i1 %1405, label %1406, label %1444, !dx.controlflow.hints !96

; <label>:1406                                    ; preds = %1380
  %1407 = icmp eq i32 %1175, 0
  %1408 = fsub fast float %1225, %1309
  %1409 = select i1 %1407, float %1408, float %1309
  %1410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1411 = extractvalue %dx.types.CBufRet.f32 %1410, 0
  %1412 = extractvalue %dx.types.CBufRet.f32 %1410, 1
  %1413 = extractvalue %dx.types.CBufRet.f32 %1410, 2
  %1414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1415 = extractvalue %dx.types.CBufRet.f32 %1414, 0
  %1416 = extractvalue %dx.types.CBufRet.f32 %1414, 1
  %1417 = extractvalue %dx.types.CBufRet.f32 %1414, 2
  %1418 = extractvalue %dx.types.CBufRet.f32 %1414, 3
  %1419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1420 = extractvalue %dx.types.CBufRet.f32 %1419, 3
  %1421 = call float @dx.op.binary.f32(i32 36, float %1310, float %1420)  ; FMin(a,b)
  %1422 = fmul fast float %1418, %1409
  %1423 = call float @dx.op.unary.f32(i32 7, float %1422)  ; Saturate(value)
  %1424 = fsub fast float %1415, %1411
  %1425 = fsub fast float %1416, %1412
  %1426 = fsub fast float %1417, %1413
  %1427 = fmul fast float %1423, %1424
  %1428 = fmul fast float %1423, %1425
  %1429 = fmul fast float %1423, %1426
  %1430 = fadd fast float %1427, %1411
  %1431 = fadd fast float %1428, %1412
  %1432 = fadd fast float %1429, %1413
  %1433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1434 = extractvalue %dx.types.CBufRet.f32 %1433, 0
  %1435 = extractvalue %dx.types.CBufRet.f32 %1433, 1
  %1436 = fadd fast float %1435, %1434
  %1437 = call float @dx.op.unary.f32(i32 7, float %1436)  ; Saturate(value)
  %1438 = extractvalue %dx.types.CBufRet.f32 %1433, 2
  %1439 = extractvalue %dx.types.CBufRet.f32 %1433, 3
  %1440 = fadd fast float %1439, %1438
  %1441 = call float @dx.op.unary.f32(i32 7, float %1440)  ; Saturate(value)
  %1442 = fmul fast float %1437, %1421
  %1443 = fmul fast float %1442, %1441
  br label %1526

; <label>:1444                                    ; preds = %1380
  %1445 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 %1404
  %1446 = load float, float* %1445, align 4, !tbaa !60, !noalias !64
  %1447 = fcmp fast olt float %1446, %1311
  %1448 = icmp sgt i32 %1387, 0
  %1449 = and i1 %1448, %1447
  br i1 %1449, label %1450, label %1487

; <label>:1450                                    ; preds = %1444
  br label %1451

; <label>:1451                                    ; preds = %1480, %1450
  %1452 = phi float [ %1481, %1480 ], [ %1309, %1450 ]
  %1453 = phi float [ %1482, %1480 ], [ %1310, %1450 ]
  %1454 = phi float [ %1462, %1480 ], [ %1446, %1450 ]
  %1455 = phi i32 [ %1459, %1480 ], [ %1404, %1450 ]
  %1456 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %1455
  %1457 = load float, float* %1456, align 4, !tbaa !60, !noalias !64
  %1458 = icmp slt i32 %1455, 2
  %1459 = add nsw i32 %1455, 1
  %1460 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 %1459
  %1461 = load float, float* %1460, align 4, !tbaa !60, !noalias !64
  %1462 = select i1 %1458, float %1461, float %1225
  %1463 = call float @dx.op.binary.f32(i32 36, float %1462, float %1457)  ; FMin(a,b)
  %1464 = call float @dx.op.binary.f32(i32 36, float %1311, float %1463)  ; FMin(a,b)
  %1465 = icmp eq i32 %1175, 0
  %1466 = fadd fast float %1464, %1454
  %1467 = fmul fast float %1466, %1156
  %1468 = fadd fast float %1467, %1169
  br i1 %1465, label %1474, label %1469, !dx.controlflow.hints !97

; <label>:1469                                    ; preds = %1451
  %1470 = fsub fast float %1464, %1454
  %1471 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1470)  ; FMax(a,b)
  %1472 = fmul fast float %1471, %1468
  %1473 = fadd fast float %1472, %1453
  br label %1480

; <label>:1474                                    ; preds = %1451
  %1475 = fsub fast float %1454, %1464
  %1476 = call float @dx.op.unary.f32(i32 6, float %1475)  ; FAbs(value)
  %1477 = fadd fast float %1476, %1452
  %1478 = fmul fast float %1476, %1468
  %1479 = fsub fast float %1453, %1478
  br label %1480

; <label>:1480                                    ; preds = %1474, %1469
  %1481 = phi float [ %1471, %1469 ], [ %1477, %1474 ]
  %1482 = phi float [ %1473, %1469 ], [ %1479, %1474 ]
  %1483 = fcmp fast olt float %1462, %1311
  %1484 = icmp slt i32 %1459, 3
  %1485 = and i1 %1484, %1483
  br i1 %1485, label %1451, label %1486

; <label>:1486                                    ; preds = %1480
  br label %1487

; <label>:1487                                    ; preds = %1486, %1444
  %1488 = phi float [ %1309, %1444 ], [ %1481, %1486 ]
  %1489 = phi float [ %1310, %1444 ], [ %1482, %1486 ]
  %1490 = fsub fast float %1225, %1488
  %1491 = select i1 %1227, float %1488, float %1490
  %1492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1493 = extractvalue %dx.types.CBufRet.f32 %1492, 0
  %1494 = extractvalue %dx.types.CBufRet.f32 %1492, 1
  %1495 = extractvalue %dx.types.CBufRet.f32 %1492, 2
  %1496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1497 = extractvalue %dx.types.CBufRet.f32 %1496, 0
  %1498 = extractvalue %dx.types.CBufRet.f32 %1496, 1
  %1499 = extractvalue %dx.types.CBufRet.f32 %1496, 2
  %1500 = extractvalue %dx.types.CBufRet.f32 %1496, 3
  %1501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1502 = extractvalue %dx.types.CBufRet.f32 %1501, 3
  %1503 = call float @dx.op.binary.f32(i32 36, float %1489, float %1502)  ; FMin(a,b)
  %1504 = fmul fast float %1500, %1491
  %1505 = call float @dx.op.unary.f32(i32 7, float %1504)  ; Saturate(value)
  %1506 = fsub fast float %1497, %1493
  %1507 = fsub fast float %1498, %1494
  %1508 = fsub fast float %1499, %1495
  %1509 = fmul fast float %1505, %1506
  %1510 = fmul fast float %1505, %1507
  %1511 = fmul fast float %1505, %1508
  %1512 = fadd fast float %1509, %1493
  %1513 = fadd fast float %1510, %1494
  %1514 = fadd fast float %1511, %1495
  %1515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1516 = extractvalue %dx.types.CBufRet.f32 %1515, 0
  %1517 = extractvalue %dx.types.CBufRet.f32 %1515, 1
  %1518 = fadd fast float %1517, %1516
  %1519 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1520 = extractvalue %dx.types.CBufRet.f32 %1515, 2
  %1521 = extractvalue %dx.types.CBufRet.f32 %1515, 3
  %1522 = fadd fast float %1521, %1520
  %1523 = call float @dx.op.unary.f32(i32 7, float %1522)  ; Saturate(value)
  %1524 = fmul fast float %1519, %1503
  %1525 = fmul fast float %1524, %1523
  br label %1526

; <label>:1526                                    ; preds = %1487, %1406, %1241, %1223, %1221
  %1527 = phi float [ %1250, %1241 ], [ %1409, %1406 ], [ %1491, %1487 ], [ 0.000000e+00, %1221 ], [ 0.000000e+00, %1223 ]
  %1528 = phi float [ %1284, %1241 ], [ %1443, %1406 ], [ %1525, %1487 ], [ 0.000000e+00, %1221 ], [ 0.000000e+00, %1223 ]
  %1529 = phi float [ %1271, %1241 ], [ %1430, %1406 ], [ %1512, %1487 ], [ 0.000000e+00, %1221 ], [ 0.000000e+00, %1223 ]
  %1530 = phi float [ %1272, %1241 ], [ %1431, %1406 ], [ %1513, %1487 ], [ 0.000000e+00, %1221 ], [ 0.000000e+00, %1223 ]
  %1531 = phi float [ %1273, %1241 ], [ %1432, %1406 ], [ %1514, %1487 ], [ 0.000000e+00, %1221 ], [ 0.000000e+00, %1223 ]
  %1532 = fmul fast float %1164, %1528
  %1533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1534 = extractvalue %dx.types.CBufRet.f32 %1533, 2
  %1535 = fsub fast float %1171, %1534
  %1536 = fcmp fast olt float %1532, -2.000000e+01
  %1537 = call float @dx.op.unary.f32(i32 21, float %1532)  ; Exp(value)
  %1538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.f32 %1538, 2
  %1540 = extractvalue %dx.types.CBufRet.f32 %1538, 3
  %1541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1542 = extractvalue %dx.types.CBufRet.f32 %1541, 2
  %1543 = fmul fast float %1540, %1535
  %1544 = call float @dx.op.unary.f32(i32 7, float %1543)  ; Saturate(value)
  %1545 = fsub fast float 1.000000e+00, %1544
  %1546 = fmul fast float %1156, 5.000000e-01
  %1547 = fadd fast float %1546, 5.000000e-01
  %1548 = call float @dx.op.unary.f32(i32 7, float %1547)  ; Saturate(value)
  %1549 = fsub fast float 1.000000e+00, %1548
  %1550 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1545)  ; FMax(a,b)
  %1551 = fdiv fast float %1549, %1550
  %1552 = fsub fast float %1535, %1122
  %1553 = call float @dx.op.unary.f32(i32 6, float %1552)  ; FAbs(value)
  %1554 = fmul fast float %1553, %1539
  %1555 = call float @dx.op.unary.f32(i32 7, float %1551)  ; Saturate(value)
  %1556 = fsub fast float 1.000000e+00, %1554
  %1557 = fmul fast float %1556, %1555
  %1558 = fadd fast float %1557, %1554
  %1559 = fmul fast float %1542, %1535
  %1560 = call float @dx.op.unary.f32(i32 7, float %1559)  ; Saturate(value)
  %1561 = fsub fast float 1.000000e+00, %1558
  %1562 = fmul fast float %1561, %1560
  %1563 = fadd fast float %1562, %1558
  %1564 = call float @dx.op.unary.f32(i32 7, float %1563)  ; Saturate(value)
  %1565 = fadd fast float %1537, -1.000000e+00
  %1566 = select i1 %1536, float -1.000000e+00, float %1565
  %1567 = fmul fast float %1564, %1566
  %1568 = fadd fast float %1567, 1.000000e+00
  %1569 = fsub fast float -0.000000e+00, %1567
  %1570 = fmul fast float %1529, %1569
  %1571 = fmul fast float %1530, %1569
  %1572 = fmul fast float %1531, %1569
  br label %1573

; <label>:1573                                    ; preds = %1526, %1075
  %1574 = phi float [ %1527, %1526 ], [ 0.000000e+00, %1075 ]
  %1575 = phi float [ %1568, %1526 ], [ 1.000000e+00, %1075 ]
  %1576 = phi float [ %1570, %1526 ], [ 0.000000e+00, %1075 ]
  %1577 = phi float [ %1571, %1526 ], [ 0.000000e+00, %1075 ]
  %1578 = phi float [ %1572, %1526 ], [ 0.000000e+00, %1075 ]
  %1579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1580 = extractvalue %dx.types.CBufRet.f32 %1579, 1
  %1581 = fsub fast float 1.000000e+00, %1575
  %1582 = fmul fast float %1581, %1157
  %1583 = fmul fast float %1582, %1580
  %1584 = fsub fast float %1157, %1583
  br i1 %1150, label %1585, label %1614, !dx.controlflow.hints !98

; <label>:1585                                    ; preds = %1573
  %1586 = fmul fast float %1158, %1147
  %1587 = fadd fast float %1586, %1148
  %1588 = call float @dx.op.unary.f32(i32 7, float %1587)  ; Saturate(value)
  %1589 = fmul fast float %1129, %1584
  %1590 = fsub fast float -0.000000e+00, %1589
  %1591 = fmul fast float %1130, %1584
  %1592 = fsub fast float -0.000000e+00, %1591
  %1593 = call float @dx.op.unary.f32(i32 21, float %1590)  ; Exp(value)
  %1594 = call float @dx.op.unary.f32(i32 21, float %1592)  ; Exp(value)
  %1595 = call float @dx.op.binary.f32(i32 35, float %1137, float %1593)  ; FMax(a,b)
  %1596 = call float @dx.op.binary.f32(i32 35, float %1137, float %1594)  ; FMax(a,b)
  %1597 = fsub fast float %1596, %1595
  %1598 = fmul fast float %1597, %1588
  %1599 = fadd fast float %1598, %1595
  %1600 = call float @dx.op.unary.f32(i32 7, float %1599)  ; Saturate(value)
  %1601 = fsub fast float %1134, %1139
  %1602 = fsub fast float %1135, %1140
  %1603 = fsub fast float %1136, %1141
  %1604 = fmul fast float %1588, %1601
  %1605 = fmul fast float %1588, %1602
  %1606 = fmul fast float %1588, %1603
  %1607 = fadd fast float %1604, %1139
  %1608 = fadd fast float %1605, %1140
  %1609 = fadd fast float %1606, %1141
  %1610 = fsub fast float 1.000000e+00, %1600
  %1611 = fmul fast float %1610, %1607
  %1612 = fmul fast float %1610, %1608
  %1613 = fmul fast float %1610, %1609
  br label %1673

; <label>:1614                                    ; preds = %1573
  %1615 = fmul fast float %1584, %1146
  %1616 = call float @dx.op.unary.f32(i32 7, float %1615)  ; Saturate(value)
  %1617 = fsub fast float 2.000000e+00, %1616
  %1618 = fmul fast float %1616, 9.921875e-01
  %1619 = fmul fast float %1618, %1617
  %1620 = fadd fast float %1619, 3.906250e-03
  %1621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %12, float %1620, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1622 = extractvalue %dx.types.ResRet.f32 %1621, 0
  %1623 = fsub fast float %1616, %1622
  %1624 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1623)  ; FMax(a,b)
  %1625 = fmul fast float %1132, %1122
  %1626 = call float @dx.op.unary.f32(i32 6, float %1625)  ; FAbs(value)
  %1627 = fcmp fast ogt float %1626, 0x3EB0C6F7A0000000
  br i1 %1627, label %1628, label %1634, !dx.controlflow.hints !99

; <label>:1628                                    ; preds = %1614
  %1629 = fmul fast float %1625, 0xBFF7154760000000
  %1630 = call float @dx.op.unary.f32(i32 21, float %1629)  ; Exp(value)
  %1631 = fsub fast float 1.000000e+00, %1630
  %1632 = fdiv fast float %1631, %1625
  %1633 = fmul fast float %1632, %1142
  br label %1634

; <label>:1634                                    ; preds = %1628, %1614
  %1635 = phi float [ %1633, %1628 ], [ %1142, %1614 ]
  %1636 = fadd fast float %1635, %1144
  %1637 = fmul fast float %1636, %1624
  %1638 = fmul fast float %1129, %1637
  %1639 = fsub fast float -0.000000e+00, %1638
  %1640 = fmul fast float %1130, %1637
  %1641 = fsub fast float -0.000000e+00, %1640
  %1642 = fmul fast float %1131, %1637
  %1643 = fsub fast float -0.000000e+00, %1642
  %1644 = call float @dx.op.unary.f32(i32 21, float %1639)  ; Exp(value)
  %1645 = call float @dx.op.unary.f32(i32 21, float %1641)  ; Exp(value)
  %1646 = call float @dx.op.unary.f32(i32 21, float %1643)  ; Exp(value)
  %1647 = fmul fast float %1158, %1158
  %1648 = fadd fast float %1647, 1.000000e+00
  %1649 = fmul fast float %1648, 0x3FAE8EC8A0000000
  %1650 = fmul fast float %1649, %1139
  %1651 = fmul fast float %1649, %1140
  %1652 = fmul fast float %1649, %1141
  %1653 = fmul fast float %1158, %1137
  %1654 = fsub fast float 1.000000e+00, %1653
  %1655 = fmul fast float %1137, %1137
  %1656 = fsub fast float 1.000000e+00, %1655
  %1657 = fmul fast float %1656, 0x3FB45F3060000000
  %1658 = fmul fast float %1654, %1654
  %1659 = fdiv fast float 1.000000e+00, %1658
  %1660 = fmul fast float %1657, %1659
  %1661 = fmul fast float %1660, %1134
  %1662 = fmul fast float %1660, %1135
  %1663 = fmul fast float %1660, %1136
  %1664 = fadd fast float %1661, %1650
  %1665 = fadd fast float %1662, %1651
  %1666 = fadd fast float %1663, %1652
  %1667 = fsub fast float 1.000000e+00, %1644
  %1668 = fsub fast float 1.000000e+00, %1645
  %1669 = fsub fast float 1.000000e+00, %1646
  %1670 = fmul fast float %1664, %1667
  %1671 = fmul fast float %1665, %1668
  %1672 = fmul fast float %1666, %1669
  br label %1673

; <label>:1673                                    ; preds = %1634, %1585
  %1674 = phi float [ %1611, %1585 ], [ %1670, %1634 ]
  %1675 = phi float [ %1612, %1585 ], [ %1671, %1634 ]
  %1676 = phi float [ %1613, %1585 ], [ %1672, %1634 ]
  %1677 = phi float [ %1600, %1585 ], [ %1644, %1634 ]
  %1678 = phi float [ %1600, %1585 ], [ %1645, %1634 ]
  %1679 = phi float [ %1600, %1585 ], [ %1646, %1634 ]
  br i1 %1166, label %1680, label %1878, !dx.controlflow.hints !100

; <label>:1680                                    ; preds = %1673
  %1681 = extractvalue %dx.types.CBufRet.f32 %1579, 0
  %1682 = fmul fast float %1681, %1581
  %1683 = fsub fast float %1576, %1674
  %1684 = fsub fast float %1577, %1675
  %1685 = fsub fast float %1578, %1676
  %1686 = fmul fast float %1682, %1683
  %1687 = fmul fast float %1682, %1684
  %1688 = fmul fast float %1682, %1685
  %1689 = fadd fast float %1686, %1674
  %1690 = fadd fast float %1687, %1675
  %1691 = fadd fast float %1688, %1676
  %1692 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1677)  ; FMax(a,b)
  %1693 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1678)  ; FMax(a,b)
  %1694 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1679)  ; FMax(a,b)
  %1695 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1575)  ; FMax(a,b)
  %1696 = call float @dx.op.binary.f32(i32 35, float %1574, float %1584)  ; FMax(a,b)
  %1697 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1696)  ; FMax(a,b)
  %1698 = fdiv fast float %1574, %1697
  %1699 = call float @dx.op.unary.f32(i32 7, float %1698)  ; Saturate(value)
  %1700 = fdiv fast float %1584, %1697
  %1701 = call float @dx.op.unary.f32(i32 7, float %1700)  ; Saturate(value)
  %1702 = fcmp fast une float %1695, 1.000000e+00
  br i1 %1702, label %1703, label %1716, !dx.controlflow.hints !101

; <label>:1703                                    ; preds = %1680
  %1704 = call float @dx.op.unary.f32(i32 23, float %1695)  ; Log(value)
  %1705 = fmul fast float %1704, 0x3FE62E4300000000
  %1706 = fmul fast float %1576, %1705
  %1707 = fsub fast float -0.000000e+00, %1706
  %1708 = fmul fast float %1577, %1705
  %1709 = fsub fast float -0.000000e+00, %1708
  %1710 = fmul fast float %1578, %1705
  %1711 = fsub fast float -0.000000e+00, %1710
  %1712 = fsub fast float 1.000000e+00, %1695
  %1713 = fdiv fast float %1707, %1712
  %1714 = fdiv fast float %1709, %1712
  %1715 = fdiv fast float %1711, %1712
  br label %1716

; <label>:1716                                    ; preds = %1703, %1680
  %1717 = phi float [ %1713, %1703 ], [ %1576, %1680 ]
  %1718 = phi float [ %1714, %1703 ], [ %1577, %1680 ]
  %1719 = phi float [ %1715, %1703 ], [ %1578, %1680 ]
  %1720 = phi float [ %1705, %1703 ], [ 0.000000e+00, %1680 ]
  %1721 = fcmp fast une float %1692, 1.000000e+00
  br i1 %1721, label %1722, label %1729, !dx.controlflow.hints !102

; <label>:1722                                    ; preds = %1716
  %1723 = call float @dx.op.unary.f32(i32 23, float %1692)  ; Log(value)
  %1724 = fmul fast float %1723, 0x3FE62E4300000000
  %1725 = fmul fast float %1689, %1724
  %1726 = fsub fast float -0.000000e+00, %1725
  %1727 = fsub fast float 1.000000e+00, %1692
  %1728 = fdiv fast float %1726, %1727
  br label %1729

; <label>:1729                                    ; preds = %1722, %1716
  %1730 = phi float [ %1728, %1722 ], [ %1689, %1716 ]
  %1731 = phi float [ %1724, %1722 ], [ 0.000000e+00, %1716 ]
  %1732 = fcmp fast une float %1693, 1.000000e+00
  br i1 %1732, label %1733, label %1740, !dx.controlflow.hints !102

; <label>:1733                                    ; preds = %1729
  %1734 = call float @dx.op.unary.f32(i32 23, float %1693)  ; Log(value)
  %1735 = fmul fast float %1734, 0x3FE62E4300000000
  %1736 = fmul fast float %1690, %1735
  %1737 = fsub fast float -0.000000e+00, %1736
  %1738 = fsub fast float 1.000000e+00, %1693
  %1739 = fdiv fast float %1737, %1738
  br label %1740

; <label>:1740                                    ; preds = %1733, %1729
  %1741 = phi float [ %1739, %1733 ], [ %1690, %1729 ]
  %1742 = phi float [ %1735, %1733 ], [ 0.000000e+00, %1729 ]
  %1743 = fcmp fast une float %1694, 1.000000e+00
  br i1 %1743, label %1744, label %1751, !dx.controlflow.hints !102

; <label>:1744                                    ; preds = %1740
  %1745 = call float @dx.op.unary.f32(i32 23, float %1694)  ; Log(value)
  %1746 = fmul fast float %1745, 0x3FE62E4300000000
  %1747 = fmul fast float %1691, %1746
  %1748 = fsub fast float -0.000000e+00, %1747
  %1749 = fsub fast float 1.000000e+00, %1694
  %1750 = fdiv fast float %1748, %1749
  br label %1751

; <label>:1751                                    ; preds = %1744, %1740
  %1752 = phi float [ %1750, %1744 ], [ %1691, %1740 ]
  %1753 = phi float [ %1746, %1744 ], [ 0.000000e+00, %1740 ]
  %1754 = fmul fast float %1717, %1701
  %1755 = fmul fast float %1718, %1701
  %1756 = fmul fast float %1719, %1701
  %1757 = fmul fast float %1720, %1701
  %1758 = fmul fast float %1730, %1699
  %1759 = fmul fast float %1741, %1699
  %1760 = fmul fast float %1752, %1699
  %1761 = fmul fast float %1731, %1699
  %1762 = fmul fast float %1742, %1699
  %1763 = fmul fast float %1753, %1699
  %1764 = fadd fast float %1758, %1754
  %1765 = fadd fast float %1759, %1755
  %1766 = fadd fast float %1760, %1756
  %1767 = fadd fast float %1761, %1757
  %1768 = fadd fast float %1762, %1757
  %1769 = fadd fast float %1763, %1757
  %1770 = fcmp fast une float %1767, 0.000000e+00
  br i1 %1770, label %1771, label %1778, !dx.controlflow.hints !103

; <label>:1771                                    ; preds = %1751
  %1772 = fmul fast float %1767, 0x3FF7154760000000
  %1773 = call float @dx.op.unary.f32(i32 21, float %1772)  ; Exp(value)
  %1774 = fsub fast float 1.000000e+00, %1773
  %1775 = fmul fast float %1764, %1774
  %1776 = fsub fast float -0.000000e+00, %1775
  %1777 = fdiv fast float %1776, %1767
  br label %1778

; <label>:1778                                    ; preds = %1771, %1751
  %1779 = phi float [ %1773, %1771 ], [ 1.000000e+00, %1751 ]
  %1780 = phi float [ %1777, %1771 ], [ %1764, %1751 ]
  %1781 = fcmp fast une float %1768, 0.000000e+00
  br i1 %1781, label %1782, label %1789, !dx.controlflow.hints !103

; <label>:1782                                    ; preds = %1778
  %1783 = fmul fast float %1768, 0x3FF7154760000000
  %1784 = call float @dx.op.unary.f32(i32 21, float %1783)  ; Exp(value)
  %1785 = fsub fast float 1.000000e+00, %1784
  %1786 = fmul fast float %1765, %1785
  %1787 = fsub fast float -0.000000e+00, %1786
  %1788 = fdiv fast float %1787, %1768
  br label %1789

; <label>:1789                                    ; preds = %1782, %1778
  %1790 = phi float [ %1784, %1782 ], [ 1.000000e+00, %1778 ]
  %1791 = phi float [ %1788, %1782 ], [ %1765, %1778 ]
  %1792 = fcmp fast une float %1769, 0.000000e+00
  br i1 %1792, label %1793, label %1800, !dx.controlflow.hints !103

; <label>:1793                                    ; preds = %1789
  %1794 = fmul fast float %1769, 0x3FF7154760000000
  %1795 = call float @dx.op.unary.f32(i32 21, float %1794)  ; Exp(value)
  %1796 = fsub fast float 1.000000e+00, %1795
  %1797 = fmul fast float %1766, %1796
  %1798 = fsub fast float -0.000000e+00, %1797
  %1799 = fdiv fast float %1798, %1769
  br label %1800

; <label>:1800                                    ; preds = %1793, %1789
  %1801 = phi float [ %1795, %1793 ], [ 1.000000e+00, %1789 ]
  %1802 = phi float [ %1799, %1793 ], [ %1766, %1789 ]
  %1803 = fcmp fast ogt float %1699, %1701
  br i1 %1803, label %1804, label %1824, !dx.controlflow.hints !104

; <label>:1804                                    ; preds = %1800
  %1805 = fsub fast float 1.000000e+00, %1701
  %1806 = fmul fast float %1717, %1805
  %1807 = fmul fast float %1718, %1805
  %1808 = fmul fast float %1719, %1805
  %1809 = fmul fast float %1720, %1805
  %1810 = fcmp fast une float %1809, 0.000000e+00
  br i1 %1810, label %1811, label %1862, !dx.controlflow.hints !105

; <label>:1811                                    ; preds = %1804
  %1812 = fmul fast float %1809, 0x3FF7154760000000
  %1813 = call float @dx.op.unary.f32(i32 21, float %1812)  ; Exp(value)
  %1814 = fsub fast float 1.000000e+00, %1813
  %1815 = fmul fast float %1806, %1814
  %1816 = fsub fast float -0.000000e+00, %1815
  %1817 = fmul fast float %1807, %1814
  %1818 = fsub fast float -0.000000e+00, %1817
  %1819 = fmul fast float %1808, %1814
  %1820 = fsub fast float -0.000000e+00, %1819
  %1821 = fdiv fast float %1816, %1809
  %1822 = fdiv fast float %1818, %1809
  %1823 = fdiv fast float %1820, %1809
  br label %1862

; <label>:1824                                    ; preds = %1800
  %1825 = fsub fast float 1.000000e+00, %1699
  %1826 = fmul fast float %1730, %1825
  %1827 = fmul fast float %1741, %1825
  %1828 = fmul fast float %1752, %1825
  %1829 = fmul fast float %1731, %1825
  %1830 = fmul fast float %1742, %1825
  %1831 = fmul fast float %1753, %1825
  %1832 = fcmp fast une float %1829, 0.000000e+00
  br i1 %1832, label %1833, label %1840, !dx.controlflow.hints !103

; <label>:1833                                    ; preds = %1824
  %1834 = fmul fast float %1829, 0x3FF7154760000000
  %1835 = call float @dx.op.unary.f32(i32 21, float %1834)  ; Exp(value)
  %1836 = fsub fast float 1.000000e+00, %1835
  %1837 = fmul fast float %1826, %1836
  %1838 = fsub fast float -0.000000e+00, %1837
  %1839 = fdiv fast float %1838, %1829
  br label %1840

; <label>:1840                                    ; preds = %1833, %1824
  %1841 = phi float [ %1839, %1833 ], [ %1826, %1824 ]
  %1842 = phi float [ %1835, %1833 ], [ 1.000000e+00, %1824 ]
  %1843 = fcmp fast une float %1830, 0.000000e+00
  br i1 %1843, label %1844, label %1851, !dx.controlflow.hints !103

; <label>:1844                                    ; preds = %1840
  %1845 = fmul fast float %1830, 0x3FF7154760000000
  %1846 = call float @dx.op.unary.f32(i32 21, float %1845)  ; Exp(value)
  %1847 = fsub fast float 1.000000e+00, %1846
  %1848 = fmul fast float %1827, %1847
  %1849 = fsub fast float -0.000000e+00, %1848
  %1850 = fdiv fast float %1849, %1830
  br label %1851

; <label>:1851                                    ; preds = %1844, %1840
  %1852 = phi float [ %1850, %1844 ], [ %1827, %1840 ]
  %1853 = phi float [ %1846, %1844 ], [ 1.000000e+00, %1840 ]
  %1854 = fcmp fast une float %1831, 0.000000e+00
  br i1 %1854, label %1855, label %1862, !dx.controlflow.hints !103

; <label>:1855                                    ; preds = %1851
  %1856 = fmul fast float %1831, 0x3FF7154760000000
  %1857 = call float @dx.op.unary.f32(i32 21, float %1856)  ; Exp(value)
  %1858 = fsub fast float 1.000000e+00, %1857
  %1859 = fmul fast float %1828, %1858
  %1860 = fsub fast float -0.000000e+00, %1859
  %1861 = fdiv fast float %1860, %1831
  br label %1862

; <label>:1862                                    ; preds = %1855, %1851, %1811, %1804
  %1863 = phi float [ %1861, %1855 ], [ %1823, %1811 ], [ %1808, %1804 ], [ %1828, %1851 ]
  %1864 = phi float [ %1852, %1855 ], [ %1822, %1811 ], [ %1807, %1804 ], [ %1852, %1851 ]
  %1865 = phi float [ %1841, %1855 ], [ %1821, %1811 ], [ %1806, %1804 ], [ %1841, %1851 ]
  %1866 = phi float [ %1857, %1855 ], [ %1813, %1811 ], [ 1.000000e+00, %1804 ], [ 1.000000e+00, %1851 ]
  %1867 = phi float [ %1853, %1855 ], [ %1813, %1811 ], [ 1.000000e+00, %1804 ], [ %1853, %1851 ]
  %1868 = phi float [ %1842, %1855 ], [ %1813, %1811 ], [ 1.000000e+00, %1804 ], [ %1842, %1851 ]
  %1869 = fmul fast float %1868, %1780
  %1870 = fmul fast float %1867, %1791
  %1871 = fmul fast float %1866, %1802
  %1872 = fadd fast float %1869, %1865
  %1873 = fadd fast float %1870, %1864
  %1874 = fadd fast float %1871, %1863
  %1875 = fmul fast float %1868, %1779
  %1876 = fmul fast float %1867, %1790
  %1877 = fmul fast float %1866, %1801
  br label %1878

; <label>:1878                                    ; preds = %1862, %1673
  %1879 = phi float [ %1679, %1673 ], [ %1877, %1862 ]
  %1880 = phi float [ %1678, %1673 ], [ %1876, %1862 ]
  %1881 = phi float [ %1677, %1673 ], [ %1875, %1862 ]
  %1882 = phi float [ %1676, %1673 ], [ %1874, %1862 ]
  %1883 = phi float [ %1675, %1673 ], [ %1873, %1862 ]
  %1884 = phi float [ %1674, %1673 ], [ %1872, %1862 ]
  %1885 = fmul fast float %1881, %1022
  %1886 = fmul fast float %1880, %1023
  %1887 = fmul fast float %1879, %1024
  %1888 = fsub fast float 1.000000e+00, %1085
  %1889 = fmul fast float %1884, %1888
  %1890 = fmul fast float %1883, %1888
  %1891 = fmul fast float %1882, %1888
  %1892 = fadd fast float %1889, %1885
  %1893 = fadd fast float %1890, %1886
  %1894 = fadd fast float %1891, %1887
  %1895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1896 = extractvalue %dx.types.CBufRet.f32 %1895, 2
  %1897 = fmul fast float %1896, %1095
  %1898 = call float @dx.op.unary.f32(i32 7, float %1897)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %15, i32 %16, i32 undef, float %1085, float %1085, float %1085, float %1085, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1900 = extractvalue %dx.types.CBufRet.f32 %1899, 0
  %1901 = fmul fast float %1900, %1892
  %1902 = fmul fast float %1900, %1893
  %1903 = fmul fast float %1900, %1894
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %15, i32 %16, i32 undef, float %1901, float %1902, float %1903, float %1901, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %15, i32 %16, i32 undef, float %1898, float %1898, float %1898, float %1898, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!25 = !{void ()* @cs_fog_raymarching_heightmap, !"cs_fog_raymarching_heightmap", null, !4, !26}
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
!36 = distinct !{!36, !"dx.controlflow.hints", i32 1}
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

