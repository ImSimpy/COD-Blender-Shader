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
; shader hash: c272a7fad7ce39bb2132720f62c685f5
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
;                                   texture     f32          2d      T0            t27     1
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

define void @cs_fog_raymarching_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %14 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = add i32 %13, %12
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 1
  %20 = add i32 %17, %19
  %21 = lshr i32 %20, 1
  %22 = and i32 %21, 1
  %23 = and i32 %20, 1
  %24 = xor i32 %22, %23
  %25 = shl i32 %12, 1
  %26 = shl i32 %13, 1
  %27 = or i32 %24, %25
  %28 = or i32 %22, %26
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = extractvalue %dx.types.ResRet.i32 %31, 1
  %34 = extractvalue %dx.types.ResRet.i32 %31, 2
  %35 = extractvalue %dx.types.ResRet.i32 %31, 3
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = extractvalue %dx.types.ResRet.i32 %36, 1
  %39 = extractvalue %dx.types.ResRet.i32 %36, 2
  %40 = extractvalue %dx.types.ResRet.i32 %36, 3
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = extractvalue %dx.types.ResRet.i32 %41, 1
  %44 = extractvalue %dx.types.ResRet.i32 %41, 2
  %45 = extractvalue %dx.types.ResRet.i32 %41, 3
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 2
  %48 = fmul fast float %47, %47
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 0
  %51 = extractvalue %dx.types.CBufRet.f32 %49, 1
  %52 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %53 = fmul fast float %52, 0x3FF17B1420000000
  %54 = icmp eq i32 %14, 0
  br i1 %54, label %55, label %196, !dx.controlflow.hints !25

; <label>:55                                      ; preds = %0
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %60 = extractvalue %dx.types.ResRet.i32 %29, 1
  %61 = and i32 %60, 65535
  %62 = call float @dx.op.legacyF16ToF32(i32 131, i32 %61)  ; LegacyF16ToF32(value)
  %63 = lshr i32 %30, 16
  %64 = call float @dx.op.legacyF16ToF32(i32 131, i32 %63)  ; LegacyF16ToF32(value)
  %65 = and i32 %30, 65535
  %66 = call float @dx.op.legacyF16ToF32(i32 131, i32 %65)  ; LegacyF16ToF32(value)
  %67 = lshr i32 %35, 16
  %68 = call float @dx.op.legacyF16ToF32(i32 131, i32 %67)  ; LegacyF16ToF32(value)
  %69 = and i32 %35, 65535
  %70 = call float @dx.op.legacyF16ToF32(i32 131, i32 %69)  ; LegacyF16ToF32(value)
  %71 = lshr i32 %34, 16
  %72 = call float @dx.op.legacyF16ToF32(i32 131, i32 %71)  ; LegacyF16ToF32(value)
  %73 = and i32 %34, 65535
  %74 = call float @dx.op.legacyF16ToF32(i32 131, i32 %73)  ; LegacyF16ToF32(value)
  %75 = lshr i32 %33, 16
  %76 = call float @dx.op.legacyF16ToF32(i32 131, i32 %75)  ; LegacyF16ToF32(value)
  %77 = lshr i32 %32, 16
  %78 = call float @dx.op.legacyF16ToF32(i32 131, i32 %77)  ; LegacyF16ToF32(value)
  %79 = and i32 %32, 65535
  %80 = call float @dx.op.legacyF16ToF32(i32 131, i32 %79)  ; LegacyF16ToF32(value)
  %81 = lshr i32 %40, 16
  %82 = call float @dx.op.legacyF16ToF32(i32 131, i32 %81)  ; LegacyF16ToF32(value)
  %83 = and i32 %40, 65535
  %84 = call float @dx.op.legacyF16ToF32(i32 131, i32 %83)  ; LegacyF16ToF32(value)
  %85 = lshr i32 %39, 16
  %86 = call float @dx.op.legacyF16ToF32(i32 131, i32 %85)  ; LegacyF16ToF32(value)
  %87 = and i32 %39, 65535
  %88 = call float @dx.op.legacyF16ToF32(i32 131, i32 %87)  ; LegacyF16ToF32(value)
  %89 = lshr i32 %38, 16
  %90 = call float @dx.op.legacyF16ToF32(i32 131, i32 %89)  ; LegacyF16ToF32(value)
  %91 = and i32 %38, 65535
  %92 = call float @dx.op.legacyF16ToF32(i32 131, i32 %91)  ; LegacyF16ToF32(value)
  %93 = and i32 %37, 65535
  %94 = call float @dx.op.legacyF16ToF32(i32 131, i32 %93)  ; LegacyF16ToF32(value)
  %95 = lshr i32 %45, 16
  %96 = call float @dx.op.legacyF16ToF32(i32 131, i32 %95)  ; LegacyF16ToF32(value)
  %97 = and i32 %45, 65535
  %98 = call float @dx.op.legacyF16ToF32(i32 131, i32 %97)  ; LegacyF16ToF32(value)
  %99 = lshr i32 %44, 16
  %100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %99)  ; LegacyF16ToF32(value)
  %101 = and i32 %44, 65535
  %102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %101)  ; LegacyF16ToF32(value)
  %103 = lshr i32 %43, 16
  %104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %103)  ; LegacyF16ToF32(value)
  %105 = and i32 %43, 65535
  %106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %105)  ; LegacyF16ToF32(value)
  %107 = lshr i32 %42, 16
  %108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %107)  ; LegacyF16ToF32(value)
  %109 = and i32 %33, 65535
  %110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %109)  ; LegacyF16ToF32(value)
  %111 = lshr i32 %37, 16
  %112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %111)  ; LegacyF16ToF32(value)
  %113 = and i32 %42, 65535
  %114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %113)  ; LegacyF16ToF32(value)
  %115 = fmul fast float %110, 0x3FD20DD760000000
  %116 = fmul fast float %52, %47
  %117 = fmul fast float %116, %74
  %118 = fmul fast float %52, %52
  %119 = fmul fast float %118, 0x3FEE471020000000
  %120 = fadd fast float %119, 0xBFD42F6020000000
  %121 = fmul fast float %66, %120
  %122 = fmul fast float %72, %50
  %123 = fmul fast float %76, %51
  %124 = fmul fast float %50, %48
  %125 = fmul fast float %124, %53
  %126 = fmul fast float %125, %64
  %127 = fsub fast float -0.000000e+00, %126
  %128 = fmul fast float %51, %48
  %129 = fmul fast float %128, %53
  %130 = fmul fast float %129, %68
  %131 = fmul fast float %50, %50
  %132 = fmul fast float %51, %51
  %133 = fsub fast float %131, %132
  %134 = fmul fast float %133, 0x3FE17B1420000000
  %135 = fmul fast float %134, %62
  %136 = fmul fast float %51, 0x3FF17B1420000000
  %137 = fmul fast float %136, %50
  %138 = fmul fast float %137, %70
  %139 = fadd fast float %123, %122
  %140 = fmul fast float %139, %47
  %141 = fsub fast float %140, %117
  %142 = fmul fast float %141, 0x3FDF454380000000
  %143 = fadd fast float %121, %135
  %144 = fadd fast float %143, %138
  %145 = fmul fast float %144, %48
  %146 = fsub fast float %127, %130
  %147 = fadd fast float %146, %115
  %148 = fadd fast float %147, %142
  %149 = fadd fast float %148, %145
  %150 = fmul fast float %57, %59
  %151 = fmul fast float %150, %149
  %152 = fmul fast float %112, 0x3FD20DD760000000
  %153 = fmul fast float %116, %90
  %154 = fmul fast float %82, %120
  %155 = fmul fast float %88, %50
  %156 = fmul fast float %92, %51
  %157 = fmul fast float %125, %80
  %158 = fsub fast float -0.000000e+00, %157
  %159 = fmul fast float %129, %84
  %160 = fmul fast float %134, %78
  %161 = fmul fast float %137, %86
  %162 = fadd fast float %156, %155
  %163 = fmul fast float %162, %47
  %164 = fsub fast float %163, %153
  %165 = fmul fast float %164, 0x3FDF454380000000
  %166 = fadd fast float %154, %160
  %167 = fadd fast float %166, %161
  %168 = fmul fast float %167, %48
  %169 = fsub fast float %158, %159
  %170 = fadd fast float %169, %152
  %171 = fadd fast float %170, %165
  %172 = fadd fast float %171, %168
  %173 = fmul fast float %150, %172
  %174 = fmul fast float %114, 0x3FD20DD760000000
  %175 = fmul fast float %116, %106
  %176 = fmul fast float %98, %120
  %177 = fmul fast float %104, %50
  %178 = fmul fast float %108, %51
  %179 = fmul fast float %125, %96
  %180 = fsub fast float -0.000000e+00, %179
  %181 = fmul fast float %129, %100
  %182 = fmul fast float %134, %94
  %183 = fmul fast float %137, %102
  %184 = fadd fast float %178, %177
  %185 = fmul fast float %184, %47
  %186 = fsub fast float %185, %175
  %187 = fmul fast float %186, 0x3FDF454380000000
  %188 = fadd fast float %176, %182
  %189 = fadd fast float %188, %183
  %190 = fmul fast float %189, %48
  %191 = fsub fast float %180, %181
  %192 = fadd fast float %191, %174
  %193 = fadd fast float %192, %187
  %194 = fadd fast float %193, %190
  %195 = fmul fast float %150, %194
  br label %196

; <label>:196                                     ; preds = %55, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %197 = uitofp i32 %27 to float
  %198 = uitofp i32 %28 to float
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 2
  %201 = fmul fast float %200, 0x3FE3C6EF40000000
  %202 = frem fast float %197, 2.560000e+02
  %203 = frem fast float %198, 2.560000e+02
  %204 = fptoui float %202 to i32
  %205 = fptoui float %203 to i32
  %206 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %204, i32 %205, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 1
  %208 = extractvalue %dx.types.ResRet.f32 %206, 2
  %209 = extractvalue %dx.types.ResRet.f32 %206, 3
  %210 = fadd fast float %207, %201
  %211 = fadd fast float %208, %201
  %212 = fadd fast float %209, %201
  %213 = call float @dx.op.unary.f32(i32 22, float %210)  ; Frc(value)
  %214 = call float @dx.op.unary.f32(i32 22, float %211)  ; Frc(value)
  %215 = call float @dx.op.unary.f32(i32 22, float %212)  ; Frc(value)
  %216 = fadd fast float %214, %197
  %217 = fadd fast float %215, %198
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %220 = extractvalue %dx.types.CBufRet.f32 %218, 3
  %221 = fmul fast float %219, %216
  %222 = fmul fast float %220, %217
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 0
  %225 = extractvalue %dx.types.CBufRet.f32 %223, 1
  %226 = extractvalue %dx.types.CBufRet.f32 %223, 2
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 1
  %229 = fmul fast float %221, 2.000000e+00
  %230 = fmul fast float %222, 2.000000e+00
  %231 = fsub fast float 1.000000e+00, %229
  %232 = fsub fast float 1.000000e+00, %230
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 0
  %235 = extractvalue %dx.types.CBufRet.f32 %233, 1
  %236 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %237 = fmul fast float %234, %231
  %238 = fmul fast float %235, %231
  %239 = fmul fast float %236, %231
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 0
  %242 = extractvalue %dx.types.CBufRet.f32 %240, 1
  %243 = extractvalue %dx.types.CBufRet.f32 %240, 2
  %244 = fmul fast float %241, %232
  %245 = fmul fast float %242, %232
  %246 = fmul fast float %243, %232
  %247 = fadd fast float %244, %237
  %248 = fadd fast float %245, %238
  %249 = fadd fast float %246, %239
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 0
  %252 = extractvalue %dx.types.CBufRet.f32 %250, 1
  %253 = extractvalue %dx.types.CBufRet.f32 %250, 2
  %254 = fadd fast float %247, %251
  %255 = fadd fast float %248, %252
  %256 = fadd fast float %249, %253
  %257 = fmul fast float %254, %228
  %258 = fmul fast float %255, %228
  %259 = fmul fast float %256, %228
  %260 = fmul fast float %257, %257
  %261 = fmul fast float %258, %258
  %262 = fadd fast float %260, %261
  %263 = fmul fast float %259, %259
  %264 = fadd fast float %262, %263
  %265 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %266 = fdiv fast float 1.000000e+00, %265
  %267 = fmul fast float %257, %266
  %268 = fmul fast float %258, %266
  %269 = fmul fast float %259, %266
  %270 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %27, i32 %28, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 0
  %272 = fcmp fast ogt float %271, -1.000000e+00
  %273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.f32 %273, 1
  %275 = select i1 %272, float %274, float 1.000000e+00
  %276 = fadd fast float %271, 1.000000e+00
  %277 = fmul fast float %275, %276
  %278 = call float @dx.op.unary.f32(i32 6, float %277)  ; FAbs(value)
  %279 = fdiv fast float 1.000000e+00, %228
  %280 = fmul fast float %279, %265
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 1
  %283 = fmul fast float %282, %280
  %284 = fmul fast float %280, %278
  %285 = extractvalue %dx.types.CBufRet.f32 %273, 3
  %286 = fcmp fast oge float %278, %285
  %287 = call float @dx.op.binary.f32(i32 36, float %284, float %283)  ; FMin(a,b)
  %288 = select i1 %286, float %283, float %287
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 2
  %291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.f32 %291, 3
  %293 = fsub fast float -0.000000e+00, %224
  %294 = fsub fast float -0.000000e+00, %225
  %295 = fsub fast float %290, %226
  %296 = fadd fast float %295, %292
  %297 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %293, float %294, float %296)  ; Dot3(ax,ay,az,bx,by,bz)
  %298 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %267, float %268, float %269)  ; Dot3(ax,ay,az,bx,by,bz)
  %299 = fdiv fast float 1.000000e+00, %298
  %300 = fmul fast float %299, %297
  %301 = fcmp fast olt float %300, 0.000000e+00
  %302 = fcmp fast ogt float %269, 0.000000e+00
  %303 = and i1 %302, %301
  br i1 %303, label %308, label %304, !dx.controlflow.hints !26

; <label>:304                                     ; preds = %196
  %305 = fcmp fast olt float %269, 0.000000e+00
  br i1 %305, label %306, label %308, !dx.controlflow.hints !27

; <label>:306                                     ; preds = %304
  %307 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %300)  ; FMax(a,b)
  br label %308

; <label>:308                                     ; preds = %306, %304, %196
  %309 = phi float [ 0.000000e+00, %196 ], [ %307, %306 ], [ 0.000000e+00, %304 ]
  %310 = phi float [ 0.000000e+00, %196 ], [ 0x47EFFFFFE0000000, %306 ], [ %300, %304 ]
  %311 = fcmp fast oeq float %310, 0.000000e+00
  br i1 %311, label %315, label %312, !dx.controlflow.hints !28

; <label>:312                                     ; preds = %308
  %313 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %309)  ; FMin(a,b)
  %314 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %310)  ; FMax(a,b)
  br label %315

; <label>:315                                     ; preds = %312, %308
  %316 = phi i32 [ 1, %312 ], [ 0, %308 ]
  %317 = phi float [ %314, %312 ], [ -1.000000e+00, %308 ]
  %318 = phi float [ %313, %312 ], [ 0x47EFFFFFE0000000, %308 ]
  %319 = call float @dx.op.binary.f32(i32 36, float %288, float %317)  ; FMin(a,b)
  %320 = call float @dx.op.binary.f32(i32 35, float %265, float %318)  ; FMax(a,b)
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 0
  %323 = fmul fast float %213, 2.000000e+00
  %324 = fadd fast float %323, -1.000000e+00
  %325 = fmul fast float %322, %324
  %326 = fadd fast float %325, %320
  %327 = fcmp fast olt float %326, %319
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 2
  %330 = fcmp fast olt float %329, 1.000000e+00
  %331 = and i1 %330, %327
  br i1 %331, label %332, label %740

; <label>:332                                     ; preds = %315
  %333 = fmul fast float %326, %269
  %334 = fadd fast float %333, %226
  %335 = fmul fast float %326, %268
  %336 = fadd fast float %335, %225
  %337 = fmul fast float %326, %267
  %338 = fadd fast float %337, %224
  br label %339

; <label>:339                                     ; preds = %718, %332
  %340 = phi i32 [ %532, %718 ], [ undef, %332 ]
  %341 = phi float [ %534, %718 ], [ undef, %332 ]
  %342 = phi float [ %720, %718 ], [ 0.000000e+00, %332 ]
  %343 = phi float [ %721, %718 ], [ 1.000000e+00, %332 ]
  %344 = phi float [ %731, %718 ], [ %338, %332 ]
  %345 = phi float [ %732, %718 ], [ %336, %332 ]
  %346 = phi float [ %733, %718 ], [ %334, %332 ]
  %347 = phi float [ %719, %718 ], [ %326, %332 ]
  %348 = phi i32 [ %355, %718 ], [ 0, %332 ]
  %349 = phi float [ %722, %718 ], [ 0.000000e+00, %332 ]
  %350 = phi float [ %723, %718 ], [ 0.000000e+00, %332 ]
  %351 = phi float [ %724, %718 ], [ 0.000000e+00, %332 ]
  %352 = phi float [ %725, %718 ], [ 0.000000e+00, %332 ]
  %353 = phi float [ %726, %718 ], [ 0.000000e+00, %332 ]
  %354 = phi i32 [ %727, %718 ], [ 0, %332 ]
  %355 = add i32 %348, 1
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = icmp eq i32 %316, 0
  br i1 %358, label %531, label %359, !dx.controlflow.hints !29

; <label>:359                                     ; preds = %339
  %360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.i32 %360, 1
  %362 = and i32 %361, 1
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %521, !dx.controlflow.hints !30

; <label>:364                                     ; preds = %359
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 2
  %367 = extractvalue %dx.types.CBufRet.f32 %365, 3
  %368 = fmul fast float %366, %344
  %369 = fmul fast float %367, %345
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %372 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %373 = fadd fast float %368, %371
  %374 = fadd fast float %369, %372
  %375 = call float @dx.op.unary.f32(i32 7, float %373)  ; Saturate(value)
  %376 = call float @dx.op.unary.f32(i32 7, float %374)  ; Saturate(value)
  %377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %9, float %375, float %376, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.f32 %379, 0
  %381 = fmul fast float %380, %378
  %382 = fsub fast float %373, %375
  %383 = fsub fast float %374, %376
  %384 = extractvalue %dx.types.CBufRet.f32 %365, 0
  %385 = extractvalue %dx.types.CBufRet.f32 %365, 1
  %386 = fmul fast float %384, %382
  %387 = fmul fast float %385, %383
  %388 = fmul fast float %386, %386
  %389 = fmul fast float %387, %387
  %390 = fadd fast float %388, %389
  %391 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %393 = extractvalue %dx.types.CBufRet.f32 %392, 3
  %394 = fmul fast float %393, %391
  %395 = call float @dx.op.unary.f32(i32 7, float %394)  ; Saturate(value)
  %396 = extractvalue %dx.types.CBufRet.f32 %392, 2
  %397 = fsub fast float %396, %381
  %398 = fmul fast float %397, %395
  %399 = extractvalue %dx.types.CBufRet.f32 %379, 1
  %400 = fsub fast float %346, %381
  %401 = fsub fast float %400, %399
  %402 = fsub fast float %401, %398
  %403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.f32 %403, 2
  %405 = fsub fast float %402, %404
  %406 = fcmp fast olt float %405, 0.000000e+00
  %407 = call float @dx.op.unary.f32(i32 6, float %405)  ; FAbs(value)
  %408 = extractvalue %dx.types.CBufRet.i32 %360, 0
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %463, label %410

; <label>:410                                     ; preds = %364
  br label %411

; <label>:411                                     ; preds = %450, %410
  %412 = phi i32 [ %456, %450 ], [ 1, %410 ]
  %413 = phi float [ %458, %450 ], [ 0x47EFFFFFE0000000, %410 ]
  %414 = phi i32 [ %459, %450 ], [ 0, %410 ]
  %415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %416 = extractvalue %dx.types.CBufRet.f32 %415, 1
  %417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %418 = extractvalue %dx.types.CBufRet.i32 %417, 1
  %419 = and i32 %418, 8
  %420 = icmp eq i32 %419, 0
  %421 = fcmp fast ogt float %416, %402
  %422 = or i1 %421, %420
  %423 = add i32 %414, 171
  %424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 %423)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.f32 %424, 0
  %426 = extractvalue %dx.types.CBufRet.f32 %424, 1
  %427 = extractvalue %dx.types.CBufRet.f32 %424, 2
  br i1 %422, label %428, label %434, !dx.controlflow.hints !31

; <label>:428                                     ; preds = %411
  %429 = fsub fast float %425, %344
  %430 = fsub fast float %426, %345
  %431 = fmul fast float %429, %429
  %432 = fmul fast float %430, %430
  %433 = fadd fast float %431, %432
  br label %450

; <label>:434                                     ; preds = %411
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 2
  %437 = extractvalue %dx.types.CBufRet.f32 %415, 2
  %438 = fmul fast float %437, %436
  %439 = fsub fast float %438, %416
  %440 = fdiv fast float %427, %439
  %441 = fsub fast float %344, %425
  %442 = fsub fast float %345, %426
  %443 = fsub fast float %402, %416
  %444 = fmul fast float %440, %443
  %445 = fmul fast float %441, %441
  %446 = fmul fast float %442, %442
  %447 = fadd fast float %445, %446
  %448 = fmul fast float %444, %444
  %449 = fadd fast float %447, %448
  br label %450

; <label>:450                                     ; preds = %434, %428
  %451 = phi float [ %433, %428 ], [ %449, %434 ]
  %452 = call float @dx.op.unary.f32(i32 24, float %451)  ; Sqrt(value)
  %453 = fsub float %427, %452
  %454 = fcmp fast olt float %453, 0.000000e+00
  %455 = zext i1 %454 to i32
  %456 = and i32 %455, %412
  %457 = call float @dx.op.unary.f32(i32 6, float %453)  ; FAbs(value)
  %458 = call float @dx.op.binary.f32(i32 36, float %413, float %457)  ; FMin(a,b)
  %459 = add i32 %414, 1
  %460 = extractvalue %dx.types.CBufRet.i32 %417, 0
  %461 = icmp ult i32 %459, %460
  br i1 %461, label %411, label %462

; <label>:462                                     ; preds = %450
  br label %463

; <label>:463                                     ; preds = %462, %364
  %464 = phi i32 [ 1, %364 ], [ %456, %462 ]
  %465 = phi float [ 0x47EFFFFFE0000000, %364 ], [ %458, %462 ]
  br label %466

; <label>:466                                     ; preds = %466, %463
  %467 = phi i32 [ %464, %463 ], [ %506, %466 ]
  %468 = phi float [ 0x47EFFFFFE0000000, %463 ], [ %508, %466 ]
  %469 = phi i32 [ 0, %463 ], [ %509, %466 ]
  %470 = add nuw nsw i32 %469, 191
  %471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 %470)  ; CBufferLoadLegacy(handle,regIndex)
  %472 = extractvalue %dx.types.CBufRet.f32 %471, 0
  %473 = extractvalue %dx.types.CBufRet.f32 %471, 1
  %474 = extractvalue %dx.types.CBufRet.f32 %471, 2
  %475 = add nuw nsw i32 %469, 195
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 %475)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 0
  %478 = extractvalue %dx.types.CBufRet.f32 %476, 1
  %479 = extractvalue %dx.types.CBufRet.f32 %476, 2
  %480 = fsub fast float %344, %472
  %481 = fsub fast float %345, %473
  %482 = fsub fast float %402, %474
  %483 = call float @dx.op.unary.f32(i32 6, float %480)  ; FAbs(value)
  %484 = call float @dx.op.unary.f32(i32 6, float %481)  ; FAbs(value)
  %485 = call float @dx.op.unary.f32(i32 6, float %482)  ; FAbs(value)
  %486 = fsub fast float %483, %477
  %487 = fsub fast float %484, %478
  %488 = fsub fast float %485, %479
  %489 = call float @dx.op.binary.f32(i32 35, float %486, float 0.000000e+00)  ; FMax(a,b)
  %490 = call float @dx.op.binary.f32(i32 35, float %487, float 0.000000e+00)  ; FMax(a,b)
  %491 = call float @dx.op.binary.f32(i32 35, float %488, float 0.000000e+00)  ; FMax(a,b)
  %492 = fmul fast float %489, %489
  %493 = fmul fast float %490, %490
  %494 = fadd fast float %493, %492
  %495 = fmul fast float %491, %491
  %496 = fadd fast float %494, %495
  %497 = call float @dx.op.unary.f32(i32 24, float %496)  ; Sqrt(value)
  %498 = call float @dx.op.binary.f32(i32 35, float %487, float %488)  ; FMax(a,b)
  %499 = call float @dx.op.binary.f32(i32 35, float %486, float %498)  ; FMax(a,b)
  %500 = call float @dx.op.binary.f32(i32 36, float %499, float 0.000000e+00)  ; FMin(a,b)
  %501 = fadd fast float %500, %497
  %502 = fsub fast float -0.000000e+00, %501
  %503 = fcmp ogt float %501, -0.000000e+00
  %504 = icmp ne i32 %467, 0
  %505 = and i1 %504, %503
  %506 = zext i1 %505 to i32
  %507 = call float @dx.op.unary.f32(i32 6, float %502)  ; FAbs(value)
  %508 = call float @dx.op.binary.f32(i32 36, float %468, float %507)  ; FMin(a,b)
  %509 = add nuw nsw i32 %469, 1
  %510 = icmp eq i32 %509, 4
  br i1 %510, label %511, label %466

; <label>:511                                     ; preds = %466
  %512 = call float @dx.op.binary.f32(i32 36, float %407, float %508)  ; FMin(a,b)
  %513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.i32 %513, 1
  %515 = and i32 %514, 2
  %516 = icmp ne i32 %515, 0
  %517 = xor i1 %505, %516
  %518 = call float @dx.op.binary.f32(i32 36, float %512, float %465)  ; FMin(a,b)
  %519 = and i1 %517, %406
  %520 = zext i1 %519 to i32
  br label %521

; <label>:521                                     ; preds = %511, %359
  %522 = phi i32 [ %340, %359 ], [ %520, %511 ]
  %523 = phi float [ 0.000000e+00, %359 ], [ %518, %511 ]
  %524 = phi float [ %346, %359 ], [ %402, %511 ]
  %525 = icmp ne i32 %522, 0
  %526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %527 = extractvalue %dx.types.CBufRet.f32 %526, 3
  %528 = call float @dx.op.binary.f32(i32 35, float %523, float %527)  ; FMax(a,b)
  %529 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %528)  ; FMin(a,b)
  %530 = zext i1 %525 to i32
  br label %531

; <label>:531                                     ; preds = %521, %339
  %532 = phi i32 [ %522, %521 ], [ %340, %339 ]
  %533 = phi i32 [ %530, %521 ], [ 0, %339 ]
  %534 = phi float [ %524, %521 ], [ %341, %339 ]
  %535 = phi float [ %529, %521 ], [ 0x47EFFFFFE0000000, %339 ]
  %536 = extractvalue %dx.types.CBufRet.f32 %356, 2
  %537 = fmul fast float %536, %347
  %538 = call float @dx.op.unary.f32(i32 23, float %537)  ; Log(value)
  %539 = fmul fast float %538, 0x3FE62E4300000000
  %540 = call float @dx.op.binary.f32(i32 35, float %539, float 1.000000e+00)  ; FMax(a,b)
  %541 = fmul fast float %540, %535
  %542 = call float @dx.op.binary.f32(i32 36, float %541, float 0x47EFFFFFE0000000)  ; FMin(a,b)
  %543 = call float @dx.op.binary.f32(i32 35, float %542, float %357)  ; FMax(a,b)
  %544 = fadd fast float %319, 0x3F1A36E2E0000000
  %545 = fsub fast float %544, %347
  %546 = call float @dx.op.binary.f32(i32 36, float %545, float %543)  ; FMin(a,b)
  %547 = icmp eq i32 %533, 0
  br i1 %547, label %578, label %548, !dx.controlflow.hints !32

; <label>:548                                     ; preds = %531
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 1
  %551 = fsub fast float %546, %550
  %552 = extractvalue %dx.types.CBufRet.f32 %549, 3
  %553 = fmul fast float %551, %552
  %554 = call float @dx.op.unary.f32(i32 7, float %553)  ; Saturate(value)
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 3
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 2
  %559 = fsub fast float %558, %534
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 3
  %562 = fmul fast float %559, %561
  %563 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  %564 = fmul fast float %563, %556
  %565 = extractvalue %dx.types.CBufRet.f32 %560, 0
  %566 = fsub fast float %347, %565
  %567 = extractvalue %dx.types.CBufRet.f32 %560, 1
  %568 = fmul fast float %566, %567
  %569 = call float @dx.op.unary.f32(i32 7, float %568)  ; Saturate(value)
  %570 = fsub fast float 1.000000e+00, %554
  %571 = fmul fast float %569, %570
  %572 = fadd fast float %571, %554
  %573 = extractvalue %dx.types.CBufRet.f32 %549, 0
  %574 = fsub fast float %564, %573
  %575 = fmul fast float %574, %572
  %576 = fadd fast float %575, %573
  %577 = fmul fast float %576, %546
  br label %578

; <label>:578                                     ; preds = %548, %531
  %579 = phi float [ %577, %548 ], [ 0.000000e+00, %531 ]
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 1
  %582 = fcmp fast ogt float %579, %581
  br i1 %582, label %585, label %583, !dx.controlflow.hints !33

; <label>:583                                     ; preds = %578
  %584 = fadd fast float %546, %347
  br label %718

; <label>:585                                     ; preds = %578
  %586 = fmul fast float %579, 0xBFF7154760000000
  %587 = call float @dx.op.unary.f32(i32 21, float %586)  ; Exp(value)
  %588 = call float @dx.op.unary.f32(i32 7, float %587)  ; Saturate(value)
  %589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.f32 %589, 0
  %591 = extractvalue %dx.types.CBufRet.f32 %589, 1
  %592 = extractvalue %dx.types.CBufRet.f32 %589, 2
  %593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %594 = extractvalue %dx.types.CBufRet.f32 %593, 0
  %595 = fmul fast float %594, %590
  %596 = fmul fast float %594, %591
  %597 = fmul fast float %594, %592
  %598 = fadd fast float %595, %344
  %599 = fadd fast float %596, %345
  %600 = fadd fast float %597, %346
  br i1 %358, label %671, label %601, !dx.controlflow.hints !29

; <label>:601                                     ; preds = %585
  %602 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.i32 %602, 1
  %604 = and i32 %603, 1
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %671, !dx.controlflow.hints !30

; <label>:606                                     ; preds = %601
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 2
  %609 = extractvalue %dx.types.CBufRet.f32 %607, 3
  %610 = fmul fast float %608, %598
  %611 = fmul fast float %609, %599
  %612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %613 = extractvalue %dx.types.CBufRet.f32 %612, 0
  %614 = extractvalue %dx.types.CBufRet.f32 %612, 1
  %615 = fadd fast float %610, %613
  %616 = fadd fast float %611, %614
  %617 = call float @dx.op.unary.f32(i32 7, float %615)  ; Saturate(value)
  %618 = call float @dx.op.unary.f32(i32 7, float %616)  ; Saturate(value)
  %619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %9, float %617, float %618, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %620 = extractvalue %dx.types.ResRet.f32 %619, 0
  %621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.f32 %621, 0
  %623 = fmul fast float %622, %620
  %624 = fsub fast float %615, %617
  %625 = fsub fast float %616, %618
  %626 = extractvalue %dx.types.CBufRet.f32 %607, 0
  %627 = extractvalue %dx.types.CBufRet.f32 %607, 1
  %628 = fmul fast float %626, %624
  %629 = fmul fast float %627, %625
  %630 = fmul fast float %628, %628
  %631 = fmul fast float %629, %629
  %632 = fadd fast float %630, %631
  %633 = call float @dx.op.unary.f32(i32 24, float %632)  ; Sqrt(value)
  %634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.f32 %634, 3
  %636 = fmul fast float %635, %633
  %637 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %638 = extractvalue %dx.types.CBufRet.f32 %634, 2
  %639 = fsub fast float %638, %623
  %640 = fmul fast float %639, %637
  %641 = extractvalue %dx.types.CBufRet.f32 %621, 1
  %642 = fsub fast float %600, %623
  %643 = fsub fast float %642, %641
  %644 = fsub fast float %643, %640
  %645 = extractvalue %dx.types.CBufRet.i32 %602, 0
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %665, label %647

; <label>:647                                     ; preds = %606
  br label %648

; <label>:648                                     ; preds = %660, %647
  %649 = phi i32 [ %661, %660 ], [ 0, %647 ]
  %650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %651 = extractvalue %dx.types.CBufRet.f32 %650, 1
  %652 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.i32 %652, 1
  %654 = and i32 %653, 8
  %655 = icmp eq i32 %654, 0
  %656 = fcmp fast ogt float %651, %644
  %657 = or i1 %656, %655
  br i1 %657, label %658, label %659, !dx.controlflow.hints !31

; <label>:658                                     ; preds = %648
  br label %660

; <label>:659                                     ; preds = %648
  br label %660

; <label>:660                                     ; preds = %659, %658
  %661 = add i32 %649, 1
  %662 = extractvalue %dx.types.CBufRet.i32 %652, 0
  %663 = icmp ult i32 %661, %662
  br i1 %663, label %648, label %664

; <label>:664                                     ; preds = %660
  br label %665

; <label>:665                                     ; preds = %664, %606
  br label %666

; <label>:666                                     ; preds = %666, %665
  %667 = phi i32 [ %668, %666 ], [ 0, %665 ]
  %668 = add nuw nsw i32 %667, 1
  %669 = icmp eq i32 %668, 4
  br i1 %669, label %670, label %666

; <label>:670                                     ; preds = %666
  br label %671

; <label>:671                                     ; preds = %670, %601, %585
  %672 = fsub fast float 1.000000e+00, %588
  %673 = fdiv fast float %579, %546
  %674 = fadd fast float %546, %347
  %675 = fmul fast float %347, %347
  %676 = fmul fast float %674, %674
  %677 = fsub fast float %675, %676
  %678 = fmul fast float %677, -5.000000e-01
  %679 = fmul fast float %678, %673
  %680 = fadd fast float %679, %342
  %681 = fadd fast float %579, %349
  %682 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.i32 %682, 0
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %711, label %685, !dx.controlflow.hints !34

; <label>:685                                     ; preds = %671
  %686 = icmp ne i32 %354, 0
  %687 = zext i1 %686 to i32
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 2
  %690 = extractvalue %dx.types.CBufRet.f32 %688, 0
  %691 = fsub fast float %674, %690
  %692 = fmul fast float %691, %689
  %693 = call float @dx.op.unary.f32(i32 7, float %692)  ; Saturate(value)
  %694 = fadd fast float %693, -5.000000e-01
  %695 = fmul fast float %694, 2.000000e+00
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 2
  %698 = fcmp fast olt float %695, %697
  br i1 %698, label %699, label %711, !dx.controlflow.hints !35

; <label>:699                                     ; preds = %685
  %700 = fmul fast float %695, %695
  %701 = fmul fast float %672, %343
  %702 = fmul fast float %695, %701
  %703 = fmul fast float %700, %701
  %704 = fmul fast float %702, %700
  %705 = fmul fast float %700, %700
  %706 = fmul fast float %705, %701
  %707 = fadd fast float %702, %350
  %708 = fadd fast float %703, %351
  %709 = fadd fast float %704, %352
  %710 = fadd fast float %706, %353
  br label %711

; <label>:711                                     ; preds = %699, %685, %671
  %712 = phi float [ %350, %671 ], [ %707, %699 ], [ %350, %685 ]
  %713 = phi float [ %351, %671 ], [ %708, %699 ], [ %351, %685 ]
  %714 = phi float [ %352, %671 ], [ %709, %699 ], [ %352, %685 ]
  %715 = phi float [ %353, %671 ], [ %710, %699 ], [ %353, %685 ]
  %716 = phi i32 [ %354, %671 ], [ 1, %699 ], [ %687, %685 ]
  %717 = fmul fast float %588, %343
  br label %718

; <label>:718                                     ; preds = %711, %583
  %719 = phi float [ %584, %583 ], [ %674, %711 ]
  %720 = phi float [ %342, %583 ], [ %680, %711 ]
  %721 = phi float [ %343, %583 ], [ %717, %711 ]
  %722 = phi float [ %349, %583 ], [ %681, %711 ]
  %723 = phi float [ %350, %583 ], [ %712, %711 ]
  %724 = phi float [ %351, %583 ], [ %713, %711 ]
  %725 = phi float [ %352, %583 ], [ %714, %711 ]
  %726 = phi float [ %353, %583 ], [ %715, %711 ]
  %727 = phi i32 [ %354, %583 ], [ %716, %711 ]
  %728 = fmul fast float %546, %267
  %729 = fmul fast float %546, %268
  %730 = fmul fast float %546, %269
  %731 = fadd fast float %728, %344
  %732 = fadd fast float %729, %345
  %733 = fadd fast float %730, %346
  %734 = fcmp fast olt float %719, %319
  %735 = extractvalue %dx.types.CBufRet.f32 %580, 2
  %736 = fcmp fast olt float %735, %721
  %737 = and i1 %734, %736
  br i1 %737, label %339, label %738

; <label>:738                                     ; preds = %718
  %739 = uitofp i32 %355 to float
  br label %740

; <label>:740                                     ; preds = %738, %315
  %741 = phi float [ 0.000000e+00, %315 ], [ %720, %738 ]
  %742 = phi float [ 1.000000e+00, %315 ], [ %721, %738 ]
  %743 = phi float [ 0.000000e+00, %315 ], [ %739, %738 ]
  %744 = phi float [ 0.000000e+00, %315 ], [ %722, %738 ]
  %745 = phi float [ 0.000000e+00, %315 ], [ %723, %738 ]
  %746 = phi float [ 0.000000e+00, %315 ], [ %724, %738 ]
  %747 = phi float [ 0.000000e+00, %315 ], [ %725, %738 ]
  %748 = phi float [ 0.000000e+00, %315 ], [ %726, %738 ]
  %749 = phi i32 [ 0, %315 ], [ %727, %738 ]
  %750 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %751 = extractvalue %dx.types.CBufRet.i32 %750, 0
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %794, label %753, !dx.controlflow.hints !36

; <label>:753                                     ; preds = %740
  %754 = icmp eq i32 %749, 0
  br i1 %754, label %793, label %755, !dx.controlflow.hints !37

; <label>:755                                     ; preds = %753
  %756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %757 = extractvalue %dx.types.CBufRet.i32 %756, 2
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %765, label %759, !dx.controlflow.hints !38

; <label>:759                                     ; preds = %755
  %760 = fsub fast float 1.000000e+00, %742
  %761 = fdiv fast float %745, %760
  %762 = fdiv fast float %746, %760
  %763 = fdiv fast float %747, %760
  %764 = fdiv fast float %748, %760
  br label %770

; <label>:765                                     ; preds = %755
  %766 = fadd fast float %745, %742
  %767 = fadd fast float %746, %742
  %768 = fadd fast float %747, %742
  %769 = fadd fast float %748, %742
  br label %770

; <label>:770                                     ; preds = %765, %759
  %771 = phi float [ %761, %759 ], [ %766, %765 ]
  %772 = phi float [ %762, %759 ], [ %767, %765 ]
  %773 = phi float [ %763, %759 ], [ %768, %765 ]
  %774 = phi float [ %764, %759 ], [ %769, %765 ]
  %775 = call float @dx.op.binary.f32(i32 35, float %771, float -1.000000e+00)  ; FMax(a,b)
  %776 = call float @dx.op.binary.f32(i32 35, float %772, float -1.000000e+00)  ; FMax(a,b)
  %777 = call float @dx.op.binary.f32(i32 35, float %773, float -1.000000e+00)  ; FMax(a,b)
  %778 = call float @dx.op.binary.f32(i32 35, float %774, float -1.000000e+00)  ; FMax(a,b)
  %779 = call float @dx.op.binary.f32(i32 36, float %775, float 1.000000e+00)  ; FMin(a,b)
  %780 = call float @dx.op.binary.f32(i32 36, float %776, float 1.000000e+00)  ; FMin(a,b)
  %781 = call float @dx.op.binary.f32(i32 36, float %777, float 1.000000e+00)  ; FMin(a,b)
  %782 = call float @dx.op.binary.f32(i32 36, float %778, float 1.000000e+00)  ; FMin(a,b)
  %783 = fmul fast float %779, 1.500000e+00
  %784 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %781, float %783)  ; FMad(a,b,c)
  %785 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %780, float 0.000000e+00)  ; FMad(a,b,c)
  %786 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %782, float %785)  ; FMad(a,b,c)
  %787 = fmul fast float %779, 0x3FEBB67AE0000000
  %788 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %781, float %787)  ; FMad(a,b,c)
  %789 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %780, float 0.000000e+00)  ; FMad(a,b,c)
  %790 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %782, float %789)  ; FMad(a,b,c)
  %791 = fadd fast float %784, 5.000000e-01
  %792 = fadd fast float %788, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 0, float %791, float %786, float %792, float %790, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %794

; <label>:793                                     ; preds = %753
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %794

; <label>:794                                     ; preds = %793, %770, %740
  %795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.f32 %795, 0
  %797 = extractvalue %dx.types.CBufRet.f32 %795, 1
  %798 = extractvalue %dx.types.CBufRet.f32 %795, 2
  %799 = call float @dx.op.dot3.f32(i32 55, float %267, float %268, float %269, float %796, float %797, float %798)  ; Dot3(ax,ay,az,bx,by,bz)
  %800 = fmul fast float %799, %741
  %801 = fcmp fast ogt float %744, 0.000000e+00
  %802 = fdiv fast float 1.000000e+00, %744
  %803 = fmul fast float %800, %802
  %804 = select i1 %801, float %803, float %278
  %805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %806 = extractvalue %dx.types.CBufRet.f32 %805, 0
  %807 = extractvalue %dx.types.CBufRet.f32 %805, 1
  %808 = extractvalue %dx.types.CBufRet.f32 %805, 2
  %809 = fmul fast float %806, %231
  %810 = fmul fast float %807, %231
  %811 = fmul fast float %808, %231
  %812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.f32 %812, 0
  %814 = extractvalue %dx.types.CBufRet.f32 %812, 1
  %815 = extractvalue %dx.types.CBufRet.f32 %812, 2
  %816 = fmul fast float %813, %232
  %817 = fmul fast float %814, %232
  %818 = fmul fast float %815, %232
  %819 = fadd fast float %816, %809
  %820 = fadd fast float %817, %810
  %821 = fadd fast float %818, %811
  %822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.f32 %822, 0
  %824 = extractvalue %dx.types.CBufRet.f32 %822, 1
  %825 = extractvalue %dx.types.CBufRet.f32 %822, 2
  %826 = fadd fast float %819, %823
  %827 = fadd fast float %820, %824
  %828 = fadd fast float %821, %825
  %829 = fmul fast float %826, %804
  %830 = fmul fast float %827, %804
  %831 = fmul fast float %828, %804
  %832 = call float @dx.op.dot3.f32(i32 55, float %829, float %830, float %831, float %829, float %830, float %831)  ; Dot3(ax,ay,az,bx,by,bz)
  %833 = call float @dx.op.unary.f32(i32 25, float %832)  ; Rsqrt(value)
  %834 = fmul fast float %833, %832
  %835 = fmul fast float %833, %829
  %836 = fmul fast float %833, %830
  %837 = fmul fast float %833, %831
  %838 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.i32 %838, 1
  %840 = and i32 %839, 1
  %841 = icmp ne i32 %840, 0
  %842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.f32 %842, 2
  %844 = fcmp fast ogt float %843, 0.000000e+00
  %845 = and i1 %841, %844
  br i1 %845, label %846, label %1004, !dx.controlflow.hints !39

; <label>:846                                     ; preds = %794
  %847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.f32 %847, 2
  %849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %850 = extractvalue %dx.types.CBufRet.f32 %849, 2
  %851 = fsub fast float %848, %850
  %852 = extractvalue %dx.types.CBufRet.i32 %838, 0
  %853 = call i32 @dx.op.binary.i32(i32 40, i32 %852, i32 3)  ; UMin(a,b)
  %854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %855 = extractvalue %dx.types.CBufRet.f32 %854, 0
  %856 = extractvalue %dx.types.CBufRet.f32 %854, 1
  %857 = extractvalue %dx.types.CBufRet.f32 %849, 0
  %858 = extractvalue %dx.types.CBufRet.f32 %849, 1
  %859 = fsub fast float %855, %857
  %860 = fsub fast float %856, %858
  %861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %862 = extractvalue %dx.types.CBufRet.f32 %861, 0
  %863 = fcmp fast ogt float %862, 0.000000e+00
  %864 = fsub fast float -0.000000e+00, %859
  %865 = fsub fast float -0.000000e+00, %860
  %866 = call float @dx.op.dot2.f32(i32 54, float %835, float %836, float %835, float %836)  ; Dot2(ax,ay,bx,by)
  %867 = call float @dx.op.dot2.f32(i32 54, float %835, float %836, float %864, float %865)  ; Dot2(ax,ay,bx,by)
  %868 = fmul fast float %867, 2.000000e+00
  %869 = call float @dx.op.dot2.f32(i32 54, float %864, float %865, float %864, float %865)  ; Dot2(ax,ay,bx,by)
  %870 = fmul fast float %862, %862
  %871 = fsub fast float %869, %870
  %872 = fmul fast float %868, %868
  %873 = fmul fast float %866, 4.000000e+00
  %874 = fmul fast float %873, %871
  %875 = fsub fast float %872, %874
  %876 = fcmp fast ogt float %875, 0.000000e+00
  br i1 %876, label %877, label %892, !dx.controlflow.hints !40

; <label>:877                                     ; preds = %846
  %878 = fcmp fast ogt float %868, 0.000000e+00
  %879 = call float @dx.op.unary.f32(i32 24, float %875)  ; Sqrt(value)
  %880 = fsub fast float -0.000000e+00, %879
  %881 = select i1 %878, float %879, float %880
  %882 = fadd fast float %881, %868
  %883 = fmul float %882, -5.000000e-01
  %884 = fdiv fast float %883, %866
  %885 = call float @dx.op.binary.f32(i32 35, float %884, float 0.000000e+00)  ; FMax(a,b)
  %886 = call float @dx.op.binary.f32(i32 36, float %834, float %885)  ; FMin(a,b)
  %887 = fdiv fast float %871, %883
  %888 = call float @dx.op.binary.f32(i32 35, float %887, float 0.000000e+00)  ; FMax(a,b)
  %889 = call float @dx.op.binary.f32(i32 36, float %834, float %888)  ; FMin(a,b)
  %890 = call float @dx.op.binary.f32(i32 36, float %886, float %889)  ; FMin(a,b)
  %891 = call float @dx.op.binary.f32(i32 35, float %886, float %889)  ; FMax(a,b)
  br label %892

; <label>:892                                     ; preds = %877, %846
  %893 = phi float [ %891, %877 ], [ -1.000000e+00, %846 ]
  %894 = phi float [ %890, %877 ], [ -1.000000e+00, %846 ]
  %895 = phi i1 [ true, %877 ], [ false, %846 ]
  %896 = and i1 %863, %895
  br i1 %896, label %897, label %899, !dx.controlflow.hints !41

; <label>:897                                     ; preds = %892
  %898 = fcmp fast oeq float %894, %893
  br i1 %898, label %1004, label %900, !dx.controlflow.hints !42

; <label>:899                                     ; preds = %892
  br i1 %863, label %1004, label %900, !dx.controlflow.hints !43

; <label>:900                                     ; preds = %899, %897
  %901 = phi float [ %834, %899 ], [ %893, %897 ]
  %902 = phi float [ 0.000000e+00, %899 ], [ %894, %897 ]
  %903 = fcmp fast oeq float %837, 0.000000e+00
  %904 = fdiv fast float %851, %837
  %905 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %904)  ; FMax(a,b)
  %906 = select i1 %903, float %901, float %905
  %907 = call float @dx.op.binary.f32(i32 36, float %901, float %906)  ; FMin(a,b)
  %908 = fcmp fast ogt float %837, 0.000000e+00
  %909 = fcmp fast olt float %851, 0.000000e+00
  br i1 %908, label %910, label %911, !dx.controlflow.hints !44

; <label>:910                                     ; preds = %900
  br i1 %909, label %1004, label %914, !dx.controlflow.hints !45

; <label>:911                                     ; preds = %900
  br i1 %909, label %912, label %914, !dx.controlflow.hints !46

; <label>:912                                     ; preds = %911
  %913 = call float @dx.op.binary.f32(i32 35, float %902, float %907)  ; FMax(a,b)
  br label %914

; <label>:914                                     ; preds = %912, %911, %910
  %915 = phi float [ %913, %912 ], [ %902, %911 ], [ %902, %910 ]
  %916 = getelementptr inbounds [3 x float], [3 x float]* %15, i32 0, i32 0
  store float -1.000000e+00, float* %916, align 4, !tbaa !47, !noalias !51
  %917 = getelementptr inbounds [3 x float], [3 x float]* %15, i32 0, i32 1
  store float -1.000000e+00, float* %917, align 4, !tbaa !47, !noalias !51
  %918 = getelementptr inbounds [3 x float], [3 x float]* %15, i32 0, i32 2
  store float -1.000000e+00, float* %918, align 4, !tbaa !47, !noalias !51
  %919 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 0
  store float -1.000000e+00, float* %919, align 4, !tbaa !47, !noalias !51
  %920 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 1
  store float -1.000000e+00, float* %920, align 4, !tbaa !47, !noalias !51
  %921 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 2
  store float -1.000000e+00, float* %921, align 4, !tbaa !47, !noalias !51
  %922 = icmp sgt i32 %853, 0
  br i1 %922, label %923, label %981

; <label>:923                                     ; preds = %914
  br label %924

; <label>:924                                     ; preds = %971, %923
  %925 = phi i32 [ %972, %971 ], [ 0, %923 ]
  %926 = add nuw i32 %925, 171
  %927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 %926)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.f32 %927, 0
  %929 = extractvalue %dx.types.CBufRet.f32 %927, 1
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 0
  %932 = extractvalue %dx.types.CBufRet.f32 %930, 1
  %933 = fsub fast float %928, %931
  %934 = fsub fast float %929, %932
  %935 = extractvalue %dx.types.CBufRet.f32 %927, 2
  %936 = fsub fast float -0.000000e+00, %933
  %937 = fsub fast float -0.000000e+00, %934
  %938 = call float @dx.op.dot2.f32(i32 54, float %835, float %836, float %936, float %937)  ; Dot2(ax,ay,bx,by)
  %939 = fmul fast float %938, 2.000000e+00
  %940 = call float @dx.op.dot2.f32(i32 54, float %936, float %937, float %936, float %937)  ; Dot2(ax,ay,bx,by)
  %941 = fmul fast float %935, %935
  %942 = fsub fast float %940, %941
  %943 = fmul fast float %939, %939
  %944 = fmul fast float %873, %942
  %945 = fsub fast float %943, %944
  %946 = fcmp fast ogt float %945, 0.000000e+00
  br i1 %946, label %947, label %962, !dx.controlflow.hints !40

; <label>:947                                     ; preds = %924
  %948 = fcmp fast ogt float %939, 0.000000e+00
  %949 = call float @dx.op.unary.f32(i32 24, float %945)  ; Sqrt(value)
  %950 = fsub fast float -0.000000e+00, %949
  %951 = select i1 %948, float %949, float %950
  %952 = fadd fast float %951, %939
  %953 = fmul float %952, -5.000000e-01
  %954 = fdiv fast float %953, %866
  %955 = call float @dx.op.binary.f32(i32 35, float %954, float 0.000000e+00)  ; FMax(a,b)
  %956 = call float @dx.op.binary.f32(i32 36, float %901, float %955)  ; FMin(a,b)
  %957 = fdiv fast float %942, %953
  %958 = call float @dx.op.binary.f32(i32 35, float %957, float 0.000000e+00)  ; FMax(a,b)
  %959 = call float @dx.op.binary.f32(i32 36, float %901, float %958)  ; FMin(a,b)
  %960 = call float @dx.op.binary.f32(i32 36, float %956, float %959)  ; FMin(a,b)
  %961 = call float @dx.op.binary.f32(i32 35, float %956, float %959)  ; FMax(a,b)
  br label %962

; <label>:962                                     ; preds = %947, %924
  %963 = phi float [ %961, %947 ], [ -1.000000e+00, %924 ]
  %964 = phi float [ %960, %947 ], [ -1.000000e+00, %924 ]
  %965 = phi i1 [ true, %947 ], [ false, %924 ]
  br i1 %965, label %966, label %971, !dx.controlflow.hints !62

; <label>:966                                     ; preds = %962
  %967 = call float @dx.op.binary.f32(i32 35, float %915, float %964)  ; FMax(a,b)
  %968 = getelementptr inbounds [3 x float], [3 x float]* %15, i32 0, i32 %925
  store float %967, float* %968, align 4, !tbaa !47, !noalias !51
  %969 = call float @dx.op.binary.f32(i32 35, float %915, float %963)  ; FMax(a,b)
  %970 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 %925
  store float %969, float* %970, align 4, !tbaa !47, !noalias !51
  br label %971

; <label>:971                                     ; preds = %966, %962
  %972 = add nuw nsw i32 %925, 1
  %973 = icmp eq i32 %972, %853
  br i1 %973, label %974, label %924

; <label>:974                                     ; preds = %971
  %975 = load float, float* %918, align 4, !tbaa !47, !alias.scope !63, !noalias !66
  %976 = load float, float* %917, align 4, !tbaa !47, !alias.scope !69, !noalias !70
  %977 = load float, float* %916, align 4, !tbaa !47, !alias.scope !71, !noalias !72
  %978 = load float, float* %921, align 4, !tbaa !47, !alias.scope !73, !noalias !76
  %979 = load float, float* %920, align 4, !tbaa !47, !alias.scope !79, !noalias !80
  %980 = load float, float* %919, align 4, !tbaa !47, !alias.scope !81, !noalias !82
  br label %981

; <label>:981                                     ; preds = %974, %914
  %982 = phi float [ -1.000000e+00, %914 ], [ %980, %974 ]
  %983 = phi float [ -1.000000e+00, %914 ], [ %979, %974 ]
  %984 = phi float [ -1.000000e+00, %914 ], [ %978, %974 ]
  %985 = phi float [ -1.000000e+00, %914 ], [ %977, %974 ]
  %986 = phi float [ -1.000000e+00, %914 ], [ %976, %974 ]
  %987 = phi float [ -1.000000e+00, %914 ], [ %975, %974 ]
  %988 = call float @dx.op.binary.f32(i32 36, float %986, float %987)  ; FMin(a,b)
  %989 = call float @dx.op.binary.f32(i32 36, float %985, float %988)  ; FMin(a,b)
  %990 = call float @dx.op.binary.f32(i32 35, float %985, float %986)  ; FMax(a,b)
  %991 = call float @dx.op.binary.f32(i32 36, float %990, float %987)  ; FMin(a,b)
  %992 = call float @dx.op.binary.f32(i32 36, float %985, float %986)  ; FMin(a,b)
  %993 = call float @dx.op.binary.f32(i32 35, float %992, float %991)  ; FMax(a,b)
  %994 = call float @dx.op.binary.f32(i32 35, float %986, float %987)  ; FMax(a,b)
  %995 = call float @dx.op.binary.f32(i32 35, float %985, float %994)  ; FMax(a,b)
  store float %989, float* %916, align 4, !tbaa !47, !alias.scope !71, !noalias !72
  store float %993, float* %917, align 4, !tbaa !47, !alias.scope !69, !noalias !70
  store float %995, float* %918, align 4, !tbaa !47, !alias.scope !63, !noalias !66
  %996 = call float @dx.op.binary.f32(i32 36, float %983, float %984)  ; FMin(a,b)
  %997 = call float @dx.op.binary.f32(i32 36, float %982, float %996)  ; FMin(a,b)
  %998 = call float @dx.op.binary.f32(i32 35, float %982, float %983)  ; FMax(a,b)
  %999 = call float @dx.op.binary.f32(i32 36, float %998, float %984)  ; FMin(a,b)
  %1000 = call float @dx.op.binary.f32(i32 36, float %982, float %983)  ; FMin(a,b)
  %1001 = call float @dx.op.binary.f32(i32 35, float %1000, float %999)  ; FMax(a,b)
  %1002 = call float @dx.op.binary.f32(i32 35, float %983, float %984)  ; FMax(a,b)
  %1003 = call float @dx.op.binary.f32(i32 35, float %982, float %1002)  ; FMax(a,b)
  store float %997, float* %919, align 4, !tbaa !47, !alias.scope !81, !noalias !82
  store float %1001, float* %920, align 4, !tbaa !47, !alias.scope !79, !noalias !80
  store float %1003, float* %921, align 4, !tbaa !47, !alias.scope !73, !noalias !76
  br label %1004

; <label>:1004                                    ; preds = %981, %910, %899, %897, %794
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 2
  %1007 = fmul fast float %1006, %804
  %1008 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  %1009 = fptoui float %743 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1010 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %14
  store i32 %1009, i32 addrspace(3)* %1010, align 4, !tbaa !83
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1011 = and i32 %14, 63
  %1012 = icmp ult i32 %1011, 32
  br i1 %1012, label %1013, label %1019, !dx.controlflow.hints !85

; <label>:1013                                    ; preds = %1004
  %1014 = add i32 %14, 32
  %1015 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1014
  %1016 = load i32, i32 addrspace(3)* %1015, align 4, !tbaa !83
  %1017 = load i32, i32 addrspace(3)* %1010, align 4, !tbaa !83
  %1018 = call i32 @dx.op.binary.i32(i32 40, i32 %1017, i32 %1016)  ; UMin(a,b)
  store i32 %1018, i32 addrspace(3)* %1010, align 4, !tbaa !83
  br label %1019

; <label>:1019                                    ; preds = %1013, %1004
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1020 = icmp ult i32 %1011, 16
  br i1 %1020, label %1021, label %1027, !dx.controlflow.hints !86

; <label>:1021                                    ; preds = %1019
  %1022 = add i32 %14, 16
  %1023 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1022
  %1024 = load i32, i32 addrspace(3)* %1023, align 4, !tbaa !83
  %1025 = load i32, i32 addrspace(3)* %1010, align 4, !tbaa !83
  %1026 = call i32 @dx.op.binary.i32(i32 40, i32 %1025, i32 %1024)  ; UMin(a,b)
  store i32 %1026, i32 addrspace(3)* %1010, align 4, !tbaa !83
  br label %1027

; <label>:1027                                    ; preds = %1021, %1019
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1028 = icmp ult i32 %1011, 8
  br i1 %1028, label %1029, label %1035, !dx.controlflow.hints !87

; <label>:1029                                    ; preds = %1027
  %1030 = add i32 %14, 8
  %1031 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1030
  %1032 = load i32, i32 addrspace(3)* %1031, align 4, !tbaa !83
  %1033 = load i32, i32 addrspace(3)* %1010, align 4, !tbaa !83
  %1034 = call i32 @dx.op.binary.i32(i32 40, i32 %1033, i32 %1032)  ; UMin(a,b)
  store i32 %1034, i32 addrspace(3)* %1010, align 4, !tbaa !83
  br label %1035

; <label>:1035                                    ; preds = %1029, %1027
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1036 = icmp ult i32 %1011, 4
  br i1 %1036, label %1037, label %1043, !dx.controlflow.hints !88

; <label>:1037                                    ; preds = %1035
  %1038 = add i32 %14, 4
  %1039 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1038
  %1040 = load i32, i32 addrspace(3)* %1039, align 4, !tbaa !83
  %1041 = load i32, i32 addrspace(3)* %1010, align 4, !tbaa !83
  %1042 = call i32 @dx.op.binary.i32(i32 40, i32 %1041, i32 %1040)  ; UMin(a,b)
  store i32 %1042, i32 addrspace(3)* %1010, align 4, !tbaa !83
  br label %1043

; <label>:1043                                    ; preds = %1037, %1035
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1044 = icmp ult i32 %1011, 2
  br i1 %1044, label %1045, label %1051, !dx.controlflow.hints !89

; <label>:1045                                    ; preds = %1043
  %1046 = add i32 %14, 2
  %1047 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1046
  %1048 = load i32, i32 addrspace(3)* %1047, align 4, !tbaa !83
  %1049 = load i32, i32 addrspace(3)* %1010, align 4, !tbaa !83
  %1050 = call i32 @dx.op.binary.i32(i32 40, i32 %1049, i32 %1048)  ; UMin(a,b)
  store i32 %1050, i32 addrspace(3)* %1010, align 4, !tbaa !83
  br label %1051

; <label>:1051                                    ; preds = %1045, %1043
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1052 = icmp eq i32 %1011, 0
  br i1 %1052, label %1053, label %1059, !dx.controlflow.hints !90

; <label>:1053                                    ; preds = %1051
  %1054 = add i32 %14, 1
  %1055 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1054
  %1056 = load i32, i32 addrspace(3)* %1055, align 4, !tbaa !83
  %1057 = load i32, i32 addrspace(3)* %1010, align 4, !tbaa !83
  %1058 = call i32 @dx.op.binary.i32(i32 40, i32 %1057, i32 %1056)  ; UMin(a,b)
  store i32 %1058, i32 addrspace(3)* %1010, align 4, !tbaa !83
  br label %1059

; <label>:1059                                    ; preds = %1053, %1051
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1060 = and i32 %14, -64
  %1061 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1060
  %1062 = load i32, i32 addrspace(3)* %1061, align 4, !tbaa !83
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1009, i32 addrspace(3)* %1010, align 4, !tbaa !83
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1012, label %1063, label %1069, !dx.controlflow.hints !91

; <label>:1063                                    ; preds = %1059
  %1064 = add i32 %14, 32
  %1065 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1064
  %1066 = load i32, i32 addrspace(3)* %1065, align 4, !tbaa !83
  %1067 = load i32, i32 addrspace(3)* %1010, align 4, !tbaa !83
  %1068 = call i32 @dx.op.binary.i32(i32 39, i32 %1067, i32 %1066)  ; UMax(a,b)
  store i32 %1068, i32 addrspace(3)* %1010, align 4, !tbaa !83
  br label %1069

; <label>:1069                                    ; preds = %1063, %1059
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1020, label %1070, label %1076, !dx.controlflow.hints !92

; <label>:1070                                    ; preds = %1069
  %1071 = add i32 %14, 16
  %1072 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1071
  %1073 = load i32, i32 addrspace(3)* %1072, align 4, !tbaa !83
  %1074 = load i32, i32 addrspace(3)* %1010, align 4, !tbaa !83
  %1075 = call i32 @dx.op.binary.i32(i32 39, i32 %1074, i32 %1073)  ; UMax(a,b)
  store i32 %1075, i32 addrspace(3)* %1010, align 4, !tbaa !83
  br label %1076

; <label>:1076                                    ; preds = %1070, %1069
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1028, label %1077, label %1083, !dx.controlflow.hints !93

; <label>:1077                                    ; preds = %1076
  %1078 = add i32 %14, 8
  %1079 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1078
  %1080 = load i32, i32 addrspace(3)* %1079, align 4, !tbaa !83
  %1081 = load i32, i32 addrspace(3)* %1010, align 4, !tbaa !83
  %1082 = call i32 @dx.op.binary.i32(i32 39, i32 %1081, i32 %1080)  ; UMax(a,b)
  store i32 %1082, i32 addrspace(3)* %1010, align 4, !tbaa !83
  br label %1083

; <label>:1083                                    ; preds = %1077, %1076
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1036, label %1084, label %1090, !dx.controlflow.hints !94

; <label>:1084                                    ; preds = %1083
  %1085 = add i32 %14, 4
  %1086 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1085
  %1087 = load i32, i32 addrspace(3)* %1086, align 4, !tbaa !83
  %1088 = load i32, i32 addrspace(3)* %1010, align 4, !tbaa !83
  %1089 = call i32 @dx.op.binary.i32(i32 39, i32 %1088, i32 %1087)  ; UMax(a,b)
  store i32 %1089, i32 addrspace(3)* %1010, align 4, !tbaa !83
  br label %1090

; <label>:1090                                    ; preds = %1084, %1083
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1044, label %1091, label %1097, !dx.controlflow.hints !95

; <label>:1091                                    ; preds = %1090
  %1092 = add i32 %14, 2
  %1093 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1092
  %1094 = load i32, i32 addrspace(3)* %1093, align 4, !tbaa !83
  %1095 = load i32, i32 addrspace(3)* %1010, align 4, !tbaa !83
  %1096 = call i32 @dx.op.binary.i32(i32 39, i32 %1095, i32 %1094)  ; UMax(a,b)
  store i32 %1096, i32 addrspace(3)* %1010, align 4, !tbaa !83
  br label %1097

; <label>:1097                                    ; preds = %1091, %1090
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1052, label %1098, label %1104, !dx.controlflow.hints !96

; <label>:1098                                    ; preds = %1097
  %1099 = add i32 %14, 1
  %1100 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1099
  %1101 = load i32, i32 addrspace(3)* %1100, align 4, !tbaa !83
  %1102 = load i32, i32 addrspace(3)* %1010, align 4, !tbaa !83
  %1103 = call i32 @dx.op.binary.i32(i32 39, i32 %1102, i32 %1101)  ; UMax(a,b)
  store i32 %1103, i32 addrspace(3)* %1010, align 4, !tbaa !83
  br label %1104

; <label>:1104                                    ; preds = %1098, %1097
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1105 = load i32, i32 addrspace(3)* %1061, align 4, !tbaa !83
  %1106 = uitofp i32 %1105 to float
  %1107 = uitofp i32 %1062 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %12, i32 %13, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1109 = extractvalue %dx.types.CBufRet.f32 %1108, 0
  %1110 = fmul fast float %1109, %743
  %1111 = fmul fast float %1109, %1106
  %1112 = fmul fast float %1109, %1107
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %12, i32 %13, i32 undef, float %1110, float %1111, float %1112, float %1110, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %12, i32 %13, i32 undef, float %1008, float %1008, float %1008, float %1008, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!22}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !11, !17, !20}
!5 = !{!6, !8, !9, !10}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
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
!20 = !{!21}
!21 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!22 = !{void ()* @cs_fog_raymarching_brfog, !"cs_fog_raymarching_brfog", null, !4, !23}
!23 = !{i32 0, i64 272, i32 4, !24}
!24 = !{i32 8, i32 8, i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 1}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 1}
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
!47 = !{!48, !48, i64 0}
!48 = !{!"float", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !{!52, !54, !56, !57, !59, !60, !61}
!52 = distinct !{!52, !53, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!53 = distinct !{!53, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!54 = distinct !{!54, !55, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!55 = distinct !{!55, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!56 = distinct !{!56, !55, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!57 = distinct !{!57, !58, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!58 = distinct !{!58, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!59 = distinct !{!59, !58, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!60 = distinct !{!60, !58, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!61 = distinct !{!61, !58, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = !{!64}
!64 = distinct !{!64, !65, !"\01?sort@@YAXAIAM00@Z: %c"}
!65 = distinct !{!65, !"\01?sort@@YAXAIAM00@Z"}
!66 = !{!67, !68, !52, !54, !56, !57, !59, !60, !61}
!67 = distinct !{!67, !65, !"\01?sort@@YAXAIAM00@Z: %a"}
!68 = distinct !{!68, !65, !"\01?sort@@YAXAIAM00@Z: %b"}
!69 = !{!68}
!70 = !{!67, !64, !52, !54, !56, !57, !59, !60, !61}
!71 = !{!67}
!72 = !{!68, !64, !52, !54, !56, !57, !59, !60, !61}
!73 = !{!74}
!74 = distinct !{!74, !75, !"\01?sort@@YAXAIAM00@Z: %c"}
!75 = distinct !{!75, !"\01?sort@@YAXAIAM00@Z"}
!76 = !{!77, !78, !52, !54, !56, !57, !59, !60, !61}
!77 = distinct !{!77, !75, !"\01?sort@@YAXAIAM00@Z: %a"}
!78 = distinct !{!78, !75, !"\01?sort@@YAXAIAM00@Z: %b"}
!79 = !{!78}
!80 = !{!77, !74, !52, !54, !56, !57, !59, !60, !61}
!81 = !{!77}
!82 = !{!78, !74, !52, !54, !56, !57, !59, !60, !61}
!83 = !{!84, !84, i64 0}
!84 = !{!"int", !49, i64 0}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}

