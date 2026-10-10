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
; shader hash: f95bca9450ea54870f069d226d4aaec2
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

define void @cs_fog_raymarching_air_heightmap() {
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
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 3
  %365 = fsub fast float -0.000000e+00, %228
  %366 = fsub fast float -0.000000e+00, %229
  %367 = fsub fast float %364, %230
  %368 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %365, float %366, float %367)  ; Dot3(ax,ay,az,bx,by,bz)
  %369 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %271, float %272, float %273)  ; Dot3(ax,ay,az,bx,by,bz)
  %370 = fdiv fast float 1.000000e+00, %369
  %371 = fmul fast float %370, %368
  %372 = fcmp fast olt float %371, 0.000000e+00
  %373 = fcmp fast ogt float %273, 0.000000e+00
  %374 = and i1 %373, %372
  br i1 %374, label %379, label %375, !dx.controlflow.hints !30

; <label>:375                                     ; preds = %359
  %376 = fcmp fast olt float %273, 0.000000e+00
  br i1 %376, label %377, label %379, !dx.controlflow.hints !31

; <label>:377                                     ; preds = %375
  %378 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %371)  ; FMax(a,b)
  br label %379

; <label>:379                                     ; preds = %377, %375, %359
  %380 = phi float [ 0.000000e+00, %359 ], [ %378, %377 ], [ 0.000000e+00, %375 ]
  %381 = phi float [ 0.000000e+00, %359 ], [ 0x47EFFFFFE0000000, %377 ], [ %371, %375 ]
  %382 = fcmp fast oeq float %381, 0.000000e+00
  br i1 %382, label %386, label %383, !dx.controlflow.hints !32

; <label>:383                                     ; preds = %379
  %384 = call float @dx.op.binary.f32(i32 36, float %362, float %380)  ; FMin(a,b)
  %385 = call float @dx.op.binary.f32(i32 35, float %361, float %381)  ; FMax(a,b)
  br label %386

; <label>:386                                     ; preds = %383, %379
  %387 = phi i32 [ 1, %383 ], [ 0, %379 ]
  %388 = phi float [ %385, %383 ], [ %361, %379 ]
  %389 = phi float [ %384, %383 ], [ %362, %379 ]
  %390 = call float @dx.op.binary.f32(i32 36, float %292, float %388)  ; FMin(a,b)
  %391 = call float @dx.op.binary.f32(i32 35, float %269, float %389)  ; FMax(a,b)
  %392 = extractvalue %dx.types.CBufRet.f32 %363, 0
  %393 = fmul fast float %217, 2.000000e+00
  %394 = fadd fast float %393, -1.000000e+00
  %395 = fmul fast float %392, %394
  %396 = fadd fast float %395, %391
  %397 = fcmp fast olt float %396, %390
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 2
  %400 = fcmp fast olt float %399, 1.000000e+00
  %401 = and i1 %397, %400
  br i1 %401, label %402, label %855

; <label>:402                                     ; preds = %386
  %403 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.i32 %403, 1
  %405 = add i32 %404, -1
  %406 = fmul fast float %396, %273
  %407 = fadd fast float %406, %230
  %408 = fmul fast float %396, %272
  %409 = fadd fast float %408, %229
  %410 = fmul fast float %396, %271
  %411 = fadd fast float %410, %228
  br label %412

; <label>:412                                     ; preds = %833, %402
  %413 = phi float [ %835, %833 ], [ 0.000000e+00, %402 ]
  %414 = phi float [ %836, %833 ], [ 1.000000e+00, %402 ]
  %415 = phi float [ %846, %833 ], [ %411, %402 ]
  %416 = phi float [ %847, %833 ], [ %409, %402 ]
  %417 = phi float [ %848, %833 ], [ %407, %402 ]
  %418 = phi float [ %834, %833 ], [ %396, %402 ]
  %419 = phi i32 [ %429, %833 ], [ 0, %402 ]
  %420 = phi i32 [ %604, %833 ], [ %405, %402 ]
  %421 = phi float [ %837, %833 ], [ 0.000000e+00, %402 ]
  %422 = phi float [ %838, %833 ], [ 0.000000e+00, %402 ]
  %423 = phi float [ %839, %833 ], [ 0.000000e+00, %402 ]
  %424 = phi float [ %840, %833 ], [ 0.000000e+00, %402 ]
  %425 = phi float [ %841, %833 ], [ 0.000000e+00, %402 ]
  %426 = phi i32 [ %842, %833 ], [ 0, %402 ]
  %427 = fsub fast float -0.000000e+00, %416
  %428 = fsub fast float -0.000000e+00, %415
  %429 = add i32 %419, 1
  %430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %431 = extractvalue %dx.types.CBufRet.f32 %430, 0
  %432 = icmp eq i32 %360, 0
  br i1 %432, label %601, label %433, !dx.controlflow.hints !33

; <label>:433                                     ; preds = %412
  %434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %435 = extractvalue %dx.types.CBufRet.i32 %434, 1
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 1
  %438 = fcmp fast ogt float %437, %418
  br i1 %438, label %439, label %441, !dx.controlflow.hints !34

; <label>:439                                     ; preds = %433
  %440 = fsub fast float %437, %418
  br label %591

; <label>:441                                     ; preds = %433
  %442 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.i32 %442, 3
  %444 = icmp eq i32 %443, 0
  %445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.f32 %445, 2
  %447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.f32 %447, 2
  %449 = fsub fast float %446, %417
  %450 = fadd fast float %449, %448
  %451 = fsub fast float 0xC7EFFFFFE0000000, %417
  br i1 %444, label %459, label %452, !dx.controlflow.hints !27

; <label>:452                                     ; preds = %441
  %453 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %428, float %427, float %450)  ; Dot3(ax,ay,az,bx,by,bz)
  %454 = fmul fast float %370, %453
  %455 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %428, float %427, float %451)  ; Dot3(ax,ay,az,bx,by,bz)
  %456 = fmul fast float %370, %455
  %457 = call float @dx.op.binary.f32(i32 36, float %454, float %456)  ; FMin(a,b)
  %458 = call float @dx.op.binary.f32(i32 35, float %454, float %456)  ; FMax(a,b)
  br label %492

; <label>:459                                     ; preds = %441
  %460 = extractvalue %dx.types.CBufRet.f32 %445, 0
  %461 = extractvalue %dx.types.CBufRet.f32 %445, 1
  %462 = extractvalue %dx.types.CBufRet.f32 %447, 0
  %463 = extractvalue %dx.types.CBufRet.f32 %447, 1
  %464 = fdiv fast float 1.000000e+00, %271
  %465 = fdiv fast float 1.000000e+00, %272
  %466 = fdiv fast float 1.000000e+00, %273
  %467 = fsub fast float %460, %415
  %468 = fmul fast float %464, %467
  %469 = fadd fast float %467, %462
  %470 = fmul fast float %469, %464
  %471 = call float @dx.op.binary.f32(i32 36, float %468, float %470)  ; FMin(a,b)
  %472 = call float @dx.op.binary.f32(i32 35, float %468, float %470)  ; FMax(a,b)
  %473 = fsub fast float %461, %416
  %474 = fmul fast float %465, %473
  %475 = fadd fast float %473, %463
  %476 = fmul fast float %475, %465
  %477 = call float @dx.op.binary.f32(i32 36, float %474, float %476)  ; FMin(a,b)
  %478 = call float @dx.op.binary.f32(i32 35, float %471, float %477)  ; FMax(a,b)
  %479 = call float @dx.op.binary.f32(i32 35, float %474, float %476)  ; FMax(a,b)
  %480 = call float @dx.op.binary.f32(i32 36, float %472, float %479)  ; FMin(a,b)
  %481 = fmul fast float %466, %451
  %482 = fmul fast float %466, %450
  %483 = call float @dx.op.binary.f32(i32 36, float %481, float %482)  ; FMin(a,b)
  %484 = call float @dx.op.binary.f32(i32 35, float %478, float %483)  ; FMax(a,b)
  %485 = call float @dx.op.binary.f32(i32 35, float %481, float %482)  ; FMax(a,b)
  %486 = call float @dx.op.binary.f32(i32 36, float %480, float %485)  ; FMin(a,b)
  %487 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %484)  ; FMax(a,b)
  %488 = fcmp fast ult float %486, %487
  br i1 %488, label %492, label %489, !dx.controlflow.hints !28

; <label>:489                                     ; preds = %459
  %490 = call float @dx.op.binary.f32(i32 36, float %484, float %486)  ; FMin(a,b)
  %491 = call float @dx.op.binary.f32(i32 35, float %484, float %486)  ; FMax(a,b)
  br label %492

; <label>:492                                     ; preds = %489, %459, %452
  %493 = phi float [ %457, %452 ], [ %490, %489 ], [ 0.000000e+00, %459 ]
  %494 = phi float [ %458, %452 ], [ %491, %489 ], [ 0.000000e+00, %459 ]
  %495 = fcmp fast ogt float %493, 0.000000e+00
  br i1 %495, label %591, label %496, !dx.controlflow.hints !35

; <label>:496                                     ; preds = %492
  %497 = fcmp fast ugt float %494, 0.000000e+00
  br i1 %497, label %498, label %591, !dx.controlflow.hints !36

; <label>:498                                     ; preds = %496
  %499 = icmp sgt i32 %420, 0
  br i1 %499, label %500, label %585

; <label>:500                                     ; preds = %498
  br label %501

; <label>:501                                     ; preds = %581, %500
  %502 = phi i32 [ %582, %581 ], [ %420, %500 ]
  %503 = sitofp i32 %502 to float
  %504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %505 = extractvalue %dx.types.CBufRet.f32 %504, 0
  %506 = extractvalue %dx.types.CBufRet.f32 %504, 1
  %507 = fsub fast float %415, %505
  %508 = fsub fast float %416, %506
  %509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %510 = extractvalue %dx.types.CBufRet.f32 %509, 0
  %511 = extractvalue %dx.types.CBufRet.f32 %509, 1
  %512 = fmul fast float %507, %510
  %513 = fmul fast float %508, %511
  %514 = fsub fast float 1.000000e+00, %513
  %515 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.i32 %515, 3
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %524, label %518, !dx.controlflow.hints !37

; <label>:518                                     ; preds = %501
  %519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %9, float %512, float %514, float undef, float undef, i32 0, i32 0, i32 undef, float %503)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 0
  %521 = extractvalue %dx.types.ResRet.f32 %519, 1
  %522 = extractvalue %dx.types.ResRet.f32 %519, 2
  %523 = extractvalue %dx.types.ResRet.f32 %519, 3
  br label %530

; <label>:524                                     ; preds = %501
  %525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %10, float %512, float %514, float undef, float undef, i32 0, i32 0, i32 undef, float %503)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = extractvalue %dx.types.ResRet.f32 %525, 1
  %528 = extractvalue %dx.types.ResRet.f32 %525, 2
  %529 = extractvalue %dx.types.ResRet.f32 %525, 3
  br label %530

; <label>:530                                     ; preds = %524, %518
  %531 = phi float [ %520, %518 ], [ %526, %524 ]
  %532 = phi float [ %521, %518 ], [ %527, %524 ]
  %533 = phi float [ %522, %518 ], [ %528, %524 ]
  %534 = phi float [ %523, %518 ], [ %529, %524 ]
  %535 = extractvalue %dx.types.CBufRet.f32 %509, 3
  %536 = fmul fast float %535, %531
  %537 = extractvalue %dx.types.CBufRet.f32 %504, 2
  %538 = fadd fast float %536, %537
  %539 = fmul fast float %535, %532
  %540 = fadd fast float %539, %537
  %541 = fmul fast float %535, %533
  %542 = fadd fast float %541, %537
  %543 = and i32 %502, 31
  %544 = shl i32 1, %543
  %545 = uitofp i32 %544 to float
  %546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %547 = extractvalue %dx.types.CBufRet.f32 %546, 3
  %548 = fdiv fast float 1.000000e+00, %547
  %549 = fmul fast float %548, %545
  %550 = fmul fast float %549, %273
  %551 = fadd fast float %550, %417
  %552 = fcmp fast oeq float %534, 0.000000e+00
  %553 = fcmp fast ogt float %417, %540
  %554 = fcmp fast ogt float %551, %540
  %555 = and i1 %553, %554
  %556 = or i1 %552, %555
  br i1 %556, label %557, label %561, !dx.controlflow.hints !38

; <label>:557                                     ; preds = %530
  %558 = add nsw i32 %502, 1
  %559 = add nsw i32 %435, -1
  %560 = call i32 @dx.op.binary.i32(i32 38, i32 %558, i32 %559)  ; IMin(a,b)
  br label %591

; <label>:561                                     ; preds = %530
  %562 = fcmp fast olt float %417, %542
  %563 = fcmp fast olt float %551, %542
  %564 = and i1 %562, %563
  br i1 %564, label %565, label %569, !dx.controlflow.hints !39

; <label>:565                                     ; preds = %561
  %566 = add nsw i32 %502, 1
  %567 = add nsw i32 %435, -1
  %568 = call i32 @dx.op.binary.i32(i32 38, i32 %566, i32 %567)  ; IMin(a,b)
  br label %591

; <label>:569                                     ; preds = %561
  %570 = fcmp fast olt float %417, %538
  %571 = fcmp fast olt float %551, %538
  %572 = and i1 %570, %571
  br i1 %572, label %573, label %581, !dx.controlflow.hints !40

; <label>:573                                     ; preds = %569
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 3
  %576 = extractvalue %dx.types.CBufRet.f32 %509, 2
  %577 = fcmp fast une float %575, %576
  br i1 %577, label %578, label %585, !dx.controlflow.hints !41

; <label>:578                                     ; preds = %573
  %579 = fsub fast float %417, %542
  %580 = call float @dx.op.binary.f32(i32 36, float %549, float %579)  ; FMin(a,b)
  br label %585

; <label>:581                                     ; preds = %569
  %582 = add nsw i32 %502, -1
  %583 = icmp sgt i32 %502, 1
  br i1 %583, label %501, label %584

; <label>:584                                     ; preds = %581
  br label %585

; <label>:585                                     ; preds = %584, %578, %573, %498
  %586 = phi float [ %580, %578 ], [ %549, %573 ], [ 0.000000e+00, %498 ], [ 0.000000e+00, %584 ]
  %587 = phi i32 [ %502, %578 ], [ %502, %573 ], [ %420, %498 ], [ %582, %584 ]
  %588 = add nsw i32 %587, 1
  %589 = add nsw i32 %435, -1
  %590 = call i32 @dx.op.binary.i32(i32 38, i32 %588, i32 %589)  ; IMin(a,b)
  br label %591

; <label>:591                                     ; preds = %585, %565, %557, %496, %492, %439
  %592 = phi float [ %440, %439 ], [ %549, %557 ], [ %549, %565 ], [ %586, %585 ], [ 0x47EFFFFFE0000000, %496 ], [ %493, %492 ]
  %593 = phi i32 [ %360, %439 ], [ %360, %557 ], [ %360, %565 ], [ %360, %585 ], [ 0, %496 ], [ %360, %492 ]
  %594 = phi i32 [ %420, %439 ], [ %560, %557 ], [ %568, %565 ], [ %590, %585 ], [ %420, %496 ], [ %420, %492 ]
  %595 = icmp ne i32 %593, 0
  %596 = zext i1 %595 to i32
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 2
  %599 = call float @dx.op.binary.f32(i32 35, float %592, float %598)  ; FMax(a,b)
  %600 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %599)  ; FMin(a,b)
  br label %601

; <label>:601                                     ; preds = %591, %412
  %602 = phi i32 [ %596, %591 ], [ 0, %412 ]
  %603 = phi float [ %600, %591 ], [ 0x47EFFFFFE0000000, %412 ]
  %604 = phi i32 [ %594, %591 ], [ %420, %412 ]
  %605 = icmp eq i32 %387, 0
  br i1 %605, label %618, label %606, !dx.controlflow.hints !42

; <label>:606                                     ; preds = %601
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 3
  %609 = extractvalue %dx.types.CBufRet.f32 %607, 2
  %610 = fmul fast float %608, %418
  %611 = fdiv fast float %610, %390
  %612 = fadd fast float %611, 1.000000e+00
  %613 = call float @dx.op.unary.f32(i32 23, float %612)  ; Log(value)
  %614 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %613)  ; FMin(a,b)
  %615 = fmul fast float %609, %390
  %616 = fmul fast float %615, %614
  %617 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %616)  ; FMin(a,b)
  br label %618

; <label>:618                                     ; preds = %606, %601
  %619 = phi float [ %617, %606 ], [ 0x47EFFFFFE0000000, %601 ]
  %620 = extractvalue %dx.types.CBufRet.f32 %430, 2
  %621 = fmul fast float %620, %418
  %622 = call float @dx.op.unary.f32(i32 23, float %621)  ; Log(value)
  %623 = fmul fast float %622, 0x3FE62E4300000000
  %624 = call float @dx.op.binary.f32(i32 35, float %623, float 1.000000e+00)  ; FMax(a,b)
  %625 = fmul fast float %624, %619
  %626 = call float @dx.op.binary.f32(i32 36, float %625, float %603)  ; FMin(a,b)
  %627 = call float @dx.op.binary.f32(i32 35, float %626, float %431)  ; FMax(a,b)
  %628 = fsub fast float %390, %418
  %629 = fadd fast float %628, 0x3F1A36E2E0000000
  %630 = call float @dx.op.binary.f32(i32 36, float %629, float %627)  ; FMin(a,b)
  %631 = icmp eq i32 %602, 0
  br i1 %631, label %728, label %632, !dx.controlflow.hints !43

; <label>:632                                     ; preds = %618
  %633 = fcmp fast olt float %629, %627
  %634 = fmul fast float %273, %216
  %635 = fmul fast float %634, %630
  %636 = fadd fast float %635, %417
  %637 = fmul fast float %273, %217
  %638 = fmul fast float %637, %630
  %639 = fadd fast float %638, %417
  %640 = fmul fast float %273, %218
  %641 = fmul fast float %640, %630
  %642 = fadd fast float %641, %417
  br i1 %633, label %643, label %648, !dx.controlflow.hints !44

; <label>:643                                     ; preds = %632
  %644 = fmul fast float %630, %271
  %645 = fmul fast float %630, %272
  %646 = fadd fast float %644, %415
  %647 = fadd fast float %645, %416
  br label %648

; <label>:648                                     ; preds = %643, %632
  %649 = phi float [ %646, %643 ], [ %415, %632 ]
  %650 = phi float [ %647, %643 ], [ %416, %632 ]
  %651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %652 = extractvalue %dx.types.CBufRet.f32 %651, 0
  %653 = extractvalue %dx.types.CBufRet.f32 %651, 1
  %654 = fsub fast float %649, %652
  %655 = fsub fast float %650, %653
  %656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %657 = extractvalue %dx.types.CBufRet.f32 %656, 0
  %658 = extractvalue %dx.types.CBufRet.f32 %656, 1
  %659 = fmul fast float %654, %657
  %660 = fmul fast float %655, %658
  %661 = fsub fast float 1.000000e+00, %660
  %662 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.i32 %662, 3
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %671, label %665, !dx.controlflow.hints !37

; <label>:665                                     ; preds = %648
  %666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %9, float %659, float %661, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %667 = extractvalue %dx.types.ResRet.f32 %666, 0
  %668 = extractvalue %dx.types.ResRet.f32 %666, 1
  %669 = extractvalue %dx.types.ResRet.f32 %666, 2
  %670 = extractvalue %dx.types.ResRet.f32 %666, 3
  br label %677

; <label>:671                                     ; preds = %648
  %672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %10, float %659, float %661, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %673 = extractvalue %dx.types.ResRet.f32 %672, 0
  %674 = extractvalue %dx.types.ResRet.f32 %672, 1
  %675 = extractvalue %dx.types.ResRet.f32 %672, 2
  %676 = extractvalue %dx.types.ResRet.f32 %672, 3
  br label %677

; <label>:677                                     ; preds = %671, %665
  %678 = phi float [ %667, %665 ], [ %673, %671 ]
  %679 = phi float [ %668, %665 ], [ %674, %671 ]
  %680 = phi float [ %669, %665 ], [ %675, %671 ]
  %681 = phi float [ %670, %665 ], [ %676, %671 ]
  %682 = extractvalue %dx.types.CBufRet.f32 %656, 3
  %683 = fmul fast float %682, %679
  %684 = fmul fast float %683, %678
  %685 = fsub fast float %683, %684
  %686 = fcmp fast ole float %685, 0.000000e+00
  %687 = extractvalue %dx.types.CBufRet.f32 %651, 2
  %688 = fadd fast float %684, %687
  %689 = fmul fast float %682, %680
  %690 = fadd fast float %689, %687
  %691 = fdiv fast float 1.000000e+00, %685
  %692 = select i1 %686, float 1.000000e+06, float %691
  %693 = fsub fast float %636, %688
  %694 = fmul fast float %692, %693
  %695 = call float @dx.op.unary.f32(i32 7, float %694)  ; Saturate(value)
  %696 = extractvalue %dx.types.CBufRet.f32 %656, 2
  %697 = fmul fast float %696, %695
  %698 = fsub fast float %696, %697
  %699 = fcmp fast olt float %636, %690
  %700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %701 = extractvalue %dx.types.CBufRet.f32 %700, 3
  %702 = select i1 %699, float %701, float 1.000000e+00
  %703 = fmul fast float %698, %702
  %704 = fsub fast float %639, %688
  %705 = fmul fast float %692, %704
  %706 = call float @dx.op.unary.f32(i32 7, float %705)  ; Saturate(value)
  %707 = fmul fast float %696, %706
  %708 = fsub fast float %696, %707
  %709 = fcmp fast olt float %639, %690
  %710 = select i1 %709, float %701, float 1.000000e+00
  %711 = fmul fast float %708, %710
  %712 = fadd fast float %711, %703
  %713 = fsub fast float %642, %688
  %714 = fmul fast float %692, %713
  %715 = call float @dx.op.unary.f32(i32 7, float %714)  ; Saturate(value)
  %716 = fmul fast float %696, %715
  %717 = fsub fast float %696, %716
  %718 = fcmp fast olt float %642, %690
  %719 = select i1 %718, float %701, float 1.000000e+00
  %720 = fmul fast float %717, %719
  %721 = fadd fast float %712, %720
  %722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %723 = extractvalue %dx.types.CBufRet.f32 %722, 2
  %724 = fmul fast float %630, 0x3FD5555560000000
  %725 = fmul fast float %724, %681
  %726 = fmul fast float %725, %723
  %727 = fmul fast float %726, %721
  br label %728

; <label>:728                                     ; preds = %677, %618
  %729 = phi float [ %727, %677 ], [ 0.000000e+00, %618 ]
  br i1 %605, label %776, label %730, !dx.controlflow.hints !45

; <label>:730                                     ; preds = %728
  %731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %732 = extractvalue %dx.types.CBufRet.f32 %731, 0
  %733 = fsub fast float %732, %417
  %734 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %428, float %427, float %733)  ; Dot3(ax,ay,az,bx,by,bz)
  %735 = fmul fast float %370, %734
  %736 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %735)  ; FMax(a,b)
  %737 = fcmp fast olt float %273, 0.000000e+00
  %738 = call float @dx.op.binary.f32(i32 36, float %630, float %736)  ; FMin(a,b)
  br i1 %737, label %740, label %739, !dx.controlflow.hints !46

; <label>:739                                     ; preds = %730
  br label %740

; <label>:740                                     ; preds = %739, %730
  %741 = phi float [ 0.000000e+00, %739 ], [ %738, %730 ]
  %742 = phi float [ %738, %739 ], [ %630, %730 ]
  %743 = phi float [ %738, %739 ], [ 0.000000e+00, %730 ]
  %744 = phi float [ %630, %739 ], [ %738, %730 ]
  %745 = fsub fast float %742, %741
  %746 = extractvalue %dx.types.CBufRet.f32 %731, 1
  %747 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %746)  ; FMin(a,b)
  %748 = fsub fast float %417, %732
  %749 = fmul fast float %747, 0x3FF7154760000000
  %750 = fmul fast float %749, %748
  %751 = call float @dx.op.unary.f32(i32 21, float %750)  ; Exp(value)
  %752 = fmul fast float %273, 0x3FF7154760000000
  %753 = fmul fast float %752, %744
  %754 = fmul fast float %753, %747
  %755 = call float @dx.op.unary.f32(i32 21, float %754)  ; Exp(value)
  %756 = fmul fast float %752, %743
  %757 = fmul fast float %756, %747
  %758 = call float @dx.op.unary.f32(i32 21, float %757)  ; Exp(value)
  %759 = fsub fast float %755, %758
  %760 = fmul fast float %759, %751
  %761 = fmul fast float %747, %273
  %762 = fdiv fast float %760, %761
  %763 = fadd fast float %745, %762
  %764 = call float @dx.op.unary.f32(i32 6, float %273)  ; FAbs(value)
  %765 = fcmp fast olt float %764, 0x3F0FFB4800000000
  %766 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %748)  ; FMax(a,b)
  %767 = fmul fast float %766, 0x3FF7154760000000
  %768 = fmul fast float %767, %746
  %769 = call float @dx.op.unary.f32(i32 21, float %768)  ; Exp(value)
  %770 = fmul fast float %769, %630
  %771 = select i1 %765, float %770, float %763
  %772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %773 = extractvalue %dx.types.CBufRet.f32 %772, 1
  %774 = fmul fast float %771, %773
  %775 = fadd fast float %774, %729
  br label %776

; <label>:776                                     ; preds = %740, %728
  %777 = phi float [ %775, %740 ], [ %729, %728 ]
  %778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %779 = extractvalue %dx.types.CBufRet.f32 %778, 1
  %780 = fcmp fast ogt float %777, %779
  br i1 %780, label %783, label %781, !dx.controlflow.hints !47

; <label>:781                                     ; preds = %776
  %782 = fadd fast float %630, %418
  br label %833

; <label>:783                                     ; preds = %776
  %784 = fmul fast float %777, 0xBFF7154760000000
  %785 = call float @dx.op.unary.f32(i32 21, float %784)  ; Exp(value)
  %786 = call float @dx.op.unary.f32(i32 7, float %785)  ; Saturate(value)
  %787 = fsub fast float 1.000000e+00, %786
  %788 = fdiv fast float %777, %630
  %789 = fadd fast float %630, %418
  %790 = fmul fast float %418, %418
  %791 = fmul fast float %789, %789
  %792 = fsub fast float %790, %791
  %793 = fmul fast float %792, -5.000000e-01
  %794 = fmul fast float %793, %788
  %795 = fadd fast float %794, %413
  %796 = fadd fast float %777, %421
  %797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %798 = extractvalue %dx.types.CBufRet.i32 %797, 0
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %826, label %800, !dx.controlflow.hints !48

; <label>:800                                     ; preds = %783
  %801 = icmp ne i32 %426, 0
  %802 = zext i1 %801 to i32
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 2
  %805 = extractvalue %dx.types.CBufRet.f32 %803, 0
  %806 = fsub fast float %789, %805
  %807 = fmul fast float %806, %804
  %808 = call float @dx.op.unary.f32(i32 7, float %807)  ; Saturate(value)
  %809 = fadd fast float %808, -5.000000e-01
  %810 = fmul fast float %809, 2.000000e+00
  %811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %812 = extractvalue %dx.types.CBufRet.f32 %811, 2
  %813 = fcmp fast olt float %810, %812
  br i1 %813, label %814, label %826, !dx.controlflow.hints !49

; <label>:814                                     ; preds = %800
  %815 = fmul fast float %810, %810
  %816 = fmul fast float %787, %414
  %817 = fmul fast float %810, %816
  %818 = fmul fast float %815, %816
  %819 = fmul fast float %817, %815
  %820 = fmul fast float %815, %815
  %821 = fmul fast float %820, %816
  %822 = fadd fast float %817, %422
  %823 = fadd fast float %818, %423
  %824 = fadd fast float %819, %424
  %825 = fadd fast float %821, %425
  br label %826

; <label>:826                                     ; preds = %814, %800, %783
  %827 = phi float [ %422, %783 ], [ %822, %814 ], [ %422, %800 ]
  %828 = phi float [ %423, %783 ], [ %823, %814 ], [ %423, %800 ]
  %829 = phi float [ %424, %783 ], [ %824, %814 ], [ %424, %800 ]
  %830 = phi float [ %425, %783 ], [ %825, %814 ], [ %425, %800 ]
  %831 = phi i32 [ %426, %783 ], [ 1, %814 ], [ %802, %800 ]
  %832 = fmul fast float %786, %414
  br label %833

; <label>:833                                     ; preds = %826, %781
  %834 = phi float [ %782, %781 ], [ %789, %826 ]
  %835 = phi float [ %413, %781 ], [ %795, %826 ]
  %836 = phi float [ %414, %781 ], [ %832, %826 ]
  %837 = phi float [ %421, %781 ], [ %796, %826 ]
  %838 = phi float [ %422, %781 ], [ %827, %826 ]
  %839 = phi float [ %423, %781 ], [ %828, %826 ]
  %840 = phi float [ %424, %781 ], [ %829, %826 ]
  %841 = phi float [ %425, %781 ], [ %830, %826 ]
  %842 = phi i32 [ %426, %781 ], [ %831, %826 ]
  %843 = fmul fast float %630, %271
  %844 = fmul fast float %630, %272
  %845 = fmul fast float %630, %273
  %846 = fadd fast float %843, %415
  %847 = fadd fast float %844, %416
  %848 = fadd fast float %845, %417
  %849 = fcmp fast olt float %834, %390
  %850 = extractvalue %dx.types.CBufRet.f32 %778, 2
  %851 = fcmp fast olt float %850, %836
  %852 = and i1 %849, %851
  br i1 %852, label %412, label %853

; <label>:853                                     ; preds = %833
  %854 = uitofp i32 %429 to float
  br label %855

; <label>:855                                     ; preds = %853, %386
  %856 = phi float [ 0.000000e+00, %386 ], [ %835, %853 ]
  %857 = phi float [ 1.000000e+00, %386 ], [ %836, %853 ]
  %858 = phi float [ 0.000000e+00, %386 ], [ %854, %853 ]
  %859 = phi float [ 0.000000e+00, %386 ], [ %837, %853 ]
  %860 = phi float [ 0.000000e+00, %386 ], [ %838, %853 ]
  %861 = phi float [ 0.000000e+00, %386 ], [ %839, %853 ]
  %862 = phi float [ 0.000000e+00, %386 ], [ %840, %853 ]
  %863 = phi float [ 0.000000e+00, %386 ], [ %841, %853 ]
  %864 = phi i32 [ 0, %386 ], [ %842, %853 ]
  %865 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.i32 %865, 0
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %909, label %868, !dx.controlflow.hints !50

; <label>:868                                     ; preds = %855
  %869 = icmp eq i32 %864, 0
  br i1 %869, label %908, label %870, !dx.controlflow.hints !51

; <label>:870                                     ; preds = %868
  %871 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.i32 %871, 2
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %880, label %874, !dx.controlflow.hints !52

; <label>:874                                     ; preds = %870
  %875 = fsub fast float 1.000000e+00, %857
  %876 = fdiv fast float %860, %875
  %877 = fdiv fast float %861, %875
  %878 = fdiv fast float %862, %875
  %879 = fdiv fast float %863, %875
  br label %885

; <label>:880                                     ; preds = %870
  %881 = fadd fast float %860, %857
  %882 = fadd fast float %861, %857
  %883 = fadd fast float %862, %857
  %884 = fadd fast float %863, %857
  br label %885

; <label>:885                                     ; preds = %880, %874
  %886 = phi float [ %876, %874 ], [ %881, %880 ]
  %887 = phi float [ %877, %874 ], [ %882, %880 ]
  %888 = phi float [ %878, %874 ], [ %883, %880 ]
  %889 = phi float [ %879, %874 ], [ %884, %880 ]
  %890 = call float @dx.op.binary.f32(i32 35, float %886, float -1.000000e+00)  ; FMax(a,b)
  %891 = call float @dx.op.binary.f32(i32 35, float %887, float -1.000000e+00)  ; FMax(a,b)
  %892 = call float @dx.op.binary.f32(i32 35, float %888, float -1.000000e+00)  ; FMax(a,b)
  %893 = call float @dx.op.binary.f32(i32 35, float %889, float -1.000000e+00)  ; FMax(a,b)
  %894 = call float @dx.op.binary.f32(i32 36, float %890, float 1.000000e+00)  ; FMin(a,b)
  %895 = call float @dx.op.binary.f32(i32 36, float %891, float 1.000000e+00)  ; FMin(a,b)
  %896 = call float @dx.op.binary.f32(i32 36, float %892, float 1.000000e+00)  ; FMin(a,b)
  %897 = call float @dx.op.binary.f32(i32 36, float %893, float 1.000000e+00)  ; FMin(a,b)
  %898 = fmul fast float %894, 1.500000e+00
  %899 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %896, float %898)  ; FMad(a,b,c)
  %900 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %895, float 0.000000e+00)  ; FMad(a,b,c)
  %901 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %897, float %900)  ; FMad(a,b,c)
  %902 = fmul fast float %894, 0x3FEBB67AE0000000
  %903 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %896, float %902)  ; FMad(a,b,c)
  %904 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %895, float 0.000000e+00)  ; FMad(a,b,c)
  %905 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %897, float %904)  ; FMad(a,b,c)
  %906 = fadd fast float %899, 5.000000e-01
  %907 = fadd fast float %903, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %13, i32 %14, i32 0, float %906, float %901, float %907, float %905, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %909

; <label>:908                                     ; preds = %868
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %13, i32 %14, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %909

; <label>:909                                     ; preds = %908, %885, %855
  %910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %911 = extractvalue %dx.types.CBufRet.f32 %910, 0
  %912 = extractvalue %dx.types.CBufRet.f32 %910, 1
  %913 = extractvalue %dx.types.CBufRet.f32 %910, 2
  %914 = call float @dx.op.dot3.f32(i32 55, float %271, float %272, float %273, float %911, float %912, float %913)  ; Dot3(ax,ay,az,bx,by,bz)
  %915 = fmul fast float %914, %856
  %916 = fcmp fast ogt float %859, 0.000000e+00
  %917 = fdiv fast float 1.000000e+00, %859
  %918 = fmul fast float %915, %917
  %919 = select i1 %916, float %918, float %282
  %920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %921 = extractvalue %dx.types.CBufRet.f32 %920, 0
  %922 = extractvalue %dx.types.CBufRet.f32 %920, 1
  %923 = extractvalue %dx.types.CBufRet.f32 %920, 2
  %924 = fmul fast float %921, %235
  %925 = fmul fast float %922, %235
  %926 = fmul fast float %923, %235
  %927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.f32 %927, 0
  %929 = extractvalue %dx.types.CBufRet.f32 %927, 1
  %930 = extractvalue %dx.types.CBufRet.f32 %927, 2
  %931 = fmul fast float %928, %236
  %932 = fmul fast float %929, %236
  %933 = fmul fast float %930, %236
  %934 = fadd fast float %931, %924
  %935 = fadd fast float %932, %925
  %936 = fadd fast float %933, %926
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 0
  %939 = extractvalue %dx.types.CBufRet.f32 %937, 1
  %940 = extractvalue %dx.types.CBufRet.f32 %937, 2
  %941 = fadd fast float %934, %938
  %942 = fadd fast float %935, %939
  %943 = fadd fast float %936, %940
  %944 = fmul fast float %941, %919
  %945 = fmul fast float %942, %919
  %946 = fmul fast float %943, %919
  %947 = call float @dx.op.dot3.f32(i32 55, float %944, float %945, float %946, float %944, float %945, float %946)  ; Dot3(ax,ay,az,bx,by,bz)
  %948 = call float @dx.op.unary.f32(i32 25, float %947)  ; Rsqrt(value)
  %949 = fmul fast float %948, %947
  %950 = fmul fast float %948, %944
  %951 = fmul fast float %948, %945
  %952 = fmul fast float %948, %946
  %953 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.i32 %953, 1
  %955 = and i32 %954, 1
  %956 = icmp ne i32 %955, 0
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 2
  %959 = fcmp fast ogt float %958, 0.000000e+00
  %960 = and i1 %956, %959
  br i1 %960, label %961, label %1119, !dx.controlflow.hints !53

; <label>:961                                     ; preds = %909
  %962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.f32 %962, 2
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 2
  %966 = fsub fast float %963, %965
  %967 = extractvalue %dx.types.CBufRet.i32 %953, 0
  %968 = call i32 @dx.op.binary.i32(i32 40, i32 %967, i32 3)  ; UMin(a,b)
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 0
  %971 = extractvalue %dx.types.CBufRet.f32 %969, 1
  %972 = extractvalue %dx.types.CBufRet.f32 %964, 0
  %973 = extractvalue %dx.types.CBufRet.f32 %964, 1
  %974 = fsub fast float %970, %972
  %975 = fsub fast float %971, %973
  %976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %977 = extractvalue %dx.types.CBufRet.f32 %976, 0
  %978 = fcmp fast ogt float %977, 0.000000e+00
  %979 = fsub fast float -0.000000e+00, %974
  %980 = fsub fast float -0.000000e+00, %975
  %981 = call float @dx.op.dot2.f32(i32 54, float %950, float %951, float %950, float %951)  ; Dot2(ax,ay,bx,by)
  %982 = call float @dx.op.dot2.f32(i32 54, float %950, float %951, float %979, float %980)  ; Dot2(ax,ay,bx,by)
  %983 = fmul fast float %982, 2.000000e+00
  %984 = call float @dx.op.dot2.f32(i32 54, float %979, float %980, float %979, float %980)  ; Dot2(ax,ay,bx,by)
  %985 = fmul fast float %977, %977
  %986 = fsub fast float %984, %985
  %987 = fmul fast float %983, %983
  %988 = fmul fast float %981, 4.000000e+00
  %989 = fmul fast float %988, %986
  %990 = fsub fast float %987, %989
  %991 = fcmp fast ogt float %990, 0.000000e+00
  br i1 %991, label %992, label %1007, !dx.controlflow.hints !54

; <label>:992                                     ; preds = %961
  %993 = fcmp fast ogt float %983, 0.000000e+00
  %994 = call float @dx.op.unary.f32(i32 24, float %990)  ; Sqrt(value)
  %995 = fsub fast float -0.000000e+00, %994
  %996 = select i1 %993, float %994, float %995
  %997 = fadd fast float %996, %983
  %998 = fmul float %997, -5.000000e-01
  %999 = fdiv fast float %998, %981
  %1000 = call float @dx.op.binary.f32(i32 35, float %999, float 0.000000e+00)  ; FMax(a,b)
  %1001 = call float @dx.op.binary.f32(i32 36, float %949, float %1000)  ; FMin(a,b)
  %1002 = fdiv fast float %986, %998
  %1003 = call float @dx.op.binary.f32(i32 35, float %1002, float 0.000000e+00)  ; FMax(a,b)
  %1004 = call float @dx.op.binary.f32(i32 36, float %949, float %1003)  ; FMin(a,b)
  %1005 = call float @dx.op.binary.f32(i32 36, float %1001, float %1004)  ; FMin(a,b)
  %1006 = call float @dx.op.binary.f32(i32 35, float %1001, float %1004)  ; FMax(a,b)
  br label %1007

; <label>:1007                                    ; preds = %992, %961
  %1008 = phi float [ %1006, %992 ], [ -1.000000e+00, %961 ]
  %1009 = phi float [ %1005, %992 ], [ -1.000000e+00, %961 ]
  %1010 = phi i1 [ true, %992 ], [ false, %961 ]
  %1011 = and i1 %978, %1010
  br i1 %1011, label %1012, label %1014, !dx.controlflow.hints !55

; <label>:1012                                    ; preds = %1007
  %1013 = fcmp fast oeq float %1009, %1008
  br i1 %1013, label %1119, label %1015, !dx.controlflow.hints !56

; <label>:1014                                    ; preds = %1007
  br i1 %978, label %1119, label %1015, !dx.controlflow.hints !57

; <label>:1015                                    ; preds = %1014, %1012
  %1016 = phi float [ %949, %1014 ], [ %1008, %1012 ]
  %1017 = phi float [ 0.000000e+00, %1014 ], [ %1009, %1012 ]
  %1018 = fcmp fast oeq float %952, 0.000000e+00
  %1019 = fdiv fast float %966, %952
  %1020 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1019)  ; FMax(a,b)
  %1021 = select i1 %1018, float %1016, float %1020
  %1022 = call float @dx.op.binary.f32(i32 36, float %1016, float %1021)  ; FMin(a,b)
  %1023 = fcmp fast ogt float %952, 0.000000e+00
  %1024 = fcmp fast olt float %966, 0.000000e+00
  br i1 %1023, label %1025, label %1026, !dx.controlflow.hints !58

; <label>:1025                                    ; preds = %1015
  br i1 %1024, label %1119, label %1029, !dx.controlflow.hints !59

; <label>:1026                                    ; preds = %1015
  br i1 %1024, label %1027, label %1029, !dx.controlflow.hints !60

; <label>:1027                                    ; preds = %1026
  %1028 = call float @dx.op.binary.f32(i32 35, float %1017, float %1022)  ; FMax(a,b)
  br label %1029

; <label>:1029                                    ; preds = %1027, %1026, %1025
  %1030 = phi float [ %1028, %1027 ], [ %1017, %1026 ], [ %1017, %1025 ]
  %1031 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 0
  store float -1.000000e+00, float* %1031, align 4, !tbaa !61, !noalias !65
  %1032 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 1
  store float -1.000000e+00, float* %1032, align 4, !tbaa !61, !noalias !65
  %1033 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 2
  store float -1.000000e+00, float* %1033, align 4, !tbaa !61, !noalias !65
  %1034 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 0
  store float -1.000000e+00, float* %1034, align 4, !tbaa !61, !noalias !65
  %1035 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 1
  store float -1.000000e+00, float* %1035, align 4, !tbaa !61, !noalias !65
  %1036 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 2
  store float -1.000000e+00, float* %1036, align 4, !tbaa !61, !noalias !65
  %1037 = icmp sgt i32 %968, 0
  br i1 %1037, label %1038, label %1096

; <label>:1038                                    ; preds = %1029
  br label %1039

; <label>:1039                                    ; preds = %1086, %1038
  %1040 = phi i32 [ %1087, %1086 ], [ 0, %1038 ]
  %1041 = add nuw i32 %1040, 171
  %1042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %1041)  ; CBufferLoadLegacy(handle,regIndex)
  %1043 = extractvalue %dx.types.CBufRet.f32 %1042, 0
  %1044 = extractvalue %dx.types.CBufRet.f32 %1042, 1
  %1045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.CBufRet.f32 %1045, 1
  %1048 = fsub fast float %1043, %1046
  %1049 = fsub fast float %1044, %1047
  %1050 = extractvalue %dx.types.CBufRet.f32 %1042, 2
  %1051 = fsub fast float -0.000000e+00, %1048
  %1052 = fsub fast float -0.000000e+00, %1049
  %1053 = call float @dx.op.dot2.f32(i32 54, float %950, float %951, float %1051, float %1052)  ; Dot2(ax,ay,bx,by)
  %1054 = fmul fast float %1053, 2.000000e+00
  %1055 = call float @dx.op.dot2.f32(i32 54, float %1051, float %1052, float %1051, float %1052)  ; Dot2(ax,ay,bx,by)
  %1056 = fmul fast float %1050, %1050
  %1057 = fsub fast float %1055, %1056
  %1058 = fmul fast float %1054, %1054
  %1059 = fmul fast float %988, %1057
  %1060 = fsub fast float %1058, %1059
  %1061 = fcmp fast ogt float %1060, 0.000000e+00
  br i1 %1061, label %1062, label %1077, !dx.controlflow.hints !54

; <label>:1062                                    ; preds = %1039
  %1063 = fcmp fast ogt float %1054, 0.000000e+00
  %1064 = call float @dx.op.unary.f32(i32 24, float %1060)  ; Sqrt(value)
  %1065 = fsub fast float -0.000000e+00, %1064
  %1066 = select i1 %1063, float %1064, float %1065
  %1067 = fadd fast float %1066, %1054
  %1068 = fmul float %1067, -5.000000e-01
  %1069 = fdiv fast float %1068, %981
  %1070 = call float @dx.op.binary.f32(i32 35, float %1069, float 0.000000e+00)  ; FMax(a,b)
  %1071 = call float @dx.op.binary.f32(i32 36, float %1016, float %1070)  ; FMin(a,b)
  %1072 = fdiv fast float %1057, %1068
  %1073 = call float @dx.op.binary.f32(i32 35, float %1072, float 0.000000e+00)  ; FMax(a,b)
  %1074 = call float @dx.op.binary.f32(i32 36, float %1016, float %1073)  ; FMin(a,b)
  %1075 = call float @dx.op.binary.f32(i32 36, float %1071, float %1074)  ; FMin(a,b)
  %1076 = call float @dx.op.binary.f32(i32 35, float %1071, float %1074)  ; FMax(a,b)
  br label %1077

; <label>:1077                                    ; preds = %1062, %1039
  %1078 = phi float [ %1076, %1062 ], [ -1.000000e+00, %1039 ]
  %1079 = phi float [ %1075, %1062 ], [ -1.000000e+00, %1039 ]
  %1080 = phi i1 [ true, %1062 ], [ false, %1039 ]
  br i1 %1080, label %1081, label %1086, !dx.controlflow.hints !76

; <label>:1081                                    ; preds = %1077
  %1082 = call float @dx.op.binary.f32(i32 35, float %1030, float %1079)  ; FMax(a,b)
  %1083 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 %1040
  store float %1082, float* %1083, align 4, !tbaa !61, !noalias !65
  %1084 = call float @dx.op.binary.f32(i32 35, float %1030, float %1078)  ; FMax(a,b)
  %1085 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 %1040
  store float %1084, float* %1085, align 4, !tbaa !61, !noalias !65
  br label %1086

; <label>:1086                                    ; preds = %1081, %1077
  %1087 = add nuw nsw i32 %1040, 1
  %1088 = icmp eq i32 %1087, %968
  br i1 %1088, label %1089, label %1039

; <label>:1089                                    ; preds = %1086
  %1090 = load float, float* %1033, align 4, !tbaa !61, !alias.scope !77, !noalias !80
  %1091 = load float, float* %1032, align 4, !tbaa !61, !alias.scope !83, !noalias !84
  %1092 = load float, float* %1031, align 4, !tbaa !61, !alias.scope !85, !noalias !86
  %1093 = load float, float* %1036, align 4, !tbaa !61, !alias.scope !87, !noalias !90
  %1094 = load float, float* %1035, align 4, !tbaa !61, !alias.scope !93, !noalias !94
  %1095 = load float, float* %1034, align 4, !tbaa !61, !alias.scope !95, !noalias !96
  br label %1096

; <label>:1096                                    ; preds = %1089, %1029
  %1097 = phi float [ -1.000000e+00, %1029 ], [ %1095, %1089 ]
  %1098 = phi float [ -1.000000e+00, %1029 ], [ %1094, %1089 ]
  %1099 = phi float [ -1.000000e+00, %1029 ], [ %1093, %1089 ]
  %1100 = phi float [ -1.000000e+00, %1029 ], [ %1092, %1089 ]
  %1101 = phi float [ -1.000000e+00, %1029 ], [ %1091, %1089 ]
  %1102 = phi float [ -1.000000e+00, %1029 ], [ %1090, %1089 ]
  %1103 = call float @dx.op.binary.f32(i32 36, float %1101, float %1102)  ; FMin(a,b)
  %1104 = call float @dx.op.binary.f32(i32 36, float %1100, float %1103)  ; FMin(a,b)
  %1105 = call float @dx.op.binary.f32(i32 35, float %1100, float %1101)  ; FMax(a,b)
  %1106 = call float @dx.op.binary.f32(i32 36, float %1105, float %1102)  ; FMin(a,b)
  %1107 = call float @dx.op.binary.f32(i32 36, float %1100, float %1101)  ; FMin(a,b)
  %1108 = call float @dx.op.binary.f32(i32 35, float %1107, float %1106)  ; FMax(a,b)
  %1109 = call float @dx.op.binary.f32(i32 35, float %1101, float %1102)  ; FMax(a,b)
  %1110 = call float @dx.op.binary.f32(i32 35, float %1100, float %1109)  ; FMax(a,b)
  store float %1104, float* %1031, align 4, !tbaa !61, !alias.scope !85, !noalias !86
  store float %1108, float* %1032, align 4, !tbaa !61, !alias.scope !83, !noalias !84
  store float %1110, float* %1033, align 4, !tbaa !61, !alias.scope !77, !noalias !80
  %1111 = call float @dx.op.binary.f32(i32 36, float %1098, float %1099)  ; FMin(a,b)
  %1112 = call float @dx.op.binary.f32(i32 36, float %1097, float %1111)  ; FMin(a,b)
  %1113 = call float @dx.op.binary.f32(i32 35, float %1097, float %1098)  ; FMax(a,b)
  %1114 = call float @dx.op.binary.f32(i32 36, float %1113, float %1099)  ; FMin(a,b)
  %1115 = call float @dx.op.binary.f32(i32 36, float %1097, float %1098)  ; FMin(a,b)
  %1116 = call float @dx.op.binary.f32(i32 35, float %1115, float %1114)  ; FMax(a,b)
  %1117 = call float @dx.op.binary.f32(i32 35, float %1098, float %1099)  ; FMax(a,b)
  %1118 = call float @dx.op.binary.f32(i32 35, float %1097, float %1117)  ; FMax(a,b)
  store float %1112, float* %1034, align 4, !tbaa !61, !alias.scope !95, !noalias !96
  store float %1116, float* %1035, align 4, !tbaa !61, !alias.scope !93, !noalias !94
  store float %1118, float* %1036, align 4, !tbaa !61, !alias.scope !87, !noalias !90
  br label %1119

; <label>:1119                                    ; preds = %1096, %1025, %1014, %1012, %909
  %1120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1121 = extractvalue %dx.types.CBufRet.f32 %1120, 2
  %1122 = fmul fast float %1121, %919
  %1123 = call float @dx.op.unary.f32(i32 7, float %1122)  ; Saturate(value)
  %1124 = fptoui float %858 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1125 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %15
  store i32 %1124, i32 addrspace(3)* %1125, align 4, !tbaa !97
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1126 = and i32 %15, 63
  %1127 = icmp ult i32 %1126, 32
  br i1 %1127, label %1128, label %1134, !dx.controlflow.hints !99

; <label>:1128                                    ; preds = %1119
  %1129 = add i32 %15, 32
  %1130 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1129
  %1131 = load i32, i32 addrspace(3)* %1130, align 4, !tbaa !97
  %1132 = load i32, i32 addrspace(3)* %1125, align 4, !tbaa !97
  %1133 = call i32 @dx.op.binary.i32(i32 40, i32 %1132, i32 %1131)  ; UMin(a,b)
  store i32 %1133, i32 addrspace(3)* %1125, align 4, !tbaa !97
  br label %1134

; <label>:1134                                    ; preds = %1128, %1119
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1135 = icmp ult i32 %1126, 16
  br i1 %1135, label %1136, label %1142, !dx.controlflow.hints !100

; <label>:1136                                    ; preds = %1134
  %1137 = add i32 %15, 16
  %1138 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1137
  %1139 = load i32, i32 addrspace(3)* %1138, align 4, !tbaa !97
  %1140 = load i32, i32 addrspace(3)* %1125, align 4, !tbaa !97
  %1141 = call i32 @dx.op.binary.i32(i32 40, i32 %1140, i32 %1139)  ; UMin(a,b)
  store i32 %1141, i32 addrspace(3)* %1125, align 4, !tbaa !97
  br label %1142

; <label>:1142                                    ; preds = %1136, %1134
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1143 = icmp ult i32 %1126, 8
  br i1 %1143, label %1144, label %1150, !dx.controlflow.hints !101

; <label>:1144                                    ; preds = %1142
  %1145 = add i32 %15, 8
  %1146 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1145
  %1147 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !97
  %1148 = load i32, i32 addrspace(3)* %1125, align 4, !tbaa !97
  %1149 = call i32 @dx.op.binary.i32(i32 40, i32 %1148, i32 %1147)  ; UMin(a,b)
  store i32 %1149, i32 addrspace(3)* %1125, align 4, !tbaa !97
  br label %1150

; <label>:1150                                    ; preds = %1144, %1142
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1151 = icmp ult i32 %1126, 4
  br i1 %1151, label %1152, label %1158, !dx.controlflow.hints !102

; <label>:1152                                    ; preds = %1150
  %1153 = add i32 %15, 4
  %1154 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1153
  %1155 = load i32, i32 addrspace(3)* %1154, align 4, !tbaa !97
  %1156 = load i32, i32 addrspace(3)* %1125, align 4, !tbaa !97
  %1157 = call i32 @dx.op.binary.i32(i32 40, i32 %1156, i32 %1155)  ; UMin(a,b)
  store i32 %1157, i32 addrspace(3)* %1125, align 4, !tbaa !97
  br label %1158

; <label>:1158                                    ; preds = %1152, %1150
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1159 = icmp ult i32 %1126, 2
  br i1 %1159, label %1160, label %1166, !dx.controlflow.hints !103

; <label>:1160                                    ; preds = %1158
  %1161 = add i32 %15, 2
  %1162 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1161
  %1163 = load i32, i32 addrspace(3)* %1162, align 4, !tbaa !97
  %1164 = load i32, i32 addrspace(3)* %1125, align 4, !tbaa !97
  %1165 = call i32 @dx.op.binary.i32(i32 40, i32 %1164, i32 %1163)  ; UMin(a,b)
  store i32 %1165, i32 addrspace(3)* %1125, align 4, !tbaa !97
  br label %1166

; <label>:1166                                    ; preds = %1160, %1158
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1167 = icmp eq i32 %1126, 0
  br i1 %1167, label %1168, label %1174, !dx.controlflow.hints !104

; <label>:1168                                    ; preds = %1166
  %1169 = add i32 %15, 1
  %1170 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1169
  %1171 = load i32, i32 addrspace(3)* %1170, align 4, !tbaa !97
  %1172 = load i32, i32 addrspace(3)* %1125, align 4, !tbaa !97
  %1173 = call i32 @dx.op.binary.i32(i32 40, i32 %1172, i32 %1171)  ; UMin(a,b)
  store i32 %1173, i32 addrspace(3)* %1125, align 4, !tbaa !97
  br label %1174

; <label>:1174                                    ; preds = %1168, %1166
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1175 = and i32 %15, -64
  %1176 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1175
  %1177 = load i32, i32 addrspace(3)* %1176, align 4, !tbaa !97
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1124, i32 addrspace(3)* %1125, align 4, !tbaa !97
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1127, label %1178, label %1184, !dx.controlflow.hints !105

; <label>:1178                                    ; preds = %1174
  %1179 = add i32 %15, 32
  %1180 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1179
  %1181 = load i32, i32 addrspace(3)* %1180, align 4, !tbaa !97
  %1182 = load i32, i32 addrspace(3)* %1125, align 4, !tbaa !97
  %1183 = call i32 @dx.op.binary.i32(i32 39, i32 %1182, i32 %1181)  ; UMax(a,b)
  store i32 %1183, i32 addrspace(3)* %1125, align 4, !tbaa !97
  br label %1184

; <label>:1184                                    ; preds = %1178, %1174
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1135, label %1185, label %1191, !dx.controlflow.hints !106

; <label>:1185                                    ; preds = %1184
  %1186 = add i32 %15, 16
  %1187 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1186
  %1188 = load i32, i32 addrspace(3)* %1187, align 4, !tbaa !97
  %1189 = load i32, i32 addrspace(3)* %1125, align 4, !tbaa !97
  %1190 = call i32 @dx.op.binary.i32(i32 39, i32 %1189, i32 %1188)  ; UMax(a,b)
  store i32 %1190, i32 addrspace(3)* %1125, align 4, !tbaa !97
  br label %1191

; <label>:1191                                    ; preds = %1185, %1184
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1143, label %1192, label %1198, !dx.controlflow.hints !107

; <label>:1192                                    ; preds = %1191
  %1193 = add i32 %15, 8
  %1194 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1193
  %1195 = load i32, i32 addrspace(3)* %1194, align 4, !tbaa !97
  %1196 = load i32, i32 addrspace(3)* %1125, align 4, !tbaa !97
  %1197 = call i32 @dx.op.binary.i32(i32 39, i32 %1196, i32 %1195)  ; UMax(a,b)
  store i32 %1197, i32 addrspace(3)* %1125, align 4, !tbaa !97
  br label %1198

; <label>:1198                                    ; preds = %1192, %1191
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1151, label %1199, label %1205, !dx.controlflow.hints !108

; <label>:1199                                    ; preds = %1198
  %1200 = add i32 %15, 4
  %1201 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1200
  %1202 = load i32, i32 addrspace(3)* %1201, align 4, !tbaa !97
  %1203 = load i32, i32 addrspace(3)* %1125, align 4, !tbaa !97
  %1204 = call i32 @dx.op.binary.i32(i32 39, i32 %1203, i32 %1202)  ; UMax(a,b)
  store i32 %1204, i32 addrspace(3)* %1125, align 4, !tbaa !97
  br label %1205

; <label>:1205                                    ; preds = %1199, %1198
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1159, label %1206, label %1212, !dx.controlflow.hints !109

; <label>:1206                                    ; preds = %1205
  %1207 = add i32 %15, 2
  %1208 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1207
  %1209 = load i32, i32 addrspace(3)* %1208, align 4, !tbaa !97
  %1210 = load i32, i32 addrspace(3)* %1125, align 4, !tbaa !97
  %1211 = call i32 @dx.op.binary.i32(i32 39, i32 %1210, i32 %1209)  ; UMax(a,b)
  store i32 %1211, i32 addrspace(3)* %1125, align 4, !tbaa !97
  br label %1212

; <label>:1212                                    ; preds = %1206, %1205
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1167, label %1213, label %1219, !dx.controlflow.hints !110

; <label>:1213                                    ; preds = %1212
  %1214 = add i32 %15, 1
  %1215 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1214
  %1216 = load i32, i32 addrspace(3)* %1215, align 4, !tbaa !97
  %1217 = load i32, i32 addrspace(3)* %1125, align 4, !tbaa !97
  %1218 = call i32 @dx.op.binary.i32(i32 39, i32 %1217, i32 %1216)  ; UMax(a,b)
  store i32 %1218, i32 addrspace(3)* %1125, align 4, !tbaa !97
  br label %1219

; <label>:1219                                    ; preds = %1213, %1212
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1220 = load i32, i32 addrspace(3)* %1176, align 4, !tbaa !97
  %1221 = uitofp i32 %1220 to float
  %1222 = uitofp i32 %1177 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %13, i32 %14, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 0
  %1225 = fmul fast float %1224, %858
  %1226 = fmul fast float %1224, %1221
  %1227 = fmul fast float %1224, %1222
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %13, i32 %14, i32 undef, float %1225, float %1226, float %1227, float %1225, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %13, i32 %14, i32 undef, float %1123, float %1123, float %1123, float %1123, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!23 = !{void ()* @cs_fog_raymarching_air_heightmap, !"cs_fog_raymarching_air_heightmap", null, !4, !24}
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
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
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
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = !{!62, !62, i64 0}
!62 = !{!"float", !63, i64 0}
!63 = !{!"omnipotent char", !64, i64 0}
!64 = !{!"Simple C/C++ TBAA"}
!65 = !{!66, !68, !70, !71, !73, !74, !75}
!66 = distinct !{!66, !67, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!67 = distinct !{!67, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!68 = distinct !{!68, !69, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!69 = distinct !{!69, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!70 = distinct !{!70, !69, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!71 = distinct !{!71, !72, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!72 = distinct !{!72, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!73 = distinct !{!73, !72, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!74 = distinct !{!74, !72, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!75 = distinct !{!75, !72, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = !{!78}
!78 = distinct !{!78, !79, !"\01?sort@@YAXAIAM00@Z: %c"}
!79 = distinct !{!79, !"\01?sort@@YAXAIAM00@Z"}
!80 = !{!81, !82, !66, !68, !70, !71, !73, !74, !75}
!81 = distinct !{!81, !79, !"\01?sort@@YAXAIAM00@Z: %a"}
!82 = distinct !{!82, !79, !"\01?sort@@YAXAIAM00@Z: %b"}
!83 = !{!82}
!84 = !{!81, !78, !66, !68, !70, !71, !73, !74, !75}
!85 = !{!81}
!86 = !{!82, !78, !66, !68, !70, !71, !73, !74, !75}
!87 = !{!88}
!88 = distinct !{!88, !89, !"\01?sort@@YAXAIAM00@Z: %c"}
!89 = distinct !{!89, !"\01?sort@@YAXAIAM00@Z"}
!90 = !{!91, !92, !66, !68, !70, !71, !73, !74, !75}
!91 = distinct !{!91, !89, !"\01?sort@@YAXAIAM00@Z: %a"}
!92 = distinct !{!92, !89, !"\01?sort@@YAXAIAM00@Z: %b"}
!93 = !{!92}
!94 = !{!91, !88, !66, !68, !70, !71, !73, !74, !75}
!95 = !{!91}
!96 = !{!92, !88, !66, !68, !70, !71, !73, !74, !75}
!97 = !{!98, !98, i64 0}
!98 = !{!"int", !63, i64 0}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}

