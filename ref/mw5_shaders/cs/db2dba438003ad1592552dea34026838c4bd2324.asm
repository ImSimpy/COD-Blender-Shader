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
; shader hash: ef086bb368a815f86fb73b17a637dab5
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
;                                   texture     f32          2d      T0            t16     1
;                                   texture     f32          2d      T1            t13     1
;                                   texture     f32          2d      T2             t0     1
;                                   texture    byte         r/o      T3            t17     1
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

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

define void @cs_fog_raymarching_heightmap() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  br label %197

; <label>:197                                     ; preds = %56, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %198 = uitofp i32 %28 to float
  %199 = uitofp i32 %29 to float
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 2
  %202 = fmul fast float %201, 0x3FE3C6EF40000000
  %203 = frem fast float %198, 2.560000e+02
  %204 = frem fast float %199, 2.560000e+02
  %205 = fptoui float %203 to i32
  %206 = fptoui float %204 to i32
  %207 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %205, i32 %206, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = extractvalue %dx.types.ResRet.f32 %207, 1
  %210 = extractvalue %dx.types.ResRet.f32 %207, 2
  %211 = extractvalue %dx.types.ResRet.f32 %207, 3
  %212 = fadd fast float %208, %202
  %213 = fadd fast float %209, %202
  %214 = fadd fast float %210, %202
  %215 = fadd fast float %211, %202
  %216 = call float @dx.op.unary.f32(i32 22, float %212)  ; Frc(value)
  %217 = call float @dx.op.unary.f32(i32 22, float %213)  ; Frc(value)
  %218 = call float @dx.op.unary.f32(i32 22, float %214)  ; Frc(value)
  %219 = call float @dx.op.unary.f32(i32 22, float %215)  ; Frc(value)
  %220 = fadd fast float %218, %198
  %221 = fadd fast float %219, %199
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
  %293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.i32 %293, 3
  %295 = icmp eq i32 %294, 0
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 2
  %300 = fsub fast float %297, %230
  %301 = fadd fast float %300, %299
  %302 = fsub fast float 0xC7EFFFFFE0000000, %230
  br i1 %295, label %314, label %303, !dx.controlflow.hints !27

; <label>:303                                     ; preds = %197
  %304 = fsub fast float -0.000000e+00, %229
  %305 = fsub fast float -0.000000e+00, %228
  %306 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %305, float %304, float %301)  ; Dot3(ax,ay,az,bx,by,bz)
  %307 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %271, float %272, float %273)  ; Dot3(ax,ay,az,bx,by,bz)
  %308 = fdiv fast float 1.000000e+00, %307
  %309 = fmul fast float %308, %306
  %310 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %305, float %304, float %302)  ; Dot3(ax,ay,az,bx,by,bz)
  %311 = fmul fast float %308, %310
  %312 = call float @dx.op.binary.f32(i32 36, float %309, float %311)  ; FMin(a,b)
  %313 = call float @dx.op.binary.f32(i32 35, float %309, float %311)  ; FMax(a,b)
  br label %347

; <label>:314                                     ; preds = %197
  %315 = extractvalue %dx.types.CBufRet.f32 %296, 0
  %316 = extractvalue %dx.types.CBufRet.f32 %296, 1
  %317 = extractvalue %dx.types.CBufRet.f32 %298, 0
  %318 = extractvalue %dx.types.CBufRet.f32 %298, 1
  %319 = fdiv fast float 1.000000e+00, %271
  %320 = fdiv fast float 1.000000e+00, %272
  %321 = fdiv fast float 1.000000e+00, %273
  %322 = fsub fast float %315, %228
  %323 = fmul fast float %319, %322
  %324 = fadd fast float %322, %317
  %325 = fmul fast float %324, %319
  %326 = call float @dx.op.binary.f32(i32 36, float %323, float %325)  ; FMin(a,b)
  %327 = call float @dx.op.binary.f32(i32 35, float %323, float %325)  ; FMax(a,b)
  %328 = fsub fast float %316, %229
  %329 = fmul fast float %320, %328
  %330 = fadd fast float %328, %318
  %331 = fmul fast float %330, %320
  %332 = call float @dx.op.binary.f32(i32 36, float %329, float %331)  ; FMin(a,b)
  %333 = call float @dx.op.binary.f32(i32 35, float %326, float %332)  ; FMax(a,b)
  %334 = call float @dx.op.binary.f32(i32 35, float %329, float %331)  ; FMax(a,b)
  %335 = call float @dx.op.binary.f32(i32 36, float %327, float %334)  ; FMin(a,b)
  %336 = fmul fast float %321, %302
  %337 = fmul fast float %321, %301
  %338 = call float @dx.op.binary.f32(i32 36, float %336, float %337)  ; FMin(a,b)
  %339 = call float @dx.op.binary.f32(i32 35, float %333, float %338)  ; FMax(a,b)
  %340 = call float @dx.op.binary.f32(i32 35, float %336, float %337)  ; FMax(a,b)
  %341 = call float @dx.op.binary.f32(i32 36, float %335, float %340)  ; FMin(a,b)
  %342 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %339)  ; FMax(a,b)
  %343 = fcmp fast ult float %341, %342
  br i1 %343, label %347, label %344, !dx.controlflow.hints !28

; <label>:344                                     ; preds = %314
  %345 = call float @dx.op.binary.f32(i32 36, float %339, float %341)  ; FMin(a,b)
  %346 = call float @dx.op.binary.f32(i32 35, float %339, float %341)  ; FMax(a,b)
  br label %347

; <label>:347                                     ; preds = %344, %314, %303
  %348 = phi float [ %312, %303 ], [ %345, %344 ], [ 0.000000e+00, %314 ]
  %349 = phi float [ %313, %303 ], [ %346, %344 ], [ 0.000000e+00, %314 ]
  %350 = fcmp fast oeq float %349, 0.000000e+00
  %351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.f32 %351, 1
  %353 = fcmp fast olt float %349, %352
  %354 = or i1 %350, %353
  br i1 %354, label %359, label %355, !dx.controlflow.hints !29

; <label>:355                                     ; preds = %347
  %356 = call float @dx.op.binary.f32(i32 35, float %352, float %348)  ; FMax(a,b)
  %357 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %356)  ; FMin(a,b)
  %358 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %349)  ; FMax(a,b)
  br label %359

; <label>:359                                     ; preds = %355, %347
  %360 = phi i32 [ 1, %355 ], [ 0, %347 ]
  %361 = phi float [ %358, %355 ], [ -1.000000e+00, %347 ]
  %362 = phi float [ %357, %355 ], [ 0x47EFFFFFE0000000, %347 ]
  %363 = call float @dx.op.binary.f32(i32 36, float %292, float %361)  ; FMin(a,b)
  %364 = call float @dx.op.binary.f32(i32 35, float %269, float %362)  ; FMax(a,b)
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 0
  %367 = fmul fast float %217, 2.000000e+00
  %368 = fadd fast float %367, -1.000000e+00
  %369 = fmul fast float %366, %368
  %370 = fadd fast float %369, %364
  %371 = fcmp fast olt float %370, %363
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 2
  %374 = fcmp fast olt float %373, 1.000000e+00
  %375 = and i1 %371, %374
  br i1 %375, label %376, label %768

; <label>:376                                     ; preds = %359
  %377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.i32 %377, 1
  %379 = add i32 %378, -1
  %380 = fmul fast float %370, %273
  %381 = fadd fast float %380, %230
  %382 = fmul fast float %370, %272
  %383 = fadd fast float %382, %229
  %384 = fmul fast float %370, %271
  %385 = fadd fast float %384, %228
  br label %386

; <label>:386                                     ; preds = %746, %376
  %387 = phi float [ %748, %746 ], [ 0.000000e+00, %376 ]
  %388 = phi float [ %749, %746 ], [ 1.000000e+00, %376 ]
  %389 = phi float [ %759, %746 ], [ %385, %376 ]
  %390 = phi float [ %760, %746 ], [ %383, %376 ]
  %391 = phi float [ %761, %746 ], [ %381, %376 ]
  %392 = phi float [ %747, %746 ], [ %370, %376 ]
  %393 = phi i32 [ %403, %746 ], [ 0, %376 ]
  %394 = phi i32 [ %580, %746 ], [ %379, %376 ]
  %395 = phi float [ %750, %746 ], [ 0.000000e+00, %376 ]
  %396 = phi float [ %751, %746 ], [ 0.000000e+00, %376 ]
  %397 = phi float [ %752, %746 ], [ 0.000000e+00, %376 ]
  %398 = phi float [ %753, %746 ], [ 0.000000e+00, %376 ]
  %399 = phi float [ %754, %746 ], [ 0.000000e+00, %376 ]
  %400 = phi i32 [ %755, %746 ], [ 0, %376 ]
  %401 = fsub fast float -0.000000e+00, %390
  %402 = fsub fast float -0.000000e+00, %389
  %403 = add i32 %393, 1
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 0
  %406 = icmp eq i32 %360, 0
  br i1 %406, label %577, label %407, !dx.controlflow.hints !30

; <label>:407                                     ; preds = %386
  %408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.i32 %408, 1
  %410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.f32 %410, 1
  %412 = fcmp fast ogt float %411, %392
  br i1 %412, label %413, label %415, !dx.controlflow.hints !31

; <label>:413                                     ; preds = %407
  %414 = fsub fast float %411, %392
  br label %567

; <label>:415                                     ; preds = %407
  %416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.i32 %416, 3
  %418 = icmp eq i32 %417, 0
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 2
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 2
  %423 = fsub fast float %420, %391
  %424 = fadd fast float %423, %422
  %425 = fsub fast float 0xC7EFFFFFE0000000, %391
  br i1 %418, label %435, label %426, !dx.controlflow.hints !27

; <label>:426                                     ; preds = %415
  %427 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %402, float %401, float %424)  ; Dot3(ax,ay,az,bx,by,bz)
  %428 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %271, float %272, float %273)  ; Dot3(ax,ay,az,bx,by,bz)
  %429 = fdiv fast float 1.000000e+00, %428
  %430 = fmul fast float %429, %427
  %431 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %402, float %401, float %425)  ; Dot3(ax,ay,az,bx,by,bz)
  %432 = fmul fast float %429, %431
  %433 = call float @dx.op.binary.f32(i32 36, float %430, float %432)  ; FMin(a,b)
  %434 = call float @dx.op.binary.f32(i32 35, float %430, float %432)  ; FMax(a,b)
  br label %468

; <label>:435                                     ; preds = %415
  %436 = extractvalue %dx.types.CBufRet.f32 %419, 0
  %437 = extractvalue %dx.types.CBufRet.f32 %419, 1
  %438 = extractvalue %dx.types.CBufRet.f32 %421, 0
  %439 = extractvalue %dx.types.CBufRet.f32 %421, 1
  %440 = fdiv fast float 1.000000e+00, %271
  %441 = fdiv fast float 1.000000e+00, %272
  %442 = fdiv fast float 1.000000e+00, %273
  %443 = fsub fast float %436, %389
  %444 = fmul fast float %440, %443
  %445 = fadd fast float %443, %438
  %446 = fmul fast float %445, %440
  %447 = call float @dx.op.binary.f32(i32 36, float %444, float %446)  ; FMin(a,b)
  %448 = call float @dx.op.binary.f32(i32 35, float %444, float %446)  ; FMax(a,b)
  %449 = fsub fast float %437, %390
  %450 = fmul fast float %441, %449
  %451 = fadd fast float %449, %439
  %452 = fmul fast float %451, %441
  %453 = call float @dx.op.binary.f32(i32 36, float %450, float %452)  ; FMin(a,b)
  %454 = call float @dx.op.binary.f32(i32 35, float %447, float %453)  ; FMax(a,b)
  %455 = call float @dx.op.binary.f32(i32 35, float %450, float %452)  ; FMax(a,b)
  %456 = call float @dx.op.binary.f32(i32 36, float %448, float %455)  ; FMin(a,b)
  %457 = fmul fast float %442, %425
  %458 = fmul fast float %442, %424
  %459 = call float @dx.op.binary.f32(i32 36, float %457, float %458)  ; FMin(a,b)
  %460 = call float @dx.op.binary.f32(i32 35, float %454, float %459)  ; FMax(a,b)
  %461 = call float @dx.op.binary.f32(i32 35, float %457, float %458)  ; FMax(a,b)
  %462 = call float @dx.op.binary.f32(i32 36, float %456, float %461)  ; FMin(a,b)
  %463 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %460)  ; FMax(a,b)
  %464 = fcmp fast ult float %462, %463
  br i1 %464, label %468, label %465, !dx.controlflow.hints !28

; <label>:465                                     ; preds = %435
  %466 = call float @dx.op.binary.f32(i32 36, float %460, float %462)  ; FMin(a,b)
  %467 = call float @dx.op.binary.f32(i32 35, float %460, float %462)  ; FMax(a,b)
  br label %468

; <label>:468                                     ; preds = %465, %435, %426
  %469 = phi float [ %433, %426 ], [ %466, %465 ], [ 0.000000e+00, %435 ]
  %470 = phi float [ %434, %426 ], [ %467, %465 ], [ 0.000000e+00, %435 ]
  %471 = fcmp fast ogt float %469, 0.000000e+00
  br i1 %471, label %567, label %472, !dx.controlflow.hints !32

; <label>:472                                     ; preds = %468
  %473 = fcmp fast ugt float %470, 0.000000e+00
  br i1 %473, label %474, label %567, !dx.controlflow.hints !33

; <label>:474                                     ; preds = %472
  %475 = icmp sgt i32 %394, 0
  br i1 %475, label %476, label %561

; <label>:476                                     ; preds = %474
  br label %477

; <label>:477                                     ; preds = %557, %476
  %478 = phi i32 [ %558, %557 ], [ %394, %476 ]
  %479 = sitofp i32 %478 to float
  %480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.f32 %480, 0
  %482 = extractvalue %dx.types.CBufRet.f32 %480, 1
  %483 = fsub fast float %389, %481
  %484 = fsub fast float %390, %482
  %485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %486 = extractvalue %dx.types.CBufRet.f32 %485, 0
  %487 = extractvalue %dx.types.CBufRet.f32 %485, 1
  %488 = fmul fast float %483, %486
  %489 = fmul fast float %484, %487
  %490 = fsub fast float 1.000000e+00, %489
  %491 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.i32 %491, 3
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %500, label %494, !dx.controlflow.hints !34

; <label>:494                                     ; preds = %477
  %495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %9, float %488, float %490, float undef, float undef, i32 0, i32 0, i32 undef, float %479)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  %497 = extractvalue %dx.types.ResRet.f32 %495, 1
  %498 = extractvalue %dx.types.ResRet.f32 %495, 2
  %499 = extractvalue %dx.types.ResRet.f32 %495, 3
  br label %506

; <label>:500                                     ; preds = %477
  %501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %10, float %488, float %490, float undef, float undef, i32 0, i32 0, i32 undef, float %479)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = extractvalue %dx.types.ResRet.f32 %501, 1
  %504 = extractvalue %dx.types.ResRet.f32 %501, 2
  %505 = extractvalue %dx.types.ResRet.f32 %501, 3
  br label %506

; <label>:506                                     ; preds = %500, %494
  %507 = phi float [ %496, %494 ], [ %502, %500 ]
  %508 = phi float [ %497, %494 ], [ %503, %500 ]
  %509 = phi float [ %498, %494 ], [ %504, %500 ]
  %510 = phi float [ %499, %494 ], [ %505, %500 ]
  %511 = extractvalue %dx.types.CBufRet.f32 %485, 3
  %512 = fmul fast float %511, %507
  %513 = extractvalue %dx.types.CBufRet.f32 %480, 2
  %514 = fadd fast float %512, %513
  %515 = fmul fast float %511, %508
  %516 = fadd fast float %515, %513
  %517 = fmul fast float %511, %509
  %518 = fadd fast float %517, %513
  %519 = and i32 %478, 31
  %520 = shl i32 1, %519
  %521 = uitofp i32 %520 to float
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 3
  %524 = fdiv fast float 1.000000e+00, %523
  %525 = fmul fast float %524, %521
  %526 = fmul fast float %525, %273
  %527 = fadd fast float %526, %391
  %528 = fcmp fast oeq float %510, 0.000000e+00
  %529 = fcmp fast ogt float %391, %516
  %530 = fcmp fast ogt float %527, %516
  %531 = and i1 %529, %530
  %532 = or i1 %528, %531
  br i1 %532, label %533, label %537, !dx.controlflow.hints !35

; <label>:533                                     ; preds = %506
  %534 = add nsw i32 %478, 1
  %535 = add nsw i32 %409, -1
  %536 = call i32 @dx.op.binary.i32(i32 38, i32 %534, i32 %535)  ; IMin(a,b)
  br label %567

; <label>:537                                     ; preds = %506
  %538 = fcmp fast olt float %391, %518
  %539 = fcmp fast olt float %527, %518
  %540 = and i1 %538, %539
  br i1 %540, label %541, label %545, !dx.controlflow.hints !36

; <label>:541                                     ; preds = %537
  %542 = add nsw i32 %478, 1
  %543 = add nsw i32 %409, -1
  %544 = call i32 @dx.op.binary.i32(i32 38, i32 %542, i32 %543)  ; IMin(a,b)
  br label %567

; <label>:545                                     ; preds = %537
  %546 = fcmp fast olt float %391, %514
  %547 = fcmp fast olt float %527, %514
  %548 = and i1 %546, %547
  br i1 %548, label %549, label %557, !dx.controlflow.hints !37

; <label>:549                                     ; preds = %545
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 3
  %552 = extractvalue %dx.types.CBufRet.f32 %485, 2
  %553 = fcmp fast une float %551, %552
  br i1 %553, label %554, label %561, !dx.controlflow.hints !38

; <label>:554                                     ; preds = %549
  %555 = fsub fast float %391, %518
  %556 = call float @dx.op.binary.f32(i32 36, float %525, float %555)  ; FMin(a,b)
  br label %561

; <label>:557                                     ; preds = %545
  %558 = add nsw i32 %478, -1
  %559 = icmp sgt i32 %478, 1
  br i1 %559, label %477, label %560

; <label>:560                                     ; preds = %557
  br label %561

; <label>:561                                     ; preds = %560, %554, %549, %474
  %562 = phi float [ %556, %554 ], [ %525, %549 ], [ 0.000000e+00, %474 ], [ 0.000000e+00, %560 ]
  %563 = phi i32 [ %478, %554 ], [ %478, %549 ], [ %394, %474 ], [ %558, %560 ]
  %564 = add nsw i32 %563, 1
  %565 = add nsw i32 %409, -1
  %566 = call i32 @dx.op.binary.i32(i32 38, i32 %564, i32 %565)  ; IMin(a,b)
  br label %567

; <label>:567                                     ; preds = %561, %541, %533, %472, %468, %413
  %568 = phi float [ %414, %413 ], [ %525, %533 ], [ %525, %541 ], [ %562, %561 ], [ 0x47EFFFFFE0000000, %472 ], [ %469, %468 ]
  %569 = phi i32 [ %360, %413 ], [ %360, %533 ], [ %360, %541 ], [ %360, %561 ], [ 0, %472 ], [ %360, %468 ]
  %570 = phi i32 [ %394, %413 ], [ %536, %533 ], [ %544, %541 ], [ %566, %561 ], [ %394, %472 ], [ %394, %468 ]
  %571 = icmp ne i32 %569, 0
  %572 = zext i1 %571 to i32
  %573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %574 = extractvalue %dx.types.CBufRet.f32 %573, 2
  %575 = call float @dx.op.binary.f32(i32 35, float %568, float %574)  ; FMax(a,b)
  %576 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %575)  ; FMin(a,b)
  br label %577

; <label>:577                                     ; preds = %567, %386
  %578 = phi i32 [ %572, %567 ], [ 0, %386 ]
  %579 = phi float [ %576, %567 ], [ 0x47EFFFFFE0000000, %386 ]
  %580 = phi i32 [ %570, %567 ], [ %394, %386 ]
  %581 = extractvalue %dx.types.CBufRet.f32 %404, 2
  %582 = fmul fast float %581, %392
  %583 = call float @dx.op.unary.f32(i32 23, float %582)  ; Log(value)
  %584 = fmul fast float %583, 0x3FE62E4300000000
  %585 = call float @dx.op.binary.f32(i32 35, float %584, float 1.000000e+00)  ; FMax(a,b)
  %586 = fmul fast float %585, 0x47EFFFFFE0000000
  %587 = call float @dx.op.binary.f32(i32 36, float %586, float %579)  ; FMin(a,b)
  %588 = call float @dx.op.binary.f32(i32 35, float %587, float %405)  ; FMax(a,b)
  %589 = fsub fast float %363, %392
  %590 = fadd fast float %589, 0x3F1A36E2E0000000
  %591 = call float @dx.op.binary.f32(i32 36, float %590, float %588)  ; FMin(a,b)
  %592 = icmp eq i32 %578, 0
  br i1 %592, label %689, label %593, !dx.controlflow.hints !39

; <label>:593                                     ; preds = %577
  %594 = fcmp fast olt float %590, %588
  %595 = fmul fast float %273, %216
  %596 = fmul fast float %595, %591
  %597 = fadd fast float %596, %391
  %598 = fmul fast float %273, %217
  %599 = fmul fast float %598, %591
  %600 = fadd fast float %599, %391
  %601 = fmul fast float %273, %218
  %602 = fmul fast float %601, %591
  %603 = fadd fast float %602, %391
  br i1 %594, label %604, label %609, !dx.controlflow.hints !40

; <label>:604                                     ; preds = %593
  %605 = fmul fast float %591, %271
  %606 = fmul fast float %591, %272
  %607 = fadd fast float %605, %389
  %608 = fadd fast float %606, %390
  br label %609

; <label>:609                                     ; preds = %604, %593
  %610 = phi float [ %607, %604 ], [ %389, %593 ]
  %611 = phi float [ %608, %604 ], [ %390, %593 ]
  %612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %613 = extractvalue %dx.types.CBufRet.f32 %612, 0
  %614 = extractvalue %dx.types.CBufRet.f32 %612, 1
  %615 = fsub fast float %610, %613
  %616 = fsub fast float %611, %614
  %617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %618 = extractvalue %dx.types.CBufRet.f32 %617, 0
  %619 = extractvalue %dx.types.CBufRet.f32 %617, 1
  %620 = fmul fast float %615, %618
  %621 = fmul fast float %616, %619
  %622 = fsub fast float 1.000000e+00, %621
  %623 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.i32 %623, 3
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %632, label %626, !dx.controlflow.hints !34

; <label>:626                                     ; preds = %609
  %627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %9, float %620, float %622, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %628 = extractvalue %dx.types.ResRet.f32 %627, 0
  %629 = extractvalue %dx.types.ResRet.f32 %627, 1
  %630 = extractvalue %dx.types.ResRet.f32 %627, 2
  %631 = extractvalue %dx.types.ResRet.f32 %627, 3
  br label %638

; <label>:632                                     ; preds = %609
  %633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %10, float %620, float %622, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %634 = extractvalue %dx.types.ResRet.f32 %633, 0
  %635 = extractvalue %dx.types.ResRet.f32 %633, 1
  %636 = extractvalue %dx.types.ResRet.f32 %633, 2
  %637 = extractvalue %dx.types.ResRet.f32 %633, 3
  br label %638

; <label>:638                                     ; preds = %632, %626
  %639 = phi float [ %628, %626 ], [ %634, %632 ]
  %640 = phi float [ %629, %626 ], [ %635, %632 ]
  %641 = phi float [ %630, %626 ], [ %636, %632 ]
  %642 = phi float [ %631, %626 ], [ %637, %632 ]
  %643 = extractvalue %dx.types.CBufRet.f32 %617, 3
  %644 = fmul fast float %643, %640
  %645 = fmul fast float %644, %639
  %646 = fsub fast float %644, %645
  %647 = fcmp fast ole float %646, 0.000000e+00
  %648 = extractvalue %dx.types.CBufRet.f32 %612, 2
  %649 = fadd fast float %645, %648
  %650 = fmul fast float %643, %641
  %651 = fadd fast float %650, %648
  %652 = fdiv fast float 1.000000e+00, %646
  %653 = select i1 %647, float 1.000000e+06, float %652
  %654 = fsub fast float %597, %649
  %655 = fmul fast float %653, %654
  %656 = call float @dx.op.unary.f32(i32 7, float %655)  ; Saturate(value)
  %657 = extractvalue %dx.types.CBufRet.f32 %617, 2
  %658 = fmul fast float %657, %656
  %659 = fsub fast float %657, %658
  %660 = fcmp fast olt float %597, %651
  %661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.f32 %661, 3
  %663 = select i1 %660, float %662, float 1.000000e+00
  %664 = fmul fast float %659, %663
  %665 = fsub fast float %600, %649
  %666 = fmul fast float %653, %665
  %667 = call float @dx.op.unary.f32(i32 7, float %666)  ; Saturate(value)
  %668 = fmul fast float %657, %667
  %669 = fsub fast float %657, %668
  %670 = fcmp fast olt float %600, %651
  %671 = select i1 %670, float %662, float 1.000000e+00
  %672 = fmul fast float %669, %671
  %673 = fadd fast float %672, %664
  %674 = fsub fast float %603, %649
  %675 = fmul fast float %653, %674
  %676 = call float @dx.op.unary.f32(i32 7, float %675)  ; Saturate(value)
  %677 = fmul fast float %657, %676
  %678 = fsub fast float %657, %677
  %679 = fcmp fast olt float %603, %651
  %680 = select i1 %679, float %662, float 1.000000e+00
  %681 = fmul fast float %678, %680
  %682 = fadd fast float %673, %681
  %683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %684 = extractvalue %dx.types.CBufRet.f32 %683, 2
  %685 = fmul fast float %591, 0x3FD5555560000000
  %686 = fmul fast float %685, %642
  %687 = fmul fast float %686, %684
  %688 = fmul fast float %687, %682
  br label %689

; <label>:689                                     ; preds = %638, %577
  %690 = phi float [ %688, %638 ], [ 0.000000e+00, %577 ]
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 1
  %693 = fcmp fast ogt float %690, %692
  br i1 %693, label %696, label %694, !dx.controlflow.hints !41

; <label>:694                                     ; preds = %689
  %695 = fadd fast float %591, %392
  br label %746

; <label>:696                                     ; preds = %689
  %697 = fmul fast float %690, 0xBFF7154760000000
  %698 = call float @dx.op.unary.f32(i32 21, float %697)  ; Exp(value)
  %699 = call float @dx.op.unary.f32(i32 7, float %698)  ; Saturate(value)
  %700 = fsub fast float 1.000000e+00, %699
  %701 = fdiv fast float %690, %591
  %702 = fadd fast float %591, %392
  %703 = fmul fast float %392, %392
  %704 = fmul fast float %702, %702
  %705 = fsub fast float %703, %704
  %706 = fmul fast float %705, -5.000000e-01
  %707 = fmul fast float %706, %701
  %708 = fadd fast float %707, %387
  %709 = fadd fast float %690, %395
  %710 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.i32 %710, 0
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %739, label %713, !dx.controlflow.hints !42

; <label>:713                                     ; preds = %696
  %714 = icmp ne i32 %400, 0
  %715 = zext i1 %714 to i32
  %716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %717 = extractvalue %dx.types.CBufRet.f32 %716, 2
  %718 = extractvalue %dx.types.CBufRet.f32 %716, 0
  %719 = fsub fast float %702, %718
  %720 = fmul fast float %719, %717
  %721 = call float @dx.op.unary.f32(i32 7, float %720)  ; Saturate(value)
  %722 = fadd fast float %721, -5.000000e-01
  %723 = fmul fast float %722, 2.000000e+00
  %724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.f32 %724, 2
  %726 = fcmp fast olt float %723, %725
  br i1 %726, label %727, label %739, !dx.controlflow.hints !43

; <label>:727                                     ; preds = %713
  %728 = fmul fast float %723, %723
  %729 = fmul fast float %700, %388
  %730 = fmul fast float %723, %729
  %731 = fmul fast float %728, %729
  %732 = fmul fast float %730, %728
  %733 = fmul fast float %728, %728
  %734 = fmul fast float %733, %729
  %735 = fadd fast float %730, %396
  %736 = fadd fast float %731, %397
  %737 = fadd fast float %732, %398
  %738 = fadd fast float %734, %399
  br label %739

; <label>:739                                     ; preds = %727, %713, %696
  %740 = phi float [ %396, %696 ], [ %735, %727 ], [ %396, %713 ]
  %741 = phi float [ %397, %696 ], [ %736, %727 ], [ %397, %713 ]
  %742 = phi float [ %398, %696 ], [ %737, %727 ], [ %398, %713 ]
  %743 = phi float [ %399, %696 ], [ %738, %727 ], [ %399, %713 ]
  %744 = phi i32 [ %400, %696 ], [ 1, %727 ], [ %715, %713 ]
  %745 = fmul fast float %699, %388
  br label %746

; <label>:746                                     ; preds = %739, %694
  %747 = phi float [ %695, %694 ], [ %702, %739 ]
  %748 = phi float [ %387, %694 ], [ %708, %739 ]
  %749 = phi float [ %388, %694 ], [ %745, %739 ]
  %750 = phi float [ %395, %694 ], [ %709, %739 ]
  %751 = phi float [ %396, %694 ], [ %740, %739 ]
  %752 = phi float [ %397, %694 ], [ %741, %739 ]
  %753 = phi float [ %398, %694 ], [ %742, %739 ]
  %754 = phi float [ %399, %694 ], [ %743, %739 ]
  %755 = phi i32 [ %400, %694 ], [ %744, %739 ]
  %756 = fmul fast float %591, %271
  %757 = fmul fast float %591, %272
  %758 = fmul fast float %591, %273
  %759 = fadd fast float %756, %389
  %760 = fadd fast float %757, %390
  %761 = fadd fast float %758, %391
  %762 = fcmp fast olt float %747, %363
  %763 = extractvalue %dx.types.CBufRet.f32 %691, 2
  %764 = fcmp fast olt float %763, %749
  %765 = and i1 %762, %764
  br i1 %765, label %386, label %766

; <label>:766                                     ; preds = %746
  %767 = uitofp i32 %403 to float
  br label %768

; <label>:768                                     ; preds = %766, %359
  %769 = phi float [ 0.000000e+00, %359 ], [ %748, %766 ]
  %770 = phi float [ 1.000000e+00, %359 ], [ %749, %766 ]
  %771 = phi float [ 0.000000e+00, %359 ], [ %767, %766 ]
  %772 = phi float [ 0.000000e+00, %359 ], [ %750, %766 ]
  %773 = phi float [ 0.000000e+00, %359 ], [ %751, %766 ]
  %774 = phi float [ 0.000000e+00, %359 ], [ %752, %766 ]
  %775 = phi float [ 0.000000e+00, %359 ], [ %753, %766 ]
  %776 = phi float [ 0.000000e+00, %359 ], [ %754, %766 ]
  %777 = phi i32 [ 0, %359 ], [ %755, %766 ]
  %778 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %779 = extractvalue %dx.types.CBufRet.i32 %778, 0
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %822, label %781, !dx.controlflow.hints !44

; <label>:781                                     ; preds = %768
  %782 = icmp eq i32 %777, 0
  br i1 %782, label %821, label %783, !dx.controlflow.hints !45

; <label>:783                                     ; preds = %781
  %784 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.i32 %784, 2
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %793, label %787, !dx.controlflow.hints !46

; <label>:787                                     ; preds = %783
  %788 = fsub fast float 1.000000e+00, %770
  %789 = fdiv fast float %773, %788
  %790 = fdiv fast float %774, %788
  %791 = fdiv fast float %775, %788
  %792 = fdiv fast float %776, %788
  br label %798

; <label>:793                                     ; preds = %783
  %794 = fadd fast float %773, %770
  %795 = fadd fast float %774, %770
  %796 = fadd fast float %775, %770
  %797 = fadd fast float %776, %770
  br label %798

; <label>:798                                     ; preds = %793, %787
  %799 = phi float [ %789, %787 ], [ %794, %793 ]
  %800 = phi float [ %790, %787 ], [ %795, %793 ]
  %801 = phi float [ %791, %787 ], [ %796, %793 ]
  %802 = phi float [ %792, %787 ], [ %797, %793 ]
  %803 = call float @dx.op.binary.f32(i32 35, float %799, float -1.000000e+00)  ; FMax(a,b)
  %804 = call float @dx.op.binary.f32(i32 35, float %800, float -1.000000e+00)  ; FMax(a,b)
  %805 = call float @dx.op.binary.f32(i32 35, float %801, float -1.000000e+00)  ; FMax(a,b)
  %806 = call float @dx.op.binary.f32(i32 35, float %802, float -1.000000e+00)  ; FMax(a,b)
  %807 = call float @dx.op.binary.f32(i32 36, float %803, float 1.000000e+00)  ; FMin(a,b)
  %808 = call float @dx.op.binary.f32(i32 36, float %804, float 1.000000e+00)  ; FMin(a,b)
  %809 = call float @dx.op.binary.f32(i32 36, float %805, float 1.000000e+00)  ; FMin(a,b)
  %810 = call float @dx.op.binary.f32(i32 36, float %806, float 1.000000e+00)  ; FMin(a,b)
  %811 = fmul fast float %807, 1.500000e+00
  %812 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %809, float %811)  ; FMad(a,b,c)
  %813 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %808, float 0.000000e+00)  ; FMad(a,b,c)
  %814 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %810, float %813)  ; FMad(a,b,c)
  %815 = fmul fast float %807, 0x3FEBB67AE0000000
  %816 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %809, float %815)  ; FMad(a,b,c)
  %817 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %808, float 0.000000e+00)  ; FMad(a,b,c)
  %818 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %810, float %817)  ; FMad(a,b,c)
  %819 = fadd fast float %812, 5.000000e-01
  %820 = fadd fast float %816, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %13, i32 %14, i32 0, float %819, float %814, float %820, float %818, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %822

; <label>:821                                     ; preds = %781
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %13, i32 %14, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %822

; <label>:822                                     ; preds = %821, %798, %768
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 0
  %825 = extractvalue %dx.types.CBufRet.f32 %823, 1
  %826 = extractvalue %dx.types.CBufRet.f32 %823, 2
  %827 = call float @dx.op.dot3.f32(i32 55, float %271, float %272, float %273, float %824, float %825, float %826)  ; Dot3(ax,ay,az,bx,by,bz)
  %828 = fmul fast float %827, %769
  %829 = fcmp fast ogt float %772, 0.000000e+00
  %830 = fdiv fast float 1.000000e+00, %772
  %831 = fmul fast float %828, %830
  %832 = select i1 %829, float %831, float %282
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 0
  %835 = extractvalue %dx.types.CBufRet.f32 %833, 1
  %836 = extractvalue %dx.types.CBufRet.f32 %833, 2
  %837 = fmul fast float %834, %235
  %838 = fmul fast float %835, %235
  %839 = fmul fast float %836, %235
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 0
  %842 = extractvalue %dx.types.CBufRet.f32 %840, 1
  %843 = extractvalue %dx.types.CBufRet.f32 %840, 2
  %844 = fmul fast float %841, %236
  %845 = fmul fast float %842, %236
  %846 = fmul fast float %843, %236
  %847 = fadd fast float %844, %837
  %848 = fadd fast float %845, %838
  %849 = fadd fast float %846, %839
  %850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %851 = extractvalue %dx.types.CBufRet.f32 %850, 0
  %852 = extractvalue %dx.types.CBufRet.f32 %850, 1
  %853 = extractvalue %dx.types.CBufRet.f32 %850, 2
  %854 = fadd fast float %847, %851
  %855 = fadd fast float %848, %852
  %856 = fadd fast float %849, %853
  %857 = fmul fast float %854, %832
  %858 = fmul fast float %855, %832
  %859 = fmul fast float %856, %832
  %860 = call float @dx.op.dot3.f32(i32 55, float %857, float %858, float %859, float %857, float %858, float %859)  ; Dot3(ax,ay,az,bx,by,bz)
  %861 = call float @dx.op.unary.f32(i32 25, float %860)  ; Rsqrt(value)
  %862 = fmul fast float %861, %860
  %863 = fmul fast float %861, %857
  %864 = fmul fast float %861, %858
  %865 = fmul fast float %861, %859
  %866 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %867 = extractvalue %dx.types.CBufRet.i32 %866, 1
  %868 = and i32 %867, 1
  %869 = icmp ne i32 %868, 0
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 2
  %872 = fcmp fast ogt float %871, 0.000000e+00
  %873 = and i1 %869, %872
  br i1 %873, label %874, label %1032, !dx.controlflow.hints !47

; <label>:874                                     ; preds = %822
  %875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.f32 %875, 2
  %877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %878 = extractvalue %dx.types.CBufRet.f32 %877, 2
  %879 = fsub fast float %876, %878
  %880 = extractvalue %dx.types.CBufRet.i32 %866, 0
  %881 = call i32 @dx.op.binary.i32(i32 40, i32 %880, i32 3)  ; UMin(a,b)
  %882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %883 = extractvalue %dx.types.CBufRet.f32 %882, 0
  %884 = extractvalue %dx.types.CBufRet.f32 %882, 1
  %885 = extractvalue %dx.types.CBufRet.f32 %877, 0
  %886 = extractvalue %dx.types.CBufRet.f32 %877, 1
  %887 = fsub fast float %883, %885
  %888 = fsub fast float %884, %886
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 0
  %891 = fcmp fast ogt float %890, 0.000000e+00
  %892 = fsub fast float -0.000000e+00, %887
  %893 = fsub fast float -0.000000e+00, %888
  %894 = call float @dx.op.dot2.f32(i32 54, float %863, float %864, float %863, float %864)  ; Dot2(ax,ay,bx,by)
  %895 = call float @dx.op.dot2.f32(i32 54, float %863, float %864, float %892, float %893)  ; Dot2(ax,ay,bx,by)
  %896 = fmul fast float %895, 2.000000e+00
  %897 = call float @dx.op.dot2.f32(i32 54, float %892, float %893, float %892, float %893)  ; Dot2(ax,ay,bx,by)
  %898 = fmul fast float %890, %890
  %899 = fsub fast float %897, %898
  %900 = fmul fast float %896, %896
  %901 = fmul fast float %894, 4.000000e+00
  %902 = fmul fast float %901, %899
  %903 = fsub fast float %900, %902
  %904 = fcmp fast ogt float %903, 0.000000e+00
  br i1 %904, label %905, label %920, !dx.controlflow.hints !48

; <label>:905                                     ; preds = %874
  %906 = fcmp fast ogt float %896, 0.000000e+00
  %907 = call float @dx.op.unary.f32(i32 24, float %903)  ; Sqrt(value)
  %908 = fsub fast float -0.000000e+00, %907
  %909 = select i1 %906, float %907, float %908
  %910 = fadd fast float %909, %896
  %911 = fmul float %910, -5.000000e-01
  %912 = fdiv fast float %911, %894
  %913 = call float @dx.op.binary.f32(i32 35, float %912, float 0.000000e+00)  ; FMax(a,b)
  %914 = call float @dx.op.binary.f32(i32 36, float %862, float %913)  ; FMin(a,b)
  %915 = fdiv fast float %899, %911
  %916 = call float @dx.op.binary.f32(i32 35, float %915, float 0.000000e+00)  ; FMax(a,b)
  %917 = call float @dx.op.binary.f32(i32 36, float %862, float %916)  ; FMin(a,b)
  %918 = call float @dx.op.binary.f32(i32 36, float %914, float %917)  ; FMin(a,b)
  %919 = call float @dx.op.binary.f32(i32 35, float %914, float %917)  ; FMax(a,b)
  br label %920

; <label>:920                                     ; preds = %905, %874
  %921 = phi float [ %919, %905 ], [ -1.000000e+00, %874 ]
  %922 = phi float [ %918, %905 ], [ -1.000000e+00, %874 ]
  %923 = phi i1 [ true, %905 ], [ false, %874 ]
  %924 = and i1 %891, %923
  br i1 %924, label %925, label %927, !dx.controlflow.hints !49

; <label>:925                                     ; preds = %920
  %926 = fcmp fast oeq float %922, %921
  br i1 %926, label %1032, label %928, !dx.controlflow.hints !50

; <label>:927                                     ; preds = %920
  br i1 %891, label %1032, label %928, !dx.controlflow.hints !51

; <label>:928                                     ; preds = %927, %925
  %929 = phi float [ %862, %927 ], [ %921, %925 ]
  %930 = phi float [ 0.000000e+00, %927 ], [ %922, %925 ]
  %931 = fcmp fast oeq float %865, 0.000000e+00
  %932 = fdiv fast float %879, %865
  %933 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %932)  ; FMax(a,b)
  %934 = select i1 %931, float %929, float %933
  %935 = call float @dx.op.binary.f32(i32 36, float %929, float %934)  ; FMin(a,b)
  %936 = fcmp fast ogt float %865, 0.000000e+00
  %937 = fcmp fast olt float %879, 0.000000e+00
  br i1 %936, label %938, label %939, !dx.controlflow.hints !52

; <label>:938                                     ; preds = %928
  br i1 %937, label %1032, label %942, !dx.controlflow.hints !53

; <label>:939                                     ; preds = %928
  br i1 %937, label %940, label %942, !dx.controlflow.hints !54

; <label>:940                                     ; preds = %939
  %941 = call float @dx.op.binary.f32(i32 35, float %930, float %935)  ; FMax(a,b)
  br label %942

; <label>:942                                     ; preds = %940, %939, %938
  %943 = phi float [ %941, %940 ], [ %930, %939 ], [ %930, %938 ]
  %944 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 0
  store float -1.000000e+00, float* %944, align 4, !tbaa !55, !noalias !59
  %945 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 1
  store float -1.000000e+00, float* %945, align 4, !tbaa !55, !noalias !59
  %946 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 2
  store float -1.000000e+00, float* %946, align 4, !tbaa !55, !noalias !59
  %947 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 0
  store float -1.000000e+00, float* %947, align 4, !tbaa !55, !noalias !59
  %948 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 1
  store float -1.000000e+00, float* %948, align 4, !tbaa !55, !noalias !59
  %949 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 2
  store float -1.000000e+00, float* %949, align 4, !tbaa !55, !noalias !59
  %950 = icmp sgt i32 %881, 0
  br i1 %950, label %951, label %1009

; <label>:951                                     ; preds = %942
  br label %952

; <label>:952                                     ; preds = %999, %951
  %953 = phi i32 [ %1000, %999 ], [ 0, %951 ]
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
  %966 = call float @dx.op.dot2.f32(i32 54, float %863, float %864, float %964, float %965)  ; Dot2(ax,ay,bx,by)
  %967 = fmul fast float %966, 2.000000e+00
  %968 = call float @dx.op.dot2.f32(i32 54, float %964, float %965, float %964, float %965)  ; Dot2(ax,ay,bx,by)
  %969 = fmul fast float %963, %963
  %970 = fsub fast float %968, %969
  %971 = fmul fast float %967, %967
  %972 = fmul fast float %901, %970
  %973 = fsub fast float %971, %972
  %974 = fcmp fast ogt float %973, 0.000000e+00
  br i1 %974, label %975, label %990, !dx.controlflow.hints !48

; <label>:975                                     ; preds = %952
  %976 = fcmp fast ogt float %967, 0.000000e+00
  %977 = call float @dx.op.unary.f32(i32 24, float %973)  ; Sqrt(value)
  %978 = fsub fast float -0.000000e+00, %977
  %979 = select i1 %976, float %977, float %978
  %980 = fadd fast float %979, %967
  %981 = fmul float %980, -5.000000e-01
  %982 = fdiv fast float %981, %894
  %983 = call float @dx.op.binary.f32(i32 35, float %982, float 0.000000e+00)  ; FMax(a,b)
  %984 = call float @dx.op.binary.f32(i32 36, float %929, float %983)  ; FMin(a,b)
  %985 = fdiv fast float %970, %981
  %986 = call float @dx.op.binary.f32(i32 35, float %985, float 0.000000e+00)  ; FMax(a,b)
  %987 = call float @dx.op.binary.f32(i32 36, float %929, float %986)  ; FMin(a,b)
  %988 = call float @dx.op.binary.f32(i32 36, float %984, float %987)  ; FMin(a,b)
  %989 = call float @dx.op.binary.f32(i32 35, float %984, float %987)  ; FMax(a,b)
  br label %990

; <label>:990                                     ; preds = %975, %952
  %991 = phi float [ %989, %975 ], [ -1.000000e+00, %952 ]
  %992 = phi float [ %988, %975 ], [ -1.000000e+00, %952 ]
  %993 = phi i1 [ true, %975 ], [ false, %952 ]
  br i1 %993, label %994, label %999, !dx.controlflow.hints !70

; <label>:994                                     ; preds = %990
  %995 = call float @dx.op.binary.f32(i32 35, float %943, float %992)  ; FMax(a,b)
  %996 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 %953
  store float %995, float* %996, align 4, !tbaa !55, !noalias !59
  %997 = call float @dx.op.binary.f32(i32 35, float %943, float %991)  ; FMax(a,b)
  %998 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 %953
  store float %997, float* %998, align 4, !tbaa !55, !noalias !59
  br label %999

; <label>:999                                     ; preds = %994, %990
  %1000 = add nuw nsw i32 %953, 1
  %1001 = icmp eq i32 %1000, %881
  br i1 %1001, label %1002, label %952

; <label>:1002                                    ; preds = %999
  %1003 = load float, float* %946, align 4, !tbaa !55, !alias.scope !71, !noalias !74
  %1004 = load float, float* %945, align 4, !tbaa !55, !alias.scope !77, !noalias !78
  %1005 = load float, float* %944, align 4, !tbaa !55, !alias.scope !79, !noalias !80
  %1006 = load float, float* %949, align 4, !tbaa !55, !alias.scope !81, !noalias !84
  %1007 = load float, float* %948, align 4, !tbaa !55, !alias.scope !87, !noalias !88
  %1008 = load float, float* %947, align 4, !tbaa !55, !alias.scope !89, !noalias !90
  br label %1009

; <label>:1009                                    ; preds = %1002, %942
  %1010 = phi float [ -1.000000e+00, %942 ], [ %1008, %1002 ]
  %1011 = phi float [ -1.000000e+00, %942 ], [ %1007, %1002 ]
  %1012 = phi float [ -1.000000e+00, %942 ], [ %1006, %1002 ]
  %1013 = phi float [ -1.000000e+00, %942 ], [ %1005, %1002 ]
  %1014 = phi float [ -1.000000e+00, %942 ], [ %1004, %1002 ]
  %1015 = phi float [ -1.000000e+00, %942 ], [ %1003, %1002 ]
  %1016 = call float @dx.op.binary.f32(i32 36, float %1014, float %1015)  ; FMin(a,b)
  %1017 = call float @dx.op.binary.f32(i32 36, float %1013, float %1016)  ; FMin(a,b)
  %1018 = call float @dx.op.binary.f32(i32 35, float %1013, float %1014)  ; FMax(a,b)
  %1019 = call float @dx.op.binary.f32(i32 36, float %1018, float %1015)  ; FMin(a,b)
  %1020 = call float @dx.op.binary.f32(i32 36, float %1013, float %1014)  ; FMin(a,b)
  %1021 = call float @dx.op.binary.f32(i32 35, float %1020, float %1019)  ; FMax(a,b)
  %1022 = call float @dx.op.binary.f32(i32 35, float %1014, float %1015)  ; FMax(a,b)
  %1023 = call float @dx.op.binary.f32(i32 35, float %1013, float %1022)  ; FMax(a,b)
  store float %1017, float* %944, align 4, !tbaa !55, !alias.scope !79, !noalias !80
  store float %1021, float* %945, align 4, !tbaa !55, !alias.scope !77, !noalias !78
  store float %1023, float* %946, align 4, !tbaa !55, !alias.scope !71, !noalias !74
  %1024 = call float @dx.op.binary.f32(i32 36, float %1011, float %1012)  ; FMin(a,b)
  %1025 = call float @dx.op.binary.f32(i32 36, float %1010, float %1024)  ; FMin(a,b)
  %1026 = call float @dx.op.binary.f32(i32 35, float %1010, float %1011)  ; FMax(a,b)
  %1027 = call float @dx.op.binary.f32(i32 36, float %1026, float %1012)  ; FMin(a,b)
  %1028 = call float @dx.op.binary.f32(i32 36, float %1010, float %1011)  ; FMin(a,b)
  %1029 = call float @dx.op.binary.f32(i32 35, float %1028, float %1027)  ; FMax(a,b)
  %1030 = call float @dx.op.binary.f32(i32 35, float %1011, float %1012)  ; FMax(a,b)
  %1031 = call float @dx.op.binary.f32(i32 35, float %1010, float %1030)  ; FMax(a,b)
  store float %1025, float* %947, align 4, !tbaa !55, !alias.scope !89, !noalias !90
  store float %1029, float* %948, align 4, !tbaa !55, !alias.scope !87, !noalias !88
  store float %1031, float* %949, align 4, !tbaa !55, !alias.scope !81, !noalias !84
  br label %1032

; <label>:1032                                    ; preds = %1009, %938, %927, %925, %822
  %1033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1033, 2
  %1035 = fmul fast float %1034, %832
  %1036 = call float @dx.op.unary.f32(i32 7, float %1035)  ; Saturate(value)
  %1037 = fptoui float %771 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1038 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %15
  store i32 %1037, i32 addrspace(3)* %1038, align 4, !tbaa !91
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1039 = and i32 %15, 63
  %1040 = icmp ult i32 %1039, 32
  br i1 %1040, label %1041, label %1047, !dx.controlflow.hints !93

; <label>:1041                                    ; preds = %1032
  %1042 = add i32 %15, 32
  %1043 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1042
  %1044 = load i32, i32 addrspace(3)* %1043, align 4, !tbaa !91
  %1045 = load i32, i32 addrspace(3)* %1038, align 4, !tbaa !91
  %1046 = call i32 @dx.op.binary.i32(i32 40, i32 %1045, i32 %1044)  ; UMin(a,b)
  store i32 %1046, i32 addrspace(3)* %1038, align 4, !tbaa !91
  br label %1047

; <label>:1047                                    ; preds = %1041, %1032
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1048 = icmp ult i32 %1039, 16
  br i1 %1048, label %1049, label %1055, !dx.controlflow.hints !94

; <label>:1049                                    ; preds = %1047
  %1050 = add i32 %15, 16
  %1051 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1050
  %1052 = load i32, i32 addrspace(3)* %1051, align 4, !tbaa !91
  %1053 = load i32, i32 addrspace(3)* %1038, align 4, !tbaa !91
  %1054 = call i32 @dx.op.binary.i32(i32 40, i32 %1053, i32 %1052)  ; UMin(a,b)
  store i32 %1054, i32 addrspace(3)* %1038, align 4, !tbaa !91
  br label %1055

; <label>:1055                                    ; preds = %1049, %1047
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1056 = icmp ult i32 %1039, 8
  br i1 %1056, label %1057, label %1063, !dx.controlflow.hints !95

; <label>:1057                                    ; preds = %1055
  %1058 = add i32 %15, 8
  %1059 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1058
  %1060 = load i32, i32 addrspace(3)* %1059, align 4, !tbaa !91
  %1061 = load i32, i32 addrspace(3)* %1038, align 4, !tbaa !91
  %1062 = call i32 @dx.op.binary.i32(i32 40, i32 %1061, i32 %1060)  ; UMin(a,b)
  store i32 %1062, i32 addrspace(3)* %1038, align 4, !tbaa !91
  br label %1063

; <label>:1063                                    ; preds = %1057, %1055
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1064 = icmp ult i32 %1039, 4
  br i1 %1064, label %1065, label %1071, !dx.controlflow.hints !96

; <label>:1065                                    ; preds = %1063
  %1066 = add i32 %15, 4
  %1067 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1066
  %1068 = load i32, i32 addrspace(3)* %1067, align 4, !tbaa !91
  %1069 = load i32, i32 addrspace(3)* %1038, align 4, !tbaa !91
  %1070 = call i32 @dx.op.binary.i32(i32 40, i32 %1069, i32 %1068)  ; UMin(a,b)
  store i32 %1070, i32 addrspace(3)* %1038, align 4, !tbaa !91
  br label %1071

; <label>:1071                                    ; preds = %1065, %1063
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1072 = icmp ult i32 %1039, 2
  br i1 %1072, label %1073, label %1079, !dx.controlflow.hints !97

; <label>:1073                                    ; preds = %1071
  %1074 = add i32 %15, 2
  %1075 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1074
  %1076 = load i32, i32 addrspace(3)* %1075, align 4, !tbaa !91
  %1077 = load i32, i32 addrspace(3)* %1038, align 4, !tbaa !91
  %1078 = call i32 @dx.op.binary.i32(i32 40, i32 %1077, i32 %1076)  ; UMin(a,b)
  store i32 %1078, i32 addrspace(3)* %1038, align 4, !tbaa !91
  br label %1079

; <label>:1079                                    ; preds = %1073, %1071
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1080 = icmp eq i32 %1039, 0
  br i1 %1080, label %1081, label %1087, !dx.controlflow.hints !98

; <label>:1081                                    ; preds = %1079
  %1082 = add i32 %15, 1
  %1083 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1082
  %1084 = load i32, i32 addrspace(3)* %1083, align 4, !tbaa !91
  %1085 = load i32, i32 addrspace(3)* %1038, align 4, !tbaa !91
  %1086 = call i32 @dx.op.binary.i32(i32 40, i32 %1085, i32 %1084)  ; UMin(a,b)
  store i32 %1086, i32 addrspace(3)* %1038, align 4, !tbaa !91
  br label %1087

; <label>:1087                                    ; preds = %1081, %1079
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1088 = and i32 %15, -64
  %1089 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1088
  %1090 = load i32, i32 addrspace(3)* %1089, align 4, !tbaa !91
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1037, i32 addrspace(3)* %1038, align 4, !tbaa !91
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1040, label %1091, label %1097, !dx.controlflow.hints !99

; <label>:1091                                    ; preds = %1087
  %1092 = add i32 %15, 32
  %1093 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1092
  %1094 = load i32, i32 addrspace(3)* %1093, align 4, !tbaa !91
  %1095 = load i32, i32 addrspace(3)* %1038, align 4, !tbaa !91
  %1096 = call i32 @dx.op.binary.i32(i32 39, i32 %1095, i32 %1094)  ; UMax(a,b)
  store i32 %1096, i32 addrspace(3)* %1038, align 4, !tbaa !91
  br label %1097

; <label>:1097                                    ; preds = %1091, %1087
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1048, label %1098, label %1104, !dx.controlflow.hints !100

; <label>:1098                                    ; preds = %1097
  %1099 = add i32 %15, 16
  %1100 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1099
  %1101 = load i32, i32 addrspace(3)* %1100, align 4, !tbaa !91
  %1102 = load i32, i32 addrspace(3)* %1038, align 4, !tbaa !91
  %1103 = call i32 @dx.op.binary.i32(i32 39, i32 %1102, i32 %1101)  ; UMax(a,b)
  store i32 %1103, i32 addrspace(3)* %1038, align 4, !tbaa !91
  br label %1104

; <label>:1104                                    ; preds = %1098, %1097
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1056, label %1105, label %1111, !dx.controlflow.hints !101

; <label>:1105                                    ; preds = %1104
  %1106 = add i32 %15, 8
  %1107 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1106
  %1108 = load i32, i32 addrspace(3)* %1107, align 4, !tbaa !91
  %1109 = load i32, i32 addrspace(3)* %1038, align 4, !tbaa !91
  %1110 = call i32 @dx.op.binary.i32(i32 39, i32 %1109, i32 %1108)  ; UMax(a,b)
  store i32 %1110, i32 addrspace(3)* %1038, align 4, !tbaa !91
  br label %1111

; <label>:1111                                    ; preds = %1105, %1104
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1064, label %1112, label %1118, !dx.controlflow.hints !102

; <label>:1112                                    ; preds = %1111
  %1113 = add i32 %15, 4
  %1114 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1113
  %1115 = load i32, i32 addrspace(3)* %1114, align 4, !tbaa !91
  %1116 = load i32, i32 addrspace(3)* %1038, align 4, !tbaa !91
  %1117 = call i32 @dx.op.binary.i32(i32 39, i32 %1116, i32 %1115)  ; UMax(a,b)
  store i32 %1117, i32 addrspace(3)* %1038, align 4, !tbaa !91
  br label %1118

; <label>:1118                                    ; preds = %1112, %1111
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1072, label %1119, label %1125, !dx.controlflow.hints !103

; <label>:1119                                    ; preds = %1118
  %1120 = add i32 %15, 2
  %1121 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1120
  %1122 = load i32, i32 addrspace(3)* %1121, align 4, !tbaa !91
  %1123 = load i32, i32 addrspace(3)* %1038, align 4, !tbaa !91
  %1124 = call i32 @dx.op.binary.i32(i32 39, i32 %1123, i32 %1122)  ; UMax(a,b)
  store i32 %1124, i32 addrspace(3)* %1038, align 4, !tbaa !91
  br label %1125

; <label>:1125                                    ; preds = %1119, %1118
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1080, label %1126, label %1132, !dx.controlflow.hints !104

; <label>:1126                                    ; preds = %1125
  %1127 = add i32 %15, 1
  %1128 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1127
  %1129 = load i32, i32 addrspace(3)* %1128, align 4, !tbaa !91
  %1130 = load i32, i32 addrspace(3)* %1038, align 4, !tbaa !91
  %1131 = call i32 @dx.op.binary.i32(i32 39, i32 %1130, i32 %1129)  ; UMax(a,b)
  store i32 %1131, i32 addrspace(3)* %1038, align 4, !tbaa !91
  br label %1132

; <label>:1132                                    ; preds = %1126, %1125
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1133 = load i32, i32 addrspace(3)* %1089, align 4, !tbaa !91
  %1134 = uitofp i32 %1133 to float
  %1135 = uitofp i32 %1090 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %13, i32 %14, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1137 = extractvalue %dx.types.CBufRet.f32 %1136, 0
  %1138 = fmul fast float %1137, %771
  %1139 = fmul fast float %1137, %1134
  %1140 = fmul fast float %1137, %1135
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %13, i32 %14, i32 undef, float %1138, float %1139, float %1140, float %1138, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %13, i32 %14, i32 undef, float %1036, float %1036, float %1036, float %1036, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!4 = !{!5, !11, !17, !20}
!5 = !{!6, !8, !9, !10}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!11 = !{!12, !13, !14, !15}
!12 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !16}
!16 = !{i32 0, i32 14}
!17 = !{!18, !19}
!18 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!19 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!20 = !{!21, !22}
!21 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!22 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!23 = !{void ()* @cs_fog_raymarching_heightmap, !"cs_fog_raymarching_heightmap", null, !4, !24}
!24 = !{i32 0, i64 272, i32 4, !25}
!25 = !{i32 8, i32 8, i32 1}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
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
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = !{!56, !56, i64 0}
!56 = !{!"float", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !{!60, !62, !64, !65, !67, !68, !69}
!60 = distinct !{!60, !61, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!61 = distinct !{!61, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!62 = distinct !{!62, !63, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!63 = distinct !{!63, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!64 = distinct !{!64, !63, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!65 = distinct !{!65, !66, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!66 = distinct !{!66, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!67 = distinct !{!67, !66, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!68 = distinct !{!68, !66, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!69 = distinct !{!69, !66, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = !{!72}
!72 = distinct !{!72, !73, !"\01?sort@@YAXAIAM00@Z: %c"}
!73 = distinct !{!73, !"\01?sort@@YAXAIAM00@Z"}
!74 = !{!75, !76, !60, !62, !64, !65, !67, !68, !69}
!75 = distinct !{!75, !73, !"\01?sort@@YAXAIAM00@Z: %a"}
!76 = distinct !{!76, !73, !"\01?sort@@YAXAIAM00@Z: %b"}
!77 = !{!76}
!78 = !{!75, !72, !60, !62, !64, !65, !67, !68, !69}
!79 = !{!75}
!80 = !{!76, !72, !60, !62, !64, !65, !67, !68, !69}
!81 = !{!82}
!82 = distinct !{!82, !83, !"\01?sort@@YAXAIAM00@Z: %c"}
!83 = distinct !{!83, !"\01?sort@@YAXAIAM00@Z"}
!84 = !{!85, !86, !60, !62, !64, !65, !67, !68, !69}
!85 = distinct !{!85, !83, !"\01?sort@@YAXAIAM00@Z: %a"}
!86 = distinct !{!86, !83, !"\01?sort@@YAXAIAM00@Z: %b"}
!87 = !{!86}
!88 = !{!85, !82, !60, !62, !64, !65, !67, !68, !69}
!89 = !{!85}
!90 = !{!86, !82, !60, !62, !64, !65, !67, !68, !69}
!91 = !{!92, !92, i64 0}
!92 = !{!"int", !57, i64 0}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}

