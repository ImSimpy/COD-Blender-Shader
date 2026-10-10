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
; shader hash: 5ba40f0b91e925a6c34ecb2a122c7a26
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

define void @cs_fog_raymarching_air_brfog() {
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
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 3
  %291 = fsub fast float -0.000000e+00, %224
  %292 = fsub fast float -0.000000e+00, %225
  %293 = fsub fast float %290, %226
  %294 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %291, float %292, float %293)  ; Dot3(ax,ay,az,bx,by,bz)
  %295 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %267, float %268, float %269)  ; Dot3(ax,ay,az,bx,by,bz)
  %296 = fdiv fast float 1.000000e+00, %295
  %297 = fmul fast float %296, %294
  %298 = fcmp fast olt float %297, 0.000000e+00
  %299 = fcmp fast ogt float %269, 0.000000e+00
  %300 = and i1 %299, %298
  br i1 %300, label %305, label %301, !dx.controlflow.hints !26

; <label>:301                                     ; preds = %196
  %302 = fcmp fast olt float %269, 0.000000e+00
  br i1 %302, label %303, label %305, !dx.controlflow.hints !27

; <label>:303                                     ; preds = %301
  %304 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %297)  ; FMax(a,b)
  br label %305

; <label>:305                                     ; preds = %303, %301, %196
  %306 = phi float [ 0.000000e+00, %196 ], [ %304, %303 ], [ 0.000000e+00, %301 ]
  %307 = phi float [ 0.000000e+00, %196 ], [ 0x47EFFFFFE0000000, %303 ], [ %297, %301 ]
  %308 = fcmp fast oeq float %307, 0.000000e+00
  br i1 %308, label %312, label %309, !dx.controlflow.hints !28

; <label>:309                                     ; preds = %305
  %310 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %306)  ; FMin(a,b)
  %311 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %307)  ; FMax(a,b)
  br label %312

; <label>:312                                     ; preds = %309, %305
  %313 = phi i32 [ 1, %309 ], [ 0, %305 ]
  %314 = phi float [ %311, %309 ], [ -1.000000e+00, %305 ]
  %315 = phi float [ %310, %309 ], [ 0x47EFFFFFE0000000, %305 ]
  %316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.f32 %316, 2
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 3
  %320 = fsub fast float %317, %226
  %321 = fadd fast float %320, %319
  %322 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %291, float %292, float %321)  ; Dot3(ax,ay,az,bx,by,bz)
  %323 = fmul fast float %296, %322
  %324 = fcmp fast olt float %323, 0.000000e+00
  %325 = and i1 %299, %324
  br i1 %325, label %330, label %326, !dx.controlflow.hints !29

; <label>:326                                     ; preds = %312
  %327 = fcmp fast olt float %269, 0.000000e+00
  br i1 %327, label %328, label %330, !dx.controlflow.hints !30

; <label>:328                                     ; preds = %326
  %329 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %323)  ; FMax(a,b)
  br label %330

; <label>:330                                     ; preds = %328, %326, %312
  %331 = phi float [ 0.000000e+00, %312 ], [ %329, %328 ], [ 0.000000e+00, %326 ]
  %332 = phi float [ 0.000000e+00, %312 ], [ 0x47EFFFFFE0000000, %328 ], [ %323, %326 ]
  %333 = fcmp fast oeq float %332, 0.000000e+00
  br i1 %333, label %337, label %334, !dx.controlflow.hints !31

; <label>:334                                     ; preds = %330
  %335 = call float @dx.op.binary.f32(i32 36, float %315, float %331)  ; FMin(a,b)
  %336 = call float @dx.op.binary.f32(i32 35, float %314, float %332)  ; FMax(a,b)
  br label %337

; <label>:337                                     ; preds = %334, %330
  %338 = phi i32 [ 1, %334 ], [ 0, %330 ]
  %339 = phi float [ %336, %334 ], [ %314, %330 ]
  %340 = phi float [ %335, %334 ], [ %315, %330 ]
  %341 = call float @dx.op.binary.f32(i32 36, float %288, float %339)  ; FMin(a,b)
  %342 = call float @dx.op.binary.f32(i32 35, float %265, float %340)  ; FMax(a,b)
  %343 = extractvalue %dx.types.CBufRet.f32 %289, 0
  %344 = fmul fast float %213, 2.000000e+00
  %345 = fadd fast float %344, -1.000000e+00
  %346 = fmul fast float %343, %345
  %347 = fadd fast float %346, %342
  %348 = fcmp fast olt float %347, %341
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 2
  %351 = fcmp fast olt float %350, 1.000000e+00
  %352 = and i1 %351, %348
  br i1 %352, label %353, label %826

; <label>:353                                     ; preds = %337
  %354 = fmul fast float %347, %269
  %355 = fadd fast float %354, %226
  %356 = fmul fast float %347, %268
  %357 = fadd fast float %356, %225
  %358 = fmul fast float %347, %267
  %359 = fadd fast float %358, %224
  br label %360

; <label>:360                                     ; preds = %804, %353
  %361 = phi i32 [ %568, %804 ], [ undef, %353 ]
  %362 = phi float [ %570, %804 ], [ undef, %353 ]
  %363 = phi float [ %806, %804 ], [ 0.000000e+00, %353 ]
  %364 = phi float [ %807, %804 ], [ 1.000000e+00, %353 ]
  %365 = phi float [ %817, %804 ], [ %359, %353 ]
  %366 = phi float [ %818, %804 ], [ %357, %353 ]
  %367 = phi float [ %819, %804 ], [ %355, %353 ]
  %368 = phi float [ %805, %804 ], [ %347, %353 ]
  %369 = phi i32 [ %376, %804 ], [ 0, %353 ]
  %370 = phi float [ %808, %804 ], [ 0.000000e+00, %353 ]
  %371 = phi float [ %809, %804 ], [ 0.000000e+00, %353 ]
  %372 = phi float [ %810, %804 ], [ 0.000000e+00, %353 ]
  %373 = phi float [ %811, %804 ], [ 0.000000e+00, %353 ]
  %374 = phi float [ %812, %804 ], [ 0.000000e+00, %353 ]
  %375 = phi i32 [ %813, %804 ], [ 0, %353 ]
  %376 = add i32 %369, 1
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 0
  %379 = icmp eq i32 %313, 0
  br i1 %379, label %392, label %380, !dx.controlflow.hints !32

; <label>:380                                     ; preds = %360
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 3
  %383 = extractvalue %dx.types.CBufRet.f32 %381, 2
  %384 = fmul fast float %382, %368
  %385 = fdiv fast float %384, %341
  %386 = fadd fast float %385, 1.000000e+00
  %387 = call float @dx.op.unary.f32(i32 23, float %386)  ; Log(value)
  %388 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %387)  ; FMin(a,b)
  %389 = fmul fast float %383, %341
  %390 = fmul fast float %389, %388
  %391 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %390)  ; FMin(a,b)
  br label %392

; <label>:392                                     ; preds = %380, %360
  %393 = phi float [ %391, %380 ], [ 0x47EFFFFFE0000000, %360 ]
  %394 = icmp eq i32 %338, 0
  br i1 %394, label %567, label %395, !dx.controlflow.hints !33

; <label>:395                                     ; preds = %392
  %396 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %397 = extractvalue %dx.types.CBufRet.i32 %396, 1
  %398 = and i32 %397, 1
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %557, !dx.controlflow.hints !34

; <label>:400                                     ; preds = %395
  %401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.f32 %401, 2
  %403 = extractvalue %dx.types.CBufRet.f32 %401, 3
  %404 = fmul fast float %402, %365
  %405 = fmul fast float %403, %366
  %406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.f32 %406, 0
  %408 = extractvalue %dx.types.CBufRet.f32 %406, 1
  %409 = fadd fast float %404, %407
  %410 = fadd fast float %405, %408
  %411 = call float @dx.op.unary.f32(i32 7, float %409)  ; Saturate(value)
  %412 = call float @dx.op.unary.f32(i32 7, float %410)  ; Saturate(value)
  %413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %9, float %411, float %412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %414 = extractvalue %dx.types.ResRet.f32 %413, 0
  %415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %416 = extractvalue %dx.types.CBufRet.f32 %415, 0
  %417 = fmul fast float %416, %414
  %418 = fsub fast float %409, %411
  %419 = fsub fast float %410, %412
  %420 = extractvalue %dx.types.CBufRet.f32 %401, 0
  %421 = extractvalue %dx.types.CBufRet.f32 %401, 1
  %422 = fmul fast float %420, %418
  %423 = fmul fast float %421, %419
  %424 = fmul fast float %422, %422
  %425 = fmul fast float %423, %423
  %426 = fadd fast float %424, %425
  %427 = call float @dx.op.unary.f32(i32 24, float %426)  ; Sqrt(value)
  %428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %429 = extractvalue %dx.types.CBufRet.f32 %428, 3
  %430 = fmul fast float %429, %427
  %431 = call float @dx.op.unary.f32(i32 7, float %430)  ; Saturate(value)
  %432 = extractvalue %dx.types.CBufRet.f32 %428, 2
  %433 = fsub fast float %432, %417
  %434 = fmul fast float %433, %431
  %435 = extractvalue %dx.types.CBufRet.f32 %415, 1
  %436 = fsub fast float %367, %417
  %437 = fsub fast float %436, %435
  %438 = fsub fast float %437, %434
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 2
  %441 = fsub fast float %438, %440
  %442 = fcmp fast olt float %441, 0.000000e+00
  %443 = call float @dx.op.unary.f32(i32 6, float %441)  ; FAbs(value)
  %444 = extractvalue %dx.types.CBufRet.i32 %396, 0
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %499, label %446

; <label>:446                                     ; preds = %400
  br label %447

; <label>:447                                     ; preds = %486, %446
  %448 = phi i32 [ %492, %486 ], [ 1, %446 ]
  %449 = phi float [ %494, %486 ], [ 0x47EFFFFFE0000000, %446 ]
  %450 = phi i32 [ %495, %486 ], [ 0, %446 ]
  %451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.f32 %451, 1
  %453 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.i32 %453, 1
  %455 = and i32 %454, 8
  %456 = icmp eq i32 %455, 0
  %457 = fcmp fast ogt float %452, %438
  %458 = or i1 %457, %456
  %459 = add i32 %450, 171
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 %459)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 0
  %462 = extractvalue %dx.types.CBufRet.f32 %460, 1
  %463 = extractvalue %dx.types.CBufRet.f32 %460, 2
  br i1 %458, label %464, label %470, !dx.controlflow.hints !35

; <label>:464                                     ; preds = %447
  %465 = fsub fast float %461, %365
  %466 = fsub fast float %462, %366
  %467 = fmul fast float %465, %465
  %468 = fmul fast float %466, %466
  %469 = fadd fast float %467, %468
  br label %486

; <label>:470                                     ; preds = %447
  %471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %472 = extractvalue %dx.types.CBufRet.f32 %471, 2
  %473 = extractvalue %dx.types.CBufRet.f32 %451, 2
  %474 = fmul fast float %473, %472
  %475 = fsub fast float %474, %452
  %476 = fdiv fast float %463, %475
  %477 = fsub fast float %365, %461
  %478 = fsub fast float %366, %462
  %479 = fsub fast float %438, %452
  %480 = fmul fast float %476, %479
  %481 = fmul fast float %477, %477
  %482 = fmul fast float %478, %478
  %483 = fadd fast float %481, %482
  %484 = fmul fast float %480, %480
  %485 = fadd fast float %483, %484
  br label %486

; <label>:486                                     ; preds = %470, %464
  %487 = phi float [ %469, %464 ], [ %485, %470 ]
  %488 = call float @dx.op.unary.f32(i32 24, float %487)  ; Sqrt(value)
  %489 = fsub float %463, %488
  %490 = fcmp fast olt float %489, 0.000000e+00
  %491 = zext i1 %490 to i32
  %492 = and i32 %491, %448
  %493 = call float @dx.op.unary.f32(i32 6, float %489)  ; FAbs(value)
  %494 = call float @dx.op.binary.f32(i32 36, float %449, float %493)  ; FMin(a,b)
  %495 = add i32 %450, 1
  %496 = extractvalue %dx.types.CBufRet.i32 %453, 0
  %497 = icmp ult i32 %495, %496
  br i1 %497, label %447, label %498

; <label>:498                                     ; preds = %486
  br label %499

; <label>:499                                     ; preds = %498, %400
  %500 = phi i32 [ 1, %400 ], [ %492, %498 ]
  %501 = phi float [ 0x47EFFFFFE0000000, %400 ], [ %494, %498 ]
  br label %502

; <label>:502                                     ; preds = %502, %499
  %503 = phi i32 [ %500, %499 ], [ %542, %502 ]
  %504 = phi float [ 0x47EFFFFFE0000000, %499 ], [ %544, %502 ]
  %505 = phi i32 [ 0, %499 ], [ %545, %502 ]
  %506 = add nuw nsw i32 %505, 191
  %507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 %506)  ; CBufferLoadLegacy(handle,regIndex)
  %508 = extractvalue %dx.types.CBufRet.f32 %507, 0
  %509 = extractvalue %dx.types.CBufRet.f32 %507, 1
  %510 = extractvalue %dx.types.CBufRet.f32 %507, 2
  %511 = add nuw nsw i32 %505, 195
  %512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 %511)  ; CBufferLoadLegacy(handle,regIndex)
  %513 = extractvalue %dx.types.CBufRet.f32 %512, 0
  %514 = extractvalue %dx.types.CBufRet.f32 %512, 1
  %515 = extractvalue %dx.types.CBufRet.f32 %512, 2
  %516 = fsub fast float %365, %508
  %517 = fsub fast float %366, %509
  %518 = fsub fast float %438, %510
  %519 = call float @dx.op.unary.f32(i32 6, float %516)  ; FAbs(value)
  %520 = call float @dx.op.unary.f32(i32 6, float %517)  ; FAbs(value)
  %521 = call float @dx.op.unary.f32(i32 6, float %518)  ; FAbs(value)
  %522 = fsub fast float %519, %513
  %523 = fsub fast float %520, %514
  %524 = fsub fast float %521, %515
  %525 = call float @dx.op.binary.f32(i32 35, float %522, float 0.000000e+00)  ; FMax(a,b)
  %526 = call float @dx.op.binary.f32(i32 35, float %523, float 0.000000e+00)  ; FMax(a,b)
  %527 = call float @dx.op.binary.f32(i32 35, float %524, float 0.000000e+00)  ; FMax(a,b)
  %528 = fmul fast float %525, %525
  %529 = fmul fast float %526, %526
  %530 = fadd fast float %529, %528
  %531 = fmul fast float %527, %527
  %532 = fadd fast float %530, %531
  %533 = call float @dx.op.unary.f32(i32 24, float %532)  ; Sqrt(value)
  %534 = call float @dx.op.binary.f32(i32 35, float %523, float %524)  ; FMax(a,b)
  %535 = call float @dx.op.binary.f32(i32 35, float %522, float %534)  ; FMax(a,b)
  %536 = call float @dx.op.binary.f32(i32 36, float %535, float 0.000000e+00)  ; FMin(a,b)
  %537 = fadd fast float %536, %533
  %538 = fsub fast float -0.000000e+00, %537
  %539 = fcmp ogt float %537, -0.000000e+00
  %540 = icmp ne i32 %503, 0
  %541 = and i1 %540, %539
  %542 = zext i1 %541 to i32
  %543 = call float @dx.op.unary.f32(i32 6, float %538)  ; FAbs(value)
  %544 = call float @dx.op.binary.f32(i32 36, float %504, float %543)  ; FMin(a,b)
  %545 = add nuw nsw i32 %505, 1
  %546 = icmp eq i32 %545, 4
  br i1 %546, label %547, label %502

; <label>:547                                     ; preds = %502
  %548 = call float @dx.op.binary.f32(i32 36, float %443, float %544)  ; FMin(a,b)
  %549 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.i32 %549, 1
  %551 = and i32 %550, 2
  %552 = icmp ne i32 %551, 0
  %553 = xor i1 %541, %552
  %554 = call float @dx.op.binary.f32(i32 36, float %548, float %501)  ; FMin(a,b)
  %555 = and i1 %553, %442
  %556 = zext i1 %555 to i32
  br label %557

; <label>:557                                     ; preds = %547, %395
  %558 = phi i32 [ %361, %395 ], [ %556, %547 ]
  %559 = phi float [ 0.000000e+00, %395 ], [ %554, %547 ]
  %560 = phi float [ %367, %395 ], [ %438, %547 ]
  %561 = icmp ne i32 %558, 0
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 3
  %564 = call float @dx.op.binary.f32(i32 35, float %559, float %563)  ; FMax(a,b)
  %565 = call float @dx.op.binary.f32(i32 36, float %393, float %564)  ; FMin(a,b)
  %566 = zext i1 %561 to i32
  br label %567

; <label>:567                                     ; preds = %557, %392
  %568 = phi i32 [ %558, %557 ], [ %361, %392 ]
  %569 = phi i32 [ %566, %557 ], [ 0, %392 ]
  %570 = phi float [ %560, %557 ], [ %362, %392 ]
  %571 = phi float [ %565, %557 ], [ %393, %392 ]
  %572 = extractvalue %dx.types.CBufRet.f32 %377, 2
  %573 = fmul fast float %572, %368
  %574 = call float @dx.op.unary.f32(i32 23, float %573)  ; Log(value)
  %575 = fmul fast float %574, 0x3FE62E4300000000
  %576 = call float @dx.op.binary.f32(i32 35, float %575, float 1.000000e+00)  ; FMax(a,b)
  %577 = fmul fast float %576, %571
  %578 = call float @dx.op.binary.f32(i32 36, float %577, float 0x47EFFFFFE0000000)  ; FMin(a,b)
  %579 = call float @dx.op.binary.f32(i32 35, float %578, float %378)  ; FMax(a,b)
  %580 = fadd fast float %341, 0x3F1A36E2E0000000
  %581 = fsub fast float %580, %368
  %582 = call float @dx.op.binary.f32(i32 36, float %581, float %579)  ; FMin(a,b)
  br i1 %379, label %630, label %583, !dx.controlflow.hints !36

; <label>:583                                     ; preds = %567
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = fsub fast float -0.000000e+00, %365
  %587 = fsub fast float -0.000000e+00, %366
  %588 = fsub fast float %585, %367
  %589 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %586, float %587, float %588)  ; Dot3(ax,ay,az,bx,by,bz)
  %590 = fmul fast float %296, %589
  %591 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %590)  ; FMax(a,b)
  %592 = fcmp fast olt float %269, 0.000000e+00
  %593 = call float @dx.op.binary.f32(i32 36, float %582, float %591)  ; FMin(a,b)
  br i1 %592, label %595, label %594, !dx.controlflow.hints !37

; <label>:594                                     ; preds = %583
  br label %595

; <label>:595                                     ; preds = %594, %583
  %596 = phi float [ 0.000000e+00, %594 ], [ %593, %583 ]
  %597 = phi float [ %593, %594 ], [ %582, %583 ]
  %598 = phi float [ %593, %594 ], [ 0.000000e+00, %583 ]
  %599 = phi float [ %582, %594 ], [ %593, %583 ]
  %600 = fsub fast float %597, %596
  %601 = extractvalue %dx.types.CBufRet.f32 %584, 1
  %602 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %601)  ; FMin(a,b)
  %603 = fsub fast float %367, %585
  %604 = fmul fast float %602, 0x3FF7154760000000
  %605 = fmul fast float %604, %603
  %606 = call float @dx.op.unary.f32(i32 21, float %605)  ; Exp(value)
  %607 = fmul fast float %269, 0x3FF7154760000000
  %608 = fmul fast float %607, %599
  %609 = fmul fast float %608, %602
  %610 = call float @dx.op.unary.f32(i32 21, float %609)  ; Exp(value)
  %611 = fmul fast float %607, %598
  %612 = fmul fast float %611, %602
  %613 = call float @dx.op.unary.f32(i32 21, float %612)  ; Exp(value)
  %614 = fsub fast float %610, %613
  %615 = fmul fast float %614, %606
  %616 = fmul fast float %602, %269
  %617 = fdiv fast float %615, %616
  %618 = fadd fast float %600, %617
  %619 = call float @dx.op.unary.f32(i32 6, float %269)  ; FAbs(value)
  %620 = fcmp fast olt float %619, 0x3F0FFB4800000000
  %621 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %603)  ; FMax(a,b)
  %622 = fmul fast float %621, 0x3FF7154760000000
  %623 = fmul fast float %622, %601
  %624 = call float @dx.op.unary.f32(i32 21, float %623)  ; Exp(value)
  %625 = fmul fast float %624, %582
  %626 = select i1 %620, float %625, float %618
  %627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %628 = extractvalue %dx.types.CBufRet.f32 %627, 1
  %629 = fmul fast float %626, %628
  br label %630

; <label>:630                                     ; preds = %595, %567
  %631 = phi float [ %629, %595 ], [ 0.000000e+00, %567 ]
  %632 = icmp eq i32 %569, 0
  br i1 %632, label %664, label %633, !dx.controlflow.hints !38

; <label>:633                                     ; preds = %630
  %634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.f32 %634, 1
  %636 = fsub fast float %582, %635
  %637 = extractvalue %dx.types.CBufRet.f32 %634, 3
  %638 = fmul fast float %636, %637
  %639 = call float @dx.op.unary.f32(i32 7, float %638)  ; Saturate(value)
  %640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.f32 %640, 3
  %642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.f32 %642, 2
  %644 = fsub fast float %643, %570
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 3
  %647 = fmul fast float %644, %646
  %648 = call float @dx.op.unary.f32(i32 7, float %647)  ; Saturate(value)
  %649 = fmul fast float %648, %641
  %650 = extractvalue %dx.types.CBufRet.f32 %645, 0
  %651 = fsub fast float %368, %650
  %652 = extractvalue %dx.types.CBufRet.f32 %645, 1
  %653 = fmul fast float %651, %652
  %654 = call float @dx.op.unary.f32(i32 7, float %653)  ; Saturate(value)
  %655 = fsub fast float 1.000000e+00, %639
  %656 = fmul fast float %654, %655
  %657 = fadd fast float %656, %639
  %658 = extractvalue %dx.types.CBufRet.f32 %634, 0
  %659 = fsub fast float %649, %658
  %660 = fmul fast float %659, %657
  %661 = fadd fast float %660, %658
  %662 = fmul fast float %661, %582
  %663 = fadd fast float %662, %631
  br label %664

; <label>:664                                     ; preds = %633, %630
  %665 = phi float [ %663, %633 ], [ %631, %630 ]
  %666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %667 = extractvalue %dx.types.CBufRet.f32 %666, 1
  %668 = fcmp fast ogt float %665, %667
  br i1 %668, label %671, label %669, !dx.controlflow.hints !39

; <label>:669                                     ; preds = %664
  %670 = fadd fast float %582, %368
  br label %804

; <label>:671                                     ; preds = %664
  %672 = fmul fast float %665, 0xBFF7154760000000
  %673 = call float @dx.op.unary.f32(i32 21, float %672)  ; Exp(value)
  %674 = call float @dx.op.unary.f32(i32 7, float %673)  ; Saturate(value)
  %675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.f32 %675, 0
  %677 = extractvalue %dx.types.CBufRet.f32 %675, 1
  %678 = extractvalue %dx.types.CBufRet.f32 %675, 2
  %679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %680 = extractvalue %dx.types.CBufRet.f32 %679, 0
  %681 = fmul fast float %680, %676
  %682 = fmul fast float %680, %677
  %683 = fmul fast float %680, %678
  %684 = fadd fast float %681, %365
  %685 = fadd fast float %682, %366
  %686 = fadd fast float %683, %367
  br i1 %394, label %757, label %687, !dx.controlflow.hints !33

; <label>:687                                     ; preds = %671
  %688 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.i32 %688, 1
  %690 = and i32 %689, 1
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %692, label %757, !dx.controlflow.hints !34

; <label>:692                                     ; preds = %687
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 2
  %695 = extractvalue %dx.types.CBufRet.f32 %693, 3
  %696 = fmul fast float %694, %684
  %697 = fmul fast float %695, %685
  %698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.f32 %698, 0
  %700 = extractvalue %dx.types.CBufRet.f32 %698, 1
  %701 = fadd fast float %696, %699
  %702 = fadd fast float %697, %700
  %703 = call float @dx.op.unary.f32(i32 7, float %701)  ; Saturate(value)
  %704 = call float @dx.op.unary.f32(i32 7, float %702)  ; Saturate(value)
  %705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %9, float %703, float %704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %706 = extractvalue %dx.types.ResRet.f32 %705, 0
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 0
  %709 = fmul fast float %708, %706
  %710 = fsub fast float %701, %703
  %711 = fsub fast float %702, %704
  %712 = extractvalue %dx.types.CBufRet.f32 %693, 0
  %713 = extractvalue %dx.types.CBufRet.f32 %693, 1
  %714 = fmul fast float %712, %710
  %715 = fmul fast float %713, %711
  %716 = fmul fast float %714, %714
  %717 = fmul fast float %715, %715
  %718 = fadd fast float %716, %717
  %719 = call float @dx.op.unary.f32(i32 24, float %718)  ; Sqrt(value)
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 3
  %722 = fmul fast float %721, %719
  %723 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  %724 = extractvalue %dx.types.CBufRet.f32 %720, 2
  %725 = fsub fast float %724, %709
  %726 = fmul fast float %725, %723
  %727 = extractvalue %dx.types.CBufRet.f32 %707, 1
  %728 = fsub fast float %686, %709
  %729 = fsub fast float %728, %727
  %730 = fsub fast float %729, %726
  %731 = extractvalue %dx.types.CBufRet.i32 %688, 0
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %751, label %733

; <label>:733                                     ; preds = %692
  br label %734

; <label>:734                                     ; preds = %746, %733
  %735 = phi i32 [ %747, %746 ], [ 0, %733 ]
  %736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.f32 %736, 1
  %738 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %739 = extractvalue %dx.types.CBufRet.i32 %738, 1
  %740 = and i32 %739, 8
  %741 = icmp eq i32 %740, 0
  %742 = fcmp fast ogt float %737, %730
  %743 = or i1 %742, %741
  br i1 %743, label %744, label %745, !dx.controlflow.hints !35

; <label>:744                                     ; preds = %734
  br label %746

; <label>:745                                     ; preds = %734
  br label %746

; <label>:746                                     ; preds = %745, %744
  %747 = add i32 %735, 1
  %748 = extractvalue %dx.types.CBufRet.i32 %738, 0
  %749 = icmp ult i32 %747, %748
  br i1 %749, label %734, label %750

; <label>:750                                     ; preds = %746
  br label %751

; <label>:751                                     ; preds = %750, %692
  br label %752

; <label>:752                                     ; preds = %752, %751
  %753 = phi i32 [ %754, %752 ], [ 0, %751 ]
  %754 = add nuw nsw i32 %753, 1
  %755 = icmp eq i32 %754, 4
  br i1 %755, label %756, label %752

; <label>:756                                     ; preds = %752
  br label %757

; <label>:757                                     ; preds = %756, %687, %671
  %758 = fsub fast float 1.000000e+00, %674
  %759 = fdiv fast float %665, %582
  %760 = fadd fast float %582, %368
  %761 = fmul fast float %368, %368
  %762 = fmul fast float %760, %760
  %763 = fsub fast float %761, %762
  %764 = fmul fast float %763, -5.000000e-01
  %765 = fmul fast float %764, %759
  %766 = fadd fast float %765, %363
  %767 = fadd fast float %665, %370
  %768 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.i32 %768, 0
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %797, label %771, !dx.controlflow.hints !40

; <label>:771                                     ; preds = %757
  %772 = icmp ne i32 %375, 0
  %773 = zext i1 %772 to i32
  %774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %775 = extractvalue %dx.types.CBufRet.f32 %774, 2
  %776 = extractvalue %dx.types.CBufRet.f32 %774, 0
  %777 = fsub fast float %760, %776
  %778 = fmul fast float %777, %775
  %779 = call float @dx.op.unary.f32(i32 7, float %778)  ; Saturate(value)
  %780 = fadd fast float %779, -5.000000e-01
  %781 = fmul fast float %780, 2.000000e+00
  %782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.f32 %782, 2
  %784 = fcmp fast olt float %781, %783
  br i1 %784, label %785, label %797, !dx.controlflow.hints !41

; <label>:785                                     ; preds = %771
  %786 = fmul fast float %781, %781
  %787 = fmul fast float %758, %364
  %788 = fmul fast float %781, %787
  %789 = fmul fast float %786, %787
  %790 = fmul fast float %788, %786
  %791 = fmul fast float %786, %786
  %792 = fmul fast float %791, %787
  %793 = fadd fast float %788, %371
  %794 = fadd fast float %789, %372
  %795 = fadd fast float %790, %373
  %796 = fadd fast float %792, %374
  br label %797

; <label>:797                                     ; preds = %785, %771, %757
  %798 = phi float [ %371, %757 ], [ %793, %785 ], [ %371, %771 ]
  %799 = phi float [ %372, %757 ], [ %794, %785 ], [ %372, %771 ]
  %800 = phi float [ %373, %757 ], [ %795, %785 ], [ %373, %771 ]
  %801 = phi float [ %374, %757 ], [ %796, %785 ], [ %374, %771 ]
  %802 = phi i32 [ %375, %757 ], [ 1, %785 ], [ %773, %771 ]
  %803 = fmul fast float %674, %364
  br label %804

; <label>:804                                     ; preds = %797, %669
  %805 = phi float [ %670, %669 ], [ %760, %797 ]
  %806 = phi float [ %363, %669 ], [ %766, %797 ]
  %807 = phi float [ %364, %669 ], [ %803, %797 ]
  %808 = phi float [ %370, %669 ], [ %767, %797 ]
  %809 = phi float [ %371, %669 ], [ %798, %797 ]
  %810 = phi float [ %372, %669 ], [ %799, %797 ]
  %811 = phi float [ %373, %669 ], [ %800, %797 ]
  %812 = phi float [ %374, %669 ], [ %801, %797 ]
  %813 = phi i32 [ %375, %669 ], [ %802, %797 ]
  %814 = fmul fast float %582, %267
  %815 = fmul fast float %582, %268
  %816 = fmul fast float %582, %269
  %817 = fadd fast float %814, %365
  %818 = fadd fast float %815, %366
  %819 = fadd fast float %816, %367
  %820 = fcmp fast olt float %805, %341
  %821 = extractvalue %dx.types.CBufRet.f32 %666, 2
  %822 = fcmp fast olt float %821, %807
  %823 = and i1 %820, %822
  br i1 %823, label %360, label %824

; <label>:824                                     ; preds = %804
  %825 = uitofp i32 %376 to float
  br label %826

; <label>:826                                     ; preds = %824, %337
  %827 = phi float [ 0.000000e+00, %337 ], [ %806, %824 ]
  %828 = phi float [ 1.000000e+00, %337 ], [ %807, %824 ]
  %829 = phi float [ 0.000000e+00, %337 ], [ %825, %824 ]
  %830 = phi float [ 0.000000e+00, %337 ], [ %808, %824 ]
  %831 = phi float [ 0.000000e+00, %337 ], [ %809, %824 ]
  %832 = phi float [ 0.000000e+00, %337 ], [ %810, %824 ]
  %833 = phi float [ 0.000000e+00, %337 ], [ %811, %824 ]
  %834 = phi float [ 0.000000e+00, %337 ], [ %812, %824 ]
  %835 = phi i32 [ 0, %337 ], [ %813, %824 ]
  %836 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %837 = extractvalue %dx.types.CBufRet.i32 %836, 0
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %880, label %839, !dx.controlflow.hints !42

; <label>:839                                     ; preds = %826
  %840 = icmp eq i32 %835, 0
  br i1 %840, label %879, label %841, !dx.controlflow.hints !43

; <label>:841                                     ; preds = %839
  %842 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.i32 %842, 2
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %851, label %845, !dx.controlflow.hints !44

; <label>:845                                     ; preds = %841
  %846 = fsub fast float 1.000000e+00, %828
  %847 = fdiv fast float %831, %846
  %848 = fdiv fast float %832, %846
  %849 = fdiv fast float %833, %846
  %850 = fdiv fast float %834, %846
  br label %856

; <label>:851                                     ; preds = %841
  %852 = fadd fast float %831, %828
  %853 = fadd fast float %832, %828
  %854 = fadd fast float %833, %828
  %855 = fadd fast float %834, %828
  br label %856

; <label>:856                                     ; preds = %851, %845
  %857 = phi float [ %847, %845 ], [ %852, %851 ]
  %858 = phi float [ %848, %845 ], [ %853, %851 ]
  %859 = phi float [ %849, %845 ], [ %854, %851 ]
  %860 = phi float [ %850, %845 ], [ %855, %851 ]
  %861 = call float @dx.op.binary.f32(i32 35, float %857, float -1.000000e+00)  ; FMax(a,b)
  %862 = call float @dx.op.binary.f32(i32 35, float %858, float -1.000000e+00)  ; FMax(a,b)
  %863 = call float @dx.op.binary.f32(i32 35, float %859, float -1.000000e+00)  ; FMax(a,b)
  %864 = call float @dx.op.binary.f32(i32 35, float %860, float -1.000000e+00)  ; FMax(a,b)
  %865 = call float @dx.op.binary.f32(i32 36, float %861, float 1.000000e+00)  ; FMin(a,b)
  %866 = call float @dx.op.binary.f32(i32 36, float %862, float 1.000000e+00)  ; FMin(a,b)
  %867 = call float @dx.op.binary.f32(i32 36, float %863, float 1.000000e+00)  ; FMin(a,b)
  %868 = call float @dx.op.binary.f32(i32 36, float %864, float 1.000000e+00)  ; FMin(a,b)
  %869 = fmul fast float %865, 1.500000e+00
  %870 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %867, float %869)  ; FMad(a,b,c)
  %871 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %866, float 0.000000e+00)  ; FMad(a,b,c)
  %872 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %868, float %871)  ; FMad(a,b,c)
  %873 = fmul fast float %865, 0x3FEBB67AE0000000
  %874 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %867, float %873)  ; FMad(a,b,c)
  %875 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %866, float 0.000000e+00)  ; FMad(a,b,c)
  %876 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %868, float %875)  ; FMad(a,b,c)
  %877 = fadd fast float %870, 5.000000e-01
  %878 = fadd fast float %874, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 0, float %877, float %872, float %878, float %876, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %880

; <label>:879                                     ; preds = %839
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %880

; <label>:880                                     ; preds = %879, %856, %826
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 0
  %883 = extractvalue %dx.types.CBufRet.f32 %881, 1
  %884 = extractvalue %dx.types.CBufRet.f32 %881, 2
  %885 = call float @dx.op.dot3.f32(i32 55, float %267, float %268, float %269, float %882, float %883, float %884)  ; Dot3(ax,ay,az,bx,by,bz)
  %886 = fmul fast float %885, %827
  %887 = fcmp fast ogt float %830, 0.000000e+00
  %888 = fdiv fast float 1.000000e+00, %830
  %889 = fmul fast float %886, %888
  %890 = select i1 %887, float %889, float %278
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %893 = extractvalue %dx.types.CBufRet.f32 %891, 1
  %894 = extractvalue %dx.types.CBufRet.f32 %891, 2
  %895 = fmul fast float %892, %231
  %896 = fmul fast float %893, %231
  %897 = fmul fast float %894, %231
  %898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.f32 %898, 0
  %900 = extractvalue %dx.types.CBufRet.f32 %898, 1
  %901 = extractvalue %dx.types.CBufRet.f32 %898, 2
  %902 = fmul fast float %899, %232
  %903 = fmul fast float %900, %232
  %904 = fmul fast float %901, %232
  %905 = fadd fast float %902, %895
  %906 = fadd fast float %903, %896
  %907 = fadd fast float %904, %897
  %908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %909 = extractvalue %dx.types.CBufRet.f32 %908, 0
  %910 = extractvalue %dx.types.CBufRet.f32 %908, 1
  %911 = extractvalue %dx.types.CBufRet.f32 %908, 2
  %912 = fadd fast float %905, %909
  %913 = fadd fast float %906, %910
  %914 = fadd fast float %907, %911
  %915 = fmul fast float %912, %890
  %916 = fmul fast float %913, %890
  %917 = fmul fast float %914, %890
  %918 = call float @dx.op.dot3.f32(i32 55, float %915, float %916, float %917, float %915, float %916, float %917)  ; Dot3(ax,ay,az,bx,by,bz)
  %919 = call float @dx.op.unary.f32(i32 25, float %918)  ; Rsqrt(value)
  %920 = fmul fast float %919, %918
  %921 = fmul fast float %919, %915
  %922 = fmul fast float %919, %916
  %923 = fmul fast float %919, %917
  %924 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %925 = extractvalue %dx.types.CBufRet.i32 %924, 1
  %926 = and i32 %925, 1
  %927 = icmp ne i32 %926, 0
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 2
  %930 = fcmp fast ogt float %929, 0.000000e+00
  %931 = and i1 %927, %930
  br i1 %931, label %932, label %1090, !dx.controlflow.hints !45

; <label>:932                                     ; preds = %880
  %933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.f32 %933, 2
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 2
  %937 = fsub fast float %934, %936
  %938 = extractvalue %dx.types.CBufRet.i32 %924, 0
  %939 = call i32 @dx.op.binary.i32(i32 40, i32 %938, i32 3)  ; UMin(a,b)
  %940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %941 = extractvalue %dx.types.CBufRet.f32 %940, 0
  %942 = extractvalue %dx.types.CBufRet.f32 %940, 1
  %943 = extractvalue %dx.types.CBufRet.f32 %935, 0
  %944 = extractvalue %dx.types.CBufRet.f32 %935, 1
  %945 = fsub fast float %941, %943
  %946 = fsub fast float %942, %944
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 0
  %949 = fcmp fast ogt float %948, 0.000000e+00
  %950 = fsub fast float -0.000000e+00, %945
  %951 = fsub fast float -0.000000e+00, %946
  %952 = call float @dx.op.dot2.f32(i32 54, float %921, float %922, float %921, float %922)  ; Dot2(ax,ay,bx,by)
  %953 = call float @dx.op.dot2.f32(i32 54, float %921, float %922, float %950, float %951)  ; Dot2(ax,ay,bx,by)
  %954 = fmul fast float %953, 2.000000e+00
  %955 = call float @dx.op.dot2.f32(i32 54, float %950, float %951, float %950, float %951)  ; Dot2(ax,ay,bx,by)
  %956 = fmul fast float %948, %948
  %957 = fsub fast float %955, %956
  %958 = fmul fast float %954, %954
  %959 = fmul fast float %952, 4.000000e+00
  %960 = fmul fast float %959, %957
  %961 = fsub fast float %958, %960
  %962 = fcmp fast ogt float %961, 0.000000e+00
  br i1 %962, label %963, label %978, !dx.controlflow.hints !46

; <label>:963                                     ; preds = %932
  %964 = fcmp fast ogt float %954, 0.000000e+00
  %965 = call float @dx.op.unary.f32(i32 24, float %961)  ; Sqrt(value)
  %966 = fsub fast float -0.000000e+00, %965
  %967 = select i1 %964, float %965, float %966
  %968 = fadd fast float %967, %954
  %969 = fmul float %968, -5.000000e-01
  %970 = fdiv fast float %969, %952
  %971 = call float @dx.op.binary.f32(i32 35, float %970, float 0.000000e+00)  ; FMax(a,b)
  %972 = call float @dx.op.binary.f32(i32 36, float %920, float %971)  ; FMin(a,b)
  %973 = fdiv fast float %957, %969
  %974 = call float @dx.op.binary.f32(i32 35, float %973, float 0.000000e+00)  ; FMax(a,b)
  %975 = call float @dx.op.binary.f32(i32 36, float %920, float %974)  ; FMin(a,b)
  %976 = call float @dx.op.binary.f32(i32 36, float %972, float %975)  ; FMin(a,b)
  %977 = call float @dx.op.binary.f32(i32 35, float %972, float %975)  ; FMax(a,b)
  br label %978

; <label>:978                                     ; preds = %963, %932
  %979 = phi float [ %977, %963 ], [ -1.000000e+00, %932 ]
  %980 = phi float [ %976, %963 ], [ -1.000000e+00, %932 ]
  %981 = phi i1 [ true, %963 ], [ false, %932 ]
  %982 = and i1 %949, %981
  br i1 %982, label %983, label %985, !dx.controlflow.hints !47

; <label>:983                                     ; preds = %978
  %984 = fcmp fast oeq float %980, %979
  br i1 %984, label %1090, label %986, !dx.controlflow.hints !48

; <label>:985                                     ; preds = %978
  br i1 %949, label %1090, label %986, !dx.controlflow.hints !49

; <label>:986                                     ; preds = %985, %983
  %987 = phi float [ %920, %985 ], [ %979, %983 ]
  %988 = phi float [ 0.000000e+00, %985 ], [ %980, %983 ]
  %989 = fcmp fast oeq float %923, 0.000000e+00
  %990 = fdiv fast float %937, %923
  %991 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %990)  ; FMax(a,b)
  %992 = select i1 %989, float %987, float %991
  %993 = call float @dx.op.binary.f32(i32 36, float %987, float %992)  ; FMin(a,b)
  %994 = fcmp fast ogt float %923, 0.000000e+00
  %995 = fcmp fast olt float %937, 0.000000e+00
  br i1 %994, label %996, label %997, !dx.controlflow.hints !50

; <label>:996                                     ; preds = %986
  br i1 %995, label %1090, label %1000, !dx.controlflow.hints !51

; <label>:997                                     ; preds = %986
  br i1 %995, label %998, label %1000, !dx.controlflow.hints !52

; <label>:998                                     ; preds = %997
  %999 = call float @dx.op.binary.f32(i32 35, float %988, float %993)  ; FMax(a,b)
  br label %1000

; <label>:1000                                    ; preds = %998, %997, %996
  %1001 = phi float [ %999, %998 ], [ %988, %997 ], [ %988, %996 ]
  %1002 = getelementptr inbounds [3 x float], [3 x float]* %15, i32 0, i32 0
  store float -1.000000e+00, float* %1002, align 4, !tbaa !53, !noalias !57
  %1003 = getelementptr inbounds [3 x float], [3 x float]* %15, i32 0, i32 1
  store float -1.000000e+00, float* %1003, align 4, !tbaa !53, !noalias !57
  %1004 = getelementptr inbounds [3 x float], [3 x float]* %15, i32 0, i32 2
  store float -1.000000e+00, float* %1004, align 4, !tbaa !53, !noalias !57
  %1005 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 0
  store float -1.000000e+00, float* %1005, align 4, !tbaa !53, !noalias !57
  %1006 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 1
  store float -1.000000e+00, float* %1006, align 4, !tbaa !53, !noalias !57
  %1007 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 2
  store float -1.000000e+00, float* %1007, align 4, !tbaa !53, !noalias !57
  %1008 = icmp sgt i32 %939, 0
  br i1 %1008, label %1009, label %1067

; <label>:1009                                    ; preds = %1000
  br label %1010

; <label>:1010                                    ; preds = %1057, %1009
  %1011 = phi i32 [ %1058, %1057 ], [ 0, %1009 ]
  %1012 = add nuw i32 %1011, 171
  %1013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 %1012)  ; CBufferLoadLegacy(handle,regIndex)
  %1014 = extractvalue %dx.types.CBufRet.f32 %1013, 0
  %1015 = extractvalue %dx.types.CBufRet.f32 %1013, 1
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 0
  %1018 = extractvalue %dx.types.CBufRet.f32 %1016, 1
  %1019 = fsub fast float %1014, %1017
  %1020 = fsub fast float %1015, %1018
  %1021 = extractvalue %dx.types.CBufRet.f32 %1013, 2
  %1022 = fsub fast float -0.000000e+00, %1019
  %1023 = fsub fast float -0.000000e+00, %1020
  %1024 = call float @dx.op.dot2.f32(i32 54, float %921, float %922, float %1022, float %1023)  ; Dot2(ax,ay,bx,by)
  %1025 = fmul fast float %1024, 2.000000e+00
  %1026 = call float @dx.op.dot2.f32(i32 54, float %1022, float %1023, float %1022, float %1023)  ; Dot2(ax,ay,bx,by)
  %1027 = fmul fast float %1021, %1021
  %1028 = fsub fast float %1026, %1027
  %1029 = fmul fast float %1025, %1025
  %1030 = fmul fast float %959, %1028
  %1031 = fsub fast float %1029, %1030
  %1032 = fcmp fast ogt float %1031, 0.000000e+00
  br i1 %1032, label %1033, label %1048, !dx.controlflow.hints !46

; <label>:1033                                    ; preds = %1010
  %1034 = fcmp fast ogt float %1025, 0.000000e+00
  %1035 = call float @dx.op.unary.f32(i32 24, float %1031)  ; Sqrt(value)
  %1036 = fsub fast float -0.000000e+00, %1035
  %1037 = select i1 %1034, float %1035, float %1036
  %1038 = fadd fast float %1037, %1025
  %1039 = fmul float %1038, -5.000000e-01
  %1040 = fdiv fast float %1039, %952
  %1041 = call float @dx.op.binary.f32(i32 35, float %1040, float 0.000000e+00)  ; FMax(a,b)
  %1042 = call float @dx.op.binary.f32(i32 36, float %987, float %1041)  ; FMin(a,b)
  %1043 = fdiv fast float %1028, %1039
  %1044 = call float @dx.op.binary.f32(i32 35, float %1043, float 0.000000e+00)  ; FMax(a,b)
  %1045 = call float @dx.op.binary.f32(i32 36, float %987, float %1044)  ; FMin(a,b)
  %1046 = call float @dx.op.binary.f32(i32 36, float %1042, float %1045)  ; FMin(a,b)
  %1047 = call float @dx.op.binary.f32(i32 35, float %1042, float %1045)  ; FMax(a,b)
  br label %1048

; <label>:1048                                    ; preds = %1033, %1010
  %1049 = phi float [ %1047, %1033 ], [ -1.000000e+00, %1010 ]
  %1050 = phi float [ %1046, %1033 ], [ -1.000000e+00, %1010 ]
  %1051 = phi i1 [ true, %1033 ], [ false, %1010 ]
  br i1 %1051, label %1052, label %1057, !dx.controlflow.hints !68

; <label>:1052                                    ; preds = %1048
  %1053 = call float @dx.op.binary.f32(i32 35, float %1001, float %1050)  ; FMax(a,b)
  %1054 = getelementptr inbounds [3 x float], [3 x float]* %15, i32 0, i32 %1011
  store float %1053, float* %1054, align 4, !tbaa !53, !noalias !57
  %1055 = call float @dx.op.binary.f32(i32 35, float %1001, float %1049)  ; FMax(a,b)
  %1056 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 %1011
  store float %1055, float* %1056, align 4, !tbaa !53, !noalias !57
  br label %1057

; <label>:1057                                    ; preds = %1052, %1048
  %1058 = add nuw nsw i32 %1011, 1
  %1059 = icmp eq i32 %1058, %939
  br i1 %1059, label %1060, label %1010

; <label>:1060                                    ; preds = %1057
  %1061 = load float, float* %1004, align 4, !tbaa !53, !alias.scope !69, !noalias !72
  %1062 = load float, float* %1003, align 4, !tbaa !53, !alias.scope !75, !noalias !76
  %1063 = load float, float* %1002, align 4, !tbaa !53, !alias.scope !77, !noalias !78
  %1064 = load float, float* %1007, align 4, !tbaa !53, !alias.scope !79, !noalias !82
  %1065 = load float, float* %1006, align 4, !tbaa !53, !alias.scope !85, !noalias !86
  %1066 = load float, float* %1005, align 4, !tbaa !53, !alias.scope !87, !noalias !88
  br label %1067

; <label>:1067                                    ; preds = %1060, %1000
  %1068 = phi float [ -1.000000e+00, %1000 ], [ %1066, %1060 ]
  %1069 = phi float [ -1.000000e+00, %1000 ], [ %1065, %1060 ]
  %1070 = phi float [ -1.000000e+00, %1000 ], [ %1064, %1060 ]
  %1071 = phi float [ -1.000000e+00, %1000 ], [ %1063, %1060 ]
  %1072 = phi float [ -1.000000e+00, %1000 ], [ %1062, %1060 ]
  %1073 = phi float [ -1.000000e+00, %1000 ], [ %1061, %1060 ]
  %1074 = call float @dx.op.binary.f32(i32 36, float %1072, float %1073)  ; FMin(a,b)
  %1075 = call float @dx.op.binary.f32(i32 36, float %1071, float %1074)  ; FMin(a,b)
  %1076 = call float @dx.op.binary.f32(i32 35, float %1071, float %1072)  ; FMax(a,b)
  %1077 = call float @dx.op.binary.f32(i32 36, float %1076, float %1073)  ; FMin(a,b)
  %1078 = call float @dx.op.binary.f32(i32 36, float %1071, float %1072)  ; FMin(a,b)
  %1079 = call float @dx.op.binary.f32(i32 35, float %1078, float %1077)  ; FMax(a,b)
  %1080 = call float @dx.op.binary.f32(i32 35, float %1072, float %1073)  ; FMax(a,b)
  %1081 = call float @dx.op.binary.f32(i32 35, float %1071, float %1080)  ; FMax(a,b)
  store float %1075, float* %1002, align 4, !tbaa !53, !alias.scope !77, !noalias !78
  store float %1079, float* %1003, align 4, !tbaa !53, !alias.scope !75, !noalias !76
  store float %1081, float* %1004, align 4, !tbaa !53, !alias.scope !69, !noalias !72
  %1082 = call float @dx.op.binary.f32(i32 36, float %1069, float %1070)  ; FMin(a,b)
  %1083 = call float @dx.op.binary.f32(i32 36, float %1068, float %1082)  ; FMin(a,b)
  %1084 = call float @dx.op.binary.f32(i32 35, float %1068, float %1069)  ; FMax(a,b)
  %1085 = call float @dx.op.binary.f32(i32 36, float %1084, float %1070)  ; FMin(a,b)
  %1086 = call float @dx.op.binary.f32(i32 36, float %1068, float %1069)  ; FMin(a,b)
  %1087 = call float @dx.op.binary.f32(i32 35, float %1086, float %1085)  ; FMax(a,b)
  %1088 = call float @dx.op.binary.f32(i32 35, float %1069, float %1070)  ; FMax(a,b)
  %1089 = call float @dx.op.binary.f32(i32 35, float %1068, float %1088)  ; FMax(a,b)
  store float %1083, float* %1005, align 4, !tbaa !53, !alias.scope !87, !noalias !88
  store float %1087, float* %1006, align 4, !tbaa !53, !alias.scope !85, !noalias !86
  store float %1089, float* %1007, align 4, !tbaa !53, !alias.scope !79, !noalias !82
  br label %1090

; <label>:1090                                    ; preds = %1067, %996, %985, %983, %880
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 2
  %1093 = fmul fast float %1092, %890
  %1094 = call float @dx.op.unary.f32(i32 7, float %1093)  ; Saturate(value)
  %1095 = fptoui float %829 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1096 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %14
  store i32 %1095, i32 addrspace(3)* %1096, align 4, !tbaa !89
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1097 = and i32 %14, 63
  %1098 = icmp ult i32 %1097, 32
  br i1 %1098, label %1099, label %1105, !dx.controlflow.hints !91

; <label>:1099                                    ; preds = %1090
  %1100 = add i32 %14, 32
  %1101 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1100
  %1102 = load i32, i32 addrspace(3)* %1101, align 4, !tbaa !89
  %1103 = load i32, i32 addrspace(3)* %1096, align 4, !tbaa !89
  %1104 = call i32 @dx.op.binary.i32(i32 40, i32 %1103, i32 %1102)  ; UMin(a,b)
  store i32 %1104, i32 addrspace(3)* %1096, align 4, !tbaa !89
  br label %1105

; <label>:1105                                    ; preds = %1099, %1090
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1106 = icmp ult i32 %1097, 16
  br i1 %1106, label %1107, label %1113, !dx.controlflow.hints !92

; <label>:1107                                    ; preds = %1105
  %1108 = add i32 %14, 16
  %1109 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1108
  %1110 = load i32, i32 addrspace(3)* %1109, align 4, !tbaa !89
  %1111 = load i32, i32 addrspace(3)* %1096, align 4, !tbaa !89
  %1112 = call i32 @dx.op.binary.i32(i32 40, i32 %1111, i32 %1110)  ; UMin(a,b)
  store i32 %1112, i32 addrspace(3)* %1096, align 4, !tbaa !89
  br label %1113

; <label>:1113                                    ; preds = %1107, %1105
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1114 = icmp ult i32 %1097, 8
  br i1 %1114, label %1115, label %1121, !dx.controlflow.hints !93

; <label>:1115                                    ; preds = %1113
  %1116 = add i32 %14, 8
  %1117 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1116
  %1118 = load i32, i32 addrspace(3)* %1117, align 4, !tbaa !89
  %1119 = load i32, i32 addrspace(3)* %1096, align 4, !tbaa !89
  %1120 = call i32 @dx.op.binary.i32(i32 40, i32 %1119, i32 %1118)  ; UMin(a,b)
  store i32 %1120, i32 addrspace(3)* %1096, align 4, !tbaa !89
  br label %1121

; <label>:1121                                    ; preds = %1115, %1113
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1122 = icmp ult i32 %1097, 4
  br i1 %1122, label %1123, label %1129, !dx.controlflow.hints !94

; <label>:1123                                    ; preds = %1121
  %1124 = add i32 %14, 4
  %1125 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1124
  %1126 = load i32, i32 addrspace(3)* %1125, align 4, !tbaa !89
  %1127 = load i32, i32 addrspace(3)* %1096, align 4, !tbaa !89
  %1128 = call i32 @dx.op.binary.i32(i32 40, i32 %1127, i32 %1126)  ; UMin(a,b)
  store i32 %1128, i32 addrspace(3)* %1096, align 4, !tbaa !89
  br label %1129

; <label>:1129                                    ; preds = %1123, %1121
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1130 = icmp ult i32 %1097, 2
  br i1 %1130, label %1131, label %1137, !dx.controlflow.hints !95

; <label>:1131                                    ; preds = %1129
  %1132 = add i32 %14, 2
  %1133 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1132
  %1134 = load i32, i32 addrspace(3)* %1133, align 4, !tbaa !89
  %1135 = load i32, i32 addrspace(3)* %1096, align 4, !tbaa !89
  %1136 = call i32 @dx.op.binary.i32(i32 40, i32 %1135, i32 %1134)  ; UMin(a,b)
  store i32 %1136, i32 addrspace(3)* %1096, align 4, !tbaa !89
  br label %1137

; <label>:1137                                    ; preds = %1131, %1129
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1138 = icmp eq i32 %1097, 0
  br i1 %1138, label %1139, label %1145, !dx.controlflow.hints !96

; <label>:1139                                    ; preds = %1137
  %1140 = add i32 %14, 1
  %1141 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1140
  %1142 = load i32, i32 addrspace(3)* %1141, align 4, !tbaa !89
  %1143 = load i32, i32 addrspace(3)* %1096, align 4, !tbaa !89
  %1144 = call i32 @dx.op.binary.i32(i32 40, i32 %1143, i32 %1142)  ; UMin(a,b)
  store i32 %1144, i32 addrspace(3)* %1096, align 4, !tbaa !89
  br label %1145

; <label>:1145                                    ; preds = %1139, %1137
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1146 = and i32 %14, -64
  %1147 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1146
  %1148 = load i32, i32 addrspace(3)* %1147, align 4, !tbaa !89
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1095, i32 addrspace(3)* %1096, align 4, !tbaa !89
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1098, label %1149, label %1155, !dx.controlflow.hints !97

; <label>:1149                                    ; preds = %1145
  %1150 = add i32 %14, 32
  %1151 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1150
  %1152 = load i32, i32 addrspace(3)* %1151, align 4, !tbaa !89
  %1153 = load i32, i32 addrspace(3)* %1096, align 4, !tbaa !89
  %1154 = call i32 @dx.op.binary.i32(i32 39, i32 %1153, i32 %1152)  ; UMax(a,b)
  store i32 %1154, i32 addrspace(3)* %1096, align 4, !tbaa !89
  br label %1155

; <label>:1155                                    ; preds = %1149, %1145
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1106, label %1156, label %1162, !dx.controlflow.hints !98

; <label>:1156                                    ; preds = %1155
  %1157 = add i32 %14, 16
  %1158 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1157
  %1159 = load i32, i32 addrspace(3)* %1158, align 4, !tbaa !89
  %1160 = load i32, i32 addrspace(3)* %1096, align 4, !tbaa !89
  %1161 = call i32 @dx.op.binary.i32(i32 39, i32 %1160, i32 %1159)  ; UMax(a,b)
  store i32 %1161, i32 addrspace(3)* %1096, align 4, !tbaa !89
  br label %1162

; <label>:1162                                    ; preds = %1156, %1155
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1114, label %1163, label %1169, !dx.controlflow.hints !99

; <label>:1163                                    ; preds = %1162
  %1164 = add i32 %14, 8
  %1165 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1164
  %1166 = load i32, i32 addrspace(3)* %1165, align 4, !tbaa !89
  %1167 = load i32, i32 addrspace(3)* %1096, align 4, !tbaa !89
  %1168 = call i32 @dx.op.binary.i32(i32 39, i32 %1167, i32 %1166)  ; UMax(a,b)
  store i32 %1168, i32 addrspace(3)* %1096, align 4, !tbaa !89
  br label %1169

; <label>:1169                                    ; preds = %1163, %1162
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1122, label %1170, label %1176, !dx.controlflow.hints !100

; <label>:1170                                    ; preds = %1169
  %1171 = add i32 %14, 4
  %1172 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1171
  %1173 = load i32, i32 addrspace(3)* %1172, align 4, !tbaa !89
  %1174 = load i32, i32 addrspace(3)* %1096, align 4, !tbaa !89
  %1175 = call i32 @dx.op.binary.i32(i32 39, i32 %1174, i32 %1173)  ; UMax(a,b)
  store i32 %1175, i32 addrspace(3)* %1096, align 4, !tbaa !89
  br label %1176

; <label>:1176                                    ; preds = %1170, %1169
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1130, label %1177, label %1183, !dx.controlflow.hints !101

; <label>:1177                                    ; preds = %1176
  %1178 = add i32 %14, 2
  %1179 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1178
  %1180 = load i32, i32 addrspace(3)* %1179, align 4, !tbaa !89
  %1181 = load i32, i32 addrspace(3)* %1096, align 4, !tbaa !89
  %1182 = call i32 @dx.op.binary.i32(i32 39, i32 %1181, i32 %1180)  ; UMax(a,b)
  store i32 %1182, i32 addrspace(3)* %1096, align 4, !tbaa !89
  br label %1183

; <label>:1183                                    ; preds = %1177, %1176
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1138, label %1184, label %1190, !dx.controlflow.hints !102

; <label>:1184                                    ; preds = %1183
  %1185 = add i32 %14, 1
  %1186 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1185
  %1187 = load i32, i32 addrspace(3)* %1186, align 4, !tbaa !89
  %1188 = load i32, i32 addrspace(3)* %1096, align 4, !tbaa !89
  %1189 = call i32 @dx.op.binary.i32(i32 39, i32 %1188, i32 %1187)  ; UMax(a,b)
  store i32 %1189, i32 addrspace(3)* %1096, align 4, !tbaa !89
  br label %1190

; <label>:1190                                    ; preds = %1184, %1183
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1191 = load i32, i32 addrspace(3)* %1147, align 4, !tbaa !89
  %1192 = uitofp i32 %1191 to float
  %1193 = uitofp i32 %1148 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %12, i32 %13, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1194, 0
  %1196 = fmul fast float %1195, %829
  %1197 = fmul fast float %1195, %1192
  %1198 = fmul fast float %1195, %1193
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %12, i32 %13, i32 undef, float %1196, float %1197, float %1198, float %1196, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %12, i32 %13, i32 undef, float %1094, float %1094, float %1094, float %1094, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!22 = !{void ()* @cs_fog_raymarching_air_brfog, !"cs_fog_raymarching_air_brfog", null, !4, !23}
!23 = !{i32 0, i64 272, i32 4, !24}
!24 = !{i32 8, i32 8, i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
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
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 1}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = !{!54, !54, i64 0}
!54 = !{!"float", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!58, !60, !62, !63, !65, !66, !67}
!58 = distinct !{!58, !59, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!59 = distinct !{!59, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!60 = distinct !{!60, !61, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!61 = distinct !{!61, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!62 = distinct !{!62, !61, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!63 = distinct !{!63, !64, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!64 = distinct !{!64, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!65 = distinct !{!65, !64, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!66 = distinct !{!66, !64, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!67 = distinct !{!67, !64, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = !{!70}
!70 = distinct !{!70, !71, !"\01?sort@@YAXAIAM00@Z: %c"}
!71 = distinct !{!71, !"\01?sort@@YAXAIAM00@Z"}
!72 = !{!73, !74, !58, !60, !62, !63, !65, !66, !67}
!73 = distinct !{!73, !71, !"\01?sort@@YAXAIAM00@Z: %a"}
!74 = distinct !{!74, !71, !"\01?sort@@YAXAIAM00@Z: %b"}
!75 = !{!74}
!76 = !{!73, !70, !58, !60, !62, !63, !65, !66, !67}
!77 = !{!73}
!78 = !{!74, !70, !58, !60, !62, !63, !65, !66, !67}
!79 = !{!80}
!80 = distinct !{!80, !81, !"\01?sort@@YAXAIAM00@Z: %c"}
!81 = distinct !{!81, !"\01?sort@@YAXAIAM00@Z"}
!82 = !{!83, !84, !58, !60, !62, !63, !65, !66, !67}
!83 = distinct !{!83, !81, !"\01?sort@@YAXAIAM00@Z: %a"}
!84 = distinct !{!84, !81, !"\01?sort@@YAXAIAM00@Z: %b"}
!85 = !{!84}
!86 = !{!83, !80, !58, !60, !62, !63, !65, !66, !67}
!87 = !{!83}
!88 = !{!84, !80, !58, !60, !62, !63, !65, !66, !67}
!89 = !{!90, !90, i64 0}
!90 = !{!"int", !55, i64 0}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
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

