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
; shader hash: f291b81309e4bfa81e9670bc782c02f5
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
;                                   texture     f32          3d      T0             t3     1
;                                   texture     f32          1d      T1            t14     1
;                                   texture     f32          2d      T2            t13     1
;                                   texture     f32          2d      T3             t0     1
;                                   texture    byte         r/o      T4            t17     1
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
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
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

define void @cs_fog_raymarching_air() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %15 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = add i32 %14, %13
  %19 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 1
  %21 = add i32 %18, %20
  %22 = lshr i32 %21, 1
  %23 = and i32 %22, 1
  %24 = and i32 %21, 1
  %25 = xor i32 %23, %24
  %26 = shl i32 %13, 1
  %27 = shl i32 %14, 1
  %28 = or i32 %25, %26
  %29 = or i32 %23, %27
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = extractvalue %dx.types.ResRet.i32 %32, 1
  %35 = extractvalue %dx.types.ResRet.i32 %32, 2
  %36 = extractvalue %dx.types.ResRet.i32 %32, 3
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = extractvalue %dx.types.ResRet.i32 %37, 1
  %40 = extractvalue %dx.types.ResRet.i32 %37, 2
  %41 = extractvalue %dx.types.ResRet.i32 %37, 3
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = extractvalue %dx.types.ResRet.i32 %42, 1
  %45 = extractvalue %dx.types.ResRet.i32 %42, 2
  %46 = extractvalue %dx.types.ResRet.i32 %42, 3
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 2
  %49 = fmul fast float %48, %48
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 0
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 1
  %53 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %54 = fmul fast float %53, 0x3FF17B1420000000
  %55 = icmp eq i32 %15, 0
  br i1 %55, label %56, label %197, !dx.controlflow.hints !26

; <label>:56                                      ; preds = %0
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 0
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 3
  %61 = extractvalue %dx.types.ResRet.i32 %30, 1
  %62 = and i32 %61, 65535
  %63 = call float @dx.op.legacyF16ToF32(i32 131, i32 %62)  ; LegacyF16ToF32(value)
  %64 = lshr i32 %31, 16
  %65 = call float @dx.op.legacyF16ToF32(i32 131, i32 %64)  ; LegacyF16ToF32(value)
  %66 = and i32 %31, 65535
  %67 = call float @dx.op.legacyF16ToF32(i32 131, i32 %66)  ; LegacyF16ToF32(value)
  %68 = lshr i32 %36, 16
  %69 = call float @dx.op.legacyF16ToF32(i32 131, i32 %68)  ; LegacyF16ToF32(value)
  %70 = and i32 %36, 65535
  %71 = call float @dx.op.legacyF16ToF32(i32 131, i32 %70)  ; LegacyF16ToF32(value)
  %72 = lshr i32 %35, 16
  %73 = call float @dx.op.legacyF16ToF32(i32 131, i32 %72)  ; LegacyF16ToF32(value)
  %74 = and i32 %35, 65535
  %75 = call float @dx.op.legacyF16ToF32(i32 131, i32 %74)  ; LegacyF16ToF32(value)
  %76 = lshr i32 %34, 16
  %77 = call float @dx.op.legacyF16ToF32(i32 131, i32 %76)  ; LegacyF16ToF32(value)
  %78 = lshr i32 %33, 16
  %79 = call float @dx.op.legacyF16ToF32(i32 131, i32 %78)  ; LegacyF16ToF32(value)
  %80 = and i32 %33, 65535
  %81 = call float @dx.op.legacyF16ToF32(i32 131, i32 %80)  ; LegacyF16ToF32(value)
  %82 = lshr i32 %41, 16
  %83 = call float @dx.op.legacyF16ToF32(i32 131, i32 %82)  ; LegacyF16ToF32(value)
  %84 = and i32 %41, 65535
  %85 = call float @dx.op.legacyF16ToF32(i32 131, i32 %84)  ; LegacyF16ToF32(value)
  %86 = lshr i32 %40, 16
  %87 = call float @dx.op.legacyF16ToF32(i32 131, i32 %86)  ; LegacyF16ToF32(value)
  %88 = and i32 %40, 65535
  %89 = call float @dx.op.legacyF16ToF32(i32 131, i32 %88)  ; LegacyF16ToF32(value)
  %90 = lshr i32 %39, 16
  %91 = call float @dx.op.legacyF16ToF32(i32 131, i32 %90)  ; LegacyF16ToF32(value)
  %92 = and i32 %39, 65535
  %93 = call float @dx.op.legacyF16ToF32(i32 131, i32 %92)  ; LegacyF16ToF32(value)
  %94 = and i32 %38, 65535
  %95 = call float @dx.op.legacyF16ToF32(i32 131, i32 %94)  ; LegacyF16ToF32(value)
  %96 = lshr i32 %46, 16
  %97 = call float @dx.op.legacyF16ToF32(i32 131, i32 %96)  ; LegacyF16ToF32(value)
  %98 = and i32 %46, 65535
  %99 = call float @dx.op.legacyF16ToF32(i32 131, i32 %98)  ; LegacyF16ToF32(value)
  %100 = lshr i32 %45, 16
  %101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %100)  ; LegacyF16ToF32(value)
  %102 = and i32 %45, 65535
  %103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %102)  ; LegacyF16ToF32(value)
  %104 = lshr i32 %44, 16
  %105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %104)  ; LegacyF16ToF32(value)
  %106 = and i32 %44, 65535
  %107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %106)  ; LegacyF16ToF32(value)
  %108 = lshr i32 %43, 16
  %109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %108)  ; LegacyF16ToF32(value)
  %110 = and i32 %34, 65535
  %111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %110)  ; LegacyF16ToF32(value)
  %112 = lshr i32 %38, 16
  %113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %112)  ; LegacyF16ToF32(value)
  %114 = and i32 %43, 65535
  %115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %114)  ; LegacyF16ToF32(value)
  %116 = fmul fast float %111, 0x3FD20DD760000000
  %117 = fmul fast float %53, %48
  %118 = fmul fast float %117, %75
  %119 = fmul fast float %53, %53
  %120 = fmul fast float %119, 0x3FEE471020000000
  %121 = fadd fast float %120, 0xBFD42F6020000000
  %122 = fmul fast float %67, %121
  %123 = fmul fast float %73, %51
  %124 = fmul fast float %77, %52
  %125 = fmul fast float %51, %49
  %126 = fmul fast float %125, %54
  %127 = fmul fast float %126, %65
  %128 = fsub fast float -0.000000e+00, %127
  %129 = fmul fast float %52, %49
  %130 = fmul fast float %129, %54
  %131 = fmul fast float %130, %69
  %132 = fmul fast float %51, %51
  %133 = fmul fast float %52, %52
  %134 = fsub fast float %132, %133
  %135 = fmul fast float %134, 0x3FE17B1420000000
  %136 = fmul fast float %135, %63
  %137 = fmul fast float %52, 0x3FF17B1420000000
  %138 = fmul fast float %137, %51
  %139 = fmul fast float %138, %71
  %140 = fadd fast float %124, %123
  %141 = fmul fast float %140, %48
  %142 = fsub fast float %141, %118
  %143 = fmul fast float %142, 0x3FDF454380000000
  %144 = fadd fast float %122, %136
  %145 = fadd fast float %144, %139
  %146 = fmul fast float %145, %49
  %147 = fsub fast float %128, %131
  %148 = fadd fast float %147, %116
  %149 = fadd fast float %148, %143
  %150 = fadd fast float %149, %146
  %151 = fmul fast float %58, %60
  %152 = fmul fast float %151, %150
  %153 = fmul fast float %113, 0x3FD20DD760000000
  %154 = fmul fast float %117, %91
  %155 = fmul fast float %83, %121
  %156 = fmul fast float %89, %51
  %157 = fmul fast float %93, %52
  %158 = fmul fast float %126, %81
  %159 = fsub fast float -0.000000e+00, %158
  %160 = fmul fast float %130, %85
  %161 = fmul fast float %135, %79
  %162 = fmul fast float %138, %87
  %163 = fadd fast float %157, %156
  %164 = fmul fast float %163, %48
  %165 = fsub fast float %164, %154
  %166 = fmul fast float %165, 0x3FDF454380000000
  %167 = fadd fast float %155, %161
  %168 = fadd fast float %167, %162
  %169 = fmul fast float %168, %49
  %170 = fsub fast float %159, %160
  %171 = fadd fast float %170, %153
  %172 = fadd fast float %171, %166
  %173 = fadd fast float %172, %169
  %174 = fmul fast float %151, %173
  %175 = fmul fast float %115, 0x3FD20DD760000000
  %176 = fmul fast float %117, %107
  %177 = fmul fast float %99, %121
  %178 = fmul fast float %105, %51
  %179 = fmul fast float %109, %52
  %180 = fmul fast float %126, %97
  %181 = fsub fast float -0.000000e+00, %180
  %182 = fmul fast float %130, %101
  %183 = fmul fast float %135, %95
  %184 = fmul fast float %138, %103
  %185 = fadd fast float %179, %178
  %186 = fmul fast float %185, %48
  %187 = fsub fast float %186, %176
  %188 = fmul fast float %187, 0x3FDF454380000000
  %189 = fadd fast float %177, %183
  %190 = fadd fast float %189, %184
  %191 = fmul fast float %190, %49
  %192 = fsub fast float %181, %182
  %193 = fadd fast float %192, %175
  %194 = fadd fast float %193, %188
  %195 = fadd fast float %194, %191
  %196 = fmul fast float %151, %195
  store float %196, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  store float %174, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  store float %152, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  br label %197

; <label>:197                                     ; preds = %56, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %198 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  %199 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  %200 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  %201 = uitofp i32 %28 to float
  %202 = uitofp i32 %29 to float
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 2
  %205 = fmul fast float %204, 0x3FE3C6EF40000000
  %206 = frem fast float %201, 2.560000e+02
  %207 = frem fast float %202, 2.560000e+02
  %208 = fptoui float %206 to i32
  %209 = fptoui float %207 to i32
  %210 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %208, i32 %209, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 1
  %212 = extractvalue %dx.types.ResRet.f32 %210, 2
  %213 = extractvalue %dx.types.ResRet.f32 %210, 3
  %214 = fadd fast float %211, %205
  %215 = fadd fast float %212, %205
  %216 = fadd fast float %213, %205
  %217 = call float @dx.op.unary.f32(i32 22, float %214)  ; Frc(value)
  %218 = call float @dx.op.unary.f32(i32 22, float %215)  ; Frc(value)
  %219 = call float @dx.op.unary.f32(i32 22, float %216)  ; Frc(value)
  %220 = fadd fast float %218, %201
  %221 = fadd fast float %219, %202
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 2
  %224 = extractvalue %dx.types.CBufRet.f32 %222, 3
  %225 = fmul fast float %223, %220
  %226 = fmul fast float %224, %221
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 0
  %229 = extractvalue %dx.types.CBufRet.f32 %227, 1
  %230 = extractvalue %dx.types.CBufRet.f32 %227, 2
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 1
  %233 = fmul fast float %225, 2.000000e+00
  %234 = fmul fast float %226, 2.000000e+00
  %235 = fsub fast float 1.000000e+00, %233
  %236 = fsub fast float 1.000000e+00, %234
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 0
  %239 = extractvalue %dx.types.CBufRet.f32 %237, 1
  %240 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %241 = fmul fast float %238, %235
  %242 = fmul fast float %239, %235
  %243 = fmul fast float %240, %235
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 0
  %246 = extractvalue %dx.types.CBufRet.f32 %244, 1
  %247 = extractvalue %dx.types.CBufRet.f32 %244, 2
  %248 = fmul fast float %245, %236
  %249 = fmul fast float %246, %236
  %250 = fmul fast float %247, %236
  %251 = fadd fast float %248, %241
  %252 = fadd fast float %249, %242
  %253 = fadd fast float %250, %243
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = extractvalue %dx.types.CBufRet.f32 %254, 1
  %257 = extractvalue %dx.types.CBufRet.f32 %254, 2
  %258 = fadd fast float %251, %255
  %259 = fadd fast float %252, %256
  %260 = fadd fast float %253, %257
  %261 = fmul fast float %258, %232
  %262 = fmul fast float %259, %232
  %263 = fmul fast float %260, %232
  %264 = fmul fast float %261, %261
  %265 = fmul fast float %262, %262
  %266 = fadd fast float %264, %265
  %267 = fmul fast float %263, %263
  %268 = fadd fast float %266, %267
  %269 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %270 = fdiv fast float 1.000000e+00, %269
  %271 = fmul fast float %261, %270
  %272 = fmul fast float %262, %270
  %273 = fmul fast float %263, %270
  %274 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %28, i32 %29, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = fcmp fast ogt float %275, -1.000000e+00
  %277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.f32 %277, 1
  %279 = select i1 %276, float %278, float 1.000000e+00
  %280 = fadd fast float %275, 1.000000e+00
  %281 = fmul fast float %279, %280
  %282 = call float @dx.op.unary.f32(i32 6, float %281)  ; FAbs(value)
  %283 = fdiv fast float 1.000000e+00, %232
  %284 = fmul fast float %283, %269
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 1
  %287 = fmul fast float %286, %284
  %288 = fmul fast float %284, %282
  %289 = extractvalue %dx.types.CBufRet.f32 %277, 3
  %290 = fcmp fast oge float %282, %289
  %291 = call float @dx.op.binary.f32(i32 36, float %288, float %287)  ; FMin(a,b)
  %292 = select i1 %290, float %287, float %291
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 3
  %295 = fsub fast float -0.000000e+00, %228
  %296 = fsub fast float -0.000000e+00, %229
  %297 = fsub fast float %294, %230
  %298 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %295, float %296, float %297)  ; Dot3(ax,ay,az,bx,by,bz)
  %299 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %271, float %272, float %273)  ; Dot3(ax,ay,az,bx,by,bz)
  %300 = fdiv fast float 1.000000e+00, %299
  %301 = fmul fast float %300, %298
  %302 = fcmp fast olt float %301, 0.000000e+00
  %303 = fcmp fast ogt float %273, 0.000000e+00
  %304 = and i1 %303, %302
  br i1 %304, label %309, label %305, !dx.controlflow.hints !27

; <label>:305                                     ; preds = %197
  %306 = fcmp fast olt float %273, 0.000000e+00
  br i1 %306, label %307, label %309, !dx.controlflow.hints !28

; <label>:307                                     ; preds = %305
  %308 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %301)  ; FMax(a,b)
  br label %309

; <label>:309                                     ; preds = %307, %305, %197
  %310 = phi float [ 0.000000e+00, %197 ], [ %308, %307 ], [ 0.000000e+00, %305 ]
  %311 = phi float [ 0.000000e+00, %197 ], [ 0x47EFFFFFE0000000, %307 ], [ %301, %305 ]
  %312 = fcmp fast oeq float %311, 0.000000e+00
  br i1 %312, label %316, label %313, !dx.controlflow.hints !29

; <label>:313                                     ; preds = %309
  %314 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %310)  ; FMin(a,b)
  %315 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %311)  ; FMax(a,b)
  br label %316

; <label>:316                                     ; preds = %313, %309
  %317 = phi i32 [ 1, %313 ], [ 0, %309 ]
  %318 = phi float [ %315, %313 ], [ -1.000000e+00, %309 ]
  %319 = phi float [ %314, %313 ], [ 0x47EFFFFFE0000000, %309 ]
  %320 = call float @dx.op.binary.f32(i32 36, float %292, float %318)  ; FMin(a,b)
  %321 = call float @dx.op.binary.f32(i32 35, float %269, float %319)  ; FMax(a,b)
  %322 = extractvalue %dx.types.CBufRet.f32 %293, 0
  %323 = fmul fast float %217, 2.000000e+00
  %324 = fadd fast float %323, -1.000000e+00
  %325 = fmul fast float %322, %324
  %326 = fadd fast float %325, %321
  %327 = fcmp fast olt float %326, %320
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 2
  %330 = fcmp fast olt float %329, 1.000000e+00
  %331 = and i1 %330, %327
  br i1 %331, label %332, label %650

; <label>:332                                     ; preds = %316
  %333 = fmul fast float %326, %273
  %334 = fadd fast float %333, %230
  %335 = fmul fast float %326, %272
  %336 = fadd fast float %335, %229
  %337 = fmul fast float %326, %271
  %338 = fadd fast float %337, %228
  br label %339

; <label>:339                                     ; preds = %626, %332
  %340 = phi float [ %628, %626 ], [ 0.000000e+00, %332 ]
  %341 = phi float [ %629, %626 ], [ 1.000000e+00, %332 ]
  %342 = phi float [ %630, %626 ], [ 0.000000e+00, %332 ]
  %343 = phi float [ %631, %626 ], [ 0.000000e+00, %332 ]
  %344 = phi float [ %632, %626 ], [ 0.000000e+00, %332 ]
  %345 = phi float [ %642, %626 ], [ %338, %332 ]
  %346 = phi float [ %643, %626 ], [ %336, %332 ]
  %347 = phi float [ %644, %626 ], [ %334, %332 ]
  %348 = phi float [ %627, %626 ], [ %326, %332 ]
  %349 = phi float [ %633, %626 ], [ 0.000000e+00, %332 ]
  %350 = phi float [ %634, %626 ], [ 0.000000e+00, %332 ]
  %351 = phi float [ %635, %626 ], [ 0.000000e+00, %332 ]
  %352 = phi float [ %636, %626 ], [ 0.000000e+00, %332 ]
  %353 = phi float [ %637, %626 ], [ 0.000000e+00, %332 ]
  %354 = phi i32 [ %638, %626 ], [ 0, %332 ]
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 0
  %357 = icmp eq i32 %317, 0
  br i1 %357, label %370, label %358, !dx.controlflow.hints !30

; <label>:358                                     ; preds = %339
  %359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.f32 %359, 3
  %361 = extractvalue %dx.types.CBufRet.f32 %359, 2
  %362 = fmul fast float %360, %348
  %363 = fdiv fast float %362, %320
  %364 = fadd fast float %363, 1.000000e+00
  %365 = call float @dx.op.unary.f32(i32 23, float %364)  ; Log(value)
  %366 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %365)  ; FMin(a,b)
  %367 = fmul fast float %361, %320
  %368 = fmul fast float %367, %366
  %369 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %368)  ; FMin(a,b)
  br label %370

; <label>:370                                     ; preds = %358, %339
  %371 = phi float [ %369, %358 ], [ 0x47EFFFFFE0000000, %339 ]
  %372 = extractvalue %dx.types.CBufRet.f32 %355, 2
  %373 = fmul fast float %372, %348
  %374 = call float @dx.op.unary.f32(i32 23, float %373)  ; Log(value)
  %375 = fmul fast float %374, 0x3FE62E4300000000
  %376 = call float @dx.op.binary.f32(i32 35, float %375, float 1.000000e+00)  ; FMax(a,b)
  %377 = fmul fast float %376, %371
  %378 = call float @dx.op.binary.f32(i32 36, float %377, float 0x47EFFFFFE0000000)  ; FMin(a,b)
  %379 = call float @dx.op.binary.f32(i32 35, float %378, float %356)  ; FMax(a,b)
  %380 = fadd fast float %320, 0x3F1A36E2E0000000
  %381 = fsub fast float %380, %348
  %382 = call float @dx.op.binary.f32(i32 36, float %381, float %379)  ; FMin(a,b)
  br i1 %357, label %439, label %383, !dx.controlflow.hints !31

; <label>:383                                     ; preds = %370
  %384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.f32 %384, 0
  %386 = fsub fast float -0.000000e+00, %345
  %387 = fsub fast float -0.000000e+00, %346
  %388 = fsub fast float %385, %347
  %389 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %386, float %387, float %388)  ; Dot3(ax,ay,az,bx,by,bz)
  %390 = fmul fast float %300, %389
  %391 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %390)  ; FMax(a,b)
  %392 = fcmp fast olt float %273, 0.000000e+00
  %393 = call float @dx.op.binary.f32(i32 36, float %382, float %391)  ; FMin(a,b)
  br i1 %392, label %395, label %394, !dx.controlflow.hints !32

; <label>:394                                     ; preds = %383
  br label %395

; <label>:395                                     ; preds = %394, %383
  %396 = phi float [ 0.000000e+00, %394 ], [ %393, %383 ]
  %397 = phi float [ %393, %394 ], [ %382, %383 ]
  %398 = phi float [ %393, %394 ], [ 0.000000e+00, %383 ]
  %399 = phi float [ %382, %394 ], [ %393, %383 ]
  %400 = fsub fast float %397, %396
  %401 = extractvalue %dx.types.CBufRet.f32 %384, 1
  %402 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %401)  ; FMin(a,b)
  %403 = fsub fast float %347, %385
  %404 = fmul fast float %402, 0x3FF7154760000000
  %405 = fmul fast float %404, %403
  %406 = call float @dx.op.unary.f32(i32 21, float %405)  ; Exp(value)
  %407 = fmul fast float %273, 0x3FF7154760000000
  %408 = fmul fast float %407, %399
  %409 = fmul fast float %408, %402
  %410 = call float @dx.op.unary.f32(i32 21, float %409)  ; Exp(value)
  %411 = fmul fast float %407, %398
  %412 = fmul fast float %411, %402
  %413 = call float @dx.op.unary.f32(i32 21, float %412)  ; Exp(value)
  %414 = fsub fast float %410, %413
  %415 = fmul fast float %414, %406
  %416 = fmul fast float %402, %273
  %417 = fdiv fast float %415, %416
  %418 = fadd fast float %400, %417
  %419 = call float @dx.op.unary.f32(i32 6, float %273)  ; FAbs(value)
  %420 = fcmp fast olt float %419, 0x3F0FFB4800000000
  %421 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %403)  ; FMax(a,b)
  %422 = fmul fast float %421, 0x3FF7154760000000
  %423 = fmul fast float %422, %401
  %424 = call float @dx.op.unary.f32(i32 21, float %423)  ; Exp(value)
  %425 = fmul fast float %424, %382
  %426 = select i1 %420, float %425, float %418
  %427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.f32 %427, 1
  %429 = fmul fast float %426, %428
  %430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %431 = extractvalue %dx.types.CBufRet.f32 %430, 0
  %432 = extractvalue %dx.types.CBufRet.f32 %430, 1
  %433 = extractvalue %dx.types.CBufRet.f32 %430, 2
  %434 = extractvalue %dx.types.CBufRet.f32 %427, 2
  %435 = fmul fast float %431, %429
  %436 = fmul fast float %432, %429
  %437 = fmul fast float %433, %429
  %438 = fmul fast float %434, %429
  br label %439

; <label>:439                                     ; preds = %395, %370
  %440 = phi float [ %429, %395 ], [ 0.000000e+00, %370 ]
  %441 = phi float [ %438, %395 ], [ 0.000000e+00, %370 ]
  %442 = phi float [ %435, %395 ], [ 0.000000e+00, %370 ]
  %443 = phi float [ %436, %395 ], [ 0.000000e+00, %370 ]
  %444 = phi float [ %437, %395 ], [ 0.000000e+00, %370 ]
  %445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.f32 %445, 1
  %447 = fcmp fast ogt float %440, %446
  br i1 %447, label %448, label %454, !dx.controlflow.hints !33

; <label>:448                                     ; preds = %439
  %449 = fdiv fast float 1.000000e+00, %440
  %450 = fmul fast float %449, %442
  %451 = fmul fast float %449, %443
  %452 = fmul fast float %449, %444
  %453 = fmul fast float %449, %441
  br label %454

; <label>:454                                     ; preds = %448, %439
  %455 = phi float [ %453, %448 ], [ %441, %439 ]
  %456 = phi float [ %450, %448 ], [ %442, %439 ]
  %457 = phi float [ %451, %448 ], [ %443, %439 ]
  %458 = phi float [ %452, %448 ], [ %444, %439 ]
  br i1 %447, label %461, label %459, !dx.controlflow.hints !34

; <label>:459                                     ; preds = %454
  %460 = fadd fast float %382, %348
  br label %626

; <label>:461                                     ; preds = %454
  %462 = fmul fast float %440, 0xBFF7154760000000
  %463 = call float @dx.op.unary.f32(i32 21, float %462)  ; Exp(value)
  %464 = call float @dx.op.unary.f32(i32 7, float %463)  ; Saturate(value)
  %465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.f32 %465, 3
  %467 = fcmp fast une float %466, 0.000000e+00
  %468 = extractvalue %dx.types.CBufRet.f32 %465, 0
  %469 = extractvalue %dx.types.CBufRet.f32 %465, 1
  %470 = extractvalue %dx.types.CBufRet.f32 %465, 2
  br i1 %467, label %471, label %493, !dx.controlflow.hints !35

; <label>:471                                     ; preds = %461
  %472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.f32 %472, 0
  %474 = extractvalue %dx.types.CBufRet.f32 %472, 1
  %475 = extractvalue %dx.types.CBufRet.f32 %472, 2
  %476 = call float @dx.op.dot3.f32(i32 55, float %468, float %469, float %470, float %271, float %272, float %273)  ; Dot3(ax,ay,az,bx,by,bz)
  %477 = fcmp fast ogt float %455, 0.000000e+00
  %478 = select i1 %477, float 1.000000e+00, float -1.000000e+00
  %479 = fmul fast float %478, 5.000000e-01
  %480 = fmul fast float %479, %476
  %481 = fmul fast float %478, %455
  %482 = fadd fast float %480, 4.921875e-01
  %483 = fadd fast float %481, -3.125000e-02
  %484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %10, float %482, float 0x3FB25F3060000000, float %483, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.f32 %486, 0
  %488 = fmul fast float %485, 0x400921FB60000000
  %489 = fmul fast float %488, %487
  %490 = fmul fast float %489, %473
  %491 = fmul fast float %489, %474
  %492 = fmul fast float %489, %475
  br label %493

; <label>:493                                     ; preds = %471, %461
  %494 = phi float [ %490, %471 ], [ 0.000000e+00, %461 ]
  %495 = phi float [ %491, %471 ], [ 0.000000e+00, %461 ]
  %496 = phi float [ %492, %471 ], [ 0.000000e+00, %461 ]
  %497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %498 = extractvalue %dx.types.CBufRet.f32 %497, 0
  %499 = fmul fast float %498, %470
  %500 = fadd fast float %499, %347
  br i1 %357, label %554, label %501, !dx.controlflow.hints !31

; <label>:501                                     ; preds = %493
  %502 = fmul fast float %498, %469
  %503 = fadd fast float %346, %502
  %504 = fmul fast float %498, %468
  %505 = fadd fast float %345, %504
  %506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.f32 %506, 0
  %508 = fsub fast float -0.000000e+00, %505
  %509 = fsub fast float -0.000000e+00, %503
  %510 = fsub fast float %507, %500
  %511 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %508, float %509, float %510)  ; Dot3(ax,ay,az,bx,by,bz)
  %512 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %468, float %469, float %470)  ; Dot3(ax,ay,az,bx,by,bz)
  %513 = fdiv fast float 1.000000e+00, %512
  %514 = fmul fast float %513, %511
  %515 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %514)  ; FMax(a,b)
  %516 = fcmp fast olt float %470, 0.000000e+00
  %517 = call float @dx.op.binary.f32(i32 36, float %498, float %515)  ; FMin(a,b)
  br i1 %516, label %519, label %518, !dx.controlflow.hints !32

; <label>:518                                     ; preds = %501
  br label %519

; <label>:519                                     ; preds = %518, %501
  %520 = phi float [ 0.000000e+00, %518 ], [ %517, %501 ]
  %521 = phi float [ %517, %518 ], [ %498, %501 ]
  %522 = phi float [ %517, %518 ], [ 0.000000e+00, %501 ]
  %523 = phi float [ %498, %518 ], [ %517, %501 ]
  %524 = fsub fast float %521, %520
  %525 = extractvalue %dx.types.CBufRet.f32 %506, 1
  %526 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %525)  ; FMin(a,b)
  %527 = fsub fast float %500, %507
  %528 = fmul fast float %526, 0x3FF7154760000000
  %529 = fmul fast float %528, %527
  %530 = call float @dx.op.unary.f32(i32 21, float %529)  ; Exp(value)
  %531 = fmul fast float %470, 0x3FF7154760000000
  %532 = fmul fast float %531, %523
  %533 = fmul fast float %532, %526
  %534 = call float @dx.op.unary.f32(i32 21, float %533)  ; Exp(value)
  %535 = fmul fast float %531, %522
  %536 = fmul fast float %535, %526
  %537 = call float @dx.op.unary.f32(i32 21, float %536)  ; Exp(value)
  %538 = fsub fast float %534, %537
  %539 = fmul fast float %538, %530
  %540 = fmul fast float %526, %470
  %541 = fdiv fast float %539, %540
  %542 = fadd fast float %524, %541
  %543 = call float @dx.op.unary.f32(i32 6, float %470)  ; FAbs(value)
  %544 = fcmp fast olt float %543, 0x3F0FFB4800000000
  %545 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %527)  ; FMax(a,b)
  %546 = fmul fast float %545, 0x3FF7154760000000
  %547 = fmul fast float %546, %525
  %548 = call float @dx.op.unary.f32(i32 21, float %547)  ; Exp(value)
  %549 = fmul fast float %548, %498
  %550 = select i1 %544, float %549, float %542
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 1
  %553 = fmul fast float %550, %552
  br label %554

; <label>:554                                     ; preds = %519, %493
  %555 = phi float [ %553, %519 ], [ 0.000000e+00, %493 ]
  %556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.f32 %556, 3
  %558 = fmul fast float %555, 0xBFF7154760000000
  %559 = fmul fast float %558, %557
  %560 = call float @dx.op.unary.f32(i32 21, float %559)  ; Exp(value)
  %561 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  %562 = fmul fast float %561, %494
  %563 = fmul fast float %561, %495
  %564 = fmul fast float %561, %496
  %565 = fadd fast float %562, %198
  %566 = fadd fast float %563, %199
  %567 = fadd fast float %564, %200
  %568 = fsub fast float 1.000000e+00, %464
  %569 = fmul fast float %456, %341
  %570 = fmul fast float %569, %568
  %571 = fmul fast float %570, %565
  %572 = fmul fast float %457, %341
  %573 = fmul fast float %572, %568
  %574 = fmul fast float %573, %566
  %575 = fmul fast float %458, %341
  %576 = fmul fast float %575, %568
  %577 = fmul fast float %576, %567
  %578 = fadd fast float %571, %342
  %579 = fadd fast float %574, %343
  %580 = fadd fast float %577, %344
  %581 = fdiv fast float %440, %382
  %582 = fadd fast float %382, %348
  %583 = fmul fast float %348, %348
  %584 = fmul fast float %582, %582
  %585 = fsub fast float %583, %584
  %586 = fmul fast float %585, -5.000000e-01
  %587 = fmul fast float %586, %581
  %588 = fadd fast float %587, %340
  %589 = fadd fast float %440, %349
  %590 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.i32 %590, 0
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %619, label %593, !dx.controlflow.hints !36

; <label>:593                                     ; preds = %554
  %594 = icmp ne i32 %354, 0
  %595 = zext i1 %594 to i32
  %596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.f32 %596, 2
  %598 = extractvalue %dx.types.CBufRet.f32 %596, 0
  %599 = fsub fast float %582, %598
  %600 = fmul fast float %599, %597
  %601 = call float @dx.op.unary.f32(i32 7, float %600)  ; Saturate(value)
  %602 = fadd fast float %601, -5.000000e-01
  %603 = fmul fast float %602, 2.000000e+00
  %604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %605 = extractvalue %dx.types.CBufRet.f32 %604, 2
  %606 = fcmp fast olt float %603, %605
  br i1 %606, label %607, label %619, !dx.controlflow.hints !37

; <label>:607                                     ; preds = %593
  %608 = fmul fast float %603, %603
  %609 = fmul fast float %568, %341
  %610 = fmul fast float %603, %609
  %611 = fmul fast float %608, %609
  %612 = fmul fast float %610, %608
  %613 = fmul fast float %608, %608
  %614 = fmul fast float %613, %609
  %615 = fadd fast float %610, %350
  %616 = fadd fast float %611, %351
  %617 = fadd fast float %612, %352
  %618 = fadd fast float %614, %353
  br label %619

; <label>:619                                     ; preds = %607, %593, %554
  %620 = phi float [ %350, %554 ], [ %615, %607 ], [ %350, %593 ]
  %621 = phi float [ %351, %554 ], [ %616, %607 ], [ %351, %593 ]
  %622 = phi float [ %352, %554 ], [ %617, %607 ], [ %352, %593 ]
  %623 = phi float [ %353, %554 ], [ %618, %607 ], [ %353, %593 ]
  %624 = phi i32 [ %354, %554 ], [ 1, %607 ], [ %595, %593 ]
  %625 = fmul fast float %464, %341
  br label %626

; <label>:626                                     ; preds = %619, %459
  %627 = phi float [ %460, %459 ], [ %582, %619 ]
  %628 = phi float [ %340, %459 ], [ %588, %619 ]
  %629 = phi float [ %341, %459 ], [ %625, %619 ]
  %630 = phi float [ %342, %459 ], [ %578, %619 ]
  %631 = phi float [ %343, %459 ], [ %579, %619 ]
  %632 = phi float [ %344, %459 ], [ %580, %619 ]
  %633 = phi float [ %349, %459 ], [ %589, %619 ]
  %634 = phi float [ %350, %459 ], [ %620, %619 ]
  %635 = phi float [ %351, %459 ], [ %621, %619 ]
  %636 = phi float [ %352, %459 ], [ %622, %619 ]
  %637 = phi float [ %353, %459 ], [ %623, %619 ]
  %638 = phi i32 [ %354, %459 ], [ %624, %619 ]
  %639 = fmul fast float %382, %271
  %640 = fmul fast float %382, %272
  %641 = fmul fast float %382, %273
  %642 = fadd fast float %639, %345
  %643 = fadd fast float %640, %346
  %644 = fadd fast float %641, %347
  %645 = fcmp fast olt float %627, %320
  %646 = extractvalue %dx.types.CBufRet.f32 %445, 2
  %647 = fcmp fast olt float %646, %629
  %648 = and i1 %645, %647
  br i1 %648, label %339, label %649

; <label>:649                                     ; preds = %626
  br label %650

; <label>:650                                     ; preds = %649, %316
  %651 = phi float [ 0.000000e+00, %316 ], [ %628, %649 ]
  %652 = phi float [ 1.000000e+00, %316 ], [ %629, %649 ]
  %653 = phi float [ 0.000000e+00, %316 ], [ %630, %649 ]
  %654 = phi float [ 0.000000e+00, %316 ], [ %631, %649 ]
  %655 = phi float [ 0.000000e+00, %316 ], [ %632, %649 ]
  %656 = phi float [ 0.000000e+00, %316 ], [ %633, %649 ]
  %657 = phi float [ 0.000000e+00, %316 ], [ %634, %649 ]
  %658 = phi float [ 0.000000e+00, %316 ], [ %635, %649 ]
  %659 = phi float [ 0.000000e+00, %316 ], [ %636, %649 ]
  %660 = phi float [ 0.000000e+00, %316 ], [ %637, %649 ]
  %661 = phi i32 [ 0, %316 ], [ %638, %649 ]
  %662 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.i32 %662, 0
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %706, label %665, !dx.controlflow.hints !38

; <label>:665                                     ; preds = %650
  %666 = icmp eq i32 %661, 0
  br i1 %666, label %705, label %667, !dx.controlflow.hints !39

; <label>:667                                     ; preds = %665
  %668 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.i32 %668, 2
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %677, label %671, !dx.controlflow.hints !40

; <label>:671                                     ; preds = %667
  %672 = fsub fast float 1.000000e+00, %652
  %673 = fdiv fast float %657, %672
  %674 = fdiv fast float %658, %672
  %675 = fdiv fast float %659, %672
  %676 = fdiv fast float %660, %672
  br label %682

; <label>:677                                     ; preds = %667
  %678 = fadd fast float %657, %652
  %679 = fadd fast float %658, %652
  %680 = fadd fast float %659, %652
  %681 = fadd fast float %660, %652
  br label %682

; <label>:682                                     ; preds = %677, %671
  %683 = phi float [ %673, %671 ], [ %678, %677 ]
  %684 = phi float [ %674, %671 ], [ %679, %677 ]
  %685 = phi float [ %675, %671 ], [ %680, %677 ]
  %686 = phi float [ %676, %671 ], [ %681, %677 ]
  %687 = call float @dx.op.binary.f32(i32 35, float %683, float -1.000000e+00)  ; FMax(a,b)
  %688 = call float @dx.op.binary.f32(i32 35, float %684, float -1.000000e+00)  ; FMax(a,b)
  %689 = call float @dx.op.binary.f32(i32 35, float %685, float -1.000000e+00)  ; FMax(a,b)
  %690 = call float @dx.op.binary.f32(i32 35, float %686, float -1.000000e+00)  ; FMax(a,b)
  %691 = call float @dx.op.binary.f32(i32 36, float %687, float 1.000000e+00)  ; FMin(a,b)
  %692 = call float @dx.op.binary.f32(i32 36, float %688, float 1.000000e+00)  ; FMin(a,b)
  %693 = call float @dx.op.binary.f32(i32 36, float %689, float 1.000000e+00)  ; FMin(a,b)
  %694 = call float @dx.op.binary.f32(i32 36, float %690, float 1.000000e+00)  ; FMin(a,b)
  %695 = fmul fast float %691, 1.500000e+00
  %696 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %693, float %695)  ; FMad(a,b,c)
  %697 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %692, float 0.000000e+00)  ; FMad(a,b,c)
  %698 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %694, float %697)  ; FMad(a,b,c)
  %699 = fmul fast float %691, 0x3FEBB67AE0000000
  %700 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %693, float %699)  ; FMad(a,b,c)
  %701 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %692, float 0.000000e+00)  ; FMad(a,b,c)
  %702 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %694, float %701)  ; FMad(a,b,c)
  %703 = fadd fast float %696, 5.000000e-01
  %704 = fadd fast float %700, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %13, i32 %14, i32 0, float %703, float %698, float %704, float %702, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %706

; <label>:705                                     ; preds = %665
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %13, i32 %14, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %706

; <label>:706                                     ; preds = %705, %682, %650
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 2
  %709 = fsub fast float %652, %708
  %710 = fdiv fast float %709, %708
  %711 = call float @dx.op.unary.f32(i32 7, float %710)  ; Saturate(value)
  %712 = fmul fast float %711, 2.000000e+00
  %713 = fsub fast float 3.000000e+00, %712
  %714 = fmul fast float %711, %711
  %715 = fmul fast float %714, %652
  %716 = fmul fast float %715, %713
  %717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %718 = extractvalue %dx.types.CBufRet.f32 %717, 0
  %719 = extractvalue %dx.types.CBufRet.f32 %717, 1
  %720 = extractvalue %dx.types.CBufRet.f32 %717, 2
  %721 = call float @dx.op.dot3.f32(i32 55, float %271, float %272, float %273, float %718, float %719, float %720)  ; Dot3(ax,ay,az,bx,by,bz)
  %722 = fmul fast float %721, %651
  %723 = fcmp fast ogt float %656, 0.000000e+00
  %724 = fdiv fast float 1.000000e+00, %656
  %725 = fmul fast float %722, %724
  %726 = select i1 %723, float %725, float %282
  %727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.f32 %727, 0
  %729 = extractvalue %dx.types.CBufRet.f32 %727, 1
  %730 = extractvalue %dx.types.CBufRet.f32 %727, 2
  %731 = fmul fast float %728, %235
  %732 = fmul fast float %729, %235
  %733 = fmul fast float %730, %235
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 0
  %736 = extractvalue %dx.types.CBufRet.f32 %734, 1
  %737 = extractvalue %dx.types.CBufRet.f32 %734, 2
  %738 = fmul fast float %735, %236
  %739 = fmul fast float %736, %236
  %740 = fmul fast float %737, %236
  %741 = fadd fast float %738, %731
  %742 = fadd fast float %739, %732
  %743 = fadd fast float %740, %733
  %744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %745 = extractvalue %dx.types.CBufRet.f32 %744, 0
  %746 = extractvalue %dx.types.CBufRet.f32 %744, 1
  %747 = extractvalue %dx.types.CBufRet.f32 %744, 2
  %748 = fadd fast float %741, %745
  %749 = fadd fast float %742, %746
  %750 = fadd fast float %743, %747
  %751 = fmul fast float %748, %726
  %752 = fmul fast float %749, %726
  %753 = fmul fast float %750, %726
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 0
  %756 = extractvalue %dx.types.CBufRet.f32 %754, 1
  %757 = extractvalue %dx.types.CBufRet.f32 %754, 2
  %758 = extractvalue %dx.types.CBufRet.f32 %754, 3
  %759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.f32 %759, 0
  %761 = extractvalue %dx.types.CBufRet.f32 %759, 1
  %762 = extractvalue %dx.types.CBufRet.f32 %759, 2
  %763 = extractvalue %dx.types.CBufRet.f32 %759, 3
  %764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.f32 %764, 0
  %766 = extractvalue %dx.types.CBufRet.f32 %764, 1
  %767 = extractvalue %dx.types.CBufRet.f32 %764, 2
  %768 = extractvalue %dx.types.CBufRet.f32 %764, 3
  %769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.f32 %769, 0
  %771 = extractvalue %dx.types.CBufRet.f32 %769, 1
  %772 = extractvalue %dx.types.CBufRet.f32 %769, 2
  %773 = extractvalue %dx.types.CBufRet.f32 %769, 3
  %774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %775 = extractvalue %dx.types.CBufRet.f32 %774, 3
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 3
  %778 = extractvalue %dx.types.CBufRet.f32 %776, 0
  %779 = extractvalue %dx.types.CBufRet.f32 %776, 1
  %780 = extractvalue %dx.types.CBufRet.f32 %776, 2
  %781 = fcmp fast olt float %780, -5.000000e-01
  %782 = call float @dx.op.dot3.f32(i32 55, float %751, float %752, float %753, float %751, float %752, float %753)  ; Dot3(ax,ay,az,bx,by,bz)
  %783 = call float @dx.op.unary.f32(i32 25, float %782)  ; Rsqrt(value)
  %784 = fmul fast float %783, %782
  %785 = fmul fast float %783, %751
  %786 = fmul fast float %783, %752
  %787 = fmul fast float %783, %753
  %788 = fadd fast float %784, %758
  %789 = call float @dx.op.dot3.f32(i32 55, float %785, float %786, float %787, float %755, float %756, float %757)  ; Dot3(ax,ay,az,bx,by,bz)
  %790 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %791 = extractvalue %dx.types.CBufRet.i32 %790, 1
  %792 = and i32 %791, 1
  %793 = icmp ne i32 %792, 0
  %794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %795 = extractvalue %dx.types.CBufRet.f32 %794, 2
  %796 = fcmp fast ogt float %795, 0.000000e+00
  %797 = and i1 %793, %796
  br i1 %797, label %798, label %1204, !dx.controlflow.hints !41

; <label>:798                                     ; preds = %706
  %799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %800 = extractvalue %dx.types.CBufRet.f32 %799, 3
  %801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %802 = extractvalue %dx.types.CBufRet.f32 %801, 2
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 2
  %805 = fsub fast float %802, %804
  %806 = and i32 %791, 2
  %807 = extractvalue %dx.types.CBufRet.i32 %790, 0
  %808 = call i32 @dx.op.binary.i32(i32 40, i32 %807, i32 3)  ; UMin(a,b)
  %809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.f32 %809, 0
  %811 = extractvalue %dx.types.CBufRet.f32 %809, 1
  %812 = extractvalue %dx.types.CBufRet.f32 %803, 0
  %813 = extractvalue %dx.types.CBufRet.f32 %803, 1
  %814 = fsub fast float %810, %812
  %815 = fsub fast float %811, %813
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 0
  %818 = fcmp fast ogt float %817, 0.000000e+00
  %819 = fsub fast float -0.000000e+00, %814
  %820 = fsub fast float -0.000000e+00, %815
  %821 = call float @dx.op.dot2.f32(i32 54, float %785, float %786, float %785, float %786)  ; Dot2(ax,ay,bx,by)
  %822 = call float @dx.op.dot2.f32(i32 54, float %785, float %786, float %819, float %820)  ; Dot2(ax,ay,bx,by)
  %823 = fmul fast float %822, 2.000000e+00
  %824 = call float @dx.op.dot2.f32(i32 54, float %819, float %820, float %819, float %820)  ; Dot2(ax,ay,bx,by)
  %825 = fmul fast float %817, %817
  %826 = fsub fast float %824, %825
  %827 = fmul fast float %823, %823
  %828 = fmul fast float %821, 4.000000e+00
  %829 = fmul fast float %828, %826
  %830 = fsub fast float %827, %829
  %831 = fcmp fast ogt float %830, 0.000000e+00
  br i1 %831, label %832, label %847, !dx.controlflow.hints !42

; <label>:832                                     ; preds = %798
  %833 = fcmp fast ogt float %823, 0.000000e+00
  %834 = call float @dx.op.unary.f32(i32 24, float %830)  ; Sqrt(value)
  %835 = fsub fast float -0.000000e+00, %834
  %836 = select i1 %833, float %834, float %835
  %837 = fadd fast float %836, %823
  %838 = fmul float %837, -5.000000e-01
  %839 = fdiv fast float %838, %821
  %840 = call float @dx.op.binary.f32(i32 35, float %839, float 0.000000e+00)  ; FMax(a,b)
  %841 = call float @dx.op.binary.f32(i32 36, float %784, float %840)  ; FMin(a,b)
  %842 = fdiv fast float %826, %838
  %843 = call float @dx.op.binary.f32(i32 35, float %842, float 0.000000e+00)  ; FMax(a,b)
  %844 = call float @dx.op.binary.f32(i32 36, float %784, float %843)  ; FMin(a,b)
  %845 = call float @dx.op.binary.f32(i32 36, float %841, float %844)  ; FMin(a,b)
  %846 = call float @dx.op.binary.f32(i32 35, float %841, float %844)  ; FMax(a,b)
  br label %847

; <label>:847                                     ; preds = %832, %798
  %848 = phi float [ %846, %832 ], [ -1.000000e+00, %798 ]
  %849 = phi float [ %845, %832 ], [ -1.000000e+00, %798 ]
  %850 = phi i1 [ true, %832 ], [ false, %798 ]
  %851 = and i1 %818, %850
  br i1 %851, label %852, label %854, !dx.controlflow.hints !43

; <label>:852                                     ; preds = %847
  %853 = fcmp fast oeq float %849, %848
  br i1 %853, label %1157, label %855, !dx.controlflow.hints !44

; <label>:854                                     ; preds = %847
  br i1 %818, label %1157, label %855, !dx.controlflow.hints !45

; <label>:855                                     ; preds = %854, %852
  %856 = phi float [ %784, %854 ], [ %848, %852 ]
  %857 = phi float [ 0.000000e+00, %854 ], [ %849, %852 ]
  %858 = icmp ne i32 %806, 0
  %859 = fmul fast float %856, %787
  %860 = fadd fast float %859, %800
  %861 = fmul fast float %860, %856
  %862 = select i1 %858, float 0.000000e+00, float %861
  %863 = fcmp fast oeq float %787, 0.000000e+00
  %864 = fdiv fast float %805, %787
  %865 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %864)  ; FMax(a,b)
  %866 = select i1 %863, float %856, float %865
  %867 = call float @dx.op.binary.f32(i32 36, float %856, float %866)  ; FMin(a,b)
  %868 = fcmp fast ogt float %787, 0.000000e+00
  %869 = fcmp fast olt float %805, 0.000000e+00
  br i1 %868, label %870, label %927, !dx.controlflow.hints !46

; <label>:870                                     ; preds = %855
  %871 = icmp eq i32 %806, 0
  br i1 %869, label %872, label %916, !dx.controlflow.hints !47

; <label>:872                                     ; preds = %870
  %873 = select i1 %871, float %856, float 0.000000e+00
  %874 = fsub fast float -0.000000e+00, %873
  %875 = call float @dx.op.unary.f32(i32 6, float %874)  ; FAbs(value)
  %876 = fmul fast float %873, %787
  %877 = fadd fast float %876, %800
  %878 = fmul fast float %875, %877
  %879 = fsub fast float %862, %878
  %880 = fsub fast float %856, %875
  %881 = select i1 %871, float %880, float 0.000000e+00
  %882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %883 = extractvalue %dx.types.CBufRet.f32 %882, 0
  %884 = extractvalue %dx.types.CBufRet.f32 %882, 1
  %885 = extractvalue %dx.types.CBufRet.f32 %882, 2
  %886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %887 = extractvalue %dx.types.CBufRet.f32 %886, 0
  %888 = extractvalue %dx.types.CBufRet.f32 %886, 1
  %889 = extractvalue %dx.types.CBufRet.f32 %886, 2
  %890 = extractvalue %dx.types.CBufRet.f32 %886, 3
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 3
  %893 = call float @dx.op.binary.f32(i32 36, float %879, float %892)  ; FMin(a,b)
  %894 = fmul fast float %890, %881
  %895 = call float @dx.op.unary.f32(i32 7, float %894)  ; Saturate(value)
  %896 = fsub fast float %887, %883
  %897 = fsub fast float %888, %884
  %898 = fsub fast float %889, %885
  %899 = fmul fast float %895, %896
  %900 = fmul fast float %895, %897
  %901 = fmul fast float %895, %898
  %902 = fadd fast float %899, %883
  %903 = fadd fast float %900, %884
  %904 = fadd fast float %901, %885
  %905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.f32 %905, 0
  %907 = extractvalue %dx.types.CBufRet.f32 %905, 1
  %908 = fadd fast float %907, %906
  %909 = call float @dx.op.unary.f32(i32 7, float %908)  ; Saturate(value)
  %910 = extractvalue %dx.types.CBufRet.f32 %905, 2
  %911 = extractvalue %dx.types.CBufRet.f32 %905, 3
  %912 = fadd fast float %911, %910
  %913 = call float @dx.op.unary.f32(i32 7, float %912)  ; Saturate(value)
  %914 = fmul fast float %909, %893
  %915 = fmul fast float %914, %913
  br label %1157

; <label>:916                                     ; preds = %870
  br i1 %871, label %917, label %938, !dx.controlflow.hints !48

; <label>:917                                     ; preds = %916
  %918 = call float @dx.op.binary.f32(i32 36, float %867, float %857)  ; FMin(a,b)
  %919 = fsub fast float %867, %918
  %920 = fsub fast float %919, %856
  %921 = call float @dx.op.unary.f32(i32 6, float %920)  ; FAbs(value)
  %922 = fadd fast float %919, %856
  %923 = fmul fast float %922, %787
  %924 = fadd fast float %923, %800
  %925 = fmul fast float %924, %921
  %926 = fsub fast float %862, %925
  br label %938

; <label>:927                                     ; preds = %855
  br i1 %869, label %928, label %938, !dx.controlflow.hints !49

; <label>:928                                     ; preds = %927
  %929 = call float @dx.op.binary.f32(i32 35, float %857, float %867)  ; FMax(a,b)
  %930 = icmp eq i32 %806, 0
  %931 = select i1 %930, float %867, float 0.000000e+00
  %932 = fsub fast float -0.000000e+00, %931
  %933 = call float @dx.op.unary.f32(i32 6, float %932)  ; FAbs(value)
  %934 = fmul fast float %931, %787
  %935 = fadd fast float %934, %800
  %936 = fmul fast float %933, %935
  %937 = fsub fast float %862, %936
  br label %938

; <label>:938                                     ; preds = %928, %927, %917, %916
  %939 = phi float [ %857, %916 ], [ %857, %917 ], [ %929, %928 ], [ %857, %927 ]
  %940 = phi float [ 0.000000e+00, %916 ], [ %921, %917 ], [ %933, %928 ], [ 0.000000e+00, %927 ]
  %941 = phi float [ %862, %916 ], [ %926, %917 ], [ %937, %928 ], [ %862, %927 ]
  %942 = phi float [ %867, %916 ], [ %867, %917 ], [ %856, %928 ], [ %856, %927 ]
  %943 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 0
  store float -1.000000e+00, float* %943, align 4, !tbaa !50, !noalias !54
  %944 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 1
  store float -1.000000e+00, float* %944, align 4, !tbaa !50, !noalias !54
  %945 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 2
  store float -1.000000e+00, float* %945, align 4, !tbaa !50, !noalias !54
  %946 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 0
  store float -1.000000e+00, float* %946, align 4, !tbaa !50, !noalias !54
  %947 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 1
  store float -1.000000e+00, float* %947, align 4, !tbaa !50, !noalias !54
  %948 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 2
  store float -1.000000e+00, float* %948, align 4, !tbaa !50, !noalias !54
  %949 = icmp sgt i32 %808, 0
  br i1 %949, label %950, label %1011

; <label>:950                                     ; preds = %938
  br label %951

; <label>:951                                     ; preds = %1000, %950
  %952 = phi i32 [ %1001, %1000 ], [ 0, %950 ]
  %953 = phi i32 [ %1002, %1000 ], [ 0, %950 ]
  %954 = add nuw i32 %953, 171
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %954)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 0
  %957 = extractvalue %dx.types.CBufRet.f32 %955, 1
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 0
  %960 = extractvalue %dx.types.CBufRet.f32 %958, 1
  %961 = fsub fast float %956, %959
  %962 = fsub fast float %957, %960
  %963 = extractvalue %dx.types.CBufRet.f32 %955, 2
  %964 = fsub fast float -0.000000e+00, %961
  %965 = fsub fast float -0.000000e+00, %962
  %966 = call float @dx.op.dot2.f32(i32 54, float %785, float %786, float %964, float %965)  ; Dot2(ax,ay,bx,by)
  %967 = fmul fast float %966, 2.000000e+00
  %968 = call float @dx.op.dot2.f32(i32 54, float %964, float %965, float %964, float %965)  ; Dot2(ax,ay,bx,by)
  %969 = fmul fast float %963, %963
  %970 = fsub fast float %968, %969
  %971 = fmul fast float %967, %967
  %972 = fmul fast float %828, %970
  %973 = fsub fast float %971, %972
  %974 = fcmp fast ogt float %973, 0.000000e+00
  br i1 %974, label %975, label %990, !dx.controlflow.hints !42

; <label>:975                                     ; preds = %951
  %976 = fcmp fast ogt float %967, 0.000000e+00
  %977 = call float @dx.op.unary.f32(i32 24, float %973)  ; Sqrt(value)
  %978 = fsub fast float -0.000000e+00, %977
  %979 = select i1 %976, float %977, float %978
  %980 = fadd fast float %979, %967
  %981 = fmul float %980, -5.000000e-01
  %982 = fdiv fast float %981, %821
  %983 = call float @dx.op.binary.f32(i32 35, float %982, float 0.000000e+00)  ; FMax(a,b)
  %984 = call float @dx.op.binary.f32(i32 36, float %856, float %983)  ; FMin(a,b)
  %985 = fdiv fast float %970, %981
  %986 = call float @dx.op.binary.f32(i32 35, float %985, float 0.000000e+00)  ; FMax(a,b)
  %987 = call float @dx.op.binary.f32(i32 36, float %856, float %986)  ; FMin(a,b)
  %988 = call float @dx.op.binary.f32(i32 36, float %984, float %987)  ; FMin(a,b)
  %989 = call float @dx.op.binary.f32(i32 35, float %984, float %987)  ; FMax(a,b)
  br label %990

; <label>:990                                     ; preds = %975, %951
  %991 = phi float [ %989, %975 ], [ -1.000000e+00, %951 ]
  %992 = phi float [ %988, %975 ], [ -1.000000e+00, %951 ]
  %993 = phi i1 [ true, %975 ], [ false, %951 ]
  br i1 %993, label %994, label %1000, !dx.controlflow.hints !65

; <label>:994                                     ; preds = %990
  %995 = call float @dx.op.binary.f32(i32 35, float %939, float %992)  ; FMax(a,b)
  %996 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 %953
  store float %995, float* %996, align 4, !tbaa !50, !noalias !54
  %997 = call float @dx.op.binary.f32(i32 35, float %939, float %991)  ; FMax(a,b)
  %998 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 %953
  store float %997, float* %998, align 4, !tbaa !50, !noalias !54
  %999 = add nsw i32 %952, 1
  br label %1000

; <label>:1000                                    ; preds = %994, %990
  %1001 = phi i32 [ %999, %994 ], [ %952, %990 ]
  %1002 = add nuw nsw i32 %953, 1
  %1003 = icmp eq i32 %1002, %808
  br i1 %1003, label %1004, label %951

; <label>:1004                                    ; preds = %1000
  %1005 = load float, float* %945, align 4, !tbaa !50, !alias.scope !66, !noalias !69
  %1006 = load float, float* %944, align 4, !tbaa !50, !alias.scope !72, !noalias !73
  %1007 = load float, float* %943, align 4, !tbaa !50, !alias.scope !74, !noalias !75
  %1008 = load float, float* %948, align 4, !tbaa !50, !alias.scope !76, !noalias !79
  %1009 = load float, float* %947, align 4, !tbaa !50, !alias.scope !82, !noalias !83
  %1010 = load float, float* %946, align 4, !tbaa !50, !alias.scope !84, !noalias !85
  br label %1011

; <label>:1011                                    ; preds = %1004, %938
  %1012 = phi float [ -1.000000e+00, %938 ], [ %1010, %1004 ]
  %1013 = phi float [ -1.000000e+00, %938 ], [ %1009, %1004 ]
  %1014 = phi float [ -1.000000e+00, %938 ], [ %1008, %1004 ]
  %1015 = phi float [ -1.000000e+00, %938 ], [ %1007, %1004 ]
  %1016 = phi float [ -1.000000e+00, %938 ], [ %1006, %1004 ]
  %1017 = phi float [ -1.000000e+00, %938 ], [ %1005, %1004 ]
  %1018 = phi i32 [ 0, %938 ], [ %1001, %1004 ]
  %1019 = call float @dx.op.binary.f32(i32 36, float %1016, float %1017)  ; FMin(a,b)
  %1020 = call float @dx.op.binary.f32(i32 36, float %1015, float %1019)  ; FMin(a,b)
  %1021 = call float @dx.op.binary.f32(i32 35, float %1015, float %1016)  ; FMax(a,b)
  %1022 = call float @dx.op.binary.f32(i32 36, float %1021, float %1017)  ; FMin(a,b)
  %1023 = call float @dx.op.binary.f32(i32 36, float %1015, float %1016)  ; FMin(a,b)
  %1024 = call float @dx.op.binary.f32(i32 35, float %1023, float %1022)  ; FMax(a,b)
  %1025 = call float @dx.op.binary.f32(i32 35, float %1016, float %1017)  ; FMax(a,b)
  %1026 = call float @dx.op.binary.f32(i32 35, float %1015, float %1025)  ; FMax(a,b)
  store float %1020, float* %943, align 4, !tbaa !50, !alias.scope !74, !noalias !75
  store float %1024, float* %944, align 4, !tbaa !50, !alias.scope !72, !noalias !73
  store float %1026, float* %945, align 4, !tbaa !50, !alias.scope !66, !noalias !69
  %1027 = call float @dx.op.binary.f32(i32 36, float %1013, float %1014)  ; FMin(a,b)
  %1028 = call float @dx.op.binary.f32(i32 36, float %1012, float %1027)  ; FMin(a,b)
  %1029 = call float @dx.op.binary.f32(i32 35, float %1012, float %1013)  ; FMax(a,b)
  %1030 = call float @dx.op.binary.f32(i32 36, float %1029, float %1014)  ; FMin(a,b)
  %1031 = call float @dx.op.binary.f32(i32 36, float %1012, float %1013)  ; FMin(a,b)
  %1032 = call float @dx.op.binary.f32(i32 35, float %1031, float %1030)  ; FMax(a,b)
  %1033 = call float @dx.op.binary.f32(i32 35, float %1013, float %1014)  ; FMax(a,b)
  %1034 = call float @dx.op.binary.f32(i32 35, float %1012, float %1033)  ; FMax(a,b)
  store float %1028, float* %946, align 4, !tbaa !50, !alias.scope !84, !noalias !85
  store float %1032, float* %947, align 4, !tbaa !50, !alias.scope !82, !noalias !83
  store float %1034, float* %948, align 4, !tbaa !50, !alias.scope !76, !noalias !79
  %1035 = sub nsw i32 3, %1018
  %1036 = icmp sgt i32 %1035, 2
  br i1 %1036, label %1037, label %1075, !dx.controlflow.hints !86

; <label>:1037                                    ; preds = %1011
  %1038 = icmp eq i32 %806, 0
  %1039 = fsub fast float %856, %940
  %1040 = select i1 %1038, float %1039, float %940
  %1041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.f32 %1041, 0
  %1043 = extractvalue %dx.types.CBufRet.f32 %1041, 1
  %1044 = extractvalue %dx.types.CBufRet.f32 %1041, 2
  %1045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.CBufRet.f32 %1045, 1
  %1048 = extractvalue %dx.types.CBufRet.f32 %1045, 2
  %1049 = extractvalue %dx.types.CBufRet.f32 %1045, 3
  %1050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1050, 3
  %1052 = call float @dx.op.binary.f32(i32 36, float %941, float %1051)  ; FMin(a,b)
  %1053 = fmul fast float %1049, %1040
  %1054 = call float @dx.op.unary.f32(i32 7, float %1053)  ; Saturate(value)
  %1055 = fsub fast float %1046, %1042
  %1056 = fsub fast float %1047, %1043
  %1057 = fsub fast float %1048, %1044
  %1058 = fmul fast float %1054, %1055
  %1059 = fmul fast float %1054, %1056
  %1060 = fmul fast float %1054, %1057
  %1061 = fadd fast float %1058, %1042
  %1062 = fadd fast float %1059, %1043
  %1063 = fadd fast float %1060, %1044
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 0
  %1066 = extractvalue %dx.types.CBufRet.f32 %1064, 1
  %1067 = fadd fast float %1066, %1065
  %1068 = call float @dx.op.unary.f32(i32 7, float %1067)  ; Saturate(value)
  %1069 = extractvalue %dx.types.CBufRet.f32 %1064, 2
  %1070 = extractvalue %dx.types.CBufRet.f32 %1064, 3
  %1071 = fadd fast float %1070, %1069
  %1072 = call float @dx.op.unary.f32(i32 7, float %1071)  ; Saturate(value)
  %1073 = fmul fast float %1068, %1052
  %1074 = fmul fast float %1073, %1072
  br label %1157

; <label>:1075                                    ; preds = %1011
  %1076 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 %1035
  %1077 = load float, float* %1076, align 4, !tbaa !50, !noalias !54
  %1078 = fcmp fast olt float %1077, %942
  %1079 = icmp sgt i32 %1018, 0
  %1080 = and i1 %1079, %1078
  br i1 %1080, label %1081, label %1118

; <label>:1081                                    ; preds = %1075
  br label %1082

; <label>:1082                                    ; preds = %1111, %1081
  %1083 = phi float [ %1112, %1111 ], [ %940, %1081 ]
  %1084 = phi float [ %1113, %1111 ], [ %941, %1081 ]
  %1085 = phi float [ %1093, %1111 ], [ %1077, %1081 ]
  %1086 = phi i32 [ %1090, %1111 ], [ %1035, %1081 ]
  %1087 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 %1086
  %1088 = load float, float* %1087, align 4, !tbaa !50, !noalias !54
  %1089 = icmp slt i32 %1086, 2
  %1090 = add nsw i32 %1086, 1
  %1091 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 %1090
  %1092 = load float, float* %1091, align 4, !tbaa !50, !noalias !54
  %1093 = select i1 %1089, float %1092, float %856
  %1094 = call float @dx.op.binary.f32(i32 36, float %1093, float %1088)  ; FMin(a,b)
  %1095 = call float @dx.op.binary.f32(i32 36, float %942, float %1094)  ; FMin(a,b)
  %1096 = icmp eq i32 %806, 0
  %1097 = fadd fast float %1095, %1085
  %1098 = fmul fast float %1097, %787
  %1099 = fadd fast float %1098, %800
  br i1 %1096, label %1105, label %1100, !dx.controlflow.hints !87

; <label>:1100                                    ; preds = %1082
  %1101 = fsub fast float %1095, %1085
  %1102 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1101)  ; FMax(a,b)
  %1103 = fmul fast float %1102, %1099
  %1104 = fadd fast float %1103, %1084
  br label %1111

; <label>:1105                                    ; preds = %1082
  %1106 = fsub fast float %1085, %1095
  %1107 = call float @dx.op.unary.f32(i32 6, float %1106)  ; FAbs(value)
  %1108 = fadd fast float %1107, %1083
  %1109 = fmul fast float %1107, %1099
  %1110 = fsub fast float %1084, %1109
  br label %1111

; <label>:1111                                    ; preds = %1105, %1100
  %1112 = phi float [ %1102, %1100 ], [ %1108, %1105 ]
  %1113 = phi float [ %1104, %1100 ], [ %1110, %1105 ]
  %1114 = fcmp fast olt float %1093, %942
  %1115 = icmp slt i32 %1090, 3
  %1116 = and i1 %1115, %1114
  br i1 %1116, label %1082, label %1117

; <label>:1117                                    ; preds = %1111
  br label %1118

; <label>:1118                                    ; preds = %1117, %1075
  %1119 = phi float [ %940, %1075 ], [ %1112, %1117 ]
  %1120 = phi float [ %941, %1075 ], [ %1113, %1117 ]
  %1121 = fsub fast float %856, %1119
  %1122 = select i1 %858, float %1119, float %1121
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.CBufRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.CBufRet.f32 %1123, 2
  %1127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1128 = extractvalue %dx.types.CBufRet.f32 %1127, 0
  %1129 = extractvalue %dx.types.CBufRet.f32 %1127, 1
  %1130 = extractvalue %dx.types.CBufRet.f32 %1127, 2
  %1131 = extractvalue %dx.types.CBufRet.f32 %1127, 3
  %1132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1133 = extractvalue %dx.types.CBufRet.f32 %1132, 3
  %1134 = call float @dx.op.binary.f32(i32 36, float %1120, float %1133)  ; FMin(a,b)
  %1135 = fmul fast float %1131, %1122
  %1136 = call float @dx.op.unary.f32(i32 7, float %1135)  ; Saturate(value)
  %1137 = fsub fast float %1128, %1124
  %1138 = fsub fast float %1129, %1125
  %1139 = fsub fast float %1130, %1126
  %1140 = fmul fast float %1136, %1137
  %1141 = fmul fast float %1136, %1138
  %1142 = fmul fast float %1136, %1139
  %1143 = fadd fast float %1140, %1124
  %1144 = fadd fast float %1141, %1125
  %1145 = fadd fast float %1142, %1126
  %1146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1147 = extractvalue %dx.types.CBufRet.f32 %1146, 0
  %1148 = extractvalue %dx.types.CBufRet.f32 %1146, 1
  %1149 = fadd fast float %1148, %1147
  %1150 = call float @dx.op.unary.f32(i32 7, float %1149)  ; Saturate(value)
  %1151 = extractvalue %dx.types.CBufRet.f32 %1146, 2
  %1152 = extractvalue %dx.types.CBufRet.f32 %1146, 3
  %1153 = fadd fast float %1152, %1151
  %1154 = call float @dx.op.unary.f32(i32 7, float %1153)  ; Saturate(value)
  %1155 = fmul fast float %1150, %1134
  %1156 = fmul fast float %1155, %1154
  br label %1157

; <label>:1157                                    ; preds = %1118, %1037, %872, %854, %852
  %1158 = phi float [ %881, %872 ], [ %1040, %1037 ], [ %1122, %1118 ], [ 0.000000e+00, %852 ], [ 0.000000e+00, %854 ]
  %1159 = phi float [ %915, %872 ], [ %1074, %1037 ], [ %1156, %1118 ], [ 0.000000e+00, %852 ], [ 0.000000e+00, %854 ]
  %1160 = phi float [ %902, %872 ], [ %1061, %1037 ], [ %1143, %1118 ], [ 0.000000e+00, %852 ], [ 0.000000e+00, %854 ]
  %1161 = phi float [ %903, %872 ], [ %1062, %1037 ], [ %1144, %1118 ], [ 0.000000e+00, %852 ], [ 0.000000e+00, %854 ]
  %1162 = phi float [ %904, %872 ], [ %1063, %1037 ], [ %1145, %1118 ], [ 0.000000e+00, %852 ], [ 0.000000e+00, %854 ]
  %1163 = fmul fast float %795, %1159
  %1164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1165 = extractvalue %dx.types.CBufRet.f32 %1164, 2
  %1166 = fsub fast float %802, %1165
  %1167 = fcmp fast olt float %1163, -2.000000e+01
  %1168 = call float @dx.op.unary.f32(i32 21, float %1163)  ; Exp(value)
  %1169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1170 = extractvalue %dx.types.CBufRet.f32 %1169, 2
  %1171 = extractvalue %dx.types.CBufRet.f32 %1169, 3
  %1172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1173 = extractvalue %dx.types.CBufRet.f32 %1172, 2
  %1174 = fmul fast float %1171, %1166
  %1175 = call float @dx.op.unary.f32(i32 7, float %1174)  ; Saturate(value)
  %1176 = fsub fast float 1.000000e+00, %1175
  %1177 = fmul fast float %787, 5.000000e-01
  %1178 = fadd fast float %1177, 5.000000e-01
  %1179 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1180 = fsub fast float 1.000000e+00, %1179
  %1181 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1176)  ; FMax(a,b)
  %1182 = fdiv fast float %1180, %1181
  %1183 = fsub fast float %1166, %753
  %1184 = call float @dx.op.unary.f32(i32 6, float %1183)  ; FAbs(value)
  %1185 = fmul fast float %1184, %1170
  %1186 = call float @dx.op.unary.f32(i32 7, float %1182)  ; Saturate(value)
  %1187 = fsub fast float 1.000000e+00, %1185
  %1188 = fmul fast float %1187, %1186
  %1189 = fadd fast float %1188, %1185
  %1190 = fmul fast float %1173, %1166
  %1191 = call float @dx.op.unary.f32(i32 7, float %1190)  ; Saturate(value)
  %1192 = fsub fast float 1.000000e+00, %1189
  %1193 = fmul fast float %1192, %1191
  %1194 = fadd fast float %1193, %1189
  %1195 = call float @dx.op.unary.f32(i32 7, float %1194)  ; Saturate(value)
  %1196 = fadd fast float %1168, -1.000000e+00
  %1197 = select i1 %1167, float -1.000000e+00, float %1196
  %1198 = fmul fast float %1195, %1197
  %1199 = fadd fast float %1198, 1.000000e+00
  %1200 = fsub fast float -0.000000e+00, %1198
  %1201 = fmul fast float %1160, %1200
  %1202 = fmul fast float %1161, %1200
  %1203 = fmul fast float %1162, %1200
  br label %1204

; <label>:1204                                    ; preds = %1157, %706
  %1205 = phi float [ %1158, %1157 ], [ 0.000000e+00, %706 ]
  %1206 = phi float [ %1199, %1157 ], [ 1.000000e+00, %706 ]
  %1207 = phi float [ %1201, %1157 ], [ 0.000000e+00, %706 ]
  %1208 = phi float [ %1202, %1157 ], [ 0.000000e+00, %706 ]
  %1209 = phi float [ %1203, %1157 ], [ 0.000000e+00, %706 ]
  %1210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1211 = extractvalue %dx.types.CBufRet.f32 %1210, 1
  %1212 = fsub fast float 1.000000e+00, %1206
  %1213 = fmul fast float %1212, %788
  %1214 = fmul fast float %1213, %1211
  %1215 = fsub fast float %788, %1214
  br i1 %781, label %1216, label %1245, !dx.controlflow.hints !88

; <label>:1216                                    ; preds = %1204
  %1217 = fmul fast float %789, %778
  %1218 = fadd fast float %1217, %779
  %1219 = call float @dx.op.unary.f32(i32 7, float %1218)  ; Saturate(value)
  %1220 = fmul fast float %760, %1215
  %1221 = fsub fast float -0.000000e+00, %1220
  %1222 = fmul fast float %761, %1215
  %1223 = fsub fast float -0.000000e+00, %1222
  %1224 = call float @dx.op.unary.f32(i32 21, float %1221)  ; Exp(value)
  %1225 = call float @dx.op.unary.f32(i32 21, float %1223)  ; Exp(value)
  %1226 = call float @dx.op.binary.f32(i32 35, float %768, float %1224)  ; FMax(a,b)
  %1227 = call float @dx.op.binary.f32(i32 35, float %768, float %1225)  ; FMax(a,b)
  %1228 = fsub fast float %1227, %1226
  %1229 = fmul fast float %1228, %1219
  %1230 = fadd fast float %1229, %1226
  %1231 = call float @dx.op.unary.f32(i32 7, float %1230)  ; Saturate(value)
  %1232 = fsub fast float %765, %770
  %1233 = fsub fast float %766, %771
  %1234 = fsub fast float %767, %772
  %1235 = fmul fast float %1219, %1232
  %1236 = fmul fast float %1219, %1233
  %1237 = fmul fast float %1219, %1234
  %1238 = fadd fast float %1235, %770
  %1239 = fadd fast float %1236, %771
  %1240 = fadd fast float %1237, %772
  %1241 = fsub fast float 1.000000e+00, %1231
  %1242 = fmul fast float %1241, %1238
  %1243 = fmul fast float %1241, %1239
  %1244 = fmul fast float %1241, %1240
  br label %1304

; <label>:1245                                    ; preds = %1204
  %1246 = fmul fast float %1215, %777
  %1247 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  %1248 = fsub fast float 2.000000e+00, %1247
  %1249 = fmul fast float %1247, 9.921875e-01
  %1250 = fmul fast float %1249, %1248
  %1251 = fadd fast float %1250, 3.906250e-03
  %1252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %10, float %1251, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1253 = extractvalue %dx.types.ResRet.f32 %1252, 0
  %1254 = fsub fast float %1247, %1253
  %1255 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1254)  ; FMax(a,b)
  %1256 = fmul fast float %763, %753
  %1257 = call float @dx.op.unary.f32(i32 6, float %1256)  ; FAbs(value)
  %1258 = fcmp fast ogt float %1257, 0x3EB0C6F7A0000000
  br i1 %1258, label %1259, label %1265, !dx.controlflow.hints !89

; <label>:1259                                    ; preds = %1245
  %1260 = fmul fast float %1256, 0xBFF7154760000000
  %1261 = call float @dx.op.unary.f32(i32 21, float %1260)  ; Exp(value)
  %1262 = fsub fast float 1.000000e+00, %1261
  %1263 = fdiv fast float %1262, %1256
  %1264 = fmul fast float %1263, %773
  br label %1265

; <label>:1265                                    ; preds = %1259, %1245
  %1266 = phi float [ %1264, %1259 ], [ %773, %1245 ]
  %1267 = fadd fast float %1266, %775
  %1268 = fmul fast float %1267, %1255
  %1269 = fmul fast float %760, %1268
  %1270 = fsub fast float -0.000000e+00, %1269
  %1271 = fmul fast float %761, %1268
  %1272 = fsub fast float -0.000000e+00, %1271
  %1273 = fmul fast float %762, %1268
  %1274 = fsub fast float -0.000000e+00, %1273
  %1275 = call float @dx.op.unary.f32(i32 21, float %1270)  ; Exp(value)
  %1276 = call float @dx.op.unary.f32(i32 21, float %1272)  ; Exp(value)
  %1277 = call float @dx.op.unary.f32(i32 21, float %1274)  ; Exp(value)
  %1278 = fmul fast float %789, %789
  %1279 = fadd fast float %1278, 1.000000e+00
  %1280 = fmul fast float %1279, 0x3FAE8EC8A0000000
  %1281 = fmul fast float %1280, %770
  %1282 = fmul fast float %1280, %771
  %1283 = fmul fast float %1280, %772
  %1284 = fmul fast float %789, %768
  %1285 = fsub fast float 1.000000e+00, %1284
  %1286 = fmul fast float %768, %768
  %1287 = fsub fast float 1.000000e+00, %1286
  %1288 = fmul fast float %1287, 0x3FB45F3060000000
  %1289 = fmul fast float %1285, %1285
  %1290 = fdiv fast float 1.000000e+00, %1289
  %1291 = fmul fast float %1288, %1290
  %1292 = fmul fast float %1291, %765
  %1293 = fmul fast float %1291, %766
  %1294 = fmul fast float %1291, %767
  %1295 = fadd fast float %1292, %1281
  %1296 = fadd fast float %1293, %1282
  %1297 = fadd fast float %1294, %1283
  %1298 = fsub fast float 1.000000e+00, %1275
  %1299 = fsub fast float 1.000000e+00, %1276
  %1300 = fsub fast float 1.000000e+00, %1277
  %1301 = fmul fast float %1295, %1298
  %1302 = fmul fast float %1296, %1299
  %1303 = fmul fast float %1297, %1300
  br label %1304

; <label>:1304                                    ; preds = %1265, %1216
  %1305 = phi float [ %1242, %1216 ], [ %1301, %1265 ]
  %1306 = phi float [ %1243, %1216 ], [ %1302, %1265 ]
  %1307 = phi float [ %1244, %1216 ], [ %1303, %1265 ]
  %1308 = phi float [ %1231, %1216 ], [ %1275, %1265 ]
  %1309 = phi float [ %1231, %1216 ], [ %1276, %1265 ]
  %1310 = phi float [ %1231, %1216 ], [ %1277, %1265 ]
  br i1 %797, label %1311, label %1509, !dx.controlflow.hints !90

; <label>:1311                                    ; preds = %1304
  %1312 = extractvalue %dx.types.CBufRet.f32 %1210, 0
  %1313 = fmul fast float %1312, %1212
  %1314 = fsub fast float %1207, %1305
  %1315 = fsub fast float %1208, %1306
  %1316 = fsub fast float %1209, %1307
  %1317 = fmul fast float %1313, %1314
  %1318 = fmul fast float %1313, %1315
  %1319 = fmul fast float %1313, %1316
  %1320 = fadd fast float %1317, %1305
  %1321 = fadd fast float %1318, %1306
  %1322 = fadd fast float %1319, %1307
  %1323 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1308)  ; FMax(a,b)
  %1324 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1309)  ; FMax(a,b)
  %1325 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1310)  ; FMax(a,b)
  %1326 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1206)  ; FMax(a,b)
  %1327 = call float @dx.op.binary.f32(i32 35, float %1205, float %1215)  ; FMax(a,b)
  %1328 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1327)  ; FMax(a,b)
  %1329 = fdiv fast float %1205, %1328
  %1330 = call float @dx.op.unary.f32(i32 7, float %1329)  ; Saturate(value)
  %1331 = fdiv fast float %1215, %1328
  %1332 = call float @dx.op.unary.f32(i32 7, float %1331)  ; Saturate(value)
  %1333 = fcmp fast une float %1326, 1.000000e+00
  br i1 %1333, label %1334, label %1347, !dx.controlflow.hints !91

; <label>:1334                                    ; preds = %1311
  %1335 = call float @dx.op.unary.f32(i32 23, float %1326)  ; Log(value)
  %1336 = fmul fast float %1335, 0x3FE62E4300000000
  %1337 = fmul fast float %1207, %1336
  %1338 = fsub fast float -0.000000e+00, %1337
  %1339 = fmul fast float %1208, %1336
  %1340 = fsub fast float -0.000000e+00, %1339
  %1341 = fmul fast float %1209, %1336
  %1342 = fsub fast float -0.000000e+00, %1341
  %1343 = fsub fast float 1.000000e+00, %1326
  %1344 = fdiv fast float %1338, %1343
  %1345 = fdiv fast float %1340, %1343
  %1346 = fdiv fast float %1342, %1343
  br label %1347

; <label>:1347                                    ; preds = %1334, %1311
  %1348 = phi float [ %1344, %1334 ], [ %1207, %1311 ]
  %1349 = phi float [ %1345, %1334 ], [ %1208, %1311 ]
  %1350 = phi float [ %1346, %1334 ], [ %1209, %1311 ]
  %1351 = phi float [ %1336, %1334 ], [ 0.000000e+00, %1311 ]
  %1352 = fcmp fast une float %1323, 1.000000e+00
  br i1 %1352, label %1353, label %1360, !dx.controlflow.hints !92

; <label>:1353                                    ; preds = %1347
  %1354 = call float @dx.op.unary.f32(i32 23, float %1323)  ; Log(value)
  %1355 = fmul fast float %1354, 0x3FE62E4300000000
  %1356 = fmul fast float %1320, %1355
  %1357 = fsub fast float -0.000000e+00, %1356
  %1358 = fsub fast float 1.000000e+00, %1323
  %1359 = fdiv fast float %1357, %1358
  br label %1360

; <label>:1360                                    ; preds = %1353, %1347
  %1361 = phi float [ %1359, %1353 ], [ %1320, %1347 ]
  %1362 = phi float [ %1355, %1353 ], [ 0.000000e+00, %1347 ]
  %1363 = fcmp fast une float %1324, 1.000000e+00
  br i1 %1363, label %1364, label %1371, !dx.controlflow.hints !92

; <label>:1364                                    ; preds = %1360
  %1365 = call float @dx.op.unary.f32(i32 23, float %1324)  ; Log(value)
  %1366 = fmul fast float %1365, 0x3FE62E4300000000
  %1367 = fmul fast float %1321, %1366
  %1368 = fsub fast float -0.000000e+00, %1367
  %1369 = fsub fast float 1.000000e+00, %1324
  %1370 = fdiv fast float %1368, %1369
  br label %1371

; <label>:1371                                    ; preds = %1364, %1360
  %1372 = phi float [ %1370, %1364 ], [ %1321, %1360 ]
  %1373 = phi float [ %1366, %1364 ], [ 0.000000e+00, %1360 ]
  %1374 = fcmp fast une float %1325, 1.000000e+00
  br i1 %1374, label %1375, label %1382, !dx.controlflow.hints !92

; <label>:1375                                    ; preds = %1371
  %1376 = call float @dx.op.unary.f32(i32 23, float %1325)  ; Log(value)
  %1377 = fmul fast float %1376, 0x3FE62E4300000000
  %1378 = fmul fast float %1322, %1377
  %1379 = fsub fast float -0.000000e+00, %1378
  %1380 = fsub fast float 1.000000e+00, %1325
  %1381 = fdiv fast float %1379, %1380
  br label %1382

; <label>:1382                                    ; preds = %1375, %1371
  %1383 = phi float [ %1381, %1375 ], [ %1322, %1371 ]
  %1384 = phi float [ %1377, %1375 ], [ 0.000000e+00, %1371 ]
  %1385 = fmul fast float %1348, %1332
  %1386 = fmul fast float %1349, %1332
  %1387 = fmul fast float %1350, %1332
  %1388 = fmul fast float %1351, %1332
  %1389 = fmul fast float %1361, %1330
  %1390 = fmul fast float %1372, %1330
  %1391 = fmul fast float %1383, %1330
  %1392 = fmul fast float %1362, %1330
  %1393 = fmul fast float %1373, %1330
  %1394 = fmul fast float %1384, %1330
  %1395 = fadd fast float %1389, %1385
  %1396 = fadd fast float %1390, %1386
  %1397 = fadd fast float %1391, %1387
  %1398 = fadd fast float %1392, %1388
  %1399 = fadd fast float %1393, %1388
  %1400 = fadd fast float %1394, %1388
  %1401 = fcmp fast une float %1398, 0.000000e+00
  br i1 %1401, label %1402, label %1409, !dx.controlflow.hints !93

; <label>:1402                                    ; preds = %1382
  %1403 = fmul fast float %1398, 0x3FF7154760000000
  %1404 = call float @dx.op.unary.f32(i32 21, float %1403)  ; Exp(value)
  %1405 = fsub fast float 1.000000e+00, %1404
  %1406 = fmul fast float %1395, %1405
  %1407 = fsub fast float -0.000000e+00, %1406
  %1408 = fdiv fast float %1407, %1398
  br label %1409

; <label>:1409                                    ; preds = %1402, %1382
  %1410 = phi float [ %1404, %1402 ], [ 1.000000e+00, %1382 ]
  %1411 = phi float [ %1408, %1402 ], [ %1395, %1382 ]
  %1412 = fcmp fast une float %1399, 0.000000e+00
  br i1 %1412, label %1413, label %1420, !dx.controlflow.hints !93

; <label>:1413                                    ; preds = %1409
  %1414 = fmul fast float %1399, 0x3FF7154760000000
  %1415 = call float @dx.op.unary.f32(i32 21, float %1414)  ; Exp(value)
  %1416 = fsub fast float 1.000000e+00, %1415
  %1417 = fmul fast float %1396, %1416
  %1418 = fsub fast float -0.000000e+00, %1417
  %1419 = fdiv fast float %1418, %1399
  br label %1420

; <label>:1420                                    ; preds = %1413, %1409
  %1421 = phi float [ %1415, %1413 ], [ 1.000000e+00, %1409 ]
  %1422 = phi float [ %1419, %1413 ], [ %1396, %1409 ]
  %1423 = fcmp fast une float %1400, 0.000000e+00
  br i1 %1423, label %1424, label %1431, !dx.controlflow.hints !93

; <label>:1424                                    ; preds = %1420
  %1425 = fmul fast float %1400, 0x3FF7154760000000
  %1426 = call float @dx.op.unary.f32(i32 21, float %1425)  ; Exp(value)
  %1427 = fsub fast float 1.000000e+00, %1426
  %1428 = fmul fast float %1397, %1427
  %1429 = fsub fast float -0.000000e+00, %1428
  %1430 = fdiv fast float %1429, %1400
  br label %1431

; <label>:1431                                    ; preds = %1424, %1420
  %1432 = phi float [ %1426, %1424 ], [ 1.000000e+00, %1420 ]
  %1433 = phi float [ %1430, %1424 ], [ %1397, %1420 ]
  %1434 = fcmp fast ogt float %1330, %1332
  br i1 %1434, label %1435, label %1455, !dx.controlflow.hints !94

; <label>:1435                                    ; preds = %1431
  %1436 = fsub fast float 1.000000e+00, %1332
  %1437 = fmul fast float %1348, %1436
  %1438 = fmul fast float %1349, %1436
  %1439 = fmul fast float %1350, %1436
  %1440 = fmul fast float %1351, %1436
  %1441 = fcmp fast une float %1440, 0.000000e+00
  br i1 %1441, label %1442, label %1493, !dx.controlflow.hints !95

; <label>:1442                                    ; preds = %1435
  %1443 = fmul fast float %1440, 0x3FF7154760000000
  %1444 = call float @dx.op.unary.f32(i32 21, float %1443)  ; Exp(value)
  %1445 = fsub fast float 1.000000e+00, %1444
  %1446 = fmul fast float %1437, %1445
  %1447 = fsub fast float -0.000000e+00, %1446
  %1448 = fmul fast float %1438, %1445
  %1449 = fsub fast float -0.000000e+00, %1448
  %1450 = fmul fast float %1439, %1445
  %1451 = fsub fast float -0.000000e+00, %1450
  %1452 = fdiv fast float %1447, %1440
  %1453 = fdiv fast float %1449, %1440
  %1454 = fdiv fast float %1451, %1440
  br label %1493

; <label>:1455                                    ; preds = %1431
  %1456 = fsub fast float 1.000000e+00, %1330
  %1457 = fmul fast float %1361, %1456
  %1458 = fmul fast float %1372, %1456
  %1459 = fmul fast float %1383, %1456
  %1460 = fmul fast float %1362, %1456
  %1461 = fmul fast float %1373, %1456
  %1462 = fmul fast float %1384, %1456
  %1463 = fcmp fast une float %1460, 0.000000e+00
  br i1 %1463, label %1464, label %1471, !dx.controlflow.hints !93

; <label>:1464                                    ; preds = %1455
  %1465 = fmul fast float %1460, 0x3FF7154760000000
  %1466 = call float @dx.op.unary.f32(i32 21, float %1465)  ; Exp(value)
  %1467 = fsub fast float 1.000000e+00, %1466
  %1468 = fmul fast float %1457, %1467
  %1469 = fsub fast float -0.000000e+00, %1468
  %1470 = fdiv fast float %1469, %1460
  br label %1471

; <label>:1471                                    ; preds = %1464, %1455
  %1472 = phi float [ %1470, %1464 ], [ %1457, %1455 ]
  %1473 = phi float [ %1466, %1464 ], [ 1.000000e+00, %1455 ]
  %1474 = fcmp fast une float %1461, 0.000000e+00
  br i1 %1474, label %1475, label %1482, !dx.controlflow.hints !93

; <label>:1475                                    ; preds = %1471
  %1476 = fmul fast float %1461, 0x3FF7154760000000
  %1477 = call float @dx.op.unary.f32(i32 21, float %1476)  ; Exp(value)
  %1478 = fsub fast float 1.000000e+00, %1477
  %1479 = fmul fast float %1458, %1478
  %1480 = fsub fast float -0.000000e+00, %1479
  %1481 = fdiv fast float %1480, %1461
  br label %1482

; <label>:1482                                    ; preds = %1475, %1471
  %1483 = phi float [ %1481, %1475 ], [ %1458, %1471 ]
  %1484 = phi float [ %1477, %1475 ], [ 1.000000e+00, %1471 ]
  %1485 = fcmp fast une float %1462, 0.000000e+00
  br i1 %1485, label %1486, label %1493, !dx.controlflow.hints !93

; <label>:1486                                    ; preds = %1482
  %1487 = fmul fast float %1462, 0x3FF7154760000000
  %1488 = call float @dx.op.unary.f32(i32 21, float %1487)  ; Exp(value)
  %1489 = fsub fast float 1.000000e+00, %1488
  %1490 = fmul fast float %1459, %1489
  %1491 = fsub fast float -0.000000e+00, %1490
  %1492 = fdiv fast float %1491, %1462
  br label %1493

; <label>:1493                                    ; preds = %1486, %1482, %1442, %1435
  %1494 = phi float [ %1492, %1486 ], [ %1454, %1442 ], [ %1439, %1435 ], [ %1459, %1482 ]
  %1495 = phi float [ %1483, %1486 ], [ %1453, %1442 ], [ %1438, %1435 ], [ %1483, %1482 ]
  %1496 = phi float [ %1472, %1486 ], [ %1452, %1442 ], [ %1437, %1435 ], [ %1472, %1482 ]
  %1497 = phi float [ %1488, %1486 ], [ %1444, %1442 ], [ 1.000000e+00, %1435 ], [ 1.000000e+00, %1482 ]
  %1498 = phi float [ %1484, %1486 ], [ %1444, %1442 ], [ 1.000000e+00, %1435 ], [ %1484, %1482 ]
  %1499 = phi float [ %1473, %1486 ], [ %1444, %1442 ], [ 1.000000e+00, %1435 ], [ %1473, %1482 ]
  %1500 = fmul fast float %1499, %1411
  %1501 = fmul fast float %1498, %1422
  %1502 = fmul fast float %1497, %1433
  %1503 = fadd fast float %1500, %1496
  %1504 = fadd fast float %1501, %1495
  %1505 = fadd fast float %1502, %1494
  %1506 = fmul fast float %1499, %1410
  %1507 = fmul fast float %1498, %1421
  %1508 = fmul fast float %1497, %1432
  br label %1509

; <label>:1509                                    ; preds = %1493, %1304
  %1510 = phi float [ %1310, %1304 ], [ %1508, %1493 ]
  %1511 = phi float [ %1309, %1304 ], [ %1507, %1493 ]
  %1512 = phi float [ %1308, %1304 ], [ %1506, %1493 ]
  %1513 = phi float [ %1307, %1304 ], [ %1505, %1493 ]
  %1514 = phi float [ %1306, %1304 ], [ %1504, %1493 ]
  %1515 = phi float [ %1305, %1304 ], [ %1503, %1493 ]
  %1516 = fmul fast float %1512, %653
  %1517 = fmul fast float %1511, %654
  %1518 = fmul fast float %1510, %655
  %1519 = fsub fast float 1.000000e+00, %716
  %1520 = fmul fast float %1515, %1519
  %1521 = fmul fast float %1514, %1519
  %1522 = fmul fast float %1513, %1519
  %1523 = fadd fast float %1520, %1516
  %1524 = fadd fast float %1521, %1517
  %1525 = fadd fast float %1522, %1518
  %1526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1527 = extractvalue %dx.types.CBufRet.f32 %1526, 2
  %1528 = fmul fast float %1527, %726
  %1529 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %13, i32 %14, i32 undef, float %716, float %716, float %716, float %716, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1531 = extractvalue %dx.types.CBufRet.f32 %1530, 0
  %1532 = fmul fast float %1531, %1523
  %1533 = fmul fast float %1531, %1524
  %1534 = fmul fast float %1531, %1525
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %13, i32 %14, i32 undef, float %1532, float %1533, float %1534, float %1532, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %13, i32 %14, i32 undef, float %1529, float %1529, float %1529, float %1529, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!23}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !12, !18, !21}
!5 = !{!6, !8, !9, !10, !11}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!12 = !{!13, !14, !15, !16}
!13 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !17}
!17 = !{i32 0, i32 14}
!18 = !{!19, !20}
!19 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!20 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!21 = !{!22}
!22 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!23 = !{void ()* @cs_fog_raymarching_air, !"cs_fog_raymarching_air", null, !4, !24}
!24 = !{i32 0, i64 272, i32 4, !25}
!25 = !{i32 8, i32 8, i32 1}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 1}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = !{!51, !51, i64 0}
!51 = !{!"float", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = !{!55, !57, !59, !60, !62, !63, !64}
!55 = distinct !{!55, !56, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!56 = distinct !{!56, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!57 = distinct !{!57, !58, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!58 = distinct !{!58, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!59 = distinct !{!59, !58, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!60 = distinct !{!60, !61, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!61 = distinct !{!61, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!62 = distinct !{!62, !61, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!63 = distinct !{!63, !61, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!64 = distinct !{!64, !61, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = !{!67}
!67 = distinct !{!67, !68, !"\01?sort@@YAXAIAM00@Z: %c"}
!68 = distinct !{!68, !"\01?sort@@YAXAIAM00@Z"}
!69 = !{!70, !71, !55, !57, !59, !60, !62, !63, !64}
!70 = distinct !{!70, !68, !"\01?sort@@YAXAIAM00@Z: %a"}
!71 = distinct !{!71, !68, !"\01?sort@@YAXAIAM00@Z: %b"}
!72 = !{!71}
!73 = !{!70, !67, !55, !57, !59, !60, !62, !63, !64}
!74 = !{!70}
!75 = !{!71, !67, !55, !57, !59, !60, !62, !63, !64}
!76 = !{!77}
!77 = distinct !{!77, !78, !"\01?sort@@YAXAIAM00@Z: %c"}
!78 = distinct !{!78, !"\01?sort@@YAXAIAM00@Z"}
!79 = !{!80, !81, !55, !57, !59, !60, !62, !63, !64}
!80 = distinct !{!80, !78, !"\01?sort@@YAXAIAM00@Z: %a"}
!81 = distinct !{!81, !78, !"\01?sort@@YAXAIAM00@Z: %b"}
!82 = !{!81}
!83 = !{!80, !77, !55, !57, !59, !60, !62, !63, !64}
!84 = !{!80}
!85 = !{!81, !77, !55, !57, !59, !60, !62, !63, !64}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}

