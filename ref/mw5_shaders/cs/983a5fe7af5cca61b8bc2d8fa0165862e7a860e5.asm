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
; shader hash: d6cfde47fca3cdb0ae7aedc0f409db9a
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
;                                   sampler      NA          NA      S2             s4     1
;                                   sampler      NA          NA      S3             s5     1
;                                   texture     f32          2d      T0            t16     1
;                                   texture     f32          2d      T1            t27     1
;                                   texture     f32          3d      T2             t1     1
;                                   texture     f32          3d      T3             t2     1
;                                   texture     f32          2d      T4             t8     1
;                                   texture     f32          2d      T5             t9     1
;                                   texture     f32          2d      T6            t13     1
;                                   texture     f32          2d      T7             t0     1
;                                   texture    byte         r/o      T8            t17     1
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
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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

define void @cs_fog_raymarching_clouds_heightmap_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %21 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %22 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %23 = alloca [3 x float], align 4
  %24 = alloca [3 x float], align 4
  %25 = add i32 %21, %20
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 1
  %28 = add i32 %25, %27
  %29 = lshr i32 %28, 1
  %30 = and i32 %29, 1
  %31 = and i32 %28, 1
  %32 = xor i32 %30, %31
  %33 = shl i32 %20, 1
  %34 = shl i32 %21, 1
  %35 = or i32 %32, %33
  %36 = or i32 %30, %34
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = extractvalue %dx.types.ResRet.i32 %39, 1
  %42 = extractvalue %dx.types.ResRet.i32 %39, 2
  %43 = extractvalue %dx.types.ResRet.i32 %39, 3
  %44 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %45 = extractvalue %dx.types.ResRet.i32 %44, 0
  %46 = extractvalue %dx.types.ResRet.i32 %44, 1
  %47 = extractvalue %dx.types.ResRet.i32 %44, 2
  %48 = extractvalue %dx.types.ResRet.i32 %44, 3
  %49 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.i32 %49, 0
  %51 = extractvalue %dx.types.ResRet.i32 %49, 1
  %52 = extractvalue %dx.types.ResRet.i32 %49, 2
  %53 = extractvalue %dx.types.ResRet.i32 %49, 3
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %56 = fmul fast float %55, %55
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 0
  %59 = extractvalue %dx.types.CBufRet.f32 %57, 1
  %60 = extractvalue %dx.types.CBufRet.f32 %57, 2
  %61 = fmul fast float %60, 0x3FF17B1420000000
  %62 = icmp eq i32 %22, 0
  br i1 %62, label %63, label %204, !dx.controlflow.hints !33

; <label>:63                                      ; preds = %0
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 3
  %68 = extractvalue %dx.types.ResRet.i32 %37, 1
  %69 = and i32 %68, 65535
  %70 = call float @dx.op.legacyF16ToF32(i32 131, i32 %69)  ; LegacyF16ToF32(value)
  %71 = lshr i32 %38, 16
  %72 = call float @dx.op.legacyF16ToF32(i32 131, i32 %71)  ; LegacyF16ToF32(value)
  %73 = and i32 %38, 65535
  %74 = call float @dx.op.legacyF16ToF32(i32 131, i32 %73)  ; LegacyF16ToF32(value)
  %75 = lshr i32 %43, 16
  %76 = call float @dx.op.legacyF16ToF32(i32 131, i32 %75)  ; LegacyF16ToF32(value)
  %77 = and i32 %43, 65535
  %78 = call float @dx.op.legacyF16ToF32(i32 131, i32 %77)  ; LegacyF16ToF32(value)
  %79 = lshr i32 %42, 16
  %80 = call float @dx.op.legacyF16ToF32(i32 131, i32 %79)  ; LegacyF16ToF32(value)
  %81 = and i32 %42, 65535
  %82 = call float @dx.op.legacyF16ToF32(i32 131, i32 %81)  ; LegacyF16ToF32(value)
  %83 = lshr i32 %41, 16
  %84 = call float @dx.op.legacyF16ToF32(i32 131, i32 %83)  ; LegacyF16ToF32(value)
  %85 = lshr i32 %40, 16
  %86 = call float @dx.op.legacyF16ToF32(i32 131, i32 %85)  ; LegacyF16ToF32(value)
  %87 = and i32 %40, 65535
  %88 = call float @dx.op.legacyF16ToF32(i32 131, i32 %87)  ; LegacyF16ToF32(value)
  %89 = lshr i32 %48, 16
  %90 = call float @dx.op.legacyF16ToF32(i32 131, i32 %89)  ; LegacyF16ToF32(value)
  %91 = and i32 %48, 65535
  %92 = call float @dx.op.legacyF16ToF32(i32 131, i32 %91)  ; LegacyF16ToF32(value)
  %93 = lshr i32 %47, 16
  %94 = call float @dx.op.legacyF16ToF32(i32 131, i32 %93)  ; LegacyF16ToF32(value)
  %95 = and i32 %47, 65535
  %96 = call float @dx.op.legacyF16ToF32(i32 131, i32 %95)  ; LegacyF16ToF32(value)
  %97 = lshr i32 %46, 16
  %98 = call float @dx.op.legacyF16ToF32(i32 131, i32 %97)  ; LegacyF16ToF32(value)
  %99 = and i32 %46, 65535
  %100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %99)  ; LegacyF16ToF32(value)
  %101 = and i32 %45, 65535
  %102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %101)  ; LegacyF16ToF32(value)
  %103 = lshr i32 %53, 16
  %104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %103)  ; LegacyF16ToF32(value)
  %105 = and i32 %53, 65535
  %106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %105)  ; LegacyF16ToF32(value)
  %107 = lshr i32 %52, 16
  %108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %107)  ; LegacyF16ToF32(value)
  %109 = and i32 %52, 65535
  %110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %109)  ; LegacyF16ToF32(value)
  %111 = lshr i32 %51, 16
  %112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %111)  ; LegacyF16ToF32(value)
  %113 = and i32 %51, 65535
  %114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %113)  ; LegacyF16ToF32(value)
  %115 = lshr i32 %50, 16
  %116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %115)  ; LegacyF16ToF32(value)
  %117 = and i32 %41, 65535
  %118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %117)  ; LegacyF16ToF32(value)
  %119 = lshr i32 %45, 16
  %120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %119)  ; LegacyF16ToF32(value)
  %121 = and i32 %50, 65535
  %122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %121)  ; LegacyF16ToF32(value)
  %123 = fmul fast float %118, 0x3FD20DD760000000
  %124 = fmul fast float %60, %55
  %125 = fmul fast float %124, %82
  %126 = fmul fast float %60, %60
  %127 = fmul fast float %126, 0x3FEE471020000000
  %128 = fadd fast float %127, 0xBFD42F6020000000
  %129 = fmul fast float %74, %128
  %130 = fmul fast float %80, %58
  %131 = fmul fast float %84, %59
  %132 = fmul fast float %58, %56
  %133 = fmul fast float %132, %61
  %134 = fmul fast float %133, %72
  %135 = fsub fast float -0.000000e+00, %134
  %136 = fmul fast float %59, %56
  %137 = fmul fast float %136, %61
  %138 = fmul fast float %137, %76
  %139 = fmul fast float %58, %58
  %140 = fmul fast float %59, %59
  %141 = fsub fast float %139, %140
  %142 = fmul fast float %141, 0x3FE17B1420000000
  %143 = fmul fast float %142, %70
  %144 = fmul fast float %59, 0x3FF17B1420000000
  %145 = fmul fast float %144, %58
  %146 = fmul fast float %145, %78
  %147 = fadd fast float %131, %130
  %148 = fmul fast float %147, %55
  %149 = fsub fast float %148, %125
  %150 = fmul fast float %149, 0x3FDF454380000000
  %151 = fadd fast float %129, %143
  %152 = fadd fast float %151, %146
  %153 = fmul fast float %152, %56
  %154 = fsub fast float %135, %138
  %155 = fadd fast float %154, %123
  %156 = fadd fast float %155, %150
  %157 = fadd fast float %156, %153
  %158 = fmul fast float %65, %67
  %159 = fmul fast float %158, %157
  %160 = fmul fast float %120, 0x3FD20DD760000000
  %161 = fmul fast float %124, %98
  %162 = fmul fast float %90, %128
  %163 = fmul fast float %96, %58
  %164 = fmul fast float %100, %59
  %165 = fmul fast float %133, %88
  %166 = fsub fast float -0.000000e+00, %165
  %167 = fmul fast float %137, %92
  %168 = fmul fast float %142, %86
  %169 = fmul fast float %145, %94
  %170 = fadd fast float %164, %163
  %171 = fmul fast float %170, %55
  %172 = fsub fast float %171, %161
  %173 = fmul fast float %172, 0x3FDF454380000000
  %174 = fadd fast float %162, %168
  %175 = fadd fast float %174, %169
  %176 = fmul fast float %175, %56
  %177 = fsub fast float %166, %167
  %178 = fadd fast float %177, %160
  %179 = fadd fast float %178, %173
  %180 = fadd fast float %179, %176
  %181 = fmul fast float %158, %180
  %182 = fmul fast float %122, 0x3FD20DD760000000
  %183 = fmul fast float %124, %114
  %184 = fmul fast float %106, %128
  %185 = fmul fast float %112, %58
  %186 = fmul fast float %116, %59
  %187 = fmul fast float %133, %104
  %188 = fsub fast float -0.000000e+00, %187
  %189 = fmul fast float %137, %108
  %190 = fmul fast float %142, %102
  %191 = fmul fast float %145, %110
  %192 = fadd fast float %186, %185
  %193 = fmul fast float %192, %55
  %194 = fsub fast float %193, %183
  %195 = fmul fast float %194, 0x3FDF454380000000
  %196 = fadd fast float %184, %190
  %197 = fadd fast float %196, %191
  %198 = fmul fast float %197, %56
  %199 = fsub fast float %188, %189
  %200 = fadd fast float %199, %182
  %201 = fadd fast float %200, %195
  %202 = fadd fast float %201, %198
  %203 = fmul fast float %158, %202
  br label %204

; <label>:204                                     ; preds = %63, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %205 = uitofp i32 %35 to float
  %206 = uitofp i32 %36 to float
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %209 = fmul fast float %208, 0x3FE3C6EF40000000
  %210 = frem fast float %205, 2.560000e+02
  %211 = frem fast float %206, 2.560000e+02
  %212 = fptoui float %210 to i32
  %213 = fptoui float %211 to i32
  %214 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %212, i32 %213, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = extractvalue %dx.types.ResRet.f32 %214, 1
  %217 = extractvalue %dx.types.ResRet.f32 %214, 2
  %218 = extractvalue %dx.types.ResRet.f32 %214, 3
  %219 = fadd fast float %215, %209
  %220 = fadd fast float %216, %209
  %221 = fadd fast float %217, %209
  %222 = fadd fast float %218, %209
  %223 = call float @dx.op.unary.f32(i32 22, float %219)  ; Frc(value)
  %224 = call float @dx.op.unary.f32(i32 22, float %220)  ; Frc(value)
  %225 = call float @dx.op.unary.f32(i32 22, float %221)  ; Frc(value)
  %226 = call float @dx.op.unary.f32(i32 22, float %222)  ; Frc(value)
  %227 = fadd fast float %225, %205
  %228 = fadd fast float %226, %206
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %231 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %232 = fmul fast float %230, %227
  %233 = fmul fast float %231, %228
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 0
  %236 = extractvalue %dx.types.CBufRet.f32 %234, 1
  %237 = extractvalue %dx.types.CBufRet.f32 %234, 2
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 1
  %240 = fmul fast float %232, 2.000000e+00
  %241 = fmul fast float %233, 2.000000e+00
  %242 = fsub fast float 1.000000e+00, %240
  %243 = fsub fast float 1.000000e+00, %241
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 0
  %246 = extractvalue %dx.types.CBufRet.f32 %244, 1
  %247 = extractvalue %dx.types.CBufRet.f32 %244, 2
  %248 = fmul fast float %245, %242
  %249 = fmul fast float %246, %242
  %250 = fmul fast float %247, %242
  %251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.f32 %251, 0
  %253 = extractvalue %dx.types.CBufRet.f32 %251, 1
  %254 = extractvalue %dx.types.CBufRet.f32 %251, 2
  %255 = fmul fast float %252, %243
  %256 = fmul fast float %253, %243
  %257 = fmul fast float %254, %243
  %258 = fadd fast float %255, %248
  %259 = fadd fast float %256, %249
  %260 = fadd fast float %257, %250
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 0
  %263 = extractvalue %dx.types.CBufRet.f32 %261, 1
  %264 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %265 = fadd fast float %258, %262
  %266 = fadd fast float %259, %263
  %267 = fadd fast float %260, %264
  %268 = fmul fast float %265, %239
  %269 = fmul fast float %266, %239
  %270 = fmul fast float %267, %239
  %271 = fmul fast float %268, %268
  %272 = fmul fast float %269, %269
  %273 = fadd fast float %271, %272
  %274 = fmul fast float %270, %270
  %275 = fadd fast float %273, %274
  %276 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %277 = fdiv fast float 1.000000e+00, %276
  %278 = fmul fast float %268, %277
  %279 = fmul fast float %269, %277
  %280 = fmul fast float %270, %277
  %281 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %35, i32 %36, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 0
  %283 = fcmp fast ogt float %282, -1.000000e+00
  %284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.f32 %284, 1
  %286 = select i1 %283, float %285, float 1.000000e+00
  %287 = fadd fast float %282, 1.000000e+00
  %288 = fmul fast float %286, %287
  %289 = call float @dx.op.unary.f32(i32 6, float %288)  ; FAbs(value)
  %290 = fdiv fast float 1.000000e+00, %239
  %291 = fmul fast float %290, %276
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 1
  %294 = fmul fast float %293, %291
  %295 = fmul fast float %291, %289
  %296 = extractvalue %dx.types.CBufRet.f32 %284, 3
  %297 = fcmp fast oge float %289, %296
  %298 = call float @dx.op.binary.f32(i32 36, float %295, float %294)  ; FMin(a,b)
  %299 = select i1 %297, float %294, float %298
  %300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.i32 %300, 3
  %302 = icmp eq i32 %301, 0
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.f32 %305, 2
  %307 = fsub fast float %304, %237
  %308 = fadd fast float %307, %306
  %309 = fsub fast float 0xC7EFFFFFE0000000, %237
  br i1 %302, label %321, label %310, !dx.controlflow.hints !34

; <label>:310                                     ; preds = %204
  %311 = fsub fast float -0.000000e+00, %236
  %312 = fsub fast float -0.000000e+00, %235
  %313 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %312, float %311, float %308)  ; Dot3(ax,ay,az,bx,by,bz)
  %314 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %278, float %279, float %280)  ; Dot3(ax,ay,az,bx,by,bz)
  %315 = fdiv fast float 1.000000e+00, %314
  %316 = fmul fast float %315, %313
  %317 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %312, float %311, float %309)  ; Dot3(ax,ay,az,bx,by,bz)
  %318 = fmul fast float %315, %317
  %319 = call float @dx.op.binary.f32(i32 36, float %316, float %318)  ; FMin(a,b)
  %320 = call float @dx.op.binary.f32(i32 35, float %316, float %318)  ; FMax(a,b)
  br label %354

; <label>:321                                     ; preds = %204
  %322 = extractvalue %dx.types.CBufRet.f32 %303, 0
  %323 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %324 = extractvalue %dx.types.CBufRet.f32 %305, 0
  %325 = extractvalue %dx.types.CBufRet.f32 %305, 1
  %326 = fdiv fast float 1.000000e+00, %278
  %327 = fdiv fast float 1.000000e+00, %279
  %328 = fdiv fast float 1.000000e+00, %280
  %329 = fsub fast float %322, %235
  %330 = fmul fast float %326, %329
  %331 = fadd fast float %329, %324
  %332 = fmul fast float %331, %326
  %333 = call float @dx.op.binary.f32(i32 36, float %330, float %332)  ; FMin(a,b)
  %334 = call float @dx.op.binary.f32(i32 35, float %330, float %332)  ; FMax(a,b)
  %335 = fsub fast float %323, %236
  %336 = fmul fast float %327, %335
  %337 = fadd fast float %335, %325
  %338 = fmul fast float %337, %327
  %339 = call float @dx.op.binary.f32(i32 36, float %336, float %338)  ; FMin(a,b)
  %340 = call float @dx.op.binary.f32(i32 35, float %333, float %339)  ; FMax(a,b)
  %341 = call float @dx.op.binary.f32(i32 35, float %336, float %338)  ; FMax(a,b)
  %342 = call float @dx.op.binary.f32(i32 36, float %334, float %341)  ; FMin(a,b)
  %343 = fmul fast float %328, %309
  %344 = fmul fast float %328, %308
  %345 = call float @dx.op.binary.f32(i32 36, float %343, float %344)  ; FMin(a,b)
  %346 = call float @dx.op.binary.f32(i32 35, float %340, float %345)  ; FMax(a,b)
  %347 = call float @dx.op.binary.f32(i32 35, float %343, float %344)  ; FMax(a,b)
  %348 = call float @dx.op.binary.f32(i32 36, float %342, float %347)  ; FMin(a,b)
  %349 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %346)  ; FMax(a,b)
  %350 = fcmp fast ult float %348, %349
  br i1 %350, label %354, label %351, !dx.controlflow.hints !35

; <label>:351                                     ; preds = %321
  %352 = call float @dx.op.binary.f32(i32 36, float %346, float %348)  ; FMin(a,b)
  %353 = call float @dx.op.binary.f32(i32 35, float %346, float %348)  ; FMax(a,b)
  br label %354

; <label>:354                                     ; preds = %351, %321, %310
  %355 = phi float [ %319, %310 ], [ %352, %351 ], [ 0.000000e+00, %321 ]
  %356 = phi float [ %320, %310 ], [ %353, %351 ], [ 0.000000e+00, %321 ]
  %357 = fcmp fast oeq float %356, 0.000000e+00
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 1
  %360 = fcmp fast olt float %356, %359
  %361 = or i1 %357, %360
  br i1 %361, label %366, label %362, !dx.controlflow.hints !36

; <label>:362                                     ; preds = %354
  %363 = call float @dx.op.binary.f32(i32 35, float %359, float %355)  ; FMax(a,b)
  %364 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %363)  ; FMin(a,b)
  %365 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %356)  ; FMax(a,b)
  br label %366

; <label>:366                                     ; preds = %362, %354
  %367 = phi i32 [ 1, %362 ], [ 0, %354 ]
  %368 = phi float [ %365, %362 ], [ -1.000000e+00, %354 ]
  %369 = phi float [ %364, %362 ], [ 0x47EFFFFFE0000000, %354 ]
  %370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.i32 %370, 3
  %372 = icmp eq i32 %371, 0
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 2
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 2
  %377 = fsub fast float %374, %237
  %378 = fadd fast float %377, %376
  br i1 %372, label %390, label %379, !dx.controlflow.hints !37

; <label>:379                                     ; preds = %366
  %380 = fsub fast float -0.000000e+00, %235
  %381 = fsub fast float -0.000000e+00, %236
  %382 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %380, float %381, float %378)  ; Dot3(ax,ay,az,bx,by,bz)
  %383 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %278, float %279, float %280)  ; Dot3(ax,ay,az,bx,by,bz)
  %384 = fdiv fast float 1.000000e+00, %383
  %385 = fmul fast float %384, %382
  %386 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %380, float %381, float %377)  ; Dot3(ax,ay,az,bx,by,bz)
  %387 = fmul fast float %384, %386
  %388 = call float @dx.op.binary.f32(i32 36, float %385, float %387)  ; FMin(a,b)
  %389 = call float @dx.op.binary.f32(i32 35, float %385, float %387)  ; FMax(a,b)
  br label %423

; <label>:390                                     ; preds = %366
  %391 = fdiv fast float 1.000000e+00, %278
  %392 = fdiv fast float 1.000000e+00, %279
  %393 = fdiv fast float 1.000000e+00, %280
  %394 = extractvalue %dx.types.CBufRet.f32 %373, 0
  %395 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %396 = extractvalue %dx.types.CBufRet.f32 %375, 0
  %397 = extractvalue %dx.types.CBufRet.f32 %375, 1
  %398 = fsub fast float %394, %235
  %399 = fmul fast float %398, %391
  %400 = fadd fast float %398, %396
  %401 = fmul fast float %400, %391
  %402 = call float @dx.op.binary.f32(i32 36, float %399, float %401)  ; FMin(a,b)
  %403 = call float @dx.op.binary.f32(i32 35, float %399, float %401)  ; FMax(a,b)
  %404 = fsub fast float %395, %236
  %405 = fmul fast float %404, %392
  %406 = fadd fast float %404, %397
  %407 = fmul fast float %406, %392
  %408 = call float @dx.op.binary.f32(i32 36, float %405, float %407)  ; FMin(a,b)
  %409 = call float @dx.op.binary.f32(i32 35, float %402, float %408)  ; FMax(a,b)
  %410 = call float @dx.op.binary.f32(i32 35, float %405, float %407)  ; FMax(a,b)
  %411 = call float @dx.op.binary.f32(i32 36, float %403, float %410)  ; FMin(a,b)
  %412 = fmul fast float %377, %393
  %413 = fmul fast float %378, %393
  %414 = call float @dx.op.binary.f32(i32 36, float %412, float %413)  ; FMin(a,b)
  %415 = call float @dx.op.binary.f32(i32 35, float %409, float %414)  ; FMax(a,b)
  %416 = call float @dx.op.binary.f32(i32 35, float %412, float %413)  ; FMax(a,b)
  %417 = call float @dx.op.binary.f32(i32 36, float %411, float %416)  ; FMin(a,b)
  %418 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %415)  ; FMax(a,b)
  %419 = fcmp fast ult float %417, %418
  br i1 %419, label %423, label %420, !dx.controlflow.hints !38

; <label>:420                                     ; preds = %390
  %421 = call float @dx.op.binary.f32(i32 36, float %415, float %417)  ; FMin(a,b)
  %422 = call float @dx.op.binary.f32(i32 35, float %415, float %417)  ; FMax(a,b)
  br label %423

; <label>:423                                     ; preds = %420, %390, %379
  %424 = phi float [ %388, %379 ], [ %421, %420 ], [ 0.000000e+00, %390 ]
  %425 = phi float [ %389, %379 ], [ %422, %420 ], [ 0.000000e+00, %390 ]
  %426 = fcmp fast oeq float %425, 0.000000e+00
  br i1 %426, label %430, label %427, !dx.controlflow.hints !39

; <label>:427                                     ; preds = %423
  %428 = call float @dx.op.binary.f32(i32 36, float %369, float %424)  ; FMin(a,b)
  %429 = call float @dx.op.binary.f32(i32 35, float %368, float %425)  ; FMax(a,b)
  br label %430

; <label>:430                                     ; preds = %427, %423
  %431 = phi i32 [ 1, %427 ], [ 0, %423 ]
  %432 = phi float [ %429, %427 ], [ %368, %423 ]
  %433 = phi float [ %428, %427 ], [ %369, %423 ]
  %434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %435 = extractvalue %dx.types.CBufRet.f32 %434, 2
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 3
  %438 = fsub fast float -0.000000e+00, %235
  %439 = fsub fast float -0.000000e+00, %236
  %440 = fsub fast float %435, %237
  %441 = fadd fast float %440, %437
  %442 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %438, float %439, float %441)  ; Dot3(ax,ay,az,bx,by,bz)
  %443 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %278, float %279, float %280)  ; Dot3(ax,ay,az,bx,by,bz)
  %444 = fdiv fast float 1.000000e+00, %443
  %445 = fmul fast float %444, %442
  %446 = fcmp fast olt float %445, 0.000000e+00
  %447 = fcmp fast ogt float %280, 0.000000e+00
  %448 = and i1 %447, %446
  br i1 %448, label %453, label %449, !dx.controlflow.hints !40

; <label>:449                                     ; preds = %430
  %450 = fcmp fast olt float %280, 0.000000e+00
  br i1 %450, label %451, label %453, !dx.controlflow.hints !41

; <label>:451                                     ; preds = %449
  %452 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %445)  ; FMax(a,b)
  br label %453

; <label>:453                                     ; preds = %451, %449, %430
  %454 = phi float [ 0.000000e+00, %430 ], [ %452, %451 ], [ 0.000000e+00, %449 ]
  %455 = phi float [ 0.000000e+00, %430 ], [ 0x47EFFFFFE0000000, %451 ], [ %445, %449 ]
  %456 = fcmp fast oeq float %455, 0.000000e+00
  br i1 %456, label %460, label %457, !dx.controlflow.hints !42

; <label>:457                                     ; preds = %453
  %458 = call float @dx.op.binary.f32(i32 36, float %433, float %454)  ; FMin(a,b)
  %459 = call float @dx.op.binary.f32(i32 35, float %432, float %455)  ; FMax(a,b)
  br label %460

; <label>:460                                     ; preds = %457, %453
  %461 = phi i32 [ 1, %457 ], [ 0, %453 ]
  %462 = phi float [ %459, %457 ], [ %432, %453 ]
  %463 = phi float [ %458, %457 ], [ %433, %453 ]
  %464 = call float @dx.op.binary.f32(i32 36, float %299, float %462)  ; FMin(a,b)
  %465 = call float @dx.op.binary.f32(i32 35, float %276, float %463)  ; FMax(a,b)
  %466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.f32 %466, 0
  %468 = fmul fast float %224, 2.000000e+00
  %469 = fadd fast float %468, -1.000000e+00
  %470 = fmul fast float %467, %469
  %471 = fadd fast float %470, %465
  %472 = fcmp fast olt float %471, %464
  %473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %474 = extractvalue %dx.types.CBufRet.f32 %473, 2
  %475 = fcmp fast olt float %474, 1.000000e+00
  %476 = and i1 %472, %475
  br i1 %476, label %477, label %1407

; <label>:477                                     ; preds = %460
  %478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.i32 %478, 1
  %480 = add i32 %479, -1
  %481 = fmul fast float %471, %280
  %482 = fadd fast float %481, %237
  %483 = fmul fast float %471, %279
  %484 = fadd fast float %483, %236
  %485 = fmul fast float %471, %278
  %486 = fadd fast float %485, %235
  br label %487

; <label>:487                                     ; preds = %1385, %477
  %488 = phi i32 [ %916, %1385 ], [ undef, %477 ]
  %489 = phi float [ %918, %1385 ], [ undef, %477 ]
  %490 = phi float [ %1387, %1385 ], [ 0.000000e+00, %477 ]
  %491 = phi float [ %1388, %1385 ], [ 1.000000e+00, %477 ]
  %492 = phi float [ %1398, %1385 ], [ %486, %477 ]
  %493 = phi float [ %1399, %1385 ], [ %484, %477 ]
  %494 = phi float [ %1400, %1385 ], [ %482, %477 ]
  %495 = phi float [ %1386, %1385 ], [ %471, %477 ]
  %496 = phi i32 [ %506, %1385 ], [ 0, %477 ]
  %497 = phi i32 [ %681, %1385 ], [ %480, %477 ]
  %498 = phi float [ %1389, %1385 ], [ 0.000000e+00, %477 ]
  %499 = phi float [ %1390, %1385 ], [ 0.000000e+00, %477 ]
  %500 = phi float [ %1391, %1385 ], [ 0.000000e+00, %477 ]
  %501 = phi float [ %1392, %1385 ], [ 0.000000e+00, %477 ]
  %502 = phi float [ %1393, %1385 ], [ 0.000000e+00, %477 ]
  %503 = phi i32 [ %1394, %1385 ], [ 0, %477 ]
  %504 = fsub fast float -0.000000e+00, %493
  %505 = fsub fast float -0.000000e+00, %492
  %506 = add i32 %496, 1
  %507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %508 = extractvalue %dx.types.CBufRet.f32 %507, 0
  %509 = icmp eq i32 %367, 0
  br i1 %509, label %678, label %510, !dx.controlflow.hints !43

; <label>:510                                     ; preds = %487
  %511 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.i32 %511, 1
  %513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.f32 %513, 1
  %515 = fcmp fast ogt float %514, %495
  br i1 %515, label %516, label %518, !dx.controlflow.hints !44

; <label>:516                                     ; preds = %510
  %517 = fsub fast float %514, %495
  br label %668

; <label>:518                                     ; preds = %510
  %519 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %520 = extractvalue %dx.types.CBufRet.i32 %519, 3
  %521 = icmp eq i32 %520, 0
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 2
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 2
  %526 = fsub fast float %523, %494
  %527 = fadd fast float %526, %525
  %528 = fsub fast float 0xC7EFFFFFE0000000, %494
  br i1 %521, label %536, label %529, !dx.controlflow.hints !34

; <label>:529                                     ; preds = %518
  %530 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %505, float %504, float %527)  ; Dot3(ax,ay,az,bx,by,bz)
  %531 = fmul fast float %444, %530
  %532 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %505, float %504, float %528)  ; Dot3(ax,ay,az,bx,by,bz)
  %533 = fmul fast float %444, %532
  %534 = call float @dx.op.binary.f32(i32 36, float %531, float %533)  ; FMin(a,b)
  %535 = call float @dx.op.binary.f32(i32 35, float %531, float %533)  ; FMax(a,b)
  br label %569

; <label>:536                                     ; preds = %518
  %537 = extractvalue %dx.types.CBufRet.f32 %522, 0
  %538 = extractvalue %dx.types.CBufRet.f32 %522, 1
  %539 = extractvalue %dx.types.CBufRet.f32 %524, 0
  %540 = extractvalue %dx.types.CBufRet.f32 %524, 1
  %541 = fdiv fast float 1.000000e+00, %278
  %542 = fdiv fast float 1.000000e+00, %279
  %543 = fdiv fast float 1.000000e+00, %280
  %544 = fsub fast float %537, %492
  %545 = fmul fast float %541, %544
  %546 = fadd fast float %544, %539
  %547 = fmul fast float %546, %541
  %548 = call float @dx.op.binary.f32(i32 36, float %545, float %547)  ; FMin(a,b)
  %549 = call float @dx.op.binary.f32(i32 35, float %545, float %547)  ; FMax(a,b)
  %550 = fsub fast float %538, %493
  %551 = fmul fast float %542, %550
  %552 = fadd fast float %550, %540
  %553 = fmul fast float %552, %542
  %554 = call float @dx.op.binary.f32(i32 36, float %551, float %553)  ; FMin(a,b)
  %555 = call float @dx.op.binary.f32(i32 35, float %548, float %554)  ; FMax(a,b)
  %556 = call float @dx.op.binary.f32(i32 35, float %551, float %553)  ; FMax(a,b)
  %557 = call float @dx.op.binary.f32(i32 36, float %549, float %556)  ; FMin(a,b)
  %558 = fmul fast float %543, %528
  %559 = fmul fast float %543, %527
  %560 = call float @dx.op.binary.f32(i32 36, float %558, float %559)  ; FMin(a,b)
  %561 = call float @dx.op.binary.f32(i32 35, float %555, float %560)  ; FMax(a,b)
  %562 = call float @dx.op.binary.f32(i32 35, float %558, float %559)  ; FMax(a,b)
  %563 = call float @dx.op.binary.f32(i32 36, float %557, float %562)  ; FMin(a,b)
  %564 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %561)  ; FMax(a,b)
  %565 = fcmp fast ult float %563, %564
  br i1 %565, label %569, label %566, !dx.controlflow.hints !35

; <label>:566                                     ; preds = %536
  %567 = call float @dx.op.binary.f32(i32 36, float %561, float %563)  ; FMin(a,b)
  %568 = call float @dx.op.binary.f32(i32 35, float %561, float %563)  ; FMax(a,b)
  br label %569

; <label>:569                                     ; preds = %566, %536, %529
  %570 = phi float [ %534, %529 ], [ %567, %566 ], [ 0.000000e+00, %536 ]
  %571 = phi float [ %535, %529 ], [ %568, %566 ], [ 0.000000e+00, %536 ]
  %572 = fcmp fast ogt float %570, 0.000000e+00
  br i1 %572, label %668, label %573, !dx.controlflow.hints !45

; <label>:573                                     ; preds = %569
  %574 = fcmp fast ugt float %571, 0.000000e+00
  br i1 %574, label %575, label %668, !dx.controlflow.hints !46

; <label>:575                                     ; preds = %573
  %576 = icmp sgt i32 %497, 0
  br i1 %576, label %577, label %662

; <label>:577                                     ; preds = %575
  br label %578

; <label>:578                                     ; preds = %658, %577
  %579 = phi i32 [ %659, %658 ], [ %497, %577 ]
  %580 = sitofp i32 %579 to float
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 0
  %583 = extractvalue %dx.types.CBufRet.f32 %581, 1
  %584 = fsub fast float %492, %582
  %585 = fsub fast float %493, %583
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 0
  %588 = extractvalue %dx.types.CBufRet.f32 %586, 1
  %589 = fmul fast float %584, %587
  %590 = fmul fast float %585, %588
  %591 = fsub fast float 1.000000e+00, %590
  %592 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.i32 %592, 3
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %601, label %595, !dx.controlflow.hints !47

; <label>:595                                     ; preds = %578
  %596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %589, float %591, float undef, float undef, i32 0, i32 0, i32 undef, float %580)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %597 = extractvalue %dx.types.ResRet.f32 %596, 0
  %598 = extractvalue %dx.types.ResRet.f32 %596, 1
  %599 = extractvalue %dx.types.ResRet.f32 %596, 2
  %600 = extractvalue %dx.types.ResRet.f32 %596, 3
  br label %607

; <label>:601                                     ; preds = %578
  %602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %589, float %591, float undef, float undef, i32 0, i32 0, i32 undef, float %580)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %603 = extractvalue %dx.types.ResRet.f32 %602, 0
  %604 = extractvalue %dx.types.ResRet.f32 %602, 1
  %605 = extractvalue %dx.types.ResRet.f32 %602, 2
  %606 = extractvalue %dx.types.ResRet.f32 %602, 3
  br label %607

; <label>:607                                     ; preds = %601, %595
  %608 = phi float [ %597, %595 ], [ %603, %601 ]
  %609 = phi float [ %598, %595 ], [ %604, %601 ]
  %610 = phi float [ %599, %595 ], [ %605, %601 ]
  %611 = phi float [ %600, %595 ], [ %606, %601 ]
  %612 = extractvalue %dx.types.CBufRet.f32 %586, 3
  %613 = fmul fast float %612, %608
  %614 = extractvalue %dx.types.CBufRet.f32 %581, 2
  %615 = fadd fast float %613, %614
  %616 = fmul fast float %612, %609
  %617 = fadd fast float %616, %614
  %618 = fmul fast float %612, %610
  %619 = fadd fast float %618, %614
  %620 = and i32 %579, 31
  %621 = shl i32 1, %620
  %622 = uitofp i32 %621 to float
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 3
  %625 = fdiv fast float 1.000000e+00, %624
  %626 = fmul fast float %625, %622
  %627 = fmul fast float %626, %280
  %628 = fadd fast float %627, %494
  %629 = fcmp fast oeq float %611, 0.000000e+00
  %630 = fcmp fast ogt float %494, %617
  %631 = fcmp fast ogt float %628, %617
  %632 = and i1 %630, %631
  %633 = or i1 %629, %632
  br i1 %633, label %634, label %638, !dx.controlflow.hints !48

; <label>:634                                     ; preds = %607
  %635 = add nsw i32 %579, 1
  %636 = add nsw i32 %512, -1
  %637 = call i32 @dx.op.binary.i32(i32 38, i32 %635, i32 %636)  ; IMin(a,b)
  br label %668

; <label>:638                                     ; preds = %607
  %639 = fcmp fast olt float %494, %619
  %640 = fcmp fast olt float %628, %619
  %641 = and i1 %639, %640
  br i1 %641, label %642, label %646, !dx.controlflow.hints !49

; <label>:642                                     ; preds = %638
  %643 = add nsw i32 %579, 1
  %644 = add nsw i32 %512, -1
  %645 = call i32 @dx.op.binary.i32(i32 38, i32 %643, i32 %644)  ; IMin(a,b)
  br label %668

; <label>:646                                     ; preds = %638
  %647 = fcmp fast olt float %494, %615
  %648 = fcmp fast olt float %628, %615
  %649 = and i1 %647, %648
  br i1 %649, label %650, label %658, !dx.controlflow.hints !50

; <label>:650                                     ; preds = %646
  %651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %652 = extractvalue %dx.types.CBufRet.f32 %651, 3
  %653 = extractvalue %dx.types.CBufRet.f32 %586, 2
  %654 = fcmp fast une float %652, %653
  br i1 %654, label %655, label %662, !dx.controlflow.hints !51

; <label>:655                                     ; preds = %650
  %656 = fsub fast float %494, %619
  %657 = call float @dx.op.binary.f32(i32 36, float %626, float %656)  ; FMin(a,b)
  br label %662

; <label>:658                                     ; preds = %646
  %659 = add nsw i32 %579, -1
  %660 = icmp sgt i32 %579, 1
  br i1 %660, label %578, label %661

; <label>:661                                     ; preds = %658
  br label %662

; <label>:662                                     ; preds = %661, %655, %650, %575
  %663 = phi float [ %657, %655 ], [ %626, %650 ], [ 0.000000e+00, %575 ], [ 0.000000e+00, %661 ]
  %664 = phi i32 [ %579, %655 ], [ %579, %650 ], [ %497, %575 ], [ %659, %661 ]
  %665 = add nsw i32 %664, 1
  %666 = add nsw i32 %512, -1
  %667 = call i32 @dx.op.binary.i32(i32 38, i32 %665, i32 %666)  ; IMin(a,b)
  br label %668

; <label>:668                                     ; preds = %662, %642, %634, %573, %569, %516
  %669 = phi float [ %517, %516 ], [ %626, %634 ], [ %626, %642 ], [ %663, %662 ], [ 0x47EFFFFFE0000000, %573 ], [ %570, %569 ]
  %670 = phi i32 [ %367, %516 ], [ %367, %634 ], [ %367, %642 ], [ %367, %662 ], [ 0, %573 ], [ %367, %569 ]
  %671 = phi i32 [ %497, %516 ], [ %637, %634 ], [ %645, %642 ], [ %667, %662 ], [ %497, %573 ], [ %497, %569 ]
  %672 = icmp ne i32 %670, 0
  %673 = zext i1 %672 to i32
  %674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %675 = extractvalue %dx.types.CBufRet.f32 %674, 2
  %676 = call float @dx.op.binary.f32(i32 35, float %669, float %675)  ; FMax(a,b)
  %677 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %676)  ; FMin(a,b)
  br label %678

; <label>:678                                     ; preds = %668, %487
  %679 = phi i32 [ %673, %668 ], [ 0, %487 ]
  %680 = phi float [ %677, %668 ], [ 0x47EFFFFFE0000000, %487 ]
  %681 = phi i32 [ %671, %668 ], [ %497, %487 ]
  %682 = icmp eq i32 %431, 0
  br i1 %682, label %739, label %683, !dx.controlflow.hints !52

; <label>:683                                     ; preds = %678
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 0
  %686 = extractvalue %dx.types.CBufRet.f32 %684, 1
  %687 = extractvalue %dx.types.CBufRet.f32 %684, 2
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 0
  %690 = extractvalue %dx.types.CBufRet.f32 %688, 1
  %691 = extractvalue %dx.types.CBufRet.f32 %688, 2
  %692 = fsub fast float %492, %689
  %693 = fsub fast float %493, %690
  %694 = fsub fast float %494, %691
  %695 = fmul fast float %692, %685
  %696 = fmul fast float %693, %686
  %697 = fmul fast float %694, %687
  %698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.i32 %698, 3
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %704, label %701, !dx.controlflow.hints !53

; <label>:701                                     ; preds = %683
  %702 = call float @dx.op.unary.f32(i32 22, float %695)  ; Frc(value)
  %703 = call float @dx.op.unary.f32(i32 22, float %696)  ; Frc(value)
  br label %704

; <label>:704                                     ; preds = %701, %683
  %705 = phi float [ %702, %701 ], [ %695, %683 ]
  %706 = phi float [ %703, %701 ], [ %696, %683 ]
  %707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %705, float %706, float %697, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %708 = extractvalue %dx.types.ResRet.f32 %707, 0
  %709 = fmul fast float %708, 2.000000e+00
  %710 = fadd fast float %709, -1.000000e+00
  %711 = extractvalue %dx.types.CBufRet.f32 %684, 3
  %712 = fmul fast float %710, %711
  %713 = fcmp fast olt float %712, 0.000000e+00
  %714 = fcmp fast oge float %697, 0.000000e+00
  %715 = fcmp fast ole float %697, 1.000000e+00
  br i1 %700, label %718, label %716, !dx.controlflow.hints !54

; <label>:716                                     ; preds = %704
  %717 = and i1 %714, %715
  br label %728

; <label>:718                                     ; preds = %704
  %719 = fcmp fast oge float %695, 0.000000e+00
  %720 = fcmp fast oge float %696, 0.000000e+00
  %721 = and i1 %719, %720
  %722 = and i1 %714, %721
  %723 = fcmp fast ole float %695, 1.000000e+00
  %724 = fcmp fast ole float %696, 1.000000e+00
  %725 = and i1 %723, %724
  %726 = and i1 %715, %725
  %727 = and i1 %722, %726
  br label %728

; <label>:728                                     ; preds = %718, %716
  %729 = phi i1 [ %717, %716 ], [ %727, %718 ]
  %730 = and i1 %713, %729
  %731 = call float @dx.op.unary.f32(i32 6, float %712)  ; FAbs(value)
  %732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %733 = extractvalue %dx.types.CBufRet.f32 %732, 1
  %734 = extractvalue %dx.types.CBufRet.f32 %732, 0
  %735 = call float @dx.op.binary.f32(i32 35, float %731, float %734)  ; FMax(a,b)
  %736 = select i1 %730, float %733, float %735
  %737 = zext i1 %730 to i32
  %738 = call float @dx.op.binary.f32(i32 36, float %680, float %736)  ; FMin(a,b)
  br label %739

; <label>:739                                     ; preds = %728, %678
  %740 = phi i32 [ %737, %728 ], [ 0, %678 ]
  %741 = phi float [ %738, %728 ], [ %680, %678 ]
  %742 = icmp eq i32 %461, 0
  br i1 %742, label %915, label %743, !dx.controlflow.hints !55

; <label>:743                                     ; preds = %739
  %744 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %745 = extractvalue %dx.types.CBufRet.i32 %744, 1
  %746 = and i32 %745, 1
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %748, label %905, !dx.controlflow.hints !56

; <label>:748                                     ; preds = %743
  %749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.f32 %749, 2
  %751 = extractvalue %dx.types.CBufRet.f32 %749, 3
  %752 = fmul fast float %750, %492
  %753 = fmul fast float %751, %493
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 0
  %756 = extractvalue %dx.types.CBufRet.f32 %754, 1
  %757 = fadd fast float %752, %755
  %758 = fadd fast float %753, %756
  %759 = call float @dx.op.unary.f32(i32 7, float %757)  ; Saturate(value)
  %760 = call float @dx.op.unary.f32(i32 7, float %758)  ; Saturate(value)
  %761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %759, float %760, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %762 = extractvalue %dx.types.ResRet.f32 %761, 0
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 0
  %765 = fmul fast float %764, %762
  %766 = fsub fast float %757, %759
  %767 = fsub fast float %758, %760
  %768 = extractvalue %dx.types.CBufRet.f32 %749, 0
  %769 = extractvalue %dx.types.CBufRet.f32 %749, 1
  %770 = fmul fast float %768, %766
  %771 = fmul fast float %769, %767
  %772 = fmul fast float %770, %770
  %773 = fmul fast float %771, %771
  %774 = fadd fast float %772, %773
  %775 = call float @dx.op.unary.f32(i32 24, float %774)  ; Sqrt(value)
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 3
  %778 = fmul fast float %777, %775
  %779 = call float @dx.op.unary.f32(i32 7, float %778)  ; Saturate(value)
  %780 = extractvalue %dx.types.CBufRet.f32 %776, 2
  %781 = fsub fast float %780, %765
  %782 = fmul fast float %781, %779
  %783 = extractvalue %dx.types.CBufRet.f32 %763, 1
  %784 = fsub fast float %494, %765
  %785 = fsub fast float %784, %783
  %786 = fsub fast float %785, %782
  %787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %788 = extractvalue %dx.types.CBufRet.f32 %787, 2
  %789 = fsub fast float %786, %788
  %790 = fcmp fast olt float %789, 0.000000e+00
  %791 = call float @dx.op.unary.f32(i32 6, float %789)  ; FAbs(value)
  %792 = extractvalue %dx.types.CBufRet.i32 %744, 0
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %847, label %794

; <label>:794                                     ; preds = %748
  br label %795

; <label>:795                                     ; preds = %834, %794
  %796 = phi i32 [ %840, %834 ], [ 1, %794 ]
  %797 = phi float [ %842, %834 ], [ 0x47EFFFFFE0000000, %794 ]
  %798 = phi i32 [ %843, %834 ], [ 0, %794 ]
  %799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %800 = extractvalue %dx.types.CBufRet.f32 %799, 1
  %801 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %802 = extractvalue %dx.types.CBufRet.i32 %801, 1
  %803 = and i32 %802, 8
  %804 = icmp eq i32 %803, 0
  %805 = fcmp fast ogt float %800, %786
  %806 = or i1 %805, %804
  %807 = add i32 %798, 171
  %808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %807)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.f32 %808, 0
  %810 = extractvalue %dx.types.CBufRet.f32 %808, 1
  %811 = extractvalue %dx.types.CBufRet.f32 %808, 2
  br i1 %806, label %812, label %818, !dx.controlflow.hints !57

; <label>:812                                     ; preds = %795
  %813 = fsub fast float %809, %492
  %814 = fsub fast float %810, %493
  %815 = fmul fast float %813, %813
  %816 = fmul fast float %814, %814
  %817 = fadd fast float %815, %816
  br label %834

; <label>:818                                     ; preds = %795
  %819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %820 = extractvalue %dx.types.CBufRet.f32 %819, 2
  %821 = extractvalue %dx.types.CBufRet.f32 %799, 2
  %822 = fmul fast float %821, %820
  %823 = fsub fast float %822, %800
  %824 = fdiv fast float %811, %823
  %825 = fsub fast float %492, %809
  %826 = fsub fast float %493, %810
  %827 = fsub fast float %786, %800
  %828 = fmul fast float %824, %827
  %829 = fmul fast float %825, %825
  %830 = fmul fast float %826, %826
  %831 = fadd fast float %829, %830
  %832 = fmul fast float %828, %828
  %833 = fadd fast float %831, %832
  br label %834

; <label>:834                                     ; preds = %818, %812
  %835 = phi float [ %817, %812 ], [ %833, %818 ]
  %836 = call float @dx.op.unary.f32(i32 24, float %835)  ; Sqrt(value)
  %837 = fsub float %811, %836
  %838 = fcmp fast olt float %837, 0.000000e+00
  %839 = zext i1 %838 to i32
  %840 = and i32 %839, %796
  %841 = call float @dx.op.unary.f32(i32 6, float %837)  ; FAbs(value)
  %842 = call float @dx.op.binary.f32(i32 36, float %797, float %841)  ; FMin(a,b)
  %843 = add i32 %798, 1
  %844 = extractvalue %dx.types.CBufRet.i32 %801, 0
  %845 = icmp ult i32 %843, %844
  br i1 %845, label %795, label %846

; <label>:846                                     ; preds = %834
  br label %847

; <label>:847                                     ; preds = %846, %748
  %848 = phi i32 [ 1, %748 ], [ %840, %846 ]
  %849 = phi float [ 0x47EFFFFFE0000000, %748 ], [ %842, %846 ]
  br label %850

; <label>:850                                     ; preds = %850, %847
  %851 = phi i32 [ %848, %847 ], [ %890, %850 ]
  %852 = phi float [ 0x47EFFFFFE0000000, %847 ], [ %892, %850 ]
  %853 = phi i32 [ 0, %847 ], [ %893, %850 ]
  %854 = add nuw nsw i32 %853, 191
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %854)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %857 = extractvalue %dx.types.CBufRet.f32 %855, 1
  %858 = extractvalue %dx.types.CBufRet.f32 %855, 2
  %859 = add nuw nsw i32 %853, 195
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %859)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 0
  %862 = extractvalue %dx.types.CBufRet.f32 %860, 1
  %863 = extractvalue %dx.types.CBufRet.f32 %860, 2
  %864 = fsub fast float %492, %856
  %865 = fsub fast float %493, %857
  %866 = fsub fast float %786, %858
  %867 = call float @dx.op.unary.f32(i32 6, float %864)  ; FAbs(value)
  %868 = call float @dx.op.unary.f32(i32 6, float %865)  ; FAbs(value)
  %869 = call float @dx.op.unary.f32(i32 6, float %866)  ; FAbs(value)
  %870 = fsub fast float %867, %861
  %871 = fsub fast float %868, %862
  %872 = fsub fast float %869, %863
  %873 = call float @dx.op.binary.f32(i32 35, float %870, float 0.000000e+00)  ; FMax(a,b)
  %874 = call float @dx.op.binary.f32(i32 35, float %871, float 0.000000e+00)  ; FMax(a,b)
  %875 = call float @dx.op.binary.f32(i32 35, float %872, float 0.000000e+00)  ; FMax(a,b)
  %876 = fmul fast float %873, %873
  %877 = fmul fast float %874, %874
  %878 = fadd fast float %877, %876
  %879 = fmul fast float %875, %875
  %880 = fadd fast float %878, %879
  %881 = call float @dx.op.unary.f32(i32 24, float %880)  ; Sqrt(value)
  %882 = call float @dx.op.binary.f32(i32 35, float %871, float %872)  ; FMax(a,b)
  %883 = call float @dx.op.binary.f32(i32 35, float %870, float %882)  ; FMax(a,b)
  %884 = call float @dx.op.binary.f32(i32 36, float %883, float 0.000000e+00)  ; FMin(a,b)
  %885 = fadd fast float %884, %881
  %886 = fsub fast float -0.000000e+00, %885
  %887 = fcmp ogt float %885, -0.000000e+00
  %888 = icmp ne i32 %851, 0
  %889 = and i1 %888, %887
  %890 = zext i1 %889 to i32
  %891 = call float @dx.op.unary.f32(i32 6, float %886)  ; FAbs(value)
  %892 = call float @dx.op.binary.f32(i32 36, float %852, float %891)  ; FMin(a,b)
  %893 = add nuw nsw i32 %853, 1
  %894 = icmp eq i32 %893, 4
  br i1 %894, label %895, label %850

; <label>:895                                     ; preds = %850
  %896 = call float @dx.op.binary.f32(i32 36, float %791, float %892)  ; FMin(a,b)
  %897 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %898 = extractvalue %dx.types.CBufRet.i32 %897, 1
  %899 = and i32 %898, 2
  %900 = icmp ne i32 %899, 0
  %901 = xor i1 %889, %900
  %902 = call float @dx.op.binary.f32(i32 36, float %896, float %849)  ; FMin(a,b)
  %903 = and i1 %901, %790
  %904 = zext i1 %903 to i32
  br label %905

; <label>:905                                     ; preds = %895, %743
  %906 = phi i32 [ %488, %743 ], [ %904, %895 ]
  %907 = phi float [ 0.000000e+00, %743 ], [ %902, %895 ]
  %908 = phi float [ %494, %743 ], [ %786, %895 ]
  %909 = icmp ne i32 %906, 0
  %910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %911 = extractvalue %dx.types.CBufRet.f32 %910, 3
  %912 = call float @dx.op.binary.f32(i32 35, float %907, float %911)  ; FMax(a,b)
  %913 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %912)  ; FMin(a,b)
  %914 = zext i1 %909 to i32
  br label %915

; <label>:915                                     ; preds = %905, %739
  %916 = phi i32 [ %906, %905 ], [ %488, %739 ]
  %917 = phi i32 [ %914, %905 ], [ 0, %739 ]
  %918 = phi float [ %908, %905 ], [ %489, %739 ]
  %919 = phi float [ %913, %905 ], [ 0x47EFFFFFE0000000, %739 ]
  %920 = extractvalue %dx.types.CBufRet.f32 %507, 2
  %921 = fmul fast float %920, %495
  %922 = call float @dx.op.unary.f32(i32 23, float %921)  ; Log(value)
  %923 = fmul fast float %922, 0x3FE62E4300000000
  %924 = call float @dx.op.binary.f32(i32 35, float %923, float 1.000000e+00)  ; FMax(a,b)
  %925 = fmul fast float %924, %919
  %926 = call float @dx.op.binary.f32(i32 36, float %925, float %741)  ; FMin(a,b)
  %927 = call float @dx.op.binary.f32(i32 35, float %926, float %508)  ; FMax(a,b)
  %928 = fsub fast float %464, %495
  %929 = fadd fast float %928, 0x3F1A36E2E0000000
  %930 = call float @dx.op.binary.f32(i32 36, float %929, float %927)  ; FMin(a,b)
  %931 = icmp eq i32 %679, 0
  br i1 %931, label %1028, label %932, !dx.controlflow.hints !58

; <label>:932                                     ; preds = %915
  %933 = fcmp fast olt float %929, %927
  %934 = fmul fast float %280, %223
  %935 = fmul fast float %934, %930
  %936 = fadd fast float %935, %494
  %937 = fmul fast float %280, %224
  %938 = fmul fast float %937, %930
  %939 = fadd fast float %938, %494
  %940 = fmul fast float %280, %225
  %941 = fmul fast float %940, %930
  %942 = fadd fast float %941, %494
  br i1 %933, label %943, label %948, !dx.controlflow.hints !59

; <label>:943                                     ; preds = %932
  %944 = fmul fast float %930, %278
  %945 = fmul fast float %930, %279
  %946 = fadd fast float %944, %492
  %947 = fadd fast float %945, %493
  br label %948

; <label>:948                                     ; preds = %943, %932
  %949 = phi float [ %946, %943 ], [ %492, %932 ]
  %950 = phi float [ %947, %943 ], [ %493, %932 ]
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 0
  %953 = extractvalue %dx.types.CBufRet.f32 %951, 1
  %954 = fsub fast float %949, %952
  %955 = fsub fast float %950, %953
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 0
  %958 = extractvalue %dx.types.CBufRet.f32 %956, 1
  %959 = fmul fast float %954, %957
  %960 = fmul fast float %955, %958
  %961 = fsub fast float 1.000000e+00, %960
  %962 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.i32 %962, 3
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %971, label %965, !dx.controlflow.hints !47

; <label>:965                                     ; preds = %948
  %966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %16, float %959, float %961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %967 = extractvalue %dx.types.ResRet.f32 %966, 0
  %968 = extractvalue %dx.types.ResRet.f32 %966, 1
  %969 = extractvalue %dx.types.ResRet.f32 %966, 2
  %970 = extractvalue %dx.types.ResRet.f32 %966, 3
  br label %977

; <label>:971                                     ; preds = %948
  %972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %959, float %961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %973 = extractvalue %dx.types.ResRet.f32 %972, 0
  %974 = extractvalue %dx.types.ResRet.f32 %972, 1
  %975 = extractvalue %dx.types.ResRet.f32 %972, 2
  %976 = extractvalue %dx.types.ResRet.f32 %972, 3
  br label %977

; <label>:977                                     ; preds = %971, %965
  %978 = phi float [ %967, %965 ], [ %973, %971 ]
  %979 = phi float [ %968, %965 ], [ %974, %971 ]
  %980 = phi float [ %969, %965 ], [ %975, %971 ]
  %981 = phi float [ %970, %965 ], [ %976, %971 ]
  %982 = extractvalue %dx.types.CBufRet.f32 %956, 3
  %983 = fmul fast float %982, %979
  %984 = fmul fast float %983, %978
  %985 = fsub fast float %983, %984
  %986 = fcmp fast ole float %985, 0.000000e+00
  %987 = extractvalue %dx.types.CBufRet.f32 %951, 2
  %988 = fadd fast float %984, %987
  %989 = fmul fast float %982, %980
  %990 = fadd fast float %989, %987
  %991 = fdiv fast float 1.000000e+00, %985
  %992 = select i1 %986, float 1.000000e+06, float %991
  %993 = fsub fast float %936, %988
  %994 = fmul fast float %992, %993
  %995 = call float @dx.op.unary.f32(i32 7, float %994)  ; Saturate(value)
  %996 = extractvalue %dx.types.CBufRet.f32 %956, 2
  %997 = fmul fast float %996, %995
  %998 = fsub fast float %996, %997
  %999 = fcmp fast olt float %936, %990
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 3
  %1002 = select i1 %999, float %1001, float 1.000000e+00
  %1003 = fmul fast float %998, %1002
  %1004 = fsub fast float %939, %988
  %1005 = fmul fast float %992, %1004
  %1006 = call float @dx.op.unary.f32(i32 7, float %1005)  ; Saturate(value)
  %1007 = fmul fast float %996, %1006
  %1008 = fsub fast float %996, %1007
  %1009 = fcmp fast olt float %939, %990
  %1010 = select i1 %1009, float %1001, float 1.000000e+00
  %1011 = fmul fast float %1008, %1010
  %1012 = fadd fast float %1011, %1003
  %1013 = fsub fast float %942, %988
  %1014 = fmul fast float %992, %1013
  %1015 = call float @dx.op.unary.f32(i32 7, float %1014)  ; Saturate(value)
  %1016 = fmul fast float %996, %1015
  %1017 = fsub fast float %996, %1016
  %1018 = fcmp fast olt float %942, %990
  %1019 = select i1 %1018, float %1001, float 1.000000e+00
  %1020 = fmul fast float %1017, %1019
  %1021 = fadd fast float %1012, %1020
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 2
  %1024 = fmul fast float %930, 0x3FD5555560000000
  %1025 = fmul fast float %1024, %981
  %1026 = fmul fast float %1025, %1023
  %1027 = fmul fast float %1026, %1021
  br label %1028

; <label>:1028                                    ; preds = %977, %915
  %1029 = phi float [ %1027, %977 ], [ 0.000000e+00, %915 ]
  %1030 = icmp eq i32 %740, 0
  br i1 %1030, label %1211, label %1031, !dx.controlflow.hints !60

; <label>:1031                                    ; preds = %1028
  %1032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1032, 3
  %1034 = fmul fast float %1033, %495
  %1035 = fcmp fast oeq float %1034, 0.000000e+00
  br i1 %1035, label %1050, label %1036, !dx.controlflow.hints !61

; <label>:1036                                    ; preds = %1031
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 3
  %1039 = fmul fast float %1038, %1034
  %1040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1041 = extractvalue %dx.types.CBufRet.f32 %1040, 0
  %1042 = extractvalue %dx.types.CBufRet.f32 %1040, 1
  %1043 = extractvalue %dx.types.CBufRet.f32 %1040, 2
  %1044 = fmul fast float %1041, %1039
  %1045 = fmul fast float %1042, %1039
  %1046 = fmul fast float %1043, %1039
  %1047 = call float @dx.op.unary.f32(i32 23, float %1044)  ; Log(value)
  %1048 = call float @dx.op.unary.f32(i32 23, float %1045)  ; Log(value)
  %1049 = call float @dx.op.unary.f32(i32 23, float %1046)  ; Log(value)
  br label %1050

; <label>:1050                                    ; preds = %1036, %1031
  %1051 = phi float [ %1047, %1036 ], [ 0.000000e+00, %1031 ]
  %1052 = phi float [ %1048, %1036 ], [ 0.000000e+00, %1031 ]
  %1053 = phi float [ %1049, %1036 ], [ 0.000000e+00, %1031 ]
  %1054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.f32 %1054, 0
  %1056 = extractvalue %dx.types.CBufRet.f32 %1054, 1
  %1057 = extractvalue %dx.types.CBufRet.f32 %1054, 2
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1058, 0
  %1060 = extractvalue %dx.types.CBufRet.f32 %1058, 1
  %1061 = extractvalue %dx.types.CBufRet.f32 %1058, 2
  %1062 = fsub fast float %492, %1059
  %1063 = fsub fast float %493, %1060
  %1064 = fsub fast float %494, %1061
  %1065 = fmul fast float %1062, %1055
  %1066 = fmul fast float %1063, %1056
  %1067 = fmul fast float %1064, %1057
  %1068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1069 = extractvalue %dx.types.CBufRet.i32 %1068, 0
  %1070 = extractvalue %dx.types.CBufRet.i32 %1068, 1
  %1071 = uitofp i32 %1069 to float
  %1072 = uitofp i32 %1070 to float
  %1073 = fmul fast float %1065, %1071
  %1074 = fmul fast float %1066, %1072
  %1075 = fadd fast float %1073, 5.000000e-01
  %1076 = fadd fast float %1074, 5.000000e-01
  %1077 = call float @dx.op.unary.f32(i32 22, float %1075)  ; Frc(value)
  %1078 = call float @dx.op.unary.f32(i32 22, float %1076)  ; Frc(value)
  %1079 = call float @dx.op.unary.f32(i32 27, float %1075)  ; Round_ni(value)
  %1080 = call float @dx.op.unary.f32(i32 27, float %1076)  ; Round_ni(value)
  %1081 = fadd fast float %1079, 1.000000e+00
  %1082 = fadd fast float %1080, 1.000000e+00
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.CBufRet.f32 %1083, 1
  %1086 = fmul fast float %1084, %1081
  %1087 = fmul fast float %1085, %1082
  %1088 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %16, float %1086, float %1087, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = extractvalue %dx.types.ResRet.f32 %1088, 1
  %1091 = extractvalue %dx.types.ResRet.f32 %1088, 2
  %1092 = extractvalue %dx.types.ResRet.f32 %1088, 3
  %1093 = extractvalue %dx.types.CBufRet.i32 %1068, 2
  %1094 = extractvalue %dx.types.CBufRet.f32 %1083, 2
  %1095 = uitofp i32 %1093 to float
  %1096 = fadd fast float %1095, -1.000000e+00
  %1097 = fmul fast float %1096, %1089
  %1098 = fmul fast float %1096, %1090
  %1099 = fmul fast float %1096, %1091
  %1100 = fmul fast float %1096, %1092
  %1101 = fadd fast float %1097, 5.000000e-01
  %1102 = fadd fast float %1098, 5.000000e-01
  %1103 = fadd fast float %1099, 5.000000e-01
  %1104 = fadd fast float %1100, 5.000000e-01
  %1105 = fptoui float %1101 to i32
  %1106 = fptoui float %1102 to i32
  %1107 = fptoui float %1103 to i32
  %1108 = fptoui float %1104 to i32
  %1109 = uitofp i32 %1105 to float
  %1110 = uitofp i32 %1106 to float
  %1111 = uitofp i32 %1107 to float
  %1112 = uitofp i32 %1108 to float
  %1113 = fadd fast float %1109, 5.000000e-01
  %1114 = fadd fast float %1110, 5.000000e-01
  %1115 = fadd fast float %1111, 5.000000e-01
  %1116 = fadd fast float %1112, 5.000000e-01
  %1117 = fmul fast float %1113, %1094
  %1118 = fmul fast float %1114, %1094
  %1119 = fmul fast float %1115, %1094
  %1120 = fmul fast float %1116, %1094
  %1121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1117, float %1067, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1122 = extractvalue %dx.types.ResRet.f32 %1121, 0
  %1123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1118, float %1067, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1124 = extractvalue %dx.types.ResRet.f32 %1123, 0
  %1125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1119, float %1067, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 0
  %1127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1120, float %1067, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1128 = extractvalue %dx.types.ResRet.f32 %1127, 0
  %1129 = fsub fast float %1126, %1128
  %1130 = fmul fast float %1129, %1077
  %1131 = fadd fast float %1130, %1128
  %1132 = fsub fast float %1124, %1122
  %1133 = fmul fast float %1132, %1077
  %1134 = fadd fast float %1133, %1122
  %1135 = fsub fast float %1134, %1131
  %1136 = fmul fast float %1135, %1078
  %1137 = fadd fast float %1136, %1131
  %1138 = fcmp fast ogt float %1137, 0.000000e+00
  br i1 %1138, label %1139, label %1207, !dx.controlflow.hints !62

; <label>:1139                                    ; preds = %1050
  %1140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.f32 %1140, 0
  %1142 = extractvalue %dx.types.CBufRet.f32 %1140, 1
  %1143 = extractvalue %dx.types.CBufRet.f32 %1140, 2
  %1144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1145 = extractvalue %dx.types.CBufRet.f32 %1144, 0
  %1146 = extractvalue %dx.types.CBufRet.f32 %1144, 1
  %1147 = extractvalue %dx.types.CBufRet.f32 %1144, 2
  %1148 = fmul fast float %1063, %1055
  %1149 = fmul fast float %1064, %1055
  %1150 = fadd fast float %1065, %1145
  %1151 = fadd fast float %1148, %1146
  %1152 = fadd fast float %1149, %1147
  %1153 = fmul fast float %1150, %1141
  %1154 = fmul fast float %1151, %1141
  %1155 = fmul fast float %1152, %1141
  %1156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %1153, float %1154, float %1155, float undef, i32 0, i32 0, i32 0, float %1051)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1157 = extractvalue %dx.types.ResRet.f32 %1156, 0
  %1158 = fmul fast float %1150, %1142
  %1159 = fmul fast float %1151, %1142
  %1160 = fmul fast float %1152, %1142
  %1161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %1158, float %1159, float %1160, float undef, i32 0, i32 0, i32 0, float %1052)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1162 = extractvalue %dx.types.ResRet.f32 %1161, 1
  %1163 = fmul fast float %1150, %1143
  %1164 = fmul fast float %1151, %1143
  %1165 = fmul fast float %1152, %1143
  %1166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %1163, float %1164, float %1165, float undef, i32 0, i32 0, i32 0, float %1053)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1167 = extractvalue %dx.types.ResRet.f32 %1166, 2
  %1168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.f32 %1168, 1
  %1170 = fmul fast float %1162, %1157
  %1171 = fmul fast float %1170, %1167
  %1172 = call float @dx.op.unary.f32(i32 23, float %1171)  ; Log(value)
  %1173 = fmul fast float %1172, %1169
  %1174 = call float @dx.op.unary.f32(i32 21, float %1173)  ; Exp(value)
  %1175 = extractvalue %dx.types.CBufRet.f32 %1168, 2
  %1176 = fmul fast float %1137, %1137
  %1177 = fmul fast float %1176, %1174
  %1178 = fmul fast float %1177, %1175
  %1179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1180 = extractvalue %dx.types.CBufRet.f32 %1179, 3
  %1181 = fmul fast float %1180, %1178
  %1182 = bitcast float %1181 to i32
  %1183 = sitofp i32 %1182 to float
  %1184 = fptosi float %1183 to i32
  %1185 = bitcast i32 %1184 to float
  %1186 = fsub fast float 1.000000e+00, %1178
  %1187 = bitcast float %1186 to i32
  %1188 = sitofp i32 %1187 to float
  %1189 = fptosi float %1188 to i32
  %1190 = bitcast i32 %1189 to float
  %1191 = fadd fast float %1185, %1190
  %1192 = bitcast float %1191 to i32
  %1193 = sub nsw i32 2129859010, %1192
  %1194 = bitcast i32 %1193 to float
  %1195 = fmul fast float %1194, %1185
  %1196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.f32 %1196, 2
  %1198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.f32 %1198, 0
  %1200 = fmul fast float %1195, %1199
  %1201 = fadd fast float %1200, 1.000000e+00
  %1202 = bitcast float %1201 to i32
  %1203 = sub nsw i32 2129859010, %1202
  %1204 = bitcast i32 %1203 to float
  %1205 = fmul fast float %1195, %1197
  %1206 = fmul fast float %1205, %1204
  br label %1207

; <label>:1207                                    ; preds = %1139, %1050
  %1208 = phi float [ %1206, %1139 ], [ %1137, %1050 ]
  %1209 = fmul fast float %1208, %930
  %1210 = fadd fast float %1209, %1029
  br label %1211

; <label>:1211                                    ; preds = %1207, %1028
  %1212 = phi float [ %1210, %1207 ], [ %1029, %1028 ]
  %1213 = icmp eq i32 %917, 0
  br i1 %1213, label %1245, label %1214, !dx.controlflow.hints !63

; <label>:1214                                    ; preds = %1211
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 1
  %1217 = fsub fast float %930, %1216
  %1218 = extractvalue %dx.types.CBufRet.f32 %1215, 3
  %1219 = fmul fast float %1217, %1218
  %1220 = call float @dx.op.unary.f32(i32 7, float %1219)  ; Saturate(value)
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 3
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 2
  %1225 = fsub fast float %1224, %918
  %1226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1227 = extractvalue %dx.types.CBufRet.f32 %1226, 3
  %1228 = fmul fast float %1225, %1227
  %1229 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  %1230 = fmul fast float %1229, %1222
  %1231 = extractvalue %dx.types.CBufRet.f32 %1226, 0
  %1232 = fsub fast float %495, %1231
  %1233 = extractvalue %dx.types.CBufRet.f32 %1226, 1
  %1234 = fmul fast float %1232, %1233
  %1235 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  %1236 = fsub fast float 1.000000e+00, %1220
  %1237 = fmul fast float %1235, %1236
  %1238 = fadd fast float %1237, %1220
  %1239 = extractvalue %dx.types.CBufRet.f32 %1215, 0
  %1240 = fsub fast float %1230, %1239
  %1241 = fmul fast float %1240, %1238
  %1242 = fadd fast float %1241, %1239
  %1243 = fmul fast float %1242, %930
  %1244 = fadd fast float %1243, %1212
  br label %1245

; <label>:1245                                    ; preds = %1214, %1211
  %1246 = phi float [ %1244, %1214 ], [ %1212, %1211 ]
  %1247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1248 = extractvalue %dx.types.CBufRet.f32 %1247, 1
  %1249 = fcmp fast ogt float %1246, %1248
  br i1 %1249, label %1252, label %1250, !dx.controlflow.hints !64

; <label>:1250                                    ; preds = %1245
  %1251 = fadd fast float %930, %495
  br label %1385

; <label>:1252                                    ; preds = %1245
  %1253 = fmul fast float %1246, 0xBFF7154760000000
  %1254 = call float @dx.op.unary.f32(i32 21, float %1253)  ; Exp(value)
  %1255 = call float @dx.op.unary.f32(i32 7, float %1254)  ; Saturate(value)
  %1256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.CBufRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.CBufRet.f32 %1256, 2
  %1260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1261 = extractvalue %dx.types.CBufRet.f32 %1260, 0
  %1262 = fmul fast float %1261, %1257
  %1263 = fmul fast float %1261, %1258
  %1264 = fmul fast float %1261, %1259
  %1265 = fadd fast float %1262, %492
  %1266 = fadd fast float %1263, %493
  %1267 = fadd fast float %1264, %494
  br i1 %742, label %1338, label %1268, !dx.controlflow.hints !55

; <label>:1268                                    ; preds = %1252
  %1269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1270 = extractvalue %dx.types.CBufRet.i32 %1269, 1
  %1271 = and i32 %1270, 1
  %1272 = icmp eq i32 %1271, 0
  br i1 %1272, label %1273, label %1338, !dx.controlflow.hints !56

; <label>:1273                                    ; preds = %1268
  %1274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1275 = extractvalue %dx.types.CBufRet.f32 %1274, 2
  %1276 = extractvalue %dx.types.CBufRet.f32 %1274, 3
  %1277 = fmul fast float %1275, %1265
  %1278 = fmul fast float %1276, %1266
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 0
  %1281 = extractvalue %dx.types.CBufRet.f32 %1279, 1
  %1282 = fadd fast float %1277, %1280
  %1283 = fadd fast float %1278, %1281
  %1284 = call float @dx.op.unary.f32(i32 7, float %1282)  ; Saturate(value)
  %1285 = call float @dx.op.unary.f32(i32 7, float %1283)  ; Saturate(value)
  %1286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %1284, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1287 = extractvalue %dx.types.ResRet.f32 %1286, 0
  %1288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1288, 0
  %1290 = fmul fast float %1289, %1287
  %1291 = fsub fast float %1282, %1284
  %1292 = fsub fast float %1283, %1285
  %1293 = extractvalue %dx.types.CBufRet.f32 %1274, 0
  %1294 = extractvalue %dx.types.CBufRet.f32 %1274, 1
  %1295 = fmul fast float %1293, %1291
  %1296 = fmul fast float %1294, %1292
  %1297 = fmul fast float %1295, %1295
  %1298 = fmul fast float %1296, %1296
  %1299 = fadd fast float %1297, %1298
  %1300 = call float @dx.op.unary.f32(i32 24, float %1299)  ; Sqrt(value)
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 3
  %1303 = fmul fast float %1302, %1300
  %1304 = call float @dx.op.unary.f32(i32 7, float %1303)  ; Saturate(value)
  %1305 = extractvalue %dx.types.CBufRet.f32 %1301, 2
  %1306 = fsub fast float %1305, %1290
  %1307 = fmul fast float %1306, %1304
  %1308 = extractvalue %dx.types.CBufRet.f32 %1288, 1
  %1309 = fsub fast float %1267, %1290
  %1310 = fsub fast float %1309, %1308
  %1311 = fsub fast float %1310, %1307
  %1312 = extractvalue %dx.types.CBufRet.i32 %1269, 0
  %1313 = icmp eq i32 %1312, 0
  br i1 %1313, label %1332, label %1314

; <label>:1314                                    ; preds = %1273
  br label %1315

; <label>:1315                                    ; preds = %1327, %1314
  %1316 = phi i32 [ %1328, %1327 ], [ 0, %1314 ]
  %1317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1317, 1
  %1319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1320 = extractvalue %dx.types.CBufRet.i32 %1319, 1
  %1321 = and i32 %1320, 8
  %1322 = icmp eq i32 %1321, 0
  %1323 = fcmp fast ogt float %1318, %1311
  %1324 = or i1 %1323, %1322
  br i1 %1324, label %1325, label %1326, !dx.controlflow.hints !57

; <label>:1325                                    ; preds = %1315
  br label %1327

; <label>:1326                                    ; preds = %1315
  br label %1327

; <label>:1327                                    ; preds = %1326, %1325
  %1328 = add i32 %1316, 1
  %1329 = extractvalue %dx.types.CBufRet.i32 %1319, 0
  %1330 = icmp ult i32 %1328, %1329
  br i1 %1330, label %1315, label %1331

; <label>:1331                                    ; preds = %1327
  br label %1332

; <label>:1332                                    ; preds = %1331, %1273
  br label %1333

; <label>:1333                                    ; preds = %1333, %1332
  %1334 = phi i32 [ %1335, %1333 ], [ 0, %1332 ]
  %1335 = add nuw nsw i32 %1334, 1
  %1336 = icmp eq i32 %1335, 4
  br i1 %1336, label %1337, label %1333

; <label>:1337                                    ; preds = %1333
  br label %1338

; <label>:1338                                    ; preds = %1337, %1268, %1252
  %1339 = fsub fast float 1.000000e+00, %1255
  %1340 = fdiv fast float %1246, %930
  %1341 = fadd fast float %930, %495
  %1342 = fmul fast float %495, %495
  %1343 = fmul fast float %1341, %1341
  %1344 = fsub fast float %1342, %1343
  %1345 = fmul fast float %1344, -5.000000e-01
  %1346 = fmul fast float %1345, %1340
  %1347 = fadd fast float %1346, %490
  %1348 = fadd fast float %1246, %498
  %1349 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1350 = extractvalue %dx.types.CBufRet.i32 %1349, 0
  %1351 = icmp eq i32 %1350, 0
  br i1 %1351, label %1378, label %1352, !dx.controlflow.hints !65

; <label>:1352                                    ; preds = %1338
  %1353 = icmp ne i32 %503, 0
  %1354 = zext i1 %1353 to i32
  %1355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1356 = extractvalue %dx.types.CBufRet.f32 %1355, 2
  %1357 = extractvalue %dx.types.CBufRet.f32 %1355, 0
  %1358 = fsub fast float %1341, %1357
  %1359 = fmul fast float %1358, %1356
  %1360 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  %1361 = fadd fast float %1360, -5.000000e-01
  %1362 = fmul fast float %1361, 2.000000e+00
  %1363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = extractvalue %dx.types.CBufRet.f32 %1363, 2
  %1365 = fcmp fast olt float %1362, %1364
  br i1 %1365, label %1366, label %1378, !dx.controlflow.hints !66

; <label>:1366                                    ; preds = %1352
  %1367 = fmul fast float %1362, %1362
  %1368 = fmul fast float %1339, %491
  %1369 = fmul fast float %1362, %1368
  %1370 = fmul fast float %1367, %1368
  %1371 = fmul fast float %1369, %1367
  %1372 = fmul fast float %1367, %1367
  %1373 = fmul fast float %1372, %1368
  %1374 = fadd fast float %1369, %499
  %1375 = fadd fast float %1370, %500
  %1376 = fadd fast float %1371, %501
  %1377 = fadd fast float %1373, %502
  br label %1378

; <label>:1378                                    ; preds = %1366, %1352, %1338
  %1379 = phi float [ %499, %1338 ], [ %1374, %1366 ], [ %499, %1352 ]
  %1380 = phi float [ %500, %1338 ], [ %1375, %1366 ], [ %500, %1352 ]
  %1381 = phi float [ %501, %1338 ], [ %1376, %1366 ], [ %501, %1352 ]
  %1382 = phi float [ %502, %1338 ], [ %1377, %1366 ], [ %502, %1352 ]
  %1383 = phi i32 [ %503, %1338 ], [ 1, %1366 ], [ %1354, %1352 ]
  %1384 = fmul fast float %1255, %491
  br label %1385

; <label>:1385                                    ; preds = %1378, %1250
  %1386 = phi float [ %1251, %1250 ], [ %1341, %1378 ]
  %1387 = phi float [ %490, %1250 ], [ %1347, %1378 ]
  %1388 = phi float [ %491, %1250 ], [ %1384, %1378 ]
  %1389 = phi float [ %498, %1250 ], [ %1348, %1378 ]
  %1390 = phi float [ %499, %1250 ], [ %1379, %1378 ]
  %1391 = phi float [ %500, %1250 ], [ %1380, %1378 ]
  %1392 = phi float [ %501, %1250 ], [ %1381, %1378 ]
  %1393 = phi float [ %502, %1250 ], [ %1382, %1378 ]
  %1394 = phi i32 [ %503, %1250 ], [ %1383, %1378 ]
  %1395 = fmul fast float %930, %278
  %1396 = fmul fast float %930, %279
  %1397 = fmul fast float %930, %280
  %1398 = fadd fast float %1395, %492
  %1399 = fadd fast float %1396, %493
  %1400 = fadd fast float %1397, %494
  %1401 = fcmp fast olt float %1386, %464
  %1402 = extractvalue %dx.types.CBufRet.f32 %1247, 2
  %1403 = fcmp fast olt float %1402, %1388
  %1404 = and i1 %1401, %1403
  br i1 %1404, label %487, label %1405

; <label>:1405                                    ; preds = %1385
  %1406 = uitofp i32 %506 to float
  br label %1407

; <label>:1407                                    ; preds = %1405, %460
  %1408 = phi float [ 0.000000e+00, %460 ], [ %1387, %1405 ]
  %1409 = phi float [ 1.000000e+00, %460 ], [ %1388, %1405 ]
  %1410 = phi float [ 0.000000e+00, %460 ], [ %1406, %1405 ]
  %1411 = phi float [ 0.000000e+00, %460 ], [ %1389, %1405 ]
  %1412 = phi float [ 0.000000e+00, %460 ], [ %1390, %1405 ]
  %1413 = phi float [ 0.000000e+00, %460 ], [ %1391, %1405 ]
  %1414 = phi float [ 0.000000e+00, %460 ], [ %1392, %1405 ]
  %1415 = phi float [ 0.000000e+00, %460 ], [ %1393, %1405 ]
  %1416 = phi i32 [ 0, %460 ], [ %1394, %1405 ]
  %1417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1418 = extractvalue %dx.types.CBufRet.i32 %1417, 0
  %1419 = icmp eq i32 %1418, 0
  br i1 %1419, label %1461, label %1420, !dx.controlflow.hints !67

; <label>:1420                                    ; preds = %1407
  %1421 = icmp eq i32 %1416, 0
  br i1 %1421, label %1460, label %1422, !dx.controlflow.hints !68

; <label>:1422                                    ; preds = %1420
  %1423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1424 = extractvalue %dx.types.CBufRet.i32 %1423, 2
  %1425 = icmp eq i32 %1424, 0
  br i1 %1425, label %1432, label %1426, !dx.controlflow.hints !69

; <label>:1426                                    ; preds = %1422
  %1427 = fsub fast float 1.000000e+00, %1409
  %1428 = fdiv fast float %1412, %1427
  %1429 = fdiv fast float %1413, %1427
  %1430 = fdiv fast float %1414, %1427
  %1431 = fdiv fast float %1415, %1427
  br label %1437

; <label>:1432                                    ; preds = %1422
  %1433 = fadd fast float %1412, %1409
  %1434 = fadd fast float %1413, %1409
  %1435 = fadd fast float %1414, %1409
  %1436 = fadd fast float %1415, %1409
  br label %1437

; <label>:1437                                    ; preds = %1432, %1426
  %1438 = phi float [ %1428, %1426 ], [ %1433, %1432 ]
  %1439 = phi float [ %1429, %1426 ], [ %1434, %1432 ]
  %1440 = phi float [ %1430, %1426 ], [ %1435, %1432 ]
  %1441 = phi float [ %1431, %1426 ], [ %1436, %1432 ]
  %1442 = call float @dx.op.binary.f32(i32 35, float %1438, float -1.000000e+00)  ; FMax(a,b)
  %1443 = call float @dx.op.binary.f32(i32 35, float %1439, float -1.000000e+00)  ; FMax(a,b)
  %1444 = call float @dx.op.binary.f32(i32 35, float %1440, float -1.000000e+00)  ; FMax(a,b)
  %1445 = call float @dx.op.binary.f32(i32 35, float %1441, float -1.000000e+00)  ; FMax(a,b)
  %1446 = call float @dx.op.binary.f32(i32 36, float %1442, float 1.000000e+00)  ; FMin(a,b)
  %1447 = call float @dx.op.binary.f32(i32 36, float %1443, float 1.000000e+00)  ; FMin(a,b)
  %1448 = call float @dx.op.binary.f32(i32 36, float %1444, float 1.000000e+00)  ; FMin(a,b)
  %1449 = call float @dx.op.binary.f32(i32 36, float %1445, float 1.000000e+00)  ; FMin(a,b)
  %1450 = fmul fast float %1446, 1.500000e+00
  %1451 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1448, float %1450)  ; FMad(a,b,c)
  %1452 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1447, float 0.000000e+00)  ; FMad(a,b,c)
  %1453 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1449, float %1452)  ; FMad(a,b,c)
  %1454 = fmul fast float %1446, 0x3FEBB67AE0000000
  %1455 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1448, float %1454)  ; FMad(a,b,c)
  %1456 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1447, float 0.000000e+00)  ; FMad(a,b,c)
  %1457 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1449, float %1456)  ; FMad(a,b,c)
  %1458 = fadd fast float %1451, 5.000000e-01
  %1459 = fadd fast float %1455, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %20, i32 %21, i32 0, float %1458, float %1453, float %1459, float %1457, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1461

; <label>:1460                                    ; preds = %1420
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %20, i32 %21, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1461

; <label>:1461                                    ; preds = %1460, %1437, %1407
  %1462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1463 = extractvalue %dx.types.CBufRet.f32 %1462, 0
  %1464 = extractvalue %dx.types.CBufRet.f32 %1462, 1
  %1465 = extractvalue %dx.types.CBufRet.f32 %1462, 2
  %1466 = call float @dx.op.dot3.f32(i32 55, float %278, float %279, float %280, float %1463, float %1464, float %1465)  ; Dot3(ax,ay,az,bx,by,bz)
  %1467 = fmul fast float %1466, %1408
  %1468 = fcmp fast ogt float %1411, 0.000000e+00
  %1469 = fdiv fast float 1.000000e+00, %1411
  %1470 = fmul fast float %1467, %1469
  %1471 = select i1 %1468, float %1470, float %289
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.f32 %1472, 0
  %1474 = extractvalue %dx.types.CBufRet.f32 %1472, 1
  %1475 = extractvalue %dx.types.CBufRet.f32 %1472, 2
  %1476 = fmul fast float %1473, %242
  %1477 = fmul fast float %1474, %242
  %1478 = fmul fast float %1475, %242
  %1479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1480 = extractvalue %dx.types.CBufRet.f32 %1479, 0
  %1481 = extractvalue %dx.types.CBufRet.f32 %1479, 1
  %1482 = extractvalue %dx.types.CBufRet.f32 %1479, 2
  %1483 = fmul fast float %1480, %243
  %1484 = fmul fast float %1481, %243
  %1485 = fmul fast float %1482, %243
  %1486 = fadd fast float %1483, %1476
  %1487 = fadd fast float %1484, %1477
  %1488 = fadd fast float %1485, %1478
  %1489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1490 = extractvalue %dx.types.CBufRet.f32 %1489, 0
  %1491 = extractvalue %dx.types.CBufRet.f32 %1489, 1
  %1492 = extractvalue %dx.types.CBufRet.f32 %1489, 2
  %1493 = fadd fast float %1486, %1490
  %1494 = fadd fast float %1487, %1491
  %1495 = fadd fast float %1488, %1492
  %1496 = fmul fast float %1493, %1471
  %1497 = fmul fast float %1494, %1471
  %1498 = fmul fast float %1495, %1471
  %1499 = call float @dx.op.dot3.f32(i32 55, float %1496, float %1497, float %1498, float %1496, float %1497, float %1498)  ; Dot3(ax,ay,az,bx,by,bz)
  %1500 = call float @dx.op.unary.f32(i32 25, float %1499)  ; Rsqrt(value)
  %1501 = fmul fast float %1500, %1499
  %1502 = fmul fast float %1500, %1496
  %1503 = fmul fast float %1500, %1497
  %1504 = fmul fast float %1500, %1498
  %1505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.i32 %1505, 1
  %1507 = and i32 %1506, 1
  %1508 = icmp ne i32 %1507, 0
  %1509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1510 = extractvalue %dx.types.CBufRet.f32 %1509, 2
  %1511 = fcmp fast ogt float %1510, 0.000000e+00
  %1512 = and i1 %1508, %1511
  br i1 %1512, label %1513, label %1671, !dx.controlflow.hints !70

; <label>:1513                                    ; preds = %1461
  %1514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1515 = extractvalue %dx.types.CBufRet.f32 %1514, 2
  %1516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1517 = extractvalue %dx.types.CBufRet.f32 %1516, 2
  %1518 = fsub fast float %1515, %1517
  %1519 = extractvalue %dx.types.CBufRet.i32 %1505, 0
  %1520 = call i32 @dx.op.binary.i32(i32 40, i32 %1519, i32 3)  ; UMin(a,b)
  %1521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1522 = extractvalue %dx.types.CBufRet.f32 %1521, 0
  %1523 = extractvalue %dx.types.CBufRet.f32 %1521, 1
  %1524 = extractvalue %dx.types.CBufRet.f32 %1516, 0
  %1525 = extractvalue %dx.types.CBufRet.f32 %1516, 1
  %1526 = fsub fast float %1522, %1524
  %1527 = fsub fast float %1523, %1525
  %1528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1529 = extractvalue %dx.types.CBufRet.f32 %1528, 0
  %1530 = fcmp fast ogt float %1529, 0.000000e+00
  %1531 = fsub fast float -0.000000e+00, %1526
  %1532 = fsub fast float -0.000000e+00, %1527
  %1533 = call float @dx.op.dot2.f32(i32 54, float %1502, float %1503, float %1502, float %1503)  ; Dot2(ax,ay,bx,by)
  %1534 = call float @dx.op.dot2.f32(i32 54, float %1502, float %1503, float %1531, float %1532)  ; Dot2(ax,ay,bx,by)
  %1535 = fmul fast float %1534, 2.000000e+00
  %1536 = call float @dx.op.dot2.f32(i32 54, float %1531, float %1532, float %1531, float %1532)  ; Dot2(ax,ay,bx,by)
  %1537 = fmul fast float %1529, %1529
  %1538 = fsub fast float %1536, %1537
  %1539 = fmul fast float %1535, %1535
  %1540 = fmul fast float %1533, 4.000000e+00
  %1541 = fmul fast float %1540, %1538
  %1542 = fsub fast float %1539, %1541
  %1543 = fcmp fast ogt float %1542, 0.000000e+00
  br i1 %1543, label %1544, label %1559, !dx.controlflow.hints !71

; <label>:1544                                    ; preds = %1513
  %1545 = fcmp fast ogt float %1535, 0.000000e+00
  %1546 = call float @dx.op.unary.f32(i32 24, float %1542)  ; Sqrt(value)
  %1547 = fsub fast float -0.000000e+00, %1546
  %1548 = select i1 %1545, float %1546, float %1547
  %1549 = fadd fast float %1548, %1535
  %1550 = fmul float %1549, -5.000000e-01
  %1551 = fdiv fast float %1550, %1533
  %1552 = call float @dx.op.binary.f32(i32 35, float %1551, float 0.000000e+00)  ; FMax(a,b)
  %1553 = call float @dx.op.binary.f32(i32 36, float %1501, float %1552)  ; FMin(a,b)
  %1554 = fdiv fast float %1538, %1550
  %1555 = call float @dx.op.binary.f32(i32 35, float %1554, float 0.000000e+00)  ; FMax(a,b)
  %1556 = call float @dx.op.binary.f32(i32 36, float %1501, float %1555)  ; FMin(a,b)
  %1557 = call float @dx.op.binary.f32(i32 36, float %1553, float %1556)  ; FMin(a,b)
  %1558 = call float @dx.op.binary.f32(i32 35, float %1553, float %1556)  ; FMax(a,b)
  br label %1559

; <label>:1559                                    ; preds = %1544, %1513
  %1560 = phi float [ %1558, %1544 ], [ -1.000000e+00, %1513 ]
  %1561 = phi float [ %1557, %1544 ], [ -1.000000e+00, %1513 ]
  %1562 = phi i1 [ true, %1544 ], [ false, %1513 ]
  %1563 = and i1 %1530, %1562
  br i1 %1563, label %1564, label %1566, !dx.controlflow.hints !72

; <label>:1564                                    ; preds = %1559
  %1565 = fcmp fast oeq float %1561, %1560
  br i1 %1565, label %1671, label %1567, !dx.controlflow.hints !73

; <label>:1566                                    ; preds = %1559
  br i1 %1530, label %1671, label %1567, !dx.controlflow.hints !74

; <label>:1567                                    ; preds = %1566, %1564
  %1568 = phi float [ %1501, %1566 ], [ %1560, %1564 ]
  %1569 = phi float [ 0.000000e+00, %1566 ], [ %1561, %1564 ]
  %1570 = fcmp fast oeq float %1504, 0.000000e+00
  %1571 = fdiv fast float %1518, %1504
  %1572 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1571)  ; FMax(a,b)
  %1573 = select i1 %1570, float %1568, float %1572
  %1574 = call float @dx.op.binary.f32(i32 36, float %1568, float %1573)  ; FMin(a,b)
  %1575 = fcmp fast ogt float %1504, 0.000000e+00
  %1576 = fcmp fast olt float %1518, 0.000000e+00
  br i1 %1575, label %1577, label %1578, !dx.controlflow.hints !75

; <label>:1577                                    ; preds = %1567
  br i1 %1576, label %1671, label %1581, !dx.controlflow.hints !76

; <label>:1578                                    ; preds = %1567
  br i1 %1576, label %1579, label %1581, !dx.controlflow.hints !77

; <label>:1579                                    ; preds = %1578
  %1580 = call float @dx.op.binary.f32(i32 35, float %1569, float %1574)  ; FMax(a,b)
  br label %1581

; <label>:1581                                    ; preds = %1579, %1578, %1577
  %1582 = phi float [ %1580, %1579 ], [ %1569, %1578 ], [ %1569, %1577 ]
  %1583 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 0
  store float -1.000000e+00, float* %1583, align 4, !tbaa !78, !noalias !82
  %1584 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 1
  store float -1.000000e+00, float* %1584, align 4, !tbaa !78, !noalias !82
  %1585 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 2
  store float -1.000000e+00, float* %1585, align 4, !tbaa !78, !noalias !82
  %1586 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 0
  store float -1.000000e+00, float* %1586, align 4, !tbaa !78, !noalias !82
  %1587 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 1
  store float -1.000000e+00, float* %1587, align 4, !tbaa !78, !noalias !82
  %1588 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 2
  store float -1.000000e+00, float* %1588, align 4, !tbaa !78, !noalias !82
  %1589 = icmp sgt i32 %1520, 0
  br i1 %1589, label %1590, label %1648

; <label>:1590                                    ; preds = %1581
  br label %1591

; <label>:1591                                    ; preds = %1638, %1590
  %1592 = phi i32 [ %1639, %1638 ], [ 0, %1590 ]
  %1593 = add nuw i32 %1592, 171
  %1594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %1593)  ; CBufferLoadLegacy(handle,regIndex)
  %1595 = extractvalue %dx.types.CBufRet.f32 %1594, 0
  %1596 = extractvalue %dx.types.CBufRet.f32 %1594, 1
  %1597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1598 = extractvalue %dx.types.CBufRet.f32 %1597, 0
  %1599 = extractvalue %dx.types.CBufRet.f32 %1597, 1
  %1600 = fsub fast float %1595, %1598
  %1601 = fsub fast float %1596, %1599
  %1602 = extractvalue %dx.types.CBufRet.f32 %1594, 2
  %1603 = fsub fast float -0.000000e+00, %1600
  %1604 = fsub fast float -0.000000e+00, %1601
  %1605 = call float @dx.op.dot2.f32(i32 54, float %1502, float %1503, float %1603, float %1604)  ; Dot2(ax,ay,bx,by)
  %1606 = fmul fast float %1605, 2.000000e+00
  %1607 = call float @dx.op.dot2.f32(i32 54, float %1603, float %1604, float %1603, float %1604)  ; Dot2(ax,ay,bx,by)
  %1608 = fmul fast float %1602, %1602
  %1609 = fsub fast float %1607, %1608
  %1610 = fmul fast float %1606, %1606
  %1611 = fmul fast float %1540, %1609
  %1612 = fsub fast float %1610, %1611
  %1613 = fcmp fast ogt float %1612, 0.000000e+00
  br i1 %1613, label %1614, label %1629, !dx.controlflow.hints !71

; <label>:1614                                    ; preds = %1591
  %1615 = fcmp fast ogt float %1606, 0.000000e+00
  %1616 = call float @dx.op.unary.f32(i32 24, float %1612)  ; Sqrt(value)
  %1617 = fsub fast float -0.000000e+00, %1616
  %1618 = select i1 %1615, float %1616, float %1617
  %1619 = fadd fast float %1618, %1606
  %1620 = fmul float %1619, -5.000000e-01
  %1621 = fdiv fast float %1620, %1533
  %1622 = call float @dx.op.binary.f32(i32 35, float %1621, float 0.000000e+00)  ; FMax(a,b)
  %1623 = call float @dx.op.binary.f32(i32 36, float %1568, float %1622)  ; FMin(a,b)
  %1624 = fdiv fast float %1609, %1620
  %1625 = call float @dx.op.binary.f32(i32 35, float %1624, float 0.000000e+00)  ; FMax(a,b)
  %1626 = call float @dx.op.binary.f32(i32 36, float %1568, float %1625)  ; FMin(a,b)
  %1627 = call float @dx.op.binary.f32(i32 36, float %1623, float %1626)  ; FMin(a,b)
  %1628 = call float @dx.op.binary.f32(i32 35, float %1623, float %1626)  ; FMax(a,b)
  br label %1629

; <label>:1629                                    ; preds = %1614, %1591
  %1630 = phi float [ %1628, %1614 ], [ -1.000000e+00, %1591 ]
  %1631 = phi float [ %1627, %1614 ], [ -1.000000e+00, %1591 ]
  %1632 = phi i1 [ true, %1614 ], [ false, %1591 ]
  br i1 %1632, label %1633, label %1638, !dx.controlflow.hints !93

; <label>:1633                                    ; preds = %1629
  %1634 = call float @dx.op.binary.f32(i32 35, float %1582, float %1631)  ; FMax(a,b)
  %1635 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %1592
  store float %1634, float* %1635, align 4, !tbaa !78, !noalias !82
  %1636 = call float @dx.op.binary.f32(i32 35, float %1582, float %1630)  ; FMax(a,b)
  %1637 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %1592
  store float %1636, float* %1637, align 4, !tbaa !78, !noalias !82
  br label %1638

; <label>:1638                                    ; preds = %1633, %1629
  %1639 = add nuw nsw i32 %1592, 1
  %1640 = icmp eq i32 %1639, %1520
  br i1 %1640, label %1641, label %1591

; <label>:1641                                    ; preds = %1638
  %1642 = load float, float* %1585, align 4, !tbaa !78, !alias.scope !94, !noalias !97
  %1643 = load float, float* %1584, align 4, !tbaa !78, !alias.scope !100, !noalias !101
  %1644 = load float, float* %1583, align 4, !tbaa !78, !alias.scope !102, !noalias !103
  %1645 = load float, float* %1588, align 4, !tbaa !78, !alias.scope !104, !noalias !107
  %1646 = load float, float* %1587, align 4, !tbaa !78, !alias.scope !110, !noalias !111
  %1647 = load float, float* %1586, align 4, !tbaa !78, !alias.scope !112, !noalias !113
  br label %1648

; <label>:1648                                    ; preds = %1641, %1581
  %1649 = phi float [ -1.000000e+00, %1581 ], [ %1647, %1641 ]
  %1650 = phi float [ -1.000000e+00, %1581 ], [ %1646, %1641 ]
  %1651 = phi float [ -1.000000e+00, %1581 ], [ %1645, %1641 ]
  %1652 = phi float [ -1.000000e+00, %1581 ], [ %1644, %1641 ]
  %1653 = phi float [ -1.000000e+00, %1581 ], [ %1643, %1641 ]
  %1654 = phi float [ -1.000000e+00, %1581 ], [ %1642, %1641 ]
  %1655 = call float @dx.op.binary.f32(i32 36, float %1653, float %1654)  ; FMin(a,b)
  %1656 = call float @dx.op.binary.f32(i32 36, float %1652, float %1655)  ; FMin(a,b)
  %1657 = call float @dx.op.binary.f32(i32 35, float %1652, float %1653)  ; FMax(a,b)
  %1658 = call float @dx.op.binary.f32(i32 36, float %1657, float %1654)  ; FMin(a,b)
  %1659 = call float @dx.op.binary.f32(i32 36, float %1652, float %1653)  ; FMin(a,b)
  %1660 = call float @dx.op.binary.f32(i32 35, float %1659, float %1658)  ; FMax(a,b)
  %1661 = call float @dx.op.binary.f32(i32 35, float %1653, float %1654)  ; FMax(a,b)
  %1662 = call float @dx.op.binary.f32(i32 35, float %1652, float %1661)  ; FMax(a,b)
  store float %1656, float* %1583, align 4, !tbaa !78, !alias.scope !102, !noalias !103
  store float %1660, float* %1584, align 4, !tbaa !78, !alias.scope !100, !noalias !101
  store float %1662, float* %1585, align 4, !tbaa !78, !alias.scope !94, !noalias !97
  %1663 = call float @dx.op.binary.f32(i32 36, float %1650, float %1651)  ; FMin(a,b)
  %1664 = call float @dx.op.binary.f32(i32 36, float %1649, float %1663)  ; FMin(a,b)
  %1665 = call float @dx.op.binary.f32(i32 35, float %1649, float %1650)  ; FMax(a,b)
  %1666 = call float @dx.op.binary.f32(i32 36, float %1665, float %1651)  ; FMin(a,b)
  %1667 = call float @dx.op.binary.f32(i32 36, float %1649, float %1650)  ; FMin(a,b)
  %1668 = call float @dx.op.binary.f32(i32 35, float %1667, float %1666)  ; FMax(a,b)
  %1669 = call float @dx.op.binary.f32(i32 35, float %1650, float %1651)  ; FMax(a,b)
  %1670 = call float @dx.op.binary.f32(i32 35, float %1649, float %1669)  ; FMax(a,b)
  store float %1664, float* %1586, align 4, !tbaa !78, !alias.scope !112, !noalias !113
  store float %1668, float* %1587, align 4, !tbaa !78, !alias.scope !110, !noalias !111
  store float %1670, float* %1588, align 4, !tbaa !78, !alias.scope !104, !noalias !107
  br label %1671

; <label>:1671                                    ; preds = %1648, %1577, %1566, %1564, %1461
  %1672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1673 = extractvalue %dx.types.CBufRet.f32 %1672, 2
  %1674 = fmul fast float %1673, %1471
  %1675 = call float @dx.op.unary.f32(i32 7, float %1674)  ; Saturate(value)
  %1676 = fptoui float %1410 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1677 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %22
  store i32 %1676, i32 addrspace(3)* %1677, align 4, !tbaa !114
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1678 = and i32 %22, 63
  %1679 = icmp ult i32 %1678, 32
  br i1 %1679, label %1680, label %1686, !dx.controlflow.hints !116

; <label>:1680                                    ; preds = %1671
  %1681 = add i32 %22, 32
  %1682 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1681
  %1683 = load i32, i32 addrspace(3)* %1682, align 4, !tbaa !114
  %1684 = load i32, i32 addrspace(3)* %1677, align 4, !tbaa !114
  %1685 = call i32 @dx.op.binary.i32(i32 40, i32 %1684, i32 %1683)  ; UMin(a,b)
  store i32 %1685, i32 addrspace(3)* %1677, align 4, !tbaa !114
  br label %1686

; <label>:1686                                    ; preds = %1680, %1671
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1687 = icmp ult i32 %1678, 16
  br i1 %1687, label %1688, label %1694, !dx.controlflow.hints !117

; <label>:1688                                    ; preds = %1686
  %1689 = add i32 %22, 16
  %1690 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1689
  %1691 = load i32, i32 addrspace(3)* %1690, align 4, !tbaa !114
  %1692 = load i32, i32 addrspace(3)* %1677, align 4, !tbaa !114
  %1693 = call i32 @dx.op.binary.i32(i32 40, i32 %1692, i32 %1691)  ; UMin(a,b)
  store i32 %1693, i32 addrspace(3)* %1677, align 4, !tbaa !114
  br label %1694

; <label>:1694                                    ; preds = %1688, %1686
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1695 = icmp ult i32 %1678, 8
  br i1 %1695, label %1696, label %1702, !dx.controlflow.hints !118

; <label>:1696                                    ; preds = %1694
  %1697 = add i32 %22, 8
  %1698 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1697
  %1699 = load i32, i32 addrspace(3)* %1698, align 4, !tbaa !114
  %1700 = load i32, i32 addrspace(3)* %1677, align 4, !tbaa !114
  %1701 = call i32 @dx.op.binary.i32(i32 40, i32 %1700, i32 %1699)  ; UMin(a,b)
  store i32 %1701, i32 addrspace(3)* %1677, align 4, !tbaa !114
  br label %1702

; <label>:1702                                    ; preds = %1696, %1694
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1703 = icmp ult i32 %1678, 4
  br i1 %1703, label %1704, label %1710, !dx.controlflow.hints !119

; <label>:1704                                    ; preds = %1702
  %1705 = add i32 %22, 4
  %1706 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1705
  %1707 = load i32, i32 addrspace(3)* %1706, align 4, !tbaa !114
  %1708 = load i32, i32 addrspace(3)* %1677, align 4, !tbaa !114
  %1709 = call i32 @dx.op.binary.i32(i32 40, i32 %1708, i32 %1707)  ; UMin(a,b)
  store i32 %1709, i32 addrspace(3)* %1677, align 4, !tbaa !114
  br label %1710

; <label>:1710                                    ; preds = %1704, %1702
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1711 = icmp ult i32 %1678, 2
  br i1 %1711, label %1712, label %1718, !dx.controlflow.hints !120

; <label>:1712                                    ; preds = %1710
  %1713 = add i32 %22, 2
  %1714 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1713
  %1715 = load i32, i32 addrspace(3)* %1714, align 4, !tbaa !114
  %1716 = load i32, i32 addrspace(3)* %1677, align 4, !tbaa !114
  %1717 = call i32 @dx.op.binary.i32(i32 40, i32 %1716, i32 %1715)  ; UMin(a,b)
  store i32 %1717, i32 addrspace(3)* %1677, align 4, !tbaa !114
  br label %1718

; <label>:1718                                    ; preds = %1712, %1710
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1719 = icmp eq i32 %1678, 0
  br i1 %1719, label %1720, label %1726, !dx.controlflow.hints !121

; <label>:1720                                    ; preds = %1718
  %1721 = add i32 %22, 1
  %1722 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1721
  %1723 = load i32, i32 addrspace(3)* %1722, align 4, !tbaa !114
  %1724 = load i32, i32 addrspace(3)* %1677, align 4, !tbaa !114
  %1725 = call i32 @dx.op.binary.i32(i32 40, i32 %1724, i32 %1723)  ; UMin(a,b)
  store i32 %1725, i32 addrspace(3)* %1677, align 4, !tbaa !114
  br label %1726

; <label>:1726                                    ; preds = %1720, %1718
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1727 = and i32 %22, -64
  %1728 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1727
  %1729 = load i32, i32 addrspace(3)* %1728, align 4, !tbaa !114
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1676, i32 addrspace(3)* %1677, align 4, !tbaa !114
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1679, label %1730, label %1736, !dx.controlflow.hints !122

; <label>:1730                                    ; preds = %1726
  %1731 = add i32 %22, 32
  %1732 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1731
  %1733 = load i32, i32 addrspace(3)* %1732, align 4, !tbaa !114
  %1734 = load i32, i32 addrspace(3)* %1677, align 4, !tbaa !114
  %1735 = call i32 @dx.op.binary.i32(i32 39, i32 %1734, i32 %1733)  ; UMax(a,b)
  store i32 %1735, i32 addrspace(3)* %1677, align 4, !tbaa !114
  br label %1736

; <label>:1736                                    ; preds = %1730, %1726
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1687, label %1737, label %1743, !dx.controlflow.hints !123

; <label>:1737                                    ; preds = %1736
  %1738 = add i32 %22, 16
  %1739 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1738
  %1740 = load i32, i32 addrspace(3)* %1739, align 4, !tbaa !114
  %1741 = load i32, i32 addrspace(3)* %1677, align 4, !tbaa !114
  %1742 = call i32 @dx.op.binary.i32(i32 39, i32 %1741, i32 %1740)  ; UMax(a,b)
  store i32 %1742, i32 addrspace(3)* %1677, align 4, !tbaa !114
  br label %1743

; <label>:1743                                    ; preds = %1737, %1736
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1695, label %1744, label %1750, !dx.controlflow.hints !124

; <label>:1744                                    ; preds = %1743
  %1745 = add i32 %22, 8
  %1746 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1745
  %1747 = load i32, i32 addrspace(3)* %1746, align 4, !tbaa !114
  %1748 = load i32, i32 addrspace(3)* %1677, align 4, !tbaa !114
  %1749 = call i32 @dx.op.binary.i32(i32 39, i32 %1748, i32 %1747)  ; UMax(a,b)
  store i32 %1749, i32 addrspace(3)* %1677, align 4, !tbaa !114
  br label %1750

; <label>:1750                                    ; preds = %1744, %1743
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1703, label %1751, label %1757, !dx.controlflow.hints !125

; <label>:1751                                    ; preds = %1750
  %1752 = add i32 %22, 4
  %1753 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1752
  %1754 = load i32, i32 addrspace(3)* %1753, align 4, !tbaa !114
  %1755 = load i32, i32 addrspace(3)* %1677, align 4, !tbaa !114
  %1756 = call i32 @dx.op.binary.i32(i32 39, i32 %1755, i32 %1754)  ; UMax(a,b)
  store i32 %1756, i32 addrspace(3)* %1677, align 4, !tbaa !114
  br label %1757

; <label>:1757                                    ; preds = %1751, %1750
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1711, label %1758, label %1764, !dx.controlflow.hints !126

; <label>:1758                                    ; preds = %1757
  %1759 = add i32 %22, 2
  %1760 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1759
  %1761 = load i32, i32 addrspace(3)* %1760, align 4, !tbaa !114
  %1762 = load i32, i32 addrspace(3)* %1677, align 4, !tbaa !114
  %1763 = call i32 @dx.op.binary.i32(i32 39, i32 %1762, i32 %1761)  ; UMax(a,b)
  store i32 %1763, i32 addrspace(3)* %1677, align 4, !tbaa !114
  br label %1764

; <label>:1764                                    ; preds = %1758, %1757
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1719, label %1765, label %1771, !dx.controlflow.hints !127

; <label>:1765                                    ; preds = %1764
  %1766 = add i32 %22, 1
  %1767 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1766
  %1768 = load i32, i32 addrspace(3)* %1767, align 4, !tbaa !114
  %1769 = load i32, i32 addrspace(3)* %1677, align 4, !tbaa !114
  %1770 = call i32 @dx.op.binary.i32(i32 39, i32 %1769, i32 %1768)  ; UMax(a,b)
  store i32 %1770, i32 addrspace(3)* %1677, align 4, !tbaa !114
  br label %1771

; <label>:1771                                    ; preds = %1765, %1764
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1772 = load i32, i32 addrspace(3)* %1728, align 4, !tbaa !114
  %1773 = uitofp i32 %1772 to float
  %1774 = uitofp i32 %1729 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %20, i32 %21, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1776 = extractvalue %dx.types.CBufRet.f32 %1775, 0
  %1777 = fmul fast float %1776, %1410
  %1778 = fmul fast float %1776, %1773
  %1779 = fmul fast float %1776, %1774
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %20, i32 %21, i32 undef, float %1777, float %1778, float %1779, float %1777, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %20, i32 %21, i32 undef, float %1675, float %1675, float %1675, float %1675, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #3

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
!dx.entryPoints = !{!30}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !16, !22, !25}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!16 = !{!17, !18, !19, !20}
!17 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!18 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!19 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!20 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !21}
!21 = !{i32 0, i32 14}
!22 = !{!23, !24}
!23 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!24 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!25 = !{!26, !27, !28, !29}
!26 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!27 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!28 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!29 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!30 = !{void ()* @cs_fog_raymarching_clouds_heightmap_brfog, !"cs_fog_raymarching_clouds_heightmap_brfog", null, !4, !31}
!31 = !{i32 0, i64 272, i32 4, !32}
!32 = !{i32 8, i32 8, i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
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
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = !{!79, !79, i64 0}
!79 = !{!"float", !80, i64 0}
!80 = !{!"omnipotent char", !81, i64 0}
!81 = !{!"Simple C/C++ TBAA"}
!82 = !{!83, !85, !87, !88, !90, !91, !92}
!83 = distinct !{!83, !84, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!84 = distinct !{!84, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!85 = distinct !{!85, !86, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!86 = distinct !{!86, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!87 = distinct !{!87, !86, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!88 = distinct !{!88, !89, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!89 = distinct !{!89, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!90 = distinct !{!90, !89, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!91 = distinct !{!91, !89, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!92 = distinct !{!92, !89, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = !{!95}
!95 = distinct !{!95, !96, !"\01?sort@@YAXAIAM00@Z: %c"}
!96 = distinct !{!96, !"\01?sort@@YAXAIAM00@Z"}
!97 = !{!98, !99, !83, !85, !87, !88, !90, !91, !92}
!98 = distinct !{!98, !96, !"\01?sort@@YAXAIAM00@Z: %a"}
!99 = distinct !{!99, !96, !"\01?sort@@YAXAIAM00@Z: %b"}
!100 = !{!99}
!101 = !{!98, !95, !83, !85, !87, !88, !90, !91, !92}
!102 = !{!98}
!103 = !{!99, !95, !83, !85, !87, !88, !90, !91, !92}
!104 = !{!105}
!105 = distinct !{!105, !106, !"\01?sort@@YAXAIAM00@Z: %c"}
!106 = distinct !{!106, !"\01?sort@@YAXAIAM00@Z"}
!107 = !{!108, !109, !83, !85, !87, !88, !90, !91, !92}
!108 = distinct !{!108, !106, !"\01?sort@@YAXAIAM00@Z: %a"}
!109 = distinct !{!109, !106, !"\01?sort@@YAXAIAM00@Z: %b"}
!110 = !{!109}
!111 = !{!108, !105, !83, !85, !87, !88, !90, !91, !92}
!112 = !{!108}
!113 = !{!109, !105, !83, !85, !87, !88, !90, !91, !92}
!114 = !{!115, !115, i64 0}
!115 = !{!"int", !80, i64 0}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 2}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 2}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 2}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 2}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 2}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 2}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 2}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 2}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 2}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 2}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 2}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 2}

