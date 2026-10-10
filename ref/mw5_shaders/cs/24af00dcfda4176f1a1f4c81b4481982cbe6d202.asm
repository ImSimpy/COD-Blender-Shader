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
; shader hash: d5cd70ee8db70a86bbd5fbe50f51d9c8
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
;                                   texture     f32          2d      T0            t13     1
;                                   texture     f32          2d      T1             t0     1
;                                   texture    byte         r/o      T2            t17     1
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

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

define void @cs_fog_raymarching_air() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %12 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = add i32 %11, %10
  %16 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.i32 %16, 1
  %18 = add i32 %15, %17
  %19 = lshr i32 %18, 1
  %20 = and i32 %19, 1
  %21 = and i32 %18, 1
  %22 = xor i32 %20, %21
  %23 = shl i32 %10, 1
  %24 = shl i32 %11, 1
  %25 = or i32 %22, %23
  %26 = or i32 %20, %24
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = extractvalue %dx.types.ResRet.i32 %29, 1
  %32 = extractvalue %dx.types.ResRet.i32 %29, 2
  %33 = extractvalue %dx.types.ResRet.i32 %29, 3
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = extractvalue %dx.types.ResRet.i32 %34, 1
  %37 = extractvalue %dx.types.ResRet.i32 %34, 2
  %38 = extractvalue %dx.types.ResRet.i32 %34, 3
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = extractvalue %dx.types.ResRet.i32 %39, 1
  %42 = extractvalue %dx.types.ResRet.i32 %39, 2
  %43 = extractvalue %dx.types.ResRet.i32 %39, 3
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 2
  %46 = fmul fast float %45, %45
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 0
  %49 = extractvalue %dx.types.CBufRet.f32 %47, 1
  %50 = extractvalue %dx.types.CBufRet.f32 %47, 2
  %51 = fmul fast float %50, 0x3FF17B1420000000
  %52 = icmp eq i32 %12, 0
  br i1 %52, label %53, label %194, !dx.controlflow.hints !22

; <label>:53                                      ; preds = %0
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 3
  %58 = extractvalue %dx.types.ResRet.i32 %27, 1
  %59 = and i32 %58, 65535
  %60 = call float @dx.op.legacyF16ToF32(i32 131, i32 %59)  ; LegacyF16ToF32(value)
  %61 = lshr i32 %28, 16
  %62 = call float @dx.op.legacyF16ToF32(i32 131, i32 %61)  ; LegacyF16ToF32(value)
  %63 = and i32 %28, 65535
  %64 = call float @dx.op.legacyF16ToF32(i32 131, i32 %63)  ; LegacyF16ToF32(value)
  %65 = lshr i32 %33, 16
  %66 = call float @dx.op.legacyF16ToF32(i32 131, i32 %65)  ; LegacyF16ToF32(value)
  %67 = and i32 %33, 65535
  %68 = call float @dx.op.legacyF16ToF32(i32 131, i32 %67)  ; LegacyF16ToF32(value)
  %69 = lshr i32 %32, 16
  %70 = call float @dx.op.legacyF16ToF32(i32 131, i32 %69)  ; LegacyF16ToF32(value)
  %71 = and i32 %32, 65535
  %72 = call float @dx.op.legacyF16ToF32(i32 131, i32 %71)  ; LegacyF16ToF32(value)
  %73 = lshr i32 %31, 16
  %74 = call float @dx.op.legacyF16ToF32(i32 131, i32 %73)  ; LegacyF16ToF32(value)
  %75 = lshr i32 %30, 16
  %76 = call float @dx.op.legacyF16ToF32(i32 131, i32 %75)  ; LegacyF16ToF32(value)
  %77 = and i32 %30, 65535
  %78 = call float @dx.op.legacyF16ToF32(i32 131, i32 %77)  ; LegacyF16ToF32(value)
  %79 = lshr i32 %38, 16
  %80 = call float @dx.op.legacyF16ToF32(i32 131, i32 %79)  ; LegacyF16ToF32(value)
  %81 = and i32 %38, 65535
  %82 = call float @dx.op.legacyF16ToF32(i32 131, i32 %81)  ; LegacyF16ToF32(value)
  %83 = lshr i32 %37, 16
  %84 = call float @dx.op.legacyF16ToF32(i32 131, i32 %83)  ; LegacyF16ToF32(value)
  %85 = and i32 %37, 65535
  %86 = call float @dx.op.legacyF16ToF32(i32 131, i32 %85)  ; LegacyF16ToF32(value)
  %87 = lshr i32 %36, 16
  %88 = call float @dx.op.legacyF16ToF32(i32 131, i32 %87)  ; LegacyF16ToF32(value)
  %89 = and i32 %36, 65535
  %90 = call float @dx.op.legacyF16ToF32(i32 131, i32 %89)  ; LegacyF16ToF32(value)
  %91 = and i32 %35, 65535
  %92 = call float @dx.op.legacyF16ToF32(i32 131, i32 %91)  ; LegacyF16ToF32(value)
  %93 = lshr i32 %43, 16
  %94 = call float @dx.op.legacyF16ToF32(i32 131, i32 %93)  ; LegacyF16ToF32(value)
  %95 = and i32 %43, 65535
  %96 = call float @dx.op.legacyF16ToF32(i32 131, i32 %95)  ; LegacyF16ToF32(value)
  %97 = lshr i32 %42, 16
  %98 = call float @dx.op.legacyF16ToF32(i32 131, i32 %97)  ; LegacyF16ToF32(value)
  %99 = and i32 %42, 65535
  %100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %99)  ; LegacyF16ToF32(value)
  %101 = lshr i32 %41, 16
  %102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %101)  ; LegacyF16ToF32(value)
  %103 = and i32 %41, 65535
  %104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %103)  ; LegacyF16ToF32(value)
  %105 = lshr i32 %40, 16
  %106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %105)  ; LegacyF16ToF32(value)
  %107 = and i32 %31, 65535
  %108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %107)  ; LegacyF16ToF32(value)
  %109 = lshr i32 %35, 16
  %110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %109)  ; LegacyF16ToF32(value)
  %111 = and i32 %40, 65535
  %112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %111)  ; LegacyF16ToF32(value)
  %113 = fmul fast float %108, 0x3FD20DD760000000
  %114 = fmul fast float %50, %45
  %115 = fmul fast float %114, %72
  %116 = fmul fast float %50, %50
  %117 = fmul fast float %116, 0x3FEE471020000000
  %118 = fadd fast float %117, 0xBFD42F6020000000
  %119 = fmul fast float %64, %118
  %120 = fmul fast float %70, %48
  %121 = fmul fast float %74, %49
  %122 = fmul fast float %48, %46
  %123 = fmul fast float %122, %51
  %124 = fmul fast float %123, %62
  %125 = fsub fast float -0.000000e+00, %124
  %126 = fmul fast float %49, %46
  %127 = fmul fast float %126, %51
  %128 = fmul fast float %127, %66
  %129 = fmul fast float %48, %48
  %130 = fmul fast float %49, %49
  %131 = fsub fast float %129, %130
  %132 = fmul fast float %131, 0x3FE17B1420000000
  %133 = fmul fast float %132, %60
  %134 = fmul fast float %49, 0x3FF17B1420000000
  %135 = fmul fast float %134, %48
  %136 = fmul fast float %135, %68
  %137 = fadd fast float %121, %120
  %138 = fmul fast float %137, %45
  %139 = fsub fast float %138, %115
  %140 = fmul fast float %139, 0x3FDF454380000000
  %141 = fadd fast float %119, %133
  %142 = fadd fast float %141, %136
  %143 = fmul fast float %142, %46
  %144 = fsub fast float %125, %128
  %145 = fadd fast float %144, %113
  %146 = fadd fast float %145, %140
  %147 = fadd fast float %146, %143
  %148 = fmul fast float %55, %57
  %149 = fmul fast float %148, %147
  %150 = fmul fast float %110, 0x3FD20DD760000000
  %151 = fmul fast float %114, %88
  %152 = fmul fast float %80, %118
  %153 = fmul fast float %86, %48
  %154 = fmul fast float %90, %49
  %155 = fmul fast float %123, %78
  %156 = fsub fast float -0.000000e+00, %155
  %157 = fmul fast float %127, %82
  %158 = fmul fast float %132, %76
  %159 = fmul fast float %135, %84
  %160 = fadd fast float %154, %153
  %161 = fmul fast float %160, %45
  %162 = fsub fast float %161, %151
  %163 = fmul fast float %162, 0x3FDF454380000000
  %164 = fadd fast float %152, %158
  %165 = fadd fast float %164, %159
  %166 = fmul fast float %165, %46
  %167 = fsub fast float %156, %157
  %168 = fadd fast float %167, %150
  %169 = fadd fast float %168, %163
  %170 = fadd fast float %169, %166
  %171 = fmul fast float %148, %170
  %172 = fmul fast float %112, 0x3FD20DD760000000
  %173 = fmul fast float %114, %104
  %174 = fmul fast float %96, %118
  %175 = fmul fast float %102, %48
  %176 = fmul fast float %106, %49
  %177 = fmul fast float %123, %94
  %178 = fsub fast float -0.000000e+00, %177
  %179 = fmul fast float %127, %98
  %180 = fmul fast float %132, %92
  %181 = fmul fast float %135, %100
  %182 = fadd fast float %176, %175
  %183 = fmul fast float %182, %45
  %184 = fsub fast float %183, %173
  %185 = fmul fast float %184, 0x3FDF454380000000
  %186 = fadd fast float %174, %180
  %187 = fadd fast float %186, %181
  %188 = fmul fast float %187, %46
  %189 = fsub fast float %178, %179
  %190 = fadd fast float %189, %172
  %191 = fadd fast float %190, %185
  %192 = fadd fast float %191, %188
  %193 = fmul fast float %148, %192
  br label %194

; <label>:194                                     ; preds = %53, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %195 = uitofp i32 %25 to float
  %196 = uitofp i32 %26 to float
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 2
  %199 = fmul fast float %198, 0x3FE3C6EF40000000
  %200 = frem fast float %195, 2.560000e+02
  %201 = frem fast float %196, 2.560000e+02
  %202 = fptoui float %200 to i32
  %203 = fptoui float %201 to i32
  %204 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %202, i32 %203, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 1
  %206 = extractvalue %dx.types.ResRet.f32 %204, 2
  %207 = extractvalue %dx.types.ResRet.f32 %204, 3
  %208 = fadd fast float %205, %199
  %209 = fadd fast float %206, %199
  %210 = fadd fast float %207, %199
  %211 = call float @dx.op.unary.f32(i32 22, float %208)  ; Frc(value)
  %212 = call float @dx.op.unary.f32(i32 22, float %209)  ; Frc(value)
  %213 = call float @dx.op.unary.f32(i32 22, float %210)  ; Frc(value)
  %214 = fadd fast float %212, %195
  %215 = fadd fast float %213, %196
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %218 = extractvalue %dx.types.CBufRet.f32 %216, 3
  %219 = fmul fast float %217, %214
  %220 = fmul fast float %218, %215
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = extractvalue %dx.types.CBufRet.f32 %221, 1
  %224 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 1
  %227 = fmul fast float %219, 2.000000e+00
  %228 = fmul fast float %220, 2.000000e+00
  %229 = fsub fast float 1.000000e+00, %227
  %230 = fsub fast float 1.000000e+00, %228
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %233 = extractvalue %dx.types.CBufRet.f32 %231, 1
  %234 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %235 = fmul fast float %232, %229
  %236 = fmul fast float %233, %229
  %237 = fmul fast float %234, %229
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 0
  %240 = extractvalue %dx.types.CBufRet.f32 %238, 1
  %241 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %242 = fmul fast float %239, %230
  %243 = fmul fast float %240, %230
  %244 = fmul fast float %241, %230
  %245 = fadd fast float %242, %235
  %246 = fadd fast float %243, %236
  %247 = fadd fast float %244, %237
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 0
  %250 = extractvalue %dx.types.CBufRet.f32 %248, 1
  %251 = extractvalue %dx.types.CBufRet.f32 %248, 2
  %252 = fadd fast float %245, %249
  %253 = fadd fast float %246, %250
  %254 = fadd fast float %247, %251
  %255 = fmul fast float %252, %226
  %256 = fmul fast float %253, %226
  %257 = fmul fast float %254, %226
  %258 = fmul fast float %255, %255
  %259 = fmul fast float %256, %256
  %260 = fadd fast float %258, %259
  %261 = fmul fast float %257, %257
  %262 = fadd fast float %260, %261
  %263 = call float @dx.op.unary.f32(i32 24, float %262)  ; Sqrt(value)
  %264 = fdiv fast float 1.000000e+00, %263
  %265 = fmul fast float %255, %264
  %266 = fmul fast float %256, %264
  %267 = fmul fast float %257, %264
  %268 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %25, i32 %26, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = fcmp fast ogt float %269, -1.000000e+00
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 1
  %273 = select i1 %270, float %272, float 1.000000e+00
  %274 = fadd fast float %269, 1.000000e+00
  %275 = fmul fast float %273, %274
  %276 = call float @dx.op.unary.f32(i32 6, float %275)  ; FAbs(value)
  %277 = fdiv fast float 1.000000e+00, %226
  %278 = fmul fast float %277, %263
  %279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.f32 %279, 1
  %281 = fmul fast float %280, %278
  %282 = fmul fast float %278, %276
  %283 = extractvalue %dx.types.CBufRet.f32 %271, 3
  %284 = fcmp fast oge float %276, %283
  %285 = call float @dx.op.binary.f32(i32 36, float %282, float %281)  ; FMin(a,b)
  %286 = select i1 %284, float %281, float %285
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 3
  %289 = fsub fast float -0.000000e+00, %222
  %290 = fsub fast float -0.000000e+00, %223
  %291 = fsub fast float %288, %224
  %292 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %289, float %290, float %291)  ; Dot3(ax,ay,az,bx,by,bz)
  %293 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %265, float %266, float %267)  ; Dot3(ax,ay,az,bx,by,bz)
  %294 = fdiv fast float 1.000000e+00, %293
  %295 = fmul fast float %294, %292
  %296 = fcmp fast olt float %295, 0.000000e+00
  %297 = fcmp fast ogt float %267, 0.000000e+00
  %298 = and i1 %297, %296
  br i1 %298, label %303, label %299, !dx.controlflow.hints !23

; <label>:299                                     ; preds = %194
  %300 = fcmp fast olt float %267, 0.000000e+00
  br i1 %300, label %301, label %303, !dx.controlflow.hints !24

; <label>:301                                     ; preds = %299
  %302 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %295)  ; FMax(a,b)
  br label %303

; <label>:303                                     ; preds = %301, %299, %194
  %304 = phi float [ 0.000000e+00, %194 ], [ %302, %301 ], [ 0.000000e+00, %299 ]
  %305 = phi float [ 0.000000e+00, %194 ], [ 0x47EFFFFFE0000000, %301 ], [ %295, %299 ]
  %306 = fcmp fast oeq float %305, 0.000000e+00
  br i1 %306, label %310, label %307, !dx.controlflow.hints !25

; <label>:307                                     ; preds = %303
  %308 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %304)  ; FMin(a,b)
  %309 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %305)  ; FMax(a,b)
  br label %310

; <label>:310                                     ; preds = %307, %303
  %311 = phi i32 [ 1, %307 ], [ 0, %303 ]
  %312 = phi float [ %309, %307 ], [ -1.000000e+00, %303 ]
  %313 = phi float [ %308, %307 ], [ 0x47EFFFFFE0000000, %303 ]
  %314 = call float @dx.op.binary.f32(i32 36, float %286, float %312)  ; FMin(a,b)
  %315 = call float @dx.op.binary.f32(i32 35, float %263, float %313)  ; FMax(a,b)
  %316 = extractvalue %dx.types.CBufRet.f32 %287, 0
  %317 = fmul fast float %211, 2.000000e+00
  %318 = fadd fast float %317, -1.000000e+00
  %319 = fmul fast float %316, %318
  %320 = fadd fast float %319, %315
  %321 = fcmp fast olt float %320, %314
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 2
  %324 = fcmp fast olt float %323, 1.000000e+00
  %325 = and i1 %324, %321
  br i1 %325, label %326, label %502

; <label>:326                                     ; preds = %310
  %327 = fmul fast float %320, %267
  %328 = fadd fast float %327, %224
  %329 = fmul fast float %320, %266
  %330 = fadd fast float %329, %223
  %331 = fmul fast float %320, %265
  %332 = fadd fast float %331, %222
  br label %333

; <label>:333                                     ; preds = %480, %326
  %334 = phi float [ %482, %480 ], [ 0.000000e+00, %326 ]
  %335 = phi float [ %483, %480 ], [ 1.000000e+00, %326 ]
  %336 = phi float [ %493, %480 ], [ %332, %326 ]
  %337 = phi float [ %494, %480 ], [ %330, %326 ]
  %338 = phi float [ %495, %480 ], [ %328, %326 ]
  %339 = phi float [ %481, %480 ], [ %320, %326 ]
  %340 = phi i32 [ %347, %480 ], [ 0, %326 ]
  %341 = phi float [ %484, %480 ], [ 0.000000e+00, %326 ]
  %342 = phi float [ %485, %480 ], [ 0.000000e+00, %326 ]
  %343 = phi float [ %486, %480 ], [ 0.000000e+00, %326 ]
  %344 = phi float [ %487, %480 ], [ 0.000000e+00, %326 ]
  %345 = phi float [ %488, %480 ], [ 0.000000e+00, %326 ]
  %346 = phi i32 [ %489, %480 ], [ 0, %326 ]
  %347 = add i32 %340, 1
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 0
  %350 = icmp eq i32 %311, 0
  br i1 %350, label %363, label %351, !dx.controlflow.hints !26

; <label>:351                                     ; preds = %333
  %352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.f32 %352, 3
  %354 = extractvalue %dx.types.CBufRet.f32 %352, 2
  %355 = fmul fast float %353, %339
  %356 = fdiv fast float %355, %314
  %357 = fadd fast float %356, 1.000000e+00
  %358 = call float @dx.op.unary.f32(i32 23, float %357)  ; Log(value)
  %359 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %358)  ; FMin(a,b)
  %360 = fmul fast float %354, %314
  %361 = fmul fast float %360, %359
  %362 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %361)  ; FMin(a,b)
  br label %363

; <label>:363                                     ; preds = %351, %333
  %364 = phi float [ %362, %351 ], [ 0x47EFFFFFE0000000, %333 ]
  %365 = extractvalue %dx.types.CBufRet.f32 %348, 2
  %366 = fmul fast float %365, %339
  %367 = call float @dx.op.unary.f32(i32 23, float %366)  ; Log(value)
  %368 = fmul fast float %367, 0x3FE62E4300000000
  %369 = call float @dx.op.binary.f32(i32 35, float %368, float 1.000000e+00)  ; FMax(a,b)
  %370 = fmul fast float %369, %364
  %371 = call float @dx.op.binary.f32(i32 36, float %370, float 0x47EFFFFFE0000000)  ; FMin(a,b)
  %372 = call float @dx.op.binary.f32(i32 35, float %371, float %349)  ; FMax(a,b)
  %373 = fadd fast float %314, 0x3F1A36E2E0000000
  %374 = fsub fast float %373, %339
  %375 = call float @dx.op.binary.f32(i32 36, float %374, float %372)  ; FMin(a,b)
  br i1 %350, label %423, label %376, !dx.controlflow.hints !27

; <label>:376                                     ; preds = %363
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 0
  %379 = fsub fast float -0.000000e+00, %336
  %380 = fsub fast float -0.000000e+00, %337
  %381 = fsub fast float %378, %338
  %382 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %379, float %380, float %381)  ; Dot3(ax,ay,az,bx,by,bz)
  %383 = fmul fast float %294, %382
  %384 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %383)  ; FMax(a,b)
  %385 = fcmp fast olt float %267, 0.000000e+00
  %386 = call float @dx.op.binary.f32(i32 36, float %375, float %384)  ; FMin(a,b)
  br i1 %385, label %388, label %387, !dx.controlflow.hints !28

; <label>:387                                     ; preds = %376
  br label %388

; <label>:388                                     ; preds = %387, %376
  %389 = phi float [ 0.000000e+00, %387 ], [ %386, %376 ]
  %390 = phi float [ %386, %387 ], [ %375, %376 ]
  %391 = phi float [ %386, %387 ], [ 0.000000e+00, %376 ]
  %392 = phi float [ %375, %387 ], [ %386, %376 ]
  %393 = fsub fast float %390, %389
  %394 = extractvalue %dx.types.CBufRet.f32 %377, 1
  %395 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %394)  ; FMin(a,b)
  %396 = fsub fast float %338, %378
  %397 = fmul fast float %395, 0x3FF7154760000000
  %398 = fmul fast float %397, %396
  %399 = call float @dx.op.unary.f32(i32 21, float %398)  ; Exp(value)
  %400 = fmul fast float %267, 0x3FF7154760000000
  %401 = fmul fast float %400, %392
  %402 = fmul fast float %401, %395
  %403 = call float @dx.op.unary.f32(i32 21, float %402)  ; Exp(value)
  %404 = fmul fast float %400, %391
  %405 = fmul fast float %404, %395
  %406 = call float @dx.op.unary.f32(i32 21, float %405)  ; Exp(value)
  %407 = fsub fast float %403, %406
  %408 = fmul fast float %407, %399
  %409 = fmul fast float %395, %267
  %410 = fdiv fast float %408, %409
  %411 = fadd fast float %393, %410
  %412 = call float @dx.op.unary.f32(i32 6, float %267)  ; FAbs(value)
  %413 = fcmp fast olt float %412, 0x3F0FFB4800000000
  %414 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %396)  ; FMax(a,b)
  %415 = fmul fast float %414, 0x3FF7154760000000
  %416 = fmul fast float %415, %394
  %417 = call float @dx.op.unary.f32(i32 21, float %416)  ; Exp(value)
  %418 = fmul fast float %417, %375
  %419 = select i1 %413, float %418, float %411
  %420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %421 = extractvalue %dx.types.CBufRet.f32 %420, 1
  %422 = fmul fast float %419, %421
  br label %423

; <label>:423                                     ; preds = %388, %363
  %424 = phi float [ %422, %388 ], [ 0.000000e+00, %363 ]
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 1
  %427 = fcmp fast ogt float %424, %426
  br i1 %427, label %430, label %428, !dx.controlflow.hints !29

; <label>:428                                     ; preds = %423
  %429 = fadd fast float %375, %339
  br label %480

; <label>:430                                     ; preds = %423
  %431 = fmul fast float %424, 0xBFF7154760000000
  %432 = call float @dx.op.unary.f32(i32 21, float %431)  ; Exp(value)
  %433 = call float @dx.op.unary.f32(i32 7, float %432)  ; Saturate(value)
  %434 = fsub fast float 1.000000e+00, %433
  %435 = fdiv fast float %424, %375
  %436 = fadd fast float %375, %339
  %437 = fmul fast float %339, %339
  %438 = fmul fast float %436, %436
  %439 = fsub fast float %437, %438
  %440 = fmul fast float %439, -5.000000e-01
  %441 = fmul fast float %440, %435
  %442 = fadd fast float %441, %334
  %443 = fadd fast float %424, %341
  %444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.i32 %444, 0
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %473, label %447, !dx.controlflow.hints !30

; <label>:447                                     ; preds = %430
  %448 = icmp ne i32 %346, 0
  %449 = zext i1 %448 to i32
  %450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.f32 %450, 2
  %452 = extractvalue %dx.types.CBufRet.f32 %450, 0
  %453 = fsub fast float %436, %452
  %454 = fmul fast float %453, %451
  %455 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  %456 = fadd fast float %455, -5.000000e-01
  %457 = fmul fast float %456, 2.000000e+00
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 2
  %460 = fcmp fast olt float %457, %459
  br i1 %460, label %461, label %473, !dx.controlflow.hints !31

; <label>:461                                     ; preds = %447
  %462 = fmul fast float %457, %457
  %463 = fmul fast float %434, %335
  %464 = fmul fast float %457, %463
  %465 = fmul fast float %462, %463
  %466 = fmul fast float %464, %462
  %467 = fmul fast float %462, %462
  %468 = fmul fast float %467, %463
  %469 = fadd fast float %464, %342
  %470 = fadd fast float %465, %343
  %471 = fadd fast float %466, %344
  %472 = fadd fast float %468, %345
  br label %473

; <label>:473                                     ; preds = %461, %447, %430
  %474 = phi float [ %342, %430 ], [ %469, %461 ], [ %342, %447 ]
  %475 = phi float [ %343, %430 ], [ %470, %461 ], [ %343, %447 ]
  %476 = phi float [ %344, %430 ], [ %471, %461 ], [ %344, %447 ]
  %477 = phi float [ %345, %430 ], [ %472, %461 ], [ %345, %447 ]
  %478 = phi i32 [ %346, %430 ], [ 1, %461 ], [ %449, %447 ]
  %479 = fmul fast float %433, %335
  br label %480

; <label>:480                                     ; preds = %473, %428
  %481 = phi float [ %429, %428 ], [ %436, %473 ]
  %482 = phi float [ %334, %428 ], [ %442, %473 ]
  %483 = phi float [ %335, %428 ], [ %479, %473 ]
  %484 = phi float [ %341, %428 ], [ %443, %473 ]
  %485 = phi float [ %342, %428 ], [ %474, %473 ]
  %486 = phi float [ %343, %428 ], [ %475, %473 ]
  %487 = phi float [ %344, %428 ], [ %476, %473 ]
  %488 = phi float [ %345, %428 ], [ %477, %473 ]
  %489 = phi i32 [ %346, %428 ], [ %478, %473 ]
  %490 = fmul fast float %375, %265
  %491 = fmul fast float %375, %266
  %492 = fmul fast float %375, %267
  %493 = fadd fast float %490, %336
  %494 = fadd fast float %491, %337
  %495 = fadd fast float %492, %338
  %496 = fcmp fast olt float %481, %314
  %497 = extractvalue %dx.types.CBufRet.f32 %425, 2
  %498 = fcmp fast olt float %497, %483
  %499 = and i1 %496, %498
  br i1 %499, label %333, label %500

; <label>:500                                     ; preds = %480
  %501 = uitofp i32 %347 to float
  br label %502

; <label>:502                                     ; preds = %500, %310
  %503 = phi float [ 0.000000e+00, %310 ], [ %482, %500 ]
  %504 = phi float [ 1.000000e+00, %310 ], [ %483, %500 ]
  %505 = phi float [ 0.000000e+00, %310 ], [ %501, %500 ]
  %506 = phi float [ 0.000000e+00, %310 ], [ %484, %500 ]
  %507 = phi float [ 0.000000e+00, %310 ], [ %485, %500 ]
  %508 = phi float [ 0.000000e+00, %310 ], [ %486, %500 ]
  %509 = phi float [ 0.000000e+00, %310 ], [ %487, %500 ]
  %510 = phi float [ 0.000000e+00, %310 ], [ %488, %500 ]
  %511 = phi i32 [ 0, %310 ], [ %489, %500 ]
  %512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %513 = extractvalue %dx.types.CBufRet.i32 %512, 0
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %556, label %515, !dx.controlflow.hints !32

; <label>:515                                     ; preds = %502
  %516 = icmp eq i32 %511, 0
  br i1 %516, label %555, label %517, !dx.controlflow.hints !33

; <label>:517                                     ; preds = %515
  %518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %519 = extractvalue %dx.types.CBufRet.i32 %518, 2
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %527, label %521, !dx.controlflow.hints !34

; <label>:521                                     ; preds = %517
  %522 = fsub fast float 1.000000e+00, %504
  %523 = fdiv fast float %507, %522
  %524 = fdiv fast float %508, %522
  %525 = fdiv fast float %509, %522
  %526 = fdiv fast float %510, %522
  br label %532

; <label>:527                                     ; preds = %517
  %528 = fadd fast float %507, %504
  %529 = fadd fast float %508, %504
  %530 = fadd fast float %509, %504
  %531 = fadd fast float %510, %504
  br label %532

; <label>:532                                     ; preds = %527, %521
  %533 = phi float [ %523, %521 ], [ %528, %527 ]
  %534 = phi float [ %524, %521 ], [ %529, %527 ]
  %535 = phi float [ %525, %521 ], [ %530, %527 ]
  %536 = phi float [ %526, %521 ], [ %531, %527 ]
  %537 = call float @dx.op.binary.f32(i32 35, float %533, float -1.000000e+00)  ; FMax(a,b)
  %538 = call float @dx.op.binary.f32(i32 35, float %534, float -1.000000e+00)  ; FMax(a,b)
  %539 = call float @dx.op.binary.f32(i32 35, float %535, float -1.000000e+00)  ; FMax(a,b)
  %540 = call float @dx.op.binary.f32(i32 35, float %536, float -1.000000e+00)  ; FMax(a,b)
  %541 = call float @dx.op.binary.f32(i32 36, float %537, float 1.000000e+00)  ; FMin(a,b)
  %542 = call float @dx.op.binary.f32(i32 36, float %538, float 1.000000e+00)  ; FMin(a,b)
  %543 = call float @dx.op.binary.f32(i32 36, float %539, float 1.000000e+00)  ; FMin(a,b)
  %544 = call float @dx.op.binary.f32(i32 36, float %540, float 1.000000e+00)  ; FMin(a,b)
  %545 = fmul fast float %541, 1.500000e+00
  %546 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %543, float %545)  ; FMad(a,b,c)
  %547 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %542, float 0.000000e+00)  ; FMad(a,b,c)
  %548 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %544, float %547)  ; FMad(a,b,c)
  %549 = fmul fast float %541, 0x3FEBB67AE0000000
  %550 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %543, float %549)  ; FMad(a,b,c)
  %551 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %542, float 0.000000e+00)  ; FMad(a,b,c)
  %552 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %544, float %551)  ; FMad(a,b,c)
  %553 = fadd fast float %546, 5.000000e-01
  %554 = fadd fast float %550, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %10, i32 %11, i32 0, float %553, float %548, float %554, float %552, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %556

; <label>:555                                     ; preds = %515
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %10, i32 %11, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %556

; <label>:556                                     ; preds = %555, %532, %502
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 0
  %559 = extractvalue %dx.types.CBufRet.f32 %557, 1
  %560 = extractvalue %dx.types.CBufRet.f32 %557, 2
  %561 = call float @dx.op.dot3.f32(i32 55, float %265, float %266, float %267, float %558, float %559, float %560)  ; Dot3(ax,ay,az,bx,by,bz)
  %562 = fmul fast float %561, %503
  %563 = fcmp fast ogt float %506, 0.000000e+00
  %564 = fdiv fast float 1.000000e+00, %506
  %565 = fmul fast float %562, %564
  %566 = select i1 %563, float %565, float %276
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 0
  %569 = extractvalue %dx.types.CBufRet.f32 %567, 1
  %570 = extractvalue %dx.types.CBufRet.f32 %567, 2
  %571 = fmul fast float %568, %229
  %572 = fmul fast float %569, %229
  %573 = fmul fast float %570, %229
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 0
  %576 = extractvalue %dx.types.CBufRet.f32 %574, 1
  %577 = extractvalue %dx.types.CBufRet.f32 %574, 2
  %578 = fmul fast float %575, %230
  %579 = fmul fast float %576, %230
  %580 = fmul fast float %577, %230
  %581 = fadd fast float %578, %571
  %582 = fadd fast float %579, %572
  %583 = fadd fast float %580, %573
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = extractvalue %dx.types.CBufRet.f32 %584, 1
  %587 = extractvalue %dx.types.CBufRet.f32 %584, 2
  %588 = fadd fast float %581, %585
  %589 = fadd fast float %582, %586
  %590 = fadd fast float %583, %587
  %591 = fmul fast float %588, %566
  %592 = fmul fast float %589, %566
  %593 = fmul fast float %590, %566
  %594 = call float @dx.op.dot3.f32(i32 55, float %591, float %592, float %593, float %591, float %592, float %593)  ; Dot3(ax,ay,az,bx,by,bz)
  %595 = call float @dx.op.unary.f32(i32 25, float %594)  ; Rsqrt(value)
  %596 = fmul fast float %595, %594
  %597 = fmul fast float %595, %591
  %598 = fmul fast float %595, %592
  %599 = fmul fast float %595, %593
  %600 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.i32 %600, 1
  %602 = and i32 %601, 1
  %603 = icmp ne i32 %602, 0
  %604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %605 = extractvalue %dx.types.CBufRet.f32 %604, 2
  %606 = fcmp fast ogt float %605, 0.000000e+00
  %607 = and i1 %603, %606
  br i1 %607, label %608, label %766, !dx.controlflow.hints !35

; <label>:608                                     ; preds = %556
  %609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %610 = extractvalue %dx.types.CBufRet.f32 %609, 2
  %611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %612 = extractvalue %dx.types.CBufRet.f32 %611, 2
  %613 = fsub fast float %610, %612
  %614 = extractvalue %dx.types.CBufRet.i32 %600, 0
  %615 = call i32 @dx.op.binary.i32(i32 40, i32 %614, i32 3)  ; UMin(a,b)
  %616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %617 = extractvalue %dx.types.CBufRet.f32 %616, 0
  %618 = extractvalue %dx.types.CBufRet.f32 %616, 1
  %619 = extractvalue %dx.types.CBufRet.f32 %611, 0
  %620 = extractvalue %dx.types.CBufRet.f32 %611, 1
  %621 = fsub fast float %617, %619
  %622 = fsub fast float %618, %620
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 0
  %625 = fcmp fast ogt float %624, 0.000000e+00
  %626 = fsub fast float -0.000000e+00, %621
  %627 = fsub fast float -0.000000e+00, %622
  %628 = call float @dx.op.dot2.f32(i32 54, float %597, float %598, float %597, float %598)  ; Dot2(ax,ay,bx,by)
  %629 = call float @dx.op.dot2.f32(i32 54, float %597, float %598, float %626, float %627)  ; Dot2(ax,ay,bx,by)
  %630 = fmul fast float %629, 2.000000e+00
  %631 = call float @dx.op.dot2.f32(i32 54, float %626, float %627, float %626, float %627)  ; Dot2(ax,ay,bx,by)
  %632 = fmul fast float %624, %624
  %633 = fsub fast float %631, %632
  %634 = fmul fast float %630, %630
  %635 = fmul fast float %628, 4.000000e+00
  %636 = fmul fast float %635, %633
  %637 = fsub fast float %634, %636
  %638 = fcmp fast ogt float %637, 0.000000e+00
  br i1 %638, label %639, label %654, !dx.controlflow.hints !36

; <label>:639                                     ; preds = %608
  %640 = fcmp fast ogt float %630, 0.000000e+00
  %641 = call float @dx.op.unary.f32(i32 24, float %637)  ; Sqrt(value)
  %642 = fsub fast float -0.000000e+00, %641
  %643 = select i1 %640, float %641, float %642
  %644 = fadd fast float %643, %630
  %645 = fmul float %644, -5.000000e-01
  %646 = fdiv fast float %645, %628
  %647 = call float @dx.op.binary.f32(i32 35, float %646, float 0.000000e+00)  ; FMax(a,b)
  %648 = call float @dx.op.binary.f32(i32 36, float %596, float %647)  ; FMin(a,b)
  %649 = fdiv fast float %633, %645
  %650 = call float @dx.op.binary.f32(i32 35, float %649, float 0.000000e+00)  ; FMax(a,b)
  %651 = call float @dx.op.binary.f32(i32 36, float %596, float %650)  ; FMin(a,b)
  %652 = call float @dx.op.binary.f32(i32 36, float %648, float %651)  ; FMin(a,b)
  %653 = call float @dx.op.binary.f32(i32 35, float %648, float %651)  ; FMax(a,b)
  br label %654

; <label>:654                                     ; preds = %639, %608
  %655 = phi float [ %653, %639 ], [ -1.000000e+00, %608 ]
  %656 = phi float [ %652, %639 ], [ -1.000000e+00, %608 ]
  %657 = phi i1 [ true, %639 ], [ false, %608 ]
  %658 = and i1 %625, %657
  br i1 %658, label %659, label %661, !dx.controlflow.hints !37

; <label>:659                                     ; preds = %654
  %660 = fcmp fast oeq float %656, %655
  br i1 %660, label %766, label %662, !dx.controlflow.hints !38

; <label>:661                                     ; preds = %654
  br i1 %625, label %766, label %662, !dx.controlflow.hints !39

; <label>:662                                     ; preds = %661, %659
  %663 = phi float [ %596, %661 ], [ %655, %659 ]
  %664 = phi float [ 0.000000e+00, %661 ], [ %656, %659 ]
  %665 = fcmp fast oeq float %599, 0.000000e+00
  %666 = fdiv fast float %613, %599
  %667 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %666)  ; FMax(a,b)
  %668 = select i1 %665, float %663, float %667
  %669 = call float @dx.op.binary.f32(i32 36, float %663, float %668)  ; FMin(a,b)
  %670 = fcmp fast ogt float %599, 0.000000e+00
  %671 = fcmp fast olt float %613, 0.000000e+00
  br i1 %670, label %672, label %673, !dx.controlflow.hints !40

; <label>:672                                     ; preds = %662
  br i1 %671, label %766, label %676, !dx.controlflow.hints !41

; <label>:673                                     ; preds = %662
  br i1 %671, label %674, label %676, !dx.controlflow.hints !42

; <label>:674                                     ; preds = %673
  %675 = call float @dx.op.binary.f32(i32 35, float %664, float %669)  ; FMax(a,b)
  br label %676

; <label>:676                                     ; preds = %674, %673, %672
  %677 = phi float [ %675, %674 ], [ %664, %673 ], [ %664, %672 ]
  %678 = getelementptr inbounds [3 x float], [3 x float]* %13, i32 0, i32 0
  store float -1.000000e+00, float* %678, align 4, !tbaa !43, !noalias !47
  %679 = getelementptr inbounds [3 x float], [3 x float]* %13, i32 0, i32 1
  store float -1.000000e+00, float* %679, align 4, !tbaa !43, !noalias !47
  %680 = getelementptr inbounds [3 x float], [3 x float]* %13, i32 0, i32 2
  store float -1.000000e+00, float* %680, align 4, !tbaa !43, !noalias !47
  %681 = getelementptr inbounds [3 x float], [3 x float]* %14, i32 0, i32 0
  store float -1.000000e+00, float* %681, align 4, !tbaa !43, !noalias !47
  %682 = getelementptr inbounds [3 x float], [3 x float]* %14, i32 0, i32 1
  store float -1.000000e+00, float* %682, align 4, !tbaa !43, !noalias !47
  %683 = getelementptr inbounds [3 x float], [3 x float]* %14, i32 0, i32 2
  store float -1.000000e+00, float* %683, align 4, !tbaa !43, !noalias !47
  %684 = icmp sgt i32 %615, 0
  br i1 %684, label %685, label %743

; <label>:685                                     ; preds = %676
  br label %686

; <label>:686                                     ; preds = %733, %685
  %687 = phi i32 [ %734, %733 ], [ 0, %685 ]
  %688 = add nuw i32 %687, 171
  %689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %688)  ; CBufferLoadLegacy(handle,regIndex)
  %690 = extractvalue %dx.types.CBufRet.f32 %689, 0
  %691 = extractvalue %dx.types.CBufRet.f32 %689, 1
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 0
  %694 = extractvalue %dx.types.CBufRet.f32 %692, 1
  %695 = fsub fast float %690, %693
  %696 = fsub fast float %691, %694
  %697 = extractvalue %dx.types.CBufRet.f32 %689, 2
  %698 = fsub fast float -0.000000e+00, %695
  %699 = fsub fast float -0.000000e+00, %696
  %700 = call float @dx.op.dot2.f32(i32 54, float %597, float %598, float %698, float %699)  ; Dot2(ax,ay,bx,by)
  %701 = fmul fast float %700, 2.000000e+00
  %702 = call float @dx.op.dot2.f32(i32 54, float %698, float %699, float %698, float %699)  ; Dot2(ax,ay,bx,by)
  %703 = fmul fast float %697, %697
  %704 = fsub fast float %702, %703
  %705 = fmul fast float %701, %701
  %706 = fmul fast float %635, %704
  %707 = fsub fast float %705, %706
  %708 = fcmp fast ogt float %707, 0.000000e+00
  br i1 %708, label %709, label %724, !dx.controlflow.hints !36

; <label>:709                                     ; preds = %686
  %710 = fcmp fast ogt float %701, 0.000000e+00
  %711 = call float @dx.op.unary.f32(i32 24, float %707)  ; Sqrt(value)
  %712 = fsub fast float -0.000000e+00, %711
  %713 = select i1 %710, float %711, float %712
  %714 = fadd fast float %713, %701
  %715 = fmul float %714, -5.000000e-01
  %716 = fdiv fast float %715, %628
  %717 = call float @dx.op.binary.f32(i32 35, float %716, float 0.000000e+00)  ; FMax(a,b)
  %718 = call float @dx.op.binary.f32(i32 36, float %663, float %717)  ; FMin(a,b)
  %719 = fdiv fast float %704, %715
  %720 = call float @dx.op.binary.f32(i32 35, float %719, float 0.000000e+00)  ; FMax(a,b)
  %721 = call float @dx.op.binary.f32(i32 36, float %663, float %720)  ; FMin(a,b)
  %722 = call float @dx.op.binary.f32(i32 36, float %718, float %721)  ; FMin(a,b)
  %723 = call float @dx.op.binary.f32(i32 35, float %718, float %721)  ; FMax(a,b)
  br label %724

; <label>:724                                     ; preds = %709, %686
  %725 = phi float [ %723, %709 ], [ -1.000000e+00, %686 ]
  %726 = phi float [ %722, %709 ], [ -1.000000e+00, %686 ]
  %727 = phi i1 [ true, %709 ], [ false, %686 ]
  br i1 %727, label %728, label %733, !dx.controlflow.hints !58

; <label>:728                                     ; preds = %724
  %729 = call float @dx.op.binary.f32(i32 35, float %677, float %726)  ; FMax(a,b)
  %730 = getelementptr inbounds [3 x float], [3 x float]* %13, i32 0, i32 %687
  store float %729, float* %730, align 4, !tbaa !43, !noalias !47
  %731 = call float @dx.op.binary.f32(i32 35, float %677, float %725)  ; FMax(a,b)
  %732 = getelementptr inbounds [3 x float], [3 x float]* %14, i32 0, i32 %687
  store float %731, float* %732, align 4, !tbaa !43, !noalias !47
  br label %733

; <label>:733                                     ; preds = %728, %724
  %734 = add nuw nsw i32 %687, 1
  %735 = icmp eq i32 %734, %615
  br i1 %735, label %736, label %686

; <label>:736                                     ; preds = %733
  %737 = load float, float* %680, align 4, !tbaa !43, !alias.scope !59, !noalias !62
  %738 = load float, float* %679, align 4, !tbaa !43, !alias.scope !65, !noalias !66
  %739 = load float, float* %678, align 4, !tbaa !43, !alias.scope !67, !noalias !68
  %740 = load float, float* %683, align 4, !tbaa !43, !alias.scope !69, !noalias !72
  %741 = load float, float* %682, align 4, !tbaa !43, !alias.scope !75, !noalias !76
  %742 = load float, float* %681, align 4, !tbaa !43, !alias.scope !77, !noalias !78
  br label %743

; <label>:743                                     ; preds = %736, %676
  %744 = phi float [ -1.000000e+00, %676 ], [ %742, %736 ]
  %745 = phi float [ -1.000000e+00, %676 ], [ %741, %736 ]
  %746 = phi float [ -1.000000e+00, %676 ], [ %740, %736 ]
  %747 = phi float [ -1.000000e+00, %676 ], [ %739, %736 ]
  %748 = phi float [ -1.000000e+00, %676 ], [ %738, %736 ]
  %749 = phi float [ -1.000000e+00, %676 ], [ %737, %736 ]
  %750 = call float @dx.op.binary.f32(i32 36, float %748, float %749)  ; FMin(a,b)
  %751 = call float @dx.op.binary.f32(i32 36, float %747, float %750)  ; FMin(a,b)
  %752 = call float @dx.op.binary.f32(i32 35, float %747, float %748)  ; FMax(a,b)
  %753 = call float @dx.op.binary.f32(i32 36, float %752, float %749)  ; FMin(a,b)
  %754 = call float @dx.op.binary.f32(i32 36, float %747, float %748)  ; FMin(a,b)
  %755 = call float @dx.op.binary.f32(i32 35, float %754, float %753)  ; FMax(a,b)
  %756 = call float @dx.op.binary.f32(i32 35, float %748, float %749)  ; FMax(a,b)
  %757 = call float @dx.op.binary.f32(i32 35, float %747, float %756)  ; FMax(a,b)
  store float %751, float* %678, align 4, !tbaa !43, !alias.scope !67, !noalias !68
  store float %755, float* %679, align 4, !tbaa !43, !alias.scope !65, !noalias !66
  store float %757, float* %680, align 4, !tbaa !43, !alias.scope !59, !noalias !62
  %758 = call float @dx.op.binary.f32(i32 36, float %745, float %746)  ; FMin(a,b)
  %759 = call float @dx.op.binary.f32(i32 36, float %744, float %758)  ; FMin(a,b)
  %760 = call float @dx.op.binary.f32(i32 35, float %744, float %745)  ; FMax(a,b)
  %761 = call float @dx.op.binary.f32(i32 36, float %760, float %746)  ; FMin(a,b)
  %762 = call float @dx.op.binary.f32(i32 36, float %744, float %745)  ; FMin(a,b)
  %763 = call float @dx.op.binary.f32(i32 35, float %762, float %761)  ; FMax(a,b)
  %764 = call float @dx.op.binary.f32(i32 35, float %745, float %746)  ; FMax(a,b)
  %765 = call float @dx.op.binary.f32(i32 35, float %744, float %764)  ; FMax(a,b)
  store float %759, float* %681, align 4, !tbaa !43, !alias.scope !77, !noalias !78
  store float %763, float* %682, align 4, !tbaa !43, !alias.scope !75, !noalias !76
  store float %765, float* %683, align 4, !tbaa !43, !alias.scope !69, !noalias !72
  br label %766

; <label>:766                                     ; preds = %743, %672, %661, %659, %556
  %767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.f32 %767, 2
  %769 = fmul fast float %768, %566
  %770 = call float @dx.op.unary.f32(i32 7, float %769)  ; Saturate(value)
  %771 = fptoui float %505 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %772 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %12
  store i32 %771, i32 addrspace(3)* %772, align 4, !tbaa !79
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %773 = and i32 %12, 63
  %774 = icmp ult i32 %773, 32
  br i1 %774, label %775, label %781, !dx.controlflow.hints !81

; <label>:775                                     ; preds = %766
  %776 = add i32 %12, 32
  %777 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %776
  %778 = load i32, i32 addrspace(3)* %777, align 4, !tbaa !79
  %779 = load i32, i32 addrspace(3)* %772, align 4, !tbaa !79
  %780 = call i32 @dx.op.binary.i32(i32 40, i32 %779, i32 %778)  ; UMin(a,b)
  store i32 %780, i32 addrspace(3)* %772, align 4, !tbaa !79
  br label %781

; <label>:781                                     ; preds = %775, %766
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %782 = icmp ult i32 %773, 16
  br i1 %782, label %783, label %789, !dx.controlflow.hints !82

; <label>:783                                     ; preds = %781
  %784 = add i32 %12, 16
  %785 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %784
  %786 = load i32, i32 addrspace(3)* %785, align 4, !tbaa !79
  %787 = load i32, i32 addrspace(3)* %772, align 4, !tbaa !79
  %788 = call i32 @dx.op.binary.i32(i32 40, i32 %787, i32 %786)  ; UMin(a,b)
  store i32 %788, i32 addrspace(3)* %772, align 4, !tbaa !79
  br label %789

; <label>:789                                     ; preds = %783, %781
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %790 = icmp ult i32 %773, 8
  br i1 %790, label %791, label %797, !dx.controlflow.hints !83

; <label>:791                                     ; preds = %789
  %792 = add i32 %12, 8
  %793 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %792
  %794 = load i32, i32 addrspace(3)* %793, align 4, !tbaa !79
  %795 = load i32, i32 addrspace(3)* %772, align 4, !tbaa !79
  %796 = call i32 @dx.op.binary.i32(i32 40, i32 %795, i32 %794)  ; UMin(a,b)
  store i32 %796, i32 addrspace(3)* %772, align 4, !tbaa !79
  br label %797

; <label>:797                                     ; preds = %791, %789
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %798 = icmp ult i32 %773, 4
  br i1 %798, label %799, label %805, !dx.controlflow.hints !84

; <label>:799                                     ; preds = %797
  %800 = add i32 %12, 4
  %801 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %800
  %802 = load i32, i32 addrspace(3)* %801, align 4, !tbaa !79
  %803 = load i32, i32 addrspace(3)* %772, align 4, !tbaa !79
  %804 = call i32 @dx.op.binary.i32(i32 40, i32 %803, i32 %802)  ; UMin(a,b)
  store i32 %804, i32 addrspace(3)* %772, align 4, !tbaa !79
  br label %805

; <label>:805                                     ; preds = %799, %797
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %806 = icmp ult i32 %773, 2
  br i1 %806, label %807, label %813, !dx.controlflow.hints !85

; <label>:807                                     ; preds = %805
  %808 = add i32 %12, 2
  %809 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %808
  %810 = load i32, i32 addrspace(3)* %809, align 4, !tbaa !79
  %811 = load i32, i32 addrspace(3)* %772, align 4, !tbaa !79
  %812 = call i32 @dx.op.binary.i32(i32 40, i32 %811, i32 %810)  ; UMin(a,b)
  store i32 %812, i32 addrspace(3)* %772, align 4, !tbaa !79
  br label %813

; <label>:813                                     ; preds = %807, %805
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %814 = icmp eq i32 %773, 0
  br i1 %814, label %815, label %821, !dx.controlflow.hints !86

; <label>:815                                     ; preds = %813
  %816 = add i32 %12, 1
  %817 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %816
  %818 = load i32, i32 addrspace(3)* %817, align 4, !tbaa !79
  %819 = load i32, i32 addrspace(3)* %772, align 4, !tbaa !79
  %820 = call i32 @dx.op.binary.i32(i32 40, i32 %819, i32 %818)  ; UMin(a,b)
  store i32 %820, i32 addrspace(3)* %772, align 4, !tbaa !79
  br label %821

; <label>:821                                     ; preds = %815, %813
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %822 = and i32 %12, -64
  %823 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %822
  %824 = load i32, i32 addrspace(3)* %823, align 4, !tbaa !79
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %771, i32 addrspace(3)* %772, align 4, !tbaa !79
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %774, label %825, label %831, !dx.controlflow.hints !87

; <label>:825                                     ; preds = %821
  %826 = add i32 %12, 32
  %827 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %826
  %828 = load i32, i32 addrspace(3)* %827, align 4, !tbaa !79
  %829 = load i32, i32 addrspace(3)* %772, align 4, !tbaa !79
  %830 = call i32 @dx.op.binary.i32(i32 39, i32 %829, i32 %828)  ; UMax(a,b)
  store i32 %830, i32 addrspace(3)* %772, align 4, !tbaa !79
  br label %831

; <label>:831                                     ; preds = %825, %821
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %782, label %832, label %838, !dx.controlflow.hints !88

; <label>:832                                     ; preds = %831
  %833 = add i32 %12, 16
  %834 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %833
  %835 = load i32, i32 addrspace(3)* %834, align 4, !tbaa !79
  %836 = load i32, i32 addrspace(3)* %772, align 4, !tbaa !79
  %837 = call i32 @dx.op.binary.i32(i32 39, i32 %836, i32 %835)  ; UMax(a,b)
  store i32 %837, i32 addrspace(3)* %772, align 4, !tbaa !79
  br label %838

; <label>:838                                     ; preds = %832, %831
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %790, label %839, label %845, !dx.controlflow.hints !89

; <label>:839                                     ; preds = %838
  %840 = add i32 %12, 8
  %841 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %840
  %842 = load i32, i32 addrspace(3)* %841, align 4, !tbaa !79
  %843 = load i32, i32 addrspace(3)* %772, align 4, !tbaa !79
  %844 = call i32 @dx.op.binary.i32(i32 39, i32 %843, i32 %842)  ; UMax(a,b)
  store i32 %844, i32 addrspace(3)* %772, align 4, !tbaa !79
  br label %845

; <label>:845                                     ; preds = %839, %838
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %798, label %846, label %852, !dx.controlflow.hints !90

; <label>:846                                     ; preds = %845
  %847 = add i32 %12, 4
  %848 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %847
  %849 = load i32, i32 addrspace(3)* %848, align 4, !tbaa !79
  %850 = load i32, i32 addrspace(3)* %772, align 4, !tbaa !79
  %851 = call i32 @dx.op.binary.i32(i32 39, i32 %850, i32 %849)  ; UMax(a,b)
  store i32 %851, i32 addrspace(3)* %772, align 4, !tbaa !79
  br label %852

; <label>:852                                     ; preds = %846, %845
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %806, label %853, label %859, !dx.controlflow.hints !91

; <label>:853                                     ; preds = %852
  %854 = add i32 %12, 2
  %855 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %854
  %856 = load i32, i32 addrspace(3)* %855, align 4, !tbaa !79
  %857 = load i32, i32 addrspace(3)* %772, align 4, !tbaa !79
  %858 = call i32 @dx.op.binary.i32(i32 39, i32 %857, i32 %856)  ; UMax(a,b)
  store i32 %858, i32 addrspace(3)* %772, align 4, !tbaa !79
  br label %859

; <label>:859                                     ; preds = %853, %852
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %814, label %860, label %866, !dx.controlflow.hints !92

; <label>:860                                     ; preds = %859
  %861 = add i32 %12, 1
  %862 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %861
  %863 = load i32, i32 addrspace(3)* %862, align 4, !tbaa !79
  %864 = load i32, i32 addrspace(3)* %772, align 4, !tbaa !79
  %865 = call i32 @dx.op.binary.i32(i32 39, i32 %864, i32 %863)  ; UMax(a,b)
  store i32 %865, i32 addrspace(3)* %772, align 4, !tbaa !79
  br label %866

; <label>:866                                     ; preds = %860, %859
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %867 = load i32, i32 addrspace(3)* %823, align 4, !tbaa !79
  %868 = uitofp i32 %867 to float
  %869 = uitofp i32 %824 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %10, i32 %11, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 0
  %872 = fmul fast float %871, %505
  %873 = fmul fast float %871, %868
  %874 = fmul fast float %871, %869
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %10, i32 %11, i32 undef, float %872, float %873, float %874, float %872, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %10, i32 %11, i32 undef, float %770, float %770, float %770, float %770, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!19}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !16, null}
!5 = !{!6, !8, !9}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!10 = !{!11, !12, !13, !14}
!11 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !15}
!15 = !{i32 0, i32 14}
!16 = !{!17, !18}
!17 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!18 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!19 = !{void ()* @cs_fog_raymarching_air, !"cs_fog_raymarching_air", null, !4, !20}
!20 = !{i32 0, i64 272, i32 4, !21}
!21 = !{i32 8, i32 8, i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 1}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = !{!44, !44, i64 0}
!44 = !{!"float", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!48, !50, !52, !53, !55, !56, !57}
!48 = distinct !{!48, !49, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!49 = distinct !{!49, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!50 = distinct !{!50, !51, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!51 = distinct !{!51, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!52 = distinct !{!52, !51, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!53 = distinct !{!53, !54, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!54 = distinct !{!54, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!55 = distinct !{!55, !54, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!56 = distinct !{!56, !54, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!57 = distinct !{!57, !54, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = !{!60}
!60 = distinct !{!60, !61, !"\01?sort@@YAXAIAM00@Z: %c"}
!61 = distinct !{!61, !"\01?sort@@YAXAIAM00@Z"}
!62 = !{!63, !64, !48, !50, !52, !53, !55, !56, !57}
!63 = distinct !{!63, !61, !"\01?sort@@YAXAIAM00@Z: %a"}
!64 = distinct !{!64, !61, !"\01?sort@@YAXAIAM00@Z: %b"}
!65 = !{!64}
!66 = !{!63, !60, !48, !50, !52, !53, !55, !56, !57}
!67 = !{!63}
!68 = !{!64, !60, !48, !50, !52, !53, !55, !56, !57}
!69 = !{!70}
!70 = distinct !{!70, !71, !"\01?sort@@YAXAIAM00@Z: %c"}
!71 = distinct !{!71, !"\01?sort@@YAXAIAM00@Z"}
!72 = !{!73, !74, !48, !50, !52, !53, !55, !56, !57}
!73 = distinct !{!73, !71, !"\01?sort@@YAXAIAM00@Z: %a"}
!74 = distinct !{!74, !71, !"\01?sort@@YAXAIAM00@Z: %b"}
!75 = !{!74}
!76 = !{!73, !70, !48, !50, !52, !53, !55, !56, !57}
!77 = !{!73}
!78 = !{!74, !70, !48, !50, !52, !53, !55, !56, !57}
!79 = !{!80, !80, i64 0}
!80 = !{!"int", !45, i64 0}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}

