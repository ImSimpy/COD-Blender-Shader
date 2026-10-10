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
; shader hash: d4ae84a514dadc92a0d5501eea01df77
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

define void @cs_fog_raymarching_heightmap_brfog() {
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
  %364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.f32 %364, 2
  %366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.f32 %366, 3
  %368 = fsub fast float -0.000000e+00, %229
  %369 = fsub fast float -0.000000e+00, %230
  %370 = fsub fast float %365, %231
  %371 = fadd fast float %370, %367
  %372 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %368, float %369, float %371)  ; Dot3(ax,ay,az,bx,by,bz)
  %373 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %272, float %273, float %274)  ; Dot3(ax,ay,az,bx,by,bz)
  %374 = fdiv fast float 1.000000e+00, %373
  %375 = fmul fast float %374, %372
  %376 = fcmp fast olt float %375, 0.000000e+00
  %377 = fcmp fast ogt float %274, 0.000000e+00
  %378 = and i1 %377, %376
  br i1 %378, label %383, label %379, !dx.controlflow.hints !31

; <label>:379                                     ; preds = %360
  %380 = fcmp fast olt float %274, 0.000000e+00
  br i1 %380, label %381, label %383, !dx.controlflow.hints !32

; <label>:381                                     ; preds = %379
  %382 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %375)  ; FMax(a,b)
  br label %383

; <label>:383                                     ; preds = %381, %379, %360
  %384 = phi float [ 0.000000e+00, %360 ], [ %382, %381 ], [ 0.000000e+00, %379 ]
  %385 = phi float [ 0.000000e+00, %360 ], [ 0x47EFFFFFE0000000, %381 ], [ %375, %379 ]
  %386 = fcmp fast oeq float %385, 0.000000e+00
  br i1 %386, label %390, label %387, !dx.controlflow.hints !33

; <label>:387                                     ; preds = %383
  %388 = call float @dx.op.binary.f32(i32 36, float %363, float %384)  ; FMin(a,b)
  %389 = call float @dx.op.binary.f32(i32 35, float %362, float %385)  ; FMax(a,b)
  br label %390

; <label>:390                                     ; preds = %387, %383
  %391 = phi i32 [ 1, %387 ], [ 0, %383 ]
  %392 = phi float [ %389, %387 ], [ %362, %383 ]
  %393 = phi float [ %388, %387 ], [ %363, %383 ]
  %394 = call float @dx.op.binary.f32(i32 36, float %293, float %392)  ; FMin(a,b)
  %395 = call float @dx.op.binary.f32(i32 35, float %270, float %393)  ; FMax(a,b)
  %396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %397 = extractvalue %dx.types.CBufRet.f32 %396, 0
  %398 = fmul fast float %218, 2.000000e+00
  %399 = fadd fast float %398, -1.000000e+00
  %400 = fmul fast float %397, %399
  %401 = fadd fast float %400, %395
  %402 = fcmp fast olt float %401, %394
  %403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.f32 %403, 2
  %405 = fcmp fast olt float %404, 1.000000e+00
  %406 = and i1 %402, %405
  br i1 %406, label %407, label %1094

; <label>:407                                     ; preds = %390
  %408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.i32 %408, 1
  %410 = add i32 %409, -1
  %411 = fmul fast float %401, %274
  %412 = fadd fast float %411, %231
  %413 = fmul fast float %401, %273
  %414 = fadd fast float %413, %230
  %415 = fmul fast float %401, %272
  %416 = fadd fast float %415, %229
  br label %417

; <label>:417                                     ; preds = %1072, %407
  %418 = phi i32 [ %786, %1072 ], [ undef, %407 ]
  %419 = phi float [ %788, %1072 ], [ undef, %407 ]
  %420 = phi float [ %1074, %1072 ], [ 0.000000e+00, %407 ]
  %421 = phi float [ %1075, %1072 ], [ 1.000000e+00, %407 ]
  %422 = phi float [ %1085, %1072 ], [ %416, %407 ]
  %423 = phi float [ %1086, %1072 ], [ %414, %407 ]
  %424 = phi float [ %1087, %1072 ], [ %412, %407 ]
  %425 = phi float [ %1073, %1072 ], [ %401, %407 ]
  %426 = phi i32 [ %436, %1072 ], [ 0, %407 ]
  %427 = phi i32 [ %611, %1072 ], [ %410, %407 ]
  %428 = phi float [ %1076, %1072 ], [ 0.000000e+00, %407 ]
  %429 = phi float [ %1077, %1072 ], [ 0.000000e+00, %407 ]
  %430 = phi float [ %1078, %1072 ], [ 0.000000e+00, %407 ]
  %431 = phi float [ %1079, %1072 ], [ 0.000000e+00, %407 ]
  %432 = phi float [ %1080, %1072 ], [ 0.000000e+00, %407 ]
  %433 = phi i32 [ %1081, %1072 ], [ 0, %407 ]
  %434 = fsub fast float -0.000000e+00, %423
  %435 = fsub fast float -0.000000e+00, %422
  %436 = add i32 %426, 1
  %437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %438 = extractvalue %dx.types.CBufRet.f32 %437, 0
  %439 = icmp eq i32 %361, 0
  br i1 %439, label %608, label %440, !dx.controlflow.hints !34

; <label>:440                                     ; preds = %417
  %441 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.i32 %441, 1
  %443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %444 = extractvalue %dx.types.CBufRet.f32 %443, 1
  %445 = fcmp fast ogt float %444, %425
  br i1 %445, label %446, label %448, !dx.controlflow.hints !35

; <label>:446                                     ; preds = %440
  %447 = fsub fast float %444, %425
  br label %598

; <label>:448                                     ; preds = %440
  %449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.i32 %449, 3
  %451 = icmp eq i32 %450, 0
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 2
  %454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.f32 %454, 2
  %456 = fsub fast float %453, %424
  %457 = fadd fast float %456, %455
  %458 = fsub fast float 0xC7EFFFFFE0000000, %424
  br i1 %451, label %466, label %459, !dx.controlflow.hints !28

; <label>:459                                     ; preds = %448
  %460 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %435, float %434, float %457)  ; Dot3(ax,ay,az,bx,by,bz)
  %461 = fmul fast float %374, %460
  %462 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %435, float %434, float %458)  ; Dot3(ax,ay,az,bx,by,bz)
  %463 = fmul fast float %374, %462
  %464 = call float @dx.op.binary.f32(i32 36, float %461, float %463)  ; FMin(a,b)
  %465 = call float @dx.op.binary.f32(i32 35, float %461, float %463)  ; FMax(a,b)
  br label %499

; <label>:466                                     ; preds = %448
  %467 = extractvalue %dx.types.CBufRet.f32 %452, 0
  %468 = extractvalue %dx.types.CBufRet.f32 %452, 1
  %469 = extractvalue %dx.types.CBufRet.f32 %454, 0
  %470 = extractvalue %dx.types.CBufRet.f32 %454, 1
  %471 = fdiv fast float 1.000000e+00, %272
  %472 = fdiv fast float 1.000000e+00, %273
  %473 = fdiv fast float 1.000000e+00, %274
  %474 = fsub fast float %467, %422
  %475 = fmul fast float %471, %474
  %476 = fadd fast float %474, %469
  %477 = fmul fast float %476, %471
  %478 = call float @dx.op.binary.f32(i32 36, float %475, float %477)  ; FMin(a,b)
  %479 = call float @dx.op.binary.f32(i32 35, float %475, float %477)  ; FMax(a,b)
  %480 = fsub fast float %468, %423
  %481 = fmul fast float %472, %480
  %482 = fadd fast float %480, %470
  %483 = fmul fast float %482, %472
  %484 = call float @dx.op.binary.f32(i32 36, float %481, float %483)  ; FMin(a,b)
  %485 = call float @dx.op.binary.f32(i32 35, float %478, float %484)  ; FMax(a,b)
  %486 = call float @dx.op.binary.f32(i32 35, float %481, float %483)  ; FMax(a,b)
  %487 = call float @dx.op.binary.f32(i32 36, float %479, float %486)  ; FMin(a,b)
  %488 = fmul fast float %473, %458
  %489 = fmul fast float %473, %457
  %490 = call float @dx.op.binary.f32(i32 36, float %488, float %489)  ; FMin(a,b)
  %491 = call float @dx.op.binary.f32(i32 35, float %485, float %490)  ; FMax(a,b)
  %492 = call float @dx.op.binary.f32(i32 35, float %488, float %489)  ; FMax(a,b)
  %493 = call float @dx.op.binary.f32(i32 36, float %487, float %492)  ; FMin(a,b)
  %494 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %491)  ; FMax(a,b)
  %495 = fcmp fast ult float %493, %494
  br i1 %495, label %499, label %496, !dx.controlflow.hints !29

; <label>:496                                     ; preds = %466
  %497 = call float @dx.op.binary.f32(i32 36, float %491, float %493)  ; FMin(a,b)
  %498 = call float @dx.op.binary.f32(i32 35, float %491, float %493)  ; FMax(a,b)
  br label %499

; <label>:499                                     ; preds = %496, %466, %459
  %500 = phi float [ %464, %459 ], [ %497, %496 ], [ 0.000000e+00, %466 ]
  %501 = phi float [ %465, %459 ], [ %498, %496 ], [ 0.000000e+00, %466 ]
  %502 = fcmp fast ogt float %500, 0.000000e+00
  br i1 %502, label %598, label %503, !dx.controlflow.hints !36

; <label>:503                                     ; preds = %499
  %504 = fcmp fast ugt float %501, 0.000000e+00
  br i1 %504, label %505, label %598, !dx.controlflow.hints !37

; <label>:505                                     ; preds = %503
  %506 = icmp sgt i32 %427, 0
  br i1 %506, label %507, label %592

; <label>:507                                     ; preds = %505
  br label %508

; <label>:508                                     ; preds = %588, %507
  %509 = phi i32 [ %589, %588 ], [ %427, %507 ]
  %510 = sitofp i32 %509 to float
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 0
  %513 = extractvalue %dx.types.CBufRet.f32 %511, 1
  %514 = fsub fast float %422, %512
  %515 = fsub fast float %423, %513
  %516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %517 = extractvalue %dx.types.CBufRet.f32 %516, 0
  %518 = extractvalue %dx.types.CBufRet.f32 %516, 1
  %519 = fmul fast float %514, %517
  %520 = fmul fast float %515, %518
  %521 = fsub fast float 1.000000e+00, %520
  %522 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.i32 %522, 3
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %531, label %525, !dx.controlflow.hints !38

; <label>:525                                     ; preds = %508
  %526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %10, float %519, float %521, float undef, float undef, i32 0, i32 0, i32 undef, float %510)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %527 = extractvalue %dx.types.ResRet.f32 %526, 0
  %528 = extractvalue %dx.types.ResRet.f32 %526, 1
  %529 = extractvalue %dx.types.ResRet.f32 %526, 2
  %530 = extractvalue %dx.types.ResRet.f32 %526, 3
  br label %537

; <label>:531                                     ; preds = %508
  %532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %519, float %521, float undef, float undef, i32 0, i32 0, i32 undef, float %510)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  %534 = extractvalue %dx.types.ResRet.f32 %532, 1
  %535 = extractvalue %dx.types.ResRet.f32 %532, 2
  %536 = extractvalue %dx.types.ResRet.f32 %532, 3
  br label %537

; <label>:537                                     ; preds = %531, %525
  %538 = phi float [ %527, %525 ], [ %533, %531 ]
  %539 = phi float [ %528, %525 ], [ %534, %531 ]
  %540 = phi float [ %529, %525 ], [ %535, %531 ]
  %541 = phi float [ %530, %525 ], [ %536, %531 ]
  %542 = extractvalue %dx.types.CBufRet.f32 %516, 3
  %543 = fmul fast float %542, %538
  %544 = extractvalue %dx.types.CBufRet.f32 %511, 2
  %545 = fadd fast float %543, %544
  %546 = fmul fast float %542, %539
  %547 = fadd fast float %546, %544
  %548 = fmul fast float %542, %540
  %549 = fadd fast float %548, %544
  %550 = and i32 %509, 31
  %551 = shl i32 1, %550
  %552 = uitofp i32 %551 to float
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 3
  %555 = fdiv fast float 1.000000e+00, %554
  %556 = fmul fast float %555, %552
  %557 = fmul fast float %556, %274
  %558 = fadd fast float %557, %424
  %559 = fcmp fast oeq float %541, 0.000000e+00
  %560 = fcmp fast ogt float %424, %547
  %561 = fcmp fast ogt float %558, %547
  %562 = and i1 %560, %561
  %563 = or i1 %559, %562
  br i1 %563, label %564, label %568, !dx.controlflow.hints !39

; <label>:564                                     ; preds = %537
  %565 = add nsw i32 %509, 1
  %566 = add nsw i32 %442, -1
  %567 = call i32 @dx.op.binary.i32(i32 38, i32 %565, i32 %566)  ; IMin(a,b)
  br label %598

; <label>:568                                     ; preds = %537
  %569 = fcmp fast olt float %424, %549
  %570 = fcmp fast olt float %558, %549
  %571 = and i1 %569, %570
  br i1 %571, label %572, label %576, !dx.controlflow.hints !40

; <label>:572                                     ; preds = %568
  %573 = add nsw i32 %509, 1
  %574 = add nsw i32 %442, -1
  %575 = call i32 @dx.op.binary.i32(i32 38, i32 %573, i32 %574)  ; IMin(a,b)
  br label %598

; <label>:576                                     ; preds = %568
  %577 = fcmp fast olt float %424, %545
  %578 = fcmp fast olt float %558, %545
  %579 = and i1 %577, %578
  br i1 %579, label %580, label %588, !dx.controlflow.hints !41

; <label>:580                                     ; preds = %576
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 3
  %583 = extractvalue %dx.types.CBufRet.f32 %516, 2
  %584 = fcmp fast une float %582, %583
  br i1 %584, label %585, label %592, !dx.controlflow.hints !42

; <label>:585                                     ; preds = %580
  %586 = fsub fast float %424, %549
  %587 = call float @dx.op.binary.f32(i32 36, float %556, float %586)  ; FMin(a,b)
  br label %592

; <label>:588                                     ; preds = %576
  %589 = add nsw i32 %509, -1
  %590 = icmp sgt i32 %509, 1
  br i1 %590, label %508, label %591

; <label>:591                                     ; preds = %588
  br label %592

; <label>:592                                     ; preds = %591, %585, %580, %505
  %593 = phi float [ %587, %585 ], [ %556, %580 ], [ 0.000000e+00, %505 ], [ 0.000000e+00, %591 ]
  %594 = phi i32 [ %509, %585 ], [ %509, %580 ], [ %427, %505 ], [ %589, %591 ]
  %595 = add nsw i32 %594, 1
  %596 = add nsw i32 %442, -1
  %597 = call i32 @dx.op.binary.i32(i32 38, i32 %595, i32 %596)  ; IMin(a,b)
  br label %598

; <label>:598                                     ; preds = %592, %572, %564, %503, %499, %446
  %599 = phi float [ %447, %446 ], [ %556, %564 ], [ %556, %572 ], [ %593, %592 ], [ 0x47EFFFFFE0000000, %503 ], [ %500, %499 ]
  %600 = phi i32 [ %361, %446 ], [ %361, %564 ], [ %361, %572 ], [ %361, %592 ], [ 0, %503 ], [ %361, %499 ]
  %601 = phi i32 [ %427, %446 ], [ %567, %564 ], [ %575, %572 ], [ %597, %592 ], [ %427, %503 ], [ %427, %499 ]
  %602 = icmp ne i32 %600, 0
  %603 = zext i1 %602 to i32
  %604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %605 = extractvalue %dx.types.CBufRet.f32 %604, 2
  %606 = call float @dx.op.binary.f32(i32 35, float %599, float %605)  ; FMax(a,b)
  %607 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %606)  ; FMin(a,b)
  br label %608

; <label>:608                                     ; preds = %598, %417
  %609 = phi i32 [ %603, %598 ], [ 0, %417 ]
  %610 = phi float [ %607, %598 ], [ 0x47EFFFFFE0000000, %417 ]
  %611 = phi i32 [ %601, %598 ], [ %427, %417 ]
  %612 = icmp eq i32 %391, 0
  br i1 %612, label %785, label %613, !dx.controlflow.hints !43

; <label>:613                                     ; preds = %608
  %614 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %615 = extractvalue %dx.types.CBufRet.i32 %614, 1
  %616 = and i32 %615, 1
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %618, label %775, !dx.controlflow.hints !44

; <label>:618                                     ; preds = %613
  %619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %620 = extractvalue %dx.types.CBufRet.f32 %619, 2
  %621 = extractvalue %dx.types.CBufRet.f32 %619, 3
  %622 = fmul fast float %620, %422
  %623 = fmul fast float %621, %423
  %624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.f32 %624, 0
  %626 = extractvalue %dx.types.CBufRet.f32 %624, 1
  %627 = fadd fast float %622, %625
  %628 = fadd fast float %623, %626
  %629 = call float @dx.op.unary.f32(i32 7, float %627)  ; Saturate(value)
  %630 = call float @dx.op.unary.f32(i32 7, float %628)  ; Saturate(value)
  %631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %11, float %629, float %630, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %632 = extractvalue %dx.types.ResRet.f32 %631, 0
  %633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %634 = extractvalue %dx.types.CBufRet.f32 %633, 0
  %635 = fmul fast float %634, %632
  %636 = fsub fast float %627, %629
  %637 = fsub fast float %628, %630
  %638 = extractvalue %dx.types.CBufRet.f32 %619, 0
  %639 = extractvalue %dx.types.CBufRet.f32 %619, 1
  %640 = fmul fast float %638, %636
  %641 = fmul fast float %639, %637
  %642 = fmul fast float %640, %640
  %643 = fmul fast float %641, %641
  %644 = fadd fast float %642, %643
  %645 = call float @dx.op.unary.f32(i32 24, float %644)  ; Sqrt(value)
  %646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %647 = extractvalue %dx.types.CBufRet.f32 %646, 3
  %648 = fmul fast float %647, %645
  %649 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  %650 = extractvalue %dx.types.CBufRet.f32 %646, 2
  %651 = fsub fast float %650, %635
  %652 = fmul fast float %651, %649
  %653 = extractvalue %dx.types.CBufRet.f32 %633, 1
  %654 = fsub fast float %424, %635
  %655 = fsub fast float %654, %653
  %656 = fsub fast float %655, %652
  %657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.f32 %657, 2
  %659 = fsub fast float %656, %658
  %660 = fcmp fast olt float %659, 0.000000e+00
  %661 = call float @dx.op.unary.f32(i32 6, float %659)  ; FAbs(value)
  %662 = extractvalue %dx.types.CBufRet.i32 %614, 0
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %717, label %664

; <label>:664                                     ; preds = %618
  br label %665

; <label>:665                                     ; preds = %704, %664
  %666 = phi i32 [ %710, %704 ], [ 1, %664 ]
  %667 = phi float [ %712, %704 ], [ 0x47EFFFFFE0000000, %664 ]
  %668 = phi i32 [ %713, %704 ], [ 0, %664 ]
  %669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.f32 %669, 1
  %671 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %672 = extractvalue %dx.types.CBufRet.i32 %671, 1
  %673 = and i32 %672, 8
  %674 = icmp eq i32 %673, 0
  %675 = fcmp fast ogt float %670, %656
  %676 = or i1 %675, %674
  %677 = add i32 %668, 171
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %677)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 0
  %680 = extractvalue %dx.types.CBufRet.f32 %678, 1
  %681 = extractvalue %dx.types.CBufRet.f32 %678, 2
  br i1 %676, label %682, label %688, !dx.controlflow.hints !45

; <label>:682                                     ; preds = %665
  %683 = fsub fast float %679, %422
  %684 = fsub fast float %680, %423
  %685 = fmul fast float %683, %683
  %686 = fmul fast float %684, %684
  %687 = fadd fast float %685, %686
  br label %704

; <label>:688                                     ; preds = %665
  %689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %690 = extractvalue %dx.types.CBufRet.f32 %689, 2
  %691 = extractvalue %dx.types.CBufRet.f32 %669, 2
  %692 = fmul fast float %691, %690
  %693 = fsub fast float %692, %670
  %694 = fdiv fast float %681, %693
  %695 = fsub fast float %422, %679
  %696 = fsub fast float %423, %680
  %697 = fsub fast float %656, %670
  %698 = fmul fast float %694, %697
  %699 = fmul fast float %695, %695
  %700 = fmul fast float %696, %696
  %701 = fadd fast float %699, %700
  %702 = fmul fast float %698, %698
  %703 = fadd fast float %701, %702
  br label %704

; <label>:704                                     ; preds = %688, %682
  %705 = phi float [ %687, %682 ], [ %703, %688 ]
  %706 = call float @dx.op.unary.f32(i32 24, float %705)  ; Sqrt(value)
  %707 = fsub float %681, %706
  %708 = fcmp fast olt float %707, 0.000000e+00
  %709 = zext i1 %708 to i32
  %710 = and i32 %709, %666
  %711 = call float @dx.op.unary.f32(i32 6, float %707)  ; FAbs(value)
  %712 = call float @dx.op.binary.f32(i32 36, float %667, float %711)  ; FMin(a,b)
  %713 = add i32 %668, 1
  %714 = extractvalue %dx.types.CBufRet.i32 %671, 0
  %715 = icmp ult i32 %713, %714
  br i1 %715, label %665, label %716

; <label>:716                                     ; preds = %704
  br label %717

; <label>:717                                     ; preds = %716, %618
  %718 = phi i32 [ 1, %618 ], [ %710, %716 ]
  %719 = phi float [ 0x47EFFFFFE0000000, %618 ], [ %712, %716 ]
  br label %720

; <label>:720                                     ; preds = %720, %717
  %721 = phi i32 [ %718, %717 ], [ %760, %720 ]
  %722 = phi float [ 0x47EFFFFFE0000000, %717 ], [ %762, %720 ]
  %723 = phi i32 [ 0, %717 ], [ %763, %720 ]
  %724 = add nuw nsw i32 %723, 191
  %725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %724)  ; CBufferLoadLegacy(handle,regIndex)
  %726 = extractvalue %dx.types.CBufRet.f32 %725, 0
  %727 = extractvalue %dx.types.CBufRet.f32 %725, 1
  %728 = extractvalue %dx.types.CBufRet.f32 %725, 2
  %729 = add nuw nsw i32 %723, 195
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %729)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 0
  %732 = extractvalue %dx.types.CBufRet.f32 %730, 1
  %733 = extractvalue %dx.types.CBufRet.f32 %730, 2
  %734 = fsub fast float %422, %726
  %735 = fsub fast float %423, %727
  %736 = fsub fast float %656, %728
  %737 = call float @dx.op.unary.f32(i32 6, float %734)  ; FAbs(value)
  %738 = call float @dx.op.unary.f32(i32 6, float %735)  ; FAbs(value)
  %739 = call float @dx.op.unary.f32(i32 6, float %736)  ; FAbs(value)
  %740 = fsub fast float %737, %731
  %741 = fsub fast float %738, %732
  %742 = fsub fast float %739, %733
  %743 = call float @dx.op.binary.f32(i32 35, float %740, float 0.000000e+00)  ; FMax(a,b)
  %744 = call float @dx.op.binary.f32(i32 35, float %741, float 0.000000e+00)  ; FMax(a,b)
  %745 = call float @dx.op.binary.f32(i32 35, float %742, float 0.000000e+00)  ; FMax(a,b)
  %746 = fmul fast float %743, %743
  %747 = fmul fast float %744, %744
  %748 = fadd fast float %747, %746
  %749 = fmul fast float %745, %745
  %750 = fadd fast float %748, %749
  %751 = call float @dx.op.unary.f32(i32 24, float %750)  ; Sqrt(value)
  %752 = call float @dx.op.binary.f32(i32 35, float %741, float %742)  ; FMax(a,b)
  %753 = call float @dx.op.binary.f32(i32 35, float %740, float %752)  ; FMax(a,b)
  %754 = call float @dx.op.binary.f32(i32 36, float %753, float 0.000000e+00)  ; FMin(a,b)
  %755 = fadd fast float %754, %751
  %756 = fsub fast float -0.000000e+00, %755
  %757 = fcmp ogt float %755, -0.000000e+00
  %758 = icmp ne i32 %721, 0
  %759 = and i1 %758, %757
  %760 = zext i1 %759 to i32
  %761 = call float @dx.op.unary.f32(i32 6, float %756)  ; FAbs(value)
  %762 = call float @dx.op.binary.f32(i32 36, float %722, float %761)  ; FMin(a,b)
  %763 = add nuw nsw i32 %723, 1
  %764 = icmp eq i32 %763, 4
  br i1 %764, label %765, label %720

; <label>:765                                     ; preds = %720
  %766 = call float @dx.op.binary.f32(i32 36, float %661, float %762)  ; FMin(a,b)
  %767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.i32 %767, 1
  %769 = and i32 %768, 2
  %770 = icmp ne i32 %769, 0
  %771 = xor i1 %759, %770
  %772 = call float @dx.op.binary.f32(i32 36, float %766, float %719)  ; FMin(a,b)
  %773 = and i1 %771, %660
  %774 = zext i1 %773 to i32
  br label %775

; <label>:775                                     ; preds = %765, %613
  %776 = phi i32 [ %418, %613 ], [ %774, %765 ]
  %777 = phi float [ 0.000000e+00, %613 ], [ %772, %765 ]
  %778 = phi float [ %424, %613 ], [ %656, %765 ]
  %779 = icmp ne i32 %776, 0
  %780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %781 = extractvalue %dx.types.CBufRet.f32 %780, 3
  %782 = call float @dx.op.binary.f32(i32 35, float %777, float %781)  ; FMax(a,b)
  %783 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %782)  ; FMin(a,b)
  %784 = zext i1 %779 to i32
  br label %785

; <label>:785                                     ; preds = %775, %608
  %786 = phi i32 [ %776, %775 ], [ %418, %608 ]
  %787 = phi i32 [ %784, %775 ], [ 0, %608 ]
  %788 = phi float [ %778, %775 ], [ %419, %608 ]
  %789 = phi float [ %783, %775 ], [ 0x47EFFFFFE0000000, %608 ]
  %790 = extractvalue %dx.types.CBufRet.f32 %437, 2
  %791 = fmul fast float %790, %425
  %792 = call float @dx.op.unary.f32(i32 23, float %791)  ; Log(value)
  %793 = fmul fast float %792, 0x3FE62E4300000000
  %794 = call float @dx.op.binary.f32(i32 35, float %793, float 1.000000e+00)  ; FMax(a,b)
  %795 = fmul fast float %794, %789
  %796 = call float @dx.op.binary.f32(i32 36, float %795, float %610)  ; FMin(a,b)
  %797 = call float @dx.op.binary.f32(i32 35, float %796, float %438)  ; FMax(a,b)
  %798 = fsub fast float %394, %425
  %799 = fadd fast float %798, 0x3F1A36E2E0000000
  %800 = call float @dx.op.binary.f32(i32 36, float %799, float %797)  ; FMin(a,b)
  %801 = icmp eq i32 %609, 0
  br i1 %801, label %898, label %802, !dx.controlflow.hints !46

; <label>:802                                     ; preds = %785
  %803 = fcmp fast olt float %799, %797
  %804 = fmul fast float %274, %217
  %805 = fmul fast float %804, %800
  %806 = fadd fast float %805, %424
  %807 = fmul fast float %274, %218
  %808 = fmul fast float %807, %800
  %809 = fadd fast float %808, %424
  %810 = fmul fast float %274, %219
  %811 = fmul fast float %810, %800
  %812 = fadd fast float %811, %424
  br i1 %803, label %813, label %818, !dx.controlflow.hints !47

; <label>:813                                     ; preds = %802
  %814 = fmul fast float %800, %272
  %815 = fmul fast float %800, %273
  %816 = fadd fast float %814, %422
  %817 = fadd fast float %815, %423
  br label %818

; <label>:818                                     ; preds = %813, %802
  %819 = phi float [ %816, %813 ], [ %422, %802 ]
  %820 = phi float [ %817, %813 ], [ %423, %802 ]
  %821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %822 = extractvalue %dx.types.CBufRet.f32 %821, 0
  %823 = extractvalue %dx.types.CBufRet.f32 %821, 1
  %824 = fsub fast float %819, %822
  %825 = fsub fast float %820, %823
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 0
  %828 = extractvalue %dx.types.CBufRet.f32 %826, 1
  %829 = fmul fast float %824, %827
  %830 = fmul fast float %825, %828
  %831 = fsub fast float 1.000000e+00, %830
  %832 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.i32 %832, 3
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %841, label %835, !dx.controlflow.hints !38

; <label>:835                                     ; preds = %818
  %836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %10, float %829, float %831, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %837 = extractvalue %dx.types.ResRet.f32 %836, 0
  %838 = extractvalue %dx.types.ResRet.f32 %836, 1
  %839 = extractvalue %dx.types.ResRet.f32 %836, 2
  %840 = extractvalue %dx.types.ResRet.f32 %836, 3
  br label %847

; <label>:841                                     ; preds = %818
  %842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %829, float %831, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %843 = extractvalue %dx.types.ResRet.f32 %842, 0
  %844 = extractvalue %dx.types.ResRet.f32 %842, 1
  %845 = extractvalue %dx.types.ResRet.f32 %842, 2
  %846 = extractvalue %dx.types.ResRet.f32 %842, 3
  br label %847

; <label>:847                                     ; preds = %841, %835
  %848 = phi float [ %837, %835 ], [ %843, %841 ]
  %849 = phi float [ %838, %835 ], [ %844, %841 ]
  %850 = phi float [ %839, %835 ], [ %845, %841 ]
  %851 = phi float [ %840, %835 ], [ %846, %841 ]
  %852 = extractvalue %dx.types.CBufRet.f32 %826, 3
  %853 = fmul fast float %852, %849
  %854 = fmul fast float %853, %848
  %855 = fsub fast float %853, %854
  %856 = fcmp fast ole float %855, 0.000000e+00
  %857 = extractvalue %dx.types.CBufRet.f32 %821, 2
  %858 = fadd fast float %854, %857
  %859 = fmul fast float %852, %850
  %860 = fadd fast float %859, %857
  %861 = fdiv fast float 1.000000e+00, %855
  %862 = select i1 %856, float 1.000000e+06, float %861
  %863 = fsub fast float %806, %858
  %864 = fmul fast float %862, %863
  %865 = call float @dx.op.unary.f32(i32 7, float %864)  ; Saturate(value)
  %866 = extractvalue %dx.types.CBufRet.f32 %826, 2
  %867 = fmul fast float %866, %865
  %868 = fsub fast float %866, %867
  %869 = fcmp fast olt float %806, %860
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 3
  %872 = select i1 %869, float %871, float 1.000000e+00
  %873 = fmul fast float %868, %872
  %874 = fsub fast float %809, %858
  %875 = fmul fast float %862, %874
  %876 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  %877 = fmul fast float %866, %876
  %878 = fsub fast float %866, %877
  %879 = fcmp fast olt float %809, %860
  %880 = select i1 %879, float %871, float 1.000000e+00
  %881 = fmul fast float %878, %880
  %882 = fadd fast float %881, %873
  %883 = fsub fast float %812, %858
  %884 = fmul fast float %862, %883
  %885 = call float @dx.op.unary.f32(i32 7, float %884)  ; Saturate(value)
  %886 = fmul fast float %866, %885
  %887 = fsub fast float %866, %886
  %888 = fcmp fast olt float %812, %860
  %889 = select i1 %888, float %871, float 1.000000e+00
  %890 = fmul fast float %887, %889
  %891 = fadd fast float %882, %890
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 2
  %894 = fmul fast float %800, 0x3FD5555560000000
  %895 = fmul fast float %894, %851
  %896 = fmul fast float %895, %893
  %897 = fmul fast float %896, %891
  br label %898

; <label>:898                                     ; preds = %847, %785
  %899 = phi float [ %897, %847 ], [ 0.000000e+00, %785 ]
  %900 = icmp eq i32 %787, 0
  br i1 %900, label %932, label %901, !dx.controlflow.hints !48

; <label>:901                                     ; preds = %898
  %902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.f32 %902, 1
  %904 = fsub fast float %800, %903
  %905 = extractvalue %dx.types.CBufRet.f32 %902, 3
  %906 = fmul fast float %904, %905
  %907 = call float @dx.op.unary.f32(i32 7, float %906)  ; Saturate(value)
  %908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %909 = extractvalue %dx.types.CBufRet.f32 %908, 3
  %910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %911 = extractvalue %dx.types.CBufRet.f32 %910, 2
  %912 = fsub fast float %911, %788
  %913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.f32 %913, 3
  %915 = fmul fast float %912, %914
  %916 = call float @dx.op.unary.f32(i32 7, float %915)  ; Saturate(value)
  %917 = fmul fast float %916, %909
  %918 = extractvalue %dx.types.CBufRet.f32 %913, 0
  %919 = fsub fast float %425, %918
  %920 = extractvalue %dx.types.CBufRet.f32 %913, 1
  %921 = fmul fast float %919, %920
  %922 = call float @dx.op.unary.f32(i32 7, float %921)  ; Saturate(value)
  %923 = fsub fast float 1.000000e+00, %907
  %924 = fmul fast float %922, %923
  %925 = fadd fast float %924, %907
  %926 = extractvalue %dx.types.CBufRet.f32 %902, 0
  %927 = fsub fast float %917, %926
  %928 = fmul fast float %927, %925
  %929 = fadd fast float %928, %926
  %930 = fmul fast float %929, %800
  %931 = fadd fast float %930, %899
  br label %932

; <label>:932                                     ; preds = %901, %898
  %933 = phi float [ %931, %901 ], [ %899, %898 ]
  %934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %935 = extractvalue %dx.types.CBufRet.f32 %934, 1
  %936 = fcmp fast ogt float %933, %935
  br i1 %936, label %939, label %937, !dx.controlflow.hints !49

; <label>:937                                     ; preds = %932
  %938 = fadd fast float %800, %425
  br label %1072

; <label>:939                                     ; preds = %932
  %940 = fmul fast float %933, 0xBFF7154760000000
  %941 = call float @dx.op.unary.f32(i32 21, float %940)  ; Exp(value)
  %942 = call float @dx.op.unary.f32(i32 7, float %941)  ; Saturate(value)
  %943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %944 = extractvalue %dx.types.CBufRet.f32 %943, 0
  %945 = extractvalue %dx.types.CBufRet.f32 %943, 1
  %946 = extractvalue %dx.types.CBufRet.f32 %943, 2
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 0
  %949 = fmul fast float %948, %944
  %950 = fmul fast float %948, %945
  %951 = fmul fast float %948, %946
  %952 = fadd fast float %949, %422
  %953 = fadd fast float %950, %423
  %954 = fadd fast float %951, %424
  br i1 %612, label %1025, label %955, !dx.controlflow.hints !43

; <label>:955                                     ; preds = %939
  %956 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.i32 %956, 1
  %958 = and i32 %957, 1
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %960, label %1025, !dx.controlflow.hints !44

; <label>:960                                     ; preds = %955
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 2
  %963 = extractvalue %dx.types.CBufRet.f32 %961, 3
  %964 = fmul fast float %962, %952
  %965 = fmul fast float %963, %953
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 0
  %968 = extractvalue %dx.types.CBufRet.f32 %966, 1
  %969 = fadd fast float %964, %967
  %970 = fadd fast float %965, %968
  %971 = call float @dx.op.unary.f32(i32 7, float %969)  ; Saturate(value)
  %972 = call float @dx.op.unary.f32(i32 7, float %970)  ; Saturate(value)
  %973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %11, float %971, float %972, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %974 = extractvalue %dx.types.ResRet.f32 %973, 0
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 0
  %977 = fmul fast float %976, %974
  %978 = fsub fast float %969, %971
  %979 = fsub fast float %970, %972
  %980 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %981 = extractvalue %dx.types.CBufRet.f32 %961, 1
  %982 = fmul fast float %980, %978
  %983 = fmul fast float %981, %979
  %984 = fmul fast float %982, %982
  %985 = fmul fast float %983, %983
  %986 = fadd fast float %984, %985
  %987 = call float @dx.op.unary.f32(i32 24, float %986)  ; Sqrt(value)
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 3
  %990 = fmul fast float %989, %987
  %991 = call float @dx.op.unary.f32(i32 7, float %990)  ; Saturate(value)
  %992 = extractvalue %dx.types.CBufRet.f32 %988, 2
  %993 = fsub fast float %992, %977
  %994 = fmul fast float %993, %991
  %995 = extractvalue %dx.types.CBufRet.f32 %975, 1
  %996 = fsub fast float %954, %977
  %997 = fsub fast float %996, %995
  %998 = fsub fast float %997, %994
  %999 = extractvalue %dx.types.CBufRet.i32 %956, 0
  %1000 = icmp eq i32 %999, 0
  br i1 %1000, label %1019, label %1001

; <label>:1001                                    ; preds = %960
  br label %1002

; <label>:1002                                    ; preds = %1014, %1001
  %1003 = phi i32 [ %1015, %1014 ], [ 0, %1001 ]
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 1
  %1006 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.i32 %1006, 1
  %1008 = and i32 %1007, 8
  %1009 = icmp eq i32 %1008, 0
  %1010 = fcmp fast ogt float %1005, %998
  %1011 = or i1 %1010, %1009
  br i1 %1011, label %1012, label %1013, !dx.controlflow.hints !45

; <label>:1012                                    ; preds = %1002
  br label %1014

; <label>:1013                                    ; preds = %1002
  br label %1014

; <label>:1014                                    ; preds = %1013, %1012
  %1015 = add i32 %1003, 1
  %1016 = extractvalue %dx.types.CBufRet.i32 %1006, 0
  %1017 = icmp ult i32 %1015, %1016
  br i1 %1017, label %1002, label %1018

; <label>:1018                                    ; preds = %1014
  br label %1019

; <label>:1019                                    ; preds = %1018, %960
  br label %1020

; <label>:1020                                    ; preds = %1020, %1019
  %1021 = phi i32 [ %1022, %1020 ], [ 0, %1019 ]
  %1022 = add nuw nsw i32 %1021, 1
  %1023 = icmp eq i32 %1022, 4
  br i1 %1023, label %1024, label %1020

; <label>:1024                                    ; preds = %1020
  br label %1025

; <label>:1025                                    ; preds = %1024, %955, %939
  %1026 = fsub fast float 1.000000e+00, %942
  %1027 = fdiv fast float %933, %800
  %1028 = fadd fast float %800, %425
  %1029 = fmul fast float %425, %425
  %1030 = fmul fast float %1028, %1028
  %1031 = fsub fast float %1029, %1030
  %1032 = fmul fast float %1031, -5.000000e-01
  %1033 = fmul fast float %1032, %1027
  %1034 = fadd fast float %1033, %420
  %1035 = fadd fast float %933, %428
  %1036 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.i32 %1036, 0
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1065, label %1039, !dx.controlflow.hints !50

; <label>:1039                                    ; preds = %1025
  %1040 = icmp ne i32 %433, 0
  %1041 = zext i1 %1040 to i32
  %1042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1043 = extractvalue %dx.types.CBufRet.f32 %1042, 2
  %1044 = extractvalue %dx.types.CBufRet.f32 %1042, 0
  %1045 = fsub fast float %1028, %1044
  %1046 = fmul fast float %1045, %1043
  %1047 = call float @dx.op.unary.f32(i32 7, float %1046)  ; Saturate(value)
  %1048 = fadd fast float %1047, -5.000000e-01
  %1049 = fmul fast float %1048, 2.000000e+00
  %1050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1050, 2
  %1052 = fcmp fast olt float %1049, %1051
  br i1 %1052, label %1053, label %1065, !dx.controlflow.hints !51

; <label>:1053                                    ; preds = %1039
  %1054 = fmul fast float %1049, %1049
  %1055 = fmul fast float %1026, %421
  %1056 = fmul fast float %1049, %1055
  %1057 = fmul fast float %1054, %1055
  %1058 = fmul fast float %1056, %1054
  %1059 = fmul fast float %1054, %1054
  %1060 = fmul fast float %1059, %1055
  %1061 = fadd fast float %1056, %429
  %1062 = fadd fast float %1057, %430
  %1063 = fadd fast float %1058, %431
  %1064 = fadd fast float %1060, %432
  br label %1065

; <label>:1065                                    ; preds = %1053, %1039, %1025
  %1066 = phi float [ %429, %1025 ], [ %1061, %1053 ], [ %429, %1039 ]
  %1067 = phi float [ %430, %1025 ], [ %1062, %1053 ], [ %430, %1039 ]
  %1068 = phi float [ %431, %1025 ], [ %1063, %1053 ], [ %431, %1039 ]
  %1069 = phi float [ %432, %1025 ], [ %1064, %1053 ], [ %432, %1039 ]
  %1070 = phi i32 [ %433, %1025 ], [ 1, %1053 ], [ %1041, %1039 ]
  %1071 = fmul fast float %942, %421
  br label %1072

; <label>:1072                                    ; preds = %1065, %937
  %1073 = phi float [ %938, %937 ], [ %1028, %1065 ]
  %1074 = phi float [ %420, %937 ], [ %1034, %1065 ]
  %1075 = phi float [ %421, %937 ], [ %1071, %1065 ]
  %1076 = phi float [ %428, %937 ], [ %1035, %1065 ]
  %1077 = phi float [ %429, %937 ], [ %1066, %1065 ]
  %1078 = phi float [ %430, %937 ], [ %1067, %1065 ]
  %1079 = phi float [ %431, %937 ], [ %1068, %1065 ]
  %1080 = phi float [ %432, %937 ], [ %1069, %1065 ]
  %1081 = phi i32 [ %433, %937 ], [ %1070, %1065 ]
  %1082 = fmul fast float %800, %272
  %1083 = fmul fast float %800, %273
  %1084 = fmul fast float %800, %274
  %1085 = fadd fast float %1082, %422
  %1086 = fadd fast float %1083, %423
  %1087 = fadd fast float %1084, %424
  %1088 = fcmp fast olt float %1073, %394
  %1089 = extractvalue %dx.types.CBufRet.f32 %934, 2
  %1090 = fcmp fast olt float %1089, %1075
  %1091 = and i1 %1088, %1090
  br i1 %1091, label %417, label %1092

; <label>:1092                                    ; preds = %1072
  %1093 = uitofp i32 %436 to float
  br label %1094

; <label>:1094                                    ; preds = %1092, %390
  %1095 = phi float [ 0.000000e+00, %390 ], [ %1074, %1092 ]
  %1096 = phi float [ 1.000000e+00, %390 ], [ %1075, %1092 ]
  %1097 = phi float [ 0.000000e+00, %390 ], [ %1093, %1092 ]
  %1098 = phi float [ 0.000000e+00, %390 ], [ %1076, %1092 ]
  %1099 = phi float [ 0.000000e+00, %390 ], [ %1077, %1092 ]
  %1100 = phi float [ 0.000000e+00, %390 ], [ %1078, %1092 ]
  %1101 = phi float [ 0.000000e+00, %390 ], [ %1079, %1092 ]
  %1102 = phi float [ 0.000000e+00, %390 ], [ %1080, %1092 ]
  %1103 = phi i32 [ 0, %390 ], [ %1081, %1092 ]
  %1104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.i32 %1104, 0
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1148, label %1107, !dx.controlflow.hints !52

; <label>:1107                                    ; preds = %1094
  %1108 = icmp eq i32 %1103, 0
  br i1 %1108, label %1147, label %1109, !dx.controlflow.hints !53

; <label>:1109                                    ; preds = %1107
  %1110 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1111 = extractvalue %dx.types.CBufRet.i32 %1110, 2
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1119, label %1113, !dx.controlflow.hints !54

; <label>:1113                                    ; preds = %1109
  %1114 = fsub fast float 1.000000e+00, %1096
  %1115 = fdiv fast float %1099, %1114
  %1116 = fdiv fast float %1100, %1114
  %1117 = fdiv fast float %1101, %1114
  %1118 = fdiv fast float %1102, %1114
  br label %1124

; <label>:1119                                    ; preds = %1109
  %1120 = fadd fast float %1099, %1096
  %1121 = fadd fast float %1100, %1096
  %1122 = fadd fast float %1101, %1096
  %1123 = fadd fast float %1102, %1096
  br label %1124

; <label>:1124                                    ; preds = %1119, %1113
  %1125 = phi float [ %1115, %1113 ], [ %1120, %1119 ]
  %1126 = phi float [ %1116, %1113 ], [ %1121, %1119 ]
  %1127 = phi float [ %1117, %1113 ], [ %1122, %1119 ]
  %1128 = phi float [ %1118, %1113 ], [ %1123, %1119 ]
  %1129 = call float @dx.op.binary.f32(i32 35, float %1125, float -1.000000e+00)  ; FMax(a,b)
  %1130 = call float @dx.op.binary.f32(i32 35, float %1126, float -1.000000e+00)  ; FMax(a,b)
  %1131 = call float @dx.op.binary.f32(i32 35, float %1127, float -1.000000e+00)  ; FMax(a,b)
  %1132 = call float @dx.op.binary.f32(i32 35, float %1128, float -1.000000e+00)  ; FMax(a,b)
  %1133 = call float @dx.op.binary.f32(i32 36, float %1129, float 1.000000e+00)  ; FMin(a,b)
  %1134 = call float @dx.op.binary.f32(i32 36, float %1130, float 1.000000e+00)  ; FMin(a,b)
  %1135 = call float @dx.op.binary.f32(i32 36, float %1131, float 1.000000e+00)  ; FMin(a,b)
  %1136 = call float @dx.op.binary.f32(i32 36, float %1132, float 1.000000e+00)  ; FMin(a,b)
  %1137 = fmul fast float %1133, 1.500000e+00
  %1138 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1135, float %1137)  ; FMad(a,b,c)
  %1139 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1134, float 0.000000e+00)  ; FMad(a,b,c)
  %1140 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1136, float %1139)  ; FMad(a,b,c)
  %1141 = fmul fast float %1133, 0x3FEBB67AE0000000
  %1142 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1135, float %1141)  ; FMad(a,b,c)
  %1143 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1134, float 0.000000e+00)  ; FMad(a,b,c)
  %1144 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1136, float %1143)  ; FMad(a,b,c)
  %1145 = fadd fast float %1138, 5.000000e-01
  %1146 = fadd fast float %1142, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %15, i32 0, float %1145, float %1140, float %1146, float %1144, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1148

; <label>:1147                                    ; preds = %1107
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %15, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1148

; <label>:1148                                    ; preds = %1147, %1124, %1094
  %1149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1150 = extractvalue %dx.types.CBufRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.CBufRet.f32 %1149, 1
  %1152 = extractvalue %dx.types.CBufRet.f32 %1149, 2
  %1153 = call float @dx.op.dot3.f32(i32 55, float %272, float %273, float %274, float %1150, float %1151, float %1152)  ; Dot3(ax,ay,az,bx,by,bz)
  %1154 = fmul fast float %1153, %1095
  %1155 = fcmp fast ogt float %1098, 0.000000e+00
  %1156 = fdiv fast float 1.000000e+00, %1098
  %1157 = fmul fast float %1154, %1156
  %1158 = select i1 %1155, float %1157, float %283
  %1159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1160 = extractvalue %dx.types.CBufRet.f32 %1159, 0
  %1161 = extractvalue %dx.types.CBufRet.f32 %1159, 1
  %1162 = extractvalue %dx.types.CBufRet.f32 %1159, 2
  %1163 = fmul fast float %1160, %236
  %1164 = fmul fast float %1161, %236
  %1165 = fmul fast float %1162, %236
  %1166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.f32 %1166, 0
  %1168 = extractvalue %dx.types.CBufRet.f32 %1166, 1
  %1169 = extractvalue %dx.types.CBufRet.f32 %1166, 2
  %1170 = fmul fast float %1167, %237
  %1171 = fmul fast float %1168, %237
  %1172 = fmul fast float %1169, %237
  %1173 = fadd fast float %1170, %1163
  %1174 = fadd fast float %1171, %1164
  %1175 = fadd fast float %1172, %1165
  %1176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1177 = extractvalue %dx.types.CBufRet.f32 %1176, 0
  %1178 = extractvalue %dx.types.CBufRet.f32 %1176, 1
  %1179 = extractvalue %dx.types.CBufRet.f32 %1176, 2
  %1180 = fadd fast float %1173, %1177
  %1181 = fadd fast float %1174, %1178
  %1182 = fadd fast float %1175, %1179
  %1183 = fmul fast float %1180, %1158
  %1184 = fmul fast float %1181, %1158
  %1185 = fmul fast float %1182, %1158
  %1186 = call float @dx.op.dot3.f32(i32 55, float %1183, float %1184, float %1185, float %1183, float %1184, float %1185)  ; Dot3(ax,ay,az,bx,by,bz)
  %1187 = call float @dx.op.unary.f32(i32 25, float %1186)  ; Rsqrt(value)
  %1188 = fmul fast float %1187, %1186
  %1189 = fmul fast float %1187, %1183
  %1190 = fmul fast float %1187, %1184
  %1191 = fmul fast float %1187, %1185
  %1192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.i32 %1192, 1
  %1194 = and i32 %1193, 1
  %1195 = icmp ne i32 %1194, 0
  %1196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.f32 %1196, 2
  %1198 = fcmp fast ogt float %1197, 0.000000e+00
  %1199 = and i1 %1195, %1198
  br i1 %1199, label %1200, label %1358, !dx.controlflow.hints !55

; <label>:1200                                    ; preds = %1148
  %1201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1201, 2
  %1203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1204 = extractvalue %dx.types.CBufRet.f32 %1203, 2
  %1205 = fsub fast float %1202, %1204
  %1206 = extractvalue %dx.types.CBufRet.i32 %1192, 0
  %1207 = call i32 @dx.op.binary.i32(i32 40, i32 %1206, i32 3)  ; UMin(a,b)
  %1208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1208, 0
  %1210 = extractvalue %dx.types.CBufRet.f32 %1208, 1
  %1211 = extractvalue %dx.types.CBufRet.f32 %1203, 0
  %1212 = extractvalue %dx.types.CBufRet.f32 %1203, 1
  %1213 = fsub fast float %1209, %1211
  %1214 = fsub fast float %1210, %1212
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 0
  %1217 = fcmp fast ogt float %1216, 0.000000e+00
  %1218 = fsub fast float -0.000000e+00, %1213
  %1219 = fsub fast float -0.000000e+00, %1214
  %1220 = call float @dx.op.dot2.f32(i32 54, float %1189, float %1190, float %1189, float %1190)  ; Dot2(ax,ay,bx,by)
  %1221 = call float @dx.op.dot2.f32(i32 54, float %1189, float %1190, float %1218, float %1219)  ; Dot2(ax,ay,bx,by)
  %1222 = fmul fast float %1221, 2.000000e+00
  %1223 = call float @dx.op.dot2.f32(i32 54, float %1218, float %1219, float %1218, float %1219)  ; Dot2(ax,ay,bx,by)
  %1224 = fmul fast float %1216, %1216
  %1225 = fsub fast float %1223, %1224
  %1226 = fmul fast float %1222, %1222
  %1227 = fmul fast float %1220, 4.000000e+00
  %1228 = fmul fast float %1227, %1225
  %1229 = fsub fast float %1226, %1228
  %1230 = fcmp fast ogt float %1229, 0.000000e+00
  br i1 %1230, label %1231, label %1246, !dx.controlflow.hints !56

; <label>:1231                                    ; preds = %1200
  %1232 = fcmp fast ogt float %1222, 0.000000e+00
  %1233 = call float @dx.op.unary.f32(i32 24, float %1229)  ; Sqrt(value)
  %1234 = fsub fast float -0.000000e+00, %1233
  %1235 = select i1 %1232, float %1233, float %1234
  %1236 = fadd fast float %1235, %1222
  %1237 = fmul float %1236, -5.000000e-01
  %1238 = fdiv fast float %1237, %1220
  %1239 = call float @dx.op.binary.f32(i32 35, float %1238, float 0.000000e+00)  ; FMax(a,b)
  %1240 = call float @dx.op.binary.f32(i32 36, float %1188, float %1239)  ; FMin(a,b)
  %1241 = fdiv fast float %1225, %1237
  %1242 = call float @dx.op.binary.f32(i32 35, float %1241, float 0.000000e+00)  ; FMax(a,b)
  %1243 = call float @dx.op.binary.f32(i32 36, float %1188, float %1242)  ; FMin(a,b)
  %1244 = call float @dx.op.binary.f32(i32 36, float %1240, float %1243)  ; FMin(a,b)
  %1245 = call float @dx.op.binary.f32(i32 35, float %1240, float %1243)  ; FMax(a,b)
  br label %1246

; <label>:1246                                    ; preds = %1231, %1200
  %1247 = phi float [ %1245, %1231 ], [ -1.000000e+00, %1200 ]
  %1248 = phi float [ %1244, %1231 ], [ -1.000000e+00, %1200 ]
  %1249 = phi i1 [ true, %1231 ], [ false, %1200 ]
  %1250 = and i1 %1217, %1249
  br i1 %1250, label %1251, label %1253, !dx.controlflow.hints !57

; <label>:1251                                    ; preds = %1246
  %1252 = fcmp fast oeq float %1248, %1247
  br i1 %1252, label %1358, label %1254, !dx.controlflow.hints !58

; <label>:1253                                    ; preds = %1246
  br i1 %1217, label %1358, label %1254, !dx.controlflow.hints !59

; <label>:1254                                    ; preds = %1253, %1251
  %1255 = phi float [ %1188, %1253 ], [ %1247, %1251 ]
  %1256 = phi float [ 0.000000e+00, %1253 ], [ %1248, %1251 ]
  %1257 = fcmp fast oeq float %1191, 0.000000e+00
  %1258 = fdiv fast float %1205, %1191
  %1259 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1258)  ; FMax(a,b)
  %1260 = select i1 %1257, float %1255, float %1259
  %1261 = call float @dx.op.binary.f32(i32 36, float %1255, float %1260)  ; FMin(a,b)
  %1262 = fcmp fast ogt float %1191, 0.000000e+00
  %1263 = fcmp fast olt float %1205, 0.000000e+00
  br i1 %1262, label %1264, label %1265, !dx.controlflow.hints !60

; <label>:1264                                    ; preds = %1254
  br i1 %1263, label %1358, label %1268, !dx.controlflow.hints !61

; <label>:1265                                    ; preds = %1254
  br i1 %1263, label %1266, label %1268, !dx.controlflow.hints !62

; <label>:1266                                    ; preds = %1265
  %1267 = call float @dx.op.binary.f32(i32 35, float %1256, float %1261)  ; FMax(a,b)
  br label %1268

; <label>:1268                                    ; preds = %1266, %1265, %1264
  %1269 = phi float [ %1267, %1266 ], [ %1256, %1265 ], [ %1256, %1264 ]
  %1270 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 0
  store float -1.000000e+00, float* %1270, align 4, !tbaa !63, !noalias !67
  %1271 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 1
  store float -1.000000e+00, float* %1271, align 4, !tbaa !63, !noalias !67
  %1272 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 2
  store float -1.000000e+00, float* %1272, align 4, !tbaa !63, !noalias !67
  %1273 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 0
  store float -1.000000e+00, float* %1273, align 4, !tbaa !63, !noalias !67
  %1274 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 1
  store float -1.000000e+00, float* %1274, align 4, !tbaa !63, !noalias !67
  %1275 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 2
  store float -1.000000e+00, float* %1275, align 4, !tbaa !63, !noalias !67
  %1276 = icmp sgt i32 %1207, 0
  br i1 %1276, label %1277, label %1335

; <label>:1277                                    ; preds = %1268
  br label %1278

; <label>:1278                                    ; preds = %1325, %1277
  %1279 = phi i32 [ %1326, %1325 ], [ 0, %1277 ]
  %1280 = add nuw i32 %1279, 171
  %1281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %1280)  ; CBufferLoadLegacy(handle,regIndex)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1281, 0
  %1283 = extractvalue %dx.types.CBufRet.f32 %1281, 1
  %1284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1285 = extractvalue %dx.types.CBufRet.f32 %1284, 0
  %1286 = extractvalue %dx.types.CBufRet.f32 %1284, 1
  %1287 = fsub fast float %1282, %1285
  %1288 = fsub fast float %1283, %1286
  %1289 = extractvalue %dx.types.CBufRet.f32 %1281, 2
  %1290 = fsub fast float -0.000000e+00, %1287
  %1291 = fsub fast float -0.000000e+00, %1288
  %1292 = call float @dx.op.dot2.f32(i32 54, float %1189, float %1190, float %1290, float %1291)  ; Dot2(ax,ay,bx,by)
  %1293 = fmul fast float %1292, 2.000000e+00
  %1294 = call float @dx.op.dot2.f32(i32 54, float %1290, float %1291, float %1290, float %1291)  ; Dot2(ax,ay,bx,by)
  %1295 = fmul fast float %1289, %1289
  %1296 = fsub fast float %1294, %1295
  %1297 = fmul fast float %1293, %1293
  %1298 = fmul fast float %1227, %1296
  %1299 = fsub fast float %1297, %1298
  %1300 = fcmp fast ogt float %1299, 0.000000e+00
  br i1 %1300, label %1301, label %1316, !dx.controlflow.hints !56

; <label>:1301                                    ; preds = %1278
  %1302 = fcmp fast ogt float %1293, 0.000000e+00
  %1303 = call float @dx.op.unary.f32(i32 24, float %1299)  ; Sqrt(value)
  %1304 = fsub fast float -0.000000e+00, %1303
  %1305 = select i1 %1302, float %1303, float %1304
  %1306 = fadd fast float %1305, %1293
  %1307 = fmul float %1306, -5.000000e-01
  %1308 = fdiv fast float %1307, %1220
  %1309 = call float @dx.op.binary.f32(i32 35, float %1308, float 0.000000e+00)  ; FMax(a,b)
  %1310 = call float @dx.op.binary.f32(i32 36, float %1255, float %1309)  ; FMin(a,b)
  %1311 = fdiv fast float %1296, %1307
  %1312 = call float @dx.op.binary.f32(i32 35, float %1311, float 0.000000e+00)  ; FMax(a,b)
  %1313 = call float @dx.op.binary.f32(i32 36, float %1255, float %1312)  ; FMin(a,b)
  %1314 = call float @dx.op.binary.f32(i32 36, float %1310, float %1313)  ; FMin(a,b)
  %1315 = call float @dx.op.binary.f32(i32 35, float %1310, float %1313)  ; FMax(a,b)
  br label %1316

; <label>:1316                                    ; preds = %1301, %1278
  %1317 = phi float [ %1315, %1301 ], [ -1.000000e+00, %1278 ]
  %1318 = phi float [ %1314, %1301 ], [ -1.000000e+00, %1278 ]
  %1319 = phi i1 [ true, %1301 ], [ false, %1278 ]
  br i1 %1319, label %1320, label %1325, !dx.controlflow.hints !78

; <label>:1320                                    ; preds = %1316
  %1321 = call float @dx.op.binary.f32(i32 35, float %1269, float %1318)  ; FMax(a,b)
  %1322 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 %1279
  store float %1321, float* %1322, align 4, !tbaa !63, !noalias !67
  %1323 = call float @dx.op.binary.f32(i32 35, float %1269, float %1317)  ; FMax(a,b)
  %1324 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 %1279
  store float %1323, float* %1324, align 4, !tbaa !63, !noalias !67
  br label %1325

; <label>:1325                                    ; preds = %1320, %1316
  %1326 = add nuw nsw i32 %1279, 1
  %1327 = icmp eq i32 %1326, %1207
  br i1 %1327, label %1328, label %1278

; <label>:1328                                    ; preds = %1325
  %1329 = load float, float* %1272, align 4, !tbaa !63, !alias.scope !79, !noalias !82
  %1330 = load float, float* %1271, align 4, !tbaa !63, !alias.scope !85, !noalias !86
  %1331 = load float, float* %1270, align 4, !tbaa !63, !alias.scope !87, !noalias !88
  %1332 = load float, float* %1275, align 4, !tbaa !63, !alias.scope !89, !noalias !92
  %1333 = load float, float* %1274, align 4, !tbaa !63, !alias.scope !95, !noalias !96
  %1334 = load float, float* %1273, align 4, !tbaa !63, !alias.scope !97, !noalias !98
  br label %1335

; <label>:1335                                    ; preds = %1328, %1268
  %1336 = phi float [ -1.000000e+00, %1268 ], [ %1334, %1328 ]
  %1337 = phi float [ -1.000000e+00, %1268 ], [ %1333, %1328 ]
  %1338 = phi float [ -1.000000e+00, %1268 ], [ %1332, %1328 ]
  %1339 = phi float [ -1.000000e+00, %1268 ], [ %1331, %1328 ]
  %1340 = phi float [ -1.000000e+00, %1268 ], [ %1330, %1328 ]
  %1341 = phi float [ -1.000000e+00, %1268 ], [ %1329, %1328 ]
  %1342 = call float @dx.op.binary.f32(i32 36, float %1340, float %1341)  ; FMin(a,b)
  %1343 = call float @dx.op.binary.f32(i32 36, float %1339, float %1342)  ; FMin(a,b)
  %1344 = call float @dx.op.binary.f32(i32 35, float %1339, float %1340)  ; FMax(a,b)
  %1345 = call float @dx.op.binary.f32(i32 36, float %1344, float %1341)  ; FMin(a,b)
  %1346 = call float @dx.op.binary.f32(i32 36, float %1339, float %1340)  ; FMin(a,b)
  %1347 = call float @dx.op.binary.f32(i32 35, float %1346, float %1345)  ; FMax(a,b)
  %1348 = call float @dx.op.binary.f32(i32 35, float %1340, float %1341)  ; FMax(a,b)
  %1349 = call float @dx.op.binary.f32(i32 35, float %1339, float %1348)  ; FMax(a,b)
  store float %1343, float* %1270, align 4, !tbaa !63, !alias.scope !87, !noalias !88
  store float %1347, float* %1271, align 4, !tbaa !63, !alias.scope !85, !noalias !86
  store float %1349, float* %1272, align 4, !tbaa !63, !alias.scope !79, !noalias !82
  %1350 = call float @dx.op.binary.f32(i32 36, float %1337, float %1338)  ; FMin(a,b)
  %1351 = call float @dx.op.binary.f32(i32 36, float %1336, float %1350)  ; FMin(a,b)
  %1352 = call float @dx.op.binary.f32(i32 35, float %1336, float %1337)  ; FMax(a,b)
  %1353 = call float @dx.op.binary.f32(i32 36, float %1352, float %1338)  ; FMin(a,b)
  %1354 = call float @dx.op.binary.f32(i32 36, float %1336, float %1337)  ; FMin(a,b)
  %1355 = call float @dx.op.binary.f32(i32 35, float %1354, float %1353)  ; FMax(a,b)
  %1356 = call float @dx.op.binary.f32(i32 35, float %1337, float %1338)  ; FMax(a,b)
  %1357 = call float @dx.op.binary.f32(i32 35, float %1336, float %1356)  ; FMax(a,b)
  store float %1351, float* %1273, align 4, !tbaa !63, !alias.scope !97, !noalias !98
  store float %1355, float* %1274, align 4, !tbaa !63, !alias.scope !95, !noalias !96
  store float %1357, float* %1275, align 4, !tbaa !63, !alias.scope !89, !noalias !92
  br label %1358

; <label>:1358                                    ; preds = %1335, %1264, %1253, %1251, %1148
  %1359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1360 = extractvalue %dx.types.CBufRet.f32 %1359, 2
  %1361 = fmul fast float %1360, %1158
  %1362 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1363 = fptoui float %1097 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1364 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %16
  store i32 %1363, i32 addrspace(3)* %1364, align 4, !tbaa !99
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1365 = and i32 %16, 63
  %1366 = icmp ult i32 %1365, 32
  br i1 %1366, label %1367, label %1373, !dx.controlflow.hints !101

; <label>:1367                                    ; preds = %1358
  %1368 = add i32 %16, 32
  %1369 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1368
  %1370 = load i32, i32 addrspace(3)* %1369, align 4, !tbaa !99
  %1371 = load i32, i32 addrspace(3)* %1364, align 4, !tbaa !99
  %1372 = call i32 @dx.op.binary.i32(i32 40, i32 %1371, i32 %1370)  ; UMin(a,b)
  store i32 %1372, i32 addrspace(3)* %1364, align 4, !tbaa !99
  br label %1373

; <label>:1373                                    ; preds = %1367, %1358
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1374 = icmp ult i32 %1365, 16
  br i1 %1374, label %1375, label %1381, !dx.controlflow.hints !102

; <label>:1375                                    ; preds = %1373
  %1376 = add i32 %16, 16
  %1377 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1376
  %1378 = load i32, i32 addrspace(3)* %1377, align 4, !tbaa !99
  %1379 = load i32, i32 addrspace(3)* %1364, align 4, !tbaa !99
  %1380 = call i32 @dx.op.binary.i32(i32 40, i32 %1379, i32 %1378)  ; UMin(a,b)
  store i32 %1380, i32 addrspace(3)* %1364, align 4, !tbaa !99
  br label %1381

; <label>:1381                                    ; preds = %1375, %1373
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1382 = icmp ult i32 %1365, 8
  br i1 %1382, label %1383, label %1389, !dx.controlflow.hints !103

; <label>:1383                                    ; preds = %1381
  %1384 = add i32 %16, 8
  %1385 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1384
  %1386 = load i32, i32 addrspace(3)* %1385, align 4, !tbaa !99
  %1387 = load i32, i32 addrspace(3)* %1364, align 4, !tbaa !99
  %1388 = call i32 @dx.op.binary.i32(i32 40, i32 %1387, i32 %1386)  ; UMin(a,b)
  store i32 %1388, i32 addrspace(3)* %1364, align 4, !tbaa !99
  br label %1389

; <label>:1389                                    ; preds = %1383, %1381
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1390 = icmp ult i32 %1365, 4
  br i1 %1390, label %1391, label %1397, !dx.controlflow.hints !104

; <label>:1391                                    ; preds = %1389
  %1392 = add i32 %16, 4
  %1393 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1392
  %1394 = load i32, i32 addrspace(3)* %1393, align 4, !tbaa !99
  %1395 = load i32, i32 addrspace(3)* %1364, align 4, !tbaa !99
  %1396 = call i32 @dx.op.binary.i32(i32 40, i32 %1395, i32 %1394)  ; UMin(a,b)
  store i32 %1396, i32 addrspace(3)* %1364, align 4, !tbaa !99
  br label %1397

; <label>:1397                                    ; preds = %1391, %1389
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1398 = icmp ult i32 %1365, 2
  br i1 %1398, label %1399, label %1405, !dx.controlflow.hints !105

; <label>:1399                                    ; preds = %1397
  %1400 = add i32 %16, 2
  %1401 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1400
  %1402 = load i32, i32 addrspace(3)* %1401, align 4, !tbaa !99
  %1403 = load i32, i32 addrspace(3)* %1364, align 4, !tbaa !99
  %1404 = call i32 @dx.op.binary.i32(i32 40, i32 %1403, i32 %1402)  ; UMin(a,b)
  store i32 %1404, i32 addrspace(3)* %1364, align 4, !tbaa !99
  br label %1405

; <label>:1405                                    ; preds = %1399, %1397
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1406 = icmp eq i32 %1365, 0
  br i1 %1406, label %1407, label %1413, !dx.controlflow.hints !106

; <label>:1407                                    ; preds = %1405
  %1408 = add i32 %16, 1
  %1409 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1408
  %1410 = load i32, i32 addrspace(3)* %1409, align 4, !tbaa !99
  %1411 = load i32, i32 addrspace(3)* %1364, align 4, !tbaa !99
  %1412 = call i32 @dx.op.binary.i32(i32 40, i32 %1411, i32 %1410)  ; UMin(a,b)
  store i32 %1412, i32 addrspace(3)* %1364, align 4, !tbaa !99
  br label %1413

; <label>:1413                                    ; preds = %1407, %1405
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1414 = and i32 %16, -64
  %1415 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1414
  %1416 = load i32, i32 addrspace(3)* %1415, align 4, !tbaa !99
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1363, i32 addrspace(3)* %1364, align 4, !tbaa !99
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1366, label %1417, label %1423, !dx.controlflow.hints !107

; <label>:1417                                    ; preds = %1413
  %1418 = add i32 %16, 32
  %1419 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1418
  %1420 = load i32, i32 addrspace(3)* %1419, align 4, !tbaa !99
  %1421 = load i32, i32 addrspace(3)* %1364, align 4, !tbaa !99
  %1422 = call i32 @dx.op.binary.i32(i32 39, i32 %1421, i32 %1420)  ; UMax(a,b)
  store i32 %1422, i32 addrspace(3)* %1364, align 4, !tbaa !99
  br label %1423

; <label>:1423                                    ; preds = %1417, %1413
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1374, label %1424, label %1430, !dx.controlflow.hints !108

; <label>:1424                                    ; preds = %1423
  %1425 = add i32 %16, 16
  %1426 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1425
  %1427 = load i32, i32 addrspace(3)* %1426, align 4, !tbaa !99
  %1428 = load i32, i32 addrspace(3)* %1364, align 4, !tbaa !99
  %1429 = call i32 @dx.op.binary.i32(i32 39, i32 %1428, i32 %1427)  ; UMax(a,b)
  store i32 %1429, i32 addrspace(3)* %1364, align 4, !tbaa !99
  br label %1430

; <label>:1430                                    ; preds = %1424, %1423
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1382, label %1431, label %1437, !dx.controlflow.hints !109

; <label>:1431                                    ; preds = %1430
  %1432 = add i32 %16, 8
  %1433 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1432
  %1434 = load i32, i32 addrspace(3)* %1433, align 4, !tbaa !99
  %1435 = load i32, i32 addrspace(3)* %1364, align 4, !tbaa !99
  %1436 = call i32 @dx.op.binary.i32(i32 39, i32 %1435, i32 %1434)  ; UMax(a,b)
  store i32 %1436, i32 addrspace(3)* %1364, align 4, !tbaa !99
  br label %1437

; <label>:1437                                    ; preds = %1431, %1430
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1390, label %1438, label %1444, !dx.controlflow.hints !110

; <label>:1438                                    ; preds = %1437
  %1439 = add i32 %16, 4
  %1440 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1439
  %1441 = load i32, i32 addrspace(3)* %1440, align 4, !tbaa !99
  %1442 = load i32, i32 addrspace(3)* %1364, align 4, !tbaa !99
  %1443 = call i32 @dx.op.binary.i32(i32 39, i32 %1442, i32 %1441)  ; UMax(a,b)
  store i32 %1443, i32 addrspace(3)* %1364, align 4, !tbaa !99
  br label %1444

; <label>:1444                                    ; preds = %1438, %1437
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1398, label %1445, label %1451, !dx.controlflow.hints !111

; <label>:1445                                    ; preds = %1444
  %1446 = add i32 %16, 2
  %1447 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1446
  %1448 = load i32, i32 addrspace(3)* %1447, align 4, !tbaa !99
  %1449 = load i32, i32 addrspace(3)* %1364, align 4, !tbaa !99
  %1450 = call i32 @dx.op.binary.i32(i32 39, i32 %1449, i32 %1448)  ; UMax(a,b)
  store i32 %1450, i32 addrspace(3)* %1364, align 4, !tbaa !99
  br label %1451

; <label>:1451                                    ; preds = %1445, %1444
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1406, label %1452, label %1458, !dx.controlflow.hints !112

; <label>:1452                                    ; preds = %1451
  %1453 = add i32 %16, 1
  %1454 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1453
  %1455 = load i32, i32 addrspace(3)* %1454, align 4, !tbaa !99
  %1456 = load i32, i32 addrspace(3)* %1364, align 4, !tbaa !99
  %1457 = call i32 @dx.op.binary.i32(i32 39, i32 %1456, i32 %1455)  ; UMax(a,b)
  store i32 %1457, i32 addrspace(3)* %1364, align 4, !tbaa !99
  br label %1458

; <label>:1458                                    ; preds = %1452, %1451
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1459 = load i32, i32 addrspace(3)* %1415, align 4, !tbaa !99
  %1460 = uitofp i32 %1459 to float
  %1461 = uitofp i32 %1416 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %14, i32 %15, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1463 = extractvalue %dx.types.CBufRet.f32 %1462, 0
  %1464 = fmul fast float %1463, %1097
  %1465 = fmul fast float %1463, %1460
  %1466 = fmul fast float %1463, %1461
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %14, i32 %15, i32 undef, float %1464, float %1465, float %1466, float %1464, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %14, i32 %15, i32 undef, float %1362, float %1362, float %1362, float %1362, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!24 = !{void ()* @cs_fog_raymarching_heightmap_brfog, !"cs_fog_raymarching_heightmap_brfog", null, !4, !25}
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
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 1}
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
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = !{!64, !64, i64 0}
!64 = !{!"float", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C/C++ TBAA"}
!67 = !{!68, !70, !72, !73, !75, !76, !77}
!68 = distinct !{!68, !69, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!69 = distinct !{!69, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!70 = distinct !{!70, !71, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!71 = distinct !{!71, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!72 = distinct !{!72, !71, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!73 = distinct !{!73, !74, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!74 = distinct !{!74, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!75 = distinct !{!75, !74, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!76 = distinct !{!76, !74, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!77 = distinct !{!77, !74, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = !{!80}
!80 = distinct !{!80, !81, !"\01?sort@@YAXAIAM00@Z: %c"}
!81 = distinct !{!81, !"\01?sort@@YAXAIAM00@Z"}
!82 = !{!83, !84, !68, !70, !72, !73, !75, !76, !77}
!83 = distinct !{!83, !81, !"\01?sort@@YAXAIAM00@Z: %a"}
!84 = distinct !{!84, !81, !"\01?sort@@YAXAIAM00@Z: %b"}
!85 = !{!84}
!86 = !{!83, !80, !68, !70, !72, !73, !75, !76, !77}
!87 = !{!83}
!88 = !{!84, !80, !68, !70, !72, !73, !75, !76, !77}
!89 = !{!90}
!90 = distinct !{!90, !91, !"\01?sort@@YAXAIAM00@Z: %c"}
!91 = distinct !{!91, !"\01?sort@@YAXAIAM00@Z"}
!92 = !{!93, !94, !68, !70, !72, !73, !75, !76, !77}
!93 = distinct !{!93, !91, !"\01?sort@@YAXAIAM00@Z: %a"}
!94 = distinct !{!94, !91, !"\01?sort@@YAXAIAM00@Z: %b"}
!95 = !{!94}
!96 = !{!93, !90, !68, !70, !72, !73, !75, !76, !77}
!97 = !{!93}
!98 = !{!94, !90, !68, !70, !72, !73, !75, !76, !77}
!99 = !{!100, !100, i64 0}
!100 = !{!"int", !65, i64 0}
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
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}

