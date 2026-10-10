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
; shader hash: 50519ec367f0947832a4fc8fa5eca5e3
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
;                                   texture     f32          2d      T1            t27     1
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

define void @cs_fog_raymarching_air_heightmap_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %15 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %16 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = add i32 %15, %14
  %20 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.i32 %20, 1
  %22 = add i32 %19, %21
  %23 = lshr i32 %22, 1
  %24 = and i32 %23, 1
  %25 = and i32 %22, 1
  %26 = xor i32 %24, %25
  %27 = shl i32 %14, 1
  %28 = shl i32 %15, 1
  %29 = or i32 %26, %27
  %30 = or i32 %24, %28
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = extractvalue %dx.types.ResRet.i32 %33, 1
  %36 = extractvalue %dx.types.ResRet.i32 %33, 2
  %37 = extractvalue %dx.types.ResRet.i32 %33, 3
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = extractvalue %dx.types.ResRet.i32 %38, 1
  %41 = extractvalue %dx.types.ResRet.i32 %38, 2
  %42 = extractvalue %dx.types.ResRet.i32 %38, 3
  %43 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.i32 %43, 0
  %45 = extractvalue %dx.types.ResRet.i32 %43, 1
  %46 = extractvalue %dx.types.ResRet.i32 %43, 2
  %47 = extractvalue %dx.types.ResRet.i32 %43, 3
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 2
  %50 = fmul fast float %49, %49
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %54 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %55 = fmul fast float %54, 0x3FF17B1420000000
  %56 = icmp eq i32 %16, 0
  br i1 %56, label %57, label %198, !dx.controlflow.hints !27

; <label>:57                                      ; preds = %0
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 3
  %62 = extractvalue %dx.types.ResRet.i32 %31, 1
  %63 = and i32 %62, 65535
  %64 = call float @dx.op.legacyF16ToF32(i32 131, i32 %63)  ; LegacyF16ToF32(value)
  %65 = lshr i32 %32, 16
  %66 = call float @dx.op.legacyF16ToF32(i32 131, i32 %65)  ; LegacyF16ToF32(value)
  %67 = and i32 %32, 65535
  %68 = call float @dx.op.legacyF16ToF32(i32 131, i32 %67)  ; LegacyF16ToF32(value)
  %69 = lshr i32 %37, 16
  %70 = call float @dx.op.legacyF16ToF32(i32 131, i32 %69)  ; LegacyF16ToF32(value)
  %71 = and i32 %37, 65535
  %72 = call float @dx.op.legacyF16ToF32(i32 131, i32 %71)  ; LegacyF16ToF32(value)
  %73 = lshr i32 %36, 16
  %74 = call float @dx.op.legacyF16ToF32(i32 131, i32 %73)  ; LegacyF16ToF32(value)
  %75 = and i32 %36, 65535
  %76 = call float @dx.op.legacyF16ToF32(i32 131, i32 %75)  ; LegacyF16ToF32(value)
  %77 = lshr i32 %35, 16
  %78 = call float @dx.op.legacyF16ToF32(i32 131, i32 %77)  ; LegacyF16ToF32(value)
  %79 = lshr i32 %34, 16
  %80 = call float @dx.op.legacyF16ToF32(i32 131, i32 %79)  ; LegacyF16ToF32(value)
  %81 = and i32 %34, 65535
  %82 = call float @dx.op.legacyF16ToF32(i32 131, i32 %81)  ; LegacyF16ToF32(value)
  %83 = lshr i32 %42, 16
  %84 = call float @dx.op.legacyF16ToF32(i32 131, i32 %83)  ; LegacyF16ToF32(value)
  %85 = and i32 %42, 65535
  %86 = call float @dx.op.legacyF16ToF32(i32 131, i32 %85)  ; LegacyF16ToF32(value)
  %87 = lshr i32 %41, 16
  %88 = call float @dx.op.legacyF16ToF32(i32 131, i32 %87)  ; LegacyF16ToF32(value)
  %89 = and i32 %41, 65535
  %90 = call float @dx.op.legacyF16ToF32(i32 131, i32 %89)  ; LegacyF16ToF32(value)
  %91 = lshr i32 %40, 16
  %92 = call float @dx.op.legacyF16ToF32(i32 131, i32 %91)  ; LegacyF16ToF32(value)
  %93 = and i32 %40, 65535
  %94 = call float @dx.op.legacyF16ToF32(i32 131, i32 %93)  ; LegacyF16ToF32(value)
  %95 = and i32 %39, 65535
  %96 = call float @dx.op.legacyF16ToF32(i32 131, i32 %95)  ; LegacyF16ToF32(value)
  %97 = lshr i32 %47, 16
  %98 = call float @dx.op.legacyF16ToF32(i32 131, i32 %97)  ; LegacyF16ToF32(value)
  %99 = and i32 %47, 65535
  %100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %99)  ; LegacyF16ToF32(value)
  %101 = lshr i32 %46, 16
  %102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %101)  ; LegacyF16ToF32(value)
  %103 = and i32 %46, 65535
  %104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %103)  ; LegacyF16ToF32(value)
  %105 = lshr i32 %45, 16
  %106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %105)  ; LegacyF16ToF32(value)
  %107 = and i32 %45, 65535
  %108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %107)  ; LegacyF16ToF32(value)
  %109 = lshr i32 %44, 16
  %110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %109)  ; LegacyF16ToF32(value)
  %111 = and i32 %35, 65535
  %112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %111)  ; LegacyF16ToF32(value)
  %113 = lshr i32 %39, 16
  %114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %113)  ; LegacyF16ToF32(value)
  %115 = and i32 %44, 65535
  %116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %115)  ; LegacyF16ToF32(value)
  %117 = fmul fast float %112, 0x3FD20DD760000000
  %118 = fmul fast float %54, %49
  %119 = fmul fast float %118, %76
  %120 = fmul fast float %54, %54
  %121 = fmul fast float %120, 0x3FEE471020000000
  %122 = fadd fast float %121, 0xBFD42F6020000000
  %123 = fmul fast float %68, %122
  %124 = fmul fast float %74, %52
  %125 = fmul fast float %78, %53
  %126 = fmul fast float %52, %50
  %127 = fmul fast float %126, %55
  %128 = fmul fast float %127, %66
  %129 = fsub fast float -0.000000e+00, %128
  %130 = fmul fast float %53, %50
  %131 = fmul fast float %130, %55
  %132 = fmul fast float %131, %70
  %133 = fmul fast float %52, %52
  %134 = fmul fast float %53, %53
  %135 = fsub fast float %133, %134
  %136 = fmul fast float %135, 0x3FE17B1420000000
  %137 = fmul fast float %136, %64
  %138 = fmul fast float %53, 0x3FF17B1420000000
  %139 = fmul fast float %138, %52
  %140 = fmul fast float %139, %72
  %141 = fadd fast float %125, %124
  %142 = fmul fast float %141, %49
  %143 = fsub fast float %142, %119
  %144 = fmul fast float %143, 0x3FDF454380000000
  %145 = fadd fast float %123, %137
  %146 = fadd fast float %145, %140
  %147 = fmul fast float %146, %50
  %148 = fsub fast float %129, %132
  %149 = fadd fast float %148, %117
  %150 = fadd fast float %149, %144
  %151 = fadd fast float %150, %147
  %152 = fmul fast float %59, %61
  %153 = fmul fast float %152, %151
  %154 = fmul fast float %114, 0x3FD20DD760000000
  %155 = fmul fast float %118, %92
  %156 = fmul fast float %84, %122
  %157 = fmul fast float %90, %52
  %158 = fmul fast float %94, %53
  %159 = fmul fast float %127, %82
  %160 = fsub fast float -0.000000e+00, %159
  %161 = fmul fast float %131, %86
  %162 = fmul fast float %136, %80
  %163 = fmul fast float %139, %88
  %164 = fadd fast float %158, %157
  %165 = fmul fast float %164, %49
  %166 = fsub fast float %165, %155
  %167 = fmul fast float %166, 0x3FDF454380000000
  %168 = fadd fast float %156, %162
  %169 = fadd fast float %168, %163
  %170 = fmul fast float %169, %50
  %171 = fsub fast float %160, %161
  %172 = fadd fast float %171, %154
  %173 = fadd fast float %172, %167
  %174 = fadd fast float %173, %170
  %175 = fmul fast float %152, %174
  %176 = fmul fast float %116, 0x3FD20DD760000000
  %177 = fmul fast float %118, %108
  %178 = fmul fast float %100, %122
  %179 = fmul fast float %106, %52
  %180 = fmul fast float %110, %53
  %181 = fmul fast float %127, %98
  %182 = fsub fast float -0.000000e+00, %181
  %183 = fmul fast float %131, %102
  %184 = fmul fast float %136, %96
  %185 = fmul fast float %139, %104
  %186 = fadd fast float %180, %179
  %187 = fmul fast float %186, %49
  %188 = fsub fast float %187, %177
  %189 = fmul fast float %188, 0x3FDF454380000000
  %190 = fadd fast float %178, %184
  %191 = fadd fast float %190, %185
  %192 = fmul fast float %191, %50
  %193 = fsub fast float %182, %183
  %194 = fadd fast float %193, %176
  %195 = fadd fast float %194, %189
  %196 = fadd fast float %195, %192
  %197 = fmul fast float %152, %196
  br label %198

; <label>:198                                     ; preds = %57, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %199 = uitofp i32 %29 to float
  %200 = uitofp i32 %30 to float
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 2
  %203 = fmul fast float %202, 0x3FE3C6EF40000000
  %204 = frem fast float %199, 2.560000e+02
  %205 = frem fast float %200, 2.560000e+02
  %206 = fptoui float %204 to i32
  %207 = fptoui float %205 to i32
  %208 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %206, i32 %207, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = extractvalue %dx.types.ResRet.f32 %208, 1
  %211 = extractvalue %dx.types.ResRet.f32 %208, 2
  %212 = extractvalue %dx.types.ResRet.f32 %208, 3
  %213 = fadd fast float %209, %203
  %214 = fadd fast float %210, %203
  %215 = fadd fast float %211, %203
  %216 = fadd fast float %212, %203
  %217 = call float @dx.op.unary.f32(i32 22, float %213)  ; Frc(value)
  %218 = call float @dx.op.unary.f32(i32 22, float %214)  ; Frc(value)
  %219 = call float @dx.op.unary.f32(i32 22, float %215)  ; Frc(value)
  %220 = call float @dx.op.unary.f32(i32 22, float %216)  ; Frc(value)
  %221 = fadd fast float %219, %199
  %222 = fadd fast float %220, %200
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 2
  %225 = extractvalue %dx.types.CBufRet.f32 %223, 3
  %226 = fmul fast float %224, %221
  %227 = fmul fast float %225, %222
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 0
  %230 = extractvalue %dx.types.CBufRet.f32 %228, 1
  %231 = extractvalue %dx.types.CBufRet.f32 %228, 2
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 1
  %234 = fmul fast float %226, 2.000000e+00
  %235 = fmul fast float %227, 2.000000e+00
  %236 = fsub fast float 1.000000e+00, %234
  %237 = fsub fast float 1.000000e+00, %235
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 0
  %240 = extractvalue %dx.types.CBufRet.f32 %238, 1
  %241 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %242 = fmul fast float %239, %236
  %243 = fmul fast float %240, %236
  %244 = fmul fast float %241, %236
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 0
  %247 = extractvalue %dx.types.CBufRet.f32 %245, 1
  %248 = extractvalue %dx.types.CBufRet.f32 %245, 2
  %249 = fmul fast float %246, %237
  %250 = fmul fast float %247, %237
  %251 = fmul fast float %248, %237
  %252 = fadd fast float %249, %242
  %253 = fadd fast float %250, %243
  %254 = fadd fast float %251, %244
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 0
  %257 = extractvalue %dx.types.CBufRet.f32 %255, 1
  %258 = extractvalue %dx.types.CBufRet.f32 %255, 2
  %259 = fadd fast float %252, %256
  %260 = fadd fast float %253, %257
  %261 = fadd fast float %254, %258
  %262 = fmul fast float %259, %233
  %263 = fmul fast float %260, %233
  %264 = fmul fast float %261, %233
  %265 = fmul fast float %262, %262
  %266 = fmul fast float %263, %263
  %267 = fadd fast float %265, %266
  %268 = fmul fast float %264, %264
  %269 = fadd fast float %267, %268
  %270 = call float @dx.op.unary.f32(i32 24, float %269)  ; Sqrt(value)
  %271 = fdiv fast float 1.000000e+00, %270
  %272 = fmul fast float %262, %271
  %273 = fmul fast float %263, %271
  %274 = fmul fast float %264, %271
  %275 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %29, i32 %30, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  %277 = fcmp fast ogt float %276, -1.000000e+00
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 1
  %280 = select i1 %277, float %279, float 1.000000e+00
  %281 = fadd fast float %276, 1.000000e+00
  %282 = fmul fast float %280, %281
  %283 = call float @dx.op.unary.f32(i32 6, float %282)  ; FAbs(value)
  %284 = fdiv fast float 1.000000e+00, %233
  %285 = fmul fast float %284, %270
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 1
  %288 = fmul fast float %287, %285
  %289 = fmul fast float %285, %283
  %290 = extractvalue %dx.types.CBufRet.f32 %278, 3
  %291 = fcmp fast oge float %283, %290
  %292 = call float @dx.op.binary.f32(i32 36, float %289, float %288)  ; FMin(a,b)
  %293 = select i1 %291, float %288, float %292
  %294 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.i32 %294, 3
  %296 = icmp eq i32 %295, 0
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %301 = fsub fast float %298, %231
  %302 = fadd fast float %301, %300
  %303 = fsub fast float 0xC7EFFFFFE0000000, %231
  br i1 %296, label %315, label %304, !dx.controlflow.hints !28

; <label>:304                                     ; preds = %198
  %305 = fsub fast float -0.000000e+00, %230
  %306 = fsub fast float -0.000000e+00, %229
  %307 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %306, float %305, float %302)  ; Dot3(ax,ay,az,bx,by,bz)
  %308 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %272, float %273, float %274)  ; Dot3(ax,ay,az,bx,by,bz)
  %309 = fdiv fast float 1.000000e+00, %308
  %310 = fmul fast float %309, %307
  %311 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %306, float %305, float %303)  ; Dot3(ax,ay,az,bx,by,bz)
  %312 = fmul fast float %309, %311
  %313 = call float @dx.op.binary.f32(i32 36, float %310, float %312)  ; FMin(a,b)
  %314 = call float @dx.op.binary.f32(i32 35, float %310, float %312)  ; FMax(a,b)
  br label %348

; <label>:315                                     ; preds = %198
  %316 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %317 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %318 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %319 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %320 = fdiv fast float 1.000000e+00, %272
  %321 = fdiv fast float 1.000000e+00, %273
  %322 = fdiv fast float 1.000000e+00, %274
  %323 = fsub fast float %316, %229
  %324 = fmul fast float %320, %323
  %325 = fadd fast float %323, %318
  %326 = fmul fast float %325, %320
  %327 = call float @dx.op.binary.f32(i32 36, float %324, float %326)  ; FMin(a,b)
  %328 = call float @dx.op.binary.f32(i32 35, float %324, float %326)  ; FMax(a,b)
  %329 = fsub fast float %317, %230
  %330 = fmul fast float %321, %329
  %331 = fadd fast float %329, %319
  %332 = fmul fast float %331, %321
  %333 = call float @dx.op.binary.f32(i32 36, float %330, float %332)  ; FMin(a,b)
  %334 = call float @dx.op.binary.f32(i32 35, float %327, float %333)  ; FMax(a,b)
  %335 = call float @dx.op.binary.f32(i32 35, float %330, float %332)  ; FMax(a,b)
  %336 = call float @dx.op.binary.f32(i32 36, float %328, float %335)  ; FMin(a,b)
  %337 = fmul fast float %322, %303
  %338 = fmul fast float %322, %302
  %339 = call float @dx.op.binary.f32(i32 36, float %337, float %338)  ; FMin(a,b)
  %340 = call float @dx.op.binary.f32(i32 35, float %334, float %339)  ; FMax(a,b)
  %341 = call float @dx.op.binary.f32(i32 35, float %337, float %338)  ; FMax(a,b)
  %342 = call float @dx.op.binary.f32(i32 36, float %336, float %341)  ; FMin(a,b)
  %343 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %340)  ; FMax(a,b)
  %344 = fcmp fast ult float %342, %343
  br i1 %344, label %348, label %345, !dx.controlflow.hints !29

; <label>:345                                     ; preds = %315
  %346 = call float @dx.op.binary.f32(i32 36, float %340, float %342)  ; FMin(a,b)
  %347 = call float @dx.op.binary.f32(i32 35, float %340, float %342)  ; FMax(a,b)
  br label %348

; <label>:348                                     ; preds = %345, %315, %304
  %349 = phi float [ %313, %304 ], [ %346, %345 ], [ 0.000000e+00, %315 ]
  %350 = phi float [ %314, %304 ], [ %347, %345 ], [ 0.000000e+00, %315 ]
  %351 = fcmp fast oeq float %350, 0.000000e+00
  %352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.f32 %352, 1
  %354 = fcmp fast olt float %350, %353
  %355 = or i1 %351, %354
  br i1 %355, label %360, label %356, !dx.controlflow.hints !30

; <label>:356                                     ; preds = %348
  %357 = call float @dx.op.binary.f32(i32 35, float %353, float %349)  ; FMax(a,b)
  %358 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %357)  ; FMin(a,b)
  %359 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %350)  ; FMax(a,b)
  br label %360

; <label>:360                                     ; preds = %356, %348
  %361 = phi i32 [ 1, %356 ], [ 0, %348 ]
  %362 = phi float [ %359, %356 ], [ -1.000000e+00, %348 ]
  %363 = phi float [ %358, %356 ], [ 0x47EFFFFFE0000000, %348 ]
  %364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.f32 %364, 3
  %366 = fsub fast float -0.000000e+00, %229
  %367 = fsub fast float -0.000000e+00, %230
  %368 = fsub fast float %365, %231
  %369 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %366, float %367, float %368)  ; Dot3(ax,ay,az,bx,by,bz)
  %370 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %272, float %273, float %274)  ; Dot3(ax,ay,az,bx,by,bz)
  %371 = fdiv fast float 1.000000e+00, %370
  %372 = fmul fast float %371, %369
  %373 = fcmp fast olt float %372, 0.000000e+00
  %374 = fcmp fast ogt float %274, 0.000000e+00
  %375 = and i1 %374, %373
  br i1 %375, label %380, label %376, !dx.controlflow.hints !31

; <label>:376                                     ; preds = %360
  %377 = fcmp fast olt float %274, 0.000000e+00
  br i1 %377, label %378, label %380, !dx.controlflow.hints !32

; <label>:378                                     ; preds = %376
  %379 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %372)  ; FMax(a,b)
  br label %380

; <label>:380                                     ; preds = %378, %376, %360
  %381 = phi float [ 0.000000e+00, %360 ], [ %379, %378 ], [ 0.000000e+00, %376 ]
  %382 = phi float [ 0.000000e+00, %360 ], [ 0x47EFFFFFE0000000, %378 ], [ %372, %376 ]
  %383 = fcmp fast oeq float %382, 0.000000e+00
  br i1 %383, label %387, label %384, !dx.controlflow.hints !33

; <label>:384                                     ; preds = %380
  %385 = call float @dx.op.binary.f32(i32 36, float %363, float %381)  ; FMin(a,b)
  %386 = call float @dx.op.binary.f32(i32 35, float %362, float %382)  ; FMax(a,b)
  br label %387

; <label>:387                                     ; preds = %384, %380
  %388 = phi i32 [ 1, %384 ], [ 0, %380 ]
  %389 = phi float [ %386, %384 ], [ %362, %380 ]
  %390 = phi float [ %385, %384 ], [ %363, %380 ]
  %391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %392 = extractvalue %dx.types.CBufRet.f32 %391, 2
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.f32 %393, 3
  %395 = fsub fast float %392, %231
  %396 = fadd fast float %395, %394
  %397 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %366, float %367, float %396)  ; Dot3(ax,ay,az,bx,by,bz)
  %398 = fmul fast float %371, %397
  %399 = fcmp fast olt float %398, 0.000000e+00
  %400 = and i1 %374, %399
  br i1 %400, label %405, label %401, !dx.controlflow.hints !34

; <label>:401                                     ; preds = %387
  %402 = fcmp fast olt float %274, 0.000000e+00
  br i1 %402, label %403, label %405, !dx.controlflow.hints !35

; <label>:403                                     ; preds = %401
  %404 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %398)  ; FMax(a,b)
  br label %405

; <label>:405                                     ; preds = %403, %401, %387
  %406 = phi float [ 0.000000e+00, %387 ], [ %404, %403 ], [ 0.000000e+00, %401 ]
  %407 = phi float [ 0.000000e+00, %387 ], [ 0x47EFFFFFE0000000, %403 ], [ %398, %401 ]
  %408 = fcmp fast oeq float %407, 0.000000e+00
  br i1 %408, label %412, label %409, !dx.controlflow.hints !36

; <label>:409                                     ; preds = %405
  %410 = call float @dx.op.binary.f32(i32 36, float %390, float %406)  ; FMin(a,b)
  %411 = call float @dx.op.binary.f32(i32 35, float %389, float %407)  ; FMax(a,b)
  br label %412

; <label>:412                                     ; preds = %409, %405
  %413 = phi i32 [ 1, %409 ], [ 0, %405 ]
  %414 = phi float [ %411, %409 ], [ %389, %405 ]
  %415 = phi float [ %410, %409 ], [ %390, %405 ]
  %416 = call float @dx.op.binary.f32(i32 36, float %293, float %414)  ; FMin(a,b)
  %417 = call float @dx.op.binary.f32(i32 35, float %270, float %415)  ; FMax(a,b)
  %418 = extractvalue %dx.types.CBufRet.f32 %364, 0
  %419 = fmul fast float %218, 2.000000e+00
  %420 = fadd fast float %419, -1.000000e+00
  %421 = fmul fast float %418, %420
  %422 = fadd fast float %421, %417
  %423 = fcmp fast olt float %422, %416
  %424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.f32 %424, 2
  %426 = fcmp fast olt float %425, 1.000000e+00
  %427 = and i1 %423, %426
  br i1 %427, label %428, label %1178

; <label>:428                                     ; preds = %412
  %429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.i32 %429, 1
  %431 = add i32 %430, -1
  %432 = fmul fast float %422, %274
  %433 = fadd fast float %432, %231
  %434 = fmul fast float %422, %273
  %435 = fadd fast float %434, %230
  %436 = fmul fast float %422, %272
  %437 = fadd fast float %436, %229
  br label %438

; <label>:438                                     ; preds = %1156, %428
  %439 = phi i32 [ %822, %1156 ], [ undef, %428 ]
  %440 = phi float [ %824, %1156 ], [ undef, %428 ]
  %441 = phi float [ %1158, %1156 ], [ 0.000000e+00, %428 ]
  %442 = phi float [ %1159, %1156 ], [ 1.000000e+00, %428 ]
  %443 = phi float [ %1169, %1156 ], [ %437, %428 ]
  %444 = phi float [ %1170, %1156 ], [ %435, %428 ]
  %445 = phi float [ %1171, %1156 ], [ %433, %428 ]
  %446 = phi float [ %1157, %1156 ], [ %422, %428 ]
  %447 = phi i32 [ %457, %1156 ], [ 0, %428 ]
  %448 = phi i32 [ %632, %1156 ], [ %431, %428 ]
  %449 = phi float [ %1160, %1156 ], [ 0.000000e+00, %428 ]
  %450 = phi float [ %1161, %1156 ], [ 0.000000e+00, %428 ]
  %451 = phi float [ %1162, %1156 ], [ 0.000000e+00, %428 ]
  %452 = phi float [ %1163, %1156 ], [ 0.000000e+00, %428 ]
  %453 = phi float [ %1164, %1156 ], [ 0.000000e+00, %428 ]
  %454 = phi i32 [ %1165, %1156 ], [ 0, %428 ]
  %455 = fsub fast float -0.000000e+00, %444
  %456 = fsub fast float -0.000000e+00, %443
  %457 = add i32 %447, 1
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %460 = icmp eq i32 %361, 0
  br i1 %460, label %629, label %461, !dx.controlflow.hints !37

; <label>:461                                     ; preds = %438
  %462 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.i32 %462, 1
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 1
  %466 = fcmp fast ogt float %465, %446
  br i1 %466, label %467, label %469, !dx.controlflow.hints !38

; <label>:467                                     ; preds = %461
  %468 = fsub fast float %465, %446
  br label %619

; <label>:469                                     ; preds = %461
  %470 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.i32 %470, 3
  %472 = icmp eq i32 %471, 0
  %473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %474 = extractvalue %dx.types.CBufRet.f32 %473, 2
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 2
  %477 = fsub fast float %474, %445
  %478 = fadd fast float %477, %476
  %479 = fsub fast float 0xC7EFFFFFE0000000, %445
  br i1 %472, label %487, label %480, !dx.controlflow.hints !28

; <label>:480                                     ; preds = %469
  %481 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %456, float %455, float %478)  ; Dot3(ax,ay,az,bx,by,bz)
  %482 = fmul fast float %371, %481
  %483 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %456, float %455, float %479)  ; Dot3(ax,ay,az,bx,by,bz)
  %484 = fmul fast float %371, %483
  %485 = call float @dx.op.binary.f32(i32 36, float %482, float %484)  ; FMin(a,b)
  %486 = call float @dx.op.binary.f32(i32 35, float %482, float %484)  ; FMax(a,b)
  br label %520

; <label>:487                                     ; preds = %469
  %488 = extractvalue %dx.types.CBufRet.f32 %473, 0
  %489 = extractvalue %dx.types.CBufRet.f32 %473, 1
  %490 = extractvalue %dx.types.CBufRet.f32 %475, 0
  %491 = extractvalue %dx.types.CBufRet.f32 %475, 1
  %492 = fdiv fast float 1.000000e+00, %272
  %493 = fdiv fast float 1.000000e+00, %273
  %494 = fdiv fast float 1.000000e+00, %274
  %495 = fsub fast float %488, %443
  %496 = fmul fast float %492, %495
  %497 = fadd fast float %495, %490
  %498 = fmul fast float %497, %492
  %499 = call float @dx.op.binary.f32(i32 36, float %496, float %498)  ; FMin(a,b)
  %500 = call float @dx.op.binary.f32(i32 35, float %496, float %498)  ; FMax(a,b)
  %501 = fsub fast float %489, %444
  %502 = fmul fast float %493, %501
  %503 = fadd fast float %501, %491
  %504 = fmul fast float %503, %493
  %505 = call float @dx.op.binary.f32(i32 36, float %502, float %504)  ; FMin(a,b)
  %506 = call float @dx.op.binary.f32(i32 35, float %499, float %505)  ; FMax(a,b)
  %507 = call float @dx.op.binary.f32(i32 35, float %502, float %504)  ; FMax(a,b)
  %508 = call float @dx.op.binary.f32(i32 36, float %500, float %507)  ; FMin(a,b)
  %509 = fmul fast float %494, %479
  %510 = fmul fast float %494, %478
  %511 = call float @dx.op.binary.f32(i32 36, float %509, float %510)  ; FMin(a,b)
  %512 = call float @dx.op.binary.f32(i32 35, float %506, float %511)  ; FMax(a,b)
  %513 = call float @dx.op.binary.f32(i32 35, float %509, float %510)  ; FMax(a,b)
  %514 = call float @dx.op.binary.f32(i32 36, float %508, float %513)  ; FMin(a,b)
  %515 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %512)  ; FMax(a,b)
  %516 = fcmp fast ult float %514, %515
  br i1 %516, label %520, label %517, !dx.controlflow.hints !29

; <label>:517                                     ; preds = %487
  %518 = call float @dx.op.binary.f32(i32 36, float %512, float %514)  ; FMin(a,b)
  %519 = call float @dx.op.binary.f32(i32 35, float %512, float %514)  ; FMax(a,b)
  br label %520

; <label>:520                                     ; preds = %517, %487, %480
  %521 = phi float [ %485, %480 ], [ %518, %517 ], [ 0.000000e+00, %487 ]
  %522 = phi float [ %486, %480 ], [ %519, %517 ], [ 0.000000e+00, %487 ]
  %523 = fcmp fast ogt float %521, 0.000000e+00
  br i1 %523, label %619, label %524, !dx.controlflow.hints !39

; <label>:524                                     ; preds = %520
  %525 = fcmp fast ugt float %522, 0.000000e+00
  br i1 %525, label %526, label %619, !dx.controlflow.hints !40

; <label>:526                                     ; preds = %524
  %527 = icmp sgt i32 %448, 0
  br i1 %527, label %528, label %613

; <label>:528                                     ; preds = %526
  br label %529

; <label>:529                                     ; preds = %609, %528
  %530 = phi i32 [ %610, %609 ], [ %448, %528 ]
  %531 = sitofp i32 %530 to float
  %532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.f32 %532, 0
  %534 = extractvalue %dx.types.CBufRet.f32 %532, 1
  %535 = fsub fast float %443, %533
  %536 = fsub fast float %444, %534
  %537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %538 = extractvalue %dx.types.CBufRet.f32 %537, 0
  %539 = extractvalue %dx.types.CBufRet.f32 %537, 1
  %540 = fmul fast float %535, %538
  %541 = fmul fast float %536, %539
  %542 = fsub fast float 1.000000e+00, %541
  %543 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.i32 %543, 3
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %552, label %546, !dx.controlflow.hints !41

; <label>:546                                     ; preds = %529
  %547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %10, float %540, float %542, float undef, float undef, i32 0, i32 0, i32 undef, float %531)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = extractvalue %dx.types.ResRet.f32 %547, 1
  %550 = extractvalue %dx.types.ResRet.f32 %547, 2
  %551 = extractvalue %dx.types.ResRet.f32 %547, 3
  br label %558

; <label>:552                                     ; preds = %529
  %553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %540, float %542, float undef, float undef, i32 0, i32 0, i32 undef, float %531)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %554 = extractvalue %dx.types.ResRet.f32 %553, 0
  %555 = extractvalue %dx.types.ResRet.f32 %553, 1
  %556 = extractvalue %dx.types.ResRet.f32 %553, 2
  %557 = extractvalue %dx.types.ResRet.f32 %553, 3
  br label %558

; <label>:558                                     ; preds = %552, %546
  %559 = phi float [ %548, %546 ], [ %554, %552 ]
  %560 = phi float [ %549, %546 ], [ %555, %552 ]
  %561 = phi float [ %550, %546 ], [ %556, %552 ]
  %562 = phi float [ %551, %546 ], [ %557, %552 ]
  %563 = extractvalue %dx.types.CBufRet.f32 %537, 3
  %564 = fmul fast float %563, %559
  %565 = extractvalue %dx.types.CBufRet.f32 %532, 2
  %566 = fadd fast float %564, %565
  %567 = fmul fast float %563, %560
  %568 = fadd fast float %567, %565
  %569 = fmul fast float %563, %561
  %570 = fadd fast float %569, %565
  %571 = and i32 %530, 31
  %572 = shl i32 1, %571
  %573 = uitofp i32 %572 to float
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 3
  %576 = fdiv fast float 1.000000e+00, %575
  %577 = fmul fast float %576, %573
  %578 = fmul fast float %577, %274
  %579 = fadd fast float %578, %445
  %580 = fcmp fast oeq float %562, 0.000000e+00
  %581 = fcmp fast ogt float %445, %568
  %582 = fcmp fast ogt float %579, %568
  %583 = and i1 %581, %582
  %584 = or i1 %580, %583
  br i1 %584, label %585, label %589, !dx.controlflow.hints !42

; <label>:585                                     ; preds = %558
  %586 = add nsw i32 %530, 1
  %587 = add nsw i32 %463, -1
  %588 = call i32 @dx.op.binary.i32(i32 38, i32 %586, i32 %587)  ; IMin(a,b)
  br label %619

; <label>:589                                     ; preds = %558
  %590 = fcmp fast olt float %445, %570
  %591 = fcmp fast olt float %579, %570
  %592 = and i1 %590, %591
  br i1 %592, label %593, label %597, !dx.controlflow.hints !43

; <label>:593                                     ; preds = %589
  %594 = add nsw i32 %530, 1
  %595 = add nsw i32 %463, -1
  %596 = call i32 @dx.op.binary.i32(i32 38, i32 %594, i32 %595)  ; IMin(a,b)
  br label %619

; <label>:597                                     ; preds = %589
  %598 = fcmp fast olt float %445, %566
  %599 = fcmp fast olt float %579, %566
  %600 = and i1 %598, %599
  br i1 %600, label %601, label %609, !dx.controlflow.hints !44

; <label>:601                                     ; preds = %597
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 3
  %604 = extractvalue %dx.types.CBufRet.f32 %537, 2
  %605 = fcmp fast une float %603, %604
  br i1 %605, label %606, label %613, !dx.controlflow.hints !45

; <label>:606                                     ; preds = %601
  %607 = fsub fast float %445, %570
  %608 = call float @dx.op.binary.f32(i32 36, float %577, float %607)  ; FMin(a,b)
  br label %613

; <label>:609                                     ; preds = %597
  %610 = add nsw i32 %530, -1
  %611 = icmp sgt i32 %530, 1
  br i1 %611, label %529, label %612

; <label>:612                                     ; preds = %609
  br label %613

; <label>:613                                     ; preds = %612, %606, %601, %526
  %614 = phi float [ %608, %606 ], [ %577, %601 ], [ 0.000000e+00, %526 ], [ 0.000000e+00, %612 ]
  %615 = phi i32 [ %530, %606 ], [ %530, %601 ], [ %448, %526 ], [ %610, %612 ]
  %616 = add nsw i32 %615, 1
  %617 = add nsw i32 %463, -1
  %618 = call i32 @dx.op.binary.i32(i32 38, i32 %616, i32 %617)  ; IMin(a,b)
  br label %619

; <label>:619                                     ; preds = %613, %593, %585, %524, %520, %467
  %620 = phi float [ %468, %467 ], [ %577, %585 ], [ %577, %593 ], [ %614, %613 ], [ 0x47EFFFFFE0000000, %524 ], [ %521, %520 ]
  %621 = phi i32 [ %361, %467 ], [ %361, %585 ], [ %361, %593 ], [ %361, %613 ], [ 0, %524 ], [ %361, %520 ]
  %622 = phi i32 [ %448, %467 ], [ %588, %585 ], [ %596, %593 ], [ %618, %613 ], [ %448, %524 ], [ %448, %520 ]
  %623 = icmp ne i32 %621, 0
  %624 = zext i1 %623 to i32
  %625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %626 = extractvalue %dx.types.CBufRet.f32 %625, 2
  %627 = call float @dx.op.binary.f32(i32 35, float %620, float %626)  ; FMax(a,b)
  %628 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %627)  ; FMin(a,b)
  br label %629

; <label>:629                                     ; preds = %619, %438
  %630 = phi i32 [ %624, %619 ], [ 0, %438 ]
  %631 = phi float [ %628, %619 ], [ 0x47EFFFFFE0000000, %438 ]
  %632 = phi i32 [ %622, %619 ], [ %448, %438 ]
  %633 = icmp eq i32 %388, 0
  br i1 %633, label %646, label %634, !dx.controlflow.hints !46

; <label>:634                                     ; preds = %629
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 3
  %637 = extractvalue %dx.types.CBufRet.f32 %635, 2
  %638 = fmul fast float %636, %446
  %639 = fdiv fast float %638, %416
  %640 = fadd fast float %639, 1.000000e+00
  %641 = call float @dx.op.unary.f32(i32 23, float %640)  ; Log(value)
  %642 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %641)  ; FMin(a,b)
  %643 = fmul fast float %637, %416
  %644 = fmul fast float %643, %642
  %645 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %644)  ; FMin(a,b)
  br label %646

; <label>:646                                     ; preds = %634, %629
  %647 = phi float [ %645, %634 ], [ 0x47EFFFFFE0000000, %629 ]
  %648 = icmp eq i32 %413, 0
  br i1 %648, label %821, label %649, !dx.controlflow.hints !47

; <label>:649                                     ; preds = %646
  %650 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %651 = extractvalue %dx.types.CBufRet.i32 %650, 1
  %652 = and i32 %651, 1
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %654, label %811, !dx.controlflow.hints !48

; <label>:654                                     ; preds = %649
  %655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %656 = extractvalue %dx.types.CBufRet.f32 %655, 2
  %657 = extractvalue %dx.types.CBufRet.f32 %655, 3
  %658 = fmul fast float %656, %443
  %659 = fmul fast float %657, %444
  %660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %661 = extractvalue %dx.types.CBufRet.f32 %660, 0
  %662 = extractvalue %dx.types.CBufRet.f32 %660, 1
  %663 = fadd fast float %658, %661
  %664 = fadd fast float %659, %662
  %665 = call float @dx.op.unary.f32(i32 7, float %663)  ; Saturate(value)
  %666 = call float @dx.op.unary.f32(i32 7, float %664)  ; Saturate(value)
  %667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %11, float %665, float %666, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %668 = extractvalue %dx.types.ResRet.f32 %667, 0
  %669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.f32 %669, 0
  %671 = fmul fast float %670, %668
  %672 = fsub fast float %663, %665
  %673 = fsub fast float %664, %666
  %674 = extractvalue %dx.types.CBufRet.f32 %655, 0
  %675 = extractvalue %dx.types.CBufRet.f32 %655, 1
  %676 = fmul fast float %674, %672
  %677 = fmul fast float %675, %673
  %678 = fmul fast float %676, %676
  %679 = fmul fast float %677, %677
  %680 = fadd fast float %678, %679
  %681 = call float @dx.op.unary.f32(i32 24, float %680)  ; Sqrt(value)
  %682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.f32 %682, 3
  %684 = fmul fast float %683, %681
  %685 = call float @dx.op.unary.f32(i32 7, float %684)  ; Saturate(value)
  %686 = extractvalue %dx.types.CBufRet.f32 %682, 2
  %687 = fsub fast float %686, %671
  %688 = fmul fast float %687, %685
  %689 = extractvalue %dx.types.CBufRet.f32 %669, 1
  %690 = fsub fast float %445, %671
  %691 = fsub fast float %690, %689
  %692 = fsub fast float %691, %688
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 2
  %695 = fsub fast float %692, %694
  %696 = fcmp fast olt float %695, 0.000000e+00
  %697 = call float @dx.op.unary.f32(i32 6, float %695)  ; FAbs(value)
  %698 = extractvalue %dx.types.CBufRet.i32 %650, 0
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %753, label %700

; <label>:700                                     ; preds = %654
  br label %701

; <label>:701                                     ; preds = %740, %700
  %702 = phi i32 [ %746, %740 ], [ 1, %700 ]
  %703 = phi float [ %748, %740 ], [ 0x47EFFFFFE0000000, %700 ]
  %704 = phi i32 [ %749, %740 ], [ 0, %700 ]
  %705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %706 = extractvalue %dx.types.CBufRet.f32 %705, 1
  %707 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.i32 %707, 1
  %709 = and i32 %708, 8
  %710 = icmp eq i32 %709, 0
  %711 = fcmp fast ogt float %706, %692
  %712 = or i1 %711, %710
  %713 = add i32 %704, 171
  %714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %713)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.f32 %714, 0
  %716 = extractvalue %dx.types.CBufRet.f32 %714, 1
  %717 = extractvalue %dx.types.CBufRet.f32 %714, 2
  br i1 %712, label %718, label %724, !dx.controlflow.hints !49

; <label>:718                                     ; preds = %701
  %719 = fsub fast float %715, %443
  %720 = fsub fast float %716, %444
  %721 = fmul fast float %719, %719
  %722 = fmul fast float %720, %720
  %723 = fadd fast float %721, %722
  br label %740

; <label>:724                                     ; preds = %701
  %725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %726 = extractvalue %dx.types.CBufRet.f32 %725, 2
  %727 = extractvalue %dx.types.CBufRet.f32 %705, 2
  %728 = fmul fast float %727, %726
  %729 = fsub fast float %728, %706
  %730 = fdiv fast float %717, %729
  %731 = fsub fast float %443, %715
  %732 = fsub fast float %444, %716
  %733 = fsub fast float %692, %706
  %734 = fmul fast float %730, %733
  %735 = fmul fast float %731, %731
  %736 = fmul fast float %732, %732
  %737 = fadd fast float %735, %736
  %738 = fmul fast float %734, %734
  %739 = fadd fast float %737, %738
  br label %740

; <label>:740                                     ; preds = %724, %718
  %741 = phi float [ %723, %718 ], [ %739, %724 ]
  %742 = call float @dx.op.unary.f32(i32 24, float %741)  ; Sqrt(value)
  %743 = fsub float %717, %742
  %744 = fcmp fast olt float %743, 0.000000e+00
  %745 = zext i1 %744 to i32
  %746 = and i32 %745, %702
  %747 = call float @dx.op.unary.f32(i32 6, float %743)  ; FAbs(value)
  %748 = call float @dx.op.binary.f32(i32 36, float %703, float %747)  ; FMin(a,b)
  %749 = add i32 %704, 1
  %750 = extractvalue %dx.types.CBufRet.i32 %707, 0
  %751 = icmp ult i32 %749, %750
  br i1 %751, label %701, label %752

; <label>:752                                     ; preds = %740
  br label %753

; <label>:753                                     ; preds = %752, %654
  %754 = phi i32 [ 1, %654 ], [ %746, %752 ]
  %755 = phi float [ 0x47EFFFFFE0000000, %654 ], [ %748, %752 ]
  br label %756

; <label>:756                                     ; preds = %756, %753
  %757 = phi i32 [ %754, %753 ], [ %796, %756 ]
  %758 = phi float [ 0x47EFFFFFE0000000, %753 ], [ %798, %756 ]
  %759 = phi i32 [ 0, %753 ], [ %799, %756 ]
  %760 = add nuw nsw i32 %759, 191
  %761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %760)  ; CBufferLoadLegacy(handle,regIndex)
  %762 = extractvalue %dx.types.CBufRet.f32 %761, 0
  %763 = extractvalue %dx.types.CBufRet.f32 %761, 1
  %764 = extractvalue %dx.types.CBufRet.f32 %761, 2
  %765 = add nuw nsw i32 %759, 195
  %766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %765)  ; CBufferLoadLegacy(handle,regIndex)
  %767 = extractvalue %dx.types.CBufRet.f32 %766, 0
  %768 = extractvalue %dx.types.CBufRet.f32 %766, 1
  %769 = extractvalue %dx.types.CBufRet.f32 %766, 2
  %770 = fsub fast float %443, %762
  %771 = fsub fast float %444, %763
  %772 = fsub fast float %692, %764
  %773 = call float @dx.op.unary.f32(i32 6, float %770)  ; FAbs(value)
  %774 = call float @dx.op.unary.f32(i32 6, float %771)  ; FAbs(value)
  %775 = call float @dx.op.unary.f32(i32 6, float %772)  ; FAbs(value)
  %776 = fsub fast float %773, %767
  %777 = fsub fast float %774, %768
  %778 = fsub fast float %775, %769
  %779 = call float @dx.op.binary.f32(i32 35, float %776, float 0.000000e+00)  ; FMax(a,b)
  %780 = call float @dx.op.binary.f32(i32 35, float %777, float 0.000000e+00)  ; FMax(a,b)
  %781 = call float @dx.op.binary.f32(i32 35, float %778, float 0.000000e+00)  ; FMax(a,b)
  %782 = fmul fast float %779, %779
  %783 = fmul fast float %780, %780
  %784 = fadd fast float %783, %782
  %785 = fmul fast float %781, %781
  %786 = fadd fast float %784, %785
  %787 = call float @dx.op.unary.f32(i32 24, float %786)  ; Sqrt(value)
  %788 = call float @dx.op.binary.f32(i32 35, float %777, float %778)  ; FMax(a,b)
  %789 = call float @dx.op.binary.f32(i32 35, float %776, float %788)  ; FMax(a,b)
  %790 = call float @dx.op.binary.f32(i32 36, float %789, float 0.000000e+00)  ; FMin(a,b)
  %791 = fadd fast float %790, %787
  %792 = fsub fast float -0.000000e+00, %791
  %793 = fcmp ogt float %791, -0.000000e+00
  %794 = icmp ne i32 %757, 0
  %795 = and i1 %794, %793
  %796 = zext i1 %795 to i32
  %797 = call float @dx.op.unary.f32(i32 6, float %792)  ; FAbs(value)
  %798 = call float @dx.op.binary.f32(i32 36, float %758, float %797)  ; FMin(a,b)
  %799 = add nuw nsw i32 %759, 1
  %800 = icmp eq i32 %799, 4
  br i1 %800, label %801, label %756

; <label>:801                                     ; preds = %756
  %802 = call float @dx.op.binary.f32(i32 36, float %697, float %798)  ; FMin(a,b)
  %803 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.i32 %803, 1
  %805 = and i32 %804, 2
  %806 = icmp ne i32 %805, 0
  %807 = xor i1 %795, %806
  %808 = call float @dx.op.binary.f32(i32 36, float %802, float %755)  ; FMin(a,b)
  %809 = and i1 %807, %696
  %810 = zext i1 %809 to i32
  br label %811

; <label>:811                                     ; preds = %801, %649
  %812 = phi i32 [ %439, %649 ], [ %810, %801 ]
  %813 = phi float [ 0.000000e+00, %649 ], [ %808, %801 ]
  %814 = phi float [ %445, %649 ], [ %692, %801 ]
  %815 = icmp ne i32 %812, 0
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 3
  %818 = call float @dx.op.binary.f32(i32 35, float %813, float %817)  ; FMax(a,b)
  %819 = call float @dx.op.binary.f32(i32 36, float %647, float %818)  ; FMin(a,b)
  %820 = zext i1 %815 to i32
  br label %821

; <label>:821                                     ; preds = %811, %646
  %822 = phi i32 [ %812, %811 ], [ %439, %646 ]
  %823 = phi i32 [ %820, %811 ], [ 0, %646 ]
  %824 = phi float [ %814, %811 ], [ %440, %646 ]
  %825 = phi float [ %819, %811 ], [ %647, %646 ]
  %826 = extractvalue %dx.types.CBufRet.f32 %458, 2
  %827 = fmul fast float %826, %446
  %828 = call float @dx.op.unary.f32(i32 23, float %827)  ; Log(value)
  %829 = fmul fast float %828, 0x3FE62E4300000000
  %830 = call float @dx.op.binary.f32(i32 35, float %829, float 1.000000e+00)  ; FMax(a,b)
  %831 = fmul fast float %830, %825
  %832 = call float @dx.op.binary.f32(i32 36, float %831, float %631)  ; FMin(a,b)
  %833 = call float @dx.op.binary.f32(i32 35, float %832, float %459)  ; FMax(a,b)
  %834 = fsub fast float %416, %446
  %835 = fadd fast float %834, 0x3F1A36E2E0000000
  %836 = call float @dx.op.binary.f32(i32 36, float %835, float %833)  ; FMin(a,b)
  %837 = icmp eq i32 %630, 0
  br i1 %837, label %934, label %838, !dx.controlflow.hints !50

; <label>:838                                     ; preds = %821
  %839 = fcmp fast olt float %835, %833
  %840 = fmul fast float %274, %217
  %841 = fmul fast float %840, %836
  %842 = fadd fast float %841, %445
  %843 = fmul fast float %274, %218
  %844 = fmul fast float %843, %836
  %845 = fadd fast float %844, %445
  %846 = fmul fast float %274, %219
  %847 = fmul fast float %846, %836
  %848 = fadd fast float %847, %445
  br i1 %839, label %849, label %854, !dx.controlflow.hints !51

; <label>:849                                     ; preds = %838
  %850 = fmul fast float %836, %272
  %851 = fmul fast float %836, %273
  %852 = fadd fast float %850, %443
  %853 = fadd fast float %851, %444
  br label %854

; <label>:854                                     ; preds = %849, %838
  %855 = phi float [ %852, %849 ], [ %443, %838 ]
  %856 = phi float [ %853, %849 ], [ %444, %838 ]
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.f32 %857, 0
  %859 = extractvalue %dx.types.CBufRet.f32 %857, 1
  %860 = fsub fast float %855, %858
  %861 = fsub fast float %856, %859
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 0
  %864 = extractvalue %dx.types.CBufRet.f32 %862, 1
  %865 = fmul fast float %860, %863
  %866 = fmul fast float %861, %864
  %867 = fsub fast float 1.000000e+00, %866
  %868 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.i32 %868, 3
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %877, label %871, !dx.controlflow.hints !41

; <label>:871                                     ; preds = %854
  %872 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %10, float %865, float %867, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %873 = extractvalue %dx.types.ResRet.f32 %872, 0
  %874 = extractvalue %dx.types.ResRet.f32 %872, 1
  %875 = extractvalue %dx.types.ResRet.f32 %872, 2
  %876 = extractvalue %dx.types.ResRet.f32 %872, 3
  br label %883

; <label>:877                                     ; preds = %854
  %878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %865, float %867, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %879 = extractvalue %dx.types.ResRet.f32 %878, 0
  %880 = extractvalue %dx.types.ResRet.f32 %878, 1
  %881 = extractvalue %dx.types.ResRet.f32 %878, 2
  %882 = extractvalue %dx.types.ResRet.f32 %878, 3
  br label %883

; <label>:883                                     ; preds = %877, %871
  %884 = phi float [ %873, %871 ], [ %879, %877 ]
  %885 = phi float [ %874, %871 ], [ %880, %877 ]
  %886 = phi float [ %875, %871 ], [ %881, %877 ]
  %887 = phi float [ %876, %871 ], [ %882, %877 ]
  %888 = extractvalue %dx.types.CBufRet.f32 %862, 3
  %889 = fmul fast float %888, %885
  %890 = fmul fast float %889, %884
  %891 = fsub fast float %889, %890
  %892 = fcmp fast ole float %891, 0.000000e+00
  %893 = extractvalue %dx.types.CBufRet.f32 %857, 2
  %894 = fadd fast float %890, %893
  %895 = fmul fast float %888, %886
  %896 = fadd fast float %895, %893
  %897 = fdiv fast float 1.000000e+00, %891
  %898 = select i1 %892, float 1.000000e+06, float %897
  %899 = fsub fast float %842, %894
  %900 = fmul fast float %898, %899
  %901 = call float @dx.op.unary.f32(i32 7, float %900)  ; Saturate(value)
  %902 = extractvalue %dx.types.CBufRet.f32 %862, 2
  %903 = fmul fast float %902, %901
  %904 = fsub fast float %902, %903
  %905 = fcmp fast olt float %842, %896
  %906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %907 = extractvalue %dx.types.CBufRet.f32 %906, 3
  %908 = select i1 %905, float %907, float 1.000000e+00
  %909 = fmul fast float %904, %908
  %910 = fsub fast float %845, %894
  %911 = fmul fast float %898, %910
  %912 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  %913 = fmul fast float %902, %912
  %914 = fsub fast float %902, %913
  %915 = fcmp fast olt float %845, %896
  %916 = select i1 %915, float %907, float 1.000000e+00
  %917 = fmul fast float %914, %916
  %918 = fadd fast float %917, %909
  %919 = fsub fast float %848, %894
  %920 = fmul fast float %898, %919
  %921 = call float @dx.op.unary.f32(i32 7, float %920)  ; Saturate(value)
  %922 = fmul fast float %902, %921
  %923 = fsub fast float %902, %922
  %924 = fcmp fast olt float %848, %896
  %925 = select i1 %924, float %907, float 1.000000e+00
  %926 = fmul fast float %923, %925
  %927 = fadd fast float %918, %926
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 2
  %930 = fmul fast float %836, 0x3FD5555560000000
  %931 = fmul fast float %930, %887
  %932 = fmul fast float %931, %929
  %933 = fmul fast float %932, %927
  br label %934

; <label>:934                                     ; preds = %883, %821
  %935 = phi float [ %933, %883 ], [ 0.000000e+00, %821 ]
  br i1 %633, label %982, label %936, !dx.controlflow.hints !52

; <label>:936                                     ; preds = %934
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 0
  %939 = fsub fast float %938, %445
  %940 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %456, float %455, float %939)  ; Dot3(ax,ay,az,bx,by,bz)
  %941 = fmul fast float %371, %940
  %942 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %941)  ; FMax(a,b)
  %943 = fcmp fast olt float %274, 0.000000e+00
  %944 = call float @dx.op.binary.f32(i32 36, float %836, float %942)  ; FMin(a,b)
  br i1 %943, label %946, label %945, !dx.controlflow.hints !53

; <label>:945                                     ; preds = %936
  br label %946

; <label>:946                                     ; preds = %945, %936
  %947 = phi float [ 0.000000e+00, %945 ], [ %944, %936 ]
  %948 = phi float [ %944, %945 ], [ %836, %936 ]
  %949 = phi float [ %944, %945 ], [ 0.000000e+00, %936 ]
  %950 = phi float [ %836, %945 ], [ %944, %936 ]
  %951 = fsub fast float %948, %947
  %952 = extractvalue %dx.types.CBufRet.f32 %937, 1
  %953 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %952)  ; FMin(a,b)
  %954 = fsub fast float %445, %938
  %955 = fmul fast float %953, 0x3FF7154760000000
  %956 = fmul fast float %955, %954
  %957 = call float @dx.op.unary.f32(i32 21, float %956)  ; Exp(value)
  %958 = fmul fast float %274, 0x3FF7154760000000
  %959 = fmul fast float %958, %950
  %960 = fmul fast float %959, %953
  %961 = call float @dx.op.unary.f32(i32 21, float %960)  ; Exp(value)
  %962 = fmul fast float %958, %949
  %963 = fmul fast float %962, %953
  %964 = call float @dx.op.unary.f32(i32 21, float %963)  ; Exp(value)
  %965 = fsub fast float %961, %964
  %966 = fmul fast float %965, %957
  %967 = fmul fast float %953, %274
  %968 = fdiv fast float %966, %967
  %969 = fadd fast float %951, %968
  %970 = call float @dx.op.unary.f32(i32 6, float %274)  ; FAbs(value)
  %971 = fcmp fast olt float %970, 0x3F0FFB4800000000
  %972 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %954)  ; FMax(a,b)
  %973 = fmul fast float %972, 0x3FF7154760000000
  %974 = fmul fast float %973, %952
  %975 = call float @dx.op.unary.f32(i32 21, float %974)  ; Exp(value)
  %976 = fmul fast float %975, %836
  %977 = select i1 %971, float %976, float %969
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 1
  %980 = fmul fast float %977, %979
  %981 = fadd fast float %980, %935
  br label %982

; <label>:982                                     ; preds = %946, %934
  %983 = phi float [ %981, %946 ], [ %935, %934 ]
  %984 = icmp eq i32 %823, 0
  br i1 %984, label %1016, label %985, !dx.controlflow.hints !54

; <label>:985                                     ; preds = %982
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 1
  %988 = fsub fast float %836, %987
  %989 = extractvalue %dx.types.CBufRet.f32 %986, 3
  %990 = fmul fast float %988, %989
  %991 = call float @dx.op.unary.f32(i32 7, float %990)  ; Saturate(value)
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 3
  %994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.f32 %994, 2
  %996 = fsub fast float %995, %824
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 3
  %999 = fmul fast float %996, %998
  %1000 = call float @dx.op.unary.f32(i32 7, float %999)  ; Saturate(value)
  %1001 = fmul fast float %1000, %993
  %1002 = extractvalue %dx.types.CBufRet.f32 %997, 0
  %1003 = fsub fast float %446, %1002
  %1004 = extractvalue %dx.types.CBufRet.f32 %997, 1
  %1005 = fmul fast float %1003, %1004
  %1006 = call float @dx.op.unary.f32(i32 7, float %1005)  ; Saturate(value)
  %1007 = fsub fast float 1.000000e+00, %991
  %1008 = fmul fast float %1006, %1007
  %1009 = fadd fast float %1008, %991
  %1010 = extractvalue %dx.types.CBufRet.f32 %986, 0
  %1011 = fsub fast float %1001, %1010
  %1012 = fmul fast float %1011, %1009
  %1013 = fadd fast float %1012, %1010
  %1014 = fmul fast float %1013, %836
  %1015 = fadd fast float %1014, %983
  br label %1016

; <label>:1016                                    ; preds = %985, %982
  %1017 = phi float [ %1015, %985 ], [ %983, %982 ]
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 1
  %1020 = fcmp fast ogt float %1017, %1019
  br i1 %1020, label %1023, label %1021, !dx.controlflow.hints !55

; <label>:1021                                    ; preds = %1016
  %1022 = fadd fast float %836, %446
  br label %1156

; <label>:1023                                    ; preds = %1016
  %1024 = fmul fast float %1017, 0xBFF7154760000000
  %1025 = call float @dx.op.unary.f32(i32 21, float %1024)  ; Exp(value)
  %1026 = call float @dx.op.unary.f32(i32 7, float %1025)  ; Saturate(value)
  %1027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.CBufRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.CBufRet.f32 %1027, 2
  %1031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.f32 %1031, 0
  %1033 = fmul fast float %1032, %1028
  %1034 = fmul fast float %1032, %1029
  %1035 = fmul fast float %1032, %1030
  %1036 = fadd fast float %1033, %443
  %1037 = fadd fast float %1034, %444
  %1038 = fadd fast float %1035, %445
  br i1 %648, label %1109, label %1039, !dx.controlflow.hints !47

; <label>:1039                                    ; preds = %1023
  %1040 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1041 = extractvalue %dx.types.CBufRet.i32 %1040, 1
  %1042 = and i32 %1041, 1
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1044, label %1109, !dx.controlflow.hints !48

; <label>:1044                                    ; preds = %1039
  %1045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.f32 %1045, 2
  %1047 = extractvalue %dx.types.CBufRet.f32 %1045, 3
  %1048 = fmul fast float %1046, %1036
  %1049 = fmul fast float %1047, %1037
  %1050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.CBufRet.f32 %1050, 1
  %1053 = fadd fast float %1048, %1051
  %1054 = fadd fast float %1049, %1052
  %1055 = call float @dx.op.unary.f32(i32 7, float %1053)  ; Saturate(value)
  %1056 = call float @dx.op.unary.f32(i32 7, float %1054)  ; Saturate(value)
  %1057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %11, float %1055, float %1056, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 0
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 0
  %1061 = fmul fast float %1060, %1058
  %1062 = fsub fast float %1053, %1055
  %1063 = fsub fast float %1054, %1056
  %1064 = extractvalue %dx.types.CBufRet.f32 %1045, 0
  %1065 = extractvalue %dx.types.CBufRet.f32 %1045, 1
  %1066 = fmul fast float %1064, %1062
  %1067 = fmul fast float %1065, %1063
  %1068 = fmul fast float %1066, %1066
  %1069 = fmul fast float %1067, %1067
  %1070 = fadd fast float %1068, %1069
  %1071 = call float @dx.op.unary.f32(i32 24, float %1070)  ; Sqrt(value)
  %1072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1073 = extractvalue %dx.types.CBufRet.f32 %1072, 3
  %1074 = fmul fast float %1073, %1071
  %1075 = call float @dx.op.unary.f32(i32 7, float %1074)  ; Saturate(value)
  %1076 = extractvalue %dx.types.CBufRet.f32 %1072, 2
  %1077 = fsub fast float %1076, %1061
  %1078 = fmul fast float %1077, %1075
  %1079 = extractvalue %dx.types.CBufRet.f32 %1059, 1
  %1080 = fsub fast float %1038, %1061
  %1081 = fsub fast float %1080, %1079
  %1082 = fsub fast float %1081, %1078
  %1083 = extractvalue %dx.types.CBufRet.i32 %1040, 0
  %1084 = icmp eq i32 %1083, 0
  br i1 %1084, label %1103, label %1085

; <label>:1085                                    ; preds = %1044
  br label %1086

; <label>:1086                                    ; preds = %1098, %1085
  %1087 = phi i32 [ %1099, %1098 ], [ 0, %1085 ]
  %1088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1089 = extractvalue %dx.types.CBufRet.f32 %1088, 1
  %1090 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.i32 %1090, 1
  %1092 = and i32 %1091, 8
  %1093 = icmp eq i32 %1092, 0
  %1094 = fcmp fast ogt float %1089, %1082
  %1095 = or i1 %1094, %1093
  br i1 %1095, label %1096, label %1097, !dx.controlflow.hints !49

; <label>:1096                                    ; preds = %1086
  br label %1098

; <label>:1097                                    ; preds = %1086
  br label %1098

; <label>:1098                                    ; preds = %1097, %1096
  %1099 = add i32 %1087, 1
  %1100 = extractvalue %dx.types.CBufRet.i32 %1090, 0
  %1101 = icmp ult i32 %1099, %1100
  br i1 %1101, label %1086, label %1102

; <label>:1102                                    ; preds = %1098
  br label %1103

; <label>:1103                                    ; preds = %1102, %1044
  br label %1104

; <label>:1104                                    ; preds = %1104, %1103
  %1105 = phi i32 [ %1106, %1104 ], [ 0, %1103 ]
  %1106 = add nuw nsw i32 %1105, 1
  %1107 = icmp eq i32 %1106, 4
  br i1 %1107, label %1108, label %1104

; <label>:1108                                    ; preds = %1104
  br label %1109

; <label>:1109                                    ; preds = %1108, %1039, %1023
  %1110 = fsub fast float 1.000000e+00, %1026
  %1111 = fdiv fast float %1017, %836
  %1112 = fadd fast float %836, %446
  %1113 = fmul fast float %446, %446
  %1114 = fmul fast float %1112, %1112
  %1115 = fsub fast float %1113, %1114
  %1116 = fmul fast float %1115, -5.000000e-01
  %1117 = fmul fast float %1116, %1111
  %1118 = fadd fast float %1117, %441
  %1119 = fadd fast float %1017, %449
  %1120 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1121 = extractvalue %dx.types.CBufRet.i32 %1120, 0
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1149, label %1123, !dx.controlflow.hints !56

; <label>:1123                                    ; preds = %1109
  %1124 = icmp ne i32 %454, 0
  %1125 = zext i1 %1124 to i32
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 2
  %1128 = extractvalue %dx.types.CBufRet.f32 %1126, 0
  %1129 = fsub fast float %1112, %1128
  %1130 = fmul fast float %1129, %1127
  %1131 = call float @dx.op.unary.f32(i32 7, float %1130)  ; Saturate(value)
  %1132 = fadd fast float %1131, -5.000000e-01
  %1133 = fmul fast float %1132, 2.000000e+00
  %1134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1135 = extractvalue %dx.types.CBufRet.f32 %1134, 2
  %1136 = fcmp fast olt float %1133, %1135
  br i1 %1136, label %1137, label %1149, !dx.controlflow.hints !57

; <label>:1137                                    ; preds = %1123
  %1138 = fmul fast float %1133, %1133
  %1139 = fmul fast float %1110, %442
  %1140 = fmul fast float %1133, %1139
  %1141 = fmul fast float %1138, %1139
  %1142 = fmul fast float %1140, %1138
  %1143 = fmul fast float %1138, %1138
  %1144 = fmul fast float %1143, %1139
  %1145 = fadd fast float %1140, %450
  %1146 = fadd fast float %1141, %451
  %1147 = fadd fast float %1142, %452
  %1148 = fadd fast float %1144, %453
  br label %1149

; <label>:1149                                    ; preds = %1137, %1123, %1109
  %1150 = phi float [ %450, %1109 ], [ %1145, %1137 ], [ %450, %1123 ]
  %1151 = phi float [ %451, %1109 ], [ %1146, %1137 ], [ %451, %1123 ]
  %1152 = phi float [ %452, %1109 ], [ %1147, %1137 ], [ %452, %1123 ]
  %1153 = phi float [ %453, %1109 ], [ %1148, %1137 ], [ %453, %1123 ]
  %1154 = phi i32 [ %454, %1109 ], [ 1, %1137 ], [ %1125, %1123 ]
  %1155 = fmul fast float %1026, %442
  br label %1156

; <label>:1156                                    ; preds = %1149, %1021
  %1157 = phi float [ %1022, %1021 ], [ %1112, %1149 ]
  %1158 = phi float [ %441, %1021 ], [ %1118, %1149 ]
  %1159 = phi float [ %442, %1021 ], [ %1155, %1149 ]
  %1160 = phi float [ %449, %1021 ], [ %1119, %1149 ]
  %1161 = phi float [ %450, %1021 ], [ %1150, %1149 ]
  %1162 = phi float [ %451, %1021 ], [ %1151, %1149 ]
  %1163 = phi float [ %452, %1021 ], [ %1152, %1149 ]
  %1164 = phi float [ %453, %1021 ], [ %1153, %1149 ]
  %1165 = phi i32 [ %454, %1021 ], [ %1154, %1149 ]
  %1166 = fmul fast float %836, %272
  %1167 = fmul fast float %836, %273
  %1168 = fmul fast float %836, %274
  %1169 = fadd fast float %1166, %443
  %1170 = fadd fast float %1167, %444
  %1171 = fadd fast float %1168, %445
  %1172 = fcmp fast olt float %1157, %416
  %1173 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1174 = fcmp fast olt float %1173, %1159
  %1175 = and i1 %1172, %1174
  br i1 %1175, label %438, label %1176

; <label>:1176                                    ; preds = %1156
  %1177 = uitofp i32 %457 to float
  br label %1178

; <label>:1178                                    ; preds = %1176, %412
  %1179 = phi float [ 0.000000e+00, %412 ], [ %1158, %1176 ]
  %1180 = phi float [ 1.000000e+00, %412 ], [ %1159, %1176 ]
  %1181 = phi float [ 0.000000e+00, %412 ], [ %1177, %1176 ]
  %1182 = phi float [ 0.000000e+00, %412 ], [ %1160, %1176 ]
  %1183 = phi float [ 0.000000e+00, %412 ], [ %1161, %1176 ]
  %1184 = phi float [ 0.000000e+00, %412 ], [ %1162, %1176 ]
  %1185 = phi float [ 0.000000e+00, %412 ], [ %1163, %1176 ]
  %1186 = phi float [ 0.000000e+00, %412 ], [ %1164, %1176 ]
  %1187 = phi i32 [ 0, %412 ], [ %1165, %1176 ]
  %1188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1189 = extractvalue %dx.types.CBufRet.i32 %1188, 0
  %1190 = icmp eq i32 %1189, 0
  br i1 %1190, label %1232, label %1191, !dx.controlflow.hints !58

; <label>:1191                                    ; preds = %1178
  %1192 = icmp eq i32 %1187, 0
  br i1 %1192, label %1231, label %1193, !dx.controlflow.hints !59

; <label>:1193                                    ; preds = %1191
  %1194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.i32 %1194, 2
  %1196 = icmp eq i32 %1195, 0
  br i1 %1196, label %1203, label %1197, !dx.controlflow.hints !60

; <label>:1197                                    ; preds = %1193
  %1198 = fsub fast float 1.000000e+00, %1180
  %1199 = fdiv fast float %1183, %1198
  %1200 = fdiv fast float %1184, %1198
  %1201 = fdiv fast float %1185, %1198
  %1202 = fdiv fast float %1186, %1198
  br label %1208

; <label>:1203                                    ; preds = %1193
  %1204 = fadd fast float %1183, %1180
  %1205 = fadd fast float %1184, %1180
  %1206 = fadd fast float %1185, %1180
  %1207 = fadd fast float %1186, %1180
  br label %1208

; <label>:1208                                    ; preds = %1203, %1197
  %1209 = phi float [ %1199, %1197 ], [ %1204, %1203 ]
  %1210 = phi float [ %1200, %1197 ], [ %1205, %1203 ]
  %1211 = phi float [ %1201, %1197 ], [ %1206, %1203 ]
  %1212 = phi float [ %1202, %1197 ], [ %1207, %1203 ]
  %1213 = call float @dx.op.binary.f32(i32 35, float %1209, float -1.000000e+00)  ; FMax(a,b)
  %1214 = call float @dx.op.binary.f32(i32 35, float %1210, float -1.000000e+00)  ; FMax(a,b)
  %1215 = call float @dx.op.binary.f32(i32 35, float %1211, float -1.000000e+00)  ; FMax(a,b)
  %1216 = call float @dx.op.binary.f32(i32 35, float %1212, float -1.000000e+00)  ; FMax(a,b)
  %1217 = call float @dx.op.binary.f32(i32 36, float %1213, float 1.000000e+00)  ; FMin(a,b)
  %1218 = call float @dx.op.binary.f32(i32 36, float %1214, float 1.000000e+00)  ; FMin(a,b)
  %1219 = call float @dx.op.binary.f32(i32 36, float %1215, float 1.000000e+00)  ; FMin(a,b)
  %1220 = call float @dx.op.binary.f32(i32 36, float %1216, float 1.000000e+00)  ; FMin(a,b)
  %1221 = fmul fast float %1217, 1.500000e+00
  %1222 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1219, float %1221)  ; FMad(a,b,c)
  %1223 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1218, float 0.000000e+00)  ; FMad(a,b,c)
  %1224 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1220, float %1223)  ; FMad(a,b,c)
  %1225 = fmul fast float %1217, 0x3FEBB67AE0000000
  %1226 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1219, float %1225)  ; FMad(a,b,c)
  %1227 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1218, float 0.000000e+00)  ; FMad(a,b,c)
  %1228 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1220, float %1227)  ; FMad(a,b,c)
  %1229 = fadd fast float %1222, 5.000000e-01
  %1230 = fadd fast float %1226, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %15, i32 0, float %1229, float %1224, float %1230, float %1228, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1232

; <label>:1231                                    ; preds = %1191
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %15, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1232

; <label>:1232                                    ; preds = %1231, %1208, %1178
  %1233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1234 = extractvalue %dx.types.CBufRet.f32 %1233, 0
  %1235 = extractvalue %dx.types.CBufRet.f32 %1233, 1
  %1236 = extractvalue %dx.types.CBufRet.f32 %1233, 2
  %1237 = call float @dx.op.dot3.f32(i32 55, float %272, float %273, float %274, float %1234, float %1235, float %1236)  ; Dot3(ax,ay,az,bx,by,bz)
  %1238 = fmul fast float %1237, %1179
  %1239 = fcmp fast ogt float %1182, 0.000000e+00
  %1240 = fdiv fast float 1.000000e+00, %1182
  %1241 = fmul fast float %1238, %1240
  %1242 = select i1 %1239, float %1241, float %283
  %1243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1244 = extractvalue %dx.types.CBufRet.f32 %1243, 0
  %1245 = extractvalue %dx.types.CBufRet.f32 %1243, 1
  %1246 = extractvalue %dx.types.CBufRet.f32 %1243, 2
  %1247 = fmul fast float %1244, %236
  %1248 = fmul fast float %1245, %236
  %1249 = fmul fast float %1246, %236
  %1250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1251 = extractvalue %dx.types.CBufRet.f32 %1250, 0
  %1252 = extractvalue %dx.types.CBufRet.f32 %1250, 1
  %1253 = extractvalue %dx.types.CBufRet.f32 %1250, 2
  %1254 = fmul fast float %1251, %237
  %1255 = fmul fast float %1252, %237
  %1256 = fmul fast float %1253, %237
  %1257 = fadd fast float %1254, %1247
  %1258 = fadd fast float %1255, %1248
  %1259 = fadd fast float %1256, %1249
  %1260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1261 = extractvalue %dx.types.CBufRet.f32 %1260, 0
  %1262 = extractvalue %dx.types.CBufRet.f32 %1260, 1
  %1263 = extractvalue %dx.types.CBufRet.f32 %1260, 2
  %1264 = fadd fast float %1257, %1261
  %1265 = fadd fast float %1258, %1262
  %1266 = fadd fast float %1259, %1263
  %1267 = fmul fast float %1264, %1242
  %1268 = fmul fast float %1265, %1242
  %1269 = fmul fast float %1266, %1242
  %1270 = call float @dx.op.dot3.f32(i32 55, float %1267, float %1268, float %1269, float %1267, float %1268, float %1269)  ; Dot3(ax,ay,az,bx,by,bz)
  %1271 = call float @dx.op.unary.f32(i32 25, float %1270)  ; Rsqrt(value)
  %1272 = fmul fast float %1271, %1270
  %1273 = fmul fast float %1271, %1267
  %1274 = fmul fast float %1271, %1268
  %1275 = fmul fast float %1271, %1269
  %1276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1277 = extractvalue %dx.types.CBufRet.i32 %1276, 1
  %1278 = and i32 %1277, 1
  %1279 = icmp ne i32 %1278, 0
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 2
  %1282 = fcmp fast ogt float %1281, 0.000000e+00
  %1283 = and i1 %1279, %1282
  br i1 %1283, label %1284, label %1442, !dx.controlflow.hints !61

; <label>:1284                                    ; preds = %1232
  %1285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1285, 2
  %1287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1288 = extractvalue %dx.types.CBufRet.f32 %1287, 2
  %1289 = fsub fast float %1286, %1288
  %1290 = extractvalue %dx.types.CBufRet.i32 %1276, 0
  %1291 = call i32 @dx.op.binary.i32(i32 40, i32 %1290, i32 3)  ; UMin(a,b)
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  %1294 = extractvalue %dx.types.CBufRet.f32 %1292, 1
  %1295 = extractvalue %dx.types.CBufRet.f32 %1287, 0
  %1296 = extractvalue %dx.types.CBufRet.f32 %1287, 1
  %1297 = fsub fast float %1293, %1295
  %1298 = fsub fast float %1294, %1296
  %1299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1299, 0
  %1301 = fcmp fast ogt float %1300, 0.000000e+00
  %1302 = fsub fast float -0.000000e+00, %1297
  %1303 = fsub fast float -0.000000e+00, %1298
  %1304 = call float @dx.op.dot2.f32(i32 54, float %1273, float %1274, float %1273, float %1274)  ; Dot2(ax,ay,bx,by)
  %1305 = call float @dx.op.dot2.f32(i32 54, float %1273, float %1274, float %1302, float %1303)  ; Dot2(ax,ay,bx,by)
  %1306 = fmul fast float %1305, 2.000000e+00
  %1307 = call float @dx.op.dot2.f32(i32 54, float %1302, float %1303, float %1302, float %1303)  ; Dot2(ax,ay,bx,by)
  %1308 = fmul fast float %1300, %1300
  %1309 = fsub fast float %1307, %1308
  %1310 = fmul fast float %1306, %1306
  %1311 = fmul fast float %1304, 4.000000e+00
  %1312 = fmul fast float %1311, %1309
  %1313 = fsub fast float %1310, %1312
  %1314 = fcmp fast ogt float %1313, 0.000000e+00
  br i1 %1314, label %1315, label %1330, !dx.controlflow.hints !62

; <label>:1315                                    ; preds = %1284
  %1316 = fcmp fast ogt float %1306, 0.000000e+00
  %1317 = call float @dx.op.unary.f32(i32 24, float %1313)  ; Sqrt(value)
  %1318 = fsub fast float -0.000000e+00, %1317
  %1319 = select i1 %1316, float %1317, float %1318
  %1320 = fadd fast float %1319, %1306
  %1321 = fmul float %1320, -5.000000e-01
  %1322 = fdiv fast float %1321, %1304
  %1323 = call float @dx.op.binary.f32(i32 35, float %1322, float 0.000000e+00)  ; FMax(a,b)
  %1324 = call float @dx.op.binary.f32(i32 36, float %1272, float %1323)  ; FMin(a,b)
  %1325 = fdiv fast float %1309, %1321
  %1326 = call float @dx.op.binary.f32(i32 35, float %1325, float 0.000000e+00)  ; FMax(a,b)
  %1327 = call float @dx.op.binary.f32(i32 36, float %1272, float %1326)  ; FMin(a,b)
  %1328 = call float @dx.op.binary.f32(i32 36, float %1324, float %1327)  ; FMin(a,b)
  %1329 = call float @dx.op.binary.f32(i32 35, float %1324, float %1327)  ; FMax(a,b)
  br label %1330

; <label>:1330                                    ; preds = %1315, %1284
  %1331 = phi float [ %1329, %1315 ], [ -1.000000e+00, %1284 ]
  %1332 = phi float [ %1328, %1315 ], [ -1.000000e+00, %1284 ]
  %1333 = phi i1 [ true, %1315 ], [ false, %1284 ]
  %1334 = and i1 %1301, %1333
  br i1 %1334, label %1335, label %1337, !dx.controlflow.hints !63

; <label>:1335                                    ; preds = %1330
  %1336 = fcmp fast oeq float %1332, %1331
  br i1 %1336, label %1442, label %1338, !dx.controlflow.hints !64

; <label>:1337                                    ; preds = %1330
  br i1 %1301, label %1442, label %1338, !dx.controlflow.hints !65

; <label>:1338                                    ; preds = %1337, %1335
  %1339 = phi float [ %1272, %1337 ], [ %1331, %1335 ]
  %1340 = phi float [ 0.000000e+00, %1337 ], [ %1332, %1335 ]
  %1341 = fcmp fast oeq float %1275, 0.000000e+00
  %1342 = fdiv fast float %1289, %1275
  %1343 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1342)  ; FMax(a,b)
  %1344 = select i1 %1341, float %1339, float %1343
  %1345 = call float @dx.op.binary.f32(i32 36, float %1339, float %1344)  ; FMin(a,b)
  %1346 = fcmp fast ogt float %1275, 0.000000e+00
  %1347 = fcmp fast olt float %1289, 0.000000e+00
  br i1 %1346, label %1348, label %1349, !dx.controlflow.hints !66

; <label>:1348                                    ; preds = %1338
  br i1 %1347, label %1442, label %1352, !dx.controlflow.hints !67

; <label>:1349                                    ; preds = %1338
  br i1 %1347, label %1350, label %1352, !dx.controlflow.hints !68

; <label>:1350                                    ; preds = %1349
  %1351 = call float @dx.op.binary.f32(i32 35, float %1340, float %1345)  ; FMax(a,b)
  br label %1352

; <label>:1352                                    ; preds = %1350, %1349, %1348
  %1353 = phi float [ %1351, %1350 ], [ %1340, %1349 ], [ %1340, %1348 ]
  %1354 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 0
  store float -1.000000e+00, float* %1354, align 4, !tbaa !69, !noalias !73
  %1355 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 1
  store float -1.000000e+00, float* %1355, align 4, !tbaa !69, !noalias !73
  %1356 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 2
  store float -1.000000e+00, float* %1356, align 4, !tbaa !69, !noalias !73
  %1357 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 0
  store float -1.000000e+00, float* %1357, align 4, !tbaa !69, !noalias !73
  %1358 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 1
  store float -1.000000e+00, float* %1358, align 4, !tbaa !69, !noalias !73
  %1359 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 2
  store float -1.000000e+00, float* %1359, align 4, !tbaa !69, !noalias !73
  %1360 = icmp sgt i32 %1291, 0
  br i1 %1360, label %1361, label %1419

; <label>:1361                                    ; preds = %1352
  br label %1362

; <label>:1362                                    ; preds = %1409, %1361
  %1363 = phi i32 [ %1410, %1409 ], [ 0, %1361 ]
  %1364 = add nuw i32 %1363, 171
  %1365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %1364)  ; CBufferLoadLegacy(handle,regIndex)
  %1366 = extractvalue %dx.types.CBufRet.f32 %1365, 0
  %1367 = extractvalue %dx.types.CBufRet.f32 %1365, 1
  %1368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.f32 %1368, 0
  %1370 = extractvalue %dx.types.CBufRet.f32 %1368, 1
  %1371 = fsub fast float %1366, %1369
  %1372 = fsub fast float %1367, %1370
  %1373 = extractvalue %dx.types.CBufRet.f32 %1365, 2
  %1374 = fsub fast float -0.000000e+00, %1371
  %1375 = fsub fast float -0.000000e+00, %1372
  %1376 = call float @dx.op.dot2.f32(i32 54, float %1273, float %1274, float %1374, float %1375)  ; Dot2(ax,ay,bx,by)
  %1377 = fmul fast float %1376, 2.000000e+00
  %1378 = call float @dx.op.dot2.f32(i32 54, float %1374, float %1375, float %1374, float %1375)  ; Dot2(ax,ay,bx,by)
  %1379 = fmul fast float %1373, %1373
  %1380 = fsub fast float %1378, %1379
  %1381 = fmul fast float %1377, %1377
  %1382 = fmul fast float %1311, %1380
  %1383 = fsub fast float %1381, %1382
  %1384 = fcmp fast ogt float %1383, 0.000000e+00
  br i1 %1384, label %1385, label %1400, !dx.controlflow.hints !62

; <label>:1385                                    ; preds = %1362
  %1386 = fcmp fast ogt float %1377, 0.000000e+00
  %1387 = call float @dx.op.unary.f32(i32 24, float %1383)  ; Sqrt(value)
  %1388 = fsub fast float -0.000000e+00, %1387
  %1389 = select i1 %1386, float %1387, float %1388
  %1390 = fadd fast float %1389, %1377
  %1391 = fmul float %1390, -5.000000e-01
  %1392 = fdiv fast float %1391, %1304
  %1393 = call float @dx.op.binary.f32(i32 35, float %1392, float 0.000000e+00)  ; FMax(a,b)
  %1394 = call float @dx.op.binary.f32(i32 36, float %1339, float %1393)  ; FMin(a,b)
  %1395 = fdiv fast float %1380, %1391
  %1396 = call float @dx.op.binary.f32(i32 35, float %1395, float 0.000000e+00)  ; FMax(a,b)
  %1397 = call float @dx.op.binary.f32(i32 36, float %1339, float %1396)  ; FMin(a,b)
  %1398 = call float @dx.op.binary.f32(i32 36, float %1394, float %1397)  ; FMin(a,b)
  %1399 = call float @dx.op.binary.f32(i32 35, float %1394, float %1397)  ; FMax(a,b)
  br label %1400

; <label>:1400                                    ; preds = %1385, %1362
  %1401 = phi float [ %1399, %1385 ], [ -1.000000e+00, %1362 ]
  %1402 = phi float [ %1398, %1385 ], [ -1.000000e+00, %1362 ]
  %1403 = phi i1 [ true, %1385 ], [ false, %1362 ]
  br i1 %1403, label %1404, label %1409, !dx.controlflow.hints !84

; <label>:1404                                    ; preds = %1400
  %1405 = call float @dx.op.binary.f32(i32 35, float %1353, float %1402)  ; FMax(a,b)
  %1406 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 %1363
  store float %1405, float* %1406, align 4, !tbaa !69, !noalias !73
  %1407 = call float @dx.op.binary.f32(i32 35, float %1353, float %1401)  ; FMax(a,b)
  %1408 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 %1363
  store float %1407, float* %1408, align 4, !tbaa !69, !noalias !73
  br label %1409

; <label>:1409                                    ; preds = %1404, %1400
  %1410 = add nuw nsw i32 %1363, 1
  %1411 = icmp eq i32 %1410, %1291
  br i1 %1411, label %1412, label %1362

; <label>:1412                                    ; preds = %1409
  %1413 = load float, float* %1356, align 4, !tbaa !69, !alias.scope !85, !noalias !88
  %1414 = load float, float* %1355, align 4, !tbaa !69, !alias.scope !91, !noalias !92
  %1415 = load float, float* %1354, align 4, !tbaa !69, !alias.scope !93, !noalias !94
  %1416 = load float, float* %1359, align 4, !tbaa !69, !alias.scope !95, !noalias !98
  %1417 = load float, float* %1358, align 4, !tbaa !69, !alias.scope !101, !noalias !102
  %1418 = load float, float* %1357, align 4, !tbaa !69, !alias.scope !103, !noalias !104
  br label %1419

; <label>:1419                                    ; preds = %1412, %1352
  %1420 = phi float [ -1.000000e+00, %1352 ], [ %1418, %1412 ]
  %1421 = phi float [ -1.000000e+00, %1352 ], [ %1417, %1412 ]
  %1422 = phi float [ -1.000000e+00, %1352 ], [ %1416, %1412 ]
  %1423 = phi float [ -1.000000e+00, %1352 ], [ %1415, %1412 ]
  %1424 = phi float [ -1.000000e+00, %1352 ], [ %1414, %1412 ]
  %1425 = phi float [ -1.000000e+00, %1352 ], [ %1413, %1412 ]
  %1426 = call float @dx.op.binary.f32(i32 36, float %1424, float %1425)  ; FMin(a,b)
  %1427 = call float @dx.op.binary.f32(i32 36, float %1423, float %1426)  ; FMin(a,b)
  %1428 = call float @dx.op.binary.f32(i32 35, float %1423, float %1424)  ; FMax(a,b)
  %1429 = call float @dx.op.binary.f32(i32 36, float %1428, float %1425)  ; FMin(a,b)
  %1430 = call float @dx.op.binary.f32(i32 36, float %1423, float %1424)  ; FMin(a,b)
  %1431 = call float @dx.op.binary.f32(i32 35, float %1430, float %1429)  ; FMax(a,b)
  %1432 = call float @dx.op.binary.f32(i32 35, float %1424, float %1425)  ; FMax(a,b)
  %1433 = call float @dx.op.binary.f32(i32 35, float %1423, float %1432)  ; FMax(a,b)
  store float %1427, float* %1354, align 4, !tbaa !69, !alias.scope !93, !noalias !94
  store float %1431, float* %1355, align 4, !tbaa !69, !alias.scope !91, !noalias !92
  store float %1433, float* %1356, align 4, !tbaa !69, !alias.scope !85, !noalias !88
  %1434 = call float @dx.op.binary.f32(i32 36, float %1421, float %1422)  ; FMin(a,b)
  %1435 = call float @dx.op.binary.f32(i32 36, float %1420, float %1434)  ; FMin(a,b)
  %1436 = call float @dx.op.binary.f32(i32 35, float %1420, float %1421)  ; FMax(a,b)
  %1437 = call float @dx.op.binary.f32(i32 36, float %1436, float %1422)  ; FMin(a,b)
  %1438 = call float @dx.op.binary.f32(i32 36, float %1420, float %1421)  ; FMin(a,b)
  %1439 = call float @dx.op.binary.f32(i32 35, float %1438, float %1437)  ; FMax(a,b)
  %1440 = call float @dx.op.binary.f32(i32 35, float %1421, float %1422)  ; FMax(a,b)
  %1441 = call float @dx.op.binary.f32(i32 35, float %1420, float %1440)  ; FMax(a,b)
  store float %1435, float* %1357, align 4, !tbaa !69, !alias.scope !103, !noalias !104
  store float %1439, float* %1358, align 4, !tbaa !69, !alias.scope !101, !noalias !102
  store float %1441, float* %1359, align 4, !tbaa !69, !alias.scope !95, !noalias !98
  br label %1442

; <label>:1442                                    ; preds = %1419, %1348, %1337, %1335, %1232
  %1443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1444 = extractvalue %dx.types.CBufRet.f32 %1443, 2
  %1445 = fmul fast float %1444, %1242
  %1446 = call float @dx.op.unary.f32(i32 7, float %1445)  ; Saturate(value)
  %1447 = fptoui float %1181 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1448 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %16
  store i32 %1447, i32 addrspace(3)* %1448, align 4, !tbaa !105
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1449 = and i32 %16, 63
  %1450 = icmp ult i32 %1449, 32
  br i1 %1450, label %1451, label %1457, !dx.controlflow.hints !107

; <label>:1451                                    ; preds = %1442
  %1452 = add i32 %16, 32
  %1453 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1452
  %1454 = load i32, i32 addrspace(3)* %1453, align 4, !tbaa !105
  %1455 = load i32, i32 addrspace(3)* %1448, align 4, !tbaa !105
  %1456 = call i32 @dx.op.binary.i32(i32 40, i32 %1455, i32 %1454)  ; UMin(a,b)
  store i32 %1456, i32 addrspace(3)* %1448, align 4, !tbaa !105
  br label %1457

; <label>:1457                                    ; preds = %1451, %1442
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1458 = icmp ult i32 %1449, 16
  br i1 %1458, label %1459, label %1465, !dx.controlflow.hints !108

; <label>:1459                                    ; preds = %1457
  %1460 = add i32 %16, 16
  %1461 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1460
  %1462 = load i32, i32 addrspace(3)* %1461, align 4, !tbaa !105
  %1463 = load i32, i32 addrspace(3)* %1448, align 4, !tbaa !105
  %1464 = call i32 @dx.op.binary.i32(i32 40, i32 %1463, i32 %1462)  ; UMin(a,b)
  store i32 %1464, i32 addrspace(3)* %1448, align 4, !tbaa !105
  br label %1465

; <label>:1465                                    ; preds = %1459, %1457
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1466 = icmp ult i32 %1449, 8
  br i1 %1466, label %1467, label %1473, !dx.controlflow.hints !109

; <label>:1467                                    ; preds = %1465
  %1468 = add i32 %16, 8
  %1469 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1468
  %1470 = load i32, i32 addrspace(3)* %1469, align 4, !tbaa !105
  %1471 = load i32, i32 addrspace(3)* %1448, align 4, !tbaa !105
  %1472 = call i32 @dx.op.binary.i32(i32 40, i32 %1471, i32 %1470)  ; UMin(a,b)
  store i32 %1472, i32 addrspace(3)* %1448, align 4, !tbaa !105
  br label %1473

; <label>:1473                                    ; preds = %1467, %1465
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1474 = icmp ult i32 %1449, 4
  br i1 %1474, label %1475, label %1481, !dx.controlflow.hints !110

; <label>:1475                                    ; preds = %1473
  %1476 = add i32 %16, 4
  %1477 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1476
  %1478 = load i32, i32 addrspace(3)* %1477, align 4, !tbaa !105
  %1479 = load i32, i32 addrspace(3)* %1448, align 4, !tbaa !105
  %1480 = call i32 @dx.op.binary.i32(i32 40, i32 %1479, i32 %1478)  ; UMin(a,b)
  store i32 %1480, i32 addrspace(3)* %1448, align 4, !tbaa !105
  br label %1481

; <label>:1481                                    ; preds = %1475, %1473
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1482 = icmp ult i32 %1449, 2
  br i1 %1482, label %1483, label %1489, !dx.controlflow.hints !111

; <label>:1483                                    ; preds = %1481
  %1484 = add i32 %16, 2
  %1485 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1484
  %1486 = load i32, i32 addrspace(3)* %1485, align 4, !tbaa !105
  %1487 = load i32, i32 addrspace(3)* %1448, align 4, !tbaa !105
  %1488 = call i32 @dx.op.binary.i32(i32 40, i32 %1487, i32 %1486)  ; UMin(a,b)
  store i32 %1488, i32 addrspace(3)* %1448, align 4, !tbaa !105
  br label %1489

; <label>:1489                                    ; preds = %1483, %1481
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1490 = icmp eq i32 %1449, 0
  br i1 %1490, label %1491, label %1497, !dx.controlflow.hints !112

; <label>:1491                                    ; preds = %1489
  %1492 = add i32 %16, 1
  %1493 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1492
  %1494 = load i32, i32 addrspace(3)* %1493, align 4, !tbaa !105
  %1495 = load i32, i32 addrspace(3)* %1448, align 4, !tbaa !105
  %1496 = call i32 @dx.op.binary.i32(i32 40, i32 %1495, i32 %1494)  ; UMin(a,b)
  store i32 %1496, i32 addrspace(3)* %1448, align 4, !tbaa !105
  br label %1497

; <label>:1497                                    ; preds = %1491, %1489
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1498 = and i32 %16, -64
  %1499 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1498
  %1500 = load i32, i32 addrspace(3)* %1499, align 4, !tbaa !105
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1447, i32 addrspace(3)* %1448, align 4, !tbaa !105
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1450, label %1501, label %1507, !dx.controlflow.hints !113

; <label>:1501                                    ; preds = %1497
  %1502 = add i32 %16, 32
  %1503 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1502
  %1504 = load i32, i32 addrspace(3)* %1503, align 4, !tbaa !105
  %1505 = load i32, i32 addrspace(3)* %1448, align 4, !tbaa !105
  %1506 = call i32 @dx.op.binary.i32(i32 39, i32 %1505, i32 %1504)  ; UMax(a,b)
  store i32 %1506, i32 addrspace(3)* %1448, align 4, !tbaa !105
  br label %1507

; <label>:1507                                    ; preds = %1501, %1497
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1458, label %1508, label %1514, !dx.controlflow.hints !114

; <label>:1508                                    ; preds = %1507
  %1509 = add i32 %16, 16
  %1510 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1509
  %1511 = load i32, i32 addrspace(3)* %1510, align 4, !tbaa !105
  %1512 = load i32, i32 addrspace(3)* %1448, align 4, !tbaa !105
  %1513 = call i32 @dx.op.binary.i32(i32 39, i32 %1512, i32 %1511)  ; UMax(a,b)
  store i32 %1513, i32 addrspace(3)* %1448, align 4, !tbaa !105
  br label %1514

; <label>:1514                                    ; preds = %1508, %1507
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1466, label %1515, label %1521, !dx.controlflow.hints !115

; <label>:1515                                    ; preds = %1514
  %1516 = add i32 %16, 8
  %1517 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1516
  %1518 = load i32, i32 addrspace(3)* %1517, align 4, !tbaa !105
  %1519 = load i32, i32 addrspace(3)* %1448, align 4, !tbaa !105
  %1520 = call i32 @dx.op.binary.i32(i32 39, i32 %1519, i32 %1518)  ; UMax(a,b)
  store i32 %1520, i32 addrspace(3)* %1448, align 4, !tbaa !105
  br label %1521

; <label>:1521                                    ; preds = %1515, %1514
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1474, label %1522, label %1528, !dx.controlflow.hints !116

; <label>:1522                                    ; preds = %1521
  %1523 = add i32 %16, 4
  %1524 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1523
  %1525 = load i32, i32 addrspace(3)* %1524, align 4, !tbaa !105
  %1526 = load i32, i32 addrspace(3)* %1448, align 4, !tbaa !105
  %1527 = call i32 @dx.op.binary.i32(i32 39, i32 %1526, i32 %1525)  ; UMax(a,b)
  store i32 %1527, i32 addrspace(3)* %1448, align 4, !tbaa !105
  br label %1528

; <label>:1528                                    ; preds = %1522, %1521
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1482, label %1529, label %1535, !dx.controlflow.hints !117

; <label>:1529                                    ; preds = %1528
  %1530 = add i32 %16, 2
  %1531 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1530
  %1532 = load i32, i32 addrspace(3)* %1531, align 4, !tbaa !105
  %1533 = load i32, i32 addrspace(3)* %1448, align 4, !tbaa !105
  %1534 = call i32 @dx.op.binary.i32(i32 39, i32 %1533, i32 %1532)  ; UMax(a,b)
  store i32 %1534, i32 addrspace(3)* %1448, align 4, !tbaa !105
  br label %1535

; <label>:1535                                    ; preds = %1529, %1528
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1490, label %1536, label %1542, !dx.controlflow.hints !118

; <label>:1536                                    ; preds = %1535
  %1537 = add i32 %16, 1
  %1538 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1537
  %1539 = load i32, i32 addrspace(3)* %1538, align 4, !tbaa !105
  %1540 = load i32, i32 addrspace(3)* %1448, align 4, !tbaa !105
  %1541 = call i32 @dx.op.binary.i32(i32 39, i32 %1540, i32 %1539)  ; UMax(a,b)
  store i32 %1541, i32 addrspace(3)* %1448, align 4, !tbaa !105
  br label %1542

; <label>:1542                                    ; preds = %1536, %1535
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1543 = load i32, i32 addrspace(3)* %1499, align 4, !tbaa !105
  %1544 = uitofp i32 %1543 to float
  %1545 = uitofp i32 %1500 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %14, i32 %15, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1547 = extractvalue %dx.types.CBufRet.f32 %1546, 0
  %1548 = fmul fast float %1547, %1181
  %1549 = fmul fast float %1547, %1544
  %1550 = fmul fast float %1547, %1545
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %14, i32 %15, i32 undef, float %1548, float %1549, float %1550, float %1548, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %14, i32 %15, i32 undef, float %1446, float %1446, float %1446, float %1446, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!24}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !12, !18, !21}
!5 = !{!6, !8, !9, !10, !11}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
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
!21 = !{!22, !23}
!22 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!23 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!24 = !{void ()* @cs_fog_raymarching_air_heightmap_brfog, !"cs_fog_raymarching_air_heightmap_brfog", null, !4, !25}
!25 = !{i32 0, i64 272, i32 4, !26}
!26 = !{i32 8, i32 8, i32 1}
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
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = !{!70, !70, i64 0}
!70 = !{!"float", !71, i64 0}
!71 = !{!"omnipotent char", !72, i64 0}
!72 = !{!"Simple C/C++ TBAA"}
!73 = !{!74, !76, !78, !79, !81, !82, !83}
!74 = distinct !{!74, !75, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!75 = distinct !{!75, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!76 = distinct !{!76, !77, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!77 = distinct !{!77, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!78 = distinct !{!78, !77, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!79 = distinct !{!79, !80, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!80 = distinct !{!80, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!81 = distinct !{!81, !80, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!82 = distinct !{!82, !80, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!83 = distinct !{!83, !80, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = !{!86}
!86 = distinct !{!86, !87, !"\01?sort@@YAXAIAM00@Z: %c"}
!87 = distinct !{!87, !"\01?sort@@YAXAIAM00@Z"}
!88 = !{!89, !90, !74, !76, !78, !79, !81, !82, !83}
!89 = distinct !{!89, !87, !"\01?sort@@YAXAIAM00@Z: %a"}
!90 = distinct !{!90, !87, !"\01?sort@@YAXAIAM00@Z: %b"}
!91 = !{!90}
!92 = !{!89, !86, !74, !76, !78, !79, !81, !82, !83}
!93 = !{!89}
!94 = !{!90, !86, !74, !76, !78, !79, !81, !82, !83}
!95 = !{!96}
!96 = distinct !{!96, !97, !"\01?sort@@YAXAIAM00@Z: %c"}
!97 = distinct !{!97, !"\01?sort@@YAXAIAM00@Z"}
!98 = !{!99, !100, !74, !76, !78, !79, !81, !82, !83}
!99 = distinct !{!99, !97, !"\01?sort@@YAXAIAM00@Z: %a"}
!100 = distinct !{!100, !97, !"\01?sort@@YAXAIAM00@Z: %b"}
!101 = !{!100}
!102 = !{!99, !96, !74, !76, !78, !79, !81, !82, !83}
!103 = !{!99}
!104 = !{!100, !96, !74, !76, !78, !79, !81, !82, !83}
!105 = !{!106, !106, i64 0}
!106 = !{!"int", !71, i64 0}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 2}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 2}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 2}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 2}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 2}

